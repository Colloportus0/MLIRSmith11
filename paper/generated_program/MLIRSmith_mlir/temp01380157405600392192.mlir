module {
  func.func @func1(%arg0: memref<12x12xf32>, %arg1: vector<7x4xi16>, %arg2: index) -> vector<4x4xf16> {
    %cst = arith.constant 3.136000e+04 : f16
    %cst_0 = arith.constant 5.296000e+04 : f16
    %c845231582_i64 = arith.constant 845231582 : i64
    %c-4576_i16 = arith.constant -4576 : i16
    %c1133525898_i64 = arith.constant 1133525898 : i64
    %c-22933_i16 = arith.constant -22933 : i16
    %cst_1 = arith.constant 1.55820851E+9 : f32
    %c2036248310_i32 = arith.constant 2036248310 : i32
    %cst_2 = arith.constant 1.03044166E+9 : f32
    %c-4657_i16 = arith.constant -4657 : i16
    %cst_3 = arith.constant 1.62110515E+9 : f32
    %cst_4 = arith.constant 1.62415066E+9 : f32
    %cst_5 = arith.constant 2.051200e+04 : f16
    %c683439869_i32 = arith.constant 683439869 : i32
    %cst_6 = arith.constant 0x4D2A3D14 : f32
    %cst_7 = arith.constant 3.395200e+04 : f16
    %0 = tensor.empty() : tensor<7x4xf16>
    %1 = tensor.empty() : tensor<12x12xi64>
    %2 = tensor.empty() : tensor<12x12xi32>
    %3 = tensor.empty() : tensor<12x12xf16>
    %4 = tensor.empty() : tensor<12x12xf16>
    %5 = tensor.empty() : tensor<7x4xi16>
    %6 = tensor.empty() : tensor<12x12xi1>
    %7 = tensor.empty() : tensor<12x12xi1>
    %8 = tensor.empty() : tensor<12x12xi32>
    %9 = tensor.empty() : tensor<12x12xi32>
    %10 = tensor.empty() : tensor<4x4xi64>
    %11 = tensor.empty() : tensor<12x12xf16>
    %12 = tensor.empty() : tensor<4x4xf16>
    %13 = tensor.empty() : tensor<12x12xf16>
    %14 = tensor.empty() : tensor<12x12xf16>
    %15 = tensor.empty() : tensor<4x4xi16>
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
    %alloc = memref.alloc() : memref<12x12xf16>
    %alloc_8 = memref.alloc() : memref<12x12xi16>
    %alloc_9 = memref.alloc() : memref<4x4xi64>
    %alloc_10 = memref.alloc() : memref<12x12xf16>
    %alloc_11 = memref.alloc() : memref<7x4xi32>
    %alloc_12 = memref.alloc() : memref<12x12xf16>
    %alloc_13 = memref.alloc() : memref<7x4xi1>
    %alloc_14 = memref.alloc() : memref<12x12xi32>
    %alloc_15 = memref.alloc() : memref<12x12xi64>
    %alloc_16 = memref.alloc() : memref<7x4xi64>
    %alloc_17 = memref.alloc() : memref<12x12xi32>
    %alloc_18 = memref.alloc() : memref<12x12xi1>
    %alloc_19 = memref.alloc() : memref<12x12xi16>
    %alloc_20 = memref.alloc() : memref<12x12xi1>
    %alloc_21 = memref.alloc() : memref<7x4xi1>
    %alloc_22 = memref.alloc() : memref<12x12xi16>
    %16 = tensor.empty() : tensor<4x4xf16>
    %17 = linalg.copy ins(%12 : tensor<4x4xf16>) outs(%16 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %alloc_23 = memref.alloc() : memref<12x12xi1>
    linalg.transpose ins(%7 : tensor<12x12xi1>) outs(%alloc_23 : memref<12x12xi1>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%6 : tensor<12x12xi1>) outs(%18 : tensor<i1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %cast_51 = tensor.cast %2 : tensor<12x12xi32> to tensor<?x?xi32>
        %from_elements = tensor.from_elements %cst_5, %cst_0, %cst_5, %cst, %cst_0, %cst_0, %cst_7, %cst, %cst_0, %cst, %cst, %cst_7, %cst_0, %cst_5, %cst_7, %cst_7, %cst_5, %cst_7, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_7, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_5, %cst_0, %cst_7, %cst_7, %cst, %cst_5, %cst_5, %cst_5, %cst_0, %cst_7, %cst, %cst_5, %cst, %cst_7, %cst, %cst, %cst_5, %cst_7, %cst_7, %cst, %cst_0, %cst_0, %cst_0, %cst_5, %cst_7, %cst_0, %cst_0, %cst, %cst_0, %cst_5, %cst, %cst, %cst_7, %cst, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst, %cst_7, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_7, %cst, %cst, %cst_5, %cst_7, %cst_0, %cst, %cst_5, %cst, %cst, %cst_7, %cst, %cst_0, %cst_7, %cst_7, %cst_5, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_5, %cst_7, %cst_5, %cst_7, %cst_7, %cst_0, %cst_7, %cst, %cst_5, %cst, %cst_7, %cst, %cst_5, %cst_5, %cst_7, %cst_5, %cst, %cst_7, %cst, %cst_5, %cst_7, %cst_5, %cst_7, %cst_7, %cst, %cst_7, %cst_0, %cst_7, %cst_0, %cst_5 : tensor<12x12xf16>
        bufferization.dealloc_tensor %12 : tensor<4x4xf16>
        %255 = vector.splat %cst_6 : vector<4x4xf32>
        %256 = affine.if affine_set<(d0) : (-d0 == 0, ((d0 * 2) floordiv 128) floordiv 8 == 0, (d0 * 2) floordiv 128 >= 0, d0 >= 0)>(%c8) -> memref<12x12xf16> {
          %261 = vector.broadcast %cst_1 : f32 to vector<7x4xf32>
          %262 = vector.shuffle %261, %261 [1, 4, 6, 8, 9, 10, 11, 12] : vector<7x4xf32>, vector<7x4xf32>
          %263 = vector.broadcast %in : i1 to vector<1xi1>
          %264 = vector.bitcast %263 : vector<1xi1> to vector<1xi1>
          %rank_54 = tensor.rank %12 : tensor<4x4xf16>
          %265 = vector.broadcast %cst_5 : f16 to vector<12x12xf16>
          %266 = arith.maxui %c-4576_i16, %c-22933_i16 : i16
          %267 = math.cttz %15 : tensor<4x4xi16>
          %splat_55 = tensor.splat %c-22933_i16 : tensor<12x12xi16>
          %268 = arith.mulf %cst_3, %cst_2 : f32
          affine.yield %alloc_10 : memref<12x12xf16>
        } else {
          %261 = vector.broadcast %c-4657_i16 : i16 to vector<4xi16>
          %262 = vector.reduction <minui>, %261 : vector<4xi16> into i16
          %expanded_54 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x12xi64> into tensor<12x12x1xi64>
          %263 = arith.divui %c-22933_i16, %c-22933_i16 : i16
          %264 = vector.broadcast %cst_5 : f16 to vector<12x12xf16>
          memref.assume_alignment %alloc_20, 8 : memref<12x12xi1>
          %265 = affine.min affine_map<(d0) -> (d0 - 64, d0 - 64)>(%c5)
          %266 = arith.minf %cst_5, %cst_7 : f16
          %alloc_55 = memref.alloc() : memref<12x12xi32>
          affine.yield %alloc_10 : memref<12x12xf16>
        }
        %257 = index.sub %c12, %c7
        %258 = vector.broadcast %cst_4 : f32 to vector<12x12xf32>
        %259 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
        %260 = vector.fma %259, %259, %259 : vector<7x4xf32>
        %rank_52 = tensor.rank %15 : tensor<4x4xi16>
        %false_53 = arith.constant false
        linalg.yield %false_53 : i1
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c10, %c12) to (%c0, %c8) step (%c5, %c6) init (%3) -> tensor<12x12xf16> {
      %255 = affine.load %alloc_19[%c14, %c8] : memref<12x12xi16>
      %256 = bufferization.clone %alloc_11 : memref<7x4xi32> to memref<7x4xi32>
      %257 = math.tanh %cst_5 : f16
      %258 = scf.index_switch %c14 -> index 
      case 1 {
        %true_51 = arith.constant true
        %271 = vector.broadcast %true_51 : i1 to vector<7xi1>
        %272 = vector.reduction <mul>, %271 : vector<7xi1> into i1
        %273 = vector.broadcast %c2036248310_i32 : i32 to vector<i32>
        %274 = vector.transfer_write %273, %9[%c14, %c7] : vector<i32>, tensor<12x12xi32>
        %275 = vector.insertelement %c683439869_i32, %273[] : vector<i32>
        %collapsed_52 = tensor.collapse_shape %17 [[0, 1]] : tensor<4x4xf16> into tensor<16xf16>
        %splat_53 = tensor.splat %cst_5 : tensor<12x12xf16>
        %276 = vector.broadcast %c-22933_i16 : i16 to vector<12xi16>
        %false_54 = arith.constant false
        %277 = vector.broadcast %false_54 : i1 to vector<12xi1>
        %278 = vector.maskedload %alloc_8[%c6, %c3], %277, %276 : memref<12x12xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %279 = arith.cmpf true, %cst_4, %cst_6 : f32
        %280 = arith.shrsi %c683439869_i32, %c683439869_i32 : i32
        %281 = arith.cmpi ugt, %c2036248310_i32, %c683439869_i32 : i32
        %282 = affine.apply affine_map<(d0) -> (d0)>(%c2)
        %283 = arith.xori %c1133525898_i64, %c845231582_i64 : i64
        memref.assume_alignment %alloc_8, 16 : memref<12x12xi16>
        %284 = index.divu %c14, %282
        %285 = arith.remf %cst, %cst_5 : f16
        %286 = bufferization.to_memref %14 : memref<12x12xf16>
        %287 = math.log1p %cst : f16
        scf.yield %c5 : index
      }
      case 2 {
        %271 = vector.broadcast %255 : i16 to vector<12x12xi16>
        vector.print %271 : vector<12x12xi16>
        %272 = math.log10 %13 : tensor<12x12xf16>
        %273 = index.casts %255 : i16 to index
        %274 = arith.maxf %cst, %cst_5 : f16
        %275 = vector.broadcast %c1133525898_i64 : i64 to vector<12xi64>
        %true_51 = arith.constant true
        %276 = vector.broadcast %true_51 : i1 to vector<12xi1>
        %277 = vector.maskedload %alloc_9[%c0, %c2], %276, %275 : memref<4x4xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %278 = math.round %cst_0 : f16
        %279 = memref.load %alloc_15[%c6, %c3] : memref<12x12xi64>
        %280 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
        %281 = vector.fma %280, %280, %280 : vector<12x12xf32>
        %inserted_52 = tensor.insert %cst_7 into %13[%c0, %c8] : tensor<12x12xf16>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %275, %277, %c845231582_i64 : vector<12xi64>, vector<12xi64> into i64
        %283 = arith.maxsi %c-4576_i16, %c-22933_i16 : i16
        %284 = index.mul %c13, %c11
        %285 = index.maxu %c13, %c13
        %alloc_53 = memref.alloc() : memref<4x4xi16>
        %286 = vector.bitcast %280 : vector<12x12xf32> to vector<12x12xf32>
        %287 = index.sub %c13, %c3
        scf.yield %c12 : index
      }
      case 3 {
        %271 = arith.muli %c2036248310_i32, %c2036248310_i32 : i32
        %272 = index.mul %c6, %c3
        %273 = math.ipowi %8, %2 : tensor<12x12xi32>
        memref.store %c-4657_i16, %alloc_22[%c1, %c9] : memref<12x12xi16>
        %274 = math.exp %14 : tensor<12x12xf16>
        %275 = math.absi %c1133525898_i64 : i64
        %276 = arith.remf %cst, %cst_7 : f16
        %277 = arith.xori %c-4657_i16, %c-4657_i16 : i16
        %278 = arith.mulf %cst_5, %cst_0 : f16
        %279 = arith.cmpf one, %cst_6, %cst_6 : f32
        %280 = arith.maxui %c683439869_i32, %c683439869_i32 : i32
        %281 = math.atan2 %cst_2, %cst_3 : f32
        %282 = index.maxs %c6, %c15
        %283 = arith.cmpf ogt, %cst_0, %cst_7 : f16
        %284 = math.floor %3 : tensor<12x12xf16>
        %inserted_51 = tensor.insert %c1133525898_i64 into %1[%c9, %c5] : tensor<12x12xi64>
        scf.yield %c6 : index
      }
      default {
        %271 = arith.shrsi %c-22933_i16, %c-4576_i16 : i16
        %inserted_51 = tensor.insert %cst_7 into %11[%c10, %c7] : tensor<12x12xf16>
        %272 = math.ceil %cst_5 : f16
        %collapsed_52 = tensor.collapse_shape %3 [[0, 1]] : tensor<12x12xf16> into tensor<144xf16>
        %273 = arith.negf %cst_6 : f32
        %274 = math.ceil %11 : tensor<12x12xf16>
        %275 = vector.create_mask %c3, %c6 : vector<12x12xi1>
        %276 = arith.maxf %cst_4, %cst_3 : f32
        %277 = bufferization.to_memref %8 : memref<12x12xi32>
        %expanded_53 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<7x4xf16> into tensor<7x4x1xf16>
        %278 = vector.bitcast %275 : vector<12x12xi1> to vector<12x12xi1>
        %279 = arith.cmpi sge, %255, %c-4576_i16 : i16
        %280 = math.round %11 : tensor<12x12xf16>
        %expanded_54 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<12x12xf16> into tensor<12x12x1xf16>
        %281 = arith.maxsi %c683439869_i32, %c2036248310_i32 : i32
        %282 = arith.ori %c2036248310_i32, %c2036248310_i32 : i32
        scf.yield %c0 : index
      }
      %259 = math.round %14 : tensor<12x12xf16>
      memref.copy %alloc, %alloc_12 : memref<12x12xf16> to memref<12x12xf16>
      %260 = arith.remsi %c2036248310_i32, %c2036248310_i32 : i32
      %261 = arith.shrsi %c2036248310_i32, %c683439869_i32 : i32
      %262 = math.atan2 %16, %17 : tensor<4x4xf16>
      %263 = arith.maxsi %c1133525898_i64, %c1133525898_i64 : i64
      %264 = arith.remsi %c845231582_i64, %c845231582_i64 : i64
      %265 = math.round %4 : tensor<12x12xf16>
      %266 = math.ceil %14 : tensor<12x12xf16>
      %267 = vector.create_mask %c1, %arg4 : vector<12x12xi1>
      %268 = index.casts %c12 : index to i32
      %269 = math.ceil %11 : tensor<12x12xf16>
      %270 = tensor.empty() : tensor<12x12xf16>
      scf.reduce(%270)  : tensor<12x12xf16> {
      ^bb0(%arg5: tensor<12x12xf16>, %arg6: tensor<12x12xf16>):
        %271 = math.rsqrt %0 : tensor<7x4xf16>
        %272 = vector.shuffle %267, %267 [0, 1, 2, 3, 5, 6, 7, 9, 13, 15, 18, 21, 22, 23] : vector<12x12xi1>, vector<12x12xi1>
        %273 = arith.maxf %cst_5, %cst : f16
        %274 = bufferization.clone %alloc_22 : memref<12x12xi16> to memref<12x12xi16>
        %275 = math.atan %cst : f16
        %276 = affine.max affine_map<(d0) -> ((d0 mod 128 - d0 - 16) ceildiv 16, 0, 0)>(%c11)
        %277 = math.round %cst_3 : f32
        %278 = arith.minf %cst_3, %cst_4 : f32
        %279 = tensor.empty() : tensor<12x12xf16>
        scf.reduce.return %279 : tensor<12x12xf16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_23[%c10, %c14] : memref<12x12xi1>, vector<7xi1>
    affine.vector_store %20, %alloc_18[%c11, %c13] : memref<12x12xi1>, vector<7xi1>
    %21 = tensor.empty() : tensor<12xi1>
    %22 = tensor.empty() : tensor<12xi1>
    %23 = tensor.empty() : tensor<i1>
    %24 = linalg.dot ins(%21, %22 : tensor<12xi1>, tensor<12xi1>) outs(%23 : tensor<i1>) -> tensor<i1>
    %25 = arith.xori %c2036248310_i32, %c2036248310_i32 : i32
    %26 = math.ceil %cst_7 : f16
    %27 = math.round %cst : f16
    %false = arith.constant false
    %28 = vector.broadcast %false : i1 to vector<7x7xi1>
    %29 = vector.outerproduct %20, %20, %28 {kind = #vector.kind<maxui>} : vector<7xi1>, vector<7xi1>
    memref.assume_alignment %alloc_11, 4 : memref<7x4xi32>
    %30 = arith.remsi %c683439869_i32, %c683439869_i32 : i32
    %31 = arith.remsi %c1133525898_i64, %c1133525898_i64 : i64
    %32 = arith.addf %cst_0, %cst_7 : f16
    %33 = math.exp %4 : tensor<12x12xf16>
    %34 = math.floor %3 : tensor<12x12xf16>
    %35 = math.absf %13 : tensor<12x12xf16>
    %alloc_24 = memref.alloc() : memref<4x4xi32>
    %36 = math.cttz %8 : tensor<12x12xi32>
    %37 = vector.create_mask %c2, %c8 : vector<4x4xi1>
    %38 = vector.reduction <maxsi>, %20 : vector<7xi1> into i1
    %39 = math.floor %3 : tensor<12x12xf16>
    %40 = math.tan %11 : tensor<12x12xf16>
    %41 = arith.divsi %c-4657_i16, %c-4657_i16 : i16
    %42 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
    %43 = vector.fma %42, %42, %42 : vector<4x4xf32>
    %c1_i32 = arith.constant 1 : i32
    %44 = vector.transfer_read %8[%c3, %c3], %c1_i32 : tensor<12x12xi32>, vector<4xi32>
    %45 = index.castu %c3 : index to i32
    %46 = math.round %4 : tensor<12x12xf16>
    %47 = vector.bitcast %43 : vector<4x4xf32> to vector<4x4xf32>
    %48 = arith.shrsi %c-4576_i16, %c-4657_i16 : i16
    %49 = arith.floordivsi %c683439869_i32, %c683439869_i32 : i32
    %50 = tensor.empty() : tensor<8x8x8xf16>
    %alloc_25 = memref.alloc() : memref<8xf16>
    %51 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%50, %alloc_25, %50 : tensor<8x8x8xf16>, memref<8xf16>, tensor<8x8x8xf16>) outs(%50 : tensor<8x8x8xf16>) {
    ^bb0(%in: f16, %in_51: f16, %in_52: f16, %out: f16):
      %255 = math.atan %14 : tensor<12x12xf16>
      %256 = arith.negf %cst_5 : f16
      %257 = affine.if affine_set<(d0, d1, d2) : (0 == 0)>(%c15, %c9, %c5) -> i1 {
        %284 = vector.broadcast %c-22933_i16 : i16 to vector<12xi16>
        %true_56 = arith.constant true
        %285 = vector.broadcast %true_56 : i1 to vector<12xi1>
        %286 = vector.maskedload %alloc_19[%c2, %c4], %285, %284 : memref<12x12xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %287 = vector.flat_transpose %286 {columns = 3 : i32, rows = 4 : i32} : vector<12xi16> -> vector<12xi16>
        %288 = vector.maskedload %alloc_21[%c4, %c1], %285, %285 : memref<7x4xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %289 = arith.xori %c-4576_i16, %c-4657_i16 : i16
        %290 = index.castu %c6 : index to i32
        %291 = math.ceil %out : f16
        %292 = arith.minf %cst_7, %in : f16
        vector.print %285 : vector<12xi1>
        affine.yield %true_56 : i1
      } else {
        %284 = math.cttz %c845231582_i64 : i64
        %285 = math.absf %cst_5 : f16
        %286 = arith.cmpi sle, %c2036248310_i32, %c2036248310_i32 : i32
        %287 = vector.transpose %37, [1, 0] : vector<4x4xi1> to vector<4x4xi1>
        %288 = arith.remsi %c-4657_i16, %c-4576_i16 : i16
        %289 = index.sizeof
        %inserted_56 = tensor.insert %out into %11[%c9, %c0] : tensor<12x12xf16>
        %290 = arith.negf %cst_5 : f16
        %true_57 = arith.constant true
        affine.yield %true_57 : i1
      }
      %258 = math.exp2 %out : f16
      %259 = vector.broadcast %c15 : index to vector<8xindex>
      %true_53 = arith.constant true
      %260 = vector.broadcast %true_53 : i1 to vector<8xi1>
      %261 = vector.broadcast %c845231582_i64 : i64 to vector<8xi64>
      vector.scatter %alloc_16[%c4, %c3] [%259], %260, %261 : memref<7x4xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 16 - 1)>(%c7, %c4, %c8, %c15)
      memref.alloca_scope  {
        %284 = index.mul %262, %c6
        %285 = arith.remsi %c1_i32, %c1_i32 : i32
        %286 = math.fpowi %in_51, %c2036248310_i32 : f16, i32
        %287 = math.atan2 %cst_4, %cst_3 : f32
        %288 = arith.maxf %cst_4, %cst_1 : f32
        %289 = arith.maxui %c2036248310_i32, %c683439869_i32 : i32
        %extracted_56 = tensor.extract %0[%c3, %c1] : tensor<7x4xf16>
        %290 = arith.remf %in_52, %cst_7 : f16
        %291 = arith.mulf %cst_4, %cst_4 : f32
        %292 = math.floor %in_51 : f16
        %293 = arith.cmpi eq, %c-4657_i16, %c-4576_i16 : i16
        %294 = arith.divf %cst_6, %cst_6 : f32
        %295 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %296 = arith.maxui %c683439869_i32, %c1_i32 : i32
        %297 = math.tan %cst_6 : f32
        %298 = arith.maxui %c845231582_i64, %c1133525898_i64 : i64
        %299 = math.absi %c-22933_i16 : i16
        %splat_57 = tensor.splat %cst_4 : tensor<7x4xf32>
        %300 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c5, %c4, %c1)
        %301 = arith.muli %c-4657_i16, %c-22933_i16 : i16
        %302 = vector.matrix_multiply %295, %295 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %303 = vector.bitcast %295 : vector<7xi1> to vector<7xi1>
        %304 = math.tan %13 : tensor<12x12xf16>
        %305 = math.ipowi %1, %1 : tensor<12x12xi64>
        %false_58 = arith.constant false
        %306 = vector.insert %false_58, %302 [0] : i1 into vector<1xi1>
        %307 = vector.broadcast %cst_0 : f16 to vector<12xf16>
        %308 = vector.transfer_write %307, %13[%c10, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xf16>, tensor<12x12xf16>
        %309 = arith.maxui %c683439869_i32, %c1_i32 : i32
        %310 = math.tan %13 : tensor<12x12xf16>
        %311 = math.absi %c1_i32 : i32
        %312 = arith.mulf %cst_3, %cst_1 : f32
        %313 = arith.shrsi %c1_i32, %c2036248310_i32 : i32
        %314 = arith.divsi %c683439869_i32, %c1_i32 : i32
      }
      %263 = arith.remui %c845231582_i64, %c1133525898_i64 : i64
      %collapsed_54 = tensor.collapse_shape %11 [[0, 1]] : tensor<12x12xf16> into tensor<144xf16>
      %false_55 = arith.constant false
      %264 = vector.broadcast %false_55 : i1 to vector<i1>
      %265 = vector.transfer_write %264, %22[%c15] : vector<i1>, tensor<12xi1>
      vector.print %47 : vector<4x4xf32>
      %266 = math.absi %7 : tensor<12x12xi1>
      %267 = vector.reduction <or>, %20 : vector<7xi1> into i1
      memref.assume_alignment %alloc_10, 8 : memref<12x12xf16>
      %268 = math.round %17 : tensor<4x4xf16>
      %269 = arith.maxui %c-4657_i16, %c-22933_i16 : i16
      %270 = arith.muli %c1133525898_i64, %c845231582_i64 : i64
      %271 = arith.xori %c-4576_i16, %c-22933_i16 : i16
      %272 = arith.maxsi %c-22933_i16, %c-4576_i16 : i16
      %273 = math.cos %cst_1 : f32
      %274 = arith.remf %in_51, %in : f16
      memref.tensor_store %9, %alloc_14 : memref<12x12xi32>
      %275 = arith.cmpi ne, %c-22933_i16, %c-4657_i16 : i16
      %276 = arith.maxsi %c1_i32, %c1_i32 : i32
      %277 = arith.cmpf false, %cst_4, %cst_2 : f32
      %278 = memref.atomic_rmw maxu %c683439869_i32, %alloc_14[%c7, %c6] : (i32, memref<12x12xi32>) -> i32
      memref.store %cst_5, %alloc_12[%c11, %c6] : memref<12x12xf16>
      %extracted = tensor.extract %5[%c2, %c3] : tensor<7x4xi16>
      %279 = vector.broadcast %false_55 : i1 to vector<4xi1>
      %280 = vector.maskedload %alloc_21[%c2, %c3], %279, %279 : memref<7x4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %281 = math.absf %cst_2 : f32
      %282 = math.absi %2 : tensor<12x12xi32>
      %283 = arith.maxsi %c845231582_i64, %c1133525898_i64 : i64
      linalg.yield %cst : f16
    } -> tensor<8x8x8xf16>
    %52 = arith.shrui %c683439869_i32, %c2036248310_i32 : i32
    %inserted = tensor.insert %cst_7 into %4[%c3, %c8] : tensor<12x12xf16>
    vector.print %37 : vector<4x4xi1>
    %53 = tensor.empty() : tensor<12x12xf16>
    %54 = linalg.matmul ins(%4, %11 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%53 : tensor<12x12xf16>) -> tensor<12x12xf16>
    scf.execute_region {
      %255 = arith.muli %c845231582_i64, %c1133525898_i64 : i64
      %256 = arith.maxf %cst, %cst_7 : f16
      %257 = vector.shuffle %47, %42 [5, 6] : vector<4x4xf32>, vector<4x4xf32>
      %258 = arith.remf %cst_2, %cst_3 : f32
      %259 = index.castu %c14 : index to i32
      %260 = vector.splat %c5 : vector<12x12xindex>
      %261 = bufferization.clone %alloc : memref<12x12xf16> to memref<12x12xf16>
      %262 = arith.remf %cst, %cst_7 : f16
      %263 = vector.splat %c1133525898_i64 : vector<12x12xi64>
      %264 = index.ceildivu %c14, %c15
      %alloca_51 = memref.alloca() : memref<12x12xi64>
      %265 = index.maxu %c12, %c14
      %266 = arith.divui %c-4657_i16, %c-4657_i16 : i16
      %267 = bufferization.clone %alloc_15 : memref<12x12xi64> to memref<12x12xi64>
      %268 = math.cttz %c1_i32 : i32
      %c13754_i16 = arith.constant 13754 : i16
      scf.yield
    }
    memref.tensor_store %4, %alloc : memref<12x12xf16>
    %c884194040_i32 = arith.constant 884194040 : i32
    %55 = index.casts %c-4657_i16 : i16 to index
    %56 = math.absi %5 : tensor<7x4xi16>
    %57 = math.powf %cst_4, %cst_1 : f32
    %58 = math.round %4 : tensor<12x12xf16>
    %59 = scf.while (%arg3 = %cst_4) : (f32) -> f32 {
      %255 = index.maxs %c1, %c14
      %expanded_51 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<7x4xi16> into tensor<7x4x1xi16>
      %256 = tensor.empty() : tensor<12x12xi1>
      %mapped_52 = linalg.map ins(%7 : tensor<12x12xi1>) outs(%256 : tensor<12x12xi1>)
        (%in: i1) {
          %263 = math.expm1 %cst_6 : f32
          %264 = index.maxu %c9, %55
          %alloc_54 = memref.alloc() : memref<4x4xi1>
          %265 = arith.minf %cst_7, %cst_0 : f16
          %266 = vector.multi_reduction <add>, %37, %37 [] : vector<4x4xi1> to vector<4x4xi1>
          %267 = math.cttz %5 : tensor<7x4xi16>
          %268 = vector.insertelement %in, %20[%c1 : index] : vector<7xi1>
          %alloc_55 = memref.alloc() : memref<i1>
          memref.tensor_store %reduced, %alloc_55 : memref<i1>
          %269 = math.ctpop %23 : tensor<i1>
          %270 = arith.subi %c845231582_i64, %c1133525898_i64 : i64
          %271 = math.atan2 %12, %17 : tensor<4x4xf16>
          %272 = math.absi %24 : tensor<i1>
          %273 = index.floordivs %c15, %c8
          %274 = math.tan %cst_2 : f32
          vector.print %37 : vector<4x4xi1>
          %275 = vector.insertelement %in, %20[%c13 : index] : vector<7xi1>
          %276 = vector.splat %c13 : vector<4x4xindex>
          %277 = vector.broadcast %in : i1 to vector<7xi1>
          vector.transfer_write %277, %alloc_18[%c1, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi1>, memref<12x12xi1>
          %278 = arith.cmpi ne, %c-22933_i16, %c-4657_i16 : i16
          %279 = tensor.empty() : tensor<12x12xi32>
          %280 = linalg.matmul ins(%2, %9 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%279 : tensor<12x12xi32>) -> tensor<12x12xi32>
          %281 = arith.remsi %c845231582_i64, %c845231582_i64 : i64
          %282 = bufferization.to_memref %7 : memref<12x12xi1>
          %283 = arith.maxf %cst_0, %cst : f16
          %284 = arith.shli %c-4657_i16, %c-22933_i16 : i16
          %285 = vector.broadcast %cst : f16 to vector<12xf16>
          %286 = vector.broadcast %in : i1 to vector<12xi1>
          %287 = vector.maskedload %alloc_12[%c10, %c2], %286, %285 : memref<12x12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
          %288 = vector.broadcast %c1_i32 : i32 to vector<4x4xi32>
          %289 = math.round %cst_3 : f32
          %290 = arith.xori %c2036248310_i32, %c2036248310_i32 : i32
          %291 = math.round %11 : tensor<12x12xf16>
          vector.print %287 : vector<12xf16>
          %292 = index.castu %c-4657_i16 : i16 to index
          %293 = arith.maxsi %c-4657_i16, %c-22933_i16 : i16
          %false_56 = arith.constant false
          linalg.yield %false_56 : i1
        }
      memref.alloca_scope  {
        %expanded_54 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<12x12xi32> into tensor<12x12x1xi32>
        %263 = arith.divui %c2036248310_i32, %c683439869_i32 : i32
        %264 = arith.mulf %cst_0, %cst : f16
        %265 = arith.maxsi %c-4657_i16, %c-4576_i16 : i16
        %alloc_55 = memref.alloc() : memref<12x12xi32>
        %266 = index.maxu %c12, %c1
        %267 = arith.maxf %cst_4, %cst_6 : f32
        %268 = math.expm1 %cst_6 : f32
        %269 = math.round %cst_5 : f16
        %270 = math.round %16 : tensor<4x4xf16>
        %271 = math.tan %13 : tensor<12x12xf16>
        %272 = arith.mulf %cst_4, %cst_1 : f32
        %273 = vector.splat %c9 : vector<12x12xindex>
        %274 = arith.negf %cst_5 : f16
        %275 = math.tan %53 : tensor<12x12xf16>
        %276 = math.powf %cst_1, %cst_6 : f32
        %277 = arith.muli %c-4576_i16, %c-4576_i16 : i16
        %278 = math.fma %53, %13, %3 : tensor<12x12xf16>
        %279 = tensor.empty() : tensor<4x4xi1>
        %280 = arith.maxui %c845231582_i64, %c1133525898_i64 : i64
        %281 = math.ceil %cst_6 : f32
        %282 = index.casts %c1 : index to i32
        %283 = math.ctpop %6 : tensor<12x12xi1>
        %284 = arith.ori %c1_i32, %c683439869_i32 : i32
        %285 = index.maxu %c13, %266
        %286 = vector.create_mask %c6, %255 : vector<12x12xi1>
        %287 = arith.divsi %c683439869_i32, %c2036248310_i32 : i32
        %288 = arith.divui %c-22933_i16, %c-4657_i16 : i16
        %rank_56 = tensor.rank %10 : tensor<4x4xi64>
        memref.store %c1_i32, %alloc_11[%c0, %c3] : memref<7x4xi32>
        %289 = vector.broadcast %c3 : index to vector<12xindex>
        %true_57 = arith.constant true
        %290 = vector.broadcast %true_57 : i1 to vector<12xi1>
        vector.scatter %alloc_20[%c11, %c7] [%289], %290, %290 : memref<12x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %291 = math.round %11 : tensor<12x12xf16>
      }
      %257 = math.exp2 %11 : tensor<12x12xf16>
      %258 = arith.cmpf ueq, %cst_5, %cst_7 : f16
      %259 = index.maxu %c14, %c5
      %260 = vector.broadcast %c683439869_i32 : i32 to vector<8xi32>
      %false_53 = arith.constant false
      %261 = vector.broadcast %false_53 : i1 to vector<8xi1>
      %262 = vector.maskedload %alloc_17[%c1, %c9], %261, %260 : memref<12x12xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      scf.condition(%false_53) %cst_6 : f32
    } do {
    ^bb0(%arg3: f32):
      %255 = vector.create_mask %c9, %c4 : vector<4x4xi1>
      %256 = arith.remf %cst_2, %cst_4 : f32
      %257 = math.ceil %0 : tensor<7x4xf16>
      %inserted_51 = tensor.insert %cst into %12[%c1, %c3] : tensor<4x4xf16>
      %258 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %true_52 = arith.constant true
      scf.if %true_52 {
        %267 = vector.broadcast %true_52 : i1 to vector<8xi1>
        %268 = vector.maskedload %alloc_21[%c1, %c3], %267, %267 : memref<7x4xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %269 = arith.maxui %c2036248310_i32, %c1_i32 : i32
        %inserted_54 = tensor.insert %cst into %53[%c4, %c0] : tensor<12x12xf16>
        %270 = math.atan %0 : tensor<7x4xf16>
        %271 = math.absi %5 : tensor<7x4xi16>
        %272 = math.cttz %8 : tensor<12x12xi32>
        %273 = arith.remsi %c845231582_i64, %c845231582_i64 : i64
        %collapsed_55 = tensor.collapse_shape %6 [[0, 1]] : tensor<12x12xi1> into tensor<144xi1>
      }
      %259 = index.maxu %c10, %c9
      memref.tensor_store %9, %alloc_14 : memref<12x12xi32>
      %260 = arith.remf %cst_3, %cst_3 : f32
      %261 = arith.mulf %cst_1, %cst_1 : f32
      %262 = arith.ori %c1_i32, %c1_i32 : i32
      %263 = arith.cmpf oeq, %cst_6, %cst_2 : f32
      %264 = arith.cmpf ueq, %cst_4, %cst_3 : f32
      %265 = affine.min affine_map<(d0, d1, d2) -> (64, d1 * 16, 128)>(%c13, %c14, %c5)
      %266 = arith.maxui %c1133525898_i64, %c845231582_i64 : i64
      %alloc_53 = memref.alloc() : memref<12x12xi1>
      scf.yield %cst_4 : f32
    }
    %60 = affine.min affine_map<(d0) -> (d0 ceildiv 128 + d0 - (d0 + 128) * 32)>(%c6)
    %inserted_26 = tensor.insert %c2036248310_i32 into %2[%c8, %c8] : tensor<12x12xi32>
    %61 = math.absi %8 : tensor<12x12xi32>
    %rank = tensor.rank %12 : tensor<4x4xf16>
    %62 = affine.load %alloc_10[%c3, %c3] : memref<12x12xf16>
    %63 = math.atan %62 : f16
    %64 = vector.bitcast %20 : vector<7xi1> to vector<7xi1>
    %65 = index.castu %55 : index to i32
    %66 = arith.maxui %c683439869_i32, %c1_i32 : i32
    %c1972854904_i64 = arith.constant 1972854904 : i64
    memref.store %c683439869_i32, %alloc_17[%c10, %c7] : memref<12x12xi32>
    %67 = math.log2 %62 : f16
    %68 = math.tanh %3 : tensor<12x12xf16>
    %69 = arith.mulf %cst_6, %cst_2 : f32
    %70 = index.maxs %c13, %c13
    %71 = memref.alloca_scope  -> (memref<12x12xi64>) {
      %255 = vector.broadcast %cst_5 : f16 to vector<f16>
      vector.transfer_write %255, %alloc[%c8, %c4] : vector<f16>, memref<12x12xf16>
      vector.print %37 : vector<4x4xi1>
      %true_51 = arith.constant true
      %256 = vector.transfer_read %alloc_13[%c7, %c11], %true_51 : memref<7x4xi1>, vector<i1>
      %257 = affine.if affine_set<(d0, d1, d2) : (0 == 0)>(%c13, %c13, %c7) -> i1 {
        %282 = math.tanh %4 : tensor<12x12xf16>
        %283 = math.log10 %14 : tensor<12x12xf16>
        %284 = vector.load %alloc[%c9, %c2] : memref<12x12xf16>, vector<4x4xf16>
        %285 = bufferization.to_memref %7 : memref<12x12xi1>
        %286 = index.divu %60, %c2
        %287 = arith.mulf %cst_7, %cst_7 : f16
        %288 = math.atan2 %17, %17 : tensor<4x4xf16>
        %289 = arith.xori %c683439869_i32, %c1_i32 : i32
        affine.yield %true_51 : i1
      } else {
        %282 = bufferization.to_memref %24 : memref<i1>
        %283 = math.expm1 %cst_2 : f32
        %inserted_53 = tensor.insert %cst into %3[%c0, %c4] : tensor<12x12xf16>
        %284 = arith.divui %c-4657_i16, %c-4576_i16 : i16
        %285 = arith.shrsi %c1_i32, %c683439869_i32 : i32
        %collapsed_54 = tensor.collapse_shape %9 [[0, 1]] : tensor<12x12xi32> into tensor<144xi32>
        %286 = index.mul %70, %c8
        %287 = math.round %cst_0 : f16
        affine.yield %true_51 : i1
      }
      %258 = index.casts %c12 : index to i32
      %c196746984_i32 = arith.constant 196746984 : i32
      %259 = affine.max affine_map<(d0, d1, d2, d3) -> (((d1 * 2) ceildiv 64) mod 2, (((d1 * 2) ceildiv 64) mod 2) * 2)>(%c5, %c14, %c6, %c15)
      %expanded_52 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x4xi16> into tensor<4x4x1xi16>
      %c19963_i16 = arith.constant 19963 : i16
      memref.copy %alloc_23, %alloc_18 : memref<12x12xi1> to memref<12x12xi1>
      %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, (-d0) mod 32 - (d0 mod 32 - d2 mod 64), d2 mod 2 - 4)>(%c8, %c15, %c10, %c4)
      %261 = arith.remf %cst_5, %cst_7 : f16
      %262 = tensor.empty() : tensor<7x4xi32>
      %263 = math.absi %9 : tensor<12x12xi32>
      %264 = vector.create_mask %c13, %c1 : vector<12x12xi1>
      %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1 mod 16, d0, (d1 mod 16) floordiv 64, d3 + d1 mod 16)>(%c4, %55, %c10, %c3)
      %266 = math.rsqrt %12 : tensor<4x4xf16>
      %267 = arith.minsi %c-4576_i16, %c-4576_i16 : i16
      %268 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
      %269 = vector.fma %268, %268, %268 : vector<12x12xf32>
      %270 = math.atan2 %12, %16 : tensor<4x4xf16>
      %271 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 8, (-d0) floordiv 4, d1 ceildiv 8)>(%c3, %70)
      %272 = memref.load %alloc_23[%c1, %c9] : memref<12x12xi1>
      %273 = arith.divui %c1_i32, %c1_i32 : i32
      %274 = vector.create_mask %55, %c0 : vector<12x12xi1>
      %275 = index.maxu %c14, %c1
      %276 = arith.remsi %c2036248310_i32, %c683439869_i32 : i32
      %277 = bufferization.to_memref %3 : memref<12x12xf16>
      %278 = memref.load %alloc_13[%c6, %c0] : memref<7x4xi1>
      %279 = memref.load %alloc_8[%c4, %c11] : memref<12x12xi16>
      %280 = scf.index_switch %c10 -> index 
      case 1 {
        %extracted = tensor.extract %2[%c2, %c1] : tensor<12x12xi32>
        %282 = math.floor %cst_4 : f32
        %false_53 = arith.constant false
        %283 = arith.maxsi %c-22933_i16, %c-22933_i16 : i16
        %284 = index.sub %c3, %c8
        %285 = math.rsqrt %cst_5 : f16
        %286 = math.atan %cst : f16
        %287 = math.cttz %c1_i32 : i32
        memref.assume_alignment %alloc_15, 4 : memref<12x12xi64>
        %288 = arith.remf %cst_0, %cst : f16
        %289 = tensor.empty() : tensor<12x12xf16>
        %290 = linalg.matmul ins(%14, %3 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%289 : tensor<12x12xf16>) -> tensor<12x12xf16>
        %291 = math.fma %0, %0, %0 : tensor<7x4xf16>
        %292 = math.atan2 %14, %4 : tensor<12x12xf16>
        memref.tensor_store %13, %alloc_12 : memref<12x12xf16>
        %293 = vector.broadcast %62 : f16 to vector<7xf16>
        %294 = vector.transfer_write %293, %14[%c15, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf16>, tensor<12x12xf16>
        %295 = arith.ori %extracted, %c683439869_i32 : i32
        scf.yield %55 : index
      }
      case 2 {
        %282 = arith.divsi %c1_i32, %c1_i32 : i32
        %283 = math.cos %11 : tensor<12x12xf16>
        %284 = arith.shrsi %c2036248310_i32, %c2036248310_i32 : i32
        %285 = math.tanh %4 : tensor<12x12xf16>
        %286 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %287 = vector.splat %c1 : vector<12x12xindex>
        %288 = arith.xori %c845231582_i64, %c845231582_i64 : i64
        %289 = arith.ori %c-4657_i16, %c-4576_i16 : i16
        %290 = vector.bitcast %286 : vector<7xi1> to vector<7xi1>
        %291 = arith.maxsi %c-22933_i16, %c-4576_i16 : i16
        %collapsed_53 = tensor.collapse_shape %4 [[0, 1]] : tensor<12x12xf16> into tensor<144xf16>
        %292 = arith.maxf %cst_1, %cst_3 : f32
        %293 = math.log1p %62 : f16
        %294 = arith.divf %cst_6, %cst_3 : f32
        %295 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 64)>(%c8, %275, %70, %55)
        %296 = arith.divsi %c2036248310_i32, %c2036248310_i32 : i32
        scf.yield %271 : index
      }
      default {
        %282 = arith.divsi %c683439869_i32, %c683439869_i32 : i32
        %283 = affine.max affine_map<(d0) -> (d0 floordiv 64, (d0 ceildiv 128) floordiv 8, d0 mod 4, d0 mod 4)>(%259)
        %284 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %285 = vector.broadcast %cst_1 : f32 to vector<7x4xf32>
        %286 = vector.fma %285, %285, %285 : vector<7x4xf32>
        %287 = math.atan2 %cst_4, %cst_1 : f32
        %288 = math.tanh %62 : f16
        %289 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %alloc_53 = memref.alloc() : memref<12xi1>
        memref.tensor_store %21, %alloc_53 : memref<12xi1>
        %290 = math.exp %12 : tensor<4x4xf16>
        %291 = math.fpowi %cst_2, %c683439869_i32 : f32, i32
        %292 = math.ctpop %23 : tensor<i1>
        %293 = arith.xori %true_51, %true_51 : i1
        %294 = arith.remui %c-4576_i16, %c-4576_i16 : i16
        %295 = memref.load %alloc_15[%c8, %c4] : memref<12x12xi64>
        memref.tensor_store %13, %alloc_10 : memref<12x12xf16>
        %cast_54 = tensor.cast %9 : tensor<12x12xi32> to tensor<?x?xi32>
        scf.yield %c1 : index
      }
      %281 = arith.muli %c-4657_i16, %c-4657_i16 : i16
      scf.if %true_51 {
        %282 = vector.transpose %42, [1, 0] : vector<4x4xf32> to vector<4x4xf32>
        %283 = arith.divsi %c845231582_i64, %c845231582_i64 : i64
        %284 = vector.splat %c1 : vector<7x4xindex>
        %285 = math.ipowi %c-4576_i16, %c-4576_i16 : i16
        %286 = arith.remui %c1133525898_i64, %c845231582_i64 : i64
        %287 = index.maxu %55, %c8
        %true_53 = index.bool.constant true
        %collapsed_54 = tensor.collapse_shape %2 [[0, 1]] : tensor<12x12xi32> into tensor<144xi32>
      }
      memref.alloca_scope.return %alloc_15 : memref<12x12xi64>
    }
    %72 = vector.transpose %43, [0, 1] : vector<4x4xf32> to vector<4x4xf32>
    %73 = math.sqrt %11 : tensor<12x12xf16>
    %74 = math.sqrt %17 : tensor<4x4xf16>
    %75 = bufferization.clone %alloc_22 : memref<12x12xi16> to memref<12x12xi16>
    %76 = vector.broadcast %c845231582_i64 : i64 to vector<12xi64>
    %true = arith.constant true
    %77 = vector.broadcast %true : i1 to vector<12xi1>
    %78 = vector.maskedload %alloc_16[%c1, %c2], %77, %76 : memref<7x4xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
    %79 = vector.splat %c14 : vector<12x12xindex>
    %80 = math.atan2 %11, %13 : tensor<12x12xf16>
    %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x12xi64> into tensor<12x12x1xi64>
    %81 = math.cttz %c1133525898_i64 : i64
    %82 = tensor.empty() : tensor<4x4xf16>
    %83 = linalg.matmul ins(%16, %12 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%82 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %84 = vector.transpose %76, [0] : vector<12xi64> to vector<12xi64>
    %85 = arith.cmpf oeq, %cst_0, %cst : f16
    %alloca = memref.alloca() : memref<7x4xf16>
    %86 = vector.broadcast %cst_6 : f32 to vector<12x12xf32>
    %87 = vector.fma %86, %86, %86 : vector<12x12xf32>
    %88 = arith.xori %true, %true : i1
    %rank_27 = tensor.rank %6 : tensor<12x12xi1>
    %alloc_28 = memref.alloc() : memref<12x12x1xi64>
    memref.tensor_store %expanded, %alloc_28 : memref<12x12x1xi64>
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_29 = arith.constant 0 : i64
    %89 = vector.transfer_read %10[%c5, %rank], %c0_i64_29 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x4xi64>, vector<8xi64>
    %90 = bufferization.clone %alloc_9 : memref<4x4xi64> to memref<4x4xi64>
    %91 = arith.cmpi sge, %c845231582_i64, %c0_i64 : i64
    %92 = math.atan %53 : tensor<12x12xf16>
    %93 = math.cttz %18 : tensor<i1>
    %94 = math.tan %14 : tensor<12x12xf16>
    %95 = vector.broadcast %c845231582_i64 : i64 to vector<8xi64>
    vector.transfer_write %95, %alloc_15[%c7, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, memref<12x12xi64>
    %96 = arith.floordivsi %true, %true : i1
    %97 = math.absf %cst : f16
    %98 = arith.shrsi %c1133525898_i64, %c0_i64 : i64
    %99 = arith.muli %c1133525898_i64, %c0_i64 : i64
    %false_30 = arith.constant false
    %100 = arith.xori %c1133525898_i64, %c1133525898_i64 : i64
    %101 = vector.create_mask %60, %c7 : vector<12x12xi1>
    %102 = math.cos %0 : tensor<7x4xf16>
    memref.assume_alignment %alloc_18, 2 : memref<12x12xi1>
    %103 = arith.cmpf ult, %cst_1, %cst_3 : f32
    %104 = vector.create_mask %rank_27, %c11 : vector<12x12xi1>
    %105 = arith.maxf %cst_2, %cst_2 : f32
    %106 = memref.load %alloc_19[%c6, %c5] : memref<12x12xi16>
    %107 = math.absi %8 : tensor<12x12xi32>
    %108 = arith.divf %cst_6, %cst_2 : f32
    %109 = math.powf %0, %0 : tensor<7x4xf16>
    %110 = math.absf %0 : tensor<7x4xf16>
    %111 = vector.insertelement %true, %77[%c7 : index] : vector<12xi1>
    vector.print %86 : vector<12x12xf32>
    %112 = arith.maxsi %c0_i64, %c845231582_i64 : i64
    scf.if %true {
      %255 = arith.muli %c683439869_i32, %c1_i32 : i32
      %256 = math.cttz %1 : tensor<12x12xi64>
      %257 = tensor.empty() : tensor<12x12xf16>
      %mapped_51 = linalg.map ins(%3, %11 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%257 : tensor<12x12xf16>)
        (%in: f16, %in_52: f16) {
          %263 = vector.broadcast %c0_i64 : i64 to vector<i64>
          vector.transfer_write %263, %alloc_16[%c1, %c15] : vector<i64>, memref<7x4xi64>
          %true_53 = arith.constant true
          %264 = tensor.empty(%c4, %70) : tensor<?x?xi64>
          bufferization.dealloc_tensor %6 : tensor<12x12xi1>
          memref.assume_alignment %alloc_16, 8 : memref<7x4xi64>
          %265 = affine.load %alloc_14[%c12, %c13] : memref<12x12xi32>
          %266 = math.cttz %c683439869_i32 : i32
          %splat_54 = tensor.splat %in : tensor<4x4xf16>
          %267 = math.atan2 %4, %13 : tensor<12x12xf16>
          %268 = vector.broadcast %c-4576_i16 : i16 to vector<7x4xi16>
          %269 = math.powf %17, %splat_54 : tensor<4x4xf16>
          %inserted_55 = tensor.insert %true into %18[] : tensor<i1>
          %270 = vector.transpose %263, [] : vector<i64> to vector<i64>
          %271 = math.round %11 : tensor<12x12xf16>
          %272 = affine.apply affine_map<(d0, d1) -> (d0 mod 8 + 128)>(%c4, %c14)
          %273 = math.round %14 : tensor<12x12xf16>
          %274 = math.fpowi %cst_3, %c1_i32 : f32, i32
          %275 = arith.maxsi %c-4576_i16, %c-4657_i16 : i16
          %276 = vector.broadcast %in : f16 to vector<4x4xf16>
          %277 = math.log10 %11 : tensor<12x12xf16>
          %278 = vector.broadcast %c0_i64 : i64 to vector<12x12xi64>
          %279 = arith.maxsi %c845231582_i64, %c0_i64 : i64
          %280 = vector.multi_reduction <xor>, %101, %true [0, 1] : vector<12x12xi1> to i1
          %281 = vector.broadcast %c1133525898_i64 : i64 to vector<7xi64>
          %282 = vector.maskedload %alloc_15[%c11, %c10], %20, %281 : memref<12x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
          %splat_56 = tensor.splat %cst_4 : tensor<12x12xf32>
          %283 = arith.remf %cst_4, %cst_4 : f32
          %284 = index.maxu %c7, %c8
          %285 = vector.broadcast %cst_3 : f32 to vector<7x4xf32>
          %286 = vector.fma %285, %285, %285 : vector<7x4xf32>
          %287 = math.absf %0 : tensor<7x4xf16>
          %288 = vector.broadcast %cst_1 : f32 to vector<12x12xf32>
          %289 = vector.fma %288, %288, %288 : vector<12x12xf32>
          %290 = affine.load %alloc_11[%c14, %c12] : memref<7x4xi32>
          %291 = math.ctlz %c-4657_i16 : i16
          %cst_57 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_57 : f16
        }
      %258 = math.fpowi %62, %c1_i32 : f16, i32
      %259 = tensor.empty() : tensor<4x4xi16>
      %260 = linalg.matmul ins(%15, %15 : tensor<4x4xi16>, tensor<4x4xi16>) outs(%259 : tensor<4x4xi16>) -> tensor<4x4xi16>
      %261 = arith.muli %c-4657_i16, %c-22933_i16 : i16
      %262 = bufferization.clone %90 : memref<4x4xi64> to memref<4x4xi64>
      memref.assume_alignment %71, 8 : memref<12x12xi64>
    } else {
      %c7575_i16 = arith.constant 7575 : i16
      %255 = memref.alloca_scope  -> (i32) {
        %261 = math.ctpop %6 : tensor<12x12xi1>
        %262 = vector.create_mask %c8, %c9 : vector<12x12xi1>
        %263 = arith.cmpi uge, %c0_i64, %c0_i64 : i64
        %264 = math.exp2 %82 : tensor<4x4xf16>
        %265 = math.ceil %53 : tensor<12x12xf16>
        %266 = arith.cmpf oeq, %cst_1, %cst_6 : f32
        %267 = arith.negf %cst_4 : f32
        %cst_52 = arith.constant 1.000000e+00 : f16
        %cst_53 = arith.constant 0.000000e+00 : f16
        %268 = vector.transfer_read %12[%c10, %rank_27], %cst_53 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x4xf16>, vector<7xf16>
        %269 = vector.broadcast %cst_1 : f32 to vector<12x12xf32>
        %270 = vector.fma %269, %87, %87 : vector<12x12xf32>
        %271 = vector.create_mask %rank, %c8 : vector<4x4xi1>
        %alloc_54 = memref.alloc() : memref<7xi64>
        %272 = memref.realloc %alloc_54 : memref<7xi64> to memref<12xi64>
        %cst_55 = arith.constant 2.07525107E+9 : f32
        %273 = arith.divf %cst, %62 : f16
        %274 = math.round %cst_6 : f32
        %275 = arith.remf %cst_7, %cst_52 : f16
        %276 = math.log %cst_52 : f16
        %rank_56 = tensor.rank %22 : tensor<12xi1>
        %277 = vector.bitcast %262 : vector<12x12xi1> to vector<12x12xi1>
        %278 = arith.maxsi %c-22933_i16, %c-4576_i16 : i16
        %279 = math.fpowi %4, %2 : tensor<12x12xf16>, tensor<12x12xi32>
        %inserted_57 = tensor.insert %cst_0 into %4[%c5, %c3] : tensor<12x12xf16>
        %from_elements = tensor.from_elements %62, %cst, %cst_7, %cst, %cst, %cst, %cst_52, %cst_52, %cst, %cst_52, %cst_52, %cst_7, %cst_5, %cst_52, %cst_7, %cst_5, %cst_0, %cst_0, %cst_5, %62, %cst_7, %cst_7, %62, %cst_52, %cst_5, %cst_52, %cst_0, %cst_7 : tensor<7x4xf16>
        %280 = vector.load %alloc_15[%c6, %c6] : memref<12x12xi64>, vector<7x4xi64>
        %281 = arith.remsi %c683439869_i32, %c2036248310_i32 : i32
        vector.print %64 : vector<7xi1>
        %282 = math.tan %82 : tensor<4x4xf16>
        %cst_58 = arith.constant 0x4B653C41 : f32
        %283 = math.round %from_elements : tensor<7x4xf16>
        %284 = index.casts %c11 : index to i32
        %285 = vector.create_mask %c0, %rank_56 : vector<12x12xi1>
        %286 = arith.negf %cst_6 : f32
        %287 = math.log10 %14 : tensor<12x12xf16>
        memref.alloca_scope.return %c2036248310_i32 : i32
      }
      %256 = math.round %3 : tensor<12x12xf16>
      memref.alloca_scope  {
        %261 = arith.ori %c-4576_i16, %c-4657_i16 : i16
        %262 = vector.transpose %78, [0] : vector<12xi64> to vector<12xi64>
        %263 = math.atan2 %cst_6, %cst_3 : f32
        %264 = index.ceildivu %c3, %c14
        %265 = arith.shli %true, %true : i1
        %266 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 16, -d2 + 8)>(%rank, %60, %c7, %c8)
        %267 = arith.shrsi %255, %c2036248310_i32 : i32
        %alloc_52 = memref.alloc() : memref<4x4xi1>
        %268 = affine.max affine_map<(d0, d1, d2) -> (d0)>(%60, %c12, %c8)
        %269 = bufferization.clone %alloc_13 : memref<7x4xi1> to memref<7x4xi1>
        %270 = index.castu %c3 : index to i32
        %271 = arith.divui %255, %c1_i32 : i32
        %272 = math.round %4 : tensor<12x12xf16>
        %273 = arith.floordivsi %c2036248310_i32, %c2036248310_i32 : i32
        %274 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + (-d3) mod 64, d1 mod 128)>(%c5, %c0, %c0, %c11)
        %275 = tensor.empty() : tensor<7x4xi64>
        %276 = math.exp2 %cst : f16
        %277 = tensor.empty(%60, %c1) : tensor<?x?xi64>
        memref.tensor_store %11, %alloc_12 : memref<12x12xf16>
        memref.copy %alloc_23, %alloc_18 : memref<12x12xi1> to memref<12x12xi1>
        %278 = math.atan %16 : tensor<4x4xf16>
        %279 = index.divu %c9, %c1
        %280 = math.round %3 : tensor<12x12xf16>
        %281 = arith.shli %c-4657_i16, %c-4576_i16 : i16
        %282 = index.casts %c7 : index to i32
        %283 = affine.load %alloc_23[%c2, %c9] : memref<12x12xi1>
        %284 = math.floor %3 : tensor<12x12xf16>
        %285 = math.exp %cst : f16
        memref.assume_alignment %alloc_20, 8 : memref<12x12xi1>
        %286 = arith.cmpi ult, %c0_i64, %c1133525898_i64 : i64
        %287 = arith.divf %62, %cst_5 : f16
        %288 = vector.broadcast %c683439869_i32 : i32 to vector<7xi32>
        %289 = vector.maskedload %alloc_11[%c4, %c3], %20, %288 : memref<7x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      }
      %cast_51 = tensor.cast %24 : tensor<i1> to tensor<i1>
      %257 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
      %258 = vector.fma %257, %257, %87 : vector<12x12xf32>
      %259 = vector.flat_transpose %78 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
      %260 = math.fma %11, %11, %3 : tensor<12x12xf16>
    }
    %113 = arith.remsi %c845231582_i64, %c845231582_i64 : i64
    %114 = arith.floordivsi %c845231582_i64, %c845231582_i64 : i64
    %115 = index.sub %c4, %c1
    %116 = arith.remsi %c845231582_i64, %c0_i64 : i64
    %117 = bufferization.clone %71 : memref<12x12xi64> to memref<12x12xi64>
    %118 = arith.remf %62, %cst_5 : f16
    %119 = bufferization.clone %alloc_19 : memref<12x12xi16> to memref<12x12xi16>
    %120 = arith.mulf %cst_2, %cst_4 : f32
    memref.store %cst_7, %alloc_12[%c3, %c10] : memref<12x12xf16>
    %121 = vector.broadcast %cst_4 : f32 to vector<12x12xf32>
    %122 = vector.fma %121, %86, %87 : vector<12x12xf32>
    %123 = math.exp2 %cst_3 : f32
    %124 = arith.remf %cst_0, %cst : f16
    %125 = bufferization.clone %75 : memref<12x12xi16> to memref<12x12xi16>
    %inserted_31 = tensor.insert %cst into %0[%c6, %c1] : tensor<7x4xf16>
    %splat = tensor.splat %cst_3 : tensor<4x4xf32>
    %splat_32 = tensor.splat %cst_2 : tensor<4x4xf32>
    %126 = memref.atomic_rmw mins %c-4657_i16, %alloc_19[%c2, %c7] : (i16, memref<12x12xi16>) -> i16
    %127 = vector.broadcast %c0_i64 : i64 to vector<7xi64>
    %128 = vector.maskedload %alloc_9[%c2, %c0], %64, %127 : memref<4x4xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
    %129 = index.castu %rank : index to i32
    %130 = arith.andi %c-4657_i16, %c-4657_i16 : i16
    %131 = math.log %13 : tensor<12x12xf16>
    %132 = vector.flat_transpose %78 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    %133 = math.round %17 : tensor<4x4xf16>
    %134 = tensor.empty() : tensor<12x12xi1>
    %135 = linalg.matmul ins(%7, %6 : tensor<12x12xi1>, tensor<12x12xi1>) outs(%134 : tensor<12x12xi1>) -> tensor<12x12xi1>
    %136 = scf.index_switch %c1 -> tensor<12x12xi32> 
    case 1 {
      %255 = arith.remf %cst, %cst : f16
      %256 = index.casts %c-22933_i16 : i16 to index
      %257 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%115, %c7, %55)
      %258 = tensor.empty() : tensor<12xi1>
      %mapped_51 = linalg.map ins(%21 : tensor<12xi1>) outs(%258 : tensor<12xi1>)
        (%in: i1) {
          %270 = arith.remsi %true, %true : i1
          %271 = arith.divsi %c845231582_i64, %c845231582_i64 : i64
          %272 = arith.negf %cst_1 : f32
          %273 = arith.maxf %cst, %cst_5 : f16
          %274 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
          %275 = vector.transpose %20, [0] : vector<7xi1> to vector<7xi1>
          %276 = index.casts %c1_i32 : i32 to index
          %277 = arith.xori %c2036248310_i32, %c2036248310_i32 : i32
          %278 = arith.maxsi %c-4657_i16, %c-4576_i16 : i16
          %279 = vector.broadcast %c1_i32 : i32 to vector<8xi32>
          %280 = vector.broadcast %true : i1 to vector<8xi1>
          %281 = vector.maskedload %alloc_17[%c9, %c1], %280, %279 : memref<12x12xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
          %expanded_54 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<12x12xf16> into tensor<12x12x1xf16>
          %282 = arith.negf %cst_3 : f32
          %283 = arith.cmpf ugt, %cst_2, %cst_6 : f32
          %284 = tensor.empty() : tensor<12x12xi32>
          %285 = linalg.matmul ins(%2, %8 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%284 : tensor<12x12xi32>) -> tensor<12x12xi32>
          %286 = math.powf %4, %4 : tensor<12x12xf16>
          %287 = memref.atomic_rmw addi %c-4576_i16, %alloc_8[%c3, %c10] : (i16, memref<12x12xi16>) -> i16
          %288 = math.exp2 %11 : tensor<12x12xf16>
          %289 = index.casts %true : i1 to index
          %290 = vector.create_mask %257, %257 : vector<12x12xi1>
          %291 = bufferization.clone %alloc_18 : memref<12x12xi1> to memref<12x12xi1>
          %292 = arith.divui %c-4657_i16, %c-4657_i16 : i16
          %293 = arith.remf %cst_5, %cst_0 : f16
          memref.copy %alloc_9, %90 : memref<4x4xi64> to memref<4x4xi64>
          %294 = math.cos %14 : tensor<12x12xf16>
          %295 = affine.max affine_map<(d0) -> (d0 * 2, d0 * 2, d0)>(%c10)
          %296 = affine.max affine_map<(d0, d1) -> ((d1 floordiv 32) floordiv 4)>(%c7, %55)
          %297 = vector.broadcast %62 : f16 to vector<7x4xf16>
          vector.print %20 : vector<7xi1>
          %298 = arith.xori %c-4576_i16, %c-4657_i16 : i16
          %299 = vector.maskedload %alloc_18[%c10, %c3], %77, %77 : memref<12x12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
          %300 = arith.remf %cst_7, %cst_0 : f16
          %301 = vector.splat %rank_27 : vector<4x4xindex>
          %true_55 = arith.constant true
          linalg.yield %true_55 : i1
        }
      %259 = tensor.empty() : tensor<4x4xi64>
      %mapped_52 = linalg.map ins(%10, %10, %alloc_9 : tensor<4x4xi64>, tensor<4x4xi64>, memref<4x4xi64>) outs(%259 : tensor<4x4xi64>)
        (%in: i64, %in_54: i64, %in_55: i64) {
          %270 = arith.remsi %true, %true : i1
          %271 = vector.broadcast %cst : f16 to vector<7x4xf16>
          %272 = vector.broadcast %true : i1 to vector<7x4xi1>
          %273 = vector.broadcast %c2036248310_i32 : i32 to vector<7x4xi32>
          %274 = vector.gather %16[%c14, %257] [%273], %272, %271 : tensor<4x4xf16>, vector<7x4xi32>, vector<7x4xi1>, vector<7x4xf16> into vector<7x4xf16>
          %275 = vector.broadcast %c-4657_i16 : i16 to vector<12xi16>
          %276 = vector.maskedload %alloc_22[%c5, %c8], %77, %275 : memref<12x12xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
          %277 = bufferization.clone %alloc_18 : memref<12x12xi1> to memref<12x12xi1>
          vector.print %76 : vector<12xi64>
          %278 = vector.broadcast %cst_0 : f16 to vector<f16>
          %279 = vector.transfer_write %278, %16[%115, %257] : vector<f16>, tensor<4x4xf16>
          %280 = index.castu %c13 : index to i32
          %281 = arith.minf %62, %cst_5 : f16
          %282 = math.round %82 : tensor<4x4xf16>
          %283 = arith.mulf %cst_5, %cst_0 : f16
          vector.print %275 : vector<12xi16>
          %284 = math.absi %6 : tensor<12x12xi1>
          %285 = math.tanh %82 : tensor<4x4xf16>
          %286 = vector.bitcast %87 : vector<12x12xf32> to vector<12x12xi32>
          %287 = math.ipowi %8, %9 : tensor<12x12xi32>
          %288 = vector.create_mask %257, %115 : vector<12x12xi1>
          %289 = arith.minf %cst_0, %cst_7 : f16
          %290 = arith.xori %c-4576_i16, %c-4576_i16 : i16
          %291 = vector.maskedload %alloc_15[%c10, %c11], %20, %128 : memref<12x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
          %292 = math.cttz %8 : tensor<12x12xi32>
          %293 = arith.maxui %c1133525898_i64, %in_55 : i64
          %294 = arith.muli %c845231582_i64, %c845231582_i64 : i64
          %295 = arith.xori %c2036248310_i32, %c1_i32 : i32
          %296 = vector.extract_strided_slice %47 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4xf32> to vector<4x4xf32>
          %297 = arith.cmpi sle, %in, %in_54 : i64
          %298 = index.ceildivu %c8, %rank_27
          %299 = index.maxu %70, %c0
          %300 = math.round %13 : tensor<12x12xf16>
          %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %95, %95, %c1133525898_i64 : vector<8xi64>, vector<8xi64> into i64
          %alloc_56 = memref.alloc() : memref<12x12xf32>
          %alloca_57 = memref.alloca() : memref<12x12xf32>
          memref.assume_alignment %119, 8 : memref<12x12xi16>
          %c0_i64_58 = arith.constant 0 : i64
          linalg.yield %c0_i64_58 : i64
        }
      %260 = math.exp %cst_5 : f16
      %261 = affine.load %alloc_23[%c14, %c2] : memref<12x12xi1>
      %262 = arith.cmpi ugt, %c-4657_i16, %c-4657_i16 : i16
      %263 = vector.insertelement %c0_i64, %78[%c4 : index] : vector<12xi64>
      %264 = vector.bitcast %127 : vector<7xi64> to vector<7xi64>
      %expanded_53 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<4x4xi64> into tensor<4x4x1xi64>
      %265 = arith.remui %c0_i64, %c1133525898_i64 : i64
      %266 = vector.insertelement %true, %64[%c7 : index] : vector<7xi1>
      %267 = arith.maxsi %c2036248310_i32, %c2036248310_i32 : i32
      %268 = vector.insertelement %c845231582_i64, %95[%c6 : index] : vector<8xi64>
      %269 = arith.cmpf uge, %cst_0, %cst_7 : f16
      scf.yield %2 : tensor<12x12xi32>
    }
    case 2 {
      %255 = arith.remsi %c-4657_i16, %c-4576_i16 : i16
      %256 = scf.execute_region -> tensor<7x4xi16> {
        %268 = math.absi %c0_i64 : i64
        %expanded_53 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
        %269 = math.absf %11 : tensor<12x12xf16>
        %270 = math.exp %0 : tensor<7x4xf16>
        %271 = math.ceil %11 : tensor<12x12xf16>
        %272 = math.atan2 %expanded_53, %expanded_53 : tensor<4x4x1xf16>
        %273 = arith.remsi %c683439869_i32, %c1_i32 : i32
        %274 = index.sub %c4, %70
        %275 = math.absf %cst_5 : f16
        %276 = arith.cmpf ord, %62, %cst_7 : f16
        %splat_54 = tensor.splat %c-4576_i16 : tensor<12x12xi16>
        %277 = arith.remf %cst, %62 : f16
        %278 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d3 + d2, (-d2) ceildiv 32, d0)>(%115, %c8, %c1, %c9)
        %279 = arith.shrsi %c1133525898_i64, %c845231582_i64 : i64
        %280 = bufferization.clone %alloc_16 : memref<7x4xi64> to memref<7x4xi64>
        memref.store %c-22933_i16, %alloc_22[%c9, %c3] : memref<12x12xi16>
        scf.yield %5 : tensor<7x4xi16>
      }
      scf.execute_region {
        bufferization.dealloc_tensor %7 : tensor<12x12xi1>
        %268 = affine.load %alloc_10[%c8, %c11] : memref<12x12xf16>
        %inserted_53 = tensor.insert %62 into %14[%c11, %c7] : tensor<12x12xf16>
        %269 = arith.shrsi %true, %true : i1
        %270 = vector.bitcast %122 : vector<12x12xf32> to vector<12x12xf32>
        %271 = arith.shli %c1_i32, %c683439869_i32 : i32
        %272 = math.log %cst : f16
        %273 = math.atan2 %cst_7, %cst_7 : f16
        %274 = math.copysign %cst_3, %cst_4 : f32
        %275 = arith.maxf %cst_7, %268 : f16
        %276 = memref.load %71[%c4, %c0] : memref<12x12xi64>
        %277 = affine.min affine_map<(d0, d1) -> ((-d0) ceildiv 8, d0)>(%c2, %c3)
        %278 = math.log10 %16 : tensor<4x4xf16>
        %279 = math.floor %11 : tensor<12x12xf16>
        %280 = arith.maxsi %c683439869_i32, %c683439869_i32 : i32
        %281 = arith.xori %c1133525898_i64, %c1133525898_i64 : i64
        scf.yield
      }
      %257 = math.ceil %11 : tensor<12x12xf16>
      %258 = math.tanh %13 : tensor<12x12xf16>
      %c-9086_i16 = arith.constant -9086 : i16
      %259 = math.ceil %0 : tensor<7x4xf16>
      %260 = memref.alloca_scope  -> (memref<12x12xf32>) {
        %268 = vector.broadcast %c0_i64 : i64 to vector<4xi64>
        %269 = vector.broadcast %true : i1 to vector<4xi1>
        %270 = vector.maskedload %71[%c2, %c0], %269, %268 : memref<12x12xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %271 = arith.cmpf ord, %62, %62 : f16
        %272 = arith.divsi %c845231582_i64, %c0_i64 : i64
        %splat_53 = tensor.splat %c-4657_i16 : tensor<12x12xi16>
        %273 = arith.maxui %c2036248310_i32, %c1_i32 : i32
        %274 = tensor.empty() : tensor<12x12xi32>
        %275 = linalg.matmul ins(%8, %8 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%274 : tensor<12x12xi32>) -> tensor<12x12xi32>
        %276 = arith.minf %cst_2, %cst_2 : f32
        %277 = arith.remf %62, %cst_5 : f16
        %278 = vector.create_mask %c0, %rank_27 : vector<12x12xi1>
        %279 = arith.cmpi eq, %c845231582_i64, %c845231582_i64 : i64
        %280 = vector.reduction <minui>, %132 : vector<12xi64> into i64
        %281 = math.ctpop %c845231582_i64 : i64
        %282 = index.castu %c0_i64 : i64 to index
        %283 = arith.negf %cst_3 : f32
        %284 = math.cttz %8 : tensor<12x12xi32>
        %285 = arith.ori %c0_i64, %c0_i64 : i64
        %286 = math.exp2 %cst_3 : f32
        %287 = vector.create_mask %70, %c1 : vector<4x4xi1>
        %288 = math.absi %274 : tensor<12x12xi32>
        %289 = index.castu %c6 : index to i32
        %290 = vector.insertelement %true, %20[%282 : index] : vector<7xi1>
        %291 = math.fma %53, %4, %3 : tensor<12x12xf16>
        %292 = math.ipowi %reduced, %24 : tensor<i1>
        %293 = vector.matrix_multiply %132, %270 {lhs_columns = 4 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<4xi64>) -> vector<3xi64>
        %294 = arith.muli %c845231582_i64, %c0_i64 : i64
        %295 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 2 - d1 + 4)>(%115, %c14, %c9)
        %296 = arith.cmpi slt, %c0_i64, %c0_i64 : i64
        %splat_54 = tensor.splat %c1133525898_i64 : tensor<12x12xi64>
        %297 = math.round %17 : tensor<4x4xf16>
        %inserted_55 = tensor.insert %c-22933_i16 into %15[%c1, %c2] : tensor<4x4xi16>
        %298 = arith.remui %c-4657_i16, %c-4576_i16 : i16
        %299 = arith.minf %cst_2, %cst_4 : f32
        %alloc_56 = memref.alloc() : memref<12x12xf32>
        memref.alloca_scope.return %alloc_56 : memref<12x12xf32>
      }
      %261 = math.tan %82 : tensor<4x4xf16>
      %262 = math.atan %17 : tensor<4x4xf16>
      %263 = arith.maxf %cst_6, %cst_4 : f32
      %264 = vector.transpose %37, [0, 1] : vector<4x4xi1> to vector<4x4xi1>
      memref.assume_alignment %71, 1 : memref<12x12xi64>
      %265 = index.castu %c2 : index to i32
      %splat_51 = tensor.splat %cst_3 : tensor<4x4xf32>
      %266 = tensor.empty() : tensor<12x1x12xi64>
      %alloc_52 = memref.alloc() : memref<12xi64>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%266, %1, %alloc_52 : tensor<12x1x12xi64>, tensor<12x12xi64>, memref<12xi64>) outs(%expanded : tensor<12x12x1xi64>) {
      ^bb0(%in: i64, %in_53: i64, %in_54: i64, %out: i64):
        %268 = arith.maxui %c0_i64, %c1133525898_i64 : i64
        %269 = arith.negf %cst_1 : f32
        %270 = bufferization.clone %119 : memref<12x12xi16> to memref<12x12xi16>
        vector.print %64 : vector<7xi1>
        %271 = math.ipowi %c683439869_i32, %c683439869_i32 : i32
        %272 = arith.remsi %c1133525898_i64, %out : i64
        %273 = math.powf %0, %0 : tensor<7x4xf16>
        %274 = vector.bitcast %20 : vector<7xi1> to vector<7xi1>
        %275 = affine.apply affine_map<(d0) -> (d0)>(%60)
        %276 = arith.shrsi %c-4657_i16, %c-4576_i16 : i16
        %277 = math.log %4 : tensor<12x12xf16>
        %278 = tensor.empty() : tensor<7x4xi16>
        %279 = linalg.matmul ins(%256, %15 : tensor<7x4xi16>, tensor<4x4xi16>) outs(%278 : tensor<7x4xi16>) -> tensor<7x4xi16>
        %280 = arith.ori %c-22933_i16, %c-4576_i16 : i16
        %281 = arith.remf %cst, %cst_0 : f16
        %282 = arith.floordivsi %c1133525898_i64, %in_54 : i64
        memref.assume_alignment %117, 8 : memref<12x12xi64>
        %283 = arith.remui %c-4576_i16, %c-4576_i16 : i16
        %284 = vector.create_mask %c5, %c15 : vector<7x4xi1>
        affine.store %c845231582_i64, %71[%c2, %c5] : memref<12x12xi64>
        %285 = index.castu %c4 : index to i32
        %286 = arith.shli %in_53, %c845231582_i64 : i64
        %287 = affine.load %alloc_8[%c3, %c0] : memref<12x12xi16>
        %288 = memref.atomic_rmw mins %287, %119[%c1, %c8] : (i16, memref<12x12xi16>) -> i16
        %289 = arith.maxf %cst_5, %cst : f16
        %290 = arith.cmpf ult, %cst_3, %cst_3 : f32
        %291 = vector.broadcast %c0_i64 : i64 to vector<4xi64>
        %292 = vector.broadcast %true : i1 to vector<4xi1>
        %293 = vector.maskedload %alloc_9[%c0, %c1], %292, %291 : memref<4x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %294 = arith.shrsi %c845231582_i64, %c0_i64 : i64
        %295 = tensor.empty() : tensor<4x4xf16>
        %296 = math.round %3 : tensor<12x12xf16>
        %297 = vector.broadcast %cst : f16 to vector<8xf16>
        %298 = vector.transfer_write %297, %14[%c6, %275] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, tensor<12x12xf16>
        %alloc_55 = memref.alloc() : memref<4x4xi16>
        memref.tensor_store %15, %alloc_55 : memref<4x4xi16>
        %299 = arith.maxsi %c-4576_i16, %c-4657_i16 : i16
        linalg.yield %in_53 : i64
      } -> tensor<12x12x1xi64>
      scf.yield %9 : tensor<12x12xi32>
    }
    case 3 {
      %255 = math.cos %14 : tensor<12x12xf16>
      scf.index_switch %c8 
      case 1 {
        %270 = arith.xori %c683439869_i32, %c2036248310_i32 : i32
        %271 = math.expm1 %cst_0 : f16
        %272 = math.atan2 %13, %11 : tensor<12x12xf16>
        %273 = math.fma %4, %4, %53 : tensor<12x12xf16>
        vector.print %128 : vector<7xi64>
        %274 = math.tan %11 : tensor<12x12xf16>
        %275 = vector.insertelement %true, %64[%115 : index] : vector<7xi1>
        affine.store %c683439869_i32, %alloc_11[%c13, %c5] : memref<7x4xi32>
        %276 = vector.broadcast %true : i1 to vector<7x7xi1>
        %277 = vector.outerproduct %64, %20, %276 {kind = #vector.kind<mul>} : vector<7xi1>, vector<7xi1>
        %278 = index.sub %c5, %rank
        %splat_52 = tensor.splat %62 : tensor<12x12xf16>
        %279 = vector.broadcast %c683439869_i32 : i32 to vector<4x4xi32>
        %280 = vector.shuffle %95, %76 [1, 3, 4, 7, 9, 10, 15, 16] : vector<8xi64>, vector<12xi64>
        %281 = arith.divui %c2036248310_i32, %c1_i32 : i32
        %282 = arith.floordivsi %c845231582_i64, %c845231582_i64 : i64
        %from_elements = tensor.from_elements %c1133525898_i64, %c0_i64, %c845231582_i64, %c0_i64, %c0_i64, %c1133525898_i64, %c845231582_i64, %c845231582_i64, %c1133525898_i64, %c845231582_i64, %c1133525898_i64, %c0_i64, %c1133525898_i64, %c1133525898_i64, %c0_i64, %c0_i64 : tensor<4x4xi64>
        scf.yield
      }
      case 2 {
        %270 = vector.broadcast %c683439869_i32 : i32 to vector<8xi32>
        %271 = vector.broadcast %true : i1 to vector<8xi1>
        %272 = vector.maskedload %alloc_14[%c2, %c4], %271, %270 : memref<12x12xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %273 = arith.remf %62, %cst_7 : f16
        %274 = vector.broadcast %c1_i32 : i32 to vector<4xi32>
        %275 = vector.transfer_write %274, %2[%c7, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<12x12xi32>
        %276 = math.ceil %14 : tensor<12x12xf16>
        %splat_52 = tensor.splat %cst_6 : tensor<12x12xf32>
        %277 = affine.max affine_map<(d0, d1) -> (d1 floordiv 8, d1 mod 2 + 96)>(%70, %60)
        %278 = arith.cmpi sle, %c1133525898_i64, %c845231582_i64 : i64
        %inserted_53 = tensor.insert %true into %7[%c6, %c11] : tensor<12x12xi1>
        memref.assume_alignment %alloc_14, 2 : memref<12x12xi32>
        %expanded_54 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
        %279 = math.powf %53, %14 : tensor<12x12xf16>
        %280 = math.log10 %14 : tensor<12x12xf16>
        %281 = index.ceildivu %c12, %c5
        %282 = arith.remf %cst_7, %62 : f16
        %283 = arith.negf %cst_3 : f32
        %284 = math.absi %1 : tensor<12x12xi64>
        scf.yield
      }
      default {
        %270 = arith.divui %c845231582_i64, %c845231582_i64 : i64
        %271 = tensor.empty() : tensor<4x4xi64>
        %272 = linalg.matmul ins(%10, %10 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%271 : tensor<4x4xi64>) -> tensor<4x4xi64>
        %splat_52 = tensor.splat %c-4657_i16 : tensor<7x4xi16>
        %273 = arith.xori %c683439869_i32, %c2036248310_i32 : i32
        %274 = math.powf %16, %12 : tensor<4x4xf16>
        %275 = vector.insertelement %c0_i64, %78[%60 : index] : vector<12xi64>
        %276 = math.powf %13, %3 : tensor<12x12xf16>
        %277 = bufferization.clone %119 : memref<12x12xi16> to memref<12x12xi16>
        %inserted_53 = tensor.insert %cst_5 into %16[%c3, %c0] : tensor<4x4xf16>
        %278 = math.absi %true : i1
        %279 = vector.broadcast %cst_1 : f32 to vector<12xf32>
        %280 = vector.multi_reduction <mul>, %87, %279 [0] : vector<12x12xf32> to vector<12xf32>
        %281 = index.ceildivu %rank_27, %115
        %282 = math.exp2 %12 : tensor<4x4xf16>
        %alloc_54 = memref.alloc() : memref<4x4xf32>
        %283 = arith.muli %c-4657_i16, %c-4576_i16 : i16
        %284 = arith.cmpi ugt, %c1_i32, %c1_i32 : i32
      }
      %256 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d2 - 1) * 128, ((d0 ceildiv 2) floordiv 8) * 64)>(%c5, %70, %c11, %c2)
      %257 = tensor.empty() : tensor<12x12xf16>
      %258 = linalg.matmul ins(%13, %11 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%257 : tensor<12x12xf16>) -> tensor<12x12xf16>
      %259 = affine.if affine_set<(d0, d1, d2) : (0 == 0)>(%c0, %c15, %c13) -> i32 {
        %270 = vector.broadcast %c683439869_i32 : i32 to vector<12x12xi32>
        %271 = arith.ori %c2036248310_i32, %c2036248310_i32 : i32
        %272 = arith.muli %c-4576_i16, %c-22933_i16 : i16
        %273 = vector.matrix_multiply %20, %20 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %274 = vector.maskedload %90[%c1, %c1], %77, %76 : memref<4x4xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %275 = arith.shrui %c2036248310_i32, %c683439869_i32 : i32
        %cst_52 = arith.constant 1.000000e+00 : f16
        %cst_53 = arith.constant 0.000000e+00 : f16
        %276 = vector.transfer_read %53[%rank, %c14], %cst_53 : tensor<12x12xf16>, vector<f16>
        %277 = math.tan %cst : f16
        affine.yield %c2036248310_i32 : i32
      } else {
        %270 = arith.cmpi ule, %c-22933_i16, %c-22933_i16 : i16
        %expanded_52 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<7x4xf16> into tensor<7x4x1xf16>
        %271 = vector.bitcast %64 : vector<7xi1> to vector<7xi1>
        %272 = index.divu %60, %c11
        %273 = arith.floordivsi %c683439869_i32, %c2036248310_i32 : i32
        %274 = bufferization.clone %alloc_9 : memref<4x4xi64> to memref<4x4xi64>
        %275 = index.divu %c8, %60
        %276 = arith.floordivsi %c-4657_i16, %c-4657_i16 : i16
        affine.yield %c1_i32 : i32
      }
      %260 = vector.create_mask %rank, %c6 : vector<4x4xi1>
      %261 = math.floor %cst_0 : f16
      %262 = affine.max affine_map<(d0, d1) -> (d1 floordiv 16 + 8, d1 - d0)>(%c5, %c3)
      %263 = math.sqrt %16 : tensor<4x4xf16>
      %264 = arith.divsi %c0_i64, %c845231582_i64 : i64
      %265 = bufferization.clone %alloc_22 : memref<12x12xi16> to memref<12x12xi16>
      %false_51 = arith.constant false
      %266 = index.sub %c10, %c0
      %267 = arith.divf %cst_0, %cst : f16
      %268 = math.exp %cst_7 : f16
      %269 = arith.divsi %c1_i32, %c683439869_i32 : i32
      scf.yield %9 : tensor<12x12xi32>
    }
    default {
      %255 = math.atan2 %12, %12 : tensor<4x4xf16>
      %256 = vector.broadcast %true : i1 to vector<8xi1>
      %257 = vector.maskedload %alloc_20[%c1, %c10], %256, %256 : memref<12x12xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
      %258 = math.tanh %14 : tensor<12x12xf16>
      %cst_51 = arith.constant 0x4D215E14 : f32
      %259 = arith.maxsi %c845231582_i64, %c1133525898_i64 : i64
      %260 = math.round %14 : tensor<12x12xf16>
      %261 = arith.shli %c845231582_i64, %c845231582_i64 : i64
      %262 = vector.bitcast %257 : vector<8xi1> to vector<8xi1>
      %263 = arith.divf %cst_7, %cst : f16
      %264 = scf.while (%arg3 = %256) : (vector<8xi1>) -> vector<8xi1> {
        %269 = arith.shrsi %c1_i32, %c1_i32 : i32
        %true_53 = arith.constant true
        %270 = math.cos %4 : tensor<12x12xf16>
        memref.assume_alignment %117, 4 : memref<12x12xi64>
        %271 = math.fpowi %cst_1, %c2036248310_i32 : f32, i32
        %272 = vector.transpose %132, [0] : vector<12xi64> to vector<12xi64>
        %273 = arith.remui %c-4576_i16, %c-22933_i16 : i16
        memref.store %c-4657_i16, %alloc_19[%c8, %c9] : memref<12x12xi16>
        scf.condition(%true) %256 : vector<8xi1>
      } do {
      ^bb0(%arg3: vector<8xi1>):
        %269 = arith.negf %cst : f16
        memref.tensor_store %13, %alloc : memref<12x12xf16>
        %270 = bufferization.clone %alloc_14 : memref<12x12xi32> to memref<12x12xi32>
        %extracted = tensor.extract %5[%c4, %c0] : tensor<7x4xi16>
        %271 = tensor.empty() : tensor<12x12xf32>
        %272 = arith.floordivsi %c2036248310_i32, %c1_i32 : i32
        %alloc_53 = memref.alloc() : memref<4x4xf16>
        memref.tensor_store %82, %alloc_53 : memref<4x4xf16>
        %273 = math.round %62 : f16
        %274 = math.absf %12 : tensor<4x4xf16>
        %275 = vector.flat_transpose %257 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %276 = arith.xori %extracted, %c-4657_i16 : i16
        %277 = index.divu %c7, %c5
        %278 = arith.remsi %c-4657_i16, %extracted : i16
        memref.copy %alloc_17, %270 : memref<12x12xi32> to memref<12x12xi32>
        %279 = math.log2 %cst_1 : f32
        %280 = index.sub %c9, %c13
        scf.yield %257 : vector<8xi1>
      }
      %265 = arith.remf %62, %62 : f16
      %266 = arith.cmpf oeq, %cst_3, %cst_1 : f32
      %267 = math.tanh %cst : f16
      %false_52 = arith.constant false
      bufferization.dealloc_tensor %17 : tensor<4x4xf16>
      %268 = arith.floordivsi %c845231582_i64, %c845231582_i64 : i64
      scf.yield %2 : tensor<12x12xi32>
    }
    %137 = scf.while (%arg3 = %alloc_12) : (memref<12x12xf16>) -> memref<12x12xf16> {
      %255 = math.round %0 : tensor<7x4xf16>
      %256 = math.round %3 : tensor<12x12xf16>
      %alloca_51 = memref.alloca() : memref<12x12xf32>
      %257 = math.ctpop %true : i1
      memref.assume_alignment %alloc_17, 2 : memref<12x12xi32>
      vector.print %132 : vector<12xi64>
      %258 = scf.execute_region -> vector<12x12xf32> {
        %260 = math.absf %17 : tensor<4x4xf16>
        %261 = arith.cmpi ne, %c1_i32, %c1_i32 : i32
        vector.print %86 : vector<12x12xf32>
        %c785735473_i32 = arith.constant 785735473 : i32
        %262 = math.tanh %17 : tensor<4x4xf16>
        %263 = math.log1p %14 : tensor<12x12xf16>
        bufferization.dealloc_tensor %24 : tensor<i1>
        %264 = arith.negf %cst_5 : f16
        %265 = vector.flat_transpose %64 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %266 = bufferization.clone %alloc_15 : memref<12x12xi64> to memref<12x12xi64>
        %267 = vector.broadcast %true : i1 to vector<8xi1>
        %268 = vector.maskedload %alloc_23[%c6, %c7], %267, %267 : memref<12x12xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %269 = math.ceil %cst_3 : f32
        %270 = index.divu %55, %c4
        %271 = vector.extract_strided_slice %43 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4xf32> to vector<4x4xf32>
        %272 = arith.ori %c2036248310_i32, %c2036248310_i32 : i32
        %273 = arith.ori %true, %true : i1
        scf.yield %121 : vector<12x12xf32>
      }
      %259 = math.round %16 : tensor<4x4xf16>
      scf.condition(%true) %alloc : memref<12x12xf16>
    } do {
    ^bb0(%arg3: memref<12x12xf16>):
      %255 = math.atan2 %splat, %splat : tensor<4x4xf32>
      %inserted_51 = tensor.insert %cst_0 into %3[%c3, %c8] : tensor<12x12xf16>
      %256 = math.absf %53 : tensor<12x12xf16>
      %257 = math.atan2 %14, %4 : tensor<12x12xf16>
      %258 = vector.matrix_multiply %77, %64 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 7 : i32} : (vector<12xi1>, vector<7xi1>) -> vector<84xi1>
      %259 = arith.ori %c1133525898_i64, %c1133525898_i64 : i64
      %260 = arith.remf %cst_5, %cst_0 : f16
      %261 = memref.load %alloc[%c4, %c0] : memref<12x12xf16>
      %262 = math.log10 %16 : tensor<4x4xf16>
      %263 = tensor.empty(%70) : tensor<?x12xi32>
      %c1617092991_i64 = arith.constant 1617092991 : i64
      %264 = math.round %cst_3 : f32
      scf.execute_region {
        %268 = math.ipowi %1, %1 : tensor<12x12xi64>
        %269 = arith.remsi %true, %true : i1
        %alloc_52 = memref.alloc() : memref<12x12xf16>
        %270 = arith.divf %cst_7, %62 : f16
        %271 = vector.bitcast %20 : vector<7xi1> to vector<7xi1>
        %272 = math.atan %13 : tensor<12x12xf16>
        %273 = math.ceil %11 : tensor<12x12xf16>
        %274 = arith.remsi %c1133525898_i64, %c0_i64 : i64
        %275 = math.atan %cst_2 : f32
        %276 = memref.load %alloc_17[%c3, %c9] : memref<12x12xi32>
        %277 = arith.remsi %true, %true : i1
        %rank_53 = tensor.rank %7 : tensor<12x12xi1>
        %278 = math.exp2 %4 : tensor<12x12xf16>
        %alloca_54 = memref.alloca() : memref<7x4xi16>
        %279 = memref.load %alloc_14[%c11, %c1] : memref<12x12xi32>
        %280 = math.round %cst_7 : f16
        scf.yield
      }
      %265 = memref.atomic_rmw minu %c1_i32, %alloc_11[%c3, %c2] : (i32, memref<7x4xi32>) -> i32
      %266 = arith.cmpf olt, %cst_4, %cst_4 : f32
      %267 = arith.mulf %cst, %cst_0 : f16
      scf.yield %alloc_10 : memref<12x12xf16>
    }
    %138 = index.castu %c8 : index to i32
    %139 = tensor.empty(%c3, %c6) : tensor<?x?xf16>
    %140 = arith.divsi %true, %true : i1
    %141 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<12x12x1xi64>) {
    ^bb0(%out: i64):
      %255 = arith.xori %c-4657_i16, %c-4657_i16 : i16
      %256 = affine.for %arg3 = 0 to 63 iter_args(%arg4 = %1) -> (tensor<12x12xi64>) {
        affine.yield %1 : tensor<12x12xi64>
      }
      %257 = vector.bitcast %87 : vector<12x12xf32> to vector<12x12xf32>
      %258 = scf.while (%arg3 = %cst) : (f16) -> f16 {
        %282 = arith.muli %true, %true : i1
        %inserted_57 = tensor.insert %true into %24[] : tensor<i1>
        %283 = tensor.empty(%c2, %c3) : tensor<?x?xi32>
        %true_58 = arith.constant true
        %284 = arith.remsi %c845231582_i64, %c1133525898_i64 : i64
        %285 = arith.divui %true, %true : i1
        %286 = arith.remf %cst_6, %cst_2 : f32
        %287 = math.ctpop %reduced : tensor<i1>
        scf.condition(%true) %arg3 : f16
      } do {
      ^bb0(%arg3: f16):
        %282 = math.round %splat : tensor<4x4xf32>
        memref.assume_alignment %alloc_9, 8 : memref<4x4xi64>
        %283 = arith.remsi %c683439869_i32, %c2036248310_i32 : i32
        %284 = vector.broadcast %c683439869_i32 : i32 to vector<4xi32>
        %285 = vector.transfer_write %284, %9[%c12, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<12x12xi32>
        %286 = arith.floordivsi %true, %true : i1
        vector.print %101 : vector<12x12xi1>
        %287 = math.round %cst_7 : f16
        %288 = arith.divui %c0_i64, %c845231582_i64 : i64
        %289 = tensor.empty(%c15, %c14) : tensor<?x?xi16>
        %splat_57 = tensor.splat %c-22933_i16 : tensor<12x12xi16>
        %290 = arith.xori %c-4657_i16, %c-22933_i16 : i16
        %291 = arith.ori %c-4576_i16, %c-4576_i16 : i16
        %292 = index.castu %c1133525898_i64 : i64 to index
        %inserted_58 = tensor.insert %c683439869_i32 into %9[%c3, %c10] : tensor<12x12xi32>
        %293 = math.absf %14 : tensor<12x12xf16>
        %294 = index.castu %c845231582_i64 : i64 to index
        scf.yield %62 : f16
      }
      %259 = vector.broadcast %cst_5 : f16 to vector<4xf16>
      %260 = vector.transfer_write %259, %4[%c15, %70] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf16>, tensor<12x12xf16>
      %261 = arith.ori %c1133525898_i64, %out : i64
      %262 = math.powf %13, %14 : tensor<12x12xf16>
      %splat_51 = tensor.splat %cst_7 : tensor<4x4xf16>
      %263 = math.floor %4 : tensor<12x12xf16>
      %264 = math.absi %5 : tensor<7x4xi16>
      %265 = arith.divui %true, %true : i1
      %alloca_52 = memref.alloca() : memref<12x12xf32>
      %266 = math.tan %splat_32 : tensor<4x4xf32>
      %267 = affine.load %alloc_10[%c0, %c12] : memref<12x12xf16>
      %268 = vector.flat_transpose %95 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
      %269 = math.absi %c-22933_i16 : i16
      %270 = math.ceil %4 : tensor<12x12xf16>
      %271 = vector.create_mask %c14, %c9 : vector<7x4xi1>
      %272 = index.castu %rank_27 : index to i32
      %273 = arith.divsi %out, %c1133525898_i64 : i64
      memref.tensor_store %7, %alloc_18 : memref<12x12xi1>
      %274 = arith.negf %cst_4 : f32
      %275 = arith.maxui %out, %c1133525898_i64 : i64
      %alloc_53 = memref.alloc() : memref<i1>
      memref.tensor_store %18, %alloc_53 : memref<i1>
      %c1_i16_54 = arith.constant 1 : i16
      %c0_i16_55 = arith.constant 0 : i16
      %276 = vector.transfer_read %125[%c8, %60], %c0_i16_55 : memref<12x12xi16>, vector<i16>
      %collapsed_56 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<12x12x1xi64> into tensor<144x1xi64>
      %277 = bufferization.clone %alloc_11 : memref<7x4xi32> to memref<7x4xi32>
      vector.print %76 : vector<12xi64>
      %278 = math.round %cst_3 : f32
      %279 = vector.matrix_multiply %77, %77 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %280 = vector.insertelement %c1133525898_i64, %95[%c13 : index] : vector<8xi64>
      %281 = vector.broadcast %c0_i64 : i64 to vector<12x12xi64>
      linalg.yield %c845231582_i64 : i64
    } -> tensor<12x12x1xi64>
    %142 = index.sub %c14, %60
    %143 = index.castu %c0 : index to i32
    %144 = index.castu %true : i1 to index
    %145 = vector.bitcast %122 : vector<12x12xf32> to vector<12x12xf32>
    %c1_i16 = arith.constant 1 : i16
    %c0_i16 = arith.constant 0 : i16
    %146 = vector.transfer_read %15[%70, %c9], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x4xi16>, vector<8xi16>
    %splat_33 = tensor.splat %c-22933_i16 : tensor<7x4xi16>
    vector.print %86 : vector<12x12xf32>
    %147 = math.cttz %6 : tensor<12x12xi1>
    %148 = arith.floordivsi %c1_i16, %c-4657_i16 : i16
    %149 = bufferization.clone %alloc_19 : memref<12x12xi16> to memref<12x12xi16>
    %150 = math.floor %13 : tensor<12x12xf16>
    %151 = arith.muli %true, %true : i1
    memref.store %c2036248310_i32, %alloc_17[%c0, %c4] : memref<12x12xi32>
    %152 = arith.remsi %c-22933_i16, %c-4657_i16 : i16
    %alloca_34 = memref.alloca() : memref<12x12xf16>
    %153 = arith.remf %cst_7, %cst_0 : f16
    %154 = vector.transpose %121, [0, 1] : vector<12x12xf32> to vector<12x12xf32>
    %155 = affine.for %arg3 = 0 to 30 iter_args(%arg4 = %18) -> (tensor<i1>) {
      affine.yield %24 : tensor<i1>
    }
    %156 = arith.shli %c-22933_i16, %c1_i16 : i16
    memref.assume_alignment %alloc_20, 1 : memref<12x12xi1>
    %157 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
    %158 = vector.fma %157, %157, %157 : vector<7x4xf32>
    %159 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
    %160 = vector.fma %159, %122, %122 : vector<12x12xf32>
    %161 = arith.negf %cst_5 : f16
    %162 = index.divu %c9, %70
    %163 = arith.cmpi sge, %c-4576_i16, %c-4657_i16 : i16
    %164 = arith.mulf %cst_0, %62 : f16
    %165 = tensor.empty() : tensor<12x12xi1>
    %166 = linalg.matmul ins(%7, %7 : tensor<12x12xi1>, tensor<12x12xi1>) outs(%165 : tensor<12x12xi1>) -> tensor<12x12xi1>
    %167 = arith.mulf %62, %62 : f16
    %168 = arith.divui %c-4657_i16, %c-4576_i16 : i16
    %169 = index.casts %162 : index to i32
    memref.alloca_scope  {
      %255 = tensor.empty() : tensor<4x4xi16>
      %256 = linalg.matmul ins(%15, %15 : tensor<4x4xi16>, tensor<4x4xi16>) outs(%255 : tensor<4x4xi16>) -> tensor<4x4xi16>
      %257 = arith.divsi %c2036248310_i32, %c1_i32 : i32
      %258 = arith.maxsi %c-4657_i16, %c-4576_i16 : i16
      %259 = arith.ori %c0_i64, %c1133525898_i64 : i64
      %260 = arith.remf %cst_7, %cst : f16
      %261 = memref.load %90[%c0, %c0] : memref<4x4xi64>
      %alloca_51 = memref.alloca() : memref<12x12xi1>
      %262 = tensor.empty() : tensor<12x12xf16>
      %mapped_52 = linalg.map ins(%14, %alloc : tensor<12x12xf16>, memref<12x12xf16>) outs(%262 : tensor<12x12xf16>)
        (%in: f16, %in_54: f16) {
          %287 = math.absf %cst_1 : f32
          %288 = affine.load %alloc_12[%c11, %c4] : memref<12x12xf16>
          %289 = vector.broadcast %rank_27 : index to vector<4xindex>
          %290 = vector.broadcast %true : i1 to vector<4xi1>
          %291 = vector.broadcast %c1_i16 : i16 to vector<4xi16>
          vector.scatter %119[%c1, %c1] [%289], %290, %291 : memref<12x12xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
          %292 = arith.ori %c2036248310_i32, %c1_i32 : i32
          %293 = index.castu %c0_i64 : i64 to index
          %294 = memref.load %alloc_16[%c3, %c3] : memref<7x4xi64>
          %alloc_55 = memref.alloc() : memref<12x12xi32>
          %295 = math.atan2 %262, %3 : tensor<12x12xf16>
          %296 = affine.max affine_map<(d0, d1) -> (d1)>(%c8, %c7)
          %297 = arith.shrsi %c2036248310_i32, %c1_i32 : i32
          %298 = math.log %splat : tensor<4x4xf32>
          %alloc_56 = memref.alloc() : memref<4x4xi16>
          memref.tensor_store %255, %alloc_56 : memref<4x4xi16>
          %299 = math.floor %in_54 : f16
          %300 = math.atan %12 : tensor<4x4xf16>
          %301 = vector.broadcast %c1133525898_i64 : i64 to vector<8xi64>
          vector.transfer_write %301, %alloc_9[%55, %60] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, memref<4x4xi64>
          %302 = affine.max affine_map<(d0, d1) -> (d1 - d0)>(%144, %rank_27)
          %303 = math.round %cst_4 : f32
          %304 = arith.floordivsi %true, %true : i1
          %305 = math.cos %splat_32 : tensor<4x4xf32>
          %splat_57 = tensor.splat %c845231582_i64 : tensor<4x4xi64>
          %306 = affine.load %alloc_21[%c12, %c15] : memref<7x4xi1>
          %307 = arith.remf %cst_2, %cst_1 : f32
          %308 = vector.insert %true, %64 [1] : i1 into vector<7xi1>
          %false_58 = arith.constant false
          %309 = vector.extract_strided_slice %132 {offsets = [5], sizes = [3], strides = [1]} : vector<12xi64> to vector<3xi64>
          %310 = affine.max affine_map<(d0) -> (d0 * -126, d0 * 2, d0)>(%162)
          %311 = vector.bitcast %121 : vector<12x12xf32> to vector<12x12xf32>
          memref.store %true, %alloc_23[%c3, %c10] : memref<12x12xi1>
          %312 = vector.broadcast %c1_i16 : i16 to vector<8xi16>
          vector.transfer_write %312, %125[%c5, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi16>, memref<12x12xi16>
          %inserted_59 = tensor.insert %306 into %134[%c4, %c2] : tensor<12x12xi1>
          %313 = math.cttz %c1133525898_i64 : i64
          %314 = vector.bitcast %86 : vector<12x12xf32> to vector<12x12xf32>
          %cst_60 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_60 : f16
        }
      %263 = math.powf %cst_7, %cst : f16
      %264 = arith.maxf %62, %cst_7 : f16
      %265 = tensor.empty() : tensor<12x12xi16>
      %mapped_53 = linalg.map ins(%149 : memref<12x12xi16>) outs(%265 : tensor<12x12xi16>)
        (%in: i16) {
          %287 = math.ceil %cst_3 : f32
          %288 = arith.shrsi %c-4657_i16, %c-4576_i16 : i16
          %alloc_54 = memref.alloc() : memref<12x12xi64>
          %289 = math.floor %0 : tensor<7x4xf16>
          %inserted_55 = tensor.insert %c0_i64 into %expanded[%c4, %c11, %c0] : tensor<12x12x1xi64>
          vector.print %128 : vector<7xi64>
          %290 = math.tan %13 : tensor<12x12xf16>
          %291 = math.round %cst_7 : f16
          %292 = memref.atomic_rmw muli %c683439869_i32, %alloc_11[%c3, %c2] : (i32, memref<7x4xi32>) -> i32
          %inserted_56 = tensor.insert %c683439869_i32 into %2[%c3, %c4] : tensor<12x12xi32>
          %293 = vector.transpose %127, [0] : vector<7xi64> to vector<7xi64>
          %294 = vector.flat_transpose %95 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          %295 = vector.broadcast %in : i16 to vector<12xi16>
          %296 = vector.transfer_write %295, %5[%c3, %70] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi16>, tensor<7x4xi16>
          %297 = arith.mulf %cst_5, %cst : f16
          %cst_57 = arith.constant 0x4E551654 : f32
          %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %101, %101, %104 : vector<12x12xi1>, vector<12x12xi1> into vector<12x12xi1>
          %299 = arith.mulf %cst_3, %cst_3 : f32
          %300 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 2)>(%c0, %rank, %55, %c10)
          %301 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
          %302 = vector.fma %301, %43, %301 : vector<4x4xf32>
          %from_elements = tensor.from_elements %c683439869_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c683439869_i32, %c1_i32, %c683439869_i32, %c2036248310_i32, %c683439869_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c2036248310_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c2036248310_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c1_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c683439869_i32, %c1_i32, %c1_i32, %c683439869_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c683439869_i32, %c2036248310_i32, %c2036248310_i32, %c683439869_i32, %c1_i32, %c683439869_i32, %c1_i32, %c1_i32, %c1_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c2036248310_i32, %c683439869_i32, %c1_i32, %c683439869_i32, %c683439869_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c1_i32, %c1_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c683439869_i32, %c1_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c1_i32, %c683439869_i32, %c683439869_i32, %c2036248310_i32, %c1_i32, %c2036248310_i32, %c2036248310_i32, %c2036248310_i32, %c2036248310_i32 : tensor<12x12xi32>
          %303 = arith.remsi %c0_i64, %c1133525898_i64 : i64
          %304 = index.maxu %c7, %c9
          %305 = math.ctpop %in : i16
          %306 = arith.maxui %true, %true : i1
          %307 = math.atan2 %splat, %splat : tensor<4x4xf32>
          %308 = math.floor %62 : f16
          memref.tensor_store %134, %alloc_23 : memref<12x12xi1>
          %309 = index.maxu %c1, %c2
          %310 = arith.minf %cst_2, %cst_2 : f32
          %inserted_58 = tensor.insert %in into %15[%c1, %c0] : tensor<4x4xi16>
          %311 = arith.cmpi uge, %c-22933_i16, %in : i16
          %312 = vector.broadcast %c-4576_i16 : i16 to vector<7x4xi16>
          %c1_i16_59 = arith.constant 1 : i16
          linalg.yield %c1_i16_59 : i16
        }
      %266 = math.cttz %c845231582_i64 : i64
      %267 = index.mul %c13, %c12
      %268 = memref.load %alloc_11[%c0, %c1] : memref<7x4xi32>
      %269 = arith.shrsi %c683439869_i32, %c683439869_i32 : i32
      %270 = affine.min affine_map<(d0, d1) -> (0, 0)>(%c2, %c2)
      %271 = scf.execute_region -> index {
        %287 = vector.broadcast %cst : f16 to vector<12x12xf16>
        %288 = vector.broadcast %c2036248310_i32 : i32 to vector<12x12xi32>
        %289 = vector.gather %alloc[%c4, %rank] [%288], %101, %287 : memref<12x12xf16>, vector<12x12xi32>, vector<12x12xi1>, vector<12x12xf16> into vector<12x12xf16>
        %290 = arith.xori %c1133525898_i64, %c1133525898_i64 : i64
        %291 = math.expm1 %splat_32 : tensor<4x4xf32>
        %292 = affine.max affine_map<(d0, d1) -> (((d0 - d1) * 2) floordiv 32 - 2)>(%c4, %55)
        %293 = vector.broadcast %c10 : index to vector<4xindex>
        %294 = vector.broadcast %true : i1 to vector<4xi1>
        %295 = vector.broadcast %c683439869_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_11[%c3, %c1] [%293], %294, %295 : memref<7x4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %296 = arith.maxf %cst_6, %cst_2 : f32
        memref.tensor_store %13, %alloc_12 : memref<12x12xf16>
        %297 = arith.negf %cst_1 : f32
        %298 = math.powf %cst_5, %62 : f16
        %299 = arith.floordivsi %c2036248310_i32, %c683439869_i32 : i32
        %300 = vector.splat %60 : vector<7x4xindex>
        vector.print %47 : vector<4x4xf32>
        %301 = math.ipowi %15, %255 : tensor<4x4xi16>
        %302 = math.absf %12 : tensor<4x4xf16>
        %303 = affine.load %alloc_14[%c1, %c15] : memref<12x12xi32>
        %304 = math.tanh %13 : tensor<12x12xf16>
        scf.yield %c8 : index
      }
      %272 = arith.cmpi ult, %c683439869_i32, %c2036248310_i32 : i32
      %273 = math.powf %12, %82 : tensor<4x4xf16>
      %274 = index.maxs %rank_27, %c6
      %275 = bufferization.clone %117 : memref<12x12xi64> to memref<12x12xi64>
      %276 = arith.divui %c-22933_i16, %c-4576_i16 : i16
      vector.print %121 : vector<12x12xf32>
      %277 = vector.broadcast %c683439869_i32 : i32 to vector<12xi32>
      %278 = vector.maskedload %alloc_17[%c1, %c1], %77, %277 : memref<12x12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %279 = math.exp %splat_32 : tensor<4x4xf32>
      %280 = arith.negf %cst_0 : f16
      %281 = math.ceil %3 : tensor<12x12xf16>
      %282 = arith.mulf %cst, %cst : f16
      %283 = vector.broadcast %cst_4 : f32 to vector<12xf32>
      %284 = vector.multi_reduction <mul>, %122, %283 [0] : vector<12x12xf32> to vector<12xf32>
      bufferization.dealloc_tensor %9 : tensor<12x12xi32>
      %285 = index.casts %c1_i32 : i32 to index
      %286 = arith.remf %cst_5, %62 : f16
    }
    %170 = affine.if affine_set<(d0) : (-d0 == 0, ((d0 * 2) floordiv 128) floordiv 8 == 0, (d0 * 2) floordiv 128 >= 0, d0 >= 0)>(%c0) -> memref<7x4xi32> {
      %255 = index.casts %c4 : index to i32
      %256 = scf.while (%arg3 = %158) : (vector<7x4xf32>) -> vector<7x4xf32> {
        %262 = affine.max affine_map<(d0) -> (d0 - (-d0 - 4) + 4)>(%c11)
        %263 = arith.mulf %cst_1, %cst_2 : f32
        memref.tensor_store %8, %alloc_14 : memref<12x12xi32>
        affine.store %c1133525898_i64, %71[%c3, %c3] : memref<12x12xi64>
        %264 = math.absf %0 : tensor<7x4xf16>
        %265 = affine.load %119[%c6, %c11] : memref<12x12xi16>
        affine.store %cst_5, %alloc_12[%c6, %c4] : memref<12x12xf16>
        %266 = arith.negf %cst_6 : f32
        scf.condition(%true) %158 : vector<7x4xf32>
      } do {
      ^bb0(%arg3: vector<7x4xf32>):
        %262 = vector.bitcast %128 : vector<7xi64> to vector<7xi64>
        %263 = math.log2 %3 : tensor<12x12xf16>
        %264 = vector.broadcast %c9 : index to vector<4xindex>
        %265 = vector.broadcast %true : i1 to vector<4xi1>
        %266 = vector.broadcast %cst_7 : f16 to vector<4xf16>
        vector.scatter %alloc[%c9, %c5] [%264], %265, %266 : memref<12x12xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %267 = arith.divsi %c1_i32, %c683439869_i32 : i32
        %268 = arith.maxf %62, %cst_0 : f16
        %269 = bufferization.to_memref %6 : memref<12x12xi1>
        %270 = math.tanh %14 : tensor<12x12xf16>
        %271 = vector.bitcast %78 : vector<12xi64> to vector<12xi64>
        %272 = arith.mulf %62, %cst : f16
        %alloc_51 = memref.alloc() : memref<7x4xi1>
        %273 = vector.insert %77, %101 [8] : vector<12xi1> into vector<12x12xi1>
        %274 = vector.broadcast %true : i1 to vector<12x12xi1>
        %275 = arith.addi %c2036248310_i32, %c2036248310_i32 : i32
        %276 = arith.maxui %c1_i32, %c2036248310_i32 : i32
        %277 = arith.addi %c1_i16, %c1_i16 : i16
        %278 = arith.shrsi %c-4576_i16, %c-4576_i16 : i16
        scf.yield %158 : vector<7x4xf32>
      }
      %257 = arith.remf %cst_5, %cst : f16
      %258 = arith.maxui %c-4576_i16, %c1_i16 : i16
      %259 = arith.cmpf ule, %62, %62 : f16
      %260 = index.ceildivu %55, %rank
      bufferization.dealloc_tensor %0 : tensor<7x4xf16>
      %261 = bufferization.to_memref %53 : memref<12x12xf16>
      affine.yield %alloc_11 : memref<7x4xi32>
    } else {
      %255 = arith.maxsi %c1133525898_i64, %c845231582_i64 : i64
      %256 = math.round %4 : tensor<12x12xf16>
      %257 = vector.broadcast %cst_1 : f32 to vector<7x4xf32>
      %258 = vector.fma %257, %257, %158 : vector<7x4xf32>
      %259 = arith.remsi %true, %true : i1
      %260 = index.sub %c8, %144
      memref.copy %alloc_9, %90 : memref<4x4xi64> to memref<4x4xi64>
      %261 = math.atan %13 : tensor<12x12xf16>
      %262 = arith.cmpi ne, %c2036248310_i32, %c683439869_i32 : i32
      affine.yield %alloc_11 : memref<7x4xi32>
    }
    %expanded_35 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
    %171 = arith.remf %cst_2, %cst_1 : f32
    %alloc_36 = memref.alloc() : memref<7x4xi32>
    %172 = arith.divsi %c683439869_i32, %c683439869_i32 : i32
    %173 = arith.maxsi %true, %true : i1
    %174 = arith.ori %c845231582_i64, %c0_i64 : i64
    %cst_37 = arith.constant 0x4E3D6C2E : f32
    %alloc_38 = memref.alloc() : memref<12x12xf16>
    affine.store %c-22933_i16, %alloc_22[%c11, %c1] : memref<12x12xi16>
    %175 = memref.alloca_scope  -> (memref<12x12xi32>) {
      %255 = arith.mulf %cst_1, %cst_2 : f32
      %256 = arith.minf %cst_6, %cst_2 : f32
      %257 = math.floor %cst : f16
      %258 = vector.bitcast %77 : vector<12xi1> to vector<12xi1>
      %259 = arith.floordivsi %c1_i32, %c683439869_i32 : i32
      %260 = vector.extract_strided_slice %86 {offsets = [2], sizes = [4], strides = [1]} : vector<12x12xf32> to vector<4x12xf32>
      %261 = math.floor %cst_0 : f16
      scf.if %true {
        %expanded_51 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<12x12xf16> into tensor<12x12x1xf16>
        %true_52 = arith.constant true
        %282 = math.cos %expanded_51 : tensor<12x12x1xf16>
        %283 = arith.muli %c-4657_i16, %c-4657_i16 : i16
        %284 = vector.broadcast %cst_4 : f32 to vector<7x4xf32>
        %285 = vector.fma %284, %157, %157 : vector<7x4xf32>
        %286 = math.ceil %82 : tensor<4x4xf16>
        %287 = arith.remf %cst_6, %cst_1 : f32
        %288 = index.sub %rank_27, %70
      } else {
        %282 = arith.shrsi %c845231582_i64, %c0_i64 : i64
        %283 = index.maxs %c2, %115
        %284 = arith.divf %cst_1, %cst_3 : f32
        %285 = math.ipowi %c1_i32, %c2036248310_i32 : i32
        %alloc_51 = memref.alloc() : memref<7x4xi64>
        %286 = math.atan2 %13, %4 : tensor<12x12xf16>
        vector.print %104 : vector<12x12xi1>
        %287 = math.absi %7 : tensor<12x12xi1>
      }
      %262 = vector.bitcast %160 : vector<12x12xf32> to vector<12x12xf32>
      %263 = arith.maxui %c0_i64, %c0_i64 : i64
      %264 = memref.alloca_scope  -> (memref<12x12xi1>) {
        %282 = vector.broadcast %c0_i64 : i64 to vector<7x4xi64>
        %283 = math.ceil %14 : tensor<12x12xf16>
        %284 = math.ctpop %10 : tensor<4x4xi64>
        %285 = vector.transpose %128, [0] : vector<7xi64> to vector<7xi64>
        %inserted_51 = tensor.insert %cst_2 into %splat[%c0, %c2] : tensor<4x4xf32>
        %c0_i16_52 = arith.constant 0 : i16
        %286 = vector.transfer_read %119[%c14, %142], %c0_i16_52 : memref<12x12xi16>, vector<8xi16>
        %287 = arith.remf %cst_3, %cst_4 : f32
        %288 = vector.broadcast %115 : index to vector<4xindex>
        %289 = vector.broadcast %true : i1 to vector<4xi1>
        vector.scatter %alloc_18[%c2, %c3] [%288], %289, %289 : memref<12x12xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %290 = math.tan %cst_5 : f16
        %291 = memref.atomic_rmw muli %c-4576_i16, %125[%c4, %c6] : (i16, memref<12x12xi16>) -> i16
        %292 = arith.divf %cst_6, %cst_6 : f32
        %alloc_53 = memref.alloc() : memref<4x4xf16>
        %293 = index.sub %c15, %115
        %splat_54 = tensor.splat %cst : tensor<7x4xf16>
        %false_55 = arith.constant false
        %extracted = tensor.extract %4[%c11, %c4] : tensor<12x12xf16>
        %alloca_56 = memref.alloca() : memref<4x4xi1>
        vector.print %43 : vector<4x4xf32>
        %294 = vector.reduction <xor>, %95 : vector<8xi64> into i64
        %295 = arith.xori %c1_i32, %c2036248310_i32 : i32
        %296 = math.absi %reduced : tensor<i1>
        %297 = arith.shrsi %c845231582_i64, %c1133525898_i64 : i64
        %298 = vector.flat_transpose %128 {columns = 7 : i32, rows = 1 : i32} : vector<7xi64> -> vector<7xi64>
        %299 = arith.divf %cst_2, %cst_1 : f32
        %300 = arith.remf %extracted, %cst_7 : f16
        %301 = math.round %11 : tensor<12x12xf16>
        %302 = arith.remf %cst_3, %cst_4 : f32
        %303 = vector.broadcast %cst_2 : f32 to vector<12x12xf32>
        %304 = vector.fma %303, %160, %86 : vector<12x12xf32>
        %305 = arith.ceildivsi %c0_i64, %c1133525898_i64 : i64
        %alloc_57 = memref.alloc() : memref<12x12xi1>
        %inserted_58 = tensor.insert %true into %7[%c5, %c6] : tensor<12x12xi1>
        %alloc_59 = memref.alloc() : memref<12x12xi64>
        memref.alloca_scope.return %alloc_20 : memref<12x12xi1>
      }
      %265 = vector.bitcast %121 : vector<12x12xf32> to vector<12x12xf32>
      %266 = math.tanh %cst_2 : f32
      memref.alloca_scope  {
        %282 = index.maxs %c15, %c3
        %283 = index.mul %rank_27, %142
        %284 = math.expm1 %14 : tensor<12x12xf16>
        %285 = math.absf %12 : tensor<4x4xf16>
        %286 = vector.insertelement %c845231582_i64, %76[%142 : index] : vector<12xi64>
        %287 = math.fpowi %cst_6, %c683439869_i32 : f32, i32
        %288 = arith.shli %c1_i32, %c1_i32 : i32
        %289 = arith.maxsi %c1_i16, %c-22933_i16 : i16
        %290 = arith.maxui %c-22933_i16, %c1_i16 : i16
        memref.store %cst_7, %alloc_12[%c3, %c2] : memref<12x12xf16>
        %291 = arith.remf %cst_5, %cst : f16
        %292 = vector.reduction <minsi>, %76 : vector<12xi64> into i64
        %293 = bufferization.clone %alloc_17 : memref<12x12xi32> to memref<12x12xi32>
        %294 = arith.minf %cst_3, %cst_1 : f32
        %295 = arith.remf %62, %cst_0 : f16
        %296 = math.round %cst_2 : f32
        %alloc_51 = memref.alloc() : memref<4x4xf16>
        memref.tensor_store %12, %alloc_51 : memref<4x4xf16>
        %297 = vector.broadcast %cst_6 : f32 to vector<4x4xf32>
        %298 = vector.fma %297, %42, %43 : vector<4x4xf32>
        %299 = index.maxu %283, %c9
        %300 = arith.remsi %c683439869_i32, %c2036248310_i32 : i32
        %301 = vector.create_mask %c2, %c13 : vector<4x4xi1>
        %302 = arith.remsi %c1133525898_i64, %c1133525898_i64 : i64
        %303 = vector.extract %160[2] : vector<12x12xf32>
        %304 = arith.divsi %c683439869_i32, %c683439869_i32 : i32
        %305 = index.ceildivu %c1, %c6
        %306 = bufferization.clone %alloc_11 : memref<7x4xi32> to memref<7x4xi32>
        %307 = arith.remf %cst_4, %cst_3 : f32
        %from_elements = tensor.from_elements %cst_2, %cst_2, %cst_6, %cst_6, %cst_3, %cst_4, %cst_2, %cst_4, %cst_3, %cst_3, %cst_6, %cst_1, %cst_6, %cst_3, %cst_1, %cst_1, %cst_2, %cst_1, %cst_4, %cst_1, %cst_6, %cst_3, %cst_2, %cst_4, %cst_3, %cst_2, %cst_2, %cst_1 : tensor<7x4xf32>
        %308 = arith.maxsi %c-4576_i16, %c-4576_i16 : i16
        %309 = vector.create_mask %142, %c11 : vector<4x4xi1>
        %310 = vector.broadcast %c-4576_i16 : i16 to vector<7xi16>
        %311 = vector.maskedload %75[%c8, %c8], %20, %310 : memref<12x12xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %312 = arith.xori %c845231582_i64, %c845231582_i64 : i64
      }
      %267 = math.cttz %15 : tensor<4x4xi16>
      memref.store %c-4657_i16, %149[%c1, %c4] : memref<12x12xi16>
      %268 = math.atan2 %cst_0, %cst_0 : f16
      %269 = math.log10 %splat_32 : tensor<4x4xf32>
      %270 = affine.load %117[%c11, %c3] : memref<12x12xi64>
      %271 = arith.ori %true, %true : i1
      %272 = arith.maxf %cst, %cst_5 : f16
      %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %121, %121, %160 : vector<12x12xf32>, vector<12x12xf32> into vector<12x12xf32>
      %274 = arith.andi %c-4576_i16, %c-22933_i16 : i16
      %275 = index.divu %142, %c6
      %276 = math.tanh %3 : tensor<12x12xf16>
      %277 = math.ceil %cst_1 : f32
      %278 = index.ceildivu %55, %c11
      %279 = affine.max affine_map<(d0, d1) -> (0)>(%60, %60)
      %280 = vector.bitcast %37 : vector<4x4xi1> to vector<4x4xi1>
      %281 = arith.divui %true, %true : i1
      vector.print %158 : vector<7x4xf32>
      scf.if %true {
        %282 = index.maxu %142, %c14
        %283 = index.maxu %c4, %55
        %inserted_51 = tensor.insert %true into %reduced[] : tensor<i1>
        %284 = math.round %cst_5 : f16
        %rank_52 = tensor.rank %22 : tensor<12xi1>
        %285 = index.maxu %144, %279
        bufferization.dealloc_tensor %9 : tensor<12x12xi32>
        %286 = vector.create_mask %c12, %c5 : vector<12x12xi1>
      } else {
        %282 = arith.mulf %cst_2, %cst_6 : f32
        %283 = math.powf %splat, %splat : tensor<4x4xf32>
        %284 = index.sub %142, %c10
        %285 = bufferization.clone %alloc_13 : memref<7x4xi1> to memref<7x4xi1>
        %286 = vector.broadcast %c1_i32 : i32 to vector<12x12xi32>
        %287 = vector.gather %9[%142, %c2] [%286], %101, %286 : tensor<12x12xi32>, vector<12x12xi32>, vector<12x12xi1>, vector<12x12xi32> into vector<12x12xi32>
        %288 = math.round %12 : tensor<4x4xf16>
        %289 = vector.broadcast %cst_6 : f32 to vector<12x12xf32>
        %290 = vector.fma %289, %145, %289 : vector<12x12xf32>
        %291 = arith.subi %270, %c845231582_i64 : i64
      }
      memref.alloca_scope.return %alloc_14 : memref<12x12xi32>
    }
    %176 = vector.broadcast %c1_i32 : i32 to vector<12xi32>
    vector.transfer_write %176, %alloc_11[%c0, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi32>, memref<7x4xi32>
    %177 = tensor.empty() : tensor<4x4xf16>
    %mapped = linalg.map ins(%17, %12, %17 : tensor<4x4xf16>, tensor<4x4xf16>, tensor<4x4xf16>) outs(%177 : tensor<4x4xf16>)
      (%in: f16, %in_51: f16, %in_52: f16) {
        %255 = arith.shli %c-22933_i16, %c-4657_i16 : i16
        %256 = tensor.empty() : tensor<4x4xf16>
        %257 = linalg.matmul ins(%17, %177 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%256 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %258 = math.ctpop %1 : tensor<12x12xi64>
        %259 = vector.bitcast %64 : vector<7xi1> to vector<7xi1>
        %expanded_53 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<4x4xi64> into tensor<4x4x1xi64>
        %260 = arith.negf %cst_3 : f32
        %261 = vector.broadcast %true : i1 to vector<7x7xi1>
        %262 = vector.outerproduct %20, %259, %261 {kind = #vector.kind<minsi>} : vector<7xi1>, vector<7xi1>
        %263 = arith.shrsi %c-4657_i16, %c-4576_i16 : i16
        %264 = math.ctpop %9 : tensor<12x12xi32>
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %128, %127, %c0_i64 : vector<7xi64>, vector<7xi64> into i64
        scf.execute_region {
          %284 = vector.splat %cst_2 : vector<12x12xf32>
          %285 = vector.extract %157[6] : vector<7x4xf32>
          %286 = arith.ori %c-4657_i16, %c-22933_i16 : i16
          %287 = math.ceil %16 : tensor<4x4xf16>
          %288 = index.divu %c8, %c0
          %289 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
          %290 = math.atan2 %13, %3 : tensor<12x12xf16>
          %291 = memref.load %175[%c5, %c10] : memref<12x12xi32>
          memref.tensor_store %165, %alloc_20 : memref<12x12xi1>
          %292 = memref.load %alloc_17[%c4, %c5] : memref<12x12xi32>
          %293 = math.log %0 : tensor<7x4xf16>
          %294 = arith.floordivsi %true, %true : i1
          %295 = index.castu %c15 : index to i32
          %296 = math.absf %16 : tensor<4x4xf16>
          %297 = arith.remsi %c1_i16, %c-4576_i16 : i16
          %298 = arith.minf %62, %62 : f16
          scf.yield
        }
        %266 = math.floor %12 : tensor<4x4xf16>
        %267 = math.cttz %165 : tensor<12x12xi1>
        %268 = math.cos %0 : tensor<7x4xf16>
        %269 = vector.broadcast %cst_4 : f32 to vector<7x4xf32>
        %270 = vector.fma %269, %157, %157 : vector<7x4xf32>
        %271 = math.cttz %18 : tensor<i1>
        %272 = arith.shrsi %c1_i32, %c1_i32 : i32
        %273 = math.floor %3 : tensor<12x12xf16>
        %274 = arith.ori %c683439869_i32, %c683439869_i32 : i32
        %275 = math.cos %3 : tensor<12x12xf16>
        %276 = arith.maxsi %c1_i32, %c683439869_i32 : i32
        %splat_54 = tensor.splat %c-4657_i16 : tensor<12x12xi16>
        %c2138388949_i32 = arith.constant 2138388949 : i32
        %277 = math.ceil %12 : tensor<4x4xf16>
        %false_55 = index.bool.constant false
        %278 = arith.remsi %c0_i64, %c845231582_i64 : i64
        %279 = arith.cmpi ule, %c0_i64, %c1133525898_i64 : i64
        %280 = index.castu %c1 : index to i32
        %c0_i64_56 = arith.constant 0 : i64
        %c0_i64_57 = arith.constant 0 : i64
        %281 = vector.transfer_read %10[%c12, %c1], %c0_i64_57 : tensor<4x4xi64>, vector<i64>
        %282 = math.absf %cst_0 : f16
        %283 = affine.max affine_map<(d0, d1, d2) -> ((d1 mod 8) floordiv 64, -(d2 floordiv 2) + 2, -d2, -d2)>(%c6, %162, %c8)
        %extracted = tensor.extract %expanded[%c2, %c10, %c0] : tensor<12x12x1xi64>
        %cst_58 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_58 : f16
      }
    %178 = bufferization.clone %alloc_8 : memref<12x12xi16> to memref<12x12xi16>
    %179 = math.atan2 %splat_32, %splat_32 : tensor<4x4xf32>
    %180 = arith.remf %cst_0, %cst_0 : f16
    %181 = index.maxu %rank_27, %162
    %182 = scf.execute_region -> tensor<12x12xf32> {
      %255 = arith.remf %cst_4, %cst_6 : f32
      %256 = vector.transpose %20, [0] : vector<7xi1> to vector<7xi1>
      %257 = math.log %0 : tensor<7x4xf16>
      %258 = math.round %177 : tensor<4x4xf16>
      %259 = arith.remui %c845231582_i64, %c1133525898_i64 : i64
      %260 = tensor.empty() : tensor<i1>
      %mapped_51 = linalg.map ins(%24, %reduced : tensor<i1>, tensor<i1>) outs(%260 : tensor<i1>)
        (%in: i1, %in_53: i1) {
          vector.print %76 : vector<12xi64>
          %271 = arith.cmpi ult, %c845231582_i64, %c845231582_i64 : i64
          %272 = vector.broadcast %c-4657_i16 : i16 to vector<4xi16>
          vector.transfer_write %272, %125[%c4, %115] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, memref<12x12xi16>
          %273 = arith.remf %cst_6, %cst_1 : f32
          %extracted = tensor.extract %reduced[] : tensor<i1>
          %274 = math.tan %62 : f16
          %275 = vector.flat_transpose %127 {columns = 7 : i32, rows = 1 : i32} : vector<7xi64> -> vector<7xi64>
          %276 = arith.maxsi %c683439869_i32, %c683439869_i32 : i32
          %277 = arith.shrsi %c845231582_i64, %c1133525898_i64 : i64
          %splat_54 = tensor.splat %c1_i32 : tensor<7x4xi32>
          %278 = vector.transpose %47, [1, 0] : vector<4x4xf32> to vector<4x4xf32>
          %279 = arith.remf %cst_6, %cst_4 : f32
          %280 = index.maxs %c15, %c6
          %281 = arith.muli %extracted, %in : i1
          %282 = math.round %0 : tensor<7x4xf16>
          %283 = vector.create_mask %c6, %c7 : vector<12x12xi1>
          %284 = math.expm1 %14 : tensor<12x12xf16>
          %285 = arith.remf %cst_5, %62 : f16
          %286 = arith.remui %in, %in_53 : i1
          %287 = arith.ori %c1133525898_i64, %c1133525898_i64 : i64
          %288 = arith.ceildivsi %c-4657_i16, %c-4576_i16 : i16
          %289 = bufferization.clone %alloc_17 : memref<12x12xi32> to memref<12x12xi32>
          %290 = vector.create_mask %c10, %280 : vector<12x12xi1>
          %291 = arith.cmpf oeq, %cst_5, %cst_7 : f16
          %c17078_i16 = arith.constant 17078 : i16
          %292 = vector.transpose %42, [0, 1] : vector<4x4xf32> to vector<4x4xf32>
          %293 = vector.broadcast %in_53 : i1 to vector<i1>
          %294 = vector.transfer_write %293, %165[%rank, %144] : vector<i1>, tensor<12x12xi1>
          %295 = vector.broadcast %62 : f16 to vector<f16>
          %296 = vector.transfer_write %295, %3[%c12, %c0] : vector<f16>, tensor<12x12xf16>
          %297 = memref.load %alloc_12[%c6, %c3] : memref<12x12xf16>
          %298 = math.round %cst : f16
          %299 = vector.create_mask %c0, %c8 : vector<4x4xi1>
          %300 = vector.bitcast %37 : vector<4x4xi1> to vector<4x4xi1>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %261 = arith.maxui %true, %true : i1
      %262 = arith.divf %cst_3, %cst_1 : f32
      %263 = vector.broadcast %c2 : index to vector<8xindex>
      %264 = vector.broadcast %true : i1 to vector<8xi1>
      %265 = vector.broadcast %c-4657_i16 : i16 to vector<8xi16>
      vector.scatter %alloc_8[%c11, %c2] [%263], %264, %265 : memref<12x12xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
      %266 = arith.ceildivsi %true, %true : i1
      %267 = vector.flat_transpose %77 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %splat_52 = tensor.splat %cst_0 : tensor<12x12xf16>
      %268 = arith.ori %true, %true : i1
      %269 = vector.flat_transpose %76 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
      affine.store %true, %alloc_23[%c7, %c8] : memref<12x12xi1>
      memref.assume_alignment %alloc_20, 4 : memref<12x12xi1>
      %270 = tensor.empty() : tensor<12x12xf32>
      scf.yield %270 : tensor<12x12xf32>
    }
    %183 = math.atan2 %14, %13 : tensor<12x12xf16>
    %alloc_39 = memref.alloc() : memref<12x1x12xi64>
    %184 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_39, %1, %alloc_39 : memref<12x1x12xi64>, tensor<12x12xi64>, memref<12x1x12xi64>) outs(%expanded : tensor<12x12x1xi64>) {
    ^bb0(%in: i64, %in_51: i64, %in_52: i64, %out: i64):
      %255 = math.cttz %c-4576_i16 : i16
      %256 = vector.broadcast %c2036248310_i32 : i32 to vector<i32>
      %257 = vector.transfer_write %256, %2[%142, %c3] : vector<i32>, tensor<12x12xi32>
      %258 = arith.cmpf une, %cst, %cst : f16
      %259 = math.cttz %5 : tensor<7x4xi16>
      %260 = vector.create_mask %c8, %144 : vector<12x12xi1>
      %261 = math.cttz %23 : tensor<i1>
      %262 = vector.maskedload %alloc_16[%c4, %c1], %64, %127 : memref<7x4xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %263 = math.atan2 %cst_5, %cst_5 : f16
      %264 = arith.remsi %c-4657_i16, %c-4657_i16 : i16
      %265 = affine.if affine_set<(d0) : ((d0 floordiv 16 + d0 mod 32) floordiv 4 == 0, d0 - 2 >= 0)>(%c15) -> i64 {
        %283 = vector.bitcast %64 : vector<7xi1> to vector<7xi1>
        %284 = math.ipowi %2, %9 : tensor<12x12xi32>
        %285 = math.log %11 : tensor<12x12xf16>
        %286 = arith.mulf %cst_4, %cst_2 : f32
        %287 = vector.reduction <xor>, %176 : vector<12xi32> into i32
        %288 = vector.transpose %157, [0, 1] : vector<7x4xf32> to vector<7x4xf32>
        %289 = vector.insertelement %c683439869_i32, %256[] : vector<i32>
        vector.print %64 : vector<7xi1>
        affine.yield %in_52 : i64
      } else {
        %283 = vector.transpose %262, [0] : vector<7xi64> to vector<7xi64>
        %284 = arith.subi %c1_i16, %c-4657_i16 : i16
        %285 = vector.transpose %157, [1, 0] : vector<7x4xf32> to vector<4x7xf32>
        %286 = arith.cmpi ult, %c-22933_i16, %c1_i16 : i16
        %287 = arith.mulf %cst_7, %cst : f16
        %288 = vector.splat %162 : vector<12x12xindex>
        %289 = math.floor %3 : tensor<12x12xf16>
        %290 = affine.load %117[%c15, %c3] : memref<12x12xi64>
        affine.yield %in : i64
      }
      %266 = scf.execute_region -> memref<12x12xf32> {
        %283 = math.log %0 : tensor<7x4xf16>
        %284 = arith.maxui %c1133525898_i64, %out : i64
        %285 = math.round %cst_6 : f32
        %286 = math.ctpop %10 : tensor<4x4xi64>
        %287 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
        %288 = vector.fma %287, %43, %47 : vector<4x4xf32>
        %289 = math.exp %17 : tensor<4x4xf16>
        %290 = arith.ori %c0_i64, %in_51 : i64
        %291 = math.fpowi %62, %c2036248310_i32 : f16, i32
        %alloca_57 = memref.alloca() : memref<12x12xi32>
        %from_elements = tensor.from_elements %c-4657_i16, %c1_i16, %c1_i16, %c-22933_i16, %c-4576_i16, %c-4576_i16, %c1_i16, %c-22933_i16, %c1_i16, %c-4657_i16, %c-4657_i16, %c-4657_i16, %c-4657_i16, %c-4657_i16, %c-22933_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c-4576_i16, %c-4576_i16, %c1_i16, %c-4657_i16, %c-22933_i16, %c-22933_i16, %c-4657_i16, %c-4657_i16, %c-4576_i16 : tensor<7x4xi16>
        %292 = arith.divsi %c-22933_i16, %c-4576_i16 : i16
        %293 = index.castu %c845231582_i64 : i64 to index
        %294 = math.powf %16, %82 : tensor<4x4xf16>
        %295 = vector.matrix_multiply %95, %128 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<8xi64>, vector<7xi64>) -> vector<56xi64>
        %296 = arith.minf %cst_5, %cst_5 : f16
        %297 = vector.flat_transpose %295 {columns = 7 : i32, rows = 8 : i32} : vector<56xi64> -> vector<56xi64>
        %alloc_58 = memref.alloc() : memref<12x12xf32>
        scf.yield %alloc_58 : memref<12x12xf32>
      }
      %alloca_53 = memref.alloca() : memref<12x12xi1>
      %267 = memref.load %alloc_13[%c1, %c0] : memref<7x4xi1>
      %268 = tensor.empty() : tensor<4xf16>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%268 : tensor<4xf16>) outs(%expanded_35 : tensor<4x4x1xf16>) {
      ^bb0(%in_57: f16, %out_58: f16):
        %283 = arith.cmpf ueq, %cst_2, %cst_3 : f32
        %284 = math.ctpop %c1_i16 : i16
        %285 = math.atan2 %13, %13 : tensor<12x12xf16>
        %286 = affine.load %alloc_17[%c6, %c0] : memref<12x12xi32>
        %287 = arith.xori %in_52, %in_51 : i64
        vector.print %128 : vector<7xi64>
        %288 = math.round %82 : tensor<4x4xf16>
        %289 = math.expm1 %13 : tensor<12x12xf16>
        %290 = arith.ori %out, %in_51 : i64
        %291 = arith.xori %c-4657_i16, %c1_i16 : i16
        %292 = vector.broadcast %c-4657_i16 : i16 to vector<i16>
        vector.transfer_write %292, %alloc_22[%c8, %181] : vector<i16>, memref<12x12xi16>
        %c604421294_i64 = arith.constant 604421294 : i64
        memref.store %c1_i32, %alloc_17[%c11, %c2] : memref<12x12xi32>
        %293 = index.maxu %115, %rank_27
        %294 = math.rsqrt %4 : tensor<12x12xf16>
        %295 = bufferization.clone %alloc_16 : memref<7x4xi64> to memref<7x4xi64>
        %296 = index.divu %c10, %c8
        %297 = arith.remsi %in_51, %in : i64
        %298 = vector.bitcast %262 : vector<7xi64> to vector<7xi64>
        vector.print %256 : vector<i32>
        %299 = vector.bitcast %298 : vector<7xi64> to vector<7xi64>
        %300 = arith.shrsi %in_51, %in : i64
        %301 = arith.shrsi %c-4657_i16, %c1_i16 : i16
        %302 = vector.broadcast %cst_2 : f32 to vector<f32>
        vector.transfer_write %302, %266[%142, %c5] : vector<f32>, memref<12x12xf32>
        %303 = math.ctpop %c1_i32 : i32
        %304 = vector.bitcast %47 : vector<4x4xf32> to vector<4x4xf32>
        affine.store %c-4576_i16, %alloc_19[%c8, %c0] : memref<12x12xi16>
        %305 = math.fpowi %cst_0, %c1_i32 : f16, i32
        %306 = arith.mulf %cst_2, %cst_3 : f32
        %307 = memref.atomic_rmw muli %c-22933_i16, %alloc_8[%c2, %c3] : (i16, memref<12x12xi16>) -> i16
        %308 = arith.cmpi ult, %c683439869_i32, %286 : i32
        %309 = affine.load %117[%c7, %c8] : memref<12x12xi64>
        linalg.yield %62 : f16
      } -> tensor<4x4x1xf16>
      memref.alloca_scope  {
        %283 = arith.maxsi %c-22933_i16, %c1_i16 : i16
        %284 = math.ctpop %c845231582_i64 : i64
        %285 = arith.mulf %cst_4, %cst_6 : f32
        %286 = vector.broadcast %true : i1 to vector<8xi1>
        vector.transfer_write %286, %alloc_23[%181, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi1>, memref<12x12xi1>
        %287 = math.ctpop %15 : tensor<4x4xi16>
        %splat_57 = tensor.splat %c1_i16 : tensor<12x12xi16>
        %288 = math.ceil %splat_32 : tensor<4x4xf32>
        %289 = arith.shrsi %c1133525898_i64, %c1133525898_i64 : i64
        %290 = math.floor %4 : tensor<12x12xf16>
        %291 = arith.remsi %c1133525898_i64, %c845231582_i64 : i64
        %292 = affine.load %alloc_23[%c15, %c13] : memref<12x12xi1>
        %293 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - (d3 - 128), -(((d3 - 128) * 2) ceildiv 8 - 4), d2 - (d3 - 128) * 2, d2 - (d3 - 128))>(%c12, %c4, %55, %162)
        %294 = index.divu %c10, %c5
        %295 = math.exp2 %4 : tensor<12x12xf16>
        %296 = arith.divf %cst_1, %cst_3 : f32
        %c-12895_i16 = arith.constant -12895 : i16
        %297 = vector.maskedload %alloc_20[%c1, %c3], %20, %20 : memref<12x12xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %298 = vector.broadcast %out : i64 to vector<7x7xi64>
        %299 = vector.outerproduct %127, %128, %298 {kind = #vector.kind<minui>} : vector<7xi64>, vector<7xi64>
        %300 = arith.mulf %cst_0, %cst_0 : f16
        %c22088_i16 = arith.constant 22088 : i16
        %expanded_58 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<12x12xi32> into tensor<12x12x1xi32>
        %301 = vector.bitcast %95 : vector<8xi64> to vector<8xi64>
        %302 = arith.cmpi ne, %c2036248310_i32, %c683439869_i32 : i32
        %303 = arith.muli %c-22933_i16, %c-4657_i16 : i16
        %304 = affine.min affine_map<(d0) -> (-d0)>(%c1)
        %305 = math.exp2 %17 : tensor<4x4xf16>
        %306 = vector.flat_transpose %20 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %307 = arith.maxui %c683439869_i32, %c2036248310_i32 : i32
        %308 = affine.load %266[%c5, %c8] : memref<12x12xf32>
        %309 = math.exp2 %11 : tensor<12x12xf16>
        %310 = math.log %182 : tensor<12x12xf32>
        %splat_59 = tensor.splat %cst_3 : tensor<4x4xf32>
      }
      %270 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 2 - 16 >= 0)>(%c13, %c1, %c6, %c0) -> i16 {
        %283 = vector.splat %55 : vector<12x12xindex>
        %284 = math.tan %cst_4 : f32
        %285 = vector.splat %60 : vector<7x4xindex>
        %286 = math.powf %splat_32, %splat_32 : tensor<4x4xf32>
        %287 = bufferization.to_tensor %alloc_10 : memref<12x12xf16>
        %288 = bufferization.clone %alloc_20 : memref<12x12xi1> to memref<12x12xi1>
        %289 = vector.broadcast %cst_5 : f16 to vector<f16>
        %290 = vector.transfer_write %289, %14[%c0, %70] : vector<f16>, tensor<12x12xf16>
        %291 = index.ceildivu %c9, %c13
        affine.yield %c-4657_i16 : i16
      } else {
        %283 = math.log2 %cst_4 : f32
        %splat_57 = tensor.splat %cst_3 : tensor<12x12xf32>
        %284 = arith.shli %c2036248310_i32, %c1_i32 : i32
        vector.print %20 : vector<7xi1>
        %285 = index.maxu %c7, %60
        %286 = math.absi %reduced : tensor<i1>
        %287 = tensor.empty() : tensor<12x12xi32>
        %288 = linalg.matmul ins(%9, %2 : tensor<12x12xi32>, tensor<12x12xi32>) outs(%287 : tensor<12x12xi32>) -> tensor<12x12xi32>
        %289 = vector.transpose %104, [0, 1] : vector<12x12xi1> to vector<12x12xi1>
        affine.yield %c-22933_i16 : i16
      }
      %271 = math.ipowi %18, %24 : tensor<i1>
      memref.copy %alloc_21, %alloc_13 : memref<7x4xi1> to memref<7x4xi1>
      %272 = math.rsqrt %14 : tensor<12x12xf16>
      %273 = vector.broadcast %c9 : index to vector<12xindex>
      %274 = vector.broadcast %c1_i16 : i16 to vector<12xi16>
      vector.scatter %75[%c0, %c10] [%273], %77, %274 : memref<12x12xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
      %275 = arith.remf %cst_5, %62 : f16
      %276 = math.round %12 : tensor<4x4xf16>
      %277 = arith.shli %c0_i64, %in_51 : i64
      %278 = math.exp2 %expanded_35 : tensor<4x4x1xf16>
      %collapsed_54 = tensor.collapse_shape %8 [[0, 1]] : tensor<12x12xi32> into tensor<144xi32>
      %279 = arith.cmpi ule, %c683439869_i32, %c1_i32 : i32
      %inserted_55 = tensor.insert %cst into %3[%c6, %c5] : tensor<12x12xf16>
      memref.copy %75, %149 : memref<12x12xi16> to memref<12x12xi16>
      scf.execute_region {
        affine.store %true, %alloc_18[%c14, %c11] : memref<12x12xi1>
        %283 = vector.create_mask %rank_27, %60 : vector<4x4xi1>
        %284 = vector.broadcast %cst_7 : f16 to vector<12xf16>
        %285 = vector.maskedload %alloc_10[%c3, %c1], %77, %284 : memref<12x12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %286 = arith.divsi %c-4576_i16, %c-4657_i16 : i16
        %inserted_57 = tensor.insert %true into %24[] : tensor<i1>
        %287 = vector.broadcast %c2036248310_i32 : i32 to vector<12x12xi32>
        %288 = math.copysign %0, %0 : tensor<7x4xf16>
        %289 = affine.load %alloc_20[%c14, %c1] : memref<12x12xi1>
        %290 = math.fma %3, %14, %14 : tensor<12x12xf16>
        %291 = math.absf %3 : tensor<12x12xf16>
        %292 = bufferization.clone %125 : memref<12x12xi16> to memref<12x12xi16>
        %293 = math.floor %3 : tensor<12x12xf16>
        %294 = arith.negf %cst_5 : f16
        %295 = vector.create_mask %c7, %c8 : vector<12x12xi1>
        %296 = arith.remsi %c-4657_i16, %c-22933_i16 : i16
        %297 = arith.maxf %cst_7, %cst_5 : f16
        scf.yield
      }
      %280 = index.castu %55 : index to i32
      %281 = scf.while (%arg3 = %alloc_8) : (memref<12x12xi16>) -> memref<12x12xi16> {
        %283 = arith.cmpi uge, %c0_i64, %in_51 : i64
        %284 = math.round %12 : tensor<4x4xf16>
        %285 = vector.extract_strided_slice %157 {offsets = [4], sizes = [3], strides = [1]} : vector<7x4xf32> to vector<3x4xf32>
        %286 = index.castu %55 : index to i32
        %287 = math.absf %4 : tensor<12x12xf16>
        %288 = bufferization.clone %alloc_19 : memref<12x12xi16> to memref<12x12xi16>
        %289 = arith.negf %cst : f16
        %290 = arith.maxui %c683439869_i32, %c683439869_i32 : i32
        scf.condition(%true) %arg3 : memref<12x12xi16>
      } do {
      ^bb0(%arg3: memref<12x12xi16>):
        %expanded_57 = tensor.expand_shape %182 [[0], [1, 2]] : tensor<12x12xf32> into tensor<12x12x1xf32>
        %alloc_58 = memref.alloc() : memref<4x4xi16>
        memref.tensor_store %15, %alloc_58 : memref<4x4xi16>
        %283 = math.round %11 : tensor<12x12xf16>
        %284 = arith.muli %c845231582_i64, %in_51 : i64
        %285 = math.cos %14 : tensor<12x12xf16>
        %286 = memref.atomic_rmw minu %c-22933_i16, %149[%c11, %c6] : (i16, memref<12x12xi16>) -> i16
        %287 = vector.bitcast %127 : vector<7xi64> to vector<7xi64>
        %288 = index.castu %rank : index to i32
        %289 = arith.ori %c-22933_i16, %c-22933_i16 : i16
        %290 = vector.broadcast %cst_2 : f32 to vector<12x12xf32>
        %291 = arith.maxui %in_52, %c0_i64 : i64
        %292 = arith.maxui %c2036248310_i32, %c683439869_i32 : i32
        %cast_59 = tensor.cast %12 : tensor<4x4xf16> to tensor<?x?xf16>
        %293 = math.exp2 %82 : tensor<4x4xf16>
        memref.tensor_store %165, %alloc_23 : memref<12x12xi1>
        %294 = arith.cmpf false, %cst_1, %cst_1 : f32
        scf.yield %149 : memref<12x12xi16>
      }
      %282 = tensor.empty() : tensor<12x12xf16>
      %mapped_56 = linalg.map ins(%3, %13 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%282 : tensor<12x12xf16>)
        (%in_57: f16, %in_58: f16) {
          %283 = math.expm1 %14 : tensor<12x12xf16>
          %284 = index.sub %c8, %c8
          %285 = vector.broadcast %cst_6 : f32 to vector<12x12xf32>
          %286 = vector.fma %285, %86, %160 : vector<12x12xf32>
          %287 = index.divu %c9, %c12
          %288 = index.casts %142 : index to i32
          %289 = bufferization.clone %alloc_16 : memref<7x4xi64> to memref<7x4xi64>
          %290 = math.ceil %16 : tensor<4x4xf16>
          %291 = math.cttz %5 : tensor<7x4xi16>
          %292 = vector.broadcast %142 : index to vector<7xindex>
          %293 = vector.broadcast %c-22933_i16 : i16 to vector<7xi16>
          vector.scatter %alloc_22[%c4, %c9] [%292], %20, %293 : memref<12x12xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
          %294 = math.tanh %13 : tensor<12x12xf16>
          affine.store %c-22933_i16, %178[%c15, %c4] : memref<12x12xi16>
          %295 = arith.ori %c845231582_i64, %c845231582_i64 : i64
          %296 = math.round %282 : tensor<12x12xf16>
          %297 = arith.divf %cst_7, %cst : f16
          %298 = memref.atomic_rmw mins %c0_i64, %117[%c6, %c3] : (i64, memref<12x12xi64>) -> i64
          %299 = math.round %13 : tensor<12x12xf16>
          %300 = math.floor %16 : tensor<4x4xf16>
          %301 = arith.ceildivsi %c-4576_i16, %c-4657_i16 : i16
          vector.print %77 : vector<12xi1>
          %expanded_59 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<4x4xf32> into tensor<4x4x1xf32>
          memref.copy %alloc_8, %149 : memref<12x12xi16> to memref<12x12xi16>
          %302 = tensor.empty() : tensor<7x4xf16>
          %303 = arith.remf %cst_6, %cst_2 : f32
          %304 = index.casts %70 : index to i32
          %305 = math.ipowi %in_52, %in_52 : i64
          %306 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %121, %86, %159 : vector<12x12xf32>, vector<12x12xf32> into vector<12x12xf32>
          %307 = arith.shrsi %c-4576_i16, %c1_i16 : i16
          %308 = math.absi %c683439869_i32 : i32
          %alloca_60 = memref.alloca() : memref<12x12xi64>
          %309 = math.fma %182, %182, %182 : tensor<12x12xf32>
          %310 = arith.cmpi ugt, %out, %c845231582_i64 : i64
          %311 = math.tanh %12 : tensor<4x4xf16>
          %cst_61 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_61 : f16
        }
      linalg.yield %in_52 : i64
    } -> tensor<12x12x1xi64>
    %185 = affine.for %arg3 = 0 to 124 iter_args(%arg4 = %c12) -> (index) {
      affine.yield %c14 : index
    }
    %186 = vector.splat %c12 : vector<7x4xindex>
    memref.store %c1_i16, %125[%c2, %c1] : memref<12x12xi16>
    %splat_40 = tensor.splat %cst_2 : tensor<12x12xf32>
    %187 = arith.remf %cst_1, %cst_6 : f32
    %188 = math.absf %expanded_35 : tensor<4x4x1xf16>
    %189 = arith.ori %c1133525898_i64, %c0_i64 : i64
    %190 = arith.remf %cst_7, %cst : f16
    %191 = math.fma %11, %3, %3 : tensor<12x12xf16>
    %192 = arith.divsi %c-4576_i16, %c-4576_i16 : i16
    %193 = math.floor %13 : tensor<12x12xf16>
    %splat_41 = tensor.splat %cst_3 : tensor<4x4xf32>
    %194 = arith.negf %cst_6 : f32
    %195 = tensor.empty() : tensor<4x4xi32>
    %196 = tensor.empty(%60, %144) : tensor<?x?xi32>
    %splat_42 = tensor.splat %cst : tensor<12x12xf16>
    %197 = math.exp %cst_7 : f16
    memref.copy %alloc_20, %alloc_18 : memref<12x12xi1> to memref<12x12xi1>
    %inserted_43 = tensor.insert %cst into %82[%c2, %c3] : tensor<4x4xf16>
    %198 = bufferization.clone %alloc_19 : memref<12x12xi16> to memref<12x12xi16>
    %199 = tensor.empty() : tensor<12x12xi1>
    %mapped_44 = linalg.map ins(%6, %165 : tensor<12x12xi1>, tensor<12x12xi1>) outs(%199 : tensor<12x12xi1>)
      (%in: i1, %in_51: i1) {
        %255 = scf.while (%arg3 = %128) : (vector<7xi64>) -> vector<7xi64> {
          %inserted_56 = tensor.insert %true into %7[%c5, %c5] : tensor<12x12xi1>
          %282 = arith.remf %cst, %cst_0 : f16
          %283 = math.tan %cst_7 : f16
          %284 = math.tanh %14 : tensor<12x12xf16>
          %inserted_57 = tensor.insert %in into %22[%c2] : tensor<12xi1>
          %285 = vector.multi_reduction <minui>, %128, %c0_i64 [0] : vector<7xi64> to i64
          %286 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 1) mod 4)>(%115, %c4, %c2)
          %287 = arith.divf %62, %cst_5 : f16
          scf.condition(%in) %128 : vector<7xi64>
        } do {
        ^bb0(%arg3: vector<7xi64>):
          %282 = index.casts %c-4657_i16 : i16 to index
          %283 = math.exp %177 : tensor<4x4xf16>
          %284 = math.atan2 %14, %4 : tensor<12x12xf16>
          %285 = math.round %splat_40 : tensor<12x12xf32>
          %286 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - d3)>(%115, %rank_27, %c9, %162)
          %287 = math.round %11 : tensor<12x12xf16>
          %288 = arith.remf %cst_5, %cst_7 : f16
          %289 = index.ceildivu %c6, %181
          %290 = arith.divui %in, %in_51 : i1
          %291 = math.absi %5 : tensor<7x4xi16>
          %292 = math.atan2 %cst_6, %cst_4 : f32
          %293 = arith.muli %c0_i64, %c0_i64 : i64
          %294 = vector.flat_transpose %77 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
          %295 = arith.maxf %cst_4, %cst_2 : f32
          %296 = math.absf %82 : tensor<4x4xf16>
          %297 = index.maxu %c4, %c8
          scf.yield %128 : vector<7xi64>
        }
        %256 = math.absf %cst : f16
        vector.print %64 : vector<7xi1>
        %257 = arith.xori %c845231582_i64, %c1133525898_i64 : i64
        %258 = vector.transpose %121, [0, 1] : vector<12x12xf32> to vector<12x12xf32>
        %259 = memref.alloca_scope  -> (f16) {
          %282 = memref.load %119[%c2, %c6] : memref<12x12xi16>
          memref.tensor_store %14, %alloc : memref<12x12xf16>
          %283 = arith.mulf %cst_4, %cst_2 : f32
          %284 = vector.matrix_multiply %77, %77 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
          %285 = memref.load %alloc_10[%c4, %c11] : memref<12x12xf16>
          %286 = arith.shrsi %in, %in_51 : i1
          %287 = vector.splat %c2036248310_i32 : vector<12x12xi32>
          %288 = arith.divsi %c1_i32, %c2036248310_i32 : i32
          %289 = vector.broadcast %c2036248310_i32 : i32 to vector<4xi32>
          vector.transfer_write %289, %175[%c7, %162] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, memref<12x12xi32>
          %alloc_56 = memref.alloc() : memref<4x4xi16>
          memref.tensor_store %15, %alloc_56 : memref<4x4xi16>
          bufferization.dealloc_tensor %1 : tensor<12x12xi64>
          %290 = vector.bitcast %145 : vector<12x12xf32> to vector<12x12xf32>
          %291 = vector.create_mask %c4, %c3 : vector<4x4xi1>
          %292 = math.absi %1 : tensor<12x12xi64>
          %293 = vector.broadcast %c1_i16 : i16 to vector<4xi16>
          %294 = vector.broadcast %in_51 : i1 to vector<4xi1>
          %295 = vector.maskedload %alloc_8[%c6, %c9], %294, %293 : memref<12x12xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
          %296 = math.absf %14 : tensor<12x12xf16>
          memref.tensor_store %2, %175 : memref<12x12xi32>
          %297 = math.log %13 : tensor<12x12xf16>
          %298 = vector.bitcast %122 : vector<12x12xf32> to vector<12x12xf32>
          %299 = arith.remf %cst, %62 : f16
          %300 = vector.matrix_multiply %176, %176 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<12xi32>) -> vector<1xi32>
          %301 = math.tanh %cst_4 : f32
          %302 = vector.broadcast %c-22933_i16 : i16 to vector<12x12xi16>
          %303 = math.copysign %16, %12 : tensor<4x4xf16>
          %304 = math.round %splat_41 : tensor<4x4xf32>
          %305 = affine.max affine_map<(d0) -> (-d0 - 64, (-d0) floordiv 4 - 16)>(%rank_27)
          %306 = vector.transpose %300, [0] : vector<1xi32> to vector<1xi32>
          %307 = math.floor %82 : tensor<4x4xf16>
          %308 = math.exp2 %13 : tensor<12x12xf16>
          %309 = vector.load %175[%c6, %c9] : memref<12x12xi32>, vector<4x4xi32>
          %310 = arith.xori %in, %in : i1
          %311 = arith.maxsi %c1133525898_i64, %c845231582_i64 : i64
          memref.alloca_scope.return %62 : f16
        }
        %260 = arith.remf %cst_1, %cst_1 : f32
        %261 = math.exp2 %0 : tensor<7x4xf16>
        %262 = math.exp %4 : tensor<12x12xf16>
        %263 = tensor.empty() : tensor<4x4xi64>
        %mapped_52 = linalg.map ins(%10, %10, %10 : tensor<4x4xi64>, tensor<4x4xi64>, tensor<4x4xi64>) outs(%263 : tensor<4x4xi64>)
          (%in_56: i64, %in_57: i64, %in_58: i64) {
            %282 = vector.reduction <or>, %95 : vector<8xi64> into i64
            %cast_59 = tensor.cast %9 : tensor<12x12xi32> to tensor<?x?xi32>
            %283 = math.tanh %11 : tensor<12x12xf16>
            %284 = arith.ori %in_56, %in_57 : i64
            %285 = index.castu %in_57 : i64 to index
            %286 = arith.remf %cst_0, %cst_5 : f16
            %287 = math.powf %12, %17 : tensor<4x4xf16>
            %288 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
            %289 = vector.fma %288, %288, %47 : vector<4x4xf32>
            %290 = math.atan2 %177, %82 : tensor<4x4xf16>
            %291 = vector.broadcast %c1_i32 : i32 to vector<12x12xi32>
            %292 = vector.gather %134[%c1, %162] [%291], %101, %101 : tensor<12x12xi1>, vector<12x12xi32>, vector<12x12xi1>, vector<12x12xi1> into vector<12x12xi1>
            %293 = math.round %14 : tensor<12x12xf16>
            %294 = affine.max affine_map<(d0) -> (d0 mod 2 + d0 mod 64 + d0 mod 64, d0 floordiv 64 + 64)>(%rank_27)
            %295 = math.expm1 %259 : f16
            %296 = arith.shli %c-22933_i16, %c-4576_i16 : i16
            %297 = arith.remf %cst_2, %cst_3 : f32
            %298 = index.castu %c-4576_i16 : i16 to index
            %299 = arith.remf %259, %259 : f16
            %300 = arith.remui %in_58, %in_56 : i64
            %collapsed_60 = tensor.collapse_shape %3 [[0, 1]] : tensor<12x12xf16> into tensor<144xf16>
            %301 = arith.mulf %cst_6, %cst_4 : f32
            %302 = arith.shrsi %in_58, %c1133525898_i64 : i64
            affine.store %c-4576_i16, %alloc_19[%c5, %c7] : memref<12x12xi16>
            %303 = math.ctlz %2 : tensor<12x12xi32>
            %304 = arith.muli %c0_i64, %in_57 : i64
            %305 = vector.insertelement %in, %20[%142 : index] : vector<7xi1>
            %306 = math.ctpop %c-4576_i16 : i16
            %307 = vector.flat_transpose %95 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
            %308 = arith.minf %cst_2, %cst_3 : f32
            %309 = math.cttz %15 : tensor<4x4xi16>
            %310 = arith.ori %true, %in : i1
            %311 = affine.load %198[%c4, %c12] : memref<12x12xi16>
            memref.assume_alignment %alloc_12, 8 : memref<12x12xf16>
            %c0_i64_61 = arith.constant 0 : i64
            linalg.yield %c0_i64_61 : i64
          }
        %264 = arith.mulf %cst_5, %cst_0 : f16
        %265 = arith.remf %cst_0, %259 : f16
        %266 = index.sub %c0, %c12
        %267 = arith.minf %cst_0, %cst_5 : f16
        %268 = math.tanh %3 : tensor<12x12xf16>
        %269 = arith.shrsi %true, %in_51 : i1
        %270 = vector.bitcast %122 : vector<12x12xf32> to vector<12x12xf32>
        %271 = index.ceildivu %c6, %c3
        %272 = math.absi %7 : tensor<12x12xi1>
        %inserted_53 = tensor.insert %in_51 into %165[%c7, %c4] : tensor<12x12xi1>
        %273 = math.cttz %c-4576_i16 : i16
        memref.tensor_store %13, %alloc : memref<12x12xf16>
        %274 = vector.flat_transpose %78 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
        %275 = math.exp %cst_5 : f16
        %alloca_54 = memref.alloca() : memref<12x12xi32>
        %276 = arith.maxf %cst_0, %62 : f16
        %277 = math.atan2 %cst_2, %cst_3 : f32
        %278 = vector.flat_transpose %176 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
        memref.tensor_store %13, %alloc_10 : memref<12x12xf16>
        %279 = math.tanh %12 : tensor<4x4xf16>
        %280 = arith.remf %cst_4, %cst_3 : f32
        %281 = scf.if %true -> (memref<4x4xi1>) {
          %282 = arith.cmpi uge, %c-4657_i16, %c-4657_i16 : i16
          %283 = vector.maskedload %alloc_18[%c6, %c1], %77, %77 : memref<12x12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
          %284 = math.powf %cst_3, %cst_2 : f32
          %285 = arith.divui %c-4576_i16, %c-4576_i16 : i16
          memref.tensor_store %13, %alloc_10 : memref<12x12xf16>
          %splat_56 = tensor.splat %cst_7 : tensor<12x12xf16>
          %286 = math.atan2 %splat, %splat_41 : tensor<4x4xf32>
          %287 = math.absi %15 : tensor<4x4xi16>
          %alloc_57 = memref.alloc() : memref<4x4xi1>
          scf.yield %alloc_57 : memref<4x4xi1>
        } else {
          %282 = arith.xori %c2036248310_i32, %c683439869_i32 : i32
          %283 = vector.transpose %127, [0] : vector<7xi64> to vector<7xi64>
          %284 = arith.cmpi ult, %c1133525898_i64, %c1133525898_i64 : i64
          %285 = math.absi %c0_i64 : i64
          %286 = vector.broadcast %c2 : index to vector<12xindex>
          vector.scatter %alloc_11[%c2, %c2] [%286], %77, %278 : memref<7x4xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
          bufferization.dealloc_tensor %165 : tensor<12x12xi1>
          memref.tensor_store %2, %alloc_17 : memref<12x12xi32>
          %287 = index.castu %115 : index to i32
          %alloc_56 = memref.alloc() : memref<4x4xi1>
          scf.yield %alloc_56 : memref<4x4xi1>
        }
        %true_55 = arith.constant true
        linalg.yield %true_55 : i1
      }
    vector.print %158 : vector<7x4xf32>
    %c1483581293_i64 = arith.constant 1483581293 : i64
    %200 = vector.splat %c-4657_i16 : vector<12x12xi16>
    %201 = arith.cmpf true, %cst_3, %cst_6 : f32
    memref.copy %71, %alloc_15 : memref<12x12xi64> to memref<12x12xi64>
    %202 = math.ceil %splat : tensor<4x4xf32>
    %203 = arith.remf %cst_2, %cst_4 : f32
    %204 = math.tan %4 : tensor<12x12xf16>
    %alloca_45 = memref.alloca() : memref<12x12xf32>
    %205 = tensor.empty() : tensor<4x4x1xf16>
    %mapped_46 = linalg.map ins(%expanded_35, %expanded_35 : tensor<4x4x1xf16>, tensor<4x4x1xf16>) outs(%205 : tensor<4x4x1xf16>)
      (%in: f16, %in_51: f16) {
        %255 = arith.xori %c-22933_i16, %c1_i16 : i16
        %256 = math.ceil %splat_41 : tensor<4x4xf32>
        %257 = math.fpowi %11, %2 : tensor<12x12xf16>, tensor<12x12xi32>
        %258 = affine.if affine_set<(d0, d1) : ((d1 * 4) mod 16 >= 0, d0 >= 0)>(%c6, %c2) -> memref<12x12xi1> {
          %286 = arith.divf %cst_5, %62 : f16
          %287 = index.castu %c4 : index to i32
          %288 = math.ceil %11 : tensor<12x12xf16>
          %289 = arith.divsi %c-4576_i16, %c-22933_i16 : i16
          %290 = vector.bitcast %145 : vector<12x12xf32> to vector<12x12xf32>
          %291 = math.powf %cst_0, %cst_5 : f16
          %inserted_55 = tensor.insert %cst_5 into %13[%c8, %c1] : tensor<12x12xf16>
          %292 = math.absf %cst : f16
          affine.yield %alloc_23 : memref<12x12xi1>
        } else {
          %286 = arith.ori %c1133525898_i64, %c1133525898_i64 : i64
          %alloc_55 = memref.alloc() : memref<12xf16>
          %287 = memref.realloc %alloc_55 : memref<12xf16> to memref<4xf16>
          %cast_56 = tensor.cast %7 : tensor<12x12xi1> to tensor<?x?xi1>
          %288 = arith.negf %cst_5 : f16
          %289 = vector.broadcast %cst_2 : f32 to vector<7x4xf32>
          %290 = vector.fma %289, %158, %158 : vector<7x4xf32>
          %291 = math.ceil %cst_6 : f32
          %292 = tensor.empty() : tensor<7x4xi32>
          %293 = math.fpowi %0, %292 : tensor<7x4xf16>, tensor<7x4xi32>
          %294 = arith.cmpf ult, %in_51, %cst : f16
          affine.yield %alloc_20 : memref<12x12xi1>
        }
        %259 = arith.muli %c0_i64, %c845231582_i64 : i64
        %260 = math.floor %cst_0 : f16
        memref.store %cst_0, %alloc[%c1, %c6] : memref<12x12xf16>
        %261 = tensor.empty() : tensor<12x12xf16>
        %262 = linalg.matmul ins(%3, %14 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%261 : tensor<12x12xf16>) -> tensor<12x12xf16>
        %263 = arith.xori %true, %true : i1
        %264 = index.maxu %c6, %c11
        %265 = tensor.empty() : tensor<i1>
        %mapped_52 = linalg.map ins(%24 : tensor<i1>) outs(%265 : tensor<i1>)
          (%in_55: i1) {
            %286 = affine.min affine_map<(d0, d1, d2) -> (8)>(%c12, %115, %c3)
            %287 = arith.minf %cst_2, %cst_2 : f32
            %288 = bufferization.clone %alloc_20 : memref<12x12xi1> to memref<12x12xi1>
            %cast_56 = tensor.cast %177 : tensor<4x4xf16> to tensor<?x?xf16>
            %289 = math.floor %4 : tensor<12x12xf16>
            %290 = vector.splat %c14 : vector<4x4xindex>
            vector.print %157 : vector<7x4xf32>
            %291 = index.castu %c14 : index to i32
            %292 = index.casts %c1133525898_i64 : i64 to index
            %293 = math.log10 %splat_42 : tensor<12x12xf16>
            %294 = arith.minf %cst_7, %in : f16
            %295 = math.ctpop %2 : tensor<12x12xi32>
            %alloc_57 = memref.alloc() : memref<12x12xf32>
            memref.tensor_store %splat_40, %alloc_57 : memref<12x12xf32>
            %296 = arith.maxui %c-4576_i16, %c1_i16 : i16
            %297 = vector.splat %c12 : vector<12x12xindex>
            %298 = affine.min affine_map<(d0, d1) -> (-2)>(%c9, %c11)
            %299 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
            %300 = arith.mulf %cst_2, %cst_1 : f32
            %301 = math.cos %splat_40 : tensor<12x12xf32>
            %302 = vector.broadcast %in_51 : f16 to vector<4x4xf16>
            %inserted_58 = tensor.insert %in_55 into %199[%c3, %c11] : tensor<12x12xi1>
            %303 = arith.shrsi %c845231582_i64, %c845231582_i64 : i64
            %alloc_59 = memref.alloc() : memref<4x4xi64>
            %304 = arith.xori %in_55, %true : i1
            %305 = math.atan2 %182, %splat_40 : tensor<12x12xf32>
            %306 = vector.broadcast %c-4657_i16 : i16 to vector<12xi16>
            %307 = vector.maskedload %125[%c2, %c6], %77, %306 : memref<12x12xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
            %from_elements = tensor.from_elements %true, %true, %true, %in_55, %true, %true, %true, %in_55, %true, %true, %true, %in_55, %true, %true, %true, %true : tensor<4x4xi1>
            %308 = arith.maxui %c-4576_i16, %c-4657_i16 : i16
            %309 = arith.maxui %c-22933_i16, %c-22933_i16 : i16
            %310 = memref.load %alloc_14[%c3, %c0] : memref<12x12xi32>
            %311 = vector.transpose %76, [0] : vector<12xi64> to vector<12xi64>
            %312 = math.atan %82 : tensor<4x4xf16>
            %false_60 = arith.constant false
            linalg.yield %false_60 : i1
          }
        %266 = vector.transpose %86, [1, 0] : vector<12x12xf32> to vector<12x12xf32>
        %267 = index.castu %c-22933_i16 : i16 to index
        %268 = index.sub %rank_27, %181
        %269 = arith.maxui %c2036248310_i32, %c683439869_i32 : i32
        %270 = arith.maxui %c0_i64, %c0_i64 : i64
        %271 = arith.mulf %cst_1, %cst_4 : f32
        %272 = math.cttz %24 : tensor<i1>
        %273 = arith.xori %c-22933_i16, %c1_i16 : i16
        %274 = arith.maxf %in_51, %cst : f16
        %275 = index.maxs %115, %268
        %splat_53 = tensor.splat %c683439869_i32 : tensor<4x4xi32>
        memref.store %cst_7, %alloc[%c11, %c8] : memref<12x12xf16>
        vector.print %37 : vector<4x4xi1>
        %276 = vector.broadcast %c683439869_i32 : i32 to vector<4xi32>
        %277 = vector.transfer_write %276, %2[%c10, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<12x12xi32>
        %278 = arith.shrsi %c683439869_i32, %c683439869_i32 : i32
        %279 = arith.remsi %c1_i32, %c683439869_i32 : i32
        %280 = math.round %12 : tensor<4x4xf16>
        %281 = vector.create_mask %144, %162 : vector<12x12xi1>
        %282 = vector.flat_transpose %276 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %283 = vector.broadcast %cst_5 : f16 to vector<7xf16>
        %284 = vector.transfer_write %283, %0[%rank, %rank_27] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf16>, tensor<7x4xf16>
        %285 = math.fma %205, %205, %expanded_35 : tensor<4x4x1xf16>
        %cst_54 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_54 : f16
      }
    %206 = vector.broadcast %c-22933_i16 : i16 to vector<8xi16>
    %207 = vector.broadcast %true : i1 to vector<8xi1>
    %208 = vector.maskedload %198[%c6, %c4], %207, %206 : memref<12x12xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
    %209 = vector.broadcast %cst_7 : f16 to vector<f16>
    %210 = vector.transfer_write %209, %4[%55, %c13] : vector<f16>, tensor<12x12xf16>
    %211 = arith.cmpf true, %cst_5, %cst_5 : f16
    %212 = vector.splat %c5 : vector<12x12xindex>
    %213 = math.cttz %199 : tensor<12x12xi1>
    %214 = math.cos %13 : tensor<12x12xf16>
    %215 = arith.maxf %cst_1, %cst_2 : f32
    %216 = arith.mulf %cst_7, %cst_5 : f16
    %217 = math.cttz %c2036248310_i32 : i32
    %218 = math.cttz %splat_33 : tensor<7x4xi16>
    %alloc_47 = memref.alloc() : memref<4xf16>
    %alloc_48 = memref.alloc() : memref<1x4xf16>
    %219 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %alloc_48, %205 : memref<4xf16>, memref<1x4xf16>, tensor<4x4x1xf16>) outs(%expanded_35 : tensor<4x4x1xf16>) {
    ^bb0(%in: f16, %in_51: f16, %in_52: f16, %out: f16):
      %alloca_53 = memref.alloca() : memref<7x4xf16>
      %inserted_54 = tensor.insert %cst_0 into %12[%c0, %c0] : tensor<4x4xf16>
      memref.tensor_store %1, %117 : memref<12x12xi64>
      %255 = math.exp2 %cst_6 : f32
      %256 = math.fma %0, %0, %0 : tensor<7x4xf16>
      %257 = scf.index_switch %c15 -> vector<7x4xf16> 
      case 1 {
        %279 = arith.maxui %c-4657_i16, %c-4576_i16 : i16
        %280 = math.round %11 : tensor<12x12xf16>
        %281 = math.fma %0, %0, %0 : tensor<7x4xf16>
        %282 = math.ctpop %18 : tensor<i1>
        %283 = math.tanh %splat_40 : tensor<12x12xf32>
        %alloc_60 = memref.alloc() : memref<7x4xf16>
        memref.tensor_store %0, %alloc_60 : memref<7x4xf16>
        %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + d0, (d2 floordiv 4) floordiv 2)>(%c5, %c10, %162, %70)
        %285 = vector.broadcast %true : i1 to vector<7x4xi1>
        %286 = arith.shrsi %c1_i32, %c2036248310_i32 : i32
        %287 = arith.remf %cst_7, %62 : f16
        memref.store %c1133525898_i64, %117[%c5, %c6] : memref<12x12xi64>
        %288 = math.ctpop %23 : tensor<i1>
        %289 = arith.maxui %c0_i64, %c0_i64 : i64
        %290 = math.exp %cst_0 : f16
        %291 = math.ipowi %165, %7 : tensor<12x12xi1>
        %rank_61 = tensor.rank %12 : tensor<4x4xf16>
        %292 = vector.broadcast %cst_7 : f16 to vector<7x4xf16>
        scf.yield %292 : vector<7x4xf16>
      }
      case 2 {
        memref.store %true, %alloc_21[%c3, %c3] : memref<7x4xi1>
        %279 = math.round %cst_4 : f32
        %expanded_60 = tensor.expand_shape %195 [[0], [1, 2]] : tensor<4x4xi32> into tensor<4x4x1xi32>
        %280 = vector.broadcast %cst_4 : f32 to vector<7x4xf32>
        %281 = math.powf %182, %splat_40 : tensor<12x12xf32>
        %282 = arith.cmpi sle, %true, %true : i1
        memref.copy %alloc_20, %alloc_23 : memref<12x12xi1> to memref<12x12xi1>
        %283 = arith.maxsi %c1_i16, %c1_i16 : i16
        %284 = arith.remf %cst_2, %cst_6 : f32
        memref.store %c845231582_i64, %alloc_9[%c1, %c3] : memref<4x4xi64>
        %alloca_61 = memref.alloca() : memref<4x4xi16>
        %285 = memref.load %alloc_19[%c5, %c5] : memref<12x12xi16>
        %286 = math.fpowi %14, %2 : tensor<12x12xf16>, tensor<12x12xi32>
        %287 = bufferization.clone %75 : memref<12x12xi16> to memref<12x12xi16>
        %288 = arith.maxf %out, %cst_5 : f16
        %289 = arith.maxsi %c683439869_i32, %c683439869_i32 : i32
        %290 = vector.broadcast %cst_5 : f16 to vector<7x4xf16>
        scf.yield %290 : vector<7x4xf16>
      }
      case 3 {
        %279 = arith.remsi %c1133525898_i64, %c845231582_i64 : i64
        %280 = math.atan2 %cst_4, %cst_2 : f32
        %281 = arith.shrsi %c1133525898_i64, %c845231582_i64 : i64
        memref.store %c2036248310_i32, %175[%c3, %c1] : memref<12x12xi32>
        %alloc_60 = memref.alloc() : memref<7x4xf32>
        %282 = math.fma %splat, %splat_41, %splat : tensor<4x4xf32>
        %283 = affine.min affine_map<(d0, d1) -> (0, (d1 - d0 + d0) mod 32, d0 - 64)>(%c2, %c14)
        %284 = arith.cmpf ueq, %cst_2, %cst_1 : f32
        %285 = arith.cmpi sgt, %c845231582_i64, %c845231582_i64 : i64
        %alloc_61 = memref.alloc() : memref<12x12xf16>
        %286 = math.ipowi %c-4657_i16, %c1_i16 : i16
        %287 = math.round %splat : tensor<4x4xf32>
        %288 = arith.shrsi %c845231582_i64, %c845231582_i64 : i64
        %289 = arith.muli %c1_i16, %c-4657_i16 : i16
        %290 = math.tanh %0 : tensor<7x4xf16>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %157, %42, %157 : vector<7x4xf32>, vector<4x4xf32> into vector<7x4xf32>
        %292 = vector.broadcast %62 : f16 to vector<7x4xf16>
        scf.yield %292 : vector<7x4xf16>
      }
      case 4 {
        %279 = math.exp %12 : tensor<4x4xf16>
        %280 = arith.muli %c1_i32, %c1_i32 : i32
        %281 = bufferization.clone %alloc_21 : memref<7x4xi1> to memref<7x4xi1>
        %282 = arith.shrsi %c2036248310_i32, %c683439869_i32 : i32
        %283 = arith.maxui %c-4576_i16, %c-4576_i16 : i16
        %rank_60 = tensor.rank %8 : tensor<12x12xi32>
        %284 = arith.divui %c-4576_i16, %c1_i16 : i16
        %285 = math.tanh %in_52 : f16
        %286 = math.ctpop %9 : tensor<12x12xi32>
        %287 = vector.insertelement %true, %207[%144 : index] : vector<8xi1>
        %288 = math.round %53 : tensor<12x12xf16>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %87, %87, %86 : vector<12x12xf32>, vector<12x12xf32> into vector<12x12xf32>
        %290 = vector.broadcast %62 : f16 to vector<7xf16>
        %291 = vector.maskedload %alloc_12[%c1, %c4], %20, %290 : memref<12x12xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %292 = vector.insertelement %c845231582_i64, %128[%rank_60 : index] : vector<7xi64>
        %293 = vector.create_mask %c0, %rank : vector<12x12xi1>
        %294 = index.divu %55, %162
        %295 = vector.broadcast %cst_5 : f16 to vector<7x4xf16>
        scf.yield %295 : vector<7x4xf16>
      }
      default {
        %alloc_60 = memref.alloc() : memref<12x12xf32>
        memref.tensor_store %182, %alloc_60 : memref<12x12xf32>
        %alloc_61 = memref.alloc() : memref<12x12xi16>
        %279 = arith.maxsi %true, %true : i1
        %expanded_62 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<12x12xi32> into tensor<12x12x1xi32>
        %inserted_63 = tensor.insert %c1133525898_i64 into %10[%c1, %c2] : tensor<4x4xi64>
        memref.copy %175, %alloc_14 : memref<12x12xi32> to memref<12x12xi32>
        %280 = index.mul %c0, %c7
        %281 = math.fpowi %182, %2 : tensor<12x12xf32>, tensor<12x12xi32>
        %expanded_64 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x12xi64> into tensor<12x12x1xi64>
        %282 = math.fma %splat_40, %182, %splat_40 : tensor<12x12xf32>
        %283 = math.cttz %c1_i16 : i16
        %284 = bufferization.clone %149 : memref<12x12xi16> to memref<12x12xi16>
        %285 = vector.multi_reduction <minui>, %64, %true [0] : vector<7xi1> to i1
        %286 = vector.insertelement %c845231582_i64, %78[%c6 : index] : vector<12xi64>
        %287 = arith.cmpf uge, %cst_2, %cst_2 : f32
        %288 = arith.maxui %c2036248310_i32, %c683439869_i32 : i32
        %289 = vector.broadcast %cst_7 : f16 to vector<7x4xf16>
        scf.yield %289 : vector<7x4xf16>
      }
      %rank_55 = tensor.rank %15 : tensor<4x4xi16>
      %258 = arith.maxf %cst_1, %cst_3 : f32
      vector.print %157 : vector<7x4xf32>
      %259 = vector.broadcast %cst_2 : f32 to vector<12x12xf32>
      %260 = vector.fma %259, %122, %145 : vector<12x12xf32>
      %261 = affine.if affine_set<(d0, d1, d2, d3) : (d1 - (d1 + d0) ceildiv 32 >= 0)>(%c6, %c2, %c4, %c3) -> memref<7x4xf16> {
        %279 = arith.ori %c0_i64, %c0_i64 : i64
        %280 = vector.create_mask %c6, %rank_55 : vector<4x4xi1>
        %281 = math.atan2 %3, %3 : tensor<12x12xf16>
        %282 = arith.negf %cst_1 : f32
        %283 = index.maxu %142, %c1
        %284 = math.round %182 : tensor<12x12xf32>
        %285 = index.castu %true : i1 to index
        %286 = vector.matrix_multiply %206, %206 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %alloc_60 = memref.alloc() : memref<7x4xf16>
        affine.yield %alloc_60 : memref<7x4xf16>
      } else {
        %279 = index.castu %c0_i64 : i64 to index
        %280 = vector.create_mask %rank_27, %c9 : vector<12x12xi1>
        %281 = math.absf %splat_42 : tensor<12x12xf16>
        %alloc_60 = memref.alloc() : memref<4x4xi1>
        %282 = tensor.empty() : tensor<4x4xi64>
        %283 = linalg.matmul ins(%10, %10 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%282 : tensor<4x4xi64>) -> tensor<4x4xi64>
        %284 = vector.broadcast %in_52 : f16 to vector<4xf16>
        %285 = vector.transfer_write %284, %13[%c15, %70] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf16>, tensor<12x12xf16>
        %rank_61 = tensor.rank %9 : tensor<12x12xi32>
        vector.print %259 : vector<12x12xf32>
        %alloc_62 = memref.alloc() : memref<7x4xf16>
        affine.yield %alloc_62 : memref<7x4xf16>
      }
      %262 = index.divu %c3, %c5
      %263 = arith.divsi %c1_i16, %c-4657_i16 : i16
      %264 = math.log10 %in_51 : f16
      %265 = affine.if affine_set<(d0, d1) : (d0 floordiv 2 >= 0, d0 floordiv 2 - 127 >= 0)>(%c14, %c15) -> memref<12x12xi32> {
        %279 = bufferization.clone %alloc_23 : memref<12x12xi1> to memref<12x12xi1>
        %280 = vector.broadcast %c11 : index to vector<8xindex>
        vector.scatter %75[%c6, %c6] [%280], %207, %208 : memref<12x12xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %281 = math.tanh %182 : tensor<12x12xf32>
        %282 = index.ceildivu %c6, %c7
        %283 = arith.remsi %c1133525898_i64, %c845231582_i64 : i64
        %splat_60 = tensor.splat %62 : tensor<4x4xf16>
        %284 = math.ceil %3 : tensor<12x12xf16>
        %285 = math.tan %11 : tensor<12x12xf16>
        affine.yield %alloc_17 : memref<12x12xi32>
      } else {
        vector.print %208 : vector<8xi16>
        %279 = arith.remf %in_52, %cst_5 : f16
        %280 = math.cttz %134 : tensor<12x12xi1>
        %true_60 = arith.constant true
        %281 = vector.transfer_read %alloc_13[%c11, %c4], %true_60 : memref<7x4xi1>, vector<7xi1>
        %282 = bufferization.clone %alloc_19 : memref<12x12xi16> to memref<12x12xi16>
        %283 = vector.broadcast %55 : index to vector<4xindex>
        %284 = vector.broadcast %true_60 : i1 to vector<4xi1>
        %285 = vector.broadcast %c0_i64 : i64 to vector<4xi64>
        vector.scatter %90[%c3, %c3] [%283], %284, %285 : memref<4x4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %286 = index.ceildivu %c0, %rank_27
        %287 = vector.broadcast %cst_0 : f16 to vector<12xf16>
        %288 = vector.maskedload %alloc[%c8, %c10], %77, %287 : memref<12x12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        affine.yield %alloc_17 : memref<12x12xi32>
      }
      %266 = math.fma %splat_40, %splat_40, %182 : tensor<12x12xf32>
      %267 = scf.if %true -> (i16) {
        %279 = arith.maxsi %c0_i64, %c1133525898_i64 : i64
        %280 = vector.broadcast %true : i1 to vector<4xi1>
        vector.transfer_write %280, %alloc_13[%c10, %70] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, memref<7x4xi1>
        %281 = index.maxu %c14, %c10
        %282 = math.powf %splat_42, %3 : tensor<12x12xf16>
        %283 = arith.divsi %c683439869_i32, %c2036248310_i32 : i32
        %284 = arith.divui %c1_i32, %c2036248310_i32 : i32
        %285 = bufferization.clone %149 : memref<12x12xi16> to memref<12x12xi16>
        %alloc_60 = memref.alloc() : memref<12x12xi16>
        scf.yield %c-4657_i16 : i16
      } else {
        %279 = vector.matrix_multiply %176, %176 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<12xi32>) -> vector<1xi32>
        %280 = arith.shrsi %c0_i64, %c1133525898_i64 : i64
        %281 = vector.maskedload %alloc_20[%c4, %c1], %207, %207 : memref<12x12xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %282 = arith.muli %c0_i64, %c0_i64 : i64
        %283 = vector.broadcast %in_51 : f16 to vector<7x4xf16>
        %inserted_60 = tensor.insert %in into %expanded_35[%c2, %c0, %c0] : tensor<4x4x1xf16>
        %284 = affine.load %117[%c7, %c13] : memref<12x12xi64>
        %285 = arith.shrsi %c1_i16, %c-22933_i16 : i16
        scf.yield %c-4576_i16 : i16
      }
      %268 = math.ceil %11 : tensor<12x12xf16>
      %269 = math.absf %14 : tensor<12x12xf16>
      %270 = vector.broadcast %c5 : index to vector<7xindex>
      %271 = vector.broadcast %c-4657_i16 : i16 to vector<7xi16>
      vector.scatter %119[%c3, %c1] [%270], %64, %271 : memref<12x12xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      %splat_56 = tensor.splat %cst_1 : tensor<12x12xf32>
      %272 = vector.create_mask %c10, %144 : vector<4x4xi1>
      %273 = math.ctpop %18 : tensor<i1>
      scf.execute_region {
        %279 = vector.broadcast %cst_4 : f32 to vector<7x4xf32>
        %280 = vector.fma %279, %279, %157 : vector<7x4xf32>
        %281 = vector.bitcast %157 : vector<7x4xf32> to vector<7x4xf32>
        %282 = arith.shrsi %c-22933_i16, %c-4576_i16 : i16
        %c-10679_i16 = arith.constant -10679 : i16
        %283 = vector.insertelement %c0_i64, %127[%162 : index] : vector<7xi64>
        %284 = arith.maxui %c1_i16, %c-4576_i16 : i16
        %285 = vector.splat %cst_1 : vector<4x4xf32>
        %true_60 = arith.constant true
        %286 = affine.load %alloc_13[%c6, %c8] : memref<7x4xi1>
        %287 = math.fma %16, %82, %12 : tensor<4x4xf16>
        %288 = math.sqrt %205 : tensor<4x4x1xf16>
        %289 = math.floor %cst_1 : f32
        %290 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %281, %157, %43 : vector<7x4xf32>, vector<7x4xf32> into vector<4x4xf32>
        %291 = vector.broadcast %c0 : index to vector<7xindex>
        %292 = vector.broadcast %267 : i16 to vector<7xi16>
        vector.scatter %198[%c1, %c7] [%291], %64, %292 : memref<12x12xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %293 = vector.load %125[%c5, %c3] : memref<12x12xi16>, vector<12x12xi16>
        %inserted_61 = tensor.insert %true into %199[%c4, %c2] : tensor<12x12xi1>
        scf.yield
      }
      %274 = arith.mulf %in_52, %in_52 : f16
      %c2136897748_i32 = arith.constant 2136897748 : i32
      %275 = arith.mulf %cst_0, %cst_0 : f16
      %alloc_57 = memref.alloc() : memref<4x4xf16>
      memref.tensor_store %12, %alloc_57 : memref<4x4xf16>
      %276 = vector.maskedload %alloc_18[%c3, %c5], %207, %207 : memref<12x12xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
      %splat_58 = tensor.splat %cst : tensor<4x4xf16>
      %277 = math.tan %4 : tensor<12x12xf16>
      %278 = tensor.empty() : tensor<12x12xf16>
      %mapped_59 = linalg.map ins(%13, %14 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%278 : tensor<12x12xf16>)
        (%in_60: f16, %in_61: f16) {
          %279 = math.atan2 %splat_42, %3 : tensor<12x12xf16>
          %280 = math.ipowi %true, %true : i1
          %281 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
          %282 = vector.fma %281, %43, %43 : vector<4x4xf32>
          affine.store %true, %alloc_13[%c1, %c13] : memref<7x4xi1>
          memref.tensor_store %splat_42, %alloc_12 : memref<12x12xf16>
          %283 = arith.negf %cst_2 : f32
          %284 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
          %285 = vector.fma %284, %282, %282 : vector<4x4xf32>
          %286 = memref.atomic_rmw maxu %267, %198[%c7, %c1] : (i16, memref<12x12xi16>) -> i16
          %287 = affine.max affine_map<(d0) -> (d0 * 3, d0)>(%rank_27)
          %288 = index.maxu %c9, %c7
          %289 = math.absf %4 : tensor<12x12xf16>
          %290 = vector.broadcast %cst_6 : f32 to vector<4x4xf32>
          %291 = vector.fma %290, %285, %282 : vector<4x4xf32>
          %292 = arith.shli %c845231582_i64, %c1133525898_i64 : i64
          %293 = arith.remf %cst_6, %cst_1 : f32
          %294 = vector.flat_transpose %206 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
          %295 = math.exp2 %0 : tensor<7x4xf16>
          %296 = arith.maxsi %267, %c1_i16 : i16
          %297 = math.atan2 %in, %62 : f16
          %extracted = tensor.extract %14[%c1, %c1] : tensor<12x12xf16>
          %298 = arith.negf %cst_0 : f16
          %299 = arith.remsi %c1_i32, %c2036248310_i32 : i32
          %300 = arith.negf %in : f16
          %301 = index.sub %c14, %c3
          %302 = math.round %splat : tensor<4x4xf32>
          memref.assume_alignment %alloc_18, 8 : memref<12x12xi1>
          %303 = arith.remf %cst_4, %cst_6 : f32
          %304 = vector.broadcast %267 : i16 to vector<12xi16>
          %305 = vector.transfer_write %304, %splat_33[%142, %288] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi16>, tensor<7x4xi16>
          %306 = arith.cmpf ogt, %cst_1, %cst_1 : f32
          %307 = arith.minf %in_52, %cst_7 : f16
          %308 = index.castu %144 : index to i32
          bufferization.dealloc_tensor %11 : tensor<12x12xf16>
          %alloc_62 = memref.alloc() : memref<12xi32>
          %309 = memref.realloc %alloc_62 : memref<12xi32> to memref<4xi32>
          %cst_63 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_63 : f16
        }
      linalg.yield %out : f16
    } -> tensor<4x4x1xf16>
    %220 = arith.negf %cst_0 : f16
    %221 = arith.divsi %c683439869_i32, %c1_i32 : i32
    %222 = math.floor %0 : tensor<7x4xf16>
    %223 = arith.negf %62 : f16
    %224 = math.log10 %14 : tensor<12x12xf16>
    %225 = math.fma %splat, %splat_41, %splat_32 : tensor<4x4xf32>
    %cast = tensor.cast %1 : tensor<12x12xi64> to tensor<?x?xi64>
    %226 = math.absf %cst_3 : f32
    %227 = vector.broadcast %c2036248310_i32 : i32 to vector<7x4xi32>
    %228 = index.casts %c0_i64 : i64 to index
    %229 = vector.broadcast %c-4657_i16 : i16 to vector<i16>
    vector.transfer_write %229, %125[%c15, %c1] : vector<i16>, memref<12x12xi16>
    %230 = math.atan2 %11, %14 : tensor<12x12xf16>
    %231 = index.maxu %144, %c5
    %232 = vector.broadcast %cst_4 : f32 to vector<7x4xf32>
    %233 = vector.fma %232, %232, %158 : vector<7x4xf32>
    %234 = math.cttz %splat_33 : tensor<7x4xi16>
    %235 = math.tanh %splat_41 : tensor<4x4xf32>
    affine.store %c1133525898_i64, %71[%c0, %c0] : memref<12x12xi64>
    %236 = math.round %3 : tensor<12x12xf16>
    scf.index_switch %231 
    case 1 {
      memref.assume_alignment %alloc_9, 2 : memref<4x4xi64>
      %255 = math.log2 %cst_6 : f32
      %256 = vector.create_mask %c10, %181 : vector<12x12xi1>
      %257 = index.mul %c7, %142
      %258 = arith.mulf %cst_6, %cst_1 : f32
      %alloc_51 = memref.alloc() : memref<12x12xf32>
      %cast_52 = tensor.cast %splat_42 : tensor<12x12xf16> to tensor<?x?xf16>
      %259 = memref.load %149[%c2, %c8] : memref<12x12xi16>
      %260 = math.absi %c-4576_i16 : i16
      %261 = index.ceildivu %231, %55
      %262 = scf.while (%arg3 = %175) : (memref<12x12xi32>) -> memref<12x12xi32> {
        %268 = vector.load %alloc_21[%c5, %c2] : memref<7x4xi1>, vector<4x4xi1>
        %269 = vector.broadcast %cst_1 : f32 to vector<12x12xf32>
        %270 = vector.fma %269, %145, %87 : vector<12x12xf32>
        %271 = math.atan2 %cst_0, %cst_7 : f16
        %272 = index.divu %261, %c13
        %273 = arith.remui %c0_i64, %c1133525898_i64 : i64
        %274 = math.round %cst : f16
        %275 = math.expm1 %12 : tensor<4x4xf16>
        %276 = affine.max affine_map<(d0) -> (d0 * 4, 0)>(%c15)
        scf.condition(%true) %alloc_17 : memref<12x12xi32>
      } do {
      ^bb0(%arg3: memref<12x12xi32>):
        %268 = arith.cmpi ult, %c0_i64, %c0_i64 : i64
        %inserted_54 = tensor.insert %c-22933_i16 into %splat_33[%c1, %c2] : tensor<7x4xi16>
        %269 = vector.splat %c-22933_i16 : vector<7x4xi16>
        %270 = bufferization.clone %alloc_18 : memref<12x12xi1> to memref<12x12xi1>
        %271 = arith.ceildivsi %c1_i16, %c-4657_i16 : i16
        %272 = math.powf %53, %11 : tensor<12x12xf16>
        %273 = math.log2 %expanded_35 : tensor<4x4x1xf16>
        %274 = arith.mulf %62, %62 : f16
        %275 = math.absi %c1133525898_i64 : i64
        %276 = math.rsqrt %4 : tensor<12x12xf16>
        %277 = math.exp %cst_1 : f32
        %278 = vector.flat_transpose %95 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %279 = vector.create_mask %231, %c9 : vector<12x12xi1>
        %280 = arith.divsi %c2036248310_i32, %c2036248310_i32 : i32
        %281 = arith.mulf %cst_7, %cst_7 : f16
        %282 = bufferization.clone %175 : memref<12x12xi32> to memref<12x12xi32>
        scf.yield %alloc_14 : memref<12x12xi32>
      }
      %263 = vector.broadcast %c845231582_i64 : i64 to vector<i64>
      %264 = vector.transfer_write %263, %1[%c4, %rank] : vector<i64>, tensor<12x12xi64>
      %265 = arith.maxsi %c-4657_i16, %c1_i16 : i16
      %266 = math.rsqrt %62 : f16
      %inserted_53 = tensor.insert %true into %7[%c2, %c3] : tensor<12x12xi1>
      %267 = arith.divui %c845231582_i64, %c845231582_i64 : i64
      scf.yield
    }
    case 2 {
      %255 = arith.floordivsi %c1_i32, %c2036248310_i32 : i32
      %256 = vector.broadcast %62 : f16 to vector<f16>
      %257 = vector.transfer_write %256, %12[%70, %c1] : vector<f16>, tensor<4x4xf16>
      %258 = bufferization.to_memref %7 : memref<12x12xi1>
      memref.assume_alignment %alloc, 4 : memref<12x12xf16>
      %259 = arith.remsi %c1_i32, %c1_i32 : i32
      memref.store %c-4576_i16, %119[%c5, %c1] : memref<12x12xi16>
      %260 = math.tanh %12 : tensor<4x4xf16>
      %261 = math.round %12 : tensor<4x4xf16>
      %262 = arith.maxsi %c845231582_i64, %c0_i64 : i64
      %263 = vector.broadcast %c683439869_i32 : i32 to vector<4x4xi32>
      %264 = vector.gather %9[%c1, %c3] [%263], %37, %263 : tensor<12x12xi32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi32> into vector<4x4xi32>
      %265 = vector.splat %c3 : vector<7x4xindex>
      %266 = arith.xori %c0_i64, %c845231582_i64 : i64
      %267 = math.ctpop %c-4657_i16 : i16
      %268 = memref.load %alloc_13[%c4, %c1] : memref<7x4xi1>
      %269 = arith.maxsi %c2036248310_i32, %c683439869_i32 : i32
      %270 = arith.addf %cst_7, %cst : f16
      scf.yield
    }
    case 3 {
      %255 = vector.broadcast %cst_4 : f32 to vector<12x12xf32>
      %256 = vector.fma %255, %86, %121 : vector<12x12xf32>
      memref.copy %90, %alloc_9 : memref<4x4xi64> to memref<4x4xi64>
      %257 = arith.negf %cst_7 : f16
      %258 = arith.divf %cst, %62 : f16
      %259 = vector.insertelement %cst_5, %209[] : vector<f16>
      %splat_51 = tensor.splat %cst_6 : tensor<7x4xf32>
      %260 = arith.ori %c1_i16, %c-4576_i16 : i16
      %261 = memref.load %alloc_18[%c3, %c9] : memref<12x12xi1>
      vector.print %104 : vector<12x12xi1>
      %262 = arith.muli %true, %true : i1
      %263 = vector.broadcast %c0_i64 : i64 to vector<12xi64>
      %264 = vector.transfer_write %263, %1[%c14, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, tensor<12x12xi64>
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2, d1)>(%c8, %231, %c4, %c10)
      %266 = vector.broadcast %c2036248310_i32 : i32 to vector<8xi32>
      %267 = vector.maskedload %alloc_14[%c4, %c4], %207, %266 : memref<12x12xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %268 = vector.insertelement %true, %20[%rank : index] : vector<7xi1>
      %269 = math.absf %cst_6 : f32
      %270 = math.powf %cst_1, %cst_3 : f32
      scf.yield
    }
    case 4 {
      %255 = arith.maxsi %c1_i16, %c1_i16 : i16
      %256 = math.tan %cst_2 : f32
      %257 = vector.bitcast %76 : vector<12xi64> to vector<12xi64>
      %expanded_51 = tensor.expand_shape %splat_40 [[0], [1, 2]] : tensor<12x12xf32> into tensor<12x12x1xf32>
      %alloc_52 = memref.alloc() : memref<12x12xi1>
      %splat_53 = tensor.splat %c1_i16 : tensor<7x4xi16>
      %258 = math.powf %3, %14 : tensor<12x12xf16>
      %259 = affine.min affine_map<(d0) -> ((d0 mod 8 + d0 ceildiv 128 - d0 mod 8) floordiv 4, d0 mod 8, -d0, ((d0 mod 8 + d0 ceildiv 128) * 4) ceildiv 64)>(%c10)
      %260 = scf.if %true -> (i16) {
        %rank_55 = tensor.rank %10 : tensor<4x4xi64>
        %265 = vector.shuffle %77, %64 [1, 4, 5, 8, 10, 11, 12, 13, 15, 16] : vector<12xi1>, vector<7xi1>
        %266 = affine.max affine_map<(d0, d1, d2) -> (d0)>(%c12, %rank_55, %c13)
        %267 = arith.remsi %c0_i64, %c1133525898_i64 : i64
        %268 = arith.mulf %62, %cst_0 : f16
        affine.store %c1133525898_i64, %90[%c1, %c0] : memref<4x4xi64>
        %269 = arith.cmpi sge, %c2036248310_i32, %c1_i32 : i32
        %270 = affine.max affine_map<(d0, d1) -> (0, ((-d0) mod 64) floordiv 2, -d0, 0)>(%c7, %c0)
        scf.yield %c-4576_i16 : i16
      } else {
        memref.copy %149, %178 : memref<12x12xi16> to memref<12x12xi16>
        %265 = arith.xori %true, %true : i1
        %collapsed_55 = tensor.collapse_shape %199 [[0, 1]] : tensor<12x12xi1> into tensor<144xi1>
        %266 = index.divu %c11, %142
        %267 = arith.maxsi %true, %true : i1
        %268 = math.tan %cst_5 : f16
        %269 = math.exp2 %12 : tensor<4x4xf16>
        %270 = vector.broadcast %266 : index to vector<12xindex>
        vector.scatter %alloc_20[%c11, %c1] [%270], %77, %77 : memref<12x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        scf.yield %c-4576_i16 : i16
      }
      bufferization.dealloc_tensor %0 : tensor<7x4xf16>
      scf.index_switch %70 
      case 1 {
        %265 = vector.broadcast %cst_1 : f32 to vector<12xf32>
        %266 = vector.insert %265, %122 [0] : vector<12xf32> into vector<12x12xf32>
        %267 = vector.extract_strided_slice %206 {offsets = [1], sizes = [2], strides = [1]} : vector<8xi16> to vector<2xi16>
        %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %86, %86, %159 : vector<12x12xf32>, vector<12x12xf32> into vector<12x12xf32>
        %269 = arith.maxsi %c845231582_i64, %c1133525898_i64 : i64
        %270 = arith.ori %c683439869_i32, %c683439869_i32 : i32
        %271 = bufferization.to_memref %14 : memref<12x12xf16>
        %272 = tensor.empty(%c11, %115) : tensor<?x?xi16>
        %alloca_55 = memref.alloca() : memref<12x12xi1>
        affine.store %c1_i32, %175[%c14, %c5] : memref<12x12xi32>
        %273 = arith.cmpf ord, %cst, %cst_0 : f16
        %274 = index.floordivs %c8, %c1
        %275 = vector.maskedload %117[%c11, %c2], %77, %257 : memref<12x12xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %276 = vector.insertelement %260, %267[%c1 : index] : vector<2xi16>
        %277 = vector.insertelement %true, %64[%rank : index] : vector<7xi1>
        %278 = arith.divsi %true, %true : i1
        %279 = index.castu %228 : index to i32
        scf.yield
      }
      default {
        %265 = arith.muli %260, %c1_i16 : i16
        %266 = vector.create_mask %259, %c11 : vector<4x4xi1>
        %267 = vector.broadcast %cst : f16 to vector<7xf16>
        %268 = vector.maskedload %alloc_12[%c8, %c1], %20, %267 : memref<12x12xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %269 = math.round %182 : tensor<12x12xf32>
        %270 = vector.broadcast %c683439869_i32 : i32 to vector<4x4xi32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %227, %227, %270 : vector<7x4xi32>, vector<7x4xi32> into vector<4x4xi32>
        %272 = tensor.empty(%142) : tensor<12x?xi16>
        %273 = arith.maxsi %c1_i32, %c683439869_i32 : i32
        %274 = math.rsqrt %14 : tensor<12x12xf16>
        %275 = arith.negf %cst_6 : f32
        %276 = arith.remf %cst_2, %cst_3 : f32
        %277 = arith.remf %cst_0, %cst_7 : f16
        %alloc_55 = memref.alloc() : memref<12x12xf32>
        %278 = memref.load %alloc_14[%c5, %c7] : memref<12x12xi32>
        %279 = arith.muli %c1133525898_i64, %c1133525898_i64 : i64
        %280 = index.sub %c13, %228
        %281 = index.mul %c5, %rank_27
      }
      %261 = arith.cmpi ugt, %c2036248310_i32, %c2036248310_i32 : i32
      %262 = math.tanh %cst_2 : f32
      %263 = arith.ori %c683439869_i32, %c683439869_i32 : i32
      %264 = vector.bitcast %122 : vector<12x12xf32> to vector<12x12xf32>
      %alloc_54 = memref.alloc() : memref<12x12xi1>
      scf.yield
    }
    default {
      vector.print %227 : vector<7x4xi32>
      %255 = scf.if %true -> (memref<4x4xi16>) {
        %270 = arith.maxsi %c1_i16, %c-4576_i16 : i16
        %271 = index.ceildivu %c13, %228
        %272 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
        %273 = vector.fma %272, %43, %43 : vector<4x4xf32>
        %274 = vector.insertelement %true, %77[%c10 : index] : vector<12xi1>
        %275 = math.absf %17 : tensor<4x4xf16>
        %276 = arith.remf %cst_1, %cst_2 : f32
        vector.print %121 : vector<12x12xf32>
        %277 = math.exp2 %splat_32 : tensor<4x4xf32>
        %alloc_51 = memref.alloc() : memref<4x4xi16>
        scf.yield %alloc_51 : memref<4x4xi16>
      } else {
        %collapsed_51 = tensor.collapse_shape %0 [[0, 1]] : tensor<7x4xf16> into tensor<28xf16>
        %270 = arith.negf %cst : f16
        %271 = index.castu %c0_i64 : i64 to index
        memref.tensor_store %6, %alloc_20 : memref<12x12xi1>
        %272 = arith.divsi %c1_i32, %c683439869_i32 : i32
        %273 = math.log2 %0 : tensor<7x4xf16>
        %expanded_52 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x4xi16> into tensor<4x4x1xi16>
        %274 = index.mul %c3, %c1
        %alloc_53 = memref.alloc() : memref<4x4xi16>
        scf.yield %alloc_53 : memref<4x4xi16>
      }
      %256 = arith.divsi %c1_i32, %c2036248310_i32 : i32
      %257 = arith.muli %c2036248310_i32, %c1_i32 : i32
      %258 = arith.negf %cst_3 : f32
      %259 = arith.shrui %c2036248310_i32, %c2036248310_i32 : i32
      %260 = arith.divsi %c1_i16, %c1_i16 : i16
      %261 = vector.reduction <mul>, %77 : vector<12xi1> into i1
      %262 = arith.ceildivsi %c0_i64, %c845231582_i64 : i64
      %extracted = tensor.extract %5[%c5, %c3] : tensor<7x4xi16>
      %263 = tensor.empty() : tensor<12x12xf16>
      %264 = linalg.matmul ins(%splat_42, %splat_42 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%263 : tensor<12x12xf16>) -> tensor<12x12xf16>
      %265 = vector.reduction <mul>, %127 : vector<7xi64> into i64
      %266 = arith.cmpi ugt, %c-4576_i16, %extracted : i16
      %267 = index.mul %c15, %rank_27
      %268 = math.ceil %cst_0 : f16
      %269 = math.round %177 : tensor<4x4xf16>
    }
    %237 = math.expm1 %splat_40 : tensor<12x12xf32>
    %238 = arith.mulf %cst_5, %cst_7 : f16
    %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<4x4xi64> into tensor<16xi64>
    %239 = arith.remf %cst_0, %cst : f16
    %240 = arith.shrsi %c-22933_i16, %c-4576_i16 : i16
    %241 = arith.maxf %cst_3, %cst_6 : f32
    %242 = arith.ceildivsi %true, %true : i1
    %243 = affine.apply affine_map<(d0, d1) -> ((d0 + 128) * 16)>(%55, %c0)
    vector.print %176 : vector<12xi32>
    %244 = affine.load %alloc_14[%c15, %c9] : memref<12x12xi32>
    %245 = math.ctpop %21 : tensor<12xi1>
    %246 = math.ctpop %244 : i32
    %247 = arith.cmpf une, %cst_0, %62 : f16
    %248 = bufferization.clone %119 : memref<12x12xi16> to memref<12x12xi16>
    %249 = index.sub %c15, %c11
    %250 = tensor.empty() : tensor<4x4xf32>
    %251 = linalg.copy ins(%splat_41 : tensor<4x4xf32>) outs(%250 : tensor<4x4xf32>) -> tensor<4x4xf32>
    %alloc_49 = memref.alloc() : memref<1x4x4xf16>
    linalg.transpose ins(%205 : tensor<4x4x1xf16>) outs(%alloc_49 : memref<1x4x4xf16>) permutation = [2, 0, 1] 
    %alloc_50 = memref.alloc() : memref<4xf16>
    linalg.reduce ins(%12 : tensor<4x4xf16>) outs(%alloc_50 : memref<4xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %255 = affine.max affine_map<(d0) -> (d0 - 128, ((d0 - 128) ceildiv 64) * -8)>(%c12)
        %256 = arith.xori %c1_i32, %c2036248310_i32 : i32
        %257 = index.ceildivu %rank_27, %c15
        %258 = math.sqrt %12 : tensor<4x4xf16>
        %259 = arith.remf %cst_5, %62 : f16
        %splat_51 = tensor.splat %cst_5 : tensor<7x4xf16>
        %260 = affine.max affine_map<(d0, d1, d2) -> (-d0, (-(d1 mod 32)) floordiv 2 + 2, (-(d1 mod 32)) floordiv 2 + 2)>(%231, %c2, %c6)
        %261 = tensor.empty() : tensor<12x12xf16>
        %262 = linalg.matmul ins(%13, %3 : tensor<12x12xf16>, tensor<12x12xf16>) outs(%261 : tensor<12x12xf16>) -> tensor<12x12xf16>
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    %252 = scf.parallel (%arg3) = (%60) to (%c13) step (%c3) init (%87) -> vector<12x12xf32> {
      %255 = bufferization.to_memref %10 : memref<4x4xi64>
      %256 = arith.remui %c1_i32, %c683439869_i32 : i32
      %257 = math.rsqrt %177 : tensor<4x4xf16>
      %258 = vector.insertelement %c-4657_i16, %206[%c10 : index] : vector<8xi16>
      %259 = math.cttz %10 : tensor<4x4xi64>
      %260 = math.round %82 : tensor<4x4xf16>
      %261 = math.fma %62, %cst, %cst : f16
      %262 = bufferization.clone %117 : memref<12x12xi64> to memref<12x12xi64>
      %263 = math.ceil %splat_32 : tensor<4x4xf32>
      %264 = math.ctpop %199 : tensor<12x12xi1>
      %splat_51 = tensor.splat %cst_7 : tensor<12x12xf16>
      %265 = vector.flat_transpose %208 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
      %266 = vector.broadcast %cst_3 : f32 to vector<7x4xf32>
      %267 = vector.fma %266, %158, %232 : vector<7x4xf32>
      %268 = arith.maxf %62, %cst_0 : f16
      %269 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 2 - 16 >= 0)>(%c1, %c2, %c9, %c3) -> i32 {
        %271 = math.log2 %13 : tensor<12x12xf16>
        %272 = arith.cmpi eq, %c0_i64, %c845231582_i64 : i64
        %273 = bufferization.clone %alloc_17 : memref<12x12xi32> to memref<12x12xi32>
        %274 = math.round %splat_42 : tensor<12x12xf16>
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 8 - 2, (d0 floordiv 8 - 2) * -32, d3 mod 16)>(%144, %228, %c14, %55)
        %276 = arith.remsi %c-22933_i16, %c1_i16 : i16
        %277 = index.casts %c2036248310_i32 : i32 to index
        %278 = math.round %62 : f16
        affine.yield %244 : i32
      } else {
        %271 = math.atan2 %expanded_35, %205 : tensor<4x4x1xf16>
        %272 = index.divu %c15, %arg3
        %273 = math.floor %13 : tensor<12x12xf16>
        %inserted_53 = tensor.insert %cst_5 into %13[%c6, %c9] : tensor<12x12xf16>
        %collapsed_54 = tensor.collapse_shape %1 [[0, 1]] : tensor<12x12xi64> into tensor<144xi64>
        %274 = arith.cmpi eq, %true, %true : i1
        %275 = arith.maxsi %c1_i16, %c-4657_i16 : i16
        %276 = vector.create_mask %181, %rank : vector<12x12xi1>
        affine.yield %c2036248310_i32 : i32
      }
      %alloca_52 = memref.alloca() : memref<12x12xi1>
      %270 = vector.broadcast %cst_4 : f32 to vector<12x12xf32>
      scf.reduce(%270)  : vector<12x12xf32> {
      ^bb0(%arg4: vector<12x12xf32>, %arg5: vector<12x12xf32>):
        %271 = vector.flat_transpose %77 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        vector.print %207 : vector<8xi1>
        %272 = index.maxu %c6, %60
        %273 = math.rsqrt %13 : tensor<12x12xf16>
        %274 = arith.cmpi sgt, %c-22933_i16, %c-4576_i16 : i16
        %275 = math.ctpop %true : i1
        %276 = vector.broadcast %cst : f16 to vector<f16>
        %277 = vector.transfer_write %276, %4[%162, %142] : vector<f16>, tensor<12x12xf16>
        %278 = index.sub %c15, %55
        %279 = vector.broadcast %cst_4 : f32 to vector<12x12xf32>
        scf.reduce.return %279 : vector<12x12xf32>
      }
      scf.yield
    }
    %253 = affine.vector_load %alloc_11[%c5, %142] : memref<7x4xi32>, vector<7xi32>
    affine.vector_store %132, %alloc_9[%c5, %231] : memref<4x4xi64>, vector<12xi64>
    vector.print %20 : vector<7xi1>
    vector.print %37 : vector<4x4xi1>
    vector.print %42 : vector<4x4xf32>
    vector.print %43 : vector<4x4xf32>
    vector.print %47 : vector<4x4xf32>
    vector.print %64 : vector<7xi1>
    vector.print %76 : vector<12xi64>
    vector.print %77 : vector<12xi1>
    vector.print %78 : vector<12xi64>
    vector.print %86 : vector<12x12xf32>
    vector.print %87 : vector<12x12xf32>
    vector.print %95 : vector<8xi64>
    vector.print %101 : vector<12x12xi1>
    vector.print %104 : vector<12x12xi1>
    vector.print %121 : vector<12x12xf32>
    vector.print %122 : vector<12x12xf32>
    vector.print %127 : vector<7xi64>
    vector.print %128 : vector<7xi64>
    vector.print %132 : vector<12xi64>
    vector.print %145 : vector<12x12xf32>
    vector.print %157 : vector<7x4xf32>
    vector.print %158 : vector<7x4xf32>
    vector.print %159 : vector<12x12xf32>
    vector.print %160 : vector<12x12xf32>
    vector.print %176 : vector<12xi32>
    vector.print %206 : vector<8xi16>
    vector.print %207 : vector<8xi1>
    vector.print %208 : vector<8xi16>
    vector.print %209 : vector<f16>
    vector.print %227 : vector<7x4xi32>
    vector.print %229 : vector<i16>
    vector.print %232 : vector<7x4xf32>
    vector.print %233 : vector<7x4xf32>
    vector.print %253 : vector<7xi32>
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %c845231582_i64 : i64
    vector.print %c-4576_i16 : i16
    vector.print %c1133525898_i64 : i64
    vector.print %c-22933_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c2036248310_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c-4657_i16 : i16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c683439869_i32 : i32
    vector.print %cst_6 : f32
    vector.print %cst_7 : f16
    vector.print %c1_i32 : i32
    vector.print %62 : f16
    vector.print %true : i1
    vector.print %c0_i64 : i64
    vector.print %c1_i16 : i16
    vector.print %244 : i32
    %254 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
    return %254 : vector<4x4xf16>
  }
}
