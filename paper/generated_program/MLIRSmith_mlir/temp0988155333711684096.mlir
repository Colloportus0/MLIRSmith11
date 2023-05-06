module {
  func.func nested @func1(%arg0: i64, %arg1: index) -> f32 {
    %c454485149_i64 = arith.constant 454485149 : i64
    %c5175_i16 = arith.constant 5175 : i16
    %cst = arith.constant 5.680000e+04 : f16
    %c758892014_i32 = arith.constant 758892014 : i32
    %cst_0 = arith.constant 6.508800e+04 : f16
    %true = arith.constant true
    %c-7041_i16 = arith.constant -7041 : i16
    %c1461889454_i64 = arith.constant 1461889454 : i64
    %cst_1 = arith.constant 3.574400e+04 : f16
    %false = arith.constant false
    %true_2 = arith.constant true
    %cst_3 = arith.constant 4.633600e+04 : f16
    %cst_4 = arith.constant 2.715200e+04 : f16
    %c-26820_i16 = arith.constant -26820 : i16
    %false_5 = arith.constant false
    %false_6 = arith.constant false
    %0 = tensor.empty() : tensor<1x15xf16>
    %1 = tensor.empty() : tensor<1xi32>
    %2 = tensor.empty() : tensor<15xf32>
    %3 = tensor.empty() : tensor<1x15xi1>
    %4 = tensor.empty() : tensor<1xi16>
    %5 = tensor.empty() : tensor<1x15xi32>
    %6 = tensor.empty() : tensor<1xi16>
    %7 = tensor.empty() : tensor<1x6x1xf16>
    %8 = tensor.empty() : tensor<1xf32>
    %9 = tensor.empty() : tensor<1x15xi64>
    %10 = tensor.empty() : tensor<15xi16>
    %11 = tensor.empty() : tensor<1x6x1xi1>
    %12 = tensor.empty() : tensor<1x6x1xf32>
    %13 = tensor.empty() : tensor<1x6x1xi32>
    %14 = tensor.empty() : tensor<1x6x1xf16>
    %15 = tensor.empty() : tensor<15xf16>
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
    %alloc = memref.alloc() : memref<1xi1>
    %alloc_7 = memref.alloc() : memref<1x6x1xi32>
    %alloc_8 = memref.alloc() : memref<15xi1>
    %alloc_9 = memref.alloc() : memref<1xf32>
    %alloc_10 = memref.alloc() : memref<1xf32>
    %alloc_11 = memref.alloc() : memref<1xf16>
    %alloc_12 = memref.alloc() : memref<1x15xi1>
    %alloc_13 = memref.alloc() : memref<1x6x1xi64>
    %alloc_14 = memref.alloc() : memref<1xf32>
    %alloc_15 = memref.alloc() : memref<1x15xi1>
    %alloc_16 = memref.alloc() : memref<1x15xi32>
    %alloc_17 = memref.alloc() : memref<1x6x1xi1>
    %alloc_18 = memref.alloc() : memref<1x6x1xi1>
    %alloc_19 = memref.alloc() : memref<1x15xi1>
    %alloc_20 = memref.alloc() : memref<1x15xf32>
    %alloc_21 = memref.alloc() : memref<15xf16>
    %16 = tensor.empty() : tensor<15xf16>
    %17 = linalg.copy ins(%15 : tensor<15xf16>) outs(%16 : tensor<15xf16>) -> tensor<15xf16>
    %18 = tensor.empty() : tensor<15xf16>
    %transposed = linalg.transpose ins(%15 : tensor<15xf16>) outs(%18 : tensor<15xf16>) permutation = [0] 
    %alloc_22 = memref.alloc() : memref<i1>
    linalg.reduce ins(%3 : tensor<1x15xi1>) outs(%alloc_22 : memref<i1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %extracted = tensor.extract %1[%c0] : tensor<1xi32>
        %alloc_60 = memref.alloc() : memref<1xi32>
        memref.tensor_store %1, %alloc_60 : memref<1xi32>
        %alloc_61 = memref.alloc() : memref<1x15xi64>
        memref.tensor_store %9, %alloc_61 : memref<1x15xi64>
        %245 = arith.ceildivsi %in, %true : i1
        %246 = vector.broadcast %cst : f16 to vector<1xf16>
        %247 = vector.reduction <add>, %246 : vector<1xf16> into f16
        %248 = vector.create_mask %c11 : vector<15xi1>
        %249 = vector.broadcast %true : i1 to vector<8xi1>
        %250 = vector.maskedload %alloc_15[%c0, %c11], %249, %249 : memref<1x15xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11, %alloc_11 : memref<1xf16>, memref<1xf16>) outs(%7 : tensor<1x6x1xf16>) {
        ^bb0(%in_63: f16, %in_64: f16, %out: f16):
          %252 = index.castu %in : i1 to index
          %253 = bufferization.clone %alloc_21 : memref<15xf16> to memref<15xf16>
          %254 = index.divu %c3, %c6
          %255 = arith.minsi %in, %false_5 : i1
          %256 = arith.minui %extracted, %extracted : i32
          %alloc_65 = memref.alloc() : memref<1xf16>
          memref.copy %alloc_11, %alloc_65 : memref<1xf16> to memref<1xf16>
          %257 = index.maxu %c2, %c8
          %rank_66 = tensor.rank %14 : tensor<1x6x1xf16>
          %258 = bufferization.clone %alloc : memref<1xi1> to memref<1xi1>
          %259 = vector.broadcast %c13 : index to vector<1xindex>
          %260 = vector.broadcast %false_5 : i1 to vector<1xi1>
          %cst_67 = arith.constant 1.000000e+00 : f32
          %261 = vector.broadcast %cst_67 : f32 to vector<1xf32>
          vector.scatter %alloc_9[%c0] [%259], %260, %261 : memref<1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
          %262 = affine.load %alloc_15[%c3, %c3] : memref<1x15xi1>
          %263 = arith.negf %cst_1 : f16
          %264 = arith.maxsi %false_5, %false_5 : i1
          %cast_68 = tensor.cast %8 : tensor<1xf32> to tensor<?xf32>
          %265 = arith.shli %262, %262 : i1
          %extracted_69 = tensor.extract %5[%c0, %c9] : tensor<1x15xi32>
          %266 = memref.load %alloc[%c0] : memref<1xi1>
          %267 = math.log2 %17 : tensor<15xf16>
          %cst_70 = arith.constant 1.000000e+00 : f32
          %268 = vector.broadcast %cst_70 : f32 to vector<1xf32>
          %269 = vector.fma %268, %268, %268 : vector<1xf32>
          %270 = math.cos %in_64 : f16
          %271 = arith.mulf %cst_3, %in_64 : f16
          %272 = vector.splat %c0 : vector<1x15xindex>
          %273 = math.atan %cst_0 : f16
          %274 = math.sqrt %15 : tensor<15xf16>
          %275 = arith.minui %false_6, %true : i1
          %276 = math.round %2 : tensor<15xf32>
          %277 = vector.extract_strided_slice %268 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %278 = arith.minui %true, %true_2 : i1
          %279 = arith.negf %cst_4 : f16
          bufferization.dealloc_tensor %8 : tensor<1xf32>
          %280 = vector.shuffle %277, %269 [0, 1] : vector<1xf32>, vector<1xf32>
          affine.store %true, %258[%c12] : memref<1xi1>
          linalg.yield %cst : f16
        } -> tensor<1x6x1xf16>
        %false_62 = arith.constant false
        linalg.yield %false_62 : i1
      }
    scf.parallel (%arg2) = (%c9) to (%c1) step (%c12) {
      %245 = arith.remui %false_5, %true : i1
      %246 = math.cttz %c758892014_i32 : i32
      %247 = arith.shrui %c-26820_i16, %c-26820_i16 : i16
      memref.copy %alloc_17, %alloc_18 : memref<1x6x1xi1> to memref<1x6x1xi1>
      %248 = scf.execute_region -> memref<1xf16> {
        %264 = math.log2 %7 : tensor<1x6x1xf16>
        %extracted = tensor.extract %1[%c0] : tensor<1xi32>
        %cst_60 = arith.constant 1.000000e+00 : f32
        %265 = vector.broadcast %cst_60 : f32 to vector<6xf32>
        %266 = vector.flat_transpose %265 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %267 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 64 + 4, d2 mod 64 + d1 - 5, -d1, d2 mod 64)>(%c2, %c0, %c5)
        %268 = vector.create_mask %c7 : vector<1xi1>
        %269 = math.ipowi %5, %5 : tensor<1x15xi32>
        %expanded_61 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<1x6x1xf32> into tensor<1x6x1x1xf32>
        %270 = memref.realloc %alloc_11 : memref<1xf16> to memref<15xf16>
        %271 = arith.divui %c454485149_i64, %c454485149_i64 : i64
        %272 = math.atan %expanded_61 : tensor<1x6x1x1xf32>
        %273 = arith.maxf %cst_1, %cst_1 : f16
        %274 = math.rsqrt %expanded_61 : tensor<1x6x1x1xf32>
        %275 = math.exp2 %14 : tensor<1x6x1xf16>
        %276 = arith.minf %cst_3, %cst_0 : f16
        %from_elements_62 = tensor.from_elements %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60, %cst_60 : tensor<1x15xf32>
        %277 = math.ipowi %true, %false_5 : i1
        scf.yield %alloc_11 : memref<1xf16>
      }
      %249 = index.maxs %c12, %c3
      %250 = vector.broadcast %false : i1 to vector<1x15xi1>
      %251 = vector.broadcast %c758892014_i32 : i32 to vector<1x15xi32>
      %252 = vector.gather %3[%c15, %c7] [%251], %250, %250 : tensor<1x15xi1>, vector<1x15xi32>, vector<1x15xi1>, vector<1x15xi1> into vector<1x15xi1>
      %253 = vector.broadcast %c758892014_i32 : i32 to vector<1xi32>
      %254 = vector.matrix_multiply %253, %253 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %255 = math.ctpop %10 : tensor<15xi16>
      %256 = bufferization.clone %alloc_20 : memref<1x15xf32> to memref<1x15xf32>
      %257 = affine.for %arg3 = 0 to 23 iter_args(%arg4 = %c7) -> (index) {
        affine.yield %c15 : index
      }
      %258 = vector.broadcast %true_2 : i1 to vector<15xi1>
      %259 = index.maxs %249, %c14
      %260 = arith.maxsi %false_5, %false_6 : i1
      %261 = tensor.empty() : tensor<1xf32>
      %262 = vector.broadcast %false : i1 to vector<15x15xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %250, %250, %262 : vector<1x15xi1>, vector<1x15xi1> into vector<15x15xi1>
      scf.yield
    }
    %19 = affine.vector_load %alloc[%c1] : memref<1xi1>, vector<6xi1>
    affine.vector_store %19, %alloc_18[%c10, %c9, %c15] : memref<1x6x1xi1>, vector<6xi1>
    %alloc_23 = memref.alloc() : memref<15xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%15, %alloc_23 : tensor<15xf16>, memref<15xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = arith.addi %c-7041_i16, %c5175_i16 : i16
    %23 = index.maxs %c15, %c7
    %24 = vector.broadcast %false_6 : i1 to vector<1xi1>
    memref.tensor_store %transposed, %alloc_23 : memref<15xf16>
    %25 = index.casts %c5175_i16 : i16 to index
    %26 = index.mul %c3, %25
    bufferization.dealloc_tensor %18 : tensor<15xf16>
    %cst_24 = arith.constant 1.000000e+00 : f32
    %27 = vector.broadcast %cst_24 : f32 to vector<1x15xf32>
    %28 = vector.fma %27, %27, %27 : vector<1x15xf32>
    %29 = bufferization.clone %alloc_10 : memref<1xf32> to memref<1xf32>
    %30 = vector.broadcast %cst_24 : f32 to vector<1x6x1xf32>
    %31 = vector.fma %30, %30, %30 : vector<1x6x1xf32>
    %cast = tensor.cast %13 : tensor<1x6x1xi32> to tensor<?x?x?xi32>
    %32 = arith.divf %cst_24, %cst_24 : f32
    %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x6x1xf32> into tensor<6x1xf32>
    %33 = vector.broadcast %cst_24 : f32 to vector<1xf32>
    %34 = vector.insert %33, %30 [0, 5] : vector<1xf32> into vector<1x6x1xf32>
    %splat = tensor.splat %c-7041_i16 : tensor<1x15xi16>
    %35 = index.sizeof
    %36 = math.log10 %cst_4 : f16
    %37 = math.log10 %21 : tensor<f16>
    %38 = arith.addf %cst_3, %cst_0 : f16
    %39 = math.log2 %17 : tensor<15xf16>
    %40 = arith.minf %cst, %cst : f16
    %41 = vector.reduction <add>, %33 : vector<1xf32> into f32
    %42 = math.fpowi %7, %13 : tensor<1x6x1xf16>, tensor<1x6x1xi32>
    %43 = memref.realloc %alloc : memref<1xi1> to memref<15xi1>
    %44 = index.sub %c13, %c2
    %45 = vector.shuffle %28, %27 [0] : vector<1x15xf32>, vector<1x15xf32>
    %46 = arith.muli %false_6, %false_6 : i1
    %47 = math.exp %8 : tensor<1xf32>
    %48 = math.sqrt %cst_0 : f16
    %49 = arith.mulf %cst, %cst_3 : f16
    %50 = arith.remui %c454485149_i64, %c1461889454_i64 : i64
    %51 = arith.minsi %false, %false_5 : i1
    %collapsed_25 = tensor.collapse_shape %9 [[0, 1]] : tensor<1x15xi64> into tensor<15xi64>
    %52 = index.mul %23, %c15
    %53 = vector.broadcast %cst_24 : f32 to vector<1x6x1xf32>
    %54 = vector.fma %53, %53, %31 : vector<1x6x1xf32>
    %55 = arith.ceildivsi %false_5, %true : i1
    %56 = math.ctlz %c-26820_i16 : i16
    %57 = index.sizeof
    %58 = math.sqrt %12 : tensor<1x6x1xf32>
    %59 = arith.shli %true_2, %false : i1
    %60 = affine.apply affine_map<(d0, d1) -> (d1 * 2 + 8)>(%c6, %c6)
    memref.alloca_scope  {
      %245 = bufferization.clone %alloc_9 : memref<1xf32> to memref<1xf32>
      %246 = math.cttz %true : i1
      %rank_60 = tensor.rank %14 : tensor<1x6x1xf16>
      %splat_61 = tensor.splat %false_5 : tensor<1x15xi1>
      %247 = math.exp %2 : tensor<15xf32>
      %expanded_62 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<1x15xi64> into tensor<1x15x1xi64>
      %248 = arith.negf %cst : f16
      %cst_63 = arith.constant 1.000000e+00 : f16
      %cst_64 = arith.constant 0.000000e+00 : f16
      %249 = vector.transfer_read %16[%c9], %cst_64 : tensor<15xf16>, vector<f16>
      %250 = arith.addf %cst_3, %cst_3 : f16
      %251 = vector.broadcast %26 : index to vector<15xindex>
      %252 = vector.broadcast %false : i1 to vector<15xi1>
      %253 = vector.broadcast %c1461889454_i64 : i64 to vector<15xi64>
      vector.scatter %alloc_13[%c0, %c3, %c0] [%251], %252, %253 : memref<1x6x1xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
      %254 = index.maxs %35, %rank_60
      %255 = memref.load %alloc_15[%c0, %c14] : memref<1x15xi1>
      %alloc_65 = memref.alloc() : memref<1xf32>
      %256 = arith.mulf %cst_63, %cst_0 : f16
      %257 = affine.load %alloc_14[%c13] : memref<1xf32>
      %generated_66 = tensor.generate %c12 {
      ^bb0(%arg2: index):
        %272 = arith.minui %false_6, %false : i1
        %273 = tensor.empty() : tensor<15x8xi1>
        %274 = tensor.empty() : tensor<1x8xi1>
        %275 = linalg.matmul ins(%3, %273 : tensor<1x15xi1>, tensor<15x8xi1>) outs(%274 : tensor<1x8xi1>) -> tensor<1x8xi1>
        %expanded_68 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<1x15xi32> into tensor<1x15x1xi32>
        %276 = vector.shuffle %19, %19 [1, 2, 4, 5, 6, 7, 8, 9, 10] : vector<6xi1>, vector<6xi1>
        tensor.yield %false_5 : i1
      } : tensor<?xi1>
      bufferization.dealloc_tensor %14 : tensor<1x6x1xf16>
      %258 = vector.broadcast %cst_24 : f32 to vector<6x1xf32>
      %259 = vector.insert %258, %31 [0] : vector<6x1xf32> into vector<1x6x1xf32>
      %260 = math.roundeven %20 : tensor<f16>
      bufferization.dealloc_tensor %14 : tensor<1x6x1xf16>
      %261 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 - 128) ceildiv 64 >= 0, d2 - 15 >= 0, d0 + d2 - 15 - 128 >= 0)>(%c4, %c11, %c13, %c6) -> i16 {
        %272 = index.divu %c8, %60
        %273 = math.atan2 %16, %16 : tensor<15xf16>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %274 = vector.transfer_read %expanded_62[%c0, %c11, %c6], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<1x15x1xi64>, vector<1x8xi64>
        %275 = math.absf %0 : tensor<1x15xf16>
        %276 = memref.atomic_rmw minf %cst_24, %alloc_9[%c0] : (f32, memref<1xf32>) -> f32
        %277 = index.maxu %c6, %c5
        %cast_68 = tensor.cast %16 : tensor<15xf16> to tensor<?xf16>
        %278 = arith.addi %c-7041_i16, %c5175_i16 : i16
        affine.yield %c5175_i16 : i16
      } else {
        %272 = arith.muli %c1461889454_i64, %c454485149_i64 : i64
        %273 = arith.xori %c-7041_i16, %c5175_i16 : i16
        %274 = arith.divui %true_2, %true : i1
        %275 = arith.divf %cst_4, %cst_3 : f16
        %276 = index.castu %254 : index to i32
        %277 = vector.broadcast %cst_24 : f32 to vector<15x6x1xf32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %27, %30, %277 : vector<1x15xf32>, vector<1x6x1xf32> into vector<15x6x1xf32>
        %279 = math.exp2 %cst : f16
        %280 = math.expm1 %14 : tensor<1x6x1xf16>
        affine.yield %c5175_i16 : i16
      }
      %262 = index.floordivs %35, %44
      %263 = vector.create_mask %c2 : vector<1xi1>
      %264 = index.mul %c13, %c7
      %265 = arith.xori %c1461889454_i64, %c1461889454_i64 : i64
      %rank_67 = tensor.rank %14 : tensor<1x6x1xf16>
      %266 = bufferization.clone %29 : memref<1xf32> to memref<1xf32>
      %267 = index.mul %52, %35
      %268 = math.exp2 %17 : tensor<15xf16>
      %269 = arith.xori %c5175_i16, %c-26820_i16 : i16
      %270 = math.atan %20 : tensor<f16>
      %271 = math.absf %8 : tensor<1xf32>
    }
    %61 = vector.insert %33, %30 [0, 5] : vector<1xf32> into vector<1x6x1xf32>
    %62 = arith.remui %true_2, %true_2 : i1
    %63 = arith.mulf %cst_0, %cst : f16
    %64 = index.floordivs %c6, %c10
    %65 = math.log10 %8 : tensor<1xf32>
    %66 = math.ctpop %c-7041_i16 : i16
    %67 = index.castu %35 : index to i32
    %68 = arith.minui %false, %false_6 : i1
    %69 = memref.load %alloc_14[%c0] : memref<1xf32>
    %70 = math.log2 %0 : tensor<1x15xf16>
    %71 = vector.broadcast %c5175_i16 : i16 to vector<1xi16>
    %72 = vector.broadcast %c758892014_i32 : i32 to vector<1xi32>
    %73 = vector.gather %splat[%23, %c1] [%72], %24, %71 : tensor<1x15xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
    %74 = arith.maxf %cst_3, %cst_1 : f16
    %75 = memref.realloc %alloc_9 : memref<1xf32> to memref<8xf32>
    %76 = arith.remf %cst_1, %cst_0 : f16
    %77 = math.absf %18 : tensor<15xf16>
    %78 = affine.load %alloc_18[%c12, %c8, %c9] : memref<1x6x1xi1>
    %79 = math.atan2 %7, %7 : tensor<1x6x1xf16>
    %80 = index.floordivs %c10, %c8
    %81 = arith.ceildivsi %false_5, %78 : i1
    %82 = arith.xori %c-26820_i16, %c-26820_i16 : i16
    bufferization.dealloc_tensor %11 : tensor<1x6x1xi1>
    %83 = arith.andi %78, %false_6 : i1
    %84 = memref.alloca_scope  -> (i1) {
      %245 = bufferization.clone %alloc_9 : memref<1xf32> to memref<1xf32>
      %246 = math.round %cst_4 : f16
      %247 = math.powf %8, %8 : tensor<1xf32>
      %248 = arith.maxsi %true_2, %false_6 : i1
      scf.if %true_2 {
        %273 = index.mul %c11, %c9
        %alloca_63 = memref.alloca() : memref<1x6x1xi64>
        %274 = bufferization.clone %alloc_16 : memref<1x15xi32> to memref<1x15xi32>
        %275 = index.sub %c0, %80
        %276 = index.sub %c2, %275
        %277 = index.casts %c-7041_i16 : i16 to index
        %278 = math.log10 %cst_0 : f16
        %279 = memref.realloc %alloc_21 : memref<15xf16> to memref<8xf16>
      } else {
        %273 = vector.shuffle %33, %33 [0] : vector<1xf32>, vector<1xf32>
        %274 = arith.negf %cst_1 : f16
        %275 = arith.xori %c5175_i16, %c-7041_i16 : i16
        %276 = arith.remf %cst_3, %cst_0 : f16
        %277 = vector.splat %c1461889454_i64 : vector<1x15xi64>
        %true_63 = index.bool.constant true
        %278 = arith.divf %cst_3, %cst_3 : f16
        %279 = math.log10 %0 : tensor<1x15xf16>
      }
      %249 = arith.ceildivsi %c-7041_i16, %c-26820_i16 : i16
      %250 = vector.splat %c4 : vector<1x15xindex>
      %251 = arith.divf %cst_4, %cst_0 : f16
      %252 = arith.mulf %cst_24, %cst_24 : f32
      %253 = vector.reduction <minui>, %71 : vector<1xi16> into i16
      %254 = affine.apply affine_map<(d0, d1) -> (d0 - 16)>(%c3, %c4)
      memref.assume_alignment %alloc_8, 16 : memref<15xi1>
      %255 = math.cos %cst : f16
      %256 = affine.load %alloc_13[%c2, %c12, %c1] : memref<1x6x1xi64>
      affine.store %c1461889454_i64, %alloc_13[%c4, %c3, %c7] : memref<1x6x1xi64>
      %257 = math.exp2 %0 : tensor<1x15xf16>
      %258 = arith.negf %cst : f16
      %259 = vector.reduction <xor>, %71 : vector<1xi16> into i16
      %260 = arith.ori %false_6, %true : i1
      %261 = math.cttz %c454485149_i64 : i64
      %cst_60 = arith.constant 1.000000e+00 : f16
      %cst_61 = arith.constant 0.000000e+00 : f16
      %262 = vector.transfer_read %16[%60], %cst_61 : tensor<15xf16>, vector<f16>
      %263 = arith.shli %c5175_i16, %c-26820_i16 : i16
      %264 = arith.xori %78, %true : i1
      %alloc_62 = memref.alloc() : memref<1x6x1xf16>
      %265 = arith.divui %c454485149_i64, %256 : i64
      %extracted = tensor.extract %17[%c10] : tensor<15xf16>
      %266 = vector.broadcast %cst_24 : f32 to vector<6x1xf32>
      %267 = vector.insert %266, %54 [0] : vector<6x1xf32> into vector<1x6x1xf32>
      %268 = arith.minf %cst_60, %cst_3 : f16
      %269 = arith.maxf %cst_3, %cst_60 : f16
      %270 = bufferization.clone %alloc : memref<1xi1> to memref<1xi1>
      %271 = vector.matrix_multiply %19, %24 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<1xi1>) -> vector<6xi1>
      %272 = math.ctlz %true_2 : i1
      memref.alloca_scope.return %true : i1
    }
    %85 = index.castu %35 : index to i32
    %86 = arith.divf %cst_0, %cst_1 : f16
    %87 = arith.maxsi %c-7041_i16, %c5175_i16 : i16
    %88 = arith.minui %78, %84 : i1
    %89 = arith.maxf %cst_0, %cst_0 : f16
    %alloca = memref.alloca() : memref<15xf16>
    %90 = math.tanh %7 : tensor<1x6x1xf16>
    %91 = arith.remf %cst_24, %cst_24 : f32
    %92 = math.ceil %collapsed : tensor<6x1xf32>
    %93 = arith.divf %cst_0, %cst_1 : f16
    %expanded = tensor.expand_shape %17 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
    %94 = arith.maxsi %false_6, %false : i1
    scf.if %true_2 {
      %245 = math.absf %8 : tensor<1xf32>
      %246 = vector.shuffle %24, %24 [0] : vector<1xi1>, vector<1xi1>
      %alloc_60 = memref.alloc() : memref<6xf16>
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_60, %alloc_11, %alloc_11 : memref<6xf16>, memref<1xf16>, memref<1xf16>) outs(%14 : tensor<1x6x1xf16>) {
      ^bb0(%in: f16, %in_63: f16, %in_64: f16, %out: f16):
        %251 = math.round %0 : tensor<1x15xf16>
        affine.store %true, %alloc_17[%c5, %c10, %c3] : memref<1x6x1xi1>
        %252 = math.absf %expanded : tensor<15x1xf16>
        %253 = vector.broadcast %25 : index to vector<15xindex>
        %254 = vector.broadcast %false : i1 to vector<15xi1>
        %255 = vector.broadcast %cst_24 : f32 to vector<15xf32>
        vector.scatter %alloc_20[%c0, %c11] [%253], %254, %255 : memref<1x15xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
        %256 = arith.andi %false_6, %false : i1
        %257 = math.absf %20 : tensor<f16>
        memref.copy %alloc_17, %alloc_18 : memref<1x6x1xi1> to memref<1x6x1xi1>
        %258 = math.fpowi %7, %13 : tensor<1x6x1xf16>, tensor<1x6x1xi32>
        %259 = vector.splat %25 : vector<1x6x1xindex>
        %260 = index.sub %c8, %c8
        %261 = vector.broadcast %cst_24 : f32 to vector<15xf32>
        %262 = vector.broadcast %true : i1 to vector<15xi1>
        %263 = vector.maskedload %alloc_10[%c0], %262, %261 : memref<1xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        bufferization.dealloc_tensor %collapsed : tensor<6x1xf32>
        %264 = affine.apply affine_map<(d0, d1) -> (d0 * 32)>(%80, %c3)
        %265 = arith.divf %in_64, %out : f16
        %266 = math.ctpop %6 : tensor<1xi16>
        %267 = math.exp %in_63 : f16
        %268 = arith.maxsi %true, %false_5 : i1
        %269 = arith.andi %84, %false_5 : i1
        %270 = vector.broadcast %cst_24 : f32 to vector<6x1xf32>
        %271 = vector.insert %270, %30 [0] : vector<6x1xf32> into vector<1x6x1xf32>
        %272 = math.log2 %cst_24 : f32
        %273 = arith.divf %in_63, %in : f16
        %274 = arith.negf %out : f16
        %275 = arith.minsi %false_6, %true : i1
        %276 = memref.realloc %alloc_23 : memref<15xf16> to memref<15xf16>
        %277 = arith.minsi %78, %false_6 : i1
        %278 = math.cttz %11 : tensor<1x6x1xi1>
        %279 = arith.addi %84, %false_6 : i1
        %280 = arith.maxui %c-26820_i16, %c-7041_i16 : i16
        %281 = memref.realloc %alloc_11 : memref<1xf16> to memref<1xf16>
        %expanded_65 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<1x6x1xi1> into tensor<1x6x1x1xi1>
        %282 = vector.create_mask %c3, %52 : vector<1x15xi1>
        %283 = arith.negf %in_64 : f16
        linalg.yield %cst_3 : f16
      } -> tensor<1x6x1xf16>
      %248 = affine.min affine_map<(d0) -> (d0 + (d0 + 32) * 2 + 96, (d0 + (d0 + 32) * 2 + 96) floordiv 128, d0 floordiv 32 + 1, -d0)>(%26)
      %expanded_61 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<1x15xi16> into tensor<1x15x1xi16>
      %249 = index.sizeof
      %250 = vector.extract_strided_slice %30 {offsets = [0], sizes = [1], strides = [1]} : vector<1x6x1xf32> to vector<1x6x1xf32>
      %alloc_62 = memref.alloc() : memref<1x6x1xi32>
      memref.copy %alloc_7, %alloc_62 : memref<1x6x1xi32> to memref<1x6x1xi32>
    } else {
      %245 = index.sub %35, %c4
      %false_60 = index.bool.constant false
      %246 = math.cos %0 : tensor<1x15xf16>
      %247 = memref.load %alloc[%c0] : memref<1xi1>
      %248 = arith.addi %false_60, %84 : i1
      %249 = bufferization.to_memref %3 : memref<1x15xi1>
      affine.store %78, %249[%c9, %c2] : memref<1x15xi1>
      %expanded_61 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<15x1xf16> into tensor<15x1x1xf16>
    }
    %95 = arith.maxui %c758892014_i32, %c758892014_i32 : i32
    %96 = math.atan2 %cst, %cst_4 : f16
    %expanded_26 = tensor.expand_shape %15 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
    %97 = bufferization.clone %alloc_7 : memref<1x6x1xi32> to memref<1x6x1xi32>
    %rank = tensor.rank %transposed : tensor<15xf16>
    %98 = math.ctpop %4 : tensor<1xi16>
    %expanded_27 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<1x15xi16> into tensor<1x15x1xi16>
    %99 = math.ceil %expanded_26 : tensor<15x1xf16>
    %100 = bufferization.clone %29 : memref<1xf32> to memref<1xf32>
    %101 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c0, %26, %44, %c1)
    %rank_28 = tensor.rank %0 : tensor<1x15xf16>
    %102 = index.casts %c-26820_i16 : i16 to index
    %103 = tensor.empty() : tensor<f16>
    %mapped = linalg.map ins(%20, %21 : tensor<f16>, tensor<f16>) outs(%103 : tensor<f16>)
      (%in: f16, %in_60: f16) {
        %245 = arith.remf %in, %in_60 : f16
        %246 = affine.if affine_set<(d0, d1, d2, d3) : (d1 == 0, -d3 >= 0, d1 * 32 == 0)>(%c2, %c8, %c6, %c9) -> memref<1x6x1xi64> {
          %276 = math.exp2 %cst_0 : f16
          %277 = arith.maxf %cst_24, %cst_24 : f32
          %278 = vector.matrix_multiply %33, %33 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %279 = math.log %8 : tensor<1xf32>
          %280 = math.tan %expanded : tensor<15x1xf16>
          %281 = math.ctpop %collapsed_25 : tensor<15xi64>
          %282 = math.cos %expanded : tensor<15x1xf16>
          %283 = arith.divf %cst_1, %cst : f16
          affine.yield %alloc_13 : memref<1x6x1xi64>
        } else {
          %276 = math.ctpop %c5175_i16 : i16
          %277 = math.ctlz %5 : tensor<1x15xi32>
          %278 = arith.minui %78, %false : i1
          %279 = memref.realloc %alloc : memref<1xi1> to memref<8xi1>
          %280 = arith.minf %cst, %cst_4 : f16
          %281 = index.ceildivu %c7, %c10
          %282 = arith.shrui %true, %true_2 : i1
          %283 = math.exp2 %in_60 : f16
          affine.yield %alloc_13 : memref<1x6x1xi64>
        }
        %247 = affine.load %alloc_8[%c3] : memref<15xi1>
        %248 = vector.load %alloc_23[%c7] : memref<15xf16>, vector<1xf16>
        %generated_61 = tensor.generate %102, %44 {
        ^bb0(%arg2: index, %arg3: index):
          %276 = math.absf %cst_1 : f16
          %277 = index.maxs %44, %26
          %278 = index.maxu %rank_28, %c7
          %279 = math.ceil %15 : tensor<15xf16>
          tensor.yield %c758892014_i32 : i32
        } : tensor<?x?xi32>
        %249 = tensor.empty() : tensor<f16>
        %mapped_62 = linalg.map ins(%20, %20 : tensor<f16>, tensor<f16>) outs(%249 : tensor<f16>)
          (%in_66: f16, %in_67: f16) {
            %276 = math.absf %cst_4 : f16
            %277 = arith.divf %cst_1, %cst_0 : f16
            %278 = arith.minsi %c1461889454_i64, %c454485149_i64 : i64
            %279 = arith.muli %c454485149_i64, %c454485149_i64 : i64
            %280 = index.divu %c12, %c8
            %281 = math.atan %249 : tensor<f16>
            %282 = affine.min affine_map<(d0) -> (d0 ceildiv 2 - 1, 0, 0, d0 ceildiv 2)>(%60)
            %283 = math.atan2 %103, %103 : tensor<f16>
            %284 = math.rsqrt %17 : tensor<15xf16>
            memref.assume_alignment %alloc_14, 1 : memref<1xf32>
            %285 = vector.broadcast %c14 : index to vector<15xindex>
            %286 = vector.broadcast %247 : i1 to vector<15xi1>
            %287 = vector.broadcast %cst_24 : f32 to vector<15xf32>
            vector.scatter %alloc_9[%c0] [%285], %286, %287 : memref<1xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
            %288 = math.atan2 %in_66, %in_60 : f16
            %289 = tensor.empty() : tensor<15xi32>
            %290 = math.fpowi %2, %289 : tensor<15xf32>, tensor<15xi32>
            %291 = arith.shrsi %false_6, %true : i1
            %292 = arith.xori %c758892014_i32, %c758892014_i32 : i32
            %293 = vector.reduction <maxsi>, %71 : vector<1xi16> into i16
            %294 = bufferization.clone %alloc_12 : memref<1x15xi1> to memref<1x15xi1>
            %295 = vector.broadcast %c454485149_i64 : i64 to vector<15xi64>
            %296 = math.sqrt %12 : tensor<1x6x1xf32>
            %297 = arith.mulf %in_66, %in_60 : f16
            %298 = index.castu %c-26820_i16 : i16 to index
            %299 = vector.extract_strided_slice %33 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
            %300 = arith.mulf %cst_1, %in_66 : f16
            %301 = index.maxs %c13, %25
            %302 = math.sqrt %cst_4 : f16
            %303 = arith.minsi %c-26820_i16, %c-26820_i16 : i16
            %304 = index.divu %26, %c13
            %305 = vector.create_mask %c10, %282, %c0 : vector<1x6x1xi1>
            %306 = math.ceil %2 : tensor<15xf32>
            %307 = math.ipowi %expanded_27, %expanded_27 : tensor<1x15x1xi16>
            %308 = math.powf %14, %7 : tensor<1x6x1xf16>
            %309 = arith.maxsi %c-26820_i16, %c-26820_i16 : i16
            %cst_68 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_68 : f16
          }
        %250 = arith.maxui %c-7041_i16, %c-7041_i16 : i16
        %251 = vector.create_mask %c4 : vector<1xi1>
        %from_elements_63 = tensor.from_elements %c5175_i16 : tensor<1xi16>
        affine.store %true_2, %alloc_19[%c3, %c13] : memref<1x15xi1>
        %252 = arith.minui %c454485149_i64, %c454485149_i64 : i64
        %253 = arith.maxf %cst_1, %cst_1 : f16
        %254 = index.mul %c15, %c15
        %255 = math.ctpop %collapsed_25 : tensor<15xi64>
        %256 = vector.broadcast %cst_24 : f32 to vector<6x1xf32>
        %257 = vector.insert %256, %31 [0] : vector<6x1xf32> into vector<1x6x1xf32>
        %258 = math.log2 %20 : tensor<f16>
        %259 = arith.cmpi ule, %84, %true_2 : i1
        %260 = memref.realloc %alloc : memref<1xi1> to memref<8xi1>
        %261 = index.castu %c3 : index to i32
        %splat_64 = tensor.splat %false_6 : tensor<1xi1>
        %262 = math.absf %cst : f16
        %263 = arith.xori %c454485149_i64, %c1461889454_i64 : i64
        %264 = vector.broadcast %cst_24 : f32 to vector<1x6x1xf32>
        %265 = vector.fma %264, %30, %54 : vector<1x6x1xf32>
        %266 = math.round %7 : tensor<1x6x1xf16>
        %267 = math.atan2 %0, %0 : tensor<1x15xf16>
        %268 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %269 = tensor.empty() : tensor<15x15xf16>
        %270 = linalg.matmul ins(%expanded, %0 : tensor<15x1xf16>, tensor<1x15xf16>) outs(%269 : tensor<15x15xf16>) -> tensor<15x15xf16>
        %271 = arith.divui %78, %84 : i1
        %272 = vector.create_mask %c3 : vector<1xi1>
        %273 = memref.load %alloc_13[%c0, %c4, %c0] : memref<1x6x1xi64>
        %274 = arith.ceildivsi %false_5, %247 : i1
        %275 = math.log2 %2 : tensor<15xf32>
        %cst_65 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_65 : f16
      }
    %104 = math.log2 %15 : tensor<15xf16>
    %105 = arith.andi %c1461889454_i64, %c1461889454_i64 : i64
    %106 = arith.xori %true_2, %false : i1
    %107 = math.log2 %17 : tensor<15xf16>
    %108 = math.log %15 : tensor<15xf16>
    %109 = arith.maxsi %false, %false_5 : i1
    %110 = vector.load %alloc_9[%c0] : memref<1xf32>, vector<15xf32>
    memref.tensor_store %3, %alloc_19 : memref<1x15xi1>
    bufferization.dealloc_tensor %splat : tensor<1x15xi16>
    %111 = index.floordivs %57, %26
    %112 = math.exp %15 : tensor<15xf16>
    %113 = vector.create_mask %111, %80 : vector<1x15xi1>
    %114 = bufferization.clone %97 : memref<1x6x1xi32> to memref<1x6x1xi32>
    %expanded_29 = tensor.expand_shape %expanded_27 [[0], [1], [2, 3]] : tensor<1x15x1xi16> into tensor<1x15x1x1xi16>
    %115 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<6xi1> to vector<1xi1>
    memref.copy %alloc_18, %alloc_17 : memref<1x6x1xi1> to memref<1x6x1xi1>
    %116 = math.ctlz %6 : tensor<1xi16>
    %117 = vector.matrix_multiply %24, %115 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %118 = arith.andi %78, %false : i1
    %119 = math.absf %12 : tensor<1x6x1xf32>
    %120 = arith.minui %false_6, %false_5 : i1
    %121 = tensor.empty(%101) : tensor<?xi16>
    %122 = affine.if affine_set<(d0, d1) : (d1 + 64 >= 0, d0 ceildiv 16 == 0, d0 ceildiv 16 + 2 == 0, d1 + 8 >= 0)>(%c10, %c13) -> memref<1x15xi16> {
      %245 = vector.flat_transpose %33 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %246 = arith.remui %c-26820_i16, %c5175_i16 : i16
      %247 = vector.broadcast %c758892014_i32 : i32 to vector<6xi32>
      %248 = vector.maskedload %alloc_16[%c0, %c7], %19, %247 : memref<1x15xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      bufferization.dealloc_tensor %9 : tensor<1x15xi64>
      %249 = arith.addf %cst_3, %cst_4 : f16
      bufferization.dealloc_tensor %11 : tensor<1x6x1xi1>
      %250 = index.casts %102 : index to i32
      %251 = math.log2 %14 : tensor<1x6x1xf16>
      %alloc_60 = memref.alloc() : memref<1x15xi16>
      affine.yield %alloc_60 : memref<1x15xi16>
    } else {
      %245 = vector.matrix_multiply %24, %117 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %246 = math.sqrt %collapsed : tensor<6x1xf32>
      %247 = tensor.empty() : tensor<1x15xi32>
      %mapped_60 = linalg.map ins(%5 : tensor<1x15xi32>) outs(%247 : tensor<1x15xi32>)
        (%in: i32) {
          %249 = vector.matrix_multiply %115, %115 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %250 = index.maxs %101, %c0
          %251 = arith.addf %cst_1, %cst_3 : f16
          %252 = arith.maxsi %c1461889454_i64, %c454485149_i64 : i64
          %253 = index.mul %60, %52
          %254 = arith.cmpi ne, %true, %true_2 : i1
          %255 = math.tanh %7 : tensor<1x6x1xf16>
          %256 = vector.broadcast %cst_24 : f32 to vector<1x1xf32>
          %dest_63, %accumulated_value_64 = vector.scan <mul>, %54, %256 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6x1xf32>, vector<1x1xf32>
          %257 = arith.remui %in, %c758892014_i32 : i32
          %258 = vector.broadcast %true : i1 to vector<1x15xi1>
          %259 = arith.addi %c5175_i16, %c-26820_i16 : i16
          %260 = math.ctpop %c454485149_i64 : i64
          affine.store %cst_24, %alloc_10[%c11] : memref<1xf32>
          %261 = vector.reduction <maxsi>, %117 : vector<1xi1> into i1
          %dest_65, %accumulated_value_66 = vector.scan <minui>, %113, %117 {inclusive = false, reduction_dim = 1 : i64} : vector<1x15xi1>, vector<1xi1>
          %262 = arith.addi %c5175_i16, %c5175_i16 : i16
          %263 = math.ctpop %11 : tensor<1x6x1xi1>
          %264 = math.round %8 : tensor<1xf32>
          %265 = bufferization.clone %alloc_10 : memref<1xf32> to memref<1xf32>
          %266 = math.sqrt %cst_0 : f16
          %267 = math.log1p %21 : tensor<f16>
          %268 = math.atan %18 : tensor<15xf16>
          %269 = arith.floordivsi %true_2, %84 : i1
          %270 = bufferization.clone %alloc_14 : memref<1xf32> to memref<1xf32>
          %271 = math.round %cst_4 : f16
          %272 = arith.addf %cst_24, %cst_24 : f32
          memref.copy %alloc_17, %alloc_18 : memref<1x6x1xi1> to memref<1x6x1xi1>
          %from_elements_67 = tensor.from_elements %false_5, %false_5, %false_6, %78, %true, %false_6 : tensor<1x6x1xi1>
          memref.copy %alloc_14, %alloc_10 : memref<1xf32> to memref<1xf32>
          %273 = index.sub %44, %c8
          %274 = index.floordivs %253, %52
          %275 = arith.divui %c5175_i16, %c-26820_i16 : i16
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %generated_61 = tensor.generate %c8 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %249 = arith.shli %78, %true : i1
        %250 = math.floor %cst_0 : f16
        %true_63 = index.bool.constant true
        %251 = arith.ori %c-7041_i16, %c-7041_i16 : i16
        tensor.yield %cst_24 : f32
      } : tensor<?x6x1xf32>
      memref.tensor_store %5, %alloc_16 : memref<1x15xi32>
      memref.copy %alloc_14, %100 : memref<1xf32> to memref<1xf32>
      bufferization.dealloc_tensor %18 : tensor<15xf16>
      %248 = bufferization.clone %100 : memref<1xf32> to memref<1xf32>
      %alloc_62 = memref.alloc() : memref<1x15xi16>
      affine.yield %alloc_62 : memref<1x15xi16>
    }
    bufferization.dealloc_tensor %8 : tensor<1xf32>
    %123 = vector.broadcast %cst_24 : f32 to vector<1x1xf32>
    %dest, %accumulated_value = vector.scan <add>, %31, %123 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6x1xf32>, vector<1x1xf32>
    %124 = arith.shli %c1461889454_i64, %c454485149_i64 : i64
    %125 = index.casts %false_5 : i1 to index
    %126 = math.log2 %17 : tensor<15xf16>
    %127 = index.sizeof
    %128 = math.ipowi %1, %1 : tensor<1xi32>
    %129 = math.log10 %20 : tensor<f16>
    %cst_30 = arith.constant 1.000000e+00 : f32
    %130 = vector.transfer_read %2[%c11], %cst_30 : tensor<15xf32>, vector<f32>
    %alloc_31 = memref.alloc() : memref<1xf16>
    memref.copy %alloc_11, %alloc_31 : memref<1xf16> to memref<1xf16>
    %131 = arith.addf %cst_4, %cst : f16
    %132 = affine.if affine_set<(d0, d1) : (d0 >= 0)>(%c14, %c1) -> f16 {
      %245 = math.log10 %cst_24 : f32
      %246 = arith.ori %c758892014_i32, %c758892014_i32 : i32
      %247 = math.sqrt %cst_0 : f16
      %inserted_60 = tensor.insert %c5175_i16 into %6[%c0] : tensor<1xi16>
      %alloc_61 = memref.alloc() : memref<15xi1>
      %cast_62 = tensor.cast %6 : tensor<1xi16> to tensor<?xi16>
      %alloc_63 = memref.alloc() : memref<6x1xf32>
      memref.tensor_store %collapsed, %alloc_63 : memref<6x1xf32>
      %248 = index.maxs %25, %44
      affine.yield %cst_0 : f16
    } else {
      %245 = math.log2 %cst_4 : f16
      %246 = arith.remui %c758892014_i32, %c758892014_i32 : i32
      %247 = vector.extract %113[0] : vector<1x15xi1>
      %248 = index.mul %c10, %rank_28
      %249 = index.maxu %c8, %c3
      %250 = math.ceil %103 : tensor<f16>
      %cast_60 = tensor.cast %4 : tensor<1xi16> to tensor<?xi16>
      %251 = arith.minui %c-7041_i16, %c-26820_i16 : i16
      affine.yield %cst_1 : f16
    }
    %133 = arith.minf %cst_24, %cst_30 : f32
    %alloc_32 = memref.alloc() : memref<1xi32>
    memref.tensor_store %1, %alloc_32 : memref<1xi32>
    %134 = index.castu %c7 : index to i32
    %135 = arith.minui %true_2, %84 : i1
    %136 = arith.negf %cst_24 : f32
    %from_elements = tensor.from_elements %cst_24, %cst_30, %cst_24, %cst_30, %cst_24, %cst_30, %cst_30, %cst_24, %cst_24, %cst_24, %cst_24, %cst_30, %cst_24, %cst_30, %cst_24 : tensor<15xf32>
    %137 = math.ceil %cst_4 : f16
    %138 = arith.remf %cst_30, %cst_24 : f32
    %139 = math.exp %cst_1 : f16
    %140 = bufferization.to_memref %6 : memref<1xi16>
    %141 = math.ceil %2 : tensor<15xf32>
    %142 = arith.mulf %cst_1, %cst_0 : f16
    %143 = math.ctlz %true : i1
    %collapsed_33 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<6x1xf32> into tensor<6xf32>
    %144 = math.cos %20 : tensor<f16>
    %alloc_34 = memref.alloc() : memref<1x15x1xi16>
    memref.tensor_store %expanded_27, %alloc_34 : memref<1x15x1xi16>
    %145 = bufferization.clone %alloc_12 : memref<1x15xi1> to memref<1x15xi1>
    %146 = arith.ceildivsi %false_6, %84 : i1
    %147 = math.log2 %collapsed_33 : tensor<6xf32>
    %148 = arith.maxf %cst_3, %cst_1 : f16
    %149 = math.cos %14 : tensor<1x6x1xf16>
    %150 = arith.shrui %c758892014_i32, %c758892014_i32 : i32
    %151 = arith.remf %cst_30, %cst_30 : f32
    %152 = memref.realloc %alloc_21 : memref<15xf16> to memref<1xf16>
    %153 = arith.minui %78, %false : i1
    %154 = arith.maxf %cst, %cst_0 : f16
    %155 = math.atan %20 : tensor<f16>
    %from_elements_35 = tensor.from_elements %cst_30 : tensor<1xf32>
    %156 = math.sqrt %14 : tensor<1x6x1xf16>
    %157 = index.sizeof
    %158 = arith.remui %true, %84 : i1
    %159 = vector.broadcast %cst_24 : f32 to vector<1x15xf32>
    %160 = vector.fma %159, %28, %159 : vector<1x15xf32>
    %161 = vector.transpose %30, [0, 2, 1] : vector<1x6x1xf32> to vector<1x1x6xf32>
    %alloca_36 = memref.alloca() : memref<1x15xi64>
    %162 = index.casts %c8 : index to i32
    %163 = arith.remf %cst_0, %cst_3 : f16
    %164 = arith.addf %cst_30, %cst_30 : f32
    %165 = math.cos %8 : tensor<1xf32>
    %166 = arith.shli %84, %false_5 : i1
    %167 = tensor.empty(%35) : tensor<?xi64>
    bufferization.dealloc_tensor %5 : tensor<1x15xi32>
    %generated = tensor.generate %c13 {
    ^bb0(%arg2: index, %arg3: index):
      %245 = math.exp2 %15 : tensor<15xf16>
      %246 = arith.andi %c758892014_i32, %c758892014_i32 : i32
      %247 = vector.broadcast %cst_24 : f32 to vector<15xf32>
      %dest_60, %accumulated_value_61 = vector.scan <add>, %160, %247 {inclusive = false, reduction_dim = 0 : i64} : vector<1x15xf32>, vector<15xf32>
      tensor.yield %cst_0 : f16
    } : tensor<?x15xf16>
    %168 = vector.load %alloc_18[%c0, %c0, %c0] : memref<1x6x1xi1>, vector<1xi1>
    %169 = math.ctpop %collapsed_25 : tensor<15xi64>
    %generated_37 = tensor.generate %c1 {
    ^bb0(%arg2: index, %arg3: index):
      %245 = arith.negf %cst_3 : f16
      %246 = arith.shrui %c-7041_i16, %c5175_i16 : i16
      %247 = index.floordivs %c11, %c7
      %248 = index.floordivs %c4, %c12
      tensor.yield %c454485149_i64 : i64
    } : tensor<?x15xi64>
    %170 = index.divu %102, %c2
    %171 = arith.shrsi %false, %false_6 : i1
    %172 = scf.while (%arg2 = %false_5) : (i1) -> i1 {
      %245 = bufferization.clone %alloc_13 : memref<1x6x1xi64> to memref<1x6x1xi64>
      %246 = vector.shuffle %117, %19 [1, 6] : vector<1xi1>, vector<6xi1>
      %247 = math.expm1 %14 : tensor<1x6x1xf16>
      %248 = arith.maxf %cst_30, %cst_24 : f32
      %249 = vector.create_mask %64, %rank, %c1 : vector<1x6x1xi1>
      %250 = arith.addi %true_2, %arg2 : i1
      %251 = scf.index_switch %23 -> i32 
      case 1 {
        %253 = math.ctlz %5 : tensor<1x15xi32>
        %254 = arith.andi %false, %true_2 : i1
        %255 = arith.addf %cst_0, %cst_1 : f16
        %splat_60 = tensor.splat %cst_4 : tensor<1xf16>
        %collapsed_61 = tensor.collapse_shape %generated_37 [[0, 1]] : tensor<?x15xi64> into tensor<?xi64>
        %256 = arith.addi %c-26820_i16, %c5175_i16 : i16
        %alloc_62 = memref.alloc() : memref<15xf32>
        memref.tensor_store %2, %alloc_62 : memref<15xf32>
        bufferization.dealloc_tensor %8 : tensor<1xf32>
        %alloca_63 = memref.alloca() : memref<15xf32>
        %257 = arith.minui %false, %78 : i1
        %cst_64 = arith.constant 1.000000e+00 : f16
        %cst_65 = arith.constant 0.000000e+00 : f16
        %258 = vector.transfer_read %7[%52, %26, %52], %cst_65 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<1x6x1xf16>, vector<1x8xf16>
        %259 = vector.broadcast %cst_30 : f32 to vector<15xf32>
        %260 = vector.fma %259, %110, %110 : vector<15xf32>
        %261 = index.casts %rank_28 : index to i32
        %262 = arith.maxui %c758892014_i32, %c758892014_i32 : i32
        %263 = vector.broadcast %false : i1 to vector<15xi1>
        %264 = vector.maskedload %alloc[%c0], %263, %263 : memref<1xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %expanded_66 = tensor.expand_shape %8 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
        scf.yield %c758892014_i32 : i32
      }
      case 2 {
        %253 = math.absf %cst_3 : f16
        %254 = affine.load %alloc_22[] : memref<i1>
        %255 = arith.remf %cst_1, %cst_3 : f16
        %rank_60 = tensor.rank %from_elements : tensor<15xf32>
        %256 = vector.flat_transpose %33 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %splat_61 = tensor.splat %cst_24 : tensor<1x15xf32>
        %257 = tensor.empty() : tensor<i32>
        %258 = math.fpowi %103, %257 : tensor<f16>, tensor<i32>
        %259 = bufferization.clone %245 : memref<1x6x1xi64> to memref<1x6x1xi64>
        %260 = arith.andi %78, %arg2 : i1
        %261 = vector.broadcast %84 : i1 to vector<6x1xi1>
        %dest_62, %accumulated_value_63 = vector.scan <and>, %249, %261 {inclusive = false, reduction_dim = 0 : i64} : vector<1x6x1xi1>, vector<6x1xi1>
        %262 = index.divu %c12, %c8
        %263 = math.atan2 %20, %20 : tensor<f16>
        %264 = math.cos %cst_30 : f32
        %265 = arith.maxf %cst_3, %cst_0 : f16
        %266 = vector.extract_strided_slice %31 {offsets = [0, 4], sizes = [1, 2], strides = [1, 1]} : vector<1x6x1xf32> to vector<1x2x1xf32>
        %cst_64 = arith.constant 1.000000e+00 : f32
        %267 = vector.transfer_read %from_elements_35[%rank], %cst_64 : tensor<1xf32>, vector<f32>
        scf.yield %c758892014_i32 : i32
      }
      case 3 {
        %253 = math.cos %103 : tensor<f16>
        %254 = vector.broadcast %cst_30 : f32 to vector<6x1xf32>
        %255 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %33, %54, %254 : vector<1xf32>, vector<1x6x1xf32> into vector<6x1xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_60 = arith.constant 0 : i32
        %256 = vector.transfer_read %1[%125], %c0_i32_60 : tensor<1xi32>, vector<i32>
        %257 = bufferization.clone %140 : memref<1xi16> to memref<1xi16>
        %258 = tensor.empty() : tensor<1xf16>
        %259 = arith.divf %cst_1, %cst_1 : f16
        %260 = vector.broadcast %cst_30 : f32 to vector<1x6xf32>
        %dest_61, %accumulated_value_62 = vector.scan <mul>, %53, %260 {inclusive = true, reduction_dim = 2 : i64} : vector<1x6x1xf32>, vector<1x6xf32>
        %261 = vector.splat %cst_3 : vector<1x6x1xf16>
        %262 = tensor.empty() : tensor<1x15xf32>
        %263 = index.maxs %170, %57
        %264 = vector.reduction <maxf>, %33 : vector<1xf32> into f32
        %265 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %266 = affine.load %alloc_9[%c5] : memref<1xf32>
        %267 = math.exp %2 : tensor<15xf32>
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3, 0, d2)>(%c10, %c7, %101, %c6)
        %269 = vector.transpose %27, [1, 0] : vector<1x15xf32> to vector<15x1xf32>
        scf.yield %c758892014_i32 : i32
      }
      default {
        %253 = arith.xori %true_2, %false_6 : i1
        %254 = arith.remui %84, %false_6 : i1
        %255 = math.floor %transposed : tensor<15xf16>
        %256 = vector.reduction <add>, %110 : vector<15xf32> into f32
        %257 = tensor.empty(%23) : tensor<1x?xf16>
        %258 = vector.broadcast %cst_30 : f32 to vector<15xf32>
        %259 = vector.fma %258, %258, %110 : vector<15xf32>
        %false_60 = index.bool.constant false
        %260 = arith.minui %c454485149_i64, %c454485149_i64 : i64
        %true_61 = index.bool.constant true
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %159, %33, %110 : vector<1x15xf32>, vector<1xf32> into vector<15xf32>
        %262 = vector.broadcast %c3 : index to vector<6xindex>
        %263 = vector.broadcast %cst_30 : f32 to vector<6xf32>
        vector.scatter %29[%c0] [%262], %19, %263 : memref<1xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %264 = arith.cmpf true, %cst, %cst_1 : f16
        %265 = memref.load %245[%c0, %c2, %c0] : memref<1x6x1xi64>
        %266 = math.ipowi %c454485149_i64, %c1461889454_i64 : i64
        %267 = math.log10 %expanded : tensor<15x1xf16>
        %268 = vector.splat %60 : vector<1xindex>
        scf.yield %c758892014_i32 : i32
      }
      %252 = vector.broadcast %c5175_i16 : i16 to vector<1x6x1xi16>
      scf.condition(%true) %false : i1
    } do {
    ^bb0(%arg2: i1):
      %alloc_60 = memref.alloc() : memref<1xi32>
      memref.tensor_store %1, %alloc_60 : memref<1xi32>
      %245 = tensor.empty() : tensor<1x6x1xi32>
      %mapped_61 = linalg.map ins(%114, %13 : memref<1x6x1xi32>, tensor<1x6x1xi32>) outs(%245 : tensor<1x6x1xi32>)
        (%in: i32, %in_63: i32) {
          %260 = vector.broadcast %cst_24 : f32 to vector<f32>
          vector.transfer_write %260, %alloc_10[%35] : vector<f32>, memref<1xf32>
          %expanded_64 = tensor.expand_shape %generated [[0], [1, 2]] : tensor<?x15xf16> into tensor<?x15x1xf16>
          %261 = math.tan %15 : tensor<15xf16>
          %262 = index.casts %64 : index to i32
          %263 = index.sub %57, %c0
          %264 = vector.broadcast %cst_24 : f32 to vector<1xf32>
          %265 = vector.fma %264, %264, %264 : vector<1xf32>
          %266 = math.ipowi %true_2, %false : i1
          %from_elements_65 = tensor.from_elements %false_5, %true_2, %true_2, %false, %false, %false_5, %true, %false_5, %78, %84, %false_5, %false, %84, %84, %arg2 : tensor<15xi1>
          %267 = arith.shrui %true_2, %false_5 : i1
          %268 = arith.andi %true_2, %78 : i1
          %269 = vector.load %alloc_18[%c0, %c3, %c0] : memref<1x6x1xi1>, vector<1x6x1xi1>
          %270 = vector.broadcast %cst_24 : f32 to vector<15xf32>
          %271 = vector.fma %270, %110, %270 : vector<15xf32>
          %272 = vector.broadcast %cst_24 : f32 to vector<6x1xf32>
          %273 = vector.insert %272, %53 [0] : vector<6x1xf32> into vector<1x6x1xf32>
          %collapsed_66 = tensor.collapse_shape %9 [[0, 1]] : tensor<1x15xi64> into tensor<15xi64>
          %274 = arith.cmpi ule, %c5175_i16, %c5175_i16 : i16
          %275 = math.absf %cst : f16
          %276 = arith.maxsi %c-7041_i16, %c5175_i16 : i16
          %277 = math.ctpop %true : i1
          %278 = arith.maxui %c-7041_i16, %c-26820_i16 : i16
          %279 = tensor.empty() : tensor<15x6xi32>
          %280 = tensor.empty() : tensor<1x6xi32>
          %281 = linalg.matmul ins(%5, %279 : tensor<1x15xi32>, tensor<15x6xi32>) outs(%280 : tensor<1x6xi32>) -> tensor<1x6xi32>
          %282 = arith.maxsi %in, %c758892014_i32 : i32
          %expanded_67 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<15x1xf16> into tensor<15x1x1xf16>
          %283 = vector.multi_reduction <add>, %160, %33 [1] : vector<1x15xf32> to vector<1xf32>
          %284 = affine.load %alloc_20[%c15, %c6] : memref<1x15xf32>
          %285 = math.tanh %cst_3 : f16
          %286 = bufferization.clone %alloc_13 : memref<1x6x1xi64> to memref<1x6x1xi64>
          %287 = index.mul %125, %170
          %288 = math.atan %15 : tensor<15xf16>
          %289 = arith.maxf %cst_1, %cst_4 : f16
          %dest_68, %accumulated_value_69 = vector.scan <mul>, %53, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6x1xf32>, vector<6x1xf32>
          %290 = arith.xori %c454485149_i64, %c1461889454_i64 : i64
          %291 = arith.divf %284, %284 : f32
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %246 = index.sizeof
      %247 = vector.create_mask %35 : vector<1xi1>
      %248 = math.log2 %cst_1 : f16
      %249 = math.fma %2, %2, %from_elements : tensor<15xf32>
      %expanded_62 = tensor.expand_shape %expanded_27 [[0], [1], [2, 3]] : tensor<1x15x1xi16> into tensor<1x15x1x1xi16>
      %250 = vector.reduction <mul>, %24 : vector<1xi1> into i1
      %251 = arith.maxsi %c5175_i16, %c-26820_i16 : i16
      %252 = math.expm1 %from_elements_35 : tensor<1xf32>
      %253 = arith.addi %c-26820_i16, %c5175_i16 : i16
      %254 = tensor.empty() : tensor<15xi32>
      %255 = math.fpowi %transposed, %254 : tensor<15xf16>, tensor<15xi32>
      %256 = vector.splat %false : vector<1x6x1xi1>
      bufferization.dealloc_tensor %254 : tensor<15xi32>
      %257 = math.exp %8 : tensor<1xf32>
      %258 = vector.broadcast %cst_30 : f32 to vector<1x6x1xf32>
      %259 = vector.fma %258, %53, %258 : vector<1x6x1xf32>
      scf.yield %true_2 : i1
    }
    %cast_38 = tensor.cast %5 : tensor<1x15xi32> to tensor<?x?xi32>
    %173 = index.sizeof
    %174 = arith.maxui %84, %false : i1
    %from_elements_39 = tensor.from_elements %cst_24, %cst_30, %cst_24, %cst_24, %cst_30, %cst_24 : tensor<1x6x1xf32>
    %175 = math.ctpop %true_2 : i1
    scf.index_switch %44 
    case 1 {
      %245 = affine.load %alloc_22[] : memref<i1>
      %246 = index.add %44, %c0
      %247 = math.tanh %14 : tensor<1x6x1xf16>
      %248 = index.maxs %c10, %c4
      %249 = math.round %7 : tensor<1x6x1xf16>
      %250 = index.maxu %c9, %44
      %251 = vector.broadcast %c11 : index to vector<8xindex>
      %252 = vector.broadcast %false_6 : i1 to vector<8xi1>
      %253 = vector.broadcast %c758892014_i32 : i32 to vector<8xi32>
      vector.scatter %alloc_16[%c0, %c14] [%251], %252, %253 : memref<1x15xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
      %254 = arith.ceildivsi %c5175_i16, %c-26820_i16 : i16
      %255 = arith.ceildivsi %c758892014_i32, %c758892014_i32 : i32
      %256 = math.round %cst_4 : f16
      %rank_60 = tensor.rank %1 : tensor<1xi32>
      %257 = bufferization.clone %alloc_17 : memref<1x6x1xi1> to memref<1x6x1xi1>
      %258 = index.floordivs %c9, %c9
      %259 = arith.andi %false, %false_5 : i1
      %260 = arith.addf %cst_30, %cst_24 : f32
      %generated_61 = tensor.generate %102, %c14 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %261 = arith.muli %false_5, %true_2 : i1
        %262 = math.ctpop %c-26820_i16 : i16
        %263 = arith.addi %c454485149_i64, %c1461889454_i64 : i64
        %264 = tensor.empty(%80) : tensor<?xf16>
        tensor.yield %c758892014_i32 : i32
      } : tensor<?x?x1xi32>
      scf.yield
    }
    default {
      %245 = arith.maxui %c-7041_i16, %c-26820_i16 : i16
      %246 = math.cos %transposed : tensor<15xf16>
      %247 = vector.create_mask %127, %c3, %23 : vector<1x6x1xi1>
      %248 = index.maxu %102, %c4
      %249 = math.cos %from_elements_35 : tensor<1xf32>
      %250 = vector.broadcast %true_2 : i1 to vector<15xi1>
      %251 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %113, %168, %250 : vector<1x15xi1>, vector<1xi1> into vector<15xi1>
      %252 = vector.create_mask %248 : vector<15xi1>
      %253 = math.log2 %15 : tensor<15xf16>
      %inserted_60 = tensor.insert %c5175_i16 into %6[%c0] : tensor<1xi16>
      %254 = math.ceil %15 : tensor<15xf16>
      %255 = arith.ceildivsi %c758892014_i32, %c758892014_i32 : i32
      %256 = math.exp %16 : tensor<15xf16>
      %cast_61 = tensor.cast %13 : tensor<1x6x1xi32> to tensor<?x?x?xi32>
      %257 = tensor.empty() : tensor<1x6x1xi1>
      %mapped_62 = linalg.map ins(%11 : tensor<1x6x1xi1>) outs(%257 : tensor<1x6x1xi1>)
        (%in: i1) {
          %260 = arith.divf %cst_1, %cst_0 : f16
          %261 = memref.atomic_rmw andi %c5175_i16, %140[%c0] : (i16, memref<1xi16>) -> i16
          %262 = arith.remf %cst_0, %cst : f16
          %true_63 = index.bool.constant true
          %dest_64, %accumulated_value_65 = vector.scan <mul>, %159, %110 {inclusive = false, reduction_dim = 0 : i64} : vector<1x15xf32>, vector<15xf32>
          %263 = index.casts %c2 : index to i32
          %rank_66 = tensor.rank %5 : tensor<1x15xi32>
          %extracted = tensor.extract %5[%c0, %c12] : tensor<1x15xi32>
          %rank_67 = tensor.rank %5 : tensor<1x15xi32>
          %264 = arith.negf %cst_0 : f16
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_68 = arith.constant 0 : i16
          %265 = vector.transfer_read %4[%23], %c0_i16_68 : tensor<1xi16>, vector<i16>
          %266 = math.absf %15 : tensor<15xf16>
          %267 = bufferization.to_memref %13 : memref<1x6x1xi32>
          %splat_69 = tensor.splat %c0_i16 : tensor<15xi16>
          %splat_70 = tensor.splat %cst_0 : tensor<1x6x1xf16>
          %rank_71 = tensor.rank %transposed : tensor<15xf16>
          %from_elements_72 = tensor.from_elements %78 : tensor<1xi1>
          %268 = index.mul %rank, %102
          %269 = arith.cmpf ult, %cst_4, %cst_1 : f16
          %270 = vector.shuffle %73, %73 [1] : vector<1xi16>, vector<1xi16>
          %271 = arith.maxui %c758892014_i32, %extracted : i32
          %272 = memref.realloc %alloc_14 : memref<1xf32> to memref<8xf32>
          %273 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 2 - 16)>(%c2, %c7)
          %274 = math.tanh %7 : tensor<1x6x1xf16>
          %275 = math.ceil %collapsed_33 : tensor<6xf32>
          %276 = math.round %cst_0 : f16
          %from_elements_73 = tensor.from_elements %c5175_i16, %c-26820_i16, %c5175_i16, %c0_i16, %c5175_i16, %c-7041_i16, %c0_i16, %c-7041_i16, %c0_i16, %c-7041_i16, %c5175_i16, %c5175_i16, %c-7041_i16, %c-7041_i16, %c0_i16 : tensor<1x15xi16>
          %277 = vector.maskedload %alloc_15[%c0, %c7], %19, %19 : memref<1x15xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
          %true_74 = index.bool.constant true
          %278 = vector.broadcast %cst_30 : f32 to vector<1x6xf32>
          %dest_75, %accumulated_value_76 = vector.scan <minf>, %31, %278 {inclusive = false, reduction_dim = 2 : i64} : vector<1x6x1xf32>, vector<1x6xf32>
          %279 = vector.load %alloc[%c0] : memref<1xi1>, vector<1x6x1xi1>
          %280 = arith.divui %false_6, %true_2 : i1
          %false_77 = arith.constant false
          linalg.yield %false_77 : i1
        }
      %258 = arith.minsi %c758892014_i32, %c758892014_i32 : i32
      %259 = vector.broadcast %26 : index to vector<6xindex>
      vector.scatter %alloc[%c0] [%259], %19, %19 : memref<1xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
    }
    %176 = vector.matrix_multiply %117, %117 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %177 = math.powf %cst_4, %cst_1 : f16
    %178 = arith.maxui %c1461889454_i64, %c454485149_i64 : i64
    %179 = arith.subi %c-26820_i16, %c-7041_i16 : i16
    %180 = bufferization.to_memref %20 : memref<f16>
    %181 = arith.xori %false, %false : i1
    %182 = index.maxu %170, %c2
    %collapsed_40 = tensor.collapse_shape %0 [[0, 1]] : tensor<1x15xf16> into tensor<15xf16>
    %183 = scf.while (%arg2 = %alloc_20) : (memref<1x15xf32>) -> memref<1x15xf32> {
      %245 = index.mul %101, %52
      %246 = vector.reduction <maxui>, %19 : vector<6xi1> into i1
      %247 = arith.xori %84, %true : i1
      %dest_60, %accumulated_value_61 = vector.scan <minf>, %28, %33 {inclusive = true, reduction_dim = 1 : i64} : vector<1x15xf32>, vector<1xf32>
      %dest_62, %accumulated_value_63 = vector.scan <xor>, %113, %117 {inclusive = true, reduction_dim = 1 : i64} : vector<1x15xi1>, vector<1xi1>
      %248 = math.fpowi %12, %13 : tensor<1x6x1xf32>, tensor<1x6x1xi32>
      %249 = arith.andi %84, %78 : i1
      %expanded_64 = tensor.expand_shape %2 [[0, 1]] : tensor<15xf32> into tensor<15x1xf32>
      scf.condition(%true) %alloc_20 : memref<1x15xf32>
    } do {
    ^bb0(%arg2: memref<1x15xf32>):
      %245 = index.divu %101, %44
      %246 = math.log10 %collapsed : tensor<6x1xf32>
      %247 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %110, %159, %33 : vector<15xf32>, vector<1x15xf32> into vector<1xf32>
      %248 = affine.load %alloc[%c14] : memref<1xi1>
      %249 = math.log2 %2 : tensor<15xf32>
      %250 = affine.load %alloc_13[%c10, %c3, %c15] : memref<1x6x1xi64>
      %251 = arith.addi %c454485149_i64, %c1461889454_i64 : i64
      %252 = index.sub %111, %64
      %253 = vector.broadcast %c-26820_i16 : i16 to vector<1x6x1xi16>
      %254 = vector.broadcast %84 : i1 to vector<1x6x1xi1>
      %255 = vector.broadcast %c758892014_i32 : i32 to vector<1x6x1xi32>
      %256 = vector.gather %10[%c7] [%255], %254, %253 : tensor<15xi16>, vector<1x6x1xi32>, vector<1x6x1xi1>, vector<1x6x1xi16> into vector<1x6x1xi16>
      %257 = math.log2 %transposed : tensor<15xf16>
      %inserted_60 = tensor.insert %cst_30 into %collapsed[%c0, %c0] : tensor<6x1xf32>
      %258 = bufferization.clone %97 : memref<1x6x1xi32> to memref<1x6x1xi32>
      %259 = vector.splat %c12 : vector<1xindex>
      %260 = index.sub %c0, %c2
      %261 = arith.shli %true, %true_2 : i1
      %262 = vector.matrix_multiply %176, %176 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      scf.yield %alloc_20 : memref<1x15xf32>
    }
    %184 = index.maxs %80, %111
    %185 = arith.shli %c-7041_i16, %c-7041_i16 : i16
    %186 = index.maxs %125, %c7
    %cst_41 = arith.constant 1.000000e+00 : f32
    %cst_42 = arith.constant 0.000000e+00 : f32
    %187 = vector.transfer_read %collapsed[%c8, %127], %cst_42 : tensor<6x1xf32>, vector<f32>
    %188 = math.cos %18 : tensor<15xf16>
    %from_elements_43 = tensor.from_elements %78, %84, %false_6, %false_5, %78, %false_6 : tensor<1x6x1xi1>
    %189 = scf.if %false_6 -> (f32) {
      %245 = math.cttz %c-7041_i16 : i16
      %246 = math.round %14 : tensor<1x6x1xf16>
      %247 = math.cttz %13 : tensor<1x6x1xi32>
      %splat_60 = tensor.splat %84 : tensor<1xi1>
      %from_elements_61 = tensor.from_elements %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64, %c454485149_i64, %c454485149_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64, %c454485149_i64 : tensor<15xi64>
      %248 = arith.maxf %cst_30, %cst_30 : f32
      %249 = index.floordivs %c10, %c13
      %250 = arith.divf %cst_3, %cst : f16
      scf.yield %cst_41 : f32
    } else {
      %245 = math.round %collapsed_40 : tensor<15xf16>
      %rank_60 = tensor.rank %4 : tensor<1xi16>
      %246 = index.sub %c9, %c1
      %247 = vector.load %alloc[%c0] : memref<1xi1>, vector<1xi1>
      %alloc_61 = memref.alloc() : memref<1x15xf16>
      memref.tensor_store %0, %alloc_61 : memref<1x15xf16>
      %248 = math.sqrt %103 : tensor<f16>
      %249 = math.log1p %0 : tensor<1x15xf16>
      %alloc_62 = memref.alloc() : memref<1x6x1xi16>
      %250 = vector.gather %alloc_62[%c7, %80, %c0] [%72], %176, %73 : memref<1x6x1xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      scf.yield %cst_41 : f32
    }
    %190 = bufferization.clone %alloc_13 : memref<1x6x1xi64> to memref<1x6x1xi64>
    %191 = index.maxu %184, %186
    %192 = arith.remui %84, %78 : i1
    %193 = arith.minsi %c454485149_i64, %c1461889454_i64 : i64
    %194 = bufferization.clone %alloc_10 : memref<1xf32> to memref<1xf32>
    %195 = math.ctlz %c1461889454_i64 : i64
    %196 = arith.ceildivsi %c-26820_i16, %c-26820_i16 : i16
    %197 = arith.negf %cst_24 : f32
    %198 = math.ceil %12 : tensor<1x6x1xf32>
    %199 = arith.divui %c454485149_i64, %c454485149_i64 : i64
    %true_44 = arith.constant true
    %false_45 = arith.constant false
    %200 = vector.transfer_read %alloc_12[%c7, %26], %false_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<1x15xi1>, vector<8xi1>
    %201 = index.divu %101, %c1
    %collapsed_46 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<1x6x1xi32> into tensor<6x1xi32>
    scf.index_switch %57 
    case 1 {
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_60 = arith.constant 0 : i16
      %245 = vector.transfer_read %10[%57], %c0_i16_60 : tensor<15xi16>, vector<i16>
      %expanded_61 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<1x15xi16> into tensor<1x15x1xi16>
      %246 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<6xi1> to vector<2xi1>
      %247 = index.mul %127, %c9
      %248 = math.absf %103 : tensor<f16>
      %249 = math.atan2 %0, %0 : tensor<1x15xf16>
      %250 = math.tan %16 : tensor<15xf16>
      %251 = arith.cmpi sge, %c454485149_i64, %c454485149_i64 : i64
      %252 = arith.divui %true_44, %78 : i1
      %collapsed_62 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x6x1xf32> into tensor<6x1xf32>
      memref.copy %alloc_14, %29 : memref<1xf32> to memref<1xf32>
      %253 = math.atan %8 : tensor<1xf32>
      %generated_63 = tensor.generate %191 {
      ^bb0(%arg2: index, %arg3: index):
        %257 = math.cos %20 : tensor<f16>
        %258 = math.absf %from_elements_39 : tensor<1x6x1xf32>
        %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %71, %73, %c-7041_i16 : vector<1xi16>, vector<1xi16> into i16
        %260 = math.ceil %from_elements_39 : tensor<1x6x1xf32>
        tensor.yield %c1461889454_i64 : i64
      } : tensor<?x15xi64>
      %254 = vector.broadcast %cst_24 : f32 to vector<1x6xf32>
      %dest_64, %accumulated_value_65 = vector.scan <add>, %30, %254 {inclusive = true, reduction_dim = 2 : i64} : vector<1x6x1xf32>, vector<1x6xf32>
      %cst_66 = arith.constant 1.000000e+00 : f32
      %cst_67 = arith.constant 0.000000e+00 : f32
      %255 = vector.transfer_read %alloc_9[%191], %cst_67 : memref<1xf32>, vector<f32>
      %256 = arith.maxf %cst_66, %cst_30 : f32
      scf.yield
    }
    case 2 {
      %245 = math.atan2 %103, %21 : tensor<f16>
      %246 = arith.minf %cst_4, %cst_3 : f16
      %from_elements_60 = tensor.from_elements %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64 : tensor<15xi64>
      %247 = arith.ceildivsi %c1461889454_i64, %c454485149_i64 : i64
      %248 = index.mul %c8, %182
      %249 = arith.maxf %cst, %cst_4 : f16
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11, %alloc_11 : memref<1xf16>, memref<1xf16>) outs(%14 : tensor<1x6x1xf16>) {
      ^bb0(%in: f16, %in_64: f16, %out: f16):
        %258 = index.mul %57, %101
        %259 = vector.splat %111 : vector<1x15xindex>
        %260 = vector.splat %c13 : vector<1xindex>
        %261 = math.absf %21 : tensor<f16>
        %262 = math.absf %0 : tensor<1x15xf16>
        %263 = math.cos %in : f16
        %264 = vector.broadcast %true : i1 to vector<15xi1>
        %265 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %113, %24, %264 : vector<1x15xi1>, vector<1xi1> into vector<15xi1>
        %266 = math.atan %out : f16
        %267 = arith.xori %c758892014_i32, %c758892014_i32 : i32
        affine.store %false_6, %alloc_17[%c12, %c5, %c0] : memref<1x6x1xi1>
        %268 = vector.broadcast %c7 : index to vector<8xindex>
        %269 = vector.broadcast %true : i1 to vector<8xi1>
        vector.scatter %alloc_17[%c0, %c4, %c0] [%268], %269, %269 : memref<1x6x1xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %from_elements_65 = tensor.from_elements %cst_24, %cst_41, %cst_30, %cst_30, %cst_24, %cst_30, %cst_24, %cst_30, %cst_24, %cst_30, %189, %cst_24, %cst_41, %cst_30, %cst_24 : tensor<15xf32>
        %true_66 = index.bool.constant true
        %rank_67 = tensor.rank %7 : tensor<1x6x1xf16>
        %270 = memref.atomic_rmw minf %cst_24, %100[%c0] : (f32, memref<1xf32>) -> f32
        %rank_68 = tensor.rank %5 : tensor<1x15xi32>
        %271 = vector.broadcast %cst_24 : f32 to vector<6x1xf32>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %33, %31, %271 : vector<1xf32>, vector<1x6x1xf32> into vector<6x1xf32>
        %273 = arith.ceildivsi %c758892014_i32, %c758892014_i32 : i32
        %274 = index.casts %102 : index to i32
        affine.store %true_66, %alloc_12[%c0, %c2] : memref<1x15xi1>
        %275 = math.sqrt %out : f16
        %276 = math.absi %1 : tensor<1xi32>
        %277 = bufferization.clone %alloc_12 : memref<1x15xi1> to memref<1x15xi1>
        %278 = math.ipowi %splat, %splat : tensor<1x15xi16>
        %279 = arith.minui %false_6, %true_2 : i1
        %280 = vector.broadcast %189 : f32 to vector<6xf32>
        %281 = vector.transfer_write %280, %from_elements_39[%c10, %c14, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xf32>, tensor<1x6x1xf32>
        %282 = index.mul %44, %201
        %283 = index.castu %84 : i1 to index
        bufferization.dealloc_tensor %7 : tensor<1x6x1xf16>
        %284 = vector.broadcast %cst_24 : f32 to vector<15xf32>
        %285 = vector.fma %284, %284, %110 : vector<15xf32>
        %286 = vector.splat %c15 : vector<1x15xindex>
        %287 = math.ctlz %splat : tensor<1x15xi16>
        linalg.yield %in : f16
      } -> tensor<1x6x1xf16>
      %251 = arith.andi %84, %84 : i1
      %252 = arith.andi %c454485149_i64, %c454485149_i64 : i64
      bufferization.dealloc_tensor %3 : tensor<1x15xi1>
      %253 = index.divu %c15, %26
      %alloc_61 = memref.alloc() : memref<1x15xf16>
      %254 = math.cttz %false : i1
      %cst_62 = arith.constant 1.000000e+00 : f16
      %cst_63 = arith.constant 0.000000e+00 : f16
      %255 = vector.transfer_read %18[%rank_28], %cst_63 : tensor<15xf16>, vector<f16>
      %256 = memref.realloc %alloc_21 : memref<15xf16> to memref<1xf16>
      %257 = math.exp %collapsed : tensor<6x1xf32>
      scf.yield
    }
    default {
      %rank_60 = tensor.rank %14 : tensor<1x6x1xf16>
      %generated_61 = tensor.generate %c11 {
      ^bb0(%arg2: index):
        %259 = vector.matrix_multiply %19, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
        %260 = math.tan %cst_1 : f16
        %261 = arith.cmpi sge, %true_44, %84 : i1
        %262 = arith.minsi %c1461889454_i64, %c1461889454_i64 : i64
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %245 = math.exp2 %189 : f32
      %246 = vector.reduction <maxsi>, %72 : vector<1xi32> into i32
      %247 = math.absf %12 : tensor<1x6x1xf32>
      memref.alloca_scope  {
        %259 = vector.broadcast %189 : f32 to vector<1x6xf32>
        %dest_62, %accumulated_value_63 = vector.scan <minf>, %53, %259 {inclusive = false, reduction_dim = 2 : i64} : vector<1x6x1xf32>, vector<1x6xf32>
        %260 = arith.addf %cst_30, %cst_41 : f32
        %261 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %262 = math.fpowi %14, %13 : tensor<1x6x1xf16>, tensor<1x6x1xi32>
        %263 = arith.minui %false_5, %true_44 : i1
        %264 = arith.divf %cst_41, %189 : f32
        %265 = math.atan %collapsed : tensor<6x1xf32>
        %266 = math.round %189 : f32
        %267 = vector.insert %78, %176 [0] : i1 into vector<1xi1>
        %268 = arith.minui %false_5, %false : i1
        %269 = vector.broadcast %c-26820_i16 : i16 to vector<i16>
        %270 = vector.transfer_write %269, %4[%c13] : vector<i16>, tensor<1xi16>
        %271 = arith.maxui %c5175_i16, %c-7041_i16 : i16
        %272 = vector.broadcast %c2 : index to vector<1xindex>
        vector.scatter %alloc_10[%c0] [%272], %176, %33 : memref<1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %273 = vector.broadcast %cst_30 : f32 to vector<1x15xf32>
        %274 = vector.fma %273, %159, %159 : vector<1x15xf32>
        %splat_64 = tensor.splat %189 : tensor<1x15xf32>
        %275 = arith.minui %c-26820_i16, %c-7041_i16 : i16
        %276 = arith.ceildivsi %false_6, %false : i1
        %277 = index.castu %c1461889454_i64 : i64 to index
        %278 = vector.load %114[%c0, %c2, %c0] : memref<1x6x1xi32>, vector<1xi32>
        %279 = arith.xori %c454485149_i64, %c454485149_i64 : i64
        %280 = arith.shrui %84, %false : i1
        %extracted = tensor.extract %1[%c0] : tensor<1xi32>
        %281 = vector.broadcast %127 : index to vector<15xindex>
        %282 = vector.broadcast %84 : i1 to vector<15xi1>
        %283 = vector.broadcast %cst_3 : f16 to vector<15xf16>
        vector.scatter %180[] [%281], %282, %283 : memref<f16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %278, %278, %extracted : vector<1xi32>, vector<1xi32> into i32
        %splat_65 = tensor.splat %c5175_i16 : tensor<1x15xi16>
        %285 = math.absi %c454485149_i64 : i64
        %286 = vector.reduction <mul>, %19 : vector<6xi1> into i1
        %287 = index.maxs %127, %25
        %288 = memref.realloc %alloc_21 : memref<15xf16> to memref<1xf16>
        memref.tensor_store %splat_64, %alloc_20 : memref<1x15xf32>
        %289 = vector.extract %33[0] : vector<1xf32>
        %290 = math.rsqrt %7 : tensor<1x6x1xf16>
      }
      %248 = memref.realloc %alloc_10 : memref<1xf32> to memref<6xf32>
      %249 = vector.broadcast %189 : f32 to vector<15xf32>
      %250 = vector.fma %249, %110, %110 : vector<15xf32>
      %251 = arith.maxsi %78, %false_5 : i1
      %252 = math.atan2 %cst_3, %cst_4 : f16
      %253 = arith.minui %c1461889454_i64, %c454485149_i64 : i64
      %254 = math.ceil %cst_3 : f16
      %255 = vector.extract_strided_slice %54 {offsets = [0], sizes = [1], strides = [1]} : vector<1x6x1xf32> to vector<1x6x1xf32>
      %256 = math.absi %c5175_i16 : i16
      %257 = math.log2 %cst_4 : f16
      %258 = memref.load %194[%c0] : memref<1xf32>
    }
    %202 = index.mul %191, %rank
    %203 = math.fma %15, %17, %transposed : tensor<15xf16>
    %204 = vector.extract_strided_slice %71 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
    %205 = index.sub %186, %101
    %alloca_47 = memref.alloca() : memref<1xi32>
    %206 = vector.broadcast %false_5 : i1 to vector<15xi1>
    %207 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %113, %168, %206 : vector<1x15xi1>, vector<1xi1> into vector<15xi1>
    %208 = vector.matrix_multiply %71, %204 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
    %209 = arith.maxsi %false_6, %false_5 : i1
    %210 = tensor.empty() : tensor<1x6x1xf16>
    %211 = vector.broadcast %cst_30 : f32 to vector<1x15xf32>
    %212 = vector.fma %211, %28, %160 : vector<1x15xf32>
    %213 = math.atan %cst_41 : f32
    %inserted = tensor.insert %c1461889454_i64 into %9[%c0, %c14] : tensor<1x15xi64>
    %from_elements_48 = tensor.from_elements %c1461889454_i64, %c1461889454_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64 : tensor<1x6x1xi64>
    %214 = math.ceil %103 : tensor<f16>
    %215 = affine.for %arg2 = 0 to 113 iter_args(%arg3 = %7) -> (tensor<1x6x1xf16>) {
      affine.yield %arg3 : tensor<1x6x1xf16>
    }
    affine.store %cst_3, %180[] : memref<f16>
    %216 = bufferization.clone %194 : memref<1xf32> to memref<1xf32>
    %217 = arith.divui %c5175_i16, %c5175_i16 : i16
    %218 = vector.create_mask %c9, %rank_28 : vector<1x15xi1>
    bufferization.dealloc_tensor %15 : tensor<15xf16>
    %dest_49, %accumulated_value_50 = vector.scan <minf>, %28, %33 {inclusive = true, reduction_dim = 1 : i64} : vector<1x15xf32>, vector<1xf32>
    %219 = math.log10 %from_elements_39 : tensor<1x6x1xf32>
    %220 = vector.load %alloc_13[%c0, %c0, %c0] : memref<1x6x1xi64>, vector<15xi64>
    %221 = scf.execute_region -> vector<1x15xf16> {
      scf.if %true {
        %256 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%125, %c12, %c8, %c10)
        %257 = index.floordivs %170, %102
        %258 = vector.broadcast %cst_41 : f32 to vector<6x1xf32>
        %dest_63, %accumulated_value_64 = vector.scan <mul>, %31, %258 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6x1xf32>, vector<6x1xf32>
        %259 = vector.splat %64 : vector<1xindex>
        %260 = bufferization.to_memref %splat : memref<1x15xi16>
        %cast_65 = tensor.cast %6 : tensor<1xi16> to tensor<?xi16>
        %261 = math.atan %17 : tensor<15xf16>
        %262 = bufferization.to_memref %10 : memref<15xi16>
      } else {
        %256 = math.ctlz %false_6 : i1
        %257 = arith.addf %cst, %cst_3 : f16
        %258 = arith.remf %cst, %cst_0 : f16
        %from_elements_63 = tensor.from_elements %c1461889454_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64, %c1461889454_i64, %c454485149_i64 : tensor<1x6x1xi64>
        %259 = vector.matrix_multiply %208, %71 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %260 = math.atan %8 : tensor<1xf32>
        %261 = math.atan %cst_24 : f32
        affine.store %84, %145[%c5, %c8] : memref<1x15xi1>
      }
      %245 = affine.if affine_set<(d0, d1) : (d1 + 64 >= 0, d0 ceildiv 16 == 0, d0 ceildiv 16 + 2 == 0, d1 + 8 >= 0)>(%c13, %c2) -> memref<1x15xf32> {
        %256 = vector.broadcast %c758892014_i32 : i32 to vector<1x6x1xi32>
        %257 = vector.broadcast %false_6 : i1 to vector<1x6x1xi1>
        %258 = vector.gather %1[%c7] [%256], %257, %256 : tensor<1xi32>, vector<1x6x1xi32>, vector<1x6x1xi1>, vector<1x6x1xi32> into vector<1x6x1xi32>
        %alloc_63 = memref.alloc() : memref<1xi16>
        memref.copy %140, %alloc_63 : memref<1xi16> to memref<1xi16>
        %259 = math.atan %0 : tensor<1x15xf16>
        %splat_64 = tensor.splat %78 : tensor<1xi1>
        %260 = arith.remui %false_5, %false_6 : i1
        %261 = vector.splat %52 : vector<1x6x1xindex>
        %262 = arith.shrui %false_5, %true_2 : i1
        %263 = vector.insert %c1461889454_i64, %220 [6] : i64 into vector<15xi64>
        affine.yield %alloc_20 : memref<1x15xf32>
      } else {
        %alloc_63 = memref.alloc() : memref<1x1xf32>
        %256 = tensor.empty() : tensor<6x1xf32>
        %257 = linalg.matmul ins(%collapsed, %alloc_63 : tensor<6x1xf32>, memref<1x1xf32>) outs(%256 : tensor<6x1xf32>) -> tensor<6x1xf32>
        %cast_64 = tensor.cast %18 : tensor<15xf16> to tensor<?xf16>
        %258 = math.absf %15 : tensor<15xf16>
        %259 = index.floordivs %c11, %c3
        %260 = vector.broadcast %26 : index to vector<6xindex>
        %261 = vector.broadcast %c454485149_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_13[%c0, %c3, %c0] [%260], %19, %261 : memref<1x6x1xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        %262 = arith.remf %cst_4, %cst_0 : f16
        %rank_65 = tensor.rank %2 : tensor<15xf32>
        %263 = index.sub %101, %52
        affine.yield %alloc_20 : memref<1x15xf32>
      }
      %246 = arith.maxf %cst_1, %cst_3 : f16
      %247 = math.rsqrt %from_elements_35 : tensor<1xf32>
      memref.copy %194, %100 : memref<1xf32> to memref<1xf32>
      %248 = arith.shli %true_44, %false_5 : i1
      %expanded_60 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<1x6x1xf32> into tensor<1x6x1x1xf32>
      %249 = arith.ceildivsi %c454485149_i64, %c1461889454_i64 : i64
      %250 = index.casts %c1461889454_i64 : i64 to index
      %251 = arith.remui %c1461889454_i64, %c454485149_i64 : i64
      %252 = math.ctlz %13 : tensor<1x6x1xi32>
      %253 = math.powf %14, %210 : tensor<1x6x1xf16>
      %254 = math.exp2 %0 : tensor<1x15xf16>
      %collapsed_61 = tensor.collapse_shape %0 [[0, 1]] : tensor<1x15xf16> into tensor<15xf16>
      %cast_62 = tensor.cast %transposed : tensor<15xf16> to tensor<?xf16>
      bufferization.dealloc_tensor %from_elements_43 : tensor<1x6x1xi1>
      %255 = vector.broadcast %cst_0 : f16 to vector<1x15xf16>
      scf.yield %255 : vector<1x15xf16>
    }
    %222 = bufferization.clone %alloc_23 : memref<15xf16> to memref<15xf16>
    %223 = tensor.empty() : tensor<1x6x1xi32>
    %mapped_51 = linalg.map ins(%13, %alloc_7, %13 : tensor<1x6x1xi32>, memref<1x6x1xi32>, tensor<1x6x1xi32>) outs(%223 : tensor<1x6x1xi32>)
      (%in: i32, %in_60: i32, %in_61: i32) {
        %alloca_62 = memref.alloca() : memref<1x6x1xi64>
        %splat_63 = tensor.splat %true_44 : tensor<1x6x1xi1>
        %245 = tensor.empty() : tensor<1x1x6xf16>
        %246 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%245 : tensor<1x1x6xf16>) outs(%14 : tensor<1x6x1xf16>) {
        ^bb0(%in_69: f16, %out: f16):
          %278 = math.ipowi %in_60, %c758892014_i32 : i32
          %279 = math.log2 %in_69 : f16
          %280 = arith.addi %in_60, %in_60 : i32
          %281 = vector.shuffle %117, %176 [1] : vector<1xi1>, vector<1xi1>
          %282 = math.ctpop %4 : tensor<1xi16>
          %283 = vector.extract_strided_slice %73 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
          %true_70 = index.bool.constant true
          %rank_71 = tensor.rank %3 : tensor<1x15xi1>
          %284 = arith.xori %false, %true_2 : i1
          %collapsed_72 = tensor.collapse_shape %3 [[0, 1]] : tensor<1x15xi1> into tensor<15xi1>
          %285 = bufferization.clone %180 : memref<f16> to memref<f16>
          %286 = index.add %c3, %c14
          %287 = math.rsqrt %transposed : tensor<15xf16>
          %288 = arith.remf %cst, %cst_4 : f16
          %splat_73 = tensor.splat %out : tensor<1x15xf16>
          %289 = vector.broadcast %64 : index to vector<8xindex>
          %290 = vector.broadcast %true : i1 to vector<8xi1>
          %291 = vector.broadcast %cst_0 : f16 to vector<8xf16>
          vector.scatter %alloc_21[%c13] [%289], %290, %291 : memref<15xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
          %alloca_74 = memref.alloca() : memref<1x6x1xi16>
          %292 = arith.minui %false, %false_6 : i1
          %293 = math.log2 %transposed : tensor<15xf16>
          %294 = arith.andi %c1461889454_i64, %c1461889454_i64 : i64
          %295 = arith.maxui %in_61, %c758892014_i32 : i32
          %296 = math.ctlz %5 : tensor<1x15xi32>
          %297 = arith.minui %false, %true_2 : i1
          %298 = vector.reduction <minsi>, %19 : vector<6xi1> into i1
          %299 = vector.reduction <mul>, %33 : vector<1xf32> into f32
          %300 = memref.load %alloc_16[%c0, %c5] : memref<1x15xi32>
          %301 = math.ctpop %5 : tensor<1x15xi32>
          memref.store %false_5, %alloc[%c0] : memref<1xi1>
          %302 = affine.min affine_map<(d0) -> (d0 ceildiv 128 + d0 - 4, d0)>(%157)
          %303 = index.casts %25 : index to i32
          %304 = math.absf %from_elements_35 : tensor<1xf32>
          %305 = vector.create_mask %c5, %205, %205 : vector<1x6x1xi1>
          linalg.yield %cst_0 : f16
        } -> tensor<1x6x1xf16>
        %247 = vector.broadcast %cst_30 : f32 to vector<15xf32>
        %248 = vector.fma %247, %110, %247 : vector<15xf32>
        %249 = memref.load %100[%c0] : memref<1xf32>
        %250 = math.log10 %cst_30 : f32
        %251 = vector.flat_transpose %73 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %252 = arith.xori %true_2, %true_2 : i1
        %253 = math.log10 %7 : tensor<1x6x1xf16>
        %254 = arith.addf %cst_24, %189 : f32
        %255 = arith.shli %false, %78 : i1
        %256 = tensor.empty() : tensor<15xf16>
        %mapped_64 = linalg.map ins(%16, %16, %transposed : tensor<15xf16>, tensor<15xf16>, tensor<15xf16>) outs(%256 : tensor<15xf16>)
          (%in_69: f16, %in_70: f16, %in_71: f16) {
            %278 = arith.andi %true_2, %84 : i1
            %279 = arith.remf %in_71, %cst_1 : f16
            %280 = arith.addf %cst_24, %cst_24 : f32
            %281 = index.maxu %125, %52
            %282 = vector.reduction <and>, %71 : vector<1xi16> into i16
            %283 = index.floordivs %c15, %c10
            %284 = affine.load %alloc_7[%c7, %c13, %c8] : memref<1x6x1xi32>
            %splat_72 = tensor.splat %cst_0 : tensor<1x15xf16>
            %285 = arith.shli %in, %in : i32
            %expanded_73 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<1x15xf16> into tensor<1x15x1xf16>
            %286 = math.ipowi %1, %1 : tensor<1xi32>
            %287 = vector.broadcast %cst_41 : f32 to vector<6x1x15xf32>
            %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %30, %212, %287 : vector<1x6x1xf32>, vector<1x15xf32> into vector<6x1x15xf32>
            %289 = vector.reduction <mul>, %248 : vector<15xf32> into f32
            %290 = math.absi %c758892014_i32 : i32
            %291 = math.sqrt %15 : tensor<15xf16>
            %292 = vector.insert %true_2, %19 [2] : i1 into vector<6xi1>
            %293 = math.sqrt %in_69 : f16
            %294 = math.round %expanded_73 : tensor<1x15x1xf16>
            %expanded_74 = tensor.expand_shape %from_elements_39 [[0], [1], [2, 3]] : tensor<1x6x1xf32> into tensor<1x6x1x1xf32>
            %295 = vector.splat %c1 : vector<1x15xindex>
            %296 = affine.apply affine_map<(d0, d1, d2) -> (((d1 mod 16) ceildiv 64) mod 2)>(%c4, %rank_28, %23)
            %297 = math.atan2 %expanded, %expanded : tensor<15x1xf16>
            %298 = index.mul %c8, %c0
            %299 = math.fpowi %12, %13 : tensor<1x6x1xf32>, tensor<1x6x1xi32>
            %300 = arith.minsi %c454485149_i64, %c1461889454_i64 : i64
            %301 = arith.mulf %cst_41, %cst_30 : f32
            %302 = math.exp2 %cst_4 : f16
            %303 = math.powf %20, %103 : tensor<f16>
            %304 = arith.maxui %false_5, %true_2 : i1
            %305 = vector.shuffle %53, %54 [0, 1] : vector<1x6x1xf32>, vector<1x6x1xf32>
            %306 = memref.realloc %alloc_8 : memref<15xi1> to memref<8xi1>
            %307 = index.floordivs %283, %c1
            %cst_75 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_75 : f16
          }
        %257 = index.castu %78 : i1 to index
        %258 = vector.broadcast %52 : index to vector<1xindex>
        vector.scatter %114[%c0, %c4, %c0] [%258], %176, %72 : memref<1x6x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %259 = vector.broadcast %189 : f32 to vector<1x6x1xf32>
        %260 = vector.fma %259, %259, %259 : vector<1x6x1xf32>
        %261 = arith.ceildivsi %false_5, %84 : i1
        %262 = index.castu %157 : index to i32
        %263 = vector.matrix_multiply %73, %208 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %264 = math.roundeven %transposed : tensor<15xf16>
        %265 = memref.realloc %29 : memref<1xf32> to memref<6xf32>
        %266 = bufferization.clone %alloc_13 : memref<1x6x1xi64> to memref<1x6x1xi64>
        %267 = memref.realloc %216 : memref<1xf32> to memref<6xf32>
        %268 = math.log2 %103 : tensor<f16>
        %269 = affine.load %100[%c11] : memref<1xf32>
        %270 = tensor.empty() : tensor<1x6x1xi32>
        %mapped_65 = linalg.map ins(%13 : tensor<1x6x1xi32>) outs(%270 : tensor<1x6x1xi32>)
          (%in_69: i32) {
            %from_elements_70 = tensor.from_elements %cst_0, %cst_4, %cst_0, %cst_3, %cst_4, %cst_0, %cst_4, %cst_4, %cst, %cst_3, %cst, %cst_4, %cst_4, %cst_1, %cst_3 : tensor<15xf16>
            %alloca_71 = memref.alloca() : memref<1xi1>
            %278 = index.sub %57, %102
            memref.copy %alloc_21, %222 : memref<15xf16> to memref<15xf16>
            %279 = arith.xori %in_60, %in_69 : i32
            %280 = math.cos %expanded_26 : tensor<15x1xf16>
            %281 = vector.broadcast %c758892014_i32 : i32 to vector<1x6x1xi32>
            %282 = arith.shli %c454485149_i64, %c454485149_i64 : i64
            %283 = math.exp %expanded : tensor<15x1xf16>
            %284 = tensor.empty(%80) : tensor<?xf16>
            %285 = arith.minui %c-7041_i16, %c5175_i16 : i16
            %expanded_72 = tensor.expand_shape %210 [[0], [1], [2, 3]] : tensor<1x6x1xf16> into tensor<1x6x1x1xf16>
            %286 = math.sqrt %21 : tensor<f16>
            %287 = index.maxs %c2, %c7
            %288 = vector.broadcast %cst_30 : f32 to vector<1x6x1xf32>
            %289 = vector.fma %288, %260, %260 : vector<1x6x1xf32>
            %290 = bufferization.clone %alloc_20 : memref<1x15xf32> to memref<1x15xf32>
            %291 = math.atan %210 : tensor<1x6x1xf16>
            %292 = math.expm1 %15 : tensor<15xf16>
            %293 = affine.load %alloc_15[%c8, %c2] : memref<1x15xi1>
            %294 = vector.broadcast %269 : f32 to vector<1x1xf32>
            %dest_73, %accumulated_value_74 = vector.scan <minf>, %288, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<1x6x1xf32>, vector<1x1xf32>
            %295 = arith.shli %in, %c758892014_i32 : i32
            %296 = math.roundeven %269 : f32
            %297 = index.maxs %c4, %205
            %298 = math.round %cst_3 : f16
            %299 = vector.extract_strided_slice %110 {offsets = [5], sizes = [5], strides = [1]} : vector<15xf32> to vector<5xf32>
            %300 = math.ceil %20 : tensor<f16>
            %301 = vector.shuffle %176, %115 [1] : vector<1xi1>, vector<1xi1>
            %302 = arith.minui %in_61, %c758892014_i32 : i32
            %303 = math.cos %210 : tensor<1x6x1xf16>
            %304 = math.absf %14 : tensor<1x6x1xf16>
            %305 = vector.flat_transpose %251 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
            %306 = vector.matrix_multiply %176, %117 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %271 = arith.andi %c5175_i16, %c-26820_i16 : i16
        %272 = bufferization.clone %alloc_23 : memref<15xf16> to memref<15xf16>
        %273 = vector.broadcast %in_60 : i32 to vector<1x15xi32>
        %274 = vector.gather %216[%c9] [%273], %113, %160 : memref<1xf32>, vector<1x15xi32>, vector<1x15xi1>, vector<1x15xf32> into vector<1x15xf32>
        %275 = vector.broadcast %cst_24 : f32 to vector<1x6xf32>
        %dest_66, %accumulated_value_67 = vector.scan <add>, %259, %275 {inclusive = false, reduction_dim = 2 : i64} : vector<1x6x1xf32>, vector<1x6xf32>
        %276 = math.sqrt %expanded_26 : tensor<15x1xf16>
        %277 = index.castu %170 : index to i32
        %alloc_68 = memref.alloc() : memref<1xi64>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.if %false_6 {
      %245 = arith.addf %cst_30, %189 : f32
      %246 = math.roundeven %collapsed : tensor<6x1xf32>
      %247 = math.atan2 %14, %14 : tensor<1x6x1xf16>
      memref.tensor_store %13, %97 : memref<1x6x1xi32>
      %expanded_60 = tensor.expand_shape %17 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
      %248 = arith.addi %c1461889454_i64, %c454485149_i64 : i64
      %249 = arith.divui %true_44, %false_5 : i1
      %250 = math.absi %true_44 : i1
    } else {
      %245 = arith.maxsi %c-26820_i16, %c5175_i16 : i16
      %246 = vector.broadcast %cst_41 : f32 to vector<1x6xf32>
      %247 = vector.multi_reduction <maxf>, %30, %246 [2] : vector<1x6x1xf32> to vector<1x6xf32>
      %248 = math.ceil %8 : tensor<1xf32>
      %249 = vector.broadcast %cst_24 : f32 to vector<1xf32>
      %250 = vector.fma %249, %33, %33 : vector<1xf32>
      %c0_i16 = arith.constant 0 : i16
      %251 = vector.transfer_read %splat[%127, %44], %c0_i16 : tensor<1x15xi16>, vector<i16>
      %252 = vector.shuffle %30, %53 [0] : vector<1x6x1xf32>, vector<1x6x1xf32>
      %alloca_60 = memref.alloca() : memref<1xf16>
      %collapsed_61 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x15xf16> into tensor<?xf16>
    }
    %224 = vector.splat %78 : vector<15xi1>
    memref.copy %alloc_9, %194 : memref<1xf32> to memref<1xf32>
    %225 = affine.apply affine_map<(d0, d1) -> (d0 - 16)>(%205, %101)
    %226 = tensor.empty() : tensor<1x6x1xi64>
    %mapped_52 = linalg.map ins(%alloc_13, %from_elements_48, %alloc_13 : memref<1x6x1xi64>, tensor<1x6x1xi64>, memref<1x6x1xi64>) outs(%226 : tensor<1x6x1xi64>)
      (%in: i64, %in_60: i64, %in_61: i64) {
        %245 = vector.load %alloc_13[%c0, %c1, %c0] : memref<1x6x1xi64>, vector<15xi64>
        %246 = arith.cmpi sle, %in_60, %in_61 : i64
        %247 = vector.broadcast %189 : f32 to vector<15x6x1xf32>
        %248 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %27, %31, %247 : vector<1x15xf32>, vector<1x6x1xf32> into vector<15x6x1xf32>
        %249 = affine.if affine_set<(d0, d1, d2) : (d1 + d0 + 2 >= 0, d1 - d0 == 0)>(%c3, %c4, %c15) -> memref<1x15xf32> {
          %272 = arith.ceildivsi %in, %in_61 : i64
          %273 = arith.shrui %c758892014_i32, %c758892014_i32 : i32
          %274 = arith.shli %84, %false_6 : i1
          %splat_67 = tensor.splat %189 : tensor<1x15xf32>
          %275 = vector.broadcast %189 : f32 to vector<1x6x1xf32>
          %276 = vector.fma %275, %53, %54 : vector<1x6x1xf32>
          %277 = vector.extract_strided_slice %72 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %alloc_68 = memref.alloc() : memref<1x15xf16>
          %278 = vector.broadcast %cst_1 : f16 to vector<1x6x1xf16>
          %279 = vector.broadcast %78 : i1 to vector<1x6x1xi1>
          %280 = vector.broadcast %c758892014_i32 : i32 to vector<1x6x1xi32>
          %281 = vector.gather %alloc_68[%c3, %c9] [%280], %279, %278 : memref<1x15xf16>, vector<1x6x1xi32>, vector<1x6x1xi1>, vector<1x6x1xf16> into vector<1x6x1xf16>
          %collapsed_69 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x6x1xf32> into tensor<6x1xf32>
          affine.yield %alloc_20 : memref<1x15xf32>
        } else {
          %272 = math.tan %15 : tensor<15xf16>
          %273 = math.ipowi %true_44, %true_2 : i1
          %alloc_67 = memref.alloc() : memref<1x15xi32>
          memref.copy %alloc_16, %alloc_67 : memref<1x15xi32> to memref<1x15xi32>
          %274 = memref.realloc %alloc_21 : memref<15xf16> to memref<15xf16>
          %splat_68 = tensor.splat %false_6 : tensor<15xi1>
          %alloc_69 = memref.alloc() : memref<15x1xf16>
          memref.tensor_store %expanded_26, %alloc_69 : memref<15x1xf16>
          %275 = vector.reduction <maxf>, %110 : vector<15xf32> into f32
          %276 = index.mul %127, %c3
          affine.yield %alloc_20 : memref<1x15xf32>
        }
        %250 = vector.broadcast %cst_41 : f32 to vector<15x6x1xf32>
        %251 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %212, %31, %250 : vector<1x15xf32>, vector<1x6x1xf32> into vector<15x6x1xf32>
        %252 = tensor.empty() : tensor<15xi64>
        %dest_62, %accumulated_value_63 = vector.scan <or>, %218, %168 {inclusive = false, reduction_dim = 1 : i64} : vector<1x15xi1>, vector<1xi1>
        %253 = index.sizeof
        %254 = arith.minsi %84, %false_6 : i1
        %255 = math.cttz %1 : tensor<1xi32>
        %256 = vector.broadcast %in : i64 to vector<15xi64>
        %257 = math.sqrt %from_elements_39 : tensor<1x6x1xf32>
        %from_elements_64 = tensor.from_elements %cst_30, %cst_30, %189, %189, %cst_41, %cst_41 : tensor<1x6x1xf32>
        %258 = vector.shuffle %159, %28 [0] : vector<1x15xf32>, vector<1x15xf32>
        %259 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 16)>(%52, %c4, %201)
        %260 = arith.shli %c758892014_i32, %c758892014_i32 : i32
        %261 = vector.splat %c10 : vector<1x15xindex>
        scf.execute_region {
          %272 = math.log2 %189 : f32
          %273 = vector.shuffle %204, %208 [0, 1] : vector<1xi16>, vector<1xi16>
          %274 = index.floordivs %182, %184
          %275 = index.mul %191, %191
          %276 = arith.maxui %78, %true : i1
          %277 = arith.shli %in_61, %c1461889454_i64 : i64
          %278 = arith.addi %84, %78 : i1
          %279 = vector.load %alloc_20[%c0, %c9] : memref<1x15xf32>, vector<15xf32>
          %280 = arith.maxsi %c1461889454_i64, %c454485149_i64 : i64
          %281 = arith.maxsi %c-7041_i16, %c5175_i16 : i16
          %false_67 = index.bool.constant false
          %cast_68 = tensor.cast %4 : tensor<1xi16> to tensor<?xi16>
          %282 = bufferization.clone %alloc_14 : memref<1xf32> to memref<1xf32>
          %283 = math.ipowi %c758892014_i32, %c758892014_i32 : i32
          %c0_i16 = arith.constant 0 : i16
          %284 = vector.transfer_read %6[%259], %c0_i16 : tensor<1xi16>, vector<i16>
          %285 = arith.remui %c1461889454_i64, %in : i64
          scf.yield
        }
        %262 = math.ctpop %expanded_27 : tensor<1x15x1xi16>
        %263 = arith.xori %false_6, %false_6 : i1
        %264 = arith.minui %c5175_i16, %c-7041_i16 : i16
        %265 = vector.extract_strided_slice %218 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15xi1> to vector<1x15xi1>
        %dest_65, %accumulated_value_66 = vector.scan <mul>, %28, %33 {inclusive = false, reduction_dim = 1 : i64} : vector<1x15xf32>, vector<1xf32>
        %266 = arith.addi %true_44, %false_6 : i1
        %267 = math.expm1 %20 : tensor<f16>
        %268 = bufferization.clone %alloc_15 : memref<1x15xi1> to memref<1x15xi1>
        %269 = arith.shli %false, %false : i1
        %270 = math.floor %7 : tensor<1x6x1xf16>
        affine.store %84, %145[%c8, %c0] : memref<1x15xi1>
        %271 = arith.remui %false, %false_5 : i1
        bufferization.dealloc_tensor %6 : tensor<1xi16>
        bufferization.dealloc_tensor %10 : tensor<15xi16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %227 = tensor.empty() : tensor<1x15xi1>
    %mapped_53 = linalg.map ins(%alloc_19, %alloc_12, %3 : memref<1x15xi1>, memref<1x15xi1>, tensor<1x15xi1>) outs(%227 : tensor<1x15xi1>)
      (%in: i1, %in_60: i1, %in_61: i1) {
        %245 = math.fpowi %14, %13 : tensor<1x6x1xf16>, tensor<1x6x1xi32>
        %246 = math.ipowi %226, %from_elements_48 : tensor<1x6x1xi64>
        %inserted_62 = tensor.insert %in_60 into %from_elements_43[%c0, %c5, %c0] : tensor<1x6x1xi1>
        %247 = arith.shli %c454485149_i64, %c1461889454_i64 : i64
        %from_elements_63 = tensor.from_elements %c454485149_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c1461889454_i64, %c454485149_i64, %c454485149_i64, %c1461889454_i64, %c1461889454_i64 : tensor<1x15xi64>
        %expanded_64 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<1x15xi1> into tensor<1x15x1xi1>
        %248 = arith.mulf %cst_30, %cst_24 : f32
        %alloc_65 = memref.alloc() : memref<1x15x1xi1>
        memref.tensor_store %expanded_64, %alloc_65 : memref<1x15x1xi1>
        %249 = math.log2 %0 : tensor<1x15xf16>
        %250 = index.floordivs %c9, %c11
        memref.store %true_2, %alloc_8[%c2] : memref<15xi1>
        scf.execute_region {
          %271 = math.powf %2, %2 : tensor<15xf32>
          %272 = arith.shli %c-7041_i16, %c5175_i16 : i16
          %273 = math.tanh %2 : tensor<15xf32>
          %274 = math.ctlz %5 : tensor<1x15xi32>
          %275 = index.castu %125 : index to i32
          %276 = math.roundeven %8 : tensor<1xf32>
          %277 = math.tan %cst_24 : f32
          %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %78 : vector<6xi1>, vector<6xi1> into i1
          %279 = arith.mulf %189, %cst_41 : f32
          %280 = arith.muli %true_2, %false_5 : i1
          %281 = arith.maxf %cst_3, %cst_4 : f16
          %282 = index.casts %c758892014_i32 : i32 to index
          %283 = math.copysign %8, %from_elements_35 : tensor<1xf32>
          %rank_68 = tensor.rank %expanded : tensor<15x1xf16>
          %284 = arith.maxsi %c454485149_i64, %c1461889454_i64 : i64
          %285 = arith.maxsi %c-7041_i16, %c-26820_i16 : i16
          scf.yield
        }
        %251 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 - 8) ceildiv 16)>(%101, %c14, %60, %201)
        %252 = math.sqrt %210 : tensor<1x6x1xf16>
        %253 = affine.apply affine_map<(d0) -> (-d0)>(%c9)
        %254 = vector.broadcast %78 : i1 to vector<1x6x1xi1>
        %255 = math.ceil %18 : tensor<15xf16>
        %256 = arith.maxui %78, %false_5 : i1
        %257 = math.exp2 %cst_1 : f16
        %258 = arith.maxsi %c-26820_i16, %c-26820_i16 : i16
        %259 = vector.broadcast %202 : index to vector<6xindex>
        vector.scatter %alloc_8[%c4] [%259], %19, %19 : memref<15xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %260 = vector.broadcast %true_44 : i1 to vector<6x1xi1>
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %117, %254, %260 : vector<1xi1>, vector<1x6x1xi1> into vector<6x1xi1>
        %262 = index.maxu %c0, %c0
        %263 = math.ipowi %c758892014_i32, %c758892014_i32 : i32
        %collapsed_66 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<1x6x1xf16> into tensor<6x1xf16>
        %264 = arith.divui %84, %in_61 : i1
        %265 = affine.if affine_set<(d0, d1) : (d1 == 0, d1 + 8 >= 0)>(%c7, %c12) -> f32 {
          %expanded_68 = tensor.expand_shape %4 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
          %271 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<1x15xf32> to vector<1x15xf32>
          %272 = arith.minf %cst_4, %cst_0 : f16
          %273 = bufferization.clone %alloc : memref<1xi1> to memref<1xi1>
          %274 = vector.broadcast %202 : index to vector<8xindex>
          %275 = vector.broadcast %false : i1 to vector<8xi1>
          vector.scatter %alloc_22[] [%274], %275, %275 : memref<i1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %276 = vector.broadcast %189 : f32 to vector<15x15xf32>
          %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %160, %212, %276 : vector<1x15xf32>, vector<1x15xf32> into vector<15x15xf32>
          %278 = affine.apply affine_map<(d0) -> (d0)>(%57)
          %from_elements_69 = tensor.from_elements %189, %cst_30, %189, %cst_41, %cst_41, %cst_24, %189, %189, %cst_24, %189, %cst_41, %cst_41, %cst_41, %cst_30, %cst_41 : tensor<1x15xf32>
          affine.yield %cst_41 : f32
        } else {
          %271 = arith.divf %cst_1, %cst : f16
          %272 = memref.load %145[%c0, %c10] : memref<1x15xi1>
          %273 = vector.broadcast %102 : index to vector<1xindex>
          vector.scatter %alloc_15[%c0, %c8] [%273], %24, %117 : memref<1x15xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %274 = math.round %210 : tensor<1x6x1xf16>
          %275 = vector.broadcast %35 : index to vector<8xindex>
          %276 = vector.broadcast %in_60 : i1 to vector<8xi1>
          vector.scatter %alloc_17[%c0, %c5, %c0] [%275], %276, %276 : memref<1x6x1xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %277 = index.mul %205, %c11
          %278 = arith.minsi %in, %true_44 : i1
          %279 = index.mul %c15, %111
          affine.yield %189 : f32
        }
        %266 = vector.load %alloc_15[%c0, %c4] : memref<1x15xi1>, vector<1x15xi1>
        %267 = arith.maxf %cst_1, %cst : f16
        %268 = bufferization.clone %alloc_17 : memref<1x6x1xi1> to memref<1x6x1xi1>
        %269 = arith.maxsi %c-7041_i16, %c-7041_i16 : i16
        %270 = arith.andi %c1461889454_i64, %c454485149_i64 : i64
        %false_67 = arith.constant false
        linalg.yield %false_67 : i1
      }
    %228 = math.exp2 %0 : tensor<1x15xf16>
    %229 = bufferization.clone %140 : memref<1xi16> to memref<1xi16>
    %230 = math.absi %from_elements_43 : tensor<1x6x1xi1>
    %231 = scf.execute_region -> index {
      %245 = math.atan2 %17, %15 : tensor<15xf16>
      %246 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %110, %27, %33 : vector<15xf32>, vector<1x15xf32> into vector<1xf32>
      %247 = math.tan %2 : tensor<15xf32>
      %extracted = tensor.extract %226[%c0, %c4, %c0] : tensor<1x6x1xi64>
      %248 = scf.execute_region -> f16 {
        %259 = math.ctlz %expanded_27 : tensor<1x15x1xi16>
        %260 = math.log10 %collapsed_40 : tensor<15xf16>
        %261 = math.absi %11 : tensor<1x6x1xi1>
        %262 = math.rsqrt %from_elements : tensor<15xf32>
        %263 = math.atan %0 : tensor<1x15xf16>
        %264 = index.ceildivu %c8, %c0
        %expanded_61 = tensor.expand_shape %4 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
        %265 = arith.maxsi %c758892014_i32, %c758892014_i32 : i32
        %266 = math.fpowi %from_elements_35, %1 : tensor<1xf32>, tensor<1xi32>
        %267 = affine.apply affine_map<(d0, d1) -> (d1 mod 2)>(%173, %c9)
        %268 = vector.splat %189 : vector<1x15xf32>
        %269 = vector.broadcast %c12 : index to vector<15xindex>
        %270 = vector.broadcast %false : i1 to vector<15xi1>
        vector.scatter %alloc_19[%c0, %c7] [%269], %270, %270 : memref<1x15xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
        %271 = bufferization.clone %alloc_7 : memref<1x6x1xi32> to memref<1x6x1xi32>
        %272 = math.ceil %21 : tensor<f16>
        %273 = math.log1p %from_elements_35 : tensor<1xf32>
        %274 = arith.remf %189, %cst_30 : f32
        scf.yield %cst_1 : f16
      }
      %249 = scf.while (%arg2 = %220) : (vector<15xi64>) -> vector<15xi64> {
        %259 = arith.ceildivsi %c-7041_i16, %c-7041_i16 : i16
        %260 = arith.xori %extracted, %extracted : i64
        %261 = arith.divf %cst_0, %cst_4 : f16
        %extracted_61 = tensor.extract %collapsed_33[%c5] : tensor<6xf32>
        %262 = affine.load %alloc_14[%c8] : memref<1xf32>
        %263 = vector.insert %false, %115 [0] : i1 into vector<1xi1>
        %264 = vector.broadcast %25 : index to vector<15xindex>
        %265 = vector.broadcast %false_6 : i1 to vector<15xi1>
        %266 = vector.broadcast %cst_0 : f16 to vector<15xf16>
        vector.scatter %180[] [%264], %265, %266 : memref<f16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        %267 = vector.load %29[%c0] : memref<1xf32>, vector<1x6x1xf32>
        scf.condition(%78) %220 : vector<15xi64>
      } do {
      ^bb0(%arg2: vector<15xi64>):
        %259 = vector.shuffle %117, %176 [0] : vector<1xi1>, vector<1xi1>
        %260 = math.ceil %collapsed : tensor<6x1xf32>
        %261 = index.divu %c11, %102
        %rank_61 = tensor.rank %6 : tensor<1xi16>
        %262 = arith.divf %cst_30, %189 : f32
        %263 = vector.matrix_multiply %19, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
        %264 = vector.broadcast %false : i1 to vector<15x15xi1>
        %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %218, %113, %264 : vector<1x15xi1>, vector<1x15xi1> into vector<15x15xi1>
        %266 = vector.broadcast %cst_24 : f32 to vector<1x1xf32>
        %dest_62, %accumulated_value_63 = vector.scan <add>, %31, %266 {inclusive = true, reduction_dim = 1 : i64} : vector<1x6x1xf32>, vector<1x1xf32>
        %alloc_64 = memref.alloc() : memref<15xi16>
        memref.tensor_store %10, %alloc_64 : memref<15xi16>
        %267 = vector.matrix_multiply %204, %71 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %268 = index.casts %205 : index to i32
        %splat_65 = tensor.splat %c5175_i16 : tensor<1x15xi16>
        %269 = vector.broadcast %cst_1 : f16 to vector<6xf16>
        %270 = vector.maskedload %alloc_11[%c0], %19, %269 : memref<1xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %271 = math.round %from_elements_39 : tensor<1x6x1xf32>
        %272 = math.log10 %20 : tensor<f16>
        %273 = memref.realloc %alloc_9 : memref<1xf32> to memref<15xf32>
        scf.yield %220 : vector<15xi64>
      }
      %250 = index.mul %101, %80
      %251 = arith.andi %78, %true : i1
      %252 = math.powf %248, %cst_3 : f16
      %253 = arith.shli %false_5, %78 : i1
      %false_60 = index.bool.constant false
      %254 = math.log10 %cst_24 : f32
      %255 = index.mul %c1, %205
      %256 = index.floordivs %173, %c3
      %257 = vector.flat_transpose %24 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %258 = affine.min affine_map<(d0, d1, d2) -> ((d0 ceildiv 16) * 16, d1 + d1 - 32)>(%202, %250, %60)
      scf.yield %205 : index
    }
    %232 = index.maxs %205, %c8
    %inserted_54 = tensor.insert %c5175_i16 into %splat[%c0, %c5] : tensor<1x15xi16>
    %alloc_55 = memref.alloc() : memref<15xf16>
    %233 = math.roundeven %collapsed_33 : tensor<6xf32>
    %234 = math.ctlz %78 : i1
    %235 = tensor.empty() : tensor<1x6x1xi64>
    %mapped_56 = linalg.map ins(%alloc_13, %alloc_13, %226 : memref<1x6x1xi64>, memref<1x6x1xi64>, tensor<1x6x1xi64>) outs(%235 : tensor<1x6x1xi64>)
      (%in: i64, %in_60: i64, %in_61: i64) {
        %245 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + 8, d1, d1 floordiv 2, d2 * 9)>(%57, %c1, %44, %c2)
        %246 = math.exp2 %14 : tensor<1x6x1xf16>
        %splat_62 = tensor.splat %true_2 : tensor<1x15xi1>
        %247 = arith.divui %in_61, %c454485149_i64 : i64
        %248 = scf.while (%arg2 = %180) : (memref<f16>) -> memref<f16> {
          %270 = arith.minsi %c1461889454_i64, %c1461889454_i64 : i64
          %271 = math.absf %16 : tensor<15xf16>
          %272 = arith.maxf %cst_24, %cst_30 : f32
          %273 = arith.xori %true_2, %true_44 : i1
          %274 = vector.create_mask %26 : vector<1xi1>
          %275 = index.sub %170, %186
          %276 = math.sqrt %collapsed_40 : tensor<15xf16>
          %277 = math.exp %cst_3 : f16
          scf.condition(%true) %arg2 : memref<f16>
        } do {
        ^bb0(%arg2: memref<f16>):
          %270 = index.maxu %232, %c15
          %271 = math.absf %12 : tensor<1x6x1xf32>
          %272 = vector.create_mask %225 : vector<15xi1>
          %273 = vector.broadcast %cst_41 : f32 to vector<1x15xf32>
          %274 = vector.fma %273, %27, %28 : vector<1x15xf32>
          %275 = math.ceil %20 : tensor<f16>
          %276 = arith.xori %true_44, %84 : i1
          %277 = vector.broadcast %189 : f32 to vector<1x15xf32>
          %278 = vector.fma %277, %27, %277 : vector<1x15xf32>
          %279 = vector.create_mask %80, %44, %rank_28 : vector<1x6x1xi1>
          %280 = vector.splat %c13 : vector<15xindex>
          %281 = vector.reduction <minsi>, %208 : vector<1xi16> into i16
          %282 = vector.create_mask %c13 : vector<1xi1>
          %283 = math.log2 %cst_1 : f16
          %284 = arith.mulf %cst_24, %cst_41 : f32
          %285 = vector.matrix_multiply %168, %168 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %286 = vector.broadcast %cst_30 : f32 to vector<1x15xf32>
          %287 = vector.fma %286, %28, %159 : vector<1x15xf32>
          %288 = math.ctlz %c-7041_i16 : i16
          scf.yield %arg2 : memref<f16>
        }
        %249 = affine.apply affine_map<(d0, d1, d2) -> ((d1 * 8 + d0 - 128) ceildiv 4)>(%102, %170, %c12)
        %from_elements_63 = tensor.from_elements %78, %true_2, %false, %84, %true_2, %78 : tensor<1x6x1xi1>
        %250 = bufferization.clone %alloc_21 : memref<15xf16> to memref<15xf16>
        %251 = tensor.empty(%23) : tensor<1x6x?xf32>
        %252 = math.exp2 %0 : tensor<1x15xf16>
        %253 = arith.negf %cst : f16
        %generated_64 = tensor.generate %80, %191 {
        ^bb0(%arg2: index, %arg3: index):
          %270 = vector.create_mask %125, %111 : vector<1x15xi1>
          %271 = math.log2 %18 : tensor<15xf16>
          %272 = index.mul %60, %c9
          %273 = math.atan %collapsed : tensor<6x1xf32>
          tensor.yield %c758892014_i32 : i32
        } : tensor<?x?xi32>
        %splat_65 = tensor.splat %c758892014_i32 : tensor<15xi32>
        memref.alloca_scope  {
          %270 = vector.broadcast %186 : index to vector<6xindex>
          %271 = vector.broadcast %cst_4 : f16 to vector<6xf16>
          vector.scatter %alloc_21[%c12] [%270], %19, %271 : memref<15xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
          %272 = index.maxs %127, %c13
          %273 = arith.divf %cst_24, %189 : f32
          %274 = math.expm1 %12 : tensor<1x6x1xf32>
          %275 = math.exp %cst_24 : f32
          %276 = vector.flat_transpose %204 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
          %277 = index.divu %c14, %64
          %278 = arith.mulf %cst_0, %cst_3 : f16
          %expanded_70 = tensor.expand_shape %235 [[0], [1], [2, 3]] : tensor<1x6x1xi64> into tensor<1x6x1x1xi64>
          %279 = arith.ceildivsi %c1461889454_i64, %in : i64
          %280 = arith.remui %in, %in : i64
          %281 = arith.ceildivsi %true, %78 : i1
          %282 = vector.matrix_multiply %176, %176 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %283 = arith.shli %c758892014_i32, %c758892014_i32 : i32
          %284 = index.ceildivu %rank, %c2
          %285 = vector.multi_reduction <and>, %117, %168 [] : vector<1xi1> to vector<1xi1>
          %286 = arith.remf %cst_1, %cst_0 : f16
          %287 = index.sub %173, %c6
          %288 = math.ceil %18 : tensor<15xf16>
          %289 = arith.minsi %false, %false : i1
          %290 = vector.broadcast %cst_24 : f32 to vector<1x6x1xf32>
          %291 = vector.fma %290, %30, %31 : vector<1x6x1xf32>
          memref.assume_alignment %alloc_20, 2 : memref<1x15xf32>
          %292 = bufferization.clone %140 : memref<1xi16> to memref<1xi16>
          affine.store %true, %alloc_22[] : memref<i1>
          %293 = arith.ceildivsi %true_44, %true_44 : i1
          %294 = arith.divui %in_60, %in : i64
          %295 = arith.muli %c1461889454_i64, %in_60 : i64
          %296 = math.absf %8 : tensor<1xf32>
          %297 = index.sizeof
          %298 = vector.shuffle %27, %160 [0, 1] : vector<1x15xf32>, vector<1x15xf32>
          %299 = math.powf %cst_3, %cst_1 : f16
          %300 = arith.addi %c454485149_i64, %c454485149_i64 : i64
        }
        %254 = scf.while (%arg2 = %145) : (memref<1x15xi1>) -> memref<1x15xi1> {
          %270 = bufferization.clone %alloc_23 : memref<15xf16> to memref<15xf16>
          %271 = arith.maxf %cst_3, %cst_4 : f16
          %272 = affine.load %29[%c14] : memref<1xf32>
          %273 = math.exp %collapsed : tensor<6x1xf32>
          %274 = arith.minui %false_5, %false_6 : i1
          %275 = arith.ceildivsi %c758892014_i32, %c758892014_i32 : i32
          %276 = memref.atomic_rmw muli %c758892014_i32, %alloc_16[%c0, %c7] : (i32, memref<1x15xi32>) -> i32
          %277 = math.tan %cst : f16
          scf.condition(%true_44) %arg2 : memref<1x15xi1>
        } do {
        ^bb0(%arg2: memref<1x15xi1>):
          %270 = bufferization.clone %222 : memref<15xf16> to memref<15xf16>
          %271 = vector.broadcast %c-26820_i16 : i16 to vector<6xi16>
          %272 = vector.maskedload %229[%c0], %19, %271 : memref<1xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %cst_70 = arith.constant 1.000000e+00 : f32
          %273 = vector.transfer_read %216[%23], %cst_70 : memref<1xf32>, vector<f32>
          %274 = math.round %21 : tensor<f16>
          %275 = bufferization.clone %222 : memref<15xf16> to memref<15xf16>
          %276 = arith.addf %cst, %cst : f16
          %alloca_71 = memref.alloca() : memref<1x6x1xi64>
          %277 = math.ctpop %10 : tensor<15xi16>
          %278 = tensor.empty() : tensor<15x15xi1>
          %279 = tensor.empty() : tensor<1x15xi1>
          %280 = linalg.matmul ins(%227, %278 : tensor<1x15xi1>, tensor<15x15xi1>) outs(%279 : tensor<1x15xi1>) -> tensor<1x15xi1>
          %281 = memref.load %alloc_9[%c0] : memref<1xf32>
          %282 = vector.broadcast %125 : index to vector<8xindex>
          %283 = vector.broadcast %false_5 : i1 to vector<8xi1>
          %284 = vector.broadcast %cst_4 : f16 to vector<8xf16>
          vector.scatter %275[%c0] [%282], %283, %284 : memref<15xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
          %285 = arith.minui %false_5, %true_44 : i1
          %286 = vector.insert %110, %211 [0] : vector<15xf32> into vector<1x15xf32>
          %287 = math.cttz %c758892014_i32 : i32
          %288 = arith.remsi %84, %84 : i1
          %289 = vector.shuffle %110, %110 [3, 4, 5, 7, 9, 11, 13, 17, 19, 20, 21, 26, 27, 28, 29] : vector<15xf32>, vector<15xf32>
          scf.yield %alloc_15 : memref<1x15xi1>
        }
        %255 = math.atan2 %16, %collapsed_40 : tensor<15xf16>
        %256 = affine.if affine_set<(d0, d1) : (d1 == 0, d1 + 8 >= 0)>(%c3, %c14) -> memref<1x15xf32> {
          %270 = math.powf %expanded, %expanded_26 : tensor<15x1xf16>
          %271 = affine.load %alloc_12[%c14, %c7] : memref<1x15xi1>
          %alloca_70 = memref.alloca() : memref<1xi1>
          %272 = math.absf %cst_3 : f16
          %273 = arith.minsi %in, %in : i64
          %274 = arith.negf %cst_24 : f32
          %275 = arith.mulf %cst_4, %cst_3 : f16
          %276 = math.log10 %2 : tensor<15xf32>
          affine.yield %alloc_20 : memref<1x15xf32>
        } else {
          %270 = vector.splat %173 : vector<15xindex>
          %271 = arith.andi %true_44, %false : i1
          %272 = arith.addi %c454485149_i64, %in_61 : i64
          %273 = bufferization.clone %180 : memref<f16> to memref<f16>
          %274 = affine.apply affine_map<(d0, d1) -> (d0 + 128)>(%111, %186)
          %275 = arith.remui %false, %false : i1
          %276 = math.sqrt %from_elements : tensor<15xf32>
          %277 = math.ceil %0 : tensor<1x15xf16>
          affine.yield %alloc_20 : memref<1x15xf32>
        }
        %generated_66 = tensor.generate %c0 {
        ^bb0(%arg2: index, %arg3: index):
          %270 = math.round %7 : tensor<1x6x1xf16>
          %271 = math.exp2 %8 : tensor<1xf32>
          %272 = index.divu %202, %c10
          %273 = vector.load %114[%c0, %c1, %c0] : memref<1x6x1xi32>, vector<15xi32>
          tensor.yield %in : i64
        } : tensor<?x15xi64>
        %alloc_67 = memref.alloc() : memref<15x1xf16>
        memref.tensor_store %expanded_26, %alloc_67 : memref<15x1xf16>
        %257 = vector.reduction <mul>, %168 : vector<1xi1> into i1
        %258 = index.castu %80 : index to i32
        %c1_i32 = arith.constant 1 : i32
        %259 = vector.transfer_read %alloc_7[%184, %rank_28, %102], %c1_i32 : memref<1x6x1xi32>, vector<6xi32>
        %260 = math.tan %cst_4 : f16
        %261 = arith.minsi %c1_i32, %c758892014_i32 : i32
        %262 = index.maxs %c11, %249
        %splat_68 = tensor.splat %in_61 : tensor<1x6x1xi64>
        %263 = tensor.empty() : tensor<1x15xf16>
        %mapped_69 = linalg.map ins(%0 : tensor<1x15xf16>) outs(%263 : tensor<1x15xf16>)
          (%in_70: f16) {
            %cst_71 = arith.constant 1.000000e+00 : f16
            %cst_72 = arith.constant 0.000000e+00 : f16
            %270 = vector.transfer_read %14[%c11, %25, %c10], %cst_72 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<1x6x1xf16>, vector<8xf16>
            %271 = arith.divf %cst_30, %cst_30 : f32
            %272 = math.floor %8 : tensor<1xf32>
            %expanded_73 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<1x15xi64> into tensor<1x15x1xi64>
            bufferization.dealloc_tensor %226 : tensor<1x6x1xi64>
            %273 = arith.minf %in_70, %cst_1 : f16
            %274 = math.round %103 : tensor<f16>
            %275 = arith.shli %c-7041_i16, %c5175_i16 : i16
            %276 = math.round %collapsed : tensor<6x1xf32>
            %277 = math.log %14 : tensor<1x6x1xf16>
            %278 = index.casts %c3 : index to i32
            %279 = arith.ceildivsi %c1461889454_i64, %in : i64
            bufferization.dealloc_tensor %generated_66 : tensor<?x15xi64>
            %280 = arith.divf %cst_71, %cst_4 : f16
            memref.tensor_store %from_elements_43, %alloc_18 : memref<1x6x1xi1>
            %281 = arith.mulf %189, %cst_24 : f32
            %282 = index.mul %101, %c12
            %283 = index.mul %c7, %184
            %inserted_74 = tensor.insert %cst_30 into %2[%c8] : tensor<15xf32>
            %284 = math.log1p %189 : f32
            memref.copy %97, %114 : memref<1x6x1xi32> to memref<1x6x1xi32>
            %285 = index.floordivs %c2, %127
            %286 = math.copysign %collapsed, %collapsed : tensor<6x1xf32>
            %expanded_75 = tensor.expand_shape %263 [[0], [1, 2]] : tensor<1x15xf16> into tensor<1x15x1xf16>
            %287 = arith.divf %cst_1, %cst_3 : f16
            %288 = arith.andi %c758892014_i32, %c758892014_i32 : i32
            memref.store %cst_71, %250[%c0] : memref<15xf16>
            %289 = arith.divui %in_60, %in : i64
            %true_76 = arith.constant true
            %290 = vector.transfer_read %alloc_19[%25, %191], %true_76 : memref<1x15xi1>, vector<1xi1>
            %291 = arith.ceildivsi %false, %78 : i1
            %292 = index.maxs %245, %rank
            %293 = math.fpowi %from_elements_35, %1 : tensor<1xf32>, tensor<1xi32>
            %cst_77 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_77 : f16
          }
        %264 = vector.reduction <xor>, %176 : vector<1xi1> into i1
        %265 = arith.addi %false_6, %78 : i1
        %266 = arith.minui %c5175_i16, %c-7041_i16 : i16
        %267 = arith.addf %cst_41, %cst_41 : f32
        %268 = vector.broadcast %cst_41 : f32 to vector<6x1x6x1xf32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %53, %31, %268 : vector<1x6x1xf32>, vector<1x6x1xf32> into vector<6x1x6x1xf32>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %236 = vector.broadcast %184 : index to vector<8xindex>
    %237 = vector.broadcast %true_44 : i1 to vector<8xi1>
    vector.scatter %alloc_17[%c0, %c0, %c0] [%236], %237, %237 : memref<1x6x1xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
    %238 = arith.minui %true_2, %false_6 : i1
    %239 = bufferization.to_tensor %222 : memref<15xf16>
    %dest_57, %accumulated_value_58 = vector.scan <mul>, %211, %33 {inclusive = true, reduction_dim = 1 : i64} : vector<1x15xf32>, vector<1xf32>
    %240 = tensor.empty() : tensor<15xi16>
    %241 = linalg.copy ins(%10 : tensor<15xi16>) outs(%240 : tensor<15xi16>) -> tensor<15xi16>
    %242 = tensor.empty(%232, %231) : tensor<?x?xi32>
    %transposed_59 = linalg.transpose ins(%cast_38 : tensor<?x?xi32>) outs(%242 : tensor<?x?xi32>) permutation = [1, 0] 
    %243 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%229 : memref<1xi16>) outs(%243 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %245 = scf.execute_region -> memref<1xi64> {
          %252 = index.floordivs %c0, %231
          %253 = math.cos %cst_30 : f32
          %254 = arith.minui %c5175_i16, %c-7041_i16 : i16
          %255 = vector.matrix_multiply %72, %72 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %256 = math.sqrt %8 : tensor<1xf32>
          %cast_61 = tensor.cast %15 : tensor<15xf16> to tensor<?xf16>
          %257 = math.atan %cst_30 : f32
          %258 = arith.floordivsi %c-7041_i16, %c-7041_i16 : i16
          %259 = arith.divf %cst_0, %cst_0 : f16
          %260 = vector.load %alloc_10[%c0] : memref<1xf32>, vector<1x15xf32>
          %261 = math.rsqrt %8 : tensor<1xf32>
          %262 = math.ctpop %4 : tensor<1xi16>
          %263 = index.sizeof
          %264 = bufferization.clone %alloc_23 : memref<15xf16> to memref<15xf16>
          %265 = index.casts %c-26820_i16 : i16 to index
          %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %73, %71, %c5175_i16 : vector<1xi16>, vector<1xi16> into i16
          %alloc_62 = memref.alloc() : memref<1xi64>
          scf.yield %alloc_62 : memref<1xi64>
        }
        %246 = tensor.empty() : tensor<15xf16>
        %247 = math.ipowi %9, %9 : tensor<1x15xi64>
        %248 = math.roundeven %103 : tensor<f16>
        %generated_60 = tensor.generate %26 {
        ^bb0(%arg2: index, %arg3: index):
          %252 = math.cos %15 : tensor<15xf16>
          %253 = math.cttz %1 : tensor<1xi32>
          %from_elements_61 = tensor.from_elements %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32, %c758892014_i32 : tensor<15xi32>
          %254 = affine.min affine_map<(d0) -> ((d0 floordiv 128) * 4, d0 mod 8 + 8)>(%arg3)
          tensor.yield %init : i16
        } : tensor<?x15xi16>
        %249 = arith.addf %189, %cst_30 : f32
        %250 = index.sizeof
        %251 = arith.addi %true_2, %false_5 : i1
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg2, %arg3) = (%127, %c15) to (%c0, %44) step (%c6, %c8) {
      bufferization.dealloc_tensor %15 : tensor<15xf16>
      %generated_60 = tensor.generate %202 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        %257 = arith.maxf %cst_41, %cst_24 : f32
        %258 = arith.minsi %c-26820_i16, %c-26820_i16 : i16
        %259 = arith.xori %c1461889454_i64, %c454485149_i64 : i64
        %260 = vector.extract_strided_slice %33 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        tensor.yield %c454485149_i64 : i64
      } : tensor<?x6x1xi64>
      %245 = affine.load %194[%c4] : memref<1xf32>
      %246 = arith.shli %c-7041_i16, %c5175_i16 : i16
      %247 = index.sub %c8, %201
      %248 = math.exp2 %12 : tensor<1x6x1xf32>
      %249 = arith.minsi %c758892014_i32, %c758892014_i32 : i32
      %250 = math.tan %expanded_26 : tensor<15x1xf16>
      %cast_61 = tensor.cast %14 : tensor<1x6x1xf16> to tensor<?x?x?xf16>
      %251 = math.ctpop %false_6 : i1
      %252 = tensor.empty() : tensor<1x6x1xi32>
      %mapped_62 = linalg.map ins(%114, %114 : memref<1x6x1xi32>, memref<1x6x1xi32>) outs(%252 : tensor<1x6x1xi32>)
        (%in: i32, %in_63: i32) {
          %257 = vector.create_mask %202, %c1, %c7 : vector<1x6x1xi1>
          %258 = math.ipowi %10, %241 : tensor<15xi16>
          %dest_64, %accumulated_value_65 = vector.scan <minf>, %159, %33 {inclusive = true, reduction_dim = 1 : i64} : vector<1x15xf32>, vector<1xf32>
          %259 = arith.ceildivsi %in_63, %in_63 : i32
          %260 = vector.create_mask %52, %c11, %231 : vector<1x6x1xi1>
          %261 = index.floordivs %c8, %c13
          %262 = vector.matrix_multiply %117, %176 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %263 = math.absf %from_elements_39 : tensor<1x6x1xf32>
          %false_66 = arith.constant false
          %264 = vector.transfer_read %alloc[%c8], %false_66 : memref<1xi1>, vector<i1>
          %265 = math.round %collapsed_40 : tensor<15xf16>
          %266 = index.add %186, %247
          %267 = vector.splat %225 : vector<1x6x1xindex>
          %268 = arith.addi %84, %false_5 : i1
          %269 = index.casts %111 : index to i32
          %270 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 2 - 16)>(%rank, %c8)
          %271 = affine.load %alloc_12[%c0, %c2] : memref<1x15xi1>
          %272 = math.cos %0 : tensor<1x15xf16>
          memref.copy %190, %alloc_13 : memref<1x6x1xi64> to memref<1x6x1xi64>
          %273 = arith.cmpi ne, %false_6, %true_44 : i1
          %274 = arith.maxf %cst_30, %245 : f32
          %expanded_67 = tensor.expand_shape %generated_60 [[0], [1], [2, 3]] : tensor<?x6x1xi64> into tensor<?x6x1x1xi64>
          %275 = arith.mulf %cst_1, %cst_1 : f16
          memref.assume_alignment %alloc_21, 1 : memref<15xf16>
          %276 = arith.addi %false, %84 : i1
          %277 = arith.cmpi eq, %false, %true_2 : i1
          %278 = tensor.empty() : tensor<15x1xi32>
          %279 = tensor.empty() : tensor<1x1xi32>
          %280 = linalg.matmul ins(%5, %278 : tensor<1x15xi32>, tensor<15x1xi32>) outs(%279 : tensor<1x1xi32>) -> tensor<1x1xi32>
          %splat_68 = tensor.splat %false_5 : tensor<1xi1>
          %281 = math.ctpop %c-7041_i16 : i16
          %282 = arith.maxf %cst_24, %189 : f32
          %rank_69 = tensor.rank %17 : tensor<15xf16>
          %283 = affine.load %alloc_23[%c1] : memref<15xf16>
          %284 = vector.maskedload %alloc_22[], %176, %115 : memref<i1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %253 = affine.load %alloc_22[] : memref<i1>
      memref.copy %alloc_15, %145 : memref<1x15xi1> to memref<1x15xi1>
      %254 = math.round %7 : tensor<1x6x1xf16>
      %255 = arith.remf %cst_4, %cst_1 : f16
      %256 = math.ceil %cst_41 : f32
      scf.yield
    }
    %244 = affine.vector_load %alloc[%c12] : memref<1xi1>, vector<6xi1>
    affine.vector_store %19, %alloc_17[%170, %c13, %c13] : memref<1x6x1xi1>, vector<6xi1>
    vector.print %19 : vector<6xi1>
    vector.print %24 : vector<1xi1>
    vector.print %27 : vector<1x15xf32>
    vector.print %28 : vector<1x15xf32>
    vector.print %30 : vector<1x6x1xf32>
    vector.print %31 : vector<1x6x1xf32>
    vector.print %33 : vector<1xf32>
    vector.print %53 : vector<1x6x1xf32>
    vector.print %54 : vector<1x6x1xf32>
    vector.print %71 : vector<1xi16>
    vector.print %72 : vector<1xi32>
    vector.print %73 : vector<1xi16>
    vector.print %110 : vector<15xf32>
    vector.print %113 : vector<1x15xi1>
    vector.print %115 : vector<1xi1>
    vector.print %117 : vector<1xi1>
    vector.print %159 : vector<1x15xf32>
    vector.print %160 : vector<1x15xf32>
    vector.print %168 : vector<1xi1>
    vector.print %176 : vector<1xi1>
    vector.print %204 : vector<1xi16>
    vector.print %208 : vector<1xi16>
    vector.print %211 : vector<1x15xf32>
    vector.print %212 : vector<1x15xf32>
    vector.print %218 : vector<1x15xi1>
    vector.print %220 : vector<15xi64>
    vector.print %244 : vector<6xi1>
    vector.print %c454485149_i64 : i64
    vector.print %c5175_i16 : i16
    vector.print %cst : f16
    vector.print %c758892014_i32 : i32
    vector.print %cst_0 : f16
    vector.print %true : i1
    vector.print %c-7041_i16 : i16
    vector.print %c1461889454_i64 : i64
    vector.print %cst_1 : f16
    vector.print %false : i1
    vector.print %true_2 : i1
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %c-26820_i16 : i16
    vector.print %false_5 : i1
    vector.print %false_6 : i1
    vector.print %cst_24 : f32
    vector.print %78 : i1
    vector.print %84 : i1
    vector.print %cst_30 : f32
    vector.print %cst_41 : f32
    vector.print %189 : f32
    vector.print %true_44 : i1
    return %cst_30 : f32
  }
}
