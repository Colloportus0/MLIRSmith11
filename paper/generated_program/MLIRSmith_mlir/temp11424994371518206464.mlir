module {
  func.func nested @func1(%arg0: f16, %arg1: tensor<12x5xi1>, %arg2: f32) {
    %c1951840860_i32 = arith.constant 1951840860 : i32
    %cst = arith.constant 2.318400e+04 : f16
    %c4038_i16 = arith.constant 4038 : i16
    %cst_0 = arith.constant 3.025600e+04 : f16
    %cst_1 = arith.constant 0x4E2C76F2 : f32
    %cst_2 = arith.constant 1.78534592E+9 : f32
    %c2134733142_i64 = arith.constant 2134733142 : i64
    %c564672457_i64 = arith.constant 564672457 : i64
    %c904166608_i32 = arith.constant 904166608 : i32
    %c28853_i16 = arith.constant 28853 : i16
    %true = arith.constant true
    %c820043274_i64 = arith.constant 820043274 : i64
    %cst_3 = arith.constant 1.59643174E+9 : f32
    %c1518_i16 = arith.constant 1518 : i16
    %c100638827_i32 = arith.constant 100638827 : i32
    %cst_4 = arith.constant 0x4E06B6E6 : f32
    %0 = tensor.empty() : tensor<5x6xi1>
    %1 = tensor.empty() : tensor<12x5xf16>
    %2 = tensor.empty() : tensor<5x6xi32>
    %3 = tensor.empty() : tensor<12x5xi32>
    %4 = tensor.empty() : tensor<6x6xi32>
    %5 = tensor.empty() : tensor<6x6xf32>
    %6 = tensor.empty() : tensor<9x9xf16>
    %7 = tensor.empty() : tensor<6x6xf16>
    %8 = tensor.empty() : tensor<12x5xf16>
    %9 = tensor.empty() : tensor<5x6xi32>
    %10 = tensor.empty() : tensor<6x6xi64>
    %11 = tensor.empty() : tensor<9x9xi32>
    %12 = tensor.empty() : tensor<9x9xi64>
    %13 = tensor.empty() : tensor<5x6xf16>
    %14 = tensor.empty() : tensor<9x9xi16>
    %15 = tensor.empty() : tensor<5x6xi1>
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
    %alloc = memref.alloc() : memref<6x6xi64>
    %alloc_5 = memref.alloc() : memref<6x6xf16>
    %alloc_6 = memref.alloc() : memref<12x5xf32>
    %alloc_7 = memref.alloc() : memref<6x6xf32>
    %alloc_8 = memref.alloc() : memref<9x9xi32>
    %alloc_9 = memref.alloc() : memref<12x5xi1>
    %alloc_10 = memref.alloc() : memref<6x6xf16>
    %alloc_11 = memref.alloc() : memref<12x5xi32>
    %alloc_12 = memref.alloc() : memref<9x9xf32>
    %alloc_13 = memref.alloc() : memref<12x5xf32>
    %alloc_14 = memref.alloc() : memref<9x9xi32>
    %alloc_15 = memref.alloc() : memref<9x9xi64>
    %alloc_16 = memref.alloc() : memref<5x6xi1>
    %alloc_17 = memref.alloc() : memref<9x9xi16>
    %alloc_18 = memref.alloc() : memref<6x6xi1>
    %alloc_19 = memref.alloc() : memref<9x9xf16>
    %16 = tensor.empty() : tensor<5x6xi32>
    %17 = linalg.copy ins(%2 : tensor<5x6xi32>) outs(%16 : tensor<5x6xi32>) -> tensor<5x6xi32>
    %alloc_20 = memref.alloc() : memref<9x9xi32>
    linalg.transpose ins(%11 : tensor<9x9xi32>) outs(%alloc_20 : memref<9x9xi32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<6xi1>
    %reduced = linalg.reduce ins(%alloc_18 : memref<6x6xi1>) outs(%18 : tensor<6xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %260 = affine.max affine_map<(d0, d1, d2, d3) -> (((d1 ceildiv 16) * 64 + 8) ceildiv 128, d3)>(%c15, %c7, %c13, %c9)
        %261 = vector.broadcast %cst_1 : f32 to vector<12x5xf32>
        %262 = vector.transpose %261, [0, 1] : vector<12x5xf32> to vector<12x5xf32>
        %263 = affine.min affine_map<(d0) -> (-d0 + 8)>(%c11)
        %264 = arith.cmpi uge, %init, %init : i1
        %265 = vector.broadcast %c9 : index to vector<6xindex>
        %266 = vector.broadcast %in : i1 to vector<6xi1>
        %267 = vector.broadcast %c820043274_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_15[%c5, %c7] [%265], %266, %267 : memref<9x9xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        %268 = arith.shli %c28853_i16, %c1518_i16 : i16
        %269 = tensor.empty() : tensor<6x6xi64>
        %270 = linalg.matmul ins(%10, %10 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%269 : tensor<6x6xi64>) -> tensor<6x6xi64>
        %271 = affine.for %arg3 = 0 to 9 iter_args(%arg4 = %alloc_15) -> (memref<9x9xi64>) {
          affine.yield %arg4 : memref<9x9xi64>
        }
        %true_39 = arith.constant true
        linalg.yield %true_39 : i1
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c5, %c12) to (%c2, %c14) step (%c8, %c2) init (%reduced) -> tensor<6xi1> {
      affine.store %c820043274_i64, %alloc[%c13, %c12] : memref<6x6xi64>
      %extracted_39 = tensor.extract %7[%c3, %c0] : tensor<6x6xf16>
      %260 = math.ceil %8 : tensor<12x5xf16>
      %261 = vector.broadcast %c820043274_i64 : i64 to vector<5xi64>
      %262 = vector.reduction <maxui>, %261 : vector<5xi64> into i64
      %263 = arith.divf %cst_2, %cst_1 : f32
      %264 = math.copysign %7, %7 : tensor<6x6xf16>
      %265 = scf.while (%arg5 = %true) : (i1) -> i1 {
        %275 = arith.shli %c904166608_i32, %c904166608_i32 : i32
        %276 = arith.shli %c1951840860_i32, %c904166608_i32 : i32
        %277 = index.sizeof
        %278 = math.roundeven %7 : tensor<6x6xf16>
        %279 = math.copysign %8, %8 : tensor<12x5xf16>
        %280 = arith.andi %c904166608_i32, %c1951840860_i32 : i32
        %281 = math.ctpop %c564672457_i64 : i64
        %282 = arith.remsi %c4038_i16, %c4038_i16 : i16
        scf.condition(%true) %true : i1
      } do {
      ^bb0(%arg5: i1):
        %275 = vector.broadcast %cst_0 : f16 to vector<6x6xf16>
        %276 = math.ctpop %2 : tensor<5x6xi32>
        %277 = arith.shli %c28853_i16, %c28853_i16 : i16
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %275, %275, %275 : vector<6x6xf16>, vector<6x6xf16> into vector<6x6xf16>
        %279 = math.fma %1, %1, %1 : tensor<12x5xf16>
        %280 = arith.remf %cst_0, %extracted_39 : f16
        %collapsed_40 = tensor.collapse_shape %1 [[0, 1]] : tensor<12x5xf16> into tensor<60xf16>
        %splat_41 = tensor.splat %cst_1 : tensor<12x5xf32>
        %281 = index.floordivs %c1, %c0
        %282 = tensor.empty() : tensor<12x5xf32>
        %283 = arith.divsi %c4038_i16, %c4038_i16 : i16
        %284 = vector.broadcast %cst_1 : f32 to vector<12xf32>
        %285 = vector.broadcast %cst_1 : f32 to vector<12x12xf32>
        %286 = vector.outerproduct %284, %284, %285 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
        %extracted_42 = tensor.extract %1[%c4, %c0] : tensor<12x5xf16>
        %287 = affine.load %alloc_17[%c13, %c15] : memref<9x9xi16>
        bufferization.dealloc_tensor %12 : tensor<9x9xi64>
        %288 = arith.cmpf une, %cst_1, %cst_3 : f32
        scf.yield %arg5 : i1
      }
      %266 = math.roundeven %extracted_39 : f16
      %267 = arith.divsi %c2134733142_i64, %c564672457_i64 : i64
      %268 = math.rsqrt %1 : tensor<12x5xf16>
      %269 = index.ceildivu %c5, %c2
      %270 = arith.divui %c1951840860_i32, %c100638827_i32 : i32
      %271 = vector.broadcast %c564672457_i64 : i64 to vector<9x9xi64>
      %272 = math.log %cst_4 : f32
      %273 = vector.extract_strided_slice %271 {offsets = [1], sizes = [5], strides = [1]} : vector<9x9xi64> to vector<5x9xi64>
      affine.store %c100638827_i32, %alloc_8[%c7, %c9] : memref<9x9xi32>
      %274 = tensor.empty() : tensor<6xi1>
      scf.reduce(%274)  : tensor<6xi1> {
      ^bb0(%arg5: tensor<6xi1>, %arg6: tensor<6xi1>):
        %275 = index.casts %269 : index to i32
        %276 = math.round %7 : tensor<6x6xf16>
        %277 = arith.remf %cst_4, %cst_4 : f32
        %rank_40 = tensor.rank %5 : tensor<6x6xf32>
        %278 = index.floordivs %c14, %269
        %279 = index.add %c5, %c14
        %280 = math.roundeven %6 : tensor<9x9xf16>
        %281 = index.divs %c4, %arg4
        %282 = tensor.empty() : tensor<6xi1>
        scf.reduce.return %282 : tensor<6xi1>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_18[%c7, %c4] : memref<6x6xi1>, vector<5xi1>
    affine.vector_store %20, %alloc_18[%c8, %c12] : memref<6x6xi1>, vector<5xi1>
    %alloc_21 = memref.alloc() : memref<6xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%18, %alloc_21 : tensor<6xi1>, memref<6xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    %23 = vector.splat %c1 : vector<5x6xindex>
    %24 = vector.matrix_multiply %20, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
    %25 = vector.broadcast %true : i1 to vector<5xi1>
    %26 = vector.transfer_write %25, %15[%c15, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi1>, tensor<5x6xi1>
    %27 = arith.ceildivsi %c564672457_i64, %c820043274_i64 : i64
    %28 = math.sqrt %cst_2 : f32
    %29 = index.maxs %c1, %c14
    %30 = math.ipowi %10, %10 : tensor<6x6xi64>
    %31 = math.tanh %cst_4 : f32
    %32 = math.roundeven %6 : tensor<9x9xf16>
    %33 = arith.shli %c1518_i16, %c28853_i16 : i16
    %34 = index.ceildivu %c1, %c11
    %35 = math.log %5 : tensor<6x6xf32>
    %36 = vector.matrix_multiply %20, %25 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
    %37 = tensor.empty() : tensor<12x5xi64>
    %38 = arith.divui %c564672457_i64, %c820043274_i64 : i64
    %39 = arith.shli %true, %true : i1
    %40 = arith.ori %c28853_i16, %c28853_i16 : i16
    %41 = math.powf %8, %8 : tensor<12x5xf16>
    %42 = affine.max affine_map<(d0, d1, d2) -> (0, d2 - 128)>(%c12, %c0, %c6)
    %43 = arith.xori %c2134733142_i64, %c564672457_i64 : i64
    %44 = arith.maxsi %c100638827_i32, %c1951840860_i32 : i32
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<9x9xi32> into tensor<81xi32>
    %45 = bufferization.clone %alloc_20 : memref<9x9xi32> to memref<9x9xi32>
    %46 = math.round %13 : tensor<5x6xf16>
    affine.store %c1518_i16, %alloc_17[%c1, %c14] : memref<9x9xi16>
    %47 = math.floor %7 : tensor<6x6xf16>
    %48 = vector.broadcast %c13 : index to vector<12xindex>
    %49 = vector.broadcast %true : i1 to vector<12xi1>
    %50 = vector.broadcast %c2134733142_i64 : i64 to vector<12xi64>
    vector.scatter %alloc_15[%c5, %c8] [%48], %49, %50 : memref<9x9xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
    %51 = arith.minui %c1951840860_i32, %c904166608_i32 : i32
    %rank = tensor.rank %7 : tensor<6x6xf16>
    %52 = math.ipowi %2, %9 : tensor<5x6xi32>
    %alloc_22 = memref.alloc() : memref<6x6xi1>
    %53 = bufferization.clone %alloc_15 : memref<9x9xi64> to memref<9x9xi64>
    %54 = vector.transpose %24, [0] : vector<1xi1> to vector<1xi1>
    %55 = tensor.empty() : tensor<6x6xf32>
    memref.copy %alloc_15, %53 : memref<9x9xi64> to memref<9x9xi64>
    %56 = arith.cmpi uge, %c4038_i16, %c28853_i16 : i16
    %57 = math.round %cst : f16
    %58 = math.tanh %8 : tensor<12x5xf16>
    %59 = arith.divui %c4038_i16, %c4038_i16 : i16
    %60 = arith.minui %c904166608_i32, %c1951840860_i32 : i32
    %61 = vector.splat %cst_4 : vector<9x9xf32>
    affine.store %cst_0, %alloc_19[%c0, %c2] : memref<9x9xf16>
    %62 = vector.insertelement %true, %25[%rank : index] : vector<5xi1>
    %generated = tensor.generate %rank, %42 {
    ^bb0(%arg3: index, %arg4: index):
      %260 = vector.load %alloc_8[%c1, %c1] : memref<9x9xi32>, vector<12x5xi32>
      %261 = math.cttz %9 : tensor<5x6xi32>
      %262 = arith.andi %c1518_i16, %c4038_i16 : i16
      %263 = vector.multi_reduction <minui>, %260, %260 [] : vector<12x5xi32> to vector<12x5xi32>
      tensor.yield %c820043274_i64 : i64
    } : tensor<?x?xi64>
    %63 = arith.xori %c1951840860_i32, %c1951840860_i32 : i32
    %64 = vector.shuffle %24, %20 [1, 2, 4, 5] : vector<1xi1>, vector<5xi1>
    %65 = vector.transpose %36, [0] : vector<1xi1> to vector<1xi1>
    %66 = index.ceildivs %c6, %c8
    %67 = arith.minf %cst_1, %cst_3 : f32
    %68 = math.copysign %cst_0, %cst_0 : f16
    %69 = math.ceil %6 : tensor<9x9xf16>
    %70 = vector.flat_transpose %24 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %71 = math.rsqrt %cst_3 : f32
    %72 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d3 floordiv 8, d3 floordiv 8, d0 mod 16 - 2)>(%c13, %c5, %c5, %c15)
    %73 = index.ceildivu %c10, %c11
    memref.copy %alloc_10, %alloc_5 : memref<6x6xf16> to memref<6x6xf16>
    %74 = math.floor %55 : tensor<6x6xf32>
    %collapsed_23 = tensor.collapse_shape %12 [[0, 1]] : tensor<9x9xi64> into tensor<81xi64>
    %75 = math.rsqrt %55 : tensor<6x6xf32>
    %76 = arith.ceildivsi %c1951840860_i32, %c1951840860_i32 : i32
    %77 = vector.reduction <or>, %36 : vector<1xi1> into i1
    %78 = index.sizeof
    %79 = tensor.empty() : tensor<5x6xi64>
    %80 = math.ipowi %18, %18 : tensor<6xi1>
    %81 = math.round %8 : tensor<12x5xf16>
    %82 = arith.minui %c1951840860_i32, %c100638827_i32 : i32
    %83 = vector.broadcast %cst_4 : f32 to vector<12x5xf32>
    %84 = vector.fma %83, %83, %83 : vector<12x5xf32>
    %85 = vector.insert %true, %20 [1] : i1 into vector<5xi1>
    %86 = arith.remui %c4038_i16, %c28853_i16 : i16
    %87 = arith.cmpf une, %cst_3, %cst_3 : f32
    %88 = arith.maxsi %c2134733142_i64, %c820043274_i64 : i64
    %alloc_24 = memref.alloc() : memref<12x5xf16>
    %89 = math.cttz %c4038_i16 : i16
    %90 = math.round %7 : tensor<6x6xf16>
    %91 = arith.cmpi sle, %c1951840860_i32, %c1951840860_i32 : i32
    %92 = bufferization.clone %alloc_15 : memref<9x9xi64> to memref<9x9xi64>
    memref.alloca_scope  {
      %260 = arith.shrsi %c100638827_i32, %c1951840860_i32 : i32
      %261 = memref.realloc %alloc_21 : memref<6xi1> to memref<12xi1>
      %262 = affine.load %alloc_12[%c11, %c1] : memref<9x9xf32>
      %263 = index.sub %c0, %c14
      %264 = arith.maxf %cst_2, %cst_3 : f32
      %alloc_39 = memref.alloc() : memref<5x6xi1>
      %265 = arith.divf %cst_0, %cst : f16
      %266 = arith.cmpi sge, %c2134733142_i64, %c564672457_i64 : i64
      %267 = arith.andi %c100638827_i32, %c904166608_i32 : i32
      %268 = arith.xori %c1518_i16, %c28853_i16 : i16
      %269 = index.floordivs %263, %c10
      %from_elements_40 = tensor.from_elements %c28853_i16, %c28853_i16, %c28853_i16, %c1518_i16, %c1518_i16, %c28853_i16, %c1518_i16, %c1518_i16, %c1518_i16, %c1518_i16, %c1518_i16, %c4038_i16, %c1518_i16, %c1518_i16, %c1518_i16, %c4038_i16, %c1518_i16, %c28853_i16, %c28853_i16, %c4038_i16, %c4038_i16, %c4038_i16, %c1518_i16, %c28853_i16, %c4038_i16, %c4038_i16, %c28853_i16, %c4038_i16, %c1518_i16, %c28853_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c4038_i16, %c1518_i16, %c28853_i16 : tensor<6x6xi16>
      %270 = vector.create_mask %72, %c10 : vector<6x6xi1>
      %271 = bufferization.to_memref %21 : memref<i1>
      %272 = index.ceildivu %c13, %34
      memref.assume_alignment %alloc_17, 2 : memref<9x9xi16>
      %273 = arith.cmpi eq, %c820043274_i64, %c564672457_i64 : i64
      %274 = vector.transpose %25, [0] : vector<5xi1> to vector<5xi1>
      %generated_41 = tensor.generate %c15 {
      ^bb0(%arg3: index, %arg4: index):
        %284 = vector.splat %263 : vector<9x9xindex>
        %285 = arith.cmpi slt, %c904166608_i32, %c100638827_i32 : i32
        %286 = index.maxu %c1, %c13
        %collapsed_45 = tensor.collapse_shape %10 [[0, 1]] : tensor<6x6xi64> into tensor<36xi64>
        tensor.yield %true : i1
      } : tensor<?x6xi1>
      %275 = math.cos %8 : tensor<12x5xf16>
      %true_42 = index.bool.constant true
      %276 = bufferization.to_memref %13 : memref<5x6xf16>
      %alloc_43 = memref.alloc() : memref<6x6xi64>
      memref.copy %alloc, %alloc_43 : memref<6x6xi64> to memref<6x6xi64>
      %277 = arith.muli %c1518_i16, %c1518_i16 : i16
      %278 = vector.flat_transpose %25 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %279 = math.fpowi %5, %4 : tensor<6x6xf32>, tensor<6x6xi32>
      affine.store %c100638827_i32, %45[%c9, %c3] : memref<9x9xi32>
      %280 = vector.extract %24[0] : vector<1xi1>
      %281 = math.ctlz %10 : tensor<6x6xi64>
      %false_44 = index.bool.constant false
      %282 = bufferization.to_tensor %92 : memref<9x9xi64>
      %283 = math.log %7 : tensor<6x6xf16>
    }
    %93 = arith.shli %c1518_i16, %c4038_i16 : i16
    %94 = math.absi %3 : tensor<12x5xi32>
    %collapsed_25 = tensor.collapse_shape %4 [[0, 1]] : tensor<6x6xi32> into tensor<36xi32>
    %95 = tensor.empty(%66) : tensor<6x?xf32>
    %96 = math.copysign %5, %55 : tensor<6x6xf32>
    %97 = math.absf %13 : tensor<5x6xf16>
    %true_26 = index.bool.constant true
    %98 = affine.max affine_map<(d0, d1, d2) -> (d2 + d1, ((d2 floordiv 4) * 128 + 191) * 32)>(%rank, %66, %c7)
    %alloc_27 = memref.alloc() : memref<6x6xi32>
    %99 = tensor.empty() : tensor<5x6xf16>
    %100 = arith.cmpi ule, %c904166608_i32, %c904166608_i32 : i32
    %101 = arith.maxui %c1518_i16, %c1518_i16 : i16
    %102 = math.round %1 : tensor<12x5xf16>
    %103 = vector.broadcast %cst_4 : f32 to vector<5x5xf32>
    %104 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %84, %83, %103 : vector<12x5xf32>, vector<12x5xf32> into vector<5x5xf32>
    %105 = bufferization.to_memref %1 : memref<12x5xf16>
    %106 = vector.broadcast %cst : f16 to vector<5x6xf16>
    %107 = vector.multi_reduction <add>, %106, %106 [] : vector<5x6xf16> to vector<5x6xf16>
    %108 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %25, %20, %true_26 : vector<5xi1>, vector<5xi1> into i1
    %109 = index.casts %c100638827_i32 : i32 to index
    %110 = scf.index_switch %78 -> memref<9x9xi32> 
    case 1 {
      %true_39 = index.bool.constant true
      %260 = scf.index_switch %73 -> index 
      case 1 {
        memref.copy %alloc_5, %alloc_10 : memref<6x6xf16> to memref<6x6xf16>
        %275 = arith.cmpi slt, %c1518_i16, %c28853_i16 : i16
        %276 = arith.divsi %c1951840860_i32, %c1951840860_i32 : i32
        %277 = vector.bitcast %106 : vector<5x6xf16> to vector<5x6xi16>
        %extracted_40 = tensor.extract %4[%c0, %c5] : tensor<6x6xi32>
        %278 = arith.ori %extracted_40, %c100638827_i32 : i32
        %279 = arith.divsi %true, %true_26 : i1
        %280 = vector.broadcast %cst_0 : f16 to vector<12x5xf16>
        %281 = vector.transpose %84, [1, 0] : vector<12x5xf32> to vector<5x12xf32>
        %282 = index.mul %c12, %73
        %283 = index.ceildivu %72, %c6
        %284 = math.floor %cst_3 : f32
        %285 = math.log %cst : f16
        %286 = math.absi %0 : tensor<5x6xi1>
        %287 = arith.shli %true_39, %true_26 : i1
        %288 = math.ceil %6 : tensor<9x9xf16>
        scf.yield %rank : index
      }
      case 2 {
        %275 = bufferization.clone %92 : memref<9x9xi64> to memref<9x9xi64>
        %276 = vector.transpose %25, [0] : vector<5xi1> to vector<5xi1>
        %277 = math.cttz %17 : tensor<5x6xi32>
        %false_40 = index.bool.constant false
        %278 = tensor.empty() : tensor<12x5xi1>
        %279 = vector.broadcast %cst_0 : f16 to vector<5xf16>
        %dest, %accumulated_value = vector.scan <maxf>, %106, %279 {inclusive = false, reduction_dim = 1 : i64} : vector<5x6xf16>, vector<5xf16>
        %280 = arith.maxsi %c904166608_i32, %c100638827_i32 : i32
        memref.copy %alloc_8, %45 : memref<9x9xi32> to memref<9x9xi32>
        %281 = vector.broadcast %c1518_i16 : i16 to vector<9x9xi16>
        %282 = tensor.empty() : tensor<6x6xf32>
        %283 = linalg.matmul ins(%5, %5 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%282 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %284 = vector.reduction <maxsi>, %70 : vector<1xi1> into i1
        %285 = tensor.empty() : tensor<12x6xi1>
        %286 = linalg.matmul ins(%278, %0 : tensor<12x5xi1>, tensor<5x6xi1>) outs(%285 : tensor<12x6xi1>) -> tensor<12x6xi1>
        %287 = arith.shrsi %c1951840860_i32, %c100638827_i32 : i32
        %288 = vector.create_mask %c14, %73 : vector<6x6xi1>
        %289 = vector.broadcast %cst : f16 to vector<6x6xf16>
        %290 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %106, %106, %289 : vector<5x6xf16>, vector<5x6xf16> into vector<6x6xf16>
        %291 = math.fpowi %6, %11 : tensor<9x9xf16>, tensor<9x9xi32>
        scf.yield %c13 : index
      }
      default {
        %275 = math.exp %cst : f16
        %276 = math.round %6 : tensor<9x9xf16>
        %277 = arith.minf %cst_2, %cst_1 : f32
        %278 = index.maxs %c11, %c15
        %279 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        %280 = vector.insert %279, %83 [6] : vector<5xf32> into vector<12x5xf32>
        %281 = arith.remf %cst_0, %cst : f16
        %282 = arith.remf %cst_3, %cst_1 : f32
        %283 = math.tanh %6 : tensor<9x9xf16>
        %284 = math.absi %c1951840860_i32 : i32
        %285 = vector.splat %66 : vector<9x9xindex>
        %286 = math.tan %cst_4 : f32
        %287 = arith.divsi %c564672457_i64, %c2134733142_i64 : i64
        %288 = arith.maxsi %c564672457_i64, %c564672457_i64 : i64
        %289 = vector.extract %70[0] : vector<1xi1>
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2 + 64, (d2 - d3) mod 16, (d1 mod 64) ceildiv 8)>(%72, %72, %c4, %c13)
        %291 = vector.insert %279, %84 [1] : vector<5xf32> into vector<12x5xf32>
        scf.yield %c12 : index
      }
      %261 = math.log %6 : tensor<9x9xf16>
      %262 = math.absf %cst_1 : f32
      %263 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 128, d0 ceildiv 8, d3, d2 * 8)>(%66, %c5, %rank, %c4)
      %264 = math.ctpop %15 : tensor<5x6xi1>
      %265 = vector.splat %c3 : vector<6x6xindex>
      %266 = affine.max affine_map<(d0, d1) -> (-(-(d0 - d0 mod 16) - 4))>(%29, %66)
      %267 = vector.reduction <xor>, %25 : vector<5xi1> into i1
      %268 = math.ipowi %3, %3 : tensor<12x5xi32>
      %269 = vector.multi_reduction <and>, %25, %25 [] : vector<5xi1> to vector<5xi1>
      %270 = index.maxs %78, %c1
      %271 = arith.ceildivsi %true_26, %true_39 : i1
      %272 = index.maxs %c7, %c7
      %273 = math.ctpop %2 : tensor<5x6xi32>
      %274 = vector.broadcast %true_39 : i1 to vector<5x6xi1>
      scf.yield %45 : memref<9x9xi32>
    }
    default {
      %260 = arith.minsi %c28853_i16, %c28853_i16 : i16
      %261 = vector.insertelement %true, %25[%c6 : index] : vector<5xi1>
      %262 = affine.max affine_map<(d0, d1, d2) -> (0, -d0)>(%c6, %c12, %c2)
      %263 = index.mul %73, %34
      %264 = math.round %8 : tensor<12x5xf16>
      %alloc_39 = memref.alloc() : memref<5x6xi64>
      %265 = vector.broadcast %c564672457_i64 : i64 to vector<5x6xi64>
      %266 = vector.broadcast %true_26 : i1 to vector<5x6xi1>
      %267 = vector.broadcast %c1951840860_i32 : i32 to vector<5x6xi32>
      %268 = vector.gather %alloc_39[%c13, %c7] [%267], %266, %265 : memref<5x6xi64>, vector<5x6xi32>, vector<5x6xi1>, vector<5x6xi64> into vector<5x6xi64>
      %269 = index.sizeof
      %270 = vector.insertelement %true, %25[%c3 : index] : vector<5xi1>
      %271 = arith.floordivsi %true_26, %true : i1
      %272 = vector.load %alloc_15[%c2, %c3] : memref<9x9xi64>, vector<12x5xi64>
      %273 = math.absi %collapsed : tensor<81xi32>
      %274 = arith.cmpi slt, %c820043274_i64, %c564672457_i64 : i64
      %275 = arith.cmpf uno, %cst, %cst : f16
      %276 = math.fpowi %7, %4 : tensor<6x6xf16>, tensor<6x6xi32>
      %277 = arith.remui %true_26, %true_26 : i1
      %278 = scf.index_switch %c7 -> f32 
      case 1 {
        %279 = vector.multi_reduction <mul>, %20, %true [0] : vector<5xi1> to i1
        %280 = arith.remf %cst_3, %cst_4 : f32
        %281 = vector.create_mask %73, %c6 : vector<5x6xi1>
        %282 = arith.xori %true_26, %true_26 : i1
        %283 = arith.maxf %cst_1, %cst_1 : f32
        %284 = arith.remsi %c820043274_i64, %c2134733142_i64 : i64
        %285 = vector.create_mask %269, %66 : vector<9x9xi1>
        %286 = math.atan %cst_3 : f32
        %287 = math.round %6 : tensor<9x9xf16>
        %288 = math.absi %c820043274_i64 : i64
        %289 = math.exp %13 : tensor<5x6xf16>
        %290 = arith.divf %cst_3, %cst_4 : f32
        %291 = index.ceildivu %109, %c9
        %292 = index.castu %269 : index to i32
        %293 = math.cos %cst_2 : f32
        %294 = index.sub %c3, %109
        scf.yield %cst_1 : f32
      }
      case 2 {
        %279 = math.powf %7, %7 : tensor<6x6xf16>
        %280 = math.floor %13 : tensor<5x6xf16>
        %281 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        %282 = vector.broadcast %true_26 : i1 to vector<6xi1>
        %283 = vector.maskedload %105[%c5, %c2], %282, %281 : memref<12x5xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %284 = index.ceildivu %269, %72
        %285 = vector.extract %283[3] : vector<6xf16>
        %286 = arith.floordivsi %c28853_i16, %c4038_i16 : i16
        %287 = math.fma %1, %8, %8 : tensor<12x5xf16>
        %288 = arith.maxsi %c100638827_i32, %c1951840860_i32 : i32
        %289 = index.sub %109, %c13
        %290 = vector.splat %c9 : vector<12x5xindex>
        %291 = arith.floordivsi %c820043274_i64, %c564672457_i64 : i64
        %292 = bufferization.to_memref %8 : memref<12x5xf16>
        %293 = math.log2 %cst_4 : f32
        %294 = math.absi %14 : tensor<9x9xi16>
        %295 = vector.flat_transpose %281 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        %296 = arith.andi %c904166608_i32, %c1951840860_i32 : i32
        scf.yield %cst_1 : f32
      }
      default {
        %279 = arith.shrsi %c4038_i16, %c28853_i16 : i16
        %280 = math.roundeven %55 : tensor<6x6xf32>
        %281 = arith.divf %cst_4, %cst_3 : f32
        %282 = arith.maxsi %c4038_i16, %c28853_i16 : i16
        %283 = math.ctpop %11 : tensor<9x9xi32>
        %284 = memref.load %alloc_18[%c2, %c2] : memref<6x6xi1>
        %285 = arith.remui %c4038_i16, %c28853_i16 : i16
        %286 = vector.splat %262 : vector<5x6xindex>
        %287 = arith.minsi %c820043274_i64, %c820043274_i64 : i64
        %288 = arith.maxsi %c1518_i16, %c28853_i16 : i16
        %289 = index.maxu %34, %66
        %290 = tensor.empty(%c15, %c1) : tensor<?x?xi1>
        %291 = arith.divui %c904166608_i32, %c904166608_i32 : i32
        %292 = math.log %6 : tensor<9x9xf16>
        %293 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %294 = vector.insert %293, %83 [5] : vector<5xf32> into vector<12x5xf32>
        %295 = index.ceildivu %c4, %98
        scf.yield %cst_3 : f32
      }
      scf.yield %45 : memref<9x9xi32>
    }
    %111 = index.ceildivu %c10, %73
    %112 = vector.reduction <mul>, %24 : vector<1xi1> into i1
    %113 = affine.if affine_set<(d0, d1) : (d1 * 16 >= 0)>(%c3, %c3) -> memref<5x6xi64> {
      %260 = arith.remui %c28853_i16, %c1518_i16 : i16
      memref.copy %alloc_15, %53 : memref<9x9xi64> to memref<9x9xi64>
      %alloca_39 = memref.alloca() : memref<6x6xi32>
      %261 = arith.maxsi %c1951840860_i32, %c100638827_i32 : i32
      %262 = arith.maxsi %c1951840860_i32, %c1951840860_i32 : i32
      %extracted_40 = tensor.extract %55[%c5, %c0] : tensor<6x6xf32>
      %collapsed_41 = tensor.collapse_shape %17 [[0, 1]] : tensor<5x6xi32> into tensor<30xi32>
      %263 = bufferization.clone %alloc_12 : memref<9x9xf32> to memref<9x9xf32>
      %alloc_42 = memref.alloc() : memref<5x6xi64>
      affine.yield %alloc_42 : memref<5x6xi64>
    } else {
      %260 = vector.broadcast %cst : f16 to vector<6x6xf16>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %106, %106, %260 : vector<5x6xf16>, vector<5x6xf16> into vector<6x6xf16>
      %262 = tensor.empty(%c6, %29) : tensor<?x?xi32>
      %from_elements_39 = tensor.from_elements %c4038_i16, %c28853_i16, %c1518_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c28853_i16, %c4038_i16, %c28853_i16, %c28853_i16, %c4038_i16, %c4038_i16, %c4038_i16, %c28853_i16, %c28853_i16, %c28853_i16, %c1518_i16, %c4038_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c28853_i16, %c4038_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c1518_i16, %c1518_i16, %c1518_i16, %c28853_i16, %c4038_i16, %c4038_i16, %c4038_i16, %c1518_i16, %c1518_i16, %c1518_i16, %c28853_i16, %c1518_i16, %c28853_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c1518_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c1518_i16, %c28853_i16, %c28853_i16, %c4038_i16, %c28853_i16, %c4038_i16, %c28853_i16, %c1518_i16, %c28853_i16, %c4038_i16, %c28853_i16, %c4038_i16, %c4038_i16, %c28853_i16, %c1518_i16, %c4038_i16, %c1518_i16, %c1518_i16, %c28853_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c28853_i16, %c1518_i16, %c4038_i16, %c28853_i16, %c28853_i16, %c4038_i16, %c4038_i16, %c28853_i16, %c4038_i16, %c1518_i16, %c1518_i16, %c28853_i16, %c4038_i16 : tensor<9x9xi16>
      %263 = arith.ori %true, %true : i1
      %264 = tensor.empty() : tensor<6xi1>
      %mapped_40 = linalg.map ins(%18, %reduced, %18 : tensor<6xi1>, tensor<6xi1>, tensor<6xi1>) outs(%264 : tensor<6xi1>)
        (%in: i1, %in_42: i1, %in_43: i1) {
          %false_44 = index.bool.constant false
          %extracted_45 = tensor.extract %reduced[%c1] : tensor<6xi1>
          %268 = vector.multi_reduction <minsi>, %70, %24 [] : vector<1xi1> to vector<1xi1>
          %269 = affine.apply affine_map<(d0, d1, d2) -> (d1 - d2)>(%c15, %c6, %rank)
          %270 = index.ceildivu %78, %c7
          %rank_46 = tensor.rank %15 : tensor<5x6xi1>
          %rank_47 = tensor.rank %10 : tensor<6x6xi64>
          %271 = vector.reduction <maxui>, %25 : vector<5xi1> into i1
          %272 = vector.shuffle %20, %24 [1, 3, 5] : vector<5xi1>, vector<1xi1>
          %273 = arith.minsi %false_44, %in : i1
          %inserted_48 = tensor.insert %c1951840860_i32 into %collapsed_25[%c12] : tensor<36xi32>
          %274 = math.ctpop %16 : tensor<5x6xi32>
          %false_49 = index.bool.constant false
          %275 = math.ipowi %from_elements_39, %14 : tensor<9x9xi16>
          %276 = math.tan %6 : tensor<9x9xf16>
          affine.store %cst_3, %alloc_12[%c7, %c2] : memref<9x9xf32>
          %expanded_50 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<5x6xi1> into tensor<5x6x1xi1>
          %277 = bufferization.clone %alloc_17 : memref<9x9xi16> to memref<9x9xi16>
          %278 = index.divs %34, %c14
          %279 = math.fma %13, %13, %13 : tensor<5x6xf16>
          %280 = math.tan %13 : tensor<5x6xf16>
          %281 = index.castu %c0 : index to i32
          bufferization.dealloc_tensor %55 : tensor<6x6xf32>
          %282 = arith.remf %cst_1, %cst_3 : f32
          %283 = math.ctpop %c904166608_i32 : i32
          %extracted_51 = tensor.extract %5[%c0, %c0] : tensor<6x6xf32>
          %284 = arith.maxsi %in_42, %false_44 : i1
          vector.print %83 : vector<12x5xf32>
          %285 = bufferization.to_tensor %alloc_7 : memref<6x6xf32>
          %286 = arith.xori %c820043274_i64, %c564672457_i64 : i64
          %collapsed_52 = tensor.collapse_shape %12 [[0, 1]] : tensor<9x9xi64> into tensor<81xi64>
          %287 = math.cttz %c904166608_i32 : i32
          %true_53 = arith.constant true
          linalg.yield %true_53 : i1
        }
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 64)>(%72, %c0, %29, %109)
      %266 = arith.addi %c28853_i16, %c1518_i16 : i16
      %267 = bufferization.to_memref %14 : memref<9x9xi16>
      %alloc_41 = memref.alloc() : memref<5x6xi64>
      affine.yield %alloc_41 : memref<5x6xi64>
    }
    %114 = arith.ori %c820043274_i64, %c564672457_i64 : i64
    %115 = math.cos %8 : tensor<12x5xf16>
    %116 = vector.shuffle %84, %84 [0, 1, 5, 7, 8, 15, 18, 19, 20, 21, 23] : vector<12x5xf32>, vector<12x5xf32>
    %117 = math.copysign %cst_3, %cst_3 : f32
    %118 = vector.broadcast %c820043274_i64 : i64 to vector<6x6xi64>
    %false = index.bool.constant false
    %119 = index.ceildivu %98, %c1
    %120 = math.absf %7 : tensor<6x6xf16>
    %121 = math.fpowi %cst_1, %c904166608_i32 : f32, i32
    %122 = affine.max affine_map<(d0) -> (0, (d0 * 2) floordiv 32)>(%c2)
    %123 = arith.minf %cst, %cst_0 : f16
    %124 = math.expm1 %5 : tensor<6x6xf32>
    affine.store %c820043274_i64, %alloc[%c15, %c11] : memref<6x6xi64>
    %cst_28 = arith.constant 1.000000e+00 : f32
    %cst_29 = arith.constant 0.000000e+00 : f32
    %125 = vector.transfer_read %alloc_7[%c5, %98], %cst_29 : memref<6x6xf32>, vector<f32>
    %126 = math.ceil %7 : tensor<6x6xf16>
    %127 = arith.minui %true, %true_26 : i1
    %128 = arith.remsi %c904166608_i32, %c100638827_i32 : i32
    %129 = math.floor %1 : tensor<12x5xf16>
    %130 = vector.reduction <xor>, %36 : vector<1xi1> into i1
    %131 = arith.minsi %c820043274_i64, %c2134733142_i64 : i64
    %132 = math.tan %13 : tensor<5x6xf16>
    %133 = arith.divui %c28853_i16, %c28853_i16 : i16
    %134 = arith.divui %true, %false : i1
    %135 = vector.shuffle %36, %24 [0] : vector<1xi1>, vector<1xi1>
    scf.index_switch %122 
    case 1 {
      %260 = vector.splat %cst_4 : vector<12x5xf32>
      %261 = arith.remf %cst_0, %cst : f16
      %262 = arith.remui %c564672457_i64, %c2134733142_i64 : i64
      %263 = math.floor %cst_4 : f32
      %264 = vector.reduction <or>, %20 : vector<5xi1> into i1
      %265 = vector.load %45[%c3, %c3] : memref<9x9xi32>, vector<6x6xi32>
      %266 = arith.divf %cst_3, %cst_3 : f32
      %267 = vector.transpose %106, [0, 1] : vector<5x6xf16> to vector<5x6xf16>
      %268 = affine.max affine_map<(d0) -> (d0 - 4, d0 floordiv 8)>(%119)
      %269 = vector.create_mask %c6, %34 : vector<5x6xi1>
      %270 = affine.for %arg3 = 0 to 79 iter_args(%arg4 = %14) -> (tensor<9x9xi16>) {
        affine.yield %14 : tensor<9x9xi16>
      }
      %271 = vector.broadcast %true : i1 to vector<6x6xi1>
      %272 = index.ceildivu %c0, %c6
      %273 = vector.broadcast %cst_3 : f32 to vector<5xf32>
      %274 = vector.maskedload %alloc_13[%c4, %c4], %25, %273 : memref<12x5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %275 = vector.broadcast %c904166608_i32 : i32 to vector<6x6xi32>
      %276 = arith.ori %c1518_i16, %c4038_i16 : i16
      scf.yield
    }
    case 2 {
      %260 = bufferization.clone %alloc_10 : memref<6x6xf16> to memref<6x6xf16>
      %261 = vector.reduction <minsi>, %20 : vector<5xi1> into i1
      %262 = arith.remsi %c1518_i16, %c1518_i16 : i16
      %263 = arith.cmpi ugt, %c1951840860_i32, %c904166608_i32 : i32
      %264 = arith.remf %cst_0, %cst : f16
      %splat_39 = tensor.splat %cst_1 : tensor<5x6xf32>
      %265 = arith.ori %true_26, %true_26 : i1
      %266 = arith.remsi %c100638827_i32, %c904166608_i32 : i32
      %267 = vector.create_mask %119, %c9 : vector<6x6xi1>
      %268 = arith.addi %c2134733142_i64, %c820043274_i64 : i64
      %269 = vector.broadcast %cst_2 : f32 to vector<5x6xf32>
      %270 = vector.broadcast %cst_1 : f32 to vector<5xf32>
      %271 = vector.maskedload %alloc_12[%c3, %c4], %25, %270 : memref<9x9xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %272 = vector.create_mask %122, %c6 : vector<5x6xi1>
      %273 = arith.remf %cst, %cst_0 : f16
      %274 = arith.shli %c2134733142_i64, %c820043274_i64 : i64
      %275 = index.maxu %34, %c4
      scf.yield
    }
    case 3 {
      %260 = math.floor %7 : tensor<6x6xf16>
      %collapsed_39 = tensor.collapse_shape %6 [[0, 1]] : tensor<9x9xf16> into tensor<81xf16>
      %261 = arith.ceildivsi %c904166608_i32, %c904166608_i32 : i32
      %262 = vector.extract %36[0] : vector<1xi1>
      %263 = math.ctlz %18 : tensor<6xi1>
      %264 = arith.maxsi %c4038_i16, %c4038_i16 : i16
      %inserted_40 = tensor.insert %cst into %7[%c4, %c3] : tensor<6x6xf16>
      %265 = math.exp %cst_1 : f32
      %266 = arith.maxsi %false, %true_26 : i1
      %expanded_41 = tensor.expand_shape %reduced [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
      %267 = affine.load %alloc_20[%c4, %c9] : memref<9x9xi32>
      %268 = bufferization.to_memref %14 : memref<9x9xi16>
      %269 = arith.divf %cst_4, %cst_4 : f32
      %270 = math.fma %cst_4, %cst_1, %cst_4 : f32
      %271 = arith.divf %cst_3, %cst_3 : f32
      %extracted_42 = tensor.extract %14[%c7, %c1] : tensor<9x9xi16>
      scf.yield
    }
    default {
      %260 = index.sub %c14, %c14
      %261 = math.ipowi %22, %22 : tensor<i1>
      %262 = math.absi %21 : tensor<i1>
      %263 = memref.atomic_rmw mulf %cst_1, %alloc_13[%c11, %c2] : (f32, memref<12x5xf32>) -> f32
      %splat_39 = tensor.splat %cst_0 : tensor<6x6xf16>
      %264 = vector.transpose %118, [0, 1] : vector<6x6xi64> to vector<6x6xi64>
      %265 = math.log %8 : tensor<12x5xf16>
      %266 = arith.xori %c4038_i16, %c28853_i16 : i16
      %false_40 = index.bool.constant false
      %267 = arith.ori %c4038_i16, %c1518_i16 : i16
      memref.alloca_scope  {
        %inserted_42 = tensor.insert %c564672457_i64 into %10[%c5, %c3] : tensor<6x6xi64>
        %271 = math.rsqrt %7 : tensor<6x6xf16>
        %272 = vector.multi_reduction <maxf>, %106, %cst [0, 1] : vector<5x6xf16> to f16
        %273 = arith.xori %c820043274_i64, %c2134733142_i64 : i64
        %274 = index.mul %c14, %78
        %275 = index.casts %73 : index to i32
        %276 = arith.xori %true, %true_26 : i1
        %277 = arith.muli %false, %true : i1
        %278 = math.expm1 %6 : tensor<9x9xf16>
        %279 = index.casts %260 : index to i32
        %280 = index.divs %c15, %c13
        %281 = vector.reduction <minsi>, %36 : vector<1xi1> into i1
        %splat_43 = tensor.splat %false : tensor<6x6xi1>
        %282 = index.add %109, %34
        %283 = vector.reduction <minsi>, %25 : vector<5xi1> into i1
        %284 = vector.multi_reduction <mul>, %36, %false_40 [0] : vector<1xi1> to i1
        %285 = arith.minui %284, %false_40 : i1
        %286 = math.copysign %cst_3, %cst_3 : f32
        %287 = vector.broadcast %c564672457_i64 : i64 to vector<6xi64>
        %288 = vector.insert %287, %118 [5] : vector<6xi64> into vector<6x6xi64>
        %289 = index.castu %c904166608_i32 : i32 to index
        %290 = arith.minui %c904166608_i32, %c904166608_i32 : i32
        %291 = arith.maxui %c904166608_i32, %c100638827_i32 : i32
        %292 = vector.splat %c3 : vector<6x6xindex>
        %293 = arith.floordivsi %true, %false_40 : i1
        %294 = index.add %c0, %c11
        %295 = index.castu %true : i1 to index
        %296 = arith.cmpf ord, %cst_2, %cst_4 : f32
        %297 = arith.shrsi %c904166608_i32, %c100638827_i32 : i32
        %298 = arith.divsi %c1951840860_i32, %c100638827_i32 : i32
        %299 = arith.minui %false_40, %true : i1
        %300 = arith.remui %c100638827_i32, %c100638827_i32 : i32
        %301 = tensor.empty() : tensor<5x6xf16>
        %302 = linalg.matmul ins(%13, %7 : tensor<5x6xf16>, tensor<6x6xf16>) outs(%301 : tensor<5x6xf16>) -> tensor<5x6xf16>
      }
      %268 = arith.divf %cst_3, %cst_1 : f32
      affine.for %arg3 = 0 to 54 {
      }
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %24, %24, %false_40 : vector<1xi1>, vector<1xi1> into i1
      %from_elements_41 = tensor.from_elements %true, %false_40, %true_26, %false, %true_26, %true_26, %true, %false_40, %true, %true_26, %true, %false_40, %true, %false, %true, %true, %true, %true_26, %true, %true_26, %false, %true_26, %false, %true_26, %false, %true, %true_26, %false, %true_26, %true, %true, %false, %false_40, %false_40, %true, %true, %false, %true_26, %false_40, %false_40, %true_26, %true, %false_40, %true, %false, %false, %true, %false_40, %true_26, %false_40, %false, %false_40, %true_26, %false, %true, %false, %true_26, %true, %true, %true : tensor<12x5xi1>
      %270 = arith.xori %c4038_i16, %c1518_i16 : i16
    }
    %136 = scf.if %false -> (i32) {
      %260 = index.mul %c7, %rank
      %261 = index.ceildivs %34, %73
      %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %118, %118, %118 : vector<6x6xi64>, vector<6x6xi64> into vector<6x6xi64>
      %alloc_39 = memref.alloc() : memref<5x6xi32>
      %263 = vector.broadcast %c1951840860_i32 : i32 to vector<12x5xi32>
      %264 = vector.broadcast %true_26 : i1 to vector<12x5xi1>
      %265 = vector.gather %alloc_39[%98, %73] [%263], %264, %263 : memref<5x6xi32>, vector<12x5xi32>, vector<12x5xi1>, vector<12x5xi32> into vector<12x5xi32>
      %alloca_40 = memref.alloca() : memref<6x6xi16>
      %266 = index.ceildivu %c13, %c12
      %267 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %36, %267, %false : vector<1xi1>, vector<1xi1> into i1
      scf.yield %c100638827_i32 : i32
    } else {
      %260 = scf.index_switch %c0 -> i64 
      case 1 {
        %268 = vector.extract %118[2] : vector<6x6xi64>
        %269 = math.sqrt %6 : tensor<9x9xf16>
        %270 = arith.remf %cst, %cst : f16
        %271 = math.exp %cst_0 : f16
        %272 = index.maxs %rank, %c13
        %273 = vector.insertelement %true, %20[%98 : index] : vector<5xi1>
        %274 = arith.minsi %true, %true_26 : i1
        %275 = math.absi %10 : tensor<6x6xi64>
        %276 = arith.minsi %true_26, %true : i1
        %277 = math.roundeven %cst_2 : f32
        %alloc_40 = memref.alloc() : memref<6x6xf32>
        memref.copy %alloc_7, %alloc_40 : memref<6x6xf32> to memref<6x6xf32>
        %278 = index.maxu %29, %c8
        %279 = math.cttz %14 : tensor<9x9xi16>
        %280 = math.copysign %8, %8 : tensor<12x5xf16>
        %281 = bufferization.to_memref %generated : memref<?x?xi64>
        %282 = math.exp %6 : tensor<9x9xf16>
        scf.yield %c2134733142_i64 : i64
      }
      case 2 {
        %268 = affine.load %alloc_20[%c11, %c10] : memref<9x9xi32>
        %269 = vector.broadcast %c100638827_i32 : i32 to vector<9x9xi32>
        %270 = bufferization.to_memref %3 : memref<12x5xi32>
        %271 = index.divs %119, %c15
        %272 = memref.load %270[%c10, %c2] : memref<12x5xi32>
        %273 = index.maxs %c5, %c1
        %274 = bufferization.to_tensor %alloc_10 : memref<6x6xf16>
        %275 = arith.minsi %c820043274_i64, %c2134733142_i64 : i64
        %276 = vector.extract %118[2] : vector<6x6xi64>
        %alloc_40 = memref.alloc() : memref<6x6xi32>
        %277 = arith.maxsi %c2134733142_i64, %c2134733142_i64 : i64
        %278 = arith.divsi %c904166608_i32, %c100638827_i32 : i32
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 + d2) + d3 + d2 + d3, (-(d3 + d2)) mod 4, (-d1) mod 128)>(%c6, %34, %98, %c9)
        %280 = index.maxs %c0, %c12
        %281 = arith.cmpi slt, %c1951840860_i32, %c1951840860_i32 : i32
        %282 = vector.shuffle %83, %84 [4, 6, 8, 14, 15, 17, 18, 19, 20, 21, 22, 23] : vector<12x5xf32>, vector<12x5xf32>
        scf.yield %c2134733142_i64 : i64
      }
      case 3 {
        %268 = math.log %8 : tensor<12x5xf16>
        %269 = index.ceildivs %73, %c13
        %270 = vector.shuffle %106, %106 [0, 1, 5, 7, 8, 9] : vector<5x6xf16>, vector<5x6xf16>
        %271 = math.expm1 %cst_1 : f32
        %272 = math.round %cst_28 : f32
        %273 = index.casts %c820043274_i64 : i64 to index
        %274 = arith.remsi %true, %true_26 : i1
        memref.copy %alloc_6, %alloc_13 : memref<12x5xf32> to memref<12x5xf32>
        %275 = index.ceildivs %c8, %c14
        %276 = arith.minsi %c820043274_i64, %c820043274_i64 : i64
        %277 = vector.shuffle %118, %118 [0, 1, 2, 3, 4, 5, 6, 8, 10, 11] : vector<6x6xi64>, vector<6x6xi64>
        %278 = vector.extract %20[2] : vector<5xi1>
        %279 = arith.minui %c820043274_i64, %c2134733142_i64 : i64
        %from_elements_40 = tensor.from_elements %false, %true, %false, %true, %true, %true, %false, %false, %true, %false, %false, %true_26, %true_26, %true_26, %false, %false, %true, %true_26, %false, %true, %false, %true_26, %false, %true, %true_26, %true, %false, %true, %true, %true, %true, %true_26, %true_26, %false, %false, %true : tensor<6x6xi1>
        %280 = math.roundeven %cst_3 : f32
        %281 = math.fma %5, %5, %5 : tensor<6x6xf32>
        scf.yield %c2134733142_i64 : i64
      }
      default {
        %268 = arith.cmpf olt, %cst_28, %cst_4 : f32
        %269 = math.log %cst : f16
        %270 = vector.transpose %106, [0, 1] : vector<5x6xf16> to vector<5x6xf16>
        %271 = arith.minsi %c1951840860_i32, %c100638827_i32 : i32
        %272 = arith.divf %cst_1, %cst_4 : f32
        %273 = tensor.empty() : tensor<9x9xi64>
        %274 = math.floor %cst_2 : f32
        %275 = index.casts %true : i1 to index
        %alloca_40 = memref.alloca() : memref<9x9xi16>
        %276 = arith.cmpf oeq, %cst_2, %cst_1 : f32
        %277 = math.round %8 : tensor<12x5xf16>
        %278 = math.fma %55, %5, %5 : tensor<6x6xf32>
        %279 = affine.load %alloc[%c0, %c8] : memref<6x6xi64>
        %280 = vector.reduction <xor>, %25 : vector<5xi1> into i1
        %281 = math.ceil %13 : tensor<5x6xf16>
        memref.assume_alignment %alloc_12, 4 : memref<9x9xf32>
        scf.yield %279 : i64
      }
      %261 = arith.remf %cst_1, %cst_28 : f32
      %true_39 = index.bool.constant true
      %262 = arith.maxf %cst_0, %cst_0 : f16
      %263 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
      %264 = vector.fma %263, %263, %263 : vector<9x9xf32>
      %265 = arith.floordivsi %c820043274_i64, %c564672457_i64 : i64
      %266 = math.cos %5 : tensor<6x6xf32>
      %267 = arith.minsi %c28853_i16, %c28853_i16 : i16
      scf.yield %c1951840860_i32 : i32
    }
    memref.alloca_scope  {
      %260 = index.maxs %c5, %111
      %261 = math.rsqrt %55 : tensor<6x6xf32>
      %splat_39 = tensor.splat %cst_3 : tensor<9x9xf32>
      %262 = index.casts %c8 : index to i32
      %263 = vector.extract %36[0] : vector<1xi1>
      %264 = vector.insertelement %false, %36[%260 : index] : vector<1xi1>
      %265 = math.log %cst_28 : f32
      %266 = index.casts %c1518_i16 : i16 to index
      %267 = arith.minui %true, %true : i1
      %268 = arith.minf %cst_4, %cst_2 : f32
      %269 = arith.shli %true_26, %true_26 : i1
      %270 = arith.ceildivsi %true_26, %true : i1
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %70, %36, %true : vector<1xi1>, vector<1xi1> into i1
      %272 = math.ceil %cst_2 : f32
      %273 = tensor.empty() : tensor<5x6xf16>
      %274 = vector.splat %73 : vector<6x6xindex>
      %275 = index.divs %c6, %c14
      %276 = math.fpowi %13, %16 : tensor<5x6xf16>, tensor<5x6xi32>
      %collapsed_40 = tensor.collapse_shape %14 [[0, 1]] : tensor<9x9xi16> into tensor<81xi16>
      %277 = vector.broadcast %cst_4 : f32 to vector<12xf32>
      %278 = vector.broadcast %false : i1 to vector<12xi1>
      %279 = vector.maskedload %alloc_7[%c5, %c3], %278, %277 : memref<6x6xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
      %alloca_41 = memref.alloca() : memref<5x6xi16>
      %280 = arith.remsi %c2134733142_i64, %c820043274_i64 : i64
      %281 = arith.remsi %c2134733142_i64, %c564672457_i64 : i64
      %282 = math.log %13 : tensor<5x6xf16>
      %283 = math.exp %55 : tensor<6x6xf32>
      %284 = vector.splat %260 : vector<12x5xindex>
      %285 = vector.reduction <minf>, %279 : vector<12xf32> into f32
      %286 = index.ceildivs %c8, %c5
      %287 = bufferization.clone %alloc : memref<6x6xi64> to memref<6x6xi64>
      %288 = bufferization.to_tensor %alloc_11 : memref<12x5xi32>
      %289 = arith.minui %false, %true_26 : i1
      %290 = math.absf %1 : tensor<12x5xf16>
    }
    %137 = arith.cmpi ult, %c1518_i16, %c4038_i16 : i16
    %138 = math.log %cst_1 : f32
    %139 = math.log %cst_0 : f16
    %140 = arith.ori %c1951840860_i32, %136 : i32
    %141 = vector.broadcast %c2134733142_i64 : i64 to vector<9x9xi64>
    %false_30 = index.bool.constant false
    %142 = arith.minf %cst_4, %cst_3 : f32
    %143 = arith.cmpf oeq, %cst_3, %cst_1 : f32
    %144 = index.castu %c904166608_i32 : i32 to index
    %collapsed_31 = tensor.collapse_shape %1 [[0, 1]] : tensor<12x5xf16> into tensor<60xf16>
    %145 = arith.remsi %c2134733142_i64, %c564672457_i64 : i64
    %146 = arith.remui %c100638827_i32, %c100638827_i32 : i32
    %147 = math.fpowi %5, %4 : tensor<6x6xf32>, tensor<6x6xi32>
    %148 = arith.remsi %false_30, %true : i1
    %149 = math.absi %c904166608_i32 : i32
    %150 = vector.broadcast %true : i1 to vector<5x5xi1>
    %151 = vector.outerproduct %25, %20, %150 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
    %152 = index.maxs %c6, %c13
    %153 = arith.muli %c100638827_i32, %c100638827_i32 : i32
    %154 = arith.shrsi %136, %c1951840860_i32 : i32
    %155 = arith.cmpi ne, %c1518_i16, %c28853_i16 : i16
    %156 = index.maxs %c1, %rank
    %157 = arith.cmpf ule, %cst, %cst : f16
    %158 = index.casts %c2134733142_i64 : i64 to index
    %159 = vector.broadcast %cst_0 : f16 to vector<5xf16>
    %160 = vector.maskedload %alloc_5[%c3, %c0], %20, %159 : memref<6x6xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
    %161 = index.ceildivu %109, %152
    %162 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %118, %118, %118 : vector<6x6xi64>, vector<6x6xi64> into vector<6x6xi64>
    %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x5xf16> into tensor<12x5x1xf16>
    %163 = math.ctpop %21 : tensor<i1>
    %164 = vector.reduction <minf>, %160 : vector<5xf16> into f16
    %splat = tensor.splat %c28853_i16 : tensor<6x6xi16>
    %165 = vector.insertelement %true_26, %25[%c9 : index] : vector<5xi1>
    %166 = bufferization.to_tensor %alloc_7 : memref<6x6xf32>
    %167 = math.exp %8 : tensor<12x5xf16>
    %168 = vector.reduction <xor>, %70 : vector<1xi1> into i1
    %169 = bufferization.to_tensor %alloc_17 : memref<9x9xi16>
    %extracted = tensor.extract %4[%c1, %c0] : tensor<6x6xi32>
    %170 = vector.splat %c6 : vector<5x6xindex>
    %171 = math.cos %13 : tensor<5x6xf16>
    %172 = arith.andi %true_26, %false_30 : i1
    %173 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - 4) ceildiv 8)>(%78, %c12, %c13)
    %174 = vector.shuffle %70, %70 [0, 1] : vector<1xi1>, vector<1xi1>
    %175 = arith.addi %false, %true : i1
    %176 = arith.cmpf oge, %cst, %cst_0 : f16
    %177 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<12x5x1xf16>) {
    ^bb0(%out: f16):
      %260 = bufferization.to_memref %55 : memref<6x6xf32>
      %261 = vector.insert %true, %25 [3] : i1 into vector<5xi1>
      memref.alloca_scope  {
        %286 = vector.extract %83[7] : vector<12x5xf32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %70, %70, %false : vector<1xi1>, vector<1xi1> into i1
        %288 = math.exp %5 : tensor<6x6xf32>
        %collapsed_43 = tensor.collapse_shape %13 [[0, 1]] : tensor<5x6xf16> into tensor<30xf16>
        %289 = arith.andi %extracted, %c100638827_i32 : i32
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %159, %160, %cst_0 : vector<5xf16>, vector<5xf16> into f16
        %291 = math.absi %c28853_i16 : i16
        %292 = vector.transpose %286, [0] : vector<5xf32> to vector<5xf32>
        %293 = vector.extract %141[0] : vector<9x9xi64>
        %294 = index.ceildivu %29, %98
        %295 = math.copysign %13, %13 : tensor<5x6xf16>
        %296 = vector.load %alloc_16[%c4, %c0] : memref<5x6xi1>, vector<12x5xi1>
        %297 = arith.ceildivsi %extracted, %extracted : i32
        %298 = bufferization.to_memref %8 : memref<12x5xf16>
        %from_elements_44 = tensor.from_elements %cst_0, %cst, %cst, %cst_0, %out, %cst_0, %cst, %out, %cst_0, %cst_0, %cst_0, %out, %cst, %cst, %cst, %out, %cst, %cst, %cst_0, %cst_0, %out, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %out, %out, %cst, %cst, %out, %cst_0, %cst_0, %cst_0, %out : tensor<6x6xf16>
        %299 = arith.remf %out, %out : f16
        %rank_45 = tensor.rank %expanded : tensor<12x5x1xf16>
        %300 = math.cttz %11 : tensor<9x9xi32>
        %301 = arith.remf %cst, %out : f16
        %302 = math.fma %6, %6, %6 : tensor<9x9xf16>
        %inserted_46 = tensor.insert %c28853_i16 into %14[%c1, %c4] : tensor<9x9xi16>
        memref.store %false, %alloc_21[%c1] : memref<6xi1>
        %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %141, %141, %141 : vector<9x9xi64>, vector<9x9xi64> into vector<9x9xi64>
        %304 = math.expm1 %6 : tensor<9x9xf16>
        %305 = tensor.empty() : tensor<12x5xi1>
        %306 = memref.realloc %alloc_21 : memref<6xi1> to memref<12xi1>
        %307 = math.fma %cst_1, %cst_4, %cst_1 : f32
        %308 = arith.cmpi sge, %true, %true : i1
        %309 = math.log2 %8 : tensor<12x5xf16>
        %310 = vector.reduction <add>, %24 : vector<1xi1> into i1
        %311 = arith.minui %extracted, %c100638827_i32 : i32
        %312 = math.exp %13 : tensor<5x6xf16>
      }
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %160, %159, %cst : vector<5xf16>, vector<5xf16> into f16
      %263 = math.rsqrt %8 : tensor<12x5xf16>
      %264 = math.round %7 : tensor<6x6xf16>
      memref.store %cst_2, %alloc_12[%c7, %c2] : memref<9x9xf32>
      %265 = math.absi %2 : tensor<5x6xi32>
      %266 = vector.multi_reduction <and>, %20, %true [0] : vector<5xi1> to i1
      %267 = math.log1p %13 : tensor<5x6xf16>
      %expanded_39 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<5x6xi32> into tensor<5x6x1xi32>
      %268 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 * 16 - 1) mod 64)>(%rank, %c9, %109, %c1)
      %269 = bufferization.clone %alloc_14 : memref<9x9xi32> to memref<9x9xi32>
      %270 = math.exp %5 : tensor<6x6xf32>
      %271 = math.copysign %6, %6 : tensor<9x9xf16>
      %272 = vector.insert %cst_0, %160 [3] : f16 into vector<5xf16>
      %splat_40 = tensor.splat %c100638827_i32 : tensor<9x9xi32>
      %273 = vector.reduction <mul>, %70 : vector<1xi1> into i1
      %274 = affine.apply affine_map<(d0, d1, d2) -> (d1 - d2)>(%rank, %c12, %156)
      %275 = index.sizeof
      %276 = math.absi %collapsed : tensor<81xi32>
      %277 = math.absi %false_30 : i1
      %278 = arith.xori %c2134733142_i64, %c564672457_i64 : i64
      %279 = vector.transpose %83, [0, 1] : vector<12x5xf32> to vector<12x5xf32>
      %280 = arith.remui %c4038_i16, %c28853_i16 : i16
      %281 = arith.remui %c100638827_i32, %c100638827_i32 : i32
      %alloc_41 = memref.alloc() : memref<5x6xi32>
      %282 = arith.cmpi ugt, %false_30, %true : i1
      %283 = arith.ori %false, %false : i1
      %284 = math.floor %1 : tensor<12x5xf16>
      %alloca_42 = memref.alloca() : memref<9x9xi64>
      %285 = math.ipowi %reduced, %reduced : tensor<6xi1>
      linalg.yield %cst_0 : f16
    } -> tensor<12x5x1xf16>
    %178 = bufferization.clone %45 : memref<9x9xi32> to memref<9x9xi32>
    %179 = math.copysign %collapsed_31, %collapsed_31 : tensor<60xf16>
    %180 = memref.atomic_rmw mulf %cst_2, %alloc_6[%c4, %c0] : (f32, memref<12x5xf32>) -> f32
    %181 = arith.minui %c2134733142_i64, %c564672457_i64 : i64
    %182 = arith.addf %cst_4, %cst_3 : f32
    %183 = tensor.empty() : tensor<6x6xi16>
    %184 = vector.shuffle %141, %141 [0, 1, 4, 6, 7, 12, 16] : vector<9x9xi64>, vector<9x9xi64>
    %185 = index.ceildivu %c9, %c2
    %186 = vector.broadcast %c820043274_i64 : i64 to vector<9xi64>
    %187 = vector.insert %186, %141 [3] : vector<9xi64> into vector<9x9xi64>
    affine.for %arg3 = 0 to 35 {
    }
    %188 = index.ceildivu %72, %111
    %189 = arith.minui %false, %true : i1
    %190 = math.tanh %1 : tensor<12x5xf16>
    %191 = arith.xori %c100638827_i32, %c904166608_i32 : i32
    %192 = bufferization.clone %alloc_9 : memref<12x5xi1> to memref<12x5xi1>
    %193 = arith.ceildivsi %c564672457_i64, %c564672457_i64 : i64
    %194 = vector.transpose %36, [0] : vector<1xi1> to vector<1xi1>
    %195 = arith.shli %c1518_i16, %c28853_i16 : i16
    %196 = tensor.empty() : tensor<i1>
    %mapped = linalg.map ins(%22 : tensor<i1>) outs(%196 : tensor<i1>)
      (%in: i1) {
        %260 = index.casts %c904166608_i32 : i32 to index
        %261 = vector.extract %20[1] : vector<5xi1>
        %262 = scf.if %true -> (memref<9x9xf32>) {
          %294 = math.fma %collapsed_31, %collapsed_31, %collapsed_31 : tensor<60xf16>
          %295 = index.ceildivu %122, %34
          %alloc_41 = memref.alloc() : memref<5x6xi16>
          %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %118, %118, %118 : vector<6x6xi64>, vector<6x6xi64> into vector<6x6xi64>
          %297 = arith.remsi %true, %true_26 : i1
          %298 = bufferization.to_tensor %alloc_12 : memref<9x9xf32>
          affine.store %c100638827_i32, %45[%c13, %c5] : memref<9x9xi32>
          %299 = bufferization.to_memref %15 : memref<5x6xi1>
          scf.yield %alloc_12 : memref<9x9xf32>
        } else {
          %inserted_41 = tensor.insert %c904166608_i32 into %9[%c3, %c2] : tensor<5x6xi32>
          %294 = bufferization.clone %alloc_21 : memref<6xi1> to memref<6xi1>
          %collapsed_42 = tensor.collapse_shape %7 [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
          %295 = tensor.empty() : tensor<12x5xi1>
          %296 = vector.broadcast %true : i1 to vector<9x9xi1>
          %297 = vector.broadcast %extracted : i32 to vector<9x9xi32>
          %298 = vector.gather %295[%c3, %98] [%297], %296, %296 : tensor<12x5xi1>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi1> into vector<9x9xi1>
          %299 = arith.cmpi slt, %c564672457_i64, %c820043274_i64 : i64
          %300 = arith.remf %cst_1, %cst_2 : f32
          %301 = math.exp %cst_1 : f32
          %302 = affine.load %294[%c9] : memref<6xi1>
          scf.yield %alloc_12 : memref<9x9xf32>
        }
        %263 = math.roundeven %166 : tensor<6x6xf32>
        %264 = vector.broadcast %cst_28 : f32 to vector<12x5xf32>
        %265 = vector.fma %264, %83, %84 : vector<12x5xf32>
        %266 = tensor.empty() : tensor<12x6xf16>
        %267 = linalg.matmul ins(%8, %13 : tensor<12x5xf16>, tensor<5x6xf16>) outs(%266 : tensor<12x6xf16>) -> tensor<12x6xf16>
        %268 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 128)>(%c11, %c12, %c0, %c8)
        %269 = arith.cmpf oeq, %cst, %cst : f16
        %270 = index.castu %c100638827_i32 : i32 to index
        %271 = arith.minf %cst, %cst_0 : f16
        %272 = arith.andi %c820043274_i64, %c564672457_i64 : i64
        %273 = vector.flat_transpose %159 {columns = 5 : i32, rows = 1 : i32} : vector<5xf16> -> vector<5xf16>
        %274 = math.exp %1 : tensor<12x5xf16>
        %275 = math.floor %collapsed_31 : tensor<60xf16>
        %276 = index.divs %119, %c7
        %277 = math.ctlz %c2134733142_i64 : i64
        %278 = arith.muli %false, %false_30 : i1
        %279 = vector.broadcast %c904166608_i32 : i32 to vector<5x6xi32>
        %280 = arith.shli %c904166608_i32, %c904166608_i32 : i32
        %281 = arith.minsi %c564672457_i64, %c820043274_i64 : i64
        %282 = index.ceildivu %c5, %144
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %159, %273, %cst : vector<5xf16>, vector<5xf16> into f16
        %284 = index.sub %260, %122
        %285 = arith.remf %cst_28, %cst_2 : f32
        %286 = arith.minsi %c820043274_i64, %c820043274_i64 : i64
        %287 = math.roundeven %1 : tensor<12x5xf16>
        %288 = math.floor %cst_0 : f16
        %289 = arith.ori %false, %true_26 : i1
        %expanded_39 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<9x9xi16> into tensor<9x9x1xi16>
        %290 = vector.broadcast %cst : f16 to vector<9xf16>
        %291 = vector.broadcast %false_30 : i1 to vector<9xi1>
        %292 = vector.maskedload %alloc_5[%c4, %c2], %291, %290 : memref<6x6xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %293 = arith.minsi %c820043274_i64, %c2134733142_i64 : i64
        scf.index_switch %c3 
        case 1 {
          %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %118, %118, %118 : vector<6x6xi64>, vector<6x6xi64> into vector<6x6xi64>
          %295 = index.castu %111 : index to i32
          %296 = vector.insert %cst, %160 [3] : f16 into vector<5xf16>
          %297 = vector.broadcast %in : i1 to vector<1x1xi1>
          %298 = vector.outerproduct %24, %24, %297 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
          %299 = arith.xori %c100638827_i32, %c100638827_i32 : i32
          %300 = arith.shrsi %c820043274_i64, %c564672457_i64 : i64
          %301 = arith.minui %false, %false_30 : i1
          %302 = vector.load %alloc_8[%c7, %c5] : memref<9x9xi32>, vector<6x6xi32>
          %303 = arith.minui %c564672457_i64, %c820043274_i64 : i64
          %304 = affine.load %92[%c12, %c8] : memref<9x9xi64>
          %collapsed_41 = tensor.collapse_shape %183 [[0, 1]] : tensor<6x6xi16> into tensor<36xi16>
          %305 = math.expm1 %cst_1 : f32
          %306 = vector.extract %106[4] : vector<5x6xf16>
          %307 = math.exp %cst_4 : f32
          %308 = vector.flat_transpose %273 {columns = 5 : i32, rows = 1 : i32} : vector<5xf16> -> vector<5xf16>
          %309 = arith.maxui %c564672457_i64, %c2134733142_i64 : i64
          scf.yield
        }
        default {
          %294 = arith.shrsi %extracted, %c904166608_i32 : i32
          %295 = vector.extract %159[0] : vector<5xf16>
          %alloc_41 = memref.alloc() : memref<6x6xi32>
          %296 = math.expm1 %1 : tensor<12x5xf16>
          %297 = arith.ori %c1518_i16, %c28853_i16 : i16
          %298 = arith.maxsi %c1951840860_i32, %c1951840860_i32 : i32
          %299 = math.fma %5, %5, %166 : tensor<6x6xf32>
          %300 = bufferization.to_tensor %92 : memref<9x9xi64>
          %expanded_42 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<12x5xi32> into tensor<12x5x1xi32>
          %301 = vector.broadcast %c2134733142_i64 : i64 to vector<6x6xi64>
          %alloc_43 = memref.alloc() : memref<6x6xi64>
          %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %25, %25, %false : vector<5xi1>, vector<5xi1> into i1
          %303 = vector.insertelement %true, %291[%c13 : index] : vector<9xi1>
          %304 = arith.ceildivsi %c4038_i16, %c4038_i16 : i16
          %alloca_44 = memref.alloca() : memref<9x9xi32>
          %305 = math.ctlz %10 : tensor<6x6xi64>
        }
        %true_40 = arith.constant true
        linalg.yield %true_40 : i1
      }
    %197 = vector.reduction <and>, %36 : vector<1xi1> into i1
    %198 = arith.divsi %c2134733142_i64, %c2134733142_i64 : i64
    %199 = vector.multi_reduction <and>, %20, %25 [] : vector<5xi1> to vector<5xi1>
    %extracted_32 = tensor.extract %183[%c0, %c5] : tensor<6x6xi16>
    %200 = affine.for %arg3 = 0 to 47 iter_args(%arg4 = %cst_1) -> (f32) {
      affine.yield %cst_28 : f32
    }
    %201 = vector.broadcast %cst_3 : f32 to vector<5xf32>
    %202 = vector.insert %201, %84 [8] : vector<5xf32> into vector<12x5xf32>
    %203 = index.castu %c1951840860_i32 : i32 to index
    %204 = arith.remsi %c4038_i16, %c28853_i16 : i16
    %205 = vector.reduction <maxf>, %160 : vector<5xf16> into f16
    %alloca = memref.alloca() : memref<6x6xi16>
    %206 = arith.xori %c1951840860_i32, %extracted : i32
    %207 = index.maxs %203, %185
    %208 = vector.multi_reduction <add>, %20, %false_30 [0] : vector<5xi1> to i1
    %209 = math.ceil %6 : tensor<9x9xf16>
    %210 = math.cos %cst_4 : f32
    %alloc_33 = memref.alloc() : memref<6x6xi64>
    memref.copy %alloc, %alloc_33 : memref<6x6xi64> to memref<6x6xi64>
    %211 = vector.insertelement %cst_0, %160[%122 : index] : vector<5xf16>
    %212 = vector.load %alloc_12[%c5, %c2] : memref<9x9xf32>, vector<5x6xf32>
    %213 = index.divs %rank, %152
    %214 = affine.max affine_map<(d0, d1, d2) -> (d2 - (d1 floordiv 8 + d0 + 20) * 128, d2 + 8, 0)>(%34, %c15, %c4)
    %215 = vector.broadcast %cst_2 : f32 to vector<12x5xf32>
    %216 = vector.fma %215, %84, %215 : vector<12x5xf32>
    %217 = arith.xori %c28853_i16, %c1518_i16 : i16
    %218 = vector.broadcast %c564672457_i64 : i64 to vector<6xi64>
    %219 = vector.broadcast %false : i1 to vector<6xi1>
    %220 = vector.maskedload %alloc[%c4, %c3], %219, %218 : memref<6x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    %221 = memref.alloca_scope  -> (f16) {
      %260 = vector.multi_reduction <maxsi>, %25, %20 [] : vector<5xi1> to vector<5xi1>
      %261 = vector.create_mask %203, %c7 : vector<6x6xi1>
      %262 = arith.minf %cst_0, %cst : f16
      %263 = arith.remsi %c4038_i16, %c28853_i16 : i16
      %264 = memref.alloca_scope  -> (i16) {
        %288 = math.round %5 : tensor<6x6xf32>
        %289 = index.ceildivu %66, %173
        %290 = memref.realloc %alloc_21 : memref<6xi1> to memref<12xi1>
        %291 = vector.broadcast %cst_4 : f32 to vector<6xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %212, %291 {inclusive = true, reduction_dim = 0 : i64} : vector<5x6xf32>, vector<6xf32>
        %292 = vector.broadcast %cst_2 : f32 to vector<5x6xf32>
        %293 = vector.fma %292, %292, %212 : vector<5x6xf32>
        memref.store %cst, %105[%c6, %c4] : memref<12x5xf16>
        %294 = index.divs %73, %c11
        %295 = bufferization.to_memref %reduced : memref<6xi1>
        %296 = arith.xori %c1518_i16, %c28853_i16 : i16
        %297 = math.tan %8 : tensor<12x5xf16>
        %298 = math.exp %6 : tensor<9x9xf16>
        %299 = tensor.empty(%203) : tensor<9x?xf16>
        %300 = arith.remsi %false, %true_26 : i1
        %301 = arith.remf %cst, %cst : f16
        %302 = arith.muli %c1518_i16, %c1518_i16 : i16
        %303 = arith.ceildivsi %208, %true_26 : i1
        %304 = arith.ori %c28853_i16, %c1518_i16 : i16
        memref.copy %alloc_21, %295 : memref<6xi1> to memref<6xi1>
        %305 = index.ceildivu %c1, %111
        %alloc_42 = memref.alloc() : memref<12x5xi16>
        %306 = vector.broadcast %c11 : index to vector<12xindex>
        %307 = vector.broadcast %208 : i1 to vector<12xi1>
        %308 = vector.broadcast %c904166608_i32 : i32 to vector<12xi32>
        vector.scatter %alloc_14[%c6, %c2] [%306], %307, %308 : memref<9x9xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        %309 = arith.cmpf ole, %cst_3, %cst_3 : f32
        %310 = vector.extract %84[4] : vector<12x5xf32>
        %311 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%66, %c1, %c7, %rank)
        %312 = vector.splat %false : vector<12x5xi1>
        %313 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %218, %118, %218 : vector<6xi64>, vector<6x6xi64> into vector<6xi64>
        %314 = arith.floordivsi %c904166608_i32, %c1951840860_i32 : i32
        %315 = math.ctlz %c564672457_i64 : i64
        %316 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - (d1 ceildiv 8) ceildiv 64 + 1, d0, d1 - (d1 ceildiv 8) ceildiv 64 + 1)>(%207, %311, %42, %78)
        %317 = math.ceil %166 : tensor<6x6xf32>
        %318 = arith.minui %extracted_32, %c28853_i16 : i16
        %319 = arith.xori %true_26, %false_30 : i1
        memref.alloca_scope.return %c28853_i16 : i16
      }
      %265 = math.exp2 %cst : f16
      %extracted_39 = tensor.extract %9[%c1, %c1] : tensor<5x6xi32>
      %266 = arith.xori %c1951840860_i32, %c1951840860_i32 : i32
      %267 = arith.cmpi ne, %c2134733142_i64, %c564672457_i64 : i64
      %268 = arith.remf %cst_2, %cst_4 : f32
      %269 = math.absi %15 : tensor<5x6xi1>
      %270 = vector.multi_reduction <add>, %20, %208 [0] : vector<5xi1> to i1
      %271 = math.floor %55 : tensor<6x6xf32>
      %272 = math.rsqrt %5 : tensor<6x6xf32>
      memref.alloca_scope  {
        %inserted_42 = tensor.insert %true into %21[] : tensor<i1>
        %alloca_43 = memref.alloca() : memref<6x6xi16>
        %288 = vector.multi_reduction <minf>, %159, %160 [] : vector<5xf16> to vector<5xf16>
        %289 = vector.create_mask %158, %122 : vector<9x9xi1>
        %290 = arith.addi %c564672457_i64, %c564672457_i64 : i64
        %291 = math.cos %7 : tensor<6x6xf16>
        %292 = index.ceildivu %156, %c5
        %293 = index.divs %185, %161
        %294 = index.ceildivu %c14, %98
        %295 = math.floor %55 : tensor<6x6xf32>
        %296 = math.cttz %208 : i1
        %297 = affine.load %192[%c9, %c13] : memref<12x5xi1>
        %298 = index.maxu %c8, %173
        %299 = vector.broadcast %cst_0 : f16 to vector<9x9xf16>
        %300 = math.ctlz %18 : tensor<6xi1>
        %alloca_44 = memref.alloca() : memref<9x9xf16>
        %301 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %301, %alloc_9[%34, %c15] : vector<i1>, memref<12x5xi1>
        %302 = bufferization.to_memref %collapsed : memref<81xi32>
        %303 = bufferization.clone %alloc_13 : memref<12x5xf32> to memref<12x5xf32>
        %304 = vector.shuffle %24, %219 [1, 2] : vector<1xi1>, vector<6xi1>
        %305 = tensor.empty() : tensor<12x5xi16>
        %306 = arith.remf %cst_3, %cst_4 : f32
        %alloc_45 = memref.alloc() : memref<9x9xi64>
        %307 = vector.broadcast %c7 : index to vector<5xindex>
        %308 = vector.broadcast %c2134733142_i64 : i64 to vector<5xi64>
        vector.scatter %92[%c0, %c5] [%307], %20, %308 : memref<9x9xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %309 = math.absf %cst_3 : f32
        %310 = vector.insertelement %true, %20[%119 : index] : vector<5xi1>
        %311 = arith.remf %cst_3, %cst_3 : f32
        %312 = math.ceil %cst_3 : f32
        %313 = vector.broadcast %c904166608_i32 : i32 to vector<9x9xi32>
        %314 = vector.gather %10[%185, %188] [%313], %289, %141 : tensor<6x6xi64>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi64> into vector<9x9xi64>
        memref.copy %178, %alloc_14 : memref<9x9xi32> to memref<9x9xi32>
        %315 = arith.minui %208, %false : i1
        %316 = index.ceildivu %66, %c9
      }
      %273 = arith.minf %cst_3, %cst_3 : f32
      %274 = arith.shli %c2134733142_i64, %c564672457_i64 : i64
      %275 = math.copysign %166, %5 : tensor<6x6xf32>
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %261, %261, %261 : vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
      %277 = vector.splat %72 : vector<9x9xindex>
      %278 = arith.andi %c820043274_i64, %c2134733142_i64 : i64
      %279 = scf.while (%arg3 = %215) : (vector<12x5xf32>) -> vector<12x5xf32> {
        %288 = index.castu %c5 : index to i32
        %289 = vector.load %alloc_12[%c7, %c4] : memref<9x9xf32>, vector<6x6xf32>
        %expanded_42 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x6xi64> into tensor<6x6x1xi64>
        %290 = math.floor %cst_3 : f32
        %291 = vector.transpose %219, [0] : vector<6xi1> to vector<6xi1>
        %rank_43 = tensor.rank %14 : tensor<9x9xi16>
        %extracted_44 = tensor.extract %9[%c4, %c4] : tensor<5x6xi32>
        %292 = arith.minsi %false, %true_26 : i1
        scf.condition(%208) %216 : vector<12x5xf32>
      } do {
      ^bb0(%arg3: vector<12x5xf32>):
        %288 = math.expm1 %cst_1 : f32
        %289 = arith.minf %cst_4, %cst_3 : f32
        %290 = index.casts %214 : index to i32
        memref.store %270, %192[%c1, %c2] : memref<12x5xi1>
        %291 = math.rsqrt %13 : tensor<5x6xf16>
        %292 = vector.extract %25[0] : vector<5xi1>
        %293 = arith.ceildivsi %extracted, %136 : i32
        %294 = arith.shli %extracted_32, %c1518_i16 : i16
        %295 = memref.realloc %alloc_21 : memref<6xi1> to memref<5xi1>
        %296 = math.cttz %collapsed_23 : tensor<81xi64>
        %297 = vector.broadcast %156 : index to vector<12xindex>
        %298 = vector.broadcast %true_26 : i1 to vector<12xi1>
        %299 = vector.broadcast %cst_0 : f16 to vector<12xf16>
        vector.scatter %105[%c3, %c0] [%297], %298, %299 : memref<12x5xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %300 = math.tan %8 : tensor<12x5xf16>
        %301 = vector.splat %34 : vector<12x5xindex>
        %302 = vector.transpose %216, [0, 1] : vector<12x5xf32> to vector<12x5xf32>
        %303 = arith.divf %cst_2, %cst_28 : f32
        %304 = arith.ceildivsi %136, %c904166608_i32 : i32
        scf.yield %216 : vector<12x5xf32>
      }
      %rank_40 = tensor.rank %13 : tensor<5x6xf16>
      %280 = math.tan %cst_1 : f32
      %281 = arith.divf %cst_4, %cst_1 : f32
      %extracted_41 = tensor.extract %11[%c3, %c0] : tensor<9x9xi32>
      %282 = arith.shrui %c820043274_i64, %c2134733142_i64 : i64
      %283 = math.floor %cst_4 : f32
      %284 = vector.transpose %141, [1, 0] : vector<9x9xi64> to vector<9x9xi64>
      %285 = memref.load %192[%c6, %c0] : memref<12x5xi1>
      %286 = index.ceildivu %111, %c9
      %287 = vector.transpose %159, [0] : vector<5xf16> to vector<5xf16>
      memref.alloca_scope.return %cst_0 : f16
    }
    memref.store %false, %alloc_9[%c1, %c3] : memref<12x5xi1>
    %222 = arith.addi %208, %false_30 : i1
    %223 = arith.remf %cst, %cst : f16
    %224 = arith.xori %c100638827_i32, %extracted : i32
    %225 = affine.for %arg3 = 0 to 17 iter_args(%arg4 = %9) -> (tensor<5x6xi32>) {
      affine.yield %16 : tensor<5x6xi32>
    }
    %226 = arith.remf %cst_1, %cst_28 : f32
    %227 = arith.cmpi uge, %136, %136 : i32
    %228 = arith.remui %false_30, %208 : i1
    %229 = memref.realloc %alloc_21 : memref<6xi1> to memref<6xi1>
    %230 = math.log %cst : f16
    %231 = math.absi %c1518_i16 : i16
    %232 = vector.shuffle %216, %84 [2, 5, 7, 10, 11, 14, 18, 19, 20, 23] : vector<12x5xf32>, vector<12x5xf32>
    %233 = arith.minui %208, %true_26 : i1
    %from_elements = tensor.from_elements %cst_1, %cst_1, %cst_4, %cst_3, %cst_2, %cst_3, %cst_4, %cst_28, %cst_2, %cst_3, %cst_1, %cst_4, %cst_3, %cst_1, %cst_4, %cst_4, %cst_2, %cst_28, %cst_4, %cst_2, %cst_4, %cst_3, %cst_3, %cst_28, %cst_28, %cst_28, %cst_2, %cst_28, %cst_2, %cst_3 : tensor<5x6xf32>
    %234 = arith.ori %c28853_i16, %c28853_i16 : i16
    %235 = scf.while (%arg3 = %220) : (vector<6xi64>) -> vector<6xi64> {
      %from_elements_39 = tensor.from_elements %cst, %cst_0, %cst, %221, %cst, %cst, %221, %221, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %221, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %221, %cst_0, %cst_0, %cst_0, %cst, %221, %cst, %cst_0, %cst_0, %cst_0, %221, %221, %cst, %cst, %221, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %221, %221, %cst, %221, %221, %221, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %221, %cst, %cst, %cst, %cst, %cst_0, %cst, %221, %cst, %221, %cst, %221, %221, %cst_0, %cst_0, %cst, %cst, %221, %cst, %cst_0, %221, %cst_0, %cst, %221, %221, %cst : tensor<9x9xf16>
      memref.store %c1951840860_i32, %45[%c4, %c4] : memref<9x9xi32>
      %260 = arith.remsi %c564672457_i64, %c2134733142_i64 : i64
      %261 = math.ipowi %extracted, %136 : i32
      %262 = arith.shli %true, %false_30 : i1
      %263 = arith.divui %extracted_32, %extracted_32 : i16
      %extracted_40 = tensor.extract %166[%c4, %c0] : tensor<6x6xf32>
      %264 = arith.minf %cst_0, %cst : f16
      scf.condition(%true_26) %220 : vector<6xi64>
    } do {
    ^bb0(%arg3: vector<6xi64>):
      %260 = math.log %7 : tensor<6x6xf16>
      %true_39 = index.bool.constant true
      %261 = index.maxs %203, %203
      %262 = arith.ori %c820043274_i64, %c2134733142_i64 : i64
      %263 = vector.broadcast %c14 : index to vector<6xindex>
      vector.scatter %alloc_18[%c3, %c5] [%263], %219, %219 : memref<6x6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
      %264 = vector.broadcast %false_30 : i1 to vector<9xi1>
      %265 = vector.maskedload %alloc_18[%c1, %c3], %264, %264 : memref<6x6xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
      %266 = arith.shrsi %true_39, %false_30 : i1
      %267 = memref.load %92[%c2, %c0] : memref<9x9xi64>
      %268 = arith.minui %true, %false_30 : i1
      %269 = math.tanh %collapsed_31 : tensor<60xf16>
      %270 = arith.remf %cst, %cst_0 : f16
      bufferization.dealloc_tensor %18 : tensor<6xi1>
      %271 = arith.remsi %c100638827_i32, %extracted : i32
      %272 = math.log1p %collapsed_31 : tensor<60xf16>
      %273 = bufferization.to_memref %8 : memref<12x5xf16>
      %274 = arith.remsi %c28853_i16, %c28853_i16 : i16
      scf.yield %220 : vector<6xi64>
    }
    %236 = arith.muli %extracted_32, %c4038_i16 : i16
    %237 = arith.maxui %false_30, %208 : i1
    %238 = math.fpowi %cst_28, %136 : f32, i32
    %239 = bufferization.to_memref %17 : memref<5x6xi32>
    %240 = affine.max affine_map<(d0) -> (d0 * 2, 0, d0 * 8, 0)>(%73)
    %241 = arith.divui %extracted, %c904166608_i32 : i32
    %242 = arith.cmpi ne, %false, %false : i1
    %243 = tensor.empty(%161, %152) : tensor<?x?xi32>
    bufferization.dealloc_tensor %8 : tensor<12x5xf16>
    %generated_34 = tensor.generate %c7 {
    ^bb0(%arg3: index, %arg4: index):
      %260 = index.ceildivu %c8, %c7
      %261 = math.rsqrt %6 : tensor<9x9xf16>
      %262 = vector.extract_strided_slice %36 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %263 = index.ceildivs %109, %c5
      tensor.yield %extracted_32 : i16
    } : tensor<?x9xi16>
    scf.index_switch %34 
    case 1 {
      %260 = index.divs %173, %c12
      %261 = arith.remsi %extracted_32, %c1518_i16 : i16
      %262 = arith.andi %c564672457_i64, %c2134733142_i64 : i64
      %263 = arith.cmpf ule, %cst_4, %cst_2 : f32
      %264 = arith.maxsi %c28853_i16, %c4038_i16 : i16
      %265 = vector.splat %c1518_i16 : vector<6x6xi16>
      %266 = arith.remf %cst_3, %cst_4 : f32
      %267 = math.exp %cst_28 : f32
      %268 = index.divu %66, %c8
      %269 = math.ctpop %22 : tensor<i1>
      %270 = vector.flat_transpose %201 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %271 = index.castu %188 : index to i32
      %272 = vector.splat %c11 : vector<6x6xindex>
      %splat_39 = tensor.splat %c4038_i16 : tensor<12x5xi16>
      %273 = arith.cmpi ne, %c100638827_i32, %extracted : i32
      %274 = arith.divui %extracted_32, %c28853_i16 : i16
      scf.yield
    }
    case 2 {
      %false_39 = index.bool.constant false
      %260 = vector.insertelement %cst_0, %160[%66 : index] : vector<5xf16>
      %rank_40 = tensor.rank %55 : tensor<6x6xf32>
      %261 = arith.maxsi %false_39, %true : i1
      %262 = math.exp %7 : tensor<6x6xf16>
      %263 = math.roundeven %7 : tensor<6x6xf16>
      %264 = arith.remf %221, %cst_0 : f16
      memref.store %208, %alloc_9[%c4, %c4] : memref<12x5xi1>
      %extracted_41 = tensor.extract %3[%c5, %c4] : tensor<12x5xi32>
      %265 = vector.matrix_multiply %25, %219 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 6 : i32} : (vector<5xi1>, vector<6xi1>) -> vector<30xi1>
      %266 = arith.remf %cst_4, %cst_1 : f32
      %267 = arith.xori %c1951840860_i32, %c100638827_i32 : i32
      %268 = arith.minsi %extracted, %c904166608_i32 : i32
      %269 = index.floordivs %c0, %c2
      %270 = vector.insertelement %208, %25[%c14 : index] : vector<5xi1>
      %271 = scf.index_switch %rank_40 -> i16 
      case 1 {
        %272 = arith.ori %c820043274_i64, %c564672457_i64 : i64
        %273 = memref.atomic_rmw maxu %c820043274_i64, %53[%c8, %c2] : (i64, memref<9x9xi64>) -> i64
        %274 = affine.load %53[%c1, %c10] : memref<9x9xi64>
        %275 = math.exp2 %cst_28 : f32
        %276 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %277 = vector.insert %276, %212 [0] : vector<6xf32> into vector<5x6xf32>
        %278 = index.divs %269, %c6
        %rank_42 = tensor.rank %collapsed_31 : tensor<60xf16>
        %279 = arith.cmpf ole, %cst_2, %cst_4 : f32
        %280 = affine.max affine_map<(d0, d1, d2) -> (d2 - 8, (d1 ceildiv 128) mod 128 - 64)>(%156, %c2, %c11)
        %281 = arith.remf %cst_2, %cst_28 : f32
        %extracted_43 = tensor.extract %from_elements[%c0, %c2] : tensor<5x6xf32>
        %282 = bufferization.clone %alloc : memref<6x6xi64> to memref<6x6xi64>
        %283 = affine.min affine_map<(d0) -> (d0, (d0 ceildiv 4) mod 8)>(%c10)
        %284 = affine.apply affine_map<(d0) -> (-((d0 floordiv 4) ceildiv 8))>(%156)
        memref.copy %alloc, %282 : memref<6x6xi64> to memref<6x6xi64>
        %285 = arith.shli %208, %true : i1
        scf.yield %c1518_i16 : i16
      }
      case 2 {
        %272 = vector.extract %84[7] : vector<12x5xf32>
        %273 = arith.cmpi ne, %c820043274_i64, %c564672457_i64 : i64
        %274 = math.copysign %1, %8 : tensor<12x5xf16>
        %275 = arith.shrui %extracted_32, %c1518_i16 : i16
        %276 = arith.minsi %true, %false : i1
        %277 = arith.minsi %extracted_32, %c4038_i16 : i16
        %alloc_42 = memref.alloc() : memref<5x6xi16>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %25, %false_39 : vector<5xi1>, vector<5xi1> into i1
        %279 = vector.extract %218[3] : vector<6xi64>
        %280 = arith.ori %c564672457_i64, %c2134733142_i64 : i64
        %281 = bufferization.to_memref %collapsed_23 : memref<81xi64>
        %282 = affine.load %alloc_12[%c3, %c2] : memref<9x9xf32>
        %283 = vector.broadcast %221 : f16 to vector<9x9xf16>
        %284 = vector.broadcast %true : i1 to vector<9x9xi1>
        %285 = vector.broadcast %extracted_41 : i32 to vector<9x9xi32>
        %286 = vector.gather %alloc_10[%29, %c2] [%285], %284, %283 : memref<6x6xf16>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xf16> into vector<9x9xf16>
        %287 = bufferization.to_memref %5 : memref<6x6xf32>
        %c44 = arith.constant 44 : index
        %extracted_43 = tensor.extract %collapsed_31[%c44] : tensor<60xf16>
        %288 = vector.insertelement %false, %24[%122 : index] : vector<1xi1>
        scf.yield %extracted_32 : i16
      }
      case 3 {
        %272 = vector.broadcast %cst_3 : f32 to vector<12x5xf32>
        %273 = vector.broadcast %185 : index to vector<5xindex>
        vector.scatter %alloc_10[%c4, %c2] [%273], %25, %160 : memref<6x6xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
        %274 = arith.divf %cst_28, %cst_3 : f32
        %275 = tensor.empty() : tensor<12x6xf16>
        %276 = linalg.matmul ins(%1, %13 : tensor<12x5xf16>, tensor<5x6xf16>) outs(%275 : tensor<12x6xf16>) -> tensor<12x6xf16>
        %277 = vector.load %45[%c0, %c8] : memref<9x9xi32>, vector<5x6xi32>
        %278 = arith.maxsi %c1951840860_i32, %c904166608_i32 : i32
        %279 = index.divs %213, %c12
        %280 = math.log2 %cst_3 : f32
        %281 = index.maxs %188, %119
        %282 = vector.maskedload %53[%c6, %c6], %219, %220 : memref<9x9xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %283 = affine.load %alloc_8[%c6, %c15] : memref<9x9xi32>
        %splat_42 = tensor.splat %c1951840860_i32 : tensor<6x6xi32>
        %284 = bufferization.clone %92 : memref<9x9xi64> to memref<9x9xi64>
        %285 = math.copysign %221, %cst : f16
        %286 = affine.min affine_map<(d0) -> ((d0 mod 16 + d0) * 2, d0 - (d0 mod 16 + d0), d0 mod 16, (d0 mod 16 + d0) mod 8)>(%42)
        %287 = vector.reduction <minsi>, %36 : vector<1xi1> into i1
        scf.yield %c1518_i16 : i16
      }
      case 4 {
        %272 = index.sub %c0, %c0
        %273 = vector.reduction <maxsi>, %186 : vector<9xi64> into i64
        %274 = vector.broadcast %cst_4 : f32 to vector<12x5xf32>
        %275 = math.exp2 %8 : tensor<12x5xf16>
        %extracted_42 = tensor.extract %9[%c1, %c3] : tensor<5x6xi32>
        %rank_43 = tensor.rank %generated_34 : tensor<?x9xi16>
        %276 = memref.atomic_rmw minu %extracted, %178[%c6, %c7] : (i32, memref<9x9xi32>) -> i32
        %collapsed_44 = tensor.collapse_shape %1 [[0, 1]] : tensor<12x5xf16> into tensor<60xf16>
        %277 = index.maxs %c13, %188
        %278 = math.tan %221 : f16
        %279 = math.floor %collapsed_44 : tensor<60xf16>
        %280 = math.ctpop %2 : tensor<5x6xi32>
        %281 = arith.divui %c904166608_i32, %c1951840860_i32 : i32
        %282 = vector.transpose %83, [0, 1] : vector<12x5xf32> to vector<12x5xf32>
        memref.store %cst_1, %alloc_7[%c2, %c0] : memref<6x6xf32>
        %expanded_45 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<5x6xi32> into tensor<5x6x1xi32>
        scf.yield %c4038_i16 : i16
      }
      default {
        %inserted_42 = tensor.insert %c28853_i16 into %14[%c8, %c1] : tensor<9x9xi16>
        %272 = math.copysign %7, %7 : tensor<6x6xf16>
        %273 = arith.muli %c564672457_i64, %c2134733142_i64 : i64
        %274 = vector.extract %201[2] : vector<5xf32>
        %275 = arith.minsi %c904166608_i32, %c904166608_i32 : i32
        %276 = arith.cmpf olt, %cst_3, %cst_4 : f32
        %277 = vector.multi_reduction <mul>, %106, %160 [1] : vector<5x6xf16> to vector<5xf16>
        %278 = math.ceil %7 : tensor<6x6xf16>
        %279 = vector.create_mask %185, %207 : vector<6x6xi1>
        %280 = arith.minui %true, %true_26 : i1
        %alloca_43 = memref.alloca() : memref<6x6xi64>
        %281 = bufferization.clone %192 : memref<12x5xi1> to memref<12x5xi1>
        %282 = arith.divui %c2134733142_i64, %c564672457_i64 : i64
        %283 = vector.shuffle %186, %186 [2, 3, 7, 9, 13, 14, 15, 16, 17] : vector<9xi64>, vector<9xi64>
        %284 = affine.max affine_map<(d0, d1, d2) -> (0, d1 + d0, d0, d0)>(%c2, %111, %rank)
        %285 = vector.transpose %160, [0] : vector<5xf16> to vector<5xf16>
        scf.yield %extracted_32 : i16
      }
      scf.yield
    }
    case 3 {
      %260 = bufferization.to_tensor %alloc_15 : memref<9x9xi64>
      %261 = arith.remf %cst_0, %cst : f16
      %262 = vector.splat %161 : vector<5x6xindex>
      %263 = arith.maxsi %false, %208 : i1
      %264 = arith.maxf %cst_1, %cst_3 : f32
      %265 = affine.if affine_set<(d0, d1, d2) : (d0 + d2 >= 0, d1 ceildiv 8 >= 0, d2 mod 16 + 2 >= 0)>(%c11, %c8, %c1) -> memref<9x9xi16> {
        %278 = vector.multi_reduction <minsi>, %25, %20 [] : vector<5xi1> to vector<5xi1>
        %279 = arith.remui %208, %false_30 : i1
        %280 = vector.broadcast %221 : f16 to vector<5x5xf16>
        %281 = vector.outerproduct %159, %160, %280 {kind = #vector.kind<add>} : vector<5xf16>, vector<5xf16>
        %282 = math.tan %cst : f16
        %283 = math.tan %cst_2 : f32
        %284 = arith.remf %cst_4, %cst_4 : f32
        %collapsed_39 = tensor.collapse_shape %11 [[0, 1]] : tensor<9x9xi32> into tensor<81xi32>
        %285 = math.rsqrt %13 : tensor<5x6xf16>
        affine.yield %alloc_17 : memref<9x9xi16>
      } else {
        %278 = vector.splat %98 : vector<9x9xindex>
        %true_39 = index.bool.constant true
        %true_40 = index.bool.constant true
        %279 = index.sub %c5, %72
        %280 = vector.broadcast %c3 : index to vector<9xindex>
        %281 = vector.broadcast %false_30 : i1 to vector<9xi1>
        vector.scatter %92[%c6, %c5] [%280], %281, %186 : memref<9x9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %rank_41 = tensor.rank %3 : tensor<12x5xi32>
        %282 = math.fpowi %166, %4 : tensor<6x6xf32>, tensor<6x6xi32>
        %283 = arith.divsi %true_26, %false : i1
        affine.yield %alloc_17 : memref<9x9xi16>
      }
      %266 = vector.multi_reduction <minf>, %106, %221 [0, 1] : vector<5x6xf16> to f16
      %267 = tensor.empty(%c10) : tensor<?x9xi1>
      %268 = tensor.empty() : tensor<6x6xi1>
      %269 = vector.broadcast %false_30 : i1 to vector<6x6xi1>
      %270 = vector.broadcast %136 : i32 to vector<6x6xi32>
      %271 = vector.gather %268[%185, %111] [%270], %269, %269 : tensor<6x6xi1>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi1> into vector<6x6xi1>
      %272 = math.round %8 : tensor<12x5xf16>
      %273 = arith.minf %266, %221 : f16
      %274 = arith.ori %c2134733142_i64, %c820043274_i64 : i64
      affine.store %266, %alloc_10[%c14, %c11] : memref<6x6xf16>
      %275 = arith.remsi %c904166608_i32, %136 : i32
      %276 = math.exp %cst : f16
      %277 = index.maxs %c6, %rank
      scf.yield
    }
    case 4 {
      %260 = index.sub %119, %c14
      %261 = affine.min affine_map<(d0, d1) -> ((d0 - 2) * 128, (d0 - 2) * 8, ((d0 - 2) * -8) floordiv 16, d1 floordiv 64)>(%c1, %c4)
      %262 = arith.cmpf ult, %cst_2, %cst_2 : f32
      vector.print %118 : vector<6x6xi64>
      %263 = vector.insert %201, %84 [3] : vector<5xf32> into vector<12x5xf32>
      %264 = arith.andi %c4038_i16, %c28853_i16 : i16
      %265 = vector.multi_reduction <add>, %20, %208 [0] : vector<5xi1> to i1
      %266 = affine.load %192[%c8, %c0] : memref<12x5xi1>
      %267 = math.absi %22 : tensor<i1>
      %268 = vector.transpose %24, [0] : vector<1xi1> to vector<1xi1>
      %269 = arith.cmpi ne, %false_30, %true_26 : i1
      %270 = math.ceil %13 : tensor<5x6xf16>
      memref.alloca_scope  {
        memref.store %cst_4, %alloc_6[%c8, %c2] : memref<12x5xf32>
        %alloca_39 = memref.alloca() : memref<5x6xi16>
        %278 = math.ctpop %reduced : tensor<6xi1>
        %279 = index.ceildivu %c2, %109
        %280 = index.maxu %c8, %214
        %281 = index.ceildivu %188, %c6
        %282 = index.mul %c4, %72
        %false_40 = index.bool.constant false
        %283 = index.divs %111, %109
        %collapsed_41 = tensor.collapse_shape %1 [[0, 1]] : tensor<12x5xf16> into tensor<60xf16>
        %284 = bufferization.clone %alloc_20 : memref<9x9xi32> to memref<9x9xi32>
        %285 = arith.remf %cst, %221 : f16
        %286 = vector.transpose %83, [0, 1] : vector<12x5xf32> to vector<12x5xf32>
        %287 = arith.remui %c564672457_i64, %c2134733142_i64 : i64
        %inserted_42 = tensor.insert %extracted into %collapsed_25[%c5] : tensor<36xi32>
        %288 = vector.reduction <minui>, %219 : vector<6xi1> into i1
        %289 = index.sub %73, %207
        %290 = vector.insertelement %true_26, %70[%c15 : index] : vector<1xi1>
        %291 = index.ceildivs %66, %rank
        %292 = vector.matrix_multiply %36, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %293 = arith.addi %265, %208 : i1
        %294 = math.ceil %collapsed_31 : tensor<60xf16>
        %295 = arith.remsi %c4038_i16, %extracted_32 : i16
        %296 = arith.remf %cst, %cst : f16
        %alloca_43 = memref.alloca() : memref<5x6xi32>
        %297 = bufferization.clone %alloc_18 : memref<6x6xi1> to memref<6x6xi1>
        %298 = math.atan %collapsed_31 : tensor<60xf16>
        %299 = arith.divui %true, %208 : i1
        %expanded_44 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<5x6xf16> into tensor<5x6x1xf16>
        %300 = affine.load %alloc_16[%c8, %c6] : memref<5x6xi1>
        %301 = index.sub %c6, %261
        %302 = vector.transpose %212, [0, 1] : vector<5x6xf32> to vector<5x6xf32>
      }
      %271 = index.ceildivu %109, %214
      %272 = vector.matrix_multiply %219, %70 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<1xi1>) -> vector<6xi1>
      %273 = tensor.empty() : tensor<12x5xi16>
      %274 = vector.broadcast %extracted_32 : i16 to vector<5x6xi16>
      %275 = vector.broadcast %265 : i1 to vector<5x6xi1>
      %276 = vector.broadcast %c904166608_i32 : i32 to vector<5x6xi32>
      %277 = vector.gather %273[%152, %122] [%276], %275, %274 : tensor<12x5xi16>, vector<5x6xi32>, vector<5x6xi1>, vector<5x6xi16> into vector<5x6xi16>
      scf.yield
    }
    default {
      %false_39 = index.bool.constant false
      memref.store %c1951840860_i32, %45[%c4, %c0] : memref<9x9xi32>
      scf.if %false {
        %275 = tensor.empty() : tensor<12x5xf16>
        %276 = affine.max affine_map<(d0) -> ((-d0) floordiv 16, ((-d0) ceildiv 128 + 3) * 128, d0 - 8, (-d0) ceildiv 128)>(%152)
        %277 = math.ipowi %4, %4 : tensor<6x6xi32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %24, %70, %208 : vector<1xi1>, vector<1xi1> into i1
        %279 = tensor.empty(%c12) : tensor<6x?xi64>
        %alloc_40 = memref.alloc() : memref<6xi1>
        memref.copy %alloc_21, %alloc_40 : memref<6xi1> to memref<6xi1>
        %280 = index.divs %c6, %185
        %alloca_41 = memref.alloca() : memref<9x9xf32>
      }
      %260 = vector.maskedload %alloc_18[%c1, %c2], %219, %219 : memref<6x6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
      %261 = index.castu %c2 : index to i32
      %262 = math.exp %221 : f16
      %263 = arith.remf %cst, %cst : f16
      %264 = math.absi %136 : i32
      %265 = math.atan %from_elements : tensor<5x6xf32>
      %266 = vector.broadcast %208 : i1 to vector<5x6xi1>
      %267 = vector.broadcast %c100638827_i32 : i32 to vector<5x6xi32>
      %268 = vector.gather %alloc_7[%203, %c6] [%267], %266, %212 : memref<6x6xf32>, vector<5x6xi32>, vector<5x6xi1>, vector<5x6xf32> into vector<5x6xf32>
      %269 = math.absi %18 : tensor<6xi1>
      %270 = vector.multi_reduction <mul>, %219, %260 [] : vector<6xi1> to vector<6xi1>
      %271 = index.divu %240, %c1
      %272 = index.divs %158, %240
      %273 = vector.shuffle %106, %106 [2, 3, 6, 9] : vector<5x6xf16>, vector<5x6xf16>
      %274 = vector.shuffle %118, %118 [2, 4, 6, 10] : vector<6x6xi64>, vector<6x6xi64>
    }
    %244 = math.absf %cst_28 : f32
    %245 = math.fma %221, %cst_0, %221 : f16
    %inserted = tensor.insert %true_26 into %18[%c4] : tensor<6xi1>
    %246 = memref.realloc %alloc_21 : memref<6xi1> to memref<5xi1>
    %247 = arith.cmpf olt, %cst_0, %cst_0 : f16
    %248 = math.roundeven %7 : tensor<6x6xf16>
    %249 = arith.remui %c820043274_i64, %c820043274_i64 : i64
    %false_35 = index.bool.constant false
    %250 = vector.broadcast %c4038_i16 : i16 to vector<12x5xi16>
    %251 = index.ceildivu %207, %98
    %252 = index.divs %158, %42
    %253 = index.sub %c5, %252
    %extracted_36 = tensor.extract %3[%c1, %c4] : tensor<12x5xi32>
    %254 = index.divu %c7, %240
    memref.alloca_scope  {
      %260 = arith.andi %c28853_i16, %c28853_i16 : i16
      %261 = bufferization.clone %alloc : memref<6x6xi64> to memref<6x6xi64>
      %262 = vector.reduction <mul>, %201 : vector<5xf32> into f32
      %263 = arith.shrsi %c1951840860_i32, %c904166608_i32 : i32
      %inserted_39 = tensor.insert %cst_1 into %5[%c1, %c5] : tensor<6x6xf32>
      %264 = vector.insert %c2134733142_i64, %186 [5] : i64 into vector<9xi64>
      %265 = arith.divsi %true, %true : i1
      %266 = tensor.empty() : tensor<12x5xf16>
      %alloc_40 = memref.alloc() : memref<12x5xi32>
      %267 = arith.andi %extracted_36, %136 : i32
      %268 = affine.if affine_set<(d0, d1, d2, d3) : (d2 * 2 == 0, d1 == 0, d2 * 2 - (d0 + d2) == 0, -d1 >= 0)>(%c1, %c13, %c12, %c4) -> i64 {
        %289 = arith.remsi %136, %extracted : i32
        %splat_43 = tensor.splat %false_30 : tensor<5x6xi1>
        %290 = vector.create_mask %c14, %158 : vector<6x6xi1>
        %291 = tensor.empty() : tensor<9x9xf32>
        %292 = arith.andi %c820043274_i64, %c564672457_i64 : i64
        %alloc_44 = memref.alloc() : memref<6x6xf32>
        %293 = vector.insert %219, %290 [0] : vector<6xi1> into vector<6x6xi1>
        %collapsed_45 = tensor.collapse_shape %12 [[0, 1]] : tensor<9x9xi64> into tensor<81xi64>
        affine.yield %c564672457_i64 : i64
      } else {
        %289 = arith.minui %true, %false_30 : i1
        memref.store %extracted, %alloc_14[%c0, %c2] : memref<9x9xi32>
        %290 = math.floor %collapsed_31 : tensor<60xf16>
        %291 = arith.shli %c4038_i16, %c4038_i16 : i16
        %292 = index.casts %161 : index to i32
        memref.store %136, %alloc_20[%c0, %c4] : memref<9x9xi32>
        %293 = vector.insert %218, %118 [0] : vector<6xi64> into vector<6x6xi64>
        %294 = vector.broadcast %extracted_32 : i16 to vector<5xi16>
        %295 = vector.insert %294, %250 [4] : vector<5xi16> into vector<12x5xi16>
        affine.yield %c820043274_i64 : i64
      }
      %269 = index.sub %c8, %72
      %270 = math.rsqrt %cst_4 : f32
      %rank_41 = tensor.rank %37 : tensor<12x5xi64>
      %271 = bufferization.to_tensor %105 : memref<12x5xf16>
      %272 = vector.extract %160[2] : vector<5xf16>
      %273 = vector.broadcast %221 : f16 to vector<12x5xf16>
      %274 = math.log %8 : tensor<12x5xf16>
      %275 = arith.remf %cst, %221 : f16
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %186, %141, %186 : vector<9xi64>, vector<9x9xi64> into vector<9xi64>
      %277 = arith.shli %c100638827_i32, %c1951840860_i32 : i32
      %278 = index.casts %c11 : index to i32
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %219, %219, %false : vector<6xi1>, vector<6xi1> into i1
      %expanded_42 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<9x9xi32> into tensor<9x9x1xi32>
      %280 = vector.broadcast %208 : i1 to vector<12x5xi1>
      %281 = vector.extract %216[8] : vector<12x5xf32>
      %282 = vector.broadcast %c820043274_i64 : i64 to vector<5x6xi64>
      %283 = arith.minf %cst_0, %cst : f16
      %284 = arith.andi %false, %true : i1
      %285 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
      %286 = vector.fma %285, %285, %285 : vector<9x9xf32>
      %287 = arith.cmpf uno, %cst_1, %cst_2 : f32
      %288 = arith.remf %cst_3, %cst_1 : f32
    }
    %255 = tensor.empty() : tensor<5x6xi32>
    %256 = linalg.copy ins(%2 : tensor<5x6xi32>) outs(%255 : tensor<5x6xi32>) -> tensor<5x6xi32>
    %alloc_37 = memref.alloc() : memref<9x9xf32>
    linalg.transpose ins(%alloc_12 : memref<9x9xf32>) outs(%alloc_37 : memref<9x9xf32>) permutation = [1, 0] 
    %257 = tensor.empty() : tensor<6xi32>
    %reduced_38 = linalg.reduce ins(%4 : tensor<6x6xi32>) outs(%257 : tensor<6xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        memref.assume_alignment %alloc_19, 2 : memref<9x9xf16>
        %false_39 = index.bool.constant false
        %260 = vector.insert %c564672457_i64, %186 [4] : i64 into vector<9xi64>
        %261 = arith.minf %cst_2, %cst_3 : f32
        %262 = index.ceildivu %253, %c7
        scf.index_switch %185 
        case 1 {
          %alloca_41 = memref.alloca() : memref<9x9xi1>
          %264 = math.fma %cst_4, %cst_28, %cst_1 : f32
          %alloc_42 = memref.alloc() : memref<6x6xi64>
          memref.copy %alloc, %alloc_42 : memref<6x6xi64> to memref<6x6xi64>
          %265 = arith.ceildivsi %false, %208 : i1
          %266 = affine.max affine_map<(d0) -> (d0 * 32, (d0 + 128) * 8)>(%72)
          %267 = arith.cmpf uge, %cst_0, %cst_0 : f16
          %268 = vector.insert %c564672457_i64, %220 [0] : i64 into vector<6xi64>
          %269 = arith.muli %extracted_32, %c28853_i16 : i16
          %270 = vector.multi_reduction <mul>, %159, %160 [] : vector<5xf16> to vector<5xf16>
          %rank_43 = tensor.rank %15 : tensor<5x6xi1>
          %alloc_44 = memref.alloc() : memref<12x5xi64>
          %271 = tensor.empty(%66, %66) : tensor<?x?xi64>
          %272 = bufferization.to_tensor %alloc_8 : memref<9x9xi32>
          %273 = vector.multi_reduction <and>, %25, %true_26 [0] : vector<5xi1> to i1
          %274 = index.ceildivu %156, %73
          %275 = math.log %7 : tensor<6x6xf16>
          scf.yield
        }
        case 2 {
          %264 = bufferization.clone %alloc_10 : memref<6x6xf16> to memref<6x6xf16>
          %265 = arith.ceildivsi %c4038_i16, %c4038_i16 : i16
          %266 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %118, %220, %220 : vector<6x6xi64>, vector<6xi64> into vector<6xi64>
          %267 = vector.broadcast %cst : f16 to vector<5x6xf16>
          %268 = vector.create_mask %c1, %c10 : vector<6x6xi1>
          %inserted_41 = tensor.insert %cst_0 into %6[%c0, %c2] : tensor<9x9xf16>
          %269 = math.copysign %cst_28, %cst_1 : f32
          %270 = arith.minui %c100638827_i32, %init : i32
          %271 = vector.splat %98 : vector<12x5xindex>
          %272 = arith.xori %true_26, %false_30 : i1
          %273 = vector.splat %cst_1 : vector<6x6xf32>
          %274 = arith.cmpf uno, %cst_4, %cst_4 : f32
          %275 = arith.remf %cst, %cst_0 : f16
          %276 = arith.andi %c100638827_i32, %136 : i32
          %alloc_42 = memref.alloc() : memref<9x9xi64>
          %277 = math.exp %8 : tensor<12x5xf16>
          scf.yield
        }
        default {
          %264 = arith.shrui %c28853_i16, %c28853_i16 : i16
          %265 = math.absi %18 : tensor<6xi1>
          %266 = affine.apply affine_map<(d0, d1, d2) -> (d2 * -2)>(%152, %144, %252)
          %267 = arith.minf %cst, %cst_0 : f16
          %268 = math.round %13 : tensor<5x6xf16>
          %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %160, %159, %cst_0 : vector<5xf16>, vector<5xf16> into f16
          %270 = arith.mulf %cst_4, %cst_2 : f32
          %271 = math.exp2 %7 : tensor<6x6xf16>
          %272 = vector.broadcast %72 : index to vector<6xindex>
          vector.scatter %192[%c8, %c1] [%272], %219, %219 : memref<12x5xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %273 = index.sub %203, %c3
          %274 = bufferization.to_tensor %alloc_9 : memref<12x5xi1>
          affine.store %208, %alloc_16[%c7, %c6] : memref<5x6xi1>
          %275 = math.round %cst_2 : f32
          %276 = arith.shli %136, %extracted_36 : i32
          %277 = arith.cmpf uno, %221, %cst : f16
          %278 = arith.remui %c1518_i16, %c28853_i16 : i16
        }
        %false_40 = index.bool.constant false
        %263 = bufferization.to_tensor %alloc_12 : memref<9x9xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %258 = scf.parallel (%arg3) = (%203) to (%111) step (%c4) init (%alloc_17) -> memref<9x9xi16> {
      bufferization.dealloc_tensor %18 : tensor<6xi1>
      %260 = arith.xori %extracted_36, %136 : i32
      %261 = arith.divsi %208, %false_30 : i1
      %262 = vector.transpose %36, [0] : vector<1xi1> to vector<1xi1>
      %rank_39 = tensor.rank %5 : tensor<6x6xf32>
      %263 = arith.shli %false_35, %true : i1
      %264 = arith.maxsi %c100638827_i32, %extracted : i32
      %265 = affine.apply affine_map<(d0, d1) -> ((-(d0 - 48)) mod 8 + 1)>(%34, %c15)
      %266 = tensor.empty() : tensor<9x9xf16>
      %mapped_40 = linalg.map ins(%6, %6 : tensor<9x9xf16>, tensor<9x9xf16>) outs(%266 : tensor<9x9xf16>)
        (%in: f16, %in_43: f16) {
          %275 = math.floor %cst_3 : f32
          %276 = vector.broadcast %extracted_32 : i16 to vector<6x6xi16>
          %277 = arith.negf %cst : f16
          %278 = index.casts %208 : i1 to index
          %279 = math.exp %8 : tensor<12x5xf16>
          %280 = index.maxu %66, %265
          %281 = index.ceildivu %207, %c0
          %282 = math.ctlz %12 : tensor<9x9xi64>
          %283 = vector.splat %156 : vector<12x5xindex>
          %284 = arith.divf %cst_0, %221 : f16
          %285 = arith.shrsi %c1951840860_i32, %136 : i32
          %286 = vector.outerproduct %220, %220, %118 {kind = #vector.kind<maxsi>} : vector<6xi64>, vector<6xi64>
          %287 = bufferization.to_memref %13 : memref<5x6xf16>
          %288 = arith.xori %c904166608_i32, %extracted : i32
          %inserted_44 = tensor.insert %c1951840860_i32 into %collapsed[%c4] : tensor<81xi32>
          %289 = vector.reduction <add>, %220 : vector<6xi64> into i64
          %290 = memref.atomic_rmw mins %c2134733142_i64, %alloc_15[%c2, %c3] : (i64, memref<9x9xi64>) -> i64
          %291 = arith.addi %false_30, %false_30 : i1
          %292 = math.ipowi %c1518_i16, %extracted_32 : i16
          %293 = arith.cmpi eq, %208, %true : i1
          %294 = arith.ori %c1518_i16, %extracted_32 : i16
          %295 = affine.min affine_map<(d0) -> (d0 * 9, -d0)>(%280)
          affine.store %extracted, %alloc_20[%c10, %c8] : memref<9x9xi32>
          %296 = math.cttz %22 : tensor<i1>
          %297 = arith.shrsi %false_35, %true_26 : i1
          %298 = arith.minsi %false_35, %false_30 : i1
          %inserted_45 = tensor.insert %c28853_i16 into %generated_34[%c0, %c4] : tensor<?x9xi16>
          %299 = index.maxs %42, %c15
          %300 = arith.remf %cst_0, %in : f16
          %301 = memref.atomic_rmw andi %c100638827_i32, %alloc_20[%c2, %c4] : (i32, memref<9x9xi32>) -> i32
          %302 = arith.divsi %extracted_36, %c100638827_i32 : i32
          memref.copy %178, %alloc_8 : memref<9x9xi32> to memref<9x9xi32>
          %cst_46 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_46 : f16
        }
      %267 = math.tan %cst_3 : f32
      %268 = arith.addi %false_30, %false_35 : i1
      %269 = arith.floordivsi %extracted_32, %c1518_i16 : i16
      %270 = vector.broadcast %cst_28 : f32 to vector<6xf32>
      %271 = vector.maskedload %alloc_7[%c3, %c0], %219, %270 : memref<6x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %272 = vector.broadcast %122 : index to vector<6xindex>
      %273 = vector.broadcast %extracted_36 : i32 to vector<6xi32>
      vector.scatter %178[%c4, %c0] [%272], %219, %273 : memref<9x9xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
      %c30 = arith.constant 30 : index
      %extracted_41 = tensor.extract %collapsed_31[%c30] : tensor<60xf16>
      %274 = arith.remf %extracted_41, %221 : f16
      %alloc_42 = memref.alloc() : memref<9x9xi16>
      scf.reduce(%alloc_42)  : memref<9x9xi16> {
      ^bb0(%arg4: memref<9x9xi16>, %arg5: memref<9x9xi16>):
        %275 = math.absi %collapsed_23 : tensor<81xi64>
        memref.store %c100638827_i32, %alloc_20[%c6, %c5] : memref<9x9xi32>
        %276 = memref.atomic_rmw mins %136, %178[%c5, %c0] : (i32, memref<9x9xi32>) -> i32
        bufferization.dealloc_tensor %166 : tensor<6x6xf32>
        %277 = vector.broadcast %true_26 : i1 to vector<12xi1>
        %278 = vector.maskedload %alloc_21[%c3], %277, %277 : memref<6xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %279 = arith.minsi %136, %extracted_36 : i32
        %280 = math.copysign %13, %13 : tensor<5x6xf16>
        %281 = vector.flat_transpose %277 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %alloc_43 = memref.alloc() : memref<9x9xi16>
        scf.reduce.return %alloc_43 : memref<9x9xi16>
      }
      scf.yield
    }
    %259 = affine.vector_load %alloc_21[%203] : memref<6xi1>, vector<6xi1>
    affine.vector_store %220, %alloc_15[%144, %29] : memref<9x9xi64>, vector<6xi64>
    vector.print %20 : vector<5xi1>
    vector.print %24 : vector<1xi1>
    vector.print %25 : vector<5xi1>
    vector.print %36 : vector<1xi1>
    vector.print %70 : vector<1xi1>
    vector.print %83 : vector<12x5xf32>
    vector.print %84 : vector<12x5xf32>
    vector.print %106 : vector<5x6xf16>
    vector.print %118 : vector<6x6xi64>
    vector.print %141 : vector<9x9xi64>
    vector.print %159 : vector<5xf16>
    vector.print %160 : vector<5xf16>
    vector.print %186 : vector<9xi64>
    vector.print %201 : vector<5xf32>
    vector.print %212 : vector<5x6xf32>
    vector.print %215 : vector<12x5xf32>
    vector.print %216 : vector<12x5xf32>
    vector.print %218 : vector<6xi64>
    vector.print %219 : vector<6xi1>
    vector.print %220 : vector<6xi64>
    vector.print %250 : vector<12x5xi16>
    vector.print %259 : vector<6xi1>
    vector.print %c1951840860_i32 : i32
    vector.print %cst : f16
    vector.print %c4038_i16 : i16
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c2134733142_i64 : i64
    vector.print %c564672457_i64 : i64
    vector.print %c904166608_i32 : i32
    vector.print %c28853_i16 : i16
    vector.print %true : i1
    vector.print %c820043274_i64 : i64
    vector.print %cst_3 : f32
    vector.print %c1518_i16 : i16
    vector.print %c100638827_i32 : i32
    vector.print %cst_4 : f32
    vector.print %true_26 : i1
    vector.print %false : i1
    vector.print %cst_28 : f32
    vector.print %136 : i32
    vector.print %false_30 : i1
    vector.print %extracted : i32
    vector.print %extracted_32 : i16
    vector.print %208 : i1
    vector.print %221 : f16
    vector.print %false_35 : i1
    vector.print %extracted_36 : i32
    return
  }
}
