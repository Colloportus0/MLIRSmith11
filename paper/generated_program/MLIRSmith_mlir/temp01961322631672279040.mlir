module {
  func.func @func1(%arg0: vector<4xi16>) -> vector<9xi32> {
    %false = arith.constant false
    %cst = arith.constant 0x4E0F9019 : f32
    %c117760923_i32 = arith.constant 117760923 : i32
    %cst_0 = arith.constant 1.58736947E+9 : f32
    %false_1 = arith.constant false
    %c1621674228_i64 = arith.constant 1621674228 : i64
    %cst_2 = arith.constant 1.66673638E+9 : f32
    %c729463708_i32 = arith.constant 729463708 : i32
    %true = arith.constant true
    %false_3 = arith.constant false
    %cst_4 = arith.constant 1.01644544E+9 : f32
    %false_5 = arith.constant false
    %true_6 = arith.constant true
    %c1124206185_i64 = arith.constant 1124206185 : i64
    %c1365235233_i64 = arith.constant 1365235233 : i64
    %cst_7 = arith.constant 2.747200e+04 : f16
    %0 = tensor.empty() : tensor<4xi32>
    %1 = tensor.empty() : tensor<4xf32>
    %2 = tensor.empty() : tensor<3x9xi32>
    %3 = tensor.empty() : tensor<3x16x16xi32>
    %4 = tensor.empty() : tensor<3x16x16xi32>
    %5 = tensor.empty() : tensor<3x9xi64>
    %6 = tensor.empty() : tensor<9xi64>
    %7 = tensor.empty() : tensor<4xf32>
    %8 = tensor.empty() : tensor<3x16x16xf32>
    %9 = tensor.empty() : tensor<3x16x16xi32>
    %10 = tensor.empty() : tensor<9xf16>
    %11 = tensor.empty() : tensor<4xf16>
    %12 = tensor.empty() : tensor<3x16x16xi32>
    %13 = tensor.empty() : tensor<3x16x16xi1>
    %14 = tensor.empty() : tensor<4xf32>
    %15 = tensor.empty() : tensor<4xi64>
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
    %alloc = memref.alloc() : memref<3x9xi1>
    %alloc_8 = memref.alloc() : memref<3x9xi16>
    %alloc_9 = memref.alloc() : memref<9xi16>
    %alloc_10 = memref.alloc() : memref<3x16x16xi32>
    %alloc_11 = memref.alloc() : memref<3x9xi16>
    %alloc_12 = memref.alloc() : memref<3x9xf32>
    %alloc_13 = memref.alloc() : memref<4xi16>
    %alloc_14 = memref.alloc() : memref<3x9xi16>
    %alloc_15 = memref.alloc() : memref<4xi1>
    %alloc_16 = memref.alloc() : memref<9xf32>
    %alloc_17 = memref.alloc() : memref<3x16x16xi32>
    %alloc_18 = memref.alloc() : memref<4xf16>
    %alloc_19 = memref.alloc() : memref<3x9xf16>
    %alloc_20 = memref.alloc() : memref<4xf16>
    %alloc_21 = memref.alloc() : memref<3x16x16xi64>
    %alloc_22 = memref.alloc() : memref<9xi64>
    %16 = tensor.empty() : tensor<3x16x16xf32>
    %17 = linalg.copy ins(%8 : tensor<3x16x16xf32>) outs(%16 : tensor<3x16x16xf32>) -> tensor<3x16x16xf32>
    %18 = tensor.empty() : tensor<9x3xi64>
    %transposed = linalg.transpose ins(%5 : tensor<3x9xi64>) outs(%18 : tensor<9x3xi64>) permutation = [1, 0] 
    %alloc_23 = memref.alloc() : memref<f32>
    linalg.reduce ins(%1 : tensor<4xf32>) outs(%alloc_23 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %248 = vector.broadcast %cst_7 : f16 to vector<4xf16>
        %249 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %250 = vector.fma %249, %249, %249 : vector<4xf32>
        %rank_48 = tensor.rank %1 : tensor<4xf32>
        %251 = index.sub %c7, %c13
        %alloca_49 = memref.alloca() : memref<9xi16>
        %252 = arith.shrsi %c1124206185_i64, %c1621674228_i64 : i64
        %253 = math.roundeven %init : f32
        %254 = index.add %c5, %251
        %255 = vector.flat_transpose %249 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %cst_50 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_50 : f32
      }
    %19 = scf.parallel (%arg1) = (%c3) to (%c3) step (%c7) init (%10) -> tensor<9xf16> {
      %248 = math.atan2 %cst_7, %cst_7 : f16
      %249 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d1)>(%c5, %c8, %c3, %c0)
      %inserted = tensor.insert %c117760923_i32 into %4[%c0, %c2, %c3] : tensor<3x16x16xi32>
      %250 = arith.mulf %cst_2, %cst_4 : f32
      %251 = vector.broadcast %c1124206185_i64 : i64 to vector<4xi64>
      %252 = vector.matrix_multiply %251, %251 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %253 = vector.insert %c1365235233_i64, %252 [0] : i64 into vector<1xi64>
      %254 = math.ctlz %9 : tensor<3x16x16xi32>
      %255 = index.casts %c6 : index to i32
      affine.for %arg2 = 0 to 127 {
      }
      %256 = arith.maxsi %c1621674228_i64, %c1124206185_i64 : i64
      %257 = index.casts %c4 : index to i32
      %258 = math.cos %10 : tensor<9xf16>
      %alloc_48 = memref.alloc() : memref<4xf32>
      memref.tensor_store %1, %alloc_48 : memref<4xf32>
      %259 = memref.atomic_rmw ori %c1124206185_i64, %alloc_22[%c0] : (i64, memref<9xi64>) -> i64
      %260 = index.ceildivu %c15, %c8
      %261 = arith.minui %true_6, %false_5 : i1
      %262 = tensor.empty() : tensor<9xf16>
      scf.reduce(%262)  : tensor<9xf16> {
      ^bb0(%arg2: tensor<9xf16>, %arg3: tensor<9xf16>):
        %263 = arith.muli %c117760923_i32, %c729463708_i32 : i32
        %collapsed_49 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
        %264 = math.round %arg2 : tensor<9xf16>
        %265 = arith.minui %false, %false_1 : i1
        %266 = math.atan2 %cst_4, %cst_0 : f32
        %267 = arith.divf %cst, %cst : f32
        %268 = arith.divsi %true, %true_6 : i1
        %269 = index.sub %c0, %c14
        %270 = tensor.empty() : tensor<9xf16>
        scf.reduce.return %270 : tensor<9xf16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_21[%c10, %c0, %c10] : memref<3x16x16xi64>, vector<16xi64>
    affine.vector_store %20, %alloc_21[%c13, %c0, %c4] : memref<3x16x16xi64>, vector<16xi64>
    %21 = tensor.empty() : tensor<4xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%7, %21 : tensor<4xf32>, tensor<4xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = math.absi %c729463708_i32 : i32
    %25 = vector.multi_reduction <mul>, %20, %c1621674228_i64 [0] : vector<16xi64> to i64
    %26 = arith.ceildivsi %true, %false_5 : i1
    %27 = affine.load %alloc_17[%c12, %c3, %c9] : memref<3x16x16xi32>
    %28 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + d0 + d2)>(%c5, %c5, %c8, %c9)
    %29 = math.ceil %10 : tensor<9xf16>
    %30 = math.round %8 : tensor<3x16x16xf32>
    %c0_i16 = arith.constant 0 : i16
    memref.store %c0_i16, %alloc_9[%c5] : memref<9xi16>
    %31 = vector.extract_strided_slice %20 {offsets = [9], sizes = [5], strides = [1]} : vector<16xi64> to vector<5xi64>
    %32 = math.fma %22, %23, %22 : tensor<f32>
    %33 = arith.shrsi %false_3, %false : i1
    %34 = index.sizeof
    %35 = math.absi %18 : tensor<9x3xi64>
    %36 = index.sizeof
    %37 = math.copysign %1, %21 : tensor<4xf32>
    %38 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d3 + 64) ceildiv 8, -((-d3 + 64) ceildiv 8), (-d3 - 1) floordiv 4)>(%c4, %c1, %c7, %c1)
    %39 = vector.insert %c1621674228_i64, %31 [4] : i64 into vector<5xi64>
    %40 = arith.ceildivsi %false_3, %false_3 : i1
    %41 = arith.mulf %cst, %cst_2 : f32
    %42 = vector.extract %31[1] : vector<5xi64>
    %43 = arith.divsi %false, %true : i1
    %44 = vector.insert %c1365235233_i64, %20 [3] : i64 into vector<16xi64>
    %45 = arith.negf %cst : f32
    %46 = tensor.empty() : tensor<4xi16>
    %47 = affine.for %arg1 = 0 to 59 iter_args(%arg2 = %false_1) -> (i1) {
      affine.yield %false_3 : i1
    }
    %48 = arith.mulf %cst_7, %cst_7 : f16
    %49 = tensor.empty() : tensor<3x16x16xi1>
    %50 = arith.addf %cst_4, %cst : f32
    memref.copy %alloc_14, %alloc_11 : memref<3x9xi16> to memref<3x9xi16>
    %51 = tensor.empty() : tensor<9xf32>
    %52 = arith.divsi %false_5, %false_1 : i1
    %53 = arith.maxf %cst_4, %cst : f32
    %54 = math.sqrt %11 : tensor<4xf16>
    %55 = arith.cmpf ugt, %cst, %cst_2 : f32
    %c1_i32 = arith.constant 1 : i32
    %56 = vector.transfer_read %12[%c14, %c9, %c6], %c1_i32 : tensor<3x16x16xi32>, vector<16x3xi32>
    %57 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
    %58 = vector.transfer_write %57, %17[%36, %c10, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x3xf32>, tensor<3x16x16xf32>
    %59 = math.expm1 %cst_7 : f16
    %alloca = memref.alloca() : memref<3x9xi1>
    %60 = math.atan2 %cst_2, %cst : f32
    %61 = arith.muli %c1365235233_i64, %c1365235233_i64 : i64
    %rank = tensor.rank %10 : tensor<9xf16>
    memref.store %true, %alloc_15[%c2] : memref<4xi1>
    affine.store %c0_i16, %alloc_11[%c13, %c3] : memref<3x9xi16>
    %expanded = tensor.expand_shape %6 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
    %62 = arith.divf %cst_4, %cst_2 : f32
    %63 = arith.minui %25, %c1124206185_i64 : i64
    %64 = math.log1p %11 : tensor<4xf16>
    %65 = arith.remui %25, %25 : i64
    %66 = index.ceildivu %c15, %36
    %alloca_24 = memref.alloca() : memref<4xi32>
    %67 = arith.remf %cst_0, %cst : f32
    %68 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %31, %31, %c1621674228_i64 : vector<5xi64>, vector<5xi64> into i64
    %69 = arith.mulf %cst_4, %cst_0 : f32
    vector.print %20 : vector<16xi64>
    %70 = index.add %c9, %66
    %71 = vector.insert %c1124206185_i64, %20 [11] : i64 into vector<16xi64>
    %72 = index.add %c9, %28
    %73 = arith.mulf %cst_4, %cst : f32
    %74 = arith.muli %c1621674228_i64, %c1365235233_i64 : i64
    %75 = index.divs %c10, %rank
    %76 = index.sub %c4, %c10
    %c1_i32_25 = arith.constant 1 : i32
    %77 = vector.transfer_read %2[%c5, %c2], %c1_i32_25 : tensor<3x9xi32>, vector<i32>
    %78 = vector.broadcast %cst_4 : f32 to vector<4xf32>
    %79 = vector.fma %78, %78, %78 : vector<4xf32>
    %80 = math.absi %15 : tensor<4xi64>
    affine.store %cst_7, %alloc_18[%c12] : memref<4xf16>
    %81 = math.round %1 : tensor<4xf32>
    %82 = vector.matrix_multiply %20, %20 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
    %83 = arith.andi %false, %false : i1
    %84 = math.tanh %22 : tensor<f32>
    %generated = tensor.generate %c2 {
    ^bb0(%arg1: index):
      %248 = index.add %c1, %c11
      %249 = math.absf %14 : tensor<4xf32>
      affine.store %true_6, %alloc[%c11, %c10] : memref<3x9xi1>
      memref.assume_alignment %alloc_8, 4 : memref<3x9xi16>
      tensor.yield %true : i1
    } : tensor<?xi1>
    scf.if %false_5 {
      %248 = arith.minui %c729463708_i32, %c729463708_i32 : i32
      %249 = arith.shrsi %c1621674228_i64, %c1124206185_i64 : i64
      %expanded_48 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<3x16x16xf32> into tensor<3x16x16x1xf32>
      %250 = index.floordivs %66, %c11
      %alloca_49 = memref.alloca() : memref<9xi16>
      %251 = math.roundeven %1 : tensor<4xf32>
      %252 = math.ipowi %2, %2 : tensor<3x9xi32>
      %253 = math.tanh %expanded_48 : tensor<3x16x16x1xf32>
    }
    %85 = tensor.empty() : tensor<3x16xi1>
    %86 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%85 : tensor<3x16xi1>) outs(%13 : tensor<3x16x16xi1>) {
    ^bb0(%in: i1, %out: i1):
      memref.store %cst_2, %alloc_23[] : memref<f32>
      %248 = arith.cmpi ult, %true, %true : i1
      %249 = math.ipowi %false, %false_1 : i1
      %250 = math.sqrt %1 : tensor<4xf32>
      %251 = arith.remf %cst_4, %cst_2 : f32
      %252 = vector.bitcast %31 : vector<5xi64> to vector<5xi64>
      %253 = index.add %36, %c15
      %254 = math.fma %cst_7, %cst_7, %cst_7 : f16
      %collapsed_48 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
      %255 = arith.ceildivsi %out, %true : i1
      %256 = vector.create_mask %c0 : vector<4xi1>
      %257 = arith.ceildivsi %27, %c729463708_i32 : i32
      %258 = math.atan2 %14, %1 : tensor<4xf32>
      %259 = affine.load %alloc_21[%c0, %c11, %c5] : memref<3x16x16xi64>
      %260 = vector.bitcast %82 : vector<1xi64> to vector<1xi64>
      memref.store %259, %alloc_21[%c2, %c5, %c9] : memref<3x16x16xi64>
      %261 = vector.multi_reduction <maxui>, %82, %260 [] : vector<1xi64> to vector<1xi64>
      %262 = vector.extract %78[2] : vector<4xf32>
      %263 = scf.while (%arg1 = %20) : (vector<16xi64>) -> vector<16xi64> {
        %276 = index.add %34, %38
        %277 = arith.cmpf oge, %cst, %cst_2 : f32
        %278 = vector.flat_transpose %31 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %279 = vector.transpose %20, [0] : vector<16xi64> to vector<16xi64>
        %280 = math.round %21 : tensor<4xf32>
        %alloca_50 = memref.alloca() : memref<3x9xi1>
        %281 = affine.load %alloc_9[%c3] : memref<9xi16>
        %282 = vector.broadcast %25 : i64 to vector<1x1xi64>
        %283 = vector.outerproduct %82, %82, %282 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
        scf.condition(%true_6) %20 : vector<16xi64>
      } do {
      ^bb0(%arg1: vector<16xi64>):
        %276 = math.round %22 : tensor<f32>
        %277 = vector.insert %25, %82 [0] : i64 into vector<1xi64>
        %collapsed_50 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
        %278 = math.log1p %17 : tensor<3x16x16xf32>
        %279 = vector.extract_strided_slice %260 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %280 = vector.extract %31[4] : vector<5xi64>
        %from_elements_51 = tensor.from_elements %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7 : tensor<3x9xf16>
        %281 = math.round %16 : tensor<3x16x16xf32>
        %282 = index.maxs %70, %c0
        %283 = vector.broadcast %c117760923_i32 : i32 to vector<i32>
        %284 = vector.transfer_write %283, %0[%c1] : vector<i32>, tensor<4xi32>
        %285 = index.sub %75, %c3
        %286 = arith.maxf %cst_0, %cst : f32
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %c1365235233_i64 : vector<16xi64>, vector<16xi64> into i64
        %expanded_52 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<3x16x16xf32> into tensor<3x16x16x1xf32>
        %288 = index.divu %c10, %72
        %289 = math.fpowi %1, %0 : tensor<4xf32>, tensor<4xi32>
        scf.yield %20 : vector<16xi64>
      }
      %264 = vector.multi_reduction <add>, %79, %79 [] : vector<4xf32> to vector<4xf32>
      %265 = index.add %c12, %75
      %266 = math.log10 %cst_0 : f32
      %267 = vector.multi_reduction <maxsi>, %256, %256 [] : vector<4xi1> to vector<4xi1>
      %268 = index.sizeof
      %269 = arith.maxf %cst_0, %cst_0 : f32
      %270 = math.tanh %7 : tensor<4xf32>
      %271 = arith.ceildivsi %c1_i32_25, %c117760923_i32 : i32
      %272 = math.atan2 %8, %8 : tensor<3x16x16xf32>
      %collapsed_49 = tensor.collapse_shape %2 [[0, 1]] : tensor<3x9xi32> into tensor<27xi32>
      %273 = arith.ceildivsi %c1365235233_i64, %c1124206185_i64 : i64
      %274 = arith.mulf %cst_2, %cst : f32
      %275 = arith.ceildivsi %259, %c1621674228_i64 : i64
      linalg.yield %out : i1
    } -> tensor<3x16x16xi1>
    memref.copy %alloc_17, %alloc_10 : memref<3x16x16xi32> to memref<3x16x16xi32>
    %87 = index.add %36, %38
    %88 = vector.flat_transpose %31 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
    %89 = vector.extract %88[2] : vector<5xi64>
    %expanded_26 = tensor.expand_shape %15 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
    %90 = arith.maxf %cst_2, %cst : f32
    %generated_27 = tensor.generate %28 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %248 = vector.insertelement %c1621674228_i64, %82[%c1 : index] : vector<1xi64>
      %249 = vector.create_mask %c6 : vector<9xi1>
      %250 = arith.subi %false_1, %true_6 : i1
      %251 = math.absi %false_5 : i1
      tensor.yield %c117760923_i32 : i32
    } : tensor<?x16x16xi32>
    %91 = vector.reduction <mul>, %78 : vector<4xf32> into f32
    %92 = math.fma %10, %10, %10 : tensor<9xf16>
    %93 = scf.index_switch %c1 -> index 
    case 1 {
      %248 = vector.insert %cst, %79 [2] : f32 into vector<4xf32>
      %249 = vector.broadcast %72 : index to vector<3xindex>
      %250 = vector.broadcast %false : i1 to vector<3xi1>
      %251 = vector.broadcast %cst_7 : f16 to vector<3xf16>
      vector.scatter %alloc_18[%c2] [%249], %250, %251 : memref<4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %252 = tensor.empty() : tensor<3x16x16xf16>
      %253 = arith.muli %true_6, %true_6 : i1
      %254 = arith.addf %cst_0, %cst : f32
      memref.store %true, %alloc[%c1, %c3] : memref<3x9xi1>
      %255 = math.round %7 : tensor<4xf32>
      %256 = math.log1p %21 : tensor<4xf32>
      %257 = arith.ceildivsi %c729463708_i32, %c1_i32_25 : i32
      %258 = math.ctpop %9 : tensor<3x16x16xi32>
      %259 = math.copysign %cst_0, %cst_4 : f32
      %260 = index.mul %c11, %28
      %261 = arith.cmpf une, %cst_4, %cst_4 : f32
      %262 = arith.negf %cst_4 : f32
      scf.if %false {
        %264 = math.log %21 : tensor<4xf32>
        %265 = arith.floordivsi %c729463708_i32, %c729463708_i32 : i32
        %266 = vector.create_mask %c3, %c14 : vector<3x9xi1>
        %267 = arith.ceildivsi %false_3, %false : i1
        %268 = math.expm1 %23 : tensor<f32>
        %269 = arith.andi %false_3, %false_3 : i1
        %270 = arith.subi %true, %false : i1
        %271 = math.tanh %21 : tensor<4xf32>
      }
      %263 = scf.while (%arg1 = %c117760923_i32) : (i32) -> i32 {
        %expanded_48 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<9x3xi64> into tensor<9x3x1xi64>
        %cst_49 = arith.constant 1.000000e+00 : f32
        %cst_50 = arith.constant 0.000000e+00 : f32
        %264 = vector.transfer_read %alloc_12[%c10, %87], %cst_50 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<3x9xf32>, vector<4xf32>
        %expanded_51 = tensor.expand_shape %7 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        affine.store %cst_7, %alloc_19[%c13, %c14] : memref<3x9xf16>
        %265 = index.mul %rank, %c10
        %alloca_52 = memref.alloca() : memref<3x16x16xi16>
        %266 = math.ceil %cst_4 : f32
        %267 = vector.extract %57[1] : vector<3x3xf32>
        scf.condition(%false) %arg1 : i32
      } do {
      ^bb0(%arg1: i32):
        %264 = index.castu %false_5 : i1 to index
        %265 = arith.subi %c1124206185_i64, %c1621674228_i64 : i64
        %266 = arith.maxf %cst_0, %cst_4 : f32
        %267 = arith.cmpf olt, %cst_4, %cst_2 : f32
        %268 = vector.bitcast %79 : vector<4xf32> to vector<4xf32>
        %269 = index.add %c5, %72
        %270 = math.powf %10, %10 : tensor<9xf16>
        %271 = arith.minui %c729463708_i32, %arg1 : i32
        %272 = tensor.empty(%c1) : tensor<?x9xi1>
        %273 = math.atan2 %cst, %cst : f32
        %expanded_48 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<3x9xi32> into tensor<3x9x1xi32>
        %274 = math.tanh %11 : tensor<4xf16>
        %275 = arith.shrsi %c1_i32, %27 : i32
        %276 = math.log10 %cst_0 : f32
        %277 = index.sizeof
        %278 = arith.divsi %c1_i32, %c729463708_i32 : i32
        scf.yield %c1_i32 : i32
      }
      scf.yield %87 : index
    }
    case 2 {
      %248 = scf.while (%arg1 = %alloc_9) : (memref<9xi16>) -> memref<9xi16> {
        %263 = arith.divsi %true_6, %false_5 : i1
        %from_elements_49 = tensor.from_elements %cst, %cst, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst, %cst_2, %cst_2, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_2, %cst_0, %cst_4, %cst_0, %cst, %cst_4, %cst_0, %cst_4, %cst, %cst_0, %cst_2, %cst, %cst_2, %cst_0, %cst_4, %cst_0, %cst_4, %cst_2, %cst_2, %cst, %cst, %cst_4, %cst_0, %cst, %cst_4, %cst_0, %cst_4, %cst, %cst_2, %cst_4, %cst_0, %cst_4, %cst_2, %cst_4, %cst_0, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst_4, %cst_2, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_4, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_4, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_4, %cst, %cst_4, %cst_0, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst, %cst_2, %cst, %cst_4, %cst_0, %cst, %cst, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst, %cst_4, %cst_4, %cst_4, %cst_2, %cst, %cst_0, %cst, %cst_4, %cst_0, %cst, %cst, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_2, %cst_0, %cst_2, %cst_2, %cst_4, %cst_4, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_4, %cst_0, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_4, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst, %cst, %cst_4, %cst_0, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_4, %cst_2, %cst_4, %cst, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst_4, %cst_0, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst_0, %cst, %cst_4, %cst, %cst_4, %cst_0, %cst_0, %cst_2, %cst, %cst_2, %cst_4, %cst_0, %cst_2, %cst, %cst_2, %cst_4, %cst_0, %cst_2, %cst, %cst_2, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_2, %cst_2, %cst_4, %cst, %cst, %cst, %cst_4, %cst_2, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_0, %cst_4, %cst, %cst, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_4, %cst_4, %cst_2, %cst, %cst_4, %cst_0, %cst_4, %cst_2, %cst_0, %cst_0, %cst_4, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_4, %cst, %cst, %cst, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst_4, %cst, %cst_2, %cst_2, %cst, %cst_0, %cst_4, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst_4, %cst_4, %cst_0, %cst_2, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst, %cst_0, %cst_0, %cst, %cst_4, %cst_2, %cst, %cst_4, %cst, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_4, %cst_2, %cst, %cst, %cst_0, %cst_2, %cst, %cst_2, %cst_4, %cst_0, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst_0, %cst, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst_4, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_4, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_4, %cst, %cst_2, %cst_2, %cst, %cst_4, %cst_0, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst, %cst_4, %cst_2, %cst, %cst_4, %cst, %cst, %cst_2, %cst_4, %cst, %cst, %cst_0, %cst, %cst_4, %cst_4, %cst_0, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_4, %cst_0, %cst_2, %cst_4, %cst_2, %cst_0, %cst, %cst_2, %cst_2, %cst, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_4, %cst_2, %cst_4, %cst, %cst_0, %cst_2, %cst_0, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst_0, %cst_0, %cst_2, %cst_4, %cst_2, %cst_2, %cst, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst_0, %cst, %cst_0, %cst_2, %cst_2, %cst_4, %cst, %cst_4, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst_2, %cst_4, %cst_0, %cst_4, %cst_2, %cst_0, %cst, %cst_2, %cst_0, %cst_4, %cst_4, %cst_2, %cst, %cst_0, %cst_4, %cst_4, %cst_0, %cst, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst_4, %cst_2, %cst_0, %cst_4, %cst_4, %cst_2, %cst, %cst_0, %cst_0, %cst_4, %cst, %cst_4, %cst_4, %cst_0, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_2, %cst, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_0, %cst, %cst, %cst, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst, %cst_4, %cst_2, %cst, %cst_2, %cst, %cst_0, %cst, %cst_0, %cst_2, %cst_4, %cst_0, %cst, %cst_4, %cst_2, %cst_2, %cst_4, %cst_0, %cst_4, %cst_2, %cst_4, %cst_2, %cst, %cst_0, %cst_2, %cst_4, %cst_0, %cst_4, %cst, %cst, %cst, %cst_0, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst_2, %cst_0, %cst_4, %cst_0, %cst_4, %cst, %cst_0, %cst_2, %cst_4, %cst_0, %cst, %cst_0, %cst_4, %cst_2, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst, %cst_2, %cst_2, %cst_0, %cst_2, %cst_4, %cst_0, %cst_2, %cst, %cst_4, %cst, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst_4, %cst_4, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst_4, %cst_2, %cst, %cst_4, %cst_2, %cst_0, %cst, %cst_0, %cst_0, %cst_4, %cst_0, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst, %cst_2, %cst_4, %cst, %cst, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst_2, %cst_4, %cst_0, %cst, %cst, %cst_0, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_2, %cst_0, %cst_4, %cst_0, %cst_2, %cst_2, %cst_4, %cst_2, %cst, %cst_2, %cst_0, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_4, %cst_2, %cst, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %cst, %cst_4, %cst_2, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2 : tensor<3x16x16xf32>
        %264 = math.expm1 %8 : tensor<3x16x16xf32>
        %265 = index.add %66, %70
        %alloc_50 = memref.alloc() : memref<f32>
        memref.copy %alloc_23, %alloc_50 : memref<f32> to memref<f32>
        %266 = math.tanh %10 : tensor<9xf16>
        %267 = arith.ceildivsi %c1621674228_i64, %c1621674228_i64 : i64
        %268 = vector.create_mask %75 : vector<4xi1>
        scf.condition(%false_5) %arg1 : memref<9xi16>
      } do {
      ^bb0(%arg1: memref<9xi16>):
        %263 = vector.broadcast %cst : f32 to vector<3x9xf32>
        %264 = vector.fma %263, %263, %263 : vector<3x9xf32>
        %265 = arith.floordivsi %c1_i32_25, %c117760923_i32 : i32
        %cast_49 = tensor.cast %4 : tensor<3x16x16xi32> to tensor<?x?x?xi32>
        %266 = arith.ori %25, %c1621674228_i64 : i64
        %267 = math.fma %17, %8, %8 : tensor<3x16x16xf32>
        %268 = math.sqrt %10 : tensor<9xf16>
        %269 = memref.realloc %alloc_22 : memref<9xi64> to memref<4xi64>
        %270 = math.tanh %cst_0 : f32
        %271 = arith.divf %cst_0, %cst : f32
        %272 = index.divu %c2, %28
        %273 = vector.broadcast %76 : index to vector<3xindex>
        %274 = vector.broadcast %true_6 : i1 to vector<3xi1>
        %275 = vector.broadcast %c0_i16 : i16 to vector<3xi16>
        vector.scatter %arg1[%c8] [%273], %274, %275 : memref<9xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        affine.store %cst, %alloc_16[%c8] : memref<9xf32>
        %276 = tensor.empty() : tensor<3x9xi32>
        %277 = arith.ceildivsi %c1_i32_25, %27 : i32
        %278 = vector.broadcast %c3 : index to vector<3xindex>
        %279 = vector.broadcast %false_3 : i1 to vector<3xi1>
        %280 = vector.broadcast %c117760923_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_10[%c0, %c2, %c8] [%278], %279, %280 : memref<3x16x16xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %281 = vector.broadcast %cst_4 : f32 to vector<9xf32>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %263, %281 {inclusive = true, reduction_dim = 0 : i64} : vector<3x9xf32>, vector<9xf32>
        scf.yield %arg1 : memref<9xi16>
      }
      memref.assume_alignment %alloc_10, 8 : memref<3x16x16xi32>
      %cast_48 = tensor.cast %17 : tensor<3x16x16xf32> to tensor<?x?x?xf32>
      %249 = math.round %10 : tensor<9xf16>
      %250 = math.cos %8 : tensor<3x16x16xf32>
      %251 = vector.create_mask %c12 : vector<9xi1>
      %252 = index.mul %c8, %c15
      %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %79, %78, %cst_0 : vector<4xf32>, vector<4xf32> into f32
      %254 = scf.if %false_1 -> (f32) {
        %263 = math.roundeven %11 : tensor<4xf16>
        %264 = vector.matrix_multiply %20, %88 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 5 : i32} : (vector<16xi64>, vector<5xi64>) -> vector<80xi64>
        %265 = arith.cmpi uge, %false_5, %false_3 : i1
        %266 = vector.insert %c1621674228_i64, %88 [0] : i64 into vector<5xi64>
        %267 = memref.realloc %alloc_20 : memref<4xf16> to memref<9xf16>
        %268 = arith.divf %cst_4, %cst_4 : f32
        %alloca_49 = memref.alloca() : memref<3x9xi64>
        %alloc_50 = memref.alloc() : memref<1x16xi64>
        %269 = tensor.empty() : tensor<4x16xi64>
        %270 = linalg.matmul ins(%expanded_26, %alloc_50 : tensor<4x1xi64>, memref<1x16xi64>) outs(%269 : tensor<4x16xi64>) -> tensor<4x16xi64>
        scf.yield %cst_0 : f32
      } else {
        %263 = vector.create_mask %75, %c8 : vector<3x9xi1>
        %264 = math.exp %10 : tensor<9xf16>
        %265 = math.rsqrt %1 : tensor<4xf32>
        %extracted = tensor.extract %0[%c0] : tensor<4xi32>
        %266 = arith.muli %c117760923_i32, %27 : i32
        %267 = bufferization.clone %alloc_13 : memref<4xi16> to memref<4xi16>
        %268 = math.ceil %10 : tensor<9xf16>
        %269 = bufferization.to_memref %3 : memref<3x16x16xi32>
        scf.yield %cst_4 : f32
      }
      %255 = arith.maxf %cst_7, %cst_7 : f16
      %256 = vector.broadcast %70 : index to vector<16xindex>
      %257 = vector.broadcast %false_3 : i1 to vector<16xi1>
      vector.scatter %alloc_22[%c2] [%256], %257, %20 : memref<9xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
      %258 = arith.divsi %c1621674228_i64, %c1621674228_i64 : i64
      %259 = arith.subi %c729463708_i32, %c117760923_i32 : i32
      %260 = vector.create_mask %c7 : vector<9xi1>
      %261 = affine.apply affine_map<(d0) -> (d0 floordiv 8)>(%36)
      %262 = math.log10 %1 : tensor<4xf32>
      scf.yield %c10 : index
    }
    default {
      bufferization.dealloc_tensor %17 : tensor<3x16x16xf32>
      %248 = arith.divf %cst, %cst : f32
      %249 = index.ceildivu %72, %c11
      %250 = arith.cmpi ule, %false, %false_5 : i1
      %251 = vector.insert %cst_2, %79 [0] : f32 into vector<4xf32>
      %252 = arith.shrsi %c1365235233_i64, %25 : i64
      %253 = affine.if affine_set<(d0, d1) : (d0 floordiv 32 - (d0 ceildiv 128) * 8 >= 0, d1 == 0, d0 ceildiv 128 - d1 >= 0)>(%c14, %c12) -> memref<4xi16> {
        %262 = arith.remf %cst, %cst : f32
        %263 = memref.atomic_rmw maxs %c0_i16, %alloc_14[%c2, %c0] : (i16, memref<3x9xi16>) -> i16
        %264 = arith.cmpf ogt, %cst_0, %cst_0 : f32
        %265 = index.maxs %c8, %c2
        %266 = vector.create_mask %249 : vector<4xi1>
        %267 = arith.divf %cst, %cst : f32
        %268 = vector.broadcast %c1365235233_i64 : i64 to vector<5x5xi64>
        %269 = vector.outerproduct %88, %31, %268 {kind = #vector.kind<maxsi>} : vector<5xi64>, vector<5xi64>
        %270 = arith.shrsi %false, %false_1 : i1
        affine.yield %alloc_13 : memref<4xi16>
      } else {
        %262 = math.ctpop %4 : tensor<3x16x16xi32>
        %263 = math.atan2 %14, %7 : tensor<4xf32>
        memref.store %c729463708_i32, %alloc_10[%c0, %c13, %c0] : memref<3x16x16xi32>
        %264 = arith.minui %false_1, %true_6 : i1
        memref.store %false, %alloc[%c2, %c7] : memref<3x9xi1>
        %265 = math.copysign %21, %1 : tensor<4xf32>
        %266 = arith.remf %cst_2, %cst_4 : f32
        %267 = tensor.empty() : tensor<3x16x16xi32>
        affine.yield %alloc_13 : memref<4xi16>
      }
      %254 = vector.matrix_multiply %88, %82 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<1xi64>) -> vector<5xi64>
      %255 = scf.while (%arg1 = %cst) : (f32) -> f32 {
        %262 = vector.insertelement %c1365235233_i64, %254[%38 : index] : vector<5xi64>
        %263 = index.ceildivu %76, %34
        %264 = math.rsqrt %14 : tensor<4xf32>
        %265 = arith.divf %cst_0, %cst_0 : f32
        %266 = index.casts %false : i1 to index
        memref.copy %alloc_8, %alloc_11 : memref<3x9xi16> to memref<3x9xi16>
        %267 = tensor.empty() : tensor<3x9xi64>
        %268 = index.sub %c10, %c11
        scf.condition(%false_1) %cst_0 : f32
      } do {
      ^bb0(%arg1: f32):
        %262 = math.absi %3 : tensor<3x16x16xi32>
        %263 = math.copysign %1, %14 : tensor<4xf32>
        %264 = vector.matrix_multiply %254, %31 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %265 = arith.maxsi %c117760923_i32, %27 : i32
        %266 = index.maxs %c4, %c10
        %267 = tensor.empty(%c12, %c2) : tensor<?x16x?xi16>
        %268 = arith.cmpf olt, %cst_4, %cst_2 : f32
        %269 = math.exp %1 : tensor<4xf32>
        %270 = arith.maxf %arg1, %cst : f32
        %271 = arith.andi %25, %25 : i64
        %272 = arith.shrsi %c1621674228_i64, %c1621674228_i64 : i64
        %273 = math.log10 %10 : tensor<9xf16>
        %274 = arith.maxf %arg1, %cst_2 : f32
        %275 = arith.shrsi %c1621674228_i64, %c1124206185_i64 : i64
        %276 = vector.matrix_multiply %264, %254 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi64>, vector<5xi64>) -> vector<5xi64>
        %277 = vector.insert %c1124206185_i64, %82 [0] : i64 into vector<1xi64>
        scf.yield %cst_4 : f32
      }
      %256 = arith.subi %c729463708_i32, %c729463708_i32 : i32
      %257 = vector.insert %cst, %78 [2] : f32 into vector<4xf32>
      %alloc_48 = memref.alloc() : memref<9xf32>
      memref.copy %alloc_16, %alloc_48 : memref<9xf32> to memref<9xf32>
      %258 = arith.mulf %cst_0, %cst_0 : f32
      %259 = arith.shrsi %c0_i16, %c0_i16 : i16
      %260 = memref.load %alloc_18[%c1] : memref<4xf16>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %57, %57, %57 : vector<3x3xf32>, vector<3x3xf32> into vector<3x3xf32>
      scf.yield %c2 : index
    }
    %94 = vector.matrix_multiply %31, %20 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 16 : i32} : (vector<5xi64>, vector<16xi64>) -> vector<80xi64>
    %95 = math.copysign %17, %17 : tensor<3x16x16xf32>
    %96 = affine.if affine_set<(d0) : (6 >= 0, d0 + 128 >= 0, d0 + 128 == 0, (-d0) floordiv 64 == 0)>(%c6) -> i32 {
      %248 = math.ctlz %18 : tensor<9x3xi64>
      %alloca_48 = memref.alloca() : memref<4xf16>
      affine.for %arg1 = 0 to 30 {
      }
      scf.execute_region {
        %252 = arith.ceildivsi %false_5, %false_3 : i1
        %253 = arith.floordivsi %c117760923_i32, %c1_i32 : i32
        %254 = math.tanh %1 : tensor<4xf32>
        %255 = vector.transpose %31, [0] : vector<5xi64> to vector<5xi64>
        %256 = index.maxs %c1, %76
        %257 = arith.shrui %c1365235233_i64, %c1124206185_i64 : i64
        %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %82, %82, %c1124206185_i64 : vector<1xi64>, vector<1xi64> into i64
        %259 = arith.divf %cst_0, %cst : f32
        %260 = math.fpowi %17, %4 : tensor<3x16x16xf32>, tensor<3x16x16xi32>
        %261 = arith.ceildivsi %c1124206185_i64, %c1621674228_i64 : i64
        %262 = vector.create_mask %rank : vector<4xi1>
        %263 = index.ceildivs %75, %c0
        %264 = affine.load %alloc_20[%c2] : memref<4xf16>
        %265 = vector.reduction <minf>, %78 : vector<4xf32> into f32
        %266 = math.ctpop %27 : i32
        %267 = arith.mulf %264, %264 : f16
        scf.yield
      }
      %249 = math.exp %7 : tensor<4xf32>
      affine.for %arg1 = 0 to 4 {
      }
      %250 = arith.floordivsi %c1124206185_i64, %c1365235233_i64 : i64
      %251 = vector.splat %c14 : vector<4xindex>
      affine.yield %c1_i32_25 : i32
    } else {
      %248 = math.roundeven %7 : tensor<4xf32>
      %249 = tensor.empty() : tensor<3x16x16xi64>
      %250 = math.copysign %10, %10 : tensor<9xf16>
      memref.tensor_store %22, %alloc_23 : memref<f32>
      %251 = math.ctlz %c1_i32_25 : i32
      %252 = vector.transpose %82, [0] : vector<1xi64> to vector<1xi64>
      %253 = arith.mulf %cst_4, %cst : f32
      %254 = affine.min affine_map<(d0, d1, d2) -> (-d1 + -d1 - (d1 + 4) + d1 + 4, d2 + 32, -d1)>(%c5, %34, %34)
      affine.yield %c117760923_i32 : i32
    }
    %97 = arith.mulf %cst, %cst_0 : f32
    %expanded_28 = tensor.expand_shape %7 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
    %98 = bufferization.to_memref %49 : memref<3x16x16xi1>
    %99 = math.cttz %2 : tensor<3x9xi32>
    %100 = memref.atomic_rmw maxs %c0_i16, %alloc_9[%c0] : (i16, memref<9xi16>) -> i16
    %alloca_29 = memref.alloca() : memref<4xf32>
    %101 = index.casts %c3 : index to i32
    %102 = index.add %rank, %c4
    %103 = index.sizeof
    %104 = arith.maxf %cst_2, %cst : f32
    memref.store %c117760923_i32, %alloc_10[%c1, %c12, %c3] : memref<3x16x16xi32>
    %alloca_30 = memref.alloca() : memref<9xi64>
    %105 = math.roundeven %cst_4 : f32
    %106 = vector.broadcast %25 : i64 to vector<80x80xi64>
    %107 = vector.outerproduct %94, %94, %106 {kind = #vector.kind<xor>} : vector<80xi64>, vector<80xi64>
    %108 = index.maxs %102, %72
    %109 = math.ceil %cst_2 : f32
    %alloca_31 = memref.alloca() : memref<3x9xi32>
    %110 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
    %111 = vector.outerproduct %78, %78, %110 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
    vector.print %31 : vector<5xi64>
    %112 = math.rsqrt %cst : f32
    %113 = arith.xori %false_1, %true : i1
    %expanded_32 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<9x3xi64> into tensor<9x3x1xi64>
    memref.store %c0_i16, %alloc_14[%c1, %c4] : memref<3x9xi16>
    %114 = tensor.empty() : tensor<3x3xi64>
    %115 = linalg.matmul ins(%5, %transposed : tensor<3x9xi64>, tensor<9x3xi64>) outs(%114 : tensor<3x3xi64>) -> tensor<3x3xi64>
    %116 = arith.minui %false_3, %false_3 : i1
    %117 = arith.divsi %c117760923_i32, %c117760923_i32 : i32
    %c1_i32_33 = arith.constant 1 : i32
    %118 = vector.transfer_read %12[%c13, %28, %70], %c1_i32_33 : tensor<3x16x16xi32>, vector<i32>
    %generated_34 = tensor.generate %c8 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %248 = arith.maxui %c1_i32, %c1_i32_33 : i32
      %249 = index.divs %76, %arg2
      %250 = arith.ceildivsi %false_5, %false_1 : i1
      %251 = arith.divui %c1365235233_i64, %25 : i64
      tensor.yield %c1_i32_33 : i32
    } : tensor<?x16x16xi32>
    %119 = math.tanh %cst_0 : f32
    %120 = index.floordivs %c9, %75
    %121 = math.copysign %16, %8 : tensor<3x16x16xf32>
    %122 = vector.extract %78[0] : vector<4xf32>
    %from_elements = tensor.from_elements %false, %false, %false, %false_3, %false, %false_5, %false_5, %true, %true_6 : tensor<9xi1>
    %123 = math.ctlz %expanded : tensor<9x1xi64>
    %124 = vector.bitcast %57 : vector<3x3xf32> to vector<3x3xf32>
    %125 = arith.ceildivsi %true, %true : i1
    %126 = affine.min affine_map<(d0, d1, d2) -> (d0 - 16, d1 floordiv 16)>(%c13, %66, %c6)
    %generated_35 = tensor.generate %c13 {
    ^bb0(%arg1: index):
      %248 = index.add %66, %c7
      %249 = arith.cmpi eq, %c117760923_i32, %c1_i32_33 : i32
      %250 = math.exp %11 : tensor<4xf16>
      %251 = arith.maxsi %c0_i16, %c0_i16 : i16
      tensor.yield %c117760923_i32 : i32
    } : tensor<?xi32>
    %127 = vector.insert %cst_2, %78 [3] : f32 into vector<4xf32>
    %128 = math.roundeven %cst_4 : f32
    memref.store %c0_i16, %alloc_14[%c1, %c8] : memref<3x9xi16>
    %129 = math.tanh %23 : tensor<f32>
    %alloc_36 = memref.alloc() : memref<9xf32>
    memref.copy %alloc_16, %alloc_36 : memref<9xf32> to memref<9xf32>
    %130 = arith.divf %cst_4, %cst_2 : f32
    %alloca_37 = memref.alloca() : memref<3x16x16xi64>
    %131 = index.divu %c4, %36
    %132 = arith.maxsi %c1365235233_i64, %25 : i64
    %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<3x9xi64> into tensor<27xi64>
    %133 = arith.minsi %true, %false_1 : i1
    %134 = math.round %8 : tensor<3x16x16xf32>
    %135 = math.ctlz %collapsed : tensor<27xi64>
    %136 = arith.maxui %true, %false : i1
    %137 = index.add %c6, %126
    %138 = index.sub %c5, %137
    %139 = math.log10 %11 : tensor<4xf16>
    %140 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %78, %79, %cst_2 : vector<4xf32>, vector<4xf32> into f32
    %141 = math.tanh %expanded_28 : tensor<4x1xf32>
    %142 = math.cttz %0 : tensor<4xi32>
    %cast = tensor.cast %1 : tensor<4xf32> to tensor<?xf32>
    %143 = arith.xori %25, %25 : i64
    %144 = arith.remui %c729463708_i32, %c117760923_i32 : i32
    %145 = index.mul %137, %108
    %146 = math.roundeven %cst_7 : f16
    %147 = index.ceildivu %75, %36
    %148 = arith.cmpi ult, %c729463708_i32, %c1_i32 : i32
    %149 = tensor.empty(%102) : tensor<?xi32>
    %150 = arith.xori %false_3, %false_5 : i1
    %151 = scf.if %true_6 -> (memref<4xf16>) {
      %248 = arith.remui %c1_i32_33, %c729463708_i32 : i32
      %249 = vector.reduction <xor>, %20 : vector<16xi64> into i64
      scf.if %false {
        %253 = math.ceil %16 : tensor<3x16x16xf32>
        %254 = index.maxs %c10, %108
        %255 = math.rsqrt %14 : tensor<4xf32>
        %256 = math.exp %22 : tensor<f32>
        %257 = math.powf %11, %11 : tensor<4xf16>
        %258 = affine.min affine_map<(d0, d1, d2) -> (d1, 0)>(%137, %76, %c12)
        %259 = arith.subi %c1_i32, %c729463708_i32 : i32
        %260 = math.cttz %c1124206185_i64 : i64
      }
      %250 = arith.subi %c1_i32_25, %27 : i32
      memref.alloca_scope  {
        %253 = memref.realloc %alloc_15 : memref<4xi1> to memref<4xi1>
        %254 = arith.divf %cst_2, %cst : f32
        %255 = math.rsqrt %21 : tensor<4xf32>
        %256 = index.mul %36, %103
        %257 = vector.create_mask %28 : vector<9xi1>
        %258 = arith.divsi %25, %c1621674228_i64 : i64
        %259 = vector.load %alloc_12[%c2, %c7] : memref<3x9xf32>, vector<9xf32>
        %260 = tensor.empty(%138) : tensor<?xi16>
        %alloca_48 = memref.alloca() : memref<3x16x16xi32>
        %261 = vector.broadcast %28 : index to vector<4xindex>
        %262 = vector.broadcast %true : i1 to vector<4xi1>
        %263 = vector.broadcast %c0_i16 : i16 to vector<4xi16>
        vector.scatter %alloc_9[%c1] [%261], %262, %263 : memref<9xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %264 = arith.shrsi %false, %false_3 : i1
        %265 = arith.maxf %cst_4, %cst_2 : f32
        %266 = index.maxs %c1, %c13
        %267 = vector.broadcast %c0 : index to vector<3xindex>
        %268 = vector.broadcast %true_6 : i1 to vector<3xi1>
        %269 = vector.broadcast %27 : i32 to vector<3xi32>
        vector.scatter %alloc_10[%c1, %c14, %c8] [%267], %268, %269 : memref<3x16x16xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %collapsed_49 = tensor.collapse_shape %expanded_26 [[0, 1]] : tensor<4x1xi64> into tensor<4xi64>
        %270 = arith.xori %c1_i32_25, %c1_i32_25 : i32
        %271 = arith.subi %27, %c1_i32_33 : i32
        %272 = vector.broadcast %cst : f32 to vector<3x9xf32>
        %273 = vector.fma %272, %272, %272 : vector<3x9xf32>
        %274 = arith.muli %c1621674228_i64, %c1621674228_i64 : i64
        %275 = index.sizeof
        %expanded_50 = tensor.expand_shape %0 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %276 = index.mul %c9, %c9
        %alloc_51 = memref.alloc() : memref<3x9xi32>
        memref.tensor_store %2, %alloc_51 : memref<3x9xi32>
        %expanded_52 = tensor.expand_shape %7 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        %277 = arith.xori %false, %false : i1
        %278 = vector.extract %273[1] : vector<3x9xf32>
        %279 = vector.reduction <maxsi>, %94 : vector<80xi64> into i64
        %280 = tensor.empty() : tensor<9xi32>
        %281 = math.fpowi %10, %280 : tensor<9xf16>, tensor<9xi32>
        %alloca_53 = memref.alloca() : memref<9xf32>
        %282 = vector.matrix_multiply %78, %79 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %alloc_54 = memref.alloc() : memref<9xi16>
        memref.copy %alloc_9, %alloc_54 : memref<9xi16> to memref<9xi16>
        %283 = math.expm1 %cst_7 : f16
      }
      vector.print %94 : vector<80xi64>
      %251 = scf.while (%arg1 = %alloc_20) : (memref<4xf16>) -> memref<4xf16> {
        %253 = arith.cmpf ueq, %cst_4, %cst_0 : f32
        %254 = arith.remsi %false_1, %true : i1
        %255 = index.mul %c5, %c3
        %256 = math.powf %8, %8 : tensor<3x16x16xf32>
        %257 = arith.shrsi %c729463708_i32, %c729463708_i32 : i32
        %258 = arith.xori %c1_i32, %c1_i32_33 : i32
        %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %82, %82, %c1365235233_i64 : vector<1xi64>, vector<1xi64> into i64
        %260 = vector.reduction <mul>, %78 : vector<4xf32> into f32
        scf.condition(%false_3) %alloc_20 : memref<4xf16>
      } do {
      ^bb0(%arg1: memref<4xf16>):
        %253 = tensor.empty() : tensor<9x9xi32>
        %254 = tensor.empty() : tensor<3x9xi32>
        %255 = linalg.matmul ins(%2, %253 : tensor<3x9xi32>, tensor<9x9xi32>) outs(%254 : tensor<3x9xi32>) -> tensor<3x9xi32>
        %256 = vector.insert %25, %31 [3] : i64 into vector<5xi64>
        %257 = math.exp %16 : tensor<3x16x16xf32>
        bufferization.dealloc_tensor %12 : tensor<3x16x16xi32>
        %258 = arith.divf %cst, %cst_0 : f32
        %259 = math.atan2 %11, %11 : tensor<4xf16>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %260 = vector.transfer_read %alloc_16[%c3], %cst_49 : memref<9xf32>, vector<f32>
        %261 = math.tanh %14 : tensor<4xf32>
        %262 = math.ctlz %4 : tensor<3x16x16xi32>
        %263 = math.rsqrt %10 : tensor<9xf16>
        %264 = math.fma %cst_0, %cst_2, %cst_2 : f32
        %265 = math.absi %2 : tensor<3x9xi32>
        %266 = memref.realloc %alloc_16 : memref<9xf32> to memref<9xf32>
        %267 = index.add %108, %70
        %268 = vector.insertelement %25, %20[%c3 : index] : vector<16xi64>
        %269 = arith.maxsi %c1_i32_33, %c1_i32_33 : i32
        scf.yield %arg1 : memref<4xf16>
      }
      %252 = math.copysign %23, %22 : tensor<f32>
      scf.yield %alloc_20 : memref<4xf16>
    } else {
      %248 = vector.broadcast %120 : index to vector<3xindex>
      %249 = vector.broadcast %true : i1 to vector<3xi1>
      %250 = vector.broadcast %c0_i16 : i16 to vector<3xi16>
      vector.scatter %alloc_9[%c4] [%248], %249, %250 : memref<9xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
      %251 = arith.remui %false, %false_5 : i1
      %252 = math.ipowi %false, %false_1 : i1
      %253 = math.rsqrt %8 : tensor<3x16x16xf32>
      %254 = arith.maxui %false_3, %false : i1
      memref.store %cst_2, %alloc_23[] : memref<f32>
      %255 = math.fpowi %7, %0 : tensor<4xf32>, tensor<4xi32>
      %256 = math.tanh %cst_4 : f32
      scf.yield %alloc_20 : memref<4xf16>
    }
    %152 = vector.flat_transpose %78 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %153 = memref.realloc %alloc_16 : memref<9xf32> to memref<16xf32>
    %154 = arith.negf %cst : f32
    %155 = arith.ceildivsi %c1621674228_i64, %c1365235233_i64 : i64
    %156 = index.sub %c3, %72
    %157 = math.log2 %1 : tensor<4xf32>
    %158 = vector.insert %cst_2, %78 [3] : f32 into vector<4xf32>
    %159 = arith.maxf %cst_7, %cst_7 : f16
    %collapsed_38 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
    %160 = arith.floordivsi %c729463708_i32, %c1_i32_25 : i32
    %161 = math.ipowi %false_1, %true : i1
    %162 = arith.divf %cst, %cst : f32
    %163 = math.ipowi %9, %4 : tensor<3x16x16xi32>
    %164 = vector.extract %152[1] : vector<4xf32>
    %165 = index.floordivs %102, %76
    %166 = vector.flat_transpose %152 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %167 = arith.minui %true_6, %false_5 : i1
    %168 = arith.andi %false, %true : i1
    memref.assume_alignment %alloc_9, 16 : memref<9xi16>
    %169 = arith.remf %cst_2, %cst : f32
    %170 = math.ipowi %9, %9 : tensor<3x16x16xi32>
    %171 = index.ceildivu %165, %66
    %172 = affine.min affine_map<(d0, d1) -> (d1 * 4, 0, d0 * 64)>(%126, %171)
    %173 = arith.minui %c1_i32_33, %c729463708_i32 : i32
    %174 = math.ctlz %49 : tensor<3x16x16xi1>
    %175 = arith.maxsi %c1_i32_33, %27 : i32
    %176 = arith.xori %true, %false : i1
    %177 = arith.divsi %25, %c1621674228_i64 : i64
    %178 = index.mul %165, %c11
    %179 = arith.divf %cst_7, %cst_7 : f16
    %180 = math.roundeven %cst_0 : f32
    %alloc_39 = memref.alloc() : memref<3x16x16xf32>
    memref.tensor_store %16, %alloc_39 : memref<3x16x16xf32>
    %181 = index.floordivs %c14, %87
    %182 = math.tanh %14 : tensor<4xf32>
    %183 = math.powf %11, %11 : tensor<4xf16>
    %184 = vector.multi_reduction <mul>, %78, %152 [] : vector<4xf32> to vector<4xf32>
    %185 = arith.mulf %cst, %cst_4 : f32
    %186 = vector.extract %79[2] : vector<4xf32>
    %187 = vector.insert %c1124206185_i64, %94 [34] : i64 into vector<80xi64>
    %188 = index.maxs %c1, %c2
    %expanded_40 = tensor.expand_shape %6 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
    scf.index_switch %c6 
    case 1 {
      %248 = vector.broadcast %c1_i32_33 : i32 to vector<16xi32>
      %249 = vector.transfer_write %248, %2[%138, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi32>, tensor<3x9xi32>
      %250 = memref.atomic_rmw maxu %c1_i32_25, %alloc_17[%c0, %c11, %c5] : (i32, memref<3x16x16xi32>) -> i32
      %251 = index.add %147, %c10
      %252 = affine.max affine_map<(d0) -> (((d0 floordiv 16) mod 4 + d0 mod 2 + 8) ceildiv 128)>(%108)
      %253 = math.roundeven %21 : tensor<4xf32>
      %alloca_48 = memref.alloca() : memref<9xi32>
      %254 = affine.for %arg1 = 0 to 122 iter_args(%arg2 = %alloc_23) -> (memref<f32>) {
        affine.yield %arg2 : memref<f32>
      }
      %255 = math.exp %11 : tensor<4xf16>
      %256 = math.log10 %cst_0 : f32
      %alloca_49 = memref.alloca() : memref<4xi16>
      %alloca_50 = memref.alloca() : memref<3x16x16xf32>
      %expanded_51 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<3x16x16xf32> into tensor<3x16x16x1xf32>
      %257 = math.cos %7 : tensor<4xf32>
      %258 = index.ceildivu %c9, %251
      %259 = arith.minui %true_6, %true : i1
      %260 = tensor.empty(%28) : tensor<?x16x16xi1>
      scf.yield
    }
    case 2 {
      scf.execute_region {
        affine.store %true_6, %98[%c11, %c10, %c2] : memref<3x16x16xi1>
        %260 = arith.cmpf true, %cst_4, %cst_4 : f32
        %261 = arith.mulf %cst_0, %cst_4 : f32
        %262 = vector.flat_transpose %152 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %263 = bufferization.to_tensor %alloc_10 : memref<3x16x16xi32>
        %264 = vector.transpose %57, [1, 0] : vector<3x3xf32> to vector<3x3xf32>
        %expanded_50 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<3x16x16xf32> into tensor<3x16x16x1xf32>
        %265 = index.sizeof
        %266 = arith.cmpf false, %cst, %cst_0 : f32
        %267 = index.add %66, %c15
        %268 = arith.cmpf ueq, %cst, %cst_2 : f32
        %expanded_51 = tensor.expand_shape %expanded_26 [[0], [1, 2]] : tensor<4x1xi64> into tensor<4x1x1xi64>
        %269 = math.round %10 : tensor<9xf16>
        %270 = math.roundeven %11 : tensor<4xf16>
        %271 = vector.transpose %82, [0] : vector<1xi64> to vector<1xi64>
        %272 = arith.divsi %c1365235233_i64, %c1621674228_i64 : i64
        scf.yield
      }
      %248 = bufferization.to_memref %13 : memref<3x16x16xi1>
      scf.if %false {
        %260 = memref.atomic_rmw maxf %cst_7, %151[%c0] : (f16, memref<4xf16>) -> f16
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %c1365235233_i64 : vector<16xi64>, vector<16xi64> into i64
        %262 = vector.reduction <mul>, %152 : vector<4xf32> into f32
        %263 = math.ceil %cst_7 : f16
        %264 = math.copysign %23, %22 : tensor<f32>
        %265 = arith.divf %cst_7, %cst_7 : f16
        %266 = math.ceil %1 : tensor<4xf32>
        %267 = memref.realloc %alloc_9 : memref<9xi16> to memref<4xi16>
      } else {
        %260 = tensor.empty() : tensor<1x3xi64>
        %261 = tensor.empty() : tensor<4x3xi64>
        %262 = linalg.matmul ins(%expanded_26, %260 : tensor<4x1xi64>, tensor<1x3xi64>) outs(%261 : tensor<4x3xi64>) -> tensor<4x3xi64>
        %263 = math.ipowi %12, %3 : tensor<3x16x16xi32>
        %264 = arith.floordivsi %false_1, %true : i1
        %from_elements_50 = tensor.from_elements %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7 : tensor<3x9xf16>
        %265 = vector.create_mask %28, %145, %103 : vector<3x16x16xi1>
        %266 = vector.flat_transpose %78 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %267 = arith.shrsi %c1_i32_25, %c1_i32_33 : i32
        %268 = math.ctpop %collapsed : tensor<27xi64>
      }
      %249 = arith.divf %cst_7, %cst_7 : f16
      %collapsed_48 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<3x16x16xi1> into tensor<48x16xi1>
      %250 = arith.xori %false, %true_6 : i1
      %alloc_49 = memref.alloc() : memref<4xi64>
      %251 = index.divu %38, %c12
      %252 = math.tan %16 : tensor<3x16x16xf32>
      %253 = arith.remf %cst_4, %cst_0 : f32
      %254 = scf.index_switch %66 -> vector<3x16x16xi32> 
      case 1 {
        %260 = math.fpowi %cst, %c1_i32_33 : f32, i32
        %261 = math.cttz %false_3 : i1
        %c0_i32 = arith.constant 0 : i32
        %262 = vector.transfer_read %0[%c15], %c0_i32 : tensor<4xi32>, vector<i32>
        %263 = arith.minui %27, %c1_i32 : i32
        %264 = arith.minui %false_3, %true : i1
        %265 = math.log %17 : tensor<3x16x16xf32>
        %266 = index.add %c14, %c8
        %267 = index.maxs %147, %c1
        %268 = math.absi %false : i1
        %269 = bufferization.clone %alloc_22 : memref<9xi64> to memref<9xi64>
        memref.copy %alloc_18, %151 : memref<4xf16> to memref<4xf16>
        %270 = index.maxs %c14, %c6
        %271 = arith.remf %cst_4, %cst_2 : f32
        %expanded_50 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<3x16x16xi1> into tensor<3x16x16x1xi1>
        %272 = math.exp %16 : tensor<3x16x16xf32>
        %273 = vector.create_mask %c3 : vector<4xi1>
        %274 = vector.broadcast %c117760923_i32 : i32 to vector<3x16x16xi32>
        scf.yield %274 : vector<3x16x16xi32>
      }
      default {
        %260 = index.maxs %c0, %c1
        %261 = arith.cmpi eq, %c729463708_i32, %c1_i32 : i32
        memref.store %c0_i16, %alloc_9[%c7] : memref<9xi16>
        %262 = vector.transpose %166, [0] : vector<4xf32> to vector<4xf32>
        %263 = arith.divsi %c1_i32_33, %27 : i32
        %264 = arith.maxf %cst_4, %cst_0 : f32
        %265 = vector.multi_reduction <maxui>, %82, %82 [] : vector<1xi64> to vector<1xi64>
        vector.print %31 : vector<5xi64>
        %266 = math.absi %6 : tensor<9xi64>
        %267 = affine.max affine_map<(d0) -> (-(d0 - (d0 + d0 - 64) - 64) - (d0 - 64) * 2, (d0 - 64) * -2)>(%c9)
        %268 = arith.subi %c729463708_i32, %27 : i32
        %269 = math.ctlz %collapsed_38 : tensor<48x16xi32>
        %270 = arith.floordivsi %c1621674228_i64, %25 : i64
        %collapsed_50 = tensor.collapse_shape %expanded_40 [[0, 1]] : tensor<9x1xi64> into tensor<9xi64>
        %271 = arith.minui %c1124206185_i64, %c1124206185_i64 : i64
        %272 = vector.extract %88[2] : vector<5xi64>
        %273 = vector.broadcast %27 : i32 to vector<3x16x16xi32>
        scf.yield %273 : vector<3x16x16xi32>
      }
      %255 = affine.max affine_map<(d0, d1) -> ((d0 + 32) ceildiv 8, d0 floordiv 4 + 8, (d0 + 32) ceildiv 2, d0 + 32)>(%c4, %c7)
      %256 = vector.extract_strided_slice %78 {offsets = [1], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
      %257 = vector.matrix_multiply %20, %88 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 5 : i32} : (vector<16xi64>, vector<5xi64>) -> vector<80xi64>
      %258 = index.divu %188, %c13
      %259 = arith.remf %cst, %cst : f32
      scf.yield
    }
    case 3 {
      %alloc_48 = memref.alloc() : memref<9xi1>
      memref.tensor_store %from_elements, %alloc_48 : memref<9xi1>
      affine.store %c0_i16, %alloc_13[%c8] : memref<4xi16>
      %248 = bufferization.to_memref %transposed : memref<9x3xi64>
      %249 = vector.extract %78[0] : vector<4xf32>
      %250 = arith.addf %cst, %cst_4 : f32
      %251 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %57, %57, %124 : vector<3x3xf32>, vector<3x3xf32> into vector<3x3xf32>
      %252 = bufferization.clone %alloc_22 : memref<9xi64> to memref<9xi64>
      memref.tensor_store %9, %alloc_17 : memref<3x16x16xi32>
      %253 = index.sub %131, %120
      %254 = math.rsqrt %8 : tensor<3x16x16xf32>
      %255 = vector.bitcast %78 : vector<4xf32> to vector<4xf32>
      %alloc_49 = memref.alloc() : memref<3x16x16xf32>
      memref.tensor_store %8, %alloc_49 : memref<3x16x16xf32>
      %256 = arith.xori %c1124206185_i64, %c1365235233_i64 : i64
      %257 = arith.remf %cst_4, %cst : f32
      %258 = affine.max affine_map<(d0, d1) -> (d0, d0 * 8 + 16, d0, d0)>(%70, %70)
      %259 = vector.insertelement %c1365235233_i64, %94[%c1 : index] : vector<80xi64>
      scf.yield
    }
    default {
      %248 = math.copysign %10, %10 : tensor<9xf16>
      %249 = math.ctlz %expanded : tensor<9x1xi64>
      %alloca_48 = memref.alloca() : memref<9xi1>
      %250 = vector.matrix_multiply %79, %166 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %251 = arith.subi %false, %false : i1
      %252 = vector.transpose %20, [0] : vector<16xi64> to vector<16xi64>
      %253 = math.copysign %8, %8 : tensor<3x16x16xf32>
      %254 = vector.extract %79[2] : vector<4xf32>
      vector.print %78 : vector<4xf32>
      %255 = math.roundeven %22 : tensor<f32>
      %256 = arith.ceildivsi %27, %27 : i32
      %257 = arith.remui %c0_i16, %c0_i16 : i16
      %258 = math.ctpop %13 : tensor<3x16x16xi1>
      %259 = arith.ceildivsi %27, %c1_i32 : i32
      %alloc_49 = memref.alloc() : memref<3x16x16xi1>
      memref.copy %98, %alloc_49 : memref<3x16x16xi1> to memref<3x16x16xi1>
      %260 = arith.minui %25, %c1124206185_i64 : i64
    }
    %189 = index.sub %188, %66
    %190 = arith.shrsi %false_1, %false_3 : i1
    %191 = arith.remf %cst_4, %cst : f32
    %from_elements_41 = tensor.from_elements %c1621674228_i64, %c1621674228_i64, %c1621674228_i64, %25, %c1621674228_i64, %c1365235233_i64, %c1124206185_i64, %c1621674228_i64, %c1621674228_i64, %c1621674228_i64, %c1621674228_i64, %c1365235233_i64, %25, %c1621674228_i64, %c1365235233_i64, %c1365235233_i64, %c1621674228_i64, %c1365235233_i64, %c1621674228_i64, %c1124206185_i64, %25, %c1621674228_i64, %25, %c1124206185_i64, %c1365235233_i64, %c1365235233_i64, %c1365235233_i64 : tensor<3x9xi64>
    %alloc_42 = memref.alloc() : memref<1x4xf32>
    %192 = tensor.empty() : tensor<4x4xf32>
    %193 = linalg.matmul ins(%expanded_28, %alloc_42 : tensor<4x1xf32>, memref<1x4xf32>) outs(%192 : tensor<4x4xf32>) -> tensor<4x4xf32>
    %194 = math.ctpop %18 : tensor<9x3xi64>
    memref.alloca_scope  {
      %248 = math.fpowi %1, %0 : tensor<4xf32>, tensor<4xi32>
      %249 = arith.divsi %c1621674228_i64, %25 : i64
      %250 = index.castu %c117760923_i32 : i32 to index
      bufferization.dealloc_tensor %14 : tensor<4xf32>
      %251 = math.cos %cst_4 : f32
      %252 = arith.cmpi slt, %c1_i32_33, %c1_i32_25 : i32
      %253 = vector.broadcast %c13 : index to vector<16xindex>
      %254 = vector.broadcast %false_1 : i1 to vector<16xi1>
      %255 = vector.broadcast %cst_7 : f16 to vector<16xf16>
      vector.scatter %151[%c1] [%253], %254, %255 : memref<4xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
      %256 = index.sizeof
      %257 = memref.realloc %alloc_20 : memref<4xf16> to memref<3xf16>
      %258 = affine.apply affine_map<(d0, d1) -> (d0 + d1 - 64)>(%145, %87)
      %259 = math.atan2 %17, %17 : tensor<3x16x16xf32>
      %260 = arith.cmpf oge, %cst_2, %cst_0 : f32
      %261 = vector.multi_reduction <maxf>, %124, %124 [] : vector<3x3xf32> to vector<3x3xf32>
      %262 = index.add %36, %c5
      %263 = math.absi %false : i1
      %264 = tensor.empty() : tensor<3x9xf16>
      %265 = index.maxs %181, %72
      %266 = math.log2 %cst : f32
      %267 = arith.ceildivsi %c1_i32_33, %c729463708_i32 : i32
      %268 = arith.divf %cst_2, %cst : f32
      %269 = math.fma %16, %17, %16 : tensor<3x16x16xf32>
      %cast_48 = tensor.cast %5 : tensor<3x9xi64> to tensor<?x?xi64>
      %270 = memref.realloc %alloc_16 : memref<9xf32> to memref<3xf32>
      %271 = scf.if %false_3 -> (i16) {
        %283 = math.tanh %7 : tensor<4xf32>
        %284 = math.copysign %cst_7, %cst_7 : f16
        %285 = arith.xori %c1365235233_i64, %c1365235233_i64 : i64
        %286 = vector.extract %79[2] : vector<4xf32>
        affine.store %cst_0, %alloc_23[] : memref<f32>
        %alloc_49 = memref.alloc() : memref<3x9xf16>
        memref.copy %alloc_19, %alloc_49 : memref<3x9xf16> to memref<3x9xf16>
        %alloca_50 = memref.alloca() : memref<3x9xf32>
        %287 = arith.remf %cst_2, %cst_4 : f32
        scf.yield %c0_i16 : i16
      } else {
        %283 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
        %284 = vector.outerproduct %79, %152, %283 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %285 = tensor.empty() : tensor<9x3xf16>
        %286 = tensor.empty() : tensor<3x3xf16>
        %287 = linalg.matmul ins(%264, %285 : tensor<3x9xf16>, tensor<9x3xf16>) outs(%286 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %288 = math.absf %23 : tensor<f32>
        %289 = arith.minui %c729463708_i32, %27 : i32
        %290 = vector.insert %cst_4, %78 [0] : f32 into vector<4xf32>
        %291 = vector.broadcast %145 : index to vector<16xindex>
        %292 = vector.broadcast %true : i1 to vector<16xi1>
        %293 = vector.broadcast %c0_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_9[%c7] [%291], %292, %293 : memref<9xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        affine.store %cst_4, %alloc_12[%c5, %c5] : memref<3x9xf32>
        %294 = index.sub %c0, %120
        scf.yield %c0_i16 : i16
      }
      %272 = vector.broadcast %36 : index to vector<4xindex>
      %273 = vector.broadcast %false_1 : i1 to vector<4xi1>
      %274 = vector.broadcast %c1621674228_i64 : i64 to vector<4xi64>
      vector.scatter %alloc_21[%c2, %c6, %c3] [%272], %273, %274 : memref<3x16x16xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %275 = arith.maxf %cst_4, %cst : f32
      %276 = vector.broadcast %c1365235233_i64 : i64 to vector<3xi64>
      %277 = vector.transfer_write %276, %5[%c11, %256] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, tensor<3x9xi64>
      %278 = arith.maxui %27, %c117760923_i32 : i32
      %279 = arith.subi %false_5, %false_5 : i1
      %280 = math.rsqrt %cst_2 : f32
      %281 = math.copysign %17, %16 : tensor<3x16x16xf32>
      %282 = index.ceildivu %76, %34
    }
    affine.store %cst, %alloc_12[%c6, %c13] : memref<3x9xf32>
    scf.index_switch %147 
    case 1 {
      %from_elements_48 = tensor.from_elements %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16 : tensor<9xi16>
      %248 = arith.divsi %c1_i32, %c117760923_i32 : i32
      %249 = tensor.empty() : tensor<3x16x16xf16>
      %250 = affine.min affine_map<(d0) -> (d0 floordiv 2 + 64, 0)>(%188)
      %251 = arith.maxf %cst, %cst_2 : f32
      %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %166, %166, %cst_0 : vector<4xf32>, vector<4xf32> into f32
      %253 = math.copysign %cst, %cst_4 : f32
      %254 = index.add %c4, %172
      %255 = arith.divf %cst_2, %cst_0 : f32
      %256 = index.casts %c15 : index to i32
      %expanded_49 = tensor.expand_shape %10 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
      %257 = vector.flat_transpose %31 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      %generated_50 = tensor.generate %38 {
      ^bb0(%arg1: index, %arg2: index):
        %260 = arith.minsi %c1621674228_i64, %25 : i64
        bufferization.dealloc_tensor %17 : tensor<3x16x16xf32>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %261 = vector.transfer_read %11[%c0], %cst_51 : tensor<4xf16>, vector<f16>
        %262 = vector.reduction <maxsi>, %31 : vector<5xi64> into i64
        tensor.yield %c1_i32_25 : i32
      } : tensor<?x9xi32>
      %258 = arith.shrsi %c117760923_i32, %c117760923_i32 : i32
      %259 = scf.if %false_5 -> (i64) {
        %260 = vector.reduction <minsi>, %82 : vector<1xi64> into i64
        %261 = index.sizeof
        %262 = math.sqrt %cst_7 : f16
        %263 = vector.reduction <minui>, %94 : vector<80xi64> into i64
        %264 = vector.broadcast %c0_i16 : i16 to vector<16xi16>
        %265 = vector.broadcast %false : i1 to vector<16xi1>
        %266 = vector.maskedload %alloc_14[%c1, %c2], %265, %264 : memref<3x9xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %267 = index.floordivs %c2, %137
        %268 = arith.remsi %false_1, %false_3 : i1
        %269 = arith.mulf %cst_4, %cst_2 : f32
        scf.yield %c1365235233_i64 : i64
      } else {
        %260 = index.castu %103 : index to i32
        %261 = arith.shrsi %true, %true : i1
        %262 = arith.maxsi %c1_i32_33, %c1_i32 : i32
        %263 = vector.reduction <minsi>, %257 : vector<5xi64> into i64
        vector.print %20 : vector<16xi64>
        %264 = arith.remui %25, %25 : i64
        %265 = index.casts %189 : index to i32
        %alloca_51 = memref.alloca() : memref<3x16x16xf32>
        scf.yield %25 : i64
      }
      memref.store %c1124206185_i64, %alloc_22[%c0] : memref<9xi64>
      scf.yield
    }
    default {
      %248 = affine.apply affine_map<(d0, d1) -> ((d0 * -8 + 2) * -64)>(%c10, %c3)
      %249 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 mod 32 + d0)>(%172, %72, %c9, %126)
      %250 = index.casts %c117760923_i32 : i32 to index
      %251 = scf.index_switch %72 -> i32 
      case 1 {
        %263 = arith.maxsi %c1621674228_i64, %25 : i64
        %collapsed_49 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
        %264 = vector.insert %25, %94 [9] : i64 into vector<80xi64>
        %265 = vector.extract %124[2] : vector<3x3xf32>
        %266 = math.copysign %22, %23 : tensor<f32>
        %267 = math.exp %11 : tensor<4xf16>
        %268 = arith.divf %cst, %cst_4 : f32
        %269 = index.mul %126, %38
        %270 = math.exp %23 : tensor<f32>
        %271 = arith.addi %c1124206185_i64, %c1621674228_i64 : i64
        %272 = arith.ori %c1_i32_25, %c1_i32_33 : i32
        memref.assume_alignment %alloc_20, 16 : memref<4xf16>
        %273 = vector.create_mask %102 : vector<4xi1>
        affine.store %cst_7, %alloc_18[%c14] : memref<4xf16>
        %274 = memref.realloc %alloc_20 : memref<4xf16> to memref<4xf16>
        %275 = arith.ori %false_5, %true : i1
        scf.yield %c1_i32 : i32
      }
      case 2 {
        %263 = math.log10 %10 : tensor<9xf16>
        %264 = math.copysign %17, %8 : tensor<3x16x16xf32>
        %265 = vector.broadcast %120 : index to vector<16xindex>
        %266 = vector.broadcast %false : i1 to vector<16xi1>
        %267 = vector.broadcast %c0_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_11[%c0, %c3] [%265], %266, %267 : memref<3x9xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %268 = arith.addf %cst, %cst_0 : f32
        %269 = math.absi %25 : i64
        %270 = arith.minui %25, %c1365235233_i64 : i64
        %271 = arith.subi %c729463708_i32, %c117760923_i32 : i32
        %272 = vector.reduction <minsi>, %31 : vector<5xi64> into i64
        %273 = arith.shrsi %false, %false : i1
        %274 = vector.reduction <minf>, %78 : vector<4xf32> into f32
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %82, %82, %25 : vector<1xi64>, vector<1xi64> into i64
        %276 = math.ipowi %c1_i32_25, %c1_i32_25 : i32
        %277 = vector.create_mask %c11, %c1, %c1 : vector<3x16x16xi1>
        %278 = math.fpowi %14, %0 : tensor<4xf32>, tensor<4xi32>
        %279 = memref.realloc %alloc_13 : memref<4xi16> to memref<3xi16>
        %280 = arith.shrsi %c117760923_i32, %c1_i32 : i32
        scf.yield %c1_i32_25 : i32
      }
      case 3 {
        %263 = vector.splat %c1_i32 : vector<4xi32>
        %264 = math.absi %collapsed_38 : tensor<48x16xi32>
        %265 = bufferization.to_tensor %alloc : memref<3x9xi1>
        %266 = index.maxs %126, %126
        %267 = arith.ceildivsi %c1621674228_i64, %c1365235233_i64 : i64
        %268 = index.maxs %c10, %249
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %166, %152, %cst_2 : vector<4xf32>, vector<4xf32> into f32
        %270 = index.maxs %137, %268
        %271 = math.powf %14, %14 : tensor<4xf32>
        %272 = vector.insert %cst_2, %79 [1] : f32 into vector<4xf32>
        %273 = math.exp %8 : tensor<3x16x16xf32>
        %274 = vector.broadcast %cst_4 : f32 to vector<3x16x16xf32>
        %275 = vector.fma %274, %274, %274 : vector<3x16x16xf32>
        %276 = math.cttz %46 : tensor<4xi16>
        %277 = math.ipowi %c0_i16, %c0_i16 : i16
        %278 = arith.minui %c1_i32, %27 : i32
        %expanded_49 = tensor.expand_shape %14 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        scf.yield %27 : i32
      }
      case 4 {
        %263 = arith.mulf %cst_0, %cst_2 : f32
        %264 = vector.bitcast %79 : vector<4xf32> to vector<4xf32>
        memref.store %true, %alloc_15[%c1] : memref<4xi1>
        %265 = index.add %36, %c8
        %266 = index.casts %25 : i64 to index
        %267 = index.sizeof
        %268 = index.add %c3, %34
        %269 = vector.bitcast %166 : vector<4xf32> to vector<4xf32>
        %270 = affine.min affine_map<(d0) -> (d0 floordiv 16)>(%c10)
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %31, %88, %c1365235233_i64 : vector<5xi64>, vector<5xi64> into i64
        %alloca_49 = memref.alloca() : memref<9xi1>
        %272 = tensor.empty() : tensor<3x9xi64>
        %273 = linalg.matmul ins(%114, %5 : tensor<3x3xi64>, tensor<3x9xi64>) outs(%272 : tensor<3x9xi64>) -> tensor<3x9xi64>
        %274 = bufferization.clone %151 : memref<4xf16> to memref<4xf16>
        %275 = arith.minui %c729463708_i32, %c1_i32_25 : i32
        vector.print %88 : vector<5xi64>
        %276 = index.castu %72 : index to i32
        scf.yield %27 : i32
      }
      default {
        %263 = arith.cmpf oeq, %cst_7, %cst_7 : f16
        %264 = math.round %expanded_28 : tensor<4x1xf32>
        %265 = math.absi %from_elements : tensor<9xi1>
        %266 = vector.create_mask %171 : vector<4xi1>
        %267 = arith.divf %cst_0, %cst_2 : f32
        %268 = math.ctlz %27 : i32
        vector.print %31 : vector<5xi64>
        %269 = math.ctlz %c1365235233_i64 : i64
        %270 = math.copysign %14, %14 : tensor<4xf32>
        %271 = arith.minui %25, %c1621674228_i64 : i64
        %272 = index.castu %102 : index to i32
        %273 = math.cos %1 : tensor<4xf32>
        %274 = math.rsqrt %10 : tensor<9xf16>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %152, %79, %cst_2 : vector<4xf32>, vector<4xf32> into f32
        %276 = index.ceildivu %156, %138
        %277 = math.powf %cst_2, %cst_0 : f32
        scf.yield %c1_i32 : i32
      }
      %252 = vector.shuffle %79, %152 [0, 1, 2, 3, 7] : vector<4xf32>, vector<4xf32>
      %253 = math.copysign %8, %16 : tensor<3x16x16xf32>
      %collapsed_48 = tensor.collapse_shape %expanded_28 [[0, 1]] : tensor<4x1xf32> into tensor<4xf32>
      %254 = math.copysign %14, %21 : tensor<4xf32>
      %255 = tensor.empty(%147) : tensor<3x?xi16>
      %256 = vector.create_mask %c3 : vector<4xi1>
      %257 = math.copysign %10, %10 : tensor<9xf16>
      %258 = index.castu %137 : index to i32
      %259 = math.ctpop %from_elements_41 : tensor<3x9xi64>
      %260 = math.floor %14 : tensor<4xf32>
      %261 = vector.matrix_multiply %94, %88 {lhs_columns = 5 : i32, lhs_rows = 16 : i32, rhs_columns = 1 : i32} : (vector<80xi64>, vector<5xi64>) -> vector<16xi64>
      %262 = arith.remf %cst_7, %cst_7 : f16
    }
    %195 = math.fma %23, %22, %23 : tensor<f32>
    %alloc_43 = memref.alloc() : memref<3x16x16xi1>
    memref.copy %98, %alloc_43 : memref<3x16x16xi1> to memref<3x16x16xi1>
    %generated_44 = tensor.generate %c5 {
    ^bb0(%arg1: index):
      affine.for %arg2 = 0 to 98 {
      }
      %248 = vector.broadcast %c1124206185_i64 : i64 to vector<i64>
      %249 = vector.transfer_write %248, %6[%188] : vector<i64>, tensor<9xi64>
      %250 = math.ceil %expanded_28 : tensor<4x1xf32>
      memref.store %cst_2, %alloc_16[%c8] : memref<9xf32>
      tensor.yield %27 : i32
    } : tensor<?xi32>
    %196 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 floordiv 64 + 2)>(%165, %c8, %103, %38)
    memref.copy %alloc_18, %151 : memref<4xf16> to memref<4xf16>
    %197 = math.cos %11 : tensor<4xf16>
    %198 = arith.maxsi %c1124206185_i64, %c1621674228_i64 : i64
    %199 = arith.shrsi %25, %c1621674228_i64 : i64
    affine.store %false_1, %alloc_15[%c10] : memref<4xi1>
    %200 = vector.broadcast %cst_0 : f32 to vector<3xf32>
    %dest, %accumulated_value = vector.scan <add>, %124, %200 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xf32>, vector<3xf32>
    %201 = math.fma %192, %192, %192 : tensor<4x4xf32>
    %202 = arith.shrsi %false, %false_5 : i1
    scf.index_switch %171 
    case 1 {
      %248 = index.ceildivu %70, %c10
      %249 = index.casts %196 : index to i32
      %250 = math.ipowi %25, %c1621674228_i64 : i64
      %251 = vector.load %alloc_17[%c1, %c12, %c1] : memref<3x16x16xi32>, vector<4xi32>
      %252 = index.sub %131, %248
      %253 = scf.if %false_5 -> (i16) {
        %263 = arith.muli %25, %c1365235233_i64 : i64
        memref.store %cst_7, %151[%c3] : memref<4xf16>
        %264 = arith.muli %c1365235233_i64, %c1621674228_i64 : i64
        %265 = index.divu %171, %87
        %cst_49 = arith.constant 1.000000e+00 : f32
        %cst_50 = arith.constant 0.000000e+00 : f32
        %266 = vector.transfer_read %1[%c0], %cst_50 : tensor<4xf32>, vector<f32>
        %267 = math.cttz %c729463708_i32 : i32
        %268 = arith.ceildivsi %c729463708_i32, %c1_i32_33 : i32
        %269 = index.ceildivu %75, %c11
        scf.yield %c0_i16 : i16
      } else {
        memref.assume_alignment %alloc_13, 16 : memref<4xi16>
        %263 = arith.maxsi %true, %false : i1
        %264 = math.cttz %0 : tensor<4xi32>
        %265 = math.atan2 %22, %23 : tensor<f32>
        %266 = tensor.empty() : tensor<3x9xi32>
        %267 = arith.ceildivsi %true, %false_5 : i1
        %268 = vector.multi_reduction <mul>, %94, %c1124206185_i64 [0] : vector<80xi64> to i64
        %269 = arith.remf %cst, %cst_2 : f32
        scf.yield %c0_i16 : i16
      }
      %254 = scf.while (%arg1 = %alloc_23) : (memref<f32>) -> memref<f32> {
        %263 = arith.shrsi %c0_i16, %c0_i16 : i16
        %264 = arith.maxsi %25, %c1365235233_i64 : i64
        %265 = vector.reduction <and>, %31 : vector<5xi64> into i64
        %266 = vector.reduction <maxf>, %78 : vector<4xf32> into f32
        %267 = arith.divf %cst_7, %cst_7 : f16
        %268 = arith.ori %c0_i16, %c0_i16 : i16
        %269 = math.copysign %10, %10 : tensor<9xf16>
        %270 = arith.cmpi slt, %false_5, %false_1 : i1
        scf.condition(%false) %alloc_23 : memref<f32>
      } do {
      ^bb0(%arg1: memref<f32>):
        %263 = affine.min affine_map<(d0, d1) -> (-((d0 mod 128) ceildiv 2 + (d0 mod 128) floordiv 2 - 1))>(%156, %66)
        %264 = index.castu %25 : i64 to index
        %expanded_49 = tensor.expand_shape %generated_34 [[0], [1], [2, 3]] : tensor<?x16x16xi32> into tensor<?x16x16x1xi32>
        %265 = arith.muli %c1365235233_i64, %25 : i64
        %266 = vector.insertelement %c1365235233_i64, %31[%c15 : index] : vector<5xi64>
        %c1_i16 = arith.constant 1 : i16
        %267 = vector.transfer_read %alloc_13[%34], %c1_i16 : memref<4xi16>, vector<i16>
        %268 = arith.floordivsi %c117760923_i32, %c1_i32_33 : i32
        %269 = math.expm1 %11 : tensor<4xf16>
        bufferization.dealloc_tensor %16 : tensor<3x16x16xf32>
        %270 = arith.addi %c1365235233_i64, %25 : i64
        %271 = math.cttz %2 : tensor<3x9xi32>
        %272 = math.cttz %from_elements : tensor<9xi1>
        %273 = arith.mulf %cst_7, %cst_7 : f16
        %274 = arith.divsi %false, %false_5 : i1
        %extracted = tensor.extract %generated_35[%c0] : tensor<?xi32>
        %275 = arith.subi %c1_i16, %c0_i16 : i16
        scf.yield %alloc_23 : memref<f32>
      }
      %from_elements_48 = tensor.from_elements %false_3, %false_5, %false_3, %false, %false_5, %true_6, %true_6, %false_1, %false_3 : tensor<9xi1>
      %255 = vector.matrix_multiply %20, %82 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<1xi64>) -> vector<16xi64>
      %256 = math.roundeven %11 : tensor<4xf16>
      %257 = arith.cmpf ogt, %cst_2, %cst_4 : f32
      %258 = arith.ceildivsi %c0_i16, %253 : i16
      %259 = vector.matrix_multiply %20, %88 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 5 : i32} : (vector<16xi64>, vector<5xi64>) -> vector<80xi64>
      %260 = index.ceildivu %87, %156
      %261 = index.ceildivs %c10, %c2
      %262 = arith.andi %false_5, %false : i1
      scf.yield
    }
    case 2 {
      %true_48 = arith.constant true
      %false_49 = arith.constant false
      %248 = vector.transfer_read %13[%120, %c8, %189], %false_49 : tensor<3x16x16xi1>, vector<i1>
      %249 = math.copysign %7, %1 : tensor<4xf32>
      %250 = arith.muli %false_1, %false_3 : i1
      %false_50 = index.bool.constant false
      %251 = math.absi %false_5 : i1
      %252 = vector.broadcast %c729463708_i32 : i32 to vector<4xi32>
      %253 = math.roundeven %192 : tensor<4x4xf32>
      %254 = index.sub %rank, %181
      %255 = vector.matrix_multiply %78, %78 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %256 = arith.mulf %cst, %cst_2 : f32
      %257 = arith.divf %cst_2, %cst : f32
      %258 = arith.cmpi ult, %false_5, %false : i1
      %inserted = tensor.insert %cst_4 into %14[%c0] : tensor<4xf32>
      %from_elements_51 = tensor.from_elements %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16 : tensor<3x16x16xi16>
      %259 = arith.divf %cst, %cst_0 : f32
      memref.store %c0_i16, %alloc_9[%c5] : memref<9xi16>
      scf.yield
    }
    case 3 {
      %248 = vector.broadcast %false : i1 to vector<i1>
      %249 = vector.transfer_write %248, %49[%138, %76, %rank] : vector<i1>, tensor<3x16x16xi1>
      %250 = vector.broadcast %cst_7 : f16 to vector<9xf16>
      %251 = math.round %cst_2 : f32
      %252 = affine.max affine_map<(d0, d1, d2) -> (0, 0)>(%c12, %rank, %145)
      %253 = bufferization.clone %alloc_23 : memref<f32> to memref<f32>
      %from_elements_48 = tensor.from_elements %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7 : tensor<3x16x16xf16>
      %expanded_49 = tensor.expand_shape %46 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
      %254 = vector.reduction <maxf>, %152 : vector<4xf32> into f32
      %255 = math.floor %16 : tensor<3x16x16xf32>
      %256 = index.add %c14, %28
      %257 = math.cos %10 : tensor<9xf16>
      %258 = index.casts %25 : i64 to index
      %259 = math.round %1 : tensor<4xf32>
      %260 = arith.ceildivsi %false, %false_1 : i1
      %261 = arith.mulf %cst_2, %cst_2 : f32
      %262 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
      %263 = vector.outerproduct %78, %152, %262 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
      scf.yield
    }
    case 4 {
      %248 = memref.atomic_rmw addi %c0_i16, %alloc_8[%c1, %c1] : (i16, memref<3x9xi16>) -> i16
      %249 = vector.broadcast %cst_4 : f32 to vector<3xf32>
      %250 = vector.multi_reduction <maxf>, %124, %249 [0] : vector<3x3xf32> to vector<3xf32>
      %251 = math.ctpop %4 : tensor<3x16x16xi32>
      %252 = math.rsqrt %8 : tensor<3x16x16xf32>
      %253 = vector.extract %20[6] : vector<16xi64>
      bufferization.dealloc_tensor %23 : tensor<f32>
      %254 = arith.floordivsi %c1_i32, %27 : i32
      %255 = vector.multi_reduction <mul>, %166, %78 [] : vector<4xf32> to vector<4xf32>
      %256 = index.castu %c729463708_i32 : i32 to index
      %257 = index.sub %165, %181
      %from_elements_48 = tensor.from_elements %c1_i32, %c1_i32, %c1_i32_33, %c117760923_i32, %27, %c117760923_i32, %c1_i32_25, %27, %c729463708_i32, %c1_i32_33, %c1_i32, %c1_i32_25, %27, %27, %27, %27, %c117760923_i32, %c1_i32, %c1_i32_33, %c1_i32_33, %c1_i32, %c1_i32_33, %c729463708_i32, %c1_i32_25, %c1_i32_25, %c1_i32, %c1_i32_33 : tensor<3x9xi32>
      %258 = bufferization.to_tensor %alloc_15 : memref<4xi1>
      %259 = arith.minui %c1_i32, %c1_i32_33 : i32
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %166, %152, %cst_0 : vector<4xf32>, vector<4xf32> into f32
      %261 = tensor.empty() : tensor<9xf16>
      %262 = index.castu %27 : i32 to index
      scf.yield
    }
    default {
      %alloca_48 = memref.alloca() : memref<3x9xi1>
      scf.if %false {
        %inserted = tensor.insert %c1124206185_i64 into %expanded[%c3, %c0] : tensor<9x1xi64>
        %262 = arith.cmpf one, %cst_4, %cst : f32
        %263 = vector.broadcast %c12 : index to vector<3xindex>
        %264 = vector.broadcast %true_6 : i1 to vector<3xi1>
        vector.scatter %alloc[%c0, %c6] [%263], %264, %264 : memref<3x9xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %265 = arith.shrui %false_5, %false_1 : i1
        %266 = math.cttz %9 : tensor<3x16x16xi32>
        %expanded_49 = tensor.expand_shape %7 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        %from_elements_50 = tensor.from_elements %false_5, %true_6, %true, %false_3, %false_3, %false_5, %true_6, %true_6, %false, %false_5, %false, %false_5, %false_5, %false_3, %false_1, %false_3, %false, %false_5, %false, %false_1, %true, %false_3, %true_6, %true_6, %false, %false, %true_6, %false_3, %false_3, %false, %true_6, %false_5, %false_5, %true, %false_3, %false_3, %false_1, %false_5, %false, %false, %false_1, %false, %false, %false_5, %true, %false, %false, %true_6, %false, %false, %false_1, %false_3, %true_6, %false_5, %true_6, %true, %true_6, %true_6, %true, %true_6, %false_1, %true, %false_3, %false_3, %true_6, %false_3, %true, %false_5, %true, %true, %false_5, %false_3, %false_3, %false_1, %false_1, %true, %false, %true_6, %false_5, %true_6, %false_1, %false, %false_1, %true, %false, %false, %false_3, %true_6, %true, %false, %false_5, %true, %true_6, %false, %false_3, %false_3, %false, %false_1, %false_3, %false_5, %true, %false_1, %false, %true, %false_3, %false_3, %false_3, %false, %false_3, %false, %true, %true_6, %false_3, %false, %true, %false_3, %false_3, %false, %false_3, %true_6, %true_6, %false, %false_3, %false_3, %false, %true_6, %false_1, %false, %false_5, %false_3, %false_1, %true_6, %false_3, %false_5, %true_6, %false_5, %false_3, %true, %false_5, %false, %true_6, %true, %false_1, %false_5, %true, %true_6, %true, %false_3, %false_1, %false_1, %false_1, %false, %false_5, %true, %true_6, %true_6, %true_6, %false_5, %false_3, %true_6, %true, %true, %false_1, %false_3, %false_5, %false_1, %true, %true, %true_6, %true, %true, %false_3, %false_1, %false_3, %false_3, %true_6, %true, %false_5, %false_5, %false, %true, %false_5, %false_3, %true, %false, %false_3, %false_5, %false_3, %false_1, %true_6, %true, %true_6, %false_3, %true, %false_3, %false_3, %false_3, %false_3, %false_1, %true_6, %false_1, %true_6, %false_3, %false_5, %false_5, %false, %false_1, %true, %false_1, %false_3, %false, %false_3, %true, %false_5, %false_3, %false_5, %false, %false_3, %true_6, %true, %false, %false_1, %false, %true_6, %true, %true, %false, %true_6, %false, %false, %true_6, %false_3, %false_5, %false_5, %false_3, %false_3, %false_3, %false_5, %false_1, %false_1, %true_6, %false_5, %false, %false, %false_1, %false_5, %false, %false_3, %true_6, %true, %false, %true_6, %false_3, %true, %false, %true_6, %false_5, %false_3, %false_1, %true, %false, %false, %false, %false_1, %true_6, %true, %true_6, %false, %true_6, %true, %false_5, %false_1, %true, %false_5, %true, %false_5, %false_5, %false_1, %true, %false_5, %true_6, %false, %true_6, %false_1, %false_5, %true, %false, %true_6, %true, %false_3, %false_3, %false_1, %false_5, %false_3, %false, %true_6, %false_1, %true, %true_6, %false_5, %false_5, %false, %true_6, %false_5, %false_5, %false, %false_1, %false_5, %false_1, %false_3, %true_6, %false_5, %false_3, %false, %false_1, %false_3, %false_5, %false_1, %false_5, %false, %true, %true_6, %true_6, %false_5, %true, %false_1, %false_3, %false, %true_6, %false_5, %false, %false_3, %false_5, %false_1, %true_6, %true, %false, %false_3, %false, %false, %false_1, %false, %false_3, %false_1, %true, %true, %false_3, %true, %false_1, %false_3, %false_5, %false, %false_5, %false, %false, %false_3, %true_6, %false, %false, %false_3, %true, %false, %false_1, %false_3, %false_1, %false_3, %false, %true, %false_5, %true_6, %false, %true, %false_5, %false_1, %false_1, %true_6, %false, %true, %true, %false_1, %false, %false_3, %true, %false_5, %true, %false_3, %false_5, %false_3, %false, %true, %false, %true, %false_1, %false_3, %true_6, %true, %true, %true_6, %false, %true_6, %false, %false_1, %false_5, %true, %true, %false_3, %true, %false, %false_3, %false, %false_1, %true, %false_3, %false_5, %false_5, %true_6, %false_3, %false_1, %true_6, %false_1, %false_3, %true_6, %true_6, %false_1, %true, %true, %false_5, %true, %false, %true, %false_3, %true, %true_6, %true_6, %true_6, %false_5, %false_5, %false, %false_5, %false_1, %true, %false_3, %false, %false_5, %true, %false_5, %false_1, %false_3, %false_1, %false_5, %false_5, %true_6, %true, %false_3, %false_5, %true_6, %false_3, %false_5, %false_1, %true_6, %false_3, %true_6, %false_1, %true, %false, %true_6, %false, %true, %false, %false_3, %true_6, %false_5, %false_5, %false_1, %false_5, %false_5, %false_1, %true, %false, %true, %false, %false_3, %false_3, %false_5, %false_3, %false, %false_3, %false, %false_5, %false_5, %false_1, %true_6, %false, %false, %false, %false, %false_5, %true, %false_3, %false_3, %false_3, %true, %false, %false_3, %true_6, %true_6, %false_3, %false_5, %true, %true_6, %true, %false_1, %true, %true, %false_5, %true_6, %false_3, %true_6, %false_1, %false_3, %false_1, %false, %false_1, %false_1, %false, %false_5, %false_1, %false_1, %false_5, %false_1, %false_1, %false, %true_6, %true_6, %false, %false, %true, %true_6, %false, %false_1, %false_5, %false_3, %true, %true, %false, %true_6, %true, %false_5, %true, %false_5, %false_1, %false, %false_3, %false, %true_6, %false, %true, %true, %false_5, %true_6, %false_1, %false_5, %true, %true_6, %true_6, %false_3, %true_6, %false_1, %false_3, %false_5, %false_1, %false, %false, %true, %true_6, %true_6, %true_6, %false, %false, %true, %false_3, %false_3, %false_1, %true_6, %true, %true, %false, %false, %false_3, %false_3, %false_3, %false_1, %false_5, %false_1, %false_5, %false_5, %false_1, %false_5, %true, %false_5, %true_6, %false_3, %false_3, %false, %false_5, %false, %false_5, %true, %true, %false_3, %false_1, %false_3, %false, %false_5, %false_1, %true, %true, %true_6, %false_1, %false_3, %false_5, %false_5, %false_1, %true_6, %true, %false_3, %false_3, %false_3, %false_1, %true, %true_6, %false, %true, %true_6, %true, %false_5, %false_3, %false, %false_1, %false, %true_6, %false_3, %false_3, %true, %false, %false_3, %false_5, %false_5, %false_5, %false_1, %false_5, %false_5, %false_5, %false_5, %false_5, %true_6, %false, %true, %false, %false, %true, %true, %false_5, %false_1, %false, %false, %false, %true, %true, %true_6, %false, %false_5, %false_5, %true, %false_5, %true, %true, %false, %false_1, %true, %true, %true, %true, %false, %false_5, %false_1, %false_5, %true_6, %false_3, %true, %true_6, %true_6, %true, %true, %true_6, %false_1, %false_1, %false_3, %false_1, %false_1, %false_3, %false_1, %false, %false_5, %false_1, %false_1, %false_1, %false_1, %true, %true_6, %false_5, %false_1, %false_1, %false, %true, %false_1, %false_3, %false_1, %true_6, %false_1, %true_6, %false_3, %false, %true, %false, %true_6, %true_6, %false, %false_3, %false, %false_3, %true_6, %true, %true, %false_3, %false_1, %false_1, %true, %false_3, %false_3, %false, %false, %true, %false_5, %false_1, %false, %false_5, %true_6, %true, %true_6, %false_3, %true, %false_3, %true_6, %true_6, %false, %false, %true, %true_6, %false_5, %false_1, %true, %false_5, %false_1, %false, %false_1, %false, %true : tensor<3x16x16xi1>
        %267 = math.ctlz %46 : tensor<4xi16>
      }
      %248 = arith.shrui %false, %true : i1
      %249 = arith.maxui %c1_i32, %27 : i32
      %250 = math.exp2 %10 : tensor<9xf16>
      %251 = tensor.empty() : tensor<3x16x16xf32>
      %252 = math.sqrt %cst_2 : f32
      %253 = index.add %196, %rank
      %254 = arith.subi %false_1, %false_3 : i1
      %255 = arith.subi %false, %true_6 : i1
      %256 = vector.create_mask %131, %c1 : vector<3x9xi1>
      affine.store %c0_i16, %alloc_11[%c10, %c2] : memref<3x9xi16>
      %257 = math.round %1 : tensor<4xf32>
      %258 = math.ctpop %6 : tensor<9xi64>
      %259 = vector.broadcast %cst_4 : f32 to vector<3xf32>
      %260 = vector.multi_reduction <add>, %57, %259 [1] : vector<3x3xf32> to vector<3xf32>
      %261 = arith.ceildivsi %c1365235233_i64, %c1365235233_i64 : i64
    }
    %203 = index.mul %120, %171
    %204 = arith.divsi %true_6, %false_5 : i1
    %205 = index.sizeof
    %206 = math.expm1 %7 : tensor<4xf32>
    %207 = arith.divsi %false_5, %true : i1
    %208 = vector.insert %cst_2, %152 [0] : f32 into vector<4xf32>
    %209 = tensor.empty(%c8) : tensor<?xi16>
    %210 = math.copysign %cst_7, %cst_7 : f16
    %211 = math.ctlz %c1124206185_i64 : i64
    %212 = arith.shrsi %false, %false_1 : i1
    %213 = arith.remf %cst_0, %cst : f32
    %214 = bufferization.to_memref %21 : memref<4xf32>
    %215 = arith.cmpf oge, %cst_7, %cst_7 : f16
    %216 = arith.muli %false_3, %true_6 : i1
    %217 = arith.mulf %cst, %cst : f32
    %218 = math.ctpop %9 : tensor<3x16x16xi32>
    %219 = vector.create_mask %c15, %c12 : vector<3x9xi1>
    %true_45 = index.bool.constant true
    %220 = vector.insert %25, %88 [3] : i64 into vector<5xi64>
    %221 = arith.remf %cst_7, %cst_7 : f16
    %222 = scf.while (%arg1 = %c729463708_i32) : (i32) -> i32 {
      %248 = math.roundeven %14 : tensor<4xf32>
      scf.if %false_5 {
        %256 = math.fma %1, %21, %7 : tensor<4xf32>
        %257 = math.ctpop %15 : tensor<4xi64>
        %258 = math.cttz %c1_i32 : i32
        %259 = math.copysign %expanded_28, %expanded_28 : tensor<4x1xf32>
        %260 = math.sqrt %cst_0 : f32
        %261 = math.fma %11, %11, %11 : tensor<4xf16>
        %262 = arith.ceildivsi %c1124206185_i64, %c1621674228_i64 : i64
        %263 = arith.remf %cst, %cst : f32
      } else {
        %256 = math.sqrt %expanded_28 : tensor<4x1xf32>
        %257 = math.log10 %expanded_28 : tensor<4x1xf32>
        %258 = vector.transpose %20, [0] : vector<16xi64> to vector<16xi64>
        %from_elements_48 = tensor.from_elements %true_6, %false_5, %false_5, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false_5, %false_5, %true, %false_5, %false_3, %false_1, %false_5, %false_5, %true_45, %true, %false_3, %true, %false_5, %false_5, %false_1, %false_3, %false, %false_3, %false_1, %true, %true, %false, %false_3, %true_45, %true_45, %false_5, %false_3, %true_45, %true_6, %false_1, %false_1, %false_1, %false_1, %false_5, %true_45, %false_5, %true_45, %false_5, %false_5, %true_45, %false_5, %true, %false_3, %false_3, %true, %false, %true_45, %true_6, %false, %true_45, %true_45, %false_5, %true_45, %true_45, %true_6, %true, %true_6, %true_45, %false_5, %true, %true_45, %false_1, %true_6, %false_3, %false_1, %true_6, %true_6, %true_45, %false, %false_1, %true_6, %true, %true_45, %true_6, %true_6, %false_1, %true_6, %false_1, %false_1, %false, %true_45, %false_5, %true_45, %true_45, %false_5, %false_1, %false_5, %true, %false_5, %true_6, %false_3, %true, %false_3, %false_3, %true_45, %false, %false_3, %true_45, %true, %true, %true, %true, %false_1, %true_45, %false_3, %false_3, %true_6, %true_45, %false_3, %false, %false_1, %false, %true, %false_5, %false_1, %false_3, %false, %false_1, %true_45, %true_6, %false_5, %false_1, %true_6, %false_5, %true_6, %false_3, %true_45, %false, %false_5, %true_6, %true_6, %false_1, %false_5, %true_45, %true, %false, %false_1, %false_1, %false_3, %false, %false_5, %true_45, %true, %true_6, %true_45, %false_3, %true, %false_5, %false_5, %false_5, %true, %true_45, %false, %false, %true_6, %false_1, %true_45, %false, %false_3, %true_45, %true_45, %true_45, %true, %false_5, %true_45, %false_3, %false, %false_5, %false_5, %true_45, %false, %true_45, %false_5, %false_5, %false_3, %true_6, %false, %true_6, %true_6, %true_45, %true, %true, %true_6, %true_6, %false_3, %false_3, %false_5, %false, %true_45, %true_45, %false_1, %false_1, %false_1, %false, %true_45, %true_6, %true, %false_3, %true, %false_5, %false_5, %false_5, %false, %false, %true_45, %false_5, %false_5, %false, %true_6, %false_5, %false_1, %false_3, %false_5, %false, %false_1, %true_45, %false_5, %true_45, %false_5, %true, %false_5, %true_45, %false, %false_1, %false_5, %false_1, %true_6, %true, %false, %false_3, %true, %false_3, %false_3, %false, %true, %false, %false_3, %false_3, %true_6, %true_45, %false_5, %true_6, %true_45, %true_45, %false_3, %true_45, %false_5, %false_1, %false, %true_45, %false_1, %false_5, %false, %true_45, %true_45, %false_1, %true_45, %true_45, %false_1, %true, %false_1, %false_5, %true_45, %false_3, %false_1, %false_3, %true_45, %true_6, %true_45, %true, %false_5, %true, %true, %true_45, %true, %false_1, %true, %false, %false_1, %false, %true_45, %true, %false, %false_1, %true_6, %true, %false_1, %false_1, %false_3, %true_45, %false, %true_6, %false_3, %false_3, %true, %true_45, %true, %false_5, %false_5, %false_3, %false, %false, %false_5, %true_45, %true_45, %false_5, %false_5, %true, %true_6, %true_45, %false_3, %true_45, %false_3, %false_3, %true_45, %false, %false_5, %false_1, %false_1, %false, %false_5, %false, %true_45, %false_5, %true_6, %true_6, %false_5, %false_1, %true_6, %false, %true, %false, %false, %true_6, %false_1, %true_6, %true_6, %false_5, %true_6, %false_5, %true_6, %true_45, %false, %false_5, %false_1, %true_45, %false_5, %true, %true, %false_1, %true, %false, %true_45, %false_1, %true, %false, %true_45, %true_45, %true_45, %false_3, %false, %false_3, %false_1, %false_5, %false_3, %false, %true, %true, %true, %true_45, %true, %true_45, %true_45, %true_45, %true_45, %false_3, %true_6, %true_45, %true_6, %true, %false_5, %true, %true_6, %false_1, %true, %true_45, %false, %false_5, %false_3, %true_45, %true, %true_6, %false_3, %true_6, %true, %false_3, %false, %true_45, %false_3, %true, %true_45, %false, %true_45, %false_5, %false_5, %true_45, %false_1, %true, %false_1, %true_6, %false_1, %true, %true_45, %true, %true, %false, %true_45, %true_6, %true_45, %true_6, %false, %true_6, %false, %true, %false_3, %true_45, %false_1, %true_45, %true, %true_6, %false, %true_45, %false_3, %false, %false_1, %true_6, %false_1, %false_3, %true_45, %true_45, %true_6, %true_6, %true_45, %false_3, %true_45, %true_45, %false_1, %true, %false_5, %false, %true, %true, %false_3, %false_5, %false_1, %false_5, %false, %true_45, %true_6, %true, %true_45, %false_3, %false_5, %true, %true, %true_45, %false, %false, %false_5, %false_3, %true_6, %true, %true_45, %true_45, %false, %true, %false_5, %true, %false_3, %false_1, %true_45, %false_3, %true_45, %true, %true_6, %true_45, %true, %false_3, %false_5, %true_6, %false, %true_45, %true_6, %false_5, %true_6, %true, %false_1, %false_5, %false, %true_6, %true_6, %false, %true_45, %false_3, %true_6, %false, %true_6, %true, %false_5, %false_3, %false, %false_5, %false_1, %false_1, %true_45, %false_3, %false_3, %true_45, %true, %false_1, %false, %true_6, %false, %false_3, %true_6, %false_5, %false_1, %false_3, %true, %false_1, %true_45, %false_5, %false_5, %true, %false, %false_3, %true_45, %true_6, %true_45, %true_45, %false_5, %false_5, %true_6, %true_6, %false_1, %false_5, %true_45, %true, %false_5, %true_45, %true, %false_5, %false_5, %false, %true_45, %false_1, %false_5, %true_6, %true, %false_5, %false_3, %true_6, %false_5, %true_45, %false, %false_3, %false_5, %false_3, %false_1, %true_6, %false_1, %false_5, %true, %false_5, %false_5, %false_3, %false_3, %true_45, %false_1, %false_5, %true, %true, %false_1, %true, %false, %false_3, %false, %true_6, %false_1, %false_5, %true_6, %true_45, %true, %false_5, %false_1, %true_45, %false_5, %true_6, %false, %true_6, %true, %false, %false_1, %true, %false_3, %false_3, %false_5, %false_3, %true_45, %true, %false_3, %true_6, %true, %false_1, %false_5, %false_3, %true, %true_45, %true_45, %false_3, %true_45, %true_6, %true_45, %false_3, %false_5, %true_45, %false_1, %true, %false_1, %true_45, %true_6, %true_6, %false_1, %false_5, %false_3, %false_3, %false, %true_6, %true_6, %false_1, %false, %false_3, %true_6, %true_6, %true, %true_6, %false_5, %true, %false_3, %false, %true_6, %true, %false_3, %true, %false_3, %true_45, %false, %false, %false_1, %false_1, %true_45, %true_6, %false_5, %false_1, %false_5, %true_45, %false_3, %true, %false_3, %true, %false_3, %false_3, %false_5, %false_5, %false, %false_5, %true_6, %true, %false_1, %false_3, %true_45, %false_5, %true_45, %true, %false_3, %false_1, %true, %false, %false_5, %true_6, %false_3, %false_5, %false_5, %false_5, %false_5, %false, %false_3, %false_5, %true_6, %true_6, %false_3, %true_45, %false_5, %false, %false_3, %true_45, %false_3, %true_6, %true, %false, %false_1, %false_3, %true_6, %true_45, %true_45, %true_45, %false_3, %false, %false_3, %false_1, %false_3, %true, %false_3, %false, %true, %true, %true_45, %false_5, %true_6, %false_3, %true_6, %false, %true_45, %true_45, %false_5, %true_45, %false_1, %true_6, %false_3, %true, %false_1, %true, %true_6, %false_1, %false, %true, %true_6, %false_5, %false_3, %true_6, %true_6, %false, %false, %false_1, %false, %true_45, %true, %true, %false_3 : tensor<3x16x16xi1>
        %259 = arith.shrsi %false_1, %true_45 : i1
        %alloc_49 = memref.alloc() : memref<9xi16>
        memref.copy %alloc_9, %alloc_49 : memref<9xi16> to memref<9xi16>
        %260 = vector.create_mask %172 : vector<4xi1>
        %261 = bufferization.to_memref %generated : memref<?xi1>
      }
      %249 = arith.divf %cst_0, %cst_4 : f32
      %250 = vector.shuffle %57, %124 [3] : vector<3x3xf32>, vector<3x3xf32>
      %251 = math.powf %cst_0, %cst_0 : f32
      %252 = vector.flat_transpose %88 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      %253 = arith.shrsi %c0_i16, %c0_i16 : i16
      %254 = vector.broadcast %cst : f32 to vector<4xf32>
      %255 = vector.fma %254, %152, %254 : vector<4xf32>
      scf.condition(%false) %c1_i32_33 : i32
    } do {
    ^bb0(%arg1: i32):
      %248 = vector.bitcast %124 : vector<3x3xf32> to vector<3x3xf32>
      %249 = math.tanh %11 : tensor<4xf16>
      %250 = index.add %147, %165
      %251 = scf.execute_region -> tensor<3x9xf16> {
        %262 = arith.mulf %cst, %cst_0 : f32
        %263 = arith.ceildivsi %c1365235233_i64, %25 : i64
        %264 = arith.floordivsi %arg1, %c1_i32_33 : i32
        %265 = arith.minui %c1621674228_i64, %c1621674228_i64 : i64
        %266 = index.casts %126 : index to i32
        %267 = arith.remui %c1621674228_i64, %c1621674228_i64 : i64
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %88, %31, %c1621674228_i64 : vector<5xi64>, vector<5xi64> into i64
        %269 = arith.ceildivsi %arg1, %c1_i32_25 : i32
        %270 = arith.shrsi %arg1, %c729463708_i32 : i32
        %271 = math.ipowi %13, %13 : tensor<3x16x16xi1>
        %272 = bufferization.to_memref %from_elements_41 : memref<3x9xi64>
        %273 = arith.cmpf ole, %cst_4, %cst_2 : f32
        %274 = arith.remf %cst_2, %cst_4 : f32
        %expanded_50 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<3x16x16xi1> into tensor<3x16x16x1xi1>
        %275 = math.ipowi %c1365235233_i64, %c1621674228_i64 : i64
        %276 = arith.cmpf ult, %cst_2, %cst : f32
        %277 = tensor.empty() : tensor<3x9xf16>
        scf.yield %277 : tensor<3x9xf16>
      }
      scf.index_switch %203 
      case 1 {
        %262 = arith.muli %true, %false_3 : i1
        %263 = math.absf %11 : tensor<4xf16>
        %264 = arith.mulf %cst_7, %cst_7 : f16
        %265 = math.roundeven %14 : tensor<4xf32>
        %266 = math.powf %14, %14 : tensor<4xf32>
        %267 = index.castu %c1_i32_25 : i32 to index
        affine.store %c0_i16, %alloc_11[%c8, %c13] : memref<3x9xi16>
        %268 = arith.subi %c1_i32_25, %c1_i32_25 : i32
        memref.store %false_3, %alloc[%c0, %c5] : memref<3x9xi1>
        %extracted = tensor.extract %5[%c2, %c6] : tensor<3x9xi64>
        %269 = math.ctpop %15 : tensor<4xi64>
        %270 = math.cos %251 : tensor<3x9xf16>
        %271 = vector.matrix_multiply %88, %88 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %272 = math.ipowi %extracted, %c1124206185_i64 : i64
        %273 = index.sizeof
        %274 = arith.divf %cst, %cst : f32
        scf.yield
      }
      case 2 {
        %262 = math.fma %expanded_28, %expanded_28, %expanded_28 : tensor<4x1xf32>
        %263 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c3, %131, %126)
        %264 = arith.maxf %cst_4, %cst_2 : f32
        %265 = arith.maxf %cst_0, %cst_0 : f32
        %266 = math.ctpop %0 : tensor<4xi32>
        %267 = arith.minui %c729463708_i32, %c1_i32 : i32
        %268 = arith.divf %cst_7, %cst_7 : f16
        %269 = index.casts %c11 : index to i32
        %270 = math.sqrt %1 : tensor<4xf32>
        %271 = index.casts %147 : index to i32
        %272 = index.ceildivu %c2, %36
        %273 = arith.remsi %c117760923_i32, %c1_i32_25 : i32
        %274 = arith.minsi %true_45, %true_6 : i1
        %true_50 = index.bool.constant true
        %275 = vector.flat_transpose %82 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %276 = arith.mulf %cst_0, %cst_0 : f32
        scf.yield
      }
      case 3 {
        %262 = math.absi %c729463708_i32 : i32
        %263 = index.casts %c1_i32_25 : i32 to index
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %82, %82, %c1124206185_i64 : vector<1xi64>, vector<1xi64> into i64
        %265 = arith.maxsi %c1_i32_33, %c729463708_i32 : i32
        %266 = vector.matrix_multiply %152, %166 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %from_elements_50 = tensor.from_elements %cst_7, %cst_7, %cst_7, %cst_7 : tensor<4xf16>
        %267 = index.ceildivu %72, %138
        %268 = vector.create_mask %c5 : vector<4xi1>
        %269 = arith.subi %false, %true_45 : i1
        %270 = arith.remf %cst_4, %cst_0 : f32
        %271 = index.sizeof
        %from_elements_51 = tensor.from_elements %false, %false_1, %false_1, %false_5 : tensor<4xi1>
        %272 = math.exp %22 : tensor<f32>
        bufferization.dealloc_tensor %generated_44 : tensor<?xi32>
        %273 = math.sqrt %192 : tensor<4x4xf32>
        %274 = bufferization.clone %alloc_10 : memref<3x16x16xi32> to memref<3x16x16xi32>
        scf.yield
      }
      default {
        %262 = vector.multi_reduction <minf>, %78, %cst_0 [0] : vector<4xf32> to f32
        %263 = math.log10 %7 : tensor<4xf32>
        %264 = arith.maxf %262, %cst_0 : f32
        %265 = memref.realloc %214 : memref<4xf32> to memref<3xf32>
        %266 = index.add %138, %c10
        %267 = vector.broadcast %rank : index to vector<9xindex>
        %268 = vector.broadcast %false_5 : i1 to vector<9xi1>
        %269 = vector.broadcast %25 : i64 to vector<9xi64>
        vector.scatter %alloc_22[%c5] [%267], %268, %269 : memref<9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %270 = vector.extract_strided_slice %79 {offsets = [0], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
        %271 = math.rsqrt %10 : tensor<9xf16>
        %272 = tensor.empty() : tensor<4xi16>
        %273 = arith.addi %c117760923_i32, %c1_i32 : i32
        %274 = math.absi %114 : tensor<3x3xi64>
        %alloca_50 = memref.alloca() : memref<4xi32>
        %275 = arith.cmpi ule, %c0_i16, %c0_i16 : i16
        %from_elements_51 = tensor.from_elements %25, %25, %c1124206185_i64, %c1621674228_i64, %c1124206185_i64, %c1621674228_i64, %25, %c1365235233_i64, %c1621674228_i64, %c1124206185_i64, %c1365235233_i64, %25, %c1124206185_i64, %25, %c1621674228_i64, %c1124206185_i64, %c1124206185_i64, %25, %25, %c1124206185_i64, %25, %25, %c1124206185_i64, %c1621674228_i64, %c1124206185_i64, %c1365235233_i64, %25 : tensor<3x9xi64>
        %276 = arith.divf %cst_4, %cst_0 : f32
        %277 = math.powf %11, %11 : tensor<4xf16>
      }
      %252 = index.sub %c15, %70
      %alloc_48 = memref.alloc() : memref<9xi16>
      memref.copy %alloc_9, %alloc_48 : memref<9xi16> to memref<9xi16>
      %253 = arith.shrsi %c0_i16, %c0_i16 : i16
      %254 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 16)>(%c2, %171, %72, %70)
      %alloca_49 = memref.alloca() : memref<4xi64>
      %255 = arith.maxf %cst_2, %cst_0 : f32
      %256 = arith.divf %cst_0, %cst_2 : f32
      %257 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 - 16 - 32)>(%c2, %76, %250)
      %258 = index.add %70, %250
      %259 = memref.realloc %alloc_16 : memref<9xf32> to memref<16xf32>
      %260 = vector.broadcast %cst : f32 to vector<3xf32>
      %261 = vector.multi_reduction <minf>, %124, %260 [0] : vector<3x3xf32> to vector<3xf32>
      scf.yield %c1_i32_33 : i32
    }
    %223 = vector.insert %cst, %78 [2] : f32 into vector<4xf32>
    %224 = index.maxu %34, %126
    %225 = math.log1p %17 : tensor<3x16x16xf32>
    %226 = tensor.empty(%c8, %189) : tensor<?x?xi64>
    %227 = scf.index_switch %165 -> tensor<3x16x16xi64> 
    case 1 {
      %248 = bufferization.to_tensor %alloc_19 : memref<3x9xf16>
      memref.store %c0_i16, %alloc_9[%c5] : memref<9xi16>
      %249 = arith.divsi %c1_i32_33, %27 : i32
      %250 = math.cttz %from_elements : tensor<9xi1>
      %251 = vector.create_mask %c3, %c0, %189 : vector<3x16x16xi1>
      %252 = arith.cmpf ult, %cst, %cst : f32
      %collapsed_48 = tensor.collapse_shape %collapsed_38 [[0, 1]] : tensor<48x16xi32> into tensor<768xi32>
      %253 = affine.for %arg1 = 0 to 35 iter_args(%arg2 = %cst_2) -> (f32) {
        affine.yield %cst_2 : f32
      }
      %254 = arith.remf %cst_4, %cst_2 : f32
      %255 = memref.realloc %214 : memref<4xf32> to memref<16xf32>
      %256 = arith.shrsi %c1124206185_i64, %25 : i64
      %257 = arith.addi %false_1, %true_6 : i1
      %258 = arith.maxsi %false, %false_3 : i1
      %259 = arith.addf %cst, %cst_0 : f32
      %260 = arith.cmpf ugt, %cst_2, %cst_0 : f32
      bufferization.dealloc_tensor %from_elements : tensor<9xi1>
      %261 = tensor.empty() : tensor<3x16x16xi64>
      scf.yield %261 : tensor<3x16x16xi64>
    }
    case 2 {
      %248 = vector.broadcast %cst_0 : f32 to vector<3xf32>
      %249 = vector.insert %248, %57 [2] : vector<3xf32> into vector<3x3xf32>
      %250 = math.round %16 : tensor<3x16x16xf32>
      %251 = index.add %108, %145
      %252 = vector.create_mask %145, %181 : vector<3x9xi1>
      %253 = index.ceildivu %76, %c9
      %alloca_48 = memref.alloca() : memref<9xi64>
      %254 = vector.transpose %219, [0, 1] : vector<3x9xi1> to vector<3x9xi1>
      %255 = arith.cmpf ueq, %cst_2, %cst : f32
      %256 = math.exp2 %cst_0 : f32
      %257 = index.sub %70, %156
      %258 = vector.extract_strided_slice %252 {offsets = [1], sizes = [2], strides = [1]} : vector<3x9xi1> to vector<2x9xi1>
      %259 = arith.ceildivsi %true_45, %false_5 : i1
      %260 = arith.remf %cst_0, %cst_4 : f32
      %generated_49 = tensor.generate %181, %c7 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %263 = math.atan2 %1, %21 : tensor<4xf32>
        %264 = math.fma %cst_4, %cst_4, %cst_2 : f32
        %265 = index.sizeof
        %266 = memref.realloc %alloc_15 : memref<4xi1> to memref<9xi1>
        tensor.yield %cst_7 : f16
      } : tensor<?x?x16xf16>
      %collapsed_50 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
      %261 = arith.ori %c1621674228_i64, %c1621674228_i64 : i64
      %262 = tensor.empty() : tensor<3x16x16xi64>
      scf.yield %262 : tensor<3x16x16xi64>
    }
    case 3 {
      %248 = vector.flat_transpose %152 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %249 = math.roundeven %expanded_28 : tensor<4x1xf32>
      %250 = vector.broadcast %c1365235233_i64 : i64 to vector<5x5xi64>
      %251 = vector.outerproduct %88, %31, %250 {kind = #vector.kind<maxsi>} : vector<5xi64>, vector<5xi64>
      %252 = math.exp %11 : tensor<4xf16>
      %253 = tensor.empty(%196) : tensor<?xf32>
      %254 = math.log %16 : tensor<3x16x16xf32>
      %255 = math.fma %10, %10, %10 : tensor<9xf16>
      %256 = arith.remf %cst_2, %cst_0 : f32
      %257 = index.casts %76 : index to i32
      %258 = math.exp %10 : tensor<9xf16>
      %259 = arith.ceildivsi %c729463708_i32, %27 : i32
      %extracted = tensor.extract %10[%c7] : tensor<9xf16>
      %alloca_48 = memref.alloca() : memref<3x16x16xi64>
      %260 = index.ceildivu %c8, %196
      %261 = index.mul %165, %c11
      memref.store %c0_i16, %alloc_14[%c0, %c3] : memref<3x9xi16>
      %262 = tensor.empty() : tensor<3x16x16xi64>
      scf.yield %262 : tensor<3x16x16xi64>
    }
    default {
      %248 = vector.flat_transpose %78 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %249 = arith.xori %c1_i32, %c1_i32 : i32
      %250 = arith.cmpf false, %cst_7, %cst_7 : f16
      %251 = arith.muli %true_6, %false_3 : i1
      memref.store %c0_i16, %alloc_11[%c0, %c6] : memref<3x9xi16>
      %252 = index.maxs %138, %36
      %extracted = tensor.extract %114[%c2, %c0] : tensor<3x3xi64>
      vector.print %82 : vector<1xi64>
      %253 = index.floordivs %172, %c10
      %254 = math.rsqrt %14 : tensor<4xf32>
      %255 = arith.floordivsi %false, %true_6 : i1
      %256 = math.exp %14 : tensor<4xf32>
      memref.assume_alignment %alloc_16, 1 : memref<9xf32>
      %257 = arith.minui %false_3, %true : i1
      bufferization.dealloc_tensor %22 : tensor<f32>
      %258 = math.tanh %cst_4 : f32
      %259 = tensor.empty() : tensor<3x16x16xi64>
      scf.yield %259 : tensor<3x16x16xi64>
    }
    %228 = vector.transpose %78, [0] : vector<4xf32> to vector<4xf32>
    %229 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %94, %94, %c1621674228_i64 : vector<80xi64>, vector<80xi64> into i64
    %230 = vector.extract %31[3] : vector<5xi64>
    %231 = index.casts %120 : index to i32
    %232 = bufferization.to_tensor %alloc_13 : memref<4xi16>
    %233 = vector.broadcast %true_45 : i1 to vector<9x9xi1>
    %234 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %219, %219, %233 : vector<3x9xi1>, vector<3x9xi1> into vector<9x9xi1>
    %235 = math.powf %10, %10 : tensor<9xf16>
    %236 = index.ceildivu %87, %c9
    %237 = arith.subi %c0_i16, %c0_i16 : i16
    %238 = vector.extract %31[4] : vector<5xi64>
    %239 = index.maxs %38, %c6
    %240 = vector.flat_transpose %166 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %241 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
    %242 = vector.outerproduct %166, %79, %241 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
    %243 = tensor.empty() : tensor<3x16x16xi32>
    %244 = linalg.copy ins(%9 : tensor<3x16x16xi32>) outs(%243 : tensor<3x16x16xi32>) -> tensor<3x16x16xi32>
    %245 = tensor.empty() : tensor<9x3xi1>
    %transposed_46 = linalg.transpose ins(%alloc : memref<3x9xi1>) outs(%245 : tensor<9x3xi1>) permutation = [1, 0] 
    %alloc_47 = memref.alloc() : memref<i32>
    linalg.reduce ins(%0 : tensor<4xi32>) outs(%alloc_47 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %collapsed_48 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<3x16x16xf32> into tensor<48x16xf32>
        %248 = math.ctlz %232 : tensor<4xi16>
        %249 = math.atan2 %23, %23 : tensor<f32>
        %250 = affine.for %arg1 = 0 to 0 iter_args(%arg2 = %alloc_18) -> (memref<4xf16>) {
          affine.yield %arg2 : memref<4xf16>
        }
        %251 = arith.ceildivsi %false_1, %false_3 : i1
        %252 = arith.muli %c1_i32_33, %c729463708_i32 : i32
        %253 = arith.ceildivsi %false_5, %true_45 : i1
        %254 = math.fma %1, %14, %14 : tensor<4xf32>
        %c1_i32_49 = arith.constant 1 : i32
        linalg.yield %c1_i32_49 : i32
      }
    scf.parallel (%arg1, %arg2) = (%c1, %196) to (%189, %196) step (%c3, %c15) {
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<3x16x16xf32>) {
      ^bb0(%out: f32):
        %262 = vector.transpose %78, [0] : vector<4xf32> to vector<4xf32>
        %true_49 = arith.constant true
        %false_50 = arith.constant false
        %263 = vector.transfer_read %alloc_15[%102], %false_50 : memref<4xi1>, vector<i1>
        %264 = arith.floordivsi %c1_i32_25, %27 : i32
        %265 = arith.shrui %c1_i32, %c729463708_i32 : i32
        %266 = math.log %14 : tensor<4xf32>
        %267 = vector.matrix_multiply %166, %78 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %268 = vector.multi_reduction <xor>, %82, %c1124206185_i64 [0] : vector<1xi64> to i64
        %269 = math.roundeven %11 : tensor<4xf16>
        %270 = arith.cmpf ugt, %cst_7, %cst_7 : f16
        %271 = index.sizeof
        %272 = vector.transpose %94, [0] : vector<80xi64> to vector<80xi64>
        %collapsed_51 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<3x16x16xi32> into tensor<48x16xi32>
        %273 = memref.realloc %alloc_15 : memref<4xi1> to memref<16xi1>
        %274 = arith.minui %268, %268 : i64
        %275 = arith.ceildivsi %false, %false_1 : i1
        %276 = math.roundeven %16 : tensor<3x16x16xf32>
        %277 = arith.ceildivsi %c1124206185_i64, %268 : i64
        affine.store %cst_7, %151[%c15] : memref<4xf16>
        %278 = arith.remsi %c1124206185_i64, %c1365235233_i64 : i64
        %279 = arith.ori %false_1, %false_3 : i1
        %280 = memref.realloc %alloc_16 : memref<9xf32> to memref<3xf32>
        %281 = arith.shrsi %c1621674228_i64, %c1621674228_i64 : i64
        %282 = arith.maxui %c729463708_i32, %c1_i32_33 : i32
        memref.copy %alloc_14, %alloc_11 : memref<3x9xi16> to memref<3x9xi16>
        %283 = arith.mulf %cst_4, %out : f32
        %expanded_52 = tensor.expand_shape %7 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        %284 = vector.multi_reduction <add>, %78, %cst_2 [0] : vector<4xf32> to f32
        %285 = vector.broadcast %arg1 : index to vector<16xindex>
        %286 = vector.broadcast %true : i1 to vector<16xi1>
        %287 = vector.broadcast %c0_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_11[%c0, %c4] [%285], %286, %287 : memref<3x9xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %288 = index.sub %181, %c13
        %alloc_53 = memref.alloc() : memref<9xi16>
        memref.copy %alloc_9, %alloc_53 : memref<9xi16> to memref<9xi16>
        %289 = arith.subi %c117760923_i32, %c729463708_i32 : i32
        %290 = arith.minui %false_1, %true_6 : i1
        linalg.yield %cst_2 : f32
      } -> tensor<3x16x16xf32>
      %249 = math.cttz %12 : tensor<3x16x16xi32>
      %250 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%c0, %196, %c3)
      memref.store %cst_4, %alloc_23[] : memref<f32>
      %cast_48 = tensor.cast %245 : tensor<9x3xi1> to tensor<?x?xi1>
      %251 = math.powf %cst, %cst_2 : f32
      %252 = vector.insertelement %c1621674228_i64, %94[%c1 : index] : vector<80xi64>
      %253 = arith.cmpi ugt, %false_5, %true : i1
      %254 = memref.realloc %alloc_18 : memref<4xf16> to memref<4xf16>
      %255 = math.copysign %192, %192 : tensor<4x4xf32>
      %256 = math.roundeven %10 : tensor<9xf16>
      %257 = math.cttz %245 : tensor<9x3xi1>
      %258 = memref.realloc %alloc_22 : memref<9xi64> to memref<4xi64>
      %259 = math.ceil %cst_0 : f32
      %260 = vector.transpose %124, [0, 1] : vector<3x3xf32> to vector<3x3xf32>
      %261 = arith.minui %c1_i32_25, %c117760923_i32 : i32
      scf.yield
    }
    %246 = affine.vector_load %alloc_8[%203, %137] : memref<3x9xi16>, vector<3xi16>
    affine.vector_store %94, %alloc_22[%c10] : memref<9xi64>, vector<80xi64>
    vector.print %20 : vector<16xi64>
    vector.print %31 : vector<5xi64>
    vector.print %57 : vector<3x3xf32>
    vector.print %78 : vector<4xf32>
    vector.print %79 : vector<4xf32>
    vector.print %82 : vector<1xi64>
    vector.print %88 : vector<5xi64>
    vector.print %94 : vector<80xi64>
    vector.print %124 : vector<3x3xf32>
    vector.print %152 : vector<4xf32>
    vector.print %166 : vector<4xf32>
    vector.print %219 : vector<3x9xi1>
    vector.print %240 : vector<4xf32>
    vector.print %246 : vector<3xi16>
    vector.print %false : i1
    vector.print %cst : f32
    vector.print %c117760923_i32 : i32
    vector.print %cst_0 : f32
    vector.print %false_1 : i1
    vector.print %c1621674228_i64 : i64
    vector.print %cst_2 : f32
    vector.print %c729463708_i32 : i32
    vector.print %true : i1
    vector.print %false_3 : i1
    vector.print %cst_4 : f32
    vector.print %false_5 : i1
    vector.print %true_6 : i1
    vector.print %c1124206185_i64 : i64
    vector.print %c1365235233_i64 : i64
    vector.print %cst_7 : f16
    vector.print %25 : i64
    vector.print %27 : i32
    vector.print %c0_i16 : i16
    vector.print %c1_i32 : i32
    vector.print %c1_i32_25 : i32
    vector.print %c1_i32_33 : i32
    vector.print %true_45 : i1
    %247 = vector.broadcast %c1_i32_33 : i32 to vector<9xi32>
    return %247 : vector<9xi32>
  }
}
