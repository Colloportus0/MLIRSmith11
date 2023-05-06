module {
  func.func private @func1() {
    %false = arith.constant false
    %c1057748619_i32 = arith.constant 1057748619 : i32
    %c1195970654_i64 = arith.constant 1195970654 : i64
    %cst = arith.constant 1.41361882E+9 : f32
    %c2009554598_i64 = arith.constant 2009554598 : i64
    %c-19938_i16 = arith.constant -19938 : i16
    %c970697758_i32 = arith.constant 970697758 : i32
    %cst_0 = arith.constant 0x4D1BEE5C : f32
    %c657789472_i64 = arith.constant 657789472 : i64
    %false_1 = arith.constant false
    %cst_2 = arith.constant 1.84588826E+9 : f32
    %c769945355_i64 = arith.constant 769945355 : i64
    %c2144428619_i32 = arith.constant 2144428619 : i32
    %c1465428232_i64 = arith.constant 1465428232 : i64
    %c463091493_i32 = arith.constant 463091493 : i32
    %c912415966_i64 = arith.constant 912415966 : i64
    %0 = tensor.empty() : tensor<13xi64>
    %1 = tensor.empty() : tensor<14xi1>
    %2 = tensor.empty() : tensor<3x13xf16>
    %3 = tensor.empty() : tensor<13xi64>
    %4 = tensor.empty() : tensor<14xf32>
    %5 = tensor.empty() : tensor<3x13xi32>
    %6 = tensor.empty() : tensor<3x3x3xi64>
    %7 = tensor.empty() : tensor<3x3x3xi16>
    %8 = tensor.empty() : tensor<3x3x3xi32>
    %9 = tensor.empty() : tensor<13xf32>
    %10 = tensor.empty() : tensor<14xf16>
    %11 = tensor.empty() : tensor<3x3x3xi64>
    %12 = tensor.empty() : tensor<14xi16>
    %13 = tensor.empty() : tensor<3x13xf16>
    %14 = tensor.empty() : tensor<13xi32>
    %15 = tensor.empty() : tensor<3x3x3xf32>
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
    %alloc = memref.alloc() : memref<3x13xf16>
    %alloc_3 = memref.alloc() : memref<14xi64>
    %alloc_4 = memref.alloc() : memref<13xf32>
    %alloc_5 = memref.alloc() : memref<13xf32>
    %alloc_6 = memref.alloc() : memref<3x3x3xi64>
    %alloc_7 = memref.alloc() : memref<3x3x3xf16>
    %alloc_8 = memref.alloc() : memref<14xi1>
    %alloc_9 = memref.alloc() : memref<13xi1>
    %alloc_10 = memref.alloc() : memref<3x3x3xi64>
    %alloc_11 = memref.alloc() : memref<3x13xi1>
    %alloc_12 = memref.alloc() : memref<13xf32>
    %alloc_13 = memref.alloc() : memref<3x3x3xi32>
    %alloc_14 = memref.alloc() : memref<3x13xi64>
    %alloc_15 = memref.alloc() : memref<14xi16>
    %alloc_16 = memref.alloc() : memref<14xf32>
    %alloc_17 = memref.alloc() : memref<3x13xi1>
    %16 = tensor.empty() : tensor<3x13xi32>
    %17 = linalg.copy ins(%5 : tensor<3x13xi32>) outs(%16 : tensor<3x13xi32>) -> tensor<3x13xi32>
    %18 = tensor.empty() : tensor<13x3xi32>
    %transposed = linalg.transpose ins(%17 : tensor<3x13xi32>) outs(%18 : tensor<13x3xi32>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<3xi64>
    %reduced = linalg.reduce ins(%11 : tensor<3x3x3xi64>) outs(%19 : tensor<3xi64>) dimensions = [0, 1] 
      (%in: i64, %init: i64) {
        memref.alloca_scope  {
          %249 = arith.addi %c-19938_i16, %c-19938_i16 : i16
          %250 = bufferization.to_memref %18 : memref<13x3xi32>
          %251 = vector.broadcast %c-19938_i16 : i16 to vector<1xi16>
          %252 = vector.broadcast %c-19938_i16 : i16 to vector<1xi16>
          %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %251, %252, %c-19938_i16 : vector<1xi16>, vector<1xi16> into i16
          %254 = bufferization.to_memref %12 : memref<14xi16>
          %255 = arith.shrsi %false_1, %false_1 : i1
          %256 = arith.ori %c2144428619_i32, %c970697758_i32 : i32
          %257 = arith.remui %c-19938_i16, %c-19938_i16 : i16
          vector.print %251 : vector<1xi16>
          %258 = math.cttz %11 : tensor<3x3x3xi64>
          %259 = vector.broadcast %false : i1 to vector<3xi1>
          %260 = vector.maskedload %alloc_17[%c2, %c8], %259, %259 : memref<3x13xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
          %261 = bufferization.to_memref %3 : memref<13xi64>
          %262 = index.castu %c1195970654_i64 : i64 to index
          %263 = math.copysign %cst_0, %cst_2 : f32
          %264 = math.sqrt %2 : tensor<3x13xf16>
          %265 = memref.realloc %alloc_3 : memref<14xi64> to memref<3xi64>
          %alloc_53 = memref.alloc() : memref<3x13xf32>
          %266 = arith.andi %false_1, %false_1 : i1
          %267 = vector.insertelement %false, %259[%c4 : index] : vector<3xi1>
          %268 = math.log10 %9 : tensor<13xf32>
          memref.store %false_1, %alloc_17[%c2, %c4] : memref<3x13xi1>
          %269 = vector.splat %c463091493_i32 : vector<3x13xi32>
          %expanded_54 = tensor.expand_shape %3 [[0, 1]] : tensor<13xi64> into tensor<13x1xi64>
          %270 = index.ceildivs %c15, %c13
          %271 = vector.bitcast %251 : vector<1xi16> to vector<1xi16>
          %272 = math.tan %2 : tensor<3x13xf16>
          %273 = math.floor %9 : tensor<13xf32>
          %274 = memref.atomic_rmw andi %c-19938_i16, %alloc_15[%c13] : (i16, memref<14xi16>) -> i16
          %275 = arith.ceildivsi %c657789472_i64, %init : i64
          memref.store %c-19938_i16, %alloc_15[%c0] : memref<14xi16>
          %276 = index.mul %270, %c7
          %277 = bufferization.clone %alloc_6 : memref<3x3x3xi64> to memref<3x3x3xi64>
          %278 = arith.xori %in, %c769945355_i64 : i64
        }
        %242 = index.casts %c3 : index to i32
        %243 = memref.realloc %alloc_4 : memref<13xf32> to memref<13xf32>
        %244 = affine.apply affine_map<(d0) -> (0)>(%c2)
        %245 = math.atan %13 : tensor<3x13xf16>
        %246 = index.ceildivs %c6, %c11
        %247 = affine.load %alloc_8[%c1] : memref<14xi1>
        %248 = arith.remf %cst_2, %cst_0 : f32
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %20 = scf.parallel (%arg0, %arg1) = (%c12, %c2) to (%c12, %c9) step (%c15, %c5) init (%alloc_9) -> memref<13xi1> {
      %242 = math.exp2 %9 : tensor<13xf32>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_53 = arith.constant 0 : i16
      %243 = vector.transfer_read %7[%c7, %c4, %arg1], %c0_i16_53 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<3x3x3xi16>, vector<14xi16>
      memref.assume_alignment %alloc_9, 1 : memref<13xi1>
      %244 = vector.broadcast %c1_i16 : i16 to vector<1xi16>
      %245 = vector.bitcast %244 : vector<1xi16> to vector<1xi16>
      %246 = arith.remsi %c1057748619_i32, %c1057748619_i32 : i32
      %247 = math.roundeven %9 : tensor<13xf32>
      vector.print %244 : vector<1xi16>
      %248 = math.ceil %13 : tensor<3x13xf16>
      %249 = index.sub %c6, %c1
      %250 = math.sqrt %15 : tensor<3x3x3xf32>
      %251 = math.floor %13 : tensor<3x13xf16>
      %252 = arith.floordivsi %c463091493_i32, %c1057748619_i32 : i32
      %253 = arith.divui %c1_i16, %c-19938_i16 : i16
      %254 = arith.ori %c-19938_i16, %c1_i16 : i16
      memref.tensor_store %12, %alloc_15 : memref<14xi16>
      %255 = arith.addf %cst_2, %cst : f32
      %alloc_54 = memref.alloc() : memref<13xi1>
      scf.reduce(%alloc_54)  : memref<13xi1> {
      ^bb0(%arg2: memref<13xi1>, %arg3: memref<13xi1>):
        %256 = math.fpowi %cst_0, %c2144428619_i32 : f32, i32
        memref.store %c2009554598_i64, %alloc_10[%c1, %c1, %c0] : memref<3x3x3xi64>
        %cst_55 = arith.constant 1.000000e+00 : f16
        %from_elements_56 = tensor.from_elements %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55, %cst_55 : tensor<13xf16>
        %257 = math.log2 %4 : tensor<14xf32>
        %258 = vector.extract_strided_slice %244 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %259 = arith.minui %c1057748619_i32, %c1057748619_i32 : i32
        %260 = arith.remf %cst_0, %cst_0 : f32
        %261 = math.absi %14 : tensor<13xi32>
        %alloc_57 = memref.alloc() : memref<13xi1>
        scf.reduce.return %alloc_57 : memref<13xi1>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_6[%c13, %c2, %c13] : memref<3x3x3xi64>, vector<3xi64>
    affine.vector_store %21, %alloc_3[%c7] : memref<14xi64>, vector<3xi64>
    %22 = tensor.empty() : tensor<13xi64>
    %23 = tensor.empty() : tensor<i64>
    %24 = linalg.dot ins(%3, %22 : tensor<13xi64>, tensor<13xi64>) outs(%23 : tensor<i64>) -> tensor<i64>
    %25 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %21, %21, %c1465428232_i64 : vector<3xi64>, vector<3xi64> into i64
    memref.store %cst_2, %alloc_5[%c5] : memref<13xf32>
    %26 = arith.negf %cst : f32
    %27 = arith.remf %cst_2, %cst_2 : f32
    %28 = arith.remf %cst_0, %cst_2 : f32
    %29 = math.floor %10 : tensor<14xf16>
    %false_18 = index.bool.constant false
    %c26516_i16 = arith.constant 26516 : i16
    %30 = arith.shrui %c463091493_i32, %c2144428619_i32 : i32
    %31 = math.log10 %10 : tensor<14xf16>
    %32 = arith.remf %cst_0, %cst_2 : f32
    %true = index.bool.constant true
    %33 = vector.broadcast %c2009554598_i64 : i64 to vector<13x13xi64>
    %34 = vector.transfer_write %33, %11[%c6, %c12, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<13x13xi64>, tensor<3x3x3xi64>
    %35 = vector.multi_reduction <minui>, %21, %21 [] : vector<3xi64> to vector<3xi64>
    %36 = math.roundeven %10 : tensor<14xf16>
    %37 = index.castu %c6 : index to i32
    %38 = vector.create_mask %c9, %c13 : vector<3x13xi1>
    %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<3x13xf16> into tensor<39xf16>
    %alloc_19 = memref.alloc() : memref<13xi1>
    %39 = math.exp %4 : tensor<14xf32>
    %40 = math.ceil %9 : tensor<13xf32>
    memref.copy %alloc_12, %alloc_4 : memref<13xf32> to memref<13xf32>
    vector.print %33 : vector<13x13xi64>
    %cast = tensor.cast %17 : tensor<3x13xi32> to tensor<?x?xi32>
    %41 = vector.reduction <or>, %21 : vector<3xi64> into i64
    affine.store %c912415966_i64, %alloc_6[%c15, %c2, %c15] : memref<3x3x3xi64>
    %42 = math.round %4 : tensor<14xf32>
    %43 = index.ceildivs %c15, %c15
    %44 = arith.negf %cst : f32
    %cast_20 = tensor.cast %7 : tensor<3x3x3xi16> to tensor<?x?x?xi16>
    %45 = math.cttz %c769945355_i64 : i64
    %46 = vector.broadcast %c2009554598_i64 : i64 to vector<13xi64>
    %47 = vector.insert %46, %33 [3] : vector<13xi64> into vector<13x13xi64>
    %collapsed_21 = tensor.collapse_shape %cast_20 [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
    %48 = math.rsqrt %cst : f32
    %49 = memref.load %alloc_14[%c0, %c9] : memref<3x13xi64>
    %50 = math.cos %13 : tensor<3x13xf16>
    %51 = vector.reduction <add>, %46 : vector<13xi64> into i64
    %52 = index.castu %c13 : index to i32
    %53 = vector.broadcast %c1195970654_i64 : i64 to vector<3x3xi64>
    %54 = vector.outerproduct %21, %21, %53 {kind = #vector.kind<and>} : vector<3xi64>, vector<3xi64>
    %55 = index.ceildivu %c5, %c14
    %56 = scf.while (%arg0 = %c657789472_i64) : (i64) -> i64 {
      %242 = arith.minf %cst_2, %cst : f32
      %dest_53, %accumulated_value_54 = vector.scan <minui>, %33, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<13x13xi64>, vector<13xi64>
      %243 = vector.broadcast %c8 : index to vector<14xindex>
      %244 = vector.broadcast %true : i1 to vector<14xi1>
      %245 = vector.broadcast %c-19938_i16 : i16 to vector<14xi16>
      vector.scatter %alloc_15[%c7] [%243], %244, %245 : memref<14xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
      %246 = math.cttz %11 : tensor<3x3x3xi64>
      %247 = index.castu %c5 : index to i32
      %248 = index.casts %c12 : index to i32
      %249 = arith.shli %c2144428619_i32, %c970697758_i32 : i32
      %250 = math.ctpop %c970697758_i32 : i32
      scf.condition(%false) %c657789472_i64 : i64
    } do {
    ^bb0(%arg0: i64):
      %alloc_53 = memref.alloc() : memref<14xi16>
      %242 = math.absi %transposed : tensor<13x3xi32>
      %243 = math.cttz %c2144428619_i32 : i32
      %244 = math.roundeven %15 : tensor<3x3x3xf32>
      %245 = arith.andi %false_18, %false_18 : i1
      %246 = arith.divsi %c1195970654_i64, %c1465428232_i64 : i64
      %247 = arith.andi %c1057748619_i32, %c1057748619_i32 : i32
      %248 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      %249 = vector.broadcast %false_18 : i1 to vector<14xi1>
      %250 = vector.broadcast %c463091493_i32 : i32 to vector<14xi32>
      %251 = vector.gather %9[%c2] [%250], %249, %248 : tensor<13xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %252 = index.maxs %c10, %c8
      %253 = tensor.empty() : tensor<14xi16>
      %mapped_54 = linalg.map ins(%12 : tensor<14xi16>) outs(%253 : tensor<14xi16>)
        (%in: i16) {
          %expanded_55 = tensor.expand_shape %collapsed [[0, 1]] : tensor<39xf16> into tensor<39x1xf16>
          %rank_56 = tensor.rank %8 : tensor<3x3x3xi32>
          %260 = vector.broadcast %c1465428232_i64 : i64 to vector<3x3xi64>
          %261 = vector.outerproduct %21, %21, %260 {kind = #vector.kind<and>} : vector<3xi64>, vector<3xi64>
          %262 = math.absi %0 : tensor<13xi64>
          %263 = arith.shli %false_1, %false : i1
          %264 = arith.addi %false, %false_1 : i1
          %265 = math.ceil %10 : tensor<14xf16>
          %266 = math.ctpop %false : i1
          %267 = math.exp2 %2 : tensor<3x13xf16>
          %268 = math.copysign %9, %9 : tensor<13xf32>
          %269 = math.cttz %false_18 : i1
          %270 = arith.floordivsi %c463091493_i32, %c2144428619_i32 : i32
          memref.store %in, %alloc_15[%c0] : memref<14xi16>
          %271 = math.fma %13, %2, %2 : tensor<3x13xf16>
          %272 = affine.min affine_map<(d0, d1) -> (d1 - 72, -(d0 floordiv 32 + d0) + 2)>(%c3, %c6)
          %273 = arith.andi %c-19938_i16, %c-19938_i16 : i16
          %extracted = tensor.extract %10[%c10] : tensor<14xf16>
          %274 = arith.addf %extracted, %extracted : f16
          %275 = math.ctpop %16 : tensor<3x13xi32>
          %276 = math.tanh %10 : tensor<14xf16>
          %277 = math.rsqrt %2 : tensor<3x13xf16>
          %278 = math.ceil %expanded_55 : tensor<39x1xf16>
          %alloca_57 = memref.alloca() : memref<13xi32>
          %279 = math.roundeven %10 : tensor<14xf16>
          %280 = arith.addi %false_1, %false : i1
          %281 = math.powf %2, %2 : tensor<3x13xf16>
          bufferization.dealloc_tensor %22 : tensor<13xi64>
          vector.print %251 : vector<14xf32>
          affine.store %extracted, %alloc[%c15, %c12] : memref<3x13xf16>
          %282 = math.cos %10 : tensor<14xf16>
          %283 = arith.minf %cst_0, %cst : f32
          %284 = vector.splat %c1465428232_i64 : vector<3x3x3xi64>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %254 = bufferization.to_memref %0 : memref<13xi64>
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %250, %250, %c2144428619_i32 : vector<14xi32>, vector<14xi32> into i32
      %256 = arith.remf %cst_0, %cst_2 : f32
      %257 = math.exp %2 : tensor<3x13xf16>
      %258 = vector.transpose %251, [0] : vector<14xf32> to vector<14xf32>
      %259 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, (d0 ceildiv 2 - 8) floordiv 32, -(d3 mod 32))>(%c13, %252, %43, %c13)
      scf.yield %arg0 : i64
    }
    %57 = arith.xori %false_1, %true : i1
    %alloc_22 = memref.alloc() : memref<3x3x3xi32>
    memref.copy %alloc_13, %alloc_22 : memref<3x3x3xi32> to memref<3x3x3xi32>
    %true_23 = index.bool.constant true
    %58 = math.fpowi %13, %5 : tensor<3x13xf16>, tensor<3x13xi32>
    %59 = arith.minui %c2009554598_i64, %c769945355_i64 : i64
    %dest, %accumulated_value = vector.scan <maxui>, %33, %46 {inclusive = true, reduction_dim = 1 : i64} : vector<13x13xi64>, vector<13xi64>
    %expanded = tensor.expand_shape %22 [[0, 1]] : tensor<13xi64> into tensor<13x1xi64>
    %60 = index.maxu %c10, %c1
    %61 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
    %rank = tensor.rank %15 : tensor<3x3x3xf32>
    %62 = math.absi %6 : tensor<3x3x3xi64>
    vector.print %38 : vector<3x13xi1>
    %63 = arith.remsi %false, %false : i1
    %cst_24 = arith.constant 1.000000e+00 : f16
    %64 = vector.broadcast %cst_24 : f16 to vector<f16>
    %65 = vector.transfer_write %64, %collapsed[%c9] : vector<f16>, tensor<39xf16>
    %66 = vector.insert %46, %33 [6] : vector<13xi64> into vector<13x13xi64>
    %true_25 = index.bool.constant true
    %67 = math.ceil %13 : tensor<3x13xf16>
    %68 = math.round %9 : tensor<13xf32>
    %69 = arith.xori %false, %false : i1
    memref.assume_alignment %alloc_12, 16 : memref<13xf32>
    %70 = index.mul %c8, %c14
    %71 = arith.minui %c1057748619_i32, %c970697758_i32 : i32
    %72 = math.atan2 %collapsed, %collapsed : tensor<39xf16>
    %73 = index.floordivs %43, %c2
    %74 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %21, %21, %c2009554598_i64 : vector<3xi64>, vector<3xi64> into i64
    bufferization.dealloc_tensor %7 : tensor<3x3x3xi16>
    memref.assume_alignment %alloc_9, 2 : memref<13xi1>
    bufferization.dealloc_tensor %11 : tensor<3x3x3xi64>
    %75 = math.cttz %true : i1
    %76 = math.absi %c657789472_i64 : i64
    %77 = memref.load %alloc[%c2, %c3] : memref<3x13xf16>
    %78 = math.exp2 %10 : tensor<14xf16>
    %79 = memref.load %alloc_3[%c11] : memref<14xi64>
    %80 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %21, %61, %c769945355_i64 : vector<3xi64>, vector<3xi64> into i64
    scf.if %false_1 {
      %242 = vector.load %alloc_6[%c1, %c0, %c2] : memref<3x3x3xi64>, vector<3x13xi64>
      %dest_53, %accumulated_value_54 = vector.scan <or>, %242, %61 {inclusive = false, reduction_dim = 1 : i64} : vector<3x13xi64>, vector<3xi64>
      vector.print %46 : vector<13xi64>
      %243 = math.exp %cst : f32
      %244 = math.cos %15 : tensor<3x3x3xf32>
      %245 = vector.insertelement %c657789472_i64, %61[%70 : index] : vector<3xi64>
      %246 = arith.shli %false, %false : i1
      %247 = vector.load %alloc_7[%c1, %c2, %c1] : memref<3x3x3xf16>, vector<3x3x3xf16>
    } else {
      %alloca_53 = memref.alloca() : memref<13xi1>
      %242 = math.expm1 %cst_2 : f32
      %243 = math.ctpop %5 : tensor<3x13xi32>
      %244 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 136)>(%55, %c14, %c0, %c11)
      %245 = memref.atomic_rmw maxs %c-19938_i16, %alloc_15[%c9] : (i16, memref<14xi16>) -> i16
      %246 = tensor.empty() : tensor<3x3x3xi32>
      %mapped_54 = linalg.map ins(%alloc_13 : memref<3x3x3xi32>) outs(%246 : tensor<3x3x3xi32>)
        (%in: i32) {
          %249 = vector.transpose %64, [] : vector<f16> to vector<f16>
          %250 = index.castu %60 : index to i32
          %251 = tensor.empty(%c6) : tensor<?xi16>
          %252 = arith.ceildivsi %c912415966_i64, %c1465428232_i64 : i64
          %253 = math.ctpop %c2144428619_i32 : i32
          %254 = tensor.empty() : tensor<13xi64>
          %255 = math.tan %2 : tensor<3x13xf16>
          %256 = math.copysign %cst, %cst_2 : f32
          %expanded_55 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<13x3xi32> into tensor<13x3x1xi32>
          %257 = affine.min affine_map<(d0, d1) -> ((((d1 floordiv 16) ceildiv 8) ceildiv 128 - 128) * 128)>(%c14, %c11)
          memref.tensor_store %8, %alloc_13 : memref<3x3x3xi32>
          %258 = math.ceil %10 : tensor<14xf16>
          %259 = bufferization.clone %alloc_8 : memref<14xi1> to memref<14xi1>
          %260 = math.fpowi %9, %14 : tensor<13xf32>, tensor<13xi32>
          %rank_56 = tensor.rank %11 : tensor<3x3x3xi64>
          %261 = math.fpowi %2, %5 : tensor<3x13xf16>, tensor<3x13xi32>
          %262 = arith.shrui %false_1, %true_23 : i1
          %263 = vector.splat %c7 : vector<14xindex>
          %264 = vector.insertelement %c1195970654_i64, %46[%rank : index] : vector<13xi64>
          %265 = math.cttz %c657789472_i64 : i64
          %266 = arith.shli %c970697758_i32, %c1057748619_i32 : i32
          %267 = math.round %13 : tensor<3x13xf16>
          %268 = index.ceildivu %c13, %c15
          %269 = math.atan2 %15, %15 : tensor<3x3x3xf32>
          %alloc_57 = memref.alloc() : memref<14xi64>
          memref.copy %alloc_3, %alloc_57 : memref<14xi64> to memref<14xi64>
          %cast_58 = tensor.cast %14 : tensor<13xi32> to tensor<?xi32>
          %270 = vector.reduction <or>, %61 : vector<3xi64> into i64
          %271 = bufferization.to_memref %11 : memref<3x3x3xi64>
          %272 = arith.maxf %cst_0, %cst_0 : f32
          %273 = math.exp2 %9 : tensor<13xf32>
          %274 = math.log1p %4 : tensor<14xf32>
          %275 = bufferization.clone %alloc_14 : memref<3x13xi64> to memref<3x13xi64>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %247 = arith.remui %c-19938_i16, %c-19938_i16 : i16
      %248 = math.log2 %9 : tensor<13xf32>
    }
    %81 = math.cos %15 : tensor<3x3x3xf32>
    %82 = tensor.empty() : tensor<3x3x3xi32>
    %mapped = linalg.map ins(%8, %alloc_13 : tensor<3x3x3xi32>, memref<3x3x3xi32>) outs(%82 : tensor<3x3x3xi32>)
      (%in: i32, %in_53: i32) {
        %242 = vector.extract_strided_slice %33 {offsets = [2], sizes = [10], strides = [1]} : vector<13x13xi64> to vector<10x13xi64>
        %243 = vector.flat_transpose %46 {columns = 13 : i32, rows = 1 : i32} : vector<13xi64> -> vector<13xi64>
        %244 = index.ceildivu %c6, %c2
        memref.tensor_store %13, %alloc : memref<3x13xf16>
        %245 = vector.extract_strided_slice %33 {offsets = [4], sizes = [3], strides = [1]} : vector<13x13xi64> to vector<3x13xi64>
        %246 = arith.divsi %in, %c463091493_i32 : i32
        %247 = math.roundeven %2 : tensor<3x13xf16>
        %248 = vector.create_mask %73, %c6 : vector<3x13xi1>
        %249 = vector.broadcast %c-19938_i16 : i16 to vector<i16>
        %250 = vector.transfer_write %249, %12[%c3] : vector<i16>, tensor<14xi16>
        %251 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %252 = index.castu %c657789472_i64 : i64 to index
        %alloc_54 = memref.alloc() : memref<13xi16>
        %253 = math.expm1 %cst_24 : f16
        %254 = arith.minui %in_53, %in : i32
        %255 = memref.atomic_rmw minf %cst, %alloc_5[%c0] : (f32, memref<13xf32>) -> f32
        %256 = vector.insertelement %c-19938_i16, %249[] : vector<i16>
        %257 = index.casts %244 : index to i32
        %258 = arith.ceildivsi %true_23, %true_25 : i1
        %259 = affine.load %alloc_7[%c4, %c9, %c1] : memref<3x3x3xf16>
        %260 = index.mul %c11, %c9
        %expanded_55 = tensor.expand_shape %3 [[0, 1]] : tensor<13xi64> into tensor<13x1xi64>
        %261 = index.maxu %244, %c6
        %262 = memref.load %alloc_8[%c8] : memref<14xi1>
        %263 = arith.andi %c1057748619_i32, %in : i32
        %264 = bufferization.to_memref %5 : memref<3x13xi32>
        %265 = vector.create_mask %c9, %c4 : vector<3x13xi1>
        %266 = bufferization.to_tensor %alloc_12 : memref<13xf32>
        %267 = math.round %259 : f16
        %inserted_56 = tensor.insert %c2009554598_i64 into %0[%c9] : tensor<13xi64>
        %268 = memref.realloc %alloc_5 : memref<13xf32> to memref<3xf32>
        %269 = scf.while (%arg0 = %264) : (memref<3x13xi32>) -> memref<3x13xi32> {
          %270 = index.divu %c8, %c5
          %271 = vector.broadcast %259 : f16 to vector<14xf16>
          %272 = math.fpowi %9, %14 : tensor<13xf32>, tensor<13xi32>
          memref.store %c657789472_i64, %alloc_14[%c1, %c7] : memref<3x13xi64>
          %273 = math.log10 %2 : tensor<3x13xf16>
          %alloc_57 = memref.alloc() : memref<3x13xf16>
          %274 = math.round %9 : tensor<13xf32>
          %275 = math.ctpop %7 : tensor<3x3x3xi16>
          scf.condition(%true) %arg0 : memref<3x13xi32>
        } do {
        ^bb0(%arg0: memref<3x13xi32>):
          memref.store %259, %alloc_7[%c0, %c0, %c2] : memref<3x3x3xf16>
          %270 = arith.addf %cst_0, %cst_2 : f32
          %271 = math.roundeven %collapsed : tensor<39xf16>
          %272 = arith.minui %in, %c2144428619_i32 : i32
          %273 = math.cttz %12 : tensor<14xi16>
          %274 = index.casts %false_1 : i1 to index
          %275 = arith.ori %c657789472_i64, %c769945355_i64 : i64
          %276 = math.log10 %2 : tensor<3x13xf16>
          %277 = vector.insertelement %259, %64[] : vector<f16>
          %278 = index.sizeof
          memref.copy %264, %arg0 : memref<3x13xi32> to memref<3x13xi32>
          %279 = index.castu %c4 : index to i32
          %from_elements_57 = tensor.from_elements %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16 : tensor<14xi16>
          %280 = arith.xori %true_23, %false : i1
          %281 = vector.broadcast %c769945355_i64 : i64 to vector<3x10xi64>
          %282 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %245, %242, %281 : vector<3x13xi64>, vector<10x13xi64> into vector<3x10xi64>
          memref.tensor_store %4, %alloc_16 : memref<14xf32>
          scf.yield %arg0 : memref<3x13xi32>
        }
        scf.if %true_23 {
          %270 = arith.addi %true_25, %true_23 : i1
          %271 = math.absi %7 : tensor<3x3x3xi16>
          %272 = vector.reduction <or>, %243 : vector<13xi64> into i64
          %273 = math.exp %266 : tensor<13xf32>
          %274 = arith.andi %c1465428232_i64, %c1465428232_i64 : i64
          memref.tensor_store %8, %alloc_13 : memref<3x3x3xi32>
          %from_elements_57 = tensor.from_elements %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_0, %cst : tensor<3x13xf32>
          %275 = math.roundeven %collapsed : tensor<39xf16>
        } else {
          %270 = vector.bitcast %33 : vector<13x13xi64> to vector<13x13xi64>
          %splat_57 = tensor.splat %in_53 : tensor<13xi32>
          %271 = tensor.empty() : tensor<1x14xi64>
          %272 = tensor.empty() : tensor<13x14xi64>
          %273 = linalg.matmul ins(%expanded_55, %271 : tensor<13x1xi64>, tensor<1x14xi64>) outs(%272 : tensor<13x14xi64>) -> tensor<13x14xi64>
          %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %33, %33, %33 : vector<13x13xi64>, vector<13x13xi64> into vector<13x13xi64>
          %275 = math.ctpop %5 : tensor<3x13xi32>
          %276 = memref.load %alloc_11[%c0, %c8] : memref<3x13xi1>
          %277 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 + d3) * 128, d2 + d0, d3)>(%c0, %c6, %c6, %73)
          %alloc_58 = memref.alloc() : memref<13xi64>
        }
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %83 = vector.broadcast %cst_24 : f16 to vector<3xf16>
    %84 = vector.broadcast %true_23 : i1 to vector<3xi1>
    %85 = vector.maskedload %alloc[%c2, %c12], %84, %83 : memref<3x13xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    %86 = vector.load %alloc_11[%c0, %c11] : memref<3x13xi1>, vector<14xi1>
    %87 = math.roundeven %cst_2 : f32
    %88 = arith.minui %c2009554598_i64, %c1465428232_i64 : i64
    %89 = vector.maskedload %alloc_9[%c11], %86, %86 : memref<13xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
    %90 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %33, %46, %46 : vector<13x13xi64>, vector<13xi64> into vector<13xi64>
    %91 = arith.remf %cst_2, %cst_0 : f32
    %92 = index.sizeof
    %93 = math.copysign %2, %2 : tensor<3x13xf16>
    %94 = math.round %cst : f32
    %95 = math.ipowi %11, %6 : tensor<3x3x3xi64>
    %96 = index.casts %c1195970654_i64 : i64 to index
    %97 = scf.index_switch %c2 -> vector<13xi32> 
    case 1 {
      %242 = arith.xori %true, %false_1 : i1
      affine.store %cst_2, %alloc_5[%c1] : memref<13xf32>
      %243 = math.tan %cst_2 : f32
      %244 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      %245 = vector.fma %244, %244, %244 : vector<14xf32>
      %246 = vector.insert %cst_24, %83 [0] : f16 into vector<3xf16>
      %247 = arith.remf %cst, %cst : f32
      %splat_53 = tensor.splat %true_23 : tensor<3x13xi1>
      %c126454453_i32 = arith.constant 126454453 : i32
      %248 = arith.negf %cst_2 : f32
      %249 = memref.load %alloc_3[%c12] : memref<14xi64>
      %rank_54 = tensor.rank %0 : tensor<13xi64>
      %250 = vector.reduction <maxui>, %21 : vector<3xi64> into i64
      %251 = arith.minf %cst, %cst_0 : f32
      bufferization.dealloc_tensor %4 : tensor<14xf32>
      %252 = math.exp2 %9 : tensor<13xf32>
      %253 = math.cttz %6 : tensor<3x3x3xi64>
      %254 = vector.broadcast %c1057748619_i32 : i32 to vector<13xi32>
      scf.yield %254 : vector<13xi32>
    }
    case 2 {
      %242 = math.cos %cst_24 : f16
      %243 = math.fma %4, %4, %4 : tensor<14xf32>
      bufferization.dealloc_tensor %11 : tensor<3x3x3xi64>
      %244 = math.exp %4 : tensor<14xf32>
      %245 = math.floor %10 : tensor<14xf16>
      %246 = arith.xori %c1465428232_i64, %c1465428232_i64 : i64
      %247 = arith.minsi %c970697758_i32, %c2144428619_i32 : i32
      %248 = arith.cmpi ult, %c2144428619_i32, %c970697758_i32 : i32
      %249 = bufferization.clone %alloc_17 : memref<3x13xi1> to memref<3x13xi1>
      affine.for %arg0 = 0 to 31 {
      }
      %250 = math.absi %7 : tensor<3x3x3xi16>
      %collapsed_53 = tensor.collapse_shape %5 [[0, 1]] : tensor<3x13xi32> into tensor<39xi32>
      %251 = arith.remf %cst_0, %cst_0 : f32
      %252 = arith.cmpf ole, %cst_0, %cst_2 : f32
      %253 = bufferization.to_memref %4 : memref<14xf32>
      %rank_54 = tensor.rank %22 : tensor<13xi64>
      %254 = vector.broadcast %c1057748619_i32 : i32 to vector<13xi32>
      scf.yield %254 : vector<13xi32>
    }
    case 3 {
      %242 = vector.broadcast %c2009554598_i64 : i64 to vector<14xi64>
      vector.transfer_write %242, %alloc_6[%c3, %c4, %92] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xi64>, memref<3x3x3xi64>
      %243 = vector.extract_strided_slice %21 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi64> to vector<1xi64>
      memref.tensor_store %4, %alloc_16 : memref<14xf32>
      scf.index_switch %55 
      case 1 {
        %252 = vector.load %alloc_4[%c6] : memref<13xf32>, vector<14xf32>
        %253 = arith.maxf %cst_2, %cst : f32
        %254 = index.maxs %96, %c6
        %255 = affine.min affine_map<(d0, d1, d2) -> ((d2 floordiv 32) * 128 - 64, (d2 floordiv 32) * 128, d2 floordiv 32)>(%96, %c8, %c7)
        %256 = math.fpowi %2, %5 : tensor<3x13xf16>, tensor<3x13xi32>
        %257 = vector.bitcast %21 : vector<3xi64> to vector<3xi64>
        %258 = math.absf %10 : tensor<14xf16>
        %259 = arith.shli %c769945355_i64, %c657789472_i64 : i64
        %expanded_55 = tensor.expand_shape %9 [[0, 1]] : tensor<13xf32> into tensor<13x1xf32>
        memref.store %c2144428619_i32, %alloc_13[%c2, %c1, %c2] : memref<3x3x3xi32>
        %260 = vector.reduction <maxui>, %84 : vector<3xi1> into i1
        %261 = vector.insert %c769945355_i64, %46 [11] : i64 into vector<13xi64>
        %262 = arith.divsi %true, %false_18 : i1
        %263 = math.rsqrt %2 : tensor<3x13xf16>
        %264 = affine.load %alloc_9[%c4] : memref<13xi1>
        %265 = math.tan %cst_2 : f32
        scf.yield
      }
      case 2 {
        %alloc_55 = memref.alloc() : memref<13x14xf16>
        %252 = tensor.empty() : tensor<3x14xf16>
        %253 = linalg.matmul ins(%2, %alloc_55 : tensor<3x13xf16>, memref<13x14xf16>) outs(%252 : tensor<3x14xf16>) -> tensor<3x14xf16>
        %254 = arith.andi %true, %false_18 : i1
        %cast_56 = tensor.cast %11 : tensor<3x3x3xi64> to tensor<?x?x?xi64>
        %255 = arith.addf %cst_24, %cst_24 : f16
        vector.print %38 : vector<3x13xi1>
        %256 = vector.broadcast %false : i1 to vector<13xi1>
        %257 = vector.maskedload %alloc_10[%c0, %c0, %c1], %256, %46 : memref<3x3x3xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
        %258 = vector.load %alloc_13[%c0, %c0, %c1] : memref<3x3x3xi32>, vector<3x13xi32>
        %alloc_57 = memref.alloc() : memref<13xi64>
        memref.tensor_store %0, %alloc_57 : memref<13xi64>
        %259 = bufferization.to_tensor %alloc_7 : memref<3x3x3xf16>
        %260 = index.mul %c5, %96
        %261 = vector.broadcast %cst_2 : f32 to vector<f32>
        %262 = vector.transfer_write %261, %4[%92] : vector<f32>, tensor<14xf32>
        %inserted_58 = tensor.insert %c1057748619_i32 into %14[%c2] : tensor<13xi32>
        %263 = affine.max affine_map<(d0, d1, d2) -> (d2, d2 * 32, d2 * 32 + 1, d1 mod 8)>(%c5, %c12, %c14)
        %264 = index.castu %c8 : index to i32
        %265 = arith.xori %c2009554598_i64, %c1195970654_i64 : i64
        %266 = math.atan2 %15, %15 : tensor<3x3x3xf32>
        scf.yield
      }
      case 3 {
        %252 = math.ctlz %c2009554598_i64 : i64
        %cst_55 = arith.constant 0x4C7596C6 : f32
        %253 = affine.load %alloc_15[%c4] : memref<14xi16>
        %254 = vector.broadcast %c463091493_i32 : i32 to vector<3x13xi32>
        %255 = arith.minui %253, %c-19938_i16 : i16
        %256 = vector.broadcast %cst : f32 to vector<3x3x3xf32>
        %257 = vector.fma %256, %256, %256 : vector<3x3x3xf32>
        %258 = index.sizeof
        %259 = index.maxu %c9, %c3
        %splat_56 = tensor.splat %false : tensor<13xi1>
        %260 = arith.andi %c1465428232_i64, %c1465428232_i64 : i64
        memref.tensor_store %8, %alloc_13 : memref<3x3x3xi32>
        %261 = math.ctlz %c657789472_i64 : i64
        %262 = math.atan %4 : tensor<14xf32>
        %263 = index.sizeof
        %264 = math.absi %true_23 : i1
        %265 = math.log2 %9 : tensor<13xf32>
        scf.yield
      }
      case 4 {
        memref.store %false, %alloc_8[%c5] : memref<14xi1>
        %252 = vector.insert %c912415966_i64, %243 [0] : i64 into vector<1xi64>
        %253 = math.round %cst : f32
        %254 = index.maxu %73, %c11
        %255 = math.floor %4 : tensor<14xf32>
        %cast_55 = tensor.cast %13 : tensor<3x13xf16> to tensor<?x?xf16>
        %256 = memref.atomic_rmw addi %c657789472_i64, %alloc_14[%c0, %c9] : (i64, memref<3x13xi64>) -> i64
        %257 = vector.insertelement %false, %84[%60 : index] : vector<3xi1>
        bufferization.dealloc_tensor %3 : tensor<13xi64>
        %258 = index.mul %c7, %c12
        %259 = memref.realloc %alloc_8 : memref<14xi1> to memref<3xi1>
        %260 = arith.ori %c463091493_i32, %c463091493_i32 : i32
        %261 = math.log %collapsed : tensor<39xf16>
        memref.assume_alignment %alloc_4, 4 : memref<13xf32>
        %262 = math.round %15 : tensor<3x3x3xf32>
        %263 = arith.minui %c2009554598_i64, %c912415966_i64 : i64
        scf.yield
      }
      default {
        %252 = arith.remf %cst, %cst_0 : f32
        %253 = vector.broadcast %cst_24 : f16 to vector<3x3xf16>
        %254 = vector.outerproduct %85, %85, %253 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
        %255 = math.log %10 : tensor<14xf16>
        %256 = affine.apply affine_map<(d0) -> (0)>(%c11)
        %257 = vector.broadcast %false_1 : i1 to vector<13xi1>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %38, %257 {inclusive = true, reduction_dim = 0 : i64} : vector<3x13xi1>, vector<13xi1>
        %258 = affine.load %alloc_15[%c13] : memref<14xi16>
        %259 = math.tan %10 : tensor<14xf16>
        %260 = arith.xori %c1057748619_i32, %c2144428619_i32 : i32
        %261 = math.fma %4, %4, %4 : tensor<14xf32>
        %262 = math.round %cst : f32
        %263 = math.tan %15 : tensor<3x3x3xf32>
        %264 = bufferization.to_memref %9 : memref<13xf32>
        %265 = vector.bitcast %61 : vector<3xi64> to vector<3xi64>
        %266 = index.maxs %c5, %c10
        %267 = math.log2 %10 : tensor<14xf16>
        %268 = index.floordivs %c5, %c2
      }
      %expanded_53 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<13x3xi32> into tensor<13x3x1xi32>
      memref.tensor_store %4, %alloc_16 : memref<14xf32>
      %alloc_54 = memref.alloc() : memref<13xi1>
      %244 = arith.remui %c769945355_i64, %c1465428232_i64 : i64
      %245 = math.log %cst : f32
      %246 = arith.ceildivsi %c1195970654_i64, %c912415966_i64 : i64
      %247 = vector.maskedload %alloc_8[%c11], %84, %84 : memref<14xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
      %248 = arith.minsi %false_18, %false_1 : i1
      %249 = math.round %9 : tensor<13xf32>
      %250 = bufferization.to_memref %24 : memref<i64>
      bufferization.dealloc_tensor %expanded : tensor<13x1xi64>
      %251 = vector.broadcast %c2144428619_i32 : i32 to vector<13xi32>
      scf.yield %251 : vector<13xi32>
    }
    default {
      %242 = bufferization.to_tensor %alloc_13 : memref<3x3x3xi32>
      %243 = arith.xori %c970697758_i32, %c1057748619_i32 : i32
      %244 = index.sizeof
      %splat_53 = tensor.splat %c2009554598_i64 : tensor<13xi64>
      %245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<3x3x3xi32>) {
      ^bb0(%out: i32):
        %257 = vector.insertelement %true, %89[%c13 : index] : vector<14xi1>
        %258 = memref.atomic_rmw minf %cst_0, %alloc_5[%c11] : (f32, memref<13xf32>) -> f32
        %259 = math.exp %9 : tensor<13xf32>
        %260 = arith.divsi %true, %true_25 : i1
        %261 = math.cos %cst_0 : f32
        %262 = math.sqrt %cst : f32
        %alloc_55 = memref.alloc() : memref<14xi16>
        %263 = math.absf %10 : tensor<14xf16>
        %264 = index.mul %c12, %c4
        %265 = arith.addi %c1465428232_i64, %c1195970654_i64 : i64
        %266 = arith.remf %cst_0, %cst_2 : f32
        %alloc_56 = memref.alloc() : memref<i64>
        memref.tensor_store %24, %alloc_56 : memref<i64>
        %267 = arith.shrsi %c657789472_i64, %c1195970654_i64 : i64
        %268 = math.ceil %cst_0 : f32
        %269 = tensor.empty() : tensor<3x3xi32>
        %270 = linalg.matmul ins(%5, %transposed : tensor<3x13xi32>, tensor<13x3xi32>) outs(%269 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %271 = arith.maxf %cst_24, %cst_24 : f16
        %272 = index.sizeof
        %273 = math.floor %2 : tensor<3x13xf16>
        memref.tensor_store %242, %alloc_13 : memref<3x3x3xi32>
        vector.print %85 : vector<3xf16>
        %274 = vector.flat_transpose %89 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
        %275 = arith.floordivsi %c463091493_i32, %c463091493_i32 : i32
        %expanded_57 = tensor.expand_shape %14 [[0, 1]] : tensor<13xi32> into tensor<13x1xi32>
        %276 = math.atan %15 : tensor<3x3x3xf32>
        %277 = affine.max affine_map<(d0, d1) -> (d1 - 16, d1 + 32, (d1 floordiv 4) floordiv 16 - d0 floordiv 32)>(%c4, %c4)
        %rank_58 = tensor.rank %1 : tensor<14xi1>
        %alloc_59 = memref.alloc() : memref<13xf32>
        %278 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 32 + 2, d2 ceildiv 64, d3, d0 floordiv 8)>(%55, %c8, %c9, %277)
        %279 = arith.cmpf one, %cst_2, %cst_2 : f32
        %280 = math.expm1 %cst_24 : f16
        %281 = vector.broadcast %c912415966_i64 : i64 to vector<3x13xi64>
        %282 = index.ceildivs %c11, %c13
        linalg.yield %c1057748619_i32 : i32
      } -> tensor<3x3x3xi32>
      %246 = arith.maxf %cst, %cst_2 : f32
      %expanded_54 = tensor.expand_shape %4 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
      %247 = index.sizeof
      %248 = arith.floordivsi %false_1, %true_23 : i1
      %249 = math.cttz %true_25 : i1
      %250 = math.rsqrt %10 : tensor<14xf16>
      %251 = vector.broadcast %cst : f32 to vector<13xf32>
      %252 = vector.fma %251, %251, %251 : vector<13xf32>
      %253 = vector.splat %43 : vector<3x13xindex>
      %254 = math.cttz %c657789472_i64 : i64
      %255 = index.maxs %c10, %c2
      affine.for %arg0 = 0 to 77 {
      }
      %256 = vector.broadcast %c2144428619_i32 : i32 to vector<13xi32>
      scf.yield %256 : vector<13xi32>
    }
    %98 = arith.minui %c912415966_i64, %c1195970654_i64 : i64
    %splat = tensor.splat %c970697758_i32 : tensor<3x3x3xi32>
    %99 = arith.addi %c970697758_i32, %c463091493_i32 : i32
    %100 = math.copysign %cst, %cst : f32
    %101 = vector.broadcast %cst : f32 to vector<14xf32>
    %102 = math.rsqrt %4 : tensor<14xf32>
    %103 = memref.realloc %alloc_8 : memref<14xi1> to memref<14xi1>
    %104 = index.casts %c11 : index to i32
    %105 = arith.ceildivsi %c657789472_i64, %c2009554598_i64 : i64
    %106 = math.expm1 %cst_0 : f32
    %107 = tensor.empty() : tensor<14xi32>
    %108 = math.fpowi %4, %107 : tensor<14xf32>, tensor<14xi32>
    %109 = vector.transpose %83, [0] : vector<3xf16> to vector<3xf16>
    %110 = math.ctlz %c463091493_i32 : i32
    %111 = vector.splat %c1195970654_i64 : vector<3x13xi64>
    %alloc_26 = memref.alloc() : memref<13xi32>
    %112 = index.sizeof
    %alloc_27 = memref.alloc() : memref<14xi16>
    memref.copy %alloc_15, %alloc_27 : memref<14xi16> to memref<14xi16>
    %113 = arith.addi %c2009554598_i64, %c657789472_i64 : i64
    memref.tensor_store %9, %alloc_12 : memref<13xf32>
    %114 = arith.minui %c912415966_i64, %c769945355_i64 : i64
    %115 = math.ctpop %11 : tensor<3x3x3xi64>
    %116 = arith.minui %false, %false_1 : i1
    %true_28 = index.bool.constant true
    %117 = vector.bitcast %33 : vector<13x13xi64> to vector<13x13xi64>
    %118 = index.maxs %c2, %73
    %119 = scf.if %false -> (f16) {
      %242 = scf.while (%arg0 = %84) : (vector<3xi1>) -> vector<3xi1> {
        %248 = math.round %13 : tensor<3x13xf16>
        %249 = tensor.empty() : tensor<13x14xf16>
        %250 = tensor.empty() : tensor<3x14xf16>
        %251 = linalg.matmul ins(%13, %249 : tensor<3x13xf16>, tensor<13x14xf16>) outs(%250 : tensor<3x14xf16>) -> tensor<3x14xf16>
        %252 = vector.broadcast %c-19938_i16 : i16 to vector<14xi16>
        %253 = vector.maskedload %alloc_15[%c2], %89, %252 : memref<14xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %254 = vector.bitcast %252 : vector<14xi16> to vector<14xi16>
        %255 = math.ctlz %7 : tensor<3x3x3xi16>
        %256 = math.ctpop %false_18 : i1
        %alloca_54 = memref.alloca() : memref<3x13xi64>
        %257 = arith.maxf %cst, %cst : f32
        scf.condition(%true_23) %84 : vector<3xi1>
      } do {
      ^bb0(%arg0: vector<3xi1>):
        %248 = math.ctlz %c1057748619_i32 : i32
        %249 = math.atan2 %9, %9 : tensor<13xf32>
        bufferization.dealloc_tensor %7 : tensor<3x3x3xi16>
        %250 = bufferization.to_memref %9 : memref<13xf32>
        %251 = index.mul %c15, %c8
        %252 = arith.addi %c2009554598_i64, %c2009554598_i64 : i64
        %253 = affine.apply affine_map<(d0, d1) -> (d0 - ((-d1) floordiv 32) mod 64)>(%c0, %70)
        %254 = index.ceildivs %251, %96
        %255 = vector.reduction <xor>, %61 : vector<3xi64> into i64
        %256 = math.absi %c657789472_i64 : i64
        %257 = math.exp2 %15 : tensor<3x3x3xf32>
        %258 = math.ipowi %12, %12 : tensor<14xi16>
        %259 = index.maxs %112, %c7
        %260 = vector.insertelement %false_18, %86[%c8 : index] : vector<14xi1>
        %261 = vector.transpose %86, [0] : vector<14xi1> to vector<14xi1>
        %262 = arith.remf %cst_24, %cst_24 : f16
        scf.yield %84 : vector<3xi1>
      }
      vector.print %21 : vector<3xi64>
      %243 = vector.insertelement %cst_24, %85[%c4 : index] : vector<3xf16>
      %alloc_53 = memref.alloc() : memref<14xi32>
      %244 = arith.minsi %c-19938_i16, %c-19938_i16 : i16
      %245 = index.maxs %rank, %c0
      %246 = math.fpowi %15, %8 : tensor<3x3x3xf32>, tensor<3x3x3xi32>
      %247 = vector.insert %c2009554598_i64, %46 [7] : i64 into vector<13xi64>
      scf.yield %cst_24 : f16
    } else {
      %242 = vector.insertelement %false_18, %84[%70 : index] : vector<3xi1>
      %243 = math.exp %collapsed : tensor<39xf16>
      %244 = vector.maskedload %alloc_9[%c2], %84, %84 : memref<13xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
      %245 = arith.addi %false, %true_28 : i1
      %246 = affine.for %arg0 = 0 to 119 iter_args(%arg1 = %96) -> (index) {
        affine.yield %112 : index
      }
      %247 = math.copysign %15, %15 : tensor<3x3x3xf32>
      %248 = math.log %9 : tensor<13xf32>
      %249 = memref.realloc %alloc_16 : memref<14xf32> to memref<3xf32>
      scf.yield %cst_24 : f16
    }
    %rank_29 = tensor.rank %3 : tensor<13xi64>
    %120 = vector.maskedload %alloc_17[%c0, %c7], %89, %86 : memref<3x13xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
    %121 = math.cttz %false_1 : i1
    %122 = vector.broadcast %cst : f32 to vector<3x3x3xf32>
    %123 = vector.fma %122, %122, %122 : vector<3x3x3xf32>
    %124 = arith.remf %cst_24, %119 : f16
    %125 = math.atan2 %collapsed, %collapsed : tensor<39xf16>
    %126 = vector.flat_transpose %84 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %127 = math.powf %9, %9 : tensor<13xf32>
    %alloca = memref.alloca() : memref<14xi16>
    %128 = vector.load %alloc_15[%c6] : memref<14xi16>, vector<3x3x3xi16>
    %129 = arith.ori %c1195970654_i64, %c769945355_i64 : i64
    %from_elements = tensor.from_elements %c769945355_i64, %c657789472_i64, %c769945355_i64, %c1195970654_i64, %c769945355_i64, %c2009554598_i64, %c2009554598_i64, %c912415966_i64, %c769945355_i64, %c769945355_i64, %c1195970654_i64, %c1465428232_i64, %c2009554598_i64, %c1465428232_i64, %c1195970654_i64, %c2009554598_i64, %c912415966_i64, %c1465428232_i64, %c912415966_i64, %c1195970654_i64, %c657789472_i64, %c769945355_i64, %c1195970654_i64, %c1195970654_i64, %c1465428232_i64, %c769945355_i64, %c1195970654_i64 : tensor<3x3x3xi64>
    bufferization.dealloc_tensor %11 : tensor<3x3x3xi64>
    %130 = math.absf %cst_0 : f32
    %dest_30, %accumulated_value_31 = vector.scan <minui>, %38, %84 {inclusive = true, reduction_dim = 1 : i64} : vector<3x13xi1>, vector<3xi1>
    %131 = bufferization.to_memref %17 : memref<3x13xi32>
    %132 = math.cttz %18 : tensor<13x3xi32>
    %133 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %61, %61, %c2009554598_i64 : vector<3xi64>, vector<3xi64> into i64
    %134 = math.copysign %2, %2 : tensor<3x13xf16>
    %135 = math.exp2 %10 : tensor<14xf16>
    %136 = math.rsqrt %13 : tensor<3x13xf16>
    %137 = math.cos %2 : tensor<3x13xf16>
    %138 = bufferization.clone %alloc_11 : memref<3x13xi1> to memref<3x13xi1>
    %139 = vector.broadcast %cst_2 : f32 to vector<3x3x3xf32>
    %140 = vector.fma %139, %139, %139 : vector<3x3x3xf32>
    scf.index_switch %c11 
    case 1 {
      %242 = math.copysign %9, %9 : tensor<13xf32>
      %243 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, 0 == 0, 0 >= 0)>(%c2, %c13, %c12, %c0) -> memref<13xi1> {
        %255 = math.absi %0 : tensor<13xi64>
        %256 = math.log %119 : f16
        %257 = math.cttz %splat : tensor<3x3x3xi32>
        %258 = index.sub %92, %c12
        %alloc_55 = memref.alloc() : memref<3x13xf16>
        %259 = arith.divsi %c2009554598_i64, %c1195970654_i64 : i64
        %260 = arith.cmpf uge, %119, %119 : f16
        %cast_56 = tensor.cast %collapsed : tensor<39xf16> to tensor<?xf16>
        affine.yield %alloc_9 : memref<13xi1>
      } else {
        %255 = arith.remf %cst, %cst : f32
        %cast_55 = tensor.cast %8 : tensor<3x3x3xi32> to tensor<?x?x?xi32>
        %256 = arith.negf %cst_24 : f16
        %257 = tensor.empty() : tensor<3x3xi32>
        %258 = linalg.matmul ins(%17, %transposed : tensor<3x13xi32>, tensor<13x3xi32>) outs(%257 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %259 = math.log %10 : tensor<14xf16>
        %260 = arith.addf %cst_2, %cst_2 : f32
        %261 = memref.realloc %alloc_12 : memref<13xf32> to memref<14xf32>
        %262 = index.castu %c2009554598_i64 : i64 to index
        affine.yield %alloc_9 : memref<13xi1>
      }
      %244 = math.exp %4 : tensor<14xf32>
      %245 = vector.insertelement %true, %120[%43 : index] : vector<14xi1>
      %246 = vector.transpose %86, [0] : vector<14xi1> to vector<14xi1>
      %247 = math.fma %9, %9, %9 : tensor<13xf32>
      %248 = scf.while (%arg0 = %c463091493_i32) : (i32) -> i32 {
        %255 = index.sub %c5, %c7
        %256 = index.castu %c970697758_i32 : i32 to index
        %257 = math.ceil %cst_2 : f32
        %258 = index.castu %c1057748619_i32 : i32 to index
        %259 = index.ceildivu %c14, %256
        %260 = math.powf %cst_0, %cst : f32
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %101, %101, %cst : vector<14xf32>, vector<14xf32> into f32
        %262 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %139, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
        scf.condition(%false_18) %c463091493_i32 : i32
      } do {
      ^bb0(%arg0: i32):
        %255 = vector.reduction <and>, %46 : vector<13xi64> into i64
        %alloca_55 = memref.alloca() : memref<3x13xi64>
        %256 = math.ctlz %false : i1
        %257 = arith.minui %true_28, %true_25 : i1
        %258 = vector.reduction <mul>, %46 : vector<13xi64> into i64
        %259 = memref.realloc %alloc_9 : memref<13xi1> to memref<14xi1>
        %260 = memref.load %alloc[%c1, %c5] : memref<3x13xf16>
        %261 = math.ctlz %from_elements : tensor<3x3x3xi64>
        %262 = tensor.empty() : tensor<13x3xf16>
        %263 = tensor.empty() : tensor<3x3xf16>
        %264 = linalg.matmul ins(%2, %262 : tensor<3x13xf16>, tensor<13x3xf16>) outs(%263 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %dest_56, %accumulated_value_57 = vector.scan <minui>, %33, %46 {inclusive = true, reduction_dim = 1 : i64} : vector<13x13xi64>, vector<13xi64>
        %265 = math.atan2 %4, %4 : tensor<14xf32>
        %collapsed_58 = tensor.collapse_shape %18 [[0, 1]] : tensor<13x3xi32> into tensor<39xi32>
        %266 = arith.xori %true_23, %false_18 : i1
        %cast_59 = tensor.cast %8 : tensor<3x3x3xi32> to tensor<?x?x?xi32>
        %267 = vector.insertelement %119, %85[%43 : index] : vector<3xf16>
        %268 = math.roundeven %10 : tensor<14xf16>
        scf.yield %c2144428619_i32 : i32
      }
      %249 = index.castu %false_18 : i1 to index
      %250 = math.absi %splat : tensor<3x3x3xi32>
      %251 = math.rsqrt %13 : tensor<3x13xf16>
      bufferization.dealloc_tensor %4 : tensor<14xf32>
      %252 = vector.reduction <maxf>, %83 : vector<3xf16> into f16
      %253 = math.cttz %19 : tensor<3xi64>
      %alloc_53 = memref.alloc() : memref<3x3x3xi16>
      memref.tensor_store %7, %alloc_53 : memref<3x3x3xi16>
      %collapsed_54 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<3x3x3xi64> into tensor<9x3xi64>
      %254 = math.ctpop %false_1 : i1
      scf.yield
    }
    case 2 {
      %242 = math.ctlz %23 : tensor<i64>
      memref.store %119, %alloc[%c2, %c2] : memref<3x13xf16>
      %243 = math.ipowi %12, %12 : tensor<14xi16>
      %from_elements_53 = tensor.from_elements %119, %119, %119, %cst_24, %119, %119, %cst_24, %119, %119, %119, %119, %cst_24, %cst_24, %cst_24, %119, %cst_24, %119, %119, %119, %cst_24, %cst_24, %119, %119, %119, %cst_24, %cst_24, %119 : tensor<3x3x3xf16>
      %244 = index.castu %c970697758_i32 : i32 to index
      %collapsed_54 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<3x3x3xi16> into tensor<9x3xi16>
      %245 = math.rsqrt %13 : tensor<3x13xf16>
      %246 = vector.insertelement %c2009554598_i64, %61[%c14 : index] : vector<3xi64>
      %247 = math.round %119 : f16
      vector.print %126 : vector<3xi1>
      %inserted_55 = tensor.insert %c-19938_i16 into %7[%c2, %c2, %c2] : tensor<3x3x3xi16>
      %248 = vector.transpose %84, [0] : vector<3xi1> to vector<3xi1>
      %249 = index.ceildivs %c6, %c5
      %250 = arith.shli %true_25, %true_28 : i1
      %251 = vector.bitcast %126 : vector<3xi1> to vector<3xi1>
      %252 = math.ctpop %true_23 : i1
      scf.yield
    }
    case 3 {
      scf.if %true_23 {
        %collapsed_55 = tensor.collapse_shape %17 [[0, 1]] : tensor<3x13xi32> into tensor<39xi32>
        %254 = vector.broadcast %cst_24 : f16 to vector<3xf16>
        %255 = vector.transfer_write %254, %13[%112, %112] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf16>, tensor<3x13xf16>
        %alloc_56 = memref.alloc() : memref<13xi64>
        memref.tensor_store %22, %alloc_56 : memref<13xi64>
        %256 = math.ceil %10 : tensor<14xf16>
        %alloc_57 = memref.alloc() : memref<3x3x3xf32>
        memref.store %c463091493_i32, %alloc_13[%c2, %c2, %c0] : memref<3x3x3xi32>
        %257 = index.floordivs %c14, %c0
        %258 = math.roundeven %9 : tensor<13xf32>
      } else {
        %alloc_55 = memref.alloc() : memref<14xi64>
        memref.copy %alloc_3, %alloc_55 : memref<14xi64> to memref<14xi64>
        %254 = bufferization.to_memref %13 : memref<3x13xf16>
        %255 = arith.divsi %c2009554598_i64, %c657789472_i64 : i64
        bufferization.dealloc_tensor %collapsed_21 : tensor<?x?xi16>
        %256 = index.maxu %c13, %c7
        %alloc_56 = memref.alloc() : memref<3x3x3xi64>
        %257 = arith.ceildivsi %true_23, %false_18 : i1
        %258 = math.copysign %119, %119 : f16
      }
      %242 = arith.minsi %true_25, %true : i1
      %243 = vector.insertelement %cst_24, %64[] : vector<f16>
      bufferization.dealloc_tensor %22 : tensor<13xi64>
      %244 = memref.load %alloc[%c0, %c7] : memref<3x13xf16>
      %245 = arith.negf %cst_2 : f32
      %246 = math.atan %119 : f16
      %247 = vector.broadcast %c-19938_i16 : i16 to vector<3xi16>
      %248 = vector.maskedload %alloc_15[%c2], %126, %247 : memref<14xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
      %249 = math.fma %cst_2, %cst_2, %cst_0 : f32
      %250 = math.fpowi %2, %5 : tensor<3x13xf16>, tensor<3x13xi32>
      %251 = vector.extract_strided_slice %120 {offsets = [6], sizes = [5], strides = [1]} : vector<14xi1> to vector<5xi1>
      vector.print %117 : vector<13x13xi64>
      %collapsed_53 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<3x3x3xi64> into tensor<9x3xi64>
      %252 = arith.minui %c-19938_i16, %c-19938_i16 : i16
      %false_54 = index.bool.constant false
      %253 = affine.if affine_set<(d0) : (0 == 0, -16 >= 0, 16 == 0, 16 == 0)>(%c12) -> f32 {
        %254 = vector.reduction <and>, %86 : vector<14xi1> into i1
        %255 = index.sub %92, %c7
        %256 = vector.splat %c657789472_i64 : vector<3x13xi64>
        %257 = math.rsqrt %cst_2 : f32
        %258 = math.log %cst_0 : f32
        %259 = arith.andi %true_25, %true_28 : i1
        %false_55 = index.bool.constant false
        %260 = math.tanh %13 : tensor<3x13xf16>
        affine.yield %cst : f32
      } else {
        %254 = memref.atomic_rmw maxs %c-19938_i16, %alloc_15[%c11] : (i16, memref<14xi16>) -> i16
        %255 = math.absi %true : i1
        %256 = index.divu %60, %c6
        %257 = arith.cmpi slt, %c1057748619_i32, %c2144428619_i32 : i32
        %258 = arith.xori %c2009554598_i64, %c657789472_i64 : i64
        %259 = math.cttz %11 : tensor<3x3x3xi64>
        %260 = vector.broadcast %c1057748619_i32 : i32 to vector<3x13xi32>
        %261 = vector.gather %alloc_11[%c2, %c5] [%260], %38, %38 : memref<3x13xi1>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi1> into vector<3x13xi1>
        %262 = memref.load %alloc[%c1, %c2] : memref<3x13xf16>
        affine.yield %cst : f32
      }
      scf.yield
    }
    case 4 {
      %242 = bufferization.to_tensor %alloc_7 : memref<3x3x3xf16>
      %243 = math.log10 %15 : tensor<3x3x3xf32>
      %244 = vector.bitcast %101 : vector<14xf32> to vector<14xf32>
      memref.assume_alignment %alloc_6, 4 : memref<3x3x3xi64>
      %245 = math.ceil %cst : f32
      %246 = memref.alloca_scope  -> (memref<14xi16>) {
        %254 = math.expm1 %13 : tensor<3x13xf16>
        %false_54 = arith.constant false
        %255 = vector.bitcast %89 : vector<14xi1> to vector<14xi1>
        %256 = math.log1p %13 : tensor<3x13xf16>
        %257 = index.casts %c769945355_i64 : i64 to index
        %expanded_55 = tensor.expand_shape %1 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
        %rank_56 = tensor.rank %24 : tensor<i64>
        %258 = index.mul %c4, %c6
        affine.store %cst_24, %alloc[%c13, %c4] : memref<3x13xf16>
        %259 = memref.load %alloc_10[%c0, %c1, %c2] : memref<3x3x3xi64>
        %260 = affine.min affine_map<(d0, d1, d2) -> (((d1 - d0) floordiv 2) ceildiv 8, d1)>(%73, %92, %c9)
        %261 = vector.splat %c1465428232_i64 : vector<13xi64>
        %262 = arith.addi %c-19938_i16, %c-19938_i16 : i16
        %263 = vector.load %alloc_11[%c1, %c1] : memref<3x13xi1>, vector<3x13xi1>
        %264 = index.ceildivs %c1, %c11
        %265 = math.absi %true_28 : i1
        %266 = vector.load %alloc_7[%c1, %c0, %c2] : memref<3x3x3xf16>, vector<14xf16>
        %267 = math.copysign %cst_0, %cst : f32
        %268 = math.log10 %cst_2 : f32
        %269 = math.absf %13 : tensor<3x13xf16>
        %270 = vector.broadcast %c2144428619_i32 : i32 to vector<14xi32>
        vector.transfer_write %270, %131[%rank, %60] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, memref<3x13xi32>
        %splat_57 = tensor.splat %c1465428232_i64 : tensor<14xi64>
        bufferization.dealloc_tensor %reduced : tensor<3xi64>
        %271 = index.floordivs %112, %112
        affine.store %false, %alloc_17[%c10, %c3] : memref<3x13xi1>
        %splat_58 = tensor.splat %c769945355_i64 : tensor<13xi64>
        %272 = vector.extract %266[0] : vector<14xf16>
        %alloc_59 = memref.alloc() : memref<i64>
        memref.tensor_store %23, %alloc_59 : memref<i64>
        %cst_60 = arith.constant 1.972000e+03 : f16
        %cast_61 = tensor.cast %107 : tensor<14xi32> to tensor<?xi32>
        %273 = arith.muli %c769945355_i64, %c1465428232_i64 : i64
        %274 = vector.bitcast %140 : vector<3x3x3xf32> to vector<3x3x3xf32>
        memref.alloca_scope.return %alloc_15 : memref<14xi16>
      }
      %247 = math.copysign %cst_0, %cst_0 : f32
      %248 = affine.load %246[%c8] : memref<14xi16>
      %249 = arith.addf %cst_24, %119 : f16
      %250 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %117, %46, %46 : vector<13x13xi64>, vector<13xi64> into vector<13xi64>
      memref.assume_alignment %alloc_5, 4 : memref<13xf32>
      %251 = memref.atomic_rmw mulf %cst_2, %alloc_5[%c8] : (f32, memref<13xf32>) -> f32
      %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %244, %101, %cst_0 : vector<14xf32>, vector<14xf32> into f32
      memref.tensor_store %16, %131 : memref<3x13xi32>
      %253 = arith.cmpf ule, %cst, %cst_2 : f32
      %cast_53 = tensor.cast %24 : tensor<i64> to tensor<i64>
      scf.yield
    }
    default {
      %expanded_53 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<3x3x3xf32> into tensor<3x3x3x1xf32>
      %242 = index.ceildivs %c11, %43
      %collapsed_54 = tensor.collapse_shape %82 [[0, 1], [2]] : tensor<3x3x3xi32> into tensor<9x3xi32>
      %243 = vector.splat %c463091493_i32 : vector<3x13xi32>
      %244 = vector.reduction <minf>, %83 : vector<3xf16> into f16
      bufferization.dealloc_tensor %1 : tensor<14xi1>
      %245 = vector.insertelement %false_18, %84[%70 : index] : vector<3xi1>
      %246 = vector.insertelement %true_25, %126[%55 : index] : vector<3xi1>
      %247 = vector.flat_transpose %120 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
      %248 = scf.if %false_18 -> (memref<14xi32>) {
        %254 = math.tanh %4 : tensor<14xf32>
        %255 = arith.divui %true_25, %true_28 : i1
        %256 = math.expm1 %9 : tensor<13xf32>
        %257 = math.exp %9 : tensor<13xf32>
        %258 = math.rsqrt %15 : tensor<3x3x3xf32>
        %259 = math.ctpop %5 : tensor<3x13xi32>
        %260 = math.fpowi %15, %8 : tensor<3x3x3xf32>, tensor<3x3x3xi32>
        %261 = math.cttz %1 : tensor<14xi1>
        %alloc_56 = memref.alloc() : memref<14xi32>
        scf.yield %alloc_56 : memref<14xi32>
      } else {
        %254 = vector.insertelement %true_25, %86[%73 : index] : vector<14xi1>
        %255 = index.ceildivs %c4, %92
        %256 = bufferization.to_tensor %alloc_14 : memref<3x13xi64>
        %257 = math.log %cst : f32
        %258 = math.cos %cst_0 : f32
        %259 = math.tanh %9 : tensor<13xf32>
        %rank_56 = tensor.rank %expanded : tensor<13x1xi64>
        %260 = math.ceil %4 : tensor<14xf32>
        %alloc_57 = memref.alloc() : memref<14xi32>
        scf.yield %alloc_57 : memref<14xi32>
      }
      %249 = arith.remsi %c1465428232_i64, %c1195970654_i64 : i64
      %250 = math.atan %expanded_53 : tensor<3x3x3x1xf32>
      %251 = arith.addf %cst_24, %cst_24 : f16
      %252 = vector.transpose %117, [0, 1] : vector<13x13xi64> to vector<13x13xi64>
      %253 = memref.atomic_rmw minf %cst, %alloc_4[%c2] : (f32, memref<13xf32>) -> f32
      %inserted_55 = tensor.insert %cst into %4[%c8] : tensor<14xf32>
    }
    %141 = affine.min affine_map<(d0) -> (d0 floordiv 4, -(-(d0 floordiv 4) + 2), d0 floordiv 4)>(%c7)
    %142 = arith.addi %false_18, %false : i1
    %143 = math.atan2 %15, %15 : tensor<3x3x3xf32>
    %144 = math.rsqrt %cst : f32
    %145 = math.log10 %10 : tensor<14xf16>
    %146 = arith.divf %119, %119 : f16
    %147 = math.absi %transposed : tensor<13x3xi32>
    %148 = memref.atomic_rmw maxs %c-19938_i16, %alloc_15[%c9] : (i16, memref<14xi16>) -> i16
    %149 = vector.broadcast %cst_0 : f32 to vector<14xf32>
    %150 = vector.fma %149, %101, %101 : vector<14xf32>
    %151 = vector.load %alloc_9[%c6] : memref<13xi1>, vector<13xi1>
    %152 = tensor.empty() : tensor<3x13xi32>
    %mapped_32 = linalg.map ins(%131, %5, %17 : memref<3x13xi32>, tensor<3x13xi32>, tensor<3x13xi32>) outs(%152 : tensor<3x13xi32>)
      (%in: i32, %in_53: i32, %in_54: i32) {
        memref.store %false, %alloc_11[%c2, %c10] : memref<3x13xi1>
        %242 = math.atan %collapsed : tensor<39xf16>
        %243 = arith.remf %cst_2, %cst_2 : f32
        vector.print %38 : vector<3x13xi1>
        %244 = math.log10 %2 : tensor<3x13xf16>
        %245 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 4 == 0, d2 >= 0, -(d2 mod 8) + 16 >= 0, d3 >= 0)>(%c11, %c12, %c1, %c4) -> i64 {
          memref.tensor_store %11, %alloc_10 : memref<3x3x3xi64>
          %268 = affine.min affine_map<(d0, d1, d2) -> (d2, (d2 + d1) ceildiv 2)>(%141, %c7, %c4)
          %splat_56 = tensor.splat %c-19938_i16 : tensor<14xi16>
          %269 = math.roundeven %10 : tensor<14xf16>
          bufferization.dealloc_tensor %expanded : tensor<13x1xi64>
          %270 = index.ceildivs %96, %c7
          %271 = vector.load %alloc_4[%c8] : memref<13xf32>, vector<14xf32>
          %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %84, %84, %true : vector<3xi1>, vector<3xi1> into i1
          affine.yield %c1195970654_i64 : i64
        } else {
          %268 = vector.load %alloc_14[%c1, %c8] : memref<3x13xi64>, vector<3x13xi64>
          %269 = vector.shuffle %38, %38 [0, 1, 2, 3, 4, 5] : vector<3x13xi1>, vector<3x13xi1>
          %270 = math.log10 %cst_0 : f32
          %false_56 = index.bool.constant false
          %271 = memref.load %alloc[%c2, %c11] : memref<3x13xf16>
          %272 = index.ceildivs %c3, %73
          %273 = math.log10 %4 : tensor<14xf32>
          %274 = vector.flat_transpose %83 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
          affine.yield %c1465428232_i64 : i64
        }
        %inserted_55 = tensor.insert %c912415966_i64 into %23[] : tensor<i64>
        %246 = index.maxs %c10, %55
        %247 = math.copysign %9, %9 : tensor<13xf32>
        %248 = arith.xori %in_53, %c463091493_i32 : i32
        bufferization.dealloc_tensor %12 : tensor<14xi16>
        %249 = math.round %15 : tensor<3x3x3xf32>
        bufferization.dealloc_tensor %8 : tensor<3x3x3xi32>
        %250 = index.ceildivs %rank_29, %118
        %251 = vector.broadcast %cst_2 : f32 to vector<13xf32>
        %252 = vector.fma %251, %251, %251 : vector<13xf32>
        %253 = math.absf %cst_0 : f32
        %254 = math.cttz %8 : tensor<3x3x3xi32>
        %255 = affine.min affine_map<(d0, d1, d2) -> (d0 * 4 - 4, (d0 * 4 - 4) ceildiv 8 + 64, (d0 * 4 - 4) ceildiv 8, (d0 * 4 - 4) ceildiv 8)>(%c10, %c11, %c11)
        %256 = arith.maxf %cst_0, %cst_2 : f32
        %257 = index.sub %c7, %c4
        %generated = tensor.generate %55 {
        ^bb0(%arg0: index):
          %inserted_56 = tensor.insert %in into %152[%c0, %c8] : tensor<3x13xi32>
          %268 = vector.splat %false : vector<3x3x3xi1>
          bufferization.dealloc_tensor %12 : tensor<14xi16>
          %269 = arith.divsi %false, %false_1 : i1
          tensor.yield %c1465428232_i64 : i64
        } : tensor<?xi64>
        memref.tensor_store %13, %alloc : memref<3x13xf16>
        %258 = arith.remf %119, %cst_24 : f16
        %259 = arith.ceildivsi %c1465428232_i64, %c657789472_i64 : i64
        %260 = math.powf %cst_24, %119 : f16
        %261 = memref.alloca_scope  -> (i32) {
          %268 = vector.broadcast %cst : f32 to vector<3x3xf32>
          %dest_56, %accumulated_value_57 = vector.scan <minf>, %140, %268 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
          memref.store %cst_24, %alloc_7[%c2, %c0, %c0] : memref<3x3x3xf16>
          %269 = vector.broadcast %true_23 : i1 to vector<3x3xi1>
          %270 = vector.outerproduct %84, %126, %269 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
          %271 = vector.maskedload %alloc_10[%c2, %c0, %c0], %84, %61 : memref<3x3x3xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
          affine.store %true_23, %alloc_9[%c1] : memref<13xi1>
          %272 = memref.realloc %alloc_5 : memref<13xf32> to memref<14xf32>
          %273 = math.cos %13 : tensor<3x13xf16>
          %274 = affine.load %131[%c5, %c14] : memref<3x13xi32>
          %275 = memref.realloc %alloc_5 : memref<13xf32> to memref<3xf32>
          %276 = memref.atomic_rmw maxf %cst_2, %alloc_12[%c5] : (f32, memref<13xf32>) -> f32
          %277 = math.cos %4 : tensor<14xf32>
          %278 = math.ceil %15 : tensor<3x3x3xf32>
          %279 = math.absf %4 : tensor<14xf32>
          %280 = math.absf %collapsed : tensor<39xf16>
          %281 = math.cttz %152 : tensor<3x13xi32>
          %282 = math.cttz %8 : tensor<3x3x3xi32>
          %283 = arith.divsi %true_28, %false_1 : i1
          %284 = vector.splat %c6 : vector<3x3x3xindex>
          %285 = index.castu %c912415966_i64 : i64 to index
          %286 = vector.transpose %64, [] : vector<f16> to vector<f16>
          %287 = vector.insert %c912415966_i64, %61 [0] : i64 into vector<3xi64>
          %288 = vector.broadcast %true_28 : i1 to vector<i1>
          vector.transfer_write %288, %alloc_8[%c7] : vector<i1>, memref<14xi1>
          %289 = math.log %13 : tensor<3x13xf16>
          %290 = math.tanh %15 : tensor<3x3x3xf32>
          %rank_58 = tensor.rank %collapsed_21 : tensor<?x?xi16>
          %291 = arith.ceildivsi %c1057748619_i32, %c463091493_i32 : i32
          %292 = math.ctpop %7 : tensor<3x3x3xi16>
          %293 = index.floordivs %92, %246
          %294 = math.fpowi %cst, %in : f32, i32
          %295 = vector.extract_strided_slice %151 {offsets = [1], sizes = [3], strides = [1]} : vector<13xi1> to vector<3xi1>
          %296 = arith.andi %274, %c2144428619_i32 : i32
          %297 = index.maxu %92, %rank_58
          memref.alloca_scope.return %c463091493_i32 : i32
        }
        %262 = vector.flat_transpose %83 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %263 = arith.shli %c1465428232_i64, %c912415966_i64 : i64
        %264 = arith.addi %false_1, %true_25 : i1
        %265 = arith.ceildivsi %c912415966_i64, %c657789472_i64 : i64
        %266 = math.powf %cst, %cst_0 : f32
        %267 = arith.remf %cst_24, %cst_24 : f16
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %153 = vector.multi_reduction <mul>, %149, %cst [0] : vector<14xf32> to f32
    %154 = memref.realloc %alloc_16 : memref<14xf32> to memref<3xf32>
    %155 = memref.load %alloc_4[%c7] : memref<13xf32>
    %156 = vector.reduction <mul>, %101 : vector<14xf32> into f32
    %157 = vector.broadcast %c769945355_i64 : i64 to vector<14xi64>
    %158 = tensor.empty() : tensor<14xf32>
    %mapped_33 = linalg.map ins(%4, %4 : tensor<14xf32>, tensor<14xf32>) outs(%158 : tensor<14xf32>)
      (%in: f32, %in_53: f32) {
        %242 = arith.ori %true_23, %true_28 : i1
        %243 = math.cos %15 : tensor<3x3x3xf32>
        %244 = vector.extract_strided_slice %149 {offsets = [1], sizes = [6], strides = [1]} : vector<14xf32> to vector<6xf32>
        %245 = vector.insertelement %c1195970654_i64, %61[%118 : index] : vector<3xi64>
        %246 = vector.bitcast %150 : vector<14xf32> to vector<14xf32>
        %247 = index.maxu %118, %rank
        %248 = arith.remui %true_23, %false_18 : i1
        %249 = math.ceil %in_53 : f32
        %rank_54 = tensor.rank %13 : tensor<3x13xf16>
        %250 = arith.divsi %c970697758_i32, %c970697758_i32 : i32
        %251 = math.exp %cst_24 : f16
        %252 = tensor.empty() : tensor<3x13xi1>
        %253 = vector.broadcast %c2144428619_i32 : i32 to vector<3x13xi32>
        %254 = vector.gather %252[%c7, %c13] [%253], %38, %38 : tensor<3x13xi1>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi1> into vector<3x13xi1>
        %255 = vector.broadcast %c1057748619_i32 : i32 to vector<3x13xi32>
        %256 = index.castu %false_18 : i1 to index
        %257 = arith.ceildivsi %false, %true_23 : i1
        %splat_55 = tensor.splat %153 : tensor<14xf32>
        %258 = arith.addi %c912415966_i64, %c912415966_i64 : i64
        vector.print %253 : vector<3x13xi32>
        %259 = vector.shuffle %244, %101 [0, 3, 4, 6, 7, 8, 10, 11, 12, 13, 14, 15] : vector<6xf32>, vector<14xf32>
        %260 = vector.broadcast %153 : f32 to vector<14xf32>
        %261 = vector.fma %260, %150, %260 : vector<14xf32>
        %262 = arith.ori %false_1, %true_23 : i1
        %263 = math.expm1 %10 : tensor<14xf16>
        %264 = arith.divf %in, %153 : f32
        %265 = affine.for %arg0 = 0 to 125 iter_args(%arg1 = %60) -> (index) {
          affine.yield %c1 : index
        }
        %266 = vector.create_mask %c14 : vector<14xi1>
        %267 = math.exp2 %splat_55 : tensor<14xf32>
        %expanded_56 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<3x3x3xf32> into tensor<3x3x3x1xf32>
        %268 = math.ctpop %12 : tensor<14xi16>
        %269 = arith.remf %153, %cst_2 : f32
        %expanded_57 = tensor.expand_shape %3 [[0, 1]] : tensor<13xi64> into tensor<13x1xi64>
        %270 = vector.broadcast %in_53 : f32 to vector<14xf32>
        %271 = vector.fma %270, %260, %261 : vector<14xf32>
        %272 = math.ctpop %152 : tensor<3x13xi32>
        %cst_58 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_58 : f32
      }
    %159 = memref.realloc %alloc_15 : memref<14xi16> to memref<13xi16>
    %c0_i16 = arith.constant 0 : i16
    %160 = vector.transfer_read %alloc_15[%c3], %c0_i16 : memref<14xi16>, vector<i16>
    %161 = math.log1p %cst_24 : f16
    %162 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 8 - d2)>(%rank_29, %c6, %70)
    %163 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
    %dest_34, %accumulated_value_35 = vector.scan <mul>, %140, %163 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
    %cast_36 = tensor.cast %15 : tensor<3x3x3xf32> to tensor<?x?x?xf32>
    %164 = math.atan2 %153, %cst_0 : f32
    %165 = arith.minsi %c1465428232_i64, %c657789472_i64 : i64
    %166 = vector.broadcast %cst_2 : f32 to vector<3x13xf32>
    %167 = vector.fma %166, %166, %166 : vector<3x13xf32>
    %from_elements_37 = tensor.from_elements %c2144428619_i32, %c970697758_i32, %c2144428619_i32, %c1057748619_i32, %c463091493_i32, %c2144428619_i32, %c463091493_i32, %c1057748619_i32, %c970697758_i32, %c463091493_i32, %c1057748619_i32, %c463091493_i32, %c2144428619_i32 : tensor<13xi32>
    %168 = arith.divsi %true_23, %false_18 : i1
    %169 = arith.ceildivsi %true_25, %true : i1
    %170 = arith.addi %c2144428619_i32, %c2144428619_i32 : i32
    %171 = math.ctlz %18 : tensor<13x3xi32>
    %172 = arith.ori %c657789472_i64, %c657789472_i64 : i64
    %173 = vector.insertelement %false, %84[%c1 : index] : vector<3xi1>
    %174 = math.absi %reduced : tensor<3xi64>
    %175 = arith.cmpf oeq, %119, %cst_24 : f16
    %176 = bufferization.to_memref %22 : memref<13xi64>
    %alloc_38 = memref.alloc() : memref<3x13xi32>
    %177 = math.round %15 : tensor<3x3x3xf32>
    %178 = math.log %13 : tensor<3x13xf16>
    %179 = arith.remf %cst_0, %153 : f32
    %180 = memref.atomic_rmw addf %cst, %alloc_16[%c4] : (f32, memref<14xf32>) -> f32
    %181 = arith.remsi %c2144428619_i32, %c463091493_i32 : i32
    %182 = math.absi %true_25 : i1
    %183 = math.log10 %4 : tensor<14xf32>
    %184 = bufferization.to_memref %82 : memref<3x3x3xi32>
    %cast_39 = tensor.cast %4 : tensor<14xf32> to tensor<?xf32>
    %alloc_40 = memref.alloc() : memref<3x13xi32>
    %alloc_41 = memref.alloc() : memref<3x3x3xi16>
    %185 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 64)>(%55, %43, %73, %92)
    %186 = arith.shli %c2009554598_i64, %c912415966_i64 : i64
    %187 = math.ceil %15 : tensor<3x3x3xf32>
    %188 = index.floordivs %rank_29, %c11
    vector.print %149 : vector<14xf32>
    %alloc_42 = memref.alloc() : memref<3x13xi32>
    %189 = memref.load %alloc_9[%c8] : memref<13xi1>
    %alloc_43 = memref.alloc() : memref<3x13xi16>
    %190 = math.cos %13 : tensor<3x13xf16>
    %191 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %149, %150, %cst : vector<14xf32>, vector<14xf32> into f32
    %false_44 = index.bool.constant false
    %192 = index.sizeof
    %193 = arith.ori %c-19938_i16, %c0_i16 : i16
    %194 = math.absi %7 : tensor<3x3x3xi16>
    %195 = vector.bitcast %84 : vector<3xi1> to vector<3xi1>
    %inserted = tensor.insert %c769945355_i64 into %22[%c8] : tensor<13xi64>
    %196 = math.atan %13 : tensor<3x13xf16>
    %alloc_45 = memref.alloc() : memref<3x13xi64>
    memref.copy %alloc_14, %alloc_45 : memref<3x13xi64> to memref<3x13xi64>
    %197 = arith.minsi %false, %true_28 : i1
    %198 = memref.realloc %alloc_16 : memref<14xf32> to memref<13xf32>
    %alloca_46 = memref.alloca() : memref<14xi16>
    %199 = affine.for %arg0 = 0 to 60 iter_args(%arg1 = %alloc_9) -> (memref<13xi1>) {
      affine.yield %alloc_9 : memref<13xi1>
    }
    %200 = bufferization.to_memref %11 : memref<3x3x3xi64>
    %201 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %157, %157, %c912415966_i64 : vector<14xi64>, vector<14xi64> into i64
    scf.if %true_23 {
      %242 = vector.broadcast %c463091493_i32 : i32 to vector<13xi32>
      %243 = scf.while (%arg0 = %alloc_16) : (memref<14xf32>) -> memref<14xf32> {
        %248 = vector.extract_strided_slice %89 {offsets = [3], sizes = [1], strides = [1]} : vector<14xi1> to vector<1xi1>
        vector.print %157 : vector<14xi64>
        %249 = arith.remf %cst_24, %119 : f16
        %250 = affine.apply affine_map<(d0) -> (0)>(%c0)
        %251 = arith.divui %c912415966_i64, %c657789472_i64 : i64
        %252 = arith.ceildivsi %false_18, %false_44 : i1
        %253 = index.sizeof
        %254 = bufferization.clone %alloc_14 : memref<3x13xi64> to memref<3x13xi64>
        scf.condition(%true_28) %arg0 : memref<14xf32>
      } do {
      ^bb0(%arg0: memref<14xf32>):
        %248 = vector.insertelement %false_44, %126[%c0 : index] : vector<3xi1>
        %249 = arith.ceildivsi %false_44, %true_28 : i1
        %250 = arith.divui %false, %false_1 : i1
        %251 = vector.broadcast %false_18 : i1 to vector<3x3xi1>
        %252 = vector.outerproduct %126, %195, %251 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
        %253 = memref.realloc %alloc_15 : memref<14xi16> to memref<14xi16>
        %254 = vector.bitcast %86 : vector<14xi1> to vector<14xi1>
        %255 = math.roundeven %2 : tensor<3x13xf16>
        %256 = arith.minsi %false_18, %false_18 : i1
        %257 = vector.broadcast %c9 : index to vector<13xindex>
        vector.scatter %alloc_3[%c12] [%257], %151, %46 : memref<14xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %258 = arith.divsi %false_44, %false_1 : i1
        %259 = math.roundeven %15 : tensor<3x3x3xf32>
        affine.store %c970697758_i32, %184[%c1, %c10, %c12] : memref<3x3x3xi32>
        %260 = math.log %15 : tensor<3x3x3xf32>
        %261 = vector.insertelement %c1465428232_i64, %21[%92 : index] : vector<3xi64>
        %262 = index.sizeof
        %263 = index.maxu %rank, %118
        scf.yield %alloc_16 : memref<14xf32>
      }
      %244 = tensor.empty() : tensor<14xi32>
      %245 = affine.min affine_map<(d0, d1, d2) -> ((((d1 - d0) * 2) floordiv 8 + 2) ceildiv 16, (((d1 - d0) * 2) floordiv 8 + 2) ceildiv 16 + d1 + 16 + 64, d1 - d0)>(%c9, %141, %c5)
      %alloc_53 = memref.alloc() : memref<3x3x3xi32>
      %246 = math.copysign %2, %13 : tensor<3x13xf16>
      %247 = arith.remsi %true_25, %false_18 : i1
      affine.store %c2144428619_i32, %184[%c10, %c7, %c12] : memref<3x3x3xi32>
    }
    %202 = index.casts %true_25 : i1 to index
    %203 = vector.broadcast %c-19938_i16 : i16 to vector<13xi16>
    %204 = vector.maskedload %alloc_15[%c12], %151, %203 : memref<14xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
    %205 = vector.insertelement %c912415966_i64, %46[%73 : index] : vector<13xi64>
    %alloc_47 = memref.alloc() : memref<14xf16>
    memref.tensor_store %10, %alloc_47 : memref<14xf16>
    %206 = arith.minui %false_18, %false_44 : i1
    %207 = arith.minsi %false, %false_44 : i1
    %208 = math.expm1 %15 : tensor<3x3x3xf32>
    %209 = arith.xori %c657789472_i64, %c2009554598_i64 : i64
    %210 = math.copysign %cst, %cst_2 : f32
    %211 = scf.if %true_25 -> (f16) {
      %242 = arith.minsi %true_23, %true_23 : i1
      %243 = vector.maskedload %alloc_5[%c7], %86, %149 : memref<13xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %244 = arith.remf %cst_2, %cst_0 : f32
      %245 = math.powf %13, %13 : tensor<3x13xf16>
      %246 = math.atan %cst_2 : f32
      %247 = affine.apply affine_map<(d0, d1) -> (d1 mod 64 - 2)>(%c11, %rank_29)
      %248 = arith.ori %true_23, %false_1 : i1
      %249 = scf.index_switch %c3 -> f16 
      case 1 {
        %250 = arith.remf %cst_24, %cst_24 : f16
        %251 = arith.minui %c463091493_i32, %c970697758_i32 : i32
        %252 = index.ceildivs %96, %c13
        %253 = math.cos %15 : tensor<3x3x3xf32>
        %splat_53 = tensor.splat %cst_2 : tensor<3x13xf32>
        %254 = vector.reduction <add>, %101 : vector<14xf32> into f32
        %255 = index.sub %c3, %c6
        %256 = index.mul %255, %c11
        %257 = math.atan2 %10, %10 : tensor<14xf16>
        %258 = math.cos %119 : f16
        %259 = arith.addi %true, %false_1 : i1
        %260 = math.round %2 : tensor<3x13xf16>
        %261 = index.sub %192, %c10
        %262 = index.castu %c1195970654_i64 : i64 to index
        %263 = math.rsqrt %cst : f32
        %264 = math.cos %158 : tensor<14xf32>
        scf.yield %cst_24 : f16
      }
      case 2 {
        %250 = bufferization.to_memref %16 : memref<3x13xi32>
        %251 = arith.minf %119, %119 : f16
        %cast_53 = tensor.cast %2 : tensor<3x13xf16> to tensor<?x?xf16>
        %252 = math.absi %c912415966_i64 : i64
        %253 = vector.reduction <maxsi>, %120 : vector<14xi1> into i1
        %254 = arith.minsi %c-19938_i16, %c-19938_i16 : i16
        %255 = math.log10 %15 : tensor<3x3x3xf32>
        %256 = vector.load %alloc[%c2, %c6] : memref<3x13xf16>, vector<13xf16>
        %257 = vector.reduction <mul>, %85 : vector<3xf16> into f16
        affine.store %c463091493_i32, %184[%c0, %c0, %c1] : memref<3x3x3xi32>
        %cast_54 = tensor.cast %8 : tensor<3x3x3xi32> to tensor<?x?x?xi32>
        bufferization.dealloc_tensor %152 : tensor<3x13xi32>
        %258 = arith.ceildivsi %true_23, %true : i1
        %259 = arith.minui %c-19938_i16, %c0_i16 : i16
        %260 = vector.broadcast %153 : f32 to vector<13xf32>
        %261 = vector.fma %260, %260, %260 : vector<13xf32>
        %262 = arith.andi %c1465428232_i64, %c912415966_i64 : i64
        scf.yield %cst_24 : f16
      }
      case 3 {
        %250 = vector.broadcast %60 : index to vector<3xindex>
        vector.scatter %alloc_8[%c8] [%250], %195, %126 : memref<14xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %251 = math.roundeven %15 : tensor<3x3x3xf32>
        %252 = index.maxu %c12, %c8
        %253 = arith.divsi %c912415966_i64, %c912415966_i64 : i64
        bufferization.dealloc_tensor %23 : tensor<i64>
        %254 = math.fma %13, %2, %2 : tensor<3x13xf16>
        %255 = math.ctpop %true_28 : i1
        %256 = index.mul %c0, %c11
        %257 = index.casts %rank : index to i32
        %258 = arith.maxf %cst, %cst_2 : f32
        %259 = vector.insertelement %true, %151[%c5 : index] : vector<13xi1>
        %260 = affine.min affine_map<(d0, d1) -> (48)>(%c12, %188)
        %261 = bufferization.to_tensor %alloc_4 : memref<13xf32>
        bufferization.dealloc_tensor %10 : tensor<14xf16>
        %262 = arith.andi %true, %true_25 : i1
        %263 = arith.andi %false, %true_25 : i1
        scf.yield %cst_24 : f16
      }
      case 4 {
        %250 = arith.remf %cst_0, %cst_0 : f32
        %251 = arith.ori %true, %false_44 : i1
        %252 = math.expm1 %4 : tensor<14xf32>
        %253 = vector.transpose %195, [0] : vector<3xi1> to vector<3xi1>
        %254 = arith.maxf %119, %cst_24 : f16
        %splat_53 = tensor.splat %153 : tensor<14xf32>
        %255 = vector.reduction <and>, %195 : vector<3xi1> into i1
        %256 = memref.realloc %alloc_16 : memref<14xf32> to memref<3xf32>
        %257 = index.maxs %60, %c14
        %258 = index.maxu %70, %96
        %259 = vector.bitcast %195 : vector<3xi1> to vector<3xi1>
        %cast_54 = tensor.cast %15 : tensor<3x3x3xf32> to tensor<?x?x?xf32>
        %260 = arith.divf %cst_2, %cst_2 : f32
        %261 = vector.broadcast %153 : f32 to vector<3x3xf32>
        %262 = vector.multi_reduction <minf>, %122, %261 [2] : vector<3x3x3xf32> to vector<3x3xf32>
        %263 = bufferization.clone %alloc_17 : memref<3x13xi1> to memref<3x13xi1>
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %84, %126, %true : vector<3xi1>, vector<3xi1> into i1
        scf.yield %cst_24 : f16
      }
      default {
        %250 = arith.addi %c657789472_i64, %c2009554598_i64 : i64
        %251 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %122, %251 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
        %252 = bufferization.to_memref %11 : memref<3x3x3xi64>
        %253 = arith.divsi %c657789472_i64, %c1465428232_i64 : i64
        %254 = arith.addf %cst, %153 : f32
        %255 = affine.max affine_map<(d0) -> (d0 - 1)>(%202)
        %256 = vector.broadcast %cst_2 : f32 to vector<13xf32>
        %257 = vector.insert %256, %167 [1] : vector<13xf32> into vector<3x13xf32>
        %258 = math.rsqrt %15 : tensor<3x3x3xf32>
        %259 = index.castu %c10 : index to i32
        %260 = index.floordivs %c13, %c1
        %261 = arith.addf %cst, %cst_0 : f32
        %262 = math.log %15 : tensor<3x3x3xf32>
        %263 = bufferization.to_tensor %alloc_3 : memref<14xi64>
        %264 = arith.remf %cst, %cst : f32
        %265 = index.casts %92 : index to i32
        vector.print %157 : vector<14xi64>
        scf.yield %cst_24 : f16
      }
      scf.yield %cst_24 : f16
    } else {
      %242 = vector.broadcast %cst_2 : f32 to vector<13xf32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %167, %242 {inclusive = false, reduction_dim = 0 : i64} : vector<3x13xf32>, vector<13xf32>
      %243 = math.absi %5 : tensor<3x13xi32>
      %244 = math.copysign %13, %2 : tensor<3x13xf16>
      %245 = math.copysign %153, %cst_0 : f32
      %246 = vector.broadcast %cst_0 : f32 to vector<3xf32>
      %247 = vector.maskedload %alloc_4[%c3], %84, %246 : memref<13xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %248 = vector.maskedload %alloc_7[%c1, %c1, %c2], %195, %83 : memref<3x3x3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      bufferization.dealloc_tensor %collapsed : tensor<39xf16>
      memref.store %153, %alloc_4[%c8] : memref<13xf32>
      scf.yield %119 : f16
    }
    %212 = math.log10 %15 : tensor<3x3x3xf32>
    %213 = vector.maskedload %138[%c0, %c11], %84, %84 : memref<3x13xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %expanded_48 = tensor.expand_shape %reduced [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
    %214 = math.roundeven %cst_0 : f32
    %215 = arith.maxf %119, %cst_24 : f16
    scf.index_switch %c1 
    case 1 {
      %242 = arith.remf %119, %cst_24 : f16
      %243 = arith.addi %true, %true : i1
      %alloc_53 = memref.alloc() : memref<3x3x3xi1>
      %244 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d0 - 2, d2)>(%192, %185, %43, %c15)
      %245 = arith.andi %false_18, %false_18 : i1
      scf.index_switch %c1 
      case 1 {
        %256 = arith.xori %c-19938_i16, %c-19938_i16 : i16
        %257 = vector.broadcast %cst_2 : f32 to vector<3x3x3xf32>
        %258 = vector.fma %257, %257, %122 : vector<3x3x3xf32>
        %259 = vector.broadcast %cst_0 : f32 to vector<3xf32>
        %260 = vector.insert %259, %258 [0, 2] : vector<3xf32> into vector<3x3x3xf32>
        %261 = math.atan2 %13, %2 : tensor<3x13xf16>
        %splat_54 = tensor.splat %c970697758_i32 : tensor<3x3x3xi32>
        %262 = affine.load %alloc[%c15, %c1] : memref<3x13xf16>
        %263 = math.floor %262 : f16
        %264 = vector.load %131[%c2, %c6] : memref<3x13xi32>, vector<3x3x3xi32>
        %265 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
        %dest_55, %accumulated_value_56 = vector.scan <mul>, %257, %265 {inclusive = false, reduction_dim = 2 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
        %true_57 = index.bool.constant true
        %266 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
        %267 = vector.outerproduct %150, %150, %266 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
        %268 = arith.andi %false_1, %true_23 : i1
        %269 = arith.divsi %c1057748619_i32, %c463091493_i32 : i32
        %270 = vector.extract_strided_slice %101 {offsets = [4], sizes = [9], strides = [1]} : vector<14xf32> to vector<9xf32>
        %271 = arith.addf %153, %cst_0 : f32
        %272 = vector.splat %true_25 : vector<3x13xi1>
        scf.yield
      }
      case 2 {
        %256 = math.fpowi %cst, %c463091493_i32 : f32, i32
        %257 = bufferization.to_memref %152 : memref<3x13xi32>
        %rank_54 = tensor.rank %23 : tensor<i64>
        %258 = vector.load %alloc_4[%c2] : memref<13xf32>, vector<3x3x3xf32>
        %259 = arith.addf %153, %153 : f32
        bufferization.dealloc_tensor %8 : tensor<3x3x3xi32>
        %260 = index.maxu %202, %60
        %261 = arith.remui %c1195970654_i64, %c769945355_i64 : i64
        %262 = arith.negf %cst_24 : f16
        %263 = math.tanh %9 : tensor<13xf32>
        bufferization.dealloc_tensor %reduced : tensor<3xi64>
        %264 = bufferization.clone %alloc_7 : memref<3x3x3xf16> to memref<3x3x3xf16>
        %265 = arith.remf %cst, %cst : f32
        %266 = arith.addi %c1465428232_i64, %c1195970654_i64 : i64
        %267 = index.sub %73, %73
        %268 = memref.atomic_rmw assign %c912415966_i64, %alloc_14[%c1, %c8] : (i64, memref<3x13xi64>) -> i64
        scf.yield
      }
      case 3 {
        %256 = arith.divsi %c2144428619_i32, %c970697758_i32 : i32
        %257 = vector.insert %false, %89 [5] : i1 into vector<14xi1>
        %258 = memref.load %alloc_13[%c2, %c1, %c1] : memref<3x3x3xi32>
        %259 = arith.remf %cst_2, %cst_0 : f32
        %260 = bufferization.to_tensor %alloc_13 : memref<3x3x3xi32>
        %261 = bufferization.to_tensor %200 : memref<3x3x3xi64>
        %262 = vector.broadcast %c970697758_i32 : i32 to vector<14xi32>
        %263 = vector.insertelement %false_44, %151[%92 : index] : vector<13xi1>
        %264 = math.ctpop %c2009554598_i64 : i64
        %265 = math.atan2 %10, %10 : tensor<14xf16>
        %inserted_54 = tensor.insert %c463091493_i32 into %5[%c0, %c0] : tensor<3x13xi32>
        %266 = arith.xori %c2144428619_i32, %c463091493_i32 : i32
        %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %61, %21, %c912415966_i64 : vector<3xi64>, vector<3xi64> into i64
        %268 = vector.splat %60 : vector<14xindex>
        %269 = index.mul %c3, %60
        %alloca_55 = memref.alloca() : memref<14xi16>
        scf.yield
      }
      default {
        %256 = math.cos %13 : tensor<3x13xf16>
        %257 = math.absi %splat : tensor<3x3x3xi32>
        %258 = math.powf %13, %13 : tensor<3x13xf16>
        %259 = math.absi %true : i1
        %260 = math.fpowi %2, %16 : tensor<3x13xf16>, tensor<3x13xi32>
        %261 = index.ceildivs %c7, %c9
        %262 = bufferization.to_memref %4 : memref<14xf32>
        %263 = index.maxu %rank, %c11
        %264 = math.absi %false : i1
        %265 = index.ceildivs %c4, %c10
        %cast_54 = tensor.cast %4 : tensor<14xf32> to tensor<?xf32>
        %266 = vector.bitcast %33 : vector<13x13xi64> to vector<13x13xi64>
        %267 = arith.floordivsi %c2144428619_i32, %c1057748619_i32 : i32
        %268 = arith.xori %c2144428619_i32, %c2144428619_i32 : i32
        %269 = arith.maxf %cst_2, %cst : f32
        %270 = bufferization.to_memref %7 : memref<3x3x3xi16>
      }
      %246 = vector.load %alloc_8[%c1] : memref<14xi1>, vector<14xi1>
      %247 = arith.addi %c970697758_i32, %c2144428619_i32 : i32
      %248 = tensor.empty() : tensor<3x3xi64>
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6, %11, %248 : tensor<3x3x3xi64>, tensor<3x3x3xi64>, tensor<3x3xi64>) outs(%from_elements : tensor<3x3x3xi64>) {
      ^bb0(%in: i64, %in_54: i64, %in_55: i64, %out: i64):
        %256 = vector.maskedload %alloc_3[%c4], %86, %157 : memref<14xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %257 = math.tanh %cst_0 : f32
        %258 = math.ceil %cst : f32
        %259 = arith.remsi %c1057748619_i32, %c2144428619_i32 : i32
        bufferization.dealloc_tensor %expanded : tensor<13x1xi64>
        memref.copy %138, %alloc_17 : memref<3x13xi1> to memref<3x13xi1>
        %260 = math.ctpop %in_54 : i64
        %261 = math.floor %4 : tensor<14xf32>
        %262 = math.log %13 : tensor<3x13xf16>
        memref.store %c1465428232_i64, %alloc_3[%c4] : memref<14xi64>
        %263 = math.tan %cst_0 : f32
        %264 = math.copysign %211, %119 : f16
        %265 = math.exp %158 : tensor<14xf32>
        %266 = math.exp %158 : tensor<14xf32>
        %267 = arith.addi %c912415966_i64, %c1195970654_i64 : i64
        %268 = arith.remui %c1195970654_i64, %in : i64
        %alloc_56 = memref.alloc() : memref<3x13xi1>
        %269 = arith.minui %c769945355_i64, %c2009554598_i64 : i64
        %270 = math.fpowi %2, %17 : tensor<3x13xf16>, tensor<3x13xi32>
        %271 = affine.max affine_map<(d0, d1) -> ((d1 + 2) * 2, d0 mod 128, d0 + 16)>(%141, %c13)
        %272 = arith.ori %false_18, %true : i1
        %273 = index.ceildivu %55, %192
        %cast_57 = tensor.cast %4 : tensor<14xf32> to tensor<?xf32>
        %274 = vector.insertelement %cst_0, %150[%c14 : index] : vector<14xf32>
        %275 = arith.divsi %c1195970654_i64, %in_54 : i64
        %276 = vector.broadcast %cst : f32 to vector<13xf32>
        %277 = vector.maskedload %alloc_16[%c5], %151, %276 : memref<14xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        memref.tensor_store %6, %alloc_10 : memref<3x3x3xi64>
        %expanded_58 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<3x3x3xi64> into tensor<3x3x3x1xi64>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %101, %149, %cst_2 : vector<14xf32>, vector<14xf32> into f32
        %dest_59, %accumulated_value_60 = vector.scan <xor>, %38, %126 {inclusive = true, reduction_dim = 1 : i64} : vector<3x13xi1>, vector<3xi1>
        %279 = math.fpowi %cst, %c1057748619_i32 : f32, i32
        %280 = index.floordivs %c5, %c5
        linalg.yield %in_55 : i64
      } -> tensor<3x3x3xi64>
      %250 = arith.maxf %cst_24, %cst_24 : f16
      %251 = math.ctlz %6 : tensor<3x3x3xi64>
      %252 = math.fma %10, %10, %10 : tensor<14xf16>
      %253 = vector.load %alloc_5[%c3] : memref<13xf32>, vector<3x3x3xf32>
      %254 = arith.andi %c0_i16, %c0_i16 : i16
      %255 = arith.negf %119 : f16
      vector.print %21 : vector<3xi64>
      scf.yield
    }
    case 2 {
      %242 = math.powf %15, %15 : tensor<3x3x3xf32>
      %243 = vector.bitcast %89 : vector<14xi1> to vector<14xi1>
      %splat_53 = tensor.splat %false : tensor<3x13xi1>
      %244 = math.ctlz %from_elements : tensor<3x3x3xi64>
      %245 = vector.insert %151, %38 [2] : vector<13xi1> into vector<3x13xi1>
      %246 = arith.divf %211, %119 : f16
      %247 = arith.ceildivsi %c970697758_i32, %c970697758_i32 : i32
      %collapsed_54 = tensor.collapse_shape %cast_20 [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
      %248 = vector.insertelement %true, %89[%73 : index] : vector<14xi1>
      %249 = index.sizeof
      %250 = vector.maskedload %176[%c11], %213, %61 : memref<13xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %251 = vector.flat_transpose %21 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %252 = arith.divsi %false_18, %false_18 : i1
      %253 = vector.insertelement %c912415966_i64, %251[%c6 : index] : vector<3xi64>
      %254 = math.tanh %9 : tensor<13xf32>
      %from_elements_55 = tensor.from_elements %119, %cst_24, %211, %119, %119, %119, %211, %211, %119, %211, %211, %119, %119, %119 : tensor<14xf16>
      scf.yield
    }
    case 3 {
      %242 = bufferization.to_memref %82 : memref<3x3x3xi32>
      bufferization.dealloc_tensor %152 : tensor<3x13xi32>
      %243 = index.maxs %rank_29, %118
      %244 = affine.min affine_map<(d0, d1, d2) -> (((d1 floordiv 4 - 8) ceildiv 128) ceildiv 128, d2, d2 + 32, d2 + 16)>(%c15, %c4, %96)
      %245 = vector.broadcast %c13 : index to vector<3xindex>
      vector.scatter %alloc_8[%c1] [%245], %84, %213 : memref<14xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %246 = index.maxs %96, %192
      %splat_53 = tensor.splat %true_28 : tensor<13xi1>
      memref.copy %alloc_10, %200 : memref<3x3x3xi64> to memref<3x3x3xi64>
      %247 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
      %dest_54, %accumulated_value_55 = vector.scan <add>, %122, %247 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
      %rank_56 = tensor.rank %reduced : tensor<3xi64>
      %248 = math.exp %4 : tensor<14xf32>
      %249 = arith.remui %true_25, %true_23 : i1
      %250 = math.rsqrt %9 : tensor<13xf32>
      bufferization.dealloc_tensor %1 : tensor<14xi1>
      %251 = index.casts %c5 : index to i32
      %252 = scf.while (%arg0 = %alloc) : (memref<3x13xf16>) -> memref<3x13xf16> {
        %from_elements_57 = tensor.from_elements %153, %153, %153, %cst, %cst_0, %cst_2, %cst_0, %153, %153, %153, %cst, %cst_0, %cst_0, %cst_0 : tensor<14xf32>
        %splat_58 = tensor.splat %true_28 : tensor<14xi1>
        %253 = math.expm1 %2 : tensor<3x13xf16>
        %extracted = tensor.extract %17[%c2, %c11] : tensor<3x13xi32>
        %254 = index.sub %185, %c8
        %255 = arith.ceildivsi %true_28, %true_23 : i1
        %256 = arith.shrui %extracted, %c2144428619_i32 : i32
        %257 = math.expm1 %13 : tensor<3x13xf16>
        scf.condition(%false_44) %arg0 : memref<3x13xf16>
      } do {
      ^bb0(%arg0: memref<3x13xf16>):
        %253 = arith.maxf %211, %119 : f16
        %254 = math.absf %158 : tensor<14xf32>
        memref.tensor_store %4, %alloc_16 : memref<14xf32>
        memref.tensor_store %8, %242 : memref<3x3x3xi32>
        memref.tensor_store %13, %alloc : memref<3x13xf16>
        %255 = math.floor %10 : tensor<14xf16>
        %256 = math.tanh %13 : tensor<3x13xf16>
        %257 = arith.divsi %true, %false_1 : i1
        %258 = math.expm1 %4 : tensor<14xf32>
        %259 = math.ceil %collapsed : tensor<39xf16>
        %260 = vector.insertelement %true_28, %126[%70 : index] : vector<3xi1>
        %261 = math.floor %158 : tensor<14xf32>
        %262 = bufferization.to_memref %22 : memref<13xi64>
        %rank_57 = tensor.rank %158 : tensor<14xf32>
        affine.store %c912415966_i64, %alloc_14[%c15, %c4] : memref<3x13xi64>
        %263 = arith.maxsi %c1195970654_i64, %c769945355_i64 : i64
        scf.yield %arg0 : memref<3x13xf16>
      }
      scf.yield
    }
    case 4 {
      %242 = math.floor %2 : tensor<3x13xf16>
      %243 = math.absi %0 : tensor<13xi64>
      %244 = vector.load %alloc_9[%c5] : memref<13xi1>, vector<14xi1>
      %245 = index.maxu %c11, %c0
      %246 = math.roundeven %153 : f32
      %247 = math.powf %10, %10 : tensor<14xf16>
      %cst_53 = arith.constant 1.000000e+00 : f16
      %cst_54 = arith.constant 0.000000e+00 : f16
      %248 = vector.transfer_read %alloc[%96, %141], %cst_54 : memref<3x13xf16>, vector<f16>
      %249 = affine.min affine_map<(d0, d1, d2) -> (-(d2 mod 32))>(%c3, %c1, %185)
      vector.print %120 : vector<14xi1>
      %250 = math.cttz %3 : tensor<13xi64>
      %251 = tensor.empty() : tensor<13xi16>
      %252 = memref.atomic_rmw assign %c463091493_i32, %184[%c1, %c1, %c0] : (i32, memref<3x3x3xi32>) -> i32
      %253 = bufferization.clone %alloc_5 : memref<13xf32> to memref<13xf32>
      affine.for %arg0 = 0 to 93 {
      }
      memref.store %c1195970654_i64, %200[%c2, %c2, %c2] : memref<3x3x3xi64>
      %254 = arith.addi %c769945355_i64, %c1465428232_i64 : i64
      scf.yield
    }
    default {
      %242 = index.casts %112 : index to i32
      %243 = math.expm1 %153 : f32
      %244 = vector.bitcast %149 : vector<14xf32> to vector<14xi32>
      %245 = index.maxu %73, %55
      %246 = index.casts %202 : index to i32
      %247 = affine.max affine_map<(d0, d1, d2) -> (d1 * -128, d1 * 64, ((d2 ceildiv 128) * 32) mod 128, d1 + 4)>(%c6, %185, %c9)
      %248 = math.copysign %10, %10 : tensor<14xf16>
      %249 = math.fpowi %15, %82 : tensor<3x3x3xf32>, tensor<3x3x3xi32>
      %rank_53 = tensor.rank %158 : tensor<14xf32>
      %250 = scf.while (%arg0 = %139) : (vector<3x3x3xf32>) -> vector<3x3x3xf32> {
        %alloca_55 = memref.alloca() : memref<3x13xi64>
        %256 = vector.load %alloc_17[%c1, %c11] : memref<3x13xi1>, vector<13xi1>
        %257 = math.rsqrt %4 : tensor<14xf32>
        %alloc_56 = memref.alloc() : memref<14xi1>
        %258 = bufferization.to_memref %7 : memref<3x3x3xi16>
        %259 = math.powf %15, %15 : tensor<3x3x3xf32>
        %260 = math.roundeven %9 : tensor<13xf32>
        %261 = index.maxs %c0, %c15
        scf.condition(%false_44) %139 : vector<3x3x3xf32>
      } do {
      ^bb0(%arg0: vector<3x3x3xf32>):
        memref.tensor_store %5, %131 : memref<3x13xi32>
        %256 = vector.broadcast %cst_0 : f32 to vector<3x3x3xf32>
        %257 = vector.fma %256, %256, %140 : vector<3x3x3xf32>
        %258 = vector.broadcast %cst_0 : f32 to vector<13xf32>
        %dest_55, %accumulated_value_56 = vector.scan <mul>, %166, %258 {inclusive = false, reduction_dim = 0 : i64} : vector<3x13xf32>, vector<13xf32>
        %259 = math.powf %cst, %cst : f32
        %260 = math.rsqrt %15 : tensor<3x3x3xf32>
        %261 = math.cos %119 : f16
        bufferization.dealloc_tensor %8 : tensor<3x3x3xi32>
        %262 = math.floor %cst_2 : f32
        %263 = index.sub %c8, %c0
        %264 = vector.reduction <maxf>, %101 : vector<14xf32> into f32
        %265 = math.roundeven %13 : tensor<3x13xf16>
        %266 = arith.xori %false_44, %true_23 : i1
        %267 = math.exp %15 : tensor<3x3x3xf32>
        %268 = index.maxu %c8, %73
        %269 = memref.atomic_rmw maxs %c769945355_i64, %alloc_14[%c2, %c10] : (i64, memref<3x13xi64>) -> i64
        %270 = math.exp %9 : tensor<13xf32>
        scf.yield %257 : vector<3x3x3xf32>
      }
      %251 = arith.andi %c1057748619_i32, %c970697758_i32 : i32
      %252 = index.floordivs %55, %c8
      %253 = math.log10 %153 : f32
      %254 = math.fma %15, %15, %15 : tensor<3x3x3xf32>
      %alloca_54 = memref.alloca() : memref<3x13xi16>
      %255 = vector.broadcast %false_18 : i1 to vector<3xi1>
      vector.transfer_write %255, %alloc_11[%252, %245] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, memref<3x13xi1>
    }
    %216 = vector.extract_strided_slice %203 {offsets = [6], sizes = [7], strides = [1]} : vector<13xi16> to vector<7xi16>
    %217 = math.copysign %2, %13 : tensor<3x13xf16>
    %218 = math.log10 %13 : tensor<3x13xf16>
    %219 = index.sizeof
    %220 = math.cos %119 : f16
    affine.store %c1057748619_i32, %131[%c6, %c7] : memref<3x13xi32>
    %collapsed_49 = tensor.collapse_shape %82 [[0, 1], [2]] : tensor<3x3x3xi32> into tensor<9x3xi32>
    %221 = bufferization.to_tensor %alloc_7 : memref<3x3x3xf16>
    %222 = tensor.empty() : tensor<1x3xi64>
    %223 = tensor.empty() : tensor<3x3xi64>
    %224 = linalg.matmul ins(%expanded_48, %222 : tensor<3x1xi64>, tensor<1x3xi64>) outs(%223 : tensor<3x3xi64>) -> tensor<3x3xi64>
    vector.print %213 : vector<3xi1>
    scf.index_switch %112 
    case 1 {
      %242 = memref.realloc %alloc_4 : memref<13xf32> to memref<14xf32>
      %243 = vector.broadcast %c970697758_i32 : i32 to vector<13xi32>
      %244 = vector.transfer_write %243, %17[%188, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi32>, tensor<3x13xi32>
      %245 = arith.addi %false_18, %false_1 : i1
      %246 = math.roundeven %cst_0 : f32
      %247 = index.castu %185 : index to i32
      %248 = vector.reduction <xor>, %126 : vector<3xi1> into i1
      %249 = vector.insert %cst, %149 [8] : f32 into vector<14xf32>
      %250 = math.exp %15 : tensor<3x3x3xf32>
      %251 = arith.minui %c1195970654_i64, %c912415966_i64 : i64
      %252 = index.sub %112, %c5
      %253 = vector.load %alloc_7[%c1, %c1, %c0] : memref<3x3x3xf16>, vector<14xf16>
      bufferization.dealloc_tensor %collapsed_49 : tensor<9x3xi32>
      memref.copy %alloc_6, %200 : memref<3x3x3xi64> to memref<3x3x3xi64>
      affine.store %false, %alloc_11[%c2, %c11] : memref<3x13xi1>
      %254 = math.copysign %10, %10 : tensor<14xf16>
      %255 = index.ceildivu %c10, %c9
      scf.yield
    }
    case 2 {
      %splat_53 = tensor.splat %211 : tensor<3x3x3xf16>
      affine.for %arg0 = 0 to 61 {
      }
      %splat_54 = tensor.splat %true : tensor<13xi1>
      %242 = memref.realloc %alloc_3 : memref<14xi64> to memref<3xi64>
      %243 = index.maxu %c13, %rank_29
      %alloc_55 = memref.alloc() : memref<14xi16>
      memref.copy %alloc_15, %alloc_55 : memref<14xi16> to memref<14xi16>
      %244 = arith.addi %false_44, %false_1 : i1
      scf.if %false_18 {
        %252 = vector.reduction <maxf>, %149 : vector<14xf32> into f32
        %253 = math.ctpop %collapsed_49 : tensor<9x3xi32>
        %254 = vector.broadcast %153 : f32 to vector<13xf32>
        %255 = vector.fma %254, %254, %254 : vector<13xf32>
        %256 = math.atan %2 : tensor<3x13xf16>
        %257 = arith.remf %cst, %cst : f32
        affine.store %c2144428619_i32, %184[%c14, %c8, %c3] : memref<3x3x3xi32>
        %258 = math.absi %true_28 : i1
        %259 = math.round %4 : tensor<14xf32>
      }
      %245 = arith.addf %153, %cst_2 : f32
      %246 = bufferization.to_memref %11 : memref<3x3x3xi64>
      %247 = bufferization.to_memref %7 : memref<3x3x3xi16>
      %248 = math.floor %10 : tensor<14xf16>
      %249 = math.floor %cst_2 : f32
      %250 = math.expm1 %4 : tensor<14xf32>
      %cast_56 = tensor.cast %16 : tensor<3x13xi32> to tensor<?x?xi32>
      %251 = arith.andi %c657789472_i64, %c1465428232_i64 : i64
      scf.yield
    }
    case 3 {
      %242 = math.cttz %8 : tensor<3x3x3xi32>
      %243 = vector.insert %151, %38 [2] : vector<13xi1> into vector<3x13xi1>
      %244 = vector.broadcast %cst : f32 to vector<3xf32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %166, %244 {inclusive = true, reduction_dim = 1 : i64} : vector<3x13xf32>, vector<3xf32>
      %245 = vector.broadcast %c2144428619_i32 : i32 to vector<14xi32>
      affine.store %c2009554598_i64, %200[%c10, %c11, %c13] : memref<3x3x3xi64>
      %rank_55 = tensor.rank %22 : tensor<13xi64>
      %246 = vector.transpose %117, [0, 1] : vector<13x13xi64> to vector<13x13xi64>
      %247 = arith.ceildivsi %c657789472_i64, %c1465428232_i64 : i64
      %248 = vector.shuffle %204, %203 [0, 1, 2, 4, 5, 10, 12, 13, 20, 23] : vector<13xi16>, vector<13xi16>
      %249 = vector.broadcast %153 : f32 to vector<f32>
      %250 = vector.transfer_write %249, %9[%73] : vector<f32>, tensor<13xf32>
      %251 = math.expm1 %119 : f16
      %252 = math.tan %4 : tensor<14xf32>
      %253 = bufferization.to_memref %221 : memref<3x3x3xf16>
      %254 = vector.load %alloc_4[%c1] : memref<13xf32>, vector<14xf32>
      %255 = arith.remf %cst, %153 : f32
      %256 = arith.andi %c1465428232_i64, %c657789472_i64 : i64
      scf.yield
    }
    case 4 {
      %242 = vector.insertelement %cst_24, %64[] : vector<f16>
      %243 = math.fpowi %9, %14 : tensor<13xf32>, tensor<13xi32>
      %244 = arith.addi %c769945355_i64, %c769945355_i64 : i64
      %245 = math.floor %4 : tensor<14xf32>
      %246 = math.log10 %9 : tensor<13xf32>
      %247 = tensor.empty() : tensor<14xi32>
      %248 = arith.cmpf ord, %cst_24, %cst_24 : f16
      %expanded_53 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<3x3x3xi16> into tensor<3x3x3x1xi16>
      %249 = vector.insertelement %cst, %150[%c13 : index] : vector<14xf32>
      %250 = math.powf %10, %10 : tensor<14xf16>
      %alloc_54 = memref.alloc() : memref<3x13xi16>
      %true_55 = index.bool.constant true
      %alloc_56 = memref.alloc() : memref<3x3x3xi64>
      bufferization.dealloc_tensor %collapsed_49 : tensor<9x3xi32>
      %251 = math.cos %9 : tensor<13xf32>
      %252 = arith.shrsi %true_55, %false_18 : i1
      scf.yield
    }
    default {
      %242 = index.maxu %185, %c4
      %243 = vector.reduction <and>, %195 : vector<3xi1> into i1
      %244 = tensor.empty() : tensor<3xf32>
      %245 = tensor.empty() : tensor<3x3xf32>
      %246 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%244, %245, %245 : tensor<3xf32>, tensor<3x3xf32>, tensor<3x3xf32>) outs(%15 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %in_57: f32, %in_58: f32, %out: f32):
        %256 = math.ipowi %transposed, %transposed : tensor<13x3xi32>
        %expanded_59 = tensor.expand_shape %4 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
        %257 = vector.broadcast %in_58 : f32 to vector<3x3xf32>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %122, %257 {inclusive = true, reduction_dim = 2 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
        %cast_62 = tensor.cast %10 : tensor<14xf16> to tensor<?xf16>
        %258 = arith.remf %cst_0, %cst_0 : f32
        memref.tensor_store %11, %alloc_10 : memref<3x3x3xi64>
        %259 = affine.apply affine_map<(d0, d1) -> (0)>(%c8, %55)
        %260 = arith.divsi %c-19938_i16, %c-19938_i16 : i16
        %261 = math.round %221 : tensor<3x3x3xf16>
        %262 = arith.minsi %c769945355_i64, %c912415966_i64 : i64
        %dest_63, %accumulated_value_64 = vector.scan <or>, %117, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<13x13xi64>, vector<13xi64>
        %alloca_65 = memref.alloca() : memref<3x3x3xf16>
        %263 = math.fpowi %211, %c970697758_i32 : f16, i32
        %cast_66 = tensor.cast %18 : tensor<13x3xi32> to tensor<?x?xi32>
        %264 = vector.extract_strided_slice %150 {offsets = [10], sizes = [3], strides = [1]} : vector<14xf32> to vector<3xf32>
        memref.tensor_store %8, %alloc_13 : memref<3x3x3xi32>
        %265 = arith.xori %c2144428619_i32, %c970697758_i32 : i32
        %266 = vector.maskedload %alloc_16[%c13], %120, %101 : memref<14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %267 = vector.reduction <add>, %264 : vector<3xf32> into f32
        %268 = arith.ceildivsi %false_18, %false_1 : i1
        %alloc_67 = memref.alloc() : memref<13xi32>
        memref.tensor_store %14, %alloc_67 : memref<13xi32>
        %269 = vector.bitcast %266 : vector<14xf32> to vector<14xf32>
        %inserted_68 = tensor.insert %c-19938_i16 into %12[%c8] : tensor<14xi16>
        %270 = math.atan %2 : tensor<3x13xf16>
        %271 = math.atan2 %cst_2, %cst_2 : f32
        %272 = vector.splat %c0_i16 : vector<3x3x3xi16>
        %273 = arith.floordivsi %c970697758_i32, %c1057748619_i32 : i32
        %alloc_69 = memref.alloc() : memref<14xi64>
        %274 = vector.insertelement %c1465428232_i64, %46[%c5 : index] : vector<13xi64>
        %275 = math.fma %cst_0, %out, %cst : f32
        %276 = arith.remf %in, %cst_2 : f32
        memref.store %false_1, %138[%c1, %c1] : memref<3x13xi1>
        linalg.yield %153 : f32
      } -> tensor<3x3x3xf32>
      %247 = math.exp2 %153 : f32
      %248 = vector.flat_transpose %101 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
      affine.store %c463091493_i32, %alloc_13[%c8, %c15, %c8] : memref<3x3x3xi32>
      %249 = math.powf %15, %15 : tensor<3x3x3xf32>
      %250 = math.log1p %4 : tensor<14xf32>
      %251 = memref.realloc %alloc_4 : memref<13xf32> to memref<3xf32>
      %expanded_53 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<3x3x3xi64> into tensor<3x3x3x1xi64>
      %252 = vector.load %200[%c0, %c0, %c2] : memref<3x3x3xi64>, vector<3x3x3xi64>
      %253 = math.exp %2 : tensor<3x13xf16>
      %alloc_54 = memref.alloc() : memref<3x3xi32>
      %alloc_55 = memref.alloc() : memref<3xi32>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_54, %alloc_55, %alloc_55 : memref<3x3xi32>, memref<3xi32>, memref<3xi32>) outs(%8 : tensor<3x3x3xi32>) {
      ^bb0(%in: i32, %in_57: i32, %in_58: i32, %out: i32):
        vector.print %248 : vector<14xf32>
        %256 = arith.shrsi %c769945355_i64, %c1195970654_i64 : i64
        %257 = vector.bitcast %151 : vector<13xi1> to vector<13xi1>
        %258 = memref.atomic_rmw muli %c2009554598_i64, %alloc_14[%c0, %c2] : (i64, memref<3x13xi64>) -> i64
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %259 = vector.transfer_read %11[%c7, %rank, %c0], %c0_i64 : tensor<3x3x3xi64>, vector<i64>
        %260 = arith.divsi %c-19938_i16, %c0_i16 : i16
        %261 = index.ceildivu %c1, %c8
        %262 = memref.realloc %176 : memref<13xi64> to memref<3xi64>
        %263 = arith.remui %c1_i64, %c1_i64 : i64
        %264 = index.floordivs %c9, %c14
        bufferization.dealloc_tensor %10 : tensor<14xf16>
        %alloc_59 = memref.alloc() : memref<13xi64>
        %265 = vector.bitcast %140 : vector<3x3x3xf32> to vector<3x3x3xf32>
        %266 = index.maxs %70, %c6
        %267 = index.castu %c7 : index to i32
        %c1_i64_60 = arith.constant 1 : i64
        %268 = vector.transfer_read %alloc_10[%c14, %c14, %c13], %c1_i64_60 : memref<3x3x3xi64>, vector<3xi64>
        %alloc_61 = memref.alloc() : memref<3x13xi64>
        %269 = vector.flat_transpose %157 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
        %270 = index.floordivs %92, %261
        %271 = arith.andi %c1_i64, %c1195970654_i64 : i64
        %272 = math.cttz %7 : tensor<3x3x3xi16>
        %273 = index.maxu %c1, %c15
        %274 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %275 = vector.bitcast %101 : vector<14xf32> to vector<14xi32>
        %276 = arith.addi %true_28, %false_18 : i1
        %277 = vector.insert %153, %248 [0] : f32 into vector<14xf32>
        %278 = math.log10 %4 : tensor<14xf32>
        %279 = arith.minui %false, %false_18 : i1
        %280 = bufferization.clone %alloc_5 : memref<13xf32> to memref<13xf32>
        %281 = vector.flat_transpose %157 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
        %alloc_62 = memref.alloc() : memref<3x13xf16>
        %282 = math.ctpop %in : i32
        linalg.yield %in : i32
      } -> tensor<3x3x3xi32>
      %expanded_56 = tensor.expand_shape %4 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
      bufferization.dealloc_tensor %14 : tensor<13xi32>
      %255 = affine.load %alloc_13[%c12, %c2, %c1] : memref<3x3x3xi32>
    }
    %225 = math.roundeven %10 : tensor<14xf16>
    %226 = vector.insertelement %true_23, %120[%92 : index] : vector<14xi1>
    %227 = arith.ori %c463091493_i32, %c970697758_i32 : i32
    scf.index_switch %c14 
    case 1 {
      %expanded_53 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<3x3x3xi64> into tensor<3x3x3x1xi64>
      %242 = arith.ceildivsi %c463091493_i32, %c970697758_i32 : i32
      %243 = math.fpowi %cst_2, %c1057748619_i32 : f32, i32
      %244 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 floordiv 2), d0 - 32, d3 floordiv 4)>(%c8, %c4, %c2, %141)
      %245 = math.exp %2 : tensor<3x13xf16>
      %246 = vector.bitcast %84 : vector<3xi1> to vector<3xi1>
      %247 = bufferization.to_memref %from_elements : memref<3x3x3xi64>
      %cast_54 = tensor.cast %from_elements : tensor<3x3x3xi64> to tensor<?x?x?xi64>
      %248 = math.tanh %15 : tensor<3x3x3xf32>
      %249 = math.floor %cst_2 : f32
      %250 = affine.apply affine_map<(d0, d1) -> (d0)>(%c2, %55)
      %251 = arith.maxf %119, %119 : f16
      %252 = math.tan %2 : tensor<3x13xf16>
      %expanded_55 = tensor.expand_shape %152 [[0], [1, 2]] : tensor<3x13xi32> into tensor<3x13x1xi32>
      %253 = index.maxu %c14, %c4
      %254 = index.sizeof
      scf.yield
    }
    case 2 {
      %242 = index.sizeof
      %243 = arith.addi %true_28, %true_23 : i1
      %244 = vector.load %alloc_8[%c13] : memref<14xi1>, vector<3x3x3xi1>
      %cst_53 = arith.constant 1.000000e+00 : f32
      %cst_54 = arith.constant 0.000000e+00 : f32
      %245 = vector.transfer_read %alloc_5[%rank], %cst_54 : memref<13xf32>, vector<f32>
      %246 = arith.negf %119 : f16
      %247 = arith.negf %153 : f32
      %248 = index.ceildivu %rank_29, %192
      %249 = math.rsqrt %9 : tensor<13xf32>
      %250 = math.expm1 %119 : f16
      %251 = index.maxs %60, %185
      %dest_55, %accumulated_value_56 = vector.scan <maxsi>, %33, %46 {inclusive = true, reduction_dim = 1 : i64} : vector<13x13xi64>, vector<13xi64>
      %252 = arith.minf %153, %cst_53 : f32
      %from_elements_57 = tensor.from_elements %cst_24, %119, %cst_24, %119, %cst_24, %211, %119, %211, %cst_24, %cst_24, %cst_24, %211, %119 : tensor<13xf16>
      %253 = index.maxs %rank_29, %c2
      %254 = math.expm1 %cst_24 : f16
      %255 = vector.broadcast %c769945355_i64 : i64 to vector<3x13xi64>
      %256 = vector.broadcast %c1057748619_i32 : i32 to vector<3x13xi32>
      %257 = vector.gather %alloc_3[%c9] [%256], %38, %255 : memref<14xi64>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi64> into vector<3x13xi64>
      scf.yield
    }
    case 3 {
      %collapsed_53 = tensor.collapse_shape %13 [[0, 1]] : tensor<3x13xf16> into tensor<39xf16>
      %242 = arith.remf %cst, %cst_0 : f32
      %243 = vector.load %184[%c1, %c2, %c0] : memref<3x3x3xi32>, vector<13xi32>
      %244 = arith.addf %153, %cst : f32
      %245 = math.floor %2 : tensor<3x13xf16>
      %246 = index.mul %73, %c4
      %247 = arith.maxf %211, %119 : f16
      %248 = arith.addi %c1057748619_i32, %c970697758_i32 : i32
      %249 = vector.broadcast %cst : f32 to vector<3x3x3xf32>
      %250 = vector.fma %249, %139, %123 : vector<3x3x3xf32>
      %251 = math.copysign %10, %10 : tensor<14xf16>
      %252 = arith.ceildivsi %c970697758_i32, %c463091493_i32 : i32
      %alloc_54 = memref.alloc() : memref<3x3x3xi16>
      %253 = tensor.empty() : tensor<3x3xf32>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%253 : tensor<3x3xf32>) outs(%15 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %out: f32):
        %expanded_55 = tensor.expand_shape %0 [[0, 1]] : tensor<13xi64> into tensor<13x1xi64>
        %257 = arith.remsi %c-19938_i16, %c-19938_i16 : i16
        %258 = bufferization.clone %184 : memref<3x3x3xi32> to memref<3x3x3xi32>
        %259 = vector.bitcast %101 : vector<14xf32> to vector<14xi32>
        %260 = math.atan %cst_24 : f16
        %261 = math.log1p %9 : tensor<13xf32>
        %262 = arith.floordivsi %false_1, %false : i1
        %263 = index.castu %c1465428232_i64 : i64 to index
        %264 = index.castu %92 : index to i32
        %265 = math.cttz %1 : tensor<14xi1>
        %266 = vector.broadcast %cst_2 : f32 to vector<13xf32>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %166, %266 {inclusive = true, reduction_dim = 0 : i64} : vector<3x13xf32>, vector<13xf32>
        %267 = index.sizeof
        %268 = index.castu %false : i1 to index
        %269 = math.cttz %false_1 : i1
        %alloc_58 = memref.alloc() : memref<14xf16>
        %270 = math.atan %15 : tensor<3x3x3xf32>
        %271 = math.ceil %9 : tensor<13xf32>
        %272 = arith.floordivsi %c2009554598_i64, %c769945355_i64 : i64
        %273 = math.powf %211, %119 : f16
        %274 = arith.remf %cst_2, %cst_0 : f32
        %275 = math.floor %9 : tensor<13xf32>
        %c1018844196_i32 = arith.constant 1018844196 : i32
        %alloc_59 = memref.alloc() : memref<3x3x3xf32>
        %276 = math.cttz %12 : tensor<14xi16>
        %277 = arith.minui %true_25, %true_25 : i1
        %278 = arith.divsi %true, %false_18 : i1
        %279 = math.round %cst_24 : f16
        %280 = arith.negf %cst_24 : f16
        %281 = math.roundeven %13 : tensor<3x13xf16>
        %282 = math.cos %15 : tensor<3x3x3xf32>
        %283 = math.powf %cst_0, %153 : f32
        %284 = arith.cmpf ule, %153, %out : f32
        linalg.yield %in : f32
      } -> tensor<3x3x3xf32>
      %255 = math.atan %15 : tensor<3x3x3xf32>
      affine.store %c912415966_i64, %200[%c2, %c1, %c6] : memref<3x3x3xi64>
      %256 = memref.load %alloc_3[%c10] : memref<14xi64>
      scf.yield
    }
    case 4 {
      %242 = math.floor %15 : tensor<3x3x3xf32>
      %243 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 4 == 0, d2 >= 0, -(d2 mod 8) + 16 >= 0, d3 >= 0)>(%c1, %c11, %c8, %c12) -> memref<3x3x3xf16> {
        %255 = math.roundeven %10 : tensor<14xf16>
        bufferization.dealloc_tensor %8 : tensor<3x3x3xi32>
        %false_54 = index.bool.constant false
        %256 = math.cttz %true : i1
        %257 = math.floor %13 : tensor<3x13xf16>
        %258 = bufferization.to_tensor %alloc : memref<3x13xf16>
        memref.tensor_store %0, %176 : memref<13xi64>
        %259 = index.castu %false : i1 to index
        affine.yield %alloc_7 : memref<3x3x3xf16>
      } else {
        %255 = math.floor %cst_2 : f32
        %256 = index.maxu %c4, %c7
        %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %213, %126, %false : vector<3xi1>, vector<3xi1> into i1
        %258 = vector.insertelement %c0_i16, %216[%60 : index] : vector<7xi16>
        %cast_54 = tensor.cast %12 : tensor<14xi16> to tensor<?xi16>
        %259 = math.round %4 : tensor<14xf32>
        %260 = math.round %4 : tensor<14xf32>
        %261 = arith.andi %c657789472_i64, %c912415966_i64 : i64
        affine.yield %alloc_7 : memref<3x3x3xf16>
      }
      %244 = math.ctlz %true_25 : i1
      %245 = math.cttz %expanded : tensor<13x1xi64>
      %246 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c7, %c8, %162)
      %247 = bufferization.to_tensor %138 : memref<3x13xi1>
      %248 = bufferization.clone %176 : memref<13xi64> to memref<13xi64>
      memref.tensor_store %11, %alloc_10 : memref<3x3x3xi64>
      %249 = vector.bitcast %126 : vector<3xi1> to vector<3xi1>
      %250 = vector.maskedload %alloc_8[%c1], %151, %151 : memref<14xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
      %251 = math.copysign %cst, %cst : f32
      %252 = math.roundeven %15 : tensor<3x3x3xf32>
      %expanded_53 = tensor.expand_shape %reduced [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
      %253 = arith.minf %cst_0, %cst_0 : f32
      %254 = math.ctpop %11 : tensor<3x3x3xi64>
      scf.if %true_25 {
        %255 = vector.splat %c6 : vector<14xindex>
        %256 = affine.load %alloc_4[%c14] : memref<13xf32>
        %257 = math.copysign %153, %cst_2 : f32
        %258 = math.exp2 %cst : f32
        %259 = math.log %15 : tensor<3x3x3xf32>
        %cst_54 = arith.constant 0x4E5ACF3E : f32
        %260 = math.log10 %211 : f16
        %261 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %139, %261 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3x3xf32>, vector<3x3xf32>
      } else {
        %255 = memref.atomic_rmw ori %c1195970654_i64, %alloc_3[%c2] : (i64, memref<14xi64>) -> i64
        %256 = vector.bitcast %122 : vector<3x3x3xf32> to vector<3x3x3xf32>
        %cast_54 = tensor.cast %12 : tensor<14xi16> to tensor<?xi16>
        %257 = vector.reduction <maxui>, %84 : vector<3xi1> into i1
        %258 = arith.maxf %cst_0, %cst : f32
        affine.store %c657789472_i64, %176[%c2] : memref<13xi64>
        %259 = arith.remsi %true_28, %false : i1
        %260 = math.ctpop %splat : tensor<3x3x3xi32>
      }
      scf.yield
    }
    default {
      %242 = vector.broadcast %cst_2 : f32 to vector<14xf32>
      %243 = vector.fma %242, %242, %149 : vector<14xf32>
      %244 = vector.shuffle %122, %122 [0, 2, 3] : vector<3x3x3xf32>, vector<3x3x3xf32>
      %245 = math.absi %7 : tensor<3x3x3xi16>
      %246 = arith.ori %c912415966_i64, %c2009554598_i64 : i64
      %alloc_53 = memref.alloc() : memref<3x3x3xi32>
      %dest_54, %accumulated_value_55 = vector.scan <add>, %38, %151 {inclusive = false, reduction_dim = 0 : i64} : vector<3x13xi1>, vector<13xi1>
      %247 = math.rsqrt %4 : tensor<14xf32>
      scf.if %false_18 {
        %alloc_56 = memref.alloc() : memref<9x3xi32>
        memref.tensor_store %collapsed_49, %alloc_56 : memref<9x3xi32>
        %255 = arith.addf %cst_24, %cst_24 : f16
        %256 = math.floor %4 : tensor<14xf32>
        %257 = index.ceildivs %c4, %c2
        %258 = vector.flat_transpose %243 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %259 = vector.shuffle %86, %86 [0, 1, 2, 4, 6, 7, 11, 12, 16, 17, 18, 20, 21, 23, 25] : vector<14xi1>, vector<14xi1>
        %260 = vector.maskedload %200[%c0, %c1, %c1], %126, %61 : memref<3x3x3xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %84, %38, %151 : vector<3xi1>, vector<3x13xi1> into vector<13xi1>
      } else {
        %255 = bufferization.to_memref %expanded_48 : memref<3x1xi64>
        %collapsed_56 = tensor.collapse_shape %17 [[0, 1]] : tensor<3x13xi32> into tensor<39xi32>
        %inserted_57 = tensor.insert %c1195970654_i64 into %19[%c2] : tensor<3xi64>
        %256 = math.copysign %4, %158 : tensor<14xf32>
        %257 = vector.insertelement %false, %89[%c5 : index] : vector<14xi1>
        vector.print %117 : vector<13x13xi64>
        %258 = math.rsqrt %15 : tensor<3x3x3xf32>
        %259 = arith.andi %c970697758_i32, %c463091493_i32 : i32
      }
      %248 = arith.remf %cst_24, %211 : f16
      affine.store %true_25, %alloc_9[%c2] : memref<13xi1>
      %249 = math.atan2 %collapsed, %collapsed : tensor<39xf16>
      %250 = math.atan %4 : tensor<14xf32>
      %251 = math.absi %true : i1
      %252 = math.atan2 %153, %cst : f32
      %253 = vector.reduction <add>, %213 : vector<3xi1> into i1
      %254 = math.log %4 : tensor<14xf32>
    }
    %228 = vector.load %alloc_13[%c2, %c0, %c1] : memref<3x3x3xi32>, vector<3x3x3xi32>
    %229 = vector.broadcast %c1057748619_i32 : i32 to vector<13xi32>
    %230 = vector.maskedload %alloc_13[%c0, %c0, %c1], %151, %229 : memref<3x3x3xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
    %231 = arith.ceildivsi %c2144428619_i32, %c463091493_i32 : i32
    %232 = vector.transpose %33, [0, 1] : vector<13x13xi64> to vector<13x13xi64>
    %from_elements_50 = tensor.from_elements %c0_i16, %c-19938_i16, %c0_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c0_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c-19938_i16, %c0_i16 : tensor<13xi16>
    %233 = affine.if affine_set<(d0) : (-d0 - 128 == 0, -(d0 * -2 + 128) >= 0, -128 == 0, d0 - 128 == 0)>(%c5) -> memref<3x3x3xi32> {
      %242 = bufferization.clone %alloc_15 : memref<14xi16> to memref<14xi16>
      %243 = index.ceildivs %162, %c3
      %244 = vector.reduction <and>, %229 : vector<13xi32> into i32
      %245 = arith.negf %cst_0 : f32
      %246 = vector.broadcast %92 : index to vector<13xindex>
      vector.scatter %alloc_10[%c2, %c0, %c2] [%246], %151, %46 : memref<3x3x3xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
      %247 = math.ctpop %from_elements_37 : tensor<13xi32>
      %248 = math.fma %cst_0, %cst, %153 : f32
      %false_53 = arith.constant false
      affine.yield %184 : memref<3x3x3xi32>
    } else {
      scf.index_switch %118 
      case 1 {
        %249 = index.ceildivs %192, %c2
        affine.store %119, %alloc_7[%c1, %c11, %c14] : memref<3x3x3xf16>
        %250 = math.roundeven %211 : f16
        %251 = arith.addi %c1195970654_i64, %c1195970654_i64 : i64
        %252 = math.atan2 %221, %221 : tensor<3x3x3xf16>
        %253 = arith.xori %c657789472_i64, %c1465428232_i64 : i64
        %254 = index.sizeof
        %255 = arith.muli %c970697758_i32, %c970697758_i32 : i32
        %256 = math.tanh %211 : f16
        %257 = index.maxu %192, %112
        %258 = math.absi %c1195970654_i64 : i64
        %259 = arith.ceildivsi %true, %true : i1
        %260 = index.sizeof
        %261 = vector.broadcast %c1057748619_i32 : i32 to vector<14xi32>
        %262 = math.ctlz %true_23 : i1
        %263 = arith.remf %211, %cst_24 : f16
        scf.yield
      }
      case 2 {
        %249 = math.log %cst_2 : f32
        %250 = affine.max affine_map<(d0, d1, d2) -> (-d0, d2 - d0 + 1, d2)>(%141, %c8, %202)
        %251 = vector.maskedload %alloc_10[%c2, %c2, %c1], %126, %61 : memref<3x3x3xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %expanded_54 = tensor.expand_shape %1 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
        %252 = math.absi %reduced : tensor<3xi64>
        %253 = vector.load %alloc_10[%c2, %c1, %c0] : memref<3x3x3xi64>, vector<3x13xi64>
        %extracted = tensor.extract %22[%c4] : tensor<13xi64>
        %254 = arith.xori %c1195970654_i64, %c657789472_i64 : i64
        affine.store %c970697758_i32, %184[%c3, %c2, %c4] : memref<3x3x3xi32>
        %255 = vector.broadcast %211 : f16 to vector<3x13xf16>
        %256 = vector.broadcast %c1057748619_i32 : i32 to vector<3x13xi32>
        %257 = vector.gather %221[%112, %c0, %141] [%256], %38, %255 : tensor<3x3x3xf16>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xf16> into vector<3x13xf16>
        %collapsed_55 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<3x3x3xi16> into tensor<9x3xi16>
        %258 = math.ipowi %from_elements, %6 : tensor<3x3x3xi64>
        %259 = math.fpowi %15, %8 : tensor<3x3x3xf32>, tensor<3x3x3xi32>
        %260 = arith.addi %c1057748619_i32, %c1057748619_i32 : i32
        %261 = affine.load %alloc_10[%c15, %c10, %c8] : memref<3x3x3xi64>
        %cast_56 = tensor.cast %from_elements_37 : tensor<13xi32> to tensor<?xi32>
        scf.yield
      }
      case 3 {
        %249 = vector.flat_transpose %86 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
        %250 = vector.splat %141 : vector<3x3x3xindex>
        %251 = math.ctpop %7 : tensor<3x3x3xi16>
        %252 = index.ceildivs %c4, %c2
        %253 = math.ceil %10 : tensor<14xf16>
        %254 = vector.broadcast %c2144428619_i32 : i32 to vector<14xi32>
        %255 = vector.gather %4[%141] [%254], %89, %149 : tensor<14xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %alloc_54 = memref.alloc() : memref<14xi64>
        %256 = math.atan %4 : tensor<14xf32>
        %true_55 = index.bool.constant true
        %257 = arith.ceildivsi %true_23, %false_44 : i1
        %alloca_56 = memref.alloca() : memref<3x13xi64>
        %extracted = tensor.extract %19[%c0] : tensor<3xi64>
        %258 = math.absf %cst : f32
        %259 = math.copysign %4, %4 : tensor<14xf32>
        %260 = index.casts %43 : index to i32
        %261 = arith.xori %c0_i16, %c-19938_i16 : i16
        scf.yield
      }
      case 4 {
        %249 = index.ceildivu %c9, %96
        %250 = math.powf %cst, %cst : f32
        %251 = math.atan2 %collapsed, %collapsed : tensor<39xf16>
        %252 = vector.insert %211, %83 [2] : f16 into vector<3xf16>
        %false_54 = index.bool.constant false
        %253 = vector.maskedload %alloc_15[%c1], %151, %204 : memref<14xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
        %254 = math.absi %8 : tensor<3x3x3xi32>
        %255 = affine.min affine_map<(d0, d1) -> (-(d1 + 16), 64, 0)>(%141, %185)
        %256 = arith.maxf %cst_24, %cst_24 : f16
        %257 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
        %258 = vector.insert %257, %140 [1] : vector<3x3xf32> into vector<3x3x3xf32>
        %expanded_55 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<3x3x3xi16> into tensor<3x3x3x1xi16>
        %rank_56 = tensor.rank %23 : tensor<i64>
        %259 = vector.broadcast %c1195970654_i64 : i64 to vector<3x3xi64>
        %260 = vector.outerproduct %21, %61, %259 {kind = #vector.kind<xor>} : vector<3xi64>, vector<3xi64>
        %261 = vector.broadcast %211 : f16 to vector<3xf16>
        %262 = vector.transfer_write %261, %221[%c11, %c13, %55] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf16>, tensor<3x3x3xf16>
        %263 = index.ceildivu %162, %c0
        %264 = math.absi %expanded_55 : tensor<3x3x3x1xi16>
        scf.yield
      }
      default {
        %249 = math.ctpop %collapsed_49 : tensor<9x3xi32>
        %250 = vector.bitcast %203 : vector<13xi16> to vector<13xi16>
        %251 = math.exp %cst_2 : f32
        %252 = arith.ceildivsi %true, %true : i1
        %cast_54 = tensor.cast %collapsed_49 : tensor<9x3xi32> to tensor<?x?xi32>
        %253 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %33, %33, %33 : vector<13x13xi64>, vector<13x13xi64> into vector<13x13xi64>
        %254 = math.expm1 %211 : f16
        %255 = math.tanh %2 : tensor<3x13xf16>
        %256 = index.floordivs %60, %43
        %257 = math.absi %false_1 : i1
        %258 = math.round %119 : f16
        %259 = memref.atomic_rmw maxu %c2144428619_i32, %184[%c2, %c0, %c1] : (i32, memref<3x3x3xi32>) -> i32
        %inserted_55 = tensor.insert %c1195970654_i64 into %19[%c0] : tensor<3xi64>
        %260 = arith.remf %cst, %cst_0 : f32
        %261 = index.casts %c1057748619_i32 : i32 to index
        %262 = math.powf %cst_2, %cst_2 : f32
      }
      %242 = vector.insert %c769945355_i64, %61 [1] : i64 into vector<3xi64>
      %243 = tensor.empty() : tensor<13x3xf16>
      %244 = tensor.empty() : tensor<3x3xf16>
      %245 = linalg.matmul ins(%13, %243 : tensor<3x13xf16>, tensor<13x3xf16>) outs(%244 : tensor<3x3xf16>) -> tensor<3x3xf16>
      %246 = math.log %4 : tensor<14xf32>
      %247 = vector.insert %c1195970654_i64, %61 [2] : i64 into vector<3xi64>
      bufferization.dealloc_tensor %7 : tensor<3x3x3xi16>
      %248 = memref.realloc %alloc_3 : memref<14xi64> to memref<13xi64>
      %inserted_53 = tensor.insert %c463091493_i32 into %collapsed_49[%c4, %c1] : tensor<9x3xi32>
      affine.yield %184 : memref<3x3x3xi32>
    }
    %234 = arith.addi %true_28, %true : i1
    %235 = math.round %9 : tensor<13xf32>
    %236 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 8 - (d1 * 2) ceildiv 8)>(%70, %rank, %60)
    %237 = math.ctlz %18 : tensor<13x3xi32>
    %238 = tensor.empty() : tensor<i64>
    %239 = linalg.copy ins(%24 : tensor<i64>) outs(%238 : tensor<i64>) -> tensor<i64>
    %alloc_51 = memref.alloc(%c9, %73) : memref<?x?xi16>
    linalg.transpose ins(%collapsed_21 : tensor<?x?xi16>) outs(%alloc_51 : memref<?x?xi16>) permutation = [1, 0] 
    %240 = tensor.empty() : tensor<f32>
    %reduced_52 = linalg.reduce ins(%alloc_12 : memref<13xf32>) outs(%240 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %242 = index.mul %c7, %c8
        %243 = index.maxu %73, %c14
        %244 = math.tan %9 : tensor<13xf32>
        %245 = arith.xori %c1465428232_i64, %c2009554598_i64 : i64
        %246 = math.expm1 %9 : tensor<13xf32>
        %247 = arith.remf %cst_2, %in : f32
        %248 = bufferization.clone %176 : memref<13xi64> to memref<13xi64>
        %249 = arith.negf %cst_0 : f32
        %cst_53 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_53 : f32
      }
    scf.parallel (%arg0) = (%192) to (%202) step (%c11) {
      %242 = vector.transpose %21, [0] : vector<3xi64> to vector<3xi64>
      %243 = vector.reduction <and>, %230 : vector<13xi32> into i32
      %244 = index.maxu %112, %c9
      %245 = arith.remf %cst, %cst_2 : f32
      %246 = math.tanh %153 : f32
      %splat_53 = tensor.splat %c1057748619_i32 : tensor<3x3x3xi32>
      %247 = math.expm1 %10 : tensor<14xf16>
      %248 = index.castu %true : i1 to index
      memref.tensor_store %12, %alloc_15 : memref<14xi16>
      %249 = math.sqrt %cst_24 : f16
      %splat_54 = tensor.splat %119 : tensor<3x13xf16>
      %250 = vector.insert %true_28, %84 [0] : i1 into vector<3xi1>
      %251 = bufferization.clone %alloc_13 : memref<3x3x3xi32> to memref<3x3x3xi32>
      %splat_55 = tensor.splat %c1195970654_i64 : tensor<3x3x3xi64>
      %alloc_56 = memref.alloc() : memref<3x3x3xi32>
      %from_elements_57 = tensor.from_elements %cst_2, %cst_2, %cst_0, %153, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %153, %cst_0, %cst_2, %153, %cst_2, %cst_2, %153, %cst_0, %cst, %153, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst, %cst_0 : tensor<3x3x3xf32>
      scf.yield
    }
    %241 = affine.vector_load %176[%c14] : memref<13xi64>, vector<3xi64>
    affine.vector_store %157, %alloc_10[%c6, %112, %c11] : memref<3x3x3xi64>, vector<14xi64>
    vector.print %21 : vector<3xi64>
    vector.print %33 : vector<13x13xi64>
    vector.print %38 : vector<3x13xi1>
    vector.print %46 : vector<13xi64>
    vector.print %61 : vector<3xi64>
    vector.print %64 : vector<f16>
    vector.print %83 : vector<3xf16>
    vector.print %84 : vector<3xi1>
    vector.print %85 : vector<3xf16>
    vector.print %86 : vector<14xi1>
    vector.print %89 : vector<14xi1>
    vector.print %101 : vector<14xf32>
    vector.print %117 : vector<13x13xi64>
    vector.print %120 : vector<14xi1>
    vector.print %122 : vector<3x3x3xf32>
    vector.print %123 : vector<3x3x3xf32>
    vector.print %126 : vector<3xi1>
    vector.print %128 : vector<3x3x3xi16>
    vector.print %139 : vector<3x3x3xf32>
    vector.print %140 : vector<3x3x3xf32>
    vector.print %149 : vector<14xf32>
    vector.print %150 : vector<14xf32>
    vector.print %151 : vector<13xi1>
    vector.print %157 : vector<14xi64>
    vector.print %166 : vector<3x13xf32>
    vector.print %167 : vector<3x13xf32>
    vector.print %195 : vector<3xi1>
    vector.print %203 : vector<13xi16>
    vector.print %204 : vector<13xi16>
    vector.print %213 : vector<3xi1>
    vector.print %216 : vector<7xi16>
    vector.print %228 : vector<3x3x3xi32>
    vector.print %229 : vector<13xi32>
    vector.print %230 : vector<13xi32>
    vector.print %241 : vector<3xi64>
    vector.print %false : i1
    vector.print %c1057748619_i32 : i32
    vector.print %c1195970654_i64 : i64
    vector.print %cst : f32
    vector.print %c2009554598_i64 : i64
    vector.print %c-19938_i16 : i16
    vector.print %c970697758_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c657789472_i64 : i64
    vector.print %false_1 : i1
    vector.print %cst_2 : f32
    vector.print %c769945355_i64 : i64
    vector.print %c2144428619_i32 : i32
    vector.print %c1465428232_i64 : i64
    vector.print %c463091493_i32 : i32
    vector.print %c912415966_i64 : i64
    vector.print %false_18 : i1
    vector.print %true : i1
    vector.print %true_23 : i1
    vector.print %cst_24 : f16
    vector.print %true_25 : i1
    vector.print %true_28 : i1
    vector.print %119 : f16
    vector.print %153 : f32
    vector.print %c0_i16 : i16
    vector.print %false_44 : i1
    vector.print %211 : f16
    return
  }
}
