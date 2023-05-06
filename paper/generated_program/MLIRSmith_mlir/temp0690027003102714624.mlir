module {
  func.func @func1(%arg0: i64, %arg1: vector<5x3xi64>) -> vector<3x7xi1> {
    %cst = arith.constant 2.587200e+04 : f16
    %cst_0 = arith.constant 0x4DAFC963 : f32
    %cst_1 = arith.constant 0x4D4C457D : f32
    %c8444_i16 = arith.constant 8444 : i16
    %c1819932308_i64 = arith.constant 1819932308 : i64
    %c-32532_i16 = arith.constant -32532 : i16
    %c1322531054_i32 = arith.constant 1322531054 : i32
    %cst_2 = arith.constant 1.896970e+09 : f32
    %c-7432_i16 = arith.constant -7432 : i16
    %cst_3 = arith.constant 0x4E63B73C : f32
    %c1821487250_i32 = arith.constant 1821487250 : i32
    %false = arith.constant false
    %c-25136_i16 = arith.constant -25136 : i16
    %c87979853_i32 = arith.constant 87979853 : i32
    %c24758_i16 = arith.constant 24758 : i16
    %c-2387_i16 = arith.constant -2387 : i16
    %0 = tensor.empty() : tensor<10x10x7xi1>
    %1 = tensor.empty() : tensor<3x7xi1>
    %2 = tensor.empty() : tensor<3x7xi64>
    %3 = tensor.empty() : tensor<3x10xi32>
    %4 = tensor.empty() : tensor<3x10xi64>
    %5 = tensor.empty() : tensor<10x10x7xi32>
    %6 = tensor.empty() : tensor<5x3xi32>
    %7 = tensor.empty() : tensor<3x10xi64>
    %8 = tensor.empty() : tensor<10x10x7xi1>
    %9 = tensor.empty() : tensor<5x3xi64>
    %10 = tensor.empty() : tensor<3x7xf32>
    %11 = tensor.empty() : tensor<10x10x7xi16>
    %12 = tensor.empty() : tensor<10x10x7xi1>
    %13 = tensor.empty() : tensor<10x10x7xi64>
    %14 = tensor.empty() : tensor<5x3xf16>
    %15 = tensor.empty() : tensor<3x10xi32>
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
    %alloc = memref.alloc() : memref<3x10xf16>
    %alloc_4 = memref.alloc() : memref<3x7xf16>
    %alloc_5 = memref.alloc() : memref<5x3xi64>
    %alloc_6 = memref.alloc() : memref<5x3xi16>
    %alloc_7 = memref.alloc() : memref<3x7xi64>
    %alloc_8 = memref.alloc() : memref<10x10x7xi64>
    %alloc_9 = memref.alloc() : memref<10x10x7xi16>
    %alloc_10 = memref.alloc() : memref<3x7xf32>
    %alloc_11 = memref.alloc() : memref<3x10xi64>
    %alloc_12 = memref.alloc() : memref<3x10xi16>
    %alloc_13 = memref.alloc() : memref<10x10x7xi64>
    %alloc_14 = memref.alloc() : memref<3x10xi64>
    %alloc_15 = memref.alloc() : memref<5x3xi32>
    %alloc_16 = memref.alloc() : memref<3x7xi64>
    %alloc_17 = memref.alloc() : memref<3x10xi1>
    %alloc_18 = memref.alloc() : memref<3x10xf32>
    %16 = tensor.empty() : tensor<10x10x7xi64>
    %17 = linalg.copy ins(%13 : tensor<10x10x7xi64>) outs(%16 : tensor<10x10x7xi64>) -> tensor<10x10x7xi64>
    %18 = tensor.empty() : tensor<7x10x10xi64>
    %transposed = linalg.transpose ins(%13 : tensor<10x10x7xi64>) outs(%18 : tensor<7x10x10xi64>) permutation = [2, 0, 1] 
    %alloc_19 = memref.alloc() : memref<10xi64>
    linalg.reduce ins(%4 : tensor<3x10xi64>) outs(%alloc_19 : memref<10xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %248 = vector.broadcast %init : i64 to vector<3xi64>
        %249 = vector.reduction <minsi>, %248 : vector<3xi64> into i64
        %250 = affine.load %alloc_7[%c3, %c13] : memref<3x7xi64>
        %251 = arith.andi %c1322531054_i32, %c1821487250_i32 : i32
        %252 = memref.realloc %alloc_19 : memref<10xi64> to memref<5xi64>
        %253 = vector.broadcast %cst_0 : f32 to vector<3x7xf32>
        %254 = memref.atomic_rmw maxf %cst, %alloc[%c1, %c9] : (f16, memref<3x10xf16>) -> f16
        %255 = math.sqrt %cst : f16
        memref.alloca_scope  {
          %256 = arith.floordivsi %c-2387_i16, %c-7432_i16 : i16
          %257 = index.maxu %c14, %c14
          %258 = arith.subi %in, %init : i64
          %259 = math.sqrt %10 : tensor<3x7xf32>
          %260 = arith.shrsi %c1322531054_i32, %c87979853_i32 : i32
          %261 = math.floor %cst_2 : f32
          %262 = memref.load %alloc_9[%c8, %c1, %c5] : memref<10x10x7xi16>
          %263 = arith.shrui %c8444_i16, %c-25136_i16 : i16
          %264 = memref.realloc %alloc_19 : memref<10xi64> to memref<3xi64>
          %265 = math.tan %cst_1 : f32
          %266 = vector.broadcast %cst_3 : f32 to vector<5xf32>
          %267 = vector.broadcast %cst_2 : f32 to vector<5x5xf32>
          %268 = vector.outerproduct %266, %266, %267 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
          %269 = vector.broadcast %c87979853_i32 : i32 to vector<7xi32>
          %270 = vector.insertelement %c87979853_i32, %269[%c13 : index] : vector<7xi32>
          %271 = vector.broadcast %cst_1 : f32 to vector<3x7xf32>
          %272 = vector.fma %271, %253, %271 : vector<3x7xf32>
          %273 = arith.andi %c-32532_i16, %c24758_i16 : i16
          %274 = vector.flat_transpose %269 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
          %275 = math.roundeven %cst_0 : f32
          %276 = vector.broadcast %c13 : index to vector<10xindex>
          %277 = vector.broadcast %false : i1 to vector<10xi1>
          %278 = vector.broadcast %init : i64 to vector<10xi64>
          vector.scatter %alloc_8[%c7, %c9, %c0] [%276], %277, %278 : memref<10x10x7xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
          %279 = vector.create_mask %c11, %c6 : vector<3x10xi1>
          %280 = vector.broadcast %c5 : index to vector<7xindex>
          %281 = vector.broadcast %false : i1 to vector<7xi1>
          vector.scatter %alloc_15[%c4, %c1] [%280], %281, %274 : memref<5x3xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %282 = vector.flat_transpose %274 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
          %from_elements_38 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2 : tensor<3x7xf32>
          %283 = math.copysign %cst_0, %cst_3 : f32
          memref.assume_alignment %alloc_10, 4 : memref<3x7xf32>
          %284 = memref.realloc %alloc_19 : memref<10xi64> to memref<5xi64>
          %285 = arith.mulf %cst_3, %cst_1 : f32
          %286 = arith.mulf %cst_2, %cst_3 : f32
          memref.tensor_store %6, %alloc_15 : memref<5x3xi32>
          %from_elements_39 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<3x10xi1>
          %287 = vector.reduction <xor>, %274 : vector<7xi32> into i32
          %288 = bufferization.clone %alloc_18 : memref<3x10xf32> to memref<3x10xf32>
          %289 = arith.minf %cst_1, %cst_1 : f32
          %alloc_40 = memref.alloc() : memref<10x10x7xi1>
          memref.tensor_store %8, %alloc_40 : memref<10x10x7xi1>
        }
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %19 = scf.parallel (%arg2) = (%c6) to (%c4) step (%c13) init (%11) -> tensor<10x10x7xi16> {
      %248 = affine.max affine_map<(d0, d1) -> (d0 + 8, (-(d1 floordiv 16)) ceildiv 4)>(%c7, %c3)
      %249 = tensor.empty(%c9) : tensor<?x10xi32>
      %250 = math.log2 %14 : tensor<5x3xf16>
      %251 = vector.broadcast %cst : f16 to vector<5xf16>
      %252 = vector.broadcast %cst : f16 to vector<5x5xf16>
      %253 = vector.outerproduct %251, %251, %252 {kind = #vector.kind<mul>} : vector<5xf16>, vector<5xf16>
      bufferization.dealloc_tensor %0 : tensor<10x10x7xi1>
      %254 = vector.broadcast %c1322531054_i32 : i32 to vector<3x10xi32>
      vector.print %254 : vector<3x10xi32>
      %255 = bufferization.to_memref %transposed : memref<7x10x10xi64>
      %256 = vector.broadcast %c-2387_i16 : i16 to vector<10xi16>
      %257 = vector.reduction <minui>, %256 : vector<10xi16> into i16
      scf.execute_region {
        %264 = math.powf %cst_0, %cst_0 : f32
        %rank_42 = tensor.rank %13 : tensor<10x10x7xi64>
        %265 = vector.broadcast %cst : f16 to vector<10xf16>
        %266 = vector.matrix_multiply %265, %265 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %267 = math.exp2 %cst : f16
        %268 = index.castu %248 : index to i32
        %269 = bufferization.clone %alloc_5 : memref<5x3xi64> to memref<5x3xi64>
        %270 = tensor.empty() : tensor<7x7xi64>
        %271 = tensor.empty() : tensor<3x7xi64>
        %272 = linalg.matmul ins(%2, %270 : tensor<3x7xi64>, tensor<7x7xi64>) outs(%271 : tensor<3x7xi64>) -> tensor<3x7xi64>
        %273 = math.cos %14 : tensor<5x3xf16>
        %274 = math.absf %cst_3 : f32
        %275 = tensor.empty() : tensor<10x10x7xf32>
        %276 = vector.extract_strided_slice %265 {offsets = [1], sizes = [2], strides = [1]} : vector<10xf16> to vector<2xf16>
        %277 = bufferization.to_memref %5 : memref<10x10x7xi32>
        memref.store %c1322531054_i32, %277[%c5, %c1, %c5] : memref<10x10x7xi32>
        %278 = vector.flat_transpose %265 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %279 = vector.extract_strided_slice %265 {offsets = [2], sizes = [2], strides = [1]} : vector<10xf16> to vector<2xf16>
        %280 = arith.remf %cst, %cst : f16
        scf.yield
      }
      %258 = arith.cmpf oge, %cst_2, %cst_1 : f32
      %true_38 = index.bool.constant true
      %generated_39 = tensor.generate %c6, %c5 {
      ^bb0(%arg3: index, %arg4: index):
        %264 = tensor.empty() : tensor<3x10xf16>
        %265 = math.ceil %14 : tensor<5x3xf16>
        %266 = vector.bitcast %254 : vector<3x10xi32> to vector<3x10xi32>
        %267 = arith.muli %c-32532_i16, %c-32532_i16 : i16
        tensor.yield %c1819932308_i64 : i64
      } : tensor<?x?xi64>
      %259 = memref.atomic_rmw ori %c-7432_i16, %alloc_12[%c2, %c6] : (i16, memref<3x10xi16>) -> i16
      %260 = arith.ceildivsi %false, %false : i1
      %261 = math.sqrt %cst_1 : f32
      %262 = vector.broadcast %c1322531054_i32 : i32 to vector<3xi32>
      %dest_40, %accumulated_value_41 = vector.scan <mul>, %254, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xi32>, vector<3xi32>
      %263 = tensor.empty() : tensor<10x10x7xi16>
      scf.reduce(%263)  : tensor<10x10x7xi16> {
      ^bb0(%arg3: tensor<10x10x7xi16>, %arg4: tensor<10x10x7xi16>):
        %264 = affine.apply affine_map<(d0, d1) -> (d0)>(%c13, %c12)
        %265 = math.log1p %14 : tensor<5x3xf16>
        %266 = vector.extract_strided_slice %254 {offsets = [1], sizes = [2], strides = [1]} : vector<3x10xi32> to vector<2x10xi32>
        %267 = arith.minui %true_38, %true_38 : i1
        vector.print %254 : vector<3x10xi32>
        %268 = arith.minui %false, %true_38 : i1
        %269 = math.floor %14 : tensor<5x3xf16>
        %270 = math.log %cst_2 : f32
        %271 = tensor.empty() : tensor<10x10x7xi16>
        scf.reduce.return %271 : tensor<10x10x7xi16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc[%c13, %c1] : memref<3x10xf16>, vector<3xf16>
    affine.vector_store %20, %alloc_4[%c3, %c14] : memref<3x7xf16>, vector<3xf16>
    %21 = tensor.empty() : tensor<10xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%alloc_19, %21 : memref<10xi64>, tensor<10xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = arith.maxui %c-32532_i16, %c-32532_i16 : i16
    %25 = vector.broadcast %cst : f16 to vector<3x3xf16>
    %26 = vector.outerproduct %20, %20, %25 {kind = #vector.kind<maxf>} : vector<3xf16>, vector<3xf16>
    memref.assume_alignment %alloc_7, 2 : memref<3x7xi64>
    %27 = scf.while (%arg2 = %cst_2) : (f32) -> f32 {
      %248 = vector.multi_reduction <maxf>, %20, %cst [0] : vector<3xf16> to f16
      %249 = math.log %cst_0 : f32
      %250 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
      memref.store %cst, %alloc[%c2, %c2] : memref<3x10xf16>
      %251 = arith.muli %c1322531054_i32, %c1322531054_i32 : i32
      %252 = math.tan %arg2 : f32
      %cast_38 = tensor.cast %12 : tensor<10x10x7xi1> to tensor<?x?x?xi1>
      vector.print %250 : vector<3xf16>
      scf.condition(%false) %cst_1 : f32
    } do {
    ^bb0(%arg2: f32):
      %248 = math.cttz %c-7432_i16 : i16
      %249 = index.sub %c12, %c2
      %250 = scf.index_switch %c14 -> tensor<5x3xi64> 
      case 1 {
        %260 = arith.mulf %cst, %cst : f16
        %261 = math.expm1 %cst_2 : f32
        %262 = vector.bitcast %20 : vector<3xf16> to vector<3xf16>
        %263 = arith.divsi %c-32532_i16, %c-32532_i16 : i16
        %264 = math.copysign %arg2, %arg2 : f32
        %265 = vector.broadcast %c-7432_i16 : i16 to vector<i16>
        vector.transfer_write %265, %alloc_12[%249, %c12] : vector<i16>, memref<3x10xi16>
        %alloc_40 = memref.alloc() : memref<3x7xi32>
        %266 = bufferization.to_memref %9 : memref<5x3xi64>
        %267 = math.ipowi %5, %5 : tensor<10x10x7xi32>
        %splat_41 = tensor.splat %c1821487250_i32 : tensor<5x3xi32>
        %268 = vector.broadcast %c13 : index to vector<7xindex>
        %269 = vector.broadcast %false : i1 to vector<7xi1>
        vector.scatter %alloc_17[%c1, %c9] [%268], %269, %269 : memref<3x10xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %270 = arith.divui %c1819932308_i64, %c1819932308_i64 : i64
        %271 = arith.muli %c-2387_i16, %c-2387_i16 : i16
        %272 = arith.remui %c1819932308_i64, %c1819932308_i64 : i64
        %273 = math.tan %10 : tensor<3x7xf32>
        %274 = vector.multi_reduction <minf>, %262, %cst [0] : vector<3xf16> to f16
        scf.yield %9 : tensor<5x3xi64>
      }
      default {
        %260 = bufferization.to_memref %1 : memref<3x7xi1>
        %261 = vector.broadcast %c12 : index to vector<5xindex>
        %262 = vector.broadcast %false : i1 to vector<5xi1>
        %263 = vector.broadcast %c1322531054_i32 : i32 to vector<5xi32>
        vector.scatter %alloc_15[%c0, %c0] [%261], %262, %263 : memref<5x3xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %264 = math.powf %arg2, %cst_2 : f32
        %265 = math.cttz %3 : tensor<3x10xi32>
        %266 = math.roundeven %arg2 : f32
        memref.store %cst_0, %alloc_18[%c0, %c2] : memref<3x10xf32>
        %267 = bufferization.to_memref %4 : memref<3x10xi64>
        %268 = math.tan %cst_0 : f32
        %269 = arith.remf %cst, %cst : f16
        %270 = arith.remui %false, %false : i1
        %271 = math.cttz %11 : tensor<10x10x7xi16>
        %272 = vector.multi_reduction <mul>, %20, %cst [0] : vector<3xf16> to f16
        %273 = arith.divui %c8444_i16, %c24758_i16 : i16
        %274 = arith.subi %c-32532_i16, %c-7432_i16 : i16
        %275 = vector.extract %20[0] : vector<3xf16>
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst : vector<3xf16>, vector<3xf16> into f16
        scf.yield %9 : tensor<5x3xi64>
      }
      %inserted_38 = tensor.insert %c1819932308_i64 into %17[%c2, %c0, %c1] : tensor<10x10x7xi64>
      %251 = index.floordivs %c1, %c3
      %extracted_39 = tensor.extract %6[%c3, %c0] : tensor<5x3xi32>
      %252 = math.log %cst : f16
      %253 = arith.addf %cst_3, %arg2 : f32
      %254 = math.absf %cst : f16
      memref.store %c1819932308_i64, %alloc_13[%c6, %c6, %c5] : memref<10x10x7xi64>
      %255 = bufferization.to_memref %17 : memref<10x10x7xi64>
      vector.print %20 : vector<3xf16>
      %256 = math.log2 %arg2 : f32
      %257 = math.floor %14 : tensor<5x3xf16>
      %258 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
      %259 = arith.cmpf uno, %cst_0, %cst_1 : f32
      scf.yield %cst_0 : f32
    }
    %28 = math.log10 %14 : tensor<5x3xf16>
    %29 = vector.broadcast %cst_1 : f32 to vector<3x7xf32>
    %30 = arith.floordivsi %c8444_i16, %c24758_i16 : i16
    %31 = index.ceildivs %c10, %c0
    %32 = math.absf %cst_2 : f32
    %33 = memref.load %alloc_4[%c1, %c5] : memref<3x7xf16>
    %34 = arith.remf %cst_2, %cst_0 : f32
    %35 = math.copysign %cst_0, %cst_1 : f32
    %36 = arith.divui %c-32532_i16, %c-2387_i16 : i16
    %37 = math.log1p %14 : tensor<5x3xf16>
    %38 = tensor.empty() : tensor<5x10xi32>
    %39 = linalg.matmul ins(%6, %3 : tensor<5x3xi32>, tensor<3x10xi32>) outs(%38 : tensor<5x10xi32>) -> tensor<5x10xi32>
    %inserted = tensor.insert %c87979853_i32 into %6[%c1, %c1] : tensor<5x3xi32>
    %40 = arith.cmpf ugt, %cst_2, %cst_0 : f32
    %41 = math.log1p %cst_0 : f32
    memref.assume_alignment %alloc_8, 16 : memref<10x10x7xi64>
    %cast = tensor.cast %10 : tensor<3x7xf32> to tensor<?x?xf32>
    %42 = math.absf %cst_1 : f32
    %43 = arith.floordivsi %c-32532_i16, %c24758_i16 : i16
    %44 = math.tan %14 : tensor<5x3xf16>
    %45 = index.ceildivs %c6, %c15
    %46 = bufferization.to_memref %3 : memref<3x10xi32>
    %47 = arith.shrsi %c1819932308_i64, %c1819932308_i64 : i64
    %48 = arith.remui %c87979853_i32, %c87979853_i32 : i32
    %49 = math.cttz %c-2387_i16 : i16
    %50 = math.cttz %5 : tensor<10x10x7xi32>
    memref.tensor_store %4, %alloc_11 : memref<3x10xi64>
    %51 = vector.broadcast %cst_3 : f32 to vector<3x7xf32>
    %52 = vector.fma %51, %29, %51 : vector<3x7xf32>
    %53 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
    %54 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %29, %51, %53 : vector<3x7xf32>, vector<3x7xf32> into vector<7x7xf32>
    %55 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 32 - (d0 + d1))>(%c0, %c4, %c2)
    %56 = arith.shli %c-7432_i16, %c8444_i16 : i16
    %57 = math.ceil %cst_0 : f32
    %58 = index.divs %31, %c9
    affine.for %arg2 = 0 to 108 {
    }
    %59 = vector.broadcast %cst_3 : f32 to vector<7xf32>
    %dest, %accumulated_value = vector.scan <add>, %51, %59 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
    %60 = vector.extract %52[2] : vector<3x7xf32>
    %61 = math.absf %14 : tensor<5x3xf16>
    %alloc_20 = memref.alloc() : memref<10x10x7xf32>
    %62 = vector.broadcast %false : i1 to vector<3x7xi1>
    %63 = vector.broadcast %c1322531054_i32 : i32 to vector<3x7xi32>
    %64 = vector.gather %alloc_20[%c11, %c2, %c4] [%63], %62, %51 : memref<10x10x7xf32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf32> into vector<3x7xf32>
    %65 = arith.remsi %c-2387_i16, %c-7432_i16 : i16
    %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<3x10xi32> into tensor<3x10x1xi32>
    %66 = arith.cmpf oge, %cst_0, %cst_3 : f32
    %67 = index.floordivs %c14, %58
    %68 = memref.atomic_rmw addi %c1819932308_i64, %alloc_8[%c8, %c4, %c2] : (i64, memref<10x10x7xi64>) -> i64
    %alloc_21 = memref.alloc() : memref<5x3xi64>
    %from_elements = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<3x10xi1>
    %69 = index.ceildivu %c13, %c14
    %70 = arith.xori %c1821487250_i32, %c87979853_i32 : i32
    %71 = math.log1p %14 : tensor<5x3xf16>
    %72 = tensor.empty() : tensor<i64>
    %mapped = linalg.map ins(%22 : tensor<i64>) outs(%72 : tensor<i64>)
      (%in: i64) {
        %248 = index.ceildivu %c15, %45
        %249 = index.sizeof
        %250 = math.tan %cst_1 : f32
        %251 = math.expm1 %14 : tensor<5x3xf16>
        %252 = arith.subi %c87979853_i32, %c87979853_i32 : i32
        %alloc_38 = memref.alloc() : memref<10x3xi32>
        %253 = tensor.empty() : tensor<3x3xi32>
        %254 = linalg.matmul ins(%15, %alloc_38 : tensor<3x10xi32>, memref<10x3xi32>) outs(%253 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %255 = arith.remui %c8444_i16, %c-32532_i16 : i16
        %256 = math.powf %cst_0, %cst_1 : f32
        %257 = affine.if affine_set<(d0, d1) : ((d1 - d0) * 32 >= 0, (d1 mod 8) * 64 == 0)>(%c11, %c9) -> i1 {
          %285 = arith.ceildivsi %c24758_i16, %c-32532_i16 : i16
          %286 = memref.atomic_rmw assign %c1819932308_i64, %alloc_5[%c4, %c2] : (i64, memref<5x3xi64>) -> i64
          %287 = math.log2 %cst : f16
          %alloca = memref.alloca() : memref<3x10xf32>
          %288 = arith.remf %cst, %cst : f16
          %289 = index.maxu %c3, %c14
          %290 = arith.muli %c-7432_i16, %c-7432_i16 : i16
          %291 = math.tan %cst : f16
          affine.yield %false : i1
        } else {
          %285 = arith.divsi %c8444_i16, %c-7432_i16 : i16
          %286 = vector.broadcast %c-25136_i16 : i16 to vector<3x7xi16>
          %287 = affine.load %alloc_18[%c14, %c10] : memref<3x10xf32>
          %288 = memref.atomic_rmw ori %in, %alloc_14[%c1, %c0] : (i64, memref<3x10xi64>) -> i64
          %289 = arith.ceildivsi %c-25136_i16, %c-32532_i16 : i16
          %from_elements_40 = tensor.from_elements %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32 : tensor<10x10x7xi32>
          %290 = math.log10 %cst_2 : f32
          %291 = bufferization.to_memref %18 : memref<7x10x10xi64>
          affine.yield %false : i1
        }
        %258 = math.log %cst_1 : f32
        %259 = vector.extract %64[2] : vector<3x7xf32>
        %260 = memref.realloc %alloc_19 : memref<10xi64> to memref<7xi64>
        %261 = math.log1p %10 : tensor<3x7xf32>
        %262 = arith.shrui %c-7432_i16, %c-25136_i16 : i16
        %alloc_39 = memref.alloc() : memref<10x10x7xf32>
        memref.copy %alloc_20, %alloc_39 : memref<10x10x7xf32> to memref<10x10x7xf32>
        %263 = arith.mulf %cst_2, %cst_0 : f32
        %264 = vector.extract_strided_slice %60 {offsets = [5], sizes = [2], strides = [1]} : vector<7xf32> to vector<2xf32>
        %265 = vector.create_mask %45, %55 : vector<5x3xi1>
        affine.store %cst_2, %alloc_10[%c13, %c6] : memref<3x7xf32>
        %266 = arith.subi %c-7432_i16, %c8444_i16 : i16
        %267 = math.sqrt %cst_0 : f32
        %268 = vector.broadcast %c11 : index to vector<5xindex>
        %269 = vector.broadcast %false : i1 to vector<5xi1>
        %270 = vector.broadcast %c24758_i16 : i16 to vector<5xi16>
        vector.scatter %alloc_9[%c2, %c7, %c4] [%268], %269, %270 : memref<10x10x7xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %271 = math.log2 %cst_2 : f32
        %272 = arith.remui %c24758_i16, %c8444_i16 : i16
        %273 = tensor.empty() : tensor<10x3xi64>
        %274 = tensor.empty() : tensor<3x3xi64>
        %275 = linalg.matmul ins(%7, %273 : tensor<3x10xi64>, tensor<10x3xi64>) outs(%274 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %276 = vector.broadcast %cst_1 : f32 to vector<10x10x7xf32>
        %277 = vector.fma %276, %276, %276 : vector<10x10x7xf32>
        %278 = arith.divui %c24758_i16, %c-25136_i16 : i16
        %279 = arith.maxui %c87979853_i32, %c1821487250_i32 : i32
        %280 = math.absf %14 : tensor<5x3xf16>
        %281 = memref.atomic_rmw minf %cst, %alloc[%c0, %c0] : (f16, memref<3x10xf16>) -> f16
        %282 = vector.insertelement %cst_0, %264[%c6 : index] : vector<2xf32>
        %283 = vector.broadcast %c87979853_i32 : i32 to vector<3xi32>
        %284 = vector.multi_reduction <mul>, %63, %283 [1] : vector<3x7xi32> to vector<3xi32>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %73 = vector.broadcast %cst_0 : f32 to vector<3xf32>
    %74 = vector.multi_reduction <mul>, %29, %73 [1] : vector<3x7xf32> to vector<3xf32>
    %75 = arith.remf %cst_0, %cst_1 : f32
    %76 = bufferization.to_memref %0 : memref<10x10x7xi1>
    %alloc_22 = memref.alloc() : memref<3x7xf16>
    %c228166804_i32 = arith.constant 228166804 : i32
    %77 = arith.addf %cst_0, %cst_3 : f32
    %78 = arith.divsi %c-32532_i16, %c-32532_i16 : i16
    %79 = math.ctlz %c-7432_i16 : i16
    %generated = tensor.generate %c12, %c11 {
    ^bb0(%arg2: index, %arg3: index):
      %248 = arith.muli %c-25136_i16, %c-32532_i16 : i16
      %249 = math.log1p %cst_0 : f32
      affine.for %arg4 = 0 to 3 {
      }
      %alloc_38 = memref.alloc() : memref<5x3xi16>
      memref.copy %alloc_6, %alloc_38 : memref<5x3xi16> to memref<5x3xi16>
      tensor.yield %cst_2 : f32
    } : tensor<?x?xf32>
    %rank = tensor.rank %14 : tensor<5x3xf16>
    %80 = vector.extract_strided_slice %51 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xf32> to vector<3x7xf32>
    %81 = tensor.empty() : tensor<3x10xi32>
    %mapped_23 = linalg.map ins(%15 : tensor<3x10xi32>) outs(%81 : tensor<3x10xi32>)
      (%in: i32) {
        %248 = arith.mulf %cst, %cst : f16
        %249 = arith.maxui %c1819932308_i64, %c1819932308_i64 : i64
        memref.assume_alignment %46, 16 : memref<3x10xi32>
        %250 = vector.reduction <mul>, %60 : vector<7xf32> into f32
        %251 = math.cttz %c-7432_i16 : i16
        %252 = vector.splat %rank : vector<3x10xindex>
        %253 = arith.maxui %c24758_i16, %c-2387_i16 : i16
        %254 = arith.muli %c24758_i16, %c-32532_i16 : i16
        %255 = arith.minf %cst_2, %cst_0 : f32
        %256 = index.ceildivu %c4, %c10
        %257 = math.cttz %c8444_i16 : i16
        %258 = arith.muli %false, %false : i1
        %259 = arith.shli %c24758_i16, %c24758_i16 : i16
        %260 = index.mul %55, %c2
        bufferization.dealloc_tensor %14 : tensor<5x3xf16>
        %261 = vector.transpose %20, [0] : vector<3xf16> to vector<3xf16>
        %262 = math.fma %cst_2, %cst_1, %cst_3 : f32
        %263 = tensor.empty() : tensor<3x7xi16>
        %264 = arith.shrui %c-7432_i16, %c-25136_i16 : i16
        vector.print %63 : vector<3x7xi32>
        %265 = math.absf %cst_3 : f32
        vector.print %60 : vector<7xf32>
        %266 = arith.floordivsi %c1819932308_i64, %c1819932308_i64 : i64
        %267 = math.rsqrt %cst_3 : f32
        %268 = vector.broadcast %cst : f16 to vector<3x3xf16>
        %269 = vector.outerproduct %20, %20, %268 {kind = #vector.kind<minf>} : vector<3xf16>, vector<3xf16>
        %270 = math.log1p %cst_1 : f32
        %271 = vector.broadcast %c1819932308_i64 : i64 to vector<i64>
        vector.transfer_write %271, %alloc_19[%c10] : vector<i64>, memref<10xi64>
        %272 = vector.bitcast %62 : vector<3x7xi1> to vector<3x7xi1>
        %273 = vector.broadcast %c-25136_i16 : i16 to vector<3xi16>
        %274 = vector.broadcast %false : i1 to vector<3xi1>
        %275 = vector.maskedload %alloc_9[%c7, %c6, %c4], %274, %273 : memref<10x10x7xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %276 = index.mul %256, %c5
        %277 = math.log %cst_1 : f32
        affine.store %false, %alloc_17[%c3, %c15] : memref<3x10xi1>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %82 = memref.realloc %alloc_19 : memref<10xi64> to memref<7xi64>
    %83 = vector.broadcast %cst_3 : f32 to vector<3x3xf32>
    %84 = vector.outerproduct %73, %73, %83 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
    %85 = arith.minsi %false, %false : i1
    %86 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 64, d0)>(%55, %31, %c0, %c2)
    %87 = vector.matrix_multiply %60, %60 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    %88 = math.log1p %10 : tensor<3x7xf32>
    %89 = math.log10 %cst_0 : f32
    %90 = index.sizeof
    %91 = vector.transpose %51, [0, 1] : vector<3x7xf32> to vector<3x7xf32>
    %92 = vector.transpose %62, [1, 0] : vector<3x7xi1> to vector<7x3xi1>
    %93 = vector.broadcast %cst_3 : f32 to vector<3x7xf32>
    %94 = vector.fma %93, %64, %52 : vector<3x7xf32>
    %95 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 32 - (d0 + d1))>(%55, %c11, %c14)
    affine.for %arg2 = 0 to 52 {
    }
    %96 = memref.atomic_rmw maxu %c87979853_i32, %alloc_15[%c1, %c0] : (i32, memref<5x3xi32>) -> i32
    %97 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %29, %60, %73 : vector<3x7xf32>, vector<7xf32> into vector<3xf32>
    %98 = arith.remui %c-25136_i16, %c-25136_i16 : i16
    %99 = vector.splat %55 : vector<3x10xindex>
    %alloc_24 = memref.alloc() : memref<3x10xi1>
    memref.copy %alloc_17, %alloc_24 : memref<3x10xi1> to memref<3x10xi1>
    %100 = vector.extract_strided_slice %29 {offsets = [1], sizes = [1], strides = [1]} : vector<3x7xf32> to vector<1x7xf32>
    %101 = math.round %10 : tensor<3x7xf32>
    %102 = math.log1p %14 : tensor<5x3xf16>
    %103 = math.ctlz %18 : tensor<7x10x10xi64>
    %104 = math.tan %10 : tensor<3x7xf32>
    %105 = vector.extract %93[2] : vector<3x7xf32>
    %106 = arith.divsi %c24758_i16, %c-32532_i16 : i16
    %cst_25 = arith.constant 1.52068339E+9 : f32
    %107 = arith.mulf %cst_2, %cst_2 : f32
    %108 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 64 - d2 + 2, (d1 + 128) ceildiv 32)>(%90, %c7, %90, %c11)
    %109 = math.sqrt %cst_0 : f32
    %110 = vector.broadcast %false : i1 to vector<5xi1>
    %111 = vector.maskedload %76[%c1, %c8, %c4], %110, %110 : memref<10x10x7xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
    memref.assume_alignment %alloc, 4 : memref<3x10xf16>
    %112 = arith.remf %cst_2, %cst_0 : f32
    scf.index_switch %c4 
    case 1 {
      affine.store %c1819932308_i64, %alloc_8[%c5, %c3, %c4] : memref<10x10x7xi64>
      %248 = arith.divsi %c-7432_i16, %c-32532_i16 : i16
      bufferization.dealloc_tensor %0 : tensor<10x10x7xi1>
      %inserted_38 = tensor.insert %c1819932308_i64 into %2[%c2, %c6] : tensor<3x7xi64>
      %249 = vector.insert %false, %111 [2] : i1 into vector<5xi1>
      affine.store %c1819932308_i64, %alloc_8[%c7, %c2, %c3] : memref<10x10x7xi64>
      %250 = arith.subi %c1819932308_i64, %c1819932308_i64 : i64
      %251 = vector.broadcast %cst_3 : f32 to vector<3x7xf32>
      %252 = vector.fma %251, %29, %93 : vector<3x7xf32>
      %253 = vector.reduction <add>, %87 : vector<1xf32> into f32
      bufferization.dealloc_tensor %16 : tensor<10x10x7xi64>
      %254 = memref.load %alloc_10[%c2, %c5] : memref<3x7xf32>
      %255 = index.floordivs %c0, %31
      %inserted_39 = tensor.insert %c1819932308_i64 into %13[%c5, %c2, %c6] : tensor<10x10x7xi64>
      %256 = index.sizeof
      %257 = arith.ceildivsi %c1322531054_i32, %c87979853_i32 : i32
      memref.store %cst, %alloc[%c1, %c5] : memref<3x10xf16>
      scf.yield
    }
    case 2 {
      %248 = index.add %c12, %c13
      %249 = memref.realloc %alloc_19 : memref<10xi64> to memref<7xi64>
      %250 = arith.muli %c87979853_i32, %c87979853_i32 : i32
      %251 = index.maxu %90, %c8
      %252 = index.sub %248, %248
      %cst_38 = arith.constant 3.449760e+08 : f32
      %253 = arith.muli %c1819932308_i64, %c1819932308_i64 : i64
      %254 = math.log %cst_3 : f32
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst : vector<3xf16>, vector<3xf16> into f16
      %256 = vector.insertelement %cst_1, %60[%45 : index] : vector<7xf32>
      %257 = arith.minf %cst_3, %cst_3 : f32
      %258 = vector.broadcast %c1821487250_i32 : i32 to vector<3x10xi32>
      %cst_39 = arith.constant 4.070400e+04 : f16
      %259 = arith.shrsi %c1819932308_i64, %c1819932308_i64 : i64
      %260 = arith.floordivsi %c1322531054_i32, %c87979853_i32 : i32
      %261 = vector.bitcast %110 : vector<5xi1> to vector<5xi1>
      scf.yield
    }
    case 3 {
      %248 = math.tan %cst : f16
      scf.index_switch %c7 
      case 1 {
        %260 = math.cos %cst : f16
        %261 = index.sub %c2, %c12
        %262 = bufferization.clone %alloc_18 : memref<3x10xf32> to memref<3x10xf32>
        %263 = index.sizeof
        %264 = arith.ceildivsi %c24758_i16, %c8444_i16 : i16
        %265 = vector.insert %false, %110 [3] : i1 into vector<5xi1>
        %266 = arith.addf %cst_0, %cst_2 : f32
        %267 = math.absf %10 : tensor<3x7xf32>
        affine.store %c1819932308_i64, %alloc_8[%c1, %c6, %c13] : memref<10x10x7xi64>
        memref.assume_alignment %alloc_20, 1 : memref<10x10x7xf32>
        %268 = arith.minsi %c-7432_i16, %c-32532_i16 : i16
        %269 = math.tan %cst : f16
        vector.print %110 : vector<5xi1>
        %270 = math.floor %10 : tensor<3x7xf32>
        %cast_41 = tensor.cast %2 : tensor<3x7xi64> to tensor<?x?xi64>
        %271 = index.divs %c8, %95
        scf.yield
      }
      case 2 {
        memref.store %cst_0, %alloc_18[%c2, %c0] : memref<3x10xf32>
        %260 = vector.matrix_multiply %60, %73 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<7xf32>, vector<3xf32>) -> vector<21xf32>
        %261 = arith.muli %c-25136_i16, %c-2387_i16 : i16
        %262 = math.ctlz %false : i1
        %263 = arith.shrui %c8444_i16, %c24758_i16 : i16
        %264 = vector.bitcast %63 : vector<3x7xi32> to vector<3x7xi32>
        %cast_41 = tensor.cast %4 : tensor<3x10xi64> to tensor<?x?xi64>
        %265 = math.floor %cst_2 : f32
        %266 = memref.atomic_rmw addi %c1819932308_i64, %alloc_16[%c2, %c0] : (i64, memref<3x7xi64>) -> i64
        %267 = index.floordivs %c10, %c12
        %alloc_42 = memref.alloc() : memref<3x7xf32>
        %268 = arith.subi %c8444_i16, %c24758_i16 : i16
        %269 = arith.minsi %c24758_i16, %c-7432_i16 : i16
        %270 = math.tan %cst_0 : f32
        %from_elements_43 = tensor.from_elements %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32 : tensor<3x10xi32>
        %271 = index.maxs %c3, %c15
        scf.yield
      }
      case 3 {
        %260 = arith.cmpf ogt, %cst_2, %cst_3 : f32
        %261 = vector.broadcast %c13 : index to vector<7xindex>
        %262 = vector.broadcast %false : i1 to vector<7xi1>
        %263 = vector.broadcast %c1819932308_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_11[%c0, %c6] [%261], %262, %263 : memref<3x10xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %264 = vector.broadcast %cst_3 : f32 to vector<3x10xf32>
        %265 = vector.fma %264, %264, %264 : vector<3x10xf32>
        %266 = arith.xori %c1819932308_i64, %c1819932308_i64 : i64
        %267 = arith.remui %c1819932308_i64, %c1819932308_i64 : i64
        %268 = bufferization.clone %alloc_5 : memref<5x3xi64> to memref<5x3xi64>
        %269 = vector.broadcast %false : i1 to vector<3x10xi1>
        %270 = memref.atomic_rmw addf %cst, %alloc[%c0, %c1] : (f16, memref<3x10xf16>) -> f16
        %271 = math.tanh %10 : tensor<3x7xf32>
        %dest_41, %accumulated_value_42 = vector.scan <maxf>, %80, %73 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
        %272 = math.copysign %14, %14 : tensor<5x3xf16>
        %273 = vector.extract %111[2] : vector<5xi1>
        %cast_43 = tensor.cast %81 : tensor<3x10xi32> to tensor<?x?xi32>
        %274 = arith.subi %false, %false : i1
        %275 = math.fma %cst_2, %cst_1, %cst_1 : f32
        %276 = vector.multi_reduction <add>, %105, %105 [] : vector<7xf32> to vector<7xf32>
        scf.yield
      }
      case 4 {
        %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - (d2 + 32), d2 - (d2 + 32), (d2 mod 16) * 32, d2 mod 16)>(%c14, %69, %67, %c7)
        %261 = math.powf %10, %10 : tensor<3x7xf32>
        %262 = arith.maxui %c-7432_i16, %c24758_i16 : i16
        %263 = math.log2 %cst_0 : f32
        %264 = vector.broadcast %c-2387_i16 : i16 to vector<5x3xi16>
        %265 = index.ceildivs %c15, %31
        %266 = arith.minsi %c1821487250_i32, %c1821487250_i32 : i32
        %267 = vector.splat %c3 : vector<3x7xindex>
        %268 = index.ceildivu %c2, %c9
        %269 = arith.remf %cst, %cst : f16
        memref.store %c1821487250_i32, %alloc_15[%c4, %c1] : memref<5x3xi32>
        %270 = arith.muli %c24758_i16, %c24758_i16 : i16
        %271 = arith.floordivsi %c87979853_i32, %c1821487250_i32 : i32
        %272 = math.atan2 %cst_0, %cst_1 : f32
        %inserted_41 = tensor.insert %c1819932308_i64 into %7[%c2, %c1] : tensor<3x10xi64>
        memref.assume_alignment %alloc_20, 4 : memref<10x10x7xf32>
        scf.yield
      }
      default {
        %260 = math.absf %cst_3 : f32
        %261 = vector.matrix_multiply %105, %105 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %262 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
        %263 = vector.outerproduct %87, %261, %262 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %264 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
        %265 = vector.outerproduct %105, %60, %264 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
        %266 = affine.load %alloc_17[%c5, %c11] : memref<3x10xi1>
        %alloc_41 = memref.alloc() : memref<5x3xf32>
        %267 = arith.floordivsi %c87979853_i32, %c1322531054_i32 : i32
        %268 = vector.broadcast %c1819932308_i64 : i64 to vector<10x10x7xi64>
        %269 = vector.matrix_multiply %110, %110 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %270 = arith.remui %c-25136_i16, %c-2387_i16 : i16
        %271 = vector.matrix_multiply %269, %110 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi1>, vector<5xi1>) -> vector<5xi1>
        %272 = index.ceildivs %108, %c3
        %273 = arith.xori %c24758_i16, %c-32532_i16 : i16
        %274 = math.powf %10, %10 : tensor<3x7xf32>
        %275 = arith.minsi %c87979853_i32, %c1821487250_i32 : i32
        %276 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 + d2, d2 mod 8, (d1 + d2) * 32 - 1)>(%55, %c15, %c14)
      }
      %rank_38 = tensor.rank %7 : tensor<3x10xi64>
      %249 = math.log1p %cst_2 : f32
      %250 = arith.andi %c8444_i16, %c-2387_i16 : i16
      %251 = math.exp2 %14 : tensor<5x3xf16>
      %252 = arith.divsi %c-7432_i16, %c-25136_i16 : i16
      %from_elements_39 = tensor.from_elements %cst_1, %cst_0, %cst_3, %cst_2, %cst_1, %cst_0, %cst_3, %cst_1, %cst_2, %cst_3, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_0, %cst_3, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst_3, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_3, %cst_3, %cst_2, %cst_2, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_0, %cst_3, %cst_1, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_3, %cst_2, %cst_3, %cst_1, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_3, %cst_3, %cst_1, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_0, %cst_3, %cst_0, %cst_3, %cst_3, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_3, %cst_0, %cst_0, %cst_1, %cst_3, %cst_3, %cst_2, %cst_0, %cst_3, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst_3, %cst_3, %cst_3, %cst_0, %cst_2, %cst_2, %cst_0, %cst_3, %cst_0, %cst_3, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_1, %cst_3, %cst_2, %cst_2, %cst_1, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_1, %cst_2, %cst_3, %cst_2, %cst_1, %cst_0, %cst_1, %cst_3, %cst_0, %cst_1, %cst_1, %cst_2, %cst_2, %cst_3, %cst_3, %cst_0, %cst_1, %cst_0, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_1, %cst_2, %cst_0, %cst_0, %cst_3, %cst_1, %cst_1, %cst_0, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_2, %cst_1, %cst_0, %cst_2, %cst_1, %cst_1, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_3, %cst_1, %cst_2, %cst_1, %cst_0, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_1, %cst_2, %cst_3, %cst_0, %cst_0, %cst_3, %cst_2, %cst_3, %cst_2, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_3, %cst_0, %cst_3, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst_3, %cst_0, %cst_3, %cst_0, %cst_3, %cst_2, %cst_3, %cst_0, %cst_2, %cst_3, %cst_3, %cst_2, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_3, %cst_1, %cst_0, %cst_1, %cst_2, %cst_3, %cst_0, %cst_0, %cst_3, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_3, %cst_1, %cst_2, %cst_3, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_3, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_3, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_3, %cst_3, %cst_0, %cst_3, %cst_1, %cst_1, %cst_3, %cst_0, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_3, %cst_0, %cst_3, %cst_2, %cst_2, %cst_0, %cst_3, %cst_3, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_1, %cst_3, %cst_1, %cst_2, %cst_1, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_0, %cst_2, %cst_3, %cst_0, %cst_2, %cst_0, %cst_3, %cst_1, %cst_3, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_3, %cst_0, %cst_2, %cst_0, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_2, %cst_1, %cst_3, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_3, %cst_3, %cst_1, %cst_2, %cst_0, %cst_3, %cst_1, %cst_0, %cst_3, %cst_2, %cst_2, %cst_0, %cst_3, %cst_2, %cst_3, %cst_1, %cst_0, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_0, %cst_3, %cst_0, %cst_1, %cst_2, %cst_2, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_1, %cst_1, %cst_0, %cst_3, %cst_1, %cst_3, %cst_0, %cst_2, %cst_3, %cst_2, %cst_0, %cst_1, %cst_3, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_3, %cst_0, %cst_2, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_0, %cst_2, %cst_3, %cst_2, %cst_1, %cst_3, %cst_2, %cst_0, %cst_2, %cst_0, %cst_3, %cst_1, %cst_3, %cst_1, %cst_0, %cst_1, %cst_2, %cst_3, %cst_1, %cst_3, %cst_3, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_3, %cst_0, %cst_3, %cst_0, %cst_1, %cst_3, %cst_0, %cst_3, %cst_3, %cst_1, %cst_0, %cst_0, %cst_0, %cst_3, %cst_0, %cst_2, %cst_0, %cst_1, %cst_0, %cst_3, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst_3, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_0, %cst_2, %cst_1, %cst_0, %cst_2, %cst_3, %cst_3, %cst_2, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_2, %cst_3, %cst_0, %cst_3, %cst_3, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst_3, %cst_0, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_3, %cst_0, %cst_0, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_1, %cst_0, %cst_3, %cst_1, %cst_2 : tensor<10x10x7xf32>
      %253 = vector.insertelement %cst_0, %105[%c2 : index] : vector<7xf32>
      %254 = math.ceil %cst_0 : f32
      %255 = math.powf %cst_2, %cst_2 : f32
      %256 = math.log1p %cst_0 : f32
      %257 = math.absf %14 : tensor<5x3xf16>
      %258 = arith.addf %cst_1, %cst_2 : f32
      %inserted_40 = tensor.insert %c87979853_i32 into %3[%c0, %c9] : tensor<3x10xi32>
      %259 = arith.floordivsi %false, %false : i1
      scf.yield
    }
    case 4 {
      %248 = vector.broadcast %false : i1 to vector<3xi1>
      %dest_38, %accumulated_value_39 = vector.scan <maxui>, %62, %248 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
      %249 = arith.ceildivsi %c24758_i16, %c-25136_i16 : i16
      %250 = vector.broadcast %cst_3 : f32 to vector<3x3xf32>
      %251 = vector.outerproduct %73, %73, %250 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
      %252 = vector.broadcast %cst_0 : f32 to vector<3x7xf32>
      %253 = vector.transpose %52, [1, 0] : vector<3x7xf32> to vector<7x3xf32>
      scf.if %false {
        %263 = affine.apply affine_map<(d0) -> ((d0 + 2) mod 4)>(%c5)
        %264 = arith.addf %cst, %cst : f16
        %265 = vector.create_mask %31, %c8, %c3 : vector<10x10x7xi1>
        %266 = index.divs %95, %c8
        vector.print %20 : vector<3xf16>
        %267 = vector.broadcast %c1819932308_i64 : i64 to vector<10x10x7xi64>
        %268 = arith.floordivsi %c-2387_i16, %c-25136_i16 : i16
        %269 = affine.load %alloc_16[%c15, %c4] : memref<3x7xi64>
      }
      %dest_40, %accumulated_value_41 = vector.scan <mul>, %252, %105 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
      %254 = vector.splat %c-2387_i16 : vector<3x7xi16>
      %255 = vector.multi_reduction <mul>, %20, %20 [] : vector<3xf16> to vector<3xf16>
      %256 = arith.muli %c-2387_i16, %c8444_i16 : i16
      %257 = math.log10 %14 : tensor<5x3xf16>
      %258 = arith.remf %cst_2, %cst_2 : f32
      %259 = math.ipowi %9, %9 : tensor<5x3xi64>
      %260 = index.divs %c7, %69
      %261 = math.log10 %cst_3 : f32
      %262 = math.log1p %10 : tensor<3x7xf32>
      scf.yield
    }
    default {
      %248 = math.powf %10, %10 : tensor<3x7xf32>
      %249 = vector.reduction <mul>, %111 : vector<5xi1> into i1
      %inserted_38 = tensor.insert %c1819932308_i64 into %72[] : tensor<i64>
      %250 = arith.cmpf oeq, %cst, %cst : f16
      %251 = math.absf %cst_1 : f32
      %252 = vector.extract %52[1] : vector<3x7xf32>
      %253 = scf.if %false -> (f16) {
        %260 = index.divu %c13, %c11
        %261 = math.ipowi %2, %2 : tensor<3x7xi64>
        %262 = math.log2 %cst_0 : f32
        bufferization.dealloc_tensor %16 : tensor<10x10x7xi64>
        %263 = math.exp %cst_2 : f32
        %264 = arith.remf %cst_3, %cst_1 : f32
        %265 = math.log2 %14 : tensor<5x3xf16>
        %266 = math.roundeven %cst_1 : f32
        scf.yield %cst : f16
      } else {
        %260 = vector.broadcast %false : i1 to vector<10x10x7xi1>
        %261 = vector.broadcast %c1322531054_i32 : i32 to vector<10x10x7xi32>
        %262 = vector.gather %alloc_17[%90, %c9] [%261], %260, %260 : memref<3x10xi1>, vector<10x10x7xi32>, vector<10x10x7xi1>, vector<10x10x7xi1> into vector<10x10x7xi1>
        %263 = vector.reduction <and>, %110 : vector<5xi1> into i1
        %264 = math.atan2 %cst_3, %cst_0 : f32
        %265 = tensor.empty() : tensor<5x3xf32>
        %266 = math.log %cst_2 : f32
        %267 = vector.extract_strided_slice %60 {offsets = [5], sizes = [1], strides = [1]} : vector<7xf32> to vector<1xf32>
        %268 = bufferization.to_memref %14 : memref<5x3xf16>
        %rank_42 = tensor.rank %8 : tensor<10x10x7xi1>
        scf.yield %cst : f16
      }
      %254 = math.exp2 %253 : f16
      %false_39 = index.bool.constant false
      %255 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %73, %93, %105 : vector<3xf32>, vector<3x7xf32> into vector<7xf32>
      %256 = vector.broadcast %c-7432_i16 : i16 to vector<5x3xi16>
      %257 = index.divs %c0, %45
      %258 = vector.shuffle %80, %100 [2] : vector<3x7xf32>, vector<1x7xf32>
      %259 = arith.andi %c1819932308_i64, %c1819932308_i64 : i64
      %dest_40, %accumulated_value_41 = vector.scan <minf>, %52, %73 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
      memref.store %cst_3, %alloc_20[%c2, %c6, %c4] : memref<10x10x7xf32>
    }
    %113 = math.powf %10, %10 : tensor<3x7xf32>
    %alloc_26 = memref.alloc() : memref<5x3xi1>
    %114 = math.floor %10 : tensor<3x7xf32>
    %115 = math.log %10 : tensor<3x7xf32>
    %116 = index.floordivs %c1, %67
    %117 = memref.alloca_scope  -> (f16) {
      %248 = math.cos %cst_0 : f32
      %249 = scf.while (%arg2 = %93) : (vector<3x7xf32>) -> vector<3x7xf32> {
        %277 = arith.muli %c1322531054_i32, %c1322531054_i32 : i32
        %278 = vector.reduction <mul>, %20 : vector<3xf16> into f16
        %279 = math.cos %10 : tensor<3x7xf32>
        %280 = vector.multi_reduction <add>, %105, %60 [] : vector<7xf32> to vector<7xf32>
        %281 = vector.matrix_multiply %87, %60 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xf32>, vector<7xf32>) -> vector<7xf32>
        %282 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
        %283 = vector.outerproduct %105, %105, %282 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
        memref.store %false, %76[%c0, %c9, %c0] : memref<10x10x7xi1>
        %284 = vector.reduction <minf>, %87 : vector<1xf32> into f32
        scf.condition(%false) %64 : vector<3x7xf32>
      } do {
      ^bb0(%arg2: vector<3x7xf32>):
        %277 = arith.subi %c24758_i16, %c8444_i16 : i16
        %278 = arith.remf %cst_2, %cst_1 : f32
        %279 = arith.shrsi %c1821487250_i32, %c1821487250_i32 : i32
        %inserted_42 = tensor.insert %c8444_i16 into %11[%c9, %c1, %c6] : tensor<10x10x7xi16>
        %280 = affine.max affine_map<(d0, d1, d2) -> (d1 floordiv 2, -(d2 - d0 + d2 mod 4), -(d2 - d0 + d2 mod 4))>(%55, %58, %c15)
        %281 = math.log2 %10 : tensor<3x7xf32>
        %282 = bufferization.to_memref %1 : memref<3x7xi1>
        %283 = arith.minf %cst_2, %cst_3 : f32
        %284 = math.exp2 %cst_2 : f32
        %285 = affine.max affine_map<(d0) -> ((d0 * -2) floordiv 16, (d0 + d0 mod 16 - d0 mod 16) * 2, d0 * 2, d0 mod 16 + 8)>(%c9)
        %286 = arith.maxsi %c-25136_i16, %c-32532_i16 : i16
        %287 = math.floor %10 : tensor<3x7xf32>
        %288 = math.tan %10 : tensor<3x7xf32>
        %289 = math.exp %cst : f16
        %290 = vector.reduction <maxsi>, %111 : vector<5xi1> into i1
        %291 = math.log2 %cst_1 : f32
        scf.yield %64 : vector<3x7xf32>
      }
      %250 = vector.extract %63[1] : vector<3x7xi32>
      %251 = affine.for %arg2 = 0 to 41 iter_args(%arg3 = %0) -> (tensor<10x10x7xi1>) {
        affine.yield %12 : tensor<10x10x7xi1>
      }
      %c1849456135_i64 = arith.constant 1849456135 : i64
      %252 = vector.extract %64[0] : vector<3x7xf32>
      %253 = math.ctlz %21 : tensor<10xi64>
      %254 = arith.ori %c1819932308_i64, %c1819932308_i64 : i64
      %255 = arith.divsi %c-32532_i16, %c-25136_i16 : i16
      %256 = math.log %cst_0 : f32
      %257 = memref.alloca_scope  -> (memref<10x10x7xi32>) {
        memref.store %c1819932308_i64, %alloc_19[%c3] : memref<10xi64>
        %277 = arith.remf %cst_3, %cst_1 : f32
        %278 = math.tan %10 : tensor<3x7xf32>
        %279 = math.log2 %14 : tensor<5x3xf16>
        %280 = arith.remf %cst_2, %cst_1 : f32
        memref.tensor_store %from_elements, %alloc_17 : memref<3x10xi1>
        %281 = index.sub %31, %90
        %282 = vector.broadcast %cst_1 : f32 to vector<3x10xf32>
        %283 = vector.fma %282, %282, %282 : vector<3x10xf32>
        %284 = math.log2 %cst_2 : f32
        %285 = vector.broadcast %c-2387_i16 : i16 to vector<3x10xi16>
        %286 = math.log1p %cst : f16
        %cast_42 = tensor.cast %from_elements : tensor<3x10xi1> to tensor<?x?xi1>
        %287 = arith.minf %cst_2, %cst_3 : f32
        memref.tensor_store %16, %alloc_8 : memref<10x10x7xi64>
        %288 = vector.multi_reduction <minf>, %64, %cst_3 [0, 1] : vector<3x7xf32> to f32
        %289 = arith.remf %cst_2, %cst_2 : f32
        %290 = arith.divsi %c-7432_i16, %c-2387_i16 : i16
        %291 = memref.atomic_rmw mulf %288, %alloc_18[%c0, %c3] : (f32, memref<3x10xf32>) -> f32
        %292 = arith.andi %c-25136_i16, %c-2387_i16 : i16
        %293 = vector.broadcast %cst_1 : f32 to vector<3x10xf32>
        %294 = vector.fma %293, %282, %293 : vector<3x10xf32>
        %295 = math.log10 %288 : f32
        %296 = vector.broadcast %c1819932308_i64 : i64 to vector<i64>
        vector.transfer_write %296, %alloc_5[%31, %c9] : vector<i64>, memref<5x3xi64>
        vector.print %60 : vector<7xf32>
        %297 = index.maxs %c8, %67
        memref.copy %alloc_13, %alloc_8 : memref<10x10x7xi64> to memref<10x10x7xi64>
        %298 = math.log10 %288 : f32
        memref.store %c1819932308_i64, %alloc_8[%c7, %c9, %c1] : memref<10x10x7xi64>
        %299 = math.tan %14 : tensor<5x3xf16>
        %300 = arith.floordivsi %c1819932308_i64, %c1819932308_i64 : i64
        %301 = math.tan %cst_1 : f32
        memref.assume_alignment %alloc_18, 16 : memref<3x10xf32>
        %expanded_43 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<5x3xi32> into tensor<5x3x1xi32>
        %alloc_44 = memref.alloc() : memref<10x10x7xi32>
        memref.alloca_scope.return %alloc_44 : memref<10x10x7xi32>
      }
      %inserted_38 = tensor.insert %c-25136_i16 into %11[%c9, %c0, %c5] : tensor<10x10x7xi16>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %258 = vector.transfer_read %13[%c3, %c14, %c0], %c0_i64 : tensor<10x10x7xi64>, vector<i64>
      %alloc_39 = memref.alloc() : memref<3x10xi32>
      memref.copy %46, %alloc_39 : memref<3x10xi32> to memref<3x10xi32>
      %259 = arith.ceildivsi %c-25136_i16, %c-32532_i16 : i16
      %260 = scf.if %false -> (memref<10x10x7xi1>) {
        %277 = arith.remsi %false, %false : i1
        %278 = vector.splat %false : vector<3x10xi1>
        %279 = index.ceildivs %c4, %c4
        %280 = index.maxs %31, %c9
        %281 = arith.remf %cst_0, %cst_0 : f32
        %282 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %73, %51, %105 : vector<3xf32>, vector<3x7xf32> into vector<7xf32>
        %283 = arith.subi %c1821487250_i32, %c1322531054_i32 : i32
        %284 = arith.divsi %false, %false : i1
        scf.yield %76 : memref<10x10x7xi1>
      } else {
        %277 = arith.remf %cst_1, %cst_2 : f32
        %278 = arith.remf %cst_2, %cst_1 : f32
        %279 = vector.extract_strided_slice %51 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xf32> to vector<2x7xf32>
        %280 = vector.broadcast %c-2387_i16 : i16 to vector<3x10xi16>
        %281 = vector.broadcast %false : i1 to vector<3x10xi1>
        %282 = vector.broadcast %c1322531054_i32 : i32 to vector<3x10xi32>
        %283 = vector.gather %alloc_6[%c3, %c2] [%282], %281, %280 : memref<5x3xi16>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi16> into vector<3x10xi16>
        %284 = math.ipowi %c24758_i16, %c-25136_i16 : i16
        %285 = math.log1p %cst_3 : f32
        %286 = vector.bitcast %250 : vector<7xi32> to vector<7xi32>
        %287 = affine.load %alloc_17[%c5, %c1] : memref<3x10xi1>
        scf.yield %76 : memref<10x10x7xi1>
      }
      %261 = index.floordivs %c12, %c0
      %262 = arith.addf %cst_1, %cst_3 : f32
      %alloc_40 = memref.alloc() : memref<3x7xf16>
      %263 = arith.minsi %c1_i64, %c1819932308_i64 : i64
      %264 = tensor.empty(%c15, %45) : tensor<?x?xf16>
      %265 = arith.maxf %cst, %cst : f16
      %266 = arith.maxf %cst_0, %cst_0 : f32
      %267 = vector.extract %94[0] : vector<3x7xf32>
      %268 = vector.broadcast %c9 : index to vector<3xindex>
      %269 = vector.broadcast %false : i1 to vector<3xi1>
      %270 = vector.broadcast %c1_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_14[%c0, %c1] [%268], %269, %270 : memref<3x10xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      %271 = vector.insertelement %cst_0, %87[%67 : index] : vector<1xf32>
      %272 = math.copysign %cst_0, %cst_3 : f32
      %273 = arith.remf %cst_3, %cst_1 : f32
      %274 = math.log1p %cst_1 : f32
      %275 = arith.floordivsi %c1821487250_i32, %c1821487250_i32 : i32
      %276 = math.fma %cst_0, %cst_3, %cst_3 : f32
      %from_elements_41 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<3x10xf16>
      memref.alloca_scope.return %cst : f16
    }
    %extracted = tensor.extract %2[%c0, %c2] : tensor<3x7xi64>
    %118 = arith.subi %c-2387_i16, %c24758_i16 : i16
    %119 = math.absf %117 : f16
    %120 = vector.broadcast %cst_0 : f32 to vector<3x7xf32>
    %121 = vector.fma %120, %120, %64 : vector<3x7xf32>
    %122 = vector.insert %cst_1, %73 [0] : f32 into vector<3xf32>
    %123 = vector.broadcast %extracted : i64 to vector<i64>
    %124 = vector.transfer_write %123, %9[%95, %c4] : vector<i64>, tensor<5x3xi64>
    %125 = vector.insert %60, %94 [0] : vector<7xf32> into vector<3x7xf32>
    %126 = arith.ceildivsi %c87979853_i32, %c1322531054_i32 : i32
    %127 = arith.remsi %c1819932308_i64, %c1819932308_i64 : i64
    %128 = vector.extract %73[2] : vector<3xf32>
    %129 = math.round %117 : f16
    %130 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d1 * 64)>(%c5, %c1, %c11, %c4)
    %131 = vector.bitcast %64 : vector<3x7xf32> to vector<3x7xf32>
    %132 = arith.remui %extracted, %c1819932308_i64 : i64
    scf.execute_region {
      %248 = vector.flat_transpose %87 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %249 = index.ceildivu %31, %95
      %250 = arith.mulf %cst_1, %cst_1 : f32
      %251 = math.floor %10 : tensor<3x7xf32>
      %252 = vector.extract_strided_slice %131 {offsets = [0], sizes = [1], strides = [1]} : vector<3x7xf32> to vector<1x7xf32>
      %253 = vector.multi_reduction <minf>, %64, %73 [1] : vector<3x7xf32> to vector<3xf32>
      %254 = vector.create_mask %86, %108 : vector<3x10xi1>
      %255 = arith.divui %c-25136_i16, %c-25136_i16 : i16
      %256 = bufferization.to_memref %1 : memref<3x7xi1>
      %257 = math.floor %cst_0 : f32
      %258 = vector.splat %c0 : vector<3x10xindex>
      %259 = arith.ceildivsi %c-2387_i16, %c-7432_i16 : i16
      %260 = math.log %10 : tensor<3x7xf32>
      %261 = vector.broadcast %69 : index to vector<3xindex>
      %262 = vector.broadcast %false : i1 to vector<3xi1>
      vector.scatter %alloc_4[%c0, %c5] [%261], %262, %20 : memref<3x7xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %263 = math.rsqrt %10 : tensor<3x7xf32>
      %264 = math.powf %14, %14 : tensor<5x3xf16>
      scf.yield
    }
    %133 = math.tan %14 : tensor<5x3xf16>
    %inserted_27 = tensor.insert %c1821487250_i32 into %15[%c0, %c2] : tensor<3x10xi32>
    %134 = affine.for %arg2 = 0 to 27 iter_args(%arg3 = %120) -> (vector<3x7xf32>) {
      affine.yield %52 : vector<3x7xf32>
    }
    %135 = memref.atomic_rmw ori %c1819932308_i64, %alloc_7[%c0, %c3] : (i64, memref<3x7xi64>) -> i64
    vector.print %121 : vector<3x7xf32>
    %from_elements_28 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<10x10x7xi1>
    %136 = tensor.empty(%rank) : tensor<?x10xi16>
    %137 = vector.insert %cst_2, %105 [4] : f32 into vector<7xf32>
    %138 = math.powf %10, %10 : tensor<3x7xf32>
    %from_elements_29 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<5x3xi1>
    %139 = math.log2 %117 : f16
    %140 = vector.splat %cst : vector<10x10x7xf16>
    %141 = math.ceil %cst_1 : f32
    %142 = math.log1p %10 : tensor<3x7xf32>
    %143 = arith.floordivsi %c-7432_i16, %c-25136_i16 : i16
    %144 = vector.transpose %60, [0] : vector<7xf32> to vector<7xf32>
    memref.copy %alloc_11, %alloc_14 : memref<3x10xi64> to memref<3x10xi64>
    %145 = arith.ceildivsi %extracted, %extracted : i64
    %146 = arith.maxf %cst_0, %cst_0 : f32
    memref.store %cst_2, %alloc_20[%c9, %c5, %c3] : memref<10x10x7xf32>
    %147 = arith.divsi %c1821487250_i32, %c87979853_i32 : i32
    %148 = arith.remf %cst, %cst : f16
    %149 = arith.maxsi %c8444_i16, %c-25136_i16 : i16
    %150 = math.tan %14 : tensor<5x3xf16>
    %151 = vector.matrix_multiply %73, %60 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xf32>, vector<7xf32>) -> vector<21xf32>
    %152 = vector.flat_transpose %60 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
    %153 = affine.max affine_map<(d0, d1, d2) -> (d0 + 32, d2)>(%c9, %67, %c0)
    %alloc_30 = memref.alloc() : memref<3x10xi16>
    memref.copy %alloc_12, %alloc_30 : memref<3x10xi16> to memref<3x10xi16>
    %154 = math.absf %14 : tensor<5x3xf16>
    %from_elements_31 = tensor.from_elements %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %extracted, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted : tensor<3x10xi64>
    %155 = arith.maxui %c-25136_i16, %c-2387_i16 : i16
    %156 = math.round %cst_0 : f32
    %157 = arith.muli %c-25136_i16, %c-32532_i16 : i16
    %158 = math.floor %117 : f16
    %159 = scf.if %false -> (f32) {
      %248 = bufferization.clone %alloc_18 : memref<3x10xf32> to memref<3x10xf32>
      %249 = math.log10 %cst_0 : f32
      %250 = math.ctlz %3 : tensor<3x10xi32>
      %c1075069637_i64 = arith.constant 1075069637 : i64
      %251 = math.round %14 : tensor<5x3xf16>
      %252 = math.powf %10, %10 : tensor<3x7xf32>
      %253 = arith.remf %cst_0, %cst_3 : f32
      %254 = arith.maxsi %false, %false : i1
      scf.yield %cst_3 : f32
    } else {
      %248 = math.ctlz %13 : tensor<10x10x7xi64>
      %249 = vector.create_mask %45, %c0 : vector<3x7xi1>
      %250 = math.log %10 : tensor<3x7xf32>
      %251 = arith.cmpf uge, %cst_0, %cst_0 : f32
      %252 = vector.load %alloc_13[%c5, %c8, %c1] : memref<10x10x7xi64>, vector<3x10xi64>
      %253 = vector.multi_reduction <add>, %121, %64 [] : vector<3x7xf32> to vector<3x7xf32>
      %254 = arith.maxsi %c-25136_i16, %c-32532_i16 : i16
      %255 = vector.matrix_multiply %87, %73 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xf32>, vector<3xf32>) -> vector<3xf32>
      scf.yield %cst_0 : f32
    }
    %160 = index.mul %c15, %c12
    %161 = arith.andi %c-32532_i16, %c8444_i16 : i16
    %162 = arith.shrui %c-2387_i16, %c-7432_i16 : i16
    %163 = vector.insert %105, %80 [0] : vector<7xf32> into vector<3x7xf32>
    %164 = arith.minsi %c8444_i16, %c-32532_i16 : i16
    %165 = arith.divf %159, %cst_2 : f32
    %166 = arith.divui %c-7432_i16, %c-2387_i16 : i16
    %167 = math.cttz %extracted : i64
    %168 = scf.index_switch %45 -> i1 
    case 1 {
      %248 = arith.minsi %c1819932308_i64, %extracted : i64
      %from_elements_38 = tensor.from_elements %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32 : tensor<3x10xi32>
      %249 = arith.divui %c-25136_i16, %c-32532_i16 : i16
      %250 = vector.broadcast %false : i1 to vector<5x5xi1>
      %251 = vector.outerproduct %111, %110, %250 {kind = #vector.kind<minui>} : vector<5xi1>, vector<5xi1>
      %252 = index.divs %69, %c0
      %alloc_39 = memref.alloc() : memref<3x10xf16>
      memref.copy %alloc, %alloc_39 : memref<3x10xf16> to memref<3x10xf16>
      %253 = math.copysign %10, %10 : tensor<3x7xf32>
      memref.store %false, %alloc_17[%c1, %c3] : memref<3x10xi1>
      scf.execute_region {
        %260 = affine.load %alloc_20[%c6, %c5, %c3] : memref<10x10x7xf32>
        %261 = math.expm1 %260 : f32
        %262 = vector.splat %116 : vector<3x7xindex>
        %263 = vector.extract %111[1] : vector<5xi1>
        bufferization.dealloc_tensor %6 : tensor<5x3xi32>
        %264 = arith.maxf %cst_2, %cst_3 : f32
        %265 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %alloc_41 = memref.alloc() : memref<3x7xf16>
        memref.copy %alloc_4, %alloc_41 : memref<3x7xf16> to memref<3x7xf16>
        %splat_42 = tensor.splat %c1322531054_i32 : tensor<10x10x7xi32>
        %266 = arith.divf %159, %cst_1 : f32
        memref.store %260, %alloc_10[%c2, %c1] : memref<3x7xf32>
        %267 = math.sqrt %117 : f16
        %268 = arith.andi %c-25136_i16, %c-7432_i16 : i16
        %269 = vector.broadcast %false : i1 to vector<7xi1>
        %270 = vector.insert %269, %62 [0] : vector<7xi1> into vector<3x7xi1>
        %271 = arith.divui %c87979853_i32, %c87979853_i32 : i32
        %272 = math.log %cst : f16
        scf.yield
      }
      %254 = arith.shrui %extracted, %c1819932308_i64 : i64
      %255 = arith.maxui %c1322531054_i32, %c1821487250_i32 : i32
      %256 = math.atan %cst_2 : f32
      %257 = math.log1p %cst_0 : f32
      %from_elements_40 = tensor.from_elements %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %159, %cst_0, %cst_1, %cst_2, %cst_3, %159, %cst_1, %cst_0, %159, %159, %cst_0, %cst_0, %cst_1, %cst_1, %159, %cst_2, %cst_0, %159, %cst_3, %cst_0, %cst_0, %159, %159, %cst_1, %159, %cst_1, %cst_2, %cst_3, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_1, %159, %cst_0, %159, %cst_3, %cst_2, %cst_0, %cst_0, %159, %cst_3, %cst_3, %cst_2, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_3, %cst_2, %cst_0, %159, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %159, %cst_1, %159, %cst_0, %cst_0, %cst_2, %cst_3, %cst_2, %cst_0, %cst_0, %cst_1, %cst_3, %cst_0, %cst_0, %159, %cst_3, %cst_2, %cst_1, %cst_1, %159, %cst_3, %cst_2, %159, %cst_2, %cst_2, %cst_0, %cst_2, %159, %159, %cst_3, %cst_2, %159, %cst_1, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %159, %cst_3, %159, %cst_2, %cst_2, %159, %cst_1, %cst_3, %cst_2, %cst_2, %cst_0, %cst_3, %cst_2, %159, %cst_2, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %159, %159, %cst_3, %cst_2, %cst_1, %cst_3, %cst_2, %cst_0, %cst_2, %cst_2, %159, %cst_3, %cst_0, %cst_2, %cst_1, %cst_2, %159, %159, %cst_3, %159, %cst_1, %cst_0, %159, %cst_3, %cst_2, %159, %cst_3, %cst_3, %cst_1, %cst_0, %cst_1, %cst_3, %cst_0, %cst_1, %159, %159, %cst_0, %cst_3, %159, %cst_2, %cst_0, %159, %cst_1, %cst_1, %cst_3, %cst_2, %cst_2, %cst_1, %159, %cst_0, %cst_0, %cst_1, %cst_3, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_3, %cst_3, %cst_1, %cst_1, %159, %cst_0, %159, %cst_1, %cst_1, %cst_1, %cst_2, %cst_3, %159, %cst_1, %cst_3, %cst_3, %cst_0, %159, %cst_1, %cst_2, %cst_2, %cst_3, %cst_2, %cst_1, %159, %159, %cst_1, %cst_3, %159, %cst_2, %cst_1, %cst_2, %cst_2, %cst_3, %cst_1, %cst_0, %cst_3, %cst_1, %159, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_0, %cst_3, %cst_0, %cst_3, %159, %cst_1, %cst_0, %cst_2, %cst_2, %cst_3, %cst_0, %cst_1, %cst_3, %cst_3, %159, %cst_0, %cst_1, %cst_0, %cst_3, %159, %159, %cst_3, %cst_1, %cst_1, %cst_2, %cst_0, %cst_3, %159, %cst_2, %cst_0, %cst_2, %cst_3, %159, %cst_0, %cst_0, %cst_3, %cst_1, %cst_1, %cst_2, %cst_0, %cst_3, %159, %159, %159, %cst_2, %cst_2, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_2, %cst_3, %cst_1, %159, %cst_3, %159, %cst_1, %cst_1, %cst_0, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst_1, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %159, %cst_0, %cst_1, %cst_3, %cst_3, %159, %cst_0, %cst_0, %cst_1, %cst_3, %159, %159, %159, %cst_3, %cst_0, %cst_2, %cst_0, %159, %cst_3, %159, %cst_3, %cst_2, %cst_3, %cst_2, %cst_1, %cst_2, %cst_0, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %159, %cst_2, %159, %cst_0, %cst_2, %cst_2, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_2, %159, %cst_3, %cst_1, %cst_3, %cst_1, %159, %159, %cst_0, %cst_3, %cst_0, %cst_3, %cst_0, %cst_2, %cst_1, %cst_3, %cst_0, %159, %cst_0, %cst_2, %cst_0, %159, %159, %cst_0, %cst_2, %cst_3, %cst_1, %cst_3, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_3, %cst_0, %cst_1, %159, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_3, %159, %cst_3, %159, %159, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_3, %cst_2, %cst_2, %cst_0, %cst_3, %159, %cst_1, %cst_3, %cst_1, %cst_1, %cst_0, %159, %cst_2, %cst_2, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_2, %159, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_3, %cst_3, %cst_0, %cst_2, %cst_3, %cst_1, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %159, %cst_0, %cst_1, %159, %cst_2, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %159, %159, %cst_3, %cst_2, %cst_2, %159, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_3, %cst_2, %cst_0, %cst_2, %cst_3, %cst_1, %cst_1, %cst_1, %159, %cst_3, %cst_0, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_3, %cst_1, %cst_1, %cst_3, %cst_2, %159, %cst_3, %cst_1, %159, %cst_3, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_3, %cst_2, %159, %cst_0, %cst_3, %cst_2, %cst_1, %cst_0, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %159, %cst_2, %159, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %159, %cst_2, %159, %cst_0, %cst_2, %cst_3, %cst_2, %cst_1, %159, %cst_0, %cst_0, %159, %cst_3, %cst_3, %cst_2, %cst_0, %cst_0, %cst_3, %cst_1, %cst_0, %cst_3, %cst_1, %159, %cst_0, %cst_3, %cst_1, %159, %cst_1, %cst_0, %cst_2, %159, %159, %cst_2, %cst_1, %cst_2, %159, %cst_1, %cst_3, %cst_2, %cst_2, %cst_1, %cst_2, %cst_3, %159, %cst_3, %cst_2, %cst_3, %159, %cst_2, %159, %cst_0, %159, %cst_3, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_3, %159, %159, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_2, %cst_3, %159, %cst_1, %159, %cst_2, %159, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_3, %cst_0, %cst_1, %cst_0, %159, %cst_1, %cst_2, %cst_3, %cst_1, %cst_0, %159, %159, %cst_0, %cst_2, %cst_0, %cst_0, %159, %159, %cst_0, %cst_2, %cst_2, %cst_3, %cst_1, %cst_0, %159, %159, %cst_3, %cst_2, %cst_3, %cst_3, %159, %159, %cst_3, %cst_2, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_3, %cst_0, %cst_0, %cst_3, %159, %159, %cst_2, %159, %cst_3, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %159, %cst_1, %cst_3, %159, %159, %cst_0, %cst_0, %cst_2, %159, %cst_2, %159, %159, %cst_0, %cst_2, %cst_3, %cst_2 : tensor<10x10x7xf32>
      %258 = math.log2 %cst_2 : f32
      %259 = math.log2 %cst_3 : f32
      scf.yield %false : i1
    }
    case 2 {
      memref.tensor_store %13, %alloc_13 : memref<10x10x7xi64>
      %248 = math.log2 %cst_2 : f32
      %249 = math.floor %10 : tensor<3x7xf32>
      %250 = tensor.empty() : tensor<5x3xi64>
      %251 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %52, %60, %73 : vector<3x7xf32>, vector<7xf32> into vector<3xf32>
      memref.tensor_store %3, %46 : memref<3x10xi32>
      %252 = affine.max affine_map<(d0, d1) -> (d1, d0, -d1)>(%c2, %69)
      %253 = vector.shuffle %93, %29 [4] : vector<3x7xf32>, vector<3x7xf32>
      %254 = vector.splat %cst : vector<5x3xf16>
      %255 = arith.divui %extracted, %extracted : i64
      vector.print %51 : vector<3x7xf32>
      %256 = vector.broadcast %false : i1 to vector<5x5xi1>
      %257 = vector.outerproduct %110, %111, %256 {kind = #vector.kind<maxsi>} : vector<5xi1>, vector<5xi1>
      %258 = arith.muli %c24758_i16, %c-32532_i16 : i16
      %inserted_38 = tensor.insert %extracted into %transposed[%c6, %c7, %c7] : tensor<7x10x10xi64>
      %259 = vector.broadcast %c13 : index to vector<3xindex>
      %260 = vector.broadcast %false : i1 to vector<3xi1>
      %261 = vector.broadcast %c24758_i16 : i16 to vector<3xi16>
      vector.scatter %alloc_12[%c2, %c4] [%259], %260, %261 : memref<3x10xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
      %262 = math.powf %cst_0, %cst_1 : f32
      scf.yield %false : i1
    }
    default {
      %248 = index.divs %108, %c11
      affine.store %cst, %alloc[%c8, %c14] : memref<3x10xf16>
      %249 = tensor.empty() : tensor<10x10x7xi64>
      %mapped_38 = linalg.map ins(%alloc_13 : memref<10x10x7xi64>) outs(%249 : tensor<10x10x7xi64>)
        (%in: i64) {
          %264 = affine.load %alloc_6[%c9, %c5] : memref<5x3xi16>
          %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 32, (d2 floordiv 32) ceildiv 32 - 2, ((d2 floordiv 32) ceildiv 32) floordiv 64)>(%31, %69, %c5, %c5)
          vector.print %123 : vector<i64>
          %dest_39, %accumulated_value_40 = vector.scan <mul>, %80, %152 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
          %from_elements_41 = tensor.from_elements %extracted, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %extracted, %in, %extracted, %c1819932308_i64, %in, %c1819932308_i64, %in : tensor<5x3xi64>
          %266 = index.sizeof
          %267 = math.log10 %cst_3 : f32
          %268 = math.absf %14 : tensor<5x3xf16>
          memref.assume_alignment %alloc, 2 : memref<3x10xf16>
          %269 = vector.shuffle %151, %73 [0, 4, 5, 7, 8, 11, 12, 16, 20, 21, 22, 23] : vector<21xf32>, vector<3xf32>
          %270 = arith.remf %159, %159 : f32
          %271 = memref.atomic_rmw minu %extracted, %alloc_5[%c4, %c0] : (i64, memref<5x3xi64>) -> i64
          %from_elements_42 = tensor.from_elements %extracted, %extracted, %extracted, %in, %extracted, %in, %c1819932308_i64, %in, %c1819932308_i64, %in, %extracted, %in, %in, %c1819932308_i64, %in, %extracted, %in, %in, %in, %in, %c1819932308_i64 : tensor<3x7xi64>
          %272 = affine.max affine_map<(d0, d1, d2) -> (0)>(%86, %c12, %86)
          %273 = math.fma %14, %14, %14 : tensor<5x3xf16>
          %274 = math.log %117 : f16
          vector.print %131 : vector<3x7xf32>
          %275 = vector.create_mask %c4, %c11 : vector<3x10xi1>
          %276 = math.powf %cst_2, %cst_1 : f32
          %true_43 = index.bool.constant true
          %277 = math.log1p %cst : f16
          %278 = vector.multi_reduction <minf>, %93, %60 [0] : vector<3x7xf32> to vector<7xf32>
          memref.store %117, %alloc_4[%c2, %c6] : memref<3x7xf16>
          %279 = vector.extract %60[4] : vector<7xf32>
          %280 = vector.splat %90 : vector<5x3xindex>
          %281 = math.copysign %cst_1, %cst_3 : f32
          %282 = math.log2 %159 : f32
          %283 = arith.remui %c-7432_i16, %c-2387_i16 : i16
          %284 = arith.addf %cst, %cst : f16
          %285 = vector.multi_reduction <add>, %20, %20 [] : vector<3xf16> to vector<3xf16>
          %286 = vector.extract %110[2] : vector<5xi1>
          %287 = index.casts %c-7432_i16 : i16 to index
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %250 = arith.addf %117, %117 : f16
      %251 = vector.shuffle %110, %110 [0, 1, 2, 7, 8, 9] : vector<5xi1>, vector<5xi1>
      %252 = arith.andi %c1821487250_i32, %c1322531054_i32 : i32
      %253 = arith.floordivsi %c-7432_i16, %c-7432_i16 : i16
      memref.alloca_scope  {
        %dest_39, %accumulated_value_40 = vector.scan <add>, %93, %73 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
        %264 = index.sub %c3, %c13
        %265 = math.ctlz %15 : tensor<3x10xi32>
        %266 = arith.remf %cst_1, %cst_2 : f32
        %267 = vector.reduction <add>, %152 : vector<7xf32> into f32
        %268 = vector.broadcast %cst_2 : f32 to vector<10x10x7xf32>
        %269 = vector.fma %268, %268, %268 : vector<10x10x7xf32>
        %270 = arith.remsi %c-32532_i16, %c-25136_i16 : i16
        %alloc_41 = memref.alloc() : memref<3x7xi1>
        memref.tensor_store %1, %alloc_41 : memref<3x7xi1>
        %271 = arith.minsi %c8444_i16, %c-25136_i16 : i16
        %272 = vector.broadcast %c24758_i16 : i16 to vector<5x3xi16>
        %273 = vector.broadcast %false : i1 to vector<5x3xi1>
        %274 = vector.broadcast %c87979853_i32 : i32 to vector<5x3xi32>
        %275 = vector.gather %alloc_9[%c8, %c15, %c11] [%274], %273, %272 : memref<10x10x7xi16>, vector<5x3xi32>, vector<5x3xi1>, vector<5x3xi16> into vector<5x3xi16>
        %276 = index.add %67, %c7
        %277 = math.atan2 %cst_3, %cst_2 : f32
        %278 = arith.muli %c-7432_i16, %c-7432_i16 : i16
        %279 = vector.reduction <maxf>, %152 : vector<7xf32> into f32
        %280 = arith.andi %c8444_i16, %c-32532_i16 : i16
        %281 = math.absf %117 : f16
        %282 = math.cos %cst_1 : f32
        %283 = math.copysign %159, %cst_3 : f32
        %284 = arith.floordivsi %extracted, %c1819932308_i64 : i64
        %285 = vector.splat %extracted : vector<3x10xi64>
        %286 = vector.broadcast %false : i1 to vector<5x5xi1>
        %287 = vector.outerproduct %111, %110, %286 {kind = #vector.kind<or>} : vector<5xi1>, vector<5xi1>
        %288 = math.tan %cst : f16
        %289 = arith.minsi %c-32532_i16, %c8444_i16 : i16
        %290 = arith.shrui %c1821487250_i32, %c1322531054_i32 : i32
        %291 = arith.remf %cst, %cst : f16
        %292 = vector.splat %c15 : vector<3x10xindex>
        %293 = math.absf %14 : tensor<5x3xf16>
        %alloc_42 = memref.alloc() : memref<3x7xi16>
        %294 = math.sqrt %10 : tensor<3x7xf32>
        %295 = memref.realloc %alloc_19 : memref<10xi64> to memref<10xi64>
        %296 = vector.create_mask %c8, %67 : vector<5x3xi1>
        %297 = math.ceil %cst_1 : f32
      }
      %254 = affine.max affine_map<(d0) -> (d0 - 32, (-d0) ceildiv 32 + (d0 - 48) mod 128, -d0)>(%31)
      %255 = arith.maxf %cst_3, %159 : f32
      %256 = arith.cmpf ole, %cst_0, %cst_2 : f32
      %257 = vector.matrix_multiply %20, %20 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
      %258 = arith.ceildivsi %c8444_i16, %c24758_i16 : i16
      %259 = arith.maxui %c24758_i16, %c-2387_i16 : i16
      %260 = index.maxu %c13, %153
      %261 = tensor.empty() : tensor<3x7xf16>
      %262 = tensor.empty() : tensor<5x7xf16>
      %263 = linalg.matmul ins(%14, %261 : tensor<5x3xf16>, tensor<3x7xf16>) outs(%262 : tensor<5x7xf16>) -> tensor<5x7xf16>
      scf.yield %false : i1
    }
    %169 = bufferization.clone %76 : memref<10x10x7xi1> to memref<10x10x7xi1>
    %170 = scf.while (%arg2 = %c-32532_i16) : (i16) -> i16 {
      %inserted_38 = tensor.insert %c87979853_i32 into %3[%c0, %c1] : tensor<3x10xi32>
      %inserted_39 = tensor.insert %extracted into %22[] : tensor<i64>
      %248 = arith.maxui %c87979853_i32, %c1821487250_i32 : i32
      %249 = memref.realloc %alloc_19 : memref<10xi64> to memref<7xi64>
      %250 = arith.ceildivsi %c24758_i16, %c-32532_i16 : i16
      %251 = math.powf %cst_2, %cst_2 : f32
      %252 = vector.shuffle %80, %94 [0, 2, 3, 4, 5] : vector<3x7xf32>, vector<3x7xf32>
      %253 = vector.broadcast %false : i1 to vector<10x10x7xi1>
      %254 = vector.broadcast %c1821487250_i32 : i32 to vector<10x10x7xi32>
      %255 = vector.gather %from_elements_28[%55, %rank, %c2] [%254], %253, %253 : tensor<10x10x7xi1>, vector<10x10x7xi32>, vector<10x10x7xi1>, vector<10x10x7xi1> into vector<10x10x7xi1>
      scf.condition(%false) %c-2387_i16 : i16
    } do {
    ^bb0(%arg2: i16):
      %248 = index.sub %160, %69
      %249 = vector.matrix_multiply %73, %87 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<1xf32>) -> vector<3xf32>
      %true_38 = arith.constant true
      %false_39 = arith.constant false
      %250 = vector.transfer_read %12[%c0, %rank, %c12], %false_39 : tensor<10x10x7xi1>, vector<i1>
      %251 = affine.if affine_set<(d0, d1, d2, d3) : ((-d3) floordiv 8 == 0, -d3 >= 0, -d3 - 64 == 0, d0 == 0)>(%c10, %c3, %c7, %c2) -> memref<10x10x7xi16> {
        %264 = arith.maxui %c-25136_i16, %arg2 : i16
        %265 = bufferization.to_memref %72 : memref<i64>
        %266 = math.log2 %10 : tensor<3x7xf32>
        %267 = index.add %c8, %69
        %268 = math.log10 %14 : tensor<5x3xf16>
        %269 = arith.subi %c1322531054_i32, %c1322531054_i32 : i32
        %270 = math.atan2 %10, %10 : tensor<3x7xf32>
        %rank_41 = tensor.rank %transposed : tensor<7x10x10xi64>
        affine.yield %alloc_9 : memref<10x10x7xi16>
      } else {
        %264 = vector.bitcast %62 : vector<3x7xi1> to vector<3x7xi1>
        %265 = arith.maxsi %true_38, %true_38 : i1
        affine.store %c-25136_i16, %alloc_12[%c12, %c7] : memref<3x10xi16>
        %266 = vector.broadcast %c1819932308_i64 : i64 to vector<i64>
        vector.transfer_write %266, %alloc_14[%c7, %c12] : vector<i64>, memref<3x10xi64>
        %267 = vector.broadcast %159 : f32 to vector<3x10xf32>
        %c1830442880_i64 = arith.constant 1830442880 : i64
        %268 = vector.transpose %80, [0, 1] : vector<3x7xf32> to vector<3x7xf32>
        %269 = math.log1p %14 : tensor<5x3xf16>
        affine.yield %alloc_9 : memref<10x10x7xi16>
      }
      affine.store %true_38, %alloc_17[%c4, %c15] : memref<3x10xi1>
      %252 = arith.remui %c-25136_i16, %c24758_i16 : i16
      %alloc_40 = memref.alloc() : memref<10x5xi32>
      %253 = tensor.empty() : tensor<3x5xi32>
      %254 = linalg.matmul ins(%3, %alloc_40 : tensor<3x10xi32>, memref<10x5xi32>) outs(%253 : tensor<3x5xi32>) -> tensor<3x5xi32>
      %255 = math.absf %10 : tensor<3x7xf32>
      %256 = vector.create_mask %116, %153 : vector<3x7xi1>
      %257 = arith.remsi %false, %true_38 : i1
      %258 = math.exp2 %14 : tensor<5x3xf16>
      %259 = vector.bitcast %94 : vector<3x7xf32> to vector<3x7xf32>
      %260 = arith.addi %extracted, %extracted : i64
      %261 = arith.subi %c-2387_i16, %c-7432_i16 : i16
      %262 = arith.remf %117, %117 : f16
      %263 = arith.subi %extracted, %extracted : i64
      scf.yield %c-25136_i16 : i16
    }
    %171 = memref.atomic_rmw andi %c-25136_i16, %alloc_6[%c4, %c0] : (i16, memref<5x3xi16>) -> i16
    %172 = vector.extract_strided_slice %51 {offsets = [1], sizes = [1], strides = [1]} : vector<3x7xf32> to vector<1x7xf32>
    %c316187386_i64 = arith.constant 316187386 : i64
    %173 = affine.load %alloc_5[%c4, %c9] : memref<5x3xi64>
    %174 = math.absf %cst_1 : f32
    %175 = vector.extract %111[4] : vector<5xi1>
    %176 = index.ceildivu %c8, %90
    %177 = math.log %14 : tensor<5x3xf16>
    %178 = affine.max affine_map<(d0, d1, d2) -> (d2 * 2, d1 mod 64, d2 + d1 mod 2)>(%95, %c0, %c13)
    %179 = math.powf %159, %cst_1 : f32
    %180 = arith.divsi %c-25136_i16, %c-32532_i16 : i16
    %181 = index.floordivs %108, %rank
    %c-15906_i16 = arith.constant -15906 : i16
    %182 = memref.load %alloc_4[%c2, %c2] : memref<3x7xf16>
    %183 = tensor.empty() : tensor<5x3xf16>
    %mapped_32 = linalg.map ins(%14 : tensor<5x3xf16>) outs(%183 : tensor<5x3xf16>)
      (%in: f16) {
        %248 = memref.atomic_rmw addf %cst_3, %alloc_18[%c0, %c9] : (f32, memref<3x10xf32>) -> f32
        %249 = index.maxs %c13, %108
        %250 = vector.reduction <mul>, %60 : vector<7xf32> into f32
        scf.index_switch %c12 
        case 1 {
          %282 = vector.shuffle %172, %52 [0] : vector<1x7xf32>, vector<3x7xf32>
          %283 = index.sub %69, %c1
          memref.store %in, %alloc[%c0, %c5] : memref<3x10xf16>
          vector.print %87 : vector<1xf32>
          %284 = vector.bitcast %94 : vector<3x7xf32> to vector<3x7xf32>
          %285 = math.exp2 %cst_0 : f32
          %286 = arith.remf %cst_1, %cst_3 : f32
          %cast_40 = tensor.cast %14 : tensor<5x3xf16> to tensor<?x?xf16>
          %287 = vector.bitcast %60 : vector<7xf32> to vector<7xf32>
          %288 = index.ceildivu %153, %95
          %289 = math.log %10 : tensor<3x7xf32>
          %290 = arith.remf %cst, %cst : f16
          %291 = math.floor %159 : f32
          %292 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
          %293 = vector.outerproduct %105, %60, %292 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
          %294 = vector.flat_transpose %73 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
          %295 = arith.maxf %in, %cst : f16
          scf.yield
        }
        case 2 {
          %282 = vector.matrix_multiply %87, %151 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 21 : i32} : (vector<1xf32>, vector<21xf32>) -> vector<21xf32>
          %283 = vector.create_mask %95, %c0 : vector<3x7xi1>
          %c-18219_i16 = arith.constant -18219 : i16
          %284 = vector.transpose %123, [] : vector<i64> to vector<i64>
          %285 = memref.load %alloc_4[%c1, %c5] : memref<3x7xf16>
          %286 = arith.remf %cst_2, %159 : f32
          %287 = arith.subi %c1322531054_i32, %c87979853_i32 : i32
          %288 = arith.remf %in, %117 : f16
          %289 = arith.minf %cst_1, %cst_0 : f32
          %290 = arith.andi %c-25136_i16, %c-32532_i16 : i16
          %291 = math.log1p %10 : tensor<3x7xf32>
          %292 = vector.reduction <maxui>, %110 : vector<5xi1> into i1
          %293 = arith.minf %159, %cst_2 : f32
          %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %87, %87, %cst_1 : vector<1xf32>, vector<1xf32> into f32
          memref.assume_alignment %alloc_11, 16 : memref<3x10xi64>
          %295 = math.floor %cst_3 : f32
          scf.yield
        }
        case 3 {
          %282 = index.ceildivu %c8, %c1
          %283 = affine.load %alloc_6[%c4, %c5] : memref<5x3xi16>
          %284 = index.divs %c5, %86
          %285 = math.roundeven %183 : tensor<5x3xf16>
          %286 = vector.multi_reduction <minf>, %94, %60 [0] : vector<3x7xf32> to vector<7xf32>
          %287 = math.tan %cst_1 : f32
          %288 = memref.load %alloc_20[%c8, %c4, %c0] : memref<10x10x7xf32>
          %289 = vector.create_mask %45, %95 : vector<3x10xi1>
          %alloc_40 = memref.alloc() : memref<10x10x7xi32>
          %290 = vector.gather %alloc_40[%c2, %95, %108] [%63], %62, %63 : memref<10x10x7xi32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi32> into vector<3x7xi32>
          %291 = index.maxs %c14, %55
          %292 = vector.extract %60[0] : vector<7xf32>
          %cast_41 = tensor.cast %1 : tensor<3x7xi1> to tensor<?x?xi1>
          %293 = vector.bitcast %151 : vector<21xf32> to vector<21xf32>
          %294 = arith.shli %c87979853_i32, %c1322531054_i32 : i32
          %295 = arith.cmpf une, %cst_0, %cst_1 : f32
          %296 = arith.divui %283, %c-2387_i16 : i16
          scf.yield
        }
        default {
          %282 = arith.maxf %cst, %cst : f16
          %283 = math.log %117 : f16
          %cast_40 = tensor.cast %0 : tensor<10x10x7xi1> to tensor<?x?x?xi1>
          %dest_41, %accumulated_value_42 = vector.scan <maxf>, %94, %73 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
          %284 = math.log10 %cst_0 : f32
          %285 = arith.subi %extracted, %c1819932308_i64 : i64
          %286 = arith.maxf %cst_0, %159 : f32
          %287 = tensor.empty() : tensor<10x5xi64>
          %288 = tensor.empty() : tensor<3x5xi64>
          %289 = linalg.matmul ins(%from_elements_31, %287 : tensor<3x10xi64>, tensor<10x5xi64>) outs(%288 : tensor<3x5xi64>) -> tensor<3x5xi64>
          %290 = arith.cmpf oge, %159, %cst_3 : f32
          %291 = math.log10 %cst : f16
          %cst_43 = arith.constant 3.571200e+04 : f16
          %292 = affine.max affine_map<(d0) -> (d0 - 4, ((d0 - 4) mod 16) ceildiv 128)>(%c8)
          %293 = arith.divsi %c-2387_i16, %c8444_i16 : i16
          %294 = math.log %cst_3 : f32
          %295 = math.fma %117, %in, %117 : f16
          %296 = vector.broadcast %90 : index to vector<5xindex>
          %297 = vector.broadcast %c-7432_i16 : i16 to vector<5xi16>
          vector.scatter %alloc_6[%c2, %c1] [%296], %110, %297 : memref<5x3xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        }
        %251 = vector.extract_strided_slice %151 {offsets = [18], sizes = [1], strides = [1]} : vector<21xf32> to vector<1xf32>
        %252 = arith.mulf %in, %in : f16
        %253 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %254 = vector.outerproduct %87, %251, %253 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %255 = math.absf %159 : f32
        vector.print %80 : vector<3x7xf32>
        %256 = vector.broadcast %c24758_i16 : i16 to vector<3x10xi16>
        %257 = vector.broadcast %false : i1 to vector<3x10xi1>
        %258 = vector.broadcast %c1821487250_i32 : i32 to vector<3x10xi32>
        %259 = vector.gather %alloc_6[%108, %c15] [%258], %257, %256 : memref<5x3xi16>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi16> into vector<3x10xi16>
        scf.execute_region {
          affine.store %173, %alloc_7[%c6, %c8] : memref<3x7xi64>
          %282 = memref.realloc %alloc_19 : memref<10xi64> to memref<7xi64>
          vector.print %52 : vector<3x7xf32>
          %283 = index.ceildivs %rank, %c7
          %284 = index.floordivs %116, %c6
          memref.assume_alignment %alloc_12, 1 : memref<3x10xi16>
          vector.print %87 : vector<1xf32>
          %285 = vector.flat_transpose %105 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
          %286 = math.log1p %cst_2 : f32
          %from_elements_40 = tensor.from_elements %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32 : tensor<3x10xi32>
          %287 = math.cos %183 : tensor<5x3xf16>
          %288 = math.log2 %10 : tensor<3x7xf32>
          %289 = arith.maxui %c1322531054_i32, %c1821487250_i32 : i32
          %290 = arith.remf %in, %in : f16
          memref.tensor_store %12, %169 : memref<10x10x7xi1>
          %291 = arith.maxf %cst, %117 : f16
          scf.yield
        }
        %260 = math.tan %cst_2 : f32
        %261 = arith.addf %cst, %in : f16
        %262 = math.cos %cst_2 : f32
        %263 = math.expm1 %14 : tensor<5x3xf16>
        %264 = scf.while (%arg2 = %111) : (vector<5xi1>) -> vector<5xi1> {
          %282 = arith.remf %cst_2, %cst_2 : f32
          %283 = arith.remf %159, %cst_2 : f32
          memref.assume_alignment %46, 8 : memref<3x10xi32>
          %c-14374_i16 = arith.constant -14374 : i16
          %284 = index.floordivs %176, %153
          %285 = arith.ceildivsi %173, %extracted : i64
          %from_elements_40 = tensor.from_elements %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32 : tensor<10x10x7xi32>
          %286 = math.fma %10, %10, %10 : tensor<3x7xf32>
          scf.condition(%false) %110 : vector<5xi1>
        } do {
        ^bb0(%arg2: vector<5xi1>):
          %282 = arith.cmpf uno, %117, %cst : f16
          %283 = vector.reduction <maxf>, %152 : vector<7xf32> into f32
          %284 = vector.create_mask %58, %c11 : vector<3x10xi1>
          %285 = memref.realloc %alloc_19 : memref<10xi64> to memref<5xi64>
          %286 = math.log2 %10 : tensor<3x7xf32>
          %287 = vector.broadcast %c1 : index to vector<10xindex>
          %288 = vector.broadcast %false : i1 to vector<10xi1>
          %289 = vector.broadcast %159 : f32 to vector<10xf32>
          vector.scatter %alloc_18[%c2, %c2] [%287], %288, %289 : memref<3x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
          %290 = math.copysign %cst_2, %cst_0 : f32
          %291 = arith.maxf %cst_3, %cst_1 : f32
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %151, %151, %cst_0 : vector<21xf32>, vector<21xf32> into f32
          %293 = math.log2 %14 : tensor<5x3xf16>
          %294 = math.expm1 %cst_3 : f32
          %295 = vector.broadcast %cst_1 : f32 to vector<5xf32>
          %296 = vector.maskedload %alloc_20[%c3, %c8, %c6], %111, %295 : memref<10x10x7xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
          %c969791159_i32 = arith.constant 969791159 : i32
          %297 = arith.maxf %cst_2, %cst_2 : f32
          vector.print %60 : vector<7xf32>
          %298 = arith.ceildivsi %c-7432_i16, %c-25136_i16 : i16
          scf.yield %110 : vector<5xi1>
        }
        %265 = arith.subi %c-32532_i16, %c-7432_i16 : i16
        %266 = vector.broadcast %c24758_i16 : i16 to vector<3x10xi16>
        memref.store %extracted, %alloc_16[%c2, %c4] : memref<3x7xi64>
        %267 = memref.alloca_scope  -> (f32) {
          %282 = math.ipowi %c24758_i16, %c-7432_i16 : i16
          %283 = index.maxu %160, %c14
          %284 = arith.minsi %c8444_i16, %c-2387_i16 : i16
          %285 = math.tan %cst_0 : f32
          %286 = arith.minsi %c1322531054_i32, %c1821487250_i32 : i32
          %287 = arith.divsi %false, %false : i1
          %288 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 32)>(%c9, %c13, %c13)
          %289 = bufferization.clone %alloc_13 : memref<10x10x7xi64> to memref<10x10x7xi64>
          %290 = arith.subi %c24758_i16, %c8444_i16 : i16
          %291 = vector.flat_transpose %105 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
          %292 = arith.minsi %c-32532_i16, %c-7432_i16 : i16
          %293 = math.absf %183 : tensor<5x3xf16>
          %294 = arith.addf %cst_2, %cst_3 : f32
          %295 = vector.insert %60, %131 [0] : vector<7xf32> into vector<3x7xf32>
          %296 = arith.remsi %c-32532_i16, %c-25136_i16 : i16
          %297 = index.ceildivs %249, %69
          %298 = math.floor %10 : tensor<3x7xf32>
          %299 = index.maxs %90, %c12
          %inserted_40 = tensor.insert %extracted into %13[%c1, %c6, %c4] : tensor<10x10x7xi64>
          %300 = vector.shuffle %131, %64 [1, 3, 5] : vector<3x7xf32>, vector<3x7xf32>
          %rank_41 = tensor.rank %16 : tensor<10x10x7xi64>
          %301 = arith.mulf %cst_0, %cst_3 : f32
          %302 = arith.remsi %false, %false : i1
          %303 = math.log10 %14 : tensor<5x3xf16>
          %304 = vector.broadcast %c1322531054_i32 : i32 to vector<10x10x7xi32>
          %305 = arith.minf %in, %in : f16
          %306 = arith.minsi %c8444_i16, %c8444_i16 : i16
          %307 = index.ceildivu %69, %c3
          %c1_i64 = arith.constant 1 : i64
          %c0_i64 = arith.constant 0 : i64
          %308 = vector.transfer_read %17[%176, %299, %69], %c0_i64 : tensor<10x10x7xi64>, vector<i64>
          %309 = math.log10 %cst_2 : f32
          %310 = arith.andi %c1_i64, %extracted : i64
          %311 = math.absf %in : f16
          memref.alloca_scope.return %cst_1 : f32
        }
        %268 = memref.load %alloc_13[%c2, %c0, %c5] : memref<10x10x7xi64>
        %269 = index.divu %c11, %178
        %270 = math.round %cst_3 : f32
        %271 = vector.extract_strided_slice %73 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
        %rank_38 = tensor.rank %15 : tensor<3x10xi32>
        %272 = vector.broadcast %c15 : index to vector<10xindex>
        %273 = vector.broadcast %false : i1 to vector<10xi1>
        %274 = vector.broadcast %c1819932308_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_5[%c1, %c0] [%272], %273, %274 : memref<5x3xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %275 = vector.broadcast %cst_2 : f32 to vector<2x2xf32>
        %276 = vector.outerproduct %271, %271, %275 {kind = #vector.kind<mul>} : vector<2xf32>, vector<2xf32>
        %277 = arith.shli %c8444_i16, %c-2387_i16 : i16
        %278 = vector.flat_transpose %105 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %279 = vector.extract_strided_slice %172 {offsets = [0], sizes = [1], strides = [1]} : vector<1x7xf32> to vector<1x7xf32>
        %280 = math.log1p %183 : tensor<5x3xf16>
        %281 = vector.flat_transpose %111 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %cst_39 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_39 : f16
      }
    %184 = arith.muli %c1821487250_i32, %c1821487250_i32 : i32
    vector.print %94 : vector<3x7xf32>
    %185 = memref.atomic_rmw mulf %cst_2, %alloc_20[%c1, %c6, %c2] : (f32, memref<10x10x7xf32>) -> f32
    %186 = vector.broadcast %c4 : index to vector<5xindex>
    %187 = vector.broadcast %c-32532_i16 : i16 to vector<5xi16>
    vector.scatter %alloc_9[%c3, %c8, %c3] [%186], %110, %187 : memref<10x10x7xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
    %188 = vector.broadcast %extracted : i64 to vector<3x7xi64>
    %189 = vector.gather %9[%c3, %c3] [%63], %62, %188 : tensor<5x3xi64>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi64> into vector<3x7xi64>
    %190 = vector.broadcast %c24758_i16 : i16 to vector<5x3xi16>
    %true = index.bool.constant true
    %splat = tensor.splat %true : tensor<10x10x7xi1>
    vector.print %29 : vector<3x7xf32>
    %191 = arith.muli %c24758_i16, %c-2387_i16 : i16
    %192 = arith.minf %cst_3, %159 : f32
    %193 = affine.if affine_set<(d0) : (((d0 ceildiv 2) floordiv 4) mod 64 == 0)>(%c5) -> f16 {
      %248 = arith.mulf %cst_2, %cst_0 : f32
      %249 = math.powf %183, %183 : tensor<5x3xf16>
      %250 = vector.broadcast %cst_3 : f32 to vector<21x21xf32>
      %251 = vector.outerproduct %151, %151, %250 {kind = #vector.kind<add>} : vector<21xf32>, vector<21xf32>
      memref.store %cst_0, %alloc_10[%c2, %c5] : memref<3x7xf32>
      %252 = arith.divui %c-7432_i16, %c-2387_i16 : i16
      %253 = affine.max affine_map<(d0) -> (0)>(%c15)
      %254 = math.log %cst_0 : f32
      memref.store %extracted, %alloc_13[%c6, %c6, %c4] : memref<10x10x7xi64>
      affine.yield %117 : f16
    } else {
      %dest_38, %accumulated_value_39 = vector.scan <maxf>, %131, %152 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
      %248 = vector.matrix_multiply %105, %152 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
      %249 = affine.if affine_set<(d0) : (((d0 ceildiv 2) floordiv 4) mod 64 == 0)>(%c9) -> memref<10x10x7xf32> {
        %254 = math.ceil %10 : tensor<3x7xf32>
        %255 = index.sub %c9, %c10
        %256 = affine.max affine_map<(d0, d1, d2) -> (d1, (d1 ceildiv 128) mod 8, -d1, d0)>(%c5, %rank, %c15)
        %257 = math.log1p %cst : f16
        %258 = vector.extract %87[0] : vector<1xf32>
        %259 = arith.minsi %false, %true : i1
        %260 = index.floordivs %c1, %c1
        %261 = arith.divf %cst, %117 : f16
        affine.yield %alloc_20 : memref<10x10x7xf32>
      } else {
        %254 = arith.remf %117, %cst : f16
        %255 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %105, %51, %73 : vector<7xf32>, vector<3x7xf32> into vector<3xf32>
        %256 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
        %257 = vector.outerproduct %73, %73, %256 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
        %258 = index.ceildivs %153, %69
        %259 = arith.divsi %extracted, %173 : i64
        %260 = math.floor %cst : f16
        %261 = vector.transpose %87, [0] : vector<1xf32> to vector<1xf32>
        %262 = math.atan %10 : tensor<3x7xf32>
        affine.yield %alloc_20 : memref<10x10x7xf32>
      }
      %250 = index.sizeof
      %251 = vector.transpose %152, [0] : vector<7xf32> to vector<7xf32>
      %252 = arith.andi %c-2387_i16, %c-7432_i16 : i16
      %253 = vector.splat %c1 : vector<3x7xindex>
      affine.store %c1819932308_i64, %alloc_8[%c8, %c4, %c9] : memref<10x10x7xi64>
      affine.yield %117 : f16
    }
    memref.store %true, %169[%c6, %c9, %c6] : memref<10x10x7xi1>
    vector.print %189 : vector<3x7xi64>
    %194 = math.floor %10 : tensor<3x7xf32>
    memref.copy %alloc_14, %alloc_11 : memref<3x10xi64> to memref<3x10xi64>
    %195 = math.log10 %14 : tensor<5x3xf16>
    scf.index_switch %116 
    case 1 {
      %248 = arith.shli %c-2387_i16, %c24758_i16 : i16
      %249 = math.ctlz %72 : tensor<i64>
      %250 = math.log10 %159 : f32
      %251 = math.exp2 %14 : tensor<5x3xf16>
      %252 = math.tan %14 : tensor<5x3xf16>
      %rank_38 = tensor.rank %183 : tensor<5x3xf16>
      memref.assume_alignment %alloc_9, 1 : memref<10x10x7xi16>
      memref.assume_alignment %alloc_16, 16 : memref<3x7xi64>
      %253 = index.add %108, %c5
      %254 = math.ipowi %c8444_i16, %c-2387_i16 : i16
      %255 = memref.alloca_scope  -> (memref<3x10xi64>) {
        %261 = math.log10 %cst : f16
        %262 = vector.broadcast %c-32532_i16 : i16 to vector<3xi16>
        %263 = vector.multi_reduction <add>, %190, %262 [0] : vector<5x3xi16> to vector<3xi16>
        %264 = bufferization.to_memref %8 : memref<10x10x7xi1>
        %265 = arith.shrui %c24758_i16, %c-32532_i16 : i16
        %rank_39 = tensor.rank %18 : tensor<7x10x10xi64>
        %266 = arith.muli %c1819932308_i64, %173 : i64
        bufferization.dealloc_tensor %8 : tensor<10x10x7xi1>
        %267 = math.log1p %159 : f32
        %268 = arith.remsi %c87979853_i32, %c1322531054_i32 : i32
        %269 = vector.extract_strided_slice %52 {offsets = [1], sizes = [1], strides = [1]} : vector<3x7xf32> to vector<1x7xf32>
        %270 = arith.muli %c-25136_i16, %c8444_i16 : i16
        %271 = memref.atomic_rmw mins %173, %alloc_14[%c0, %c0] : (i64, memref<3x10xi64>) -> i64
        %272 = math.absf %183 : tensor<5x3xf16>
        %from_elements_40 = tensor.from_elements %173, %173, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %extracted, %extracted, %173, %extracted, %173 : tensor<5x3xi64>
        %273 = arith.cmpf ugt, %cst_3, %cst_2 : f32
        %274 = math.absf %159 : f32
        %275 = vector.gather %alloc_15[%58, %c14] [%63], %62, %63 : memref<5x3xi32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi32> into vector<3x7xi32>
        %276 = math.roundeven %cst_3 : f32
        %277 = math.log %10 : tensor<3x7xf32>
        %dest_41, %accumulated_value_42 = vector.scan <minf>, %269, %87 {inclusive = true, reduction_dim = 1 : i64} : vector<1x7xf32>, vector<1xf32>
        %278 = vector.broadcast %false : i1 to vector<5x5xi1>
        %279 = vector.outerproduct %111, %110, %278 {kind = #vector.kind<xor>} : vector<5xi1>, vector<5xi1>
        %280 = math.round %14 : tensor<5x3xf16>
        %281 = index.ceildivu %153, %55
        %282 = index.ceildivu %c4, %c13
        %283 = arith.remsi %173, %c1819932308_i64 : i64
        %284 = vector.broadcast %cst : f16 to vector<3x3xf16>
        %285 = vector.outerproduct %20, %20, %284 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
        %286 = math.rsqrt %159 : f32
        affine.store %extracted, %alloc_16[%c8, %c5] : memref<3x7xi64>
        %287 = math.log1p %cst : f16
        %288 = arith.remf %cst_0, %cst_3 : f32
        %289 = vector.broadcast %95 : index to vector<10xindex>
        %290 = vector.broadcast %true : i1 to vector<10xi1>
        %291 = vector.broadcast %173 : i64 to vector<10xi64>
        vector.scatter %alloc_7[%c0, %c2] [%289], %290, %291 : memref<3x7xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %292 = math.tan %cst_0 : f32
        memref.alloca_scope.return %alloc_11 : memref<3x10xi64>
      }
      %256 = index.divu %45, %c11
      %257 = arith.subi %c-2387_i16, %c-7432_i16 : i16
      %258 = arith.muli %c1821487250_i32, %c1322531054_i32 : i32
      %259 = index.sub %108, %rank
      %260 = math.powf %cst_2, %cst_1 : f32
      scf.yield
    }
    default {
      %248 = math.round %14 : tensor<5x3xf16>
      %249 = memref.load %alloc_14[%c1, %c5] : memref<3x10xi64>
      %250 = affine.if affine_set<(d0) : (((d0 ceildiv 2) floordiv 4) mod 64 == 0)>(%c6) -> i1 {
        %258 = arith.maxsi %extracted, %c1819932308_i64 : i64
        %259 = vector.extract %52[2] : vector<3x7xf32>
        %260 = index.divs %95, %c8
        %261 = arith.divf %cst_2, %cst_2 : f32
        %alloc_43 = memref.alloc() : memref<3x7xi32>
        %262 = arith.addf %cst, %117 : f16
        %263 = vector.splat %c2 : vector<10x10x7xindex>
        %264 = arith.minsi %c-7432_i16, %c-2387_i16 : i16
        affine.yield %true : i1
      } else {
        %splat_43 = tensor.splat %cst : tensor<3x10xf16>
        %258 = vector.broadcast %45 : index to vector<7xindex>
        %259 = vector.broadcast %false : i1 to vector<7xi1>
        %260 = vector.broadcast %117 : f16 to vector<7xf16>
        vector.scatter %alloc_4[%c1, %c1] [%258], %259, %260 : memref<3x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %261 = index.sub %c8, %c10
        %262 = arith.minf %cst_3, %cst_2 : f32
        %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<3x10xi32> into tensor<30xi32>
        %263 = vector.bitcast %131 : vector<3x7xf32> to vector<3x7xf32>
        affine.store %c1819932308_i64, %alloc_14[%c1, %c0] : memref<3x10xi64>
        %264 = vector.flat_transpose %110 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        affine.yield %true : i1
      }
      %251 = vector.reduction <or>, %111 : vector<5xi1> into i1
      %rank_38 = tensor.rank %cast : tensor<?x?xf32>
      %c389546099_i64 = arith.constant 389546099 : i64
      %252 = vector.insertelement %cst_2, %60[%45 : index] : vector<7xf32>
      %253 = math.powf %cst_1, %cst_2 : f32
      %inserted_39 = tensor.insert %extracted into %9[%c2, %c2] : tensor<5x3xi64>
      %from_elements_40 = tensor.from_elements %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32 : tensor<3x10xi32>
      %expanded_41 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<3x7xi1> into tensor<3x7x1xi1>
      %254 = math.powf %14, %183 : tensor<5x3xf16>
      %255 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d2 + d3), d1 floordiv 8, 0, d1 mod 16)>(%181, %58, %95, %160)
      %256 = index.floordivs %160, %c14
      %extracted_42 = tensor.extract %11[%c1, %c1, %c6] : tensor<10x10x7xi16>
      %257 = affine.max affine_map<(d0, d1) -> (d0 floordiv 8 - d0)>(%90, %160)
    }
    %196 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %87, %100, %152 : vector<1xf32>, vector<1x7xf32> into vector<7xf32>
    %197 = arith.maxsi %c1819932308_i64, %c1819932308_i64 : i64
    %198 = arith.minsi %173, %173 : i64
    %199 = arith.minf %cst_2, %cst_1 : f32
    %200 = vector.extract %80[0] : vector<3x7xf32>
    %201 = arith.maxsi %c87979853_i32, %c1821487250_i32 : i32
    %202 = index.floordivs %116, %86
    %203 = affine.max affine_map<(d0, d1, d2) -> (d1 + d2 - 32, d0, (d0 ceildiv 4) ceildiv 4)>(%55, %90, %55)
    %204 = memref.realloc %alloc_19 : memref<10xi64> to memref<10xi64>
    scf.if %true {
      %248 = vector.flat_transpose %200 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %249 = math.log2 %cst_1 : f32
      affine.store %c-7432_i16, %alloc_9[%c2, %c3, %c0] : memref<10x10x7xi16>
      %250 = index.divs %c3, %153
      %inserted_38 = tensor.insert %extracted into %4[%c1, %c0] : tensor<3x10xi64>
      %251 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 mod 8) mod 16 + 2, d0 mod 8)>(%153, %153, %c14, %90)
      %252 = vector.shuffle %62, %62 [0, 1, 3, 5] : vector<3x7xi1>, vector<3x7xi1>
      affine.store %173, %alloc_16[%c9, %c4] : memref<3x7xi64>
    }
    %205 = vector.extract %62[1] : vector<3x7xi1>
    %206 = arith.addf %159, %cst_2 : f32
    %207 = affine.load %alloc_4[%c10, %c10] : memref<3x7xf16>
    %208 = math.log1p %183 : tensor<5x3xf16>
    %209 = arith.cmpf une, %207, %cst : f16
    %210 = scf.while (%arg2 = %20) : (vector<3xf16>) -> vector<3xf16> {
      %248 = math.roundeven %cst_0 : f32
      %249 = math.exp2 %10 : tensor<3x7xf32>
      %from_elements_38 = tensor.from_elements %c-2387_i16, %c-32532_i16, %c-32532_i16, %c-32532_i16, %c-2387_i16, %c8444_i16, %c8444_i16, %c8444_i16, %c-32532_i16, %c24758_i16, %c-32532_i16, %c-2387_i16, %c-2387_i16, %c-2387_i16, %c24758_i16 : tensor<5x3xi16>
      %dest_39, %accumulated_value_40 = vector.scan <minf>, %131, %152 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
      %250 = vector.broadcast %153 : index to vector<5xindex>
      %251 = vector.broadcast %c87979853_i32 : i32 to vector<5xi32>
      vector.scatter %alloc_15[%c4, %c0] [%250], %111, %251 : memref<5x3xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
      %252 = math.fpowi %14, %6 : tensor<5x3xf16>, tensor<5x3xi32>
      %253 = arith.remui %c-32532_i16, %c-32532_i16 : i16
      %254 = math.log %159 : f32
      scf.condition(%true) %20 : vector<3xf16>
    } do {
    ^bb0(%arg2: vector<3xf16>):
      %248 = math.atan %cst_2 : f32
      %249 = arith.andi %173, %extracted : i64
      %250 = math.atan2 %10, %10 : tensor<3x7xf32>
      affine.store %true, %76[%c7, %c11, %c1] : memref<10x10x7xi1>
      %251 = vector.broadcast %117 : f16 to vector<3x7xf16>
      %splat_38 = tensor.splat %cst : tensor<5x3xf16>
      %252 = affine.if affine_set<(d0) : (((d0 ceildiv 2) floordiv 4) mod 64 == 0)>(%c1) -> i32 {
        %from_elements_41 = tensor.from_elements %207, %117, %117, %cst, %117, %117, %207, %cst, %117, %cst, %117, %207, %cst, %117, %207, %207, %207, %cst, %207, %207, %117, %207, %cst, %cst, %207, %207, %117, %207, %207, %207 : tensor<3x10xf16>
        %262 = arith.mulf %cst_0, %cst_0 : f32
        %263 = arith.minf %159, %cst_2 : f32
        %264 = vector.bitcast %60 : vector<7xf32> to vector<7xf32>
        %265 = vector.broadcast %178 : index to vector<5xindex>
        %266 = vector.broadcast %173 : i64 to vector<5xi64>
        vector.scatter %alloc_5[%c2, %c1] [%265], %110, %266 : memref<5x3xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %267 = vector.broadcast %cst_3 : f32 to vector<3x7xf32>
        %268 = vector.fma %267, %29, %52 : vector<3x7xf32>
        %269 = math.log10 %from_elements_41 : tensor<3x10xf16>
        %extracted_42 = tensor.extract %15[%c2, %c9] : tensor<3x10xi32>
        affine.yield %c1322531054_i32 : i32
      } else {
        %262 = vector.broadcast %c24758_i16 : i16 to vector<3x7xi16>
        %263 = arith.xori %c1819932308_i64, %extracted : i64
        %264 = math.log %cst_0 : f32
        %265 = arith.muli %c-32532_i16, %c-32532_i16 : i16
        %266 = arith.shrui %c-7432_i16, %c-7432_i16 : i16
        %267 = index.floordivs %c3, %153
        %268 = memref.atomic_rmw muli %c1819932308_i64, %alloc_8[%c8, %c3, %c3] : (i64, memref<10x10x7xi64>) -> i64
        %269 = arith.minsi %c1819932308_i64, %c1819932308_i64 : i64
        affine.yield %c1821487250_i32 : i32
      }
      %253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed : tensor<7x10x10xi64>) outs(%13 : tensor<10x10x7xi64>) {
      ^bb0(%in: i64, %out: i64):
        %262 = math.floor %207 : f16
        %263 = index.maxs %c13, %c13
        %264 = arith.maxf %cst_3, %159 : f32
        %265 = affine.max affine_map<(d0) -> (4, d0 - 9, d0 - 1, d0 - 1)>(%176)
        %266 = vector.shuffle %87, %151 [1, 9, 11, 17] : vector<1xf32>, vector<21xf32>
        %267 = vector.extract %120[2] : vector<3x7xf32>
        vector.print %87 : vector<1xf32>
        %268 = arith.shrui %out, %173 : i64
        %269 = vector.broadcast %176 : index to vector<10xindex>
        %270 = vector.broadcast %true : i1 to vector<10xi1>
        %271 = vector.broadcast %c-2387_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_9[%c9, %c3, %c5] [%269], %270, %271 : memref<10x10x7xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        vector.print %172 : vector<1x7xf32>
        %272 = memref.load %alloc_6[%c3, %c1] : memref<5x3xi16>
        %273 = arith.remf %cst_1, %cst_2 : f32
        %274 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %80, %80, %274 : vector<3x7xf32>, vector<3x7xf32> into vector<7x7xf32>
        %276 = arith.minf %207, %117 : f16
        %277 = arith.muli %c87979853_i32, %c1821487250_i32 : i32
        %278 = math.log1p %cst : f16
        %279 = vector.broadcast %c8444_i16 : i16 to vector<3x10xi16>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_41 = arith.constant 0 : i64
        %280 = vector.transfer_read %2[%116, %c1], %c0_i64_41 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x7xi64>, vector<10xi64>
        %281 = vector.load %46[%c0, %c8] : memref<3x10xi32>, vector<3x7xi32>
        %282 = index.ceildivu %108, %178
        %283 = math.absf %cst_2 : f32
        %284 = math.tan %cst_3 : f32
        memref.copy %alloc_8, %alloc_13 : memref<10x10x7xi64> to memref<10x10x7xi64>
        %285 = vector.splat %153 : vector<3x7xindex>
        %286 = vector.broadcast %cst_2 : f32 to vector<5x3xf32>
        %287 = vector.fma %286, %286, %286 : vector<5x3xf32>
        %288 = vector.broadcast %cst : f16 to vector<5x3xf16>
        %289 = vector.broadcast %false : i1 to vector<5x3xi1>
        %290 = vector.broadcast %c1322531054_i32 : i32 to vector<5x3xi32>
        %291 = vector.gather %183[%c1, %282] [%290], %289, %288 : tensor<5x3xf16>, vector<5x3xi32>, vector<5x3xi1>, vector<5x3xf16> into vector<5x3xf16>
        %292 = arith.cmpf olt, %cst_3, %159 : f32
        %293 = math.absf %183 : tensor<5x3xf16>
        %294 = math.log1p %159 : f32
        %295 = math.ceil %207 : f16
        %296 = index.divs %108, %31
        %297 = arith.shrui %c-32532_i16, %c8444_i16 : i16
        linalg.yield %in : i64
      } -> tensor<10x10x7xi64>
      %alloc_39 = memref.alloc() : memref<3x5xf16>
      %254 = tensor.empty() : tensor<5x5xf16>
      %255 = linalg.matmul ins(%splat_38, %alloc_39 : tensor<5x3xf16>, memref<3x5xf16>) outs(%254 : tensor<5x5xf16>) -> tensor<5x5xf16>
      %256 = math.atan2 %159, %cst_1 : f32
      %257 = vector.broadcast %c1821487250_i32 : i32 to vector<i32>
      vector.transfer_write %257, %alloc_15[%c6, %181] : vector<i32>, memref<5x3xi32>
      %258 = math.tan %14 : tensor<5x3xf16>
      %259 = vector.load %alloc_19[%c5] : memref<10xi64>, vector<5x3xi64>
      %260 = math.log10 %254 : tensor<5x5xf16>
      %261 = affine.for %arg3 = 0 to 42 iter_args(%arg4 = %rank) -> (index) {
        affine.yield %45 : index
      }
      %extracted_40 = tensor.extract %72[] : tensor<i64>
      scf.yield %20 : vector<3xf16>
    }
    %211 = vector.matrix_multiply %105, %73 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<7xf32>, vector<3xf32>) -> vector<21xf32>
    %212 = vector.broadcast %cst_2 : f32 to vector<5x3xf32>
    %213 = math.copysign %10, %10 : tensor<3x7xf32>
    %214 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 mod 128) * 16 >= 0, d3 - d2 == 0, 0 == 0, (d3 ceildiv 2) * 16 >= 0)>(%c9, %c11, %c0, %c12) -> memref<10x10x7xf32> {
      %248 = vector.bitcast %20 : vector<3xf16> to vector<3xf16>
      %249 = arith.ceildivsi %c1322531054_i32, %c1821487250_i32 : i32
      %250 = arith.andi %c-32532_i16, %c24758_i16 : i16
      %251 = index.ceildivu %45, %153
      %inserted_38 = tensor.insert %117 into %183[%c2, %c0] : tensor<5x3xf16>
      %252 = vector.splat %c9 : vector<5x3xindex>
      %253 = arith.divsi %true, %true : i1
      %254 = arith.divsi %c1819932308_i64, %c1819932308_i64 : i64
      affine.yield %alloc_20 : memref<10x10x7xf32>
    } else {
      memref.assume_alignment %alloc_6, 8 : memref<5x3xi16>
      %248 = arith.floordivsi %c1821487250_i32, %c1322531054_i32 : i32
      %249 = math.floor %207 : f16
      %250 = math.ipowi %1, %1 : tensor<3x7xi1>
      %251 = index.ceildivs %c4, %153
      %252 = vector.multi_reduction <minf>, %121, %73 [1] : vector<3x7xf32> to vector<3xf32>
      %253 = vector.insertelement %extracted, %123[] : vector<i64>
      %254 = index.floordivs %c15, %c13
      affine.yield %alloc_20 : memref<10x10x7xf32>
    }
    scf.index_switch %c3 
    case 1 {
      %248 = index.floordivs %c4, %c3
      %249 = index.sizeof
      %250 = vector.matrix_multiply %152, %73 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<7xf32>, vector<3xf32>) -> vector<21xf32>
      %251 = vector.multi_reduction <mul>, %29, %73 [1] : vector<3x7xf32> to vector<3xf32>
      %252 = math.sqrt %207 : f16
      %253 = tensor.empty() : tensor<10x10x7xi1>
      %mapped_38 = linalg.map ins(%12 : tensor<10x10x7xi1>) outs(%253 : tensor<10x10x7xi1>)
        (%in: i1) {
          %264 = vector.flat_transpose %60 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
          %265 = index.divu %c3, %c6
          vector.print %212 : vector<5x3xf32>
          affine.store %173, %alloc_13[%c1, %c13, %c3] : memref<10x10x7xi64>
          %266 = vector.matrix_multiply %73, %200 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xf32>, vector<7xf32>) -> vector<21xf32>
          %267 = arith.divsi %c-25136_i16, %c-2387_i16 : i16
          %268 = vector.extract_strided_slice %93 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xf32> to vector<3x7xf32>
          %269 = math.log2 %14 : tensor<5x3xf16>
          %270 = math.log1p %cst_1 : f32
          %271 = index.ceildivu %203, %rank
          %272 = vector.broadcast %cst_2 : f32 to vector<5xf32>
          %273 = vector.maskedload %alloc_18[%c2, %c2], %111, %272 : memref<3x10xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
          %274 = arith.addf %207, %cst : f16
          %275 = arith.cmpf ole, %117, %117 : f16
          %276 = arith.remf %cst, %207 : f16
          %277 = memref.atomic_rmw muli %c1819932308_i64, %alloc_5[%c0, %c1] : (i64, memref<5x3xi64>) -> i64
          %278 = arith.maxf %cst_2, %cst_1 : f32
          %279 = vector.broadcast %c-32532_i16 : i16 to vector<10x10x7xi16>
          %280 = arith.ori %c1322531054_i32, %c87979853_i32 : i32
          %281 = vector.matrix_multiply %250, %273 {lhs_columns = 1 : i32, lhs_rows = 21 : i32, rhs_columns = 5 : i32} : (vector<21xf32>, vector<5xf32>) -> vector<105xf32>
          affine.store %117, %alloc[%c6, %c8] : memref<3x10xf16>
          %282 = index.ceildivu %c12, %202
          %283 = math.exp2 %117 : f16
          %splat_39 = tensor.splat %cst_2 : tensor<3x10xf32>
          %284 = math.log %cst_0 : f32
          %285 = tensor.empty(%282, %90) : tensor<?x?x7xi16>
          %286 = index.floordivs %55, %c15
          %287 = vector.broadcast %true : i1 to vector<7x7xi1>
          %288 = vector.outerproduct %205, %205, %287 {kind = #vector.kind<maxui>} : vector<7xi1>, vector<7xi1>
          %289 = arith.mulf %cst_3, %cst_1 : f32
          %290 = math.log2 %10 : tensor<3x7xf32>
          %291 = vector.extract %190[2] : vector<5x3xi16>
          %292 = vector.reduction <add>, %273 : vector<5xf32> into f32
          %293 = arith.subi %c-32532_i16, %c-7432_i16 : i16
          %true_40 = arith.constant true
          linalg.yield %true_40 : i1
        }
      %254 = math.log1p %10 : tensor<3x7xf32>
      %255 = math.sqrt %10 : tensor<3x7xf32>
      %256 = index.ceildivs %31, %178
      %257 = math.ipowi %22, %22 : tensor<i64>
      %258 = index.floordivs %c1, %116
      %259 = arith.divsi %c1819932308_i64, %173 : i64
      %260 = math.ceil %183 : tensor<5x3xf16>
      %261 = arith.divf %cst_1, %cst_2 : f32
      %262 = vector.matrix_multiply %105, %250 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<7xf32>, vector<21xf32>) -> vector<3xf32>
      %263 = vector.insert %cst_0, %151 [11] : f32 into vector<21xf32>
      scf.yield
    }
    default {
      %248 = math.copysign %cst_3, %cst_3 : f32
      affine.store %extracted, %alloc_19[%c10] : memref<10xi64>
      %249 = vector.broadcast %159 : f32 to vector<10x10x7xf32>
      %250 = vector.fma %249, %249, %249 : vector<10x10x7xf32>
      %251 = vector.matrix_multiply %60, %151 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<7xf32>, vector<21xf32>) -> vector<3xf32>
      %252 = index.ceildivs %c4, %130
      %253 = vector.broadcast %cst_2 : f32 to vector<3x10xf32>
      %254 = vector.fma %253, %253, %253 : vector<3x10xf32>
      memref.copy %76, %169 : memref<10x10x7xi1> to memref<10x10x7xi1>
      %alloc_38 = memref.alloc() : memref<3x10xi1>
      memref.copy %alloc_17, %alloc_38 : memref<3x10xi1> to memref<3x10xi1>
      %255 = index.maxs %c10, %c11
      %256 = math.log1p %cst_3 : f32
      %inserted_39 = tensor.insert %c1821487250_i32 into %15[%c1, %c3] : tensor<3x10xi32>
      %257 = vector.broadcast %cst_3 : f32 to vector<5x3xf32>
      %alloc_40 = memref.alloc() : memref<10x10x7xi32>
      memref.tensor_store %5, %alloc_40 : memref<10x10x7xi32>
      %258 = index.floordivs %31, %55
      %259 = arith.remf %117, %117 : f16
      %260 = arith.remui %true, %true : i1
    }
    %215 = vector.insert %cst_2, %151 [4] : f32 into vector<21xf32>
    %216 = math.absf %10 : tensor<3x7xf32>
    %217 = math.log10 %cst_3 : f32
    %splat_33 = tensor.splat %cst_1 : tensor<3x10xf32>
    memref.copy %169, %76 : memref<10x10x7xi1> to memref<10x10x7xi1>
    memref.store %extracted, %alloc_13[%c0, %c8, %c6] : memref<10x10x7xi64>
    %218 = scf.if %false -> (memref<3x7xi16>) {
      %248 = vector.broadcast %55 : index to vector<3xindex>
      %249 = vector.broadcast %true : i1 to vector<3xi1>
      %250 = vector.broadcast %c1819932308_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_8[%c6, %c0, %c6] [%248], %249, %250 : memref<10x10x7xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      %251 = math.log2 %splat_33 : tensor<3x10xf32>
      %252 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
      %253 = vector.outerproduct %200, %60, %252 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
      %254 = vector.broadcast %cst_2 : f32 to vector<5xf32>
      %dest_38, %accumulated_value_39 = vector.scan <mul>, %212, %254 {inclusive = true, reduction_dim = 1 : i64} : vector<5x3xf32>, vector<5xf32>
      %255 = arith.divsi %true, %false : i1
      %256 = vector.create_mask %58, %86 : vector<5x3xi1>
      %257 = arith.mulf %117, %117 : f16
      %258 = arith.divf %cst_0, %cst_1 : f32
      %alloc_40 = memref.alloc() : memref<3x7xi16>
      scf.yield %alloc_40 : memref<3x7xi16>
    } else {
      %248 = arith.remf %cst_3, %cst_1 : f32
      %249 = math.ctlz %transposed : tensor<7x10x10xi64>
      %alloc_38 = memref.alloc() : memref<3x10xi32>
      memref.copy %46, %alloc_38 : memref<3x10xi32> to memref<3x10xi32>
      vector.print %121 : vector<3x7xf32>
      %250 = vector.broadcast %extracted : i64 to vector<3x10xi64>
      %251 = vector.broadcast %false : i1 to vector<3x10xi1>
      %252 = vector.broadcast %c1821487250_i32 : i32 to vector<3x10xi32>
      %253 = vector.gather %13[%67, %69, %c13] [%252], %251, %250 : tensor<10x10x7xi64>, vector<3x10xi32>, vector<3x10xi1>, vector<3x10xi64> into vector<3x10xi64>
      %from_elements_39 = tensor.from_elements %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %extracted, %173, %c1819932308_i64, %173, %173, %173, %extracted, %extracted, %173, %extracted, %extracted, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %173, %173, %c1819932308_i64, %173, %c1819932308_i64, %173, %173, %173, %173, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %extracted, %173, %extracted, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %173, %173, %extracted, %173, %173, %173, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %173, %c1819932308_i64, %173, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %173, %c1819932308_i64, %173, %c1819932308_i64, %173, %extracted, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %c1819932308_i64, %extracted, %173, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %173, %173, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %173, %173, %173, %173, %extracted, %c1819932308_i64, %extracted, %173, %173, %173, %173, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %extracted, %173, %extracted, %extracted, %c1819932308_i64, %extracted, %extracted, %173, %173, %173, %extracted, %173, %173, %173, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %173, %extracted, %c1819932308_i64, %extracted, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %173, %extracted, %173, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %c1819932308_i64, %173, %extracted, %173, %c1819932308_i64, %173, %c1819932308_i64, %extracted, %173, %173, %c1819932308_i64, %173, %173, %extracted, %173, %173, %extracted, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %173, %extracted, %extracted, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted, %173, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %173, %173, %extracted, %173, %extracted, %173, %173, %extracted, %173, %173, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %173, %173, %c1819932308_i64, %173, %extracted, %173, %173, %extracted, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %173, %173, %173, %c1819932308_i64, %c1819932308_i64, %173, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %173, %173, %173, %173, %extracted, %c1819932308_i64, %173, %c1819932308_i64, %173, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %extracted, %173, %extracted, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %173, %173, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %extracted, %173, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %173, %173, %extracted, %173, %173, %173, %extracted, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %173, %173, %173, %extracted, %c1819932308_i64, %extracted, %173, %173, %c1819932308_i64, %173, %c1819932308_i64, %extracted, %173, %c1819932308_i64, %extracted, %173, %173, %173, %173, %extracted, %173, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %173, %extracted, %173, %173, %extracted, %c1819932308_i64, %173, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %extracted, %173, %extracted, %173, %extracted, %extracted, %extracted, %extracted, %extracted, %c1819932308_i64, %173, %173, %extracted, %173, %extracted, %173, %173, %173, %c1819932308_i64, %173, %173, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %c1819932308_i64, %extracted, %173, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %173, %extracted, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64, %173, %173, %c1819932308_i64, %173, %extracted, %c1819932308_i64, %extracted, %173, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %173, %extracted, %extracted, %173, %173, %extracted, %extracted, %extracted, %173, %173, %173, %extracted, %c1819932308_i64, %extracted, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %173, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %extracted, %extracted, %173, %c1819932308_i64, %extracted, %c1819932308_i64, %173, %extracted, %173, %c1819932308_i64, %extracted, %173, %173, %extracted, %c1819932308_i64, %extracted, %extracted, %extracted, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %173, %extracted, %extracted, %173, %extracted, %173, %c1819932308_i64, %c1819932308_i64, %173, %c1819932308_i64, %173, %173, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %173, %173, %173, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %173, %extracted, %173, %173, %c1819932308_i64, %173, %extracted, %173, %173, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %extracted, %c1819932308_i64, %c1819932308_i64, %extracted, %173, %extracted, %extracted, %c1819932308_i64, %extracted, %173, %173, %173, %173, %extracted, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %173, %c1819932308_i64, %extracted, %extracted, %extracted, %c1819932308_i64, %extracted, %173, %173, %extracted, %c1819932308_i64, %173, %173, %c1819932308_i64, %173, %c1819932308_i64, %c1819932308_i64, %c1819932308_i64, %extracted, %c1819932308_i64, %c1819932308_i64 : tensor<10x10x7xi64>
      %254 = vector.multi_reduction <mul>, %29, %131 [] : vector<3x7xf32> to vector<3x7xf32>
      %255 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %200, %64, %73 : vector<7xf32>, vector<3x7xf32> into vector<3xf32>
      %alloc_40 = memref.alloc() : memref<3x7xi16>
      scf.yield %alloc_40 : memref<3x7xi16>
    }
    %219 = vector.insert %205, %62 [0] : vector<7xi1> into vector<3x7xi1>
    %220 = vector.insert %false, %110 [2] : i1 into vector<5xi1>
    %221 = memref.atomic_rmw addf %159, %alloc_18[%c2, %c8] : (f32, memref<3x10xf32>) -> f32
    %222 = math.round %splat_33 : tensor<3x10xf32>
    %223 = affine.for %arg2 = 0 to 82 iter_args(%arg3 = %81) -> (tensor<3x10xi32>) {
      affine.yield %15 : tensor<3x10xi32>
    }
    %224 = arith.remsi %c1322531054_i32, %c1821487250_i32 : i32
    %225 = math.floor %cst_1 : f32
    memref.store %c-7432_i16, %218[%c1, %c0] : memref<3x7xi16>
    %226 = arith.divf %117, %cst : f16
    %227 = arith.subi %true, %true : i1
    %228 = vector.broadcast %extracted : i64 to vector<3x10xi64>
    %229 = math.log %14 : tensor<5x3xf16>
    vector.print %105 : vector<7xf32>
    %230 = math.floor %cst_0 : f32
    scf.execute_region {
      %248 = math.ctlz %17 : tensor<10x10x7xi64>
      memref.tensor_store %2, %alloc_7 : memref<3x7xi64>
      %249 = arith.floordivsi %c24758_i16, %c-32532_i16 : i16
      %250 = vector.insert %105, %120 [2] : vector<7xf32> into vector<3x7xf32>
      scf.execute_region {
        %259 = arith.divsi %c-25136_i16, %c-25136_i16 : i16
        %260 = vector.broadcast %c1819932308_i64 : i64 to vector<10x10x7xi64>
        %261 = vector.broadcast %false : i1 to vector<10x10x7xi1>
        %262 = vector.broadcast %c1322531054_i32 : i32 to vector<10x10x7xi32>
        %263 = vector.gather %from_elements_31[%69, %130] [%262], %261, %260 : tensor<3x10xi64>, vector<10x10x7xi32>, vector<10x10x7xi1>, vector<10x10x7xi64> into vector<10x10x7xi64>
        %264 = index.add %90, %c14
        %from_elements_39 = tensor.from_elements %c-2387_i16, %c8444_i16, %c-2387_i16, %c8444_i16, %c-7432_i16, %c-32532_i16, %c-2387_i16, %c-2387_i16, %c-32532_i16, %c-2387_i16, %c-32532_i16, %c24758_i16, %c-2387_i16, %c8444_i16, %c-7432_i16, %c8444_i16, %c-2387_i16, %c8444_i16, %c-7432_i16, %c-2387_i16, %c-25136_i16 : tensor<3x7xi16>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %265 = vector.transfer_read %alloc_14[%181, %45], %c0_i64 : memref<3x10xi64>, vector<i64>
        %266 = arith.divsi %c-7432_i16, %c-2387_i16 : i16
        %267 = bufferization.to_memref %4 : memref<3x10xi64>
        %268 = math.ctlz %15 : tensor<3x10xi32>
        %269 = arith.minsi %c8444_i16, %c24758_i16 : i16
        %270 = arith.remf %cst_3, %cst_2 : f32
        memref.assume_alignment %alloc_8, 4 : memref<10x10x7xi64>
        %271 = math.floor %cst_2 : f32
        %272 = arith.andi %c1821487250_i32, %c1322531054_i32 : i32
        %273 = vector.splat %31 : vector<3x10xindex>
        affine.store %c1819932308_i64, %alloc_16[%c11, %c0] : memref<3x7xi64>
        %274 = arith.remf %cst_0, %cst_3 : f32
        scf.yield
      }
      scf.index_switch %c12 
      case 1 {
        %259 = arith.shrui %c-7432_i16, %c-25136_i16 : i16
        %260 = bufferization.to_tensor %alloc_9 : memref<10x10x7xi16>
        %261 = index.ceildivu %116, %31
        memref.assume_alignment %alloc_19, 16 : memref<10xi64>
        %262 = arith.andi %c-32532_i16, %c-25136_i16 : i16
        %263 = math.ceil %cst_1 : f32
        %264 = vector.extract_strided_slice %80 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xf32> to vector<3x7xf32>
        %265 = vector.multi_reduction <maxf>, %200, %60 [] : vector<7xf32> to vector<7xf32>
        %266 = vector.broadcast %55 : index to vector<5xindex>
        %267 = vector.broadcast %c-2387_i16 : i16 to vector<5xi16>
        vector.scatter %alloc_9[%c3, %c5, %c4] [%266], %111, %267 : memref<10x10x7xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %268 = math.tan %cst_3 : f32
        %269 = vector.extract_strided_slice %212 {offsets = [3], sizes = [2], strides = [1]} : vector<5x3xf32> to vector<2x3xf32>
        %270 = math.floor %10 : tensor<3x7xf32>
        vector.print %151 : vector<21xf32>
        %271 = vector.insert %cst_0, %211 [20] : f32 into vector<21xf32>
        %272 = tensor.empty() : tensor<5x7xi64>
        %273 = linalg.matmul ins(%9, %2 : tensor<5x3xi64>, tensor<3x7xi64>) outs(%272 : tensor<5x7xi64>) -> tensor<5x7xi64>
        %274 = vector.broadcast %c-32532_i16 : i16 to vector<10x10x7xi16>
        scf.yield
      }
      default {
        %259 = arith.floordivsi %true, %false : i1
        %260 = arith.cmpf oge, %cst, %207 : f16
        %261 = tensor.empty() : tensor<3x10xi1>
        %262 = math.log %207 : f16
        %263 = vector.reduction <mul>, %105 : vector<7xf32> into f32
        %264 = vector.extract %93[0] : vector<3x7xf32>
        %265 = arith.andi %173, %173 : i64
        %266 = vector.extract_strided_slice %80 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xf32> to vector<2x7xf32>
        %rank_39 = tensor.rank %23 : tensor<i64>
        %267 = arith.floordivsi %c8444_i16, %c-32532_i16 : i16
        vector.print %111 : vector<5xi1>
        %268 = vector.broadcast %cst_2 : f32 to vector<3x10xf32>
        %269 = vector.fma %268, %268, %268 : vector<3x10xf32>
        %270 = arith.minsi %c-2387_i16, %c24758_i16 : i16
        %271 = arith.mulf %159, %cst_2 : f32
        memref.store %cst_1, %alloc_10[%c2, %c3] : memref<3x7xf32>
        %272 = index.ceildivu %90, %176
      }
      %251 = index.ceildivs %45, %c14
      %252 = math.copysign %14, %14 : tensor<5x3xf16>
      %253 = arith.divsi %c-32532_i16, %c-25136_i16 : i16
      %254 = arith.ceildivsi %c-25136_i16, %c-25136_i16 : i16
      %255 = affine.load %alloc[%c5, %c11] : memref<3x10xf16>
      %256 = index.floordivs %108, %c1
      affine.store %cst_3, %alloc_10[%c7, %c2] : memref<3x7xf32>
      %from_elements_38 = tensor.from_elements %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1322531054_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c87979853_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32 : tensor<3x10xi32>
      %257 = arith.subi %173, %173 : i64
      %258 = arith.floordivsi %c1819932308_i64, %c1819932308_i64 : i64
      scf.yield
    }
    %231 = arith.divsi %c-2387_i16, %c-2387_i16 : i16
    %232 = math.powf %159, %cst_0 : f32
    %233 = math.log %117 : f16
    %234 = vector.broadcast %159 : f32 to vector<10x10x7xf32>
    %235 = vector.fma %234, %234, %234 : vector<10x10x7xf32>
    %inserted_34 = tensor.insert %extracted into %13[%c2, %c6, %c1] : tensor<10x10x7xi64>
    %236 = affine.max affine_map<(d0, d1, d2) -> (((d1 mod 4) ceildiv 128) mod 2 - d2 floordiv 4, d1, (d1 * 64) floordiv 128)>(%c11, %181, %c9)
    %237 = vector.flat_transpose %200 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
    %from_elements_35 = tensor.from_elements %c1821487250_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1322531054_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c87979853_i32, %c1821487250_i32, %c1322531054_i32, %c1821487250_i32, %c1322531054_i32, %c87979853_i32, %c1322531054_i32, %c1821487250_i32, %c1821487250_i32 : tensor<3x10xi32>
    %238 = arith.remui %c24758_i16, %c-2387_i16 : i16
    memref.store %c1819932308_i64, %alloc_19[%c9] : memref<10xi64>
    affine.store %c1821487250_i32, %46[%c4, %c13] : memref<3x10xi32>
    %239 = bufferization.to_memref %8 : memref<10x10x7xi1>
    %240 = arith.floordivsi %c1819932308_i64, %c1819932308_i64 : i64
    %241 = index.floordivs %86, %130
    %242 = index.casts %c87979853_i32 : i32 to index
    %243 = index.ceildivu %c15, %c0
    %244 = tensor.empty() : tensor<10x10x7xi32>
    %245 = linalg.copy ins(%5 : tensor<10x10x7xi32>) outs(%244 : tensor<10x10x7xi32>) -> tensor<10x10x7xi32>
    %246 = tensor.empty() : tensor<10x3xf32>
    %transposed_36 = linalg.transpose ins(%alloc_18 : memref<3x10xf32>) outs(%246 : tensor<10x3xf32>) permutation = [1, 0] 
    %alloc_37 = memref.alloc() : memref<f16>
    linalg.reduce ins(%alloc : memref<3x10xf16>) outs(%alloc_37 : memref<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %248 = math.floor %splat_33 : tensor<3x10xf32>
        %249 = math.log1p %183 : tensor<5x3xf16>
        %expanded_38 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<10x10x7xi64> into tensor<10x10x7x1xi64>
        %250 = vector.extract_strided_slice %110 {offsets = [2], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
        %251 = arith.divf %init, %cst : f16
        %252 = vector.insertelement %cst_2, %105[%67 : index] : vector<7xf32>
        %253 = index.divs %153, %c11
        %254 = vector.multi_reduction <xor>, %111, %true [0] : vector<5xi1> to i1
        %cst_39 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_39 : f16
      }
    scf.parallel (%arg2, %arg3) = (%c12, %178) to (%202, %c12) step (%c11, %c15) {
      %248 = arith.maxsi %c1819932308_i64, %extracted : i64
      %249 = vector.extract_strided_slice %120 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xf32> to vector<2x7xf32>
      %250 = vector.splat %false : vector<3x10xi1>
      %false_38 = arith.constant false
      %251 = math.exp2 %183 : tensor<5x3xf16>
      %252 = arith.muli %c-2387_i16, %c8444_i16 : i16
      %253 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
      %254 = vector.outerproduct %237, %200, %253 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
      %255 = tensor.empty() : tensor<7xi1>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%255, %255, %255 : tensor<7xi1>, tensor<7xi1>, tensor<7xi1>) outs(%0 : tensor<10x10x7xi1>) {
      ^bb0(%in: i1, %in_39: i1, %in_40: i1, %out: i1):
        %267 = vector.flat_transpose %105 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %268 = index.floordivs %181, %241
        %269 = vector.broadcast %cst_2 : f32 to vector<10x10x7xf32>
        %270 = arith.mulf %117, %cst : f16
        %271 = math.round %cst_1 : f32
        %272 = math.floor %cst_3 : f32
        %273 = arith.remui %c24758_i16, %c-7432_i16 : i16
        %274 = vector.broadcast %in_40 : i1 to vector<3x7xi1>
        %275 = vector.extract_strided_slice %64 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xf32> to vector<2x7xf32>
        %276 = arith.remf %117, %207 : f16
        %277 = vector.multi_reduction <minf>, %105, %200 [] : vector<7xf32> to vector<7xf32>
        %278 = math.powf %splat_33, %splat_33 : tensor<3x10xf32>
        vector.print %200 : vector<7xf32>
        %279 = vector.broadcast %c1821487250_i32 : i32 to vector<i32>
        %280 = vector.transfer_write %279, %5[%c12, %c5, %130] : vector<i32>, tensor<10x10x7xi32>
        %281 = math.ceil %cst : f16
        %282 = arith.divsi %in, %in : i1
        %283 = arith.shli %c-7432_i16, %c-2387_i16 : i16
        %284 = index.divs %c0, %67
        %285 = affine.load %alloc_16[%c12, %c8] : memref<3x7xi64>
        %286 = vector.reduction <mul>, %237 : vector<7xf32> into f32
        %287 = bufferization.to_memref %72 : memref<i64>
        %288 = vector.load %alloc_8[%c9, %c9, %c4] : memref<10x10x7xi64>, vector<3x7xi64>
        %289 = memref.atomic_rmw minu %285, %alloc_5[%c4, %c1] : (i64, memref<5x3xi64>) -> i64
        %alloc_41 = memref.alloc() : memref<3x10xi32>
        memref.copy %46, %alloc_41 : memref<3x10xi32> to memref<3x10xi32>
        %290 = arith.ceildivsi %c-32532_i16, %c-32532_i16 : i16
        %291 = vector.broadcast %c8444_i16 : i16 to vector<5xi16>
        %292 = vector.maskedload %alloc_9[%c3, %c1, %c5], %110, %291 : memref<10x10x7xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        memref.store %c-32532_i16, %alloc_9[%c2, %c7, %c3] : memref<10x10x7xi16>
        %293 = arith.divf %cst_3, %cst_1 : f32
        %294 = arith.maxsi %c-25136_i16, %c24758_i16 : i16
        %295 = arith.andi %c8444_i16, %c-25136_i16 : i16
        memref.copy %alloc_8, %alloc_13 : memref<10x10x7xi64> to memref<10x10x7xi64>
        %true_42 = arith.constant true
        %false_43 = arith.constant false
        %296 = vector.transfer_read %76[%153, %c10, %176], %false_43 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : memref<10x10x7xi1>, vector<7x10xi1>
        linalg.yield %true_42 : i1
      } -> tensor<10x10x7xi1>
      %257 = vector.multi_reduction <maxf>, %249, %159 [0, 1] : vector<2x7xf32> to f32
      %258 = math.fma %cst_1, %cst_0, %159 : f32
      %259 = math.log %cst_3 : f32
      %260 = arith.remf %cst_1, %cst_3 : f32
      memref.tensor_store %2, %alloc_16 : memref<3x7xi64>
      %261 = arith.maxf %cst_2, %257 : f32
      %262 = vector.broadcast %cst_0 : f32 to vector<5xf32>
      %263 = vector.multi_reduction <maxf>, %212, %262 [1] : vector<5x3xf32> to vector<5xf32>
      %264 = vector.broadcast %95 : index to vector<10xindex>
      %265 = vector.broadcast %false : i1 to vector<10xi1>
      %266 = vector.broadcast %c-2387_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_9[%c0, %c6, %c5] [%264], %265, %266 : memref<10x10x7xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      scf.yield
    }
    %247 = affine.vector_load %alloc_37[] : memref<f16>, vector<5xf16>
    affine.vector_store %205, %169[%116, %c15, %203] : memref<10x10x7xi1>, vector<7xi1>
    vector.print %20 : vector<3xf16>
    vector.print %29 : vector<3x7xf32>
    vector.print %51 : vector<3x7xf32>
    vector.print %52 : vector<3x7xf32>
    vector.print %60 : vector<7xf32>
    vector.print %62 : vector<3x7xi1>
    vector.print %63 : vector<3x7xi32>
    vector.print %64 : vector<3x7xf32>
    vector.print %73 : vector<3xf32>
    vector.print %80 : vector<3x7xf32>
    vector.print %87 : vector<1xf32>
    vector.print %93 : vector<3x7xf32>
    vector.print %94 : vector<3x7xf32>
    vector.print %100 : vector<1x7xf32>
    vector.print %105 : vector<7xf32>
    vector.print %110 : vector<5xi1>
    vector.print %111 : vector<5xi1>
    vector.print %120 : vector<3x7xf32>
    vector.print %121 : vector<3x7xf32>
    vector.print %123 : vector<i64>
    vector.print %131 : vector<3x7xf32>
    vector.print %151 : vector<21xf32>
    vector.print %152 : vector<7xf32>
    vector.print %172 : vector<1x7xf32>
    vector.print %188 : vector<3x7xi64>
    vector.print %189 : vector<3x7xi64>
    vector.print %190 : vector<5x3xi16>
    vector.print %200 : vector<7xf32>
    vector.print %205 : vector<7xi1>
    vector.print %211 : vector<21xf32>
    vector.print %212 : vector<5x3xf32>
    vector.print %228 : vector<3x10xi64>
    vector.print %234 : vector<10x10x7xf32>
    vector.print %235 : vector<10x10x7xf32>
    vector.print %237 : vector<7xf32>
    vector.print %247 : vector<5xf16>
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %c8444_i16 : i16
    vector.print %c1819932308_i64 : i64
    vector.print %c-32532_i16 : i16
    vector.print %c1322531054_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c-7432_i16 : i16
    vector.print %cst_3 : f32
    vector.print %c1821487250_i32 : i32
    vector.print %false : i1
    vector.print %c-25136_i16 : i16
    vector.print %c87979853_i32 : i32
    vector.print %c24758_i16 : i16
    vector.print %c-2387_i16 : i16
    vector.print %117 : f16
    vector.print %extracted : i64
    vector.print %159 : f32
    vector.print %173 : i64
    vector.print %true : i1
    vector.print %207 : f16
    return %62 : vector<3x7xi1>
  }
}
