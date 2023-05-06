module {
  func.func @func1() -> index {
    %cst = arith.constant 3.708800e+04 : f16
    %c1753030227_i64 = arith.constant 1753030227 : i64
    %c870719789_i32 = arith.constant 870719789 : i32
    %c-6170_i16 = arith.constant -6170 : i16
    %c30065_i16 = arith.constant 30065 : i16
    %cst_0 = arith.constant 1.34370675E+9 : f32
    %true = arith.constant true
    %true_1 = arith.constant true
    %false = arith.constant false
    %cst_2 = arith.constant 5.542400e+04 : f16
    %true_3 = arith.constant true
    %c631077143_i64 = arith.constant 631077143 : i64
    %cst_4 = arith.constant 2.924800e+04 : f16
    %cst_5 = arith.constant 1.83832666E+9 : f32
    %true_6 = arith.constant true
    %cst_7 = arith.constant 5.328000e+04 : f16
    %0 = tensor.empty() : tensor<3xi64>
    %1 = tensor.empty() : tensor<3x12xi1>
    %2 = tensor.empty() : tensor<3xf16>
    %3 = tensor.empty() : tensor<12x3x3xi16>
    %4 = tensor.empty() : tensor<3x12xi16>
    %5 = tensor.empty() : tensor<3xi32>
    %6 = tensor.empty() : tensor<3xi64>
    %7 = tensor.empty() : tensor<12x3x3xf16>
    %8 = tensor.empty() : tensor<3xi16>
    %9 = tensor.empty() : tensor<9x14x12xi32>
    %10 = tensor.empty() : tensor<12x3x3xi1>
    %11 = tensor.empty() : tensor<12x3x3xi32>
    %12 = tensor.empty() : tensor<3xf16>
    %13 = tensor.empty() : tensor<3xf32>
    %14 = tensor.empty() : tensor<3xi32>
    %15 = tensor.empty() : tensor<3x12xi32>
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
    %alloc = memref.alloc() : memref<9x14x12xi64>
    %alloc_8 = memref.alloc() : memref<9x14x12xi64>
    %alloc_9 = memref.alloc() : memref<9x14x12xi1>
    %alloc_10 = memref.alloc() : memref<3xf16>
    %alloc_11 = memref.alloc() : memref<3xi64>
    %alloc_12 = memref.alloc() : memref<12x3x3xi32>
    %alloc_13 = memref.alloc() : memref<9x14x12xi32>
    %alloc_14 = memref.alloc() : memref<3xi64>
    %alloc_15 = memref.alloc() : memref<12x3x3xi64>
    %alloc_16 = memref.alloc() : memref<12x3x3xf16>
    %alloc_17 = memref.alloc() : memref<3xi32>
    %alloc_18 = memref.alloc() : memref<9x14x12xf16>
    %alloc_19 = memref.alloc() : memref<12x3x3xi16>
    %alloc_20 = memref.alloc() : memref<9x14x12xf32>
    %alloc_21 = memref.alloc() : memref<3xi64>
    %alloc_22 = memref.alloc() : memref<3x12xi64>
    %16 = tensor.empty() : tensor<3xi32>
    %17 = linalg.copy ins(%5 : tensor<3xi32>) outs(%16 : tensor<3xi32>) -> tensor<3xi32>
    %alloc_23 = memref.alloc() : memref<3xi64>
    linalg.transpose ins(%0 : tensor<3xi64>) outs(%alloc_23 : memref<3xi64>) permutation = [0] 
    %18 = tensor.empty() : tensor<3x3xf16>
    %reduced = linalg.reduce ins(%7 : tensor<12x3x3xf16>) outs(%18 : tensor<3x3xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %256 = index.maxs %c9, %c9
        %257 = index.mul %c10, %c0
        %258 = vector.broadcast %c870719789_i32 : i32 to vector<1xi32>
        %259 = vector.multi_reduction <maxsi>, %258, %258 [] : vector<1xi32> to vector<1xi32>
        %260 = math.ipowi %9, %9 : tensor<9x14x12xi32>
        %261 = vector.multi_reduction <xor>, %258, %258 [] : vector<1xi32> to vector<1xi32>
        %262 = index.floordivs %c6, %c1
        %263 = math.cos %18 : tensor<3x3xf16>
        %264 = index.sizeof
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    scf.parallel (%arg0) = (%c6) to (%c8) step (%c5) {
      %256 = vector.broadcast %c870719789_i32 : i32 to vector<14xi32>
      %257 = vector.broadcast %c870719789_i32 : i32 to vector<14x14xi32>
      %258 = vector.outerproduct %256, %256, %257 {kind = #vector.kind<add>} : vector<14xi32>, vector<14xi32>
      %259 = math.exp2 %cst_7 : f16
      %260 = vector.create_mask %c12, %c0 : vector<3x12xi1>
      %cast_52 = tensor.cast %6 : tensor<3xi64> to tensor<?xi64>
      %261 = arith.maxsi %true_6, %true_6 : i1
      %262 = index.castu %c12 : index to i32
      %263 = math.fma %7, %7, %7 : tensor<12x3x3xf16>
      bufferization.dealloc_tensor %10 : tensor<12x3x3xi1>
      %264 = bufferization.to_tensor %alloc_16 : memref<12x3x3xf16>
      %265 = math.cos %12 : tensor<3xf16>
      %266 = math.ceil %13 : tensor<3xf32>
      %267 = vector.broadcast %c870719789_i32 : i32 to vector<i32>
      %268 = vector.transfer_write %267, %5[%c3] : vector<i32>, tensor<3xi32>
      %269 = vector.broadcast %c870719789_i32 : i32 to vector<i32>
      %270 = vector.transfer_write %269, %15[%c8, %c12] : vector<i32>, tensor<3x12xi32>
      %271 = vector.broadcast %cst_5 : f32 to vector<3x12xf32>
      %272 = vector.fma %271, %271, %271 : vector<3x12xf32>
      %273 = arith.addi %c631077143_i64, %c631077143_i64 : i64
      %274 = arith.maxsi %true_3, %true_1 : i1
      scf.yield
    }
    %19 = affine.vector_load %alloc[%c8, %c9, %c1] : memref<9x14x12xi64>, vector<3xi64>
    affine.vector_store %19, %alloc_8[%c12, %c11, %c14] : memref<9x14x12xi64>, vector<3xi64>
    %alloc_24 = memref.alloc() : memref<3xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%alloc_11, %alloc_24 : memref<3xi64>, memref<3xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = vector.broadcast %cst_0 : f32 to vector<3x12xf32>
    %23 = vector.fma %22, %22, %22 : vector<3x12xf32>
    %24 = arith.mulf %cst_2, %cst_2 : f16
    %25 = arith.ceildivsi %c-6170_i16, %c30065_i16 : i16
    %26 = math.ctpop %10 : tensor<12x3x3xi1>
    %27 = vector.matrix_multiply %19, %19 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %28 = arith.divf %cst_0, %cst_5 : f32
    %collapsed = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<12x3x3xi1> into tensor<36x3xi1>
    %29 = math.log2 %cst_2 : f16
    %from_elements = tensor.from_elements %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32 : tensor<12x3x3xi32>
    %30 = arith.xori %c631077143_i64, %c631077143_i64 : i64
    %31 = math.ceil %18 : tensor<3x3xf16>
    %32 = vector.extract_strided_slice %23 {offsets = [0], sizes = [1], strides = [1]} : vector<3x12xf32> to vector<1x12xf32>
    %33 = index.maxs %c8, %c9
    %34 = index.floordivs %c12, %c7
    %35 = arith.shrsi %c631077143_i64, %c631077143_i64 : i64
    %alloca = memref.alloca() : memref<9x14x12xf16>
    %36 = memref.realloc %alloc_11 : memref<3xi64> to memref<3xi64>
    %37 = math.powf %12, %2 : tensor<3xf16>
    vector.print %23 : vector<3x12xf32>
    %38 = math.log %2 : tensor<3xf16>
    %39 = arith.maxsi %c30065_i16, %c-6170_i16 : i16
    %alloc_25 = memref.alloc() : memref<12x14xi32>
    %40 = tensor.empty() : tensor<3x14xi32>
    %41 = linalg.matmul ins(%15, %alloc_25 : tensor<3x12xi32>, memref<12x14xi32>) outs(%40 : tensor<3x14xi32>) -> tensor<3x14xi32>
    %42 = math.expm1 %13 : tensor<3xf32>
    %43 = math.ctlz %16 : tensor<3xi32>
    %44 = vector.broadcast %cst_5 : f32 to vector<1xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %32, %44 {inclusive = true, reduction_dim = 1 : i64} : vector<1x12xf32>, vector<1xf32>
    %rank = tensor.rank %5 : tensor<3xi32>
    %45 = math.tan %7 : tensor<12x3x3xf16>
    %extracted = tensor.extract %1[%c1, %c6] : tensor<3x12xi1>
    memref.assume_alignment %alloc_14, 1 : memref<3xi64>
    %46 = memref.load %alloc_9[%c3, %c10, %c0] : memref<9x14x12xi1>
    %47 = index.ceildivs %c8, %c5
    %48 = math.ctlz %10 : tensor<12x3x3xi1>
    %49 = arith.remf %cst, %cst : f16
    %50 = memref.realloc %alloc_23 : memref<3xi64> to memref<14xi64>
    %51 = math.ctpop %8 : tensor<3xi16>
    %52 = tensor.empty() : tensor<3x3xf16>
    %53 = linalg.matmul ins(%reduced, %reduced : tensor<3x3xf16>, tensor<3x3xf16>) outs(%52 : tensor<3x3xf16>) -> tensor<3x3xf16>
    %54 = vector.create_mask %c8, %c11, %c12 : vector<12x3x3xi1>
    %cast = tensor.cast %10 : tensor<12x3x3xi1> to tensor<?x?x?xi1>
    %55 = index.casts %33 : index to i32
    %56 = tensor.empty() : tensor<3x3xf16>
    %57 = linalg.matmul ins(%18, %18 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%56 : tensor<3x3xf16>) -> tensor<3x3xf16>
    %58 = vector.bitcast %22 : vector<3x12xf32> to vector<3x12xf32>
    %59 = math.fma %13, %13, %13 : tensor<3xf32>
    %60 = arith.subi %true, %extracted : i1
    %61 = math.cttz %9 : tensor<9x14x12xi32>
    %62 = math.log1p %13 : tensor<3xf32>
    %63 = tensor.empty() : tensor<3x3xf16>
    %64 = linalg.matmul ins(%reduced, %18 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%63 : tensor<3x3xf16>) -> tensor<3x3xf16>
    %65 = arith.xori %c30065_i16, %c30065_i16 : i16
    %66 = arith.addi %true_6, %true : i1
    %extracted_26 = tensor.extract %40[%c2, %c0] : tensor<3x14xi32>
    %67 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d0)>(%c15, %c10, %c6, %c3)
    %68 = index.sub %c8, %34
    %69 = math.cttz %6 : tensor<3xi64>
    %70 = math.tan %cst_2 : f16
    %71 = vector.flat_transpose %27 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %72 = bufferization.to_memref %15 : memref<3x12xi32>
    %73 = arith.andi %true_6, %true_3 : i1
    %74 = index.maxs %rank, %47
    %75 = vector.extract_strided_slice %71 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
    %76 = math.roundeven %cst_4 : f16
    %cast_27 = tensor.cast %7 : tensor<12x3x3xf16> to tensor<?x?x?xf16>
    %77 = math.atan %7 : tensor<12x3x3xf16>
    %78 = tensor.empty() : tensor<3xf32>
    %mapped = linalg.map ins(%13 : tensor<3xf32>) outs(%78 : tensor<3xf32>)
      (%in: f32) {
        vector.print %71 : vector<1xi64>
        %256 = arith.remui %true_3, %true_3 : i1
        %257 = vector.broadcast %c30065_i16 : i16 to vector<14xi16>
        %258 = vector.transfer_write %257, %4[%68, %47] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi16>, tensor<3x12xi16>
        %259 = index.maxs %c10, %c0
        %260 = vector.broadcast %c1 : index to vector<9xindex>
        %261 = vector.broadcast %true_3 : i1 to vector<9xi1>
        %262 = vector.broadcast %c1753030227_i64 : i64 to vector<9xi64>
        vector.scatter %alloc_8[%c5, %c8, %c8] [%260], %261, %262 : memref<9x14x12xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %263 = math.ipowi %8, %8 : tensor<3xi16>
        %264 = arith.andi %extracted, %true_6 : i1
        %265 = math.expm1 %cst : f16
        %expanded_52 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<12x3x3xi1> into tensor<12x3x3x1xi1>
        %266 = vector.broadcast %cst_5 : f32 to vector<3xf32>
        %267 = vector.multi_reduction <add>, %23, %266 [1] : vector<3x12xf32> to vector<3xf32>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %75, %71, %c631077143_i64 : vector<1xi64>, vector<1xi64> into i64
        %269 = tensor.empty() : tensor<3x3xf16>
        %270 = linalg.matmul ins(%18, %18 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%269 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %rank_53 = tensor.rank %21 : tensor<i64>
        %271 = arith.cmpi sge, %true, %true : i1
        %272 = math.log1p %7 : tensor<12x3x3xf16>
        memref.assume_alignment %alloc_13, 4 : memref<9x14x12xi32>
        %273 = math.log2 %cst_0 : f32
        %274 = arith.ceildivsi %true_1, %true_6 : i1
        %275 = memref.alloca_scope  -> (memref<12x3x3xi1>) {
          %284 = vector.insertelement %c30065_i16, %257[%259 : index] : vector<14xi16>
          %285 = math.ipowi %8, %8 : tensor<3xi16>
          %splat_58 = tensor.splat %true_1 : tensor<3x12xi1>
          %286 = math.sqrt %cst : f16
          %287 = index.maxs %47, %c10
          %288 = arith.floordivsi %true_6, %true_1 : i1
          %289 = math.roundeven %2 : tensor<3xf16>
          %290 = math.log1p %12 : tensor<3xf16>
          %291 = arith.addi %c-6170_i16, %c30065_i16 : i16
          %rank_59 = tensor.rank %78 : tensor<3xf32>
          memref.copy %alloc_24, %alloc_14 : memref<3xi64> to memref<3xi64>
          %292 = math.floor %269 : tensor<3x3xf16>
          %293 = math.exp2 %12 : tensor<3xf16>
          %294 = index.maxs %74, %c0
          %alloc_60 = memref.alloc() : memref<9x14x12xi32>
          memref.copy %alloc_13, %alloc_60 : memref<9x14x12xi32> to memref<9x14x12xi32>
          bufferization.dealloc_tensor %4 : tensor<3x12xi16>
          %295 = vector.create_mask %287 : vector<3xi1>
          %cast_61 = tensor.cast %15 : tensor<3x12xi32> to tensor<?x?xi32>
          %296 = math.absi %20 : tensor<i64>
          %extracted_62 = tensor.extract %8[%c0] : tensor<3xi16>
          %297 = index.mul %rank_59, %c10
          %298 = math.absi %splat_58 : tensor<3x12xi1>
          %299 = index.ceildivs %c4, %c7
          %300 = math.roundeven %7 : tensor<12x3x3xf16>
          %cast_63 = tensor.cast %0 : tensor<3xi64> to tensor<?xi64>
          %301 = vector.insertelement %c1753030227_i64, %27[%rank : index] : vector<1xi64>
          %302 = math.floor %12 : tensor<3xf16>
          %303 = arith.minsi %true_6, %true_6 : i1
          %304 = vector.reduction <maxf>, %266 : vector<3xf32> into f32
          %305 = vector.broadcast %true : i1 to vector<3x3xi1>
          %306 = vector.outerproduct %295, %295, %305 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
          %307 = index.ceildivs %c13, %c2
          %308 = arith.cmpi ne, %c631077143_i64, %c1753030227_i64 : i64
          %alloc_64 = memref.alloc() : memref<12x3x3xi1>
          memref.alloca_scope.return %alloc_64 : memref<12x3x3xi1>
        }
        %276 = arith.minui %c30065_i16, %c30065_i16 : i16
        memref.assume_alignment %alloc_24, 8 : memref<3xi64>
        %277 = arith.floordivsi %extracted_26, %extracted_26 : i32
        %splat_54 = tensor.splat %cst : tensor<3xf16>
        %278 = arith.remsi %true_6, %extracted : i1
        %279 = vector.multi_reduction <maxf>, %266, %266 [] : vector<3xf32> to vector<3xf32>
        %splat_55 = tensor.splat %extracted_26 : tensor<3x12xi32>
        affine.store %cst, %alloc_10[%c1] : memref<3xf16>
        %280 = math.floor %12 : tensor<3xf16>
        %281 = affine.for %arg0 = 0 to 85 iter_args(%arg1 = %c-6170_i16) -> (i16) {
          affine.yield %arg1 : i16
        }
        %generated_56 = tensor.generate %c6 {
        ^bb0(%arg0: index):
          %284 = math.atan2 %cst_4, %cst_4 : f16
          %285 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %286 = arith.remui %c631077143_i64, %c1753030227_i64 : i64
          %287 = arith.shrsi %true_6, %extracted : i1
          tensor.yield %cst_2 : f16
        } : tensor<?xf16>
        %282 = math.log10 %cst : f16
        %283 = math.log1p %269 : tensor<3x3xf16>
        %cst_57 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_57 : f32
      }
    %generated = tensor.generate %c8, %c0 {
    ^bb0(%arg0: index, %arg1: index):
      %256 = math.ceil %12 : tensor<3xf16>
      %257 = arith.mulf %cst, %cst_7 : f16
      %258 = index.ceildivs %68, %c0
      %259 = memref.realloc %alloc_10 : memref<3xf16> to memref<3xf16>
      tensor.yield %cst : f16
    } : tensor<?x?xf16>
    %79 = math.log2 %18 : tensor<3x3xf16>
    %80 = math.atan2 %cst, %cst : f16
    scf.execute_region {
      %256 = arith.ceildivsi %true_3, %false : i1
      %257 = math.floor %63 : tensor<3x3xf16>
      %258 = index.ceildivs %c1, %rank
      %259 = math.log %reduced : tensor<3x3xf16>
      %260 = bufferization.clone %alloc_11 : memref<3xi64> to memref<3xi64>
      %261 = vector.flat_transpose %75 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      bufferization.dealloc_tensor %4 : tensor<3x12xi16>
      %262 = math.absi %8 : tensor<3xi16>
      %splat_52 = tensor.splat %cst_0 : tensor<3xf32>
      %263 = arith.maxf %cst_2, %cst_7 : f16
      %collapsed_53 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<12x3x3xf16> into tensor<36x3xf16>
      %264 = tensor.empty() : tensor<3x12xf16>
      %265 = vector.broadcast %cst_7 : f16 to vector<9x14x12xf16>
      %266 = vector.broadcast %true_6 : i1 to vector<9x14x12xi1>
      %267 = vector.broadcast %extracted_26 : i32 to vector<9x14x12xi32>
      %268 = vector.gather %264[%c8, %258] [%267], %266, %265 : tensor<3x12xf16>, vector<9x14x12xi32>, vector<9x14x12xi1>, vector<9x14x12xf16> into vector<9x14x12xf16>
      %269 = math.log2 %cst_2 : f16
      %270 = arith.remui %c30065_i16, %c30065_i16 : i16
      %271 = vector.broadcast %258 : index to vector<12xindex>
      %272 = vector.broadcast %true_3 : i1 to vector<12xi1>
      %273 = vector.broadcast %c1753030227_i64 : i64 to vector<12xi64>
      vector.scatter %alloc_23[%c1] [%271], %272, %273 : memref<3xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
      %274 = index.ceildivs %68, %c1
      scf.yield
    }
    vector.print %19 : vector<3xi64>
    %81 = bufferization.clone %alloc : memref<9x14x12xi64> to memref<9x14x12xi64>
    %82 = math.log %reduced : tensor<3x3xf16>
    %83 = vector.insertelement %c1753030227_i64, %75[%c3 : index] : vector<1xi64>
    %84 = math.ctlz %true_6 : i1
    %85 = index.ceildivu %74, %34
    %86 = math.floor %2 : tensor<3xf16>
    %87 = memref.alloca_scope  -> (f32) {
      %alloca_52 = memref.alloca() : memref<9x14x12xf16>
      %256 = vector.broadcast %cst_5 : f32 to vector<3xf32>
      %257 = vector.multi_reduction <add>, %58, %256 [1] : vector<3x12xf32> to vector<3xf32>
      %258 = index.maxs %c14, %rank
      %259 = vector.broadcast %c870719789_i32 : i32 to vector<i32>
      %260 = vector.transfer_write %259, %15[%rank, %c1] : vector<i32>, tensor<3x12xi32>
      %261 = arith.andi %true_6, %true_3 : i1
      %262 = math.floor %reduced : tensor<3x3xf16>
      %263 = math.cttz %15 : tensor<3x12xi32>
      %264 = affine.load %alloc_9[%c15, %c13, %c14] : memref<9x14x12xi1>
      %265 = index.ceildivu %c0, %c0
      %266 = math.powf %12, %12 : tensor<3xf16>
      memref.alloca_scope  {
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %27, %27, %c631077143_i64 : vector<1xi64>, vector<1xi64> into i64
        %289 = vector.flat_transpose %75 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %290 = arith.minui %true_1, %true_1 : i1
        %cast_54 = tensor.cast %6 : tensor<3xi64> to tensor<?xi64>
        %291 = math.ctlz %extracted : i1
        %292 = affine.apply affine_map<(d0, d1, d2) -> (-d1 - 64)>(%265, %c0, %c8)
        %293 = math.atan2 %reduced, %56 : tensor<3x3xf16>
        %294 = arith.minsi %c1753030227_i64, %c1753030227_i64 : i64
        %295 = vector.broadcast %c631077143_i64 : i64 to vector<1x1xi64>
        %296 = vector.outerproduct %75, %27, %295 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
        %297 = vector.broadcast %c-6170_i16 : i16 to vector<i16>
        %298 = vector.transfer_write %297, %3[%rank, %rank, %c15] : vector<i16>, tensor<12x3x3xi16>
        memref.assume_alignment %alloc_18, 8 : memref<9x14x12xf16>
        %299 = arith.ceildivsi %extracted_26, %extracted_26 : i32
        %300 = vector.broadcast %cst : f16 to vector<3xf16>
        %301 = vector.create_mask %c8, %33 : vector<3x12xi1>
        %cast_55 = tensor.cast %11 : tensor<12x3x3xi32> to tensor<?x?x?xi32>
        %302 = index.divs %c8, %rank
        %303 = vector.extract_strided_slice %22 {offsets = [1], sizes = [1], strides = [1]} : vector<3x12xf32> to vector<1x12xf32>
        %304 = math.ceil %12 : tensor<3xf16>
        %305 = vector.multi_reduction <xor>, %19, %19 [] : vector<3xi64> to vector<3xi64>
        %306 = arith.ori %true, %true_1 : i1
        %307 = vector.multi_reduction <minf>, %300, %300 [] : vector<3xf16> to vector<3xf16>
        %308 = math.log1p %2 : tensor<3xf16>
        %309 = vector.multi_reduction <add>, %303, %303 [] : vector<1x12xf32> to vector<1x12xf32>
        %310 = affine.min affine_map<(d0, d1) -> (0, (d1 * 4) mod 8)>(%34, %c12)
        %311 = arith.remsi %extracted_26, %extracted_26 : i32
        %312 = math.sqrt %cst : f16
        %313 = index.maxs %74, %74
        %314 = math.roundeven %cst_2 : f16
        %315 = arith.subi %c1753030227_i64, %c1753030227_i64 : i64
        %316 = index.mul %258, %c1
        %rank_56 = tensor.rank %9 : tensor<9x14x12xi32>
        %317 = math.ctpop %0 : tensor<3xi64>
      }
      %267 = math.ctlz %true : i1
      %268 = arith.maxsi %c870719789_i32, %extracted_26 : i32
      scf.if %true_6 {
        %288 = memref.realloc %alloc_11 : memref<3xi64> to memref<9xi64>
        %289 = vector.shuffle %71, %75 [1] : vector<1xi64>, vector<1xi64>
        %290 = index.ceildivs %33, %85
        %291 = math.tan %7 : tensor<12x3x3xf16>
        %extracted_54 = tensor.extract %14[%c1] : tensor<3xi32>
        %splat_55 = tensor.splat %264 : tensor<12x3x3xi1>
        %292 = tensor.empty() : tensor<3x3xf16>
        %293 = linalg.matmul ins(%56, %18 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%292 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %294 = math.cttz %15 : tensor<3x12xi32>
      } else {
        %288 = math.exp %52 : tensor<3x3xf16>
        %289 = index.sizeof
        %290 = arith.remsi %extracted, %true_3 : i1
        memref.copy %alloc_24, %alloc_11 : memref<3xi64> to memref<3xi64>
        %291 = vector.broadcast %true_6 : i1 to vector<3x3x3x3xi1>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %54, %54, %291 : vector<12x3x3xi1>, vector<12x3x3xi1> into vector<3x3x3x3xi1>
        %from_elements_54 = tensor.from_elements %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64 : tensor<12x3x3xi64>
        %293 = vector.broadcast %cst_5 : f32 to vector<12x12xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %58, %22, %293 : vector<3x12xf32>, vector<3x12xf32> into vector<12x12xf32>
        %295 = arith.shrui %c631077143_i64, %c1753030227_i64 : i64
      }
      %269 = math.roundeven %63 : tensor<3x3xf16>
      %from_elements_53 = tensor.from_elements %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64 : tensor<12x3x3xi64>
      %270 = math.cos %2 : tensor<3xf16>
      %271 = math.roundeven %13 : tensor<3xf32>
      %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, 64)>(%c15, %c13, %74, %c15)
      %273 = math.atan2 %cst, %cst : f16
      %274 = vector.insertelement %c1753030227_i64, %27[%265 : index] : vector<1xi64>
      %275 = vector.broadcast %cst_2 : f16 to vector<12x3xf16>
      vector.transfer_write %275, %alloc_16[%c4, %c6, %74] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x3xf16>, memref<12x3x3xf16>
      %276 = vector.broadcast %c631077143_i64 : i64 to vector<1x1xi64>
      %277 = vector.outerproduct %71, %75, %276 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
      %278 = index.sizeof
      %279 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - 16, d0 ceildiv 2, d0 - 4, d0 - 4)>(%c12, %47, %33, %85)
      %280 = index.floordivs %272, %c5
      %281 = vector.broadcast %cst_0 : f32 to vector<3xf32>
      %282 = vector.fma %281, %256, %256 : vector<3xf32>
      %283 = arith.minui %true_6, %true : i1
      %284 = vector.insertelement %cst_5, %282[%c3 : index] : vector<3xf32>
      %285 = arith.mulf %cst_5, %cst_0 : f32
      %286 = index.floordivs %c0, %74
      %287 = math.log10 %reduced : tensor<3x3xf16>
      memref.alloca_scope.return %cst_5 : f32
    }
    %88 = arith.maxsi %true_6, %false : i1
    %89 = index.ceildivs %c0, %85
    %90 = vector.broadcast %cst_5 : f32 to vector<12x3x3xf32>
    %91 = vector.fma %90, %90, %90 : vector<12x3x3xf32>
    %92 = math.ceil %reduced : tensor<3x3xf16>
    %93 = arith.floordivsi %c631077143_i64, %c631077143_i64 : i64
    %94 = tensor.empty() : tensor<36x12xi1>
    %95 = linalg.matmul ins(%collapsed, %1 : tensor<36x3xi1>, tensor<3x12xi1>) outs(%94 : tensor<36x12xi1>) -> tensor<36x12xi1>
    %96 = tensor.empty() : tensor<3xi64>
    %mapped_28 = linalg.map ins(%6, %6, %0 : tensor<3xi64>, tensor<3xi64>, tensor<3xi64>) outs(%96 : tensor<3xi64>)
      (%in: i64, %in_52: i64, %in_53: i64) {
        %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %71, %27, %in : vector<1xi64>, vector<1xi64> into i64
        %257 = math.powf %2, %12 : tensor<3xf16>
        %rank_54 = tensor.rank %20 : tensor<i64>
        %258 = math.exp2 %cst : f16
        %259 = arith.cmpi ult, %false, %extracted : i1
        %260 = index.castu %in_52 : i64 to index
        %261 = arith.remf %cst_7, %cst : f16
        %262 = math.log1p %cst_0 : f32
        %263 = vector.multi_reduction <minsi>, %75, %in_52 [0] : vector<1xi64> to i64
        memref.assume_alignment %72, 1 : memref<3x12xi32>
        %264 = arith.subi %true_3, %true_3 : i1
        %265 = math.fma %cst_0, %87, %87 : f32
        %266 = vector.broadcast %extracted : i1 to vector<12x3xi1>
        %267 = vector.multi_reduction <maxsi>, %54, %266 [2] : vector<12x3x3xi1> to vector<12x3xi1>
        %268 = arith.minsi %c631077143_i64, %c1753030227_i64 : i64
        %cast_55 = tensor.cast %11 : tensor<12x3x3xi32> to tensor<?x?x?xi32>
        %269 = math.absi %true_3 : i1
        %270 = index.sizeof
        %271 = vector.create_mask %85, %34 : vector<3x12xi1>
        %272 = tensor.empty() : tensor<3x12xi16>
        %mapped_56 = linalg.map ins(%4 : tensor<3x12xi16>) outs(%272 : tensor<3x12xi16>)
          (%in_59: i16) {
            %287 = math.cos %18 : tensor<3x3xf16>
            %288 = arith.minsi %c30065_i16, %c-6170_i16 : i16
            %cast_60 = tensor.cast %0 : tensor<3xi64> to tensor<?xi64>
            %289 = arith.maxf %cst, %cst_2 : f16
            %290 = index.maxu %c9, %c2
            %extracted_61 = tensor.extract %cast_55[%c0, %c0, %c0] : tensor<?x?x?xi32>
            %291 = arith.minui %in, %in : i64
            %292 = math.ceil %78 : tensor<3xf32>
            %293 = math.ctlz %14 : tensor<3xi32>
            %294 = math.fma %13, %13, %13 : tensor<3xf32>
            memref.assume_alignment %alloc_10, 16 : memref<3xf16>
            %295 = vector.create_mask %rank_54 : vector<3xi1>
            %296 = arith.shrsi %in_52, %c1753030227_i64 : i64
            %297 = math.tanh %2 : tensor<3xf16>
            %298 = arith.ceildivsi %263, %263 : i64
            %299 = arith.subi %true_1, %true : i1
            %300 = bufferization.to_tensor %alloc_8 : memref<9x14x12xi64>
            %301 = affine.load %alloc_24[%c0] : memref<3xi64>
            %302 = arith.minsi %c631077143_i64, %301 : i64
            %303 = vector.multi_reduction <minf>, %22, %22 [] : vector<3x12xf32> to vector<3x12xf32>
            %304 = vector.broadcast %true : i1 to vector<3x3xi1>
            %305 = vector.outerproduct %295, %295, %304 {kind = #vector.kind<or>} : vector<3xi1>, vector<3xi1>
            %306 = index.casts %true_3 : i1 to index
            %from_elements_62 = tensor.from_elements %in_59, %in_59, %c-6170_i16, %in_59, %c30065_i16, %in_59, %in_59, %c-6170_i16, %in_59, %c-6170_i16, %c-6170_i16, %in_59, %c30065_i16, %in_59, %c30065_i16, %c-6170_i16, %in_59, %c30065_i16, %c-6170_i16, %in_59, %c-6170_i16, %c30065_i16, %c-6170_i16, %in_59, %c-6170_i16, %c-6170_i16, %c30065_i16, %in_59, %in_59, %c30065_i16, %in_59, %c-6170_i16, %c-6170_i16, %c30065_i16, %in_59, %in_59, %in_59, %in_59, %in_59, %c30065_i16, %c-6170_i16, %c30065_i16, %in_59, %c30065_i16, %in_59, %c-6170_i16, %c30065_i16, %in_59, %in_59, %c-6170_i16, %c-6170_i16, %c30065_i16, %c-6170_i16, %c-6170_i16, %in_59, %c-6170_i16, %in_59, %c-6170_i16, %c30065_i16, %c-6170_i16, %in_59, %c30065_i16, %in_59, %c30065_i16, %c-6170_i16, %c30065_i16, %in_59, %in_59, %c30065_i16, %c-6170_i16, %c30065_i16, %in_59, %in_59, %c30065_i16, %in_59, %c30065_i16, %c30065_i16, %c-6170_i16, %c-6170_i16, %c30065_i16, %c30065_i16, %c-6170_i16, %c-6170_i16, %c-6170_i16, %c30065_i16, %c30065_i16, %in_59, %c-6170_i16, %in_59, %c-6170_i16, %c-6170_i16, %c-6170_i16, %c30065_i16, %c-6170_i16, %c-6170_i16, %in_59, %in_59, %c-6170_i16, %in_59, %c-6170_i16, %c-6170_i16, %c-6170_i16, %in_59, %in_59, %c-6170_i16, %c30065_i16, %c-6170_i16, %in_59 : tensor<12x3x3xi16>
            %307 = math.ctlz %272 : tensor<3x12xi16>
            vector.print %295 : vector<3xi1>
            %308 = index.maxs %c13, %c1
            %309 = index.ceildivu %306, %c12
            vector.print %19 : vector<3xi64>
            %310 = math.exp2 %18 : tensor<3x3xf16>
            %311 = arith.maxsi %true_6, %true_1 : i1
            %312 = math.absi %14 : tensor<3xi32>
            %from_elements_63 = tensor.from_elements %true_3, %true, %true, %true, %true_1, %true_3, %true_1, %true_6, %true_6, %extracted, %true_1, %true_6, %false, %false, %extracted, %true_3, %true_6, %true_6, %extracted, %true_3, %true, %extracted, %extracted, %true_6, %true_3, %extracted, %true_1, %extracted, %extracted, %true_6, %false, %extracted, %extracted, %true_6, %true_6, %true_6, %true_1, %true_6, %false, %true_6, %extracted, %true, %true, %true_6, %true_1, %true_1, %true_3, %extracted, %true, %true, %false, %extracted, %true_1, %true_1, %true, %false, %true, %false, %false, %extracted, %true_6, %false, %extracted, %true_6, %false, %true_6, %false, %extracted, %true_3, %true_6, %true_3, %true, %false, %extracted, %false, %false, %false, %true, %false, %true, %true_3, %true_3, %true_6, %true_1, %true_1, %true_6, %true_6, %true_1, %extracted, %true_3, %true, %true_6, %extracted, %true_3, %true, %false, %extracted, %extracted, %extracted, %true_6, %true_1, %true_3, %true_1, %false, %extracted, %extracted, %true_6, %extracted : tensor<12x3x3xi1>
            %c1_i16 = arith.constant 1 : i16
            linalg.yield %c1_i16 : i16
          }
        %273 = vector.insertelement %263, %27[%c2 : index] : vector<1xi64>
        %274 = vector.broadcast %cst_5 : f32 to vector<3xf32>
        %275 = vector.multi_reduction <mul>, %23, %274 [1] : vector<3x12xf32> to vector<3xf32>
        %276 = arith.shrui %true_1, %true : i1
        %277 = math.log2 %7 : tensor<12x3x3xf16>
        %278 = math.log %63 : tensor<3x3xf16>
        %collapsed_57 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<12x3x3xi1> into tensor<36x3xi1>
        %279 = vector.broadcast %c7 : index to vector<12xindex>
        %280 = vector.broadcast %true_1 : i1 to vector<12xi1>
        %281 = vector.broadcast %c631077143_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_23[%c1] [%279], %280, %281 : memref<3xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 floordiv 32 - 32) * 4 + d3 + 128, d0 * 64, d0 * 64)>(%c4, %c8, %c4, %33)
        %283 = index.sub %c11, %47
        %284 = vector.splat %c-6170_i16 : vector<9x14x12xi16>
        %285 = arith.remui %263, %263 : i64
        %286 = vector.multi_reduction <xor>, %71, %in_53 [0] : vector<1xi64> to i64
        %from_elements_58 = tensor.from_elements %cst_7, %cst_7, %cst_2 : tensor<3xf16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %97 = math.ipowi %17, %14 : tensor<3xi32>
    %98 = arith.minsi %extracted, %true_3 : i1
    %99 = math.log %reduced : tensor<3x3xf16>
    %100 = memref.alloca_scope  -> (memref<3x12xi16>) {
      %256 = memref.atomic_rmw maxu %c1753030227_i64, %alloc_22[%c1, %c0] : (i64, memref<3x12xi64>) -> i64
      %257 = vector.shuffle %58, %58 [0, 2, 5] : vector<3x12xf32>, vector<3x12xf32>
      %258 = bufferization.to_tensor %alloc_10 : memref<3xf16>
      %259 = index.ceildivs %33, %74
      %260 = affine.min affine_map<(d0) -> (0, d0 - 60, d0 - 128, d0 mod 64)>(%c7)
      %261 = arith.ceildivsi %c631077143_i64, %c631077143_i64 : i64
      %262 = vector.broadcast %c1753030227_i64 : i64 to vector<1x1xi64>
      %263 = vector.outerproduct %27, %71, %262 {kind = #vector.kind<maxsi>} : vector<1xi64>, vector<1xi64>
      %264 = bufferization.to_memref %18 : memref<3x3xf16>
      %265 = math.ipowi %1, %1 : tensor<3x12xi1>
      %266 = arith.addi %extracted, %false : i1
      %267 = memref.realloc %alloc_11 : memref<3xi64> to memref<14xi64>
      %268 = vector.extract_strided_slice %58 {offsets = [1], sizes = [1], strides = [1]} : vector<3x12xf32> to vector<1x12xf32>
      %269 = math.log10 %63 : tensor<3x3xf16>
      %270 = arith.ceildivsi %c-6170_i16, %c-6170_i16 : i16
      %271 = scf.while (%arg0 = %alloc) : (memref<9x14x12xi64>) -> memref<9x14x12xi64> {
        memref.assume_alignment %alloc_17, 4 : memref<3xi32>
        %expanded_57 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<3x12xi32> into tensor<3x12x1xi32>
        %287 = index.add %c2, %260
        %288 = index.sizeof
        %splat_58 = tensor.splat %c631077143_i64 : tensor<9x14x12xi64>
        %289 = arith.remf %cst, %cst_4 : f16
        %290 = math.expm1 %cst_4 : f16
        %291 = memref.atomic_rmw mins %c631077143_i64, %alloc_21[%c1] : (i64, memref<3xi64>) -> i64
        scf.condition(%true_3) %alloc : memref<9x14x12xi64>
      } do {
      ^bb0(%arg0: memref<9x14x12xi64>):
        %287 = math.log %cst_0 : f32
        %288 = arith.shrsi %c1753030227_i64, %c1753030227_i64 : i64
        %289 = math.expm1 %reduced : tensor<3x3xf16>
        %290 = arith.divui %extracted, %true_1 : i1
        %291 = math.tan %7 : tensor<12x3x3xf16>
        %292 = math.cttz %6 : tensor<3xi64>
        %293 = math.ipowi %c631077143_i64, %c1753030227_i64 : i64
        %294 = tensor.empty() : tensor<12x12xi16>
        %295 = tensor.empty() : tensor<3x12xi16>
        %296 = linalg.matmul ins(%4, %294 : tensor<3x12xi16>, tensor<12x12xi16>) outs(%295 : tensor<3x12xi16>) -> tensor<3x12xi16>
        %297 = vector.transpose %23, [0, 1] : vector<3x12xf32> to vector<3x12xf32>
        %expanded_57 = tensor.expand_shape %5 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
        %298 = math.cttz %9 : tensor<9x14x12xi32>
        %299 = arith.divf %cst_2, %cst : f16
        memref.assume_alignment %264, 8 : memref<3x3xf16>
        %300 = index.maxs %89, %259
        %301 = arith.shli %true_1, %true_6 : i1
        %302 = math.powf %87, %87 : f32
        scf.yield %alloc_8 : memref<9x14x12xi64>
      }
      %272 = math.fma %13, %78, %78 : tensor<3xf32>
      %273 = math.atan2 %87, %cst_5 : f32
      %274 = arith.andi %c-6170_i16, %c30065_i16 : i16
      %275 = vector.broadcast %c1753030227_i64 : i64 to vector<1x1xi64>
      %276 = vector.outerproduct %75, %71, %275 {kind = #vector.kind<minsi>} : vector<1xi64>, vector<1xi64>
      %277 = vector.broadcast %cst_5 : f32 to vector<3x3x1xf32>
      %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %91, %268, %277 : vector<12x3x3xf32>, vector<1x12xf32> into vector<3x3x1xf32>
      %279 = math.fma %13, %13, %13 : tensor<3xf32>
      %alloc_52 = memref.alloc() : memref<3x3xf16>
      memref.copy %264, %alloc_52 : memref<3x3xf16> to memref<3x3xf16>
      memref.assume_alignment %alloc, 8 : memref<9x14x12xi64>
      %280 = vector.extract %90[8] : vector<12x3x3xf32>
      %281 = math.fma %13, %13, %13 : tensor<3xf32>
      %282 = math.atan %52 : tensor<3x3xf16>
      %283 = math.cttz %10 : tensor<12x3x3xi1>
      %generated_53 = tensor.generate %c7 {
      ^bb0(%arg0: index):
        %splat_57 = tensor.splat %true_1 : tensor<9x14x12xi1>
        memref.tensor_store %9, %alloc_13 : memref<9x14x12xi32>
        %287 = bufferization.to_memref %40 : memref<3x14xi32>
        %288 = arith.maxsi %true_6, %false : i1
        tensor.yield %c-6170_i16 : i16
      } : tensor<?xi16>
      %284 = math.tan %63 : tensor<3x3xf16>
      %285 = vector.broadcast %87 : f32 to vector<3x12xf32>
      %286 = vector.fma %285, %23, %23 : vector<3x12xf32>
      %cast_54 = tensor.cast %18 : tensor<3x3xf16> to tensor<?x?xf16>
      %from_elements_55 = tensor.from_elements %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64 : tensor<9x14x12xi64>
      %alloc_56 = memref.alloc() : memref<3x12xi16>
      memref.alloca_scope.return %alloc_56 : memref<3x12xi16>
    }
    %101 = vector.matrix_multiply %19, %27 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<1xi64>) -> vector<3xi64>
    %102 = tensor.empty() : tensor<3x3xi32>
    %103 = math.fpowi %18, %102 : tensor<3x3xf16>, tensor<3x3xi32>
    %104 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %105 = math.log1p %52 : tensor<3x3xf16>
    %generated_29 = tensor.generate %74, %68 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %256 = index.casts %c870719789_i32 : i32 to index
      %257 = math.tan %12 : tensor<3xf16>
      %258 = bufferization.clone %alloc_21 : memref<3xi64> to memref<3xi64>
      %259 = memref.load %alloc_20[%c8, %c2, %c1] : memref<9x14x12xf32>
      tensor.yield %c-6170_i16 : i16
    } : tensor<?x?x3xi16>
    %106 = index.sizeof
    %107 = arith.remf %cst_2, %cst_4 : f16
    %108 = math.ctlz %14 : tensor<3xi32>
    %109 = vector.extract_strided_slice %104 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
    %110 = arith.minsi %true_6, %true_6 : i1
    %111 = arith.shrsi %extracted, %true : i1
    %112 = bufferization.clone %alloc_24 : memref<3xi64> to memref<3xi64>
    %113 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + d3)>(%c4, %c7, %33, %c6)
    %cast_30 = tensor.cast %21 : tensor<i64> to tensor<i64>
    %114 = bufferization.clone %alloc_17 : memref<3xi32> to memref<3xi32>
    %alloca_31 = memref.alloca() : memref<3x12xi1>
    %115 = memref.atomic_rmw muli %c631077143_i64, %alloc_21[%c1] : (i64, memref<3xi64>) -> i64
    %116 = math.fma %cst_7, %cst_4, %cst : f16
    %117 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %109, %71, %c1753030227_i64 : vector<1xi64>, vector<1xi64> into i64
    memref.alloca_scope  {
      %256 = arith.floordivsi %extracted, %false : i1
      vector.print %58 : vector<3x12xf32>
      %257 = vector.broadcast %c631077143_i64 : i64 to vector<12x3x3xi64>
      %258 = vector.broadcast %extracted_26 : i32 to vector<12x3x3xi32>
      %259 = vector.gather %alloc_15[%c4, %c1, %85] [%258], %54, %257 : memref<12x3x3xi64>, vector<12x3x3xi32>, vector<12x3x3xi1>, vector<12x3x3xi64> into vector<12x3x3xi64>
      %260 = math.cos %63 : tensor<3x3xf16>
      %261 = math.absi %96 : tensor<3xi64>
      %262 = math.absi %20 : tensor<i64>
      memref.assume_alignment %alloc_13, 1 : memref<9x14x12xi32>
      %263 = arith.floordivsi %true_6, %true_1 : i1
      %264 = index.floordivs %c11, %106
      %265 = math.log2 %52 : tensor<3x3xf16>
      %266 = vector.broadcast %true_3 : i1 to vector<3xi1>
      %267 = vector.broadcast %extracted_26 : i32 to vector<3xi32>
      %268 = vector.gather %alloc_15[%74, %89, %c0] [%267], %266, %19 : memref<12x3x3xi64>, vector<3xi32>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %269 = arith.divf %87, %cst_0 : f32
      %270 = math.log %7 : tensor<12x3x3xf16>
      %271 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      %272 = index.maxs %c7, %c0
      %alloc_52 = memref.alloc() : memref<3xf16>
      memref.copy %alloc_10, %alloc_52 : memref<3xf16> to memref<3xf16>
      %273 = math.round %reduced : tensor<3x3xf16>
      %274 = vector.create_mask %c8, %85, %c2 : vector<12x3x3xi1>
      %275 = math.cttz %5 : tensor<3xi32>
      %276 = math.cttz %96 : tensor<3xi64>
      %277 = math.ceil %cst_7 : f16
      memref.assume_alignment %alloc_19, 16 : memref<12x3x3xi16>
      memref.copy %alloc_11, %alloc_23 : memref<3xi64> to memref<3xi64>
      %278 = memref.realloc %alloc_23 : memref<3xi64> to memref<9xi64>
      %279 = affine.min affine_map<(d0, d1) -> (-d0)>(%c3, %c9)
      %280 = math.floor %cst_4 : f16
      %281 = arith.minsi %c-6170_i16, %c30065_i16 : i16
      %282 = vector.broadcast %true : i1 to vector<12x3xi1>
      %283 = vector.multi_reduction <maxui>, %54, %282 [1] : vector<12x3x3xi1> to vector<12x3xi1>
      %284 = math.log %cst : f16
      %285 = arith.remsi %c1753030227_i64, %c1753030227_i64 : i64
      %286 = tensor.empty() : tensor<12x14xi1>
      %287 = tensor.empty() : tensor<3x14xi1>
      %288 = linalg.matmul ins(%1, %286 : tensor<3x12xi1>, tensor<12x14xi1>) outs(%287 : tensor<3x14xi1>) -> tensor<3x14xi1>
      %289 = index.add %89, %74
    }
    %118 = arith.maxsi %c30065_i16, %c-6170_i16 : i16
    %119 = index.sizeof
    %120 = math.tan %7 : tensor<12x3x3xf16>
    %121 = arith.shrsi %true_3, %false : i1
    %122 = vector.broadcast %cst_5 : f32 to vector<12x3xf32>
    %dest_32, %accumulated_value_33 = vector.scan <maxf>, %90, %122 {inclusive = false, reduction_dim = 1 : i64} : vector<12x3x3xf32>, vector<12x3xf32>
    %123 = arith.remf %cst_5, %cst_5 : f32
    %124 = vector.insertelement %c631077143_i64, %27[%c13 : index] : vector<1xi64>
    %125 = arith.remsi %c-6170_i16, %c30065_i16 : i16
    %from_elements_34 = tensor.from_elements %c-6170_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c-6170_i16, %c-6170_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c-6170_i16, %c30065_i16, %c30065_i16, %c30065_i16 : tensor<3x12xi16>
    %126 = math.cttz %false : i1
    scf.if %true_1 {
      %256 = vector.create_mask %68, %c14 : vector<3x12xi1>
      %257 = math.cos %cst_4 : f16
      %258 = arith.maxsi %true_6, %true_1 : i1
      %259 = vector.create_mask %c12, %c0, %c6 : vector<9x14x12xi1>
      %260 = arith.remf %cst_4, %cst : f16
      %261 = index.floordivs %c13, %c6
      %262 = math.powf %cst_5, %87 : f32
      %263 = arith.shli %c-6170_i16, %c30065_i16 : i16
    }
    %127 = arith.addi %c30065_i16, %c30065_i16 : i16
    %rank_35 = tensor.rank %8 : tensor<3xi16>
    %collapsed_36 = tensor.collapse_shape %reduced [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
    %128 = vector.broadcast %rank_35 : index to vector<12xindex>
    %129 = vector.broadcast %false : i1 to vector<12xi1>
    %130 = vector.broadcast %cst_0 : f32 to vector<12xf32>
    vector.scatter %alloc_20[%c4, %c12, %c7] [%128], %129, %130 : memref<9x14x12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    %131 = vector.splat %c4 : vector<9x14x12xindex>
    %132 = vector.broadcast %cst_0 : f32 to vector<9x14x12xf32>
    %133 = vector.fma %132, %132, %132 : vector<9x14x12xf32>
    memref.assume_alignment %alloc_11, 16 : memref<3xi64>
    %134 = math.ctlz %5 : tensor<3xi32>
    %135 = math.floor %12 : tensor<3xf16>
    %136 = arith.remf %cst_4, %cst_2 : f16
    %137 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
    %138 = math.tan %cst_0 : f32
    %139 = vector.broadcast %cst_2 : f16 to vector<f16>
    %140 = vector.transfer_write %139, %2[%89] : vector<f16>, tensor<3xf16>
    %141 = memref.atomic_rmw minf %cst_0, %alloc_20[%c0, %c6, %c7] : (f32, memref<9x14x12xf32>) -> f32
    %142 = math.log2 %7 : tensor<12x3x3xf16>
    %143 = vector.matrix_multiply %104, %101 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi64>, vector<3xi64>) -> vector<3xi64>
    memref.assume_alignment %alloc_21, 4 : memref<3xi64>
    %144 = arith.maxsi %c1753030227_i64, %c1753030227_i64 : i64
    %145 = vector.multi_reduction <mul>, %104, %c631077143_i64 [0] : vector<1xi64> to i64
    %146 = math.roundeven %cst_5 : f32
    %147 = math.ctlz %false : i1
    %from_elements_37 = tensor.from_elements %c870719789_i32, %extracted_26, %extracted_26 : tensor<3xi32>
    %148 = vector.insertelement %c631077143_i64, %109[%c15 : index] : vector<1xi64>
    %149 = math.absi %10 : tensor<12x3x3xi1>
    %150 = arith.minf %cst_0, %cst_0 : f32
    %151 = vector.matrix_multiply %101, %71 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<1xi64>) -> vector<3xi64>
    %152 = math.ceil %56 : tensor<3x3xf16>
    %153 = math.log2 %87 : f32
    %154 = vector.flat_transpose %101 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
    %155 = math.fma %87, %cst_0, %cst_5 : f32
    %156 = arith.andi %c870719789_i32, %c870719789_i32 : i32
    %157 = arith.divf %cst_0, %cst_5 : f32
    %158 = index.sub %c5, %c8
    %159 = math.log2 %reduced : tensor<3x3xf16>
    %alloc_38 = memref.alloc() : memref<9x14x12xi64>
    %160 = arith.remf %cst_5, %87 : f32
    %161 = index.floordivs %c1, %c9
    %162 = math.powf %56, %56 : tensor<3x3xf16>
    memref.copy %alloc_21, %112 : memref<3xi64> to memref<3xi64>
    %163 = math.powf %52, %56 : tensor<3x3xf16>
    memref.alloca_scope  {
      %256 = math.log %12 : tensor<3xf16>
      %257 = math.powf %78, %78 : tensor<3xf32>
      %258 = memref.realloc %112 : memref<3xi64> to memref<9xi64>
      %259 = math.ceil %63 : tensor<3x3xf16>
      %260 = arith.negf %cst_7 : f16
      %261 = arith.divf %cst, %cst : f16
      %262 = math.log2 %63 : tensor<3x3xf16>
      %263 = arith.remsi %true_6, %true_6 : i1
      %264 = index.sizeof
      %splat_52 = tensor.splat %c870719789_i32 : tensor<12x3x3xi32>
      %265 = tensor.empty() : tensor<12x12xi1>
      %266 = tensor.empty() : tensor<3x12xi1>
      %267 = linalg.matmul ins(%1, %265 : tensor<3x12xi1>, tensor<12x12xi1>) outs(%266 : tensor<3x12xi1>) -> tensor<3x12xi1>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %19, %19, %145 : vector<3xi64>, vector<3xi64> into i64
      %extracted_53 = tensor.extract %13[%c2] : tensor<3xf32>
      %rank_54 = tensor.rank %reduced : tensor<3x3xf16>
      %269 = index.maxs %c7, %113
      %270 = memref.alloca_scope  -> (i16) {
        %286 = index.sizeof
        %287 = math.roundeven %13 : tensor<3xf32>
        %288 = arith.divui %true, %false : i1
        %289 = bufferization.clone %112 : memref<3xi64> to memref<3xi64>
        %290 = vector.broadcast %c631077143_i64 : i64 to vector<9x14x12xi64>
        %291 = vector.broadcast %true_1 : i1 to vector<9x14x12xi1>
        %292 = vector.broadcast %extracted_26 : i32 to vector<9x14x12xi32>
        %293 = vector.gather %289[%c7] [%292], %291, %290 : memref<3xi64>, vector<9x14x12xi32>, vector<9x14x12xi1>, vector<9x14x12xi64> into vector<9x14x12xi64>
        %294 = index.castu %true : i1 to index
        %295 = math.tan %18 : tensor<3x3xf16>
        %296 = arith.shrsi %false, %true_3 : i1
        %rank_56 = tensor.rank %cast_27 : tensor<?x?x?xf16>
        %297 = vector.broadcast %87 : f32 to vector<12x3xf32>
        %dest_57, %accumulated_value_58 = vector.scan <add>, %91, %297 {inclusive = false, reduction_dim = 1 : i64} : vector<12x3x3xf32>, vector<12x3xf32>
        %298 = math.ipowi %c631077143_i64, %c1753030227_i64 : i64
        %cst_59 = arith.constant 4.684800e+04 : f16
        %299 = vector.multi_reduction <minui>, %71, %75 [] : vector<1xi64> to vector<1xi64>
        %300 = index.mul %269, %106
        vector.print %133 : vector<9x14x12xf32>
        %301 = math.powf %extracted_53, %cst_0 : f32
        %302 = arith.negf %cst : f16
        %303 = math.powf %78, %13 : tensor<3xf32>
        %304 = math.log2 %56 : tensor<3x3xf16>
        %305 = arith.shli %extracted_26, %c870719789_i32 : i32
        %306 = math.exp2 %87 : f32
        %307 = math.ipowi %17, %17 : tensor<3xi32>
        %308 = vector.multi_reduction <add>, %109, %104 [] : vector<1xi64> to vector<1xi64>
        %309 = arith.xori %true_1, %true_6 : i1
        %310 = vector.flat_transpose %101 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %311 = vector.transpose %133, [2, 1, 0] : vector<9x14x12xf32> to vector<12x14x9xf32>
        %312 = math.ctpop %4 : tensor<3x12xi16>
        %313 = math.log2 %12 : tensor<3xf16>
        %314 = vector.create_mask %c10, %rank_56, %269 : vector<12x3x3xi1>
        %rank_60 = tensor.rank %21 : tensor<i64>
        vector.print %310 : vector<3xi64>
        %315 = vector.extract_strided_slice %75 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        memref.alloca_scope.return %c-6170_i16 : i16
      }
      %271 = math.cttz %c870719789_i32 : i32
      memref.alloca_scope  {
        %286 = arith.shrsi %145, %c1753030227_i64 : i64
        %287 = math.powf %cst, %cst_7 : f16
        %288 = math.log1p %reduced : tensor<3x3xf16>
        %289 = arith.remf %cst, %cst_2 : f16
        %290 = math.rsqrt %cst : f16
        %cast_56 = tensor.cast %8 : tensor<3xi16> to tensor<?xi16>
        %291 = index.sizeof
        %292 = math.ceil %12 : tensor<3xf16>
        %293 = arith.subi %true_3, %extracted : i1
        %294 = math.atan2 %cst_4, %cst_7 : f16
        %splat_57 = tensor.splat %cst_0 : tensor<9x14x12xf32>
        %295 = arith.minui %true, %true_1 : i1
        %296 = math.ctlz %8 : tensor<3xi16>
        %297 = arith.ceildivsi %c631077143_i64, %c1753030227_i64 : i64
        %298 = memref.load %alloc_8[%c2, %c3, %c4] : memref<9x14x12xi64>
        %299 = math.roundeven %collapsed_36 : tensor<9xf16>
        %300 = math.ceil %56 : tensor<3x3xf16>
        %301 = arith.remui %true, %true : i1
        %302 = index.floordivs %c2, %rank
        %303 = arith.remui %c-6170_i16, %270 : i16
        %cast_58 = tensor.cast %94 : tensor<36x12xi1> to tensor<?x?xi1>
        %304 = index.maxu %c11, %c9
        vector.print %27 : vector<1xi64>
        %305 = math.ctpop %14 : tensor<3xi32>
        %306 = vector.create_mask %c14, %c5, %269 : vector<12x3x3xi1>
        %307 = arith.shrui %c-6170_i16, %c-6170_i16 : i16
        %308 = arith.cmpi sge, %extracted_26, %c870719789_i32 : i32
        %309 = vector.insertelement %145, %101[%c15 : index] : vector<3xi64>
        %310 = vector.broadcast %87 : f32 to vector<3xf32>
        %311 = vector.fma %310, %310, %310 : vector<3xf32>
        %312 = math.ctlz %3 : tensor<12x3x3xi16>
        %313 = math.atan2 %cst_2, %cst_2 : f16
        %collapsed_59 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<12x3x3xf16> into tensor<36x3xf16>
      }
      %272 = vector.reduction <maxui>, %19 : vector<3xi64> into i64
      %273 = arith.subi %extracted_26, %c870719789_i32 : i32
      %274 = vector.create_mask %67, %85 : vector<3x12xi1>
      %275 = vector.broadcast %145 : i64 to vector<1x1xi64>
      %276 = vector.outerproduct %137, %109, %275 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
      %277 = math.floor %extracted_53 : f32
      %278 = math.ceil %2 : tensor<3xf16>
      %from_elements_55 = tensor.from_elements %true_1, %extracted, %true_6, %true_3, %extracted, %true, %true_3, %true, %false, %false, %extracted, %false, %extracted, %true_1, %extracted, %true, %true, %true, %false, %true, %true_3, %true_3, %true_1, %true_6, %true, %false, %true_3, %false, %true_6, %true_6, %true_6, %true_1, %true_1, %true_1, %false, %false, %true_6, %true_1, %true_1, %true_6, %true, %true_6, %extracted, %extracted, %extracted, %extracted, %true, %true_6, %extracted, %true, %true, %false, %true_3, %extracted, %true_1, %true_6, %true_3, %true_3, %true_6, %true_6, %true, %true_1, %false, %true_6, %true_6, %true_1, %true_3, %extracted, %extracted, %true_1, %true_3, %extracted, %true, %extracted, %true_3, %true, %true_1, %true, %true_6, %true_6, %false, %true, %extracted, %true, %true_6, %false, %true_1, %true_1, %true_6, %true_3, %false, %extracted, %true_6, %true, %extracted, %false, %true_6, %true_6, %true_3, %true_3, %false, %true_3, %true, %false, %true_3, %extracted, %extracted, %false : tensor<12x3x3xi1>
      %279 = bufferization.to_tensor %alloc_14 : memref<3xi64>
      %280 = math.atan %cst : f16
      %281 = math.exp %collapsed_36 : tensor<9xf16>
      %282 = arith.minui %extracted, %true_1 : i1
      %283 = math.atan %reduced : tensor<3x3xf16>
      %284 = index.floordivs %c1, %89
      %285 = vector.broadcast %true_6 : i1 to vector<3xi1>
    }
    %164 = math.roundeven %78 : tensor<3xf32>
    %165 = vector.matrix_multiply %19, %101 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %166 = math.cttz %from_elements_34 : tensor<3x12xi16>
    %rank_39 = tensor.rank %13 : tensor<3xf32>
    %167 = arith.andi %true_6, %extracted : i1
    %168 = math.copysign %cst_4, %cst_4 : f16
    %from_elements_40 = tensor.from_elements %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %145, %145, %c631077143_i64, %145, %c1753030227_i64, %145, %c1753030227_i64, %145, %c1753030227_i64, %145, %145, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %145, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %145, %145, %145, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %145, %c1753030227_i64, %145, %145, %145 : tensor<3x12xi64>
    %169 = math.sqrt %12 : tensor<3xf16>
    %170 = math.cttz %true : i1
    %171 = memref.alloca_scope  -> (i16) {
      %256 = tensor.empty() : tensor<12x3x3xi16>
      %mapped_52 = linalg.map ins(%3, %3 : tensor<12x3x3xi16>, tensor<12x3x3xi16>) outs(%256 : tensor<12x3x3xi16>)
        (%in: i16, %in_57: i16) {
          %286 = vector.broadcast %87 : f32 to vector<3x3x3x3xf32>
          %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %90, %91, %286 : vector<12x3x3xf32>, vector<12x3x3xf32> into vector<3x3x3x3xf32>
          %288 = arith.maxsi %true_3, %false : i1
          memref.assume_alignment %alloc_18, 2 : memref<9x14x12xf16>
          %289 = memref.atomic_rmw maxu %145, %alloc_22[%c0, %c3] : (i64, memref<3x12xi64>) -> i64
          %rank_58 = tensor.rank %6 : tensor<3xi64>
          %rank_59 = tensor.rank %2 : tensor<3xf16>
          %extracted_60 = tensor.extract %7[%c7, %c1, %c0] : tensor<12x3x3xf16>
          %290 = math.expm1 %7 : tensor<12x3x3xf16>
          %291 = arith.addi %true_1, %true : i1
          %292 = vector.insertelement %c1753030227_i64, %154[%113 : index] : vector<3xi64>
          %extracted_61 = tensor.extract %6[%c0] : tensor<3xi64>
          %293 = arith.remsi %true_6, %true_6 : i1
          %294 = arith.floordivsi %true_3, %true_6 : i1
          %295 = arith.minui %extracted_26, %c870719789_i32 : i32
          %296 = math.tan %2 : tensor<3xf16>
          %cast_62 = tensor.cast %52 : tensor<3x3xf16> to tensor<?x?xf16>
          %297 = memref.realloc %alloc_11 : memref<3xi64> to memref<12xi64>
          %298 = math.ceil %7 : tensor<12x3x3xf16>
          %299 = index.sub %c1, %c8
          %300 = index.divs %47, %119
          %301 = arith.andi %true, %extracted : i1
          %splat_63 = tensor.splat %cst_0 : tensor<9x14x12xf32>
          %302 = math.log %12 : tensor<3xf16>
          %303 = arith.andi %c631077143_i64, %145 : i64
          memref.assume_alignment %alloc_20, 16 : memref<9x14x12xf32>
          %304 = arith.ceildivsi %false, %true : i1
          %305 = arith.mulf %cst_5, %87 : f32
          %306 = arith.shli %extracted_26, %extracted_26 : i32
          %307 = arith.maxsi %true, %true_3 : i1
          %308 = vector.load %alloc_10[%c2] : memref<3xf16>, vector<3xf16>
          %309 = arith.ceildivsi %true_1, %true_3 : i1
          %310 = vector.broadcast %c870719789_i32 : i32 to vector<i32>
          %311 = vector.transfer_write %310, %from_elements_37[%c0] : vector<i32>, tensor<3xi32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %257 = arith.floordivsi %c1753030227_i64, %c631077143_i64 : i64
      %258 = math.powf %18, %63 : tensor<3x3xf16>
      %extracted_53 = tensor.extract %4[%c0, %c8] : tensor<3x12xi16>
      %259 = vector.broadcast %145 : i64 to vector<9xi64>
      %260 = vector.transfer_write %259, %from_elements_40[%c5, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, tensor<3x12xi64>
      %261 = math.roundeven %7 : tensor<12x3x3xf16>
      %rank_54 = tensor.rank %11 : tensor<12x3x3xi32>
      affine.store %extracted_26, %114[%c7] : memref<3xi32>
      %262 = arith.cmpf uge, %87, %cst_0 : f32
      %splat_55 = tensor.splat %c631077143_i64 : tensor<3xi64>
      %263 = affine.load %alloc_10[%c6] : memref<3xf16>
      %264 = math.log1p %13 : tensor<3xf32>
      %265 = index.maxs %rank_54, %119
      %266 = tensor.empty() : tensor<12x3xi1>
      %267 = tensor.empty() : tensor<3x3xi1>
      %268 = linalg.matmul ins(%1, %266 : tensor<3x12xi1>, tensor<12x3xi1>) outs(%267 : tensor<3x3xi1>) -> tensor<3x3xi1>
      %269 = arith.andi %true_3, %false : i1
      %collapsed_56 = tensor.collapse_shape %267 [[0, 1]] : tensor<3x3xi1> into tensor<9xi1>
      %270 = math.floor %cst_2 : f16
      %271 = math.cos %78 : tensor<3xf32>
      %272 = vector.broadcast %c631077143_i64 : i64 to vector<i64>
      %273 = vector.transfer_write %272, %96[%c13] : vector<i64>, tensor<3xi64>
      %274 = arith.andi %true_3, %true_1 : i1
      %275 = arith.ceildivsi %c870719789_i32, %extracted_26 : i32
      %276 = arith.shli %false, %true_3 : i1
      %277 = scf.index_switch %c0 -> i32 
      case 1 {
        %286 = arith.negf %263 : f16
        %287 = vector.shuffle %23, %23 [0] : vector<3x12xf32>, vector<3x12xf32>
        %288 = arith.andi %c30065_i16, %c-6170_i16 : i16
        %289 = math.atan2 %52, %52 : tensor<3x3xf16>
        %290 = math.fma %cst_5, %cst_5, %cst_5 : f32
        %291 = math.floor %reduced : tensor<3x3xf16>
        %292 = arith.divui %true, %extracted : i1
        %from_elements_57 = tensor.from_elements %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26 : tensor<12x3x3xi32>
        %293 = vector.extract %91[6] : vector<12x3x3xf32>
        %294 = arith.andi %true, %true_1 : i1
        %295 = vector.create_mask %47, %113 : vector<3x12xi1>
        %296 = math.log %18 : tensor<3x3xf16>
        %297 = vector.extract_strided_slice %22 {offsets = [1], sizes = [2], strides = [1]} : vector<3x12xf32> to vector<2x12xf32>
        %298 = arith.addi %true_1, %true_3 : i1
        %299 = vector.splat %false : vector<9x14x12xi1>
        %300 = math.exp2 %2 : tensor<3xf16>
        scf.yield %extracted_26 : i32
      }
      case 2 {
        %286 = vector.reduction <add>, %75 : vector<1xi64> into i64
        %287 = math.floor %87 : f32
        %288 = vector.broadcast %c1753030227_i64 : i64 to vector<i64>
        %289 = vector.transfer_write %288, %6[%c15] : vector<i64>, tensor<3xi64>
        %290 = vector.insertelement %145, %151[%rank_39 : index] : vector<3xi64>
        %291 = arith.minsi %true_6, %false : i1
        %292 = vector.insertelement %c1753030227_i64, %19[%68 : index] : vector<3xi64>
        %from_elements_57 = tensor.from_elements %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32, %extracted_26, %c870719789_i32, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %extracted_26, %c870719789_i32, %c870719789_i32, %c870719789_i32 : tensor<12x3x3xi32>
        %cast_58 = tensor.cast %3 : tensor<12x3x3xi16> to tensor<?x?x?xi16>
        %293 = index.sizeof
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %137, %104, %c1753030227_i64 : vector<1xi64>, vector<1xi64> into i64
        %295 = math.ctlz %extracted_53 : i16
        %296 = vector.broadcast %145 : i64 to vector<3x3xi64>
        %297 = vector.outerproduct %143, %19, %296 {kind = #vector.kind<minui>} : vector<3xi64>, vector<3xi64>
        %298 = math.exp2 %2 : tensor<3xf16>
        %from_elements_59 = tensor.from_elements %87, %cst_5, %cst_0, %87, %cst_0, %cst_5, %87, %cst_5, %cst_5, %cst_5, %cst_5, %87, %87, %87, %cst_0, %cst_0, %87, %cst_5, %cst_5, %cst_5, %cst_0, %87, %cst_5, %87, %87, %cst_5, %cst_5, %cst_5, %87, %87, %87, %87, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %87, %cst_0, %87, %87, %87, %87, %cst_0, %87, %87, %cst_5, %cst_0, %87, %cst_5, %cst_5, %cst_5, %cst_5, %87, %cst_5, %87, %cst_5, %cst_0, %87, %cst_0, %87, %cst_5, %cst_5, %cst_0, %87, %cst_0, %cst_5, %87, %87, %cst_5, %cst_5, %cst_0, %87, %cst_5, %cst_0, %87, %cst_0, %87, %87, %cst_0, %cst_5, %cst_0, %cst_0, %87, %cst_5, %cst_0, %cst_5, %cst_5, %87, %cst_0, %87, %cst_0, %cst_5, %87, %cst_5, %87, %87, %cst_0, %87, %cst_0, %cst_5, %cst_0, %87, %87, %87, %87, %cst_0, %cst_5 : tensor<12x3x3xf32>
        %299 = math.fma %cst_0, %87, %cst_5 : f32
        %from_elements_60 = tensor.from_elements %cst_7, %cst_4, %cst : tensor<3xf16>
        scf.yield %c870719789_i32 : i32
      }
      case 3 {
        %286 = index.ceildivu %68, %c10
        %287 = math.tanh %cst_5 : f32
        %288 = vector.broadcast %145 : i64 to vector<1x1xi64>
        %289 = vector.outerproduct %75, %109, %288 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
        %290 = index.castu %extracted_53 : i16 to index
        %291 = math.ceil %12 : tensor<3xf16>
        %292 = math.cttz %1 : tensor<3x12xi1>
        %293 = arith.subi %c631077143_i64, %145 : i64
        %294 = arith.remf %cst, %263 : f16
        %295 = index.casts %c13 : index to i32
        %296 = arith.addi %false, %extracted : i1
        %297 = arith.subi %extracted, %extracted : i1
        %298 = math.ceil %263 : f16
        %299 = arith.remsi %true_6, %true : i1
        %300 = math.powf %13, %13 : tensor<3xf32>
        %301 = vector.broadcast %145 : i64 to vector<1x1xi64>
        %302 = vector.outerproduct %165, %165, %301 {kind = #vector.kind<maxsi>} : vector<1xi64>, vector<1xi64>
        %303 = vector.splat %113 : vector<12x3x3xindex>
        scf.yield %extracted_26 : i32
      }
      default {
        %286 = bufferization.to_tensor %alloc_13 : memref<9x14x12xi32>
        %287 = math.ipowi %from_elements_34, %from_elements_34 : tensor<3x12xi16>
        %288 = math.log %2 : tensor<3xf16>
        %289 = arith.minui %c30065_i16, %c30065_i16 : i16
        %cast_57 = tensor.cast %14 : tensor<3xi32> to tensor<?xi32>
        %290 = vector.reduction <maxui>, %165 : vector<1xi64> into i64
        %291 = vector.broadcast %c1753030227_i64 : i64 to vector<3x3xi64>
        %292 = vector.outerproduct %101, %19, %291 {kind = #vector.kind<mul>} : vector<3xi64>, vector<3xi64>
        %293 = vector.broadcast %87 : f32 to vector<3xf32>
        %294 = vector.fma %293, %293, %293 : vector<3xf32>
        %295 = arith.maxsi %extracted, %true_3 : i1
        %296 = arith.maxf %cst_5, %cst_0 : f32
        %297 = vector.insertelement %145, %109[%c4 : index] : vector<1xi64>
        %298 = arith.maxsi %true_3, %true : i1
        %299 = memref.load %alloc_18[%c5, %c11, %c8] : memref<9x14x12xf16>
        %300 = index.floordivs %161, %c12
        %extracted_58 = tensor.extract %12[%c0] : tensor<3xf16>
        %301 = arith.floordivsi %true, %true_6 : i1
        scf.yield %extracted_26 : i32
      }
      %278 = math.cttz %11 : tensor<12x3x3xi32>
      %279 = affine.min affine_map<(d0, d1) -> ((d0 - 2) * 4)>(%c8, %34)
      %280 = math.exp %63 : tensor<3x3xf16>
      %281 = math.log2 %cst_4 : f16
      %282 = affine.for %arg0 = 0 to 73 iter_args(%arg1 = %101) -> (vector<3xi64>) {
        affine.yield %151 : vector<3xi64>
      }
      affine.store %145, %alloc_24[%c2] : memref<3xi64>
      %283 = arith.shrsi %c-6170_i16, %c-6170_i16 : i16
      %284 = math.log2 %cst_2 : f16
      %285 = index.casts %rank : index to i32
      memref.alloca_scope.return %c-6170_i16 : i16
    }
    scf.execute_region {
      scf.if %false {
        %271 = index.add %c0, %113
        %272 = math.ipowi %true, %true : i1
        %273 = arith.remui %true, %true_1 : i1
        %274 = arith.remf %87, %cst_5 : f32
        %275 = math.ceil %cst_0 : f32
        %276 = vector.bitcast %27 : vector<1xi64> to vector<1xi64>
        %277 = vector.reduction <or>, %104 : vector<1xi64> into i64
        %278 = vector.insertelement %145, %27[%c12 : index] : vector<1xi64>
      }
      %256 = arith.minui %extracted, %true_1 : i1
      %257 = math.log10 %18 : tensor<3x3xf16>
      %258 = math.log2 %12 : tensor<3xf16>
      %259 = math.log %12 : tensor<3xf16>
      %260 = math.sqrt %18 : tensor<3x3xf16>
      %261 = index.maxs %c6, %34
      %262 = scf.if %true -> (memref<9x14x12xi16>) {
        %271 = arith.ceildivsi %extracted_26, %c870719789_i32 : i32
        %272 = vector.broadcast %c631077143_i64 : i64 to vector<9x14x12xi64>
        %273 = vector.broadcast %true : i1 to vector<9x14x12xi1>
        %274 = vector.broadcast %extracted_26 : i32 to vector<9x14x12xi32>
        %275 = vector.gather %alloc_22[%c14, %c14] [%274], %273, %272 : memref<3x12xi64>, vector<9x14x12xi32>, vector<9x14x12xi1>, vector<9x14x12xi64> into vector<9x14x12xi64>
        %276 = arith.minsi %c-6170_i16, %171 : i16
        %277 = math.log %52 : tensor<3x3xf16>
        %278 = index.sub %106, %106
        %279 = index.divs %34, %261
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %71, %109, %145 : vector<1xi64>, vector<1xi64> into i64
        %281 = math.floor %collapsed_36 : tensor<9xf16>
        %alloc_52 = memref.alloc() : memref<9x14x12xi16>
        scf.yield %alloc_52 : memref<9x14x12xi16>
      } else {
        %271 = arith.remf %cst_4, %cst_2 : f16
        %272 = arith.ceildivsi %true_3, %true_3 : i1
        %273 = tensor.empty(%119, %c3) : tensor<?x3x?xf16>
        %274 = math.exp %cst_7 : f16
        %275 = math.round %87 : f32
        %276 = math.powf %reduced, %56 : tensor<3x3xf16>
        %277 = math.log1p %reduced : tensor<3x3xf16>
        %278 = math.log2 %cst_4 : f16
        %alloc_52 = memref.alloc() : memref<9x14x12xi16>
        scf.yield %alloc_52 : memref<9x14x12xi16>
      }
      %263 = affine.for %arg0 = 0 to 26 iter_args(%arg1 = %alloc_13) -> (memref<9x14x12xi32>) {
        affine.yield %alloc_13 : memref<9x14x12xi32>
      }
      %264 = arith.cmpf ord, %cst_7, %cst_4 : f16
      %265 = index.ceildivu %c12, %c1
      %266 = index.ceildivu %89, %c15
      %267 = math.tan %cst_2 : f16
      %268 = scf.if %extracted -> (memref<9x14x12xi64>) {
        %271 = math.log1p %cst_5 : f32
        %272 = vector.broadcast %87 : f32 to vector<3x3x3xf32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %91, %58, %272 : vector<12x3x3xf32>, vector<3x12xf32> into vector<3x3x3xf32>
        %274 = vector.broadcast %c870719789_i32 : i32 to vector<9xi32>
        vector.transfer_write %274, %72[%266, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi32>, memref<3x12xi32>
        %splat_52 = tensor.splat %cst_0 : tensor<9x14x12xf32>
        %275 = math.powf %cst_4, %cst_2 : f16
        %alloc_53 = memref.alloc() : memref<12x3x3xi64>
        %276 = memref.atomic_rmw muli %145, %alloc[%c5, %c6, %c7] : (i64, memref<9x14x12xi64>) -> i64
        %277 = index.ceildivs %74, %119
        scf.yield %alloc_8 : memref<9x14x12xi64>
      } else {
        %271 = memref.load %112[%c2] : memref<3xi64>
        %272 = index.sub %rank_35, %158
        %273 = vector.insertelement %c1753030227_i64, %109[%c2 : index] : vector<1xi64>
        memref.store %c1753030227_i64, %alloc_8[%c6, %c2, %c5] : memref<9x14x12xi64>
        %274 = vector.broadcast %extracted_26 : i32 to vector<3x12xi32>
        %275 = vector.transfer_write %274, %9[%c4, %c2, %rank_39] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x12xi32>, tensor<9x14x12xi32>
        %rank_52 = tensor.rank %from_elements_37 : tensor<3xi32>
        %alloc_53 = memref.alloc() : memref<12x3x3xi64>
        memref.copy %alloc_15, %alloc_53 : memref<12x3x3xi64> to memref<12x3x3xi64>
        %276 = math.ceil %13 : tensor<3xf32>
        scf.yield %81 : memref<9x14x12xi64>
      }
      %269 = math.tan %56 : tensor<3x3xf16>
      %270 = vector.splat %cst_5 : vector<3xf32>
      scf.yield
    }
    %172 = vector.broadcast %c1753030227_i64 : i64 to vector<3x3xi64>
    %173 = vector.outerproduct %101, %19, %172 {kind = #vector.kind<or>} : vector<3xi64>, vector<3xi64>
    %174 = arith.xori %true_6, %extracted : i1
    affine.for %arg0 = 0 to 73 {
    }
    %175 = vector.create_mask %c1, %c13 : vector<3x12xi1>
    %176 = vector.broadcast %cst_2 : f16 to vector<f16>
    %177 = vector.transfer_write %176, %56[%c0, %c6] : vector<f16>, tensor<3x3xf16>
    memref.assume_alignment %81, 2 : memref<9x14x12xi64>
    %178 = arith.negf %cst_4 : f16
    %expanded = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<36x3xi1> into tensor<36x3x1xi1>
    %179 = tensor.empty() : tensor<3x14xi32>
    %180 = linalg.matmul ins(%102, %40 : tensor<3x3xi32>, tensor<3x14xi32>) outs(%179 : tensor<3x14xi32>) -> tensor<3x14xi32>
    %181 = math.log2 %12 : tensor<3xf16>
    %182 = index.maxs %c1, %74
    %generated_41 = tensor.generate %rank_35 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %256 = vector.broadcast %c1753030227_i64 : i64 to vector<3x3xi64>
      %257 = vector.outerproduct %19, %19, %256 {kind = #vector.kind<add>} : vector<3xi64>, vector<3xi64>
      %alloc_52 = memref.alloc() : memref<3x12xi16>
      memref.copy %100, %alloc_52 : memref<3x12xi16> to memref<3x12xi16>
      %258 = math.ceil %cst_4 : f16
      %259 = index.maxs %c2, %c12
      tensor.yield %145 : i64
    } : tensor<?x14x12xi64>
    vector.print %90 : vector<12x3x3xf32>
    %183 = affine.load %alloc_19[%c11, %c3, %c5] : memref<12x3x3xi16>
    %184 = index.sizeof
    scf.execute_region {
      %256 = arith.minsi %true_1, %true_1 : i1
      %257 = math.sqrt %87 : f32
      %258 = vector.matrix_multiply %143, %143 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
      %259 = tensor.empty() : tensor<3x12xi1>
      %mapped_52 = linalg.map ins(%1, %1, %1 : tensor<3x12xi1>, tensor<3x12xi1>, tensor<3x12xi1>) outs(%259 : tensor<3x12xi1>)
        (%in: i1, %in_54: i1, %in_55: i1) {
          %269 = math.log1p %18 : tensor<3x3xf16>
          %270 = vector.broadcast %cst_4 : f16 to vector<9xf16>
          %271 = vector.transfer_write %270, %reduced[%161, %184] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf16>, tensor<3x3xf16>
          %272 = math.sqrt %7 : tensor<12x3x3xf16>
          %273 = vector.transpose %71, [0] : vector<1xi64> to vector<1xi64>
          %274 = math.fma %cst_0, %cst_0, %87 : f32
          %275 = arith.addi %145, %c631077143_i64 : i64
          %276 = index.sizeof
          %277 = index.floordivs %161, %33
          %278 = math.atan %cst : f16
          %279 = arith.negf %cst : f16
          %280 = index.ceildivs %68, %34
          %281 = math.cttz %10 : tensor<12x3x3xi1>
          affine.store %cst_4, %alloc_10[%c13] : memref<3xf16>
          %282 = memref.atomic_rmw mins %extracted_26, %alloc_17[%c1] : (i32, memref<3xi32>) -> i32
          %283 = math.cos %2 : tensor<3xf16>
          %284 = vector.splat %cst : vector<12x3x3xf16>
          %285 = memref.atomic_rmw assign %cst_4, %alloc_18[%c7, %c10, %c0] : (f16, memref<9x14x12xf16>) -> f16
          %286 = index.casts %c870719789_i32 : i32 to index
          %cast_56 = tensor.cast %0 : tensor<3xi64> to tensor<?xi64>
          %287 = math.fma %13, %13, %78 : tensor<3xf32>
          %alloc_57 = memref.alloc() : memref<12x3x3xi16>
          memref.copy %alloc_19, %alloc_57 : memref<12x3x3xi16> to memref<12x3x3xi16>
          %288 = vector.broadcast %cst_7 : f16 to vector<3x12xf16>
          %289 = math.log2 %cst_7 : f16
          %290 = vector.create_mask %c4 : vector<3xi1>
          %291 = affine.load %alloc_18[%c6, %c4, %c3] : memref<9x14x12xf16>
          %from_elements_58 = tensor.from_elements %true, %in, %true_3, %false, %true_3, %true_1, %true_1, %in_55, %in_55, %true_6, %true, %false, %in, %extracted, %true_1, %in_54, %in_55, %true, %true, %true_3, %in_55, %true_1, %in_55, %true, %true_1, %extracted, %extracted, %true_1, %in, %true_6, %true, %true, %extracted, %true_3, %in_55, %in : tensor<3x12xi1>
          %292 = arith.addi %171, %183 : i16
          %293 = arith.minui %in_55, %true_6 : i1
          %294 = vector.create_mask %rank : vector<3xi1>
          %295 = arith.minsi %true_6, %in_54 : i1
          %296 = math.log2 %cst_2 : f16
          %rank_59 = tensor.rank %11 : tensor<12x3x3xi32>
          %false_60 = arith.constant false
          linalg.yield %false_60 : i1
        }
      %260 = math.cttz %145 : i64
      %261 = scf.index_switch %c11 -> vector<3x12xi1> 
      case 1 {
        %269 = vector.bitcast %71 : vector<1xi64> to vector<1xi64>
        memref.assume_alignment %112, 8 : memref<3xi64>
        %270 = vector.broadcast %extracted_26 : i32 to vector<3x12xi32>
        %271 = vector.gather %1[%158, %c1] [%270], %175, %175 : tensor<3x12xi1>, vector<3x12xi32>, vector<3x12xi1>, vector<3x12xi1> into vector<3x12xi1>
        %cast_54 = tensor.cast %5 : tensor<3xi32> to tensor<?xi32>
        %collapsed_55 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
        %cast_56 = tensor.cast %40 : tensor<3x14xi32> to tensor<?x?xi32>
        %extracted_57 = tensor.extract %179[%c0, %c1] : tensor<3x14xi32>
        %272 = arith.divui %c1753030227_i64, %c1753030227_i64 : i64
        %273 = vector.broadcast %182 : index to vector<3xindex>
        %274 = vector.broadcast %true_3 : i1 to vector<3xi1>
        vector.scatter %alloc[%c8, %c0, %c9] [%273], %274, %151 : memref<9x14x12xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %275 = math.ceil %12 : tensor<3xf16>
        %276 = index.mul %106, %rank
        %277 = math.tan %12 : tensor<3xf16>
        %278 = tensor.empty() : tensor<9x14x12xi16>
        %279 = math.round %18 : tensor<3x3xf16>
        %280 = affine.min affine_map<(d0, d1, d2) -> (d1)>(%c6, %c10, %c8)
        %281 = vector.extract_strided_slice %258 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        scf.yield %175 : vector<3x12xi1>
      }
      case 2 {
        memref.assume_alignment %81, 4 : memref<9x14x12xi64>
        %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 8, -d2, -(d2 + 8))>(%c3, %c6, %c13, %c2)
        %cast_54 = tensor.cast %collapsed : tensor<36x3xi1> to tensor<?x?xi1>
        %270 = arith.remsi %c1753030227_i64, %145 : i64
        %271 = arith.remui %c1753030227_i64, %145 : i64
        %272 = math.cttz %8 : tensor<3xi16>
        %273 = math.ipowi %extracted_26, %extracted_26 : i32
        memref.assume_alignment %alloc_20, 8 : memref<9x14x12xf32>
        %274 = bufferization.to_tensor %alloc_12 : memref<12x3x3xi32>
        %275 = arith.shrsi %183, %c30065_i16 : i16
        %276 = math.log2 %87 : f32
        %277 = math.fma %18, %reduced, %18 : tensor<3x3xf16>
        %278 = math.cos %12 : tensor<3xf16>
        %279 = math.ctpop %9 : tensor<9x14x12xi32>
        %280 = math.log1p %cst : f16
        %281 = vector.extract_strided_slice %109 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        scf.yield %175 : vector<3x12xi1>
      }
      default {
        memref.assume_alignment %alloc_17, 2 : memref<3xi32>
        %269 = vector.extract_strided_slice %109 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %270 = vector.broadcast %cst_4 : f16 to vector<f16>
        %271 = vector.transfer_write %270, %12[%74] : vector<f16>, tensor<3xf16>
        %272 = math.atan %63 : tensor<3x3xf16>
        %273 = vector.flat_transpose %151 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %274 = arith.remsi %183, %c30065_i16 : i16
        %275 = math.fpowi %13, %16 : tensor<3xf32>, tensor<3xi32>
        %276 = vector.create_mask %182, %85 : vector<3x12xi1>
        %277 = arith.cmpi ugt, %true_3, %false : i1
        %cast_54 = tensor.cast %21 : tensor<i64> to tensor<i64>
        %278 = arith.maxsi %c631077143_i64, %145 : i64
        %279 = arith.ceildivsi %c1753030227_i64, %145 : i64
        %280 = math.log10 %cst_7 : f16
        vector.print %27 : vector<1xi64>
        %281 = math.log2 %2 : tensor<3xf16>
        memref.assume_alignment %alloc_24, 2 : memref<3xi64>
        scf.yield %175 : vector<3x12xi1>
      }
      scf.if %extracted {
        %cast_54 = tensor.cast %expanded : tensor<36x3x1xi1> to tensor<?x?x?xi1>
        %269 = arith.remf %cst, %cst_4 : f16
        %270 = math.cttz %c-6170_i16 : i16
        %splat_55 = tensor.splat %145 : tensor<9x14x12xi64>
        %271 = index.ceildivu %c7, %c11
        %272 = index.sub %c11, %33
        %273 = index.divs %c0, %106
        %274 = arith.remsi %183, %183 : i16
      } else {
        memref.assume_alignment %alloc_17, 16 : memref<3xi32>
        %269 = arith.minui %extracted_26, %extracted_26 : i32
        %270 = math.tan %56 : tensor<3x3xf16>
        %271 = vector.broadcast %cst_4 : f16 to vector<3xf16>
        %272 = arith.shli %true, %true_6 : i1
        %cast_54 = tensor.cast %collapsed : tensor<36x3xi1> to tensor<?x?xi1>
        %273 = index.floordivs %c2, %c7
        %from_elements_55 = tensor.from_elements %true_3, %true_6, %true_3, %true_6, %false, %true, %extracted, %true, %true, %true_3, %true_1, %true_6, %true_3, %true_6, %false, %true_6, %true, %true, %false, %true_6, %false, %false, %extracted, %extracted, %extracted, %true, %true_1, %true_6, %false, %false, %true, %false, %true_1, %extracted, %extracted, %false, %true, %extracted, %true, %true_6, %true_6, %true_6, %false, %true_3, %true, %true_1, %true_6, %false, %extracted, %true, %false, %true, %false, %true_6, %true, %extracted, %false, %extracted, %true, %true, %true_6, %extracted, %true_6, %true_3, %false, %true_6, %true_6, %false, %false, %false, %true_1, %true_3, %true, %true_3, %extracted, %true_1, %extracted, %true, %true_6, %false, %true_6, %true_3, %true_1, %true_1, %false, %true_1, %true_6, %extracted, %true_1, %true_3, %true_6, %true_6, %extracted, %true, %true_3, %true_3, %true_6, %extracted, %false, %true_6, %false, %false, %false, %true, %extracted, %false, %false, %false, %true_3, %true, %true_6, %true_3, %true_6, %true, %true, %true_1, %true, %true_3, %false, %false, %true_3, %true, %true_3, %true_6, %true, %true_3, %true_3, %true_6, %extracted, %extracted, %true_1, %true_6, %true_6, %false, %true_3, %true, %true_1, %true_3, %true_6, %extracted, %extracted, %true, %false, %true, %extracted, %true_3, %true, %true, %true_3, %false, %true_3, %true, %true_1, %true_3, %true, %true, %true, %true_3, %true_6, %extracted, %extracted, %true_6, %false, %extracted, %false, %true_1, %true_1, %true_3, %false, %false, %true_1, %true_3, %false, %true, %true_6, %true_3, %true_6, %true_1, %extracted, %extracted, %true_1, %true, %extracted, %true_6, %true_3, %true_1, %false, %false, %true, %false, %false, %true_3, %true_3, %true, %true_1, %true_6, %extracted, %false, %true_3, %extracted, %true, %true_3, %true, %true, %true, %extracted, %true_3, %true_6, %extracted, %true_3, %true_1, %true_1, %true_6, %false, %true, %true, %true_1, %true, %true_1, %true_3, %true, %true_3, %true_3, %false, %true_3, %extracted, %true_1, %false, %true_1, %true_6, %true_3, %true_6, %true_1, %extracted, %true_1, %true_6, %false, %false, %extracted, %true_6, %true, %true_3, %true_1, %true, %true, %true_6, %extracted, %false, %true_6, %extracted, %true_6, %extracted, %true_6, %true, %false, %true, %true_1, %true_1, %true, %true_6, %true_1, %true_6, %true_6, %true_1, %true_1, %true_3, %true_3, %false, %true, %extracted, %true_6, %true_6, %true_6, %true_1, %false, %true_3, %true_1, %true_3, %true_1, %true_1, %true_1, %true_3, %extracted, %false, %true_6, %false, %true_3, %true, %true, %true_3, %true_1, %true_1, %true, %true_3, %true, %true_6, %true_3, %false, %true_1, %false, %true_6, %extracted, %true, %true, %true_3, %true_3, %true_1, %true_3, %true_6, %true_1, %true_1, %true, %extracted, %true_6, %extracted, %true_3, %true_6, %true_3, %true_6, %true_6, %true, %true_3, %false, %true_3, %true_1, %true, %true_6, %true, %extracted, %true_3, %true_1, %true_1, %true_6, %true_3, %false, %extracted, %false, %true_3, %true_3, %extracted, %extracted, %false, %false, %false, %extracted, %true_1, %extracted, %true_6, %true_3, %true, %true_1, %true_3, %true_6, %false, %false, %true, %true_3, %false, %true_1, %false, %true_1, %extracted, %extracted, %false, %true, %true_1, %true_3, %extracted, %true, %true_6, %true_3, %false, %true_3, %true_3, %true_3, %true_1, %true_6, %true_1, %true_1, %false, %true_1, %true_6, %true_1, %true, %extracted, %true_6, %true_3, %true_6, %true_6, %extracted, %true, %false, %extracted, %extracted, %true, %true_1, %true_3, %true_3, %true, %true, %false, %extracted, %true, %false, %true_6, %false, %false, %true_6, %true_1, %true_3, %true_6, %true, %extracted, %true, %false, %true_1, %true_3, %true_6, %true_6, %true_1, %true_3, %true_3, %true, %false, %true_3, %extracted, %extracted, %true_3, %true_3, %extracted, %true_6, %true_6, %extracted, %true, %true_6, %true_3, %false, %extracted, %true_6, %false, %true_6, %true_1, %true_6, %true_1, %extracted, %true_1, %extracted, %true_6, %extracted, %true_3, %extracted, %true_1, %true_3, %true_6, %true, %extracted, %true_1, %false, %true_6, %extracted, %false, %extracted, %false, %true, %true_3, %true_3, %extracted, %true_6, %extracted, %false, %false, %true_1, %true_1, %true, %true_3, %true_6, %true_3, %extracted, %extracted, %true_3, %true, %true_3, %extracted, %true_1, %true_3, %extracted, %false, %true_6, %true_6, %true_6, %extracted, %extracted, %true_1, %extracted, %false, %true_3, %true_6, %extracted, %true, %false, %true_6, %true_1, %true, %false, %true_1, %false, %true_6, %true, %true, %true_1, %false, %true_1, %true_6, %true, %extracted, %true, %true_1, %true_3, %true_6, %extracted, %true, %true_3, %true_3, %true_3, %false, %extracted, %true, %true_3, %extracted, %true, %true_1, %false, %extracted, %true_1, %true_1, %false, %true_3, %true, %true, %true_3, %false, %true_3, %true_3, %true_6, %true, %extracted, %false, %true_1, %true_1, %false, %true, %true_3, %true_3, %true_6, %true_3, %true_1, %true, %false, %true, %false, %true_1, %true_6, %true_1, %false, %extracted, %true_6, %false, %true_3, %extracted, %true, %true_6, %true_1, %true_1, %true_1, %true_6, %true_1, %true_1, %extracted, %extracted, %true_6, %true, %false, %true_3, %false, %false, %false, %true, %true, %true_1, %true_6, %true, %true_1, %true_6, %true_3, %true_3, %true_6, %extracted, %true, %true_6, %extracted, %true_6, %true, %true, %true, %true_1, %true_3, %true_3, %extracted, %true, %true, %true, %true_1, %true, %true_6, %true_3, %extracted, %true_6, %true_6, %true_1, %true_3, %true_6, %false, %true, %false, %true_3, %true_6, %extracted, %true_3, %false, %true, %extracted, %true, %true_3, %extracted, %false, %true_1, %true_3, %extracted, %false, %false, %extracted, %extracted, %true_3, %true, %true_3, %true_6, %false, %false, %true_6, %extracted, %extracted, %true_6, %true_3, %true, %false, %true_3, %true_3, %false, %false, %true, %true_1, %true_6, %false, %true, %extracted, %false, %true_6, %false, %extracted, %extracted, %true_6, %true_6, %true_6, %false, %false, %true_6, %false, %true_3, %extracted, %true, %true_1, %false, %true, %false, %false, %true_6, %true_6, %true_3, %extracted, %extracted, %extracted, %true_1, %true_1, %extracted, %true_3, %extracted, %true_3, %true_1, %true_1, %true, %true_6, %extracted, %true, %true_3, %true, %extracted, %extracted, %false, %true_6, %true_3, %false, %true_1, %true_1, %false, %true_1, %true_1, %false, %true_6, %false, %true_1, %extracted, %true_6, %true_1, %true, %true, %true_1, %true_1, %false, %true_6, %true_6, %true_3, %true_3, %true_3, %true_1, %false, %true, %false, %true_1, %true, %extracted, %true_1, %true_1, %true_1, %false, %extracted, %true_1, %extracted, %true_6, %extracted, %false, %true_3, %false, %extracted, %extracted, %false, %true, %true_1, %true_6, %extracted, %true_1, %true_3, %true_1, %true_6, %true_3, %extracted, %true_6, %true, %true_6, %true_1, %extracted, %false, %true_6, %true_6, %true_1, %true_1, %true_6, %extracted, %true_6, %true_1, %extracted, %extracted, %false, %true, %true_6, %extracted, %true_6, %false, %true_1, %true, %extracted, %true_3, %true_1, %true_3, %true_3, %true_6, %true, %true_6, %true_6, %true_3, %true_1, %true_6, %true_6, %extracted, %false, %true_1, %true_1, %true_6, %true, %true_3, %true_3, %true_3, %true_3, %true_6, %extracted, %true_1, %true, %extracted, %true_6, %true_3, %extracted, %true_1, %true_3, %true_3, %extracted, %true, %true_1, %false, %false, %false, %false, %true_1, %extracted, %true_6, %true_6, %true, %extracted, %false, %extracted, %true_6, %true_1, %true, %true_1, %true, %true_1, %true, %true, %extracted, %true_1, %true_1, %true_6, %true, %true, %true_6, %true_3, %true_3, %true, %true, %true_3, %true, %extracted, %true_1, %extracted, %extracted, %true_3, %extracted, %extracted, %true_1, %true_6, %true, %true, %extracted, %true, %extracted, %true, %false, %true_1, %true_1, %true_6, %true, %extracted, %true_3, %true_1, %true_1, %true_1, %true_1, %true, %false, %true_6, %extracted, %true_3, %true_3, %true_3, %true_3, %false, %true, %true_1, %false, %true_3, %false, %true, %true_3, %true_1, %true_6, %true_1, %extracted, %extracted, %false, %true_6, %extracted, %true_3, %true_1, %true_1, %extracted, %true_1, %true, %false, %true, %false, %extracted, %true_3, %extracted, %true, %true_1, %true, %true, %true, %extracted, %extracted, %true_3, %false, %true_3, %true_6, %true_6, %true_6, %true, %true_1, %true_6, %true, %true_1, %true_1, %true_3, %false, %true, %false, %extracted, %false, %true_3, %extracted, %true, %true_3, %extracted, %true, %extracted, %true_6, %true_6, %true_3, %true_6, %extracted, %false, %extracted, %false, %true_1, %true_1, %true_6, %true, %true, %true, %true_3, %true, %true_6, %false, %true_3, %true, %true_6, %true_1, %true_3, %false, %true, %true, %false, %true_1, %extracted, %true_6, %extracted, %true, %false, %false, %false, %true_3, %false, %true_3, %true_6, %true_3, %true_6, %extracted, %true, %true_6, %true, %false, %true_6, %extracted, %true_3, %true_3, %extracted, %false, %false, %true_6, %extracted, %true_1, %true_1, %true, %true_3, %true_1, %true_6, %false, %extracted, %true, %true_1, %true_6, %true_3, %false, %true_1, %true, %true_6, %true, %false, %true_1, %extracted, %false, %true_3, %false, %false, %extracted, %false, %extracted, %extracted, %extracted, %true_6, %true_1, %extracted, %true_6, %extracted, %false, %true_3, %true_6, %true_3, %extracted, %false, %true_3, %extracted, %false, %false, %true, %true_1, %true_3, %true_6, %true, %true_3, %false, %true_3, %extracted, %true, %false, %false, %extracted, %true_6, %true_3, %true_1, %true, %extracted, %extracted, %true_6, %true_6, %extracted, %true_6, %true_3, %true_3, %true_6, %false, %false, %true, %true_1, %true, %true_6, %true_3, %true_1, %extracted, %true_6, %true_6, %true_6, %true_6, %true_1, %false, %true, %true, %true_3, %extracted, %true_3, %extracted, %false, %true_6, %false, %true_6, %true_1, %false, %true_6, %false, %extracted, %false, %true_6, %true_6, %true_6, %true_1, %true, %true_6, %true, %true_6, %true, %true, %true_6, %true_1, %true_1, %true_3, %extracted, %true, %true_6, %false, %true_3, %extracted, %true_6, %true_6, %true, %true_3, %true, %false, %true, %true_6, %true, %extracted, %false, %true_6, %true_1, %true_1, %extracted, %true, %true, %true, %true_1, %true_1, %true_3, %true_3, %true_3, %false, %true_6, %true, %true_1, %false, %true_6, %true_3, %false, %true_3, %extracted, %extracted, %true_3, %true, %false, %true_1, %true_3, %true_1, %true_6, %true_1, %false, %true_6, %false, %false, %true_6, %false, %true_1, %true_6, %true, %true_6, %true_3, %true_3, %true_6, %true_6, %true, %true, %false, %true_6, %extracted, %true_6, %true_1, %true_1, %extracted, %true_3, %true_6, %true_1, %true_1, %true_6, %extracted, %false, %true_6, %true_1, %extracted, %true_3, %extracted, %true_6, %true_3, %true_6, %true_1, %true, %true_1, %true_3, %true_3, %true_3, %true_3, %true, %extracted, %true_6, %true_3, %true_1, %true_1, %true, %true_3, %extracted, %true, %true, %false, %true_3, %false, %extracted, %true_1, %true_3, %true_3, %true_6, %true, %true_3, %true_6, %false, %false, %false, %true_1, %true_6, %true_3, %true, %true_1, %true_6, %extracted, %true, %false, %true_1, %false, %true_6, %extracted, %true, %false, %true_1, %true_6, %true_1, %extracted, %true, %true_1, %false, %true, %true_1, %true_3, %extracted, %true_6, %true, %true_6, %true, %true, %true_6, %true, %extracted, %true, %true, %true_3, %extracted, %true_3, %true, %true_1, %false, %true_3, %true_1, %true_6, %true_6, %false, %true_6, %true_1, %extracted, %true_6, %false, %false, %extracted, %extracted, %true, %true_6, %true_6, %true, %true, %true_3, %false, %extracted, %true, %true_3, %true, %true_1, %extracted, %true_3, %true_3, %true_1, %extracted, %true_6, %extracted, %true_3, %extracted, %false, %true_1, %false, %true_1, %true_1, %extracted, %false, %false, %true, %true_3, %true_1, %true_1, %false, %extracted, %true, %true_1, %false, %true_3, %true, %true_3, %false, %true_6, %true_1, %true_3, %false, %extracted, %true_6, %true_1, %true, %true_3, %true_3, %true_6, %true_3, %false, %true_6, %true_3, %true_6, %true_3, %true, %true_6, %true_6, %true_6, %true_3, %extracted, %false, %true_6, %true_3, %false, %false, %false, %false, %true_3, %true_3, %true_1, %extracted, %true_6, %true_1, %true_6, %true_6, %true_3, %true_3, %extracted, %true_6, %true_1, %true, %extracted, %false, %true_3, %extracted, %false, %true_1, %true_3, %true_3, %extracted, %false, %true_3, %true_6, %extracted, %true_3, %true_3, %extracted, %true_1, %true_1, %true, %true_3, %true, %true, %true_1, %false, %false, %true_3, %true_3, %extracted, %extracted, %true_1, %true_1, %true_6, %true, %true, %true, %true_6, %false, %true_6, %true, %true, %true_6, %false, %true_6, %true_6, %true_3, %true_6, %true_3, %true_6, %true_6, %false, %true, %false, %false, %true, %extracted, %true_3, %true_1, %extracted, %true_6, %true_1, %true_6, %true_3, %true_6, %true, %true_3, %true, %true_3, %true_1, %extracted, %false, %true_6, %extracted, %extracted, %true_1, %true_6, %false, %true_3, %true_6, %true, %true_1, %true_3, %false, %true_6, %false, %true, %false, %true_1, %true, %true, %true, %extracted, %true_6, %true, %false, %true_1, %true_1, %extracted, %true_1, %true_6, %false, %true_1, %extracted, %true_6, %extracted, %true, %true, %true_3, %true_1, %false, %true_6, %extracted, %false, %false, %true_1, %true, %true_3, %true_6, %extracted, %extracted, %extracted, %true_1, %true, %extracted, %true_1, %true_1, %false, %true_1, %true, %true_3, %true : tensor<9x14x12xi1>
      }
      %rank_53 = tensor.rank %generated_29 : tensor<?x?x3xi16>
      scf.execute_region {
        %269 = index.divs %c12, %106
        vector.print %165 : vector<1xi64>
        %270 = arith.minui %171, %183 : i16
        %271 = math.ipowi %c-6170_i16, %c-6170_i16 : i16
        %272 = math.fma %63, %reduced, %18 : tensor<3x3xf16>
        %273 = vector.reduction <add>, %165 : vector<1xi64> into i64
        %274 = math.ctlz %9 : tensor<9x14x12xi32>
        %275 = vector.broadcast %cst_0 : f32 to vector<9x14x12xf32>
        %276 = vector.fma %275, %132, %275 : vector<9x14x12xf32>
        %277 = vector.extract_strided_slice %133 {offsets = [2, 6], sizes = [1, 8], strides = [1, 1]} : vector<9x14x12xf32> to vector<1x8x12xf32>
        %278 = vector.create_mask %c6, %rank_53 : vector<3x12xi1>
        %279 = math.sqrt %cst_5 : f32
        %280 = arith.cmpi uge, %extracted, %extracted : i1
        %281 = arith.ceildivsi %extracted, %true_3 : i1
        %282 = memref.load %alloc_19[%c8, %c2, %c0] : memref<12x3x3xi16>
        %alloc_54 = memref.alloc() : memref<3xf32>
        %283 = math.log %13 : tensor<3xf32>
        scf.yield
      }
      %262 = math.ctlz %16 : tensor<3xi32>
      %263 = tensor.empty() : tensor<3xi32>
      %264 = index.floordivs %68, %c6
      vector.print %23 : vector<3x12xf32>
      %265 = math.absi %11 : tensor<12x3x3xi32>
      %266 = math.round %18 : tensor<3x3xf16>
      %267 = tensor.empty() : tensor<3x14xi32>
      %268 = linalg.matmul ins(%102, %179 : tensor<3x3xi32>, tensor<3x14xi32>) outs(%267 : tensor<3x14xi32>) -> tensor<3x14xi32>
      scf.yield
    }
    %185 = arith.minsi %c631077143_i64, %145 : i64
    %186 = math.ceil %13 : tensor<3xf32>
    %187 = math.absi %c-6170_i16 : i16
    %188 = vector.broadcast %161 : index to vector<12xindex>
    %189 = vector.broadcast %extracted : i1 to vector<12xi1>
    %190 = vector.broadcast %extracted_26 : i32 to vector<12xi32>
    vector.scatter %alloc_12[%c1, %c1, %c0] [%188], %189, %190 : memref<12x3x3xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
    %191 = math.atan2 %12, %12 : tensor<3xf16>
    %192 = index.floordivs %c14, %c12
    %193 = arith.maxsi %c30065_i16, %c-6170_i16 : i16
    %194 = math.tan %cst_4 : f16
    %195 = math.log %56 : tensor<3x3xf16>
    %splat = tensor.splat %true_6 : tensor<12x3x3xi1>
    %196 = arith.divui %183, %171 : i16
    %197 = vector.broadcast %87 : f32 to vector<9x14x12xf32>
    %198 = vector.fma %197, %132, %133 : vector<9x14x12xf32>
    %199 = bufferization.to_memref %15 : memref<3x12xi32>
    %200 = math.floor %cst_0 : f32
    %201 = math.cos %cst : f16
    %collapsed_42 = tensor.collapse_shape %4 [[0, 1]] : tensor<3x12xi16> into tensor<36xi16>
    %alloca_43 = memref.alloca() : memref<3xi32>
    memref.tensor_store %15, %199 : memref<3x12xi32>
    %202 = vector.extract_strided_slice %175 {offsets = [0], sizes = [1], strides = [1]} : vector<3x12xi1> to vector<1x12xi1>
    %203 = math.exp2 %12 : tensor<3xf16>
    %204 = math.powf %2, %2 : tensor<3xf16>
    %205 = math.fma %13, %78, %78 : tensor<3xf32>
    memref.alloca_scope  {
      %256 = math.powf %reduced, %18 : tensor<3x3xf16>
      %cast_52 = tensor.cast %from_elements_37 : tensor<3xi32> to tensor<?xi32>
      %257 = vector.extract_strided_slice %58 {offsets = [0], sizes = [1], strides = [1]} : vector<3x12xf32> to vector<1x12xf32>
      scf.index_switch %113 
      case 1 {
        vector.print %257 : vector<1x12xf32>
        %283 = math.fma %7, %7, %7 : tensor<12x3x3xf16>
        %284 = index.sizeof
        %285 = arith.shli %extracted_26, %c870719789_i32 : i32
        vector.print %133 : vector<9x14x12xf32>
        %286 = math.fma %18, %reduced, %18 : tensor<3x3xf16>
        %287 = vector.insertelement %c631077143_i64, %143[%34 : index] : vector<3xi64>
        %288 = math.tan %56 : tensor<3x3xf16>
        %289 = vector.multi_reduction <minui>, %202, %202 [] : vector<1x12xi1> to vector<1x12xi1>
        %290 = vector.broadcast %c631077143_i64 : i64 to vector<1x1xi64>
        %291 = vector.outerproduct %109, %109, %290 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
        %292 = vector.broadcast %c7 : index to vector<14xindex>
        %293 = vector.broadcast %true_1 : i1 to vector<14xi1>
        vector.scatter %alloc_9[%c5, %c7, %c2] [%292], %293, %293 : memref<9x14x12xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        %294 = bufferization.to_memref %18 : memref<3x3xf16>
        %295 = math.cttz %21 : tensor<i64>
        %296 = index.divs %34, %89
        %297 = math.atan2 %cst, %cst_2 : f16
        %298 = math.log %2 : tensor<3xf16>
        scf.yield
      }
      case 2 {
        %283 = arith.remf %87, %87 : f32
        %284 = arith.minsi %183, %c30065_i16 : i16
        %285 = arith.remsi %true_1, %extracted : i1
        %286 = memref.realloc %alloc_14 : memref<3xi64> to memref<14xi64>
        %287 = index.maxs %c12, %rank_39
        vector.print %22 : vector<3x12xf32>
        %288 = arith.remf %cst_7, %cst_2 : f16
        %289 = math.sqrt %7 : tensor<12x3x3xf16>
        %290 = index.mul %c4, %119
        %291 = math.atan2 %reduced, %reduced : tensor<3x3xf16>
        %292 = index.castu %c13 : index to i32
        %293 = arith.remui %c-6170_i16, %183 : i16
        %294 = math.cttz %extracted_26 : i32
        memref.assume_alignment %alloc, 1 : memref<9x14x12xi64>
        %extracted_56 = tensor.extract %2[%c1] : tensor<3xf16>
        %295 = index.ceildivs %67, %47
        scf.yield
      }
      case 3 {
        %283 = math.ipowi %true_3, %extracted : i1
        %284 = math.log %collapsed_36 : tensor<9xf16>
        %285 = tensor.empty() : tensor<12x3x3xi1>
        %286 = affine.load %alloc_14[%c11] : memref<3xi64>
        %287 = math.ceil %63 : tensor<3x3xf16>
        %288 = arith.minsi %true_6, %true_1 : i1
        %289 = vector.extract %202[0] : vector<1x12xi1>
        %290 = arith.divui %true, %true_3 : i1
        %291 = math.fma %7, %7, %7 : tensor<12x3x3xf16>
        vector.print %202 : vector<1x12xi1>
        %292 = arith.shrsi %true, %true_6 : i1
        %293 = index.mul %161, %34
        %294 = index.sub %c5, %89
        %295 = bufferization.to_tensor %alloc_20 : memref<9x14x12xf32>
        %extracted_56 = tensor.extract %12[%c1] : tensor<3xf16>
        %cast_57 = tensor.cast %8 : tensor<3xi16> to tensor<?xi16>
        scf.yield
      }
      default {
        %rank_56 = tensor.rank %4 : tensor<3x12xi16>
        %283 = math.log2 %cst_4 : f16
        %284 = vector.flat_transpose %109 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %285 = arith.ceildivsi %true_6, %true_6 : i1
        %286 = bufferization.to_tensor %alloc_18 : memref<9x14x12xf16>
        %287 = math.log2 %2 : tensor<3xf16>
        %288 = vector.broadcast %cst_5 : f32 to vector<9x12xf32>
        %dest_57, %accumulated_value_58 = vector.scan <maxf>, %132, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<9x14x12xf32>, vector<9x12xf32>
        %289 = index.maxs %c7, %rank_39
        %290 = math.log10 %12 : tensor<3xf16>
        %291 = vector.broadcast %cst_5 : f32 to vector<1x9x14xf32>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %32, %197, %291 : vector<1x12xf32>, vector<9x14x12xf32> into vector<1x9x14xf32>
        %293 = math.atan %13 : tensor<3xf32>
        %294 = math.floor %78 : tensor<3xf32>
        %295 = vector.broadcast %true_3 : i1 to vector<12xi1>
        %296 = vector.multi_reduction <maxui>, %175, %295 [0] : vector<3x12xi1> to vector<12xi1>
        %297 = arith.shli %true, %false : i1
        %298 = index.ceildivu %182, %c4
        %299 = vector.splat %cst : vector<9x14x12xf16>
      }
      %258 = math.log1p %cst_5 : f32
      %259 = vector.extract_strided_slice %133 {offsets = [6, 12], sizes = [1, 1], strides = [1, 1]} : vector<9x14x12xf32> to vector<1x1x12xf32>
      %260 = math.powf %7, %7 : tensor<12x3x3xf16>
      %261 = math.log1p %13 : tensor<3xf32>
      %262 = math.fma %63, %52, %reduced : tensor<3x3xf16>
      %263 = math.log2 %cst_5 : f32
      %264 = index.sub %c7, %rank
      %265 = vector.shuffle %259, %259 [0] : vector<1x1x12xf32>, vector<1x1x12xf32>
      %266 = math.absi %6 : tensor<3xi64>
      %alloca_53 = memref.alloca() : memref<12x3x3xi1>
      %267 = arith.shli %c870719789_i32, %c870719789_i32 : i32
      %268 = index.ceildivs %34, %c5
      %269 = math.cttz %true_6 : i1
      %270 = arith.remsi %183, %183 : i16
      %271 = math.atan2 %cst_7, %cst_2 : f16
      %272 = vector.broadcast %extracted_26 : i32 to vector<12xi32>
      %273 = vector.transfer_write %272, %11[%c5, %184, %161] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi32>, tensor<12x3x3xi32>
      %274 = vector.broadcast %cst_5 : f32 to vector<3xf32>
      %275 = vector.fma %274, %274, %274 : vector<3xf32>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %154, %c631077143_i64 : vector<3xi64>, vector<3xi64> into i64
      %277 = vector.insertelement %extracted_26, %272[%c7 : index] : vector<12xi32>
      vector.print %175 : vector<3x12xi1>
      %278 = math.floor %cst_7 : f16
      %279 = arith.xori %c30065_i16, %c-6170_i16 : i16
      %280 = arith.remsi %c631077143_i64, %145 : i64
      %cast_54 = tensor.cast %8 : tensor<3xi16> to tensor<?xi16>
      %cast_55 = tensor.cast %15 : tensor<3x12xi32> to tensor<?x?xi32>
      %281 = math.ctlz %extracted : i1
      memref.copy %alloc, %alloc_8 : memref<9x14x12xi64> to memref<9x14x12xi64>
      %282 = math.log2 %7 : tensor<12x3x3xf16>
    }
    %rank_44 = tensor.rank %6 : tensor<3xi64>
    %206 = arith.remui %c-6170_i16, %183 : i16
    %207 = vector.flat_transpose %75 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %208 = math.log1p %reduced : tensor<3x3xf16>
    %209 = arith.divf %cst_7, %cst : f16
    %splat_45 = tensor.splat %c631077143_i64 : tensor<3xi64>
    %210 = vector.insertelement %c631077143_i64, %75[%c11 : index] : vector<1xi64>
    %211 = vector.reduction <xor>, %154 : vector<3xi64> into i64
    %212 = math.ipowi %94, %94 : tensor<36x12xi1>
    %213 = memref.atomic_rmw muli %145, %alloc_11[%c0] : (i64, memref<3xi64>) -> i64
    %214 = math.floor %87 : f32
    %215 = math.round %52 : tensor<3x3xf16>
    %216 = vector.broadcast %true_3 : i1 to vector<3xi1>
    %217 = vector.broadcast %c870719789_i32 : i32 to vector<3xi32>
    %218 = vector.gather %alloc_15[%c8, %rank_35, %c2] [%217], %216, %101 : memref<12x3x3xi64>, vector<3xi32>, vector<3xi1>, vector<3xi64> into vector<3xi64>
    %splat_46 = tensor.splat %true_3 : tensor<3xi1>
    bufferization.dealloc_tensor %10 : tensor<12x3x3xi1>
    %219 = arith.shrui %true, %false : i1
    %220 = vector.broadcast %184 : index to vector<12xindex>
    %221 = vector.broadcast %extracted : i1 to vector<12xi1>
    %222 = vector.broadcast %extracted_26 : i32 to vector<12xi32>
    vector.scatter %199[%c2, %c10] [%220], %221, %222 : memref<3x12xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
    memref.tensor_store %11, %alloc_12 : memref<12x3x3xi32>
    %223 = index.mul %rank, %182
    %224 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2, d0, -(d0 ceildiv 4))>(%c2, %c15, %c9, %85)
    %225 = math.powf %52, %18 : tensor<3x3xf16>
    %226 = vector.reduction <maxui>, %109 : vector<1xi64> into i64
    %227 = math.ceil %78 : tensor<3xf32>
    %228 = math.log2 %7 : tensor<12x3x3xf16>
    %229 = arith.maxsi %145, %145 : i64
    scf.index_switch %c7 
    case 1 {
      %256 = vector.extract_strided_slice %23 {offsets = [1], sizes = [1], strides = [1]} : vector<3x12xf32> to vector<1x12xf32>
      %257 = math.cos %cst_2 : f16
      %258 = math.cos %87 : f32
      %259 = bufferization.to_memref %179 : memref<3x14xi32>
      %260 = math.fpowi %2, %17 : tensor<3xf16>, tensor<3xi32>
      vector.print %22 : vector<3x12xf32>
      %261 = math.cos %cst_0 : f32
      %262 = arith.remf %cst_0, %cst_5 : f32
      %263 = vector.broadcast %87 : f32 to vector<3x12xf32>
      %264 = vector.fma %263, %263, %263 : vector<3x12xf32>
      %265 = arith.andi %c1753030227_i64, %c631077143_i64 : i64
      %266 = index.floordivs %rank_39, %47
      %267 = tensor.empty() : tensor<12x3x3xi32>
      %268 = math.ceil %cst_7 : f16
      bufferization.dealloc_tensor %5 : tensor<3xi32>
      %269 = math.exp %cst_0 : f32
      %270 = arith.divf %cst, %cst_7 : f16
      scf.yield
    }
    case 2 {
      %alloc_52 = memref.alloc() : memref<12x9xi16>
      %256 = tensor.empty() : tensor<3x9xi16>
      %257 = linalg.matmul ins(%4, %alloc_52 : tensor<3x12xi16>, memref<12x9xi16>) outs(%256 : tensor<3x9xi16>) -> tensor<3x9xi16>
      %258 = math.log %12 : tensor<3xf16>
      %259 = memref.alloca_scope  -> (i16) {
        %269 = vector.create_mask %c11, %67, %rank_44 : vector<9x14x12xi1>
        %270 = index.casts %true_3 : i1 to index
        %271 = math.log1p %cst_7 : f16
        %272 = vector.broadcast %true_3 : i1 to vector<i1>
        %273 = vector.transfer_write %272, %94[%rank_35, %c15] : vector<i1>, tensor<36x12xi1>
        %274 = index.maxs %270, %c11
        %275 = vector.broadcast %87 : f32 to vector<12xf32>
        %dest_55, %accumulated_value_56 = vector.scan <mul>, %58, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<3x12xf32>, vector<12xf32>
        %276 = math.powf %cst_4, %cst_4 : f16
        %277 = vector.broadcast %c5 : index to vector<14xindex>
        %278 = vector.broadcast %true_1 : i1 to vector<14xi1>
        %279 = vector.broadcast %145 : i64 to vector<14xi64>
        vector.scatter %112[%c1] [%277], %278, %279 : memref<3xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
        %280 = index.ceildivs %89, %rank_39
        %281 = vector.broadcast %145 : i64 to vector<3x3xi64>
        %282 = vector.outerproduct %143, %19, %281 {kind = #vector.kind<minsi>} : vector<3xi64>, vector<3xi64>
        vector.print %27 : vector<1xi64>
        %extracted_57 = tensor.extract %11[%c9, %c2, %c1] : tensor<12x3x3xi32>
        %283 = vector.reduction <xor>, %104 : vector<1xi64> into i64
        %284 = index.sub %223, %184
        %285 = arith.minui %183, %183 : i16
        %286 = arith.remsi %c1753030227_i64, %c631077143_i64 : i64
        %287 = arith.minsi %c631077143_i64, %c631077143_i64 : i64
        %288 = math.cttz %183 : i16
        %289 = index.sub %c2, %rank_39
        %290 = vector.flat_transpose %165 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %291 = vector.broadcast %cst_5 : f32 to vector<12x3x3xf32>
        %292 = vector.fma %291, %291, %291 : vector<12x3x3xf32>
        %293 = arith.remf %cst_2, %cst_2 : f16
        %294 = math.ctlz %from_elements_34 : tensor<3x12xi16>
        %295 = arith.maxsi %extracted_57, %extracted_26 : i32
        %extracted_58 = tensor.extract %4[%c2, %c5] : tensor<3x12xi16>
        %296 = math.log1p %87 : f32
        %297 = vector.broadcast %145 : i64 to vector<3x3xi64>
        %298 = vector.outerproduct %101, %143, %297 {kind = #vector.kind<mul>} : vector<3xi64>, vector<3xi64>
        %299 = index.maxs %rank_44, %c9
        %300 = arith.cmpf ole, %cst_4, %cst_2 : f16
        %301 = arith.addi %true_1, %false : i1
        %from_elements_59 = tensor.from_elements %c631077143_i64, %145, %145, %c631077143_i64, %145, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %145, %145, %c1753030227_i64, %c1753030227_i64, %145, %145, %c1753030227_i64, %145, %c631077143_i64, %c1753030227_i64, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %145, %c631077143_i64, %145, %145, %145, %145, %c1753030227_i64, %c631077143_i64, %c631077143_i64, %145 : tensor<3x12xi64>
        %302 = vector.broadcast %true_1 : i1 to vector<i1>
        %303 = vector.transfer_write %302, %splat_46[%113] : vector<i1>, tensor<3xi1>
        memref.alloca_scope.return %c30065_i16 : i16
      }
      %rank_53 = tensor.rank %256 : tensor<3x9xi16>
      %260 = vector.insertelement %cst, %176[] : vector<f16>
      %261 = arith.divf %cst_2, %cst_7 : f16
      %262 = memref.load %alloc_13[%c1, %c8, %c0] : memref<9x14x12xi32>
      %263 = math.ctpop %9 : tensor<9x14x12xi32>
      memref.alloca_scope  {
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %154, %218, %145 : vector<3xi64>, vector<3xi64> into i64
        %270 = arith.cmpf false, %cst_2, %cst_7 : f16
        %271 = arith.floordivsi %c631077143_i64, %c1753030227_i64 : i64
        %272 = memref.load %114[%c2] : memref<3xi32>
        %273 = index.ceildivs %85, %223
        %274 = vector.bitcast %165 : vector<1xi64> to vector<1xi64>
        %275 = arith.floordivsi %183, %c30065_i16 : i16
        %276 = vector.flat_transpose %143 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %277 = arith.ceildivsi %c30065_i16, %259 : i16
        %278 = bufferization.to_tensor %alloc_24 : memref<3xi64>
        %279 = index.sub %74, %34
        %280 = bufferization.to_tensor %112 : memref<3xi64>
        %281 = math.atan %52 : tensor<3x3xf16>
        %282 = vector.broadcast %cst_4 : f16 to vector<12x3x3xf16>
        %283 = vector.broadcast %extracted_26 : i32 to vector<12x3x3xi32>
        %284 = vector.gather %7[%c13, %106, %74] [%283], %54, %282 : tensor<12x3x3xf16>, vector<12x3x3xi32>, vector<12x3x3xi1>, vector<12x3x3xf16> into vector<12x3x3xf16>
        %285 = vector.broadcast %cst_2 : f16 to vector<3x3x3x3xf16>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %284, %282, %285 : vector<12x3x3xf16>, vector<12x3x3xf16> into vector<3x3x3x3xf16>
        %287 = arith.minui %true, %true_1 : i1
        %288 = vector.broadcast %c870719789_i32 : i32 to vector<9x14x12xi32>
        %289 = tensor.empty() : tensor<9x14x12xf32>
        %290 = vector.multi_reduction <minsi>, %283, %283 [] : vector<12x3x3xi32> to vector<12x3x3xi32>
        %291 = arith.subi %extracted, %extracted : i1
        %292 = math.roundeven %2 : tensor<3xf16>
        %293 = memref.load %alloc_21[%c0] : memref<3xi64>
        %294 = arith.minsi %c1753030227_i64, %c1753030227_i64 : i64
        %295 = math.log10 %12 : tensor<3xf16>
        %296 = affine.load %alloc_22[%c2, %c0] : memref<3x12xi64>
        %297 = arith.remsi %296, %c1753030227_i64 : i64
        %298 = arith.remf %cst_2, %cst_7 : f16
        memref.store %extracted_26, %72[%c1, %c0] : memref<3x12xi32>
        %299 = math.log2 %87 : f32
        %300 = math.powf %2, %12 : tensor<3xf16>
        %301 = index.casts %c14 : index to i32
        %302 = vector.broadcast %145 : i64 to vector<i64>
        %303 = vector.transfer_write %302, %96[%279] : vector<i64>, tensor<3xi64>
      }
      %cast_54 = tensor.cast %expanded : tensor<36x3x1xi1> to tensor<?x?x?xi1>
      %264 = scf.execute_region -> i64 {
        %269 = arith.divui %145, %c1753030227_i64 : i64
        %270 = math.tan %12 : tensor<3xf16>
        %271 = math.tan %cst_5 : f32
        %272 = arith.addi %c30065_i16, %c30065_i16 : i16
        %273 = arith.addi %145, %c631077143_i64 : i64
        %274 = math.tan %7 : tensor<12x3x3xf16>
        %275 = math.ceil %56 : tensor<3x3xf16>
        %276 = math.tan %7 : tensor<12x3x3xf16>
        %277 = arith.xori %true, %true_1 : i1
        %278 = vector.multi_reduction <minui>, %151, %143 [] : vector<3xi64> to vector<3xi64>
        %279 = math.exp2 %56 : tensor<3x3xf16>
        %280 = vector.broadcast %259 : i16 to vector<3xi16>
        %alloc_55 = memref.alloc() : memref<9x14x12xi32>
        memref.copy %alloc_13, %alloc_55 : memref<9x14x12xi32> to memref<9x14x12xi32>
        %281 = arith.remsi %extracted_26, %extracted_26 : i32
        %282 = math.roundeven %52 : tensor<3x3xf16>
        %283 = arith.xori %171, %c30065_i16 : i16
        scf.yield %145 : i64
      }
      %265 = affine.load %114[%c13] : memref<3xi32>
      vector.print %71 : vector<1xi64>
      %266 = vector.bitcast %216 : vector<3xi1> to vector<3xi1>
      %267 = arith.cmpf olt, %cst_5, %cst_5 : f32
      %268 = bufferization.to_tensor %81 : memref<9x14x12xi64>
      scf.yield
    }
    case 3 {
      %collapsed_52 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<12x3x3xi16> into tensor<36x3xi16>
      %256 = math.absi %96 : tensor<3xi64>
      %rank_53 = tensor.rank %11 : tensor<12x3x3xi32>
      %257 = index.ceildivs %c7, %106
      %258 = math.tan %13 : tensor<3xf32>
      %259 = vector.broadcast %cst_5 : f32 to vector<3xf32>
      %260 = vector.fma %259, %259, %259 : vector<3xf32>
      %261 = vector.extract %216[2] : vector<3xi1>
      %262 = vector.create_mask %158, %47, %c0 : vector<12x3x3xi1>
      %263 = math.log1p %cst_5 : f32
      %264 = math.ceil %cst_2 : f16
      %265 = tensor.empty() : tensor<3xi32>
      %mapped_54 = linalg.map ins(%5, %5, %17 : tensor<3xi32>, tensor<3xi32>, tensor<3xi32>) outs(%265 : tensor<3xi32>)
        (%in: i32, %in_56: i32, %in_57: i32) {
          %269 = math.ctlz %in_57 : i32
          %270 = vector.broadcast %false : i1 to vector<12x12xi1>
          %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %202, %202, %270 : vector<1x12xi1>, vector<1x12xi1> into vector<12x12xi1>
          %272 = math.fma %cst, %cst_4, %cst_2 : f16
          %273 = index.mul %rank, %c8
          %cast_58 = tensor.cast %2 : tensor<3xf16> to tensor<?xf16>
          %274 = math.roundeven %52 : tensor<3x3xf16>
          %275 = arith.floordivsi %c870719789_i32, %in_56 : i32
          %276 = bufferization.clone %alloc_16 : memref<12x3x3xf16> to memref<12x3x3xf16>
          %277 = arith.floordivsi %true_6, %true : i1
          %278 = affine.min affine_map<(d0, d1, d2) -> (d0)>(%c15, %33, %223)
          %279 = arith.cmpi ule, %183, %c30065_i16 : i16
          %280 = arith.andi %true_3, %true_6 : i1
          %281 = arith.addi %true_6, %true_6 : i1
          %282 = arith.remf %cst_4, %cst_4 : f16
          %283 = vector.create_mask %182, %85, %223 : vector<12x3x3xi1>
          %284 = vector.load %72[%c1, %c6] : memref<3x12xi32>, vector<3xi32>
          %285 = math.cos %13 : tensor<3xf32>
          %286 = vector.broadcast %extracted_26 : i32 to vector<3x12xi32>
          %287 = vector.gather %1[%106, %278] [%286], %175, %175 : tensor<3x12xi1>, vector<3x12xi32>, vector<3x12xi1>, vector<3x12xi1> into vector<3x12xi1>
          %288 = arith.addi %171, %171 : i16
          %289 = arith.remui %extracted_26, %in_56 : i32
          %290 = vector.insertelement %c631077143_i64, %27[%rank_35 : index] : vector<1xi64>
          %291 = math.round %13 : tensor<3xf32>
          %292 = index.maxs %158, %161
          %293 = index.floordivs %292, %74
          %294 = index.ceildivu %89, %c3
          %295 = math.fma %cst_2, %cst_7, %cst_4 : f16
          %296 = arith.andi %in, %in_57 : i32
          %297 = math.fpowi %87, %c870719789_i32 : f32, i32
          %from_elements_59 = tensor.from_elements %87, %cst_5, %87, %cst_5, %87, %cst_0, %87, %87, %87, %87, %cst_5, %87, %87, %cst_5, %87, %cst_0, %cst_5, %87, %cst_5, %cst_0, %87, %cst_0, %87, %cst_5, %87, %87, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %87, %87, %cst_0, %87, %cst_5 : tensor<3x12xf32>
          %298 = arith.maxsi %extracted, %extracted : i1
          vector.print %75 : vector<1xi64>
          %299 = math.cttz %false : i1
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %266 = arith.floordivsi %145, %c1753030227_i64 : i64
      %267 = index.maxs %c12, %85
      memref.store %c1753030227_i64, %alloc_24[%c0] : memref<3xi64>
      %collapsed_55 = tensor.collapse_shape %56 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
      %268 = bufferization.to_tensor %alloc_20 : memref<9x14x12xf32>
      scf.yield
    }
    default {
      %256 = math.log1p %cst_2 : f16
      %257 = scf.if %true_3 -> (i16) {
        %272 = math.fma %18, %18, %18 : tensor<3x3xf16>
        %273 = math.tan %cst_0 : f32
        %274 = math.cos %reduced : tensor<3x3xf16>
        %275 = arith.maxsi %171, %183 : i16
        %276 = arith.shrui %c631077143_i64, %145 : i64
        %277 = math.absf %52 : tensor<3x3xf16>
        %278 = math.ctpop %11 : tensor<12x3x3xi32>
        %279 = math.ctlz %15 : tensor<3x12xi32>
        scf.yield %183 : i16
      } else {
        %272 = math.exp2 %52 : tensor<3x3xf16>
        %273 = vector.broadcast %cst_0 : f32 to vector<12x3x3xf32>
        %274 = vector.fma %273, %91, %90 : vector<12x3x3xf32>
        %275 = vector.shuffle %154, %19 [0, 4, 5] : vector<3xi64>, vector<3xi64>
        %276 = memref.load %72[%c0, %c0] : memref<3x12xi32>
        %277 = arith.floordivsi %true_1, %false : i1
        %278 = vector.flat_transpose %19 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %279 = arith.maxsi %true_3, %false : i1
        %280 = math.log1p %12 : tensor<3xf16>
        scf.yield %183 : i16
      }
      %from_elements_52 = tensor.from_elements %true_6, %true, %extracted, %false, %true_1, %false, %true, %false, %true_3, %true_6, %true_1, %false, %true_3, %true_3, %true_3, %true_3, %true_1, %true_6, %true_6, %extracted, %true, %true, %true_1, %true, %true_3, %true_3, %true_1, %true_3, %true_1, %true_6, %true_1, %true_1, %true, %true_3, %true_1, %true : tensor<3x12xi1>
      vector.print %58 : vector<3x12xf32>
      %258 = vector.insertelement %145, %101[%c3 : index] : vector<3xi64>
      %259 = math.round %cst_7 : f16
      %260 = index.maxs %33, %223
      %261 = arith.addi %c631077143_i64, %c631077143_i64 : i64
      %alloc_53 = memref.alloc() : memref<12x14xi16>
      %262 = tensor.empty() : tensor<3x14xi16>
      %263 = linalg.matmul ins(%4, %alloc_53 : tensor<3x12xi16>, memref<12x14xi16>) outs(%262 : tensor<3x14xi16>) -> tensor<3x14xi16>
      %264 = vector.create_mask %c2, %rank : vector<3x12xi1>
      %265 = arith.addi %extracted_26, %c870719789_i32 : i32
      %266 = tensor.empty() : tensor<3x3xf16>
      %267 = linalg.matmul ins(%63, %63 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%266 : tensor<3x3xf16>) -> tensor<3x3xf16>
      %268 = vector.broadcast %87 : f32 to vector<3x12xf32>
      %269 = vector.fma %268, %268, %268 : vector<3x12xf32>
      %270 = arith.andi %extracted_26, %c870719789_i32 : i32
      %271 = math.fma %13, %78, %13 : tensor<3xf32>
      vector.print %151 : vector<3xi64>
    }
    %collapsed_47 = tensor.collapse_shape %generated_41 [[0, 1], [2]] : tensor<?x14x12xi64> into tensor<?x12xi64>
    %230 = math.fpowi %87, %extracted_26 : f32, i32
    %generated_48 = tensor.generate %119 {
    ^bb0(%arg0: index):
      %256 = arith.minsi %171, %c30065_i16 : i16
      %257 = math.log10 %reduced : tensor<3x3xf16>
      %258 = vector.broadcast %171 : i16 to vector<i16>
      %259 = vector.transfer_write %258, %4[%c2, %c4] : vector<i16>, tensor<3x12xi16>
      %260 = math.log1p %2 : tensor<3xf16>
      tensor.yield %145 : i64
    } : tensor<?xi64>
    %231 = vector.broadcast %true_3 : i1 to vector<9x14x12xi1>
    %232 = vector.broadcast %extracted_26 : i32 to vector<9x14x12xi32>
    %233 = vector.gather %1[%68, %161] [%232], %231, %231 : tensor<3x12xi1>, vector<9x14x12xi32>, vector<9x14x12xi1>, vector<9x14x12xi1> into vector<9x14x12xi1>
    %234 = math.log10 %12 : tensor<3xf16>
    %235 = math.ipowi %171, %c30065_i16 : i16
    %236 = arith.shli %171, %183 : i16
    %237 = affine.if affine_set<(d0, d1, d2) : (3 >= 0, 2 >= 0, d2 ceildiv 128 >= 0, -4 >= 0)>(%c14, %c4, %c1) -> i1 {
      %256 = affine.for %arg0 = 0 to 55 iter_args(%arg1 = %179) -> (tensor<3x14xi32>) {
        affine.yield %179 : tensor<3x14xi32>
      }
      %257 = math.ceil %7 : tensor<12x3x3xf16>
      %258 = affine.for %arg0 = 0 to 110 iter_args(%arg1 = %34) -> (index) {
        affine.yield %c14 : index
      }
      %259 = math.atan %reduced : tensor<3x3xf16>
      %260 = vector.extract_strided_slice %198 {offsets = [2], sizes = [5], strides = [1]} : vector<9x14x12xf32> to vector<5x14x12xf32>
      %alloc_52 = memref.alloc() : memref<3x3xf16>
      memref.tensor_store %reduced, %alloc_52 : memref<3x3xf16>
      %261 = vector.extract_strided_slice %198 {offsets = [0], sizes = [1], strides = [1]} : vector<9x14x12xf32> to vector<1x14x12xf32>
      %262 = arith.remf %87, %cst_5 : f32
      affine.yield %true_6 : i1
    } else {
      %alloc_52 = memref.alloc() : memref<12x3xi1>
      %256 = tensor.empty() : tensor<3x3xi1>
      %257 = linalg.matmul ins(%1, %alloc_52 : tensor<3x12xi1>, memref<12x3xi1>) outs(%256 : tensor<3x3xi1>) -> tensor<3x3xi1>
      %258 = math.powf %7, %7 : tensor<12x3x3xf16>
      %259 = arith.minui %true_1, %true_6 : i1
      %260 = arith.minui %true_6, %true_1 : i1
      %261 = arith.andi %c870719789_i32, %c870719789_i32 : i32
      %262 = vector.broadcast %true_3 : i1 to vector<12x3xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %216, %54, %262 : vector<3xi1>, vector<12x3x3xi1> into vector<12x3xi1>
      %264 = arith.minui %c870719789_i32, %extracted_26 : i32
      %265 = vector.extract_strided_slice %54 {offsets = [4], sizes = [7], strides = [1]} : vector<12x3x3xi1> to vector<7x3x3xi1>
      affine.yield %false : i1
    }
    %238 = arith.remf %cst_4, %cst_4 : f16
    %239 = math.sqrt %cst_7 : f16
    %240 = arith.remsi %extracted_26, %c870719789_i32 : i32
    %241 = arith.xori %false, %true : i1
    %242 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %217, %217, %extracted_26 : vector<3xi32>, vector<3xi32> into i32
    %243 = index.sub %c5, %c0
    %244 = vector.multi_reduction <or>, %218, %c1753030227_i64 [0] : vector<3xi64> to i64
    %cast_49 = tensor.cast %20 : tensor<i64> to tensor<i64>
    %245 = arith.andi %c-6170_i16, %c30065_i16 : i16
    affine.store %c-6170_i16, %100[%c12, %c3] : memref<3x12xi16>
    %246 = arith.floordivsi %171, %171 : i16
    %rank_50 = tensor.rank %102 : tensor<3x3xi32>
    %247 = math.cttz %10 : tensor<12x3x3xi1>
    %248 = math.fpowi %18, %102 : tensor<3x3xf16>, tensor<3x3xi32>
    %249 = math.ctpop %1 : tensor<3x12xi1>
    %250 = tensor.empty() : tensor<12x3x3xi1>
    %251 = linalg.copy ins(%10 : tensor<12x3x3xi1>) outs(%250 : tensor<12x3x3xi1>) -> tensor<12x3x3xi1>
    %252 = tensor.empty() : tensor<3xi64>
    %transposed = linalg.transpose ins(%alloc_24 : memref<3xi64>) outs(%252 : tensor<3xi64>) permutation = [0] 
    %253 = tensor.empty() : tensor<12xi64>
    %reduced_51 = linalg.reduce ins(%alloc_22 : memref<3x12xi64>) outs(%253 : tensor<12xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %256 = arith.remf %cst, %cst_2 : f16
        %257 = math.log2 %2 : tensor<3xf16>
        %258 = arith.remf %cst_4, %cst_2 : f16
        %259 = math.cttz %1 : tensor<3x12xi1>
        %260 = vector.broadcast %cst_5 : f32 to vector<1xf32>
        %dest_52, %accumulated_value_53 = vector.scan <maxf>, %32, %260 {inclusive = false, reduction_dim = 1 : i64} : vector<1x12xf32>, vector<1xf32>
        %261 = arith.addi %in, %c1753030227_i64 : i64
        %262 = index.maxs %243, %158
        %263 = index.maxs %119, %c9
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %254 = scf.parallel (%arg0) = (%224) to (%224) step (%c3) init (%171) -> i16 {
      %expanded_52 = tensor.expand_shape %from_elements_34 [[0], [1, 2]] : tensor<3x12xi16> into tensor<3x12x1xi16>
      %256 = vector.splat %c7 : vector<9x14x12xindex>
      %257 = arith.divui %true_3, %true_6 : i1
      %258 = math.atan %cst_0 : f32
      %259 = math.ctpop %11 : tensor<12x3x3xi32>
      %260 = math.roundeven %87 : f32
      %261 = arith.remui %c1753030227_i64, %c1753030227_i64 : i64
      %262 = arith.shrsi %true, %true_6 : i1
      %263 = vector.broadcast %cst_5 : f32 to vector<9x12xf32>
      %dest_53, %accumulated_value_54 = vector.scan <maxf>, %133, %263 {inclusive = true, reduction_dim = 1 : i64} : vector<9x14x12xf32>, vector<9x12xf32>
      %264 = arith.remsi %244, %c1753030227_i64 : i64
      %265 = vector.shuffle %58, %32 [0, 1] : vector<3x12xf32>, vector<1x12xf32>
      %266 = vector.broadcast %cst : f16 to vector<9xf16>
      %267 = vector.broadcast %true_1 : i1 to vector<9xi1>
      %268 = vector.maskedload %alloc_18[%c3, %c4, %c2], %267, %266 : memref<9x14x12xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %269 = math.ceil %78 : tensor<3xf32>
      %270 = math.cttz %splat : tensor<12x3x3xi1>
      memref.store %cst, %alloc_16[%c8, %c1, %c2] : memref<12x3x3xf16>
      %271 = math.exp %cst_4 : f16
      %c1_i16 = arith.constant 1 : i16
      scf.reduce(%c1_i16)  : i16 {
      ^bb0(%arg1: i16, %arg2: i16):
        %272 = index.maxs %c0, %rank_44
        %273 = math.log %7 : tensor<12x3x3xf16>
        %274 = math.log2 %52 : tensor<3x3xf16>
        %275 = math.roundeven %reduced : tensor<3x3xf16>
        %276 = vector.flat_transpose %216 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %277 = math.round %13 : tensor<3xf32>
        %278 = arith.maxsi %arg1, %arg1 : i16
        %279 = arith.shrui %arg1, %arg1 : i16
        %c0_i16 = arith.constant 0 : i16
        scf.reduce.return %c0_i16 : i16
      }
      scf.yield
    }
    %255 = affine.vector_load %alloc_9[%113, %c2, %161] : memref<9x14x12xi1>, vector<14xi1>
    affine.vector_store %104, %alloc_24[%c6] : memref<3xi64>, vector<1xi64>
    vector.print %19 : vector<3xi64>
    vector.print %22 : vector<3x12xf32>
    vector.print %23 : vector<3x12xf32>
    vector.print %27 : vector<1xi64>
    vector.print %32 : vector<1x12xf32>
    vector.print %54 : vector<12x3x3xi1>
    vector.print %58 : vector<3x12xf32>
    vector.print %71 : vector<1xi64>
    vector.print %75 : vector<1xi64>
    vector.print %90 : vector<12x3x3xf32>
    vector.print %91 : vector<12x3x3xf32>
    vector.print %101 : vector<3xi64>
    vector.print %104 : vector<1xi64>
    vector.print %109 : vector<1xi64>
    vector.print %132 : vector<9x14x12xf32>
    vector.print %133 : vector<9x14x12xf32>
    vector.print %137 : vector<1xi64>
    vector.print %139 : vector<f16>
    vector.print %143 : vector<3xi64>
    vector.print %151 : vector<3xi64>
    vector.print %154 : vector<3xi64>
    vector.print %165 : vector<1xi64>
    vector.print %175 : vector<3x12xi1>
    vector.print %176 : vector<f16>
    vector.print %197 : vector<9x14x12xf32>
    vector.print %198 : vector<9x14x12xf32>
    vector.print %202 : vector<1x12xi1>
    vector.print %207 : vector<1xi64>
    vector.print %216 : vector<3xi1>
    vector.print %217 : vector<3xi32>
    vector.print %218 : vector<3xi64>
    vector.print %231 : vector<9x14x12xi1>
    vector.print %232 : vector<9x14x12xi32>
    vector.print %233 : vector<9x14x12xi1>
    vector.print %255 : vector<14xi1>
    vector.print %cst : f16
    vector.print %c1753030227_i64 : i64
    vector.print %c870719789_i32 : i32
    vector.print %c-6170_i16 : i16
    vector.print %c30065_i16 : i16
    vector.print %cst_0 : f32
    vector.print %true : i1
    vector.print %true_1 : i1
    vector.print %false : i1
    vector.print %cst_2 : f16
    vector.print %true_3 : i1
    vector.print %c631077143_i64 : i64
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %true_6 : i1
    vector.print %cst_7 : f16
    vector.print %extracted : i1
    vector.print %extracted_26 : i32
    vector.print %87 : f32
    vector.print %145 : i64
    vector.print %171 : i16
    vector.print %183 : i16
    vector.print %244 : i64
    return %67 : index
  }
}
