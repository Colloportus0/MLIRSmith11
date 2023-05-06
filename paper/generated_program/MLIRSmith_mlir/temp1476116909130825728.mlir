module {
  func.func private @func1(%arg0: f16, %arg1: vector<12x12x9xi1>, %arg2: index) {
    %c27696_i16 = arith.constant 27696 : i16
    %true = arith.constant true
    %true_0 = arith.constant true
    %c-16107_i16 = arith.constant -16107 : i16
    %false = arith.constant false
    %c833069524_i32 = arith.constant 833069524 : i32
    %c8446_i16 = arith.constant 8446 : i16
    %false_1 = arith.constant false
    %c1038111321_i64 = arith.constant 1038111321 : i64
    %cst = arith.constant 4.774400e+04 : f16
    %cst_2 = arith.constant 2.1296983E+9 : f32
    %c1693220179_i64 = arith.constant 1693220179 : i64
    %c1647380546_i64 = arith.constant 1647380546 : i64
    %c1093709253_i32 = arith.constant 1093709253 : i32
    %c142236188_i64 = arith.constant 142236188 : i64
    %c1274542880_i32 = arith.constant 1274542880 : i32
    %0 = tensor.empty() : tensor<9x12x6xi32>
    %1 = tensor.empty() : tensor<12x9xi1>
    %2 = tensor.empty() : tensor<12x12x9xi1>
    %3 = tensor.empty() : tensor<12x9xf32>
    %4 = tensor.empty() : tensor<9x12x6xi1>
    %5 = tensor.empty() : tensor<9x12x6xi16>
    %6 = tensor.empty() : tensor<9x12x6xf32>
    %7 = tensor.empty() : tensor<2x2xi1>
    %8 = tensor.empty() : tensor<9x12x6xi32>
    %9 = tensor.empty() : tensor<12x12x9xf16>
    %10 = tensor.empty() : tensor<12x9xi32>
    %11 = tensor.empty() : tensor<9x12x6xi16>
    %12 = tensor.empty() : tensor<9x12x6xi1>
    %13 = tensor.empty() : tensor<12x9xi64>
    %14 = tensor.empty() : tensor<9x12x6xi64>
    %15 = tensor.empty() : tensor<12x12x9xi1>
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
    %alloc = memref.alloc() : memref<2x2xi32>
    %alloc_3 = memref.alloc() : memref<9x12x6xf32>
    %alloc_4 = memref.alloc() : memref<9x12x6xi64>
    %alloc_5 = memref.alloc() : memref<12x12x9xi64>
    %alloc_6 = memref.alloc() : memref<12x12x9xi1>
    %alloc_7 = memref.alloc() : memref<9x12x6xf32>
    %alloc_8 = memref.alloc() : memref<9x12x6xi1>
    %alloc_9 = memref.alloc() : memref<12x12x9xi16>
    %alloc_10 = memref.alloc() : memref<12x12x9xi1>
    %alloc_11 = memref.alloc() : memref<12x9xi32>
    %alloc_12 = memref.alloc() : memref<12x12x9xi16>
    %alloc_13 = memref.alloc() : memref<12x9xf32>
    %alloc_14 = memref.alloc() : memref<12x9xf32>
    %alloc_15 = memref.alloc() : memref<12x9xf32>
    %alloc_16 = memref.alloc() : memref<9x12x6xi16>
    %alloc_17 = memref.alloc() : memref<9x12x6xi32>
    %16 = tensor.empty() : tensor<9x12x6xi64>
    %17 = linalg.copy ins(%14 : tensor<9x12x6xi64>) outs(%16 : tensor<9x12x6xi64>) -> tensor<9x12x6xi64>
    %18 = tensor.empty() : tensor<9x12x12xf16>
    %transposed = linalg.transpose ins(%9 : tensor<12x12x9xf16>) outs(%18 : tensor<9x12x12xf16>) permutation = [2, 0, 1] 
    %alloc_18 = memref.alloc() : memref<12x12xf16>
    linalg.reduce ins(%transposed : tensor<9x12x12xf16>) outs(%alloc_18 : memref<12x12xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %254 = vector.create_mask %c0, %c14, %c10 : vector<9x12x6xi1>
        %255 = scf.while (%arg3 = %true_0) : (i1) -> i1 {
          %259 = vector.broadcast %cst_2 : f32 to vector<9x12x6xf32>
          %260 = vector.fma %259, %259, %259 : vector<9x12x6xf32>
          %261 = arith.ceildivsi %c833069524_i32, %c833069524_i32 : i32
          %262 = math.floor %transposed : tensor<9x12x12xf16>
          %263 = vector.broadcast %c-16107_i16 : i16 to vector<12xi16>
          %264 = vector.matrix_multiply %263, %263 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
          %265 = arith.shrui %c8446_i16, %c8446_i16 : i16
          %266 = arith.maxsi %c27696_i16, %c-16107_i16 : i16
          %267 = vector.broadcast %false_1 : i1 to vector<2x2xi1>
          %268 = math.ipowi %16, %17 : tensor<9x12x6xi64>
          scf.condition(%arg3) %true : i1
        } do {
        ^bb0(%arg3: i1):
          %259 = arith.maxsi %c1093709253_i32, %c1274542880_i32 : i32
          %260 = arith.shrsi %c1038111321_i64, %c1038111321_i64 : i64
          %rank_48 = tensor.rank %12 : tensor<9x12x6xi1>
          %261 = math.round %cst : f16
          %262 = arith.maxui %c-16107_i16, %c8446_i16 : i16
          %263 = math.ctpop %5 : tensor<9x12x6xi16>
          %264 = arith.maxsi %true, %false_1 : i1
          memref.tensor_store %10, %alloc_11 : memref<12x9xi32>
          %alloc_49 = memref.alloc() : memref<12xi64>
          %265 = memref.realloc %alloc_49 : memref<12xi64> to memref<6xi64>
          %266 = arith.divf %in, %init : f16
          %267 = arith.andi %c1038111321_i64, %c1693220179_i64 : i64
          %268 = arith.maxsi %c27696_i16, %c-16107_i16 : i16
          %269 = vector.create_mask %c5, %c6 : vector<12x9xi1>
          %270 = math.atan2 %9, %9 : tensor<12x12x9xf16>
          %271 = arith.remui %c1274542880_i32, %c1093709253_i32 : i32
          %272 = arith.addf %cst_2, %cst_2 : f32
          scf.yield %false_1 : i1
        }
        %256 = math.round %cst_2 : f32
        %extracted_46 = tensor.extract %9[%c5, %c5, %c7] : tensor<12x12x9xf16>
        memref.assume_alignment %alloc_13, 16 : memref<12x9xf32>
        %257 = math.log1p %3 : tensor<12x9xf32>
        affine.store %c833069524_i32, %alloc_11[%c15, %c10] : memref<12x9xi32>
        %258 = index.casts %false_1 : i1 to index
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    scf.parallel (%arg3) = (%c7) to (%c11) step (%c15) {
      %254 = arith.ceildivsi %c27696_i16, %c27696_i16 : i16
      %generated_46 = tensor.generate %c13 {
      ^bb0(%arg4: index, %arg5: index):
        %270 = arith.subi %c-16107_i16, %c8446_i16 : i16
        %271 = memref.load %alloc_13[%c1, %c4] : memref<12x9xf32>
        %272 = math.log %9 : tensor<12x12x9xf16>
        %273 = vector.broadcast %false : i1 to vector<9xi1>
        %274 = vector.reduction <minui>, %273 : vector<9xi1> into i1
        tensor.yield %c27696_i16 : i16
      } : tensor<?x9xi16>
      %255 = arith.andi %c833069524_i32, %c1274542880_i32 : i32
      %256 = arith.remf %cst_2, %cst_2 : f32
      %257 = arith.maxsi %c1647380546_i64, %c1693220179_i64 : i64
      %258 = arith.addf %cst, %cst : f16
      %259 = vector.broadcast %cst_2 : f32 to vector<6xf32>
      %260 = vector.matrix_multiply %259, %259 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
      %261 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %262 = vector.outerproduct %260, %260, %261 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
      %263 = index.sub %c3, %c0
      %264 = math.roundeven %18 : tensor<9x12x12xf16>
      %265 = vector.bitcast %260 : vector<1xf32> to vector<1xi32>
      %266 = math.ctpop %10 : tensor<12x9xi32>
      %267 = vector.load %alloc_15[%c6, %c1] : memref<12x9xf32>, vector<12x12x9xf32>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_47 = arith.constant 0 : i64
      %268 = vector.transfer_read %alloc_5[%c9, %263, %c11], %c0_i64_47 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : memref<12x12x9xi64>, vector<9x9xi64>
      memref.copy %alloc_7, %alloc_3 : memref<9x12x6xf32> to memref<9x12x6xf32>
      %269 = math.floor %18 : tensor<9x12x12xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_12[%c6, %c6, %c10] : memref<12x12x9xi16>, vector<9xi16>
    affine.vector_store %19, %alloc_9[%c3, %c12, %c6] : memref<12x12x9xi16>, vector<9xi16>
    %20 = tensor.empty() : tensor<2xf16>
    %alloc_19 = memref.alloc() : memref<2xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%20, %alloc_19 : tensor<2xf16>, memref<2xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %23 = arith.floordivsi %c8446_i16, %c8446_i16 : i16
    %24 = arith.remui %c1693220179_i64, %c142236188_i64 : i64
    %25 = math.round %18 : tensor<9x12x12xf16>
    %26 = arith.addf %cst, %cst : f16
    %27 = arith.andi %c833069524_i32, %c1093709253_i32 : i32
    %28 = math.floor %cst : f16
    %29 = math.expm1 %21 : tensor<f16>
    %30 = math.ctpop %c142236188_i64 : i64
    memref.copy %alloc_7, %alloc_3 : memref<9x12x6xf32> to memref<9x12x6xf32>
    %31 = bufferization.clone %alloc_7 : memref<9x12x6xf32> to memref<9x12x6xf32>
    %32 = arith.andi %c1038111321_i64, %c142236188_i64 : i64
    %rank = tensor.rank %10 : tensor<12x9xi32>
    %33 = arith.andi %c833069524_i32, %c1274542880_i32 : i32
    %34 = math.absi %17 : tensor<9x12x6xi64>
    %35 = math.roundeven %transposed : tensor<9x12x12xf16>
    %36 = arith.maxsi %true_0, %false_1 : i1
    %37 = math.powf %18, %transposed : tensor<9x12x12xf16>
    %38 = math.exp %9 : tensor<12x12x9xf16>
    %39 = vector.broadcast %c1274542880_i32 : i32 to vector<9xi32>
    %40 = vector.broadcast %false : i1 to vector<9xi1>
    %41 = vector.maskedload %alloc_17[%c4, %c9, %c2], %40, %39 : memref<9x12x6xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
    %42 = arith.remf %cst, %cst : f16
    %43 = vector.reduction <or>, %19 : vector<9xi16> into i16
    %44 = vector.bitcast %19 : vector<9xi16> to vector<9xi16>
    %45 = vector.shuffle %19, %44 [1, 2, 3, 6, 7, 8, 9, 10, 13, 14, 16, 17] : vector<9xi16>, vector<9xi16>
    %46 = vector.broadcast %cst_2 : f32 to vector<12x9xf32>
    %47 = vector.fma %46, %46, %46 : vector<12x9xf32>
    %48 = arith.divf %cst, %cst : f16
    %49 = arith.shli %c1038111321_i64, %c1038111321_i64 : i64
    %50 = index.divu %c8, %c11
    %generated = tensor.generate %c13, %c10, %c12 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %254 = arith.maxsi %c1693220179_i64, %c1038111321_i64 : i64
      %255 = math.rsqrt %cst : f16
      %256 = arith.negf %cst_2 : f32
      %257 = vector.broadcast %c142236188_i64 : i64 to vector<12x12x9xi64>
      tensor.yield %true_0 : i1
    } : tensor<?x?x?xi1>
    %51 = vector.create_mask %c7, %c12 : vector<2x2xi1>
    %52 = scf.while (%arg3 = %alloc_9) : (memref<12x12x9xi16>) -> memref<12x12x9xi16> {
      %254 = vector.broadcast %c9 : index to vector<6xindex>
      %255 = vector.broadcast %false : i1 to vector<6xi1>
      %256 = vector.broadcast %cst_2 : f32 to vector<6xf32>
      vector.scatter %alloc_15[%c2, %c5] [%254], %255, %256 : memref<12x9xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
      %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 128 + d3, d0 * -2)>(%50, %c15, %c12, %c5)
      %258 = arith.shli %c8446_i16, %c-16107_i16 : i16
      %259 = math.roundeven %cst : f16
      %260 = math.log %9 : tensor<12x12x9xf16>
      %261 = vector.reduction <mul>, %19 : vector<9xi16> into i16
      %262 = arith.subi %c1693220179_i64, %c1038111321_i64 : i64
      %263 = vector.broadcast %cst_2 : f32 to vector<9xf32>
      %264 = vector.insert %263, %47 [9] : vector<9xf32> into vector<12x9xf32>
      scf.condition(%false) %alloc_9 : memref<12x12x9xi16>
    } do {
    ^bb0(%arg3: memref<12x12x9xi16>):
      %254 = math.exp %9 : tensor<12x12x9xf16>
      %splat_46 = tensor.splat %c1093709253_i32 : tensor<2x2xi32>
      %255 = memref.realloc %alloc_19 : memref<2xf16> to memref<6xf16>
      %256 = arith.subi %false_1, %false : i1
      %257 = math.ctpop %10 : tensor<12x9xi32>
      %258 = arith.negf %cst : f16
      %259 = math.exp %3 : tensor<12x9xf32>
      %260 = tensor.empty() : tensor<9x9xi64>
      %261 = tensor.empty() : tensor<12x9xi64>
      %262 = linalg.matmul ins(%13, %260 : tensor<12x9xi64>, tensor<9x9xi64>) outs(%261 : tensor<12x9xi64>) -> tensor<12x9xi64>
      %263 = math.log2 %6 : tensor<9x12x6xf32>
      %264 = arith.maxui %c1274542880_i32, %c833069524_i32 : i32
      %265 = math.round %transposed : tensor<9x12x12xf16>
      %266 = vector.extract_strided_slice %51 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2xi1> to vector<2x2xi1>
      %267 = index.add %c0, %c1
      %268 = bufferization.to_tensor %alloc_13 : memref<12x9xf32>
      %269 = memref.realloc %alloc_19 : memref<2xf16> to memref<12xf16>
      %270 = math.roundeven %22 : tensor<f16>
      scf.yield %alloc_12 : memref<12x12x9xi16>
    }
    %53 = index.add %c9, %c10
    %54 = math.ipowi %5, %11 : tensor<9x12x6xi16>
    %extracted = tensor.extract %2[%c10, %c7, %c7] : tensor<12x12x9xi1>
    %55 = index.divu %c4, %c14
    memref.assume_alignment %alloc_17, 1 : memref<9x12x6xi32>
    %56 = vector.transpose %46, [1, 0] : vector<12x9xf32> to vector<9x12xf32>
    %57 = arith.floordivsi %true_0, %true_0 : i1
    %58 = arith.remui %c833069524_i32, %c1274542880_i32 : i32
    %59 = arith.muli %false_1, %extracted : i1
    %60 = arith.shrui %c-16107_i16, %c-16107_i16 : i16
    %61 = arith.remf %cst_2, %cst_2 : f32
    %62 = math.atan %cst_2 : f32
    %63 = affine.if affine_set<(d0, d1, d2) : (d0 - 64 >= 0, (d0 mod 2) * 2 == 0, d0 - d2 - 64 >= 0, 0 >= 0)>(%c5, %c1, %c6) -> memref<12x9xf32> {
      %254 = math.roundeven %9 : tensor<12x12x9xf16>
      affine.for %arg3 = 0 to 51 {
      }
      %255 = vector.broadcast %c8446_i16 : i16 to vector<9x9xi16>
      %256 = vector.outerproduct %44, %19, %255 {kind = #vector.kind<add>} : vector<9xi16>, vector<9xi16>
      scf.index_switch %c9 
      case 1 {
        %261 = math.fma %18, %transposed, %18 : tensor<9x12x12xf16>
        %262 = math.rsqrt %21 : tensor<f16>
        %263 = vector.broadcast %cst_2 : f32 to vector<12x9xf32>
        %264 = vector.fma %263, %263, %46 : vector<12x9xf32>
        %265 = arith.remui %true, %true_0 : i1
        %from_elements_46 = tensor.from_elements %cst, %cst, %cst, %cst : tensor<2x2xf16>
        memref.tensor_store %4, %alloc_8 : memref<9x12x6xi1>
        %alloc_47 = memref.alloc() : memref<12x9xi32>
        memref.copy %alloc_11, %alloc_47 : memref<12x9xi32> to memref<12x9xi32>
        %266 = vector.broadcast %false_1 : i1 to vector<9x9xi1>
        %267 = vector.outerproduct %40, %40, %266 {kind = #vector.kind<and>} : vector<9xi1>, vector<9xi1>
        %268 = math.log10 %21 : tensor<f16>
        %269 = math.ipowi %1, %1 : tensor<12x9xi1>
        %270 = vector.extract_strided_slice %44 {offsets = [2], sizes = [5], strides = [1]} : vector<9xi16> to vector<5xi16>
        %271 = vector.load %alloc_5[%c6, %c1, %c8] : memref<12x12x9xi64>, vector<12x9xi64>
        %272 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %263, %264, %272 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
        %274 = arith.remui %c833069524_i32, %c1274542880_i32 : i32
        %275 = arith.andi %c1093709253_i32, %c833069524_i32 : i32
        %276 = arith.andi %c-16107_i16, %c8446_i16 : i16
        scf.yield
      }
      case 2 {
        %261 = index.divu %c3, %c10
        %alloc_46 = memref.alloc() : memref<f16>
        memref.tensor_store %21, %alloc_46 : memref<f16>
        %262 = arith.remf %cst_2, %cst_2 : f32
        %263 = vector.splat %c7 : vector<9x12x6xindex>
        %264 = math.exp %18 : tensor<9x12x12xf16>
        vector.print %51 : vector<2x2xi1>
        vector.print %51 : vector<2x2xi1>
        %265 = arith.cmpi ugt, %false, %true : i1
        %266 = math.fma %9, %9, %9 : tensor<12x12x9xf16>
        %267 = arith.remui %false_1, %true_0 : i1
        %false_47 = index.bool.constant false
        %268 = arith.maxsi %c1274542880_i32, %c833069524_i32 : i32
        %269 = math.tanh %20 : tensor<2xf16>
        %270 = vector.reduction <maxui>, %19 : vector<9xi16> into i16
        %271 = math.floor %21 : tensor<f16>
        %272 = math.floor %cst_2 : f32
        scf.yield
      }
      default {
        %261 = math.expm1 %transposed : tensor<9x12x12xf16>
        bufferization.dealloc_tensor %10 : tensor<12x9xi32>
        %262 = vector.insertelement %c1274542880_i32, %39[%rank : index] : vector<9xi32>
        %263 = math.tan %6 : tensor<9x12x6xf32>
        %264 = vector.create_mask %c9, %c5 : vector<2x2xi1>
        memref.assume_alignment %alloc_16, 2 : memref<9x12x6xi16>
        %265 = vector.insert %c27696_i16, %44 [1] : i16 into vector<9xi16>
        %266 = math.roundeven %transposed : tensor<9x12x12xf16>
        %267 = math.expm1 %cst_2 : f32
        %268 = memref.realloc %alloc_19 : memref<2xf16> to memref<12xf16>
        %269 = arith.remsi %c1274542880_i32, %c833069524_i32 : i32
        %270 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 floordiv 8, d1)>(%c6, %c9, %c1)
        %true_46 = index.bool.constant true
        %271 = arith.divf %cst_2, %cst_2 : f32
        %272 = arith.shrsi %c833069524_i32, %c1093709253_i32 : i32
        %273 = tensor.empty() : tensor<2x2xi1>
        %274 = linalg.matmul ins(%7, %7 : tensor<2x2xi1>, tensor<2x2xi1>) outs(%273 : tensor<2x2xi1>) -> tensor<2x2xi1>
      }
      %257 = arith.subi %c1274542880_i32, %c833069524_i32 : i32
      %258 = arith.minf %cst_2, %cst_2 : f32
      %259 = index.sizeof
      %260 = memref.realloc %alloc_19 : memref<2xf16> to memref<9xf16>
      affine.yield %alloc_13 : memref<12x9xf32>
    } else {
      %254 = arith.addf %cst, %cst : f16
      bufferization.dealloc_tensor %12 : tensor<9x12x6xi1>
      %255 = vector.matrix_multiply %39, %41 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
      %alloca_46 = memref.alloca() : memref<9x12x6xi16>
      %256 = arith.addf %cst, %cst : f16
      %alloca_47 = memref.alloca() : memref<12x9xf16>
      %257 = arith.negf %cst : f16
      %258 = arith.remf %cst_2, %cst_2 : f32
      affine.yield %alloc_13 : memref<12x9xf32>
    }
    %64 = arith.divf %cst, %cst : f16
    %65 = math.log %9 : tensor<12x12x9xf16>
    %66 = arith.minf %cst, %cst : f16
    %67 = math.fpowi %cst, %c833069524_i32 : f16, i32
    %68 = memref.atomic_rmw minu %c-16107_i16, %alloc_16[%c7, %c10, %c1] : (i16, memref<9x12x6xi16>) -> i16
    %69 = math.roundeven %6 : tensor<9x12x6xf32>
    %extracted_20 = tensor.extract %1[%c2, %c6] : tensor<12x9xi1>
    %70 = tensor.empty() : tensor<9x12x6xf16>
    %71 = vector.broadcast %c3 : index to vector<12xindex>
    %72 = vector.broadcast %false_1 : i1 to vector<12xi1>
    %73 = vector.broadcast %cst_2 : f32 to vector<12xf32>
    vector.scatter %31[%c3, %c8, %c2] [%71], %72, %73 : memref<9x12x6xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    %74 = vector.create_mask %c8, %c10 : vector<12x9xi1>
    %75 = vector.insertelement %c1093709253_i32, %41[%c8 : index] : vector<9xi32>
    %76 = math.ipowi %c1693220179_i64, %c1647380546_i64 : i64
    %splat = tensor.splat %c1693220179_i64 : tensor<2x2xi64>
    %alloc_21 = memref.alloc() : memref<9x12x6xi64>
    memref.copy %alloc_4, %alloc_21 : memref<9x12x6xi64> to memref<9x12x6xi64>
    vector.print %74 : vector<12x9xi1>
    %generated_22 = tensor.generate %55, %c0 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %254 = math.atan2 %21, %21 : tensor<f16>
      %255 = arith.remui %extracted, %false : i1
      %256 = arith.divf %cst, %cst : f16
      %257 = arith.maxui %c-16107_i16, %c-16107_i16 : i16
      tensor.yield %c142236188_i64 : i64
    } : tensor<?x?x6xi64>
    %77 = affine.for %arg3 = 0 to 124 iter_args(%arg4 = %rank) -> (index) {
      affine.yield %c11 : index
    }
    %78 = vector.bitcast %46 : vector<12x9xf32> to vector<12x9xf32>
    %79 = arith.xori %c1093709253_i32, %c1093709253_i32 : i32
    %80 = math.floor %70 : tensor<9x12x6xf16>
    %81 = memref.load %alloc_13[%c4, %c1] : memref<12x9xf32>
    %generated_23 = tensor.generate %53, %c7 {
    ^bb0(%arg3: index, %arg4: index):
      %254 = arith.xori %c-16107_i16, %c8446_i16 : i16
      affine.for %arg5 = 0 to 41 {
      }
      %255 = math.atan2 %3, %3 : tensor<12x9xf32>
      %256 = vector.matrix_multiply %19, %44 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
      tensor.yield %cst : f16
    } : tensor<?x?xf16>
    %82 = vector.insert %c1093709253_i32, %39 [0] : i32 into vector<9xi32>
    %83 = vector.reduction <and>, %41 : vector<9xi32> into i32
    %84 = arith.addf %cst_2, %cst_2 : f32
    %85 = index.divu %c3, %c14
    %86 = math.powf %70, %70 : tensor<9x12x6xf16>
    %87 = index.castu %true_0 : i1 to index
    %88 = arith.negf %cst : f16
    %89 = index.sizeof
    memref.tensor_store %4, %alloc_8 : memref<9x12x6xi1>
    %90 = arith.maxsi %c1093709253_i32, %c1093709253_i32 : i32
    %91 = arith.remf %cst, %cst : f16
    %92 = math.floor %3 : tensor<12x9xf32>
    %93 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 8, d0, 0)>(%c8, %c8, %c7)
    %94 = math.cttz %7 : tensor<2x2xi1>
    %95 = arith.negf %cst : f16
    %96 = memref.load %alloc_4[%c5, %c6, %c0] : memref<9x12x6xi64>
    %97 = arith.andi %c1274542880_i32, %c1093709253_i32 : i32
    %98 = affine.for %arg3 = 0 to 97 iter_args(%arg4 = %19) -> (vector<9xi16>) {
      affine.yield %44 : vector<9xi16>
    }
    %99 = math.atan2 %20, %20 : tensor<2xf16>
    %c1355990781_i32 = arith.constant 1355990781 : i32
    %100 = math.copysign %cst_2, %cst_2 : f32
    %101 = tensor.empty() : tensor<6x12x9xi1>
    %alloc_24 = memref.alloc() : memref<12x6xi1>
    %102 = tensor.empty() : tensor<6x9xi1>
    %103 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%101, %alloc_24, %102 : tensor<6x12x9xi1>, memref<12x6xi1>, tensor<6x9xi1>) outs(%4 : tensor<9x12x6xi1>) {
    ^bb0(%in: i1, %in_46: i1, %in_47: i1, %out: i1):
      %254 = index.maxs %c12, %c12
      %255 = math.absi %splat : tensor<2x2xi64>
      %256 = index.maxs %c6, %c7
      %257 = arith.remui %out, %false_1 : i1
      %258 = vector.load %alloc_11[%c3, %c0] : memref<12x9xi32>, vector<12x9xi32>
      %259 = math.floor %3 : tensor<12x9xf32>
      memref.assume_alignment %alloc_7, 4 : memref<9x12x6xf32>
      %260 = math.atan2 %20, %20 : tensor<2xf16>
      %261 = vector.flat_transpose %41 {columns = 3 : i32, rows = 3 : i32} : vector<9xi32> -> vector<9xi32>
      %alloc_48 = memref.alloc() : memref<12x9xi1>
      memref.tensor_store %1, %alloc_48 : memref<12x9xi1>
      %262 = vector.load %31[%c4, %c3, %c2] : memref<9x12x6xf32>, vector<12x12x9xf32>
      %263 = affine.load %alloc_13[%c9, %c6] : memref<12x9xf32>
      %264 = memref.load %alloc_14[%c4, %c6] : memref<12x9xf32>
      %alloc_49 = memref.alloc() : memref<9x2xi32>
      %265 = tensor.empty() : tensor<12x2xi32>
      %266 = linalg.matmul ins(%10, %alloc_49 : tensor<12x9xi32>, memref<9x2xi32>) outs(%265 : tensor<12x2xi32>) -> tensor<12x2xi32>
      vector.print %74 : vector<12x9xi1>
      %267 = arith.divf %cst_2, %cst_2 : f32
      %268 = index.floordivs %c8, %87
      %269 = arith.maxui %c-16107_i16, %c-16107_i16 : i16
      %270 = vector.broadcast %true : i1 to vector<9x9xi1>
      %271 = vector.outerproduct %40, %40, %270 {kind = #vector.kind<minsi>} : vector<9xi1>, vector<9xi1>
      %272 = scf.while (%arg3 = %false_1) : (i1) -> i1 {
        %282 = affine.load %alloc_10[%c5, %c14, %c9] : memref<12x12x9xi1>
        %283 = vector.broadcast %c6 : index to vector<2xindex>
        %284 = vector.broadcast %282 : i1 to vector<2xi1>
        %285 = vector.broadcast %c1093709253_i32 : i32 to vector<2xi32>
        vector.scatter %alloc[%c1, %c1] [%283], %284, %285 : memref<2x2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %286 = math.fma %3, %3, %3 : tensor<12x9xf32>
        %287 = vector.broadcast %c27696_i16 : i16 to vector<2xi16>
        %288 = vector.broadcast %in_46 : i1 to vector<2xi1>
        %289 = vector.maskedload %alloc_12[%c2, %c6, %c8], %288, %287 : memref<12x12x9xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %290 = index.maxs %85, %50
        %291 = arith.ceildivsi %c1274542880_i32, %c833069524_i32 : i32
        %292 = index.sub %53, %c5
        %true_50 = index.bool.constant true
        scf.condition(%true) %true : i1
      } do {
      ^bb0(%arg3: i1):
        %alloc_50 = memref.alloc() : memref<12x12x9xi64>
        memref.copy %alloc_5, %alloc_50 : memref<12x12x9xi64> to memref<12x12x9xi64>
        %282 = arith.xori %c1693220179_i64, %c1038111321_i64 : i64
        %283 = vector.insert %c8446_i16, %44 [0] : i16 into vector<9xi16>
        %284 = vector.insertelement %c833069524_i32, %41[%c11 : index] : vector<9xi32>
        memref.assume_alignment %alloc, 2 : memref<2x2xi32>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %285 = vector.transfer_read %alloc_17[%93, %c9, %c12], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<9x12x6xi32>, vector<6x12xi32>
        memref.assume_alignment %alloc_13, 1 : memref<12x9xf32>
        %286 = arith.minsi %in_47, %extracted_20 : i1
        %287 = math.log2 %263 : f32
        %288 = math.floor %18 : tensor<9x12x12xf16>
        %289 = vector.create_mask %c3, %c0 : vector<2x2xi1>
        %290 = index.floordivs %c11, %55
        %291 = vector.insert %39, %258 [2] : vector<9xi32> into vector<12x9xi32>
        %292 = index.sub %c6, %290
        %293 = vector.broadcast %in : i1 to vector<2x12xi1>
        %294 = vector.transfer_write %293, %15[%256, %85, %53] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x12xi1>, tensor<12x12x9xi1>
        %295 = affine.max affine_map<(d0) -> (d0 + 69, d0 ceildiv 64, (d0 - (d0 + 65)) floordiv 128, (d0 - (d0 + 65)) floordiv 128)>(%53)
        scf.yield %false : i1
      }
      %273 = arith.floordivsi %true, %false : i1
      %274 = arith.subi %c27696_i16, %c8446_i16 : i16
      %275 = math.ctpop %4 : tensor<9x12x6xi1>
      %276 = memref.atomic_rmw mulf %cst_2, %alloc_3[%c4, %c2, %c5] : (f32, memref<9x12x6xf32>) -> f32
      memref.assume_alignment %alloc_17, 4 : memref<9x12x6xi32>
      %277 = math.log10 %cst_2 : f32
      affine.for %arg3 = 0 to 125 {
      }
      memref.assume_alignment %alloc_7, 8 : memref<9x12x6xf32>
      %278 = vector.multi_reduction <minsi>, %41, %c833069524_i32 [0] : vector<9xi32> to i32
      %279 = math.floor %18 : tensor<9x12x12xf16>
      %280 = vector.create_mask %c9, %c11 : vector<2x2xi1>
      %281 = arith.minui %c1693220179_i64, %c1038111321_i64 : i64
      linalg.yield %true : i1
    } -> tensor<9x12x6xi1>
    %104 = index.ceildivu %c5, %c6
    %alloc_25 = memref.alloc() : memref<12x9xi1>
    memref.tensor_store %1, %alloc_25 : memref<12x9xi1>
    %generated_26 = tensor.generate %c3, %c9 {
    ^bb0(%arg3: index, %arg4: index):
      %254 = arith.remf %cst, %cst : f16
      %255 = arith.floordivsi %c-16107_i16, %c-16107_i16 : i16
      %256 = vector.create_mask %55, %c3 : vector<2x2xi1>
      %extracted_46 = tensor.extract %21[] : tensor<f16>
      tensor.yield %c142236188_i64 : i64
    } : tensor<?x?xi64>
    %105 = affine.for %arg3 = 0 to 43 iter_args(%arg4 = %0) -> (tensor<9x12x6xi32>) {
      affine.yield %8 : tensor<9x12x6xi32>
    }
    %106 = math.ctpop %c833069524_i32 : i32
    %107 = arith.remf %cst, %cst : f16
    %108 = vector.bitcast %74 : vector<12x9xi1> to vector<12x9xi1>
    %from_elements = tensor.from_elements %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16 : tensor<12x12x9xi16>
    %cast = tensor.cast %21 : tensor<f16> to tensor<f16>
    %expanded = tensor.expand_shape %10 [[0], [1, 2]] : tensor<12x9xi32> into tensor<12x9x1xi32>
    %false_27 = index.bool.constant false
    %109 = math.atan %6 : tensor<9x12x6xf32>
    %110 = vector.load %alloc_18[%c2, %c5] : memref<12x12xf16>, vector<12x12x9xf16>
    %111 = math.ipowi %0, %0 : tensor<9x12x6xi32>
    %112 = vector.matrix_multiply %41, %41 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
    %113 = arith.subi %true_0, %extracted_20 : i1
    %114 = math.log10 %9 : tensor<12x12x9xf16>
    %115 = math.log2 %6 : tensor<9x12x6xf32>
    %116 = math.roundeven %cst : f16
    %117 = memref.realloc %alloc_19 : memref<2xf16> to memref<9xf16>
    bufferization.dealloc_tensor %11 : tensor<9x12x6xi16>
    %118 = scf.while (%arg3 = %44) : (vector<9xi16>) -> vector<9xi16> {
      %254 = scf.index_switch %c11 -> i16 
      case 1 {
        %262 = affine.min affine_map<(d0) -> (d0 ceildiv 4, -16, 0)>(%53)
        memref.tensor_store %12, %alloc_8 : memref<9x12x6xi1>
        %263 = arith.maxui %c142236188_i64, %c142236188_i64 : i64
        %264 = arith.maxsi %c1693220179_i64, %c1693220179_i64 : i64
        %265 = vector.create_mask %c2, %c5 : vector<12x9xi1>
        %266 = index.add %c4, %c1
        %267 = arith.remsi %false_1, %extracted_20 : i1
        %268 = vector.extract %108[4] : vector<12x9xi1>
        %269 = index.casts %false : i1 to index
        vector.print %78 : vector<12x9xf32>
        %270 = math.ipowi %7, %7 : tensor<2x2xi1>
        %271 = vector.load %alloc_6[%c8, %c10, %c8] : memref<12x12x9xi1>, vector<12x12x9xi1>
        %272 = arith.divui %false, %true : i1
        %273 = arith.ceildivsi %false_27, %false : i1
        %274 = math.ceil %cst : f16
        %275 = index.maxs %c11, %c0
        scf.yield %c8446_i16 : i16
      }
      case 2 {
        %262 = arith.shli %c1093709253_i32, %c1093709253_i32 : i32
        %263 = arith.shli %c1647380546_i64, %c1647380546_i64 : i64
        %264 = arith.remf %cst, %cst : f16
        %265 = arith.shrsi %false, %extracted_20 : i1
        %266 = vector.broadcast %c12 : index to vector<2xindex>
        %267 = vector.broadcast %extracted_20 : i1 to vector<2xi1>
        %268 = vector.broadcast %cst : f16 to vector<2xf16>
        vector.scatter %alloc_18[%c9, %c4] [%266], %267, %268 : memref<12x12xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %269 = vector.bitcast %39 : vector<9xi32> to vector<9xi32>
        %270 = bufferization.to_memref %cast : memref<f16>
        %271 = arith.negf %cst_2 : f32
        %alloc_46 = memref.alloc() : memref<9x12x6xi32>
        memref.copy %alloc_17, %alloc_46 : memref<9x12x6xi32> to memref<9x12x6xi32>
        %272 = arith.maxui %true, %true : i1
        %273 = arith.cmpi sge, %c1093709253_i32, %c1274542880_i32 : i32
        %274 = math.exp %cst_2 : f32
        %275 = math.log %cst_2 : f32
        %276 = math.ctpop %extracted : i1
        affine.store %extracted_20, %alloc_10[%c6, %c6, %c12] : memref<12x12x9xi1>
        %277 = index.maxs %93, %c12
        scf.yield %c27696_i16 : i16
      }
      default {
        %262 = bufferization.to_memref %6 : memref<9x12x6xf32>
        %263 = math.tan %3 : tensor<12x9xf32>
        %264 = vector.multi_reduction <mul>, %47, %47 [] : vector<12x9xf32> to vector<12x9xf32>
        %265 = vector.transpose %110, [1, 0, 2] : vector<12x12x9xf16> to vector<12x12x9xf16>
        %c1_i64 = arith.constant 1 : i64
        %266 = vector.transfer_read %alloc_4[%c1, %c9, %c10], %c1_i64 : memref<9x12x6xi64>, vector<2xi64>
        %267 = arith.negf %cst_2 : f32
        %268 = arith.remui %false_1, %true_0 : i1
        memref.assume_alignment %alloc_8, 2 : memref<9x12x6xi1>
        %269 = memref.load %alloc_16[%c0, %c5, %c2] : memref<9x12x6xi16>
        affine.store %c27696_i16, %alloc_12[%c14, %c6, %c15] : memref<12x12x9xi16>
        %270 = index.floordivs %c5, %c12
        %271 = vector.bitcast %112 : vector<1xi32> to vector<1xi32>
        %272 = vector.reduction <xor>, %19 : vector<9xi16> into i16
        %273 = memref.atomic_rmw assign %c833069524_i32, %alloc_11[%c8, %c1] : (i32, memref<12x9xi32>) -> i32
        %274 = vector.insert %40, %108 [9] : vector<9xi1> into vector<12x9xi1>
        %275 = math.log2 %9 : tensor<12x12x9xf16>
        scf.yield %c-16107_i16 : i16
      }
      %255 = memref.load %alloc_13[%c0, %c6] : memref<12x9xf32>
      %256 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - d0 mod 128, d1, (d3 floordiv 8) mod 2)>(%c10, %85, %c9, %c14)
      %257 = vector.splat %c1093709253_i32 : vector<2x2xi32>
      %258 = math.copysign %9, %9 : tensor<12x12x9xf16>
      %259 = math.fma %cst, %cst, %cst : f16
      %260 = math.log2 %18 : tensor<9x12x12xf16>
      %261 = arith.maxsi %extracted_20, %false_27 : i1
      scf.condition(%extracted_20) %44 : vector<9xi16>
    } do {
    ^bb0(%arg3: vector<9xi16>):
      %254 = arith.remf %cst_2, %cst_2 : f32
      %255 = math.ipowi %splat, %splat : tensor<2x2xi64>
      %256 = vector.broadcast %cst_2 : f32 to vector<9x12x6xf32>
      %257 = vector.fma %256, %256, %256 : vector<9x12x6xf32>
      %258 = arith.maxui %c1693220179_i64, %c1038111321_i64 : i64
      %alloc_46 = memref.alloc() : memref<9x9xi32>
      %259 = tensor.empty() : tensor<12x9xi32>
      %260 = linalg.matmul ins(%10, %alloc_46 : tensor<12x9xi32>, memref<9x9xi32>) outs(%259 : tensor<12x9xi32>) -> tensor<12x9xi32>
      %261 = vector.load %alloc_14[%c3, %c3] : memref<12x9xf32>, vector<12x9xf32>
      %alloca_47 = memref.alloca() : memref<9x12x6xi16>
      %262 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 8, -64, 0)>(%c3, %c12, %87)
      %263 = arith.ori %c142236188_i64, %c1647380546_i64 : i64
      %264 = index.add %c9, %c9
      %265 = vector.extract_strided_slice %261 {offsets = [1], sizes = [7], strides = [1]} : vector<12x9xf32> to vector<7x9xf32>
      %266 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
      %267 = math.absf %70 : tensor<9x12x6xf16>
      %268 = vector.flat_transpose %39 {columns = 3 : i32, rows = 3 : i32} : vector<9xi32> -> vector<9xi32>
      %269 = arith.divf %cst, %cst : f16
      %270 = math.roundeven %transposed : tensor<9x12x12xf16>
      scf.yield %19 : vector<9xi16>
    }
    %119 = index.floordivs %c1, %104
    %120 = vector.multi_reduction <mul>, %74, %74 [] : vector<12x9xi1> to vector<12x9xi1>
    %121 = arith.andi %c1647380546_i64, %c142236188_i64 : i64
    %122 = arith.remsi %c1693220179_i64, %c142236188_i64 : i64
    %123 = math.expm1 %9 : tensor<12x12x9xf16>
    %cst_28 = arith.constant 1.000000e+00 : f32
    %124 = vector.transfer_read %alloc_15[%c5, %c6], %cst_28 : memref<12x9xf32>, vector<f32>
    %125 = vector.multi_reduction <mul>, %112, %112 [] : vector<1xi32> to vector<1xi32>
    %expanded_29 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<9x12x6xi1> into tensor<9x12x6x1xi1>
    %126 = math.log2 %20 : tensor<2xf16>
    %127 = affine.if affine_set<(d0, d1, d2, d3) : (d1 == 0, d0 floordiv 128 >= 0, -d0 >= 0)>(%c3, %c6, %c15, %c5) -> memref<9x12x6xi16> {
      %inserted = tensor.insert %true_0 into %1[%c10, %c7] : tensor<12x9xi1>
      %254 = arith.remsi %c1693220179_i64, %c1693220179_i64 : i64
      %255 = arith.divui %true_0, %false_27 : i1
      %256 = index.sub %87, %c12
      %257 = math.ceil %21 : tensor<f16>
      %258 = math.roundeven %6 : tensor<9x12x6xf32>
      %259 = math.log2 %9 : tensor<12x12x9xf16>
      %260 = arith.minui %c27696_i16, %c27696_i16 : i16
      affine.yield %alloc_16 : memref<9x12x6xi16>
    } else {
      %splat_46 = tensor.splat %cst_28 : tensor<2x2xf32>
      %254 = math.fma %3, %3, %3 : tensor<12x9xf32>
      %255 = arith.remf %cst_28, %cst_2 : f32
      %256 = bufferization.clone %alloc_15 : memref<12x9xf32> to memref<12x9xf32>
      %257 = vector.insertelement %c1274542880_i32, %41[%c4 : index] : vector<9xi32>
      %258 = scf.while (%arg3 = %cst) : (f16) -> f16 {
        %splat_47 = tensor.splat %c8446_i16 : tensor<12x12x9xi16>
        %261 = arith.shli %false_27, %false_27 : i1
        %262 = vector.load %256[%c7, %c8] : memref<12x9xf32>, vector<2x2xf32>
        %splat_48 = tensor.splat %c8446_i16 : tensor<9x12x6xi16>
        %263 = math.round %arg3 : f16
        %264 = vector.broadcast %cst_28 : f32 to vector<9xf32>
        %265 = vector.insert %264, %47 [8] : vector<9xf32> into vector<12x9xf32>
        %266 = vector.broadcast %cst_28 : f32 to vector<2x2xf32>
        %267 = vector.fma %266, %266, %262 : vector<2x2xf32>
        affine.store %cst_2, %31[%c9, %c6, %c2] : memref<9x12x6xf32>
        scf.condition(%extracted) %arg3 : f16
      } do {
      ^bb0(%arg3: f16):
        %splat_47 = tensor.splat %false_27 : tensor<2x2xi1>
        memref.assume_alignment %alloc_7, 4 : memref<9x12x6xf32>
        %261 = math.ipowi %expanded, %expanded : tensor<12x9x1xi32>
        %262 = arith.negf %cst_28 : f32
        %263 = math.log2 %21 : tensor<f16>
        %true_48 = index.bool.constant true
        %264 = math.exp %cst_2 : f32
        %alloca_49 = memref.alloca() : memref<2x2xi32>
        %265 = math.ceil %18 : tensor<9x12x12xf16>
        %266 = index.maxs %55, %104
        %267 = arith.maxsi %c833069524_i32, %c833069524_i32 : i32
        %268 = math.rsqrt %cst_2 : f32
        %269 = arith.floordivsi %true, %false_1 : i1
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %112, %112, %c1093709253_i32 : vector<1xi32>, vector<1xi32> into i32
        %271 = arith.addi %c27696_i16, %c27696_i16 : i16
        %272 = math.log %splat_46 : tensor<2x2xf32>
        scf.yield %cst : f16
      }
      %259 = arith.negf %cst_28 : f32
      %260 = math.floor %20 : tensor<2xf16>
      affine.yield %alloc_16 : memref<9x12x6xi16>
    }
    %128 = vector.bitcast %40 : vector<9xi1> to vector<9xi1>
    %129 = index.maxs %c7, %c7
    %generated_30 = tensor.generate %c2, %c5 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c27696_i16 : vector<9xi16>, vector<9xi16> into i16
      %255 = math.floor %cst_28 : f32
      %256 = arith.shrsi %true, %extracted_20 : i1
      %extracted_46 = tensor.extract %5[%c2, %c2, %c1] : tensor<9x12x6xi16>
      tensor.yield %c27696_i16 : i16
    } : tensor<?x?x6xi16>
    %130 = arith.remf %cst, %cst : f16
    %131 = math.tan %transposed : tensor<9x12x12xf16>
    %132 = arith.divf %cst, %cst : f16
    %133 = math.powf %18, %transposed : tensor<9x12x12xf16>
    %134 = math.fma %20, %20, %20 : tensor<2xf16>
    %135 = arith.negf %cst_2 : f32
    %generated_31 = tensor.generate %55, %c5 {
    ^bb0(%arg3: index, %arg4: index):
      %254 = math.expm1 %18 : tensor<9x12x12xf16>
      %255 = math.copysign %9, %9 : tensor<12x12x9xf16>
      %256 = arith.floordivsi %c1093709253_i32, %c833069524_i32 : i32
      memref.assume_alignment %alloc_11, 4 : memref<12x9xi32>
      tensor.yield %cst : f16
    } : tensor<?x?xf16>
    bufferization.dealloc_tensor %21 : tensor<f16>
    %136 = math.tan %22 : tensor<f16>
    %137 = vector.multi_reduction <minf>, %46, %cst_2 [0, 1] : vector<12x9xf32> to f32
    scf.if %extracted {
      %254 = vector.reduction <minui>, %40 : vector<9xi1> into i1
      %255 = vector.transpose %41, [0] : vector<9xi32> to vector<9xi32>
      %256 = math.round %cst_28 : f32
      %257 = vector.load %alloc[%c0, %c1] : memref<2x2xi32>, vector<12x12x9xi32>
      %258 = vector.extract_strided_slice %110 {offsets = [5], sizes = [6], strides = [1]} : vector<12x12x9xf16> to vector<6x12x9xf16>
      memref.store %true, %alloc_6[%c9, %c8, %c2] : memref<12x12x9xi1>
      %extracted_46 = tensor.extract %2[%c4, %c3, %c5] : tensor<12x12x9xi1>
      %259 = scf.if %extracted -> (f16) {
        %260 = index.divs %55, %c14
        %261 = vector.matrix_multiply %19, %44 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
        %rank_47 = tensor.rank %2 : tensor<12x12x9xi1>
        %262 = affine.apply affine_map<(d0, d1) -> (d0 mod 2 - 2)>(%85, %260)
        %263 = math.ctpop %0 : tensor<9x12x6xi32>
        %true_48 = index.bool.constant true
        %264 = index.ceildivs %260, %119
        %265 = index.casts %false : i1 to index
        scf.yield %cst : f16
      } else {
        %260 = arith.minui %c1274542880_i32, %c1274542880_i32 : i32
        %261 = math.round %cst : f16
        %262 = arith.shli %c8446_i16, %c27696_i16 : i16
        %263 = arith.shrsi %c833069524_i32, %c833069524_i32 : i32
        %264 = vector.load %alloc_8[%c5, %c6, %c4] : memref<9x12x6xi1>, vector<9x12x6xi1>
        %265 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
        %266 = arith.maxsi %c833069524_i32, %c1274542880_i32 : i32
        %267 = arith.andi %c27696_i16, %c27696_i16 : i16
        scf.yield %cst : f16
      }
    }
    vector.print %108 : vector<12x9xi1>
    %138 = math.round %3 : tensor<12x9xf32>
    %139 = affine.min affine_map<(d0, d1) -> ((d0 mod 128) ceildiv 2, d0 * 8)>(%c4, %89)
    %140 = math.log10 %18 : tensor<9x12x12xf16>
    %141 = arith.andi %false_27, %true_0 : i1
    %142 = bufferization.clone %alloc_12 : memref<12x12x9xi16> to memref<12x12x9xi16>
    %143 = math.atan %21 : tensor<f16>
    %144 = vector.flat_transpose %112 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %145 = index.maxs %119, %c11
    %146 = arith.negf %137 : f32
    %147 = vector.matrix_multiply %19, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
    %148 = vector.multi_reduction <or>, %41, %c833069524_i32 [0] : vector<9xi32> to i32
    %149 = scf.while (%arg3 = %c1647380546_i64) : (i64) -> i64 {
      memref.assume_alignment %alloc_18, 1 : memref<12x12xf16>
      %254 = index.casts %55 : index to i32
      %255 = memref.realloc %alloc_19 : memref<2xf16> to memref<9xf16>
      %256 = arith.remf %cst_2, %137 : f32
      %257 = vector.load %alloc[%c1, %c0] : memref<2x2xi32>, vector<12x9xi32>
      %258 = index.ceildivs %c1, %c0
      %259 = arith.remsi %true_0, %false_1 : i1
      memref.tensor_store %from_elements, %alloc_12 : memref<12x12x9xi16>
      scf.condition(%false) %c142236188_i64 : i64
    } do {
    ^bb0(%arg3: i64):
      %254 = arith.divui %true, %false : i1
      %255 = math.exp %cst : f16
      %256 = index.divu %c3, %87
      %257 = index.add %c10, %55
      memref.assume_alignment %alloc_19, 1 : memref<2xf16>
      %258 = vector.multi_reduction <and>, %74, %108 [] : vector<12x9xi1> to vector<12x9xi1>
      %259 = math.ceil %cst : f16
      %260 = arith.remsi %c1038111321_i64, %c1038111321_i64 : i64
      %261 = math.log10 %21 : tensor<f16>
      %262 = math.roundeven %9 : tensor<12x12x9xf16>
      %263 = arith.cmpi sle, %c8446_i16, %c8446_i16 : i16
      %expanded_46 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<9x12x6xi1> into tensor<9x12x6x1xi1>
      %264 = arith.maxui %false, %true_0 : i1
      %265 = math.log %70 : tensor<9x12x6xf16>
      %266 = vector.bitcast %41 : vector<9xi32> to vector<9xi32>
      %267 = vector.maskedload %alloc_16[%c8, %c8, %c4], %128, %44 : memref<9x12x6xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      scf.yield %c1038111321_i64 : i64
    }
    %150 = math.log10 %20 : tensor<2xf16>
    %alloc_32 = memref.alloc() : memref<12x9xi32>
    scf.if %true {
      %254 = index.maxu %89, %c4
      %255 = index.sub %87, %c2
      %256 = scf.while (%arg3 = %148) : (i32) -> i32 {
        %265 = arith.maxui %c27696_i16, %c27696_i16 : i16
        %266 = arith.remui %c1274542880_i32, %c1274542880_i32 : i32
        %267 = math.cttz %15 : tensor<12x12x9xi1>
        %268 = math.ipowi %13, %13 : tensor<12x9xi64>
        %collapsed_46 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<9x12x6xi1> into tensor<108x6xi1>
        %269 = arith.remf %137, %137 : f32
        %270 = arith.maxsi %true, %true : i1
        %271 = arith.remf %cst_28, %137 : f32
        scf.condition(%extracted_20) %c1274542880_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %265 = arith.remui %c1274542880_i32, %c1274542880_i32 : i32
        %266 = arith.xori %false, %true_0 : i1
        bufferization.dealloc_tensor %12 : tensor<9x12x6xi1>
        %267 = math.round %cst_2 : f32
        %alloc_46 = memref.alloc() : memref<12x12x9xi16>
        %268 = vector.create_mask %50, %139, %87 : vector<9x12x6xi1>
        %269 = bufferization.to_memref %18 : memref<9x12x12xf16>
        %270 = bufferization.clone %alloc_18 : memref<12x12xf16> to memref<12x12xf16>
        %271 = index.castu %extracted_20 : i1 to index
        %272 = memref.load %alloc_15[%c2, %c3] : memref<12x9xf32>
        %273 = arith.remui %c1647380546_i64, %c1038111321_i64 : i64
        %274 = math.roundeven %21 : tensor<f16>
        %275 = arith.maxui %c1647380546_i64, %c1647380546_i64 : i64
        vector.print %144 : vector<1xi32>
        %276 = vector.matrix_multiply %44, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<9xi16>) -> vector<1xi16>
        %277 = math.tan %21 : tensor<f16>
        scf.yield %148 : i32
      }
      %257 = math.exp2 %3 : tensor<12x9xf32>
      %258 = vector.transpose %39, [0] : vector<9xi32> to vector<9xi32>
      %259 = tensor.empty() : tensor<2x2xi1>
      %260 = linalg.matmul ins(%7, %7 : tensor<2x2xi1>, tensor<2x2xi1>) outs(%259 : tensor<2x2xi1>) -> tensor<2x2xi1>
      %261 = vector.broadcast %145 : index to vector<2xindex>
      %262 = vector.broadcast %false_27 : i1 to vector<2xi1>
      %263 = vector.broadcast %c1647380546_i64 : i64 to vector<2xi64>
      vector.scatter %alloc_4[%c8, %c10, %c3] [%261], %262, %263 : memref<9x12x6xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
      %264 = memref.load %alloc_13[%c6, %c6] : memref<12x9xf32>
    }
    %151 = vector.broadcast %false : i1 to vector<12xi1>
    %152 = vector.multi_reduction <or>, %74, %151 [1] : vector<12x9xi1> to vector<12xi1>
    %153 = vector.broadcast %137 : f32 to vector<9x9xf32>
    %154 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %78, %47, %153 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
    %155 = bufferization.clone %alloc : memref<2x2xi32> to memref<2x2xi32>
    %156 = arith.remsi %extracted, %false_27 : i1
    %157 = arith.minsi %true, %false_1 : i1
    %158 = index.casts %extracted : i1 to index
    %159 = arith.minf %137, %cst_28 : f32
    %160 = bufferization.to_memref %cast : memref<f16>
    %161 = arith.floordivsi %c833069524_i32, %c1093709253_i32 : i32
    memref.store %cst_28, %alloc_14[%c1, %c8] : memref<12x9xf32>
    %162 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
    %163 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %78, %47, %162 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
    %from_elements_33 = tensor.from_elements %148, %c833069524_i32, %c1274542880_i32, %c1093709253_i32 : tensor<2x2xi32>
    %164 = math.expm1 %6 : tensor<9x12x6xf32>
    %165 = bufferization.clone %alloc_15 : memref<12x9xf32> to memref<12x9xf32>
    %166 = vector.broadcast %137 : f32 to vector<9xf32>
    %167 = vector.insert %166, %47 [6] : vector<9xf32> into vector<12x9xf32>
    %168 = vector.broadcast %cst_2 : f32 to vector<12xf32>
    %dest, %accumulated_value = vector.scan <minf>, %46, %168 {inclusive = false, reduction_dim = 1 : i64} : vector<12x9xf32>, vector<12xf32>
    %alloc_34 = memref.alloc() : memref<12x12x9xf16>
    %169 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %74, %40, %151 : vector<12x9xi1>, vector<9xi1> into vector<12xi1>
    %170 = vector.create_mask %c2, %119 : vector<12x9xi1>
    %generated_35 = tensor.generate %c5 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %254 = math.ceil %cst_28 : f32
      %255 = arith.andi %c1093709253_i32, %c1093709253_i32 : i32
      %256 = math.expm1 %transposed : tensor<9x12x12xf16>
      bufferization.dealloc_tensor %8 : tensor<9x12x6xi32>
      tensor.yield %c1693220179_i64 : i64
    } : tensor<?x12x6xi64>
    %171 = bufferization.clone %alloc_4 : memref<9x12x6xi64> to memref<9x12x6xi64>
    %extracted_36 = tensor.extract %cast[] : tensor<f16>
    %172 = math.exp %22 : tensor<f16>
    memref.tensor_store %21, %160 : memref<f16>
    %173 = bufferization.clone %alloc_19 : memref<2xf16> to memref<2xf16>
    %174 = vector.splat %89 : vector<12x9xindex>
    %175 = math.log2 %21 : tensor<f16>
    %splat_37 = tensor.splat %137 : tensor<12x12x9xf32>
    %176 = vector.multi_reduction <maxsi>, %128, %40 [] : vector<9xi1> to vector<9xi1>
    %177 = vector.transpose %39, [0] : vector<9xi32> to vector<9xi32>
    %178 = index.floordivs %c3, %c4
    %alloca = memref.alloca() : memref<12x12x9xi16>
    %179 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, (d1 - 2) floordiv 16 == 0)>(%c11, %c3, %c7, %c10) -> i64 {
      %254 = vector.reduction <xor>, %151 : vector<12xi1> into i1
      %255 = math.exp2 %splat_37 : tensor<12x12x9xf32>
      %256 = arith.maxsi %true, %true_0 : i1
      %257 = math.roundeven %6 : tensor<9x12x6xf32>
      %258 = arith.minui %c1693220179_i64, %c1647380546_i64 : i64
      %259 = arith.minui %c142236188_i64, %c1038111321_i64 : i64
      %260 = arith.subi %c-16107_i16, %c27696_i16 : i16
      %261 = vector.broadcast %c1274542880_i32 : i32 to vector<6xi32>
      %262 = vector.broadcast %true : i1 to vector<6xi1>
      %263 = vector.maskedload %alloc_17[%c6, %c8, %c1], %262, %261 : memref<9x12x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      affine.yield %c1038111321_i64 : i64
    } else {
      %254 = index.add %rank, %93
      %255 = vector.insert %c27696_i16, %44 [8] : i16 into vector<9xi16>
      memref.tensor_store %15, %alloc_6 : memref<12x12x9xi1>
      %256 = arith.negf %cst_28 : f32
      bufferization.dealloc_tensor %4 : tensor<9x12x6xi1>
      %257 = vector.broadcast %cst_28 : f32 to vector<9x9xf32>
      %258 = vector.outerproduct %166, %166, %257 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
      %259 = arith.minf %137, %cst_2 : f32
      %260 = arith.minui %true, %false_1 : i1
      affine.yield %c142236188_i64 : i64
    }
    memref.tensor_store %4, %alloc_8 : memref<9x12x6xi1>
    %180 = vector.flat_transpose %128 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
    %181 = vector.splat %c1693220179_i64 : vector<12x9xi64>
    %182 = vector.load %alloc_9[%c2, %c5, %c7] : memref<12x12x9xi16>, vector<9x12x6xi16>
    %183 = math.exp %cst : f16
    %generated_38 = tensor.generate %c2, %50, %89 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %254 = arith.cmpi eq, %148, %148 : i32
      %255 = vector.reduction <mul>, %112 : vector<1xi32> into i32
      %256 = arith.andi %c1274542880_i32, %c1274542880_i32 : i32
      %257 = arith.remui %c1093709253_i32, %c1274542880_i32 : i32
      tensor.yield %false_1 : i1
    } : tensor<?x?x?xi1>
    %184 = vector.create_mask %c0, %c15, %85 : vector<12x12x9xi1>
    %185 = bufferization.clone %31 : memref<9x12x6xf32> to memref<9x12x6xf32>
    %186 = memref.atomic_rmw maxs %c1647380546_i64, %alloc_5[%c5, %c2, %c3] : (i64, memref<12x12x9xi64>) -> i64
    %187 = scf.while (%arg3 = %alloc_9) : (memref<12x12x9xi16>) -> memref<12x12x9xi16> {
      %254 = tensor.empty() : tensor<2xi32>
      %255 = math.fpowi %20, %254 : tensor<2xf16>, tensor<2xi32>
      %256 = arith.maxsi %c1274542880_i32, %148 : i32
      %alloc_46 = memref.alloc() : memref<12x12xi1>
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<12x12xi1>) outs(%15 : tensor<12x12x9xi1>) {
      ^bb0(%in: i1, %out: i1):
        memref.tensor_store %16, %alloc_4 : memref<9x12x6xi64>
        %261 = arith.minf %extracted_36, %extracted_36 : f16
        %262 = vector.broadcast %c1274542880_i32 : i32 to vector<12xi32>
        %263 = vector.transfer_write %262, %8[%50, %c12, %55] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi32>, tensor<9x12x6xi32>
        %264 = index.sub %55, %c0
        %alloc_48 = memref.alloc() : memref<12x9xf32>
        %265 = vector.create_mask %c1, %c11 : vector<12x9xi1>
        %266 = math.absi %1 : tensor<12x9xi1>
        %267 = bufferization.clone %185 : memref<9x12x6xf32> to memref<9x12x6xf32>
        %from_elements_49 = tensor.from_elements %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %cst, %cst, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %cst, %cst, %extracted_36, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %extracted_36, %cst, %cst, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %extracted_36, %cst, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %cst, %cst, %extracted_36, %cst, %extracted_36, %cst, %extracted_36, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %cst, %cst, %extracted_36, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %cst, %cst, %cst : tensor<12x9xf16>
        %268 = math.copysign %9, %9 : tensor<12x12x9xf16>
        %269 = affine.load %alloc_8[%c10, %c3, %c1] : memref<9x12x6xi1>
        %270 = index.casts %89 : index to i32
        %271 = math.log %from_elements_49 : tensor<12x9xf16>
        %272 = math.exp2 %70 : tensor<9x12x6xf16>
        %273 = math.round %3 : tensor<12x9xf32>
        %274 = arith.floordivsi %c1038111321_i64, %c1647380546_i64 : i64
        vector.print %78 : vector<12x9xf32>
        %275 = vector.create_mask %c14, %53 : vector<2x2xi1>
        %276 = math.log10 %from_elements_49 : tensor<12x9xf16>
        %false_50 = index.bool.constant false
        %277 = math.tan %18 : tensor<9x12x12xf16>
        %278 = tensor.empty() : tensor<9x2xf32>
        %279 = tensor.empty() : tensor<12x2xf32>
        %280 = linalg.matmul ins(%3, %278 : tensor<12x9xf32>, tensor<9x2xf32>) outs(%279 : tensor<12x2xf32>) -> tensor<12x2xf32>
        memref.assume_alignment %173, 1 : memref<2xf16>
        %extracted_51 = tensor.extract %12[%c4, %c7, %c3] : tensor<9x12x6xi1>
        %281 = arith.remui %false_1, %269 : i1
        %282 = vector.broadcast %false_27 : i1 to vector<9x9xi1>
        %283 = vector.outerproduct %180, %40, %282 {kind = #vector.kind<and>} : vector<9xi1>, vector<9xi1>
        %284 = arith.floordivsi %c142236188_i64, %c142236188_i64 : i64
        %extracted_52 = tensor.extract %generated_26[%c0, %c0] : tensor<?x?xi64>
        %285 = math.log2 %9 : tensor<12x12x9xf16>
        %286 = bufferization.to_memref %18 : memref<9x12x12xf16>
        %287 = arith.cmpi sge, %c8446_i16, %c8446_i16 : i16
        memref.store %cst_28, %165[%c11, %c7] : memref<12x9xf32>
        linalg.yield %false_27 : i1
      } -> tensor<12x12x9xi1>
      memref.store %extracted_36, %alloc_18[%c8, %c4] : memref<12x12xf16>
      %258 = vector.bitcast %110 : vector<12x12x9xf16> to vector<12x12x9xf16>
      %259 = vector.transpose %39, [0] : vector<9xi32> to vector<9xi32>
      %260 = arith.divf %cst_2, %cst_2 : f32
      %collapsed_47 = tensor.collapse_shape %10 [[0, 1]] : tensor<12x9xi32> into tensor<108xi32>
      scf.condition(%extracted) %alloc_9 : memref<12x12x9xi16>
    } do {
    ^bb0(%arg3: memref<12x12x9xi16>):
      %254 = math.atan %3 : tensor<12x9xf32>
      %255 = tensor.empty(%c14) : tensor<12x?xf16>
      %256 = affine.for %arg4 = 0 to 60 iter_args(%arg5 = %8) -> (tensor<9x12x6xi32>) {
        affine.yield %0 : tensor<9x12x6xi32>
      }
      %257 = vector.matrix_multiply %41, %112 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<1xi32>) -> vector<9xi32>
      %rank_46 = tensor.rank %3 : tensor<12x9xf32>
      %258 = vector.multi_reduction <minui>, %180, %true [0] : vector<9xi1> to i1
      %259 = math.floor %6 : tensor<9x12x6xf32>
      %260 = memref.load %alloc_5[%c6, %c6, %c1] : memref<12x12x9xi64>
      %261 = math.log2 %transposed : tensor<9x12x12xf16>
      bufferization.dealloc_tensor %21 : tensor<f16>
      %262 = math.log1p %6 : tensor<9x12x6xf32>
      %263 = math.atan %3 : tensor<12x9xf32>
      %264 = scf.while (%arg4 = %alloc_9) : (memref<12x12x9xi16>) -> memref<12x12x9xi16> {
        %268 = index.add %c13, %c12
        %269 = arith.maxui %c1274542880_i32, %c1093709253_i32 : i32
        %270 = math.cos %6 : tensor<9x12x6xf32>
        %271 = affine.load %171[%c13, %c13, %c3] : memref<9x12x6xi64>
        %272 = arith.minsi %false_27, %extracted_20 : i1
        %273 = vector.matrix_multiply %180, %151 {lhs_columns = 3 : i32, lhs_rows = 3 : i32, rhs_columns = 4 : i32} : (vector<9xi1>, vector<12xi1>) -> vector<12xi1>
        %274 = arith.cmpf uge, %cst, %extracted_36 : f16
        %275 = arith.xori %false_27, %false_27 : i1
        scf.condition(%258) %arg3 : memref<12x12x9xi16>
      } do {
      ^bb0(%arg4: memref<12x12x9xi16>):
        %268 = math.fma %3, %3, %3 : tensor<12x9xf32>
        %269 = vector.insert %166, %78 [2] : vector<9xf32> into vector<12x9xf32>
        %alloc_47 = memref.alloc() : memref<12x12xf16>
        memref.copy %alloc_18, %alloc_47 : memref<12x12xf16> to memref<12x12xf16>
        %270 = arith.subi %c833069524_i32, %c1093709253_i32 : i32
        %alloc_48 = memref.alloc() : memref<9x12xi1>
        %271 = tensor.empty() : tensor<12x12xi1>
        %272 = linalg.matmul ins(%1, %alloc_48 : tensor<12x9xi1>, memref<9x12xi1>) outs(%271 : tensor<12x12xi1>) -> tensor<12x12xi1>
        %273 = vector.insertelement %c1274542880_i32, %39[%c12 : index] : vector<9xi32>
        %274 = arith.remsi %c8446_i16, %c27696_i16 : i16
        %275 = vector.broadcast %true_0 : i1 to vector<12x12xi1>
        %276 = vector.outerproduct %151, %151, %275 {kind = #vector.kind<maxsi>} : vector<12xi1>, vector<12xi1>
        %277 = arith.remsi %c1647380546_i64, %c1038111321_i64 : i64
        %278 = index.floordivs %c15, %c14
        %279 = index.casts %258 : i1 to index
        %280 = arith.remui %c1038111321_i64, %c142236188_i64 : i64
        %281 = arith.shrsi %false, %false : i1
        %282 = vector.splat %87 : vector<2x2xindex>
        %283 = math.log1p %20 : tensor<2xf16>
        %alloca_49 = memref.alloca() : memref<12x12x9xi32>
        scf.yield %142 : memref<12x12x9xi16>
      }
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%16 : tensor<9x12x6xi64>) {
      ^bb0(%out: i64):
        %268 = arith.shli %c27696_i16, %c8446_i16 : i16
        %269 = affine.min affine_map<(d0, d1) -> (d1)>(%c15, %c7)
        memref.copy %alloc_13, %165 : memref<12x9xf32> to memref<12x9xf32>
        %270 = math.exp2 %137 : f32
        %271 = bufferization.to_tensor %alloc_3 : memref<9x12x6xf32>
        %272 = vector.broadcast %269 : index to vector<9xindex>
        vector.scatter %alloc_15[%c10, %c8] [%272], %128, %166 : memref<12x9xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %273 = arith.addi %c27696_i16, %c-16107_i16 : i16
        %274 = arith.maxui %c-16107_i16, %c8446_i16 : i16
        %275 = vector.broadcast %137 : f32 to vector<12x9xf32>
        %276 = math.rsqrt %9 : tensor<12x12x9xf16>
        %277 = vector.broadcast %c-16107_i16 : i16 to vector<9x9xi16>
        %278 = vector.outerproduct %44, %19, %277 {kind = #vector.kind<minsi>} : vector<9xi16>, vector<9xi16>
        %279 = vector.broadcast %cst_28 : f32 to vector<9x9xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %275, %275, %279 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
        %true_47 = index.bool.constant true
        %281 = vector.multi_reduction <maxf>, %110, %110 [] : vector<12x12x9xf16> to vector<12x12x9xf16>
        %282 = math.log1p %70 : tensor<9x12x6xf16>
        %283 = arith.ceildivsi %false_27, %true_0 : i1
        %284 = arith.maxsi %true_47, %false_27 : i1
        %285 = vector.reduction <or>, %40 : vector<9xi1> into i1
        %286 = math.atan2 %9, %9 : tensor<12x12x9xf16>
        %287 = vector.broadcast %50 : index to vector<6xindex>
        %288 = vector.broadcast %258 : i1 to vector<6xi1>
        %289 = vector.broadcast %c27696_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_16[%c6, %c10, %c3] [%287], %288, %289 : memref<9x12x6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %290 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 128) * 8)>(%rank, %c6, %85)
        %291 = index.sub %53, %85
        %292 = math.roundeven %9 : tensor<12x12x9xf16>
        %293 = math.roundeven %21 : tensor<f16>
        %294 = vector.insert %false_1, %180 [0] : i1 into vector<9xi1>
        %295 = arith.floordivsi %c-16107_i16, %c27696_i16 : i16
        %296 = affine.min affine_map<(d0, d1, d2) -> ((d2 - 2) mod 8)>(%c6, %c12, %c10)
        %297 = index.casts %c1274542880_i32 : i32 to index
        %298 = arith.ori %c142236188_i64, %c1647380546_i64 : i64
        memref.assume_alignment %155, 4 : memref<2x2xi32>
        %299 = vector.matrix_multiply %166, %166 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
        %300 = memref.realloc %173 : memref<2xf16> to memref<12xf16>
        linalg.yield %c1647380546_i64 : i64
      } -> tensor<9x12x6xi64>
      %266 = vector.reduction <xor>, %40 : vector<9xi1> into i1
      %267 = arith.negf %cst_2 : f32
      scf.yield %alloc_12 : memref<12x12x9xi16>
    }
    %188 = arith.shli %c142236188_i64, %c1693220179_i64 : i64
    %189 = math.atan2 %3, %3 : tensor<12x9xf32>
    %190 = vector.broadcast %extracted_36 : f16 to vector<12x9x12x9xf16>
    %191 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %110, %110, %190 : vector<12x12x9xf16>, vector<12x12x9xf16> into vector<12x9x12x9xf16>
    %192 = memref.load %alloc_16[%c3, %c11, %c0] : memref<9x12x6xi16>
    %193 = tensor.empty() : tensor<12x12x9xi16>
    %mapped = linalg.map ins(%alloc_12, %from_elements : memref<12x12x9xi16>, tensor<12x12x9xi16>) outs(%193 : tensor<12x12x9xi16>)
      (%in: i16, %in_46: i16) {
        %from_elements_47 = tensor.from_elements %148, %148, %c1274542880_i32, %148, %148, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %148, %148, %148, %c833069524_i32, %c1274542880_i32, %148, %c1093709253_i32, %148, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %148, %148, %c1274542880_i32, %148, %c1093709253_i32, %c1093709253_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %148, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %c1274542880_i32, %148, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1093709253_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %148, %c833069524_i32, %148, %c1093709253_i32, %148, %148, %c833069524_i32, %c1093709253_i32, %148, %c833069524_i32, %148, %148, %148, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %c1274542880_i32, %148, %148, %c1093709253_i32, %148, %c1093709253_i32, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %148, %148, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c1093709253_i32, %148, %148, %148, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %148, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %148, %c1274542880_i32, %c1093709253_i32, %148, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %148, %148, %148, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %148, %c1274542880_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %148, %c833069524_i32, %c1274542880_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %148, %148, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %c1274542880_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %148, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %148, %148, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %148, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %148, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %148, %148, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1274542880_i32, %148, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %148, %148, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %148, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %148, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %148, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %148, %c833069524_i32, %148, %c1093709253_i32, %148, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %148, %148, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %148, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %148, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %148, %148, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %148, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1274542880_i32, %c833069524_i32, %148, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c1093709253_i32, %c1093709253_i32, %148, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %148, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32 : tensor<9x12x6xi32>
        %254 = vector.load %alloc_12[%c2, %c9, %c6] : memref<12x12x9xi16>, vector<9x12x6xi16>
        %255 = affine.for %arg3 = 0 to 4 iter_args(%arg4 = %139) -> (index) {
          affine.yield %c0 : index
        }
        %256 = memref.load %alloc_15[%c0, %c8] : memref<12x9xf32>
        %257 = arith.floordivsi %c1093709253_i32, %c1274542880_i32 : i32
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_48 = arith.constant 0 : i32
        %258 = vector.transfer_read %0[%145, %rank, %89], %c0_i32_48 : tensor<9x12x6xi32>, vector<i32>
        %259 = arith.floordivsi %c0_i32, %c833069524_i32 : i32
        %260 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
        %from_elements_49 = tensor.from_elements %137, %cst_28, %cst_2, %cst_28, %137, %cst_28, %cst_28, %cst_28, %cst_2, %cst_28, %cst_2, %137, %137, %cst_2, %cst_28, %cst_28, %cst_2, %137, %cst_2, %137, %cst_28, %cst_28, %cst_28, %137, %cst_28, %137, %137, %cst_2, %137, %cst_28, %cst_28, %cst_28, %cst_2, %cst_2, %cst_28, %cst_2, %137, %137, %cst_2, %137, %cst_28, %cst_2, %cst_2, %cst_2, %cst_28, %137, %137, %137, %cst_28, %cst_28, %cst_2, %137, %137, %cst_28, %137, %cst_28, %137, %137, %cst_2, %cst_28, %cst_28, %cst_28, %cst_28, %cst_28, %cst_28, %cst_28, %137, %cst_28, %137, %137, %cst_2, %cst_28, %cst_28, %cst_28, %cst_28, %137, %cst_2, %137, %cst_2, %cst_2, %cst_28, %cst_28, %cst_28, %137, %137, %cst_28, %cst_28, %137, %cst_28, %137, %cst_2, %137, %137, %137, %cst_2, %137, %cst_2, %cst_28, %cst_2, %137, %cst_2, %cst_28, %137, %137, %137, %137, %137, %cst_2 : tensor<12x9xf32>
        bufferization.dealloc_tensor %13 : tensor<12x9xi64>
        %261 = vector.splat %c0 : vector<12x9xindex>
        %262 = index.casts %c1274542880_i32 : i32 to index
        memref.assume_alignment %185, 2 : memref<9x12x6xf32>
        %263 = arith.remsi %c8446_i16, %c-16107_i16 : i16
        memref.tensor_store %0, %alloc_17 : memref<9x12x6xi32>
        %cast_50 = tensor.cast %5 : tensor<9x12x6xi16> to tensor<?x?x?xi16>
        %264 = math.log %splat_37 : tensor<12x12x9xf32>
        vector.print %147 : vector<1xi16>
        %265 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 ceildiv 2) * 64 - (-d3 - 16) * 2, d0, (d1 ceildiv 2) * 64 - (-d3 - 16) * 2, d0 + d1)>(%158, %c8, %158, %c15)
        memref.copy %alloc_7, %31 : memref<9x12x6xf32> to memref<9x12x6xf32>
        %generated_51 = tensor.generate %c4 {
        ^bb0(%arg3: index, %arg4: index):
          %278 = arith.ori %c1647380546_i64, %c1647380546_i64 : i64
          %279 = index.divs %139, %145
          %280 = vector.broadcast %in : i16 to vector<12x6xi16>
          %281 = vector.insert %280, %182 [7] : vector<12x6xi16> into vector<9x12x6xi16>
          %splat_52 = tensor.splat %c1093709253_i32 : tensor<12x9xi32>
          tensor.yield %extracted_36 : f16
        } : tensor<?x9xf16>
        %266 = memref.load %alloc_19[%c0] : memref<2xf16>
        %267 = math.expm1 %9 : tensor<12x12x9xf16>
        %268 = vector.broadcast %c14 : index to vector<9xindex>
        %269 = vector.broadcast %cst : f16 to vector<9xf16>
        vector.scatter %alloc_18[%c0, %c11] [%268], %40, %269 : memref<12x12xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %270 = math.roundeven %9 : tensor<12x12x9xf16>
        %271 = math.fma %cst, %cst, %extracted_36 : f16
        %272 = index.casts %c10 : index to i32
        %273 = vector.reduction <xor>, %112 : vector<1xi32> into i32
        %274 = arith.ceildivsi %c8446_i16, %c27696_i16 : i16
        %275 = arith.remsi %c142236188_i64, %c142236188_i64 : i64
        %276 = index.castu %c1693220179_i64 : i64 to index
        %277 = vector.transpose %51, [1, 0] : vector<2x2xi1> to vector<2x2xi1>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %194 = arith.divf %137, %137 : f32
    %195 = arith.maxsi %false, %false_1 : i1
    %196 = math.atan2 %22, %21 : tensor<f16>
    %197 = math.floor %extracted_36 : f16
    %198 = tensor.empty() : tensor<2x2xi32>
    %199 = vector.reduction <maxsi>, %180 : vector<9xi1> into i1
    %200 = math.round %137 : f32
    %201 = affine.load %31[%c12, %c9, %c9] : memref<9x12x6xf32>
    %202 = affine.if affine_set<(d0, d1) : (((d0 - 32) ceildiv 64) floordiv 16 == 0, (((-d1) ceildiv 2) floordiv 4) floordiv 8 >= 0)>(%c4, %c3) -> memref<2x2xi16> {
      %254 = memref.realloc %173 : memref<2xf16> to memref<6xf16>
      %255 = vector.load %alloc_9[%c5, %c1, %c6] : memref<12x12x9xi16>, vector<9x12x6xi16>
      %generated_46 = tensor.generate %145 {
      ^bb0(%arg3: index, %arg4: index):
        %264 = vector.load %alloc_6[%c5, %c3, %c1] : memref<12x12x9xi1>, vector<12x9xi1>
        memref.tensor_store %3, %alloc_15 : memref<12x9xf32>
        %265 = math.log2 %18 : tensor<9x12x12xf16>
        %266 = vector.broadcast %c8446_i16 : i16 to vector<12x6x12x6xi16>
        %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %255, %182, %266 : vector<9x12x6xi16>, vector<9x12x6xi16> into vector<12x6x12x6xi16>
        tensor.yield %extracted_36 : f16
      } : tensor<?x2xf16>
      %256 = scf.while (%arg3 = %cst_2) : (f32) -> f32 {
        %264 = math.round %22 : tensor<f16>
        memref.store %c27696_i16, %142[%c10, %c2, %c7] : memref<12x12x9xi16>
        vector.print %40 : vector<9xi1>
        %265 = vector.broadcast %c27696_i16 : i16 to vector<12x9xi16>
        %266 = math.ipowi %expanded_29, %expanded_29 : tensor<9x12x6x1xi1>
        %267 = arith.floordivsi %true_0, %false_27 : i1
        %268 = vector.load %alloc_12[%c3, %c10, %c7] : memref<12x12x9xi16>, vector<12x12x9xi16>
        %269 = math.ctpop %12 : tensor<9x12x6xi1>
        scf.condition(%false) %cst_28 : f32
      } do {
      ^bb0(%arg3: f32):
        %264 = vector.flat_transpose %144 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %265 = bufferization.to_memref %14 : memref<9x12x6xi64>
        %266 = affine.max affine_map<(d0, d1, d2) -> (-d0, d1 ceildiv 128 + 4)>(%c11, %129, %129)
        %267 = memref.load %165[%c3, %c7] : memref<12x9xf32>
        %268 = arith.negf %cst_2 : f32
        %false_49 = index.bool.constant false
        %269 = math.rsqrt %22 : tensor<f16>
        %270 = math.round %9 : tensor<12x12x9xf16>
        %271 = arith.divf %137, %201 : f32
        %272 = vector.insertelement %c833069524_i32, %264[%129 : index] : vector<1xi32>
        %273 = arith.addf %201, %arg3 : f32
        bufferization.dealloc_tensor %generated_23 : tensor<?x?xf16>
        %274 = arith.remsi %c1647380546_i64, %c142236188_i64 : i64
        %275 = math.log1p %137 : f32
        %276 = vector.splat %85 : vector<2x2xindex>
        %277 = math.exp %9 : tensor<12x12x9xf16>
        scf.yield %arg3 : f32
      }
      %257 = math.log10 %splat_37 : tensor<12x12x9xf32>
      %258 = index.casts %false_1 : i1 to index
      %259 = scf.while (%arg3 = %alloc_8) : (memref<9x12x6xi1>) -> memref<9x12x6xi1> {
        %264 = arith.maxf %cst_28, %201 : f32
        %rank_49 = tensor.rank %14 : tensor<9x12x6xi64>
        %265 = arith.maxui %extracted, %extracted_20 : i1
        %266 = math.log2 %70 : tensor<9x12x6xf16>
        %267 = arith.cmpi sle, %c1093709253_i32, %c1274542880_i32 : i32
        %268 = math.exp %18 : tensor<9x12x12xf16>
        %269 = arith.minsi %false_1, %true : i1
        %270 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %47, %47, %270 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
        scf.condition(%true_0) %arg3 : memref<9x12x6xi1>
      } do {
      ^bb0(%arg3: memref<9x12x6xi1>):
        %264 = arith.addf %extracted_36, %cst : f16
        %265 = math.cos %transposed : tensor<9x12x12xf16>
        %from_elements_49 = tensor.from_elements %c1038111321_i64, %c1038111321_i64, %c1693220179_i64, %c1647380546_i64, %c1647380546_i64, %c1647380546_i64, %c142236188_i64, %c1647380546_i64, %c1647380546_i64, %c1038111321_i64, %c1647380546_i64, %c1693220179_i64, %c1647380546_i64, %c1647380546_i64, %c1647380546_i64, %c1038111321_i64, %c142236188_i64, %c1038111321_i64, %c1647380546_i64, %c142236188_i64, %c1038111321_i64, %c142236188_i64, %c142236188_i64, %c1693220179_i64, %c1693220179_i64, %c142236188_i64, %c1647380546_i64, %c1038111321_i64, %c1038111321_i64, %c1038111321_i64, %c142236188_i64, %c1693220179_i64, %c1647380546_i64, %c1038111321_i64, %c142236188_i64, %c1038111321_i64, %c1693220179_i64, %c142236188_i64, %c1038111321_i64, %c1693220179_i64, %c1647380546_i64, %c1038111321_i64, %c1693220179_i64, %c1647380546_i64, %c1038111321_i64, %c142236188_i64, %c142236188_i64, %c1647380546_i64, %c1647380546_i64, %c1693220179_i64, %c1647380546_i64, %c1693220179_i64, %c1038111321_i64, %c1038111321_i64, %c1693220179_i64, %c1647380546_i64, %c1647380546_i64, %c1038111321_i64, %c1038111321_i64, %c1038111321_i64, %c1693220179_i64, %c142236188_i64, %c1038111321_i64, %c1647380546_i64, %c1038111321_i64, %c1693220179_i64, %c1693220179_i64, %c1647380546_i64, %c142236188_i64, %c1647380546_i64, %c142236188_i64, %c142236188_i64, %c1038111321_i64, %c1038111321_i64, %c1647380546_i64, %c1038111321_i64, %c1038111321_i64, %c1038111321_i64, %c1693220179_i64, %c142236188_i64, %c1693220179_i64, %c1038111321_i64, %c142236188_i64, %c1038111321_i64, %c1038111321_i64, %c1647380546_i64, %c142236188_i64, %c1693220179_i64, %c1693220179_i64, %c142236188_i64, %c1647380546_i64, %c142236188_i64, %c142236188_i64, %c142236188_i64, %c1693220179_i64, %c1647380546_i64, %c142236188_i64, %c1693220179_i64, %c1693220179_i64, %c1038111321_i64, %c1038111321_i64, %c1647380546_i64, %c142236188_i64, %c142236188_i64, %c1693220179_i64, %c1693220179_i64, %c1647380546_i64, %c1647380546_i64 : tensor<12x9xi64>
        %cst_50 = arith.constant 5.750400e+04 : f16
        %266 = arith.maxsi %true_0, %false_27 : i1
        %267 = arith.negf %137 : f32
        %268 = math.floor %18 : tensor<9x12x12xf16>
        memref.assume_alignment %alloc_14, 8 : memref<12x9xf32>
        %269 = vector.broadcast %c27696_i16 : i16 to vector<12x6xi16>
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %255, %19, %269 : vector<9x12x6xi16>, vector<9xi16> into vector<12x6xi16>
        %271 = math.tanh %21 : tensor<f16>
        %rank_51 = tensor.rank %21 : tensor<f16>
        %272 = math.log %18 : tensor<9x12x12xf16>
        %273 = arith.remf %cst_28, %cst_28 : f32
        bufferization.dealloc_tensor %16 : tensor<9x12x6xi64>
        memref.assume_alignment %alloc_3, 1 : memref<9x12x6xf32>
        %274 = bufferization.clone %alloc_6 : memref<12x12x9xi1> to memref<12x12x9xi1>
        scf.yield %arg3 : memref<9x12x6xi1>
      }
      %alloc_47 = memref.alloc() : memref<9x12x6xf16>
      %260 = vector.broadcast %extracted_36 : f16 to vector<9x12x6xf16>
      %261 = vector.broadcast %false_1 : i1 to vector<9x12x6xi1>
      %262 = vector.broadcast %c1093709253_i32 : i32 to vector<9x12x6xi32>
      %263 = vector.gather %alloc_47[%55, %c4, %rank] [%262], %261, %260 : memref<9x12x6xf16>, vector<9x12x6xi32>, vector<9x12x6xi1>, vector<9x12x6xf16> into vector<9x12x6xf16>
      %alloc_48 = memref.alloc() : memref<2x2xi16>
      affine.yield %alloc_48 : memref<2x2xi16>
    } else {
      %254 = arith.maxui %true_0, %extracted_20 : i1
      %255 = vector.create_mask %158, %c11, %129 : vector<9x12x6xi1>
      %256 = affine.max affine_map<(d0) -> (4, -d0, d0 + 16)>(%87)
      %extracted_46 = tensor.extract %193[%c1, %c11, %c2] : tensor<12x12x9xi16>
      %257 = math.copysign %splat_37, %splat_37 : tensor<12x12x9xf32>
      %258 = arith.remf %137, %cst_2 : f32
      %259 = arith.negf %cst : f16
      vector.print %74 : vector<12x9xi1>
      %alloc_47 = memref.alloc() : memref<2x2xi16>
      affine.yield %alloc_47 : memref<2x2xi16>
    }
    %203 = math.fma %cst_28, %cst_2, %cst_2 : f32
    %204 = math.copysign %cst, %extracted_36 : f16
    memref.tensor_store %8, %alloc_17 : memref<9x12x6xi32>
    affine.store %c-16107_i16, %alloc_12[%c13, %c8, %c0] : memref<12x12x9xi16>
    %205 = vector.broadcast %true : i1 to vector<9x9xi1>
    %206 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %108, %74, %205 : vector<12x9xi1>, vector<12x9xi1> into vector<9x9xi1>
    %207 = arith.remf %cst, %extracted_36 : f16
    %generated_39 = tensor.generate %c10 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %generated_46 = tensor.generate %c2, %c4, %rank {
      ^bb0(%arg6: index, %arg7: index, %arg8: index):
        %257 = arith.floordivsi %c8446_i16, %c27696_i16 : i16
        %258 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1, (-d0) ceildiv 32 + 4)>(%158, %139, %85, %c10)
        %259 = arith.subi %true, %extracted : i1
        %260 = arith.minui %extracted, %true_0 : i1
        tensor.yield %cst : f16
      } : tensor<?x?x?xf16>
      %254 = arith.ceildivsi %true, %false : i1
      %255 = vector.reduction <add>, %166 : vector<9xf32> into f32
      %256 = math.atan2 %18, %transposed : tensor<9x12x12xf16>
      tensor.yield %false_27 : i1
    } : tensor<?x12x9xi1>
    %208 = index.add %139, %c1
    %209 = vector.insert %40, %108 [11] : vector<9xi1> into vector<12x9xi1>
    %210 = arith.andi %c1093709253_i32, %c833069524_i32 : i32
    %211 = arith.remf %cst_28, %cst_2 : f32
    %alloc_40 = memref.alloc() : memref<9x9xf32>
    %212 = tensor.empty() : tensor<12x9xf32>
    %213 = linalg.matmul ins(%3, %alloc_40 : tensor<12x9xf32>, memref<9x9xf32>) outs(%212 : tensor<12x9xf32>) -> tensor<12x9xf32>
    %214 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%145, %158, %c14, %c5)
    %215 = math.round %3 : tensor<12x9xf32>
    %216 = index.casts %c1647380546_i64 : i64 to index
    %217 = math.exp %6 : tensor<9x12x6xf32>
    %218 = arith.floordivsi %true, %extracted_20 : i1
    %219 = math.floor %9 : tensor<12x12x9xf16>
    %alloc_41 = memref.alloc() : memref<9x6x12xf32>
    %220 = tensor.empty() : tensor<6x12xf32>
    %221 = tensor.empty() : tensor<12x6xf32>
    %222 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41, %220, %221 : memref<9x6x12xf32>, tensor<6x12xf32>, tensor<12x6xf32>) outs(%6 : tensor<9x12x6xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %out: f32):
      %254 = scf.while (%arg3 = %extracted_20) : (i1) -> i1 {
        %283 = affine.min affine_map<(d0, d1) -> (d1 * 16)>(%53, %c15)
        %284 = vector.extract_strided_slice %44 {offsets = [0], sizes = [7], strides = [1]} : vector<9xi16> to vector<7xi16>
        %285 = vector.load %alloc_12[%c5, %c2, %c1] : memref<12x12x9xi16>, vector<12x12x9xi16>
        %286 = vector.multi_reduction <or>, %284, %284 [] : vector<7xi16> to vector<7xi16>
        %287 = index.add %c13, %53
        %288 = index.maxu %c0, %c12
        %alloca_54 = memref.alloca() : memref<12x9xi1>
        bufferization.dealloc_tensor %16 : tensor<9x12x6xi64>
        scf.condition(%false) %true_0 : i1
      } do {
      ^bb0(%arg3: i1):
        %alloca_54 = memref.alloca() : memref<12x9xi32>
        %alloca_55 = memref.alloca() : memref<9x12x6xi16>
        %283 = arith.remf %137, %201 : f32
        %284 = arith.negf %extracted_36 : f16
        %285 = index.ceildivs %c6, %c4
        %286 = arith.maxui %c1693220179_i64, %c142236188_i64 : i64
        %alloc_56 = memref.alloc() : memref<12x12x9xf16>
        %287 = vector.reduction <and>, %180 : vector<9xi1> into i1
        %288 = index.divu %c2, %rank
        memref.assume_alignment %alloc_16, 2 : memref<9x12x6xi16>
        %289 = memref.load %185[%c5, %c11, %c3] : memref<9x12x6xf32>
        %290 = vector.flat_transpose %180 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %291 = vector.bitcast %170 : vector<12x9xi1> to vector<12x9xi1>
        %true_57 = index.bool.constant true
        %292 = memref.realloc %alloc_19 : memref<2xf16> to memref<2xf16>
        %293 = vector.broadcast %c4 : index to vector<6xindex>
        %294 = vector.broadcast %false : i1 to vector<6xi1>
        %295 = vector.broadcast %extracted_36 : f16 to vector<6xf16>
        vector.scatter %alloc_18[%c8, %c8] [%293], %294, %295 : memref<12x12xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        scf.yield %true_0 : i1
      }
      %alloc_48 = memref.alloc() : memref<12x9xf16>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_18, %alloc_48 : memref<12x12xf16>, memref<12x9xf16>) outs(%transposed : tensor<9x12x12xf16>) {
      ^bb0(%in_54: f16, %in_55: f16, %out_56: f16):
        %283 = vector.matrix_multiply %41, %41 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
        %284 = math.log10 %cst_2 : f32
        %285 = index.casts %208 : index to i32
        %286 = math.atan2 %9, %9 : tensor<12x12x9xf16>
        %287 = vector.extract_strided_slice %41 {offsets = [3], sizes = [6], strides = [1]} : vector<9xi32> to vector<6xi32>
        %extracted_57 = tensor.extract %14[%c4, %c11, %c2] : tensor<9x12x6xi64>
        %288 = arith.remf %in_47, %cst_28 : f32
        %289 = arith.divf %extracted_36, %cst : f16
        %290 = math.round %out_56 : f16
        %291 = vector.broadcast %in : f32 to vector<2x2xf32>
        %292 = vector.fma %291, %291, %291 : vector<2x2xf32>
        %true_58 = index.bool.constant true
        %293 = arith.minsi %false_1, %false : i1
        %294 = arith.remsi %true_58, %false : i1
        %295 = arith.addf %137, %in_46 : f32
        memref.assume_alignment %alloc_19, 16 : memref<2xf16>
        %296 = vector.bitcast %292 : vector<2x2xf32> to vector<2x2xf32>
        %from_elements_59 = tensor.from_elements %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c-16107_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c8446_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c-16107_i16, %c27696_i16, %c27696_i16, %c8446_i16, %c-16107_i16, %c-16107_i16, %c27696_i16, %c8446_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c27696_i16, %c8446_i16 : tensor<12x12x9xi16>
        memref.assume_alignment %31, 16 : memref<9x12x6xf32>
        %297 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 80, d0 + 18, 0)>(%104, %c6, %50, %c11)
        memref.assume_alignment %31, 8 : memref<9x12x6xf32>
        %298 = bufferization.clone %alloc_15 : memref<12x9xf32> to memref<12x9xf32>
        %299 = vector.extract_strided_slice %180 {offsets = [3], sizes = [1], strides = [1]} : vector<9xi1> to vector<1xi1>
        %300 = math.round %201 : f32
        %301 = arith.ceildivsi %c1274542880_i32, %148 : i32
        memref.copy %alloc_12, %alloc_9 : memref<12x12x9xi16> to memref<12x12x9xi16>
        %302 = memref.load %142[%c6, %c2, %c3] : memref<12x12x9xi16>
        %303 = arith.andi %extracted_57, %c1693220179_i64 : i64
        %304 = math.roundeven %18 : tensor<9x12x12xf16>
        %305 = vector.broadcast %extracted_36 : f16 to vector<9x12x6xf16>
        %306 = arith.remf %201, %cst_28 : f32
        %307 = index.maxs %119, %129
        %308 = math.log10 %cst_28 : f32
        linalg.yield %out_56 : f16
      } -> tensor<9x12x12xf16>
      %alloc_49 = memref.alloc() : memref<12x12x9xi1>
      %256 = arith.remui %c1038111321_i64, %c1038111321_i64 : i64
      %257 = tensor.empty() : tensor<2xf16>
      %mapped_50 = linalg.map ins(%173 : memref<2xf16>) outs(%257 : tensor<2xf16>)
        (%in_54: f16) {
          %283 = math.log1p %6 : tensor<9x12x6xf32>
          %284 = affine.min affine_map<(d0) -> ((d0 - 8) floordiv 128, (d0 - 8) floordiv 128 + d0 - d0 floordiv 64 + 64, -(d0 floordiv 64), (d0 floordiv 64) ceildiv 4)>(%c8)
          %285 = arith.remf %extracted_36, %cst : f16
          %286 = bufferization.clone %alloc_16 : memref<9x12x6xi16> to memref<9x12x6xi16>
          vector.print %147 : vector<1xi16>
          %287 = math.ceil %6 : tensor<9x12x6xf32>
          %288 = arith.divf %201, %in_46 : f32
          %289 = arith.remf %in_54, %extracted_36 : f16
          %290 = arith.muli %c1093709253_i32, %c833069524_i32 : i32
          %291 = vector.broadcast %false_1 : i1 to vector<12x12xi1>
          %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %128, %184, %291 : vector<9xi1>, vector<12x12x9xi1> into vector<12x12xi1>
          bufferization.dealloc_tensor %13 : tensor<12x9xi64>
          %293 = arith.minf %in_47, %out : f32
          %294 = vector.broadcast %in_46 : f32 to vector<9x12x6xf32>
          %295 = vector.fma %294, %294, %294 : vector<9x12x6xf32>
          %296 = index.floordivs %c10, %c10
          %297 = arith.remsi %extracted, %extracted : i1
          bufferization.dealloc_tensor %10 : tensor<12x9xi32>
          %298 = vector.broadcast %c5 : index to vector<12xindex>
          %299 = vector.broadcast %out : f32 to vector<12xf32>
          vector.scatter %alloc_3[%c2, %c2, %c1] [%298], %151, %299 : memref<9x12x6xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
          memref.assume_alignment %alloc_6, 4 : memref<12x12x9xi1>
          %300 = arith.divf %201, %in_46 : f32
          %301 = vector.flat_transpose %180 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
          %302 = arith.divf %out, %in : f32
          %303 = math.tanh %22 : tensor<f16>
          %304 = vector.matrix_multiply %180, %128 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
          %alloc_55 = memref.alloc() : memref<12x12x9xi64>
          memref.copy %alloc_5, %alloc_55 : memref<12x12x9xi64> to memref<12x12x9xi64>
          memref.assume_alignment %alloc_13, 2 : memref<12x9xf32>
          %305 = math.tanh %137 : f32
          %306 = arith.shrui %148, %c1093709253_i32 : i32
          %307 = index.casts %148 : i32 to index
          %308 = arith.andi %false_1, %false_1 : i1
          %309 = vector.create_mask %c10, %158, %214 : vector<12x12x9xi1>
          %310 = vector.broadcast %out : f32 to vector<12x12x9xf32>
          %311 = vector.fma %310, %310, %310 : vector<12x12x9xf32>
          %312 = arith.remsi %false, %extracted : i1
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %258 = arith.ceildivsi %148, %c1093709253_i32 : i32
      %259 = vector.broadcast %c6 : index to vector<6xindex>
      %260 = vector.broadcast %extracted : i1 to vector<6xi1>
      %261 = vector.broadcast %c8446_i16 : i16 to vector<6xi16>
      vector.scatter %alloc_9[%c1, %c3, %c6] [%259], %260, %261 : memref<12x12x9xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
      %262 = vector.matrix_multiply %19, %147 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<1xi16>) -> vector<9xi16>
      %263 = math.powf %splat_37, %splat_37 : tensor<12x12x9xf32>
      %264 = math.copysign %137, %in_47 : f32
      %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d2 - (d1 + d0))>(%50, %129, %158, %50)
      %266 = affine.load %alloc_13[%c2, %c6] : memref<12x9xf32>
      %alloca_51 = memref.alloca() : memref<12x12x9xi16>
      %267 = arith.minf %in_47, %cst_2 : f32
      %268 = memref.load %alloc_5[%c5, %c7, %c3] : memref<12x12x9xi64>
      %269 = math.log %257 : tensor<2xf16>
      %270 = arith.maxsi %false_1, %false_27 : i1
      %271 = arith.ori %148, %148 : i32
      %272 = math.atan %257 : tensor<2xf16>
      %273 = bufferization.to_memref %21 : memref<f16>
      %collapsed_52 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<9x12x6xi64> into tensor<108x6xi64>
      %274 = vector.load %160[] : memref<f16>, vector<2x2xf16>
      memref.store %in, %alloc_15[%c6, %c3] : memref<12x9xf32>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 * 2) mod 4, (d3 * 2) mod 4 + 128, d2 ceildiv 4)>(%c11, %c0, %87, %c15)
      %276 = math.floor %out : f32
      %277 = vector.reduction <minui>, %147 : vector<1xi16> into i16
      %278 = memref.alloca_scope  -> (i16) {
        memref.copy %alloc_3, %185 : memref<9x12x6xf32> to memref<9x12x6xf32>
        %alloca_54 = memref.alloca() : memref<12x12x9xi32>
        %283 = index.maxu %55, %c7
        %284 = arith.remf %in_46, %266 : f32
        memref.assume_alignment %171, 8 : memref<9x12x6xi64>
        %true_55 = arith.constant true
        %285 = vector.transfer_read %12[%rank, %145, %89], %true_55 : tensor<9x12x6xi1>, vector<2xi1>
        %286 = affine.max affine_map<(d0, d1, d2) -> (d2 + 60, d0 mod 8)>(%50, %c5, %87)
        %287 = math.rsqrt %3 : tensor<12x9xf32>
        %288 = math.fma %in_46, %137, %in : f32
        %289 = vector.broadcast %201 : f32 to vector<12x12x9xf32>
        %290 = vector.create_mask %145, %208, %c9 : vector<9x12x6xi1>
        %dest_56, %accumulated_value_57 = vector.scan <and>, %170, %151 {inclusive = true, reduction_dim = 1 : i64} : vector<12x9xi1>, vector<12xi1>
        %291 = math.copysign %9, %9 : tensor<12x12x9xf16>
        %292 = math.log10 %extracted_36 : f16
        %293 = math.ipowi %0, %8 : tensor<9x12x6xi32>
        %294 = math.log1p %22 : tensor<f16>
        %295 = math.ctpop %true_55 : i1
        %296 = math.ctlz %193 : tensor<12x12x9xi16>
        %splat_58 = tensor.splat %out : tensor<12x12x9xf32>
        %297 = memref.realloc %alloc_19 : memref<2xf16> to memref<6xf16>
        %298 = math.expm1 %splat_58 : tensor<12x12x9xf32>
        %extracted_59 = tensor.extract %0[%c5, %c0, %c2] : tensor<9x12x6xi32>
        memref.assume_alignment %142, 8 : memref<12x12x9xi16>
        %299 = vector.broadcast %266 : f32 to vector<9x9xf32>
        %300 = vector.outerproduct %166, %166, %299 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
        %301 = arith.remui %c833069524_i32, %148 : i32
        %302 = math.ctpop %10 : tensor<12x9xi32>
        %303 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d2 - (d0 - 16)) floordiv 16, -d2 - (d0 - 16), d2)>(%c2, %c2, %c6, %87)
        %304 = affine.min affine_map<(d0, d1, d2) -> ((-d0) floordiv 32 + d1)>(%c13, %rank, %c13)
        vector.print %110 : vector<12x12x9xf16>
        bufferization.dealloc_tensor %13 : tensor<12x9xi64>
        %305 = vector.load %alloc_4[%c2, %c9, %c5] : memref<9x12x6xi64>, vector<12x9xi64>
        %alloc_60 = memref.alloc() : memref<12x12x9xi64>
        memref.alloca_scope.return %c8446_i16 : i16
      }
      %279 = vector.extract_strided_slice %166 {offsets = [0], sizes = [8], strides = [1]} : vector<9xf32> to vector<8xf32>
      %280 = arith.maxsi %extracted, %true : i1
      %281 = vector.extract_strided_slice %46 {offsets = [7], sizes = [5], strides = [1]} : vector<12x9xf32> to vector<5x9xf32>
      %from_elements_53 = tensor.from_elements %true_0, %extracted_20, %extracted_20, %extracted, %false_27, %false_1, %false_27, %extracted, %false_1, %extracted_20, %true, %extracted_20, %false_27, %false_27, %false_27, %false, %extracted, %true, %false_27, %true_0, %extracted_20, %false, %false_1, %extracted, %extracted, %false, %false_1, %true, %extracted_20, %false_1, %extracted, %false_27, %false, %false_1, %true, %false, %false_27, %false, %false_27, %true_0, %false, %true_0, %extracted_20, %true_0, %false_1, %true_0, %true, %false_27, %extracted, %true_0, %true_0, %false, %true_0, %false_27, %false, %extracted_20, %false_27, %false_1, %true_0, %false_1, %extracted, %false_27, %true, %extracted_20, %extracted, %extracted, %false_27, %true, %false_1, %false, %false_1, %false_1, %true, %true_0, %true_0, %true_0, %true_0, %false_1, %false_27, %true, %extracted, %true_0, %false_27, %false_1, %false_27, %true, %false, %true, %extracted_20, %extracted, %true_0, %true_0, %true, %false, %false, %false, %extracted_20, %false_27, %false_27, %true, %true, %true_0, %false_27, %extracted, %extracted, %true, %true, %false : tensor<12x9xi1>
      %282 = math.round %6 : tensor<9x12x6xf32>
      linalg.yield %out : f32
    } -> tensor<9x12x6xf32>
    %rank_42 = tensor.rank %15 : tensor<12x12x9xi1>
    %223 = math.atan2 %6, %6 : tensor<9x12x6xf32>
    %224 = math.ipowi %12, %12 : tensor<9x12x6xi1>
    %225 = scf.while (%arg3 = %c1038111321_i64) : (i64) -> i64 {
      %254 = math.fma %6, %6, %6 : tensor<9x12x6xf32>
      %255 = memref.load %alloc_7[%c1, %c5, %c4] : memref<9x12x6xf32>
      %rank_46 = tensor.rank %0 : tensor<9x12x6xi32>
      %256 = memref.load %alloc_18[%c3, %c6] : memref<12x12xf16>
      %257 = index.castu %216 : index to i32
      %258 = affine.max affine_map<(d0, d1) -> (d1 + d0, 0, d0)>(%c15, %104)
      %extracted_47 = tensor.extract %193[%c10, %c0, %c1] : tensor<12x12x9xi16>
      %259 = arith.addf %cst, %extracted_36 : f16
      scf.condition(%false) %c1038111321_i64 : i64
    } do {
    ^bb0(%arg3: i64):
      %254 = vector.splat %c1693220179_i64 : vector<12x9xi64>
      %255 = math.exp2 %201 : f32
      %256 = math.round %212 : tensor<12x9xf32>
      %generated_46 = tensor.generate %119 {
      ^bb0(%arg4: index, %arg5: index):
        %from_elements_50 = tensor.from_elements %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %148, %148, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %148, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %148, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %148, %148, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c1093709253_i32, %148, %148, %148, %148, %c833069524_i32, %148, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %c1093709253_i32, %148, %c1274542880_i32, %c1093709253_i32, %148, %148, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %148, %148, %c1274542880_i32, %c1093709253_i32, %148, %148, %148, %c833069524_i32, %c833069524_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %148, %c1274542880_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %c833069524_i32, %c1274542880_i32, %148, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %148, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %148, %148, %c1093709253_i32, %148, %148, %148, %148, %148, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %148, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %148, %148, %c1274542880_i32, %c833069524_i32, %148, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %148, %148, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %148, %c1274542880_i32, %148, %c1093709253_i32, %148, %148, %c833069524_i32, %148, %148, %c833069524_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %148, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %148, %148, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %148, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %148, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %148, %148, %c1274542880_i32, %c1274542880_i32, %148, %148, %148, %c833069524_i32, %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c1274542880_i32, %148, %148, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %148, %148, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %148, %c833069524_i32, %148, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %c833069524_i32, %c1093709253_i32, %c1274542880_i32, %148, %c833069524_i32, %148, %148, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %148, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %148, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %148, %c1274542880_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %148, %148, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1274542880_i32, %c1274542880_i32, %148, %148, %c833069524_i32, %c833069524_i32, %148, %c1274542880_i32, %148, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %148, %c1274542880_i32, %c1093709253_i32, %148, %148, %c1093709253_i32, %c1274542880_i32, %148, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %148, %148, %c1093709253_i32, %148, %c833069524_i32, %148, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %148, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %148, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %c1093709253_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %148, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %148, %148, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %148, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %148, %c1093709253_i32, %c833069524_i32, %148, %148, %148, %148, %c1274542880_i32, %148, %c1093709253_i32, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %148, %148, %148, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %c1274542880_i32, %148, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c1093709253_i32, %148, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %c833069524_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c833069524_i32, %148, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %148, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %148, %148, %c1093709253_i32, %c833069524_i32, %148, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1093709253_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c833069524_i32, %c1274542880_i32, %c1274542880_i32, %c1274542880_i32, %c833069524_i32, %c1093709253_i32, %c1093709253_i32, %c1093709253_i32, %c833069524_i32, %c1274542880_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32, %c1093709253_i32, %148, %c1093709253_i32, %c1274542880_i32, %c1093709253_i32 : tensor<9x12x6xi32>
        %269 = index.casts %c1038111321_i64 : i64 to index
        %270 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d0 - 4)>(%55, %269, %c5, %129)
        memref.tensor_store %5, %alloc_16 : memref<9x12x6xi16>
        tensor.yield %c1093709253_i32 : i32
      } : tensor<?x9xi32>
      %257 = arith.maxui %false_1, %false : i1
      %258 = vector.bitcast %110 : vector<12x12x9xf16> to vector<12x12x9xi16>
      %alloc_47 = memref.alloc() : memref<12x9x12xf16>
      %alloc_48 = memref.alloc() : memref<12x9xf16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %alloc_47, %alloc_48 : tensor<12x12x9xf16>, memref<12x9x12xf16>, memref<12x9xf16>) outs(%9 : tensor<12x12x9xf16>) {
      ^bb0(%in: f16, %in_50: f16, %in_51: f16, %out: f16):
        %alloca_52 = memref.alloca() : memref<12x12x9xf16>
        %269 = math.rsqrt %9 : tensor<12x12x9xf16>
        %270 = memref.realloc %alloc_19 : memref<2xf16> to memref<9xf16>
        vector.print %44 : vector<9xi16>
        %collapsed_53 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<9x12x6xi64> into tensor<108x6xi64>
        %271 = vector.load %alloc_17[%c6, %c8, %c4] : memref<9x12x6xi32>, vector<12x9xi32>
        %272 = memref.load %alloc_7[%c6, %c4, %c3] : memref<9x12x6xf32>
        %273 = vector.create_mask %c6, %c5, %c9 : vector<9x12x6xi1>
        %274 = index.sub %c13, %145
        %275 = vector.broadcast %c1093709253_i32 : i32 to vector<1x1xi32>
        %276 = vector.outerproduct %112, %144, %275 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
        %277 = math.ipowi %c1038111321_i64, %c1038111321_i64 : i64
        %278 = math.rsqrt %cst_2 : f32
        bufferization.dealloc_tensor %expanded : tensor<12x9x1xi32>
        %279 = math.log %137 : f32
        %280 = arith.andi %c8446_i16, %c27696_i16 : i16
        %281 = math.atan2 %9, %9 : tensor<12x12x9xf16>
        %282 = memref.atomic_rmw andi %c27696_i16, %alloc_9[%c2, %c10, %c1] : (i16, memref<12x12x9xi16>) -> i16
        %283 = arith.maxsi %c1093709253_i32, %c1274542880_i32 : i32
        vector.print %166 : vector<9xf32>
        %284 = arith.remui %c8446_i16, %c-16107_i16 : i16
        %285 = math.fma %extracted_36, %extracted_36, %in : f16
        %286 = vector.multi_reduction <or>, %41, %41 [] : vector<9xi32> to vector<9xi32>
        %287 = vector.broadcast %rank_42 : index to vector<6xindex>
        %288 = vector.broadcast %false : i1 to vector<6xi1>
        %289 = vector.broadcast %cst_28 : f32 to vector<6xf32>
        vector.scatter %alloc_14[%c0, %c5] [%287], %288, %289 : memref<12x9xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        memref.assume_alignment %185, 4 : memref<9x12x6xf32>
        %290 = arith.shli %extracted_20, %true : i1
        %291 = bufferization.clone %alloc : memref<2x2xi32> to memref<2x2xi32>
        memref.tensor_store %2, %alloc_10 : memref<12x12x9xi1>
        %false_54 = index.bool.constant false
        %292 = index.divu %c3, %c6
        %293 = math.ipowi %2, %15 : tensor<12x12x9xi1>
        %294 = vector.reduction <and>, %147 : vector<1xi16> into i16
        %295 = affine.max affine_map<(d0, d1, d2) -> ((((-d2) ceildiv 64) mod 16) floordiv 8 + 4, (-d2) mod 64)>(%rank_42, %119, %c4)
        linalg.yield %cst : f16
      } -> tensor<12x12x9xf16>
      %260 = memref.load %alloc_3[%c2, %c6, %c3] : memref<9x12x6xf32>
      %261 = scf.if %extracted_20 -> (i64) {
        %269 = arith.minf %201, %cst_2 : f32
        %270 = math.log %212 : tensor<12x9xf32>
        %271 = vector.flat_transpose %128 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %272 = math.ipowi %c27696_i16, %c8446_i16 : i16
        %273 = vector.create_mask %50, %c13 : vector<2x2xi1>
        %274 = vector.insertelement %c8446_i16, %19[%c3 : index] : vector<9xi16>
        %false_50 = index.bool.constant false
        %275 = math.roundeven %137 : f32
        scf.yield %arg3 : i64
      } else {
        %269 = index.sub %158, %104
        %270 = memref.load %171[%c7, %c2, %c1] : memref<9x12x6xi64>
        %271 = math.tanh %3 : tensor<12x9xf32>
        %272 = math.ipowi %c142236188_i64, %c1647380546_i64 : i64
        %273 = memref.realloc %alloc_19 : memref<2xf16> to memref<6xf16>
        %274 = vector.load %171[%c8, %c2, %c2] : memref<9x12x6xi64>, vector<2x2xi64>
        memref.assume_alignment %alloc_3, 8 : memref<9x12x6xf32>
        %275 = memref.load %alloc_15[%c9, %c4] : memref<12x9xf32>
        scf.yield %c142236188_i64 : i64
      }
      %262 = vector.flat_transpose %41 {columns = 3 : i32, rows = 3 : i32} : vector<9xi32> -> vector<9xi32>
      %263 = math.log1p %6 : tensor<9x12x6xf32>
      %264 = arith.andi %148, %c1093709253_i32 : i32
      %265 = scf.if %false_1 -> (f32) {
        %269 = index.divu %c5, %119
        %270 = math.ipowi %splat, %splat : tensor<2x2xi64>
        %271 = arith.xori %false_1, %false_1 : i1
        %272 = vector.create_mask %c15, %c3, %c1 : vector<9x12x6xi1>
        %false_50 = index.bool.constant false
        %273 = memref.atomic_rmw minu %c1274542880_i32, %alloc[%c0, %c1] : (i32, memref<2x2xi32>) -> i32
        %274 = arith.ori %true_0, %true_0 : i1
        %275 = bufferization.to_memref %9 : memref<12x12x9xf16>
        scf.yield %201 : f32
      } else {
        %269 = arith.negf %201 : f32
        %270 = math.floor %70 : tensor<9x12x6xf16>
        %271 = vector.multi_reduction <maxsi>, %19, %19 [] : vector<9xi16> to vector<9xi16>
        %272 = math.round %9 : tensor<12x12x9xf16>
        %273 = arith.minf %cst, %extracted_36 : f16
        %274 = index.maxu %rank_42, %c4
        %275 = vector.broadcast %cst_2 : f32 to vector<12x12x9xf32>
        %276 = vector.fma %275, %275, %275 : vector<12x12x9xf32>
        %277 = vector.splat %c1274542880_i32 : vector<12x9xi32>
        scf.yield %201 : f32
      }
      %266 = vector.broadcast %c8446_i16 : i16 to vector<1x1xi16>
      %267 = vector.outerproduct %147, %147, %266 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
      %alloc_49 = memref.alloc() : memref<12x12x9xi64>
      memref.copy %alloc_5, %alloc_49 : memref<12x12x9xi64> to memref<12x12x9xi64>
      %268 = vector.transpose %78, [0, 1] : vector<12x9xf32> to vector<12x9xf32>
      scf.yield %c1038111321_i64 : i64
    }
    %226 = vector.bitcast %166 : vector<9xf32> to vector<9xf32>
    %227 = vector.bitcast %180 : vector<9xi1> to vector<9xi1>
    %228 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
    %229 = vector.broadcast %extracted_36 : f16 to vector<9xf16>
    %230 = vector.maskedload %alloc_19[%c0], %227, %229 : memref<2xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
    %231 = vector.load %160[] : memref<f16>, vector<12x9xf16>
    %232 = arith.maxsi %148, %c833069524_i32 : i32
    %233 = math.expm1 %20 : tensor<2xf16>
    %234 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 2) ceildiv 8 - 2)>(%158, %93)
    %235 = vector.extract_strided_slice %226 {offsets = [2], sizes = [3], strides = [1]} : vector<9xf32> to vector<3xf32>
    %236 = index.mul %c4, %c2
    %237 = arith.subi %148, %c833069524_i32 : i32
    %238 = math.ceil %212 : tensor<12x9xf32>
    %239 = arith.shli %c142236188_i64, %c142236188_i64 : i64
    memref.store %cst_2, %alloc_7[%c7, %c6, %c5] : memref<9x12x6xf32>
    %240 = vector.bitcast %230 : vector<9xf16> to vector<9xf16>
    bufferization.dealloc_tensor %3 : tensor<12x9xf32>
    %241 = scf.if %false_1 -> (memref<2x2xf16>) {
      %254 = tensor.empty() : tensor<2xi32>
      %255 = math.fpowi %20, %254 : tensor<2xf16>, tensor<2xi32>
      %256 = vector.broadcast %137 : f32 to vector<2x2xf32>
      %257 = vector.fma %256, %256, %256 : vector<2x2xf32>
      %258 = arith.maxf %cst, %cst : f16
      %259 = vector.broadcast %cst_28 : f32 to vector<9x12x6xf32>
      %260 = vector.fma %259, %259, %259 : vector<9x12x6xf32>
      vector.print %110 : vector<12x12x9xf16>
      %261 = vector.extract_strided_slice %108 {offsets = [3], sizes = [2], strides = [1]} : vector<12x9xi1> to vector<2x9xi1>
      %262 = arith.remf %137, %137 : f32
      %263 = bufferization.to_tensor %165 : memref<12x9xf32>
      %alloc_46 = memref.alloc() : memref<2x2xf16>
      scf.yield %alloc_46 : memref<2x2xf16>
    } else {
      %generated_46 = tensor.generate %104 {
      ^bb0(%arg3: index, %arg4: index):
        %260 = math.exp %6 : tensor<9x12x6xf32>
        %261 = vector.broadcast %137 : f32 to vector<2x2xf32>
        %262 = vector.fma %261, %261, %261 : vector<2x2xf32>
        %263 = vector.transpose %112, [0] : vector<1xi32> to vector<1xi32>
        %264 = math.ctpop %15 : tensor<12x12x9xi1>
        tensor.yield %cst_28 : f32
      } : tensor<?x2xf32>
      %254 = arith.maxui %false_1, %true_0 : i1
      %255 = index.sub %c4, %c2
      %256 = vector.insert %cst_28, %235 [1] : f32 into vector<3xf32>
      %rank_47 = tensor.rank %14 : tensor<9x12x6xi64>
      %257 = math.round %3 : tensor<12x9xf32>
      %258 = arith.ceildivsi %c1647380546_i64, %c1693220179_i64 : i64
      %259 = vector.splat %cst_2 : vector<2x2xf32>
      %alloc_48 = memref.alloc() : memref<2x2xf16>
      scf.yield %alloc_48 : memref<2x2xf16>
    }
    %242 = math.round %cst_2 : f32
    %243 = vector.insert %201, %226 [4] : f32 into vector<9xf32>
    %244 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d0 * 2 + 8) * 2 - d0)>(%145, %234, %c8, %c5)
    %245 = memref.load %31[%c8, %c10, %c5] : memref<9x12x6xf32>
    %246 = vector.multi_reduction <and>, %44, %c27696_i16 [0] : vector<9xi16> to i16
    %247 = arith.subi %true_0, %false_27 : i1
    %248 = vector.load %alloc_11[%c9, %c8] : memref<12x9xi32>, vector<2x2xi32>
    %collapsed = tensor.collapse_shape %expanded_29 [[0, 1], [2, 3]] : tensor<9x12x6x1xi1> into tensor<108x6xi1>
    %249 = math.expm1 %extracted_36 : f16
    %alloca_43 = memref.alloca() : memref<9x12x6xi64>
    %250 = tensor.empty() : tensor<f16>
    %251 = linalg.copy ins(%21 : tensor<f16>) outs(%250 : tensor<f16>) -> tensor<f16>
    %alloc_44 = memref.alloc() : memref<6x9x12xf32>
    linalg.transpose ins(%alloc_3 : memref<9x12x6xf32>) outs(%alloc_44 : memref<6x9x12xf32>) permutation = [2, 0, 1] 
    %alloc_45 = memref.alloc() : memref<12xi1>
    linalg.reduce ins(%15 : tensor<12x12x9xi1>) outs(%alloc_45 : memref<12xi1>) dimensions = [1, 2] 
      (%in: i1, %init: i1) {
        %254 = arith.remsi %c1274542880_i32, %c1274542880_i32 : i32
        scf.if %init {
          %261 = arith.shrui %c1093709253_i32, %148 : i32
          %262 = arith.divf %cst, %cst : f16
          %263 = math.floor %cst : f16
          %expanded_47 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<12x9xi64> into tensor<12x9x1xi64>
          %264 = affine.load %155[%c7, %c2] : memref<2x2xi32>
          %265 = math.fma %21, %251, %251 : tensor<f16>
          %alloca_48 = memref.alloca() : memref<12x9xf32>
          %266 = math.roundeven %9 : tensor<12x12x9xf16>
        } else {
          %261 = math.floor %201 : f32
          %splat_47 = tensor.splat %c27696_i16 : tensor<12x12x9xi16>
          %262 = vector.reduction <add>, %180 : vector<9xi1> into i1
          %263 = math.log10 %9 : tensor<12x12x9xf16>
          %alloc_48 = memref.alloc() : memref<12x12x9xi16>
          %264 = arith.addi %c-16107_i16, %c-16107_i16 : i16
          %265 = bufferization.to_memref %generated_38 : memref<?x?x?xi1>
          %266 = index.add %c2, %c6
        }
        %255 = index.casts %false_27 : i1 to index
        %256 = vector.extract %112[0] : vector<1xi32>
        %257 = arith.shli %false_27, %in : i1
        %258 = arith.minsi %false_1, %extracted_20 : i1
        %259 = vector.matrix_multiply %147, %44 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi16>, vector<9xi16>) -> vector<9xi16>
        %260 = math.ctpop %7 : tensor<2x2xi1>
        %true_46 = arith.constant true
        linalg.yield %true_46 : i1
      }
    %252 = scf.parallel (%arg3, %arg4) = (%c9, %139) to (%145, %c9) step (%c6, %c6) init (%110) -> vector<12x12x9xf16> {
      %254 = arith.remf %extracted_36, %cst : f16
      %255 = math.expm1 %212 : tensor<12x9xf32>
      %256 = math.powf %21, %250 : tensor<f16>
      %alloc_46 = memref.alloc() : memref<12x6xi32>
      %257 = tensor.empty() : tensor<12xi32>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %257, %8 : memref<12x6xi32>, tensor<12xi32>, tensor<9x12x6xi32>) outs(%0 : tensor<9x12x6xi32>) {
      ^bb0(%in: i32, %in_50: i32, %in_51: i32, %out: i32):
        %true_52 = index.bool.constant true
        %269 = arith.ceildivsi %c1038111321_i64, %c1038111321_i64 : i64
        %270 = tensor.empty() : tensor<9x12x6xi1>
        %271 = index.casts %c142236188_i64 : i64 to index
        %extracted_53 = tensor.extract %generated_38[%c0, %c0, %c0] : tensor<?x?x?xi1>
        %272 = math.log10 %137 : f32
        %cast_54 = tensor.cast %5 : tensor<9x12x6xi16> to tensor<?x?x?xi16>
        %273 = math.exp %transposed : tensor<9x12x12xf16>
        %274 = math.round %6 : tensor<9x12x6xf32>
        %275 = index.sub %89, %c1
        %276 = math.tan %137 : f32
        %277 = index.floordivs %c12, %214
        bufferization.dealloc_tensor %6 : tensor<9x12x6xf32>
        %278 = affine.min affine_map<(d0) -> (d0 - d0 mod 4 + 16, d0 mod 4)>(%145)
        %279 = arith.xori %true, %extracted : i1
        %280 = math.exp %21 : tensor<f16>
        %281 = affine.load %185[%c15, %c14, %c12] : memref<9x12x6xf32>
        bufferization.dealloc_tensor %9 : tensor<12x12x9xf16>
        %282 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %47, %47, %282 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
        %dest_55, %accumulated_value_56 = vector.scan <xor>, %184, %74 {inclusive = true, reduction_dim = 1 : i64} : vector<12x12x9xi1>, vector<12x9xi1>
        %284 = math.log %250 : tensor<f16>
        %285 = vector.load %alloc_17[%c3, %c8, %c1] : memref<9x12x6xi32>, vector<12x12x9xi32>
        %286 = math.ctpop %c8446_i16 : i16
        %287 = arith.floordivsi %false_27, %true_0 : i1
        %288 = math.exp2 %20 : tensor<2xf16>
        %289 = vector.broadcast %246 : i16 to vector<1x1xi16>
        %290 = vector.outerproduct %147, %147, %289 {kind = #vector.kind<maxui>} : vector<1xi16>, vector<1xi16>
        vector.print %74 : vector<12x9xi1>
        %291 = arith.maxsi %in, %in : i32
        %292 = arith.divf %cst, %extracted_36 : f16
        %293 = arith.remf %cst, %extracted_36 : f16
        memref.copy %173, %alloc_19 : memref<2xf16> to memref<2xf16>
        %294 = bufferization.to_memref %13 : memref<12x9xi64>
        linalg.yield %c1093709253_i32 : i32
      } -> tensor<9x12x6xi32>
      %259 = math.atan2 %20, %20 : tensor<2xf16>
      %260 = arith.maxui %false, %false_1 : i1
      %from_elements_47 = tensor.from_elements %c27696_i16, %c8446_i16, %c-16107_i16, %c27696_i16 : tensor<2x2xi16>
      %261 = vector.flat_transpose %40 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %262 = math.atan %201 : f32
      %263 = arith.minsi %false_27, %false_27 : i1
      %264 = vector.flat_transpose %228 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
      %265 = math.tanh %cst : f16
      %generated_48 = tensor.generate %c1, %89 {
      ^bb0(%arg5: index, %arg6: index):
        %269 = memref.realloc %alloc_45 : memref<12xi1> to memref<6xi1>
        %270 = vector.transpose %228, [0] : vector<9xi16> to vector<9xi16>
        %271 = math.atan2 %20, %20 : tensor<2xf16>
        %from_elements_50 = tensor.from_elements %cst, %cst, %cst, %cst, %extracted_36, %extracted_36, %cst, %cst, %cst, %extracted_36, %cst, %cst, %extracted_36, %cst, %cst, %cst, %extracted_36, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %cst, %cst, %cst, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %cst, %cst, %cst, %cst, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %cst, %cst, %cst, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %cst, %cst, %cst, %extracted_36, %cst, %cst, %extracted_36, %cst, %cst, %cst, %cst, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %extracted_36, %cst, %extracted_36, %cst, %extracted_36, %cst, %cst, %cst, %cst, %extracted_36, %cst, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %cst, %extracted_36, %cst, %cst, %extracted_36, %extracted_36, %extracted_36, %cst, %extracted_36, %extracted_36, %cst, %cst, %extracted_36 : tensor<12x9xf16>
        tensor.yield %148 : i32
      } : tensor<?x?xi32>
      %266 = affine.max affine_map<(d0, d1) -> (d0 * 32 + 16)>(%c0, %rank)
      %267 = index.sub %c2, %158
      %true_49 = index.bool.constant true
      %268 = vector.broadcast %cst : f16 to vector<12x12x9xf16>
      scf.reduce(%268)  : vector<12x12x9xf16> {
      ^bb0(%arg5: vector<12x12x9xf16>, %arg6: vector<12x12x9xf16>):
        %269 = math.ipowi %7, %7 : tensor<2x2xi1>
        %270 = math.exp2 %22 : tensor<f16>
        %271 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
        %272 = arith.maxsi %false_27, %extracted : i1
        %273 = vector.extract_strided_slice %240 {offsets = [7], sizes = [2], strides = [1]} : vector<9xf16> to vector<2xf16>
        %274 = vector.splat %cst_2 : vector<12x12x9xf32>
        %275 = math.atan %9 : tensor<12x12x9xf16>
        %276 = vector.bitcast %78 : vector<12x9xf32> to vector<12x9xf32>
        %277 = vector.broadcast %extracted_36 : f16 to vector<12x12x9xf16>
        scf.reduce.return %277 : vector<12x12x9xf16>
      }
      scf.yield
    }
    %253 = affine.vector_load %165[%53, %c14] : memref<12x9xf32>, vector<2xf32>
    affine.vector_store %180, %alloc_8[%214, %c12, %178] : memref<9x12x6xi1>, vector<9xi1>
    vector.print %19 : vector<9xi16>
    vector.print %39 : vector<9xi32>
    vector.print %40 : vector<9xi1>
    vector.print %41 : vector<9xi32>
    vector.print %44 : vector<9xi16>
    vector.print %46 : vector<12x9xf32>
    vector.print %47 : vector<12x9xf32>
    vector.print %51 : vector<2x2xi1>
    vector.print %74 : vector<12x9xi1>
    vector.print %78 : vector<12x9xf32>
    vector.print %108 : vector<12x9xi1>
    vector.print %110 : vector<12x12x9xf16>
    vector.print %112 : vector<1xi32>
    vector.print %128 : vector<9xi1>
    vector.print %144 : vector<1xi32>
    vector.print %147 : vector<1xi16>
    vector.print %151 : vector<12xi1>
    vector.print %166 : vector<9xf32>
    vector.print %170 : vector<12x9xi1>
    vector.print %180 : vector<9xi1>
    vector.print %182 : vector<9x12x6xi16>
    vector.print %184 : vector<12x12x9xi1>
    vector.print %226 : vector<9xf32>
    vector.print %227 : vector<9xi1>
    vector.print %228 : vector<9xi16>
    vector.print %229 : vector<9xf16>
    vector.print %230 : vector<9xf16>
    vector.print %231 : vector<12x9xf16>
    vector.print %235 : vector<3xf32>
    vector.print %240 : vector<9xf16>
    vector.print %248 : vector<2x2xi32>
    vector.print %253 : vector<2xf32>
    vector.print %c27696_i16 : i16
    vector.print %true : i1
    vector.print %true_0 : i1
    vector.print %c-16107_i16 : i16
    vector.print %false : i1
    vector.print %c833069524_i32 : i32
    vector.print %c8446_i16 : i16
    vector.print %false_1 : i1
    vector.print %c1038111321_i64 : i64
    vector.print %cst : f16
    vector.print %cst_2 : f32
    vector.print %c1693220179_i64 : i64
    vector.print %c1647380546_i64 : i64
    vector.print %c1093709253_i32 : i32
    vector.print %c142236188_i64 : i64
    vector.print %c1274542880_i32 : i32
    vector.print %extracted : i1
    vector.print %extracted_20 : i1
    vector.print %false_27 : i1
    vector.print %cst_28 : f32
    vector.print %137 : f32
    vector.print %148 : i32
    vector.print %extracted_36 : f16
    vector.print %201 : f32
    vector.print %246 : i16
    return
  }
}
