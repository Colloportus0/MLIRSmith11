module {
  func.func @func1() {
    %false = arith.constant false
    %c214280376_i64 = arith.constant 214280376 : i64
    %c558059930_i32 = arith.constant 558059930 : i32
    %cst = arith.constant 1.940800e+04 : f16
    %cst_0 = arith.constant 4.147200e+04 : f16
    %cst_1 = arith.constant 5.814400e+04 : f16
    %c789278739_i32 = arith.constant 789278739 : i32
    %c795053815_i64 = arith.constant 795053815 : i64
    %c-19420_i16 = arith.constant -19420 : i16
    %c2039219675_i32 = arith.constant 2039219675 : i32
    %c1145379926_i32 = arith.constant 1145379926 : i32
    %true = arith.constant true
    %c1814187417_i32 = arith.constant 1814187417 : i32
    %cst_2 = arith.constant 5.052800e+04 : f16
    %c2055695765_i32 = arith.constant 2055695765 : i32
    %c2063_i16 = arith.constant 2063 : i16
    %0 = tensor.empty() : tensor<12x10xi64>
    %1 = tensor.empty() : tensor<14xi64>
    %2 = tensor.empty() : tensor<12x10xi32>
    %3 = tensor.empty() : tensor<12xi64>
    %4 = tensor.empty() : tensor<12xi16>
    %5 = tensor.empty() : tensor<12x10xi64>
    %6 = tensor.empty() : tensor<14xi16>
    %7 = tensor.empty() : tensor<14xi16>
    %8 = tensor.empty() : tensor<12xi32>
    %9 = tensor.empty() : tensor<10x14xi32>
    %10 = tensor.empty() : tensor<14xi1>
    %11 = tensor.empty() : tensor<14xi1>
    %12 = tensor.empty() : tensor<12xi1>
    %13 = tensor.empty() : tensor<14xi64>
    %14 = tensor.empty() : tensor<14xi64>
    %15 = tensor.empty() : tensor<12x10xi1>
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
    %alloc = memref.alloc() : memref<10x14xi16>
    %alloc_3 = memref.alloc() : memref<12xi16>
    %alloc_4 = memref.alloc() : memref<12xi16>
    %alloc_5 = memref.alloc() : memref<12xi64>
    %alloc_6 = memref.alloc() : memref<12x10xf32>
    %alloc_7 = memref.alloc() : memref<12x10xi16>
    %alloc_8 = memref.alloc() : memref<12xi16>
    %alloc_9 = memref.alloc() : memref<14xi16>
    %alloc_10 = memref.alloc() : memref<10x14xf32>
    %alloc_11 = memref.alloc() : memref<12xi32>
    %alloc_12 = memref.alloc() : memref<10x14xi32>
    %alloc_13 = memref.alloc() : memref<12x10xi16>
    %alloc_14 = memref.alloc() : memref<14xi1>
    %alloc_15 = memref.alloc() : memref<14xf32>
    %alloc_16 = memref.alloc() : memref<10x14xf32>
    %alloc_17 = memref.alloc() : memref<12xf16>
    %16 = tensor.empty() : tensor<12x10xi1>
    %17 = linalg.copy ins(%15 : tensor<12x10xi1>) outs(%16 : tensor<12x10xi1>) -> tensor<12x10xi1>
    %alloc_18 = memref.alloc() : memref<10x12xi64>
    linalg.transpose ins(%0 : tensor<12x10xi64>) outs(%alloc_18 : memref<10x12xi64>) permutation = [1, 0] 
    %alloc_19 = memref.alloc() : memref<i16>
    linalg.reduce ins(%7 : tensor<14xi16>) outs(%alloc_19 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %258 = vector.broadcast %c795053815_i64 : i64 to vector<i64>
        %259 = vector.insertelement %c214280376_i64, %258[] : vector<i64>
        %260 = math.tan %cst_0 : f16
        %261 = vector.create_mask %c7, %c12 : vector<10x14xi1>
        %262 = arith.shrsi %false, %false : i1
        %263 = index.sub %c12, %c6
        %264 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c6, %c1, %c7)
        %splat = tensor.splat %c789278739_i32 : tensor<10x14xi32>
        %from_elements_45 = tensor.from_elements %init, %in, %c-19420_i16, %c2063_i16, %c-19420_i16, %in, %c2063_i16, %in, %init, %c2063_i16, %in, %in, %in, %in, %in, %c2063_i16, %init, %in, %in, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %init, %in, %c-19420_i16, %c2063_i16, %init, %c2063_i16, %c-19420_i16, %init, %c-19420_i16, %init, %c2063_i16, %init, %c2063_i16, %init, %c2063_i16, %in, %in, %in, %init, %in, %c2063_i16, %in, %in, %c2063_i16, %init, %in, %c-19420_i16, %c-19420_i16, %c-19420_i16, %in, %in, %init, %init, %c2063_i16, %in, %in, %c2063_i16, %init, %c2063_i16, %init, %init, %in, %c2063_i16, %c-19420_i16, %init, %c-19420_i16, %c-19420_i16, %c-19420_i16, %in, %init, %in, %in, %c2063_i16, %c2063_i16, %init, %c-19420_i16, %c-19420_i16, %c2063_i16, %in, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %init, %c-19420_i16, %in, %in, %c-19420_i16, %init, %init, %c2063_i16, %init, %init, %c2063_i16, %init, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %init, %init, %c2063_i16, %init, %init, %in, %in, %c-19420_i16, %in, %c-19420_i16, %init, %init, %in, %c-19420_i16, %in, %init, %c-19420_i16, %c-19420_i16 : tensor<12x10xi16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg0, %arg1) = (%c9, %c8) to (%c7, %c3) step (%c14, %c6) {
      %258 = tensor.empty() : tensor<12xi16>
      %259 = arith.minsi %c214280376_i64, %c214280376_i64 : i64
      %260 = tensor.empty() : tensor<10x12xi1>
      %261 = tensor.empty() : tensor<12x12xi1>
      %262 = linalg.matmul ins(%16, %260 : tensor<12x10xi1>, tensor<10x12xi1>) outs(%261 : tensor<12x12xi1>) -> tensor<12x12xi1>
      %263 = math.atan %cst_2 : f16
      %cst_45 = arith.constant 1.000000e+00 : f32
      %264 = vector.broadcast %cst_45 : f32 to vector<12xf32>
      %265 = vector.broadcast %true : i1 to vector<12xi1>
      %266 = vector.maskedload %alloc_10[%c6, %c4], %265, %264 : memref<10x14xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
      %267 = arith.divf %cst_2, %cst_1 : f16
      %268 = tensor.empty() : tensor<10x10x10xi64>
      %alloc_46 = memref.alloc() : memref<10x10xi64>
      %alloc_47 = memref.alloc() : memref<10xi64>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %alloc_47 : memref<10x10xi64>, memref<10xi64>) outs(%268 : tensor<10x10x10xi64>) {
      ^bb0(%in: i64, %in_48: i64, %out: i64):
        %277 = vector.create_mask %c12 : vector<12xi1>
        %278 = arith.divui %c1814187417_i32, %c558059930_i32 : i32
        %279 = bufferization.clone %alloc_15 : memref<14xf32> to memref<14xf32>
        %280 = vector.broadcast %false : i1 to vector<10x14xi1>
        %281 = vector.broadcast %true : i1 to vector<10xi1>
        %dest_49, %accumulated_value_50 = vector.scan <add>, %280, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<10x14xi1>, vector<10xi1>
        %282 = memref.load %alloc_6[%c0, %c0] : memref<12x10xf32>
        %283 = vector.broadcast %out : i64 to vector<14x10x10xi64>
        %284 = vector.broadcast %out : i64 to vector<14x10xi64>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %283, %284 {inclusive = false, reduction_dim = 1 : i64} : vector<14x10x10xi64>, vector<14x10xi64>
        %285 = index.floordivs %c15, %c1
        %286 = arith.divf %cst_1, %cst : f16
        %287 = index.maxs %c14, %c4
        %288 = arith.divsi %c2039219675_i32, %c789278739_i32 : i32
        %289 = affine.load %alloc_3[%c6] : memref<12xi16>
        %290 = vector.multi_reduction <maxsi>, %277, %true [0] : vector<12xi1> to i1
        %291 = math.round %cst_2 : f16
        %cst_53 = arith.constant 1.4347095E+9 : f32
        %292 = arith.floordivsi %out, %c214280376_i64 : i64
        %293 = affine.load %alloc_16[%c14, %c13] : memref<10x14xf32>
        %294 = index.add %arg0, %c5
        %295 = bufferization.clone %alloc_7 : memref<12x10xi16> to memref<12x10xi16>
        %inserted_54 = tensor.insert %c214280376_i64 into %5[%c9, %c9] : tensor<12x10xi64>
        %296 = vector.extract %265[3] : vector<12xi1>
        %297 = math.ipowi %289, %c2063_i16 : i16
        %298 = index.ceildivu %c15, %c12
        %299 = math.ctpop %1 : tensor<14xi64>
        %300 = math.sqrt %cst_2 : f16
        %301 = arith.maxui %c214280376_i64, %c214280376_i64 : i64
        %collapsed_55 = tensor.collapse_shape %261 [[0, 1]] : tensor<12x12xi1> into tensor<144xi1>
        %302 = index.divu %c10, %c7
        %303 = arith.mulf %cst_1, %cst : f16
        %304 = arith.cmpf false, %cst, %cst_1 : f16
        %305 = vector.create_mask %302 : vector<12xi1>
        %306 = index.sub %c10, %c7
        %307 = arith.maxui %in, %c795053815_i64 : i64
        linalg.yield %out : i64
      } -> tensor<10x10x10xi64>
      %270 = memref.atomic_rmw assign %c-19420_i16, %alloc_19[] : (i16, memref<i16>) -> i16
      %271 = vector.create_mask %c4 : vector<12xi1>
      %splat = tensor.splat %cst_1 : tensor<14xf16>
      %272 = index.floordivs %c8, %c0
      %273 = arith.shli %c2055695765_i32, %c558059930_i32 : i32
      %274 = arith.addi %c1145379926_i32, %c1814187417_i32 : i32
      %275 = vector.extract_strided_slice %264 {offsets = [5], sizes = [6], strides = [1]} : vector<12xf32> to vector<6xf32>
      %276 = math.rsqrt %cst_2 : f16
      memref.store %c2063_i16, %alloc_4[%c10] : memref<12xi16>
      scf.yield
    }
    %18 = affine.vector_load %alloc_4[%c6] : memref<12xi16>, vector<12xi16>
    affine.vector_store %18, %alloc_3[%c7] : memref<12xi16>, vector<12xi16>
    %19 = tensor.empty() : tensor<14xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%6, %19 : tensor<14xi16>, tensor<14xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    %22 = math.tan %cst_0 : f16
    %23 = arith.addf %cst_2, %cst_2 : f16
    %24 = math.fma %cst_0, %cst, %cst_0 : f16
    %25 = arith.remf %cst_0, %cst_1 : f16
    %26 = tensor.empty(%c7) : tensor<10x?xi32>
    %27 = arith.cmpi eq, %c2039219675_i32, %c789278739_i32 : i32
    %28 = index.ceildivs %c0, %c10
    %expanded = tensor.expand_shape %19 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
    %expanded_20 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<12x10xi1> into tensor<12x10x1xi1>
    %29 = math.log1p %cst : f16
    %30 = arith.andi %c2063_i16, %c2063_i16 : i16
    %31 = memref.load %alloc_16[%c8, %c4] : memref<10x14xf32>
    %32 = arith.negf %cst_0 : f16
    %33 = vector.matrix_multiply %18, %18 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
    %34 = memref.load %alloc_9[%c13] : memref<14xi16>
    %35 = arith.addi %c1145379926_i32, %c1814187417_i32 : i32
    memref.tensor_store %3, %alloc_5 : memref<12xi64>
    %36 = math.log2 %cst : f16
    %37 = scf.while (%arg0 = %true) : (i1) -> i1 {
      %258 = index.ceildivs %c4, %c12
      %259 = arith.maxsi %c1145379926_i32, %c1814187417_i32 : i32
      affine.store %c-19420_i16, %alloc_8[%c5] : memref<12xi16>
      %260 = index.sub %c14, %c6
      %261 = affine.apply affine_map<(d0, d1, d2, d3) -> (128)>(%c7, %258, %258, %c4)
      scf.execute_region {
        %cst_45 = arith.constant 1.000000e+00 : f32
        %264 = vector.broadcast %cst_45 : f32 to vector<12x14x10xf32>
        %265 = vector.broadcast %cst_45 : f32 to vector<14x10xf32>
        %dest_46, %accumulated_value_47 = vector.scan <maxf>, %264, %265 {inclusive = false, reduction_dim = 0 : i64} : vector<12x14x10xf32>, vector<14x10xf32>
        %266 = math.ctpop %c1814187417_i32 : i32
        %267 = arith.andi %true, %false : i1
        %from_elements_48 = tensor.from_elements %true, %true, %arg0, %false, %arg0, %false, %arg0, %true, %arg0, %true, %arg0, %arg0, %arg0, %true, %true, %false, %false, %false, %arg0, %false, %true, %false, %false, %false, %arg0, %arg0, %false, %false, %true, %false, %arg0, %false, %false, %false, %false, %arg0, %true, %arg0, %false, %arg0, %arg0, %false, %true, %true, %false, %true, %false, %true, %false, %arg0, %arg0, %arg0, %arg0, %true, %true, %arg0, %true, %true, %false, %arg0, %arg0, %arg0, %false, %false, %false, %true, %true, %true, %false, %true, %true, %arg0, %false, %false, %arg0, %arg0, %false, %false, %true, %arg0, %true, %true, %true, %false, %true, %arg0, %arg0, %true, %true, %arg0, %true, %true, %arg0, %true, %false, %false, %true, %arg0, %true, %arg0, %arg0, %true, %true, %true, %arg0, %arg0, %true, %arg0, %true, %true, %false, %false, %true, %true, %false, %false, %false, %false, %false, %false : tensor<12x10xi1>
        %extracted_49 = tensor.extract %2[%c2, %c7] : tensor<12x10xi32>
        %268 = arith.minf %cst, %cst_0 : f16
        %cst_50 = arith.constant 1.000000e+00 : f32
        %269 = vector.broadcast %cst_50 : f32 to vector<14x10x14xf32>
        %270 = vector.broadcast %cst_50 : f32 to vector<14x10xf32>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %269, %270 {inclusive = false, reduction_dim = 2 : i64} : vector<14x10x14xf32>, vector<14x10xf32>
        %271 = vector.multi_reduction <xor>, %18, %18 [] : vector<12xi16> to vector<12xi16>
        %272 = math.cttz %1 : tensor<14xi64>
        bufferization.dealloc_tensor %19 : tensor<14xi16>
        %273 = index.add %c6, %c11
        %274 = arith.remsi %c2039219675_i32, %c789278739_i32 : i32
        %275 = affine.apply affine_map<(d0) -> (0)>(%c9)
        %extracted_53 = tensor.extract %expanded[%c3, %c0] : tensor<14x1xi16>
        %276 = index.divs %c11, %260
        %277 = math.ctlz %c2055695765_i32 : i32
        scf.yield
      }
      %262 = index.ceildivu %c4, %c12
      %263 = math.absf %cst_2 : f16
      scf.condition(%arg0) %arg0 : i1
    } do {
    ^bb0(%arg0: i1):
      %258 = affine.load %alloc_16[%c11, %c11] : memref<10x14xf32>
      %259 = arith.shli %c558059930_i32, %c2039219675_i32 : i32
      %260 = vector.extract_strided_slice %18 {offsets = [4], sizes = [1], strides = [1]} : vector<12xi16> to vector<1xi16>
      %261 = arith.cmpf ogt, %cst, %cst : f16
      %262 = vector.create_mask %c7, %c5 : vector<10x14xi1>
      %263 = vector.splat %c11 : vector<12x10xindex>
      %264 = vector.extract %260[0] : vector<1xi16>
      %265 = arith.minui %arg0, %arg0 : i1
      %266 = arith.divui %c1145379926_i32, %c2039219675_i32 : i32
      %267 = arith.minsi %c789278739_i32, %c789278739_i32 : i32
      %268 = vector.insert %c2063_i16, %260 [0] : i16 into vector<1xi16>
      %269 = arith.ceildivsi %c1814187417_i32, %c789278739_i32 : i32
      %270 = vector.splat %c6 : vector<12xindex>
      %271 = scf.while (%arg1 = %alloc_13) : (memref<12x10xi16>) -> memref<12x10xi16> {
        %273 = bufferization.to_tensor %alloc_15 : memref<14xf32>
        %274 = tensor.empty() : tensor<12xi1>
        %275 = arith.minsi %c214280376_i64, %c795053815_i64 : i64
        %collapsed_45 = tensor.collapse_shape %9 [[0, 1]] : tensor<10x14xi32> into tensor<140xi32>
        %276 = vector.load %alloc_12[%c1, %c9] : memref<10x14xi32>, vector<10x14xi32>
        %277 = vector.broadcast %258 : f32 to vector<12x10xf32>
        %278 = vector.fma %277, %277, %277 : vector<12x10xf32>
        %279 = arith.shrsi %arg0, %arg0 : i1
        %alloc_46 = memref.alloc() : memref<10x12xi1>
        %280 = tensor.empty() : tensor<12x12xi1>
        %281 = linalg.matmul ins(%16, %alloc_46 : tensor<12x10xi1>, memref<10x12xi1>) outs(%280 : tensor<12x12xi1>) -> tensor<12x12xi1>
        scf.condition(%arg0) %arg1 : memref<12x10xi16>
      } do {
      ^bb0(%arg1: memref<12x10xi16>):
        %273 = arith.shli %c2055695765_i32, %c2039219675_i32 : i32
        %274 = arith.shrsi %c2063_i16, %c-19420_i16 : i16
        %inserted_45 = tensor.insert %false into %15[%c10, %c5] : tensor<12x10xi1>
        %275 = math.ceil %cst_1 : f16
        %276 = math.atan %cst_2 : f16
        %splat = tensor.splat %true : tensor<12x10xi1>
        %cst_46 = arith.constant 1.23378829E+9 : f32
        %277 = index.sizeof
        %278 = memref.atomic_rmw ori %c2063_i16, %alloc_4[%c3] : (i16, memref<12xi16>) -> i16
        memref.assume_alignment %alloc_8, 1 : memref<12xi16>
        %279 = arith.addi %false, %false : i1
        %extracted_47 = tensor.extract %19[%c9] : tensor<14xi16>
        %280 = affine.load %alloc_18[%c3, %c0] : memref<10x12xi64>
        %281 = arith.remf %cst, %cst_0 : f16
        %282 = index.maxu %c1, %c4
        bufferization.dealloc_tensor %11 : tensor<14xi1>
        scf.yield %arg1 : memref<12x10xi16>
      }
      affine.for %arg1 = 0 to 81 {
      }
      %272 = math.atan2 %258, %258 : f32
      scf.yield %arg0 : i1
    }
    %38 = arith.shrui %c789278739_i32, %c1145379926_i32 : i32
    %39 = arith.addi %c558059930_i32, %c789278739_i32 : i32
    %40 = vector.create_mask %c7 : vector<12xi1>
    %41 = vector.multi_reduction <minsi>, %18, %18 [] : vector<12xi16> to vector<12xi16>
    %42 = bufferization.clone %alloc_18 : memref<10x12xi64> to memref<10x12xi64>
    %43 = math.atan2 %cst_2, %cst_0 : f16
    %44 = math.log1p %cst_1 : f16
    %45 = affine.max affine_map<(d0) -> (-d0 + 2, d0 * 4, d0 * -127, d0 * -128)>(%c4)
    %46 = vector.extract %40[10] : vector<12xi1>
    %47 = math.ctlz %4 : tensor<12xi16>
    %48 = math.round %cst_0 : f16
    %49 = arith.xori %true, %true : i1
    %50 = arith.subi %c-19420_i16, %c2063_i16 : i16
    %51 = math.ceil %cst_2 : f16
    %52 = affine.load %alloc_3[%c4] : memref<12xi16>
    %53 = index.sizeof
    %expanded_21 = tensor.expand_shape %8 [[0, 1]] : tensor<12xi32> into tensor<12x1xi32>
    %54 = vector.create_mask %c0, %c8 : vector<10x14xi1>
    %55 = arith.shrsi %c558059930_i32, %c1814187417_i32 : i32
    %56 = math.log1p %cst_1 : f16
    %57 = arith.minsi %c2055695765_i32, %c1145379926_i32 : i32
    %58 = math.exp %cst : f16
    %cst_22 = arith.constant 1.000000e+00 : f32
    %59 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
    %60 = vector.fma %59, %59, %59 : vector<12x10xf32>
    %61 = arith.divf %cst_0, %cst : f16
    %62 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 64 - d0 floordiv 8)>(%c9, %c0, %c3)
    %63 = arith.minsi %c2063_i16, %52 : i16
    %64 = arith.addi %c-19420_i16, %52 : i16
    %65 = math.roundeven %cst_1 : f16
    scf.execute_region {
      %258 = affine.for %arg0 = 0 to 84 iter_args(%arg1 = %false) -> (i1) {
        affine.yield %arg1 : i1
      }
      %259 = index.floordivs %53, %c14
      %260 = affine.for %arg0 = 0 to 123 iter_args(%arg1 = %60) -> (vector<12x10xf32>) {
        affine.yield %60 : vector<12x10xf32>
      }
      %261 = math.cos %cst : f16
      %inserted_45 = tensor.insert %c214280376_i64 into %0[%c10, %c3] : tensor<12x10xi64>
      %262 = index.ceildivu %28, %c1
      %263 = math.fpowi %cst_2, %c789278739_i32 : f16, i32
      %264 = arith.shli %c2039219675_i32, %c2039219675_i32 : i32
      %265 = vector.load %alloc_12[%c5, %c13] : memref<10x14xi32>, vector<10x14xi32>
      %c2098862996_i64 = arith.constant 2098862996 : i64
      %266 = math.round %cst_0 : f16
      vector.print %60 : vector<12x10xf32>
      %267 = memref.atomic_rmw maxu %c-19420_i16, %alloc_3[%c9] : (i16, memref<12xi16>) -> i16
      %268 = arith.remsi %52, %c2063_i16 : i16
      %inserted_46 = tensor.insert %c214280376_i64 into %3[%c0] : tensor<12xi64>
      %269 = arith.andi %c1814187417_i32, %c1145379926_i32 : i32
      scf.yield
    }
    %66 = tensor.empty() : tensor<12x1xi1>
    %67 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12, %expanded_20, %66 : tensor<12xi1>, tensor<12x10x1xi1>, tensor<12x1xi1>) outs(%expanded_20 : tensor<12x10x1xi1>) {
    ^bb0(%in: i1, %in_45: i1, %in_46: i1, %out: i1):
      %258 = math.ceil %cst_1 : f16
      %259 = math.absf %cst_1 : f16
      %260 = scf.while (%arg0 = %c2039219675_i32) : (i32) -> i32 {
        %287 = arith.remf %cst, %cst : f16
        %288 = arith.remui %in, %in_46 : i1
        %289 = math.ctlz %3 : tensor<12xi64>
        %290 = vector.broadcast %cst_22 : f32 to vector<10x14xf32>
        %291 = vector.fma %290, %290, %290 : vector<10x14xf32>
        %292 = math.exp2 %cst_1 : f16
        %293 = affine.load %alloc_17[%c4] : memref<12xf16>
        %294 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
        %295 = vector.fma %294, %60, %60 : vector<12x10xf32>
        %expanded_50 = tensor.expand_shape %expanded_21 [[0], [1, 2]] : tensor<12x1xi32> into tensor<12x1x1xi32>
        scf.condition(%in) %arg0 : i32
      } do {
      ^bb0(%arg0: i32):
        %287 = arith.addi %out, %in_46 : i1
        %288 = arith.xori %c2063_i16, %c2063_i16 : i16
        %289 = arith.muli %52, %c-19420_i16 : i16
        %290 = math.cttz %in_46 : i1
        %splat = tensor.splat %cst_22 : tensor<14xf32>
        %291 = arith.shrui %true, %in : i1
        %292 = vector.extract %33[0] : vector<1xi16>
        %293 = vector.splat %c14 : vector<12x10xindex>
        %294 = index.maxs %45, %c0
        %expanded_50 = tensor.expand_shape %6 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %295 = math.ipowi %c2039219675_i32, %c2039219675_i32 : i32
        %296 = vector.matrix_multiply %33, %33 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %297 = math.fpowi %cst_22, %c558059930_i32 : f32, i32
        %298 = arith.shrsi %arg0, %c1814187417_i32 : i32
        %299 = index.ceildivs %c0, %c3
        %true_51 = index.bool.constant true
        scf.yield %c2039219675_i32 : i32
      }
      %261 = memref.load %alloc_17[%c7] : memref<12xf16>
      %262 = vector.broadcast %cst_22 : f32 to vector<12xf32>
      %263 = vector.fma %262, %262, %262 : vector<12xf32>
      memref.assume_alignment %alloc_15, 8 : memref<14xf32>
      %264 = math.ctlz %21 : tensor<i16>
      %265 = math.rsqrt %cst_0 : f16
      %266 = arith.andi %in_45, %true : i1
      %from_elements_47 = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22 : tensor<12xf32>
      %267 = arith.minui %c795053815_i64, %c214280376_i64 : i64
      %268 = vector.shuffle %18, %18 [3, 4, 8, 10, 12, 18, 20, 21, 22, 23] : vector<12xi16>, vector<12xi16>
      %269 = vector.broadcast %c10 : index to vector<12xindex>
      vector.scatter %alloc_15[%c3] [%269], %40, %263 : memref<14xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %270 = vector.extract %40[4] : vector<12xi1>
      scf.index_switch %c1 
      case 1 {
        %287 = arith.remf %cst, %cst : f16
        %from_elements_50 = tensor.from_elements %cst_1, %cst_1, %cst, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %cst_0, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst, %cst, %cst_1, %cst, %cst_0, %cst_1, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst, %cst_0, %cst, %cst, %cst_1, %cst_1, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_0, %cst_1, %cst_1, %cst_2 : tensor<10x14xf16>
        %288 = arith.ori %true, %in : i1
        %collapsed_51 = tensor.collapse_shape %9 [[0, 1]] : tensor<10x14xi32> into tensor<140xi32>
        %289 = vector.broadcast %cst_0 : f16 to vector<12x10xf16>
        %290 = math.exp %cst_2 : f16
        %291 = math.atan2 %from_elements_50, %from_elements_50 : tensor<10x14xf16>
        %292 = math.ceil %from_elements_47 : tensor<12xf32>
        %293 = arith.floordivsi %c2039219675_i32, %c2055695765_i32 : i32
        %294 = arith.floordivsi %c789278739_i32, %c558059930_i32 : i32
        %295 = arith.cmpi sle, %c789278739_i32, %c789278739_i32 : i32
        %from_elements_52 = tensor.from_elements %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64 : tensor<10x14xi64>
        %296 = vector.extract %262[11] : vector<12xf32>
        memref.tensor_store %6, %alloc_9 : memref<14xi16>
        %true_53 = index.bool.constant true
        %297 = math.sqrt %from_elements_47 : tensor<12xf32>
        scf.yield
      }
      case 2 {
        %287 = arith.shrsi %false, %in_46 : i1
        %from_elements_50 = tensor.from_elements %cst, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_2, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_1, %cst, %cst_0, %cst_0, %cst_0, %cst_2, %cst, %cst_1, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst_0, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1 : tensor<10x14xf16>
        %288 = index.ceildivs %c9, %c8
        %289 = arith.addf %cst_2, %cst_2 : f16
        %290 = affine.max affine_map<(d0, d1) -> (d1 floordiv 2 + 16)>(%c15, %c2)
        %291 = math.cttz %7 : tensor<14xi16>
        %292 = vector.multi_reduction <and>, %40, %true [0] : vector<12xi1> to i1
        %293 = index.casts %c1 : index to i32
        %294 = index.maxu %53, %c15
        %295 = math.log1p %cst_22 : f32
        %296 = arith.floordivsi %c1814187417_i32, %c558059930_i32 : i32
        %297 = index.ceildivu %c15, %c12
        %inserted_51 = tensor.insert %cst into %from_elements_50[%c7, %c7] : tensor<10x14xf16>
        %298 = index.ceildivu %c3, %c2
        %299 = math.rsqrt %cst_1 : f16
        %300 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
        %301 = vector.fma %300, %300, %59 : vector<12x10xf32>
        scf.yield
      }
      case 3 {
        %287 = math.exp %cst_22 : f32
        %288 = arith.shrsi %c1145379926_i32, %c1814187417_i32 : i32
        %289 = index.ceildivu %c6, %53
        %290 = vector.load %alloc_4[%c10] : memref<12xi16>, vector<12xi16>
        %291 = math.log2 %cst_0 : f16
        %292 = memref.atomic_rmw muli %c2063_i16, %alloc_4[%c0] : (i16, memref<12xi16>) -> i16
        %293 = memref.realloc %alloc_3 : memref<12xi16> to memref<10xi16>
        %294 = vector.broadcast %cst_22 : f32 to vector<10xf32>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %60, %294 {inclusive = true, reduction_dim = 0 : i64} : vector<12x10xf32>, vector<10xf32>
        %alloc_52 = memref.alloc() : memref<10x10xi1>
        %295 = tensor.empty() : tensor<12x10xi1>
        %296 = linalg.matmul ins(%16, %alloc_52 : tensor<12x10xi1>, memref<10x10xi1>) outs(%295 : tensor<12x10xi1>) -> tensor<12x10xi1>
        %297 = arith.andi %c2063_i16, %c-19420_i16 : i16
        %298 = vector.splat %c795053815_i64 : vector<10x14xi64>
        %expanded_53 = tensor.expand_shape %6 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        affine.store %cst_22, %alloc_6[%c12, %c6] : memref<12x10xf32>
        %299 = memref.load %alloc_8[%c1] : memref<12xi16>
        %300 = math.round %from_elements_47 : tensor<12xf32>
        %301 = math.ctlz %8 : tensor<12xi32>
        scf.yield
      }
      case 4 {
        %splat = tensor.splat %false : tensor<10x14xi1>
        %287 = arith.remui %c2055695765_i32, %c2039219675_i32 : i32
        %288 = arith.divf %cst_22, %cst_22 : f32
        %289 = index.mul %c13, %c13
        %290 = math.absf %cst_0 : f16
        %291 = arith.minf %cst_2, %cst_0 : f16
        memref.assume_alignment %alloc_8, 8 : memref<12xi16>
        memref.assume_alignment %alloc_9, 4 : memref<14xi16>
        %true_50 = arith.constant true
        %292 = math.atan %cst_1 : f16
        %293 = index.maxu %62, %c8
        %294 = arith.addf %cst_22, %cst_22 : f32
        %295 = vector.matrix_multiply %40, %40 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
        %296 = math.log1p %from_elements_47 : tensor<12xf32>
        %297 = tensor.empty() : tensor<12x14xi32>
        %298 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%297 : tensor<12x14xi32>) -> tensor<12x14xi32>
        %inserted_51 = tensor.insert %true into %12[%c8] : tensor<12xi1>
        scf.yield
      }
      default {
        %287 = index.add %53, %c4
        %288 = math.rsqrt %cst : f16
        %289 = arith.shrui %out, %in_45 : i1
        %290 = vector.broadcast %cst_22 : f32 to vector<10xf32>
        %dest_50, %accumulated_value_51 = vector.scan <minf>, %59, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<12x10xf32>, vector<10xf32>
        %291 = bufferization.to_tensor %alloc_13 : memref<12x10xi16>
        %292 = arith.remf %cst_1, %cst_1 : f16
        %293 = index.maxu %c0, %c8
        %294 = arith.negf %cst_2 : f16
        %295 = arith.andi %true, %in : i1
        %296 = arith.shrsi %c558059930_i32, %c1145379926_i32 : i32
        %297 = arith.cmpf one, %cst, %cst_1 : f16
        %298 = vector.broadcast %c795053815_i64 : i64 to vector<10x14xi64>
        %299 = arith.remf %cst_1, %cst_1 : f16
        %300 = arith.mulf %cst_2, %cst_0 : f16
        %301 = math.exp %from_elements_47 : tensor<12xf32>
        %302 = index.casts %in_46 : i1 to index
      }
      %271 = arith.andi %c2063_i16, %52 : i16
      %272 = arith.floordivsi %in, %true : i1
      %273 = tensor.empty() : tensor<10x14xi64>
      %274 = arith.remf %cst_1, %cst_1 : f16
      %275 = index.maxu %c1, %c2
      %276 = tensor.empty() : tensor<12x10xi1>
      %277 = scf.while (%arg0 = %c214280376_i64) : (i64) -> i64 {
        %splat = tensor.splat %true : tensor<12xi1>
        %287 = math.round %from_elements_47 : tensor<12xf32>
        %288 = math.log2 %cst : f16
        %expanded_50 = tensor.expand_shape %expanded_20 [[0], [1], [2, 3]] : tensor<12x10x1xi1> into tensor<12x10x1x1xi1>
        %c1_i64 = arith.constant 1 : i64
        %289 = vector.transfer_read %5[%c1, %62], %c1_i64 : tensor<12x10xi64>, vector<i64>
        %290 = tensor.empty() : tensor<12xi16>
        %extracted_51 = tensor.extract %9[%c0, %c4] : tensor<10x14xi32>
        %291 = vector.splat %true : vector<12xi1>
        scf.condition(%in_45) %arg0 : i64
      } do {
      ^bb0(%arg0: i64):
        %287 = math.log1p %cst_22 : f32
        %288 = arith.divsi %true, %true : i1
        %289 = affine.load %alloc_8[%c8] : memref<12xi16>
        memref.store %c-19420_i16, %alloc_9[%c2] : memref<14xi16>
        %290 = index.ceildivs %c6, %c5
        %291 = arith.xori %c789278739_i32, %c558059930_i32 : i32
        %292 = math.ctlz %out : i1
        %293 = math.exp %cst_1 : f16
        %294 = vector.splat %c-19420_i16 : vector<12x10xi16>
        %295 = math.atan %cst_2 : f16
        %296 = math.fpowi %cst, %c1145379926_i32 : f16, i32
        %297 = memref.load %alloc_16[%c9, %c7] : memref<10x14xf32>
        %298 = math.fma %cst_0, %cst, %cst : f16
        %299 = index.ceildivs %c0, %c7
        %300 = index.maxs %c5, %c11
        %301 = vector.multi_reduction <xor>, %40, %out [0] : vector<12xi1> to i1
        scf.yield %c214280376_i64 : i64
      }
      scf.index_switch %c7 
      case 1 {
        %287 = index.maxs %c1, %45
        %from_elements_50 = tensor.from_elements %c795053815_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c214280376_i64, %c795053815_i64, %c795053815_i64 : tensor<14xi64>
        %splat = tensor.splat %c1145379926_i32 : tensor<12x10xi32>
        %288 = arith.divui %c2039219675_i32, %c558059930_i32 : i32
        %289 = math.ctpop %10 : tensor<14xi1>
        %290 = arith.xori %c2039219675_i32, %c2039219675_i32 : i32
        %291 = vector.broadcast %in : i1 to vector<12x12xi1>
        %292 = vector.outerproduct %40, %40, %291 {kind = #vector.kind<maxui>} : vector<12xi1>, vector<12xi1>
        %293 = arith.xori %c558059930_i32, %c1814187417_i32 : i32
        %294 = math.rsqrt %from_elements_47 : tensor<12xf32>
        %295 = vector.splat %c2063_i16 : vector<14xi16>
        %296 = index.sizeof
        %alloc_51 = memref.alloc() : memref<10x10xi1>
        %297 = tensor.empty() : tensor<12x10xi1>
        %298 = linalg.matmul ins(%15, %alloc_51 : tensor<12x10xi1>, memref<10x10xi1>) outs(%297 : tensor<12x10xi1>) -> tensor<12x10xi1>
        %299 = arith.subi %in_45, %in_45 : i1
        %300 = vector.broadcast %cst_22 : f32 to vector<12x12xf32>
        %301 = vector.outerproduct %263, %263, %300 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
        %302 = math.roundeven %from_elements_47 : tensor<12xf32>
        %extracted_52 = tensor.extract %3[%c6] : tensor<12xi64>
        scf.yield
      }
      case 2 {
        %287 = memref.load %alloc_6[%c9, %c9] : memref<12x10xf32>
        %288 = math.exp2 %from_elements_47 : tensor<12xf32>
        %289 = index.ceildivu %c14, %275
        %290 = vector.broadcast %cst_22 : f32 to vector<10xf32>
        %291 = vector.insert %290, %60 [6] : vector<10xf32> into vector<12x10xf32>
        %292 = arith.xori %c2063_i16, %c2063_i16 : i16
        %293 = vector.extract %18[0] : vector<12xi16>
        %294 = math.round %from_elements_47 : tensor<12xf32>
        %295 = arith.negf %cst_0 : f16
        %296 = arith.minsi %52, %c-19420_i16 : i16
        %297 = vector.multi_reduction <maxsi>, %54, %54 [] : vector<10x14xi1> to vector<10x14xi1>
        %298 = vector.load %alloc_5[%c8] : memref<12xi64>, vector<14xi64>
        %299 = tensor.empty() : tensor<14x12xi32>
        %300 = tensor.empty() : tensor<10x12xi32>
        %301 = linalg.matmul ins(%9, %299 : tensor<10x14xi32>, tensor<14x12xi32>) outs(%300 : tensor<10x12xi32>) -> tensor<10x12xi32>
        %302 = vector.extract %18[8] : vector<12xi16>
        %false_50 = index.bool.constant false
        %303 = arith.subi %out, %in_45 : i1
        %304 = bufferization.to_tensor %alloc_9 : memref<14xi16>
        scf.yield
      }
      default {
        %287 = memref.load %alloc_5[%c3] : memref<12xi64>
        %288 = math.expm1 %cst : f16
        %289 = memref.atomic_rmw andi %c214280376_i64, %alloc_5[%c11] : (i64, memref<12xi64>) -> i64
        %290 = vector.load %alloc_10[%c0, %c6] : memref<10x14xf32>, vector<12xf32>
        %291 = math.atan2 %cst_1, %cst_1 : f16
        %alloc_50 = memref.alloc() : memref<12x10xi64>
        memref.tensor_store %5, %alloc_50 : memref<12x10xi64>
        %292 = arith.floordivsi %c795053815_i64, %c795053815_i64 : i64
        %293 = arith.addi %c2039219675_i32, %c558059930_i32 : i32
        %294 = affine.max affine_map<(d0) -> (d0 * 2 + 16)>(%c8)
        %295 = arith.remui %52, %c2063_i16 : i16
        %296 = math.ctlz %in_45 : i1
        %297 = arith.remui %c558059930_i32, %c1814187417_i32 : i32
        %298 = index.maxu %c0, %c7
        %299 = vector.matrix_multiply %290, %290 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
        %300 = math.cos %cst_1 : f16
        %301 = arith.addi %out, %true : i1
      }
      %278 = math.round %cst_2 : f16
      %279 = math.ctlz %c1145379926_i32 : i32
      %280 = math.tan %from_elements_47 : tensor<12xf32>
      %281 = vector.broadcast %cst_22 : f32 to vector<14xf32>
      %282 = vector.fma %281, %281, %281 : vector<14xf32>
      %283 = vector.multi_reduction <maxf>, %262, %cst_22 [0] : vector<12xf32> to f32
      %284 = arith.divui %c558059930_i32, %c2055695765_i32 : i32
      %285 = vector.insert %cst_22, %263 [3] : f32 into vector<12xf32>
      %286 = index.ceildivs %c7, %c15
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %59, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xf32>, vector<12xf32>
      linalg.yield %false : i1
    } -> tensor<12x10x1xi1>
    %68 = math.log1p %cst_0 : f16
    affine.for %arg0 = 0 to 86 {
    }
    %69 = index.divu %c15, %c11
    %70 = math.atan %cst_0 : f16
    %71 = affine.for %arg0 = 0 to 31 iter_args(%arg1 = %52) -> (i16) {
      affine.yield %arg1 : i16
    }
    %72 = arith.shrui %c1814187417_i32, %c1145379926_i32 : i32
    %73 = math.atan %cst : f16
    %74 = memref.atomic_rmw minu %52, %alloc_13[%c1, %c0] : (i16, memref<12x10xi16>) -> i16
    %75 = index.maxu %c3, %c1
    %76 = index.divu %c7, %c5
    %77 = arith.shrsi %c795053815_i64, %c214280376_i64 : i64
    %78 = arith.ceildivsi %c795053815_i64, %c795053815_i64 : i64
    memref.alloca_scope  {
      %258 = arith.xori %c795053815_i64, %c795053815_i64 : i64
      %259 = index.casts %c2039219675_i32 : i32 to index
      %260 = arith.mulf %cst_0, %cst_2 : f16
      %261 = arith.muli %false, %false : i1
      %262 = memref.load %alloc_10[%c3, %c10] : memref<10x14xf32>
      scf.execute_region {
        %284 = math.atan %cst_0 : f16
        %285 = index.add %c3, %75
        %286 = bufferization.to_tensor %alloc_3 : memref<12xi16>
        %c15005_i16 = arith.constant 15005 : i16
        %287 = math.log1p %cst_2 : f16
        %288 = math.log2 %cst_0 : f16
        %289 = vector.broadcast %cst_22 : f32 to vector<12xf32>
        %290 = vector.fma %289, %289, %289 : vector<12xf32>
        %291 = arith.addi %52, %c2063_i16 : i16
        %292 = math.ctlz %14 : tensor<14xi64>
        %293 = arith.floordivsi %false, %true : i1
        %294 = math.atan %cst_22 : f32
        %alloc_48 = memref.alloc() : memref<14x12xi32>
        %295 = tensor.empty() : tensor<10x12xi32>
        %296 = linalg.matmul ins(%9, %alloc_48 : tensor<10x14xi32>, memref<14x12xi32>) outs(%295 : tensor<10x12xi32>) -> tensor<10x12xi32>
        %297 = affine.load %alloc_4[%c4] : memref<12xi16>
        %298 = arith.minsi %52, %297 : i16
        %299 = arith.remui %297, %c-19420_i16 : i16
        %300 = index.maxu %69, %c14
        scf.yield
      }
      %expanded_45 = tensor.expand_shape %14 [[0, 1]] : tensor<14xi64> into tensor<14x1xi64>
      %263 = vector.broadcast %c5 : index to vector<12xindex>
      %264 = vector.broadcast %cst_22 : f32 to vector<12xf32>
      vector.scatter %alloc_6[%c4, %c1] [%263], %40, %264 : memref<12x10xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %265 = math.log %cst : f16
      %266 = memref.atomic_rmw maxs %c-19420_i16, %alloc_9[%c1] : (i16, memref<14xi16>) -> i16
      %267 = index.casts %c12 : index to i32
      %268 = vector.extract_strided_slice %60 {offsets = [7], sizes = [5], strides = [1]} : vector<12x10xf32> to vector<5x10xf32>
      bufferization.dealloc_tensor %12 : tensor<12xi1>
      %269 = math.ceil %cst_22 : f32
      %expanded_46 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<12x10xi1> into tensor<12x10x1xi1>
      %270 = arith.xori %c789278739_i32, %c789278739_i32 : i32
      %271 = arith.negf %cst_0 : f16
      memref.alloca_scope  {
        %284 = index.ceildivu %c7, %c14
        %285 = vector.broadcast %c15 : index to vector<10xindex>
        %286 = vector.broadcast %false : i1 to vector<10xi1>
        %287 = vector.broadcast %c-19420_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_3[%c6] [%285], %286, %287 : memref<12xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %288 = affine.load %alloc_5[%c4] : memref<12xi64>
        %289 = arith.cmpi sgt, %c2039219675_i32, %c789278739_i32 : i32
        %alloc_48 = memref.alloc() : memref<12x10xf32>
        memref.copy %alloc_6, %alloc_48 : memref<12x10xf32> to memref<12x10xf32>
        %290 = math.copysign %cst_1, %cst_2 : f16
        %291 = index.casts %69 : index to i32
        %292 = vector.broadcast %cst_22 : f32 to vector<10xf32>
        %293 = vector.multi_reduction <mul>, %60, %292 [0] : vector<12x10xf32> to vector<10xf32>
        %294 = math.cttz %3 : tensor<12xi64>
        %295 = index.sizeof
        %296 = vector.broadcast %c2063_i16 : i16 to vector<14xi16>
        %297 = vector.broadcast %true : i1 to vector<14xi1>
        %298 = vector.broadcast %c2039219675_i32 : i32 to vector<14xi32>
        %299 = vector.gather %alloc_9[%28] [%298], %297, %296 : memref<14xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %300 = bufferization.clone %42 : memref<10x12xi64> to memref<10x12xi64>
        %301 = arith.subi %c2039219675_i32, %c789278739_i32 : i32
        %302 = math.rsqrt %cst_1 : f16
        %splat_49 = tensor.splat %c2063_i16 : tensor<12xi16>
        %expanded_50 = tensor.expand_shape %12 [[0, 1]] : tensor<12xi1> into tensor<12x1xi1>
        %303 = math.log1p %cst_22 : f32
        %304 = arith.cmpf une, %cst_1, %cst_0 : f16
        %305 = arith.shrui %c-19420_i16, %c-19420_i16 : i16
        %306 = index.divs %c15, %284
        %true_51 = index.bool.constant true
        %307 = math.ipowi %expanded_46, %expanded_20 : tensor<12x10x1xi1>
        %308 = index.ceildivs %259, %c13
        %309 = bufferization.to_tensor %alloc_18 : memref<10x12xi64>
        %310 = math.tan %cst : f16
        %311 = vector.broadcast %cst_22 : f32 to vector<12xf32>
        %312 = vector.fma %311, %311, %311 : vector<12xf32>
        %313 = index.ceildivs %259, %45
        %314 = arith.andi %c214280376_i64, %288 : i64
        %315 = index.maxu %76, %c9
        %316 = index.maxu %306, %295
        %317 = math.log1p %cst : f16
        %true_52 = arith.constant true
        %false_53 = arith.constant false
        %318 = vector.transfer_read %11[%62], %false_53 : tensor<14xi1>, vector<i1>
      }
      %272 = math.round %cst_22 : f32
      %273 = index.maxu %c9, %28
      %274 = affine.load %alloc_16[%c10, %c3] : memref<10x14xf32>
      %splat = tensor.splat %true : tensor<14xi1>
      %275 = vector.extract_strided_slice %40 {offsets = [3], sizes = [3], strides = [1]} : vector<12xi1> to vector<3xi1>
      %276 = math.ipowi %7, %7 : tensor<14xi16>
      %collapsed_47 = tensor.collapse_shape %expanded [[0, 1]] : tensor<14x1xi16> into tensor<14xi16>
      %277 = index.divu %c0, %28
      %278 = vector.extract_strided_slice %60 {offsets = [6], sizes = [4], strides = [1]} : vector<12x10xf32> to vector<4x10xf32>
      %279 = memref.alloca_scope  -> (i64) {
        %284 = math.log1p %cst_1 : f16
        %285 = math.ctlz %9 : tensor<10x14xi32>
        %expanded_48 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<12x10xi32> into tensor<12x10x1xi32>
        %286 = index.maxs %28, %c14
        %287 = math.round %cst_22 : f32
        %288 = math.ipowi %10, %splat : tensor<14xi1>
        %289 = vector.extract %268[2] : vector<5x10xf32>
        %290 = math.exp %cst : f16
        memref.assume_alignment %alloc_4, 1 : memref<12xi16>
        %291 = math.cttz %c558059930_i32 : i32
        %292 = vector.load %alloc_7[%c2, %c0] : memref<12x10xi16>, vector<10x14xi16>
        %293 = vector.multi_reduction <minf>, %289, %289 [] : vector<10xf32> to vector<10xf32>
        memref.assume_alignment %alloc_17, 16 : memref<12xf16>
        %294 = arith.minsi %true, %true : i1
        %295 = math.ctlz %splat : tensor<14xi1>
        memref.store %c558059930_i32, %alloc_11[%c10] : memref<12xi32>
        %296 = index.ceildivu %277, %c3
        %297 = arith.divsi %52, %c2063_i16 : i16
        %298 = index.ceildivu %53, %259
        %299 = arith.cmpi eq, %c2055695765_i32, %c2039219675_i32 : i32
        %splat_49 = tensor.splat %cst : tensor<14xf16>
        %300 = affine.load %alloc_13[%c6, %c6] : memref<12x10xi16>
        %301 = index.sub %c15, %c1
        %302 = math.exp %cst_2 : f16
        %303 = vector.broadcast %c0 : index to vector<14xindex>
        %304 = vector.broadcast %false : i1 to vector<14xi1>
        %305 = vector.broadcast %c795053815_i64 : i64 to vector<14xi64>
        vector.scatter %42[%c5, %c0] [%303], %304, %305 : memref<10x12xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
        %306 = arith.andi %true, %true : i1
        %307 = index.maxs %76, %c9
        %alloc_50 = memref.alloc() : memref<10x10xi1>
        %308 = tensor.empty() : tensor<12x10xi1>
        %309 = linalg.matmul ins(%15, %alloc_50 : tensor<12x10xi1>, memref<10x10xi1>) outs(%308 : tensor<12x10xi1>) -> tensor<12x10xi1>
        %alloc_51 = memref.alloc() : memref<12x10xi32>
        memref.tensor_store %2, %alloc_51 : memref<12x10xi32>
        %310 = arith.remsi %c2039219675_i32, %c789278739_i32 : i32
        %extracted_52 = tensor.extract %5[%c9, %c3] : tensor<12x10xi64>
        %311 = arith.shrui %true, %true : i1
        memref.alloca_scope.return %c795053815_i64 : i64
      }
      %280 = math.fpowi %274, %c1145379926_i32 : f32, i32
      %281 = arith.mulf %cst_1, %cst_2 : f16
      %282 = math.ctlz %11 : tensor<14xi1>
      %283 = vector.extract %33[0] : vector<1xi16>
    }
    memref.store %cst_22, %alloc_16[%c4, %c7] : memref<10x14xf32>
    %79 = vector.load %alloc_8[%c11] : memref<12xi16>, vector<12x10xi16>
    %80 = tensor.empty() : tensor<i16>
    %mapped = linalg.map ins(%21, %20, %20 : tensor<i16>, tensor<i16>, tensor<i16>) outs(%80 : tensor<i16>)
      (%in: i16, %in_45: i16, %in_46: i16) {
        %258 = vector.multi_reduction <maxf>, %60, %cst_22 [0, 1] : vector<12x10xf32> to f32
        memref.assume_alignment %alloc_16, 4 : memref<10x14xf32>
        %259 = math.ctpop %10 : tensor<14xi1>
        %260 = math.ceil %cst_0 : f16
        %261 = affine.load %alloc_5[%c11] : memref<12xi64>
        %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_20 : tensor<12x10x1xi1>) {
        ^bb0(%out: i1):
          %286 = vector.broadcast %c214280376_i64 : i64 to vector<12x10xi64>
          %287 = vector.broadcast %out : i1 to vector<12x10xi1>
          %288 = vector.broadcast %c2039219675_i32 : i32 to vector<12x10xi32>
          %289 = vector.gather %14[%c5] [%288], %287, %286 : tensor<14xi64>, vector<12x10xi32>, vector<12x10xi1>, vector<12x10xi64> into vector<12x10xi64>
          %290 = affine.apply affine_map<(d0) -> (d0 mod 16)>(%45)
          %291 = math.cttz %15 : tensor<12x10xi1>
          %292 = arith.remsi %52, %c-19420_i16 : i16
          %293 = bufferization.clone %alloc : memref<10x14xi16> to memref<10x14xi16>
          %294 = index.ceildivu %69, %76
          %from_elements_49 = tensor.from_elements %out, %true, %out, %false, %false, %out, %out, %out, %true, %true, %out, %false : tensor<12xi1>
          %295 = vector.load %alloc_15[%c3] : memref<14xf32>, vector<14xf32>
          %296 = math.atan %cst_1 : f16
          %297 = arith.divui %c2055695765_i32, %c789278739_i32 : i32
          %298 = math.atan %cst_1 : f16
          %299 = memref.load %alloc_18[%c2, %c5] : memref<10x12xi64>
          %300 = math.roundeven %cst_1 : f16
          %301 = index.sizeof
          %302 = tensor.empty() : tensor<12xf16>
          %303 = math.log1p %302 : tensor<12xf16>
          %304 = math.ctlz %0 : tensor<12x10xi64>
          %extracted_50 = tensor.extract %2[%c9, %c8] : tensor<12x10xi32>
          %305 = arith.minsi %c558059930_i32, %c2039219675_i32 : i32
          %306 = index.maxs %c14, %294
          %307 = arith.maxui %c1814187417_i32, %c2039219675_i32 : i32
          %308 = arith.divsi %in_45, %c-19420_i16 : i16
          %309 = affine.load %alloc_17[%c8] : memref<12xf16>
          %310 = index.maxu %75, %c5
          %311 = arith.andi %c2055695765_i32, %c2039219675_i32 : i32
          %312 = arith.ceildivsi %out, %out : i1
          %313 = arith.negf %258 : f32
          %314 = arith.remui %true, %true : i1
          %splat = tensor.splat %true : tensor<12xi1>
          %315 = vector.broadcast %c558059930_i32 : i32 to vector<12xi32>
          %dest_51, %accumulated_value_52 = vector.scan <minsi>, %288, %315 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xi32>, vector<12xi32>
          %316 = affine.load %alloc_7[%c9, %c6] : memref<12x10xi16>
          %317 = arith.addi %c789278739_i32, %c2055695765_i32 : i32
          linalg.yield %true : i1
        } -> tensor<12x10x1xi1>
        %263 = math.ipowi %16, %16 : tensor<12x10xi1>
        %264 = memref.load %alloc[%c3, %c3] : memref<10x14xi16>
        %265 = arith.andi %c2039219675_i32, %c2055695765_i32 : i32
        %inserted_47 = tensor.insert %c795053815_i64 into %14[%c0] : tensor<14xi64>
        %266 = math.sqrt %cst : f16
        %267 = arith.minsi %true, %false : i1
        %268 = arith.addf %cst_2, %cst_1 : f16
        %269 = vector.broadcast %false : i1 to vector<14xi1>
        %270 = vector.maskedload %alloc_14[%c6], %269, %269 : memref<14xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
        %271 = math.exp %cst : f16
        %272 = affine.if affine_set<(d0, d1) : (d1 >= 0)>(%c2, %c7) -> f16 {
          %286 = vector.broadcast %cst_22 : f32 to vector<12xf32>
          %dest_49, %accumulated_value_50 = vector.scan <mul>, %59, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xf32>, vector<12xf32>
          %287 = bufferization.to_tensor %alloc : memref<10x14xi16>
          %288 = vector.broadcast %258 : f32 to vector<10x14xf32>
          %289 = vector.fma %288, %288, %288 : vector<10x14xf32>
          %290 = math.cttz %80 : tensor<i16>
          %291 = arith.ceildivsi %c1814187417_i32, %c1145379926_i32 : i32
          %292 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 2)>(%c3, %c7, %62)
          %293 = vector.load %alloc_18[%c6, %c7] : memref<10x12xi64>, vector<10x14xi64>
          %294 = vector.multi_reduction <xor>, %293, %c795053815_i64 [0, 1] : vector<10x14xi64> to i64
          affine.yield %cst_2 : f16
        } else {
          %286 = vector.load %alloc_6[%c2, %c4] : memref<12x10xf32>, vector<12x10xf32>
          %287 = vector.insert %c-19420_i16, %33 [0] : i16 into vector<1xi16>
          %extracted_49 = tensor.extract %0[%c8, %c9] : tensor<12x10xi64>
          %288 = arith.remf %cst_0, %cst : f16
          %289 = math.exp %cst_1 : f16
          %290 = vector.extract %59[0] : vector<12x10xf32>
          %291 = affine.max affine_map<(d0, d1) -> (d1, (d0 - (d1 + d0)) floordiv 32, d1, d0 - (d0 - (d1 + d0)))>(%c15, %c1)
          %292 = arith.shrsi %false, %true : i1
          affine.yield %cst_1 : f16
        }
        %273 = tensor.empty(%c5) : tensor<?x10xi1>
        %274 = vector.shuffle %40, %270 [0, 3, 4, 9, 10, 12, 13, 14, 17, 20, 23, 25] : vector<12xi1>, vector<14xi1>
        %275 = arith.cmpi slt, %c2039219675_i32, %c789278739_i32 : i32
        %276 = math.rsqrt %258 : f32
        %277 = arith.divf %258, %258 : f32
        %278 = math.atan2 %cst_0, %cst : f16
        bufferization.dealloc_tensor %13 : tensor<14xi64>
        bufferization.dealloc_tensor %14 : tensor<14xi64>
        %279 = vector.extract_strided_slice %269 {offsets = [0], sizes = [14], strides = [1]} : vector<14xi1> to vector<14xi1>
        %280 = math.fma %cst_1, %cst, %cst : f16
        %281 = tensor.empty() : tensor<1x10xi1>
        %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%281, %expanded_20, %12 : tensor<1x10xi1>, tensor<12x10x1xi1>, tensor<12xi1>) outs(%expanded_20 : tensor<12x10x1xi1>) {
        ^bb0(%in_49: i1, %in_50: i1, %in_51: i1, %out: i1):
          %286 = arith.divf %cst_22, %258 : f32
          %287 = arith.cmpf uge, %cst_0, %cst_2 : f16
          %288 = math.ctpop %c558059930_i32 : i32
          %collapsed_52 = tensor.collapse_shape %0 [[0, 1]] : tensor<12x10xi64> into tensor<120xi64>
          %collapsed_53 = tensor.collapse_shape %5 [[0, 1]] : tensor<12x10xi64> into tensor<120xi64>
          %289 = index.maxu %c12, %28
          %290 = affine.max affine_map<(d0, d1) -> ((d0 mod 128) * 2)>(%c6, %76)
          %291 = vector.multi_reduction <xor>, %54, %269 [0] : vector<10x14xi1> to vector<14xi1>
          %292 = vector.splat %28 : vector<10x14xindex>
          %expanded_54 = tensor.expand_shape %6 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
          %293 = math.ipowi %c1145379926_i32, %c558059930_i32 : i32
          %294 = arith.ceildivsi %52, %52 : i16
          bufferization.dealloc_tensor %collapsed_53 : tensor<120xi64>
          %295 = vector.broadcast %c-19420_i16 : i16 to vector<1x1xi16>
          %296 = vector.outerproduct %33, %33, %295 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
          %297 = vector.broadcast %258 : f32 to vector<14xf32>
          %298 = vector.fma %297, %297, %297 : vector<14xf32>
          %299 = math.fma %cst_22, %cst_22, %258 : f32
          %300 = arith.remf %cst_0, %cst_0 : f16
          %301 = vector.create_mask %45, %c11 : vector<12x10xi1>
          %302 = index.ceildivs %c12, %53
          %true_55 = index.bool.constant true
          %inserted_56 = tensor.insert %c795053815_i64 into %0[%c9, %c7] : tensor<12x10xi64>
          %collapsed_57 = tensor.collapse_shape %15 [[0, 1]] : tensor<12x10xi1> into tensor<120xi1>
          %303 = math.copysign %cst, %cst_1 : f16
          %splat = tensor.splat %in : tensor<12xi16>
          %304 = arith.floordivsi %c214280376_i64, %261 : i64
          %305 = math.fma %cst_22, %cst_22, %258 : f32
          %306 = arith.shrui %in_51, %true_55 : i1
          %307 = arith.addf %258, %cst_22 : f32
          %308 = arith.shrui %c-19420_i16, %in_45 : i16
          %inserted_58 = tensor.insert %in_51 into %expanded_20[%c7, %c8, %c0] : tensor<12x10x1xi1>
          %c1617198771_i32 = arith.constant 1617198771 : i32
          %309 = vector.create_mask %c2, %c2 : vector<12x10xi1>
          linalg.yield %true : i1
        } -> tensor<12x10x1xi1>
        %283 = scf.while (%arg0 = %279) : (vector<14xi1>) -> vector<14xi1> {
          %286 = math.roundeven %cst_2 : f16
          %287 = vector.create_mask %c9 : vector<14xi1>
          %288 = vector.extract %33[0] : vector<1xi16>
          %289 = arith.cmpf ole, %cst_22, %cst_22 : f32
          %290 = arith.maxui %52, %in : i16
          %291 = tensor.empty() : tensor<10x14xi1>
          %292 = tensor.empty() : tensor<12x14xi1>
          %293 = linalg.matmul ins(%16, %291 : tensor<12x10xi1>, tensor<10x14xi1>) outs(%292 : tensor<12x14xi1>) -> tensor<12x14xi1>
          %294 = arith.minui %52, %c-19420_i16 : i16
          %295 = math.sqrt %cst_0 : f16
          scf.condition(%false) %270 : vector<14xi1>
        } do {
        ^bb0(%arg0: vector<14xi1>):
          %286 = math.tan %cst_2 : f16
          %287 = arith.divui %c-19420_i16, %in_45 : i16
          %288 = tensor.empty(%76, %76) : tensor<?x?xi64>
          %289 = affine.load %alloc_17[%c2] : memref<12xf16>
          %c1_i64 = arith.constant 1 : i64
          %290 = vector.transfer_read %5[%62, %c0], %c1_i64 : tensor<12x10xi64>, vector<12xi64>
          %extracted_49 = tensor.extract %0[%c10, %c7] : tensor<12x10xi64>
          %291 = math.ctlz %expanded : tensor<14x1xi16>
          %292 = index.divs %53, %c12
          %293 = vector.load %alloc_14[%c6] : memref<14xi1>, vector<12xi1>
          %rank_50 = tensor.rank %5 : tensor<12x10xi64>
          %expanded_51 = tensor.expand_shape %14 [[0, 1]] : tensor<14xi64> into tensor<14x1xi64>
          %294 = arith.remui %c789278739_i32, %c1814187417_i32 : i32
          %295 = vector.multi_reduction <maxui>, %33, %33 [] : vector<1xi16> to vector<1xi16>
          %296 = index.divu %c10, %c10
          %297 = arith.mulf %289, %cst_0 : f16
          %298 = math.copysign %cst_0, %cst_0 : f16
          scf.yield %279 : vector<14xi1>
        }
        %collapsed_48 = tensor.collapse_shape %2 [[0, 1]] : tensor<12x10xi32> into tensor<120xi32>
        memref.assume_alignment %alloc_8, 8 : memref<12xi16>
        %284 = vector.load %alloc_14[%c9] : memref<14xi1>, vector<10x14xi1>
        %285 = index.maxu %c11, %c1
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %81 = math.ipowi %20, %21 : tensor<i16>
    %82 = arith.addi %true, %false : i1
    %83 = vector.shuffle %79, %79 [0, 4, 5, 7, 8, 9, 11, 12, 14, 17, 19, 20, 22] : vector<12x10xi16>, vector<12x10xi16>
    %84 = arith.minsi %true, %false : i1
    %85 = vector.shuffle %54, %54 [0, 2, 3, 4, 5, 8, 9, 10, 11, 13, 15, 16, 18] : vector<10x14xi1>, vector<10x14xi1>
    %86 = arith.cmpi sgt, %true, %true : i1
    %87 = tensor.empty() : tensor<12x14xi32>
    %88 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%87 : tensor<12x14xi32>) -> tensor<12x14xi32>
    %89 = vector.broadcast %cst_22 : f32 to vector<14xf32>
    %90 = vector.fma %89, %89, %89 : vector<14xf32>
    scf.execute_region {
      %258 = arith.cmpf ult, %cst_22, %cst_22 : f32
      %259 = math.exp %cst_22 : f32
      %260 = arith.minui %c2055695765_i32, %c1814187417_i32 : i32
      %261 = math.copysign %cst_0, %cst : f16
      %262 = arith.shrui %52, %c-19420_i16 : i16
      %263 = tensor.empty() : tensor<12x14xi32>
      %264 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%263 : tensor<12x14xi32>) -> tensor<12x14xi32>
      %265 = index.ceildivu %53, %c15
      %266 = arith.shli %true, %false : i1
      %267 = index.ceildivu %c3, %c12
      %268 = math.floor %cst_22 : f32
      %269 = math.log1p %cst_2 : f16
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 128)>(%c6, %53, %69, %c10)
      %271 = math.atan %cst_1 : f16
      %272 = index.add %45, %270
      %273 = arith.ori %c-19420_i16, %c2063_i16 : i16
      %274 = arith.remui %c-19420_i16, %c-19420_i16 : i16
      scf.yield
    }
    %alloc_23 = memref.alloc() : memref<1x10xi16>
    %91 = tensor.empty() : tensor<14x10xi16>
    %92 = linalg.matmul ins(%expanded, %alloc_23 : tensor<14x1xi16>, memref<1x10xi16>) outs(%91 : tensor<14x10xi16>) -> tensor<14x10xi16>
    %93 = vector.splat %c6 : vector<10x14xindex>
    %94 = tensor.empty() : tensor<1x10xi16>
    %95 = tensor.empty() : tensor<14x10xi16>
    %96 = linalg.matmul ins(%expanded, %94 : tensor<14x1xi16>, tensor<1x10xi16>) outs(%95 : tensor<14x10xi16>) -> tensor<14x10xi16>
    %97 = arith.remui %c2063_i16, %52 : i16
    %98 = vector.broadcast %c789278739_i32 : i32 to vector<14xi32>
    %99 = vector.broadcast %false : i1 to vector<14xi1>
    %100 = vector.gather %alloc_12[%c0, %c6] [%98], %99, %98 : memref<10x14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
    %101 = index.ceildivu %c15, %c13
    %102 = math.ipowi %3, %3 : tensor<12xi64>
    %103 = math.log10 %cst_1 : f16
    %104 = arith.maxui %c214280376_i64, %c214280376_i64 : i64
    %105 = index.ceildivu %101, %c13
    %106 = arith.minf %cst_2, %cst_1 : f16
    %107 = index.ceildivs %101, %c13
    memref.tensor_store %11, %alloc_14 : memref<14xi1>
    %108 = math.round %cst_2 : f16
    %109 = index.ceildivs %101, %c14
    %rank = tensor.rank %19 : tensor<14xi16>
    %110 = arith.remsi %c2055695765_i32, %c789278739_i32 : i32
    bufferization.dealloc_tensor %11 : tensor<14xi1>
    %111 = vector.load %alloc_14[%c2] : memref<14xi1>, vector<12xi1>
    %112 = index.maxu %45, %c13
    %113 = math.tan %cst_1 : f16
    %114 = math.log2 %cst_0 : f16
    %115 = math.cttz %80 : tensor<i16>
    %116 = memref.load %alloc_3[%c5] : memref<12xi16>
    %117 = scf.execute_region -> f16 {
      %258 = index.divs %c10, %c7
      %259 = index.maxs %c10, %62
      %260 = arith.shrsi %c558059930_i32, %c2039219675_i32 : i32
      %inserted_45 = tensor.insert %c795053815_i64 into %14[%c13] : tensor<14xi64>
      %261 = index.casts %c2039219675_i32 : i32 to index
      %collapsed_46 = tensor.collapse_shape %91 [[0, 1]] : tensor<14x10xi16> into tensor<140xi16>
      %262 = affine.apply affine_map<(d0, d1) -> (0)>(%259, %c0)
      %263 = memref.atomic_rmw assign %c2063_i16, %alloc_8[%c6] : (i16, memref<12xi16>) -> i16
      %264 = arith.cmpf ule, %cst_2, %cst_1 : f16
      %265 = memref.realloc %alloc_9 : memref<14xi16> to memref<10xi16>
      %alloc_47 = memref.alloc() : memref<10x10xi16>
      %266 = tensor.empty() : tensor<14x10xi16>
      %267 = linalg.matmul ins(%91, %alloc_47 : tensor<14x10xi16>, memref<10x10xi16>) outs(%266 : tensor<14x10xi16>) -> tensor<14x10xi16>
      %268 = math.round %cst_0 : f16
      %269 = vector.multi_reduction <minui>, %111, %111 [] : vector<12xi1> to vector<12xi1>
      scf.index_switch %109 
      case 1 {
        %273 = vector.splat %c2055695765_i32 : vector<12xi32>
        %274 = math.round %cst : f16
        %275 = math.ceil %cst_0 : f16
        %alloc_48 = memref.alloc() : memref<14xi64>
        memref.tensor_store %14, %alloc_48 : memref<14xi64>
        %collapsed_49 = tensor.collapse_shape %17 [[0, 1]] : tensor<12x10xi1> into tensor<120xi1>
        %276 = arith.cmpf oeq, %cst, %cst_1 : f16
        %277 = arith.remf %cst_22, %cst_22 : f32
        memref.tensor_store %7, %alloc_9 : memref<14xi16>
        %278 = math.atan2 %cst_22, %cst_22 : f32
        %279 = index.mul %c8, %261
        %splat = tensor.splat %52 : tensor<10x14xi16>
        %collapsed_50 = tensor.collapse_shape %91 [[0, 1]] : tensor<14x10xi16> into tensor<140xi16>
        %true_51 = index.bool.constant true
        %280 = math.log1p %cst : f16
        %281 = math.log1p %cst_0 : f16
        %collapsed_52 = tensor.collapse_shape %2 [[0, 1]] : tensor<12x10xi32> into tensor<120xi32>
        scf.yield
      }
      case 2 {
        vector.print %54 : vector<10x14xi1>
        %273 = math.ctpop %52 : i16
        %274 = index.maxs %261, %c0
        %275 = arith.addi %c2063_i16, %c2063_i16 : i16
        %276 = index.ceildivs %c14, %c14
        %277 = arith.divf %cst_1, %cst_1 : f16
        %278 = arith.addi %c558059930_i32, %c558059930_i32 : i32
        %279 = arith.maxui %c-19420_i16, %c-19420_i16 : i16
        %280 = arith.shli %c1814187417_i32, %c1814187417_i32 : i32
        %281 = index.ceildivu %109, %c13
        %282 = math.expm1 %cst_0 : f16
        %283 = math.log %cst_22 : f32
        %284 = math.atan2 %cst, %cst : f16
        %285 = tensor.empty() : tensor<12x14xi32>
        %286 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%285 : tensor<12x14xi32>) -> tensor<12x14xi32>
        %287 = math.exp %cst_1 : f16
        %288 = arith.maxsi %c2063_i16, %c2063_i16 : i16
        scf.yield
      }
      default {
        %273 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 2)>(%c13, %c0, %c12)
        memref.store %c2063_i16, %alloc_7[%c3, %c9] : memref<12x10xi16>
        %274 = arith.negf %cst_0 : f16
        %275 = math.atan %cst_2 : f16
        %276 = vector.load %alloc_18[%c0, %c3] : memref<10x12xi64>, vector<14xi64>
        %true_48 = index.bool.constant true
        %collapsed_49 = tensor.collapse_shape %2 [[0, 1]] : tensor<12x10xi32> into tensor<120xi32>
        %277 = arith.ceildivsi %c2055695765_i32, %c1814187417_i32 : i32
        %278 = math.atan2 %cst_22, %cst_22 : f32
        %279 = arith.cmpf ugt, %cst_1, %cst_0 : f16
        memref.tensor_store %6, %alloc_9 : memref<14xi16>
        %280 = math.fpowi %cst, %c1145379926_i32 : f16, i32
        %281 = index.add %c6, %75
        %282 = index.ceildivs %c15, %45
        %283 = index.divs %45, %62
        %c1_i16 = arith.constant 1 : i16
        %284 = vector.transfer_read %collapsed_46[%283], %c1_i16 : tensor<140xi16>, vector<i16>
      }
      %270 = vector.broadcast %c2063_i16 : i16 to vector<14xi16>
      %271 = vector.gather %alloc_9[%c2] [%98], %99, %270 : memref<14xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %272 = math.exp %cst_2 : f16
      scf.yield %cst_1 : f16
    }
    %from_elements = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22 : tensor<12xf32>
    %118 = arith.maxui %c2063_i16, %c2063_i16 : i16
    memref.store %c-19420_i16, %alloc_8[%c8] : memref<12xi16>
    memref.alloca_scope  {
      %258 = arith.andi %c789278739_i32, %c1814187417_i32 : i32
      %c10074_i16 = arith.constant 10074 : i16
      %259 = vector.broadcast %cst_22 : f32 to vector<14xf32>
      %260 = vector.fma %259, %259, %90 : vector<14xf32>
      %261 = arith.addi %c795053815_i64, %c795053815_i64 : i64
      %262 = index.sub %c6, %c7
      memref.alloca_scope  {
        %289 = index.mul %105, %107
        %290 = arith.remf %cst_1, %cst_2 : f16
        %alloc_48 = memref.alloc() : memref<10x10xi64>
        %291 = tensor.empty() : tensor<12x10xi64>
        %292 = linalg.matmul ins(%5, %alloc_48 : tensor<12x10xi64>, memref<10x10xi64>) outs(%291 : tensor<12x10xi64>) -> tensor<12x10xi64>
        %293 = arith.minsi %c558059930_i32, %c789278739_i32 : i32
        %294 = tensor.empty() : tensor<14xi64>
        %295 = math.exp %117 : f16
        %296 = vector.multi_reduction <add>, %89, %89 [] : vector<14xf32> to vector<14xf32>
        %297 = math.tan %cst_2 : f16
        %298 = arith.divsi %c1145379926_i32, %c1814187417_i32 : i32
        %299 = arith.remsi %c2039219675_i32, %c558059930_i32 : i32
        %300 = vector.multi_reduction <or>, %98, %c1814187417_i32 [0] : vector<14xi32> to i32
        %301 = arith.mulf %cst_0, %117 : f16
        %302 = tensor.empty() : tensor<10x10xi1>
        %303 = tensor.empty() : tensor<12x10xi1>
        %304 = linalg.matmul ins(%17, %302 : tensor<12x10xi1>, tensor<10x10xi1>) outs(%303 : tensor<12x10xi1>) -> tensor<12x10xi1>
        %305 = math.floor %cst_22 : f32
        %306 = arith.minsi %c2063_i16, %c-19420_i16 : i16
        bufferization.dealloc_tensor %19 : tensor<14xi16>
        %307 = affine.load %alloc_6[%c11, %c6] : memref<12x10xf32>
        %splat = tensor.splat %52 : tensor<12x10xi16>
        %308 = arith.xori %c2055695765_i32, %c1145379926_i32 : i32
        %309 = index.add %rank, %53
        %310 = math.cttz %291 : tensor<12x10xi64>
        %311 = math.atan %cst_2 : f16
        %312 = vector.multi_reduction <xor>, %40, %40 [] : vector<12xi1> to vector<12xi1>
        %313 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
        %314 = vector.fma %313, %313, %60 : vector<12x10xf32>
        memref.store %307, %alloc_16[%c4, %c5] : memref<10x14xf32>
        affine.store %52, %alloc_3[%c8] : memref<12xi16>
        %315 = math.absf %cst_22 : f32
        memref.assume_alignment %alloc_6, 2 : memref<12x10xf32>
        %316 = index.ceildivu %c2, %309
        %317 = index.maxu %62, %c3
        %318 = memref.atomic_rmw ori %c2063_i16, %alloc_7[%c7, %c2] : (i16, memref<12x10xi16>) -> i16
        %319 = math.expm1 %cst_0 : f16
      }
      %263 = arith.remsi %c1145379926_i32, %c1814187417_i32 : i32
      %264 = arith.shrsi %c1145379926_i32, %c1814187417_i32 : i32
      %265 = arith.remf %cst_0, %cst_1 : f16
      %266 = vector.broadcast %cst_22 : f32 to vector<10x14xf32>
      %267 = vector.fma %266, %266, %266 : vector<10x14xf32>
      %268 = arith.remui %c-19420_i16, %c2063_i16 : i16
      %269 = math.log1p %cst : f16
      %270 = math.exp %cst_2 : f16
      %271 = math.ctlz %13 : tensor<14xi64>
      affine.store %c795053815_i64, %alloc_5[%c8] : memref<12xi64>
      %272 = vector.broadcast %cst : f16 to vector<14xf16>
      %273 = vector.maskedload %alloc_17[%c1], %99, %272 : memref<12xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      %274 = vector.reduction <add>, %259 : vector<14xf32> into f32
      %275 = vector.insert %260, %267 [3] : vector<14xf32> into vector<10x14xf32>
      %276 = arith.divui %c789278739_i32, %c1814187417_i32 : i32
      %277 = math.atan %cst : f16
      %278 = arith.shrsi %c214280376_i64, %c795053815_i64 : i64
      %false_45 = arith.constant false
      %false_46 = arith.constant false
      %279 = vector.transfer_read %12[%c5], %false_46 : tensor<12xi1>, vector<i1>
      %280 = arith.remf %cst_2, %cst_1 : f16
      %281 = vector.splat %c558059930_i32 : vector<12xi32>
      %282 = affine.load %alloc_18[%c2, %c2] : memref<10x12xi64>
      %283 = arith.subi %c2039219675_i32, %c1814187417_i32 : i32
      %284 = bufferization.to_tensor %alloc_7 : memref<12x10xi16>
      %285 = index.divs %c7, %262
      %generated_47 = tensor.generate %c2 {
      ^bb0(%arg0: index):
        %289 = math.roundeven %cst_0 : f16
        %inserted_48 = tensor.insert %c2063_i16 into %7[%c2] : tensor<14xi16>
        %290 = math.ipowi %0, %5 : tensor<12x10xi64>
        %291 = memref.atomic_rmw muli %c-19420_i16, %alloc_8[%c7] : (i16, memref<12xi16>) -> i16
        tensor.yield %52 : i16
      } : tensor<?xi16>
      %286 = math.absf %from_elements : tensor<12xf32>
      %287 = math.round %cst_0 : f16
      %288 = arith.shrsi %52, %c-19420_i16 : i16
    }
    %119 = vector.load %alloc_8[%c2] : memref<12xi16>, vector<14xi16>
    scf.index_switch %109 
    case 1 {
      %258 = math.atan %117 : f16
      %259 = arith.xori %c-19420_i16, %c-19420_i16 : i16
      %260 = math.cos %cst : f16
      %261 = arith.floordivsi %false, %true : i1
      %262 = bufferization.to_tensor %alloc_18 : memref<10x12xi64>
      %263 = arith.shrui %c789278739_i32, %c2055695765_i32 : i32
      affine.store %c-19420_i16, %alloc_13[%c1, %c13] : memref<12x10xi16>
      %264 = arith.negf %cst_0 : f16
      %265 = vector.insertelement %false, %40[%c11 : index] : vector<12xi1>
      %266 = math.log2 %from_elements : tensor<12xf32>
      %267 = arith.remui %c795053815_i64, %c214280376_i64 : i64
      %268 = vector.create_mask %112, %c6 : vector<10x14xi1>
      %269 = tensor.empty() : tensor<12x10xf32>
      %270 = index.ceildivs %53, %107
      %271 = vector.insert %52, %33 [0] : i16 into vector<1xi16>
      %272 = math.round %cst_1 : f16
      scf.yield
    }
    case 2 {
      %258 = arith.addi %c1145379926_i32, %c789278739_i32 : i32
      scf.index_switch %105 
      case 1 {
        %274 = index.maxu %c2, %c8
        %275 = arith.remui %c2039219675_i32, %c2039219675_i32 : i32
        %276 = math.ctlz %6 : tensor<14xi16>
        %277 = math.cttz %7 : tensor<14xi16>
        %278 = memref.load %alloc_8[%c4] : memref<12xi16>
        %splat = tensor.splat %false : tensor<12x10xi1>
        %true_45 = index.bool.constant true
        %alloc_46 = memref.alloc() : memref<10x12xi16>
        %279 = tensor.empty() : tensor<14x12xi16>
        %280 = linalg.matmul ins(%91, %alloc_46 : tensor<14x10xi16>, memref<10x12xi16>) outs(%279 : tensor<14x12xi16>) -> tensor<14x12xi16>
        %281 = arith.xori %c214280376_i64, %c795053815_i64 : i64
        %282 = vector.create_mask %274, %c10 : vector<12x10xi1>
        %283 = vector.load %alloc_18[%c6, %c5] : memref<10x12xi64>, vector<12xi64>
        %284 = tensor.empty(%274) : tensor<12x?xi1>
        %285 = index.ceildivu %c10, %c0
        %286 = vector.broadcast %true_45 : i1 to vector<10xi1>
        %dest_47, %accumulated_value_48 = vector.scan <or>, %282, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<12x10xi1>, vector<10xi1>
        %287 = arith.shrui %c214280376_i64, %c214280376_i64 : i64
        %288 = bufferization.clone %alloc_4 : memref<12xi16> to memref<12xi16>
        scf.yield
      }
      case 2 {
        %splat = tensor.splat %cst : tensor<12xf16>
        %274 = vector.create_mask %c8, %c10 : vector<12x10xi1>
        %275 = arith.addf %cst, %cst : f16
        %alloc_45 = memref.alloc() : memref<10x14xf16>
        %276 = vector.broadcast %cst_2 : f16 to vector<12x10xf16>
        %277 = vector.broadcast %c1814187417_i32 : i32 to vector<12x10xi32>
        %278 = vector.gather %alloc_45[%109, %28] [%277], %274, %276 : memref<10x14xf16>, vector<12x10xi32>, vector<12x10xi1>, vector<12x10xf16> into vector<12x10xf16>
        %279 = arith.xori %false, %true : i1
        %280 = arith.remui %c795053815_i64, %c795053815_i64 : i64
        %281 = index.maxu %53, %53
        %282 = index.maxu %69, %c7
        %283 = index.maxs %c3, %c13
        %284 = vector.create_mask %c10, %283 : vector<12x10xi1>
        %285 = arith.minsi %c2055695765_i32, %c2055695765_i32 : i32
        %expanded_46 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<12x10xi1> into tensor<12x10x1xi1>
        %286 = index.add %c13, %281
        %287 = vector.bitcast %60 : vector<12x10xf32> to vector<12x10xf32>
        %288 = math.round %cst_22 : f32
        %289 = arith.ceildivsi %52, %52 : i16
        scf.yield
      }
      case 3 {
        %274 = vector.broadcast %cst_2 : f16 to vector<12x10xf16>
        %275 = vector.multi_reduction <and>, %33, %33 [] : vector<1xi16> to vector<1xi16>
        %276 = math.atan %cst_0 : f16
        %expanded_45 = tensor.expand_shape %12 [[0, 1]] : tensor<12xi1> into tensor<12x1xi1>
        %splat = tensor.splat %cst_2 : tensor<14xf16>
        %collapsed_46 = tensor.collapse_shape %87 [[0, 1]] : tensor<12x14xi32> into tensor<168xi32>
        %277 = arith.ori %c2063_i16, %c2063_i16 : i16
        %278 = vector.load %alloc_9[%c8] : memref<14xi16>, vector<12xi16>
        %279 = math.ctlz %0 : tensor<12x10xi64>
        %280 = math.log1p %splat : tensor<14xf16>
        %281 = affine.apply affine_map<(d0) -> (0)>(%101)
        %282 = index.divs %c12, %c14
        %cst_47 = arith.constant 1.6941952E+9 : f32
        %283 = index.maxu %c2, %c4
        %284 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c9, %c11, %76)
        %285 = vector.multi_reduction <or>, %119, %c2063_i16 [0] : vector<14xi16> to i16
        scf.yield
      }
      case 4 {
        %alloc_45 = memref.alloc() : memref<1x12xi16>
        %274 = tensor.empty() : tensor<14x12xi16>
        %275 = linalg.matmul ins(%expanded, %alloc_45 : tensor<14x1xi16>, memref<1x12xi16>) outs(%274 : tensor<14x12xi16>) -> tensor<14x12xi16>
        %276 = math.fpowi %cst_22, %c2039219675_i32 : f32, i32
        %277 = index.ceildivs %c11, %c10
        %from_elements_46 = tensor.from_elements %c2063_i16, %c2063_i16, %c2063_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %52 : tensor<14xi16>
        %278 = arith.subi %c-19420_i16, %52 : i16
        %279 = vector.create_mask %c8 : vector<12xi1>
        %280 = math.cttz %7 : tensor<14xi16>
        %281 = vector.broadcast %c-19420_i16 : i16 to vector<10xi16>
        %282 = vector.broadcast %false : i1 to vector<10xi1>
        %283 = vector.maskedload %alloc_9[%c4], %282, %281 : memref<14xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %inserted_47 = tensor.insert %c558059930_i32 into %9[%c0, %c11] : tensor<10x14xi32>
        %284 = arith.shrsi %c1814187417_i32, %c2055695765_i32 : i32
        %285 = arith.floordivsi %c2055695765_i32, %c1145379926_i32 : i32
        %false_48 = index.bool.constant false
        %from_elements_49 = tensor.from_elements %c789278739_i32, %c2055695765_i32, %c2039219675_i32, %c789278739_i32, %c789278739_i32, %c1145379926_i32, %c789278739_i32, %c558059930_i32, %c2055695765_i32, %c789278739_i32, %c558059930_i32, %c1145379926_i32 : tensor<12xi32>
        %286 = index.maxs %c13, %28
        memref.assume_alignment %alloc_5, 16 : memref<12xi64>
        %287 = memref.load %alloc_10[%c8, %c1] : memref<10x14xf32>
        scf.yield
      }
      default {
        %274 = math.copysign %cst_1, %cst_1 : f16
        %275 = math.log %cst_1 : f16
        %276 = index.floordivs %c8, %rank
        %277 = memref.load %alloc_11[%c2] : memref<12xi32>
        memref.store %c-19420_i16, %alloc[%c0, %c12] : memref<10x14xi16>
        %278 = affine.load %alloc_11[%c0] : memref<12xi32>
        %279 = affine.load %alloc_14[%c4] : memref<14xi1>
        %280 = math.atan2 %117, %cst_0 : f16
        %281 = arith.addi %c-19420_i16, %c2063_i16 : i16
        %282 = math.atan %cst : f16
        %283 = vector.broadcast %false : i1 to vector<12x10xi1>
        %284 = index.sizeof
        memref.store %c214280376_i64, %alloc_18[%c5, %c0] : memref<10x12xi64>
        %inserted_45 = tensor.insert %true into %16[%c11, %c8] : tensor<12x10xi1>
        %285 = arith.minsi %c795053815_i64, %c795053815_i64 : i64
        %286 = vector.splat %cst_22 : vector<14xf32>
      }
      %259 = arith.mulf %cst_2, %cst : f16
      %260 = arith.divf %cst_0, %cst_1 : f16
      %261 = scf.execute_region -> i1 {
        %274 = math.cttz %c2039219675_i32 : i32
        %from_elements_45 = tensor.from_elements %c2063_i16, %52, %52, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %52, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %52, %c-19420_i16, %52, %52, %c-19420_i16, %52, %52, %52, %52, %52, %52, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %52, %52, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %52, %52, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %52, %52, %52, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %52, %c2063_i16, %c2063_i16, %c2063_i16 : tensor<12x10xi16>
        %275 = math.log %cst_2 : f16
        %276 = math.expm1 %117 : f16
        %277 = memref.load %alloc_17[%c11] : memref<12xf16>
        %278 = vector.load %alloc_4[%c9] : memref<12xi16>, vector<12xi16>
        %279 = tensor.empty() : tensor<12x14xi32>
        %280 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%279 : tensor<12x14xi32>) -> tensor<12x14xi32>
        %281 = math.ipowi %91, %95 : tensor<14x10xi16>
        %inserted_46 = tensor.insert %c789278739_i32 into %expanded_21[%c5, %c0] : tensor<12x1xi32>
        %282 = vector.insert %c2055695765_i32, %98 [1] : i32 into vector<14xi32>
        %283 = math.cttz %12 : tensor<12xi1>
        %284 = math.tan %cst_22 : f32
        %285 = arith.remf %cst_22, %cst_22 : f32
        %286 = vector.broadcast %c214280376_i64 : i64 to vector<10xi64>
        %287 = vector.broadcast %true : i1 to vector<10xi1>
        %288 = vector.maskedload %alloc_18[%c8, %c4], %287, %286 : memref<10x12xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %289 = math.rsqrt %cst_2 : f16
        %290 = vector.shuffle %99, %287 [0, 2, 4, 6, 8, 10, 11, 14, 15, 20, 22, 23] : vector<14xi1>, vector<10xi1>
        scf.yield %false : i1
      }
      %262 = vector.matrix_multiply %119, %33 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<1xi16>) -> vector<14xi16>
      %263 = arith.xori %c-19420_i16, %c-19420_i16 : i16
      %264 = math.ctlz %10 : tensor<14xi1>
      %265 = index.ceildivu %75, %c10
      %266 = math.atan %cst_1 : f16
      %267 = index.sub %265, %c9
      %268 = index.maxu %c15, %109
      %269 = index.divs %105, %c9
      %270 = vector.broadcast %cst_22 : f32 to vector<14xf32>
      %271 = vector.fma %270, %270, %270 : vector<14xf32>
      %272 = math.expm1 %cst : f16
      %273 = math.ctlz %7 : tensor<14xi16>
      scf.yield
    }
    default {
      %258 = arith.divsi %c1145379926_i32, %c789278739_i32 : i32
      %259 = arith.mulf %cst_0, %cst : f16
      %260 = math.atan2 %cst_1, %cst_0 : f16
      %expanded_45 = tensor.expand_shape %1 [[0, 1]] : tensor<14xi64> into tensor<14x1xi64>
      %261 = math.round %from_elements : tensor<12xf32>
      %262 = vector.reduction <maxui>, %33 : vector<1xi16> into i16
      %263 = vector.broadcast %cst_22 : f32 to vector<12xf32>
      %264 = vector.fma %263, %263, %263 : vector<12xf32>
      %265 = arith.subi %c558059930_i32, %c1814187417_i32 : i32
      %266 = index.maxu %c12, %112
      %true_46 = index.bool.constant true
      %from_elements_47 = tensor.from_elements %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %52, %52, %c2063_i16, %c-19420_i16, %52, %c-19420_i16, %52, %52, %52, %c-19420_i16, %52, %52, %c-19420_i16, %c-19420_i16, %52, %52, %c2063_i16, %52, %c2063_i16, %52, %c2063_i16, %52, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %52, %52, %c-19420_i16, %52, %52, %c2063_i16, %52, %52, %c-19420_i16, %c-19420_i16, %52, %52, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %52, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %52, %c2063_i16, %52, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %52, %52, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %52, %c2063_i16, %52, %c2063_i16, %c2063_i16, %52, %c-19420_i16, %52, %52, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %c2063_i16, %52, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %52, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %52 : tensor<10x14xi16>
      %267 = arith.ceildivsi %c1145379926_i32, %c2039219675_i32 : i32
      %268 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 2)>(%c5, %45, %c5)
      %269 = arith.shrui %false, %false : i1
      %collapsed_48 = tensor.collapse_shape %expanded_20 [[0, 1], [2]] : tensor<12x10x1xi1> into tensor<120x1xi1>
      affine.for %arg0 = 0 to 92 {
      }
    }
    %120 = arith.ceildivsi %c789278739_i32, %c558059930_i32 : i32
    %121 = memref.alloca_scope  -> (memref<10x14xf16>) {
      %258 = vector.broadcast %62 : index to vector<12xindex>
      %259 = vector.broadcast %c795053815_i64 : i64 to vector<12xi64>
      vector.scatter %42[%c2, %c0] [%258], %111, %259 : memref<10x12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
      %260 = index.casts %69 : index to i32
      %261 = affine.apply affine_map<(d0) -> (d0 mod 16)>(%c1)
      %c1884155988_i32 = arith.constant 1884155988 : i32
      bufferization.dealloc_tensor %2 : tensor<12x10xi32>
      %262 = arith.negf %117 : f16
      %263 = math.log1p %cst_0 : f16
      %264 = math.copysign %117, %cst_0 : f16
      %265 = tensor.empty() : tensor<12x14xi32>
      %266 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%265 : tensor<12x14xi32>) -> tensor<12x14xi32>
      %267 = arith.negf %cst : f16
      %alloc_45 = memref.alloc() : memref<i16>
      memref.copy %alloc_19, %alloc_45 : memref<i16> to memref<i16>
      %268 = arith.andi %c1145379926_i32, %c1814187417_i32 : i32
      %alloc_46 = memref.alloc() : memref<12x10xi1>
      memref.tensor_store %15, %alloc_46 : memref<12x10xi1>
      %269 = index.maxu %107, %c1
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_20 : tensor<12x10x1xi1>) {
      ^bb0(%out: i1):
        %283 = math.fpowi %cst_22, %c1145379926_i32 : f32, i32
        %284 = math.round %cst_22 : f32
        vector.print %54 : vector<10x14xi1>
        %285 = memref.load %alloc_17[%c3] : memref<12xf16>
        %286 = math.ipowi %10, %10 : tensor<14xi1>
        %287 = vector.insert %c2039219675_i32, %98 [9] : i32 into vector<14xi32>
        %288 = arith.subi %true, %out : i1
        %289 = arith.remui %c789278739_i32, %c2039219675_i32 : i32
        %290 = math.atan %117 : f16
        %291 = affine.load %alloc_18[%c1, %c14] : memref<10x12xi64>
        %292 = arith.addi %291, %c214280376_i64 : i64
        %293 = vector.insert %false, %40 [1] : i1 into vector<12xi1>
        %inserted_52 = tensor.insert %c2063_i16 into %19[%c4] : tensor<14xi16>
        %294 = arith.maxui %c214280376_i64, %c214280376_i64 : i64
        %295 = arith.minsi %c789278739_i32, %c558059930_i32 : i32
        %296 = math.round %cst_1 : f16
        %297 = math.expm1 %cst_0 : f16
        %298 = math.roundeven %cst_0 : f16
        %299 = memref.load %alloc_8[%c3] : memref<12xi16>
        %300 = index.sub %c12, %c14
        %301 = arith.negf %cst_2 : f16
        %302 = arith.remf %cst_22, %cst_22 : f32
        %303 = arith.subi %c795053815_i64, %291 : i64
        %304 = arith.shli %c1814187417_i32, %c1145379926_i32 : i32
        %305 = math.ctpop %12 : tensor<12xi1>
        %306 = vector.reduction <maxsi>, %18 : vector<12xi16> into i16
        %307 = vector.shuffle %40, %111 [0, 1, 2, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 19, 21, 22, 23] : vector<12xi1>, vector<12xi1>
        %308 = arith.ori %c558059930_i32, %c2039219675_i32 : i32
        %309 = index.maxu %75, %c10
        %310 = index.maxs %c9, %c6
        %inserted_53 = tensor.insert %true into %16[%c9, %c1] : tensor<12x10xi1>
        %311 = arith.floordivsi %c558059930_i32, %c558059930_i32 : i32
        linalg.yield %true : i1
      } -> tensor<12x10x1xi1>
      memref.tensor_store %7, %alloc_9 : memref<14xi16>
      %271 = arith.ceildivsi %c2039219675_i32, %c1145379926_i32 : i32
      %272 = index.divs %269, %c0
      %inserted_47 = tensor.insert %c795053815_i64 into %14[%c12] : tensor<14xi64>
      %273 = vector.create_mask %28, %rank : vector<10x14xi1>
      %274 = arith.cmpi ne, %c1814187417_i32, %c2039219675_i32 : i32
      %from_elements_48 = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22 : tensor<10x14xf32>
      %275 = arith.addf %cst_2, %cst_1 : f16
      %alloc_49 = memref.alloc() : memref<12xf32>
      memref.tensor_store %from_elements, %alloc_49 : memref<12xf32>
      %276 = vector.shuffle %100, %98 [2, 4, 8, 9, 10, 11, 12, 13, 15, 17, 21, 22, 23, 24, 27] : vector<14xi32>, vector<14xi32>
      %277 = index.maxu %c12, %112
      %278 = scf.index_switch %69 -> vector<10x14xi16> 
      case 1 {
        %283 = arith.divsi %c789278739_i32, %c1145379926_i32 : i32
        %284 = math.ctlz %16 : tensor<12x10xi1>
        %285 = arith.maxsi %c795053815_i64, %c795053815_i64 : i64
        %286 = vector.load %alloc[%c1, %c2] : memref<10x14xi16>, vector<12x10xi16>
        %287 = tensor.empty() : tensor<14xf16>
        %288 = vector.broadcast %117 : f16 to vector<12x10xf16>
        %289 = vector.broadcast %false : i1 to vector<12x10xi1>
        %290 = vector.broadcast %c1145379926_i32 : i32 to vector<12x10xi32>
        %291 = vector.gather %287[%109] [%290], %289, %288 : tensor<14xf16>, vector<12x10xi32>, vector<12x10xi1>, vector<12x10xf16> into vector<12x10xf16>
        %false_52 = index.bool.constant false
        %292 = math.round %cst : f16
        %293 = arith.andi %c2039219675_i32, %c1814187417_i32 : i32
        %294 = index.mul %c7, %76
        %295 = math.copysign %287, %287 : tensor<14xf16>
        %296 = math.round %cst_1 : f16
        %297 = arith.subi %c789278739_i32, %c789278739_i32 : i32
        %298 = index.ceildivs %277, %rank
        %299 = vector.broadcast %cst : f16 to vector<10x14xf16>
        %300 = math.log %287 : tensor<14xf16>
        %301 = arith.minui %c1814187417_i32, %c1145379926_i32 : i32
        %302 = vector.broadcast %c-19420_i16 : i16 to vector<10x14xi16>
        scf.yield %302 : vector<10x14xi16>
      }
      case 2 {
        %283 = index.divs %c8, %261
        %284 = vector.extract %18[11] : vector<12xi16>
        %285 = index.sizeof
        %286 = math.atan %cst_2 : f16
        %287 = math.exp %cst_22 : f32
        %288 = index.maxs %269, %62
        %289 = arith.subi %c558059930_i32, %c558059930_i32 : i32
        %c1_i64 = arith.constant 1 : i64
        %290 = vector.transfer_read %3[%62], %c1_i64 : tensor<12xi64>, vector<i64>
        %291 = arith.ceildivsi %c2063_i16, %52 : i16
        %292 = vector.create_mask %c4, %69 : vector<10x14xi1>
        %293 = math.atan %cst : f16
        %294 = index.maxu %c2, %107
        %295 = math.ctlz %0 : tensor<12x10xi64>
        %296 = index.mul %76, %rank
        %297 = vector.splat %cst_0 : vector<12xf16>
        %298 = arith.remf %cst_2, %cst_1 : f16
        %299 = vector.broadcast %c2063_i16 : i16 to vector<10x14xi16>
        scf.yield %299 : vector<10x14xi16>
      }
      default {
        %283 = math.log1p %cst_2 : f16
        %284 = arith.shrui %52, %52 : i16
        %285 = arith.maxui %c558059930_i32, %c1145379926_i32 : i32
        %286 = math.exp %from_elements_48 : tensor<10x14xf32>
        %287 = vector.create_mask %c3 : vector<12xi1>
        %288 = arith.remf %cst_1, %cst : f16
        %289 = math.tan %cst : f16
        %290 = math.ctlz %8 : tensor<12xi32>
        %291 = math.absf %from_elements_48 : tensor<10x14xf32>
        %292 = arith.remf %cst, %cst : f16
        %false_52 = index.bool.constant false
        %293 = index.ceildivs %109, %c7
        %extracted_53 = tensor.extract %10[%c11] : tensor<14xi1>
        %294 = math.atan %cst_22 : f32
        %295 = vector.broadcast %false : i1 to vector<10xi1>
        %296 = vector.maskedload %alloc_14[%c12], %295, %295 : memref<14xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %297 = memref.load %alloc_16[%c7, %c6] : memref<10x14xf32>
        %298 = vector.broadcast %c2063_i16 : i16 to vector<10x14xi16>
        scf.yield %298 : vector<10x14xi16>
      }
      %279 = tensor.empty(%c1) : tensor<12x?xi1>
      %alloc_50 = memref.alloc() : memref<12x10xi32>
      memref.tensor_store %2, %alloc_50 : memref<12x10xi32>
      %280 = arith.remsi %c1814187417_i32, %c1814187417_i32 : i32
      %281 = math.roundeven %from_elements_48 : tensor<10x14xf32>
      %282 = math.round %from_elements_48 : tensor<10x14xf32>
      %alloc_51 = memref.alloc() : memref<10x14xf16>
      memref.alloca_scope.return %alloc_51 : memref<10x14xf16>
    }
    %alloc_24 = memref.alloc() : memref<14x10xi32>
    %122 = tensor.empty() : tensor<10x10xi32>
    %123 = linalg.matmul ins(%9, %alloc_24 : tensor<10x14xi32>, memref<14x10xi32>) outs(%122 : tensor<10x10xi32>) -> tensor<10x10xi32>
    %124 = vector.matrix_multiply %33, %119 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xi16>, vector<14xi16>) -> vector<14xi16>
    %alloc_25 = memref.alloc() : memref<10x10xi64>
    %125 = tensor.empty() : tensor<12x10xi64>
    %126 = linalg.matmul ins(%0, %alloc_25 : tensor<12x10xi64>, memref<10x10xi64>) outs(%125 : tensor<12x10xi64>) -> tensor<12x10xi64>
    vector.print %18 : vector<12xi16>
    memref.alloca_scope  {
      %258 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 - 32 + 128)>(%109, %75, %62)
      %extracted_45 = tensor.extract %11[%c0] : tensor<14xi1>
      %259 = scf.execute_region -> memref<12x10xf16> {
        %285 = memref.load %alloc_16[%c4, %c11] : memref<10x14xf32>
        %286 = arith.andi %c795053815_i64, %c214280376_i64 : i64
        %extracted_51 = tensor.extract %from_elements[%c2] : tensor<12xf32>
        %287 = arith.negf %cst_22 : f32
        %288 = math.atan2 %from_elements, %from_elements : tensor<12xf32>
        %289 = arith.remf %cst_22, %cst_22 : f32
        %collapsed_52 = tensor.collapse_shape %expanded [[0, 1]] : tensor<14x1xi16> into tensor<14xi16>
        %290 = math.cttz %15 : tensor<12x10xi1>
        %291 = math.exp %cst_2 : f16
        %292 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 64 - d0 floordiv 8)>(%28, %107, %45)
        %293 = arith.shrsi %c214280376_i64, %c214280376_i64 : i64
        %294 = math.absf %cst : f16
        %295 = vector.shuffle %90, %90 [0, 1, 3, 5, 8, 9, 12, 14, 17, 19, 22, 23, 26] : vector<14xf32>, vector<14xf32>
        %296 = math.tan %cst_22 : f32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_53 = arith.constant 0 : i16
        %297 = vector.transfer_read %7[%rank], %c0_i16_53 : tensor<14xi16>, vector<i16>
        %298 = math.exp %extracted_51 : f32
        %alloc_54 = memref.alloc() : memref<12x10xf16>
        scf.yield %alloc_54 : memref<12x10xf16>
      }
      %generated_46 = tensor.generate %105, %c4 {
      ^bb0(%arg0: index, %arg1: index):
        %inserted_51 = tensor.insert %c214280376_i64 into %13[%c12] : tensor<14xi64>
        %285 = memref.load %alloc_6[%c1, %c3] : memref<12x10xf32>
        %286 = vector.broadcast %true : i1 to vector<10xi1>
        %dest_52, %accumulated_value_53 = vector.scan <and>, %54, %286 {inclusive = true, reduction_dim = 1 : i64} : vector<10x14xi1>, vector<10xi1>
        %287 = vector.multi_reduction <minsi>, %33, %c2063_i16 [0] : vector<1xi16> to i16
        tensor.yield %cst_22 : f32
      } : tensor<?x?xf32>
      %260 = arith.floordivsi %c-19420_i16, %c-19420_i16 : i16
      %261 = bufferization.clone %alloc_9 : memref<14xi16> to memref<14xi16>
      %262 = math.log %117 : f16
      %263 = arith.addi %c558059930_i32, %c2055695765_i32 : i32
      %264 = tensor.empty() : tensor<12x1xi1>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264 : tensor<12x1xi1>) outs(%expanded_20 : tensor<12x10x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        memref.copy %alloc_4, %alloc_8 : memref<12xi16> to memref<12xi16>
        %285 = tensor.empty() : tensor<10x14xi1>
        %286 = math.fpowi %cst_22, %c558059930_i32 : f32, i32
        %287 = math.exp %117 : f16
        %288 = vector.multi_reduction <add>, %100, %98 [] : vector<14xi32> to vector<14xi32>
        %289 = vector.create_mask %107 : vector<14xi1>
        %290 = math.ctlz %false : i1
        %291 = index.maxu %109, %75
        %292 = vector.extract_strided_slice %54 {offsets = [6], sizes = [4], strides = [1]} : vector<10x14xi1> to vector<4x14xi1>
        %293 = vector.splat %105 : vector<12x10xindex>
        %294 = arith.negf %cst_0 : f16
        %295 = math.roundeven %cst_22 : f32
        %296 = vector.splat %c795053815_i64 : vector<14xi64>
        %297 = arith.shrsi %c1145379926_i32, %c2039219675_i32 : i32
        %298 = index.add %c13, %258
        %299 = index.sizeof
        %300 = index.sub %c3, %105
        memref.copy %alloc_7, %alloc_13 : memref<12x10xi16> to memref<12x10xi16>
        %alloc_51 = memref.alloc() : memref<12xf16>
        memref.copy %alloc_17, %alloc_51 : memref<12xf16> to memref<12xf16>
        %301 = arith.remui %c214280376_i64, %c795053815_i64 : i64
        %302 = math.atan %cst_0 : f16
        %collapsed_52 = tensor.collapse_shape %9 [[0, 1]] : tensor<10x14xi32> into tensor<140xi32>
        %303 = tensor.empty() : tensor<14x14xi32>
        %304 = tensor.empty() : tensor<10x14xi32>
        %305 = linalg.matmul ins(%9, %303 : tensor<10x14xi32>, tensor<14x14xi32>) outs(%304 : tensor<10x14xi32>) -> tensor<10x14xi32>
        %306 = math.ctlz %5 : tensor<12x10xi64>
        %307 = math.ctlz %14 : tensor<14xi64>
        %308 = vector.splat %69 : vector<12x10xindex>
        %309 = affine.load %alloc_19[] : memref<i16>
        %310 = math.expm1 %cst_2 : f16
        bufferization.dealloc_tensor %3 : tensor<12xi64>
        %311 = bufferization.clone %alloc_9 : memref<14xi16> to memref<14xi16>
        %312 = math.atan %cst : f16
        %313 = index.ceildivs %62, %c8
        linalg.yield %true : i1
      } -> tensor<12x10x1xi1>
      %266 = arith.addi %c2063_i16, %c-19420_i16 : i16
      %generated_47 = tensor.generate %c4 {
      ^bb0(%arg0: index):
        %285 = index.mul %arg0, %c8
        %c1_i64 = arith.constant 1 : i64
        %286 = vector.transfer_read %14[%285], %c1_i64 : tensor<14xi64>, vector<i64>
        %287 = math.exp %cst_0 : f16
        %288 = arith.minsi %true, %true : i1
        tensor.yield %cst_22 : f32
      } : tensor<?xf32>
      %267 = vector.multi_reduction <maxui>, %18, %c2063_i16 [0] : vector<12xi16> to i16
      %268 = vector.broadcast %c-19420_i16 : i16 to vector<14x14xi16>
      %269 = vector.outerproduct %119, %119, %268 {kind = #vector.kind<or>} : vector<14xi16>, vector<14xi16>
      %270 = math.absf %cst : f16
      %271 = scf.index_switch %45 -> memref<14xi64> 
      case 1 {
        %285 = math.cttz %8 : tensor<12xi32>
        %286 = arith.floordivsi %c1145379926_i32, %c1145379926_i32 : i32
        %287 = arith.subi %c1145379926_i32, %c1814187417_i32 : i32
        %288 = arith.xori %extracted_45, %true : i1
        %289 = arith.ceildivsi %c558059930_i32, %c2039219675_i32 : i32
        %290 = math.tan %from_elements : tensor<12xf32>
        %291 = vector.broadcast %76 : index to vector<10xindex>
        %292 = vector.broadcast %false : i1 to vector<10xi1>
        %293 = vector.broadcast %267 : i16 to vector<10xi16>
        vector.scatter %alloc_3[%c7] [%291], %292, %293 : memref<12xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %294 = math.absf %cst_22 : f32
        %295 = memref.load %alloc_11[%c5] : memref<12xi32>
        %296 = math.fpowi %cst_0, %c1145379926_i32 : f16, i32
        %297 = arith.addf %cst_22, %cst_22 : f32
        %298 = vector.create_mask %c1 : vector<12xi1>
        %299 = math.ceil %cst_2 : f16
        %300 = math.atan2 %from_elements, %from_elements : tensor<12xf32>
        %301 = memref.atomic_rmw assign %cst_22, %alloc_15[%c3] : (f32, memref<14xf32>) -> f32
        %302 = math.log2 %cst_1 : f16
        %alloc_51 = memref.alloc() : memref<14xi64>
        scf.yield %alloc_51 : memref<14xi64>
      }
      default {
        %285 = arith.cmpf ueq, %cst_22, %cst_22 : f32
        %alloc_51 = memref.alloc() : memref<12x10xi64>
        memref.tensor_store %5, %alloc_51 : memref<12x10xi64>
        %286 = vector.broadcast %cst_22 : f32 to vector<10xf32>
        %287 = vector.broadcast %false : i1 to vector<10xi1>
        %288 = vector.maskedload %alloc_15[%c3], %287, %286 : memref<14xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %289 = index.mul %62, %101
        %290 = arith.shrsi %c2063_i16, %267 : i16
        %291 = index.divu %rank, %c4
        %splat_52 = tensor.splat %c2039219675_i32 : tensor<10x14xi32>
        %292 = vector.maskedload %alloc_8[%c9], %99, %124 : memref<12xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %collapsed_53 = tensor.collapse_shape %expanded_21 [[0, 1]] : tensor<12x1xi32> into tensor<12xi32>
        %293 = index.ceildivs %c7, %75
        %294 = arith.divsi %c789278739_i32, %c2039219675_i32 : i32
        %295 = vector.multi_reduction <and>, %111, %40 [] : vector<12xi1> to vector<12xi1>
        %296 = arith.cmpi ne, %c2063_i16, %c-19420_i16 : i16
        %297 = math.exp %cst_2 : f16
        %298 = memref.realloc %alloc_11 : memref<12xi32> to memref<12xi32>
        %299 = memref.load %alloc_4[%c1] : memref<12xi16>
        %alloc_54 = memref.alloc() : memref<14xi64>
        scf.yield %alloc_54 : memref<14xi64>
      }
      %272 = vector.broadcast %101 : index to vector<14xindex>
      vector.scatter %alloc_10[%c8, %c4] [%272], %99, %90 : memref<10x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %273 = arith.negf %cst_1 : f16
      %274 = math.round %cst_2 : f16
      %generated_48 = tensor.generate %107, %c5 {
      ^bb0(%arg0: index, %arg1: index):
        %285 = tensor.empty() : tensor<14x10xi32>
        %286 = tensor.empty() : tensor<10x10xi32>
        %287 = linalg.matmul ins(%9, %285 : tensor<10x14xi32>, tensor<14x10xi32>) outs(%286 : tensor<10x10xi32>) -> tensor<10x10xi32>
        %288 = index.ceildivs %c1, %c15
        %289 = index.maxu %c9, %28
        %290 = arith.remf %cst_22, %cst_22 : f32
        tensor.yield %cst_22 : f32
      } : tensor<?x?xf32>
      %275 = math.rsqrt %cst : f16
      %276 = math.tan %cst_22 : f32
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<12xi1>) outs(%expanded_20 : tensor<12x10x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %285 = index.ceildivu %76, %53
        %alloc_51 = memref.alloc() : memref<12x10xi64>
        memref.tensor_store %0, %alloc_51 : memref<12x10xi64>
        %from_elements_52 = tensor.from_elements %true, %false, %out, %in, %true, %false, %out, %in, %true, %false, %true, %out, %true, %false, %extracted_45, %extracted_45, %true, %false, %out, %in, %out, %false, %false, %extracted_45, %in, %false, %extracted_45, %true, %in, %false, %extracted_45, %false, %in, %false, %extracted_45, %extracted_45, %true, %extracted_45, %false, %extracted_45, %in, %false, %out, %extracted_45, %in, %extracted_45, %in, %false, %true, %out, %true, %true, %out, %out, %false, %true, %false, %extracted_45, %in, %true, %in, %true, %extracted_45, %false, %true, %true, %true, %true, %false, %out, %true, %true, %out, %true, %false, %in, %false, %extracted_45, %true, %false, %in, %true, %out, %extracted_45, %out, %extracted_45, %out, %extracted_45, %out, %in, %extracted_45, %extracted_45, %extracted_45, %false, %in, %false, %extracted_45, %false, %in, %extracted_45, %out, %out, %extracted_45, %true, %in, %in, %true, %true, %in, %extracted_45, %true, %in, %false, %true, %in, %out, %true, %false, %true, %in : tensor<12x10xi1>
        %286 = arith.mulf %117, %cst_1 : f16
        %287 = index.castu %c1145379926_i32 : i32 to index
        %false_53 = index.bool.constant false
        %288 = arith.andi %c214280376_i64, %c214280376_i64 : i64
        %289 = vector.transpose %111, [0] : vector<12xi1> to vector<12xi1>
        %290 = vector.create_mask %c15, %c3 : vector<10x14xi1>
        %291 = vector.create_mask %75 : vector<12xi1>
        %292 = math.cos %cst_22 : f32
        %293 = affine.apply affine_map<(d0, d1) -> (0)>(%75, %c4)
        %294 = index.ceildivs %112, %45
        %295 = index.ceildivu %69, %c8
        %296 = arith.maxui %c1145379926_i32, %c558059930_i32 : i32
        %297 = math.log %cst_2 : f16
        %298 = vector.broadcast %cst_22 : f32 to vector<10x14xf32>
        %299 = vector.fma %298, %298, %298 : vector<10x14xf32>
        %300 = math.atan %cst_1 : f16
        %301 = arith.cmpf une, %117, %117 : f16
        %302 = arith.xori %c789278739_i32, %c558059930_i32 : i32
        %inserted_54 = tensor.insert %false into %10[%c12] : tensor<14xi1>
        %303 = vector.splat %cst_2 : vector<14xf16>
        %304 = memref.atomic_rmw andi %267, %alloc_19[] : (i16, memref<i16>) -> i16
        %305 = index.ceildivu %285, %287
        %306 = tensor.empty() : tensor<14xi32>
        %307 = vector.gather %306[%75] [%100], %99, %98 : tensor<14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %308 = math.ceil %cst_2 : f16
        %expanded_55 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<12x10xi1> into tensor<12x10x1xi1>
        %alloc_56 = memref.alloc() : memref<12xi1>
        memref.tensor_store %12, %alloc_56 : memref<12xi1>
        %309 = affine.apply affine_map<(d0) -> (0)>(%28)
        %310 = vector.extract %18[1] : vector<12xi16>
        %311 = index.sizeof
        %alloc_57 = memref.alloc() : memref<14xi32>
        memref.tensor_store %306, %alloc_57 : memref<14xi32>
        linalg.yield %false : i1
      } -> tensor<12x10x1xi1>
      %278 = arith.negf %cst_22 : f32
      %collapsed_49 = tensor.collapse_shape %generated_46 [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
      %279 = tensor.empty() : tensor<12xi1>
      %280 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 - 32 + 128)>(%rank, %c7, %c11)
      %281 = index.casts %258 : index to i32
      %282 = arith.remf %cst_0, %cst_2 : f16
      %splat = tensor.splat %c-19420_i16 : tensor<14xi16>
      %generated_50 = tensor.generate %107 {
      ^bb0(%arg0: index):
        %285 = math.log1p %cst_2 : f16
        %286 = math.round %from_elements : tensor<12xf32>
        %287 = vector.matrix_multiply %33, %124 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xi16>, vector<14xi16>) -> vector<14xi16>
        %288 = affine.apply affine_map<(d0) -> (((d0 mod 32 + d0 + 16) mod 32 - (d0 mod 32 + d0 + 16)) floordiv 64)>(%69)
        tensor.yield %c2055695765_i32 : i32
      } : tensor<?xi32>
      %283 = arith.shrsi %false, %extracted_45 : i1
      %284 = arith.minsi %52, %c-19420_i16 : i16
    }
    %127 = tensor.empty() : tensor<10x14xi1>
    %128 = vector.broadcast %c1145379926_i32 : i32 to vector<10x14xi32>
    %129 = vector.gather %127[%c14, %c15] [%128], %54, %54 : tensor<10x14xi1>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi1> into vector<10x14xi1>
    %130 = vector.insert %c-19420_i16, %33 [0] : i16 into vector<1xi16>
    %131 = math.log1p %cst_22 : f32
    %132 = index.mul %c12, %rank
    %133 = math.log %cst : f16
    %inserted = tensor.insert %c795053815_i64 into %0[%c2, %c1] : tensor<12x10xi64>
    %134 = math.round %cst_22 : f32
    %135 = math.roundeven %cst_0 : f16
    %136 = math.absi %8 : tensor<12xi32>
    %137 = index.maxs %53, %107
    %138 = tensor.empty() : tensor<10x14xi64>
    %139 = tensor.empty() : tensor<12x14xi64>
    %140 = linalg.matmul ins(%5, %138 : tensor<12x10xi64>, tensor<10x14xi64>) outs(%139 : tensor<12x14xi64>) -> tensor<12x14xi64>
    memref.copy %alloc_7, %alloc_13 : memref<12x10xi16> to memref<12x10xi16>
    %141 = vector.broadcast %c8 : index to vector<12xindex>
    %142 = vector.broadcast %c558059930_i32 : i32 to vector<12xi32>
    vector.scatter %alloc_11[%c5] [%141], %40, %142 : memref<12xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
    %143 = math.log1p %117 : f16
    %144 = arith.negf %cst_1 : f16
    %145 = math.log1p %cst_1 : f16
    %146 = vector.matrix_multiply %119, %119 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
    %147 = math.rsqrt %117 : f16
    %148 = vector.splat %c5 : vector<12xindex>
    %c1160102828_i64 = arith.constant 1160102828 : i64
    %149 = arith.divsi %c2055695765_i32, %c1145379926_i32 : i32
    %150 = arith.subi %c1814187417_i32, %c2055695765_i32 : i32
    %151 = memref.atomic_rmw mulf %cst_22, %alloc_6[%c3, %c3] : (f32, memref<12x10xf32>) -> f32
    %152 = memref.load %alloc_13[%c3, %c4] : memref<12x10xi16>
    %alloc_26 = memref.alloc() : memref<14xi32>
    %153 = vector.gather %alloc_26[%107] [%100], %99, %98 : memref<14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
    %154 = math.roundeven %cst_0 : f16
    %collapsed = tensor.collapse_shape %127 [[0, 1]] : tensor<10x14xi1> into tensor<140xi1>
    %155 = math.log10 %cst : f16
    %156 = math.fpowi %cst_22, %c1145379926_i32 : f32, i32
    %from_elements_27 = tensor.from_elements %cst, %cst_1, %cst_0, %cst, %117, %117, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %117, %cst_1 : tensor<14xf16>
    affine.store %cst_22, %alloc_6[%c15, %c5] : memref<12x10xf32>
    %157 = arith.remui %false, %false : i1
    %158 = vector.splat %c2055695765_i32 : vector<14xi32>
    %159 = index.ceildivs %69, %c0
    %false_28 = arith.constant false
    %false_29 = arith.constant false
    %160 = vector.transfer_read %12[%c14], %false_29 : tensor<12xi1>, vector<i1>
    %161 = vector.shuffle %18, %33 [0, 3, 8, 10, 12] : vector<12xi16>, vector<1xi16>
    %162 = tensor.empty() : tensor<14xf16>
    %alloc_30 = memref.alloc() : memref<10x10xi16>
    %163 = tensor.empty() : tensor<14x10xi16>
    %164 = linalg.matmul ins(%91, %alloc_30 : tensor<14x10xi16>, memref<10x10xi16>) outs(%163 : tensor<14x10xi16>) -> tensor<14x10xi16>
    %165 = index.sub %132, %132
    %166 = bufferization.to_tensor %alloc_7 : memref<12x10xi16>
    %167 = arith.andi %c1814187417_i32, %c558059930_i32 : i32
    %168 = arith.addi %true, %true : i1
    %169 = math.fpowi %cst_2, %c2055695765_i32 : f16, i32
    %170 = math.log %cst : f16
    %generated = tensor.generate %c11 {
    ^bb0(%arg0: index, %arg1: index):
      %258 = arith.negf %cst_1 : f16
      %259 = arith.remui %true, %false : i1
      %260 = arith.remsi %c1145379926_i32, %c789278739_i32 : i32
      %261 = vector.broadcast %c2063_i16 : i16 to vector<12x12xi16>
      %262 = vector.outerproduct %18, %18, %261 {kind = #vector.kind<maxsi>} : vector<12xi16>, vector<12xi16>
      tensor.yield %117 : f16
    } : tensor<?x10xf16>
    %171 = arith.addf %cst_22, %cst_22 : f32
    %172 = math.exp %162 : tensor<14xf16>
    %173 = math.roundeven %from_elements_27 : tensor<14xf16>
    %expanded_31 = tensor.expand_shape %19 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
    %generated_32 = tensor.generate %c7 {
    ^bb0(%arg0: index, %arg1: index):
      %258 = math.tan %162 : tensor<14xf16>
      %259 = arith.shli %false, %false_28 : i1
      %260 = arith.shrui %c789278739_i32, %c2055695765_i32 : i32
      %261 = vector.extract %119[1] : vector<14xi16>
      tensor.yield %c795053815_i64 : i64
    } : tensor<?x14xi64>
    %174 = memref.load %alloc_3[%c3] : memref<12xi16>
    memref.assume_alignment %alloc_10, 8 : memref<10x14xf32>
    %extracted = tensor.extract %1[%c11] : tensor<14xi64>
    %175 = vector.insert %c-19420_i16, %119 [7] : i16 into vector<14xi16>
    %176 = arith.remf %cst_22, %cst_22 : f32
    %177 = index.divs %c4, %rank
    %178 = arith.remui %c789278739_i32, %c2039219675_i32 : i32
    %179 = arith.mulf %117, %117 : f16
    %180 = bufferization.clone %alloc_13 : memref<12x10xi16> to memref<12x10xi16>
    %181 = arith.minui %52, %c2063_i16 : i16
    %182 = arith.ceildivsi %c2055695765_i32, %c789278739_i32 : i32
    memref.tensor_store %4, %alloc_8 : memref<12xi16>
    %expanded_33 = tensor.expand_shape %generated_32 [[0], [1, 2]] : tensor<?x14xi64> into tensor<?x14x1xi64>
    %183 = index.divs %53, %177
    %184 = arith.minsi %c2039219675_i32, %c1145379926_i32 : i32
    %185 = math.rsqrt %117 : f16
    %cst_34 = arith.constant 2.032000e+04 : f16
    %186 = math.round %162 : tensor<14xf16>
    %187 = arith.cmpi ne, %c1145379926_i32, %c2039219675_i32 : i32
    %false_35 = index.bool.constant false
    %188 = vector.matrix_multiply %89, %90 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
    %189 = math.ceil %cst_1 : f16
    %190 = arith.minui %c2063_i16, %c-19420_i16 : i16
    %generated_36 = tensor.generate %105 {
    ^bb0(%arg0: index, %arg1: index):
      %258 = math.atan %cst : f16
      %259 = vector.load %alloc_9[%c13] : memref<14xi16>, vector<12x10xi16>
      %260 = arith.negf %cst_2 : f16
      scf.index_switch %arg0 
      case 1 {
        %261 = arith.minui %c1814187417_i32, %c1145379926_i32 : i32
        %262 = arith.remui %52, %52 : i16
        %263 = arith.addi %c214280376_i64, %c214280376_i64 : i64
        %264 = index.ceildivs %c13, %c12
        %265 = arith.negf %cst_0 : f16
        %266 = arith.maxsi %c-19420_i16, %52 : i16
        %267 = math.tan %cst_0 : f16
        %268 = vector.extract %33[0] : vector<1xi16>
        %269 = math.ctlz %4 : tensor<12xi16>
        %270 = arith.remsi %c-19420_i16, %c-19420_i16 : i16
        %271 = arith.floordivsi %c1145379926_i32, %c2039219675_i32 : i32
        %272 = math.ceil %117 : f16
        %273 = arith.negf %cst_0 : f16
        %274 = arith.subi %c-19420_i16, %c2063_i16 : i16
        %275 = index.maxu %c14, %183
        %276 = math.copysign %cst, %cst_0 : f16
        scf.yield
      }
      case 2 {
        %261 = index.divu %arg0, %62
        %262 = math.powf %cst, %cst_2 : f16
        %263 = arith.remsi %52, %52 : i16
        %264 = math.cttz %c1814187417_i32 : i32
        %265 = vector.matrix_multiply %98, %153 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
        %266 = vector.matrix_multiply %18, %124 {lhs_columns = 2 : i32, lhs_rows = 6 : i32, rhs_columns = 7 : i32} : (vector<12xi16>, vector<14xi16>) -> vector<42xi16>
        %267 = math.exp %cst_1 : f16
        %from_elements_45 = tensor.from_elements %c2063_i16, %c-19420_i16, %52, %c2063_i16, %52, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %52, %52, %52, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %52, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %52, %52, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %52, %c2063_i16, %52, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %52, %52, %52, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c-19420_i16, %52, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %52, %c2063_i16, %52, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %52, %52, %c2063_i16, %c-19420_i16, %52, %52, %52, %c-19420_i16, %52, %52, %52, %c2063_i16, %52, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c2063_i16, %52, %c-19420_i16, %52, %c-19420_i16, %52, %52, %52, %c2063_i16, %c2063_i16 : tensor<10x14xi16>
        %268 = math.log1p %from_elements_27 : tensor<14xf16>
        %269 = index.divu %105, %261
        %expanded_46 = tensor.expand_shape %7 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %270 = math.round %cst_0 : f16
        %271 = arith.shli %c1145379926_i32, %c2055695765_i32 : i32
        %272 = tensor.empty() : tensor<10x14xi64>
        %273 = vector.maskedload %alloc_8[%c0], %111, %18 : memref<12xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %274 = tensor.empty() : tensor<10x14xi64>
        scf.yield
      }
      case 3 {
        %261 = index.sub %165, %c5
        %from_elements_45 = tensor.from_elements %c2063_i16, %52, %52, %52, %52, %c-19420_i16, %52, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c2063_i16, %52, %52, %c2063_i16, %52, %52, %c-19420_i16, %c-19420_i16, %52, %c2063_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %52, %52, %52, %52, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %52, %c-19420_i16, %52, %52, %c2063_i16, %52, %c2063_i16, %c-19420_i16, %c-19420_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %52, %c2063_i16, %c2063_i16, %52, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c-19420_i16, %52, %c2063_i16, %52, %52, %c-19420_i16, %52, %c-19420_i16, %52, %c-19420_i16, %c-19420_i16, %c-19420_i16, %52, %c-19420_i16, %52, %c-19420_i16, %52, %c-19420_i16, %c2063_i16, %c2063_i16, %c-19420_i16, %c2063_i16, %52, %c2063_i16, %52, %52, %c2063_i16, %52, %c2063_i16, %52, %c-19420_i16, %c-19420_i16, %52 : tensor<10x14xi16>
        %262 = arith.minui %c1145379926_i32, %c789278739_i32 : i32
        %263 = arith.ceildivsi %52, %c-19420_i16 : i16
        %264 = arith.remsi %52, %52 : i16
        %265 = arith.shrsi %c1145379926_i32, %c1145379926_i32 : i32
        %266 = math.ctlz %3 : tensor<12xi64>
        %267 = math.atan %from_elements : tensor<12xf32>
        %268 = math.cttz %166 : tensor<12x10xi16>
        %269 = arith.ceildivsi %false, %false_28 : i1
        %270 = arith.floordivsi %true, %false_28 : i1
        %271 = vector.broadcast %cst_22 : f32 to vector<10x14xf32>
        %272 = vector.fma %271, %271, %271 : vector<10x14xf32>
        %273 = arith.shrsi %52, %c-19420_i16 : i16
        %inserted_46 = tensor.insert %c1145379926_i32 into %122[%c1, %c2] : tensor<10x10xi32>
        %274 = arith.mulf %cst_2, %cst : f16
        %275 = affine.load %alloc_7[%c4, %c6] : memref<12x10xi16>
        scf.yield
      }
      case 4 {
        %261 = tensor.empty() : tensor<10x14xf32>
        %inserted_45 = tensor.insert %c2039219675_i32 into %9[%c4, %c7] : tensor<10x14xi32>
        %262 = math.ctlz %8 : tensor<12xi32>
        memref.assume_alignment %alloc_18, 16 : memref<10x12xi64>
        %collapsed_46 = tensor.collapse_shape %16 [[0, 1]] : tensor<12x10xi1> into tensor<120xi1>
        %263 = arith.remf %cst_2, %cst : f16
        %264 = math.exp %261 : tensor<10x14xf32>
        %265 = index.ceildivu %109, %arg0
        %266 = arith.floordivsi %c558059930_i32, %c1145379926_i32 : i32
        %267 = math.exp2 %261 : tensor<10x14xf32>
        %expanded_47 = tensor.expand_shape %11 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
        %268 = arith.mulf %cst_1, %cst : f16
        %269 = arith.floordivsi %52, %c2063_i16 : i16
        %270 = arith.remf %cst_1, %117 : f16
        %271 = index.sizeof
        %272 = math.log2 %cst_22 : f32
        scf.yield
      }
      default {
        %261 = math.cos %117 : f16
        %262 = vector.splat %c15 : vector<12xindex>
        %263 = math.log1p %cst_1 : f16
        %264 = memref.load %alloc_19[] : memref<i16>
        bufferization.dealloc_tensor %10 : tensor<14xi1>
        %265 = arith.cmpf one, %cst_0, %cst_2 : f16
        %from_elements_45 = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22 : tensor<14xf32>
        %266 = math.round %from_elements_27 : tensor<14xf16>
        %267 = arith.addi %false_35, %false : i1
        %268 = math.tan %from_elements_27 : tensor<14xf16>
        %269 = index.sizeof
        %270 = arith.shrsi %c1145379926_i32, %c1145379926_i32 : i32
        %false_46 = index.bool.constant false
        %false_47 = index.bool.constant false
        %271 = math.atan2 %cst_0, %cst_2 : f16
        %272 = vector.flat_transpose %98 {columns = 7 : i32, rows = 2 : i32} : vector<14xi32> -> vector<14xi32>
      }
      tensor.yield %cst_2 : f16
    } : tensor<?x10xf16>
    %191 = index.ceildivs %c2, %101
    %192 = math.rsqrt %cst_22 : f32
    %193 = math.rsqrt %cst_1 : f16
    memref.tensor_store %4, %alloc_3 : memref<12xi16>
    %194 = arith.remsi %c2039219675_i32, %c789278739_i32 : i32
    %195 = vector.create_mask %112, %132 : vector<10x14xi1>
    %196 = math.log1p %117 : f16
    %197 = vector.create_mask %c5, %76 : vector<12x10xi1>
    %198 = arith.xori %c558059930_i32, %c2039219675_i32 : i32
    %199 = arith.addf %cst_2, %cst_1 : f16
    %expanded_37 = tensor.expand_shape %8 [[0, 1]] : tensor<12xi32> into tensor<12x1xi32>
    %200 = arith.divsi %52, %c2063_i16 : i16
    %inserted_38 = tensor.insert %extracted into %139[%c0, %c12] : tensor<12x14xi64>
    %201 = arith.muli %extracted, %c214280376_i64 : i64
    bufferization.dealloc_tensor %0 : tensor<12x10xi64>
    %202 = index.mul %107, %109
    %alloc_39 = memref.alloc() : memref<14x10xi16>
    memref.tensor_store %163, %alloc_39 : memref<14x10xi16>
    %203 = arith.minsi %extracted, %extracted : i64
    %204 = vector.broadcast %cst_22 : f32 to vector<14xf32>
    %205 = vector.fma %204, %204, %89 : vector<14xf32>
    memref.tensor_store %21, %alloc_19 : memref<i16>
    %206 = affine.apply affine_map<(d0, d1) -> (0)>(%53, %177)
    %207 = arith.shli %c2063_i16, %52 : i16
    %208 = math.atan %cst : f16
    %209 = arith.maxui %extracted, %extracted : i64
    %210 = math.atan2 %from_elements_27, %162 : tensor<14xf16>
    %211 = index.divu %c9, %165
    %212 = arith.mulf %cst_0, %cst_0 : f16
    %alloc_40 = memref.alloc() : memref<10x10xi32>
    memref.tensor_store %122, %alloc_40 : memref<10x10xi32>
    %213 = arith.minf %cst_1, %cst_1 : f16
    %214 = affine.load %alloc_10[%c13, %c8] : memref<10x14xf32>
    %215 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_20 : tensor<12x10x1xi1>) {
    ^bb0(%out: i1):
      %258 = index.maxs %69, %c7
      %259 = math.log2 %117 : f16
      %260 = bufferization.clone %42 : memref<10x12xi64> to memref<10x12xi64>
      %261 = affine.load %121[%c12, %c6] : memref<10x14xf16>
      %262 = arith.shli %c1145379926_i32, %c2055695765_i32 : i32
      %263 = math.ctlz %5 : tensor<12x10xi64>
      %alloc_45 = memref.alloc() : memref<10x1xi1>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12, %alloc_45, %alloc_45 : tensor<12xi1>, memref<10x1xi1>, memref<10x1xi1>) outs(%expanded_20 : tensor<12x10x1xi1>) {
      ^bb0(%in: i1, %in_49: i1, %in_50: i1, %out_51: i1):
        %292 = math.tan %cst_1 : f16
        %293 = math.ipowi %10, %11 : tensor<14xi1>
        %294 = vector.splat %183 : vector<10x14xindex>
        %295 = arith.addf %214, %214 : f32
        %splat_52 = tensor.splat %in : tensor<14xi1>
        %296 = math.tan %cst_1 : f16
        %297 = arith.remui %c795053815_i64, %c214280376_i64 : i64
        %298 = vector.broadcast %cst_22 : f32 to vector<12xf32>
        %299 = vector.fma %298, %298, %298 : vector<12xf32>
        %false_53 = index.bool.constant false
        %300 = math.log2 %261 : f16
        %301 = index.ceildivs %202, %165
        %302 = math.cttz %in_50 : i1
        bufferization.dealloc_tensor %80 : tensor<i16>
        %303 = arith.addi %in_50, %true : i1
        %304 = vector.matrix_multiply %90, %299 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 6 : i32} : (vector<14xf32>, vector<12xf32>) -> vector<42xf32>
        %splat_54 = tensor.splat %117 : tensor<14xf16>
        %305 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
        %306 = vector.fma %305, %305, %60 : vector<12x10xf32>
        %307 = index.ceildivu %62, %c10
        %collapsed_55 = tensor.collapse_shape %expanded_31 [[0, 1]] : tensor<14x1xi16> into tensor<14xi16>
        %expanded_56 = tensor.expand_shape %7 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %from_elements_57 = tensor.from_elements %214, %214, %214, %214, %cst_22, %214, %cst_22, %214, %cst_22, %214, %214, %cst_22, %214, %cst_22, %214, %cst_22, %214, %214, %214, %cst_22, %214, %cst_22, %214, %cst_22, %214, %214, %cst_22, %cst_22, %214, %214, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %cst_22, %cst_22, %214, %214, %cst_22, %cst_22, %214, %214, %214, %214, %cst_22, %214, %214, %cst_22, %cst_22, %cst_22, %214, %214, %214, %214, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %214, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %214, %214, %214, %cst_22, %cst_22, %214, %214, %214, %214, %214, %cst_22, %214, %214, %214, %214, %cst_22, %214, %214, %214, %214, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %cst_22, %214, %214, %214, %214, %cst_22, %cst_22, %214, %cst_22, %cst_22, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %cst_22, %cst_22, %cst_22, %214, %cst_22, %cst_22, %214, %214, %cst_22, %214 : tensor<12x10xf32>
        %308 = vector.create_mask %76 : vector<12xi1>
        %from_elements_58 = tensor.from_elements %cst, %117, %cst_2, %cst, %cst_0, %261, %cst_0, %cst_0, %cst_0, %cst_0, %261, %261, %cst_1, %cst_2 : tensor<14xf16>
        %309 = math.tan %from_elements : tensor<12xf32>
        %310 = tensor.empty() : tensor<1x12xi16>
        %311 = tensor.empty() : tensor<14x12xi16>
        %312 = linalg.matmul ins(%expanded, %310 : tensor<14x1xi16>, tensor<1x12xi16>) outs(%311 : tensor<14x12xi16>) -> tensor<14x12xi16>
        %313 = index.sizeof
        %314 = math.log2 %117 : f16
        %315 = math.exp %splat_54 : tensor<14xf16>
        %from_elements_59 = tensor.from_elements %out, %false_28, %in, %in_50, %out_51, %false, %in_49, %false, %false_28, %false, %false_28, %out_51 : tensor<12xi1>
        %316 = affine.apply affine_map<(d0) -> (d0 mod 16)>(%301)
        %true_60 = arith.constant true
        %317 = vector.insertelement %c1145379926_i32, %98[%c2 : index] : vector<14xi32>
        linalg.yield %in_50 : i1
      } -> tensor<12x10x1xi1>
      %265 = tensor.empty() : tensor<12x10xi32>
      %266 = linalg.matmul ins(%2, %122 : tensor<12x10xi32>, tensor<10x10xi32>) outs(%265 : tensor<12x10xi32>) -> tensor<12x10xi32>
      %generated_46 = tensor.generate %132 {
      ^bb0(%arg0: index):
        %292 = vector.splat %165 : vector<10x14xindex>
        %293 = math.tan %162 : tensor<14xf16>
        %294 = vector.broadcast %cst_22 : f32 to vector<14xf32>
        %295 = vector.fma %294, %90, %294 : vector<14xf32>
        %alloc_49 = memref.alloc() : memref<10x10xi16>
        %296 = tensor.empty() : tensor<12x10xi16>
        %297 = linalg.matmul ins(%166, %alloc_49 : tensor<12x10xi16>, memref<10x10xi16>) outs(%296 : tensor<12x10xi16>) -> tensor<12x10xi16>
        tensor.yield %214 : f32
      } : tensor<?xf32>
      %267 = affine.for %arg0 = 0 to 3 iter_args(%arg1 = %2) -> (tensor<12x10xi32>) {
        affine.yield %2 : tensor<12x10xi32>
      }
      %extracted_47 = tensor.extract %from_elements[%c11] : tensor<12xf32>
      %268 = arith.mulf %cst_1, %cst_1 : f16
      %269 = arith.ceildivsi %true, %out : i1
      %270 = affine.load %alloc_5[%c10] : memref<12xi64>
      %271 = vector.broadcast %cst_22 : f32 to vector<14xf32>
      %272 = vector.fma %271, %271, %271 : vector<14xf32>
      %273 = index.ceildivs %112, %183
      %274 = vector.broadcast %extracted_47 : f32 to vector<14x14xf32>
      %275 = vector.outerproduct %271, %89, %274 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
      %276 = vector.broadcast %270 : i64 to vector<14xi64>
      %277 = math.tan %117 : f16
      %splat = tensor.splat %c789278739_i32 : tensor<14xi32>
      %278 = tensor.empty() : tensor<14xf32>
      %279 = vector.broadcast %214 : f32 to vector<12xf32>
      %280 = vector.broadcast %c558059930_i32 : i32 to vector<12xi32>
      %281 = vector.gather %278[%c5] [%280], %40, %279 : tensor<14xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
      %282 = scf.index_switch %191 -> memref<10x14xf16> 
      case 1 {
        %292 = arith.subi %c2039219675_i32, %c2055695765_i32 : i32
        %293 = tensor.empty() : tensor<10x12xi16>
        %294 = tensor.empty() : tensor<14x12xi16>
        %295 = linalg.matmul ins(%95, %293 : tensor<14x10xi16>, tensor<10x12xi16>) outs(%294 : tensor<14x12xi16>) -> tensor<14x12xi16>
        %296 = memref.atomic_rmw assign %c214280376_i64, %alloc_5[%c5] : (i64, memref<12xi64>) -> i64
        %from_elements_49 = tensor.from_elements %c214280376_i64, %c795053815_i64, %c795053815_i64, %extracted, %c214280376_i64, %c214280376_i64, %270, %extracted, %c214280376_i64, %extracted, %270, %270 : tensor<12xi64>
        %297 = math.ipowi %95, %95 : tensor<14x10xi16>
        %298 = math.tan %162 : tensor<14xf16>
        %299 = vector.multi_reduction <maxsi>, %98, %98 [] : vector<14xi32> to vector<14xi32>
        %300 = vector.broadcast %extracted_47 : f32 to vector<12xf32>
        %301 = vector.fma %300, %300, %281 : vector<12xf32>
        %302 = math.round %cst : f16
        %303 = math.round %from_elements_27 : tensor<14xf16>
        %304 = math.round %278 : tensor<14xf32>
        %305 = arith.negf %261 : f16
        %306 = arith.divui %c2039219675_i32, %c2039219675_i32 : i32
        %307 = arith.shli %out, %out : i1
        %308 = arith.shrsi %270, %270 : i64
        %309 = arith.negf %cst : f16
        scf.yield %121 : memref<10x14xf16>
      }
      default {
        memref.assume_alignment %alloc_18, 2 : memref<10x12xi64>
        %292 = vector.broadcast %extracted_47 : f32 to vector<14x14xf32>
        %293 = vector.outerproduct %271, %89, %292 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
        %alloc_49 = memref.alloc() : memref<12x10xi64>
        memref.tensor_store %0, %alloc_49 : memref<12x10xi64>
        %294 = arith.ceildivsi %c558059930_i32, %c1145379926_i32 : i32
        %295 = arith.negf %214 : f32
        %296 = math.tan %cst_22 : f32
        vector.print %279 : vector<12xf32>
        %297 = math.copysign %cst_0, %cst_1 : f16
        %298 = arith.divsi %c2063_i16, %c2063_i16 : i16
        %extracted_50 = tensor.extract %21[] : tensor<i16>
        %false_51 = index.bool.constant false
        affine.store %c2063_i16, %alloc_9[%c12] : memref<14xi16>
        %299 = arith.maxui %true, %out : i1
        %300 = arith.mulf %cst_2, %cst_0 : f16
        %301 = tensor.empty() : tensor<14x10xi32>
        %302 = tensor.empty() : tensor<12x10xi32>
        %303 = linalg.matmul ins(%87, %301 : tensor<12x14xi32>, tensor<14x10xi32>) outs(%302 : tensor<12x10xi32>) -> tensor<12x10xi32>
        %304 = vector.splat %261 : vector<12x10xf16>
        scf.yield %121 : memref<10x14xf16>
      }
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %283 = vector.transfer_read %139[%c8, %211], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<12x14xi64>, vector<12xi64>
      %284 = math.log2 %117 : f16
      %285 = math.log2 %cst_0 : f16
      %286 = arith.remf %214, %extracted_47 : f32
      %287 = vector.broadcast %extracted_47 : f32 to vector<10x14xf32>
      %288 = vector.fma %287, %287, %287 : vector<10x14xf32>
      %alloca = memref.alloca() : memref<14xf32>
      %inserted_48 = tensor.insert %52 into %4[%c3] : tensor<12xi16>
      %289 = math.ctlz %52 : i16
      %c1_i16 = arith.constant 1 : i16
      %290 = vector.transfer_read %alloc_9[%183], %c1_i16 : memref<14xi16>, vector<i16>
      %291 = arith.addf %cst, %cst_1 : f16
      linalg.yield %out : i1
    } -> tensor<12x10x1xi1>
    %216 = index.sizeof
    %217 = vector.broadcast %cst_22 : f32 to vector<12xf32>
    %dest, %accumulated_value = vector.scan <add>, %59, %217 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xf32>, vector<12xf32>
    %218 = index.sizeof
    %219 = scf.while (%arg0 = %alloc) : (memref<10x14xi16>) -> memref<10x14xi16> {
      %expanded_45 = tensor.expand_shape %11 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
      %generated_46 = tensor.generate %159, %53 {
      ^bb0(%arg1: index, %arg2: index):
        %inserted_48 = tensor.insert %false_35 into %16[%c5, %c6] : tensor<12x10xi1>
        %264 = arith.remsi %false_35, %false_35 : i1
        %265 = arith.subi %c795053815_i64, %extracted : i64
        %266 = index.divu %191, %112
        tensor.yield %cst_22 : f32
      } : tensor<?x?xf32>
      %258 = vector.splat %c2039219675_i32 : vector<12x10xi32>
      %259 = arith.divf %cst, %cst : f16
      %inserted_47 = tensor.insert %52 into %80[] : tensor<i16>
      %260 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
      %261 = vector.fma %260, %59, %260 : vector<12x10xf32>
      %262 = vector.multi_reduction <and>, %195, %195 [] : vector<10x14xi1> to vector<10x14xi1>
      %263 = arith.remf %cst_2, %cst : f16
      scf.condition(%false_28) %arg0 : memref<10x14xi16>
    } do {
    ^bb0(%arg0: memref<10x14xi16>):
      %258 = math.ipowi %0, %0 : tensor<12x10xi64>
      %259 = arith.remui %c795053815_i64, %c214280376_i64 : i64
      %260 = arith.shrsi %c2063_i16, %c-19420_i16 : i16
      affine.for %arg1 = 0 to 56 {
      }
      %splat = tensor.splat %false_35 : tensor<12xi1>
      %alloc_45 = memref.alloc() : memref<14x10xi16>
      memref.tensor_store %91, %alloc_45 : memref<14x10xi16>
      %261 = math.rsqrt %214 : f32
      %262 = math.exp %cst_1 : f16
      %263 = arith.negf %117 : f16
      %264 = arith.minsi %c1814187417_i32, %c789278739_i32 : i32
      %265 = math.cttz %3 : tensor<12xi64>
      %266 = arith.divsi %extracted, %c214280376_i64 : i64
      memref.alloca_scope  {
        %alloc_46 = memref.alloc() : memref<12x14xi64>
        memref.tensor_store %139, %alloc_46 : memref<12x14xi64>
        %271 = arith.subi %c-19420_i16, %c2063_i16 : i16
        %true_47 = arith.constant true
        %272 = vector.transfer_read %12[%76], %true_47 : tensor<12xi1>, vector<i1>
        %273 = vector.load %alloc_14[%c13] : memref<14xi1>, vector<10x14xi1>
        %274 = arith.minsi %c789278739_i32, %c789278739_i32 : i32
        %275 = index.maxu %211, %c2
        %276 = vector.multi_reduction <maxf>, %89, %cst_22 [0] : vector<14xf32> to f32
        %277 = math.round %214 : f32
        %278 = arith.floordivsi %c2055695765_i32, %c1145379926_i32 : i32
        %expanded_48 = tensor.expand_shape %generated_32 [[0], [1, 2]] : tensor<?x14xi64> into tensor<?x14x1xi64>
        %279 = vector.create_mask %101, %c15 : vector<12x10xi1>
        %280 = tensor.empty() : tensor<14x10xi1>
        %281 = tensor.empty() : tensor<10x10xi1>
        %282 = linalg.matmul ins(%127, %280 : tensor<10x14xi1>, tensor<14x10xi1>) outs(%281 : tensor<10x10xi1>) -> tensor<10x10xi1>
        %283 = arith.floordivsi %true, %false_28 : i1
        bufferization.dealloc_tensor %splat : tensor<12xi1>
        %284 = arith.remsi %c1814187417_i32, %c1145379926_i32 : i32
        affine.store %52, %180[%c10, %c11] : memref<12x10xi16>
        %285 = arith.negf %cst : f16
        %286 = math.rsqrt %from_elements : tensor<12xf32>
        %287 = index.maxu %45, %76
        %288 = arith.cmpi ne, %c-19420_i16, %c-19420_i16 : i16
        %c476146079_i32 = arith.constant 476146079 : i32
        %289 = vector.broadcast %202 : index to vector<10xindex>
        %290 = vector.broadcast %false_28 : i1 to vector<10xi1>
        %291 = vector.broadcast %52 : i16 to vector<10xi16>
        vector.scatter %alloc_4[%c0] [%289], %290, %291 : memref<12xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %292 = vector.create_mask %69, %287 : vector<10x14xi1>
        %inserted_49 = tensor.insert %extracted into %0[%c7, %c6] : tensor<12x10xi64>
        %293 = index.add %216, %191
        %294 = math.exp %cst_0 : f16
        %295 = vector.broadcast %c558059930_i32 : i32 to vector<10xi32>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %98, %128, %295 : vector<14xi32>, vector<10x14xi32> into vector<10xi32>
        %297 = arith.minui %false, %false_28 : i1
        %298 = math.cttz %c214280376_i64 : i64
        %299 = index.divu %c13, %112
        memref.store %cst_22, %alloc_6[%c9, %c7] : memref<12x10xf32>
        %300 = tensor.empty() : tensor<12x10xi32>
        %301 = linalg.matmul ins(%2, %122 : tensor<12x10xi32>, tensor<10x10xi32>) outs(%300 : tensor<12x10xi32>) -> tensor<12x10xi32>
      }
      %267 = arith.mulf %214, %cst_22 : f32
      %268 = math.log %214 : f32
      %269 = tensor.empty() : tensor<1x10xi1>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269 : tensor<1x10xi1>) outs(%expanded_20 : tensor<12x10x1xi1>) {
      ^bb0(%in: i1, %out: i1):
        %271 = index.mul %101, %76
        %272 = math.round %cst_0 : f16
        %inserted_46 = tensor.insert %cst_2 into %from_elements_27[%c11] : tensor<14xf16>
        %273 = math.tan %cst_0 : f16
        %274 = arith.negf %cst_0 : f16
        %275 = arith.shrui %out, %in : i1
        %276 = affine.load %alloc_11[%c4] : memref<12xi32>
        %277 = arith.divui %false_28, %out : i1
        %278 = math.atan %cst_22 : f32
        %279 = arith.cmpf uno, %117, %cst_0 : f16
        memref.assume_alignment %alloc_26, 2 : memref<14xi32>
        %280 = arith.shrui %extracted, %c214280376_i64 : i64
        %281 = arith.minsi %in, %in : i1
        %282 = arith.shli %52, %c-19420_i16 : i16
        %from_elements_47 = tensor.from_elements %214, %214, %cst_22, %214, %cst_22, %214, %214, %214, %214, %cst_22, %214, %214, %cst_22, %214, %cst_22, %214, %cst_22, %214, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %214, %cst_22, %214, %214, %214, %cst_22, %cst_22, %214, %214, %cst_22, %cst_22, %cst_22, %214, %cst_22, %214, %cst_22, %214, %cst_22, %214, %214, %214, %cst_22, %214, %cst_22, %214, %214, %cst_22, %214, %cst_22, %cst_22, %cst_22, %214, %214, %214, %214, %214, %cst_22, %214, %cst_22, %cst_22, %cst_22, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %cst_22, %214, %cst_22, %cst_22, %214, %cst_22, %214, %cst_22, %cst_22, %cst_22, %cst_22, %214, %cst_22, %214, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %cst_22, %214, %214, %cst_22, %cst_22, %214, %214, %214, %214, %214, %cst_22, %214, %214, %cst_22, %cst_22, %cst_22, %214, %cst_22, %214, %cst_22, %214, %cst_22, %cst_22, %214, %214, %cst_22, %214, %214, %cst_22, %214, %214, %214, %cst_22, %214, %cst_22, %214, %cst_22, %cst_22, %214, %214, %cst_22, %214 : tensor<10x14xf32>
        %283 = arith.muli %out, %false_35 : i1
        %284 = math.log %214 : f32
        %285 = affine.load %alloc_16[%c14, %c13] : memref<10x14xf32>
        %286 = index.maxs %112, %c1
        %287 = vector.splat %75 : vector<14xindex>
        %288 = arith.ceildivsi %true, %true : i1
        %289 = index.divu %c11, %c14
        %290 = arith.subi %c2055695765_i32, %c789278739_i32 : i32
        %291 = vector.broadcast %214 : f32 to vector<12xf32>
        %292 = vector.fma %291, %291, %291 : vector<12xf32>
        %293 = math.cttz %expanded_20 : tensor<12x10x1xi1>
        %294 = arith.divf %cst_1, %cst : f16
        %dest_48, %accumulated_value_49 = vector.scan <minui>, %195, %99 {inclusive = false, reduction_dim = 0 : i64} : vector<10x14xi1>, vector<14xi1>
        %295 = index.ceildivu %45, %216
        %296 = math.log1p %cst_0 : f16
        %297 = vector.extract_strided_slice %59 {offsets = [0], sizes = [8], strides = [1]} : vector<12x10xf32> to vector<8x10xf32>
        %c1284790613_i32 = arith.constant 1284790613 : i32
        %false_50 = index.bool.constant false
        linalg.yield %out : i1
      } -> tensor<12x10x1xi1>
      scf.yield %arg0 : memref<10x14xi16>
    }
    %220 = tensor.empty() : tensor<12x10xi32>
    %221 = scf.while (%arg0 = %117) : (f16) -> f16 {
      %258 = arith.negf %117 : f16
      %259 = vector.splat %c1145379926_i32 : vector<10x14xi32>
      %260 = vector.broadcast %c214280376_i64 : i64 to vector<12x10xi64>
      %261 = scf.while (%arg1 = %arg0) : (f16) -> f16 {
        %266 = math.atan %cst : f16
        %267 = vector.broadcast %false_35 : i1 to vector<10xi1>
        %268 = vector.maskedload %alloc_14[%c8], %267, %267 : memref<14xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %269 = arith.cmpi ugt, %c1145379926_i32, %c1145379926_i32 : i32
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %195, %99 {inclusive = true, reduction_dim = 0 : i64} : vector<10x14xi1>, vector<14xi1>
        %270 = arith.shrsi %c2055695765_i32, %c2055695765_i32 : i32
        %271 = index.add %76, %rank
        %272 = math.log2 %arg0 : f16
        %273 = math.log2 %cst_1 : f16
        scf.condition(%false) %cst_1 : f16
      } do {
      ^bb0(%arg1: f16):
        memref.store %52, %alloc[%c1, %c1] : memref<10x14xi16>
        %266 = memref.atomic_rmw ori %52, %alloc_3[%c7] : (i16, memref<12xi16>) -> i16
        %267 = arith.divui %false, %false_28 : i1
        %268 = arith.subi %c214280376_i64, %extracted : i64
        %269 = math.fma %cst_22, %214, %214 : f32
        %270 = index.maxs %177, %211
        %271 = vector.broadcast %c1145379926_i32 : i32 to vector<12xi32>
        %272 = arith.xori %false, %false_28 : i1
        %273 = vector.load %alloc_3[%c2] : memref<12xi16>, vector<14xi16>
        %274 = math.roundeven %cst_22 : f32
        %275 = math.exp %cst_22 : f32
        %276 = arith.ceildivsi %c1145379926_i32, %c2039219675_i32 : i32
        %277 = vector.gather %166[%159, %c6] [%271], %40, %18 : tensor<12x10xi16>, vector<12xi32>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %278 = affine.max affine_map<(d0) -> (d0)>(%c6)
        %279 = arith.shrsi %c558059930_i32, %c2055695765_i32 : i32
        %280 = memref.atomic_rmw maxs %c214280376_i64, %42[%c9, %c6] : (i64, memref<10x12xi64>) -> i64
        scf.yield %arg0 : f16
      }
      %inserted_45 = tensor.insert %c214280376_i64 into %139[%c1, %c5] : tensor<12x14xi64>
      %262 = vector.insert %c2063_i16, %18 [2] : i16 into vector<12xi16>
      %263 = tensor.empty() : tensor<12x14xi32>
      %264 = linalg.matmul ins(%2, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%263 : tensor<12x14xi32>) -> tensor<12x14xi32>
      %265 = math.ctpop %17 : tensor<12x10xi1>
      scf.condition(%false) %cst_1 : f16
    } do {
    ^bb0(%arg0: f16):
      %258 = tensor.empty() : tensor<10x12xi64>
      %259 = tensor.empty() : tensor<12x12xi64>
      %260 = linalg.matmul ins(%5, %258 : tensor<12x10xi64>, tensor<10x12xi64>) outs(%259 : tensor<12x12xi64>) -> tensor<12x12xi64>
      %261 = arith.divf %cst_1, %cst : f16
      %262 = memref.atomic_rmw addi %c-19420_i16, %alloc_7[%c9, %c3] : (i16, memref<12x10xi16>) -> i16
      %263 = vector.broadcast %107 : index to vector<12xindex>
      %264 = vector.broadcast %cst : f16 to vector<12xf16>
      vector.scatter %121[%c0, %c12] [%263], %40, %264 : memref<10x14xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
      %265 = scf.while (%arg1 = %59) : (vector<12x10xf32>) -> vector<12x10xf32> {
        %278 = index.ceildivs %c6, %75
        %279 = memref.atomic_rmw maxs %c795053815_i64, %42[%c9, %c6] : (i64, memref<10x12xi64>) -> i64
        %280 = affine.max affine_map<(d0) -> ((-d0) mod 16, -d0 + 2, d0 floordiv 4)>(%rank)
        %281 = tensor.empty() : tensor<12x10xf32>
        vector.print %188 : vector<1xf32>
        %282 = index.sizeof
        %283 = math.atan %cst_0 : f16
        %284 = arith.minsi %false, %false_35 : i1
        scf.condition(%false) %60 : vector<12x10xf32>
      } do {
      ^bb0(%arg1: vector<12x10xf32>):
        %splat = tensor.splat %false_35 : tensor<12xi1>
        %278 = math.round %cst_2 : f16
        %279 = arith.divsi %c789278739_i32, %c789278739_i32 : i32
        %280 = math.exp %from_elements_27 : tensor<14xf16>
        %281 = arith.addi %false_28, %false_28 : i1
        %282 = tensor.empty() : tensor<12x14xi1>
        %283 = linalg.matmul ins(%15, %127 : tensor<12x10xi1>, tensor<10x14xi1>) outs(%282 : tensor<12x14xi1>) -> tensor<12x14xi1>
        %284 = tensor.empty() : tensor<14xf16>
        %285 = arith.remf %214, %214 : f32
        %286 = arith.addi %false, %false : i1
        %287 = math.log2 %117 : f16
        %288 = vector.multi_reduction <minf>, %205, %204 [] : vector<14xf32> to vector<14xf32>
        %289 = math.round %214 : f32
        %290 = arith.xori %c2039219675_i32, %c2055695765_i32 : i32
        %291 = math.ipowi %163, %95 : tensor<14x10xi16>
        %extracted_45 = tensor.extract %expanded_33[%c0, %c13, %c0] : tensor<?x14x1xi64>
        %292 = arith.xori %extracted_45, %c795053815_i64 : i64
        scf.yield %59 : vector<12x10xf32>
      }
      %266 = memref.load %alloc_18[%c7, %c4] : memref<10x12xi64>
      %267 = arith.maxui %c795053815_i64, %extracted : i64
      %268 = arith.minsi %c789278739_i32, %c2039219675_i32 : i32
      %269 = tensor.empty() : tensor<12x10xi1>
      %270 = memref.load %alloc_15[%c13] : memref<14xf32>
      %271 = memref.load %alloc_12[%c7, %c7] : memref<10x14xi32>
      %272 = math.exp %cst_2 : f16
      %273 = memref.alloca_scope  -> (i1) {
        %278 = arith.shli %c1814187417_i32, %c2055695765_i32 : i32
        %dest_45, %accumulated_value_46 = vector.scan <add>, %128, %100 {inclusive = false, reduction_dim = 0 : i64} : vector<10x14xi32>, vector<14xi32>
        %279 = math.atan %117 : f16
        %expanded_47 = tensor.expand_shape %7 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %collapsed_48 = tensor.collapse_shape %0 [[0, 1]] : tensor<12x10xi64> into tensor<120xi64>
        %280 = math.log1p %cst_22 : f32
        %c0_i32 = arith.constant 0 : i32
        %281 = vector.transfer_read %2[%c5, %c0], %c0_i32 : tensor<12x10xi32>, vector<12xi32>
        %282 = arith.shrui %c558059930_i32, %c1145379926_i32 : i32
        %283 = arith.maxui %c2039219675_i32, %c2055695765_i32 : i32
        %284 = arith.andi %c0_i32, %c2055695765_i32 : i32
        %285 = arith.shli %c2063_i16, %c2063_i16 : i16
        %286 = math.rsqrt %from_elements_27 : tensor<14xf16>
        %287 = math.ctlz %c789278739_i32 : i32
        %288 = vector.load %alloc_4[%c1] : memref<12xi16>, vector<12xi16>
        %289 = index.add %76, %159
        %290 = memref.atomic_rmw mins %52, %180[%c1, %c2] : (i16, memref<12x10xi16>) -> i16
        %291 = tensor.empty() : tensor<12x14xi1>
        %292 = linalg.matmul ins(%269, %127 : tensor<12x10xi1>, tensor<10x14xi1>) outs(%291 : tensor<12x14xi1>) -> tensor<12x14xi1>
        %293 = vector.create_mask %289 : vector<14xi1>
        memref.store %cst_22, %alloc_15[%c5] : memref<14xf32>
        %294 = vector.create_mask %211, %206 : vector<10x14xi1>
        %295 = arith.shli %false_28, %false : i1
        %296 = arith.negf %cst_2 : f16
        %297 = vector.broadcast %214 : f32 to vector<12x10xf32>
        %298 = vector.fma %297, %60, %59 : vector<12x10xf32>
        %299 = arith.maxui %false, %false_28 : i1
        %300 = arith.floordivsi %true, %true : i1
        %301 = vector.broadcast %cst_22 : f32 to vector<10xf32>
        %dest_49, %accumulated_value_50 = vector.scan <maxf>, %298, %301 {inclusive = true, reduction_dim = 0 : i64} : vector<12x10xf32>, vector<10xf32>
        %302 = affine.apply affine_map<(d0) -> (0)>(%211)
        %303 = arith.negf %cst_2 : f16
        %304 = index.add %c12, %159
        %305 = affine.load %alloc_5[%c3] : memref<12xi64>
        %306 = math.tan %214 : f32
        memref.assume_alignment %alloc_4, 2 : memref<12xi16>
        memref.alloca_scope.return %false_35 : i1
      }
      %274 = arith.cmpf uno, %cst, %cst : f16
      %275 = arith.divui %false_35, %273 : i1
      %276 = vector.broadcast %cst_22 : f32 to vector<12x10xf32>
      %277 = vector.fma %276, %276, %60 : vector<12x10xf32>
      scf.yield %cst_1 : f16
    }
    %222 = tensor.empty() : tensor<10x10xi64>
    %223 = tensor.empty() : tensor<12x10xi64>
    %224 = linalg.matmul ins(%125, %222 : tensor<12x10xi64>, tensor<10x10xi64>) outs(%223 : tensor<12x10xi64>) -> tensor<12x10xi64>
    %225 = arith.negf %cst_2 : f16
    affine.for %arg0 = 0 to 23 {
    }
    %226 = math.ipowi %c795053815_i64, %c795053815_i64 : i64
    %true_41 = index.bool.constant true
    %227 = vector.broadcast %cst_22 : f32 to vector<12xf32>
    %228 = vector.fma %227, %227, %227 : vector<12xf32>
    %229 = vector.broadcast %214 : f32 to vector<12x10xf32>
    %230 = vector.fma %229, %59, %229 : vector<12x10xf32>
    %231 = index.casts %69 : index to i32
    %232 = scf.while (%arg0 = %153) : (vector<14xi32>) -> vector<14xi32> {
      %258 = math.floor %cst : f16
      %259 = arith.shrui %false_28, %false : i1
      memref.store %214, %alloc_15[%c4] : memref<14xf32>
      %260 = vector.extract %98[13] : vector<14xi32>
      memref.store %c-19420_i16, %alloc_4[%c10] : memref<12xi16>
      %261 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 - 32 + 128)>(%c4, %76, %112)
      %262 = index.casts %c2 : index to i32
      %263 = arith.addi %c558059930_i32, %c1814187417_i32 : i32
      scf.condition(%true_41) %98 : vector<14xi32>
    } do {
    ^bb0(%arg0: vector<14xi32>):
      %258 = arith.remui %c2055695765_i32, %c1145379926_i32 : i32
      %259 = scf.execute_region -> memref<10x14xi64> {
        %expanded_47 = tensor.expand_shape %generated_32 [[0], [1, 2]] : tensor<?x14xi64> into tensor<?x14x1xi64>
        %270 = math.exp2 %from_elements : tensor<12xf32>
        %271 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c2, %45, %107)
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %59, %228 {inclusive = true, reduction_dim = 1 : i64} : vector<12x10xf32>, vector<12xf32>
        %272 = math.expm1 %162 : tensor<14xf16>
        %273 = arith.ceildivsi %c1814187417_i32, %c2055695765_i32 : i32
        %274 = arith.minui %c789278739_i32, %c1145379926_i32 : i32
        %275 = affine.max affine_map<(d0) -> (-((d0 - 2) mod 128 - 8))>(%c4)
        %276 = arith.xori %c-19420_i16, %c2063_i16 : i16
        %inserted_50 = tensor.insert %c214280376_i64 into %223[%c8, %c8] : tensor<12x10xi64>
        %277 = arith.addf %cst, %cst : f16
        %278 = vector.multi_reduction <and>, %33, %33 [] : vector<1xi16> to vector<1xi16>
        %279 = math.tan %214 : f32
        %280 = math.atan2 %from_elements, %from_elements : tensor<12xf32>
        %281 = math.ctlz %12 : tensor<12xi1>
        %282 = arith.remui %c2063_i16, %c2063_i16 : i16
        %alloc_51 = memref.alloc() : memref<10x14xi64>
        scf.yield %alloc_51 : memref<10x14xi64>
      }
      bufferization.dealloc_tensor %6 : tensor<14xi16>
      %260 = arith.subi %true, %false_35 : i1
      %261 = vector.extract %89[4] : vector<14xf32>
      %262 = memref.load %259[%c7, %c12] : memref<10x14xi64>
      %263 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%183, %191, %101)
      scf.execute_region {
        %270 = index.ceildivu %202, %rank
        %false_47 = index.bool.constant false
        %271 = arith.muli %false_35, %false : i1
        %272 = memref.atomic_rmw maxu %c214280376_i64, %alloc_5[%c0] : (i64, memref<12xi64>) -> i64
        %273 = arith.floordivsi %c2063_i16, %c2063_i16 : i16
        %274 = math.atan %117 : f16
        %275 = arith.subi %52, %c2063_i16 : i16
        %276 = arith.remf %cst_0, %cst_2 : f16
        %277 = arith.maxui %c558059930_i32, %c789278739_i32 : i32
        %278 = arith.minsi %c558059930_i32, %c1145379926_i32 : i32
        %279 = math.tan %cst : f16
        %280 = arith.maxsi %true_41, %false_28 : i1
        %281 = arith.minui %false_47, %false : i1
        %expanded_48 = tensor.expand_shape %14 [[0, 1]] : tensor<14xi64> into tensor<14x1xi64>
        %282 = index.ceildivu %c5, %132
        %283 = index.divu %177, %c5
        scf.yield
      }
      %264 = arith.subi %52, %52 : i16
      %265 = arith.minsi %c2063_i16, %52 : i16
      %266 = arith.minui %false_35, %true_41 : i1
      %267 = index.divu %165, %211
      %268 = math.ceil %214 : f32
      %true_45 = index.bool.constant true
      %269 = arith.floordivsi %false_35, %false_28 : i1
      %collapsed_46 = tensor.collapse_shape %expanded_20 [[0, 1], [2]] : tensor<12x10x1xi1> into tensor<120x1xi1>
      scf.yield %100 : vector<14xi32>
    }
    %233 = arith.cmpf true, %cst_22, %cst_22 : f32
    vector.print %197 : vector<12x10xi1>
    %234 = arith.divf %cst_22, %214 : f32
    %235 = index.sub %c9, %c1
    %236 = arith.xori %true, %true_41 : i1
    %237 = arith.subi %52, %c2063_i16 : i16
    %238 = arith.maxui %c789278739_i32, %c558059930_i32 : i32
    %239 = arith.maxsi %c-19420_i16, %c-19420_i16 : i16
    %240 = index.add %105, %c15
    %241 = math.log2 %from_elements : tensor<12xf32>
    %242 = vector.insert %c2063_i16, %18 [11] : i16 into vector<12xi16>
    %243 = memref.alloca_scope  -> (i16) {
      %258 = index.divu %c0, %c8
      %259 = math.log1p %117 : f16
      %260 = math.log10 %from_elements : tensor<12xf32>
      %261 = math.atan %214 : f32
      %262 = arith.remui %false_35, %false : i1
      %from_elements_45 = tensor.from_elements %cst_22, %214, %cst_22, %214, %cst_22, %cst_22, %cst_22, %214, %cst_22, %cst_22, %214, %cst_22 : tensor<12xf32>
      %263 = math.atan %162 : tensor<14xf16>
      %264 = vector.multi_reduction <add>, %90, %205 [] : vector<14xf32> to vector<14xf32>
      memref.tensor_store %9, %alloc_12 : memref<10x14xi32>
      %265 = affine.load %180[%c6, %c3] : memref<12x10xi16>
      %266 = memref.load %alloc_3[%c3] : memref<12xi16>
      %267 = vector.splat %false : vector<12xi1>
      %268 = arith.maxui %c214280376_i64, %c795053815_i64 : i64
      %269 = tensor.empty() : tensor<12x14xi32>
      %270 = linalg.matmul ins(%220, %9 : tensor<12x10xi32>, tensor<10x14xi32>) outs(%269 : tensor<12x14xi32>) -> tensor<12x14xi32>
      %271 = scf.while (%arg0 = %54) : (vector<10x14xi1>) -> vector<10x14xi1> {
        %287 = math.floor %cst_22 : f32
        %288 = arith.andi %false, %true_41 : i1
        %289 = index.add %rank, %112
        %290 = vector.load %alloc_14[%c6] : memref<14xi1>, vector<14xi1>
        %alloc_47 = memref.alloc() : memref<12x10xi64>
        memref.tensor_store %0, %alloc_47 : memref<12x10xi64>
        %291 = math.ctlz %12 : tensor<12xi1>
        %292 = arith.xori %false, %false_28 : i1
        %293 = vector.broadcast %265 : i16 to vector<10x10xi16>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %79, %79, %293 : vector<12x10xi16>, vector<12x10xi16> into vector<10x10xi16>
        scf.condition(%false) %195 : vector<10x14xi1>
      } do {
      ^bb0(%arg0: vector<10x14xi1>):
        %inserted_47 = tensor.insert %c2063_i16 into %91[%c11, %c7] : tensor<14x10xi16>
        %287 = math.ipowi %5, %0 : tensor<12x10xi64>
        %alloc_48 = memref.alloc() : memref<10x14xi64>
        %288 = tensor.empty() : tensor<12x14xi64>
        %289 = linalg.matmul ins(%125, %alloc_48 : tensor<12x10xi64>, memref<10x14xi64>) outs(%288 : tensor<12x14xi64>) -> tensor<12x14xi64>
        %inserted_49 = tensor.insert %false_35 into %15[%c8, %c7] : tensor<12x10xi1>
        affine.store %265, %alloc_9[%c5] : memref<14xi16>
        %inserted_50 = tensor.insert %false_35 into %17[%c4, %c1] : tensor<12x10xi1>
        %c1362902116_i64 = arith.constant 1362902116 : i64
        %290 = math.log %from_elements : tensor<12xf32>
        %291 = math.absf %from_elements_27 : tensor<14xf16>
        %292 = arith.addf %117, %cst_1 : f16
        %293 = vector.multi_reduction <minf>, %205, %90 [] : vector<14xf32> to vector<14xf32>
        %294 = arith.maxui %c1814187417_i32, %c2055695765_i32 : i32
        %295 = tensor.empty() : tensor<10x14xf32>
        %296 = arith.divf %117, %117 : f16
        %297 = math.tan %cst_0 : f16
        %298 = arith.negf %cst_0 : f16
        scf.yield %129 : vector<10x14xi1>
      }
      %272 = math.ceil %from_elements : tensor<12xf32>
      affine.for %arg0 = 0 to 10 {
      }
      %273 = math.exp %214 : f32
      %274 = math.expm1 %214 : f32
      %275 = arith.remui %c-19420_i16, %c2063_i16 : i16
      %276 = vector.broadcast %214 : f32 to vector<12x10xf32>
      %277 = vector.fma %276, %230, %229 : vector<12x10xf32>
      %278 = arith.cmpf uno, %cst_2, %117 : f16
      memref.store %c-19420_i16, %alloc_3[%c1] : memref<12xi16>
      %279 = index.ceildivs %c12, %c1
      %280 = arith.shrui %265, %c2063_i16 : i16
      %281 = affine.apply affine_map<(d0) -> (0)>(%258)
      %282 = vector.broadcast %cst_22 : f32 to vector<12xf32>
      %283 = vector.fma %282, %227, %228 : vector<12xf32>
      %284 = vector.insert %cst_22, %282 [7] : f32 into vector<12xf32>
      %from_elements_46 = tensor.from_elements %c789278739_i32, %c558059930_i32, %c2055695765_i32, %c1814187417_i32, %c2055695765_i32, %c789278739_i32, %c2055695765_i32, %c2039219675_i32, %c558059930_i32, %c1145379926_i32, %c558059930_i32, %c2055695765_i32, %c2039219675_i32, %c1814187417_i32, %c2055695765_i32, %c789278739_i32, %c2055695765_i32, %c1814187417_i32, %c2039219675_i32, %c1145379926_i32, %c1814187417_i32, %c1145379926_i32, %c1145379926_i32, %c2055695765_i32, %c558059930_i32, %c2039219675_i32, %c1814187417_i32, %c2039219675_i32, %c558059930_i32, %c1145379926_i32, %c558059930_i32, %c1814187417_i32, %c558059930_i32, %c558059930_i32, %c1814187417_i32, %c2055695765_i32, %c1145379926_i32, %c789278739_i32, %c2055695765_i32, %c1814187417_i32, %c1145379926_i32, %c558059930_i32, %c2055695765_i32, %c789278739_i32, %c2055695765_i32, %c2039219675_i32, %c2055695765_i32, %c2055695765_i32, %c1814187417_i32, %c1145379926_i32, %c1145379926_i32, %c1814187417_i32, %c1145379926_i32, %c2055695765_i32, %c789278739_i32, %c1814187417_i32, %c558059930_i32, %c789278739_i32, %c1145379926_i32, %c558059930_i32, %c789278739_i32, %c1814187417_i32, %c2039219675_i32, %c789278739_i32, %c2055695765_i32, %c2039219675_i32, %c2055695765_i32, %c789278739_i32, %c789278739_i32, %c1145379926_i32, %c2055695765_i32, %c2055695765_i32, %c2055695765_i32, %c2055695765_i32, %c789278739_i32, %c2039219675_i32, %c789278739_i32, %c2055695765_i32, %c1814187417_i32, %c2055695765_i32, %c789278739_i32, %c1145379926_i32, %c789278739_i32, %c789278739_i32, %c1814187417_i32, %c2039219675_i32, %c1145379926_i32, %c1814187417_i32, %c1814187417_i32, %c1145379926_i32, %c789278739_i32, %c1814187417_i32, %c558059930_i32, %c789278739_i32, %c789278739_i32, %c2055695765_i32, %c2055695765_i32, %c789278739_i32, %c789278739_i32, %c558059930_i32, %c1814187417_i32, %c1145379926_i32, %c2039219675_i32, %c789278739_i32, %c1145379926_i32, %c1814187417_i32, %c2039219675_i32, %c789278739_i32, %c1814187417_i32, %c2039219675_i32, %c1145379926_i32, %c2039219675_i32, %c1814187417_i32, %c1145379926_i32, %c1145379926_i32, %c1814187417_i32, %c2039219675_i32, %c2039219675_i32, %c1145379926_i32, %c789278739_i32, %c2039219675_i32, %c1145379926_i32, %c558059930_i32, %c789278739_i32, %c1814187417_i32, %c1814187417_i32, %c789278739_i32, %c1814187417_i32, %c789278739_i32, %c558059930_i32, %c2039219675_i32, %c2055695765_i32, %c789278739_i32, %c1814187417_i32, %c2039219675_i32, %c1145379926_i32, %c2055695765_i32, %c558059930_i32, %c558059930_i32, %c1145379926_i32 : tensor<10x14xi32>
      %285 = math.cttz %13 : tensor<14xi64>
      memref.store %52, %alloc_3[%c6] : memref<12xi16>
      %286 = arith.remui %c2055695765_i32, %c558059930_i32 : i32
      memref.alloca_scope.return %265 : i16
    }
    %244 = arith.minsi %false, %true : i1
    %245 = vector.gather %10[%183] [%128], %195, %195 : tensor<14xi1>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi1> into vector<10x14xi1>
    %246 = index.maxs %211, %53
    %expanded_42 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<12x10xi1> into tensor<12x10x1xi1>
    %247 = arith.addf %214, %cst_22 : f32
    %248 = math.rsqrt %117 : f16
    %generated_43 = tensor.generate %rank, %246 {
    ^bb0(%arg0: index, %arg1: index):
      %258 = arith.addf %cst_1, %cst : f16
      %259 = index.ceildivs %c6, %c9
      %260 = affine.apply affine_map<(d0, d1) -> (d1 - (d1 - 32))>(%c4, %53)
      %261 = math.tan %162 : tensor<14xf16>
      tensor.yield %c558059930_i32 : i32
    } : tensor<?x?xi32>
    memref.assume_alignment %alloc_4, 8 : memref<12xi16>
    %249 = index.sub %159, %c6
    %250 = arith.subi %false_35, %false_28 : i1
    %251 = arith.remsi %false, %false_35 : i1
    %252 = math.log %from_elements : tensor<12xf32>
    %253 = tensor.empty() : tensor<12x10xi64>
    %254 = linalg.copy ins(%223 : tensor<12x10xi64>) outs(%253 : tensor<12x10xi64>) -> tensor<12x10xi64>
    %255 = tensor.empty() : tensor<1x12xi32>
    %transposed = linalg.transpose ins(%expanded_37 : tensor<12x1xi32>) outs(%255 : tensor<1x12xi32>) permutation = [1, 0] 
    %alloc_44 = memref.alloc() : memref<i64>
    linalg.reduce ins(%13 : tensor<14xi64>) outs(%alloc_44 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        bufferization.dealloc_tensor %80 : tensor<i16>
        %258 = arith.minsi %c2055695765_i32, %c1145379926_i32 : i32
        %259 = affine.max affine_map<(d0, d1, d2) -> (d1 - 32, d1 * -2)>(%105, %62, %132)
        %260 = arith.divui %false, %false_28 : i1
        %261 = math.log2 %cst_2 : f16
        %262 = math.ceil %214 : f32
        %263 = arith.floordivsi %c214280376_i64, %in : i64
        %264 = affine.for %arg0 = 0 to 38 iter_args(%arg1 = %18) -> (vector<12xi16>) {
          affine.yield %18 : vector<12xi16>
        }
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %256 = scf.parallel (%arg0) = (%206) to (%45) step (%c6) init (%1) -> tensor<14xi64> {
      %258 = index.ceildivs %109, %107
      %259 = affine.load %alloc_26[%c2] : memref<14xi32>
      %260 = vector.flat_transpose %124 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
      %261 = arith.andi %52, %52 : i16
      memref.alloca_scope  {
        %270 = math.copysign %cst_22, %214 : f32
        %271 = index.divs %202, %c9
        %272 = index.divu %c9, %c12
        memref.tensor_store %11, %alloc_14 : memref<14xi1>
        %273 = arith.maxui %c214280376_i64, %c795053815_i64 : i64
        %collapsed_48 = tensor.collapse_shape %16 [[0, 1]] : tensor<12x10xi1> into tensor<120xi1>
        %274 = arith.andi %c2055695765_i32, %c558059930_i32 : i32
        %275 = math.roundeven %162 : tensor<14xf16>
        %alloc_49 = memref.alloc() : memref<12x10xi32>
        memref.tensor_store %2, %alloc_49 : memref<12x10xi32>
        %276 = arith.minsi %c558059930_i32, %c2055695765_i32 : i32
        %splat_50 = tensor.splat %c789278739_i32 : tensor<12xi32>
        %277 = vector.multi_reduction <add>, %188, %cst_22 [0] : vector<1xf32> to f32
        %278 = vector.broadcast %c2063_i16 : i16 to vector<1x1xi16>
        %279 = vector.outerproduct %33, %146, %278 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
        %280 = vector.broadcast %c558059930_i32 : i32 to vector<10xi32>
        %281 = vector.multi_reduction <minsi>, %128, %280 [1] : vector<10x14xi32> to vector<10xi32>
        %282 = math.fma %cst_0, %117, %cst_2 : f16
        %283 = arith.negf %117 : f16
        %284 = tensor.empty() : tensor<10x14xi64>
        %285 = tensor.empty() : tensor<12x14xi64>
        %286 = linalg.matmul ins(%5, %284 : tensor<12x10xi64>, tensor<10x14xi64>) outs(%285 : tensor<12x14xi64>) -> tensor<12x14xi64>
        %287 = index.ceildivs %211, %258
        %288 = vector.load %alloc_10[%c4, %c0] : memref<10x14xf32>, vector<14xf32>
        %289 = math.atan2 %cst_22, %cst_22 : f32
        %290 = math.rsqrt %from_elements : tensor<12xf32>
        %291 = vector.load %alloc_15[%c5] : memref<14xf32>, vector<10x14xf32>
        %292 = vector.extract %204[1] : vector<14xf32>
        memref.assume_alignment %alloc_18, 2 : memref<10x12xi64>
        bufferization.dealloc_tensor %17 : tensor<12x10xi1>
        %293 = arith.addi %c2039219675_i32, %259 : i32
        %294 = index.divs %c14, %c1
        %295 = vector.broadcast %277 : f32 to vector<12xf32>
        %296 = vector.fma %295, %228, %295 : vector<12xf32>
        affine.store %extracted, %alloc_44[] : memref<i64>
        %cst_51 = arith.constant 1.261600e+04 : f16
        %297 = affine.max affine_map<(d0, d1, d2) -> (d0, -d1, d0 + d1, d0 + d1)>(%c12, %75, %294)
        %298 = math.round %214 : f32
      }
      %alloc_45 = memref.alloc() : memref<12x1xi32>
      memref.tensor_store %expanded_21, %alloc_45 : memref<12x1xi32>
      %262 = vector.multi_reduction <add>, %188, %cst_22 [0] : vector<1xf32> to f32
      %263 = arith.ceildivsi %false_28, %true_41 : i1
      %264 = arith.xori %c1145379926_i32, %c2039219675_i32 : i32
      %265 = arith.shli %extracted, %c214280376_i64 : i64
      %c1_i32 = arith.constant 1 : i32
      %266 = vector.transfer_read %transposed[%183, %191], %c1_i32 : tensor<1x12xi32>, vector<12xi32>
      %splat = tensor.splat %c214280376_i64 : tensor<14xi64>
      %267 = scf.index_switch %105 -> tensor<10x14xi64> 
      case 1 {
        %270 = vector.create_mask %211 : vector<14xi1>
        %271 = index.sub %206, %c11
        %272 = math.log2 %162 : tensor<14xf16>
        %273 = arith.cmpi eq, %true, %true_41 : i1
        %274 = arith.ceildivsi %extracted, %c214280376_i64 : i64
        %275 = vector.load %alloc_16[%c9, %c5] : memref<10x14xf32>, vector<10x14xf32>
        %276 = math.tan %162 : tensor<14xf16>
        %277 = arith.cmpi uge, %c2055695765_i32, %c1_i32 : i32
        %278 = arith.subi %c2055695765_i32, %c1814187417_i32 : i32
        %279 = math.exp %cst_0 : f16
        %280 = tensor.empty() : tensor<14xf16>
        %expanded_48 = tensor.expand_shape %generated_36 [[0], [1, 2]] : tensor<?x10xf16> into tensor<?x10x1xf16>
        %alloc_49 = memref.alloc() : memref<12x10xi32>
        memref.tensor_store %2, %alloc_49 : memref<12x10xi32>
        %281 = arith.shrui %false_35, %true : i1
        %282 = vector.maskedload %alloc_8[%c1], %99, %260 : memref<12xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %283 = arith.negf %cst_22 : f32
        %284 = tensor.empty() : tensor<10x14xi64>
        scf.yield %284 : tensor<10x14xi64>
      }
      default {
        %dest_48, %accumulated_value_49 = vector.scan <xor>, %197, %40 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xi1>, vector<12xi1>
        %270 = math.atan2 %cst_2, %cst_2 : f16
        %271 = arith.remf %cst_22, %262 : f32
        %272 = arith.remf %262, %214 : f32
        %273 = index.maxu %137, %c7
        %274 = arith.floordivsi %c2063_i16, %c-19420_i16 : i16
        %275 = math.rsqrt %cst_2 : f16
        %276 = math.atan2 %cst_22, %cst_22 : f32
        %277 = math.ceil %cst_22 : f32
        %278 = arith.maxui %extracted, %c795053815_i64 : i64
        %279 = vector.broadcast %c2039219675_i32 : i32 to vector<10xi32>
        %dest_50, %accumulated_value_51 = vector.scan <minsi>, %128, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<10x14xi32>, vector<10xi32>
        %from_elements_52 = tensor.from_elements %c1145379926_i32, %c1_i32, %c2055695765_i32, %c789278739_i32, %c2055695765_i32, %c558059930_i32, %c1145379926_i32, %c2055695765_i32, %259, %c2055695765_i32, %c1_i32, %c2039219675_i32, %c2055695765_i32, %c2055695765_i32 : tensor<14xi32>
        %280 = index.maxs %45, %c10
        %281 = vector.load %alloc_7[%c4, %c0] : memref<12x10xi16>, vector<12x10xi16>
        %282 = math.tan %cst_2 : f16
        %283 = vector.transpose %153, [0] : vector<14xi32> to vector<14xi32>
        %284 = tensor.empty() : tensor<10x14xi64>
        scf.yield %284 : tensor<10x14xi64>
      }
      %false_46 = index.bool.constant false
      %268 = vector.insert %214, %227 [4] : f32 into vector<12xf32>
      %splat_47 = tensor.splat %false_46 : tensor<10x14xi1>
      %269 = tensor.empty() : tensor<14xi64>
      scf.reduce(%269)  : tensor<14xi64> {
      ^bb0(%arg1: tensor<14xi64>, %arg2: tensor<14xi64>):
        %270 = affine.load %alloc_14[%c8] : memref<14xi1>
        affine.store %extracted, %alloc_18[%c0, %c5] : memref<10x12xi64>
        %271 = vector.multi_reduction <minf>, %89, %214 [0] : vector<14xf32> to f32
        %272 = memref.realloc %alloc_5 : memref<12xi64> to memref<14xi64>
        %273 = math.ctlz %122 : tensor<10x10xi32>
        %274 = index.divs %c6, %76
        %rank_48 = tensor.rank %13 : tensor<14xi64>
        %275 = vector.splat %false_28 : vector<10x14xi1>
        %276 = tensor.empty() : tensor<14xi64>
        scf.reduce.return %276 : tensor<14xi64>
      }
      scf.yield
    }
    %257 = affine.vector_load %alloc_19[] : memref<i16>, vector<10xi16>
    affine.vector_store %90, %alloc_10[%c6, %c3] : memref<10x14xf32>, vector<14xf32>
    vector.print %18 : vector<12xi16>
    vector.print %33 : vector<1xi16>
    vector.print %40 : vector<12xi1>
    vector.print %54 : vector<10x14xi1>
    vector.print %59 : vector<12x10xf32>
    vector.print %60 : vector<12x10xf32>
    vector.print %79 : vector<12x10xi16>
    vector.print %89 : vector<14xf32>
    vector.print %90 : vector<14xf32>
    vector.print %98 : vector<14xi32>
    vector.print %99 : vector<14xi1>
    vector.print %100 : vector<14xi32>
    vector.print %111 : vector<12xi1>
    vector.print %119 : vector<14xi16>
    vector.print %124 : vector<14xi16>
    vector.print %128 : vector<10x14xi32>
    vector.print %129 : vector<10x14xi1>
    vector.print %146 : vector<1xi16>
    vector.print %153 : vector<14xi32>
    vector.print %188 : vector<1xf32>
    vector.print %195 : vector<10x14xi1>
    vector.print %197 : vector<12x10xi1>
    vector.print %204 : vector<14xf32>
    vector.print %205 : vector<14xf32>
    vector.print %227 : vector<12xf32>
    vector.print %228 : vector<12xf32>
    vector.print %229 : vector<12x10xf32>
    vector.print %230 : vector<12x10xf32>
    vector.print %245 : vector<10x14xi1>
    vector.print %257 : vector<10xi16>
    vector.print %false : i1
    vector.print %c214280376_i64 : i64
    vector.print %c558059930_i32 : i32
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %c789278739_i32 : i32
    vector.print %c795053815_i64 : i64
    vector.print %c-19420_i16 : i16
    vector.print %c2039219675_i32 : i32
    vector.print %c1145379926_i32 : i32
    vector.print %true : i1
    vector.print %c1814187417_i32 : i32
    vector.print %cst_2 : f16
    vector.print %c2055695765_i32 : i32
    vector.print %c2063_i16 : i16
    vector.print %52 : i16
    vector.print %cst_22 : f32
    vector.print %117 : f16
    vector.print %false_28 : i1
    vector.print %extracted : i64
    vector.print %false_35 : i1
    vector.print %214 : f32
    vector.print %true_41 : i1
    vector.print %243 : i16
    return
  }
}
