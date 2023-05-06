module {
  func.func @func1(%arg0: memref<4x4xf32>, %arg1: vector<9x4xf16>) {
    %cst = arith.constant 0x4E069CE2 : f32
    %cst_0 = arith.constant 0x4D09E2E7 : f32
    %cst_1 = arith.constant 2.646400e+04 : f16
    %c213252639_i32 = arith.constant 213252639 : i32
    %c22774_i16 = arith.constant 22774 : i16
    %c266518988_i64 = arith.constant 266518988 : i64
    %true = arith.constant true
    %c-4654_i16 = arith.constant -4654 : i16
    %c1933136931_i32 = arith.constant 1933136931 : i32
    %cst_2 = arith.constant 1.55558042E+9 : f32
    %c1833243423_i32 = arith.constant 1833243423 : i32
    %c1329708747_i32 = arith.constant 1329708747 : i32
    %c1796693505_i32 = arith.constant 1796693505 : i32
    %true_3 = arith.constant true
    %true_4 = arith.constant true
    %c590233149_i64 = arith.constant 590233149 : i64
    %0 = tensor.empty() : tensor<4x4x9xi1>
    %1 = tensor.empty() : tensor<4x4x9xi1>
    %2 = tensor.empty() : tensor<4x4x9xi1>
    %3 = tensor.empty() : tensor<9x4xf32>
    %4 = tensor.empty() : tensor<4x4xi64>
    %5 = tensor.empty() : tensor<9x4xf16>
    %6 = tensor.empty() : tensor<4x4xf32>
    %7 = tensor.empty() : tensor<9x4xi1>
    %8 = tensor.empty() : tensor<9x4xf16>
    %9 = tensor.empty() : tensor<9x4xf32>
    %10 = tensor.empty() : tensor<9x4xi1>
    %11 = tensor.empty() : tensor<9x4xi16>
    %12 = tensor.empty() : tensor<4x4xi64>
    %13 = tensor.empty() : tensor<9x4xi1>
    %14 = tensor.empty() : tensor<9x4xf32>
    %15 = tensor.empty() : tensor<9x4xi16>
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
    %alloc = memref.alloc() : memref<4x4xf32>
    %alloc_5 = memref.alloc() : memref<9x4xi16>
    %alloc_6 = memref.alloc() : memref<9x4xi16>
    %alloc_7 = memref.alloc() : memref<9x4xi32>
    %alloc_8 = memref.alloc() : memref<9x4xi1>
    %alloc_9 = memref.alloc() : memref<9x4xi32>
    %alloc_10 = memref.alloc() : memref<4x4xi1>
    %alloc_11 = memref.alloc() : memref<4x4x9xf16>
    %alloc_12 = memref.alloc() : memref<4x4x9xi64>
    %alloc_13 = memref.alloc() : memref<9x4xf32>
    %alloc_14 = memref.alloc() : memref<4x4x9xi64>
    %alloc_15 = memref.alloc() : memref<9x4xi64>
    %alloc_16 = memref.alloc() : memref<9x4xi32>
    %alloc_17 = memref.alloc() : memref<9x4xi1>
    %alloc_18 = memref.alloc() : memref<9x4xf16>
    %alloc_19 = memref.alloc() : memref<4x4x9xi32>
    %16 = tensor.empty() : tensor<9x4xi16>
    %17 = linalg.copy ins(%11 : tensor<9x4xi16>) outs(%16 : tensor<9x4xi16>) -> tensor<9x4xi16>
    %18 = tensor.empty() : tensor<4x9xi1>
    %transposed = linalg.transpose ins(%10 : tensor<9x4xi1>) outs(%18 : tensor<4x9xi1>) permutation = [1, 0] 
    %alloc_20 = memref.alloc() : memref<9xi1>
    linalg.reduce ins(%0 : tensor<4x4x9xi1>) outs(%alloc_20 : memref<9xi1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %259 = arith.divui %true, %init : i1
        %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d2, d1 mod 8, d1 mod 8)>(%c2, %c2, %c13, %c13)
        %261 = math.ipowi %12, %4 : tensor<4x4xi64>
        %262 = arith.addf %cst_2, %cst : f32
        %263 = math.copysign %6, %6 : tensor<4x4xf32>
        %alloc_50 = memref.alloc() : memref<4x4x9xi1>
        memref.tensor_store %2, %alloc_50 : memref<4x4x9xi1>
        %true_51 = index.bool.constant true
        %264 = arith.divf %cst_0, %cst : f32
        %false_52 = arith.constant false
        linalg.yield %false_52 : i1
      }
    scf.parallel (%arg2) = (%c14) to (%c4) step (%c5) {
      %259 = vector.broadcast %true_3 : i1 to vector<4xi1>
      %260 = vector.flat_transpose %259 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %261 = math.fpowi %cst, %c1329708747_i32 : f32, i32
      %alloc_50 = memref.alloc() : memref<4x4xi32>
      %262 = vector.broadcast %c213252639_i32 : i32 to vector<9x4xi32>
      %263 = vector.broadcast %true_4 : i1 to vector<9x4xi1>
      %264 = vector.gather %alloc_50[%c4, %c12] [%262], %263, %262 : memref<4x4xi32>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi32> into vector<9x4xi32>
      %265 = arith.minf %cst, %cst_2 : f32
      %266 = arith.shli %true, %true_4 : i1
      %alloc_51 = memref.alloc() : memref<4x4x9xi1>
      memref.tensor_store %1, %alloc_51 : memref<4x4x9xi1>
      %rank_52 = tensor.rank %2 : tensor<4x4x9xi1>
      %267 = arith.subi %true, %true : i1
      %268 = tensor.empty() : tensor<4x4xi32>
      %269 = math.fpowi %6, %268 : tensor<4x4xf32>, tensor<4x4xi32>
      %270 = vector.reduction <minsi>, %260 : vector<4xi1> into i1
      %271 = vector.insert %259, %263 [5] : vector<4xi1> into vector<9x4xi1>
      %272 = arith.muli %c1796693505_i32, %c1329708747_i32 : i32
      %273 = vector.broadcast %c1833243423_i32 : i32 to vector<9xi32>
      %dest_53, %accumulated_value_54 = vector.scan <or>, %264, %273 {inclusive = true, reduction_dim = 1 : i64} : vector<9x4xi32>, vector<9xi32>
      %274 = math.round %8 : tensor<9x4xf16>
      %splat = tensor.splat %cst_1 : tensor<9x4xf16>
      %from_elements_55 = tensor.from_elements %c590233149_i64, %c266518988_i64, %c590233149_i64, %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %c266518988_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %c266518988_i64 : tensor<9x4xi64>
      scf.yield
    }
    %19 = affine.vector_load %alloc_17[%c10, %c3] : memref<9x4xi1>, vector<4xi1>
    affine.vector_store %19, %alloc_8[%c9, %c15] : memref<9x4xi1>, vector<4xi1>
    %alloc_21 = memref.alloc() : memref<9xi1>
    %20 = tensor.empty() : tensor<i1>
    %21 = linalg.dot ins(%alloc_20, %alloc_21 : memref<9xi1>, memref<9xi1>) outs(%20 : tensor<i1>) -> tensor<i1>
    %22 = math.round %3 : tensor<9x4xf32>
    %23 = vector.insert %true, %19 [0] : i1 into vector<4xi1>
    %24 = math.absf %cst_1 : f16
    %alloc_22 = memref.alloc() : memref<4x4xi64>
    memref.tensor_store %4, %alloc_22 : memref<4x4xi64>
    %25 = math.roundeven %6 : tensor<4x4xf32>
    %26 = memref.atomic_rmw addf %cst, %alloc[%c2, %c1] : (f32, memref<4x4xf32>) -> f32
    %27 = index.floordivs %c11, %c9
    %28 = math.powf %8, %8 : tensor<9x4xf16>
    %29 = memref.realloc %alloc_21 : memref<9xi1> to memref<9xi1>
    %from_elements = tensor.from_elements %true, %true_4, %true, %true_4, %true, %true, %true_4, %true_3, %true, %true_3, %true_3, %true_4, %true_4, %true, %true_3, %true_3, %true_4, %true, %true_4, %true, %true, %true, %true_4, %true, %true_3, %true_3, %true, %true_4, %true_4, %true_4, %true, %true, %true_3, %true_3, %true_4, %true_4 : tensor<9x4xi1>
    %30 = arith.divsi %c266518988_i64, %c266518988_i64 : i64
    %expanded = tensor.expand_shape %18 [[0], [1, 2]] : tensor<4x9xi1> into tensor<4x9x1xi1>
    %31 = vector.extract_strided_slice %19 {offsets = [1], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
    %generated = tensor.generate %c10, %c4 {
    ^bb0(%arg2: index, %arg3: index):
      %259 = vector.broadcast %arg2 : index to vector<5xindex>
      %260 = vector.broadcast %true_3 : i1 to vector<5xi1>
      vector.scatter %alloc_10[%c1, %c1] [%259], %260, %260 : memref<4x4xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      %261 = arith.maxf %cst_0, %cst_0 : f32
      %262 = arith.remsi %c1933136931_i32, %c1933136931_i32 : i32
      %263 = math.absi %true_4 : i1
      tensor.yield %cst : f32
    } : tensor<?x?xf32>
    %32 = arith.maxf %cst_1, %cst_1 : f16
    %33 = arith.shrui %true, %true : i1
    %34 = index.casts %c14 : index to i32
    %35 = vector.extract_strided_slice %31 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
    %36 = arith.remui %c1329708747_i32, %c1933136931_i32 : i32
    %37 = math.atan2 %8, %8 : tensor<9x4xf16>
    %38 = arith.remui %c213252639_i32, %c213252639_i32 : i32
    %39 = arith.addi %c1796693505_i32, %c1796693505_i32 : i32
    %40 = math.tanh %cst : f32
    %41 = memref.realloc %alloc_20 : memref<9xi1> to memref<4xi1>
    %extracted = tensor.extract %11[%c4, %c3] : tensor<9x4xi16>
    %42 = vector.broadcast %true : i1 to vector<2x2xi1>
    %43 = vector.outerproduct %31, %31, %42 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
    memref.store %c1833243423_i32, %alloc_7[%c8, %c0] : memref<9x4xi32>
    %44 = index.maxu %c6, %c13
    %45 = vector.load %alloc_9[%c3, %c2] : memref<9x4xi32>, vector<4x4xi32>
    %true_23 = index.bool.constant true
    %46 = arith.negf %cst : f32
    memref.tensor_store %13, %alloc_8 : memref<9x4xi1>
    %47 = math.exp2 %6 : tensor<4x4xf32>
    %48 = arith.divui %true_3, %true_4 : i1
    %49 = vector.extract_strided_slice %31 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
    %50 = vector.splat %c14 : vector<9x4xindex>
    %true_24 = index.bool.constant true
    %51 = affine.if affine_set<(d0, d1, d2, d3) : (d1 - d0 + 2 >= 0, d1 + d0 - 16 >= 0)>(%c8, %c7, %c8, %c11) -> i1 {
      %259 = arith.negf %cst_0 : f32
      %260 = index.castu %c1 : index to i32
      %261 = vector.broadcast %c10 : index to vector<5xindex>
      %262 = vector.broadcast %true_4 : i1 to vector<5xi1>
      %263 = vector.broadcast %cst_1 : f16 to vector<5xf16>
      vector.scatter %alloc_11[%c3, %c3, %c5] [%261], %262, %263 : memref<4x4x9xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
      %264 = math.ctlz %2 : tensor<4x4x9xi1>
      %265 = vector.splat %true_4 : vector<4x4xi1>
      %266 = bufferization.clone %alloc_6 : memref<9x4xi16> to memref<9x4xi16>
      %267 = arith.xori %c22774_i16, %c22774_i16 : i16
      %268 = math.powf %14, %3 : tensor<9x4xf32>
      affine.yield %true_4 : i1
    } else {
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %35, %35, %true_23 : vector<1xi1>, vector<1xi1> into i1
      %260 = arith.muli %c1796693505_i32, %c1329708747_i32 : i32
      %261 = affine.load %alloc_14[%c2, %c15, %c6] : memref<4x4x9xi64>
      %262 = math.ctpop %2 : tensor<4x4x9xi1>
      %263 = arith.remsi %c22774_i16, %c-4654_i16 : i16
      %c12795_i16 = arith.constant 12795 : i16
      %264 = math.ctpop %21 : tensor<i1>
      %265 = math.log10 %9 : tensor<9x4xf32>
      affine.yield %true : i1
    }
    %52 = math.tan %6 : tensor<4x4xf32>
    %alloc_25 = memref.alloc() : memref<4x4x9xf32>
    %53 = vector.broadcast %cst_2 : f32 to vector<9x4xf32>
    %54 = vector.broadcast %true : i1 to vector<9x4xi1>
    %55 = vector.broadcast %c1796693505_i32 : i32 to vector<9x4xi32>
    %56 = vector.gather %alloc_25[%c2, %c7, %c5] [%55], %54, %53 : memref<4x4x9xf32>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xf32> into vector<9x4xf32>
    %57 = arith.divui %c-4654_i16, %c-4654_i16 : i16
    %extracted_26 = tensor.extract %16[%c5, %c1] : tensor<9x4xi16>
    %false = index.bool.constant false
    %58 = vector.insertelement %true_23, %31[%c0 : index] : vector<2xi1>
    %59 = arith.mulf %cst_2, %cst_0 : f32
    %60 = arith.divf %cst, %cst_2 : f32
    %61 = arith.remui %c266518988_i64, %c590233149_i64 : i64
    %62 = vector.broadcast %cst_1 : f16 to vector<9x4xf16>
    %63 = vector.gather %alloc_18[%c13, %c2] [%55], %54, %62 : memref<9x4xf16>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xf16> into vector<9x4xf16>
    %64 = arith.shli %true_24, %true_23 : i1
    %65 = math.ipowi %2, %2 : tensor<4x4x9xi1>
    memref.assume_alignment %alloc_7, 2 : memref<9x4xi32>
    %66 = arith.shrui %c1329708747_i32, %c1833243423_i32 : i32
    %true_27 = arith.constant true
    %false_28 = arith.constant false
    %67 = vector.transfer_read %0[%c14, %c7, %c5], %false_28 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<4x4x9xi1>, vector<4xi1>
    %68 = math.sqrt %cst_0 : f32
    %69 = index.ceildivu %c4, %c7
    %70 = vector.load %alloc_7[%c2, %c1] : memref<9x4xi32>, vector<4x4xi32>
    %71 = math.fpowi %cst_2, %c1329708747_i32 : f32, i32
    %72 = affine.for %arg2 = 0 to 113 iter_args(%arg3 = %8) -> (tensor<9x4xf16>) {
      affine.yield %5 : tensor<9x4xf16>
    }
    %73 = math.log2 %3 : tensor<9x4xf32>
    %alloc_29 = memref.alloc() : memref<4x4x9xi16>
    %74 = index.maxu %c6, %c7
    %rank = tensor.rank %from_elements : tensor<9x4xi1>
    %75 = index.castu %c8 : index to i32
    %76 = index.casts %true_24 : i1 to index
    %true_30 = arith.constant true
    %77 = math.ceil %cst_1 : f16
    %78 = math.atan2 %9, %3 : tensor<9x4xf32>
    %79 = math.ceil %6 : tensor<4x4xf32>
    %80 = math.tan %8 : tensor<9x4xf16>
    %expanded_31 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<4x4xi64> into tensor<4x4x1xi64>
    %81 = arith.maxsi %false, %true_3 : i1
    %82 = vector.broadcast %true_27 : i1 to vector<4x4x9xi1>
    %83 = vector.broadcast %c5 : index to vector<4xindex>
    vector.scatter %alloc_8[%c8, %c0] [%83], %19, %19 : memref<9x4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
    %84 = math.ceil %5 : tensor<9x4xf16>
    %85 = vector.load %alloc_9[%c0, %c1] : memref<9x4xi32>, vector<9x4xi32>
    %86 = arith.remui %c22774_i16, %c-4654_i16 : i16
    scf.execute_region {
      %259 = math.cttz %20 : tensor<i1>
      %260 = affine.if affine_set<(d0, d1) : (-(((d0 + d1 ceildiv 64) mod 2 + d0) mod 64) >= 0, (d1 ceildiv 64) * -32 + d0 + d1 ceildiv 64 >= 0)>(%c14, %c6) -> memref<9x4xf16> {
        %277 = arith.remui %c1796693505_i32, %c1933136931_i32 : i32
        %278 = vector.load %alloc_12[%c1, %c0, %c3] : memref<4x4x9xi64>, vector<9x4xi64>
        %279 = arith.negf %cst_1 : f16
        %cast_50 = tensor.cast %11 : tensor<9x4xi16> to tensor<?x?xi16>
        %280 = arith.remui %c1796693505_i32, %c1796693505_i32 : i32
        %from_elements_51 = tensor.from_elements %c1796693505_i32, %c1796693505_i32, %c1796693505_i32, %c213252639_i32, %c1933136931_i32, %c213252639_i32, %c1833243423_i32, %c1833243423_i32, %c213252639_i32, %c213252639_i32, %c1329708747_i32, %c1933136931_i32, %c1933136931_i32, %c1833243423_i32, %c1933136931_i32, %c1329708747_i32 : tensor<4x4xi32>
        %281 = index.divs %76, %c8
        %282 = math.roundeven %5 : tensor<9x4xf16>
        affine.yield %alloc_18 : memref<9x4xf16>
      } else {
        %277 = arith.remf %cst_1, %cst_1 : f16
        %278 = tensor.empty() : tensor<9x4xi32>
        %279 = math.fpowi %9, %278 : tensor<9x4xf32>, tensor<9x4xi32>
        %280 = vector.broadcast %cst_2 : f32 to vector<9x4xf32>
        %281 = index.castu %c266518988_i64 : i64 to index
        %282 = arith.muli %false, %true_23 : i1
        %283 = math.ipowi %20, %21 : tensor<i1>
        %284 = math.fma %8, %8, %8 : tensor<9x4xf16>
        %285 = vector.broadcast %c1833243423_i32 : i32 to vector<4xi32>
        %286 = vector.insert %285, %70 [2] : vector<4xi32> into vector<4x4xi32>
        affine.yield %alloc_18 : memref<9x4xf16>
      }
      %261 = affine.for %arg2 = 0 to 84 iter_args(%arg3 = %cst_2) -> (f32) {
        affine.yield %cst_2 : f32
      }
      %262 = vector.splat %c4 : vector<4x4xindex>
      %263 = memref.realloc %alloc_20 : memref<9xi1> to memref<4xi1>
      %264 = vector.broadcast %c1329708747_i32 : i32 to vector<4x9xi32>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %70, %85, %264 : vector<4x4xi32>, vector<9x4xi32> into vector<4x9xi32>
      memref.tensor_store %7, %alloc_17 : memref<9x4xi1>
      %266 = math.absf %cst : f32
      %267 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 mod 4)>(%c7, %c15, %c4, %c2)
      %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %70, %70, %70 : vector<4x4xi32>, vector<4x4xi32> into vector<4x4xi32>
      %269 = index.add %69, %44
      %270 = memref.atomic_rmw mulf %cst, %alloc[%c1, %c0] : (f32, memref<4x4xf32>) -> f32
      %271 = vector.broadcast %false : i1 to vector<4x4xi1>
      %272 = vector.gather %alloc_19[%c10, %c1, %76] [%70], %271, %45 : memref<4x4x9xi32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi32> into vector<4x4xi32>
      %273 = arith.divui %true_23, %true_4 : i1
      %274 = tensor.empty() : tensor<4x4xi32>
      %275 = vector.gather %274[%c15, %27] [%55], %54, %55 : tensor<4x4xi32>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi32> into vector<9x4xi32>
      %276 = arith.addi %c1796693505_i32, %c1329708747_i32 : i32
      scf.yield
    }
    %87 = index.castu %c213252639_i32 : i32 to index
    %88 = vector.extract_strided_slice %56 {offsets = [7], sizes = [2], strides = [1]} : vector<9x4xf32> to vector<2x4xf32>
    %89 = bufferization.clone %alloc_18 : memref<9x4xf16> to memref<9x4xf16>
    %false_32 = index.bool.constant false
    %90 = math.fma %5, %8, %8 : tensor<9x4xf16>
    %91 = math.ctlz %0 : tensor<4x4x9xi1>
    %92 = index.castu %c3 : index to i32
    %93 = affine.max affine_map<(d0, d1, d2) -> (d0 + 64)>(%44, %c5, %76)
    %94 = arith.divf %cst_1, %cst_1 : f16
    %95 = arith.mulf %cst, %cst_2 : f32
    %96 = memref.realloc %alloc_21 : memref<9xi1> to memref<5xi1>
    %97 = arith.divf %cst_1, %cst_1 : f16
    %98 = math.cttz %c1796693505_i32 : i32
    %c-19013_i16 = arith.constant -19013 : i16
    %99 = index.floordivs %rank, %87
    %100 = affine.if affine_set<(d0) : (d0 + 128 == 0)>(%c6) -> memref<4x4xi16> {
      %259 = arith.shli %true_27, %true_27 : i1
      %260 = index.casts %c10 : index to i32
      %261 = affine.for %arg2 = 0 to 111 iter_args(%arg3 = %8) -> (tensor<9x4xf16>) {
        affine.yield %8 : tensor<9x4xf16>
      }
      %alloca_50 = memref.alloca() : memref<4x4xf32>
      %262 = memref.load %alloc_10[%c2, %c1] : memref<4x4xi1>
      %263 = arith.remui %true_4, %true_23 : i1
      %264 = arith.addi %c266518988_i64, %c590233149_i64 : i64
      %265 = math.powf %cst, %cst_2 : f32
      %alloc_51 = memref.alloc() : memref<4x4xi16>
      affine.yield %alloc_51 : memref<4x4xi16>
    } else {
      %259 = bufferization.clone %alloc : memref<4x4xf32> to memref<4x4xf32>
      %260 = vector.broadcast %cst : f32 to vector<4x4x9xf32>
      %261 = vector.broadcast %c1833243423_i32 : i32 to vector<4x4x9xi32>
      %262 = vector.gather %alloc_25[%93, %c10, %rank] [%261], %82, %260 : memref<4x4x9xf32>, vector<4x4x9xi32>, vector<4x4x9xi1>, vector<4x4x9xf32> into vector<4x4x9xf32>
      %263 = index.maxu %c3, %c4
      %264 = math.absi %0 : tensor<4x4x9xi1>
      %265 = index.maxs %c4, %93
      %266 = index.castu %c-4654_i16 : i16 to index
      %267 = math.ceil %14 : tensor<9x4xf32>
      %268 = index.ceildivu %c3, %c10
      %alloc_50 = memref.alloc() : memref<4x4xi16>
      affine.yield %alloc_50 : memref<4x4xi16>
    }
    %101 = index.maxs %c13, %c0
    %102 = vector.insertelement %true_23, %35[%93 : index] : vector<1xi1>
    %103 = vector.insertelement %true, %35[%74 : index] : vector<1xi1>
    %rank_33 = tensor.rank %expanded_31 : tensor<4x4x1xi64>
    %104 = vector.reduction <add>, %35 : vector<1xi1> into i1
    %105 = vector.broadcast %true : i1 to vector<4x4xi1>
    %106 = math.ipowi %c1933136931_i32, %c1933136931_i32 : i32
    %107 = tensor.empty() : tensor<9x4xi32>
    %108 = math.fpowi %14, %107 : tensor<9x4xf32>, tensor<9x4xi32>
    %109 = tensor.empty() : tensor<4x5xf16>
    %110 = tensor.empty() : tensor<9x5xf16>
    %111 = linalg.matmul ins(%5, %109 : tensor<9x4xf16>, tensor<4x5xf16>) outs(%110 : tensor<9x5xf16>) -> tensor<9x5xf16>
    %112 = arith.maxf %cst, %cst_2 : f32
    %113 = arith.divui %extracted, %extracted_26 : i16
    %114 = arith.shrsi %c-4654_i16, %extracted_26 : i16
    %115 = arith.divf %cst_2, %cst_0 : f32
    %116 = index.floordivs %c0, %c14
    %117 = arith.maxsi %c1329708747_i32, %c1833243423_i32 : i32
    %118 = index.maxu %c9, %c9
    %119 = math.sqrt %5 : tensor<9x4xf16>
    %120 = bufferization.clone %alloc_8 : memref<9x4xi1> to memref<9x4xi1>
    memref.tensor_store %11, %alloc_5 : memref<9x4xi16>
    %121 = scf.execute_region -> tensor<9x4xf32> {
      %259 = math.expm1 %110 : tensor<9x5xf16>
      %260 = index.maxs %c10, %rank_33
      %261 = vector.broadcast %true_3 : i1 to vector<5xi1>
      %262 = vector.maskedload %alloc_20[%c6], %261, %261 : memref<9xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %263 = index.maxs %87, %101
      %264 = arith.divui %extracted_26, %c22774_i16 : i16
      %265 = math.floor %6 : tensor<4x4xf32>
      %266 = math.round %5 : tensor<9x4xf16>
      %267 = index.ceildivu %c10, %c10
      %268 = math.ctpop %2 : tensor<4x4x9xi1>
      %269 = math.rsqrt %5 : tensor<9x4xf16>
      %270 = arith.xori %true_27, %true_4 : i1
      %alloc_50 = memref.alloc() : memref<4x4xf16>
      %271 = vector.splat %extracted_26 : vector<9x4xi16>
      %272 = math.exp2 %cst_1 : f16
      %273 = math.round %8 : tensor<9x4xf16>
      %274 = math.tanh %8 : tensor<9x4xf16>
      scf.yield %3 : tensor<9x4xf32>
    }
    %122 = vector.broadcast %87 : index to vector<9xindex>
    %123 = vector.broadcast %true : i1 to vector<9xi1>
    %124 = vector.broadcast %c1329708747_i32 : i32 to vector<9xi32>
    vector.scatter %alloc_16[%c8, %c0] [%122], %123, %124 : memref<9x4xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
    %125 = math.ctlz %20 : tensor<i1>
    %false_34 = arith.constant false
    memref.store %cst_2, %alloc_13[%c7, %c1] : memref<9x4xf32>
    %126 = math.roundeven %cst_0 : f32
    %127 = memref.realloc %alloc_21 : memref<9xi1> to memref<9xi1>
    %128 = math.tan %5 : tensor<9x4xf16>
    %129 = math.log2 %cst_0 : f32
    %130 = vector.broadcast %true_4 : i1 to vector<2x2xi1>
    %131 = vector.outerproduct %49, %49, %130 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
    %132 = affine.for %arg2 = 0 to 6 iter_args(%arg3 = %c1933136931_i32) -> (i32) {
      affine.yield %c213252639_i32 : i32
    }
    %133 = scf.index_switch %76 -> index 
    case 1 {
      %259 = vector.broadcast %cst : f32 to vector<9xf32>
      %dest_50, %accumulated_value_51 = vector.scan <maxf>, %56, %259 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xf32>, vector<9xf32>
      %260 = index.castu %c10 : index to i32
      %261 = memref.atomic_rmw minf %cst_1, %89[%c2, %c3] : (f16, memref<9x4xf16>) -> f16
      %262 = math.log2 %9 : tensor<9x4xf32>
      %263 = arith.maxui %extracted_26, %extracted : i16
      %264 = math.floor %110 : tensor<9x5xf16>
      %265 = vector.transpose %54, [0, 1] : vector<9x4xi1> to vector<9x4xi1>
      %266 = arith.divf %cst_0, %cst_2 : f32
      %267 = arith.divsi %true_23, %true : i1
      %268 = math.ceil %8 : tensor<9x4xf16>
      %269 = bufferization.clone %alloc : memref<4x4xf32> to memref<4x4xf32>
      %270 = math.copysign %8, %8 : tensor<9x4xf16>
      %271 = math.absf %8 : tensor<9x4xf16>
      %272 = index.castu %true_3 : i1 to index
      %273 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %274 = vector.multi_reduction <mul>, %88, %273 [1] : vector<2x4xf32> to vector<2xf32>
      %275 = arith.remsi %c590233149_i64, %c590233149_i64 : i64
      scf.yield %rank : index
    }
    case 2 {
      %259 = math.fpowi %14, %107 : tensor<9x4xf32>, tensor<9x4xi32>
      %260 = index.casts %44 : index to i32
      %261 = math.exp2 %5 : tensor<9x4xf16>
      %262 = math.ipowi %0, %1 : tensor<4x4x9xi1>
      %263 = index.ceildivu %101, %74
      %264 = index.sizeof
      %true_50 = arith.constant true
      %265 = vector.transfer_read %from_elements[%27, %c12], %true_50 : tensor<9x4xi1>, vector<4xi1>
      %266 = arith.subi %c22774_i16, %c22774_i16 : i16
      %267 = arith.negf %cst_2 : f32
      %268 = vector.reduction <minui>, %19 : vector<4xi1> into i1
      %269 = math.round %14 : tensor<9x4xf32>
      %from_elements_51 = tensor.from_elements %c-4654_i16, %c22774_i16, %c22774_i16, %extracted_26, %c22774_i16, %extracted_26, %extracted_26, %c22774_i16, %extracted_26, %extracted, %c-4654_i16, %c22774_i16, %extracted_26, %c22774_i16, %c-4654_i16, %extracted_26, %c-4654_i16, %c22774_i16, %c22774_i16, %extracted_26, %c-4654_i16, %extracted, %extracted, %c22774_i16, %extracted, %c-4654_i16, %extracted, %c-4654_i16, %c22774_i16, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted, %extracted, %extracted_26 : tensor<9x4xi16>
      %270 = vector.maskedload %120[%c3, %c2], %19, %19 : memref<9x4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %271 = math.floor %121 : tensor<9x4xf32>
      %272 = vector.extract_strided_slice %63 {offsets = [5], sizes = [3], strides = [1]} : vector<9x4xf16> to vector<3x4xf16>
      %rank_52 = tensor.rank %16 : tensor<9x4xi16>
      scf.yield %116 : index
    }
    default {
      %259 = vector.reduction <add>, %35 : vector<1xi1> into i1
      %260 = math.floor %cst_0 : f32
      %261 = arith.remui %c22774_i16, %extracted : i16
      %262 = affine.load %alloc_6[%c10, %c9] : memref<9x4xi16>
      %263 = arith.shli %extracted_26, %262 : i16
      %264 = math.tanh %3 : tensor<9x4xf32>
      %265 = math.floor %8 : tensor<9x4xf16>
      %266 = arith.minf %cst, %cst_0 : f32
      %267 = index.maxu %116, %c9
      %268 = math.round %6 : tensor<4x4xf32>
      %269 = affine.load %alloc_20[%c12] : memref<9xi1>
      %270 = math.ctpop %extracted : i16
      %271 = vector.broadcast %c12 : index to vector<4xindex>
      vector.scatter %alloc_17[%c4, %c0] [%271], %19, %19 : memref<9x4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
      %272 = bufferization.clone %alloc_14 : memref<4x4x9xi64> to memref<4x4x9xi64>
      %273 = affine.apply affine_map<(d0) -> ((d0 floordiv 8) mod 2)>(%93)
      %274 = vector.bitcast %53 : vector<9x4xf32> to vector<9x4xf32>
      scf.yield %c4 : index
    }
    %134 = affine.load %89[%c14, %c11] : memref<9x4xf16>
    %alloca = memref.alloca() : memref<4x4x9xi16>
    %135 = affine.if affine_set<(d0, d1, d2, d3) : (-(d1 + d2) == 0, (-(d2 - 68)) mod 2 >= 0)>(%c7, %c9, %c4, %c13) -> f16 {
      %259 = arith.addi %c-4654_i16, %c-4654_i16 : i16
      %260 = math.ctlz %c213252639_i32 : i32
      %261 = math.log2 %110 : tensor<9x5xf16>
      %262 = tensor.empty() : tensor<9x4xi1>
      %263 = arith.ceildivsi %true_3, %false_32 : i1
      %264 = math.fma %9, %14, %3 : tensor<9x4xf32>
      %265 = math.exp2 %14 : tensor<9x4xf32>
      %266 = index.maxs %c5, %76
      affine.yield %cst_1 : f16
    } else {
      %259 = math.floor %14 : tensor<9x4xf32>
      %260 = math.ctlz %12 : tensor<4x4xi64>
      %261 = index.maxs %c13, %c3
      %262 = vector.broadcast %false_32 : i1 to vector<4x4xi1>
      %263 = vector.bitcast %262 : vector<4x4xi1> to vector<4x4xi1>
      affine.for %arg2 = 0 to 10 {
      }
      %264 = vector.insert %19, %263 [0] : vector<4xi1> into vector<4x4xi1>
      %c883311219_i32 = arith.constant 883311219 : i32
      affine.yield %cst_1 : f16
    }
    %136 = math.exp2 %3 : tensor<9x4xf32>
    %137 = math.cttz %11 : tensor<9x4xi16>
    %138 = math.roundeven %5 : tensor<9x4xf16>
    scf.if %true_3 {
      %259 = vector.reduction <mul>, %35 : vector<1xi1> into i1
      %260 = math.atan %5 : tensor<9x4xf16>
      %261 = arith.divf %134, %134 : f16
      %262 = bufferization.clone %alloc_18 : memref<9x4xf16> to memref<9x4xf16>
      %263 = arith.divui %true_24, %false : i1
      %264 = affine.if affine_set<(d0) : (-d0 >= 0, 0 == 0, -(d0 + 16) + 1 >= 0, -((d0 - 32) mod 128) == 0)>(%c8) -> memref<9x4xi64> {
        %267 = tensor.empty(%c1) : tensor<9x?xi1>
        %collapsed_50 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x4xf32> into tensor<16xf32>
        %268 = math.round %6 : tensor<4x4xf32>
        %269 = bufferization.clone %alloc_11 : memref<4x4x9xf16> to memref<4x4x9xf16>
        %270 = math.tanh %3 : tensor<9x4xf32>
        %271 = affine.min affine_map<(d0, d1) -> (d1 * 129, d1 * -32, d1 * 128 + 32)>(%27, %c13)
        %272 = vector.load %alloc_20[%c6] : memref<9xi1>, vector<9x4xi1>
        %273 = vector.insertelement %true_4, %49[%c6 : index] : vector<2xi1>
        affine.yield %alloc_15 : memref<9x4xi64>
      } else {
        %267 = bufferization.to_memref %1 : memref<4x4x9xi1>
        %268 = arith.divf %cst, %cst : f32
        %269 = math.fpowi %5, %107 : tensor<9x4xf16>, tensor<9x4xi32>
        %270 = index.floordivs %44, %c2
        %271 = vector.broadcast %c8 : index to vector<9xindex>
        %272 = vector.broadcast %true_4 : i1 to vector<9xi1>
        %273 = vector.broadcast %c1833243423_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_9[%c5, %c1] [%271], %272, %273 : memref<9x4xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %274 = arith.ceildivsi %true, %true : i1
        %275 = bufferization.clone %89 : memref<9x4xf16> to memref<9x4xf16>
        %276 = arith.remf %cst_1, %cst_1 : f16
        affine.yield %alloc_15 : memref<9x4xi64>
      }
      %265 = bufferization.to_tensor %120 : memref<9x4xi1>
      %266 = arith.shrui %c22774_i16, %c-4654_i16 : i16
    }
    %139 = index.add %44, %rank
    %extracted_35 = tensor.extract %8[%c1, %c3] : tensor<9x4xf16>
    %140 = bufferization.clone %alloc_21 : memref<9xi1> to memref<9xi1>
    %alloc_36 = memref.alloc() : memref<4x4x9xi64>
    %extracted_37 = tensor.extract %107[%c2, %c1] : tensor<9x4xi32>
    %141 = vector.broadcast %rank : index to vector<4xindex>
    %142 = vector.broadcast %c266518988_i64 : i64 to vector<4xi64>
    vector.scatter %alloc_14[%c1, %c1, %c7] [%141], %19, %142 : memref<4x4x9xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %143 = math.sqrt %cst_2 : f32
    %144 = arith.remsi %true, %true_24 : i1
    %145 = vector.broadcast %cst : f32 to vector<4x4x9xf32>
    %146 = vector.broadcast %c1933136931_i32 : i32 to vector<4x4x9xi32>
    %147 = vector.gather %alloc_25[%118, %c1, %rank] [%146], %82, %145 : memref<4x4x9xf32>, vector<4x4x9xi32>, vector<4x4x9xi1>, vector<4x4x9xf32> into vector<4x4x9xf32>
    %148 = arith.cmpi eq, %true_3, %false_32 : i1
    %149 = vector.load %alloc_6[%c1, %c1] : memref<9x4xi16>, vector<9x4xi16>
    %from_elements_38 = tensor.from_elements %cst, %cst, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst, %cst_0, %cst_0, %cst : tensor<9x4xf32>
    %150 = math.cttz %2 : tensor<4x4x9xi1>
    %extracted_39 = tensor.extract %3[%c7, %c2] : tensor<9x4xf32>
    affine.for %arg2 = 0 to 84 {
    }
    %151 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 2 + d3)>(%rank, %69, %c0, %118)
    %152 = vector.broadcast %false : i1 to vector<4x4x9xi1>
    %153 = arith.divsi %true_23, %true_24 : i1
    %154 = vector.reduction <maxui>, %35 : vector<1xi1> into i1
    %155 = math.absf %6 : tensor<4x4xf32>
    %156 = affine.load %alloc_7[%c13, %c14] : memref<9x4xi32>
    %157 = math.cttz %156 : i32
    %inserted = tensor.insert %cst into %9[%c8, %c3] : tensor<9x4xf32>
    %158 = vector.load %89[%c4, %c0] : memref<9x4xf16>, vector<9x4xf16>
    %159 = scf.if %true_24 -> (i64) {
      %259 = math.powf %14, %3 : tensor<9x4xf32>
      %260 = vector.bitcast %105 : vector<4x4xi1> to vector<4x4xi1>
      %261 = index.add %93, %69
      %262 = memref.realloc %alloc_21 : memref<9xi1> to memref<4xi1>
      %263 = arith.divf %134, %extracted_35 : f16
      %264 = index.add %c8, %139
      %265 = math.log1p %extracted_39 : f32
      %266 = affine.load %alloc_6[%c10, %c12] : memref<9x4xi16>
      scf.yield %c590233149_i64 : i64
    } else {
      %alloc_50 = memref.alloc() : memref<4x4x9xi16>
      %259 = math.log2 %110 : tensor<9x5xf16>
      %260 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %dest_51, %accumulated_value_52 = vector.scan <mul>, %53, %260 {inclusive = true, reduction_dim = 0 : i64} : vector<9x4xf32>, vector<4xf32>
      %261 = math.cos %110 : tensor<9x5xf16>
      %262 = vector.broadcast %false_32 : i1 to vector<2x2xi1>
      %263 = vector.outerproduct %31, %49, %262 {kind = #vector.kind<minsi>} : vector<2xi1>, vector<2xi1>
      %264 = vector.insertelement %true_23, %35[%c4 : index] : vector<1xi1>
      %265 = index.casts %27 : index to i32
      %266 = math.sqrt %110 : tensor<9x5xf16>
      scf.yield %c266518988_i64 : i64
    }
    %160 = vector.splat %true_27 : vector<9x4xi1>
    %161 = arith.remui %false_32, %true_27 : i1
    %cast = tensor.cast %8 : tensor<9x4xf16> to tensor<?x?xf16>
    memref.store %c-4654_i16, %alloc_6[%c3, %c1] : memref<9x4xi16>
    %expanded_40 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<4x4xi64> into tensor<4x4x1xi64>
    %162 = arith.divsi %true_24, %false_32 : i1
    %163 = math.ceil %14 : tensor<9x4xf32>
    %c182753520_i32 = arith.constant 182753520 : i32
    %164 = math.fpowi %8, %107 : tensor<9x4xf16>, tensor<9x4xi32>
    %165 = vector.load %alloc_11[%c2, %c3, %c4] : memref<4x4x9xf16>, vector<4x4xf16>
    %166 = tensor.empty() : tensor<4x5xf16>
    %167 = tensor.empty() : tensor<9x5xf16>
    %168 = linalg.matmul ins(%5, %166 : tensor<9x4xf16>, tensor<4x5xf16>) outs(%167 : tensor<9x5xf16>) -> tensor<9x5xf16>
    %169 = vector.broadcast %rank : index to vector<9xindex>
    %170 = vector.broadcast %true_23 : i1 to vector<9xi1>
    %171 = vector.broadcast %156 : i32 to vector<9xi32>
    vector.scatter %alloc_9[%c1, %c3] [%169], %170, %171 : memref<9x4xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
    %172 = index.sizeof
    %alloc_41 = memref.alloc() : memref<4x4x9xf32>
    %173 = math.cttz %true : i1
    %174 = affine.if affine_set<(d0, d1) : (2 == 0, 0 == 0, d0 - 16 >= 0, d1 == 0)>(%c5, %c0) -> i1 {
      %259 = math.log1p %5 : tensor<9x4xf16>
      %260 = index.floordivs %c1, %27
      %261 = memref.realloc %alloc_20 : memref<9xi1> to memref<5xi1>
      %262 = vector.broadcast %cst_2 : f32 to vector<9x4xf32>
      %263 = vector.fma %262, %262, %262 : vector<9x4xf32>
      %264 = memref.realloc %alloc_21 : memref<9xi1> to memref<4xi1>
      %265 = vector.extract_strided_slice %262 {offsets = [6], sizes = [1], strides = [1]} : vector<9x4xf32> to vector<1x4xf32>
      %266 = bufferization.clone %alloc_16 : memref<9x4xi32> to memref<9x4xi32>
      %267 = vector.broadcast %c1329708747_i32 : i32 to vector<4x4xi32>
      affine.yield %true_24 : i1
    } else {
      %259 = index.ceildivu %c12, %c1
      %260 = math.fpowi %cst_0, %c1933136931_i32 : f32, i32
      %261 = arith.mulf %cst, %cst_2 : f32
      %262 = index.floordivs %rank, %44
      %263 = math.exp %cst_1 : f16
      %264 = math.cttz %4 : tensor<4x4xi64>
      %265 = math.log2 %14 : tensor<9x4xf32>
      %266 = index.casts %87 : index to i32
      affine.yield %false_32 : i1
    }
    %175 = index.floordivs %c2, %c14
    %176 = scf.while (%arg2 = %alloc_25) : (memref<4x4x9xf32>) -> memref<4x4x9xf32> {
      %259 = index.floordivs %172, %c0
      %260 = vector.create_mask %c2, %c11 : vector<4x4xi1>
      %261 = affine.min affine_map<(d0) -> (d0 floordiv 8 + 32, d0 mod 2, d0, d0 ceildiv 2 + d0 floordiv 8)>(%c6)
      %262 = vector.maskedload %alloc_10[%c1, %c0], %19, %19 : memref<4x4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %263 = arith.divui %156, %156 : i32
      memref.store %extracted_35, %alloc_18[%c0, %c2] : memref<9x4xf16>
      %264 = arith.xori %extracted_26, %c-4654_i16 : i16
      %265 = math.tan %cst_0 : f32
      scf.condition(%false) %alloc_25 : memref<4x4x9xf32>
    } do {
    ^bb0(%arg2: memref<4x4x9xf32>):
      %259 = vector.broadcast %151 : index to vector<4xindex>
      %260 = vector.broadcast %cst : f32 to vector<4xf32>
      vector.scatter %arg2[%c1, %c0, %c7] [%259], %19, %260 : memref<4x4x9xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %261 = index.maxs %116, %44
      %262 = index.floordivs %c1, %99
      %263 = scf.if %true_3 -> (f16) {
        %276 = arith.divsi %c1833243423_i32, %extracted_37 : i32
        %277 = math.round %cst_2 : f32
        %extracted_50 = tensor.extract %cast[%c0, %c0] : tensor<?x?xf16>
        %278 = vector.load %alloc_16[%c7, %c1] : memref<9x4xi32>, vector<4x4x9xi32>
        %279 = arith.remui %true_27, %true_3 : i1
        %280 = math.powf %cst, %cst_2 : f32
        %281 = vector.broadcast %c12 : index to vector<5xindex>
        %282 = vector.broadcast %false : i1 to vector<5xi1>
        %283 = vector.broadcast %c590233149_i64 : i64 to vector<5xi64>
        vector.scatter %alloc_14[%c0, %c0, %c6] [%281], %282, %283 : memref<4x4x9xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %284 = memref.realloc %alloc_21 : memref<9xi1> to memref<4xi1>
        scf.yield %extracted_35 : f16
      } else {
        %276 = arith.shrui %true_27, %true_27 : i1
        %277 = arith.shrsi %156, %c213252639_i32 : i32
        %278 = index.ceildivu %c3, %c0
        %279 = arith.maxui %extracted_26, %c22774_i16 : i16
        %280 = math.ceil %14 : tensor<9x4xf32>
        %281 = arith.remf %cst_1, %134 : f16
        %282 = index.maxs %116, %74
        %283 = arith.minf %cst_1, %cst_1 : f16
        scf.yield %extracted_35 : f16
      }
      %264 = math.log2 %121 : tensor<9x4xf32>
      %265 = arith.remf %cst_0, %cst_0 : f32
      %266 = math.ctpop %true_3 : i1
      %267 = arith.xori %true_3, %false_32 : i1
      %268 = math.fpowi %134, %156 : f16, i32
      %269 = index.ceildivu %27, %c2
      %270 = arith.remsi %true_4, %true_4 : i1
      %271 = vector.gather %107[%139, %262] [%70], %105, %45 : tensor<9x4xi32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi32> into vector<4x4xi32>
      %272 = math.cttz %true_4 : i1
      %273 = math.absf %3 : tensor<9x4xf32>
      %274 = math.log2 %9 : tensor<9x4xf32>
      %275 = math.tanh %8 : tensor<9x4xf16>
      scf.yield %alloc_25 : memref<4x4x9xf32>
    }
    %alloca_42 = memref.alloca() : memref<9x4xi64>
    %177 = arith.muli %159, %159 : i64
    %178 = index.maxs %c8, %175
    %179 = math.fpowi %cst_1, %c213252639_i32 : f16, i32
    %180 = arith.divf %134, %cst_1 : f16
    %181 = index.sub %c7, %93
    %182 = index.divu %175, %c5
    %183 = math.log1p %cst_2 : f32
    %184 = math.ctpop %true_24 : i1
    %185 = index.ceildivu %c3, %c4
    %186 = arith.remsi %c266518988_i64, %c266518988_i64 : i64
    %187 = vector.bitcast %35 : vector<1xi1> to vector<1xi1>
    %188 = math.tan %3 : tensor<9x4xf32>
    %189 = index.sizeof
    %190 = math.ceil %3 : tensor<9x4xf32>
    %191 = vector.broadcast %extracted_37 : i32 to vector<4xi32>
    %192 = vector.insert %191, %45 [3] : vector<4xi32> into vector<4x4xi32>
    %193 = arith.mulf %cst_2, %cst : f32
    %194 = math.roundeven %9 : tensor<9x4xf32>
    %195 = math.rsqrt %8 : tensor<9x4xf16>
    %196 = math.ctpop %0 : tensor<4x4x9xi1>
    %197 = arith.xori %true_27, %true_4 : i1
    %198 = vector.gather %89[%182, %181] [%70], %105, %165 : memref<9x4xf16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf16> into vector<4x4xf16>
    %199 = arith.divsi %true, %true_24 : i1
    %200 = vector.broadcast %extracted : i16 to vector<9xi16>
    %dest, %accumulated_value = vector.scan <add>, %149, %200 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi16>, vector<9xi16>
    %201 = arith.divui %extracted_26, %extracted : i16
    %202 = index.sizeof
    %203 = math.log2 %extracted_39 : f32
    %204 = index.ceildivu %c7, %44
    %205 = vector.insertelement %extracted_37, %191[%c14 : index] : vector<4xi32>
    %206 = vector.shuffle %152, %82 [1, 3, 4, 7] : vector<4x4x9xi1>, vector<4x4x9xi1>
    %207 = arith.shrui %false_32, %false : i1
    %208 = scf.execute_region -> index {
      %259 = arith.minsi %true_23, %true : i1
      memref.store %false, %alloc_10[%c0, %c1] : memref<4x4xi1>
      %260 = vector.broadcast %rank_33 : index to vector<9xindex>
      %261 = vector.broadcast %true_27 : i1 to vector<9xi1>
      %262 = vector.broadcast %156 : i32 to vector<9xi32>
      vector.scatter %alloc_19[%c0, %c0, %c8] [%260], %261, %262 : memref<4x4x9xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
      %263 = arith.subi %c1833243423_i32, %extracted_37 : i32
      %264 = vector.broadcast %c590233149_i64 : i64 to vector<9xi64>
      %265 = vector.broadcast %false_32 : i1 to vector<9xi1>
      %266 = vector.maskedload %alloc_14[%c3, %c3, %c5], %265, %264 : memref<4x4x9xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %267 = math.log %6 : tensor<4x4xf32>
      %268 = memref.realloc %alloc_20 : memref<9xi1> to memref<4xi1>
      %alloc_50 = memref.alloc() : memref<4x9xi16>
      %269 = tensor.empty() : tensor<9x9xi16>
      %270 = linalg.matmul ins(%16, %alloc_50 : tensor<9x4xi16>, memref<4x9xi16>) outs(%269 : tensor<9x9xi16>) -> tensor<9x9xi16>
      %271 = scf.index_switch %c10 -> memref<4x4x9xi16> 
      case 1 {
        %279 = arith.divui %true_27, %true_4 : i1
        %280 = arith.remui %false_32, %false_32 : i1
        %splat = tensor.splat %extracted_26 : tensor<9x4xi16>
        %281 = index.sizeof
        %282 = math.fpowi %14, %107 : tensor<9x4xf32>, tensor<9x4xi32>
        %283 = vector.reduction <xor>, %191 : vector<4xi32> into i32
        %284 = math.ctlz %from_elements : tensor<9x4xi1>
        %285 = bufferization.clone %alloc_16 : memref<9x4xi32> to memref<9x4xi32>
        %expanded_53 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<9x4xf32> into tensor<9x4x1xf32>
        %286 = vector.maskedload %140[%c8], %265, %265 : memref<9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %alloc_54 = memref.alloc() : memref<4x4xf32>
        %extracted_55 = tensor.extract %4[%c2, %c3] : tensor<4x4xi64>
        %287 = vector.multi_reduction <add>, %31, %true [0] : vector<2xi1> to i1
        %288 = arith.subi %extracted_37, %c213252639_i32 : i32
        %289 = math.sqrt %134 : f16
        %alloc_56 = memref.alloc() : memref<4x4x9xi64>
        %alloc_57 = memref.alloc() : memref<4x4x9xi16>
        scf.yield %alloc_57 : memref<4x4x9xi16>
      }
      case 2 {
        %279 = math.ceil %8 : tensor<9x4xf16>
        %280 = math.fpowi %8, %107 : tensor<9x4xf16>, tensor<9x4xi32>
        %281 = arith.ceildivsi %c-4654_i16, %extracted_26 : i16
        %alloc_53 = memref.alloc() : memref<4x4x9xi1>
        %expanded_54 = tensor.expand_shape %167 [[0], [1, 2]] : tensor<9x5xf16> into tensor<9x5x1xf16>
        %282 = arith.xori %false_32, %true_27 : i1
        %283 = vector.extract_strided_slice %82 {offsets = [1], sizes = [1], strides = [1]} : vector<4x4x9xi1> to vector<1x4x9xi1>
        %284 = arith.maxsi %c-4654_i16, %c-4654_i16 : i16
        %285 = arith.maxui %false_32, %true_4 : i1
        %286 = vector.broadcast %cst_1 : f16 to vector<9xf16>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %158, %286 {inclusive = true, reduction_dim = 1 : i64} : vector<9x4xf16>, vector<9xf16>
        %287 = bufferization.clone %alloc_19 : memref<4x4x9xi32> to memref<4x4x9xi32>
        %288 = vector.multi_reduction <maxui>, %55, %extracted_37 [0, 1] : vector<9x4xi32> to i32
        %289 = vector.reduction <xor>, %49 : vector<2xi1> into i1
        %alloc_57 = memref.alloc() : memref<4x4xi1>
        %290 = vector.broadcast %true_4 : i1 to vector<5xi1>
        %291 = vector.transfer_write %290, %0[%c1, %27, %204] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, tensor<4x4x9xi1>
        %292 = vector.broadcast %true : i1 to vector<9x9xi1>
        %293 = vector.outerproduct %265, %265, %292 {kind = #vector.kind<or>} : vector<9xi1>, vector<9xi1>
        %alloc_58 = memref.alloc() : memref<4x4x9xi16>
        scf.yield %alloc_58 : memref<4x4x9xi16>
      }
      case 3 {
        %279 = arith.addi %156, %c1833243423_i32 : i32
        %280 = tensor.empty() : tensor<4x4x9xf32>
        %281 = vector.gather %280[%c14, %99, %c2] [%55], %54, %53 : tensor<4x4x9xf32>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xf32> into vector<9x4xf32>
        %282 = math.round %6 : tensor<4x4xf32>
        %283 = vector.broadcast %178 : index to vector<4xindex>
        vector.scatter %alloc_21[%c0] [%283], %19, %19 : memref<9xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %284 = arith.remui %c1933136931_i32, %c1329708747_i32 : i32
        vector.print %88 : vector<2x4xf32>
        %285 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 2 + d3, d1 * 258, d3, d2)>(%c8, %151, %69, %c10)
        %286 = arith.divui %c1796693505_i32, %c213252639_i32 : i32
        %287 = arith.remui %156, %c1329708747_i32 : i32
        %288 = vector.shuffle %31, %265 [2, 3, 4, 9, 10] : vector<2xi1>, vector<9xi1>
        %289 = math.round %280 : tensor<4x4x9xf32>
        %290 = vector.insertelement %c1796693505_i32, %191[%182 : index] : vector<4xi32>
        %291 = math.log %3 : tensor<9x4xf32>
        %292 = math.cttz %269 : tensor<9x9xi16>
        %293 = math.cttz %21 : tensor<i1>
        %294 = math.rsqrt %9 : tensor<9x4xf32>
        %alloc_53 = memref.alloc() : memref<4x4x9xi16>
        scf.yield %alloc_53 : memref<4x4x9xi16>
      }
      default {
        %279 = math.ceil %6 : tensor<4x4xf32>
        %280 = math.ctpop %12 : tensor<4x4xi64>
        %281 = tensor.empty() : tensor<4x4x9xf32>
        %282 = vector.broadcast %c213252639_i32 : i32 to vector<9xi32>
        %dest_53, %accumulated_value_54 = vector.scan <minui>, %85, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi32>, vector<9xi32>
        %283 = arith.maxsi %c22774_i16, %c-4654_i16 : i16
        %284 = memref.realloc %140 : memref<9xi1> to memref<5xi1>
        %rank_55 = tensor.rank %expanded_40 : tensor<4x4x1xi64>
        %285 = arith.mulf %cst_1, %cst_1 : f16
        %286 = math.expm1 %cst_1 : f16
        %287 = arith.subi %159, %c590233149_i64 : i64
        %288 = math.roundeven %cst_1 : f16
        %289 = math.ceil %5 : tensor<9x4xf16>
        %290 = math.expm1 %9 : tensor<9x4xf32>
        %291 = math.powf %3, %121 : tensor<9x4xf32>
        %false_56 = index.bool.constant false
        %rank_57 = tensor.rank %6 : tensor<4x4xf32>
        %alloc_58 = memref.alloc() : memref<4x4x9xi16>
        scf.yield %alloc_58 : memref<4x4x9xi16>
      }
      %272 = index.sizeof
      %273 = arith.maxui %false, %true_23 : i1
      %274 = math.cttz %12 : tensor<4x4xi64>
      %275 = math.floor %9 : tensor<9x4xf32>
      %cst_51 = arith.constant 1.000000e+00 : f16
      %cst_52 = arith.constant 0.000000e+00 : f16
      %276 = vector.transfer_read %5[%181, %c5], %cst_52 : tensor<9x4xf16>, vector<f16>
      %277 = index.casts %c266518988_i64 : i64 to index
      %278 = bufferization.clone %alloc_13 : memref<9x4xf32> to memref<9x4xf32>
      scf.yield %139 : index
    }
    %209 = index.maxs %c1, %c5
    %210 = vector.reduction <add>, %19 : vector<4xi1> into i1
    %cast_43 = tensor.cast %110 : tensor<9x5xf16> to tensor<?x?xf16>
    %211 = arith.remsi %c1796693505_i32, %extracted_37 : i32
    %212 = vector.insert %true_27, %31 [0] : i1 into vector<2xi1>
    %213 = arith.addi %true_4, %false : i1
    scf.execute_region {
      %259 = vector.insertelement %true_24, %187[%202 : index] : vector<1xi1>
      %260 = arith.divsi %c1329708747_i32, %c1933136931_i32 : i32
      %261 = math.log1p %167 : tensor<9x5xf16>
      %262 = math.ctlz %extracted_26 : i16
      %263 = arith.divui %156, %c1933136931_i32 : i32
      %264 = bufferization.clone %alloc_6 : memref<9x4xi16> to memref<9x4xi16>
      %265 = math.ceil %14 : tensor<9x4xf32>
      %266 = arith.xori %c1796693505_i32, %c1329708747_i32 : i32
      %267 = scf.index_switch %202 -> tensor<4x4xi64> 
      case 1 {
        %278 = tensor.empty() : tensor<4x5xf16>
        %279 = tensor.empty() : tensor<9x5xf16>
        %280 = linalg.matmul ins(%8, %278 : tensor<9x4xf16>, tensor<4x5xf16>) outs(%279 : tensor<9x5xf16>) -> tensor<9x5xf16>
        %281 = vector.broadcast %true_24 : i1 to vector<9xi1>
        %282 = vector.insert %281, %82 [0, 0] : vector<9xi1> into vector<4x4x9xi1>
        %283 = vector.splat %c-4654_i16 : vector<9x4xi16>
        %284 = arith.remf %cst, %cst : f32
        %285 = arith.negf %extracted_35 : f16
        %collapsed_51 = tensor.collapse_shape %13 [[0, 1]] : tensor<9x4xi1> into tensor<36xi1>
        %286 = affine.min affine_map<(d0, d1, d2) -> (d1 - 16, -(((d0 + 4) * 8) mod 16), d1 - 16, (((d0 + 4) * 8) mod 16) ceildiv 4 + d0 + 4)>(%116, %c7, %c2)
        %287 = arith.addi %c590233149_i64, %159 : i64
        %288 = math.ctpop %c1796693505_i32 : i32
        %289 = vector.load %alloc_8[%c8, %c2] : memref<9x4xi1>, vector<9x4xi1>
        memref.store %c22774_i16, %alloc_5[%c8, %c1] : memref<9x4xi16>
        %290 = math.ceil %5 : tensor<9x4xf16>
        %291 = arith.negf %cst_1 : f16
        %dest_52, %accumulated_value_53 = vector.scan <maxsi>, %45, %191 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
        %292 = arith.subi %c1329708747_i32, %c1933136931_i32 : i32
        %293 = arith.divf %cst_1, %134 : f16
        scf.yield %4 : tensor<4x4xi64>
      }
      case 2 {
        %278 = math.tan %cst : f32
        %279 = vector.broadcast %134 : f16 to vector<5xf16>
        %280 = vector.broadcast %true_23 : i1 to vector<5xi1>
        %281 = vector.maskedload %89[%c8, %c3], %280, %279 : memref<9x4xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %282 = vector.create_mask %99, %101 : vector<4x4xi1>
        %283 = bufferization.clone %alloc_10 : memref<4x4xi1> to memref<4x4xi1>
        %284 = math.tanh %5 : tensor<9x4xf16>
        %285 = index.casts %c1833243423_i32 : i32 to index
        %286 = math.tan %cst_1 : f16
        %287 = math.ctpop %7 : tensor<9x4xi1>
        %288 = math.absi %11 : tensor<9x4xi16>
        %289 = vector.broadcast %true_4 : i1 to vector<4xi1>
        vector.transfer_write %289, %283[%c9, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, memref<4x4xi1>
        %290 = vector.broadcast %285 : index to vector<9xindex>
        %291 = vector.broadcast %false : i1 to vector<9xi1>
        %292 = vector.broadcast %134 : f16 to vector<9xf16>
        vector.scatter %89[%c2, %c1] [%290], %291, %292 : memref<9x4xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %293 = arith.floordivsi %c-4654_i16, %c22774_i16 : i16
        %294 = index.ceildivu %139, %c15
        %295 = arith.divui %false_32, %false : i1
        %296 = vector.broadcast %extracted_35 : f16 to vector<4xf16>
        %297 = vector.insert %296, %158 [8] : vector<4xf16> into vector<9x4xf16>
        %298 = math.roundeven %5 : tensor<9x4xf16>
        scf.yield %4 : tensor<4x4xi64>
      }
      case 3 {
        %278 = arith.divf %cst_0, %cst : f32
        %279 = tensor.empty() : tensor<4x4x9xf16>
        %extracted_51 = tensor.extract %7[%c8, %c2] : tensor<9x4xi1>
        %alloc_52 = memref.alloc() : memref<4x4x9xi64>
        %280 = arith.remsi %c22774_i16, %extracted : i16
        %281 = index.ceildivu %139, %208
        %282 = math.ctlz %extracted : i16
        %283 = math.round %3 : tensor<9x4xf32>
        %284 = arith.shrui %true_27, %false : i1
        %285 = arith.muli %true_27, %true_23 : i1
        %286 = index.floordivs %c6, %76
        %287 = math.tanh %extracted_39 : f32
        %288 = index.maxu %c2, %286
        %289 = vector.gather %7[%c7, %172] [%85], %54, %54 : tensor<9x4xi1>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi1> into vector<9x4xi1>
        %290 = math.expm1 %6 : tensor<4x4xf32>
        %extracted_53 = tensor.extract %3[%c6, %c2] : tensor<9x4xf32>
        scf.yield %12 : tensor<4x4xi64>
      }
      default {
        %278 = arith.remsi %c1329708747_i32, %c1833243423_i32 : i32
        %279 = vector.maskedload %alloc_16[%c0, %c3], %19, %191 : memref<9x4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %280 = affine.load %alloc_13[%c11, %c3] : memref<9x4xf32>
        %281 = arith.maxf %280, %280 : f32
        %rank_51 = tensor.rank %17 : tensor<9x4xi16>
        %282 = vector.load %alloc_14[%c3, %c0, %c7] : memref<4x4x9xi64>, vector<4x4x9xi64>
        %283 = vector.broadcast %151 : index to vector<4xindex>
        %284 = vector.broadcast %c590233149_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_14[%c3, %c3, %c6] [%283], %19, %284 : memref<4x4x9xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %285 = arith.remui %c213252639_i32, %extracted_37 : i32
        %286 = vector.insertelement %true_27, %35[%c6 : index] : vector<1xi1>
        %287 = arith.shrui %c1833243423_i32, %156 : i32
        %288 = math.fpowi %8, %107 : tensor<9x4xf16>, tensor<9x4xi32>
        %289 = memref.realloc %140 : memref<9xi1> to memref<4xi1>
        %290 = bufferization.clone %alloc : memref<4x4xf32> to memref<4x4xf32>
        %291 = math.round %134 : f16
        %292 = arith.subi %true_23, %true_4 : i1
        %293 = index.maxs %c15, %c10
        scf.yield %12 : tensor<4x4xi64>
      }
      %268 = index.castu %c12 : index to i32
      %alloc_50 = memref.alloc() : memref<9x4xf32>
      %269 = math.log2 %cst : f32
      %270 = math.fpowi %121, %107 : tensor<9x4xf32>, tensor<9x4xi32>
      %271 = vector.broadcast %extracted_37 : i32 to vector<9xi32>
      %272 = vector.broadcast %true_4 : i1 to vector<9xi1>
      %273 = vector.maskedload %alloc_9[%c4, %c1], %272, %271 : memref<9x4xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
      %274 = index.maxs %c14, %c1
      %275 = vector.broadcast %c266518988_i64 : i64 to vector<5xi64>
      %276 = vector.broadcast %true : i1 to vector<5xi1>
      %277 = vector.maskedload %alloc_14[%c3, %c0, %c6], %276, %275 : memref<4x4x9xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      scf.yield
    }
    %214 = math.log10 %extracted_39 : f32
    %215 = math.rsqrt %167 : tensor<9x5xf16>
    %216 = vector.broadcast %false : i1 to vector<1x1xi1>
    %217 = vector.outerproduct %35, %187, %216 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
    %false_44 = index.bool.constant false
    %218 = vector.broadcast %139 : index to vector<5xindex>
    %219 = vector.broadcast %true_4 : i1 to vector<5xi1>
    %220 = vector.broadcast %c1833243423_i32 : i32 to vector<5xi32>
    vector.scatter %alloc_16[%c5, %c0] [%218], %219, %220 : memref<9x4xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
    %cst_45 = arith.constant 1.25379456E+9 : f32
    %221 = index.maxs %c0, %27
    %222 = index.sub %44, %178
    %223 = math.ctpop %12 : tensor<4x4xi64>
    %224 = math.exp %134 : f16
    %225 = math.powf %cst_2, %cst_2 : f32
    %226 = index.casts %159 : i64 to index
    %227 = scf.while (%arg2 = %145) : (vector<4x4x9xf32>) -> vector<4x4x9xf32> {
      %259 = vector.load %alloc_18[%c0, %c2] : memref<9x4xf16>, vector<4x4xf16>
      %260 = tensor.empty() : tensor<4x4xi64>
      %261 = linalg.matmul ins(%4, %12 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%260 : tensor<4x4xi64>) -> tensor<4x4xi64>
      %262 = math.round %5 : tensor<9x4xf16>
      %263 = arith.minf %cst, %cst_0 : f32
      scf.index_switch %185 
      case 1 {
        %266 = vector.shuffle %53, %56 [2, 4, 5, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17] : vector<9x4xf32>, vector<9x4xf32>
        %rank_52 = tensor.rank %6 : tensor<4x4xf32>
        %true_53 = index.bool.constant true
        %267 = math.tan %extracted_35 : f16
        %268 = vector.broadcast %185 : index to vector<9xindex>
        %269 = vector.broadcast %true_53 : i1 to vector<9xi1>
        %270 = vector.broadcast %extracted : i16 to vector<9xi16>
        vector.scatter %alloc_5[%c8, %c3] [%268], %269, %270 : memref<9x4xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %271 = math.ctpop %1 : tensor<4x4x9xi1>
        %272 = math.ipowi %extracted_26, %c-4654_i16 : i16
        %273 = math.sqrt %8 : tensor<9x4xf16>
        %from_elements_54 = tensor.from_elements %159, %c266518988_i64, %c590233149_i64, %159, %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %159, %159, %c590233149_i64, %159, %c590233149_i64, %159, %c590233149_i64, %159, %c266518988_i64, %159, %c266518988_i64, %c266518988_i64, %159, %c266518988_i64, %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c266518988_i64, %159, %c590233149_i64, %159, %c590233149_i64, %159, %159 : tensor<9x4xi64>
        %274 = vector.broadcast %cst_2 : f32 to vector<4x4x9xf32>
        %275 = vector.fma %274, %274, %145 : vector<4x4x9xf32>
        %276 = affine.max affine_map<(d0, d1, d2) -> (d0 + d1, (d1 - d2 + d1) floordiv 64 + d1, d2 - 2, d2 + d0 + 128)>(%c14, %204, %93)
        %277 = vector.transpose %259, [0, 1] : vector<4x4xf16> to vector<4x4xf16>
        memref.tensor_store %from_elements_54, %alloc_15 : memref<9x4xi64>
        %278 = vector.flat_transpose %31 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %279 = math.powf %8, %5 : tensor<9x4xf16>
        %from_elements_55 = tensor.from_elements %cst, %extracted_39, %cst, %cst_2, %extracted_39, %cst, %extracted_39, %cst_2, %cst_2, %cst, %cst_0, %cst_0, %extracted_39, %extracted_39, %cst, %extracted_39, %cst_0, %cst_0, %cst, %cst, %extracted_39, %cst_2, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %cst, %extracted_39, %cst_2, %cst_2, %extracted_39, %cst_2, %extracted_39, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst, %extracted_39, %cst, %cst, %cst, %extracted_39, %cst, %cst, %cst_2, %cst_0, %cst, %extracted_39, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst_2, %extracted_39, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_2, %cst_0, %extracted_39, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst, %extracted_39, %cst_0, %cst, %cst_0, %extracted_39, %cst_0, %cst_2, %extracted_39, %cst_0, %extracted_39, %cst_2, %extracted_39, %cst_0, %cst_2, %cst_0, %cst_0, %cst, %extracted_39, %cst, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst, %extracted_39, %cst_0, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %extracted_39, %cst, %cst_0, %cst_0, %extracted_39, %cst_0, %cst, %cst_2, %cst_0, %cst : tensor<4x4x9xf32>
        scf.yield
      }
      case 2 {
        %266 = math.roundeven %9 : tensor<9x4xf32>
        %267 = math.absf %cst_1 : f16
        %268 = index.maxs %c12, %c14
        %269 = arith.remsi %true, %true_23 : i1
        %alloc_52 = memref.alloc() : memref<4x4xi64>
        %270 = vector.broadcast %c590233149_i64 : i64 to vector<9x4xi64>
        %271 = vector.gather %alloc_52[%c0, %c2] [%85], %54, %270 : memref<4x4xi64>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi64> into vector<9x4xi64>
        %272 = math.floor %5 : tensor<9x4xf16>
        %273 = vector.broadcast %true_4 : i1 to vector<4x4xi1>
        %274 = vector.broadcast %139 : index to vector<5xindex>
        %275 = vector.broadcast %false_32 : i1 to vector<5xi1>
        %276 = vector.broadcast %159 : i64 to vector<5xi64>
        vector.scatter %alloc_12[%c1, %c2, %c7] [%274], %275, %276 : memref<4x4x9xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %inserted_53 = tensor.insert %true_3 into %2[%c0, %c3, %c7] : tensor<4x4x9xi1>
        %277 = math.log1p %9 : tensor<9x4xf32>
        %278 = math.cttz %true_3 : i1
        %279 = math.round %9 : tensor<9x4xf32>
        %280 = math.atan %6 : tensor<4x4xf32>
        %281 = arith.divui %159, %c590233149_i64 : i64
        memref.store %159, %alloc_52[%c0, %c2] : memref<4x4xi64>
        %false_54 = index.bool.constant false
        scf.yield
      }
      case 3 {
        %266 = index.add %202, %182
        %267 = bufferization.clone %alloc_5 : memref<9x4xi16> to memref<9x4xi16>
        %alloc_52 = memref.alloc() : memref<9x4xi1>
        %268 = arith.maxui %true_27, %true_3 : i1
        %269 = vector.broadcast %extracted_35 : f16 to vector<4xf16>
        %270 = vector.insert %269, %62 [5] : vector<4xf16> into vector<9x4xf16>
        %271 = index.ceildivu %204, %181
        %272 = arith.maxf %134, %134 : f16
        %273 = index.maxs %99, %c11
        %274 = math.atan %9 : tensor<9x4xf32>
        %275 = vector.broadcast %93 : index to vector<4xindex>
        %276 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        vector.scatter %alloc_13[%c5, %c1] [%275], %19, %276 : memref<9x4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %277 = math.tanh %extracted_39 : f32
        %cst_53 = arith.constant 3.564000e+03 : f16
        %278 = arith.cmpf oge, %cst_0, %cst : f32
        %279 = arith.divf %cst_2, %cst : f32
        %280 = vector.load %alloc_8[%c3, %c0] : memref<9x4xi1>, vector<4x4xi1>
        %281 = math.sqrt %extracted_39 : f32
        scf.yield
      }
      default {
        %266 = vector.insert %c1796693505_i32, %191 [2] : i32 into vector<4xi32>
        %267 = math.round %extracted_35 : f16
        %collapsed_52 = tensor.collapse_shape %14 [[0, 1]] : tensor<9x4xf32> into tensor<36xf32>
        %268 = index.add %76, %c3
        %269 = math.fma %cst, %cst, %extracted_39 : f32
        %270 = arith.divui %c266518988_i64, %159 : i64
        %271 = vector.outerproduct %19, %19, %105 {kind = #vector.kind<and>} : vector<4xi1>, vector<4xi1>
        %272 = math.fpowi %9, %107 : tensor<9x4xf32>, tensor<9x4xi32>
        %273 = arith.cmpf ugt, %extracted_39, %extracted_39 : f32
        %274 = vector.transpose %165, [0, 1] : vector<4x4xf16> to vector<4x4xf16>
        %275 = math.ipowi %extracted, %c-4654_i16 : i16
        %276 = math.log10 %5 : tensor<9x4xf16>
        %277 = arith.addi %false_44, %true_23 : i1
        %278 = math.log2 %14 : tensor<9x4xf32>
        %279 = index.ceildivu %44, %185
        %280 = vector.insertelement %c1933136931_i32, %191[%rank : index] : vector<4xi32>
      }
      %264 = math.cttz %16 : tensor<9x4xi16>
      %dest_50, %accumulated_value_51 = vector.scan <xor>, %45, %191 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
      %265 = vector.broadcast %134 : f16 to vector<4x4xf16>
      scf.condition(%false) %145 : vector<4x4x9xf32>
    } do {
    ^bb0(%arg2: vector<4x4x9xf32>):
      %259 = math.cttz %true_23 : i1
      %260 = vector.insertelement %false_44, %19[%204 : index] : vector<4xi1>
      %261 = math.log2 %cst : f32
      %262 = memref.realloc %140 : memref<9xi1> to memref<5xi1>
      %263 = math.cttz %12 : tensor<4x4xi64>
      %264 = vector.broadcast %134 : f16 to vector<4xf16>
      %dest_50, %accumulated_value_51 = vector.scan <maxf>, %198, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xf16>, vector<4xf16>
      %265 = scf.if %false_32 -> (f32) {
        %275 = tensor.empty() : tensor<9x5xi32>
        %276 = math.fpowi %167, %275 : tensor<9x5xf16>, tensor<9x5xi32>
        %extracted_52 = tensor.extract %9[%c1, %c0] : tensor<9x4xf32>
        %277 = vector.broadcast %c10 : index to vector<9xindex>
        %278 = vector.broadcast %true_23 : i1 to vector<9xi1>
        %279 = vector.broadcast %c-4654_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_6[%c2, %c3] [%277], %278, %279 : memref<9x4xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %280 = vector.broadcast %extracted_35 : f16 to vector<4xf16>
        %dest_53, %accumulated_value_54 = vector.scan <add>, %198, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xf16>, vector<4xf16>
        %281 = vector.splat %c266518988_i64 : vector<9x4xi64>
        %282 = vector.load %alloc_6[%c3, %c0] : memref<9x4xi16>, vector<4x4x9xi16>
        %283 = math.rsqrt %from_elements_38 : tensor<9x4xf32>
        %284 = math.ceil %cst_0 : f32
        scf.yield %cst_0 : f32
      } else {
        %275 = index.divs %c13, %151
        %276 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %147, %276 {inclusive = false, reduction_dim = 2 : i64} : vector<4x4x9xf32>, vector<4x4xf32>
        %277 = math.ceil %6 : tensor<4x4xf32>
        %278 = arith.divsi %false, %true_27 : i1
        %279 = math.fpowi %9, %107 : tensor<9x4xf32>, tensor<9x4xi32>
        %280 = index.castu %c1 : index to i32
        %281 = math.sqrt %cst : f32
        %282 = arith.mulf %extracted_35, %134 : f16
        scf.yield %cst_2 : f32
      }
      %266 = arith.muli %true_27, %true_4 : i1
      %267 = arith.remui %159, %c590233149_i64 : i64
      %268 = scf.if %false_44 -> (memref<4x4x9xi32>) {
        %275 = vector.broadcast %265 : f32 to vector<5xf32>
        %276 = vector.broadcast %false_44 : i1 to vector<5xi1>
        %277 = vector.maskedload %alloc_25[%c1, %c1, %c4], %276, %275 : memref<4x4x9xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %278 = math.rsqrt %cst_1 : f16
        %279 = arith.cmpi ule, %c590233149_i64, %c590233149_i64 : i64
        %c760523609_i32 = arith.constant 760523609 : i32
        %280 = math.absf %extracted_35 : f16
        %281 = arith.negf %cst_0 : f32
        %282 = math.round %9 : tensor<9x4xf32>
        %alloc_52 = memref.alloc() : memref<9x4xi64>
        scf.yield %alloc_19 : memref<4x4x9xi32>
      } else {
        %275 = arith.xori %156, %c1329708747_i32 : i32
        %276 = math.log1p %6 : tensor<4x4xf32>
        %277 = math.exp %9 : tensor<9x4xf32>
        %278 = vector.multi_reduction <maxf>, %53, %265 [0, 1] : vector<9x4xf32> to f32
        %279 = arith.addi %false, %true_23 : i1
        %280 = math.cttz %c1833243423_i32 : i32
        %281 = arith.divsi %c1833243423_i32, %c1796693505_i32 : i32
        %282 = math.floor %8 : tensor<9x4xf16>
        scf.yield %alloc_19 : memref<4x4x9xi32>
      }
      %269 = arith.remf %cst_2, %extracted_39 : f32
      %270 = arith.divf %extracted_35, %extracted_35 : f16
      %271 = math.tanh %6 : tensor<4x4xf32>
      %272 = affine.max affine_map<(d0, d1, d2) -> (d1, d0 - d1)>(%172, %226, %185)
      %273 = math.log1p %14 : tensor<9x4xf32>
      %274 = arith.xori %c590233149_i64, %c266518988_i64 : i64
      scf.yield %145 : vector<4x4x9xf32>
    }
    %228 = arith.remsi %c22774_i16, %extracted : i16
    %229 = math.copysign %extracted_35, %cst_1 : f16
    %230 = math.ctlz %c213252639_i32 : i32
    %231 = math.fpowi %5, %107 : tensor<9x4xf16>, tensor<9x4xi32>
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x4x9xi1> into tensor<16x9xi1>
    %232 = vector.broadcast %181 : index to vector<4xindex>
    vector.scatter %alloc_20[%c4] [%232], %19, %19 : memref<9xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
    %233 = arith.shrui %true_3, %false_44 : i1
    %234 = index.sizeof
    %235 = vector.transpose %147, [2, 0, 1] : vector<4x4x9xf32> to vector<9x4x4xf32>
    %236 = arith.negf %extracted_39 : f32
    %237 = math.round %extracted_35 : f16
    %dest_46, %accumulated_value_47 = vector.scan <xor>, %105, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xi1>, vector<4xi1>
    %238 = math.roundeven %8 : tensor<9x4xf16>
    %239 = memref.realloc %alloc_21 : memref<9xi1> to memref<4xi1>
    %240 = scf.index_switch %222 -> tensor<4x4x9xi16> 
    case 1 {
      %259 = arith.cmpf ueq, %cst_0, %cst_2 : f32
      %260 = index.maxu %c15, %202
      %261 = vector.broadcast %extracted_39 : f32 to vector<4xf32>
      %262 = vector.insert %261, %88 [0] : vector<4xf32> into vector<2x4xf32>
      %263 = affine.max affine_map<(d0) -> (d0 mod 16 - d0 + 128)>(%222)
      memref.assume_alignment %120, 16 : memref<9x4xi1>
      %264 = math.expm1 %14 : tensor<9x4xf32>
      %265 = arith.muli %c-4654_i16, %c22774_i16 : i16
      %true_50 = index.bool.constant true
      %266 = index.floordivs %c14, %c12
      %267 = math.fpowi %cst, %156 : f32, i32
      %268 = bufferization.clone %alloc_11 : memref<4x4x9xf16> to memref<4x4x9xf16>
      %269 = math.rsqrt %cst_1 : f16
      %270 = math.round %167 : tensor<9x5xf16>
      %271 = arith.ceildivsi %true_4, %true : i1
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %272 = vector.transfer_read %alloc[%c8, %c15], %cst_52 : memref<4x4xf32>, vector<f32>
      %273 = index.casts %c8 : index to i32
      %274 = tensor.empty() : tensor<4x4x9xi16>
      scf.yield %274 : tensor<4x4x9xi16>
    }
    case 2 {
      %259 = vector.broadcast %c2 : index to vector<4xindex>
      %260 = vector.broadcast %134 : f16 to vector<4xf16>
      vector.scatter %89[%c4, %c3] [%259], %19, %260 : memref<9x4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
      memref.assume_alignment %alloc_10, 1 : memref<4x4xi1>
      %261 = math.ceil %6 : tensor<4x4xf32>
      vector.print %62 : vector<9x4xf16>
      %262 = vector.insertelement %true_23, %35[%93 : index] : vector<1xi1>
      %263 = arith.shrui %c1933136931_i32, %c1933136931_i32 : i32
      %264 = vector.broadcast %false : i1 to vector<2x2xi1>
      %265 = vector.outerproduct %31, %31, %264 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
      %266 = math.ctpop %1 : tensor<4x4x9xi1>
      %267 = bufferization.clone %alloc_17 : memref<9x4xi1> to memref<9x4xi1>
      %268 = vector.create_mask %c1, %101 : vector<9x4xi1>
      %alloc_50 = memref.alloc() : memref<9x4xf16>
      %269 = scf.if %false_44 -> (memref<4x4x9xi1>) {
        %c133551488_i32 = arith.constant 133551488 : i32
        %c828311333_i64 = arith.constant 828311333 : i64
        %274 = math.log10 %5 : tensor<9x4xf16>
        %275 = math.sqrt %6 : tensor<4x4xf32>
        %276 = arith.xori %c590233149_i64, %c590233149_i64 : i64
        %277 = math.exp2 %9 : tensor<9x4xf32>
        %278 = vector.broadcast %true_27 : i1 to vector<4x4x9xi1>
        %279 = index.castu %234 : index to i32
        %alloc_51 = memref.alloc() : memref<4x4x9xi1>
        scf.yield %alloc_51 : memref<4x4x9xi1>
      } else {
        %274 = vector.insertelement %c1833243423_i32, %191[%c8 : index] : vector<4xi32>
        memref.store %true_23, %alloc_8[%c6, %c3] : memref<9x4xi1>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %275 = vector.transfer_read %8[%151, %151], %cst_51 : tensor<9x4xf16>, vector<4xf16>
        %276 = math.log %cst_2 : f32
        %alloca_52 = memref.alloca() : memref<4x4xi1>
        %277 = math.sqrt %14 : tensor<9x4xf32>
        %278 = index.ceildivu %c9, %74
        %279 = math.fma %3, %3, %14 : tensor<9x4xf32>
        %alloc_53 = memref.alloc() : memref<4x4x9xi1>
        scf.yield %alloc_53 : memref<4x4x9xi1>
      }
      %270 = math.tanh %3 : tensor<9x4xf32>
      affine.for %arg2 = 0 to 108 {
      }
      %271 = math.ctpop %true_23 : i1
      %272 = math.ctlz %15 : tensor<9x4xi16>
      %273 = tensor.empty() : tensor<4x4x9xi16>
      scf.yield %273 : tensor<4x4x9xi16>
    }
    case 3 {
      %259 = arith.maxui %true_27, %true_27 : i1
      %260 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 ceildiv 8 + d2 - 2, d0 floordiv 16, d1)>(%175, %c12, %172)
      %261 = arith.muli %extracted_37, %extracted_37 : i32
      %262 = vector.broadcast %c8 : index to vector<9xindex>
      %263 = vector.broadcast %true_3 : i1 to vector<9xi1>
      %264 = vector.broadcast %extracted_37 : i32 to vector<9xi32>
      vector.scatter %alloc_7[%c6, %c3] [%262], %263, %264 : memref<9x4xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
      %extracted_50 = tensor.extract %2[%c0, %c2, %c1] : tensor<4x4x9xi1>
      %265 = scf.execute_region -> index {
        %277 = math.floor %cst_2 : f32
        %rank_54 = tensor.rank %9 : tensor<9x4xf32>
        %278 = arith.shrui %true, %true_3 : i1
        %279 = arith.divsi %c213252639_i32, %c1329708747_i32 : i32
        %280 = math.ipowi %expanded_40, %expanded_31 : tensor<4x4x1xi64>
        %281 = memref.load %89[%c1, %c1] : memref<9x4xf16>
        %282 = arith.addf %cst_1, %134 : f16
        %283 = vector.broadcast %extracted_35 : f16 to vector<4x9xf16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %198, %63, %283 : vector<4x4xf16>, vector<9x4xf16> into vector<4x9xf16>
        %285 = arith.divui %c266518988_i64, %159 : i64
        %286 = math.ceil %14 : tensor<9x4xf32>
        %287 = arith.xori %c1796693505_i32, %c1833243423_i32 : i32
        %cast_55 = tensor.cast %14 : tensor<9x4xf32> to tensor<?x?xf32>
        %extracted_56 = tensor.extract %18[%c2, %c8] : tensor<4x9xi1>
        %288 = math.log1p %8 : tensor<9x4xf16>
        %289 = math.cttz %7 : tensor<9x4xi1>
        %290 = affine.max affine_map<(d0) -> (d0 * 2)>(%c1)
        scf.yield %c2 : index
      }
      %266 = arith.divsi %false_44, %true_24 : i1
      %267 = vector.splat %181 : vector<4x4x9xindex>
      %cast_51 = tensor.cast %3 : tensor<9x4xf32> to tensor<?x?xf32>
      %268 = math.log10 %cst_2 : f32
      %269 = arith.minsi %extracted_50, %true_3 : i1
      %270 = vector.broadcast %c0 : index to vector<4xindex>
      %271 = vector.broadcast %c22774_i16 : i16 to vector<4xi16>
      vector.scatter %alloc_5[%c1, %c1] [%270], %19, %271 : memref<9x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %272 = bufferization.to_tensor %alloc_8 : memref<9x4xi1>
      %273 = arith.floordivsi %extracted_26, %c22774_i16 : i16
      %274 = vector.extract_strided_slice %35 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %275 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %dest_52, %accumulated_value_53 = vector.scan <mul>, %53, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<9x4xf32>, vector<4xf32>
      %276 = tensor.empty() : tensor<4x4x9xi16>
      scf.yield %276 : tensor<4x4x9xi16>
    }
    default {
      %259 = arith.addi %c22774_i16, %c-4654_i16 : i16
      %cast_50 = tensor.cast %0 : tensor<4x4x9xi1> to tensor<?x?x?xi1>
      %260 = arith.remf %extracted_35, %cst_1 : f16
      %261 = index.add %c8, %139
      scf.if %false_44 {
        %269 = vector.broadcast %cst_1 : f16 to vector<4xf16>
        %dest_57, %accumulated_value_58 = vector.scan <maxf>, %198, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xf16>, vector<4xf16>
        %270 = math.fma %cst_1, %134, %cst_1 : f16
        %extracted_59 = tensor.extract %0[%c2, %c2, %c2] : tensor<4x4x9xi1>
        %271 = vector.broadcast %c590233149_i64 : i64 to vector<4x4x9xi64>
        %272 = arith.remsi %c266518988_i64, %159 : i64
        %273 = index.maxs %118, %c10
        %274 = math.ceil %3 : tensor<9x4xf32>
        %275 = arith.ceildivsi %false_32, %true : i1
      } else {
        %dest_57, %accumulated_value_58 = vector.scan <add>, %105, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xi1>, vector<4xi1>
        %269 = tensor.empty(%c7) : tensor<?x4x9xi16>
        %270 = math.ctpop %extracted_37 : i32
        %271 = math.exp %5 : tensor<9x4xf16>
        %272 = math.round %3 : tensor<9x4xf32>
        %from_elements_59 = tensor.from_elements %134, %cst_1, %extracted_35, %cst_1, %extracted_35, %134, %extracted_35, %cst_1, %extracted_35, %cst_1, %cst_1, %cst_1, %134, %extracted_35, %134, %134, %134, %134, %extracted_35, %extracted_35, %cst_1, %134, %134, %extracted_35, %cst_1, %extracted_35, %extracted_35, %cst_1, %extracted_35, %134, %extracted_35, %134, %cst_1, %134, %134, %cst_1, %extracted_35, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %134, %cst_1, %extracted_35, %extracted_35, %extracted_35, %134, %extracted_35, %134, %134, %cst_1, %134, %cst_1, %134, %extracted_35, %extracted_35, %134, %extracted_35, %134, %cst_1, %134, %134, %extracted_35, %134, %extracted_35, %extracted_35, %cst_1, %cst_1, %134, %extracted_35, %extracted_35, %cst_1, %134, %cst_1, %extracted_35, %134, %extracted_35, %cst_1, %extracted_35, %134, %134, %cst_1, %extracted_35, %134, %cst_1, %134, %134, %cst_1, %extracted_35, %134, %extracted_35, %134, %cst_1, %extracted_35, %extracted_35, %cst_1, %cst_1, %cst_1, %extracted_35, %cst_1, %extracted_35, %cst_1, %cst_1, %134, %extracted_35, %134, %cst_1, %cst_1, %134, %extracted_35, %cst_1, %cst_1, %extracted_35, %134, %cst_1, %extracted_35, %cst_1, %extracted_35, %134, %extracted_35, %134, %cst_1, %extracted_35, %134, %cst_1, %cst_1, %extracted_35, %cst_1, %134, %cst_1, %extracted_35, %134, %134, %cst_1, %cst_1, %cst_1, %134, %cst_1, %134, %extracted_35, %134, %extracted_35 : tensor<4x4x9xf16>
        %273 = math.ceil %3 : tensor<9x4xf32>
        %274 = vector.reduction <and>, %191 : vector<4xi32> into i32
      }
      %alloc_51 = memref.alloc() : memref<9x4xf16>
      %dest_52, %accumulated_value_53 = vector.scan <maxui>, %105, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xi1>, vector<4xi1>
      %262 = bufferization.clone %alloc_6 : memref<9x4xi16> to memref<9x4xi16>
      %263 = affine.if affine_set<(d0, d1, d2, d3) : (d0 mod 64 == 0, d3 + 4 >= 0)>(%c14, %c2, %c8, %c8) -> f16 {
        %269 = vector.splat %true_23 : vector<4x4xi1>
        %270 = vector.load %120[%c4, %c3] : memref<9x4xi1>, vector<9x4xi1>
        %271 = arith.xori %true_23, %true_3 : i1
        %272 = math.absf %6 : tensor<4x4xf32>
        %273 = arith.minf %cst, %cst_0 : f32
        %extracted_57 = tensor.extract %7[%c8, %c1] : tensor<9x4xi1>
        %274 = math.fpowi %5, %107 : tensor<9x4xf16>, tensor<9x4xi32>
        %275 = math.atan2 %extracted_35, %134 : f16
        affine.yield %134 : f16
      } else {
        %269 = arith.divsi %c1796693505_i32, %c213252639_i32 : i32
        %270 = math.round %9 : tensor<9x4xf32>
        %271 = bufferization.to_tensor %alloc_14 : memref<4x4x9xi64>
        %alloca_57 = memref.alloca() : memref<4x4xf16>
        %272 = math.absf %8 : tensor<9x4xf16>
        %273 = bufferization.clone %89 : memref<9x4xf16> to memref<9x4xf16>
        %274 = arith.remui %159, %c590233149_i64 : i64
        %275 = arith.remf %cst_2, %extracted_39 : f32
        affine.yield %extracted_35 : f16
      }
      %inserted_54 = tensor.insert %true_23 into %collapsed[%c13, %c1] : tensor<16x9xi1>
      %264 = vector.matrix_multiply %31, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<2xi1>, vector<4xi1>) -> vector<2xi1>
      %alloca_55 = memref.alloca() : memref<9x4xi32>
      %265 = vector.load %alloc_19[%c2, %c0, %c1] : memref<4x4x9xi32>, vector<9x4xi32>
      %from_elements_56 = tensor.from_elements %c590233149_i64, %c590233149_i64, %c266518988_i64, %c266518988_i64, %c590233149_i64, %159, %c590233149_i64, %c266518988_i64, %c590233149_i64, %c266518988_i64, %c590233149_i64, %c266518988_i64, %159, %c266518988_i64, %c590233149_i64, %c266518988_i64 : tensor<4x4xi64>
      %266 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 + 4) ceildiv 32 == 0, (d0 floordiv 2) ceildiv 8 == 0)>(%c0, %c8, %c8, %c13) -> i1 {
        %269 = vector.extract %56[8] : vector<9x4xf32>
        %270 = math.cttz %20 : tensor<i1>
        %271 = vector.load %alloc_13[%c4, %c1] : memref<9x4xf32>, vector<4x4xf32>
        %272 = index.casts %c3 : index to i32
        %273 = arith.maxui %true_4, %true_27 : i1
        %274 = arith.remf %extracted_39, %cst_0 : f32
        %275 = vector.broadcast %c1796693505_i32 : i32 to vector<4x4xi32>
        %276 = memref.realloc %alloc_20 : memref<9xi1> to memref<4xi1>
        affine.yield %true_23 : i1
      } else {
        %269 = vector.flat_transpose %187 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %270 = math.powf %cst_1, %cst_1 : f16
        %271 = tensor.empty() : tensor<4x4xi32>
        %272 = vector.gather %271[%44, %c7] [%45], %105, %45 : tensor<4x4xi32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi32> into vector<4x4xi32>
        %273 = memref.realloc %140 : memref<9xi1> to memref<4xi1>
        %274 = math.cttz %c590233149_i64 : i64
        %275 = vector.broadcast %extracted : i16 to vector<9xi16>
        %dest_57, %accumulated_value_58 = vector.scan <add>, %149, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi16>, vector<9xi16>
        %276 = vector.reduction <mul>, %49 : vector<2xi1> into i1
        %277 = math.copysign %8, %8 : tensor<9x4xf16>
        affine.yield %true_27 : i1
      }
      %267 = scf.if %false -> (i1) {
        %269 = arith.remf %134, %cst_1 : f16
        %270 = math.ctlz %false_44 : i1
        %271 = vector.transpose %158, [1, 0] : vector<9x4xf16> to vector<4x9xf16>
        %272 = arith.addi %159, %c590233149_i64 : i64
        %273 = vector.broadcast %134 : f16 to vector<9xf16>
        %274 = vector.broadcast %true_23 : i1 to vector<9xi1>
        %275 = vector.maskedload %89[%c5, %c2], %274, %273 : memref<9x4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %276 = math.absf %134 : f16
        %277 = arith.minf %134, %extracted_35 : f16
        %278 = index.maxu %69, %76
        scf.yield %false_32 : i1
      } else {
        %269 = vector.reduction <minui>, %19 : vector<4xi1> into i1
        %inserted_57 = tensor.insert %156 into %107[%c3, %c0] : tensor<9x4xi32>
        %from_elements_58 = tensor.from_elements %extracted_35, %cst_1, %cst_1, %extracted_35, %134, %cst_1, %extracted_35, %extracted_35, %cst_1, %extracted_35, %cst_1, %cst_1, %cst_1, %extracted_35, %134, %cst_1, %extracted_35, %134, %134, %cst_1, %cst_1, %134, %134, %extracted_35, %extracted_35, %extracted_35, %extracted_35, %extracted_35, %extracted_35, %cst_1, %134, %134, %cst_1, %cst_1, %cst_1, %extracted_35 : tensor<9x4xf16>
        %270 = math.sqrt %cst_2 : f32
        %271 = vector.broadcast %c22774_i16 : i16 to vector<9xi16>
        %272 = vector.broadcast %true_3 : i1 to vector<9xi1>
        %273 = vector.maskedload %alloc_5[%c8, %c3], %272, %271 : memref<9x4xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %274 = math.exp %167 : tensor<9x5xf16>
        %275 = math.log10 %14 : tensor<9x4xf32>
        %276 = vector.maskedload %alloc_8[%c5, %c1], %272, %272 : memref<9x4xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        scf.yield %false : i1
      }
      %268 = tensor.empty() : tensor<4x4x9xi16>
      scf.yield %268 : tensor<4x4x9xi16>
    }
    %241 = scf.if %true_27 -> (memref<4x4x9xf16>) {
      %259 = math.exp %6 : tensor<4x4xf32>
      %260 = arith.remui %true_24, %true_24 : i1
      %inserted_50 = tensor.insert %159 into %12[%c0, %c3] : tensor<4x4xi64>
      %261 = math.absf %9 : tensor<9x4xf32>
      %262 = math.tanh %3 : tensor<9x4xf32>
      %263 = index.maxu %c14, %rank
      %264 = arith.shli %true_24, %true_23 : i1
      %265 = arith.divsi %true_23, %true_4 : i1
      scf.yield %alloc_11 : memref<4x4x9xf16>
    } else {
      %259 = arith.mulf %cst_0, %cst : f32
      %260 = arith.minf %cst_0, %cst : f32
      %261 = arith.divsi %true_4, %false_32 : i1
      %262 = math.floor %6 : tensor<4x4xf32>
      %263 = arith.negf %cst_0 : f32
      %264 = math.log10 %cst_0 : f32
      %265 = index.castu %c5 : index to i32
      %266 = vector.load %alloc_21[%c4] : memref<9xi1>, vector<4x4xi1>
      scf.yield %alloc_11 : memref<4x4x9xf16>
    }
    %242 = math.rsqrt %110 : tensor<9x5xf16>
    %243 = vector.reduction <minsi>, %35 : vector<1xi1> into i1
    %244 = math.cos %167 : tensor<9x5xf16>
    %245 = math.round %extracted_35 : f16
    %246 = index.castu %c5 : index to i32
    scf.execute_region {
      %259 = arith.muli %c1833243423_i32, %c213252639_i32 : i32
      %260 = index.sizeof
      %261 = vector.reduction <xor>, %187 : vector<1xi1> into i1
      %262 = vector.load %alloc_16[%c0, %c0] : memref<9x4xi32>, vector<9x4xi32>
      %263 = affine.max affine_map<(d0, d1, d2, d3) -> (0, -32, d2 - d0 ceildiv 64)>(%44, %c5, %204, %c6)
      %264 = vector.transpose %146, [1, 2, 0] : vector<4x4x9xi32> to vector<4x9x4xi32>
      scf.execute_region {
        %272 = vector.broadcast %true_3 : i1 to vector<1x1xi1>
        %273 = vector.outerproduct %187, %35, %272 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
        %from_elements_51 = tensor.from_elements %extracted_26, %c22774_i16, %extracted, %extracted, %c22774_i16, %c-4654_i16, %extracted, %extracted_26, %c22774_i16, %extracted_26, %extracted_26, %c-4654_i16, %c22774_i16, %extracted, %extracted_26, %extracted, %c-4654_i16, %extracted, %c22774_i16, %extracted, %extracted_26, %extracted, %extracted_26, %extracted, %c22774_i16, %c-4654_i16, %extracted, %c22774_i16, %c-4654_i16, %c-4654_i16, %extracted_26, %extracted_26, %extracted, %c-4654_i16, %c-4654_i16, %c22774_i16 : tensor<9x4xi16>
        %274 = arith.xori %c590233149_i64, %159 : i64
        %275 = math.round %9 : tensor<9x4xf32>
        %alloc_52 = memref.alloc() : memref<9x4xi32>
        %276 = math.rsqrt %121 : tensor<9x4xf32>
        %277 = arith.divsi %false_32, %true_24 : i1
        %278 = math.tanh %14 : tensor<9x4xf32>
        %279 = arith.minf %cst_0, %cst : f32
        %280 = math.round %from_elements_38 : tensor<9x4xf32>
        %281 = math.absi %11 : tensor<9x4xi16>
        %282 = index.ceildivu %182, %175
        %283 = index.maxu %c6, %101
        %284 = vector.matrix_multiply %191, %191 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        %285 = memref.atomic_rmw mins %c1796693505_i32, %alloc_9[%c3, %c2] : (i32, memref<9x4xi32>) -> i32
        %286 = arith.minf %cst, %extracted_39 : f32
        scf.yield
      }
      %rank_50 = tensor.rank %21 : tensor<i1>
      %265 = index.add %139, %44
      %266 = arith.shrsi %extracted, %extracted : i16
      %267 = math.cttz %7 : tensor<9x4xi1>
      %268 = arith.divsi %true_23, %true_4 : i1
      %269 = math.sqrt %6 : tensor<4x4xf32>
      memref.store %cst_0, %alloc_25[%c0, %c0, %c6] : memref<4x4x9xf32>
      %270 = scf.execute_region -> i64 {
        %272 = affine.load %alloc_14[%c8, %c2, %c7] : memref<4x4x9xi64>
        %273 = arith.shrui %false_44, %true_27 : i1
        %274 = vector.broadcast %c1796693505_i32 : i32 to vector<4x4xi32>
        %275 = math.log1p %9 : tensor<9x4xf32>
        %276 = index.castu %c1833243423_i32 : i32 to index
        %277 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %cst_52 = arith.constant 0.000000e+00 : f32
        %278 = vector.transfer_read %alloc[%260, %101], %cst_52 : memref<4x4xf32>, vector<f32>
        %279 = index.ceildivu %118, %175
        %280 = math.expm1 %14 : tensor<9x4xf32>
        %281 = arith.shrsi %false_44, %true_24 : i1
        %282 = vector.splat %c1796693505_i32 : vector<9x4xi32>
        %283 = index.maxu %c9, %279
        %284 = affine.min affine_map<(d0, d1, d2) -> (d1, (d2 - 64) * -2, (d2 ceildiv 32) * 4 + 32, (d2 ceildiv 32) ceildiv 4)>(%260, %182, %c0)
        %285 = vector.broadcast %extracted_35 : f16 to vector<4xf16>
        %286 = vector.maskedload %alloc_18[%c0, %c3], %19, %285 : memref<9x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %287 = arith.negf %extracted_39 : f32
        %alloc_53 = memref.alloc() : memref<4x4x9xi1>
        memref.tensor_store %2, %alloc_53 : memref<4x4x9xi1>
        scf.yield %c590233149_i64 : i64
      }
      %271 = arith.muli %c-4654_i16, %c22774_i16 : i16
      scf.yield
    }
    %extracted_48 = tensor.extract %from_elements[%c0, %c1] : tensor<9x4xi1>
    %247 = math.log1p %14 : tensor<9x4xf32>
    %248 = math.tan %9 : tensor<9x4xf32>
    %249 = scf.index_switch %44 -> tensor<4x4xi64> 
    case 1 {
      %259 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%189, %c13, %c3)
      %260 = bufferization.to_memref %3 : memref<9x4xf32>
      affine.for %arg2 = 0 to 82 {
      }
      %261 = index.casts %222 : index to i32
      %262 = index.castu %c13 : index to i32
      %263 = math.ctlz %extracted_37 : i32
      %264 = arith.minf %134, %cst_1 : f16
      %265 = math.powf %8, %8 : tensor<9x4xf16>
      %266 = index.divu %c9, %rank_33
      %267 = affine.max affine_map<(d0) -> ((d0 ceildiv 64) mod 32)>(%c15)
      %268 = bufferization.clone %241 : memref<4x4x9xf16> to memref<4x4x9xf16>
      %269 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 - 16)>(%101, %c15, %222)
      %alloca_50 = memref.alloca() : memref<9x4xi32>
      %270 = arith.divui %true_3, %true_4 : i1
      %271 = math.powf %extracted_35, %cst_1 : f16
      %cast_51 = tensor.cast %expanded_31 : tensor<4x4x1xi64> to tensor<?x?x?xi64>
      scf.yield %12 : tensor<4x4xi64>
    }
    case 2 {
      %259 = math.fpowi %3, %107 : tensor<9x4xf32>, tensor<9x4xi32>
      %260 = bufferization.clone %140 : memref<9xi1> to memref<9xi1>
      %261 = index.castu %c4 : index to i32
      %262 = index.add %204, %44
      %263 = arith.ori %extracted, %extracted : i16
      %264 = index.ceildivs %234, %c14
      %265 = arith.xori %false_44, %false_44 : i1
      %266 = math.absf %9 : tensor<9x4xf32>
      %267 = math.cttz %15 : tensor<9x4xi16>
      %splat = tensor.splat %extracted : tensor<4x4xi16>
      %268 = math.fpowi %14, %107 : tensor<9x4xf32>, tensor<9x4xi32>
      %269 = index.casts %c5 : index to i32
      %rank_50 = tensor.rank %15 : tensor<9x4xi16>
      scf.execute_region {
        %270 = arith.mulf %extracted_35, %cst_1 : f16
        %271 = vector.broadcast %134 : f16 to vector<4xf16>
        %272 = vector.insert %271, %62 [2] : vector<4xf16> into vector<9x4xf16>
        %273 = arith.cmpi ne, %true_24, %true_27 : i1
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %85, %191 {inclusive = false, reduction_dim = 0 : i64} : vector<9x4xi32>, vector<4xi32>
        %274 = tensor.empty() : tensor<4x4xi32>
        %275 = math.fpowi %6, %274 : tensor<4x4xf32>, tensor<4x4xi32>
        %276 = arith.divsi %c213252639_i32, %c213252639_i32 : i32
        %from_elements_54 = tensor.from_elements %cst_1, %134, %cst_1, %134, %134, %134, %extracted_35, %cst_1, %134, %extracted_35, %134, %134, %extracted_35, %extracted_35, %134, %extracted_35 : tensor<4x4xf16>
        %277 = vector.broadcast %extracted_39 : f32 to vector<9x4xf32>
        %278 = index.castu %202 : index to i32
        %279 = math.log2 %121 : tensor<9x4xf32>
        %280 = arith.addi %true_3, %true_27 : i1
        %cast_55 = tensor.cast %9 : tensor<9x4xf32> to tensor<?x?xf32>
        %281 = vector.transpose %105, [0, 1] : vector<4x4xi1> to vector<4x4xi1>
        %collapsed_56 = tensor.collapse_shape %5 [[0, 1]] : tensor<9x4xf16> into tensor<36xf16>
        %282 = vector.broadcast %c1833243423_i32 : i32 to vector<9x4xi32>
        %283 = index.floordivs %c13, %185
        scf.yield
      }
      %true_51 = index.bool.constant true
      memref.store %cst_1, %241[%c0, %c3, %c6] : memref<4x4x9xf16>
      scf.yield %12 : tensor<4x4xi64>
    }
    default {
      %259 = arith.divui %159, %159 : i64
      %260 = math.log1p %5 : tensor<9x4xf16>
      %261 = math.roundeven %5 : tensor<9x4xf16>
      scf.execute_region {
        %271 = index.casts %185 : index to i32
        %272 = index.maxu %209, %44
        %273 = arith.mulf %cst_1, %134 : f16
        %274 = arith.negf %134 : f16
        %275 = index.castu %185 : index to i32
        %276 = arith.remsi %c1833243423_i32, %c1796693505_i32 : i32
        %277 = arith.maxf %extracted_35, %cst_1 : f16
        %278 = math.ctlz %collapsed : tensor<16x9xi1>
        %279 = vector.insertelement %true_24, %19[%175 : index] : vector<4xi1>
        %280 = vector.gather %10[%234, %rank] [%55], %54, %54 : tensor<9x4xi1>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi1> into vector<9x4xi1>
        %281 = affine.min affine_map<(d0, d1, d2) -> (d1 + 16)>(%178, %c6, %c7)
        memref.tensor_store %11, %alloc_5 : memref<9x4xi16>
        %282 = vector.load %140[%c3] : memref<9xi1>, vector<4x4x9xi1>
        %283 = arith.negf %cst_1 : f16
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %70, %191 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
        %284 = math.ipowi %159, %159 : i64
        scf.yield
      }
      %collapsed_50 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x4xi64> into tensor<16xi64>
      %alloc_51 = memref.alloc() : memref<4x4x1xi64>
      memref.tensor_store %expanded_31, %alloc_51 : memref<4x4x1xi64>
      %262 = math.exp %9 : tensor<9x4xf32>
      %263 = math.cttz %12 : tensor<4x4xi64>
      %264 = arith.divf %cst_2, %cst_0 : f32
      %265 = math.fpowi %5, %107 : tensor<9x4xf16>, tensor<9x4xi32>
      memref.tensor_store %107, %alloc_7 : memref<9x4xi32>
      %266 = vector.transpose %88, [1, 0] : vector<2x4xf32> to vector<4x2xf32>
      %267 = math.ipowi %0, %1 : tensor<4x4x9xi1>
      %268 = arith.shrui %extracted_37, %156 : i32
      %269 = vector.insert %191, %55 [3] : vector<4xi32> into vector<9x4xi32>
      %270 = math.rsqrt %cst_2 : f32
      scf.yield %4 : tensor<4x4xi64>
    }
    %250 = arith.addi %true_4, %true_24 : i1
    %251 = math.cttz %c-4654_i16 : i16
    %252 = scf.if %false -> (i32) {
      %259 = math.absf %9 : tensor<9x4xf32>
      %260 = math.fma %110, %110, %167 : tensor<9x5xf16>
      %extracted_50 = tensor.extract %6[%c0, %c2] : tensor<4x4xf32>
      %alloc_51 = memref.alloc() : memref<4x9x1xi1>
      memref.tensor_store %expanded, %alloc_51 : memref<4x9x1xi1>
      %261 = affine.min affine_map<(d0) -> ((-d0) mod 2 + 4)>(%69)
      %262 = math.ceil %from_elements_38 : tensor<9x4xf32>
      %false_52 = index.bool.constant false
      %263 = arith.mulf %extracted_39, %extracted_39 : f32
      scf.yield %c213252639_i32 : i32
    } else {
      %259 = arith.xori %c-4654_i16, %c-4654_i16 : i16
      %260 = arith.addi %false, %true_27 : i1
      %261 = math.atan2 %extracted_39, %cst : f32
      %cst_50 = arith.constant 1.000000e+00 : f32
      %262 = vector.transfer_read %from_elements_38[%204, %93], %cst_50 : tensor<9x4xf32>, vector<f32>
      %263 = math.powf %cst, %cst_2 : f32
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1, %alloc_21, %transposed : tensor<4x4x9xi1>, memref<9xi1>, tensor<4x9xi1>) outs(%1 : tensor<4x4x9xi1>) {
      ^bb0(%in: i1, %in_53: i1, %in_54: i1, %out: i1):
        %267 = index.sizeof
        %268 = arith.remui %c22774_i16, %extracted : i16
        %269 = arith.minf %extracted_39, %cst_50 : f32
        %alloc_55 = memref.alloc() : memref<4x4xi64>
        memref.tensor_store %4, %alloc_55 : memref<4x4xi64>
        %270 = math.ipowi %10, %7 : tensor<9x4xi1>
        %271 = index.add %c15, %221
        %272 = vector.broadcast %93 : index to vector<9xindex>
        %273 = vector.broadcast %true_23 : i1 to vector<9xi1>
        %274 = vector.broadcast %c266518988_i64 : i64 to vector<9xi64>
        vector.scatter %alloc_12[%c3, %c1, %c3] [%272], %273, %274 : memref<4x4x9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %275 = memref.realloc %alloc_20 : memref<9xi1> to memref<4xi1>
        %276 = math.roundeven %cst_1 : f16
        %277 = math.tan %extracted_35 : f16
        %splat = tensor.splat %c-4654_i16 : tensor<9x4xi16>
        %false_56 = index.bool.constant false
        %278 = math.ceil %8 : tensor<9x4xf16>
        %279 = memref.atomic_rmw assign %extracted_26, %alloc_6[%c3, %c0] : (i16, memref<9x4xi16>) -> i16
        %280 = arith.divsi %true_23, %extracted_48 : i1
        memref.tensor_store %11, %alloc_6 : memref<9x4xi16>
        %281 = math.log10 %9 : tensor<9x4xf32>
        %282 = arith.divsi %c22774_i16, %extracted_26 : i16
        %splat_57 = tensor.splat %false_44 : tensor<4x4xi1>
        %dest_58, %accumulated_value_59 = vector.scan <or>, %70, %191 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi32>, vector<4xi32>
        %283 = vector.load %alloc_8[%c2, %c0] : memref<9x4xi1>, vector<9x4xi1>
        %from_elements_60 = tensor.from_elements %134, %134, %134, %extracted_35, %cst_1, %134, %cst_1, %134, %cst_1, %cst_1, %extracted_35, %134, %extracted_35, %134, %extracted_35, %cst_1, %extracted_35, %extracted_35, %134, %cst_1, %cst_1, %extracted_35, %134, %cst_1, %cst_1, %134, %cst_1, %134, %134, %extracted_35, %cst_1, %extracted_35, %extracted_35, %extracted_35, %134, %extracted_35, %134, %134, %cst_1, %134, %cst_1, %134, %cst_1, %134, %134, %cst_1, %extracted_35, %extracted_35, %134, %extracted_35, %134, %extracted_35, %extracted_35, %134, %extracted_35, %134, %extracted_35, %cst_1, %134, %134, %extracted_35, %134, %134, %cst_1, %extracted_35, %cst_1, %extracted_35, %cst_1, %extracted_35, %134, %extracted_35, %extracted_35, %cst_1, %cst_1, %134, %134, %extracted_35, %134, %extracted_35, %134, %134, %134, %cst_1, %extracted_35, %extracted_35, %134, %cst_1, %134, %extracted_35, %cst_1, %134, %extracted_35, %extracted_35, %134, %extracted_35, %cst_1, %cst_1, %extracted_35, %cst_1, %134, %extracted_35, %134, %cst_1, %134, %extracted_35, %cst_1, %cst_1, %134, %cst_1, %134, %134, %extracted_35, %extracted_35, %cst_1, %cst_1, %cst_1, %134, %134, %extracted_35, %cst_1, %cst_1, %cst_1, %cst_1, %extracted_35, %cst_1, %134, %134, %134, %134, %134, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %134, %134, %cst_1, %extracted_35, %134, %134, %134, %extracted_35, %cst_1 : tensor<4x4x9xf16>
        %284 = vector.broadcast %cst_50 : f32 to vector<9x4xf32>
        %285 = vector.fma %284, %53, %56 : vector<9x4xf32>
        %286 = vector.broadcast %cst_1 : f16 to vector<4xf16>
        %287 = vector.maskedload %89[%c5, %c1], %19, %286 : memref<9x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %rank_61 = tensor.rank %21 : tensor<i1>
        %288 = arith.maxsi %false, %false_44 : i1
        %extracted_62 = tensor.extract %18[%c0, %c3] : tensor<4x9xi1>
        %289 = arith.mulf %cst_50, %cst_0 : f32
        %290 = vector.load %alloc_20[%c5] : memref<9xi1>, vector<4x4x9xi1>
        %291 = math.log %6 : tensor<4x4xf32>
        %292 = math.exp %3 : tensor<9x4xf32>
        %rank_63 = tensor.rank %167 : tensor<9x5xf16>
        linalg.yield %in : i1
      } -> tensor<4x4x9xi1>
      %265 = memref.realloc %alloc_21 : memref<9xi1> to memref<4xi1>
      %266 = vector.broadcast %extracted_48 : i1 to vector<4x9xi1>
      %dest_51, %accumulated_value_52 = vector.scan <or>, %152, %266 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4x9xi1>, vector<4x9xi1>
      scf.yield %c1796693505_i32 : i32
    }
    %253 = vector.bitcast %158 : vector<9x4xf16> to vector<9x4xf16>
    %254 = tensor.empty() : tensor<9x4xf16>
    %255 = linalg.copy ins(%8 : tensor<9x4xf16>) outs(%254 : tensor<9x4xf16>) -> tensor<9x4xf16>
    %alloc_49 = memref.alloc() : memref<4x9xi1>
    linalg.transpose ins(%from_elements : tensor<9x4xi1>) outs(%alloc_49 : memref<4x9xi1>) permutation = [1, 0] 
    %256 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%alloc : memref<4x4xf32>) outs(%256 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        memref.tensor_store %16, %alloc_5 : memref<9x4xi16>
        %259 = vector.broadcast %extracted_39 : f32 to vector<4x4xf32>
        %260 = vector.gather %alloc_13[%208, %74] [%45], %105, %259 : memref<9x4xf32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf32> into vector<4x4xf32>
        %261 = math.round %134 : f16
        %262 = arith.xori %true_27, %false_44 : i1
        %263 = memref.realloc %140 : memref<9xi1> to memref<4xi1>
        %264 = vector.maskedload %140[%c6], %19, %19 : memref<9xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %265 = arith.shrsi %c1833243423_i32, %c1329708747_i32 : i32
        %266 = arith.maxsi %159, %c266518988_i64 : i64
        %cst_50 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_50 : f32
      }
    %257 = scf.parallel (%arg2, %arg3) = (%c8, %172) to (%c7, %87) step (%c11, %c12) init (%alloc_18) -> memref<9x4xf16> {
      %259 = vector.broadcast %true_24 : i1 to vector<4x9xi1>
      %260 = vector.insert %259, %82 [0] : vector<4x9xi1> into vector<4x4x9xi1>
      %261 = arith.remui %extracted_26, %extracted_26 : i16
      %262 = affine.if affine_set<(d0) : (0 == 0, d0 + d0 floordiv 64 + 128 >= 0, -(d0 floordiv 64) >= 0, -(d0 floordiv 64) == 0)>(%c12) -> memref<4x4x9xi32> {
        %272 = arith.mulf %cst_1, %extracted_35 : f16
        %273 = affine.load %alloc_8[%c7, %c7] : memref<9x4xi1>
        %true_54 = arith.constant true
        %274 = index.casts %false_32 : i1 to index
        %275 = arith.negf %cst_0 : f32
        %276 = math.tan %110 : tensor<9x5xf16>
        %277 = arith.divsi %c1933136931_i32, %c1796693505_i32 : i32
        %278 = arith.remui %252, %156 : i32
        affine.yield %alloc_19 : memref<4x4x9xi32>
      } else {
        %272 = math.ceil %254 : tensor<9x4xf16>
        %273 = arith.minsi %c1833243423_i32, %252 : i32
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %70, %191 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4xi32>, vector<4xi32>
        %274 = arith.remsi %false, %true_23 : i1
        %275 = math.copysign %134, %extracted_35 : f16
        %276 = vector.reduction <minsi>, %187 : vector<1xi1> into i1
        %from_elements_56 = tensor.from_elements %extracted_37, %extracted_37, %extracted_37, %252, %c1933136931_i32, %c213252639_i32, %c1329708747_i32, %156, %156, %extracted_37, %c1833243423_i32, %c213252639_i32, %c1329708747_i32, %extracted_37, %c1933136931_i32, %c213252639_i32 : tensor<4x4xi32>
        %277 = arith.divf %extracted_39, %extracted_39 : f32
        affine.yield %alloc_19 : memref<4x4x9xi32>
      }
      %263 = index.castu %c3 : index to i32
      %false_50 = index.bool.constant false
      %inserted_51 = tensor.insert %extracted_48 into %transposed[%c1, %c1] : tensor<4x9xi1>
      affine.for %arg4 = 0 to 37 {
      }
      %264 = vector.load %alloc_49[%c2, %c6] : memref<4x9xi1>, vector<9x4xi1>
      %265 = math.exp %5 : tensor<9x4xf16>
      %266 = vector.extract_strided_slice %158 {offsets = [2], sizes = [1], strides = [1]} : vector<9x4xf16> to vector<1x4xf16>
      %267 = vector.broadcast %44 : index to vector<4xindex>
      vector.scatter %alloc_19[%c2, %c2, %c3] [%267], %19, %191 : memref<4x4x9xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %268 = math.tan %3 : tensor<9x4xf32>
      %269 = math.absf %cst_1 : f16
      %270 = arith.shli %true_4, %false : i1
      %271 = index.floordivs %99, %c11
      %inserted_52 = tensor.insert %false_50 into %18[%c0, %c4] : tensor<4x9xi1>
      %alloc_53 = memref.alloc() : memref<9x4xf16>
      scf.reduce(%alloc_53)  : memref<9x4xf16> {
      ^bb0(%arg4: memref<9x4xf16>, %arg5: memref<9x4xf16>):
        %false_54 = index.bool.constant false
        %272 = vector.insert %191, %55 [5] : vector<4xi32> into vector<9x4xi32>
        %273 = arith.minsi %159, %c266518988_i64 : i64
        %274 = arith.cmpf une, %cst_1, %extracted_35 : f16
        %275 = vector.broadcast %true_24 : i1 to vector<9x4xi1>
        %276 = vector.transpose %253, [0, 1] : vector<9x4xf16> to vector<9x4xf16>
        %277 = arith.andi %extracted_37, %c1796693505_i32 : i32
        %278 = index.castu %175 : index to i32
        %alloc_55 = memref.alloc() : memref<9x4xf16>
        scf.reduce.return %alloc_55 : memref<9x4xf16>
      }
      scf.yield
    }
    %258 = affine.vector_load %alloc_10[%c4, %178] : memref<4x4xi1>, vector<5xi1>
    affine.vector_store %31, %140[%74] : memref<9xi1>, vector<2xi1>
    vector.print %19 : vector<4xi1>
    vector.print %31 : vector<2xi1>
    vector.print %35 : vector<1xi1>
    vector.print %45 : vector<4x4xi32>
    vector.print %49 : vector<2xi1>
    vector.print %53 : vector<9x4xf32>
    vector.print %54 : vector<9x4xi1>
    vector.print %55 : vector<9x4xi32>
    vector.print %56 : vector<9x4xf32>
    vector.print %62 : vector<9x4xf16>
    vector.print %63 : vector<9x4xf16>
    vector.print %70 : vector<4x4xi32>
    vector.print %82 : vector<4x4x9xi1>
    vector.print %85 : vector<9x4xi32>
    vector.print %88 : vector<2x4xf32>
    vector.print %105 : vector<4x4xi1>
    vector.print %145 : vector<4x4x9xf32>
    vector.print %146 : vector<4x4x9xi32>
    vector.print %147 : vector<4x4x9xf32>
    vector.print %149 : vector<9x4xi16>
    vector.print %152 : vector<4x4x9xi1>
    vector.print %158 : vector<9x4xf16>
    vector.print %165 : vector<4x4xf16>
    vector.print %187 : vector<1xi1>
    vector.print %191 : vector<4xi32>
    vector.print %198 : vector<4x4xf16>
    vector.print %253 : vector<9x4xf16>
    vector.print %258 : vector<5xi1>
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c213252639_i32 : i32
    vector.print %c22774_i16 : i16
    vector.print %c266518988_i64 : i64
    vector.print %true : i1
    vector.print %c-4654_i16 : i16
    vector.print %c1933136931_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c1833243423_i32 : i32
    vector.print %c1329708747_i32 : i32
    vector.print %c1796693505_i32 : i32
    vector.print %true_3 : i1
    vector.print %true_4 : i1
    vector.print %c590233149_i64 : i64
    vector.print %extracted : i16
    vector.print %true_23 : i1
    vector.print %true_24 : i1
    vector.print %extracted_26 : i16
    vector.print %false : i1
    vector.print %true_27 : i1
    vector.print %false_32 : i1
    vector.print %134 : f16
    vector.print %extracted_35 : f16
    vector.print %extracted_37 : i32
    vector.print %extracted_39 : f32
    vector.print %156 : i32
    vector.print %159 : i64
    vector.print %false_44 : i1
    vector.print %extracted_48 : i1
    vector.print %252 : i32
    return
  }
}
