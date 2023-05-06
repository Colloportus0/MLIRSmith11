module {
  func.func @func1(%arg0: index, %arg1: tensor<12xi16>) {
    %c26368_i16 = arith.constant 26368 : i16
    %c262551551_i32 = arith.constant 262551551 : i32
    %true = arith.constant true
    %c1497132425_i64 = arith.constant 1497132425 : i64
    %c1433010774_i32 = arith.constant 1433010774 : i32
    %cst = arith.constant 0x4DBC7A15 : f32
    %true_0 = arith.constant true
    %c756762520_i64 = arith.constant 756762520 : i64
    %cst_1 = arith.constant 0x4E2D7568 : f32
    %c945560081_i32 = arith.constant 945560081 : i32
    %c1008141412_i64 = arith.constant 1008141412 : i64
    %cst_2 = arith.constant 8.010000e+02 : f16
    %c1683208616_i64 = arith.constant 1683208616 : i64
    %c475380494_i32 = arith.constant 475380494 : i32
    %c10649_i16 = arith.constant 10649 : i16
    %c1211232998_i32 = arith.constant 1211232998 : i32
    %0 = tensor.empty() : tensor<12x5x12xf16>
    %1 = tensor.empty() : tensor<12x5x12xf16>
    %2 = tensor.empty() : tensor<11x5xf32>
    %3 = tensor.empty() : tensor<12xi64>
    %4 = tensor.empty() : tensor<11xf16>
    %5 = tensor.empty() : tensor<12xi16>
    %6 = tensor.empty() : tensor<11x5xf32>
    %7 = tensor.empty() : tensor<11x5xf32>
    %8 = tensor.empty() : tensor<11x5xi32>
    %9 = tensor.empty() : tensor<12xf16>
    %10 = tensor.empty() : tensor<12xf32>
    %11 = tensor.empty() : tensor<11xf32>
    %12 = tensor.empty() : tensor<11xi64>
    %13 = tensor.empty() : tensor<11x5xi16>
    %14 = tensor.empty() : tensor<11xi64>
    %15 = tensor.empty() : tensor<12xi64>
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
    %alloc = memref.alloc() : memref<11x5xi32>
    %alloc_3 = memref.alloc() : memref<11xi1>
    %alloc_4 = memref.alloc() : memref<12xi64>
    %alloc_5 = memref.alloc() : memref<11x5xi64>
    %alloc_6 = memref.alloc() : memref<12x5x12xf32>
    %alloc_7 = memref.alloc() : memref<12xi32>
    %alloc_8 = memref.alloc() : memref<12xi32>
    %alloc_9 = memref.alloc() : memref<11xi1>
    %alloc_10 = memref.alloc() : memref<12x5x12xf16>
    %alloc_11 = memref.alloc() : memref<11xi1>
    %alloc_12 = memref.alloc() : memref<12x5x12xi16>
    %alloc_13 = memref.alloc() : memref<11x5xi64>
    %alloc_14 = memref.alloc() : memref<12x5x12xi64>
    %alloc_15 = memref.alloc() : memref<11xi16>
    %alloc_16 = memref.alloc() : memref<11xi1>
    %alloc_17 = memref.alloc() : memref<11xi16>
    %16 = tensor.empty() : tensor<11xf32>
    %17 = linalg.copy ins(%11 : tensor<11xf32>) outs(%16 : tensor<11xf32>) -> tensor<11xf32>
    %alloc_18 = memref.alloc() : memref<11xi64>
    linalg.transpose ins(%14 : tensor<11xi64>) outs(%alloc_18 : memref<11xi64>) permutation = [0] 
    %alloc_19 = memref.alloc() : memref<11xf32>
    linalg.reduce ins(%7 : tensor<11x5xf32>) outs(%alloc_19 : memref<11xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        memref.store %true, %alloc_9[%c4] : memref<11xi1>
        %alloc_59 = memref.alloc() : memref<11x5xi32>
        memref.copy %alloc, %alloc_59 : memref<11x5xi32> to memref<11x5xi32>
        %248 = arith.addf %init, %in : f32
        %249 = arith.minf %in, %cst_1 : f32
        %250 = vector.broadcast %c10649_i16 : i16 to vector<9xi16>
        %251 = vector.broadcast %true_0 : i1 to vector<9xi1>
        %252 = vector.maskedload %alloc_15[%c3], %251, %250 : memref<11xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %253 = vector.load %alloc_6[%c1, %c3, %c5] : memref<12x5x12xf32>, vector<12xf32>
        %254 = math.powf %11, %11 : tensor<11xf32>
        %255 = bufferization.clone %alloc_14 : memref<12x5x12xi64> to memref<12x5x12xi64>
        %cst_60 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_60 : f32
      }
    %18 = scf.parallel (%arg2) = (%c9) to (%c9) step (%c8) init (%alloc_7) -> memref<12xi32> {
      %248 = vector.broadcast %c475380494_i32 : i32 to vector<1xi32>
      %249 = vector.broadcast %c945560081_i32 : i32 to vector<1xi32>
      %250 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %248, %249, %c1211232998_i32 : vector<1xi32>, vector<1xi32> into i32
      %251 = arith.shli %c1211232998_i32, %c945560081_i32 : i32
      %252 = arith.maxui %c945560081_i32, %c1433010774_i32 : i32
      %253 = affine.max affine_map<(d0, d1, d2) -> (d2 + 126, 160, d1 - 64)>(%c10, %c1, %c3)
      %254 = vector.transpose %248, [0] : vector<1xi32> to vector<1xi32>
      memref.assume_alignment %alloc_10, 8 : memref<12x5x12xf16>
      %255 = vector.insert %c945560081_i32, %248 [0] : i32 into vector<1xi32>
      %256 = vector.broadcast %c7 : index to vector<9xindex>
      %257 = vector.broadcast %true : i1 to vector<9xi1>
      %258 = vector.broadcast %cst_2 : f16 to vector<9xf16>
      vector.scatter %alloc_10[%c2, %c3, %c6] [%256], %257, %258 : memref<12x5x12xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      %collapsed_59 = tensor.collapse_shape %8 [[0, 1]] : tensor<11x5xi32> into tensor<55xi32>
      %alloca = memref.alloca() : memref<11xi1>
      %259 = math.tan %11 : tensor<11xf32>
      %260 = index.casts %c26368_i16 : i16 to index
      %true_60 = arith.constant true
      %261 = memref.atomic_rmw muli %c10649_i16, %alloc_12[%c4, %c3, %c8] : (i16, memref<12x5x12xi16>) -> i16
      %262 = vector.broadcast %253 : index to vector<5xindex>
      %263 = vector.broadcast %true : i1 to vector<5xi1>
      %264 = vector.broadcast %c1008141412_i64 : i64 to vector<5xi64>
      vector.scatter %alloc_5[%c2, %c3] [%262], %263, %264 : memref<11x5xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      %alloc_61 = memref.alloc() : memref<11x5xf32>
      memref.tensor_store %7, %alloc_61 : memref<11x5xf32>
      %alloc_62 = memref.alloc() : memref<12xi32>
      scf.reduce(%alloc_62)  : memref<12xi32> {
      ^bb0(%arg3: memref<12xi32>, %arg4: memref<12xi32>):
        %265 = math.powf %2, %2 : tensor<11x5xf32>
        %rank_63 = tensor.rank %9 : tensor<12xf16>
        %266 = math.expm1 %10 : tensor<12xf32>
        %267 = arith.subi %c756762520_i64, %c1497132425_i64 : i64
        %268 = vector.bitcast %248 : vector<1xi32> to vector<1xi32>
        %269 = arith.minui %true, %true : i1
        %270 = arith.remf %cst_2, %cst_2 : f16
        %from_elements_64 = tensor.from_elements %c1683208616_i64, %c756762520_i64, %c1683208616_i64, %c1683208616_i64, %c1497132425_i64, %c1497132425_i64, %c1497132425_i64, %c1008141412_i64, %c1497132425_i64, %c1497132425_i64, %c756762520_i64 : tensor<11xi64>
        %alloc_65 = memref.alloc() : memref<12xi32>
        scf.reduce.return %alloc_65 : memref<12xi32>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_18[%c10] : memref<11xi64>, vector<9xi64>
    affine.vector_store %19, %alloc_4[%c9] : memref<12xi64>, vector<9xi64>
    %20 = tensor.empty() : tensor<11xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%11, %20 : tensor<11xf32>, tensor<11xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = math.ctpop %c1497132425_i64 : i64
    %24 = tensor.empty() : tensor<12x5x12xi64>
    %25 = tensor.empty(%c10) : tensor<11x?xi1>
    %cst_20 = arith.constant 1.78599706E+9 : f32
    %splat = tensor.splat %c26368_i16 : tensor<11x5xi16>
    %26 = arith.andi %c1211232998_i32, %c262551551_i32 : i32
    %27 = vector.broadcast %cst_1 : f32 to vector<11xf32>
    %28 = vector.fma %27, %27, %27 : vector<11xf32>
    %29 = arith.divsi %c475380494_i32, %c1211232998_i32 : i32
    %30 = memref.atomic_rmw maxf %cst, %alloc_19[%c4] : (f32, memref<11xf32>) -> f32
    %31 = math.log1p %10 : tensor<12xf32>
    %32 = arith.andi %c26368_i16, %c10649_i16 : i16
    %33 = arith.maxui %true_0, %true : i1
    affine.store %c1497132425_i64, %alloc_14[%c15, %c8, %c0] : memref<12x5x12xi64>
    %34 = vector.broadcast %c1683208616_i64 : i64 to vector<9x11xi64>
    %35 = vector.broadcast %c756762520_i64 : i64 to vector<11xi64>
    %dest, %accumulated_value = vector.scan <add>, %34, %35 {inclusive = false, reduction_dim = 0 : i64} : vector<9x11xi64>, vector<11xi64>
    %36 = arith.shrsi %c10649_i16, %c10649_i16 : i16
    %37 = arith.subi %true_0, %true_0 : i1
    memref.tensor_store %8, %alloc : memref<11x5xi32>
    %38 = arith.divui %c1497132425_i64, %c1683208616_i64 : i64
    %39 = arith.shrsi %c475380494_i32, %c475380494_i32 : i32
    %40 = tensor.empty() : tensor<12xi32>
    %41 = math.fpowi %9, %40 : tensor<12xf16>, tensor<12xi32>
    %42 = arith.ori %c1211232998_i32, %c475380494_i32 : i32
    %43 = vector.matrix_multiply %19, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
    %44 = arith.remui %c1497132425_i64, %c1008141412_i64 : i64
    %45 = vector.broadcast %c26368_i16 : i16 to vector<11xi16>
    %46 = vector.transfer_write %45, %splat[%c15, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<11x5xi16>
    %47 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %9, %9 : tensor<12x5x12xf16>, tensor<12xf16>, tensor<12xf16>) outs(%1 : tensor<12x5x12xf16>) {
    ^bb0(%in: f16, %in_59: f16, %in_60: f16, %out: f16):
      %248 = scf.execute_region -> vector<11xf16> {
        %278 = arith.remui %c1211232998_i32, %c262551551_i32 : i32
        %rank_69 = tensor.rank %40 : tensor<12xi32>
        %alloc_70 = memref.alloc() : memref<12x5x12xi16>
        %279 = index.castu %c7 : index to i32
        %280 = arith.maxui %true_0, %true : i1
        %281 = arith.maxsi %c1497132425_i64, %c1683208616_i64 : i64
        %282 = arith.divsi %c10649_i16, %c10649_i16 : i16
        %283 = vector.broadcast %c26368_i16 : i16 to vector<12x5x12xi16>
        memref.copy %alloc_7, %alloc_8 : memref<12xi32> to memref<12xi32>
        %284 = arith.cmpi ule, %c262551551_i32, %c1211232998_i32 : i32
        affine.store %c756762520_i64, %alloc_14[%c3, %c14, %c2] : memref<12x5x12xi64>
        %285 = math.round %11 : tensor<11xf32>
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, 0)>(%c7, %c1, %c14, %c9)
        %287 = math.round %out : f16
        memref.store %c262551551_i32, %alloc_7[%c7] : memref<12xi32>
        %cst_71 = arith.constant 5.078400e+04 : f16
        %288 = vector.broadcast %in : f16 to vector<11xf16>
        scf.yield %288 : vector<11xf16>
      }
      %249 = math.absf %10 : tensor<12xf32>
      %250 = bufferization.clone %alloc_17 : memref<11xi16> to memref<11xi16>
      %251 = arith.shli %c1008141412_i64, %c756762520_i64 : i64
      %alloc_61 = memref.alloc() : memref<11x5xi32>
      memref.copy %alloc, %alloc_61 : memref<11x5xi32> to memref<11x5xi32>
      %252 = vector.load %alloc_12[%c5, %c1, %c0] : memref<12x5x12xi16>, vector<12xi16>
      %253 = tensor.empty(%c6, %c12) : tensor<?x?x12xi32>
      %alloc_62 = memref.alloc() : memref<11xi64>
      memref.copy %alloc_18, %alloc_62 : memref<11xi64> to memref<11xi64>
      %254 = arith.minf %cst_2, %in_60 : f16
      %alloc_63 = memref.alloc() : memref<5xi64>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_63, %alloc_63, %alloc_4 : memref<5xi64>, memref<5xi64>, memref<12xi64>) outs(%24 : tensor<12x5x12xi64>) {
      ^bb0(%in_69: i64, %in_70: i64, %in_71: i64, %out_72: i64):
        %alloc_73 = memref.alloc() : memref<11x5xf32>
        memref.tensor_store %2, %alloc_73 : memref<11x5xf32>
        %278 = arith.cmpf ole, %in_60, %in_60 : f16
        %279 = vector.reduction <mul>, %19 : vector<9xi64> into i64
        %280 = arith.remf %cst, %cst : f32
        %281 = index.divu %c8, %c15
        %282 = vector.splat %c1211232998_i32 : vector<11x5xi32>
        %283 = math.tanh %1 : tensor<12x5x12xf16>
        %284 = arith.mulf %in, %out : f16
        %285 = vector.insertelement %cst, %28[%c8 : index] : vector<11xf32>
        %286 = math.absi %12 : tensor<11xi64>
        %287 = arith.remsi %c475380494_i32, %c1211232998_i32 : i32
        %288 = math.cttz %c756762520_i64 : i64
        %true_74 = index.bool.constant true
        %289 = memref.realloc %alloc_4 : memref<12xi64> to memref<5xi64>
        %290 = arith.divui %in_71, %c1008141412_i64 : i64
        %291 = math.log10 %22 : tensor<f32>
        %from_elements_75 = tensor.from_elements %in, %in_60, %cst_2, %cst_2, %cst_2, %in_59, %out, %out, %out, %in_60, %in_60 : tensor<11xf16>
        %292 = index.maxu %c12, %c5
        %alloca = memref.alloca() : memref<12xi32>
        %293 = tensor.empty(%c9) : tensor<?x5xi32>
        %294 = vector.reduction <xor>, %19 : vector<9xi64> into i64
        %295 = math.round %16 : tensor<11xf32>
        %296 = tensor.empty() : tensor<5x5xi16>
        %297 = tensor.empty() : tensor<11x5xi16>
        %298 = linalg.matmul ins(%splat, %296 : tensor<11x5xi16>, tensor<5x5xi16>) outs(%297 : tensor<11x5xi16>) -> tensor<11x5xi16>
        %299 = tensor.empty() : tensor<11xi1>
        %300 = vector.broadcast %true_74 : i1 to vector<11x5xi1>
        %301 = vector.broadcast %c475380494_i32 : i32 to vector<11x5xi32>
        %302 = vector.gather %299[%c15] [%301], %300, %300 : tensor<11xi1>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi1> into vector<11x5xi1>
        %from_elements_76 = tensor.from_elements %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1 : tensor<12xf32>
        %303 = math.ctlz %12 : tensor<11xi64>
        %304 = arith.maxui %in_70, %in_70 : i64
        %305 = tensor.empty(%c6) : tensor<?x5xf32>
        %306 = affine.load %alloc_18[%c12] : memref<11xi64>
        %307 = memref.load %alloc_17[%c1] : memref<11xi16>
        %alloc_77 = memref.alloc() : memref<11x5xf32>
        memref.tensor_store %2, %alloc_77 : memref<11x5xf32>
        %308 = math.absi %14 : tensor<11xi64>
        linalg.yield %c1497132425_i64 : i64
      } -> tensor<12x5x12xi64>
      %alloc_64 = memref.alloc() : memref<11xi64>
      memref.copy %alloc_18, %alloc_64 : memref<11xi64> to memref<11xi64>
      %256 = arith.subi %c756762520_i64, %c756762520_i64 : i64
      %257 = math.powf %10, %10 : tensor<12xf32>
      %258 = tensor.empty() : tensor<12x5x12xf16>
      %mapped_65 = linalg.map ins(%0, %alloc_10, %0 : tensor<12x5x12xf16>, memref<12x5x12xf16>, tensor<12x5x12xf16>) outs(%258 : tensor<12x5x12xf16>)
        (%in_69: f16, %in_70: f16, %in_71: f16) {
          %278 = arith.divsi %true, %true_0 : i1
          %279 = arith.divsi %c1683208616_i64, %c756762520_i64 : i64
          %alloc_72 = memref.alloc() : memref<12xf32>
          %280 = arith.shrsi %c1433010774_i32, %c262551551_i32 : i32
          %splat_73 = tensor.splat %in_69 : tensor<11xf16>
          %281 = index.floordivs %c2, %c14
          %282 = arith.remf %in_60, %in_70 : f16
          %283 = vector.transpose %252, [0] : vector<12xi16> to vector<12xi16>
          %284 = index.ceildivs %c12, %c9
          %285 = arith.xori %true, %true : i1
          %alloc_74 = memref.alloc() : memref<12xi64>
          %286 = arith.mulf %cst, %cst_1 : f32
          %287 = math.powf %in_69, %out : f16
          %288 = index.maxu %284, %c6
          %289 = math.rsqrt %splat_73 : tensor<11xf16>
          %290 = arith.addf %cst, %cst_1 : f32
          %291 = math.absf %6 : tensor<11x5xf32>
          %292 = arith.minsi %c1433010774_i32, %c945560081_i32 : i32
          %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %28, %27, %cst_1 : vector<11xf32>, vector<11xf32> into f32
          %294 = index.divu %c12, %288
          %295 = index.add %c9, %c9
          %296 = arith.divsi %c1683208616_i64, %c756762520_i64 : i64
          vector.print %28 : vector<11xf32>
          %297 = index.ceildivs %c6, %c6
          %298 = arith.cmpi sgt, %c756762520_i64, %c1683208616_i64 : i64
          %299 = affine.min affine_map<(d0) -> (d0 floordiv 2 - 8, d0 floordiv 2 + d0 floordiv 64 - 8, d0 floordiv 64 - (d0 floordiv 2 - 8) + 40, d0 floordiv 64 + 40)>(%c12)
          %300 = arith.remsi %c10649_i16, %c10649_i16 : i16
          %301 = math.rsqrt %4 : tensor<11xf16>
          affine.store %cst_1, %alloc_6[%c13, %c7, %c8] : memref<12x5x12xf32>
          %302 = math.rsqrt %0 : tensor<12x5x12xf16>
          %303 = bufferization.clone %alloc_12 : memref<12x5x12xi16> to memref<12x5x12xi16>
          %304 = math.tanh %0 : tensor<12x5x12xf16>
          %cst_75 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_75 : f16
        }
      %259 = affine.min affine_map<(d0, d1, d2) -> (d1 * -2, -d1, d2)>(%c4, %c15, %c13)
      %260 = math.cttz %c262551551_i32 : i32
      %261 = vector.matrix_multiply %19, %43 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<1xi64>) -> vector<9xi64>
      scf.index_switch %c2 
      case 1 {
        %278 = vector.create_mask %c11, %c11, %259 : vector<12x5x12xi1>
        %279 = vector.broadcast %true : i1 to vector<11x5xi1>
        %280 = vector.broadcast %true : i1 to vector<5xi1>
        %281 = vector.insert %280, %279 [0] : vector<5xi1> into vector<11x5xi1>
        %282 = vector.broadcast %c262551551_i32 : i32 to vector<11xi32>
        %283 = vector.create_mask %c0 : vector<12xi1>
        %284 = arith.minsi %true_0, %true : i1
        %285 = vector.create_mask %c7 : vector<12xi1>
        %286 = math.fma %258, %1, %0 : tensor<12x5x12xf16>
        %collapsed_69 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<12x5x12xf16> into tensor<60x12xf16>
        %287 = index.maxu %c11, %c14
        %288 = vector.broadcast %cst : f32 to vector<f32>
        %289 = vector.transfer_write %288, %11[%c6] : vector<f32>, tensor<11xf32>
        %290 = math.powf %2, %7 : tensor<11x5xf32>
        %291 = index.divu %c11, %c8
        %292 = memref.realloc %alloc_3 : memref<11xi1> to memref<5xi1>
        %splat_70 = tensor.splat %c1211232998_i32 : tensor<12x5x12xi32>
        %293 = math.log10 %1 : tensor<12x5x12xf16>
        scf.yield
      }
      case 2 {
        %278 = arith.subi %c10649_i16, %c26368_i16 : i16
        %expanded_69 = tensor.expand_shape %12 [[0, 1]] : tensor<11xi64> into tensor<11x1xi64>
        %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 2)>(%c14, %c13, %c9, %c1)
        %alloc_70 = memref.alloc() : memref<12xf32>
        memref.tensor_store %10, %alloc_70 : memref<12xf32>
        %280 = bufferization.clone %alloc_11 : memref<11xi1> to memref<11xi1>
        %281 = arith.remui %c1008141412_i64, %c756762520_i64 : i64
        %282 = arith.maxsi %c26368_i16, %c26368_i16 : i16
        %283 = math.fpowi %7, %8 : tensor<11x5xf32>, tensor<11x5xi32>
        %284 = math.round %10 : tensor<12xf32>
        %285 = index.add %c3, %c11
        %286 = index.mul %c0, %c13
        %287 = math.roundeven %6 : tensor<11x5xf32>
        memref.store %c1497132425_i64, %alloc_13[%c3, %c2] : memref<11x5xi64>
        %288 = arith.maxf %in_60, %in : f16
        memref.copy %280, %alloc_16 : memref<11xi1> to memref<11xi1>
        %289 = arith.divsi %true, %true_0 : i1
        scf.yield
      }
      case 3 {
        %278 = vector.load %alloc_7[%c10] : memref<12xi32>, vector<12x5x12xi32>
        %279 = vector.insertelement %c1497132425_i64, %19[%c0 : index] : vector<9xi64>
        %280 = math.atan2 %20, %20 : tensor<11xf32>
        %281 = arith.shli %c10649_i16, %c26368_i16 : i16
        %alloc_69 = memref.alloc() : memref<5x11xf32>
        %282 = tensor.empty() : tensor<11x11xf32>
        %283 = linalg.matmul ins(%7, %alloc_69 : tensor<11x5xf32>, memref<5x11xf32>) outs(%282 : tensor<11x11xf32>) -> tensor<11x11xf32>
        %284 = arith.negf %in_59 : f16
        %285 = math.rsqrt %21 : tensor<f32>
        %286 = arith.remsi %c26368_i16, %c26368_i16 : i16
        %from_elements_70 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1 : tensor<12xf32>
        %287 = arith.addf %in_60, %in_59 : f16
        %288 = tensor.empty() : tensor<12xi32>
        %289 = math.atan2 %4, %4 : tensor<11xf16>
        %290 = math.powf %9, %9 : tensor<12xf16>
        %291 = index.casts %c2 : index to i32
        %292 = arith.remf %in_60, %in_60 : f16
        %true_71 = index.bool.constant true
        scf.yield
      }
      default {
        %278 = vector.broadcast %c10 : index to vector<9xindex>
        %279 = vector.broadcast %true_0 : i1 to vector<9xi1>
        %280 = vector.broadcast %c1433010774_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_8[%c4] [%278], %279, %280 : memref<12xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %alloca = memref.alloca() : memref<12x5x12xi16>
        %281 = vector.splat %in_59 : vector<11xf16>
        %splat_69 = tensor.splat %cst_2 : tensor<12x5x12xf16>
        %282 = affine.load %alloc_16[%c13] : memref<11xi1>
        %283 = arith.remui %c756762520_i64, %c1497132425_i64 : i64
        %284 = vector.load %alloc_14[%c7, %c1, %c11] : memref<12x5x12xi64>, vector<12x5x12xi64>
        %285 = arith.minsi %true, %282 : i1
        %true_70 = index.bool.constant true
        %splat_71 = tensor.splat %c1497132425_i64 : tensor<11x5xi64>
        %splat_72 = tensor.splat %cst_1 : tensor<12x5x12xf32>
        %286 = vector.load %alloc_5[%c1, %c2] : memref<11x5xi64>, vector<11x5xi64>
        %287 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 2, d2 - d0, d0 floordiv 128 + 64)>(%c15, %c13, %c1)
        %288 = arith.divsi %c756762520_i64, %c1683208616_i64 : i64
        %289 = vector.broadcast %cst : f32 to vector<12xf32>
        %290 = vector.fma %289, %289, %289 : vector<12xf32>
        %291 = index.maxu %c2, %c15
      }
      %262 = arith.mulf %cst_1, %cst : f32
      %true_66 = arith.constant true
      %263 = arith.minsi %c10649_i16, %c26368_i16 : i16
      %264 = arith.remf %cst_1, %cst_1 : f32
      %265 = vector.transpose %43, [0] : vector<1xi64> to vector<1xi64>
      %266 = vector.broadcast %c1497132425_i64 : i64 to vector<5x5x5xi64>
      %267 = vector.broadcast %c1683208616_i64 : i64 to vector<5x5xi64>
      %dest_67, %accumulated_value_68 = vector.scan <minsi>, %266, %267 {inclusive = false, reduction_dim = 0 : i64} : vector<5x5x5xi64>, vector<5x5xi64>
      %268 = tensor.empty() : tensor<12xf32>
      %269 = math.tanh %1 : tensor<12x5x12xf16>
      %270 = tensor.empty() : tensor<5x5xi16>
      %271 = tensor.empty() : tensor<11x5xi16>
      %272 = linalg.matmul ins(%13, %270 : tensor<11x5xi16>, tensor<5x5xi16>) outs(%271 : tensor<11x5xi16>) -> tensor<11x5xi16>
      %273 = arith.remsi %c10649_i16, %c26368_i16 : i16
      %274 = affine.for %arg2 = 0 to 29 iter_args(%arg3 = %10) -> (tensor<12xf32>) {
        affine.yield %268 : tensor<12xf32>
      }
      %275 = math.powf %in_60, %cst_2 : f16
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %252, %252, %c26368_i16 : vector<12xi16>, vector<12xi16> into i16
      %277 = arith.mulf %cst, %cst : f32
      linalg.yield %in_60 : f16
    } -> tensor<12x5x12xf16>
    %48 = math.copysign %6, %7 : tensor<11x5xf32>
    %49 = scf.while (%arg2 = %alloc) : (memref<11x5xi32>) -> memref<11x5xi32> {
      %248 = vector.bitcast %45 : vector<11xi16> to vector<11xf16>
      %249 = vector.bitcast %19 : vector<9xi64> to vector<9xi64>
      %250 = arith.shrui %c26368_i16, %c26368_i16 : i16
      %251 = affine.apply affine_map<(d0) -> (d0 mod 128 + 16)>(%c2)
      %252 = math.powf %4, %4 : tensor<11xf16>
      %253 = arith.remf %cst_2, %cst_2 : f16
      %254 = math.atan2 %cst_2, %cst_2 : f16
      %c0_i64_59 = arith.constant 0 : i64
      %255 = vector.transfer_read %24[%c5, %251, %c13], %c0_i64_59 : tensor<12x5x12xi64>, vector<i64>
      scf.condition(%true) %alloc : memref<11x5xi32>
    } do {
    ^bb0(%arg2: memref<11x5xi32>):
      memref.tensor_store %24, %alloc_14 : memref<12x5x12xi64>
      %248 = scf.while (%arg3 = %true_0) : (i1) -> i1 {
        memref.assume_alignment %alloc_8, 4 : memref<12xi32>
        %261 = arith.remsi %c26368_i16, %c10649_i16 : i16
        %262 = arith.divui %c1683208616_i64, %c1683208616_i64 : i64
        %263 = vector.insertelement %c1683208616_i64, %19[%c2 : index] : vector<9xi64>
        %false_61 = arith.constant false
        %264 = arith.addf %cst, %cst_1 : f32
        %alloc_62 = memref.alloc() : memref<5x5xf32>
        %265 = tensor.empty() : tensor<11x5xf32>
        %266 = linalg.matmul ins(%2, %alloc_62 : tensor<11x5xf32>, memref<5x5xf32>) outs(%265 : tensor<11x5xf32>) -> tensor<11x5xf32>
        %267 = arith.maxui %c1683208616_i64, %c756762520_i64 : i64
        scf.condition(%true_0) %true_0 : i1
      } do {
      ^bb0(%arg3: i1):
        %261 = vector.broadcast %c26368_i16 : i16 to vector<11x12xi16>
        %262 = vector.broadcast %c26368_i16 : i16 to vector<12xi16>
        %dest_61, %accumulated_value_62 = vector.scan <maxui>, %261, %262 {inclusive = false, reduction_dim = 0 : i64} : vector<11x12xi16>, vector<12xi16>
        %263 = affine.load %alloc_14[%c9, %c14, %c11] : memref<12x5x12xi64>
        %264 = vector.extract_strided_slice %28 {offsets = [9], sizes = [2], strides = [1]} : vector<11xf32> to vector<2xf32>
        %collapsed_63 = tensor.collapse_shape %7 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
        %265 = vector.broadcast %c10649_i16 : i16 to vector<11x5xi16>
        %266 = vector.broadcast %arg3 : i1 to vector<11x5xi1>
        %267 = vector.broadcast %c475380494_i32 : i32 to vector<11x5xi32>
        %268 = vector.gather %5[%c7] [%267], %266, %265 : tensor<12xi16>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi16> into vector<11x5xi16>
        %269 = vector.broadcast %c26368_i16 : i16 to vector<5xi16>
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %265, %45, %269 : vector<11x5xi16>, vector<11xi16> into vector<5xi16>
        %271 = arith.mulf %cst_2, %cst_2 : f16
        %272 = vector.flat_transpose %45 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %273 = math.roundeven %4 : tensor<11xf16>
        affine.store %c1683208616_i64, %alloc_4[%c13] : memref<12xi64>
        %274 = vector.broadcast %cst_1 : f32 to vector<12x5x12xf32>
        %275 = vector.fma %274, %274, %274 : vector<12x5x12xf32>
        %276 = vector.reduction <minsi>, %45 : vector<11xi16> into i16
        %277 = arith.remsi %c1008141412_i64, %263 : i64
        %278 = math.fma %22, %22, %22 : tensor<f32>
        %279 = vector.broadcast %true : i1 to vector<11xi1>
        %280 = arith.mulf %cst_2, %cst_2 : f16
        scf.yield %true_0 : i1
      }
      %249 = arith.mulf %cst_1, %cst : f32
      %250 = arith.andi %c756762520_i64, %c1497132425_i64 : i64
      %251 = affine.min affine_map<(d0, d1, d2) -> (d2 - 64, (d2 floordiv 64) * 16, d0 + d2 + 8, d2)>(%c6, %c5, %c9)
      %252 = arith.minsi %c475380494_i32, %c1211232998_i32 : i32
      %253 = arith.andi %c1683208616_i64, %c1497132425_i64 : i64
      %cst_59 = arith.constant 3.545600e+04 : f16
      %254 = memref.realloc %alloc_3 : memref<11xi1> to memref<5xi1>
      %collapsed_60 = tensor.collapse_shape %7 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
      %255 = math.atan2 %9, %9 : tensor<12xf16>
      %256 = math.tan %cst_1 : f32
      %257 = index.maxu %c8, %c4
      %258 = vector.matrix_multiply %28, %27 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
      %259 = vector.splat %251 : vector<11xindex>
      %260 = affine.max affine_map<(d0) -> (d0 - 64, d0 * 2 - (d0 - (d0 - 96) - 64) - 64, d0 * 2 - 64, ((d0 - 64) ceildiv 64) ceildiv 16)>(%c12)
      scf.yield %alloc : memref<11x5xi32>
    }
    %50 = affine.min affine_map<(d0, d1, d2) -> (d2 * 8 - d0, d1)>(%c6, %c14, %c8)
    %51 = math.expm1 %6 : tensor<11x5xf32>
    %52 = affine.min affine_map<(d0, d1) -> (d1 floordiv 128 - 64)>(%c4, %c6)
    %from_elements = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2 : tensor<11xf16>
    %53 = affine.min affine_map<(d0, d1, d2) -> ((d1 + d1 ceildiv 8) ceildiv 64, d1 * 16, d1, d0 floordiv 32)>(%c1, %c2, %c15)
    %alloc_21 = memref.alloc() : memref<5x12xi16>
    %54 = tensor.empty() : tensor<11x12xi16>
    %55 = linalg.matmul ins(%13, %alloc_21 : tensor<11x5xi16>, memref<5x12xi16>) outs(%54 : tensor<11x12xi16>) -> tensor<11x12xi16>
    %alloc_22 = memref.alloc() : memref<12xi1>
    %56 = vector.broadcast %true : i1 to vector<11x5xi1>
    %57 = vector.broadcast %c1433010774_i32 : i32 to vector<11x5xi32>
    %58 = vector.gather %alloc_22[%c7] [%57], %56, %56 : memref<12xi1>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi1> into vector<11x5xi1>
    %59 = arith.remf %cst_1, %cst : f32
    %alloc_23 = memref.alloc() : memref<12xf16>
    %60 = vector.broadcast %cst_2 : f16 to vector<11xf16>
    %61 = vector.broadcast %true : i1 to vector<11xi1>
    %62 = vector.broadcast %c945560081_i32 : i32 to vector<11xi32>
    %63 = vector.gather %alloc_23[%c12] [%62], %61, %60 : memref<12xf16>, vector<11xi32>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    memref.alloca_scope  {
      %248 = arith.maxui %c945560081_i32, %c1433010774_i32 : i32
      %249 = math.atan2 %1, %1 : tensor<12x5x12xf16>
      %250 = affine.load %alloc_8[%c11] : memref<12xi32>
      %251 = arith.cmpi sge, %true_0, %true : i1
      %252 = arith.mulf %cst, %cst : f32
      %alloc_59 = memref.alloc() : memref<5x9xi32>
      %253 = tensor.empty() : tensor<11x9xi32>
      %254 = linalg.matmul ins(%8, %alloc_59 : tensor<11x5xi32>, memref<5x9xi32>) outs(%253 : tensor<11x9xi32>) -> tensor<11x9xi32>
      %255 = affine.load %alloc_22[%c10] : memref<12xi1>
      %256 = arith.shrui %c1008141412_i64, %c1008141412_i64 : i64
      %257 = arith.remui %c26368_i16, %c10649_i16 : i16
      %258 = vector.broadcast %255 : i1 to vector<5x5xi1>
      %259 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %58, %58, %258 : vector<11x5xi1>, vector<11x5xi1> into vector<5x5xi1>
      %260 = index.ceildivs %c12, %c5
      %261 = index.maxu %c0, %c0
      %262 = math.atan %0 : tensor<12x5x12xf16>
      %263 = arith.cmpi sle, %c756762520_i64, %c1683208616_i64 : i64
      %264 = index.mul %c0, %c2
      %265 = arith.remf %cst_1, %cst : f32
      %266 = affine.max affine_map<(d0, d1, d2) -> (0, d2 ceildiv 2 - (-d0) mod 64)>(%c11, %53, %261)
      %alloc_60 = memref.alloc() : memref<11x5xi32>
      memref.tensor_store %3, %alloc_4 : memref<12xi64>
      %267 = math.round %22 : tensor<f32>
      %true_61 = index.bool.constant true
      %268 = arith.maxui %c1683208616_i64, %c756762520_i64 : i64
      %269 = memref.realloc %alloc_15 : memref<11xi16> to memref<5xi16>
      %splat_62 = tensor.splat %cst_1 : tensor<11xf32>
      %270 = index.add %52, %c9
      memref.tensor_store %15, %alloc_4 : memref<12xi64>
      %271 = math.rsqrt %2 : tensor<11x5xf32>
      %272 = tensor.empty() : tensor<11xi64>
      %mapped_63 = linalg.map ins(%12 : tensor<11xi64>) outs(%272 : tensor<11xi64>)
        (%in: i64) {
          %277 = tensor.empty() : tensor<11xi16>
          %278 = vector.insert %255, %61 [1] : i1 into vector<11xi1>
          %279 = vector.splat %cst_2 : vector<12xf16>
          %280 = math.ipowi %c1008141412_i64, %c1683208616_i64 : i64
          %281 = index.add %53, %264
          %282 = arith.negf %cst : f32
          %283 = vector.shuffle %45, %45 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 13, 17, 18, 19, 20] : vector<11xi16>, vector<11xi16>
          %collapsed_64 = tensor.collapse_shape %6 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
          %alloc_65 = memref.alloc() : memref<12xf32>
          %284 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, d3 * 2)>(%c5, %c8, %c4, %c2)
          %285 = vector.broadcast %cst : f32 to vector<12xf32>
          %286 = vector.fma %285, %285, %285 : vector<12xf32>
          %287 = arith.shrsi %c10649_i16, %c10649_i16 : i16
          %288 = vector.broadcast %c262551551_i32 : i32 to vector<11x5xi32>
          %289 = math.tanh %10 : tensor<12xf32>
          %alloca = memref.alloca() : memref<12xf32>
          %290 = arith.negf %cst_2 : f16
          %291 = vector.transpose %45, [0] : vector<11xi16> to vector<11xi16>
          memref.tensor_store %9, %alloc_23 : memref<12xf16>
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %60, %63, %cst_2 : vector<11xf16>, vector<11xf16> into f16
          %293 = arith.minsi %c1433010774_i32, %c475380494_i32 : i32
          %294 = arith.addf %cst_1, %cst_1 : f32
          %295 = bufferization.to_tensor %alloc_4 : memref<12xi64>
          %296 = arith.remsi %c26368_i16, %c26368_i16 : i16
          %297 = vector.broadcast %c1433010774_i32 : i32 to vector<5xi32>
          %298 = vector.insert %297, %57 [5] : vector<5xi32> into vector<11x5xi32>
          memref.store %c10649_i16, %alloc_12[%c6, %c2, %c7] : memref<12x5x12xi16>
          bufferization.dealloc_tensor %collapsed_64 : tensor<55xf32>
          %299 = arith.subi %true_0, %true_0 : i1
          %300 = arith.muli %c262551551_i32, %c1211232998_i32 : i32
          %301 = math.copysign %0, %0 : tensor<12x5x12xf16>
          %302 = vector.reduction <minui>, %43 : vector<1xi64> into i64
          %303 = arith.remsi %c10649_i16, %c10649_i16 : i16
          %304 = arith.mulf %cst_2, %cst_2 : f16
          %c0_i64_66 = arith.constant 0 : i64
          linalg.yield %c0_i64_66 : i64
        }
      %273 = index.floordivs %c8, %c5
      %274 = arith.shli %true_0, %true_0 : i1
      %275 = vector.splat %264 : vector<11xindex>
      %276 = index.divs %c9, %c9
    }
    %64 = math.log2 %0 : tensor<12x5x12xf16>
    %65 = arith.cmpi ne, %c945560081_i32, %c1211232998_i32 : i32
    %66 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %63, %63, %cst_2 : vector<11xf16>, vector<11xf16> into f16
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<12x5x12xf16> into tensor<60x12xf16>
    %splat_24 = tensor.splat %c1497132425_i64 : tensor<11xi64>
    %67 = memref.realloc %alloc_15 : memref<11xi16> to memref<5xi16>
    %68 = index.mul %c5, %c11
    %69 = arith.divsi %c1211232998_i32, %c945560081_i32 : i32
    bufferization.dealloc_tensor %5 : tensor<12xi16>
    %70 = vector.bitcast %45 : vector<11xi16> to vector<11xi16>
    %71 = math.absi %24 : tensor<12x5x12xi64>
    %72 = math.absf %4 : tensor<11xf16>
    memref.assume_alignment %alloc_4, 2 : memref<12xi64>
    %73 = math.ceil %9 : tensor<12xf16>
    %alloc_25 = memref.alloc() : memref<11xf32>
    memref.copy %alloc_19, %alloc_25 : memref<11xf32> to memref<11xf32>
    %74 = arith.divui %c10649_i16, %c10649_i16 : i16
    %75 = math.ctpop %c1683208616_i64 : i64
    %alloc_26 = memref.alloc() : memref<11xi64>
    %76 = vector.splat %true : vector<12x5x12xi1>
    %dest_27, %accumulated_value_28 = vector.scan <minsi>, %57, %62 {inclusive = true, reduction_dim = 1 : i64} : vector<11x5xi32>, vector<11xi32>
    %77 = vector.broadcast %c26368_i16 : i16 to vector<12x5x12xi16>
    memref.assume_alignment %alloc_11, 1 : memref<11xi1>
    %78 = arith.cmpf olt, %cst_2, %cst_2 : f16
    %79 = arith.cmpf uge, %cst_2, %cst_2 : f16
    %80 = arith.subi %true_0, %true : i1
    %81 = math.sqrt %2 : tensor<11x5xf32>
    %82 = arith.minui %true_0, %true_0 : i1
    %83 = vector.matrix_multiply %63, %63 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf16>, vector<11xf16>) -> vector<1xf16>
    %true_29 = index.bool.constant true
    %84 = math.tan %6 : tensor<11x5xf32>
    %85 = math.absi %5 : tensor<12xi16>
    %86 = index.maxs %c15, %c15
    %87 = vector.broadcast %true_29 : i1 to vector<12xi1>
    %88 = math.tan %17 : tensor<11xf32>
    %89 = vector.reduction <maxf>, %83 : vector<1xf16> into f16
    %90 = arith.mulf %cst_1, %cst : f32
    %alloc_30 = memref.alloc() : memref<12x12xi64>
    %91 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_4, %alloc_30, %3 : memref<12xi64>, memref<12x12xi64>, tensor<12xi64>) outs(%24 : tensor<12x5x12xi64>) {
    ^bb0(%in: i64, %in_59: i64, %in_60: i64, %out: i64):
      %248 = arith.addf %cst, %cst : f32
      %249 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 ceildiv 64) + 64, -(d2 ceildiv 64) - (-(d2 ceildiv 64) - 4) * 16 + 64, d1)>(%c0, %86, %c2, %c10)
      %250 = vector.broadcast %cst : f32 to vector<12x5x12xf32>
      %251 = vector.fma %250, %250, %250 : vector<12x5x12xf32>
      %252 = tensor.empty() : tensor<12xi1>
      %253 = vector.broadcast %c5 : index to vector<5xindex>
      %254 = vector.broadcast %true_0 : i1 to vector<5xi1>
      %255 = vector.broadcast %c1008141412_i64 : i64 to vector<5xi64>
      vector.scatter %alloc_14[%c3, %c4, %c5] [%253], %254, %255 : memref<12x5x12xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      %256 = index.mul %c8, %c11
      %257 = math.absf %11 : tensor<11xf32>
      %258 = arith.maxui %c1211232998_i32, %c262551551_i32 : i32
      %259 = affine.max affine_map<(d0, d1, d2) -> (d1, d2 - d0 - 16, d2 - d0 - 20)>(%c8, %c4, %68)
      scf.index_switch %c2 
      case 1 {
        %283 = vector.broadcast %c10649_i16 : i16 to vector<5x12xi16>
        %dest_61, %accumulated_value_62 = vector.scan <add>, %77, %283 {inclusive = true, reduction_dim = 0 : i64} : vector<12x5x12xi16>, vector<5x12xi16>
        %284 = arith.minui %c1008141412_i64, %in_59 : i64
        %false_63 = index.bool.constant false
        %inserted_64 = tensor.insert %cst into %7[%c3, %c4] : tensor<11x5xf32>
        %285 = vector.broadcast %c26368_i16 : i16 to vector<5x12xi16>
        %dest_65, %accumulated_value_66 = vector.scan <maxui>, %77, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<12x5x12xi16>, vector<5x12xi16>
        %286 = math.rsqrt %4 : tensor<11xf16>
        %287 = arith.remf %cst, %cst : f32
        %288 = affine.max affine_map<(d0, d1, d2) -> ((d1 + 64) * -64 - 128, (d1 + 64) ceildiv 16, -(d1 + 64))>(%86, %52, %249)
        %splat_67 = tensor.splat %c945560081_i32 : tensor<11x5xi32>
        %289 = math.absi %54 : tensor<11x12xi16>
        %290 = bufferization.clone %alloc_6 : memref<12x5x12xf32> to memref<12x5x12xf32>
        %291 = arith.floordivsi %c475380494_i32, %c1211232998_i32 : i32
        %292 = arith.remf %cst_1, %cst_1 : f32
        vector.print %70 : vector<11xi16>
        %293 = memref.realloc %alloc_15 : memref<11xi16> to memref<12xi16>
        %294 = index.floordivs %c10, %c15
        scf.yield
      }
      case 2 {
        %283 = arith.shrui %c756762520_i64, %out : i64
        %alloc_61 = memref.alloc() : memref<12xi1>
        memref.copy %alloc_22, %alloc_61 : memref<12xi1> to memref<12xi1>
        %284 = index.floordivs %c12, %c2
        %alloc_62 = memref.alloc() : memref<12x5x12xi32>
        %285 = vector.gather %alloc_62[%c13, %c13, %c8] [%57], %58, %57 : memref<12x5x12xi32>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi32> into vector<11x5xi32>
        %286 = affine.max affine_map<(d0, d1) -> (d0 + 16, d0 + 14, -d1)>(%c14, %86)
        %287 = vector.insert %cst_2, %83 [0] : f16 into vector<1xf16>
        %288 = math.round %6 : tensor<11x5xf32>
        %289 = vector.insertelement %cst_2, %83[%c7 : index] : vector<1xf16>
        %290 = arith.maxsi %in_60, %out : i64
        %291 = arith.addf %cst_2, %cst_2 : f16
        %292 = math.ctpop %14 : tensor<11xi64>
        %alloc_63 = memref.alloc() : memref<5x12xf32>
        %293 = tensor.empty() : tensor<11x12xf32>
        %294 = linalg.matmul ins(%7, %alloc_63 : tensor<11x5xf32>, memref<5x12xf32>) outs(%293 : tensor<11x12xf32>) -> tensor<11x12xf32>
        %295 = arith.maxui %c756762520_i64, %in : i64
        %296 = math.cttz %3 : tensor<12xi64>
        %297 = math.log2 %cst : f32
        %298 = arith.cmpi slt, %c756762520_i64, %c1497132425_i64 : i64
        scf.yield
      }
      default {
        memref.store %cst_1, %alloc_6[%c0, %c0, %c11] : memref<12x5x12xf32>
        %283 = arith.ceildivsi %out, %c1008141412_i64 : i64
        %284 = arith.divui %in_60, %c756762520_i64 : i64
        %285 = tensor.empty() : tensor<12x5x12xf32>
        %286 = math.powf %4, %4 : tensor<11xf16>
        memref.assume_alignment %alloc_11, 8 : memref<11xi1>
        %287 = math.expm1 %11 : tensor<11xf32>
        %288 = math.absi %40 : tensor<12xi32>
        %alloc_61 = memref.alloc() : memref<5x11xf32>
        %289 = tensor.empty() : tensor<11x11xf32>
        %290 = linalg.matmul ins(%2, %alloc_61 : tensor<11x5xf32>, memref<5x11xf32>) outs(%289 : tensor<11x11xf32>) -> tensor<11x11xf32>
        %291 = index.castu %c26368_i16 : i16 to index
        %292 = arith.shrsi %in_59, %in : i64
        %293 = math.absi %c26368_i16 : i16
        %294 = affine.apply affine_map<(d0) -> (d0 mod 128 + 16)>(%50)
        %295 = memref.atomic_rmw muli %c1008141412_i64, %alloc_4[%c9] : (i64, memref<12xi64>) -> i64
        %296 = arith.mulf %cst_1, %cst_1 : f32
        %297 = vector.broadcast %c10649_i16 : i16 to vector<12x5x12xi16>
      }
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %27, %27, %cst : vector<11xf32>, vector<11xf32> into f32
      %261 = index.mul %c3, %50
      %262 = memref.realloc %alloc_15 : memref<11xi16> to memref<9xi16>
      %263 = math.sqrt %2 : tensor<11x5xf32>
      %264 = vector.shuffle %87, %61 [0, 1, 6, 10, 11, 13, 14, 16, 17, 19, 21, 22] : vector<12xi1>, vector<11xi1>
      %265 = vector.bitcast %77 : vector<12x5x12xi16> to vector<12x5x12xi16>
      %266 = memref.load %alloc_23[%c8] : memref<12xf16>
      %267 = vector.broadcast %c475380494_i32 : i32 to vector<12xi32>
      %268 = vector.broadcast %c1683208616_i64 : i64 to vector<12x5x12xi64>
      %269 = math.log %from_elements : tensor<11xf16>
      %270 = math.roundeven %1 : tensor<12x5x12xf16>
      %c19430_i16 = arith.constant 19430 : i16
      %271 = vector.broadcast %cst : f32 to vector<11x5xf32>
      %272 = vector.fma %271, %271, %271 : vector<11x5xf32>
      %273 = vector.bitcast %267 : vector<12xi32> to vector<12xi32>
      %274 = math.rsqrt %10 : tensor<12xf32>
      memref.tensor_store %11, %alloc_19 : memref<11xf32>
      %275 = vector.maskedload %alloc_16[%c0], %61, %61 : memref<11xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
      %276 = affine.if affine_set<(d0, d1, d2, d3) : (d3 mod 8 == 0, d2 == 0, (-((d0 floordiv 32) * 32 - d2 ceildiv 2)) mod 2 >= 0, (d0 floordiv 32) * 2 + (-(d2 ceildiv 2)) floordiv 16 >= 0)>(%c5, %c4, %c5, %c0) -> i1 {
        %collapsed_61 = tensor.collapse_shape %8 [[0, 1]] : tensor<11x5xi32> into tensor<55xi32>
        %283 = tensor.empty() : tensor<11x5xf16>
        %284 = math.cttz %c756762520_i64 : i64
        %alloc_62 = memref.alloc() : memref<11xf16>
        memref.tensor_store %4, %alloc_62 : memref<11xf16>
        %285 = index.sub %c4, %c3
        %286 = vector.maskedload %alloc_16[%c9], %87, %87 : memref<11xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %alloc_63 = memref.alloc() : memref<11x5xi1>
        %287 = vector.gather %alloc_63[%c12, %c7] [%57], %56, %58 : memref<11x5xi1>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi1> into vector<11x5xi1>
        %288 = affine.max affine_map<(d0, d1, d2) -> (d1 + 32)>(%c3, %86, %c6)
        affine.yield %true_29 : i1
      } else {
        %283 = math.roundeven %7 : tensor<11x5xf32>
        %284 = vector.broadcast %53 : index to vector<9xindex>
        %285 = vector.broadcast %true_0 : i1 to vector<9xi1>
        vector.scatter %alloc_22[%c0] [%284], %285, %285 : memref<12xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
        %286 = arith.minf %cst_2, %cst_2 : f16
        %287 = memref.realloc %alloc_23 : memref<12xf16> to memref<5xf16>
        %288 = vector.shuffle %61, %61 [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 14, 15, 16, 17, 19, 20] : vector<11xi1>, vector<11xi1>
        %289 = vector.extract_strided_slice %28 {offsets = [2], sizes = [3], strides = [1]} : vector<11xf32> to vector<3xf32>
        %290 = vector.broadcast %c10 : index to vector<5xindex>
        %291 = vector.broadcast %true : i1 to vector<5xi1>
        %292 = vector.broadcast %cst_2 : f16 to vector<5xf16>
        vector.scatter %alloc_23[%c11] [%290], %291, %292 : memref<12xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
        %293 = vector.extract_strided_slice %58 {offsets = [5], sizes = [2], strides = [1]} : vector<11x5xi1> to vector<2x5xi1>
        affine.yield %true_0 : i1
      }
      %277 = vector.broadcast %cst_1 : f32 to vector<f32>
      %278 = vector.transfer_write %277, %6[%c10, %86] : vector<f32>, tensor<11x5xf32>
      %279 = arith.maxui %c756762520_i64, %c756762520_i64 : i64
      %280 = vector.broadcast %in_60 : i64 to vector<9x9xi64>
      %281 = vector.outerproduct %19, %19, %280 {kind = #vector.kind<or>} : vector<9xi64>, vector<9xi64>
      %282 = vector.flat_transpose %45 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
      linalg.yield %c756762520_i64 : i64
    } -> tensor<12x5x12xi64>
    %92 = scf.execute_region -> f16 {
      %248 = math.atan2 %11, %16 : tensor<11xf32>
      %249 = tensor.empty() : tensor<11xf32>
      %mapped_59 = linalg.map ins(%11, %11, %alloc_19 : tensor<11xf32>, tensor<11xf32>, memref<11xf32>) outs(%249 : tensor<11xf32>)
        (%in: f32, %in_60: f32, %in_61: f32) {
          %c1948484894_i32 = arith.constant 1948484894 : i32
          %263 = index.maxu %c14, %c2
          %264 = vector.shuffle %77, %77 [0, 7, 8, 9, 12, 14, 18, 22] : vector<12x5x12xi16>, vector<12x5x12xi16>
          %265 = affine.load %alloc_18[%c2] : memref<11xi64>
          %266 = index.maxu %c6, %52
          %267 = vector.shuffle %60, %60 [0, 1, 2, 11, 12, 14, 16, 17, 18, 20, 21] : vector<11xf16>, vector<11xf16>
          %268 = arith.maxui %c1497132425_i64, %c756762520_i64 : i64
          %269 = math.ipowi %8, %8 : tensor<11x5xi32>
          %270 = arith.ceildivsi %c756762520_i64, %c1497132425_i64 : i64
          %271 = affine.load %alloc_23[%c11] : memref<12xf16>
          %272 = math.atan %cst : f32
          %273 = vector.bitcast %45 : vector<11xi16> to vector<11xi16>
          %274 = math.log2 %6 : tensor<11x5xf32>
          %275 = arith.subi %true, %true_29 : i1
          %276 = affine.max affine_map<(d0) -> (-16, d0 ceildiv 32 + d0 - (d0 - 128), -16, -(d0 - 128))>(%c1)
          %277 = arith.remui %true_29, %true_29 : i1
          %278 = arith.remf %cst_1, %in_60 : f32
          %279 = math.round %1 : tensor<12x5x12xf16>
          %280 = vector.broadcast %c262551551_i32 : i32 to vector<12xi32>
          %281 = vector.maskedload %alloc_7[%c1], %87, %280 : memref<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
          %alloc_62 = memref.alloc() : memref<12x5x12xf32>
          %282 = vector.extract_strided_slice %77 {offsets = [9, 3], sizes = [3, 1], strides = [1, 1]} : vector<12x5x12xi16> to vector<3x1x12xi16>
          %283 = arith.mulf %in_61, %cst_1 : f32
          %284 = vector.gather %40[%c15] [%281], %87, %280 : tensor<12xi32>, vector<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
          %285 = vector.bitcast %281 : vector<12xi32> to vector<12xi32>
          %286 = arith.floordivsi %c945560081_i32, %c1433010774_i32 : i32
          %287 = memref.load %alloc_5[%c5, %c0] : memref<11x5xi64>
          %288 = arith.remf %in_60, %cst_1 : f32
          %289 = arith.remf %in_60, %cst : f32
          %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %63, %60, %cst_2 : vector<11xf16>, vector<11xf16> into f16
          %291 = math.log2 %cst_1 : f32
          %292 = arith.subi %c1497132425_i64, %c1008141412_i64 : i64
          %293 = index.add %c7, %263
          %cst_63 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_63 : f32
        }
      %250 = vector.shuffle %70, %70 [0, 2, 8, 9, 10, 11, 12, 13, 14, 16, 21] : vector<11xi16>, vector<11xi16>
      %251 = bufferization.to_tensor %alloc_10 : memref<12x5x12xf16>
      %252 = arith.remui %c945560081_i32, %c1433010774_i32 : i32
      %253 = affine.min affine_map<(d0, d1, d2) -> (d0, d1 * 2 - 8, 0)>(%c4, %c7, %c8)
      %254 = vector.load %alloc_23[%c10] : memref<12xf16>, vector<11x5xf16>
      memref.copy %alloc_8, %alloc_7 : memref<12xi32> to memref<12xi32>
      %c1486500439_i64 = arith.constant 1486500439 : i64
      %255 = vector.broadcast %c1683208616_i64 : i64 to vector<12xi64>
      %256 = vector.broadcast %c1433010774_i32 : i32 to vector<12xi32>
      %257 = vector.gather %alloc_4[%52] [%256], %87, %255 : memref<12xi64>, vector<12xi32>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      %258 = math.absf %22 : tensor<f32>
      %259 = math.cttz %c26368_i16 : i16
      %260 = arith.shrui %c1008141412_i64, %c1497132425_i64 : i64
      %261 = math.rsqrt %22 : tensor<f32>
      %262 = math.cttz %c10649_i16 : i16
      bufferization.dealloc_tensor %15 : tensor<12xi64>
      scf.yield %cst_2 : f16
    }
    memref.copy %alloc_8, %alloc_7 : memref<12xi32> to memref<12xi32>
    %93 = arith.remf %cst_2, %92 : f16
    %94 = vector.transpose %63, [0] : vector<11xf16> to vector<11xf16>
    %95 = math.absi %c1008141412_i64 : i64
    %96 = arith.addf %92, %92 : f16
    %97 = arith.remf %cst_2, %cst_2 : f16
    %98 = arith.ceildivsi %c10649_i16, %c26368_i16 : i16
    %99 = math.ctlz %13 : tensor<11x5xi16>
    %100 = arith.divui %c26368_i16, %c10649_i16 : i16
    %collapsed_31 = tensor.collapse_shape %6 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
    %101 = arith.subi %c1497132425_i64, %c1497132425_i64 : i64
    %splat_32 = tensor.splat %c1211232998_i32 : tensor<11x5xi32>
    %102 = arith.minf %cst_2, %cst_2 : f16
    %103 = affine.min affine_map<(d0) -> (-(d0 floordiv 16))>(%c11)
    %104 = bufferization.clone %alloc_14 : memref<12x5x12xi64> to memref<12x5x12xi64>
    %105 = vector.reduction <or>, %87 : vector<12xi1> into i1
    %106 = math.powf %cst_1, %cst : f32
    %alloc_33 = memref.alloc() : memref<12xi1>
    %alloc_34 = memref.alloc() : memref<11xi16>
    %107 = index.maxs %c7, %c1
    memref.alloca_scope  {
      %248 = index.ceildivu %c2, %c13
      %249 = index.mul %c12, %c5
      %250 = arith.maxui %c1497132425_i64, %c1497132425_i64 : i64
      %251 = arith.divui %c26368_i16, %c10649_i16 : i16
      bufferization.dealloc_tensor %5 : tensor<12xi16>
      %252 = vector.broadcast %cst_1 : f32 to vector<12x5x12xf32>
      %253 = vector.fma %252, %252, %252 : vector<12x5x12xf32>
      %254 = affine.for %arg2 = 0 to 122 iter_args(%arg3 = %77) -> (vector<12x5x12xi16>) {
        affine.yield %77 : vector<12x5x12xi16>
      }
      %255 = arith.remui %c1433010774_i32, %c1433010774_i32 : i32
      %alloc_59 = memref.alloc() : memref<5x9xi16>
      %256 = tensor.empty() : tensor<11x9xi16>
      %257 = linalg.matmul ins(%13, %alloc_59 : tensor<11x5xi16>, memref<5x9xi16>) outs(%256 : tensor<11x9xi16>) -> tensor<11x9xi16>
      %258 = math.tan %1 : tensor<12x5x12xf16>
      %259 = arith.andi %c262551551_i32, %c945560081_i32 : i32
      %260 = math.absf %11 : tensor<11xf32>
      %261 = index.maxu %103, %c15
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1, d0 * -32, d0 - 8, d1)>(%c9, %53, %249, %103)
      %263 = vector.broadcast %cst_2 : f16 to vector<12xf16>
      %264 = math.absi %8 : tensor<11x5xi32>
      %265 = index.add %c10, %52
      %266 = memref.load %alloc_15[%c7] : memref<11xi16>
      %267 = arith.remf %cst, %cst_1 : f32
      %268 = arith.minui %c756762520_i64, %c1008141412_i64 : i64
      %269 = math.absf %cst : f32
      %270 = math.atan %6 : tensor<11x5xf32>
      %271 = arith.divui %c475380494_i32, %c1433010774_i32 : i32
      %272 = arith.shli %true_0, %true : i1
      %273 = arith.remui %c1497132425_i64, %c1683208616_i64 : i64
      %274 = arith.shli %c262551551_i32, %c1433010774_i32 : i32
      %275 = arith.negf %cst_1 : f32
      %276 = index.maxs %68, %86
      %277 = arith.remf %cst, %cst_1 : f32
      %278 = math.fma %17, %16, %11 : tensor<11xf32>
      %alloc_60 = memref.alloc() : memref<9x5xi16>
      %279 = tensor.empty() : tensor<11x5xi16>
      %280 = linalg.matmul ins(%256, %alloc_60 : tensor<11x9xi16>, memref<9x5xi16>) outs(%279 : tensor<11x5xi16>) -> tensor<11x5xi16>
      %281 = math.absf %9 : tensor<12xf16>
    }
    %108 = affine.load %alloc_19[%c0] : memref<11xf32>
    %109 = vector.broadcast %true_29 : i1 to vector<5xi1>
    %dest_35, %accumulated_value_36 = vector.scan <xor>, %56, %109 {inclusive = true, reduction_dim = 0 : i64} : vector<11x5xi1>, vector<5xi1>
    %110 = tensor.empty() : tensor<12x5x12xi64>
    %mapped = linalg.map ins(%104, %104, %alloc_14 : memref<12x5x12xi64>, memref<12x5x12xi64>, memref<12x5x12xi64>) outs(%110 : tensor<12x5x12xi64>)
      (%in: i64, %in_59: i64, %in_60: i64) {
        %248 = math.cttz %13 : tensor<11x5xi16>
        %alloc_61 = memref.alloc() : memref<12xf16>
        memref.copy %alloc_23, %alloc_61 : memref<12xf16> to memref<12xf16>
        %249 = vector.extract_strided_slice %45 {offsets = [9], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
        %from_elements_62 = tensor.from_elements %cst_1, %cst_1, %cst_1, %108, %108, %108, %108, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<12xf32>
        %250 = index.ceildivs %c1, %c3
        scf.if %true {
          %272 = math.atan2 %cst_2, %92 : f16
          %273 = vector.broadcast %c945560081_i32 : i32 to vector<5xi32>
          %dest_65, %accumulated_value_66 = vector.scan <xor>, %57, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<11x5xi32>, vector<5xi32>
          %274 = arith.cmpi sge, %c1008141412_i64, %c1008141412_i64 : i64
          %275 = math.ctpop %c756762520_i64 : i64
          %276 = vector.extract_strided_slice %83 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
          %true_67 = arith.constant true
          %277 = math.absi %true_29 : i1
          %278 = math.exp2 %2 : tensor<11x5xf32>
        }
        %generated = tensor.generate %c3 {
        ^bb0(%arg2: index):
          %272 = vector.gather %from_elements[%c2] [%62], %61, %60 : tensor<11xf16>, vector<11xi32>, vector<11xi1>, vector<11xf16> into vector<11xf16>
          %273 = vector.splat %53 : vector<12xindex>
          %274 = vector.broadcast %c10649_i16 : i16 to vector<12x12xi16>
          %dest_65, %accumulated_value_66 = vector.scan <mul>, %77, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<12x5x12xi16>, vector<12x12xi16>
          %275 = memref.load %alloc_22[%c10] : memref<12xi1>
          tensor.yield %92 : f16
        } : tensor<?xf16>
        memref.tensor_store %11, %alloc_19 : memref<11xf32>
        bufferization.dealloc_tensor %54 : tensor<11x12xi16>
        %251 = vector.matrix_multiply %63, %83 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 1 : i32} : (vector<11xf16>, vector<1xf16>) -> vector<11xf16>
        %252 = affine.for %arg2 = 0 to 124 iter_args(%arg3 = %3) -> (tensor<12xi64>) {
          affine.yield %arg3 : tensor<12xi64>
        }
        %expanded_63 = tensor.expand_shape %20 [[0, 1]] : tensor<11xf32> into tensor<11x1xf32>
        %253 = memref.realloc %alloc_3 : memref<11xi1> to memref<11xi1>
        %254 = arith.remsi %c1211232998_i32, %c945560081_i32 : i32
        vector.print %61 : vector<11xi1>
        %255 = math.absf %10 : tensor<12xf32>
        %256 = arith.minui %c1497132425_i64, %c1683208616_i64 : i64
        %257 = tensor.empty() : tensor<12x5xf16>
        %258 = tensor.empty() : tensor<60x5xf16>
        %259 = linalg.matmul ins(%collapsed, %257 : tensor<60x12xf16>, tensor<12x5xf16>) outs(%258 : tensor<60x5xf16>) -> tensor<60x5xf16>
        %260 = tensor.empty() : tensor<11x5xi1>
        %261 = arith.remf %108, %cst_1 : f32
        %262 = index.mul %c6, %c6
        %263 = arith.subi %c475380494_i32, %c475380494_i32 : i32
        %264 = math.round %4 : tensor<11xf16>
        %265 = vector.extract_strided_slice %57 {offsets = [8], sizes = [1], strides = [1]} : vector<11x5xi32> to vector<1x5xi32>
        %266 = index.add %c8, %c15
        %267 = math.powf %11, %11 : tensor<11xf32>
        %268 = math.atan2 %0, %0 : tensor<12x5x12xf16>
        %269 = arith.maxf %cst_2, %cst_2 : f16
        %270 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2 + 76, d3 * 2, d1 mod 4, (d1 mod 4) * 2 - 4)>(%103, %c11, %250, %107)
        bufferization.dealloc_tensor %2 : tensor<11x5xf32>
        %271 = math.round %cst : f32
        memref.assume_alignment %alloc_16, 2 : memref<11xi1>
        %c0_i64_64 = arith.constant 0 : i64
        linalg.yield %c0_i64_64 : i64
      }
    %111 = arith.shrui %c475380494_i32, %c262551551_i32 : i32
    %112 = index.mul %68, %c8
    %113 = tensor.empty() : tensor<11x5xi64>
    %mapped_37 = linalg.map ins(%alloc_13, %alloc_13 : memref<11x5xi64>, memref<11x5xi64>) outs(%113 : tensor<11x5xi64>)
      (%in: i64, %in_59: i64) {
        %248 = vector.reduction <and>, %87 : vector<12xi1> into i1
        %249 = math.absi %c1008141412_i64 : i64
        %250 = vector.broadcast %c10649_i16 : i16 to vector<9xi16>
        %251 = vector.broadcast %true : i1 to vector<9xi1>
        %252 = vector.maskedload %alloc_17[%c1], %251, %250 : memref<11xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %253 = arith.maxui %true_29, %true_29 : i1
        %254 = arith.shli %c26368_i16, %c10649_i16 : i16
        %alloc_60 = memref.alloc() : memref<f32>
        memref.tensor_store %21, %alloc_60 : memref<f32>
        %255 = affine.load %alloc_5[%c11, %c5] : memref<11x5xi64>
        %256 = vector.insert %c26368_i16, %70 [0] : i16 into vector<11xi16>
        %257 = math.ctlz %splat : tensor<11x5xi16>
        %258 = arith.maxui %c10649_i16, %c10649_i16 : i16
        %259 = vector.reduction <or>, %61 : vector<11xi1> into i1
        %260 = arith.negf %108 : f32
        %splat_61 = tensor.splat %c26368_i16 : tensor<12x5x12xi16>
        %261 = memref.atomic_rmw assign %cst_2, %alloc_23[%c1] : (f16, memref<12xf16>) -> f16
        %262 = arith.divui %c475380494_i32, %c262551551_i32 : i32
        memref.store %true, %alloc_16[%c3] : memref<11xi1>
        %263 = vector.splat %cst : vector<12x5x12xf32>
        %264 = index.casts %107 : index to i32
        %265 = arith.maxui %c10649_i16, %c26368_i16 : i16
        %266 = arith.shrsi %true, %true_29 : i1
        %267 = math.ctpop %c26368_i16 : i16
        memref.assume_alignment %alloc_8, 4 : memref<12xi32>
        %268 = arith.cmpf true, %92, %cst_2 : f16
        memref.store %108, %alloc_19[%c10] : memref<11xf32>
        affine.for %arg2 = 0 to 107 {
        }
        %269 = vector.broadcast %108 : f32 to vector<12x5x12xf32>
        %270 = vector.broadcast %true_29 : i1 to vector<12x5x12xi1>
        %271 = vector.broadcast %c945560081_i32 : i32 to vector<12x5x12xi32>
        %272 = vector.gather %alloc_19[%c9] [%271], %270, %269 : memref<11xf32>, vector<12x5x12xi32>, vector<12x5x12xi1>, vector<12x5x12xf32> into vector<12x5x12xf32>
        %273 = index.floordivs %c0, %c1
        %274 = tensor.empty() : tensor<11x5xi1>
        %false_62 = index.bool.constant false
        %275 = index.sizeof
        %alloc_63 = memref.alloc() : memref<5x9xi16>
        %276 = tensor.empty() : tensor<11x9xi16>
        %277 = linalg.matmul ins(%splat, %alloc_63 : tensor<11x5xi16>, memref<5x9xi16>) outs(%276 : tensor<11x9xi16>) -> tensor<11x9xi16>
        %278 = math.absi %54 : tensor<11x12xi16>
        %c0_i64_64 = arith.constant 0 : i64
        linalg.yield %c0_i64_64 : i64
      }
    %114 = arith.mulf %cst_1, %108 : f32
    scf.index_switch %c3 
    case 1 {
      %248 = math.expm1 %1 : tensor<12x5x12xf16>
      %249 = arith.negf %cst_1 : f32
      %250 = index.divu %107, %c8
      %251 = arith.andi %c1008141412_i64, %c756762520_i64 : i64
      %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %28, %27, %108 : vector<11xf32>, vector<11xf32> into f32
      %253 = vector.broadcast %true : i1 to vector<12x12xi1>
      %254 = vector.outerproduct %87, %87, %253 {kind = #vector.kind<xor>} : vector<12xi1>, vector<12xi1>
      %255 = arith.minf %92, %cst_2 : f16
      %256 = index.divu %c9, %52
      %257 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + d3)>(%c2, %c14, %c7, %256)
      %258 = index.add %c2, %103
      %expanded_59 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<11x5xi16> into tensor<11x5x1xi16>
      memref.copy %alloc_14, %104 : memref<12x5x12xi64> to memref<12x5x12xi64>
      %alloc_60 = memref.alloc() : memref<12x9xi16>
      %259 = tensor.empty() : tensor<11x9xi16>
      %260 = linalg.matmul ins(%54, %alloc_60 : tensor<11x12xi16>, memref<12x9xi16>) outs(%259 : tensor<11x9xi16>) -> tensor<11x9xi16>
      %261 = math.ctlz %c945560081_i32 : i32
      %262 = arith.divui %true_0, %true : i1
      %263 = bufferization.to_tensor %alloc_7 : memref<12xi32>
      scf.yield
    }
    case 2 {
      %248 = arith.subi %true, %true_29 : i1
      %249 = math.ctpop %true_0 : i1
      %splat_59 = tensor.splat %c26368_i16 : tensor<11xi16>
      %250 = tensor.empty() : tensor<12x5xi16>
      %251 = tensor.empty() : tensor<11x5xi16>
      %252 = linalg.matmul ins(%54, %250 : tensor<11x12xi16>, tensor<12x5xi16>) outs(%251 : tensor<11x5xi16>) -> tensor<11x5xi16>
      %253 = index.maxs %c5, %c5
      %c1_i64_60 = arith.constant 1 : i64
      %c0_i64_61 = arith.constant 0 : i64
      %254 = vector.transfer_read %15[%c10], %c0_i64_61 : tensor<12xi64>, vector<i64>
      %255 = arith.minf %cst_1, %108 : f32
      %256 = arith.ceildivsi %c1008141412_i64, %c1008141412_i64 : i64
      %257 = arith.negf %cst : f32
      %258 = vector.broadcast %c1211232998_i32 : i32 to vector<12xi32>
      %259 = vector.gather %40[%c0] [%258], %87, %258 : tensor<12xi32>, vector<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %260 = arith.cmpf oeq, %108, %cst : f32
      bufferization.dealloc_tensor %16 : tensor<11xf32>
      %261 = vector.broadcast %true : i1 to vector<5xi1>
      %262 = vector.insert %261, %58 [10] : vector<5xi1> into vector<11x5xi1>
      %263 = tensor.empty() : tensor<12xi64>
      %mapped_62 = linalg.map ins(%15, %15, %3 : tensor<12xi64>, tensor<12xi64>, tensor<12xi64>) outs(%263 : tensor<12xi64>)
        (%in: i64, %in_64: i64, %in_65: i64) {
          %from_elements_66 = tensor.from_elements %in_64, %c1497132425_i64, %c756762520_i64, %c1683208616_i64, %c1683208616_i64, %c1497132425_i64, %c1683208616_i64, %c1497132425_i64, %c1008141412_i64, %c1683208616_i64, %c756762520_i64, %in_64, %c756762520_i64, %in_64, %in_64, %c1_i64_60, %c1008141412_i64, %in_64, %in, %in, %c1008141412_i64, %in_64, %c1497132425_i64, %c1008141412_i64, %in_65, %in_64, %c1008141412_i64, %in, %c1683208616_i64, %in, %c1683208616_i64, %c1497132425_i64, %in_64, %c1008141412_i64, %c1497132425_i64, %in, %in_64, %c756762520_i64, %c1683208616_i64, %c756762520_i64, %c1008141412_i64, %c1_i64_60, %in, %c1497132425_i64, %in_64, %c1683208616_i64, %in_65, %in_65, %c1008141412_i64, %c1683208616_i64, %c1683208616_i64, %in_65, %in, %c756762520_i64, %in, %c1683208616_i64, %c1683208616_i64, %in, %c1008141412_i64, %c756762520_i64, %c1_i64_60, %c1008141412_i64, %c756762520_i64, %c1683208616_i64, %in, %c1497132425_i64, %in_65, %c1008141412_i64, %c1497132425_i64, %in, %in_65, %in_65, %c1008141412_i64, %c1683208616_i64, %c1683208616_i64, %in_64, %c1008141412_i64, %in, %c1683208616_i64, %c756762520_i64, %in_65, %c756762520_i64, %c756762520_i64, %c1_i64_60, %c1497132425_i64, %c1497132425_i64, %c1683208616_i64, %c1008141412_i64, %in, %c1683208616_i64, %c1683208616_i64, %c756762520_i64, %c1008141412_i64, %c1008141412_i64, %in_65, %in_65, %in, %in_64, %in_64, %c756762520_i64, %c1_i64_60, %in_65, %c1008141412_i64, %in_64, %c1497132425_i64, %c1497132425_i64, %c1683208616_i64, %c756762520_i64, %c756762520_i64, %in, %c1497132425_i64, %c1497132425_i64, %in_64, %in, %c756762520_i64, %c1_i64_60, %c756762520_i64, %in_65, %in, %c1683208616_i64, %c1497132425_i64, %c756762520_i64, %in_64, %c1008141412_i64, %c1497132425_i64, %c1008141412_i64, %in, %in_65, %c1008141412_i64, %c756762520_i64, %c1_i64_60, %c1008141412_i64, %c756762520_i64, %c756762520_i64, %c1497132425_i64, %in, %c756762520_i64, %c1_i64_60, %c1008141412_i64, %c1497132425_i64, %in_65, %c1_i64_60, %in_64, %c756762520_i64, %c756762520_i64, %c1_i64_60, %c1497132425_i64, %c1_i64_60, %c756762520_i64, %c1497132425_i64, %c1683208616_i64, %c1008141412_i64, %in, %in, %in_65, %c1683208616_i64, %c756762520_i64, %c1_i64_60, %c1683208616_i64, %c1497132425_i64, %c1497132425_i64, %c1_i64_60, %c1_i64_60, %c1008141412_i64, %in_65, %c1497132425_i64, %c756762520_i64, %c1497132425_i64, %c1683208616_i64, %in_64, %c1_i64_60, %c756762520_i64, %c756762520_i64, %in, %c1683208616_i64, %c1683208616_i64, %c1008141412_i64, %c1_i64_60, %c1497132425_i64, %in_64, %c1008141412_i64, %c1_i64_60, %c1008141412_i64, %c1008141412_i64, %c1683208616_i64, %c1497132425_i64, %c1683208616_i64, %in, %c1497132425_i64, %c1008141412_i64, %c1497132425_i64, %c1497132425_i64, %in, %c1008141412_i64, %c1_i64_60, %in_65, %c1497132425_i64, %c1008141412_i64, %c1497132425_i64, %c756762520_i64, %in_64, %c1683208616_i64, %c1_i64_60, %in_64, %c1683208616_i64, %c1008141412_i64, %in_65, %in_65, %c1497132425_i64, %c1_i64_60, %c1683208616_i64, %c1_i64_60, %in_65, %in_64, %c1_i64_60, %c1_i64_60, %c1008141412_i64, %c1_i64_60, %c756762520_i64, %c1_i64_60, %in, %c756762520_i64, %c1008141412_i64, %c1008141412_i64, %c1008141412_i64, %c1497132425_i64, %c1008141412_i64, %c756762520_i64, %in, %c1008141412_i64, %c1497132425_i64, %in, %in_64, %c1008141412_i64, %in, %in, %in_64, %c1497132425_i64, %in_65, %c1683208616_i64, %c1008141412_i64, %c1497132425_i64, %c1008141412_i64, %in_65, %c1008141412_i64, %c756762520_i64, %c1497132425_i64, %in_64, %c756762520_i64, %in_65, %c1497132425_i64, %c1008141412_i64, %c1683208616_i64, %in_65, %in, %c1_i64_60, %in_65, %in, %in_65, %c756762520_i64, %in_64, %in, %c1008141412_i64, %in, %in, %c1683208616_i64, %c756762520_i64, %c1_i64_60, %c1497132425_i64, %in_65, %in_65, %in_64, %c756762520_i64, %c756762520_i64, %c1497132425_i64, %c1683208616_i64, %in_64, %in, %in, %in, %c1497132425_i64, %c756762520_i64, %in_64, %in_65, %c1008141412_i64, %in, %c1683208616_i64, %c756762520_i64, %in_65, %in_64, %in, %in_64, %c1683208616_i64, %in_64, %in_64, %c1_i64_60, %in, %c756762520_i64, %in, %c1683208616_i64, %in_65, %c1008141412_i64, %c1_i64_60, %c756762520_i64, %in_64, %c1683208616_i64, %c1008141412_i64, %c1497132425_i64, %in, %in_64, %c1683208616_i64, %c1683208616_i64, %c1008141412_i64, %c1_i64_60, %in, %in_65, %c1497132425_i64, %c1497132425_i64, %in, %c1497132425_i64, %c1008141412_i64, %c1497132425_i64, %in, %c1008141412_i64, %c1497132425_i64, %in_65, %c1_i64_60, %c1_i64_60, %in_65, %in_64, %c756762520_i64, %c756762520_i64, %c1497132425_i64, %in_65, %c1_i64_60, %c1008141412_i64, %c1_i64_60, %c1683208616_i64, %c1_i64_60, %in, %in_65, %c1497132425_i64, %in_65, %c1683208616_i64, %in, %c1683208616_i64, %c1497132425_i64, %c756762520_i64, %in_65, %c1497132425_i64, %c1497132425_i64, %c1683208616_i64, %in_64, %in_65, %in, %in_65, %c756762520_i64, %c756762520_i64, %c1_i64_60, %in_65, %in_64, %c756762520_i64, %in_65, %c756762520_i64, %c1683208616_i64, %c1_i64_60, %c1_i64_60, %c756762520_i64, %in_65, %in, %in, %c1008141412_i64, %c1_i64_60, %in_65, %c1497132425_i64, %c1683208616_i64, %c756762520_i64, %in_65, %in_65, %c1497132425_i64, %c1008141412_i64, %in_64, %in, %c1008141412_i64, %c1497132425_i64, %c1008141412_i64, %in, %c1_i64_60, %c756762520_i64, %c1683208616_i64, %c1008141412_i64, %c1008141412_i64, %c1683208616_i64, %in, %c1008141412_i64, %in, %c1683208616_i64, %c1683208616_i64, %c1_i64_60, %in, %in_64, %c1683208616_i64, %in_64, %in, %c1_i64_60, %c1008141412_i64, %in_65, %c1683208616_i64, %in_64, %in, %in_64, %in, %in_65, %c1008141412_i64, %in_65, %c1497132425_i64, %c756762520_i64, %c756762520_i64, %c1_i64_60, %in_65, %c1497132425_i64, %in_65, %in_65, %c1683208616_i64, %c1683208616_i64, %in_65, %c1_i64_60, %c1_i64_60, %in_65, %in_65, %c1497132425_i64, %in, %c1_i64_60, %c756762520_i64, %in_64, %c756762520_i64, %c1683208616_i64, %c1497132425_i64, %c1_i64_60, %c1008141412_i64, %in, %c1683208616_i64, %in_65, %in_64, %in_65, %in_64, %in_65, %c756762520_i64, %c1008141412_i64, %in, %c1_i64_60, %c756762520_i64, %c1497132425_i64, %c1683208616_i64, %in, %in_64, %c1497132425_i64, %in_64, %c756762520_i64, %in_65, %c1683208616_i64, %c756762520_i64, %c756762520_i64, %in_65, %in_64, %in, %c1683208616_i64, %c1683208616_i64, %c1497132425_i64, %c1008141412_i64, %in, %c1008141412_i64, %c1008141412_i64, %in, %in, %in, %c1008141412_i64, %c1_i64_60, %c1683208616_i64, %c1497132425_i64, %c1497132425_i64, %in, %in, %c756762520_i64, %in_65, %c1_i64_60, %c1_i64_60, %c1008141412_i64, %in_65, %c1008141412_i64, %in, %in_65, %c1497132425_i64, %c1_i64_60, %c1497132425_i64, %in, %c1683208616_i64, %in, %c1683208616_i64, %in_64, %c1008141412_i64, %c1497132425_i64, %c1008141412_i64, %in, %c1_i64_60, %c1497132425_i64, %c756762520_i64, %c1008141412_i64, %c1683208616_i64, %in, %c1_i64_60, %in, %in_64, %c1497132425_i64, %c1008141412_i64, %in, %c1683208616_i64, %c1_i64_60, %c1008141412_i64, %c1497132425_i64, %c1008141412_i64, %c1497132425_i64, %c1497132425_i64, %in, %c1683208616_i64, %c1497132425_i64, %in_64, %c1497132425_i64, %c756762520_i64, %in_64, %c1497132425_i64, %c1497132425_i64, %c1683208616_i64, %c1008141412_i64, %in_65, %c1_i64_60, %c1_i64_60, %in_64, %c1497132425_i64, %c756762520_i64, %in_65, %c1_i64_60, %c1497132425_i64, %c1008141412_i64, %in, %in, %in, %c1008141412_i64, %c1683208616_i64, %in_64, %c1497132425_i64, %in, %c1497132425_i64, %c756762520_i64, %in_65, %in, %in_64, %c1_i64_60, %in_64, %c756762520_i64, %c1497132425_i64, %c1008141412_i64, %in, %in_65, %c1008141412_i64, %c1_i64_60, %c756762520_i64, %in_65, %in, %c1008141412_i64, %in, %c1_i64_60, %c756762520_i64, %c1008141412_i64, %c1497132425_i64, %c1_i64_60, %c1683208616_i64, %in_65, %c1_i64_60, %c1008141412_i64, %c1_i64_60, %c1008141412_i64, %c756762520_i64, %in_65, %c1_i64_60, %in, %c1008141412_i64, %in, %c1683208616_i64, %c1_i64_60, %c1_i64_60, %in, %c1497132425_i64, %c1497132425_i64, %c1683208616_i64, %c1_i64_60, %c1683208616_i64, %in_64, %c1008141412_i64, %c1_i64_60, %c756762520_i64, %c1497132425_i64, %c1_i64_60, %c1497132425_i64, %in, %c1_i64_60, %in_64, %c756762520_i64, %in_65, %c1_i64_60, %in_64, %c1_i64_60, %c1497132425_i64, %in_64, %c756762520_i64, %c756762520_i64, %in, %in_65, %in_65, %c1008141412_i64, %in, %in_65, %c756762520_i64, %c1683208616_i64, %c1_i64_60, %in, %c756762520_i64, %c1_i64_60, %c1_i64_60, %in, %in_64, %c756762520_i64, %c756762520_i64, %in_64, %c756762520_i64, %in_64, %c1497132425_i64, %c1683208616_i64, %c1497132425_i64, %c1683208616_i64, %in_65, %in_65, %c1008141412_i64, %c1683208616_i64, %in_64, %in_64, %in_65, %c1008141412_i64, %c756762520_i64, %c1008141412_i64, %c1008141412_i64, %c756762520_i64, %in_65, %c1_i64_60, %in, %c1_i64_60, %c756762520_i64, %in_64, %in_65, %c1_i64_60, %c1008141412_i64, %c1_i64_60, %c1008141412_i64, %c1683208616_i64, %in_65, %in_64, %in_64, %c1_i64_60, %in_64, %in_64, %c1008141412_i64, %c1497132425_i64, %in_65, %c1497132425_i64, %c1497132425_i64, %in_64, %in_65, %in, %c756762520_i64, %in_64, %in_64, %c1683208616_i64, %in_64, %c1683208616_i64, %c756762520_i64, %c1497132425_i64, %in_64, %c1497132425_i64, %c1497132425_i64, %in, %in_64, %c1_i64_60, %in_64, %c1497132425_i64, %c1008141412_i64, %c756762520_i64, %in, %in, %c1_i64_60, %c1497132425_i64, %c1_i64_60, %c1008141412_i64, %c756762520_i64, %c1497132425_i64, %c1_i64_60, %c1683208616_i64, %c1008141412_i64, %c1497132425_i64, %c756762520_i64, %c756762520_i64, %c756762520_i64, %c1_i64_60, %in_65, %c1008141412_i64, %c1683208616_i64, %c1683208616_i64, %c1683208616_i64, %c1008141412_i64, %c756762520_i64, %in_65 : tensor<12x5x12xi64>
          %264 = math.ctlz %8 : tensor<11x5xi32>
          %265 = vector.maskedload %alloc_16[%c1], %61, %61 : memref<11xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
          %266 = vector.insertelement %in_65, %43[%50 : index] : vector<1xi64>
          %267 = arith.minsi %in, %c1497132425_i64 : i64
          %268 = vector.load %alloc_6[%c2, %c4, %c3] : memref<12x5x12xf32>, vector<11x5xf32>
          %269 = index.divu %c6, %112
          %270 = math.roundeven %0 : tensor<12x5x12xf16>
          %271 = index.maxu %c15, %c3
          %272 = math.cttz %5 : tensor<12xi16>
          memref.tensor_store %11, %alloc_19 : memref<11xf32>
          memref.copy %alloc_15, %alloc_17 : memref<11xi16> to memref<11xi16>
          %273 = arith.shrsi %c1683208616_i64, %c1683208616_i64 : i64
          %274 = arith.remui %c1683208616_i64, %in_64 : i64
          %275 = math.absf %cst : f32
          %276 = arith.divui %in, %in_65 : i64
          %277 = arith.subi %c756762520_i64, %c1008141412_i64 : i64
          %278 = math.log2 %1 : tensor<12x5x12xf16>
          %279 = vector.extract_strided_slice %77 {offsets = [4], sizes = [8], strides = [1]} : vector<12x5x12xi16> to vector<8x5x12xi16>
          memref.assume_alignment %alloc_9, 8 : memref<11xi1>
          affine.store %c10649_i16, %alloc_17[%c13] : memref<11xi16>
          %280 = math.powf %11, %11 : tensor<11xf32>
          %281 = math.ceil %cst : f32
          %282 = affine.load %alloc_18[%c9] : memref<11xi64>
          %alloc_67 = memref.alloc() : memref<11xf32>
          memref.copy %alloc_19, %alloc_67 : memref<11xf32> to memref<11xf32>
          %283 = vector.load %alloc_16[%c0] : memref<11xi1>, vector<12xi1>
          %284 = math.round %from_elements : tensor<11xf16>
          %285 = math.powf %cst, %cst : f32
          %286 = index.floordivs %c13, %86
          %287 = arith.subi %in, %282 : i64
          %288 = math.round %9 : tensor<12xf16>
          %289 = math.rsqrt %22 : tensor<f32>
          %c1_i64_68 = arith.constant 1 : i64
          linalg.yield %c1_i64_68 : i64
        }
      %alloc_63 = memref.alloc() : memref<11x5xf32>
      memref.tensor_store %7, %alloc_63 : memref<11x5xf32>
      affine.store %cst_2, %alloc_23[%c10] : memref<12xf16>
      scf.yield
    }
    default {
      %248 = math.ctpop %14 : tensor<11xi64>
      %249 = index.add %86, %103
      %250 = arith.andi %c756762520_i64, %c1683208616_i64 : i64
      %251 = math.log1p %collapsed : tensor<60x12xf16>
      %252 = index.add %c11, %50
      %253 = arith.minsi %c1211232998_i32, %c262551551_i32 : i32
      bufferization.dealloc_tensor %10 : tensor<12xf32>
      %254 = arith.minsi %c1433010774_i32, %c1433010774_i32 : i32
      %255 = arith.addf %cst_1, %cst : f32
      %256 = arith.minf %cst_2, %92 : f16
      bufferization.dealloc_tensor %splat_32 : tensor<11x5xi32>
      %257 = arith.remui %c1497132425_i64, %c1008141412_i64 : i64
      %c1_i64_59 = arith.constant 1 : i64
      %c0_i64_60 = arith.constant 0 : i64
      %258 = vector.transfer_read %24[%86, %252, %c10], %c0_i64_60 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<12x5x12xi64>, vector<11x12xi64>
      %259 = vector.broadcast %cst : f32 to vector<11xf32>
      %260 = vector.fma %259, %259, %259 : vector<11xf32>
      %261 = math.powf %7, %6 : tensor<11x5xf32>
      %262 = scf.while (%arg2 = %c262551551_i32) : (i32) -> i32 {
        memref.copy %alloc_16, %alloc_9 : memref<11xi1> to memref<11xi1>
        %263 = arith.minf %cst_2, %92 : f16
        %264 = arith.shrsi %true_29, %true_29 : i1
        memref.tensor_store %9, %alloc_23 : memref<12xf16>
        %265 = math.absf %cst : f32
        %266 = arith.divui %true, %true_0 : i1
        %267 = index.maxs %112, %c5
        %268 = math.rsqrt %22 : tensor<f32>
        scf.condition(%true_0) %c262551551_i32 : i32
      } do {
      ^bb0(%arg2: i32):
        %263 = math.absi %true : i1
        %264 = math.absi %5 : tensor<12xi16>
        %265 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 64) ceildiv 128, -(d0 ceildiv 64 + 128))>(%c11, %86)
        affine.store %c1211232998_i32, %alloc[%c10, %c2] : memref<11x5xi32>
        %266 = vector.bitcast %19 : vector<9xi64> to vector<9xi64>
        %267 = arith.minf %cst_1, %108 : f32
        %268 = arith.floordivsi %c475380494_i32, %c1433010774_i32 : i32
        %269 = affine.max affine_map<(d0, d1, d2) -> (d2 - d1 - 2, (d2 - d1 - 2) * -64, -d2 + 1, -(d2 - d1 - 2))>(%c5, %c15, %c6)
        %270 = vector.broadcast %c1497132425_i64 : i64 to vector<1x1xi64>
        %271 = vector.outerproduct %43, %43, %270 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
        %272 = vector.broadcast %107 : index to vector<5xindex>
        %273 = vector.broadcast %true_0 : i1 to vector<5xi1>
        %274 = vector.broadcast %c10649_i16 : i16 to vector<5xi16>
        vector.scatter %alloc_12[%c4, %c0, %c5] [%272], %273, %274 : memref<12x5x12xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %275 = math.exp %7 : tensor<11x5xf32>
        bufferization.dealloc_tensor %5 : tensor<12xi16>
        %276 = vector.insertelement %c1_i64_59, %19[%c1 : index] : vector<9xi64>
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d1 - (d1 + d2 floordiv 64))>(%c4, %c12, %68)
        %278 = arith.remf %108, %cst : f32
        %279 = arith.maxsi %c1433010774_i32, %c475380494_i32 : i32
        scf.yield %c262551551_i32 : i32
      }
    }
    %115 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d1, d0 + d3 + d0 - (d0 + d3), d0 - 16)>(%c13, %50, %103, %c15)
    %116 = vector.transpose %83, [0] : vector<1xf16> to vector<1xf16>
    %117 = vector.broadcast %c1683208616_i64 : i64 to vector<11x5xi64>
    %118 = vector.gather %3[%c5] [%57], %58, %117 : tensor<12xi64>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi64> into vector<11x5xi64>
    %119 = tensor.empty() : tensor<11x5xf32>
    %mapped_38 = linalg.map ins(%2, %7 : tensor<11x5xf32>, tensor<11x5xf32>) outs(%119 : tensor<11x5xf32>)
      (%in: f32, %in_59: f32) {
        %248 = vector.broadcast %true_0 : i1 to vector<i1>
        vector.transfer_write %248, %alloc_3[%c10] : vector<i1>, memref<11xi1>
        %249 = vector.broadcast %cst : f32 to vector<11x5xf32>
        %250 = vector.gather %17[%53] [%57], %56, %249 : tensor<11xf32>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xf32> into vector<11x5xf32>
        %251 = memref.load %alloc_22[%c2] : memref<12xi1>
        %252 = vector.reduction <maxui>, %70 : vector<11xi16> into i16
        %alloca = memref.alloca() : memref<11xf16>
        %253 = math.ctpop %splat_32 : tensor<11x5xi32>
        %254 = math.absf %119 : tensor<11x5xf32>
        %255 = tensor.empty() : tensor<12x5x12xi16>
        memref.store %c262551551_i32, %alloc_7[%c0] : memref<12xi32>
        %256 = vector.insertelement %c26368_i16, %70[%86 : index] : vector<11xi16>
        %257 = arith.subi %true_0, %true : i1
        %258 = index.divs %50, %c13
        %259 = math.round %4 : tensor<11xf16>
        %expanded_60 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<12x5x12xf16> into tensor<12x5x12x1xf16>
        %260 = arith.negf %108 : f32
        %261 = arith.minsi %c26368_i16, %c10649_i16 : i16
        %262 = vector.splat %c10 : vector<12xindex>
        %263 = vector.broadcast %true_0 : i1 to vector<i1>
        vector.transfer_write %263, %alloc_11[%c7] : vector<i1>, memref<11xi1>
        %264 = tensor.empty() : tensor<12xf32>
        %265 = math.copysign %1, %1 : tensor<12x5x12xf16>
        %266 = arith.remui %c1497132425_i64, %c1008141412_i64 : i64
        %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %alloc_23 : tensor<12x5x12xf16>, memref<12xf16>) outs(%0 : tensor<12x5x12xf16>) {
        ^bb0(%in_63: f16, %in_64: f16, %out: f16):
          %275 = vector.broadcast %c26368_i16 : i16 to vector<i16>
          vector.transfer_write %275, %alloc_15[%115] : vector<i16>, memref<11xi16>
          %276 = vector.broadcast %cst : f32 to vector<11xf32>
          %277 = vector.fma %276, %28, %276 : vector<11xf32>
          %278 = memref.load %alloc_23[%c9] : memref<12xf16>
          %279 = math.absi %c1008141412_i64 : i64
          %280 = math.rsqrt %cst_1 : f32
          %281 = vector.reduction <add>, %60 : vector<11xf16> into f16
          %282 = arith.maxui %c262551551_i32, %c945560081_i32 : i32
          memref.copy %alloc_14, %104 : memref<12x5x12xi64> to memref<12x5x12xi64>
          %283 = arith.remf %in_63, %in_64 : f16
          %284 = index.casts %c0 : index to i32
          %285 = vector.create_mask %c15, %c3, %c6 : vector<12x5x12xi1>
          %286 = arith.negf %in_59 : f32
          memref.store %in_59, %alloc_6[%c4, %c4, %c7] : memref<12x5x12xf32>
          %splat_65 = tensor.splat %true_0 : tensor<12x5x12xi1>
          %287 = arith.ceildivsi %true_29, %true : i1
          %288 = bufferization.clone %alloc_9 : memref<11xi1> to memref<11xi1>
          %289 = math.absi %c262551551_i32 : i32
          %290 = arith.shrsi %true_0, %true : i1
          affine.store %true_0, %288[%c0] : memref<11xi1>
          memref.store %true_0, %alloc_3[%c4] : memref<11xi1>
          %collapsed_66 = tensor.collapse_shape %6 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
          %291 = arith.shli %c1008141412_i64, %c1008141412_i64 : i64
          %292 = index.mul %258, %c15
          %293 = tensor.empty() : tensor<11xf16>
          %294 = arith.remf %92, %cst_2 : f16
          %295 = vector.insertelement %cst_2, %60[%258 : index] : vector<11xf16>
          %296 = arith.minsi %c1683208616_i64, %c756762520_i64 : i64
          %splat_67 = tensor.splat %cst : tensor<12x5x12xf32>
          %297 = vector.reduction <minf>, %276 : vector<11xf32> into f32
          %298 = math.roundeven %10 : tensor<12xf32>
          %299 = arith.shrui %c756762520_i64, %c1683208616_i64 : i64
          %300 = math.round %92 : f16
          linalg.yield %in_63 : f16
        } -> tensor<12x5x12xf16>
        %c1498499001_i32 = arith.constant 1498499001 : i32
        %268 = affine.load %alloc[%c2, %c3] : memref<11x5xi32>
        %269 = affine.load %104[%c7, %c4, %c13] : memref<12x5x12xi64>
        %270 = arith.andi %c10649_i16, %c10649_i16 : i16
        bufferization.dealloc_tensor %17 : tensor<11xf32>
        %271 = arith.minf %cst_1, %cst : f32
        %272 = affine.load %alloc_23[%c2] : memref<12xf16>
        %cst_61 = arith.constant 0x4E2357FA : f32
        %273 = math.round %collapsed : tensor<60x12xf16>
        %274 = vector.load %104[%c2, %c2, %c9] : memref<12x5x12xi64>, vector<11x5xi64>
        %cst_62 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_62 : f32
      }
    %from_elements_39 = tensor.from_elements %cst_1, %cst_1, %cst, %cst, %cst_1, %108, %108, %cst_1, %cst_1, %108, %cst_1 : tensor<11xf32>
    %120 = arith.shrsi %c475380494_i32, %c1433010774_i32 : i32
    %collapsed_40 = tensor.collapse_shape %113 [[0, 1]] : tensor<11x5xi64> into tensor<55xi64>
    %121 = affine.max affine_map<(d0) -> (d0 * -256)>(%c1)
    %122 = math.tan %0 : tensor<12x5x12xf16>
    %123 = math.cttz %15 : tensor<12xi64>
    %124 = math.round %2 : tensor<11x5xf32>
    %125 = vector.splat %107 : vector<12xindex>
    %splat_41 = tensor.splat %c1211232998_i32 : tensor<11xi32>
    %126 = arith.shli %c945560081_i32, %c1211232998_i32 : i32
    %127 = math.absf %1 : tensor<12x5x12xf16>
    %128 = arith.subi %c262551551_i32, %c1211232998_i32 : i32
    %collapsed_42 = tensor.collapse_shape %13 [[0, 1]] : tensor<11x5xi16> into tensor<55xi16>
    %129 = math.log %92 : f16
    %130 = vector.broadcast %c262551551_i32 : i32 to vector<12x5x12xi32>
    %131 = math.copysign %20, %17 : tensor<11xf32>
    %132 = arith.maxui %c262551551_i32, %c475380494_i32 : i32
    %133 = bufferization.to_tensor %alloc_22 : memref<12xi1>
    %alloc_43 = memref.alloc() : memref<12xf32>
    %134 = vector.broadcast %c1211232998_i32 : i32 to vector<11xi32>
    %135 = math.atan2 %2, %7 : tensor<11x5xf32>
    %136 = arith.mulf %cst_1, %cst : f32
    %137 = math.copysign %16, %11 : tensor<11xf32>
    %138 = tensor.empty() : tensor<12x5x12xi1>
    %139 = arith.floordivsi %c1497132425_i64, %c756762520_i64 : i64
    %140 = arith.maxui %c262551551_i32, %c1211232998_i32 : i32
    %141 = arith.remsi %true_0, %true : i1
    %alloc_44 = memref.alloc() : memref<5x12x12xf16>
    %142 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %alloc_44, %9 : tensor<12xf16>, memref<5x12x12xf16>, tensor<12xf16>) outs(%1 : tensor<12x5x12xf16>) {
    ^bb0(%in: f16, %in_59: f16, %in_60: f16, %out: f16):
      %248 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 16 - 8, d2 * 15 - 8)>(%121, %c10, %c1, %c11)
      %249 = math.fma %4, %4, %4 : tensor<11xf16>
      %rank_61 = tensor.rank %13 : tensor<11x5xi16>
      %250 = tensor.empty() : tensor<12x5x12xi32>
      %collapsed_62 = tensor.collapse_shape %6 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %251 = vector.transfer_read %collapsed_42[%c10], %c0_i16 : tensor<55xi16>, vector<i16>
      %252 = index.mul %c13, %107
      %253 = vector.extract %83[0] : vector<1xf16>
      %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %70, %45, %c1_i16 : vector<11xi16>, vector<11xi16> into i16
      %splat_63 = tensor.splat %c1433010774_i32 : tensor<11x5xi32>
      %255 = arith.subi %c475380494_i32, %c1433010774_i32 : i32
      %256 = arith.addi %c1497132425_i64, %c1683208616_i64 : i64
      %257 = arith.minf %in, %cst_2 : f16
      %258 = vector.gather %splat_63[%c5, %121] [%62], %61, %134 : tensor<11x5xi32>, vector<11xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
      %259 = math.rsqrt %119 : tensor<11x5xf32>
      %260 = index.floordivs %c14, %c14
      %261 = vector.reduction <mul>, %27 : vector<11xf32> into f32
      %262 = vector.bitcast %134 : vector<11xi32> to vector<11xi32>
      %263 = math.powf %out, %in_59 : f16
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_10, %1, %alloc_23 : memref<12x5x12xf16>, tensor<12x5x12xf16>, memref<12xf16>) outs(%1 : tensor<12x5x12xf16>) {
      ^bb0(%in_66: f16, %in_67: f16, %in_68: f16, %out_69: f16):
        %275 = math.cos %in_66 : f16
        %276 = arith.muli %c26368_i16, %c10649_i16 : i16
        %277 = arith.remsi %c1683208616_i64, %c756762520_i64 : i64
        %278 = index.divu %rank_61, %c12
        %279 = arith.divui %true_0, %true : i1
        %280 = arith.remf %in, %in_67 : f16
        %281 = math.powf %in_68, %in_59 : f16
        %282 = arith.minf %in, %in : f16
        %283 = vector.broadcast %108 : f32 to vector<11x5xf32>
        %284 = index.castu %c3 : index to i32
        %285 = arith.divui %c262551551_i32, %c945560081_i32 : i32
        %286 = arith.divsi %true_29, %true_0 : i1
        %287 = math.ceil %16 : tensor<11xf32>
        %288 = index.sub %121, %c11
        %289 = math.log1p %9 : tensor<12xf16>
        %290 = vector.extract_strided_slice %61 {offsets = [8], sizes = [3], strides = [1]} : vector<11xi1> to vector<3xi1>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (d1 - (d1 + d2 floordiv 64))>(%288, %c2, %52)
        %292 = math.ctlz %collapsed_42 : tensor<55xi16>
        %293 = arith.cmpf uge, %108, %cst_1 : f32
        %294 = math.copysign %6, %7 : tensor<11x5xf32>
        %295 = vector.extract_strided_slice %134 {offsets = [8], sizes = [2], strides = [1]} : vector<11xi32> to vector<2xi32>
        %296 = math.rsqrt %0 : tensor<12x5x12xf16>
        %297 = vector.broadcast %c756762520_i64 : i64 to vector<i64>
        %298 = vector.transfer_write %297, %12[%c1] : vector<i64>, tensor<11xi64>
        %299 = vector.reduction <mul>, %290 : vector<3xi1> into i1
        %300 = arith.divui %c10649_i16, %c10649_i16 : i16
        %c0_i16_70 = arith.constant 0 : i16
        %301 = vector.transfer_read %54[%c12, %c2], %c0_i16_70 : tensor<11x12xi16>, vector<i16>
        %302 = math.tan %7 : tensor<11x5xf32>
        %303 = math.atan %in_67 : f16
        %304 = vector.gather %110[%248, %50, %c5] [%57], %58, %118 : tensor<12x5x12xi64>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi64> into vector<11x5xi64>
        %305 = arith.minf %in, %out_69 : f16
        %306 = arith.remui %c756762520_i64, %c1683208616_i64 : i64
        %307 = math.round %1 : tensor<12x5x12xf16>
        linalg.yield %92 : f16
      } -> tensor<12x5x12xf16>
      %265 = math.atan %7 : tensor<11x5xf32>
      %false_64 = arith.constant false
      %266 = affine.if affine_set<(d0, d1) : ((d1 + 16) floordiv 32 >= 0, d0 - d1 + d1 + d1 >= 0, (d0 - d1 + d1) mod 2 >= 0, d0 - d1 + d1 + d1 == 0)>(%c3, %c10) -> i1 {
        %alloc_66 = memref.alloc() : memref<12xi16>
        %275 = arith.shli %c1433010774_i32, %c1211232998_i32 : i32
        %276 = math.tanh %in_59 : f16
        %277 = math.powf %0, %0 : tensor<12x5x12xf16>
        %278 = index.mul %c10, %c10
        %279 = vector.broadcast %true : i1 to vector<5xi1>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %58, %61, %279 : vector<11x5xi1>, vector<11xi1> into vector<5xi1>
        %281 = arith.addf %in_59, %out : f16
        %282 = math.ceil %in : f16
        affine.yield %true_29 : i1
      } else {
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %45, %70, %c26368_i16 : vector<11xi16>, vector<11xi16> into i16
        %276 = arith.divsi %c1_i16, %c26368_i16 : i16
        %alloca = memref.alloca() : memref<12x5x12xi1>
        %277 = arith.shli %c756762520_i64, %c1683208616_i64 : i64
        %278 = math.fma %6, %119, %6 : tensor<11x5xf32>
        %279 = arith.floordivsi %true_29, %true_29 : i1
        %collapsed_66 = tensor.collapse_shape %13 [[0, 1]] : tensor<11x5xi16> into tensor<55xi16>
        %280 = arith.negf %cst_2 : f16
        affine.yield %true_29 : i1
      }
      %267 = affine.load %alloc_17[%c7] : memref<11xi16>
      %from_elements_65 = tensor.from_elements %c1497132425_i64, %c1008141412_i64, %c1683208616_i64, %c1497132425_i64, %c1683208616_i64, %c1008141412_i64, %c756762520_i64, %c756762520_i64, %c756762520_i64, %c1683208616_i64, %c756762520_i64, %c1683208616_i64 : tensor<12xi64>
      %268 = arith.remui %true, %true_0 : i1
      %269 = math.absi %c10649_i16 : i16
      %270 = arith.divsi %c1683208616_i64, %c756762520_i64 : i64
      %271 = arith.shli %c1_i16, %c26368_i16 : i16
      %272 = math.absf %17 : tensor<11xf32>
      %273 = arith.remui %267, %c1_i16 : i16
      %274 = math.atan2 %6, %2 : tensor<11x5xf32>
      linalg.yield %92 : f16
    } -> tensor<12x5x12xf16>
    %inserted = tensor.insert %c1683208616_i64 into %12[%c4] : tensor<11xi64>
    %143 = math.absf %17 : tensor<11xf32>
    %144 = affine.max affine_map<(d0, d1) -> (((d1 floordiv 16) ceildiv 128 + 64) ceildiv 16)>(%103, %c1)
    %145 = affine.max affine_map<(d0) -> (d0 - d0 ceildiv 64 - 4)>(%52)
    %146 = index.maxu %50, %112
    %147 = math.powf %108, %cst_1 : f32
    %148 = arith.minf %92, %92 : f16
    %149 = math.round %from_elements : tensor<11xf16>
    %150 = bufferization.clone %alloc_9 : memref<11xi1> to memref<11xi1>
    %151 = index.casts %true_0 : i1 to index
    %152 = math.atan2 %0, %0 : tensor<12x5x12xf16>
    %from_elements_45 = tensor.from_elements %true, %true_29, %true_0, %true, %true_0, %true, %true, %true_0, %true_29, %true, %true : tensor<11xi1>
    %153 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%24 : tensor<12x5x12xi64>) {
    ^bb0(%out: i64):
      affine.store %cst, %alloc_6[%c10, %c12, %c2] : memref<12x5x12xf32>
      %248 = tensor.empty(%50) : tensor<11x?xi1>
      %249 = vector.splat %146 : vector<11xindex>
      %250 = math.log1p %9 : tensor<12xf16>
      %251 = vector.broadcast %c1683208616_i64 : i64 to vector<11xi64>
      %dest_59, %accumulated_value_60 = vector.scan <maxsi>, %117, %251 {inclusive = true, reduction_dim = 1 : i64} : vector<11x5xi64>, vector<11xi64>
      %252 = vector.shuffle %77, %77 [9, 12, 18, 19, 21] : vector<12x5x12xi16>, vector<12x5x12xi16>
      %253 = arith.ceildivsi %true_29, %true_29 : i1
      memref.copy %alloc_9, %alloc_11 : memref<11xi1> to memref<11xi1>
      %254 = math.powf %11, %11 : tensor<11xf32>
      %255 = tensor.empty() : tensor<11x5xi32>
      %mapped_61 = linalg.map ins(%splat_32 : tensor<11x5xi32>) outs(%255 : tensor<11x5xi32>)
        (%in: i32) {
          %c519112280_i32 = arith.constant 519112280 : i32
          %277 = vector.extract_strided_slice %130 {offsets = [10, 2], sizes = [1, 3], strides = [1, 1]} : vector<12x5x12xi32> to vector<1x3x12xi32>
          %278 = arith.divui %true, %true_29 : i1
          %279 = math.expm1 %4 : tensor<11xf16>
          %280 = arith.remf %cst, %cst : f32
          %281 = math.powf %92, %cst_2 : f16
          %282 = math.absf %11 : tensor<11xf32>
          %283 = index.maxs %c12, %c0
          %284 = math.ctlz %in : i32
          %285 = arith.ceildivsi %c10649_i16, %c26368_i16 : i16
          %286 = math.powf %17, %11 : tensor<11xf32>
          %287 = arith.cmpf true, %cst_2, %cst_2 : f16
          %splat_65 = tensor.splat %cst_2 : tensor<12xf16>
          %alloc_66 = memref.alloc() : memref<12xi64>
          memref.copy %alloc_4, %alloc_66 : memref<12xi64> to memref<12xi64>
          %288 = vector.shuffle %277, %277 [0, 1] : vector<1x3x12xi32>, vector<1x3x12xi32>
          %289 = math.log2 %92 : f16
          %290 = arith.mulf %cst, %cst : f32
          %c-6405_i16 = arith.constant -6405 : i16
          %291 = math.absi %from_elements_45 : tensor<11xi1>
          %292 = vector.broadcast %c1211232998_i32 : i32 to vector<11x11xi32>
          %293 = vector.outerproduct %134, %62, %292 {kind = #vector.kind<add>} : vector<11xi32>, vector<11xi32>
          %294 = math.copysign %22, %21 : tensor<f32>
          %splat_67 = tensor.splat %c1211232998_i32 : tensor<12xi32>
          affine.store %in, %alloc_7[%c0] : memref<12xi32>
          %295 = arith.maxui %c1211232998_i32, %in : i32
          %296 = index.floordivs %c3, %151
          %splat_68 = tensor.splat %c1433010774_i32 : tensor<12x5x12xi32>
          %297 = arith.minsi %c26368_i16, %c26368_i16 : i16
          %298 = tensor.empty() : tensor<12x11xf16>
          %299 = tensor.empty() : tensor<60x11xf16>
          %300 = linalg.matmul ins(%collapsed, %298 : tensor<60x12xf16>, tensor<12x11xf16>) outs(%299 : tensor<60x11xf16>) -> tensor<60x11xf16>
          %301 = arith.minui %in, %c475380494_i32 : i32
          memref.copy %104, %alloc_14 : memref<12x5x12xi64> to memref<12x5x12xi64>
          %inserted_69 = tensor.insert %c26368_i16 into %splat[%c7, %c3] : tensor<11x5xi16>
          %302 = index.casts %c1497132425_i64 : i64 to index
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %256 = math.ctpop %true : i1
      %257 = scf.execute_region -> tensor<11xf32> {
        %277 = vector.splat %52 : vector<11xindex>
        %alloc_65 = memref.alloc() : memref<12xi16>
        %278 = affine.load %alloc_11[%c6] : memref<11xi1>
        affine.store %c1008141412_i64, %alloc_18[%c11] : memref<11xi64>
        %279 = arith.minf %92, %cst_2 : f16
        %280 = arith.remf %cst_2, %92 : f16
        %281 = arith.maxui %c475380494_i32, %c1211232998_i32 : i32
        %collapsed_66 = tensor.collapse_shape %24 [[0, 1], [2]] : tensor<12x5x12xi64> into tensor<60x12xi64>
        %282 = arith.remf %108, %108 : f32
        %splat_67 = tensor.splat %true_0 : tensor<12xi1>
        %283 = vector.extract_strided_slice %56 {offsets = [7], sizes = [1], strides = [1]} : vector<11x5xi1> to vector<1x5xi1>
        %284 = arith.muli %c26368_i16, %c10649_i16 : i16
        %285 = math.round %4 : tensor<11xf16>
        %286 = vector.create_mask %53, %112, %86 : vector<12x5x12xi1>
        %287 = arith.remui %c262551551_i32, %c1211232998_i32 : i32
        %288 = math.ctpop %12 : tensor<11xi64>
        scf.yield %from_elements_39 : tensor<11xf32>
      }
      %258 = math.tanh %108 : f32
      %alloc_62 = memref.alloc() : memref<11xf16>
      memref.tensor_store %from_elements, %alloc_62 : memref<11xf16>
      affine.store %c1497132425_i64, %alloc_18[%c14] : memref<11xi64>
      %259 = vector.bitcast %63 : vector<11xf16> to vector<11xf16>
      %260 = math.round %10 : tensor<12xf32>
      %261 = math.absf %cst_1 : f32
      %262 = memref.realloc %alloc_19 : memref<11xf32> to memref<12xf32>
      %263 = arith.negf %92 : f16
      %264 = arith.maxf %92, %92 : f16
      %alloc_63 = memref.alloc() : memref<5x5xi32>
      %265 = tensor.empty() : tensor<11x5xi32>
      %266 = linalg.matmul ins(%8, %alloc_63 : tensor<11x5xi32>, memref<5x5xi32>) outs(%265 : tensor<11x5xi32>) -> tensor<11x5xi32>
      %collapsed_64 = tensor.collapse_shape %113 [[0, 1]] : tensor<11x5xi64> into tensor<55xi64>
      %267 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 32) * -64)>(%c5, %c3, %112, %c13)
      %268 = arith.minsi %c1683208616_i64, %c1008141412_i64 : i64
      %269 = index.floordivs %144, %c0
      %270 = arith.divsi %out, %c756762520_i64 : i64
      %271 = tensor.empty(%146, %112) : tensor<12x?x?xf16>
      %272 = math.exp2 %10 : tensor<12xf32>
      %273 = vector.broadcast %true_29 : i1 to vector<5xi1>
      %274 = vector.insert %273, %58 [10] : vector<5xi1> into vector<11x5xi1>
      %275 = arith.minf %108, %cst_1 : f32
      %276 = index.divu %c5, %c13
      linalg.yield %c1008141412_i64 : i64
    } -> tensor<12x5x12xi64>
    memref.store %c1497132425_i64, %alloc_14[%c5, %c3, %c10] : memref<12x5x12xi64>
    %154 = tensor.empty() : tensor<12x5x12xf16>
    %mapped_46 = linalg.map ins(%0, %1 : tensor<12x5x12xf16>, tensor<12x5x12xf16>) outs(%154 : tensor<12x5x12xf16>)
      (%in: f16, %in_59: f16) {
        %248 = vector.gather %7[%c12, %c7] [%62], %61, %28 : tensor<11x5xf32>, vector<11xi32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %249 = math.atan %cst_2 : f16
        %250 = vector.broadcast %c1008141412_i64 : i64 to vector<5xi64>
        %251 = vector.broadcast %true_0 : i1 to vector<5xi1>
        %252 = vector.maskedload %alloc_18[%c5], %251, %250 : memref<11xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %253 = memref.realloc %alloc_19 : memref<11xf32> to memref<11xf32>
        %254 = index.maxs %52, %68
        %255 = index.floordivs %146, %c14
        %256 = arith.addf %cst_2, %92 : f16
        %257 = vector.broadcast %cst : f32 to vector<12xf32>
        %258 = vector.fma %257, %257, %257 : vector<12xf32>
        %expanded_60 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<11x5xi16> into tensor<11x5x1xi16>
        %259 = arith.remf %108, %cst : f32
        %260 = math.absi %40 : tensor<12xi32>
        %261 = arith.muli %c475380494_i32, %c262551551_i32 : i32
        %262 = bufferization.clone %alloc_10 : memref<12x5x12xf16> to memref<12x5x12xf16>
        %263 = affine.min affine_map<(d0, d1, d2) -> (d2 + 4)>(%144, %c10, %c10)
        %264 = math.absf %2 : tensor<11x5xf32>
        %265 = math.tanh %0 : tensor<12x5x12xf16>
        %266 = arith.remui %c1008141412_i64, %c1008141412_i64 : i64
        %alloc_61 = memref.alloc() : memref<11xf16>
        %267 = math.exp2 %7 : tensor<11x5xf32>
        %268 = vector.reduction <maxsi>, %70 : vector<11xi16> into i16
        %269 = arith.divui %c10649_i16, %c26368_i16 : i16
        %270 = memref.atomic_rmw maxu %c475380494_i32, %alloc_7[%c11] : (i32, memref<12xi32>) -> i32
        %271 = arith.remf %in_59, %in : f16
        %272 = arith.maxui %c1211232998_i32, %c1211232998_i32 : i32
        %273 = index.mul %145, %103
        %274 = vector.bitcast %77 : vector<12x5x12xi16> to vector<12x5x12xi16>
        %275 = arith.maxui %c945560081_i32, %c1211232998_i32 : i32
        %276 = vector.broadcast %cst_1 : f32 to vector<12xf32>
        %277 = vector.fma %276, %257, %257 : vector<12xf32>
        %278 = tensor.empty() : tensor<11xi1>
        %mapped_62 = linalg.map ins(%150 : memref<11xi1>) outs(%278 : tensor<11xi1>)
          (%in_65: i1) {
            %281 = math.rsqrt %22 : tensor<f32>
            %282 = vector.insertelement %cst_1, %258[%146 : index] : vector<12xf32>
            %alloc_66 = memref.alloc() : memref<11x5xi1>
            %283 = arith.cmpf ole, %92, %in : f16
            %284 = math.copysign %2, %119 : tensor<11x5xf32>
            %285 = math.powf %9, %9 : tensor<12xf16>
            %286 = arith.remf %108, %cst : f32
            %287 = arith.maxui %true_29, %true : i1
            %288 = vector.broadcast %c262551551_i32 : i32 to vector<5xi32>
            %dest_67, %accumulated_value_68 = vector.scan <minui>, %57, %288 {inclusive = false, reduction_dim = 0 : i64} : vector<11x5xi32>, vector<5xi32>
            %289 = vector.broadcast %cst : f32 to vector<11xf32>
            %290 = vector.fma %289, %27, %289 : vector<11xf32>
            %291 = math.tanh %1 : tensor<12x5x12xf16>
            %292 = vector.shuffle %134, %62 [1, 2, 4, 5, 12, 13, 14, 15, 17, 18] : vector<11xi32>, vector<11xi32>
            %293 = index.divs %c3, %c1
            %294 = affine.max affine_map<(d0, d1, d2, d3) -> ((-(d2 - d1)) mod 64, (d0 + d2) * 2, d2 - d1, d3)>(%c9, %112, %86, %c1)
            %collapsed_69 = tensor.collapse_shape %expanded_60 [[0, 1], [2]] : tensor<11x5x1xi16> into tensor<55x1xi16>
            %295 = math.log %7 : tensor<11x5xf32>
            %296 = index.maxu %107, %146
            %297 = index.casts %c1008141412_i64 : i64 to index
            %collapsed_70 = tensor.collapse_shape %7 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
            %298 = arith.cmpf oge, %cst_1, %108 : f32
            %299 = index.floordivs %c6, %145
            %300 = arith.ceildivsi %c945560081_i32, %c475380494_i32 : i32
            %301 = index.mul %121, %52
            %302 = affine.load %alloc_12[%c13, %c14, %c2] : memref<12x5x12xi16>
            %303 = vector.splat %in_65 : vector<11x5xi1>
            %304 = vector.shuffle %28, %248 [1, 5, 7, 11, 12, 14, 16, 19, 20] : vector<11xf32>, vector<11xf32>
            %305 = math.ctpop %from_elements_45 : tensor<11xi1>
            %306 = arith.cmpi sle, %true_0, %true_29 : i1
            %307 = index.ceildivs %c2, %263
            %308 = index.maxu %c0, %c9
            %expanded_71 = tensor.expand_shape %10 [[0, 1]] : tensor<12xf32> into tensor<12x1xf32>
            %309 = arith.minsi %true_0, %in_65 : i1
            %false_72 = arith.constant false
            linalg.yield %false_72 : i1
          }
        %alloc_63 = memref.alloc() : memref<12x5x12xi64>
        %279 = math.log10 %cst_1 : f32
        %280 = arith.divsi %c1008141412_i64, %c1008141412_i64 : i64
        %cst_64 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_64 : f16
      }
    %155 = math.log2 %7 : tensor<11x5xf32>
    %156 = arith.remf %cst, %cst : f32
    %157 = arith.remf %cst, %108 : f32
    memref.tensor_store %0, %alloc_10 : memref<12x5x12xf16>
    %158 = math.round %10 : tensor<12xf32>
    %159 = arith.andi %true_29, %true_29 : i1
    %160 = vector.insert %c945560081_i32, %134 [10] : i32 into vector<11xi32>
    %alloc_47 = memref.alloc() : memref<12x12xf16>
    %161 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47 : memref<12x12xf16>) outs(%0 : tensor<12x5x12xf16>) {
    ^bb0(%in: f16, %out: f16):
      %248 = arith.remf %108, %cst : f32
      %249 = memref.load %alloc_17[%c8] : memref<11xi16>
      %250 = affine.max affine_map<(d0, d1, d2) -> ((d1 mod 16) * 4 - 2, d2)>(%c5, %c13, %144)
      %251 = index.castu %c1683208616_i64 : i64 to index
      %true_59 = arith.constant true
      %252 = index.floordivs %c6, %c15
      %253 = tensor.empty() : tensor<11xf16>
      %254 = math.absi %3 : tensor<12xi64>
      %255 = arith.divui %c1433010774_i32, %c945560081_i32 : i32
      %256 = arith.remui %true, %true_29 : i1
      %257 = index.floordivs %107, %146
      bufferization.dealloc_tensor %8 : tensor<11x5xi32>
      %258 = arith.andi %c10649_i16, %c26368_i16 : i16
      %259 = vector.splat %c15 : vector<11x5xindex>
      %260 = index.casts %c262551551_i32 : i32 to index
      %261 = math.ctlz %c262551551_i32 : i32
      affine.store %true_0, %alloc_16[%c0] : memref<11xi1>
      %262 = vector.maskedload %alloc_15[%c8], %61, %70 : memref<11xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %263 = arith.remf %cst_1, %cst_1 : f32
      %264 = arith.remsi %c10649_i16, %c26368_i16 : i16
      %265 = affine.apply affine_map<(d0, d1, d2) -> (((d2 * 4) mod 32) floordiv 2)>(%c8, %c6, %c6)
      %cst_60 = arith.constant 1.000000e+00 : f32
      %cst_61 = arith.constant 0.000000e+00 : f32
      %266 = vector.transfer_read %119[%c7, %c10], %cst_61 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<11x5xf32>, vector<12xf32>
      %267 = bufferization.to_tensor %alloc_12 : memref<12x5x12xi16>
      %268 = math.ceil %1 : tensor<12x5x12xf16>
      %269 = arith.remf %92, %cst_2 : f16
      %alloc_62 = memref.alloc() : memref<12x5x12xi1>
      %270 = math.atan %from_elements : tensor<11xf16>
      %271 = math.atan2 %cst, %108 : f32
      %true_63 = index.bool.constant true
      %272 = arith.minsi %c756762520_i64, %c1497132425_i64 : i64
      %273 = math.rsqrt %collapsed : tensor<60x12xf16>
      %274 = arith.divsi %c1433010774_i32, %c262551551_i32 : i32
      linalg.yield %cst_2 : f16
    } -> tensor<12x5x12xf16>
    %162 = vector.maskedload %alloc_12[%c9, %c0, %c6], %61, %45 : memref<12x5x12xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
    %alloc_48 = memref.alloc() : memref<11x5xi32>
    %163 = arith.addf %92, %92 : f16
    vector.print %162 : vector<11xi16>
    %164 = math.tanh %6 : tensor<11x5xf32>
    %165 = vector.broadcast %c945560081_i32 : i32 to vector<11x5xi32>
    %166 = math.sqrt %11 : tensor<11xf32>
    vector.print %134 : vector<11xi32>
    %167 = arith.muli %true_0, %true : i1
    %168 = math.tanh %92 : f16
    %169 = affine.apply affine_map<(d0) -> (d0)>(%52)
    %170 = index.divu %145, %103
    %171 = arith.cmpf oeq, %cst_1, %cst_1 : f32
    %172 = arith.cmpi eq, %c1497132425_i64, %c756762520_i64 : i64
    %173 = math.expm1 %cst_2 : f16
    %174 = index.casts %115 : index to i32
    affine.store %c1497132425_i64, %alloc_14[%c6, %c4, %c1] : memref<12x5x12xi64>
    %collapsed_49 = tensor.collapse_shape %6 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
    %175 = vector.broadcast %92 : f16 to vector<5xf16>
    %176 = vector.transfer_write %175, %0[%c10, %170, %144] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xf16>, tensor<12x5x12xf16>
    %alloc_50 = memref.alloc() : memref<12x5x12xf32>
    memref.copy %alloc_6, %alloc_50 : memref<12x5x12xf32> to memref<12x5x12xf32>
    %177 = math.powf %0, %1 : tensor<12x5x12xf16>
    %178 = arith.remui %c756762520_i64, %c1008141412_i64 : i64
    %179 = arith.maxui %c262551551_i32, %c945560081_i32 : i32
    %180 = index.mul %145, %c0
    %181 = arith.remui %true, %true_0 : i1
    %expanded = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<12x5x12xf16> into tensor<12x5x12x1xf16>
    %182 = arith.addf %108, %cst : f32
    %183 = arith.maxui %c1433010774_i32, %c262551551_i32 : i32
    %184 = index.casts %true_0 : i1 to index
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %185 = vector.transfer_read %alloc_13[%50, %c15], %c0_i64 : memref<11x5xi64>, vector<i64>
    %186 = math.sqrt %9 : tensor<12xf16>
    %rank = tensor.rank %11 : tensor<11xf32>
    %187 = arith.mulf %cst_1, %108 : f32
    %188 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %63, %63, %cst_2 : vector<11xf16>, vector<11xf16> into f16
    %extracted = tensor.extract %splat_41[%c8] : tensor<11xi32>
    %189 = math.atan %4 : tensor<11xf16>
    %190 = math.cos %0 : tensor<12x5x12xf16>
    %alloc_51 = memref.alloc() : memref<5x11xf32>
    %191 = tensor.empty() : tensor<11x11xf32>
    %192 = linalg.matmul ins(%119, %alloc_51 : tensor<11x5xf32>, memref<5x11xf32>) outs(%191 : tensor<11x11xf32>) -> tensor<11x11xf32>
    %193 = math.round %11 : tensor<11xf32>
    %collapsed_52 = tensor.collapse_shape %6 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
    %194 = vector.insertelement %c26368_i16, %45[%144 : index] : vector<11xi16>
    %195 = arith.divui %c1211232998_i32, %c1211232998_i32 : i32
    %196 = index.floordivs %50, %c2
    %197 = index.maxu %53, %c0
    %198 = arith.negf %92 : f16
    %rank_53 = tensor.rank %13 : tensor<11x5xi16>
    %199 = index.mul %184, %c12
    %200 = vector.load %alloc_9[%c5] : memref<11xi1>, vector<12x5x12xi1>
    %201 = arith.mulf %108, %cst_1 : f32
    %202 = arith.cmpf ugt, %92, %92 : f16
    %203 = arith.negf %cst : f32
    %204 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d2 - 128) ceildiv 16, 0, d1, 0)>(%c14, %c15, %53)
    %205 = vector.broadcast %c1433010774_i32 : i32 to vector<11x5xi32>
    %206 = arith.remf %92, %cst_2 : f16
    %207 = math.tanh %21 : tensor<f32>
    %208 = vector.broadcast %c1683208616_i64 : i64 to vector<11xi64>
    %209 = vector.maskedload %alloc_4[%c6], %61, %208 : memref<12xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
    %210 = math.powf %10, %10 : tensor<12xf32>
    %211 = vector.reduction <minf>, %28 : vector<11xf32> into f32
    memref.copy %alloc_7, %alloc_8 : memref<12xi32> to memref<12xi32>
    %212 = math.sqrt %154 : tensor<12x5x12xf16>
    %213 = vector.bitcast %162 : vector<11xi16> to vector<11xi16>
    %true_54 = index.bool.constant true
    %214 = vector.transpose %87, [0] : vector<12xi1> to vector<12xi1>
    memref.store %c1433010774_i32, %alloc[%c2, %c3] : memref<11x5xi32>
    %215 = vector.reduction <maxsi>, %134 : vector<11xi32> into i32
    %c1752035065_i32 = arith.constant 1752035065 : i32
    %216 = scf.while (%arg2 = %c1497132425_i64) : (i64) -> i64 {
      %248 = bufferization.clone %150 : memref<11xi1> to memref<11xi1>
      %249 = vector.broadcast %cst_1 : f32 to vector<11x5xf32>
      %250 = vector.fma %249, %249, %249 : vector<11x5xf32>
      %251 = vector.reduction <or>, %87 : vector<12xi1> into i1
      %alloc_59 = memref.alloc() : memref<12x5x12xi16>
      memref.copy %alloc_12, %alloc_59 : memref<12x5x12xi16> to memref<12x5x12xi16>
      %from_elements_60 = tensor.from_elements %cst_2, %cst_2, %92, %92, %92, %cst_2, %92, %cst_2, %92, %cst_2, %92, %92 : tensor<12xf16>
      %alloc_61 = memref.alloc() : memref<5x9xf32>
      %252 = tensor.empty() : tensor<11x9xf32>
      %253 = linalg.matmul ins(%2, %alloc_61 : tensor<11x5xf32>, memref<5x9xf32>) outs(%252 : tensor<11x9xf32>) -> tensor<11x9xf32>
      %254 = arith.remsi %c1_i64, %arg2 : i64
      %255 = memref.load %alloc_5[%c9, %c4] : memref<11x5xi64>
      scf.condition(%true_54) %c1683208616_i64 : i64
    } do {
    ^bb0(%arg2: i64):
      %248 = math.round %7 : tensor<11x5xf32>
      %249 = vector.matrix_multiply %28, %27 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
      memref.tensor_store %154, %alloc_10 : memref<12x5x12xf16>
      %250 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 32, d1)>(%c2, %196, %c10, %107)
      %alloc_59 = memref.alloc() : memref<12x5x12xi1>
      %251 = vector.gather %alloc_59[%rank_53, %c1, %c5] [%205], %56, %58 : memref<12x5x12xi1>, vector<11x5xi32>, vector<11x5xi1>, vector<11x5xi1> into vector<11x5xi1>
      %252 = math.fpowi %17, %splat_41 : tensor<11xf32>, tensor<11xi32>
      %253 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 - 64) ceildiv 64 >= 0, (d0 - d2) ceildiv 64 == 0, (d0 - 64) ceildiv 64 == 0, (d0 ceildiv 8) floordiv 8 == 0)>(%c2, %c8, %c8, %c4) -> memref<12x5x12xi64> {
        %262 = arith.addf %92, %92 : f16
        %263 = arith.negf %cst_1 : f32
        %264 = arith.addi %true, %true : i1
        %265 = arith.cmpi eq, %c475380494_i32, %extracted : i32
        %266 = affine.max affine_map<(d0, d1, d2) -> (d2 mod 2, (d2 mod 2) floordiv 16, (d0 * 2 + 4) * 8)>(%c1, %146, %c2)
        %267 = arith.remsi %true_0, %true_29 : i1
        %268 = math.ceil %108 : f32
        %269 = vector.insert %92, %63 [7] : f16 into vector<11xf16>
        affine.yield %alloc_14 : memref<12x5x12xi64>
      } else {
        %262 = arith.remui %true, %true_29 : i1
        %263 = math.round %6 : tensor<11x5xf32>
        %264 = arith.floordivsi %c475380494_i32, %c945560081_i32 : i32
        %265 = arith.mulf %cst_2, %cst_2 : f16
        %splat_61 = tensor.splat %c1497132425_i64 : tensor<12xi64>
        %266 = vector.insertelement %c1_i64, %19[%112 : index] : vector<9xi64>
        %267 = vector.broadcast %108 : f32 to vector<11xf32>
        %268 = math.round %108 : f32
        affine.yield %alloc_14 : memref<12x5x12xi64>
      }
      %254 = index.mul %197, %196
      %255 = index.floordivs %c6, %151
      %collapsed_60 = tensor.collapse_shape %113 [[0, 1]] : tensor<11x5xi64> into tensor<55xi64>
      %256 = arith.remf %cst_2, %92 : f16
      %257 = vector.bitcast %70 : vector<11xi16> to vector<11xf16>
      %258 = arith.maxui %c945560081_i32, %c1211232998_i32 : i32
      %259 = math.atan2 %cst_2, %92 : f16
      %260 = vector.insertelement %c26368_i16, %70[%145 : index] : vector<11xi16>
      %261 = index.maxu %86, %112
      scf.yield %c1_i64 : i64
    }
    %217 = arith.divui %true_29, %true_29 : i1
    %218 = vector.broadcast %c945560081_i32 : i32 to vector<i32>
    %219 = vector.transfer_write %218, %40[%199] : vector<i32>, tensor<12xi32>
    %220 = index.floordivs %c5, %144
    %false = index.bool.constant false
    %221 = vector.create_mask %112 : vector<12xi1>
    %222 = vector.broadcast %c9 : index to vector<12xindex>
    %223 = vector.broadcast %cst_2 : f16 to vector<12xf16>
    vector.scatter %alloc_23[%c5] [%222], %87, %223 : memref<12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    %224 = math.tan %cst_1 : f32
    %225 = index.casts %c10649_i16 : i16 to index
    %226 = math.ctlz %c10649_i16 : i16
    %227 = affine.for %arg2 = 0 to 31 iter_args(%arg3 = %62) -> (vector<11xi32>) {
      affine.yield %62 : vector<11xi32>
    }
    affine.store %c1008141412_i64, %104[%c13, %c4, %c12] : memref<12x5x12xi64>
    %228 = arith.remf %cst_1, %cst : f32
    %c1011515543_i32 = arith.constant 1011515543 : i32
    %229 = math.tanh %collapsed_52 : tensor<55xf32>
    memref.assume_alignment %alloc, 16 : memref<11x5xi32>
    %230 = math.round %108 : f32
    %splat_55 = tensor.splat %108 : tensor<12x5x12xf32>
    %231 = affine.for %arg2 = 0 to 61 iter_args(%arg3 = %alloc_4) -> (memref<12xi64>) {
      affine.yield %arg3 : memref<12xi64>
    }
    %232 = arith.remf %92, %92 : f16
    %233 = arith.floordivsi %c475380494_i32, %extracted : i32
    %234 = arith.remsi %c1211232998_i32, %c1433010774_i32 : i32
    %235 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14, %24 : memref<12x5x12xi64>, tensor<12x5x12xi64>) outs(%24 : tensor<12x5x12xi64>) {
    ^bb0(%in: i64, %in_59: i64, %out: i64):
      %true_60 = index.bool.constant true
      %248 = math.cttz %true_0 : i1
      %249 = tensor.empty() : tensor<11x5xf32>
      %250 = linalg.matmul ins(%191, %6 : tensor<11x11xf32>, tensor<11x5xf32>) outs(%249 : tensor<11x5xf32>) -> tensor<11x5xf32>
      %251 = vector.broadcast %c10649_i16 : i16 to vector<11x11xi16>
      %252 = vector.outerproduct %45, %162, %251 {kind = #vector.kind<mul>} : vector<11xi16>, vector<11xi16>
      %253 = arith.minsi %in_59, %c1683208616_i64 : i64
      %254 = math.rsqrt %cst : f32
      affine.for %arg2 = 0 to 62 {
      }
      %255 = math.cttz %c1008141412_i64 : i64
      %256 = vector.broadcast %c26368_i16 : i16 to vector<5x12x5x12xi16>
      %257 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %77, %77, %256 : vector<12x5x12xi16>, vector<12x5x12xi16> into vector<5x12x5x12xi16>
      affine.store %c1008141412_i64, %alloc_14[%c10, %c13, %c1] : memref<12x5x12xi64>
      %splat_61 = tensor.splat %true_60 : tensor<11xi1>
      %258 = math.expm1 %4 : tensor<11xf16>
      %259 = vector.bitcast %45 : vector<11xi16> to vector<11xf16>
      %260 = math.rsqrt %20 : tensor<11xf32>
      %261 = index.floordivs %121, %144
      %262 = tensor.empty() : tensor<5xf32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%262 : tensor<5xf32>) outs(%splat_55 : tensor<12x5x12xf32>) {
      ^bb0(%in_65: f32, %out_66: f32):
        %276 = math.ctpop %c1683208616_i64 : i64
        %277 = math.cttz %12 : tensor<11xi64>
        %278 = arith.remui %c945560081_i32, %c1433010774_i32 : i32
        %279 = math.ctpop %40 : tensor<12xi32>
        %280 = arith.maxui %c10649_i16, %c10649_i16 : i16
        %281 = index.mul %c4, %225
        %282 = math.round %collapsed_49 : tensor<55xf32>
        memref.copy %alloc_3, %alloc_9 : memref<11xi1> to memref<11xi1>
        bufferization.dealloc_tensor %from_elements_45 : tensor<11xi1>
        %283 = arith.cmpi sle, %c1_i64, %in : i64
        %284 = arith.minsi %c26368_i16, %c10649_i16 : i16
        memref.copy %alloc_15, %alloc_17 : memref<11xi16> to memref<11xi16>
        %285 = index.mul %c0, %146
        %splat_67 = tensor.splat %c1211232998_i32 : tensor<11x5xi32>
        %286 = vector.broadcast %c756762520_i64 : i64 to vector<11xi64>
        %287 = vector.extract_strided_slice %56 {offsets = [2], sizes = [2], strides = [1]} : vector<11x5xi1> to vector<2x5xi1>
        %288 = arith.remui %c1_i64, %out : i64
        %289 = tensor.empty() : tensor<5x11xf32>
        %290 = tensor.empty() : tensor<11x11xf32>
        %291 = linalg.matmul ins(%2, %289 : tensor<11x5xf32>, tensor<5x11xf32>) outs(%290 : tensor<11x11xf32>) -> tensor<11x11xf32>
        %292 = index.floordivs %c12, %170
        %collapsed_68 = tensor.collapse_shape %8 [[0, 1]] : tensor<11x5xi32> into tensor<55xi32>
        %293 = vector.matrix_multiply %134, %62 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
        %294 = math.powf %108, %108 : f32
        %295 = index.floordivs %199, %c6
        %296 = index.divs %112, %146
        %297 = affine.load %alloc_7[%c6] : memref<12xi32>
        %298 = arith.maxsi %in_59, %c1683208616_i64 : i64
        %299 = vector.broadcast %169 : index to vector<5xindex>
        %300 = vector.broadcast %true : i1 to vector<5xi1>
        %301 = vector.broadcast %in : i64 to vector<5xi64>
        vector.scatter %alloc_14[%c9, %c1, %c3] [%299], %300, %301 : memref<12x5x12xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %302 = math.powf %cst, %out_66 : f32
        %303 = index.floordivs %292, %c11
        %304 = math.cttz %c756762520_i64 : i64
        %305 = math.fpowi %7, %8 : tensor<11x5xf32>, tensor<11x5xi32>
        %306 = math.expm1 %9 : tensor<12xf16>
        linalg.yield %in_65 : f32
      } -> tensor<12x5x12xf32>
      %264 = arith.andi %c1_i64, %c1683208616_i64 : i64
      memref.tensor_store %17, %alloc_19 : memref<11xf32>
      %265 = arith.maxf %108, %cst : f32
      %266 = vector.insert %cst_2, %175 [1] : f16 into vector<5xf16>
      %from_elements_62 = tensor.from_elements %in_59, %in_59, %in, %c1_i64, %c1008141412_i64, %out, %in_59, %c1_i64, %c1497132425_i64, %out, %in : tensor<11xi64>
      %267 = arith.negf %cst_1 : f32
      %268 = math.atan2 %splat_55, %splat_55 : tensor<12x5x12xf32>
      %269 = math.ctpop %c1497132425_i64 : i64
      %270 = arith.remsi %true, %true_29 : i1
      %alloc_63 = memref.alloc() : memref<11xf32>
      %271 = affine.apply affine_map<(d0) -> (-64)>(%121)
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%154, %9 : tensor<12x5x12xf16>, tensor<12xf16>) outs(%0 : tensor<12x5x12xf16>) {
      ^bb0(%in_65: f16, %in_66: f16, %out_67: f16):
        %alloc_68 = memref.alloc() : memref<11xi64>
        %276 = arith.shrsi %true_0, %true_54 : i1
        %277 = vector.insertelement %c945560081_i32, %218[] : vector<i32>
        %278 = bufferization.clone %alloc_15 : memref<11xi16> to memref<11xi16>
        %279 = arith.ceildivsi %true_54, %true : i1
        %280 = vector.insert %in_65, %60 [0] : f16 into vector<11xf16>
        %281 = vector.broadcast %c1_i64 : i64 to vector<5xi64>
        %282 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %117, %208, %281 : vector<11x5xi64>, vector<11xi64> into vector<5xi64>
        %from_elements_69 = tensor.from_elements %true, %false, %true_54, %false, %true_0, %true, %true, %true_0, %true_54, %true, %true_54, %true_54, %false, %true_54, %false, %true_29, %true_60, %true_54, %true_60, %true_29, %true_29, %true, %true_0, %true_29, %true_60, %true_54, %true, %true_29, %true_0, %true_0, %true_60, %false, %true_54, %true_0, %true_54, %true_0, %true_0, %true_60, %true, %true_0, %true, %true_54, %true_54, %true, %true_60, %true_0, %true_0, %true_54, %true_0, %true_0, %true_60, %true_29, %true_60, %true_60, %true_0, %true_60, %true_29, %true_60, %true_60, %true_60, %true_60, %true_0, %false, %true, %true_0, %false, %false, %true_60, %false, %true_60, %true, %true, %false, %false, %true_29, %true_0, %true_54, %true_0, %true, %true_54, %true_29, %false, %true_0, %true, %true, %true_29, %true_29, %false, %true_0, %true_0, %false, %false, %true_29, %true_0, %false, %true_60, %true_0, %true_0, %true, %true_29, %true_29, %true_0, %true_60, %true_60, %false, %true, %false, %true_29, %true_60, %false, %true_60, %false, %true_60, %false, %true_29, %true, %true_54, %true_60, %true_54, %true, %true_29, %true_54, %true_60, %true_29, %true, %true, %true_54, %true_60, %true_54, %true_29, %true_29, %true_29, %true_29, %true_60, %false, %false, %true_60, %true, %true_60, %true_0, %true, %true_54, %true_29, %true_60, %false, %true_60, %true_29, %true, %true_54, %true_54, %false, %false, %true, %true_60, %true_60, %true_60, %true_0, %true_0, %false, %true_54, %true_29, %false, %false, %false, %false, %true_54, %false, %true_54, %true_60, %false, %false, %false, %true_60, %true_29, %true, %true, %true_54, %true_29, %true_54, %true_54, %true_54, %true, %true_54, %true_54, %false, %true_54, %false, %true_54, %true, %true_0, %true_29, %true_29, %true_29, %true_29, %false, %false, %true_54, %true, %false, %true_54, %true_60, %true_54, %true_60, %true_0, %true, %true, %true, %true_60, %true_54, %true_60, %true_0, %true_0, %true_29, %true_54, %true_0, %true_29, %true, %true_54, %false, %true_60, %true_0, %true_0, %true_60, %true_60, %true_29, %false, %true_60, %true_54, %false, %true_60, %true_60, %true_54, %true_54, %true_0, %true, %false, %true_54, %true, %true_60, %true_0, %true_54, %true, %false, %false, %true_60, %true, %true_29, %true, %true_0, %true_54, %true_0, %true_60, %false, %true, %true_0, %true_0, %true, %true_29, %false, %true_54, %true, %true, %true_0, %false, %true_54, %true, %true, %true_29, %true_29, %true_54, %true, %true_29, %false, %true_0, %true_0, %true_54, %true, %false, %true_29, %true_60, %true_54, %true_29, %false, %true_0, %true_60, %true_54, %true_0, %true_54, %false, %true_60, %true_60, %true_0, %true_60, %true_29, %true_0, %true_54, %true_54, %true_0, %true_54, %true_60, %false, %true_60, %true_60, %true, %true, %true_54, %true_60, %true_29, %true_60, %true_29, %false, %true, %true_29, %true_0, %true_0, %false, %true_60, %true_0, %true_0, %false, %true_29, %true_60, %true_60, %false, %true, %true, %true_0, %true, %true_54, %false, %true_60, %true_54, %true_29, %true_54, %true_29, %true, %true_29, %true, %true_60, %true_54, %true, %false, %true_60, %true, %true_60, %true, %true_29, %false, %true_60, %true_29, %true_54, %true, %true_29, %true_60, %true_54, %true_60, %true, %true_0, %false, %true, %true_0, %true_0, %true_29, %true_60, %true, %true_0, %true, %true_54, %true_29, %true_29, %false, %false, %true_0, %true_29, %true_60, %true, %true, %true_60, %false, %true, %true_0, %false, %true_0, %true_29, %true_54, %true_54, %true_60, %false, %true_54, %true_54, %true_29, %true_0, %false, %true_0, %true_0, %true, %true_60, %true_29, %true_54, %true_29, %true, %false, %true_0, %false, %true, %true_29, %true_29, %true_29, %true_29, %false, %false, %true, %true_0, %true_29, %true_29, %true_0, %true_60, %true_60, %true_60, %true, %true_54, %true_60, %true_29, %false, %true_29, %true_29, %true_29, %true_60, %true, %false, %true_54, %true, %true_0, %true_0, %true_0, %true_29, %true_54, %true_54, %false, %true_29, %false, %false, %true_29, %false, %true_0, %true, %true_29, %true_54, %true_54, %true_0, %true_60, %false, %true_0, %true_54, %true_29, %true_60, %true_54, %true_54, %true_0, %true_60, %true_29, %false, %true_54, %true_29, %true_54, %true_29, %true_0, %true_29, %true_60, %false, %true_0, %true, %true_0, %true_29, %true_54, %true, %true_60, %true_29, %true_29, %true_54, %false, %true_54, %true_60, %true_0, %true_0, %true_29, %true_60, %false, %true, %false, %true_29, %true_0, %false, %true_0, %false, %true_29, %true, %true_0, %true_60, %false, %true_29, %true, %true_0, %true_54, %true_54, %true_60, %true_54, %false, %true, %true_29, %true_0, %true, %true_60, %true_54, %false, %true_60, %true_29, %true_0, %true, %true_0, %true_54, %true_0, %true_0, %true_60, %false, %true, %true_60, %true_29, %true, %false, %true, %true_29, %true_60, %true, %true_0, %true_54, %true_54, %true_29, %true_0, %true_0, %false, %true, %false, %true_54, %true, %true_60, %true_0, %true_60, %true_60, %true_0, %true, %true_0, %true_29, %true, %true, %false, %true_54, %true_54, %false, %true, %true_0, %true_0, %true_29, %false, %true_60, %true_29, %true_54, %true_60, %false, %true, %true_0, %false, %false, %true_54, %true_60, %true_60, %true_29, %true_54, %true_0, %true_60, %true_54, %false, %true_29, %true_54, %true_54, %true, %true_60, %true_29, %true_60, %false, %true_54, %false, %false, %true_60, %true_60, %true_0, %true_60, %true_54, %true_0, %true_54, %true_29, %false, %true_0, %true_60, %true_0, %false, %true_29, %true_29, %true, %true_0, %true_54, %true_54, %true_60, %true_60, %true_60, %true_29, %true_60, %true, %true_29, %false, %false, %true_0, %true_29, %true, %true_60, %true_54, %true_54, %true, %true_0, %true_60, %true_0, %true_54, %true_29, %true, %true_0, %true, %false, %true_54, %true_60, %true_0, %false, %true_60, %true, %true_0, %true_54, %false, %true_29, %true_60, %true_0, %false, %true, %true_0, %true_29, %true_60, %true_0, %true, %true, %true_29, %true, %true_54, %false, %true, %true_54, %false, %true_29, %true_0, %true_0, %true_54, %false, %true_0, %true_54, %false, %true_29, %true_54, %false, %false, %false, %false, %true_0, %true_29, %true, %false, %false, %false, %false, %false, %true_0, %true_60, %true_0, %false, %true_60, %true_0, %true_0, %true_60, %true_54, %true_54, %true_60, %true_60, %true_60, %true_0, %true_60, %false, %false, %true_0, %true_29, %true_29, %true_54, %true_60, %true_29, %true_0, %true_29, %true, %true_29, %false, %true_0, %false, %true_0, %true_29, %true_29, %false : tensor<12x5x12xi1>
        %283 = bufferization.clone %alloc_15 : memref<11xi16> to memref<11xi16>
        %284 = vector.extract_strided_slice %77 {offsets = [10], sizes = [2], strides = [1]} : vector<12x5x12xi16> to vector<2x5x12xi16>
        %285 = vector.broadcast %c26368_i16 : i16 to vector<i16>
        vector.transfer_write %285, %278[%rank_53] : vector<i16>, memref<11xi16>
        %286 = math.tanh %cst_2 : f16
        %287 = vector.broadcast %false : i1 to vector<12x12xi1>
        %288 = vector.outerproduct %87, %221, %287 {kind = #vector.kind<add>} : vector<12xi1>, vector<12xi1>
        %289 = arith.divui %c756762520_i64, %c1008141412_i64 : i64
        %290 = arith.maxui %c945560081_i32, %c1433010774_i32 : i32
        %from_elements_70 = tensor.from_elements %in_65, %in_65, %92, %cst_2, %in_66, %in_66, %out_67, %out_67, %cst_2, %out_67, %in_66, %92, %in_66, %in_65, %92, %in_66, %out_67, %in_66, %in_65, %cst_2, %cst_2, %in_65, %cst_2, %92, %92, %92, %out_67, %out_67, %92, %cst_2, %cst_2, %92, %out_67, %in_65, %cst_2, %in_66, %92, %cst_2, %in_66, %92, %out_67, %in_66, %92, %out_67, %cst_2, %out_67, %cst_2, %cst_2, %in_66, %in_65, %in_66, %out_67, %in_65, %in_65, %92 : tensor<11x5xf16>
        %291 = math.ctpop %c1_i64 : i64
        %292 = vector.broadcast %c1008141412_i64 : i64 to vector<9xi64>
        %293 = vector.transfer_write %292, %24[%151, %c9, %107] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xi64>, tensor<12x5x12xi64>
        %294 = index.sub %c2, %199
        affine.store %c26368_i16, %283[%c9] : memref<11xi16>
        %295 = vector.bitcast %43 : vector<1xi64> to vector<1xi64>
        %296 = arith.remui %true_60, %true_0 : i1
        %297 = arith.divui %c10649_i16, %c26368_i16 : i16
        %298 = arith.shrsi %extracted, %c262551551_i32 : i32
        %299 = math.absi %from_elements_45 : tensor<11xi1>
        %300 = arith.addf %in_65, %out_67 : f16
        %301 = arith.andi %c1008141412_i64, %out : i64
        %302 = arith.remf %out_67, %in_66 : f16
        %303 = arith.divui %in, %out : i64
        %expanded_71 = tensor.expand_shape %11 [[0, 1]] : tensor<11xf32> into tensor<11x1xf32>
        %304 = math.atan2 %cst_2, %out_67 : f16
        %305 = arith.cmpi ule, %c1_i64, %c1497132425_i64 : i64
        linalg.yield %in_66 : f16
      } -> tensor<12x5x12xf16>
      %alloc_64 = memref.alloc() : memref<12xi16>
      %273 = arith.remf %92, %cst_2 : f16
      %274 = memref.load %alloc[%c3, %c2] : memref<11x5xi32>
      %275 = affine.min affine_map<(d0) -> (d0 - 1, (d0 * 2) ceildiv 4 + d0 - 1, (d0 floordiv 4) ceildiv 4, d0 - 1)>(%c12)
      linalg.yield %in : i64
    } -> tensor<12x5x12xi64>
    %expanded_56 = tensor.expand_shape %15 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
    %alloc_57 = memref.alloc() : memref<12x12x5xi64>
    %236 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15, %alloc_4, %alloc_57 : tensor<12xi64>, memref<12xi64>, memref<12x12x5xi64>) outs(%24 : tensor<12x5x12xi64>) {
    ^bb0(%in: i64, %in_59: i64, %in_60: i64, %out: i64):
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%154, %0 : tensor<12x5x12xf16>, tensor<12x5x12xf16>) outs(%0 : tensor<12x5x12xf16>) {
      ^bb0(%in_63: f16, %in_64: f16, %out_65: f16):
        %277 = index.casts %c10649_i16 : i16 to index
        %278 = arith.addf %92, %cst_2 : f16
        %alloc_66 = memref.alloc() : memref<11xf32>
        %279 = vector.create_mask %151, %53 : vector<11x5xi1>
        %280 = math.tanh %154 : tensor<12x5x12xf16>
        %281 = arith.negf %108 : f32
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 32, d0)>(%68, %c11, %c9, %c8)
        memref.copy %104, %alloc_14 : memref<12x5x12xi64> to memref<12x5x12xi64>
        %283 = math.powf %10, %10 : tensor<12xf32>
        %284 = tensor.empty() : tensor<11x5xi32>
        %285 = index.maxu %c14, %145
        %286 = math.powf %6, %7 : tensor<11x5xf32>
        %287 = vector.broadcast %c10649_i16 : i16 to vector<12xi16>
        %288 = vector.maskedload %alloc_15[%c7], %221, %287 : memref<11xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %289 = math.fpowi %10, %40 : tensor<12xf32>, tensor<12xi32>
        %290 = vector.broadcast %c1_i64 : i64 to vector<12xi64>
        %291 = vector.maskedload %alloc_18[%c1], %87, %290 : memref<11xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %292 = math.ctlz %8 : tensor<11x5xi32>
        %293 = arith.shrui %c26368_i16, %c10649_i16 : i16
        %294 = vector.matrix_multiply %287, %288 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %295 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%c6, %c0, %112, %180)
        %296 = math.expm1 %92 : f16
        %alloc_67 = memref.alloc() : memref<12xf16>
        memref.copy %alloc_23, %alloc_67 : memref<12xf16> to memref<12xf16>
        %297 = arith.remf %in_63, %in_64 : f16
        %298 = vector.load %150[%c4] : memref<11xi1>, vector<12xi1>
        %299 = math.tan %6 : tensor<11x5xf32>
        %300 = vector.transpose %175, [0] : vector<5xf16> to vector<5xf16>
        memref.store %c1_i64, %alloc_18[%c1] : memref<11xi64>
        %301 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 2)>(%c7, %53, %c3, %c6)
        %alloc_68 = memref.alloc() : memref<5x12xf32>
        %302 = tensor.empty() : tensor<11x12xf32>
        %303 = linalg.matmul ins(%119, %alloc_68 : tensor<11x5xf32>, memref<5x12xf32>) outs(%302 : tensor<11x12xf32>) -> tensor<11x12xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %45, %70, %c26368_i16 : vector<11xi16>, vector<11xi16> into i16
        %305 = math.round %1 : tensor<12x5x12xf16>
        %306 = math.absi %out : i64
        %307 = math.ctlz %extracted : i32
        linalg.yield %out_65 : f16
      } -> tensor<12x5x12xf16>
      %249 = scf.while (%arg2 = %57) : (vector<11x5xi32>) -> vector<11x5xi32> {
        %splat_63 = tensor.splat %108 : tensor<11xf32>
        %277 = math.absi %c1008141412_i64 : i64
        %278 = math.tanh %cst : f32
        %279 = arith.maxui %in_59, %c1497132425_i64 : i64
        %280 = tensor.empty() : tensor<5x12xi32>
        %281 = tensor.empty() : tensor<11x12xi32>
        %282 = linalg.matmul ins(%splat_32, %280 : tensor<11x5xi32>, tensor<5x12xi32>) outs(%281 : tensor<11x12xi32>) -> tensor<11x12xi32>
        %283 = arith.addi %in_60, %out : i64
        %284 = bufferization.clone %alloc_22 : memref<12xi1> to memref<12xi1>
        %splat_64 = tensor.splat %true : tensor<11x5xi1>
        scf.condition(%true_29) %165 : vector<11x5xi32>
      } do {
      ^bb0(%arg2: vector<11x5xi32>):
        %277 = index.add %169, %169
        %collapsed_63 = tensor.collapse_shape %7 [[0, 1]] : tensor<11x5xf32> into tensor<55xf32>
        %278 = vector.load %150[%c7] : memref<11xi1>, vector<11xi1>
        %279 = arith.maxui %in_59, %c1_i64 : i64
        %280 = arith.minf %cst, %cst_1 : f32
        %281 = math.log %collapsed_49 : tensor<55xf32>
        %collapsed_64 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<12x5x12xf16> into tensor<60x12xf16>
        %282 = tensor.empty(%52) : tensor<12x5x?xi16>
        %283 = arith.cmpf ugt, %cst_1, %108 : f32
        %284 = math.atan2 %cst_1, %cst_1 : f32
        %285 = arith.addf %cst_1, %108 : f32
        %286 = index.divu %52, %rank
        %287 = arith.subi %out, %c1_i64 : i64
        %288 = vector.broadcast %true_54 : i1 to vector<5xi1>
        %289 = vector.maskedload %alloc_9[%c8], %288, %288 : memref<11xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %290 = index.maxu %c15, %50
        %291 = arith.floordivsi %in_59, %in_60 : i64
        scf.yield %57 : vector<11x5xi32>
      }
      %250 = math.atan2 %154, %0 : tensor<12x5x12xf16>
      %251 = index.maxs %c12, %197
      %252 = affine.min affine_map<(d0, d1, d2) -> (d2, d2, d0 mod 8)>(%52, %52, %197)
      %true_61 = index.bool.constant true
      %253 = affine.apply affine_map<(d0, d1, d2) -> (((d2 * 4) mod 32) floordiv 2)>(%c12, %c1, %169)
      %254 = index.divu %197, %c7
      %255 = index.floordivs %86, %c9
      %256 = vector.reduction <maxf>, %63 : vector<11xf16> into f16
      %257 = arith.divsi %true_29, %true_54 : i1
      %258 = arith.remf %92, %cst_2 : f16
      memref.store %c10649_i16, %alloc_15[%c5] : memref<11xi16>
      %259 = math.tan %collapsed_31 : tensor<55xf32>
      %260 = arith.remf %108, %cst_1 : f32
      %261 = arith.maxui %true_61, %true_0 : i1
      %262 = index.floordivs %253, %86
      %263 = math.round %collapsed_31 : tensor<55xf32>
      %264 = affine.load %alloc_4[%c4] : memref<12xi64>
      scf.execute_region {
        memref.store %true, %alloc_3[%c5] : memref<11xi1>
        %277 = math.absf %1 : tensor<12x5x12xf16>
        %278 = math.log2 %1 : tensor<12x5x12xf16>
        %279 = math.exp2 %from_elements : tensor<11xf16>
        %dest_63, %accumulated_value_64 = vector.scan <maxsi>, %205, %134 {inclusive = true, reduction_dim = 1 : i64} : vector<11x5xi32>, vector<11xi32>
        %280 = math.expm1 %7 : tensor<11x5xf32>
        %281 = arith.mulf %cst, %cst : f32
        %alloc_65 = memref.alloc() : memref<11xi32>
        %282 = math.expm1 %1 : tensor<12x5x12xf16>
        bufferization.dealloc_tensor %8 : tensor<11x5xi32>
        %283 = vector.bitcast %175 : vector<5xf16> to vector<5xi16>
        %284 = math.sqrt %11 : tensor<11xf32>
        %285 = vector.broadcast %c262551551_i32 : i32 to vector<12x5xi32>
        %dest_66, %accumulated_value_67 = vector.scan <maxui>, %130, %285 {inclusive = true, reduction_dim = 2 : i64} : vector<12x5x12xi32>, vector<12x5xi32>
        %collapsed_68 = tensor.collapse_shape %191 [[0, 1]] : tensor<11x11xf32> into tensor<121xf32>
        %286 = math.ctpop %14 : tensor<11xi64>
        %287 = vector.insertelement %c26368_i16, %70[%c3 : index] : vector<11xi16>
        scf.yield
      }
      %265 = affine.min affine_map<(d0) -> (d0, d0 * -16, d0 * 1792)>(%170)
      %splat_62 = tensor.splat %108 : tensor<11xf32>
      %266 = vector.maskedload %alloc[%c1, %c3], %61, %134 : memref<11x5xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
      %267 = arith.minsi %in_59, %in_60 : i64
      %268 = vector.broadcast %c1211232998_i32 : i32 to vector<5xi32>
      %269 = vector.broadcast %true : i1 to vector<5xi1>
      %270 = vector.maskedload %alloc[%c9, %c1], %269, %268 : memref<11x5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      memref.alloca_scope  {
        %277 = arith.remf %92, %cst_2 : f16
        %278 = arith.remsi %extracted, %c475380494_i32 : i32
        %279 = arith.shli %264, %in_60 : i64
        %280 = vector.transpose %87, [0] : vector<12xi1> to vector<12xi1>
        %281 = index.divu %262, %252
        %282 = arith.maxsi %true_54, %true_29 : i1
        %283 = arith.minf %cst_2, %cst_2 : f16
        %284 = index.divu %c7, %c2
        %285 = arith.remf %cst_1, %cst_1 : f32
        %286 = math.absi %5 : tensor<12xi16>
        %287 = index.casts %true_0 : i1 to index
        memref.assume_alignment %150, 4 : memref<11xi1>
        %288 = vector.splat %c945560081_i32 : vector<11xi32>
        %289 = arith.remf %92, %92 : f16
        %290 = arith.divf %108, %cst_1 : f32
        %291 = affine.max affine_map<(d0) -> ((d0 ceildiv 32) ceildiv 2, 0)>(%169)
        memref.assume_alignment %alloc_14, 4 : memref<12x5x12xi64>
        affine.store %false, %alloc_11[%c3] : memref<11xi1>
        %292 = math.atan2 %from_elements, %from_elements : tensor<11xf16>
        %293 = arith.remf %cst_2, %92 : f16
        %c349570572_i64 = arith.constant 349570572 : i64
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %294 = vector.transfer_read %splat_32[%145, %284], %c0_i32 : tensor<11x5xi32>, vector<i32>
        %295 = math.round %16 : tensor<11xf32>
        %296 = arith.shli %c756762520_i64, %c756762520_i64 : i64
        %297 = math.absi %c1_i64 : i64
        %298 = arith.maxui %c1497132425_i64, %c1497132425_i64 : i64
        %299 = memref.realloc %alloc_23 : memref<12xf16> to memref<9xf16>
        %300 = index.casts %c945560081_i32 : i32 to index
        %301 = math.sqrt %collapsed_49 : tensor<55xf32>
        %302 = math.atan2 %108, %cst_1 : f32
        %dest_63, %accumulated_value_64 = vector.scan <maxui>, %58, %61 {inclusive = true, reduction_dim = 1 : i64} : vector<11x5xi1>, vector<11xi1>
        %303 = arith.remf %108, %cst_1 : f32
      }
      %271 = arith.andi %c1433010774_i32, %c475380494_i32 : i32
      %272 = vector.broadcast %true : i1 to vector<12x5x12xi1>
      %273 = arith.negf %cst : f32
      %274 = index.maxu %251, %253
      %275 = arith.remsi %true_54, %true_0 : i1
      %276 = index.casts %c10649_i16 : i16 to index
      linalg.yield %in_59 : i64
    } -> tensor<12x5x12xi64>
    %237 = math.powf %7, %2 : tensor<11x5xf32>
    %238 = math.tanh %4 : tensor<11xf16>
    %239 = arith.cmpf ord, %108, %cst_1 : f32
    %240 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d1 - d1)>(%184, %169, %225, %121)
    %241 = vector.reduction <mul>, %63 : vector<11xf16> into f16
    %242 = vector.broadcast %cst_1 : f32 to vector<11x5xf32>
    %243 = vector.fma %242, %242, %242 : vector<11x5xf32>
    %244 = tensor.empty() : tensor<11x5xi32>
    %245 = linalg.copy ins(%8 : tensor<11x5xi32>) outs(%244 : tensor<11x5xi32>) -> tensor<11x5xi32>
    %246 = tensor.empty() : tensor<5x11xi32>
    %transposed = linalg.transpose ins(%8 : tensor<11x5xi32>) outs(%246 : tensor<5x11xi32>) permutation = [1, 0] 
    %alloc_58 = memref.alloc() : memref<f32>
    linalg.reduce ins(%11 : tensor<11xf32>) outs(%alloc_58 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %248 = tensor.empty() : tensor<11x5xf32>
        %mapped_59 = linalg.map ins(%119, %119, %2 : tensor<11x5xf32>, tensor<11x5xf32>, tensor<11x5xf32>) outs(%248 : tensor<11x5xf32>)
          (%in_62: f32, %in_63: f32, %in_64: f32) {
            %255 = math.ctpop %5 : tensor<12xi16>
            memref.store %true, %alloc_11[%c6] : memref<11xi1>
            %256 = vector.load %alloc_14[%c7, %c3, %c3] : memref<12x5x12xi64>, vector<12xi64>
            %257 = math.fma %collapsed_49, %collapsed_31, %collapsed_49 : tensor<55xf32>
            %258 = arith.maxui %c1497132425_i64, %c756762520_i64 : i64
            %259 = vector.broadcast %in : f32 to vector<11xf32>
            %260 = affine.load %alloc_14[%c10, %c1, %c7] : memref<12x5x12xi64>
            %261 = math.tanh %in_64 : f32
            %262 = math.cos %in : f32
            %263 = index.mul %c0, %180
            %264 = vector.extract_strided_slice %130 {offsets = [10], sizes = [1], strides = [1]} : vector<12x5x12xi32> to vector<1x5x12xi32>
            %265 = arith.subi %c10649_i16, %c10649_i16 : i16
            %266 = vector.load %alloc_23[%c3] : memref<12xf16>, vector<11xf16>
            %from_elements_65 = tensor.from_elements %init, %in_63, %init, %init, %cst_1, %108, %in_63, %init, %cst, %cst, %in_63, %in, %init, %in_62, %cst, %cst, %in_64, %in_64, %108, %in_62, %cst, %in_63, %in_62, %cst_1, %init, %cst_1, %in_63, %in_63, %cst_1, %in, %in_63, %init, %cst_1, %in_63, %init, %in, %in_63, %in_63, %in_64, %in_62, %in_64, %in, %in_62, %in_63, %108, %in_63, %init, %in, %in, %in_62, %cst_1, %in_63, %in_63, %in_64, %in_63 : tensor<11x5xf32>
            %267 = arith.subi %c1683208616_i64, %c1008141412_i64 : i64
            %268 = index.divs %204, %c6
            %269 = arith.minsi %true_0, %true_0 : i1
            %270 = index.maxs %c4, %151
            %271 = tensor.empty() : tensor<11x11xi32>
            %272 = linalg.matmul ins(%245, %transposed : tensor<11x5xi32>, tensor<5x11xi32>) outs(%271 : tensor<11x11xi32>) -> tensor<11x11xi32>
            %273 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 - d1) floordiv 16, d3 * 16 + d0 - d1, d0, -((d0 - d1) ceildiv 2))>(%c3, %52, %c5, %169)
            %from_elements_66 = tensor.from_elements %c262551551_i32, %c262551551_i32, %c262551551_i32, %extracted, %c262551551_i32, %extracted, %c945560081_i32, %extracted, %c262551551_i32, %c475380494_i32, %c262551551_i32, %c945560081_i32 : tensor<12xi32>
            %274 = affine.load %alloc_16[%c10] : memref<11xi1>
            %275 = arith.remf %cst, %in_62 : f32
            %276 = math.absi %splat : tensor<11x5xi16>
            %277 = bufferization.clone %150 : memref<11xi1> to memref<11xi1>
            memref.copy %alloc_14, %104 : memref<12x5x12xi64> to memref<12x5x12xi64>
            %278 = arith.mulf %cst, %init : f32
            %279 = math.absf %collapsed_52 : tensor<55xf32>
            %280 = vector.extract_strided_slice %256 {offsets = [6], sizes = [6], strides = [1]} : vector<12xi64> to vector<6xi64>
            %281 = math.atan2 %11, %11 : tensor<11xf32>
            %282 = arith.cmpi uge, %c26368_i16, %c26368_i16 : i16
            %283 = math.exp2 %4 : tensor<11xf16>
            %cst_67 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_67 : f32
          }
        %249 = math.rsqrt %2 : tensor<11x5xf32>
        %250 = affine.if affine_set<(d0) : (0 >= 0)>(%c10) -> i1 {
          %255 = arith.divsi %true_29, %true_54 : i1
          %256 = affine.load %alloc_11[%c0] : memref<11xi1>
          %257 = arith.ceildivsi %c26368_i16, %c10649_i16 : i16
          %258 = vector.load %alloc_4[%c10] : memref<12xi64>, vector<12xi64>
          memref.assume_alignment %alloc_15, 2 : memref<11xi16>
          %259 = vector.broadcast %108 : f32 to vector<12xf32>
          %260 = vector.maskedload %alloc_6[%c5, %c2, %c8], %87, %259 : memref<12x5x12xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
          %261 = arith.ori %true_0, %true_0 : i1
          %262 = vector.shuffle %221, %61 [0, 1, 7, 10, 11, 12, 14, 15, 17, 20] : vector<12xi1>, vector<11xi1>
          affine.yield %true_54 : i1
        } else {
          %255 = arith.andi %c1497132425_i64, %c1_i64 : i64
          %256 = arith.addi %true_54, %true : i1
          %257 = math.absi %c1_i64 : i64
          %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %83, %83, %92 : vector<1xf16>, vector<1xf16> into f16
          affine.store %c945560081_i32, %alloc_7[%c10] : memref<12xi32>
          affine.store %false, %alloc_22[%c11] : memref<12xi1>
          %259 = index.maxu %121, %204
          %260 = math.absf %4 : tensor<11xf16>
          affine.yield %true_29 : i1
        }
        %251 = vector.shuffle %243, %242 [2, 3, 4, 5, 6, 10, 11, 13, 17, 19, 20] : vector<11x5xf32>, vector<11x5xf32>
        %252 = affine.min affine_map<(d0) -> (d0, (-d0) ceildiv 64 - d0 - 1)>(%103)
        %253 = affine.if affine_set<(d0, d1, d2) : (d2 - d0 >= 0)>(%c12, %c2, %c1) -> memref<12xi1> {
          %255 = arith.shli %c475380494_i32, %c945560081_i32 : i32
          %256 = math.atan2 %119, %7 : tensor<11x5xf32>
          memref.store %c26368_i16, %alloc_12[%c3, %c4, %c2] : memref<12x5x12xi16>
          %257 = vector.broadcast %extracted : i32 to vector<5x12xi32>
          %dest_62, %accumulated_value_63 = vector.scan <maxsi>, %130, %257 {inclusive = true, reduction_dim = 0 : i64} : vector<12x5x12xi32>, vector<5x12xi32>
          %258 = arith.andi %true_29, %true : i1
          %259 = arith.remf %cst, %108 : f32
          %260 = index.maxu %rank_53, %252
          %261 = vector.broadcast %c1433010774_i32 : i32 to vector<5x5xi32>
          %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %165, %57, %261 : vector<11x5xi32>, vector<11x5xi32> into vector<5x5xi32>
          affine.yield %alloc_22 : memref<12xi1>
        } else {
          %255 = arith.divsi %c1008141412_i64, %c756762520_i64 : i64
          %256 = arith.remf %108, %init : f32
          %257 = arith.minui %c1433010774_i32, %c1211232998_i32 : i32
          %258 = vector.broadcast %init : f32 to vector<12xf32>
          %259 = vector.fma %258, %258, %258 : vector<12xf32>
          %260 = math.ceil %1 : tensor<12x5x12xf16>
          %261 = vector.broadcast %c756762520_i64 : i64 to vector<9x9xi64>
          %262 = vector.outerproduct %19, %19, %261 {kind = #vector.kind<add>} : vector<9xi64>, vector<9xi64>
          %263 = index.mul %68, %86
          %264 = vector.splat %cst_1 : vector<11x5xf32>
          affine.yield %alloc_22 : memref<12xi1>
        }
        %254 = math.tan %7 : tensor<11x5xf32>
        %true_60 = index.bool.constant true
        %cst_61 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_61 : f32
      }
    scf.parallel (%arg2) = (%c12) to (%115) step (%c4) {
      %248 = vector.reduction <maxf>, %28 : vector<11xf32> into f32
      %249 = math.round %9 : tensor<12xf16>
      %250 = arith.minf %92, %cst_2 : f16
      %251 = vector.broadcast %false : i1 to vector<5x12xi1>
      %dest_59, %accumulated_value_60 = vector.scan <minui>, %200, %251 {inclusive = true, reduction_dim = 0 : i64} : vector<12x5x12xi1>, vector<5x12xi1>
      %252 = arith.addf %108, %108 : f32
      %253 = vector.bitcast %130 : vector<12x5x12xi32> to vector<12x5x12xi32>
      %254 = arith.cmpi sgt, %c1497132425_i64, %c1008141412_i64 : i64
      %255 = vector.broadcast %cst : f32 to vector<12xf32>
      %256 = vector.fma %255, %255, %255 : vector<12xf32>
      %257 = arith.maxui %c475380494_i32, %c475380494_i32 : i32
      %258 = index.mul %121, %rank
      %splat_61 = tensor.splat %true_0 : tensor<11x5xi1>
      %collapsed_62 = tensor.collapse_shape %8 [[0, 1]] : tensor<11x5xi32> into tensor<55xi32>
      %259 = arith.mulf %cst, %cst : f32
      %260 = math.absf %10 : tensor<12xf32>
      %alloc_63 = memref.alloc() : memref<12xi32>
      %261 = arith.addf %cst_1, %cst_1 : f32
      scf.yield
    }
    %247 = affine.vector_load %alloc_58[] : memref<f32>, vector<11xf32>
    affine.vector_store %213, %alloc_17[%c10] : memref<11xi16>, vector<11xi16>
    vector.print %19 : vector<9xi64>
    vector.print %27 : vector<11xf32>
    vector.print %28 : vector<11xf32>
    vector.print %43 : vector<1xi64>
    vector.print %45 : vector<11xi16>
    vector.print %56 : vector<11x5xi1>
    vector.print %57 : vector<11x5xi32>
    vector.print %58 : vector<11x5xi1>
    vector.print %60 : vector<11xf16>
    vector.print %61 : vector<11xi1>
    vector.print %62 : vector<11xi32>
    vector.print %63 : vector<11xf16>
    vector.print %70 : vector<11xi16>
    vector.print %77 : vector<12x5x12xi16>
    vector.print %83 : vector<1xf16>
    vector.print %87 : vector<12xi1>
    vector.print %117 : vector<11x5xi64>
    vector.print %118 : vector<11x5xi64>
    vector.print %130 : vector<12x5x12xi32>
    vector.print %134 : vector<11xi32>
    vector.print %162 : vector<11xi16>
    vector.print %165 : vector<11x5xi32>
    vector.print %175 : vector<5xf16>
    vector.print %200 : vector<12x5x12xi1>
    vector.print %205 : vector<11x5xi32>
    vector.print %208 : vector<11xi64>
    vector.print %209 : vector<11xi64>
    vector.print %213 : vector<11xi16>
    vector.print %218 : vector<i32>
    vector.print %221 : vector<12xi1>
    vector.print %242 : vector<11x5xf32>
    vector.print %243 : vector<11x5xf32>
    vector.print %247 : vector<11xf32>
    vector.print %c26368_i16 : i16
    vector.print %c262551551_i32 : i32
    vector.print %true : i1
    vector.print %c1497132425_i64 : i64
    vector.print %c1433010774_i32 : i32
    vector.print %cst : f32
    vector.print %true_0 : i1
    vector.print %c756762520_i64 : i64
    vector.print %cst_1 : f32
    vector.print %c945560081_i32 : i32
    vector.print %c1008141412_i64 : i64
    vector.print %cst_2 : f16
    vector.print %c1683208616_i64 : i64
    vector.print %c475380494_i32 : i32
    vector.print %c10649_i16 : i16
    vector.print %c1211232998_i32 : i32
    vector.print %true_29 : i1
    vector.print %92 : f16
    vector.print %108 : f32
    vector.print %c1_i64 : i64
    vector.print %extracted : i32
    vector.print %true_54 : i1
    vector.print %false : i1
    return
  }
}
