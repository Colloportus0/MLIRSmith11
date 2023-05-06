module {
  func.func nested @func1(%arg0: tensor<9x3xi16>, %arg1: i64, %arg2: memref<9x3xi1>) {
    %cst = arith.constant 6.316800e+04 : f16
    %c791166266_i64 = arith.constant 791166266 : i64
    %c851740943_i32 = arith.constant 851740943 : i32
    %cst_0 = arith.constant 1.91650445E+9 : f32
    %c4811_i16 = arith.constant 4811 : i16
    %c-27483_i16 = arith.constant -27483 : i16
    %c1063701009_i64 = arith.constant 1063701009 : i64
    %cst_1 = arith.constant 0x4C6D1FC1 : f32
    %c723310721_i64 = arith.constant 723310721 : i64
    %cst_2 = arith.constant 1.420800e+04 : f16
    %cst_3 = arith.constant 0x4E33D799 : f32
    %cst_4 = arith.constant 1.634400e+04 : f16
    %c-30032_i16 = arith.constant -30032 : i16
    %c1989728629_i64 = arith.constant 1989728629 : i64
    %true = arith.constant true
    %true_5 = arith.constant true
    %0 = tensor.empty() : tensor<3x5xf16>
    %1 = tensor.empty() : tensor<9x3xi32>
    %2 = tensor.empty() : tensor<9x3xf16>
    %3 = tensor.empty() : tensor<9x3xi1>
    %4 = tensor.empty() : tensor<9x3xi32>
    %5 = tensor.empty() : tensor<9x3xi16>
    %6 = tensor.empty() : tensor<9x3xi16>
    %7 = tensor.empty() : tensor<9x4xf32>
    %8 = tensor.empty() : tensor<9x4xi1>
    %9 = tensor.empty() : tensor<3x5xf32>
    %10 = tensor.empty() : tensor<3x5xi1>
    %11 = tensor.empty() : tensor<5x3x3xf32>
    %12 = tensor.empty() : tensor<3x5xf32>
    %13 = tensor.empty() : tensor<5x3x3xi1>
    %14 = tensor.empty() : tensor<9x4xi16>
    %15 = tensor.empty() : tensor<9x3xi1>
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
    %alloc = memref.alloc() : memref<9x4xf16>
    %alloc_6 = memref.alloc() : memref<3x5xi1>
    %alloc_7 = memref.alloc() : memref<9x4xf16>
    %alloc_8 = memref.alloc() : memref<9x4xi1>
    %alloc_9 = memref.alloc() : memref<5x3x3xf32>
    %alloc_10 = memref.alloc() : memref<5x3x3xf32>
    %alloc_11 = memref.alloc() : memref<3x5xi16>
    %alloc_12 = memref.alloc() : memref<3x5xf16>
    %alloc_13 = memref.alloc() : memref<9x3xf32>
    %alloc_14 = memref.alloc() : memref<5x3x3xf32>
    %alloc_15 = memref.alloc() : memref<5x3x3xi1>
    %alloc_16 = memref.alloc() : memref<9x3xi1>
    %alloc_17 = memref.alloc() : memref<9x4xi1>
    %alloc_18 = memref.alloc() : memref<9x4xi64>
    %alloc_19 = memref.alloc() : memref<9x3xi64>
    %alloc_20 = memref.alloc() : memref<3x5xf16>
    %16 = tensor.empty() : tensor<9x3xi1>
    %17 = linalg.copy ins(%3 : tensor<9x3xi1>) outs(%16 : tensor<9x3xi1>) -> tensor<9x3xi1>
    %18 = tensor.empty() : tensor<4x9xi16>
    %transposed = linalg.transpose ins(%14 : tensor<9x4xi16>) outs(%18 : tensor<4x9xi16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<9xi16>
    %reduced = linalg.reduce ins(%14 : tensor<9x4xi16>) outs(%19 : tensor<9xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %271 = arith.shrui %true, %true : i1
        bufferization.dealloc_tensor %3 : tensor<9x3xi1>
        %272 = index.divu %c10, %c13
        %273 = arith.negf %cst_1 : f32
        %alloc_46 = memref.alloc() : memref<5xf32>
        %274 = tensor.empty() : tensor<3xf32>
        %alloc_47 = memref.alloc() : memref<3x3xf32>
        %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %274, %alloc_47 : memref<5xf32>, tensor<3xf32>, memref<3x3xf32>) outs(%11 : tensor<5x3x3xf32>) {
        ^bb0(%in_48: f32, %in_49: f32, %in_50: f32, %out: f32):
          %279 = math.powf %11, %11 : tensor<5x3x3xf32>
          %280 = affine.max affine_map<(d0) -> (d0 floordiv 128 - d0, d0 + 4, 0)>(%c2)
          %281 = math.cttz %c791166266_i64 : i64
          memref.store %cst_4, %alloc_7[%c8, %c1] : memref<9x4xf16>
          %282 = vector.broadcast %cst_2 : f16 to vector<1xf16>
          %283 = vector.bitcast %282 : vector<1xf16> to vector<1xf16>
          %284 = math.atan2 %2, %2 : tensor<9x3xf16>
          %285 = math.cos %in_48 : f32
          %286 = bufferization.to_memref %4 : memref<9x3xi32>
          %287 = arith.divf %cst_2, %cst_2 : f16
          %288 = math.exp %7 : tensor<9x4xf32>
          %289 = arith.remui %init, %init : i16
          %290 = math.absf %2 : tensor<9x3xf16>
          %291 = math.ipowi %true_5, %true : i1
          %292 = index.floordivs %280, %c0
          %293 = math.exp2 %cst_1 : f32
          %294 = vector.broadcast %in_49 : f32 to vector<9x4xf32>
          %295 = bufferization.clone %alloc_16 : memref<9x3xi1> to memref<9x3xi1>
          %296 = vector.extract %294[0] : vector<9x4xf32>
          %297 = math.cos %cst_3 : f32
          memref.assume_alignment %295, 16 : memref<9x3xi1>
          %298 = arith.muli %c-27483_i16, %in : i16
          %299 = math.tanh %12 : tensor<3x5xf32>
          %300 = vector.multi_reduction <add>, %296, %in_49 [0] : vector<4xf32> to f32
          %301 = math.tanh %12 : tensor<3x5xf32>
          %302 = arith.cmpi ugt, %c851740943_i32, %c851740943_i32 : i32
          bufferization.dealloc_tensor %transposed : tensor<4x9xi16>
          %303 = affine.load %alloc_19[%c5, %c2] : memref<9x3xi64>
          %304 = arith.remf %in_48, %in_48 : f32
          %305 = arith.negf %in_49 : f32
          %306 = vector.broadcast %cst_2 : f16 to vector<3xf16>
          %307 = vector.broadcast %true : i1 to vector<3xi1>
          %308 = vector.maskedload %alloc_20[%c1, %c4], %307, %306 : memref<3x5xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
          %309 = index.sizeof
          %cst_51 = arith.constant 1.000000e+00 : f16
          %cst_52 = arith.constant 0.000000e+00 : f16
          %310 = vector.transfer_read %alloc[%309, %c1], %cst_52 : memref<9x4xf16>, vector<f16>
          linalg.yield %cst_3 : f32
        } -> tensor<5x3x3xf32>
        %276 = vector.broadcast %c723310721_i64 : i64 to vector<3xi64>
        %277 = vector.flat_transpose %276 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %278 = math.fma %cst_1, %cst_3, %cst_0 : f32
        affine.store %cst_2, %alloc_12[%c4, %c12] : memref<3x5xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %20 = scf.parallel (%arg3, %arg4) = (%c2, %c14) to (%c8, %c12) step (%c9, %c2) init (%alloc_13) -> memref<9x3xf32> {
      %271 = arith.remui %c791166266_i64, %c1989728629_i64 : i64
      %272 = math.tan %0 : tensor<3x5xf16>
      %splat_46 = tensor.splat %c1063701009_i64 : tensor<5x3x3xi64>
      %273 = arith.cmpi slt, %true, %true_5 : i1
      %generated = tensor.generate %c1, %c6, %c9 {
      ^bb0(%arg5: index, %arg6: index, %arg7: index):
        memref.tensor_store %13, %alloc_15 : memref<5x3x3xi1>
        %286 = affine.apply affine_map<(d0, d1) -> (d0)>(%c9, %c12)
        %287 = vector.broadcast %c4811_i16 : i16 to vector<1xi16>
        %288 = vector.bitcast %287 : vector<1xi16> to vector<1xi16>
        %289 = index.add %c15, %arg4
        tensor.yield %c851740943_i32 : i32
      } : tensor<?x?x?xi32>
      %274 = bufferization.to_memref %2 : memref<9x3xf16>
      %275 = math.log %7 : tensor<9x4xf32>
      %276 = vector.broadcast %c791166266_i64 : i64 to vector<9x3xi64>
      vector.print %276 : vector<9x3xi64>
      %277 = vector.extract %276[4] : vector<9x3xi64>
      %278 = vector.multi_reduction <minsi>, %276, %276 [] : vector<9x3xi64> to vector<9x3xi64>
      %279 = scf.while (%arg5 = %alloc_14) : (memref<5x3x3xf32>) -> memref<5x3x3xf32> {
        vector.print %276 : vector<9x3xi64>
        %286 = arith.shli %c1989728629_i64, %c1063701009_i64 : i64
        %287 = vector.extract %277[0] : vector<3xi64>
        %c1_i16 = arith.constant 1 : i16
        %288 = vector.transfer_read %transposed[%c12, %c7], %c1_i16 : tensor<4x9xi16>, vector<3xi16>
        %289 = index.add %arg3, %arg3
        %290 = index.casts %c4811_i16 : i16 to index
        %291 = arith.minui %c723310721_i64, %c1989728629_i64 : i64
        %292 = vector.create_mask %289, %c3 : vector<9x4xi1>
        scf.condition(%true_5) %alloc_14 : memref<5x3x3xf32>
      } do {
      ^bb0(%arg5: memref<5x3x3xf32>):
        %286 = vector.load %alloc_20[%c1, %c3] : memref<3x5xf16>, vector<9x3xf16>
        %287 = arith.remf %cst_3, %cst_0 : f32
        %288 = math.absi %c1063701009_i64 : i64
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %289 = vector.transfer_read %2[%c0, %c10], %cst_49 : tensor<9x3xf16>, vector<f16>
        %290 = vector.insert %277, %276 [3] : vector<3xi64> into vector<9x3xi64>
        %291 = index.add %c15, %c12
        %292 = math.ceil %12 : tensor<3x5xf32>
        %rank_50 = tensor.rank %13 : tensor<5x3x3xi1>
        %293 = index.divu %c6, %291
        %294 = vector.flat_transpose %277 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %295 = math.fpowi %2, %1 : tensor<9x3xf16>, tensor<9x3xi32>
        %splat_51 = tensor.splat %cst_2 : tensor<9x3xf16>
        %296 = math.ctpop %3 : tensor<9x3xi1>
        %297 = bufferization.clone %alloc_8 : memref<9x4xi1> to memref<9x4xi1>
        %298 = math.ceil %7 : tensor<9x4xf32>
        %expanded_52 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<9x4xi16> into tensor<9x4x1xi16>
        scf.yield %alloc_14 : memref<5x3x3xf32>
      }
      %280 = arith.addf %cst_3, %cst_0 : f32
      %281 = index.mul %c13, %c8
      %282 = vector.broadcast %cst_1 : f32 to vector<3xf32>
      %283 = vector.broadcast %true_5 : i1 to vector<3xi1>
      %284 = vector.maskedload %alloc_9[%c2, %c0, %c1], %283, %282 : memref<5x3x3xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %285 = index.floordivs %c11, %c6
      memref.store %c791166266_i64, %alloc_18[%c1, %c3] : memref<9x4xi64>
      %alloc_47 = memref.alloc() : memref<9x3xf32>
      scf.reduce(%alloc_47)  : memref<9x3xf32> {
      ^bb0(%arg5: memref<9x3xf32>, %arg6: memref<9x3xf32>):
        %286 = math.exp2 %cst_4 : f16
        %287 = math.cttz %16 : tensor<9x3xi1>
        %288 = math.rsqrt %cst_3 : f32
        %289 = math.sqrt %cst : f16
        %290 = arith.remui %c1063701009_i64, %c1989728629_i64 : i64
        %291 = vector.broadcast %c7 : index to vector<5xindex>
        %292 = vector.broadcast %true_5 : i1 to vector<5xi1>
        %293 = vector.broadcast %c723310721_i64 : i64 to vector<5xi64>
        vector.scatter %alloc_18[%c4, %c2] [%291], %292, %293 : memref<9x4xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %cast = tensor.cast %14 : tensor<9x4xi16> to tensor<?x?xi16>
        %294 = vector.shuffle %277, %277 [1, 2, 4] : vector<3xi64>, vector<3xi64>
        %alloc_48 = memref.alloc() : memref<9x3xf32>
        scf.reduce.return %alloc_48 : memref<9x3xf32>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_10[%c4, %c12, %c9] : memref<5x3x3xf32>, vector<5xf32>
    affine.vector_store %21, %alloc_13[%c0, %c3] : memref<9x3xf32>, vector<5xf32>
    %22 = tensor.empty() : tensor<9xi16>
    %23 = tensor.empty() : tensor<i16>
    %24 = linalg.dot ins(%19, %22 : tensor<9xi16>, tensor<9xi16>) outs(%23 : tensor<i16>) -> tensor<i16>
    %25 = math.ipowi %c-30032_i16, %c-30032_i16 : i16
    %26 = arith.remf %cst_3, %cst_1 : f32
    %27 = math.exp %cst_3 : f32
    %28 = math.atan2 %12, %9 : tensor<3x5xf32>
    %29 = math.copysign %cst, %cst : f16
    %30 = arith.shli %c4811_i16, %c-30032_i16 : i16
    %31 = bufferization.clone %alloc_11 : memref<3x5xi16> to memref<3x5xi16>
    %splat = tensor.splat %cst_4 : tensor<5x3x3xf16>
    %32 = bufferization.clone %alloc : memref<9x4xf16> to memref<9x4xf16>
    bufferization.dealloc_tensor %14 : tensor<9x4xi16>
    %33 = index.maxu %c12, %c0
    %34 = vector.broadcast %cst_3 : f32 to vector<9x3xf32>
    %35 = vector.broadcast %true : i1 to vector<9x3xi1>
    %36 = vector.broadcast %c851740943_i32 : i32 to vector<9x3xi32>
    %37 = vector.gather %alloc_10[%c2, %c10, %33] [%36], %35, %34 : memref<5x3x3xf32>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xf32> into vector<9x3xf32>
    %38 = tensor.empty() : tensor<3x5xi32>
    %39 = math.fpowi %0, %38 : tensor<3x5xf16>, tensor<3x5xi32>
    %40 = vector.bitcast %34 : vector<9x3xf32> to vector<9x3xf32>
    bufferization.dealloc_tensor %10 : tensor<3x5xi1>
    %41 = vector.load %alloc_20[%c0, %c2] : memref<3x5xf16>, vector<9x4xf16>
    %42 = math.fpowi %cst, %c851740943_i32 : f16, i32
    %43 = vector.reduction <add>, %21 : vector<5xf32> into f32
    %44 = arith.muli %c851740943_i32, %c851740943_i32 : i32
    %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<9x3xi1> into tensor<9x3x1xi1>
    %45 = arith.subi %c1063701009_i64, %c1063701009_i64 : i64
    %46 = math.tan %9 : tensor<3x5xf32>
    %47 = tensor.empty() : tensor<3x5xi64>
    vector.print %37 : vector<9x3xf32>
    %48 = math.exp %cst : f16
    %49 = arith.remui %c4811_i16, %c-30032_i16 : i16
    %50 = math.fma %7, %7, %7 : tensor<9x4xf32>
    vector.print %37 : vector<9x3xf32>
    %51 = math.ceil %7 : tensor<9x4xf32>
    %52 = arith.cmpi sge, %true_5, %true : i1
    %53 = math.absf %11 : tensor<5x3x3xf32>
    %extracted = tensor.extract %0[%c0, %c1] : tensor<3x5xf16>
    %54 = math.absf %9 : tensor<3x5xf32>
    %55 = math.sqrt %7 : tensor<9x4xf32>
    %56 = vector.broadcast %c-27483_i16 : i16 to vector<i16>
    %57 = vector.transfer_write %56, %14[%c9, %c13] : vector<i16>, tensor<9x4xi16>
    %58 = arith.shrsi %c4811_i16, %c4811_i16 : i16
    %rank = tensor.rank %38 : tensor<3x5xi32>
    %expanded_21 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<4x9xi16> into tensor<4x9x1xi16>
    %59 = vector.broadcast %c0 : index to vector<3xindex>
    %60 = vector.broadcast %true_5 : i1 to vector<3xi1>
    %61 = vector.broadcast %extracted : f16 to vector<3xf16>
    vector.scatter %alloc_7[%c6, %c2] [%59], %60, %61 : memref<9x4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
    %62 = arith.ceildivsi %c1063701009_i64, %c791166266_i64 : i64
    memref.assume_alignment %alloc_7, 2 : memref<9x4xf16>
    %63 = index.casts %c13 : index to i32
    %splat_22 = tensor.splat %c723310721_i64 : tensor<9x3xi64>
    %64 = index.sizeof
    %65 = index.sizeof
    %66 = index.add %c10, %c1
    %67 = index.sizeof
    %c1_i64 = arith.constant 1 : i64
    %68 = vector.transfer_read %47[%c7, %65], %c1_i64 : tensor<3x5xi64>, vector<i64>
    %alloc_23 = memref.alloc() : memref<9xi16>
    memref.tensor_store %reduced, %alloc_23 : memref<9xi16>
    %69 = vector.broadcast %cst_0 : f32 to vector<3x5xf32>
    %70 = arith.maxui %c-27483_i16, %c-30032_i16 : i16
    %71 = index.divs %c4, %c10
    %72 = math.round %cst : f16
    %expanded_24 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<9x3xi16> into tensor<9x3x1xi16>
    memref.tensor_store %3, %alloc_16 : memref<9x3xi1>
    %73 = arith.negf %cst_3 : f32
    %74 = math.log2 %12 : tensor<3x5xf32>
    %75 = arith.andi %true, %true : i1
    %76 = memref.load %alloc_15[%c1, %c2, %c1] : memref<5x3x3xi1>
    %77 = vector.broadcast %true : i1 to vector<5xi1>
    %78 = vector.maskedload %alloc_14[%c3, %c1, %c2], %77, %21 : memref<5x3x3xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
    %79 = bufferization.clone %alloc_20 : memref<3x5xf16> to memref<3x5xf16>
    %80 = arith.andi %c4811_i16, %c-27483_i16 : i16
    %81 = memref.atomic_rmw assign %cst, %alloc_7[%c4, %c0] : (f16, memref<9x4xf16>) -> f16
    %82 = vector.splat %c-27483_i16 : vector<5x3x3xi16>
    %83 = math.log %cst_2 : f16
    %84 = arith.negf %cst_1 : f32
    %85 = math.exp2 %9 : tensor<3x5xf32>
    %86 = vector.matrix_multiply %77, %77 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
    %alloc_25 = memref.alloc() : memref<i16>
    memref.tensor_store %23, %alloc_25 : memref<i16>
    %87 = vector.broadcast %true_5 : i1 to vector<3x3xi1>
    %88 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %35, %35, %87 : vector<9x3xi1>, vector<9x3xi1> into vector<3x3xi1>
    %89 = tensor.empty() : tensor<9x4xi64>
    %90 = vector.broadcast %c1063701009_i64 : i64 to vector<5x3x3xi64>
    %91 = vector.broadcast %true : i1 to vector<5x3x3xi1>
    %92 = vector.broadcast %c851740943_i32 : i32 to vector<5x3x3xi32>
    %93 = vector.gather %89[%c0, %c15] [%92], %91, %90 : tensor<9x4xi64>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi64> into vector<5x3x3xi64>
    %94 = arith.shrsi %c-27483_i16, %c-30032_i16 : i16
    %95 = math.sqrt %cst_2 : f16
    %96 = vector.flat_transpose %77 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
    %97 = arith.negf %cst_1 : f32
    %98 = math.absf %7 : tensor<9x4xf32>
    %99 = vector.broadcast %cst_3 : f32 to vector<9x4xf32>
    %100 = vector.fma %99, %99, %99 : vector<9x4xf32>
    %101 = memref.load %alloc_12[%c0, %c3] : memref<3x5xf16>
    %102 = math.sqrt %7 : tensor<9x4xf32>
    %103 = index.divu %c8, %rank
    %104 = arith.muli %c791166266_i64, %c1_i64 : i64
    %105 = arith.remf %cst_4, %extracted : f16
    %106 = math.ceil %7 : tensor<9x4xf32>
    %107 = index.add %rank, %71
    %108 = index.divu %c5, %103
    %109 = affine.for %arg3 = 0 to 98 iter_args(%arg4 = %38) -> (tensor<3x5xi32>) {
      affine.yield %38 : tensor<3x5xi32>
    }
    %110 = arith.negf %cst_2 : f16
    %111 = math.exp2 %11 : tensor<5x3x3xf32>
    %112 = index.sizeof
    %113 = math.log2 %cst_2 : f16
    %inserted = tensor.insert %c-27483_i16 into %expanded_21[%c0, %c7, %c0] : tensor<4x9x1xi16>
    %114 = index.maxu %c3, %67
    %115 = math.cos %cst : f16
    %116 = arith.muli %true_5, %true_5 : i1
    %117 = math.exp %7 : tensor<9x4xf32>
    %118 = arith.shrui %true, %true : i1
    %119 = arith.maxui %c4811_i16, %c-27483_i16 : i16
    %120 = math.atan2 %7, %7 : tensor<9x4xf32>
    %121 = math.fma %9, %12, %9 : tensor<3x5xf32>
    %122 = math.exp2 %cst_4 : f16
    %123 = vector.broadcast %65 : index to vector<3xindex>
    %124 = vector.broadcast %true : i1 to vector<3xi1>
    %125 = vector.broadcast %cst_4 : f16 to vector<3xf16>
    vector.scatter %79[%c2, %c3] [%123], %124, %125 : memref<3x5xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
    %126 = bufferization.clone %alloc_9 : memref<5x3x3xf32> to memref<5x3x3xf32>
    %127 = math.powf %11, %11 : tensor<5x3x3xf32>
    scf.index_switch %c0 
    case 1 {
      %271 = vector.broadcast %true : i1 to vector<5x3x9xi1>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %91, %35, %271 : vector<5x3x3xi1>, vector<9x3xi1> into vector<5x3x9xi1>
      %273 = math.rsqrt %9 : tensor<3x5xf32>
      %splat_46 = tensor.splat %cst_1 : tensor<5x3x3xf32>
      %274 = tensor.empty() : tensor<3x5xi64>
      %mapped_47 = linalg.map ins(%47, %47, %47 : tensor<3x5xi64>, tensor<3x5xi64>, tensor<3x5xi64>) outs(%274 : tensor<3x5xi64>)
        (%in: i64, %in_48: i64, %in_49: i64) {
          %287 = vector.flat_transpose %96 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
          %288 = arith.shrsi %in_48, %in : i64
          %289 = arith.muli %true_5, %true_5 : i1
          %290 = math.round %12 : tensor<3x5xf32>
          %false = arith.constant false
          %291 = vector.transfer_read %expanded[%c15, %114, %c2], %false : tensor<9x3x1xi1>, vector<9x9xi1>
          %292 = arith.remui %c-30032_i16, %c4811_i16 : i16
          %293 = arith.xori %c-27483_i16, %c-27483_i16 : i16
          %294 = arith.remsi %c791166266_i64, %in_49 : i64
          %295 = math.atan %splat : tensor<5x3x3xf16>
          %296 = index.floordivs %65, %c0
          %297 = math.copysign %9, %12 : tensor<3x5xf32>
          %298 = arith.minsi %c851740943_i32, %c851740943_i32 : i32
          %299 = arith.remui %c4811_i16, %c4811_i16 : i16
          %300 = affine.min affine_map<(d0, d1) -> (d1 + d0 + d0 + 1, d0 + 1, d1 + d0 + d0 + 1 - 130, d1 - d0)>(%c9, %c12)
          %301 = vector.broadcast %cst_0 : f32 to vector<4x3xf32>
          %302 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %99, %40, %301 : vector<9x4xf32>, vector<9x3xf32> into vector<4x3xf32>
          %303 = arith.minui %true_5, %true_5 : i1
          %304 = math.fpowi %2, %4 : tensor<9x3xf16>, tensor<9x3xi32>
          %305 = math.powf %12, %12 : tensor<3x5xf32>
          %306 = index.maxu %296, %rank
          %307 = index.ceildivu %c5, %rank
          %308 = math.ceil %0 : tensor<3x5xf16>
          %309 = arith.remf %cst_1, %cst_1 : f32
          memref.store %cst_3, %alloc_13[%c5, %c1] : memref<9x3xf32>
          %310 = index.ceildivu %c7, %306
          %311 = memref.atomic_rmw mulf %cst_1, %alloc_10[%c4, %c2, %c0] : (f32, memref<5x3x3xf32>) -> f32
          %312 = index.add %c3, %65
          %collapsed_50 = tensor.collapse_shape %12 [[0, 1]] : tensor<3x5xf32> into tensor<15xf32>
          %313 = arith.divf %cst_4, %cst_4 : f16
          %splat_51 = tensor.splat %true_5 : tensor<3x5xi1>
          %314 = index.floordivs %310, %67
          %315 = vector.flat_transpose %86 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
          %expanded_52 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<9x3x1xi1> into tensor<9x3x1x1xi1>
          %c1_i64_53 = arith.constant 1 : i64
          linalg.yield %c1_i64_53 : i64
        }
      %275 = vector.create_mask %c5, %65 : vector<9x4xi1>
      %276 = memref.load %alloc_8[%c2, %c1] : memref<9x4xi1>
      %277 = affine.min affine_map<(d0) -> (d0 * 2)>(%rank)
      %278 = vector.bitcast %92 : vector<5x3x3xi32> to vector<5x3x3xi32>
      %279 = math.log %12 : tensor<3x5xf32>
      %generated = tensor.generate %c6, %c7 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %287 = vector.bitcast %21 : vector<5xf32> to vector<5xi32>
        memref.assume_alignment %alloc_9, 4 : memref<5x3x3xf32>
        %288 = index.sizeof
        %289 = vector.broadcast %c723310721_i64 : i64 to vector<3x5xi64>
        tensor.yield %c851740943_i32 : i32
      } : tensor<?x?x3xi32>
      %280 = math.log2 %cst : f16
      %281 = math.powf %extracted, %cst : f16
      %282 = vector.broadcast %true_5 : i1 to vector<1x1xi1>
      %283 = vector.outerproduct %86, %86, %282 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
      %284 = vector.flat_transpose %96 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %285 = vector.matrix_multiply %284, %96 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
      %286 = index.add %c4, %66
      scf.yield
    }
    case 2 {
      %271 = bufferization.clone %alloc_7 : memref<9x4xf16> to memref<9x4xf16>
      %272 = vector.create_mask %c1, %103, %114 : vector<5x3x3xi1>
      %273 = tensor.empty() : tensor<9x3x1xi1>
      %mapped_46 = linalg.map ins(%expanded : tensor<9x3x1xi1>) outs(%273 : tensor<9x3x1xi1>)
        (%in: i1) {
          memref.tensor_store %10, %alloc_6 : memref<3x5xi1>
          %283 = index.divs %c11, %c14
          %284 = math.round %9 : tensor<3x5xf32>
          %285 = vector.broadcast %true : i1 to vector<4xi1>
          %286 = vector.maskedload %alloc_15[%c1, %c0, %c2], %285, %285 : memref<5x3x3xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
          %287 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
          %288 = vector.outerproduct %21, %78, %287 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
          %289 = tensor.empty() : tensor<9x9xi16>
          %290 = linalg.matmul ins(%14, %transposed : tensor<9x4xi16>, tensor<4x9xi16>) outs(%289 : tensor<9x9xi16>) -> tensor<9x9xi16>
          %291 = math.exp2 %cst_0 : f32
          %292 = math.round %7 : tensor<9x4xf32>
          %rank_50 = tensor.rank %expanded_21 : tensor<4x9x1xi16>
          %293 = math.absi %17 : tensor<9x3xi1>
          %294 = math.sqrt %0 : tensor<3x5xf16>
          %295 = math.atan2 %2, %2 : tensor<9x3xf16>
          %296 = vector.load %alloc_7[%c2, %c0] : memref<9x4xf16>, vector<9x3xf16>
          %297 = math.tanh %0 : tensor<3x5xf16>
          %298 = index.maxs %c7, %64
          %299 = arith.shrui %c-30032_i16, %c-27483_i16 : i16
          %300 = index.mul %108, %c7
          %301 = vector.splat %67 : vector<9x3xindex>
          %302 = index.maxs %64, %c3
          %303 = arith.maxf %cst_2, %cst_4 : f16
          %304 = bufferization.to_memref %7 : memref<9x4xf32>
          %c431212612_i32 = arith.constant 431212612 : i32
          %splat_51 = tensor.splat %c791166266_i64 : tensor<9x3xi64>
          %splat_52 = tensor.splat %c1_i64 : tensor<3x5xi64>
          %collapsed_53 = tensor.collapse_shape %18 [[0, 1]] : tensor<4x9xi16> into tensor<36xi16>
          %305 = vector.flat_transpose %96 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
          %306 = math.atan2 %2, %2 : tensor<9x3xf16>
          affine.store %true, %alloc_16[%c14, %c1] : memref<9x3xi1>
          %307 = vector.load %alloc_18[%c5, %c2] : memref<9x4xi64>, vector<3x5xi64>
          %308 = arith.shrsi %c791166266_i64, %c791166266_i64 : i64
          %309 = tensor.empty() : tensor<3x5xi16>
          %310 = vector.broadcast %c-30032_i16 : i16 to vector<9x4xi16>
          %311 = vector.broadcast %true : i1 to vector<9x4xi1>
          %312 = vector.broadcast %c851740943_i32 : i32 to vector<9x4xi32>
          %313 = vector.gather %309[%114, %112] [%312], %311, %310 : tensor<3x5xi16>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi16> into vector<9x4xi16>
          %rank_54 = tensor.rank %7 : tensor<9x4xf32>
          %false = arith.constant false
          linalg.yield %false : i1
        }
      %extracted_47 = tensor.extract %13[%c2, %c2, %c0] : tensor<5x3x3xi1>
      bufferization.dealloc_tensor %11 : tensor<5x3x3xf32>
      %274 = math.ipowi %transposed, %18 : tensor<4x9xi16>
      %275 = math.ctpop %8 : tensor<9x4xi1>
      %276 = arith.andi %c-30032_i16, %c4811_i16 : i16
      %alloca = memref.alloca() : memref<9x4xi32>
      %277 = vector.broadcast %cst_0 : f32 to vector<3xf32>
      %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %69, %78, %277 : vector<3x5xf32>, vector<5xf32> into vector<3xf32>
      %279 = math.tan %extracted : f16
      %280 = vector.reduction <mul>, %78 : vector<5xf32> into f32
      %281 = vector.multi_reduction <add>, %21, %78 [] : vector<5xf32> to vector<5xf32>
      %splat_48 = tensor.splat %c-30032_i16 : tensor<9x4xi16>
      %alloc_49 = memref.alloc() : memref<3x5xi16>
      %282 = math.cttz %4 : tensor<9x3xi32>
      scf.yield
    }
    case 3 {
      %271 = math.round %9 : tensor<3x5xf32>
      %272 = arith.remf %extracted, %cst_2 : f16
      %273 = tensor.empty() : tensor<9x3xf32>
      %274 = vector.gather %273[%c3, %33] [%36], %35, %40 : tensor<9x3xf32>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xf32> into vector<9x3xf32>
      %275 = math.tanh %9 : tensor<3x5xf32>
      %276 = math.tan %11 : tensor<5x3x3xf32>
      %277 = memref.load %alloc_20[%c1, %c4] : memref<3x5xf16>
      %278 = math.log %12 : tensor<3x5xf32>
      %279 = math.cos %0 : tensor<3x5xf16>
      %280 = scf.if %true_5 -> (i16) {
        %true_46 = arith.constant true
        %false = arith.constant false
        %285 = vector.transfer_read %13[%64, %c13, %c7], %false {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<5x3x3xi1>, vector<5x9xi1>
        %286 = index.mul %c4, %33
        %287 = index.maxu %114, %c0
        %288 = index.ceildivs %67, %c8
        %extracted_47 = tensor.extract %transposed[%c0, %c0] : tensor<4x9xi16>
        %289 = math.tan %splat : tensor<5x3x3xf16>
        %290 = arith.minui %true_46, %true : i1
        %expanded_48 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<9x3x1xi1> into tensor<9x3x1x1xi1>
        scf.yield %c-30032_i16 : i16
      } else {
        %splat_46 = tensor.splat %cst_1 : tensor<9x4xf32>
        %285 = math.ctpop %c-30032_i16 : i16
        %286 = vector.broadcast %c1063701009_i64 : i64 to vector<5x3x3xi64>
        %287 = vector.shuffle %34, %37 [0, 3, 4, 6, 8, 10, 13, 14, 15, 17] : vector<9x3xf32>, vector<9x3xf32>
        %288 = bufferization.clone %31 : memref<3x5xi16> to memref<3x5xi16>
        %289 = vector.bitcast %99 : vector<9x4xf32> to vector<9x4xi32>
        %splat_47 = tensor.splat %extracted : tensor<9x3xf16>
        %290 = math.floor %2 : tensor<9x3xf16>
        scf.yield %c-30032_i16 : i16
      }
      %281 = arith.remsi %c4811_i16, %c4811_i16 : i16
      %282 = vector.flat_transpose %78 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      scf.if %true_5 {
        %285 = affine.apply affine_map<(d0, d1, d2) -> ((d0 floordiv 64) * -32 + d0)>(%c15, %c3, %c7)
        memref.store %cst_4, %alloc_7[%c8, %c2] : memref<9x4xf16>
        %286 = math.sqrt %2 : tensor<9x3xf16>
        %287 = affine.min affine_map<(d0, d1, d2) -> (-(d2 mod 16), -(d2 mod 16), (((d0 ceildiv 128) ceildiv 4) * 16) mod 64)>(%c10, %67, %103)
        vector.print %99 : vector<9x4xf32>
        %288 = vector.multi_reduction <minf>, %40, %cst_1 [0, 1] : vector<9x3xf32> to f32
        %289 = math.fma %11, %11, %11 : tensor<5x3x3xf32>
        %290 = vector.matrix_multiply %21, %282 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
      } else {
        %285 = index.divu %c15, %65
        %286 = vector.shuffle %36, %36 [1, 2, 3, 4, 5, 7, 9, 11, 12, 17] : vector<9x3xi32>, vector<9x3xi32>
        %287 = arith.cmpf ult, %cst_1, %cst_1 : f32
        %288 = math.rsqrt %cst_2 : f16
        %289 = vector.extract_strided_slice %99 {offsets = [6], sizes = [2], strides = [1]} : vector<9x4xf32> to vector<2x4xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %69, %21 {inclusive = false, reduction_dim = 0 : i64} : vector<3x5xf32>, vector<5xf32>
        %290 = bufferization.to_memref %9 : memref<3x5xf32>
        %291 = vector.broadcast %c8 : index to vector<3xindex>
        %292 = vector.broadcast %true_5 : i1 to vector<3xi1>
        %293 = vector.broadcast %cst_4 : f16 to vector<3xf16>
        vector.scatter %alloc[%c3, %c2] [%291], %292, %293 : memref<9x4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      }
      bufferization.dealloc_tensor %3 : tensor<9x3xi1>
      %c1328383385_i64 = arith.constant 1328383385 : i64
      %283 = math.cttz %4 : tensor<9x3xi32>
      %284 = arith.muli %c851740943_i32, %c851740943_i32 : i32
      scf.yield
    }
    case 4 {
      %271 = arith.shrsi %c1063701009_i64, %c1_i64 : i64
      %272 = arith.andi %c723310721_i64, %c1063701009_i64 : i64
      scf.if %true_5 {
        %284 = tensor.empty() : tensor<9x5xi32>
        %285 = linalg.matmul ins(%4, %38 : tensor<9x3xi32>, tensor<3x5xi32>) outs(%284 : tensor<9x5xi32>) -> tensor<9x5xi32>
        %286 = vector.broadcast %c6 : index to vector<5xindex>
        vector.scatter %alloc_9[%c0, %c0, %c1] [%286], %96, %78 : memref<5x3x3xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        %287 = vector.create_mask %64, %c0 : vector<9x4xi1>
        %288 = math.tanh %cst_0 : f32
        %289 = bufferization.to_memref %38 : memref<3x5xi32>
        %290 = index.maxu %c5, %c5
        %291 = vector.load %alloc_6[%c1, %c1] : memref<3x5xi1>, vector<3x5xi1>
        %expanded_47 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<5x3x3xi1> into tensor<5x3x3x1xi1>
      } else {
        %284 = arith.minui %c791166266_i64, %c723310721_i64 : i64
        %285 = memref.atomic_rmw minf %cst_0, %alloc_14[%c3, %c2, %c2] : (f32, memref<5x3x3xf32>) -> f32
        %286 = arith.addf %cst_3, %cst_0 : f32
        %287 = math.log %7 : tensor<9x4xf32>
        %288 = arith.remf %cst_1, %cst_3 : f32
        %c218967622_i64 = arith.constant 218967622 : i64
        %289 = arith.shrsi %c851740943_i32, %c851740943_i32 : i32
        %290 = index.castu %c791166266_i64 : i64 to index
      }
      %273 = arith.addi %c-30032_i16, %c-30032_i16 : i16
      %274 = math.cos %11 : tensor<5x3x3xf32>
      %275 = vector.load %alloc_17[%c5, %c0] : memref<9x4xi1>, vector<9x3xi1>
      %inserted_46 = tensor.insert %c-27483_i16 into %18[%c1, %c6] : tensor<4x9xi16>
      %276 = math.exp2 %12 : tensor<3x5xf32>
      %277 = arith.shrsi %c-27483_i16, %c-30032_i16 : i16
      %alloca = memref.alloca() : memref<5x3x3xf16>
      %278 = index.ceildivs %c4, %64
      %279 = math.atan2 %cst, %cst : f16
      %280 = vector.shuffle %40, %37 [1, 2, 5, 6, 7, 8, 10, 13, 14, 16] : vector<9x3xf32>, vector<9x3xf32>
      %281 = math.copysign %cst, %cst : f16
      %282 = arith.remf %cst_2, %extracted : f16
      %283 = index.maxu %64, %c12
      scf.yield
    }
    default {
      scf.if %true {
        %285 = tensor.empty(%c1) : tensor<9x?xi16>
        %286 = math.fpowi %12, %38 : tensor<3x5xf32>, tensor<3x5xi32>
        %287 = index.floordivs %c4, %112
        %288 = math.log1p %cst_1 : f32
        %inserted_49 = tensor.insert %c4811_i16 into %14[%c0, %c1] : tensor<9x4xi16>
        %alloc_50 = memref.alloc() : memref<5x3xf32>
        %289 = tensor.empty() : tensor<3x3xf32>
        %290 = linalg.matmul ins(%9, %alloc_50 : tensor<3x5xf32>, memref<5x3xf32>) outs(%289 : tensor<3x3xf32>) -> tensor<3x3xf32>
        bufferization.dealloc_tensor %14 : tensor<9x4xi16>
        %291 = arith.shrui %c1_i64, %c1_i64 : i64
      }
      %271 = tensor.empty(%c6) : tensor<?x5xi32>
      %272 = bufferization.clone %alloc_20 : memref<3x5xf16> to memref<3x5xf16>
      %273 = tensor.empty() : tensor<9x4xi64>
      %274 = arith.andi %c-30032_i16, %c-30032_i16 : i16
      %275 = arith.addf %cst_3, %cst_1 : f32
      %276 = math.absf %2 : tensor<9x3xf16>
      %277 = math.cos %0 : tensor<3x5xf16>
      %278 = vector.load %alloc_13[%c7, %c2] : memref<9x3xf32>, vector<9x4xf32>
      %rank_46 = tensor.rank %13 : tensor<5x3x3xi1>
      %splat_47 = tensor.splat %cst_2 : tensor<9x3xf16>
      %279 = arith.shrui %c1063701009_i64, %c1_i64 : i64
      %280 = vector.broadcast %true : i1 to vector<9x4xi1>
      %281 = vector.broadcast %c851740943_i32 : i32 to vector<9x4xi32>
      %282 = vector.gather %alloc_17[%rank, %c14] [%281], %280, %280 : memref<9x4xi1>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi1> into vector<9x4xi1>
      %283 = math.tanh %9 : tensor<3x5xf32>
      %inserted_48 = tensor.insert %c4811_i16 into %transposed[%c3, %c0] : tensor<4x9xi16>
      %284 = arith.minui %c-30032_i16, %c4811_i16 : i16
    }
    %128 = math.tan %cst_0 : f32
    memref.copy %79, %alloc_20 : memref<3x5xf16> to memref<3x5xf16>
    %129 = index.divu %c5, %c2
    %130 = vector.broadcast %cst_0 : f32 to vector<9x4xf32>
    %131 = vector.fma %130, %130, %100 : vector<9x4xf32>
    %132 = math.tanh %cst : f16
    %133 = index.sizeof
    %134 = math.sqrt %cst : f16
    %135 = index.sizeof
    affine.for %arg3 = 0 to 51 {
    }
    %136 = vector.broadcast %cst_0 : f32 to vector<4xf32>
    %137 = vector.insert %136, %130 [3] : vector<4xf32> into vector<9x4xf32>
    %138 = bufferization.clone %alloc_7 : memref<9x4xf16> to memref<9x4xf16>
    %139 = index.mul %c7, %71
    bufferization.dealloc_tensor %splat : tensor<5x3x3xf16>
    %140 = math.rsqrt %0 : tensor<3x5xf16>
    %141 = math.round %splat : tensor<5x3x3xf16>
    %142 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 4, ((d0 + d1) mod 2) mod 4 + d0 ceildiv 128 - 2, d0 + d1)>(%c12, %c15)
    %143 = math.log10 %9 : tensor<3x5xf32>
    %144 = bufferization.clone %138 : memref<9x4xf16> to memref<9x4xf16>
    %145 = index.ceildivu %33, %142
    %146 = arith.remui %c1_i64, %c723310721_i64 : i64
    %147 = arith.muli %c1063701009_i64, %c791166266_i64 : i64
    %148 = arith.addf %cst, %cst : f16
    %149 = vector.matrix_multiply %136, %78 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<4xf32>, vector<5xf32>) -> vector<20xf32>
    %150 = vector.broadcast %true : i1 to vector<4xi1>
    %151 = vector.maskedload %alloc_15[%c0, %c0, %c2], %150, %150 : memref<5x3x3xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %152 = arith.negf %cst_1 : f32
    %153 = math.ipowi %1, %4 : tensor<9x3xi32>
    %154 = tensor.empty() : tensor<5x3x3xi32>
    %155 = math.fpowi %splat, %154 : tensor<5x3x3xf16>, tensor<5x3x3xi32>
    %156 = math.cos %cst_1 : f32
    %157 = arith.ori %c4811_i16, %c-27483_i16 : i16
    %158 = arith.shli %true, %true_5 : i1
    %159 = vector.broadcast %cst_3 : f32 to vector<9x4xf32>
    %160 = vector.fma %159, %100, %130 : vector<9x4xf32>
    %161 = math.exp2 %cst_4 : f16
    %162 = memref.atomic_rmw mins %c-27483_i16, %alloc_11[%c2, %c4] : (i16, memref<3x5xi16>) -> i16
    %163 = vector.flat_transpose %151 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %inserted_26 = tensor.insert %cst_0 into %12[%c2, %c4] : tensor<3x5xf32>
    %164 = math.sqrt %cst_0 : f32
    %165 = arith.shrui %true_5, %true_5 : i1
    %166 = math.atan2 %cst_1, %cst_1 : f32
    %167 = index.maxu %67, %c11
    %168 = math.round %splat : tensor<5x3x3xf16>
    %169 = tensor.empty() : tensor<9x5xi1>
    %170 = linalg.matmul ins(%15, %10 : tensor<9x3xi1>, tensor<3x5xi1>) outs(%169 : tensor<9x5xi1>) -> tensor<9x5xi1>
    bufferization.dealloc_tensor %splat : tensor<5x3x3xf16>
    %rank_27 = tensor.rank %2 : tensor<9x3xf16>
    %171 = vector.broadcast %c851740943_i32 : i32 to vector<5x3x3xi32>
    %collapsed = tensor.collapse_shape %17 [[0, 1]] : tensor<9x3xi1> into tensor<27xi1>
    %172 = math.cttz %3 : tensor<9x3xi1>
    %173 = math.sqrt %cst_3 : f32
    %174 = index.add %112, %c0
    %175 = math.cos %7 : tensor<9x4xf32>
    %true_28 = arith.constant true
    %176 = arith.shli %c-30032_i16, %c4811_i16 : i16
    %177 = vector.broadcast %cst_0 : f32 to vector<20x20xf32>
    %178 = vector.outerproduct %149, %149, %177 {kind = #vector.kind<add>} : vector<20xf32>, vector<20xf32>
    %179 = math.cttz %splat_22 : tensor<9x3xi64>
    %180 = vector.create_mask %129, %c5 : vector<3x5xi1>
    %181 = tensor.empty() : tensor<5x3x3xi1>
    %mapped = linalg.map ins(%13, %alloc_15 : tensor<5x3x3xi1>, memref<5x3x3xi1>) outs(%181 : tensor<5x3x3xi1>)
      (%in: i1, %in_46: i1) {
        %271 = index.maxs %c5, %c13
        %272 = math.exp %0 : tensor<3x5xf16>
        %273 = vector.broadcast %c-30032_i16 : i16 to vector<9x3xi16>
        %extracted_47 = tensor.extract %13[%c3, %c0, %c0] : tensor<5x3x3xi1>
        %274 = math.round %cst_4 : f16
        %275 = math.exp2 %9 : tensor<3x5xf32>
        %276 = affine.if affine_set<(d0, d1, d2) : (d2 * 2 + 32 >= 0, d0 == 0, (d1 floordiv 128) mod 2 == 0, (d2 * 2) floordiv 16 + 2 >= 0)>(%c5, %c1, %c1) -> memref<5x3x3xf16> {
          %299 = math.sqrt %extracted : f16
          %300 = arith.shrsi %in_46, %true_5 : i1
          %splat_53 = tensor.splat %in_46 : tensor<5x3x3xi1>
          %301 = index.sizeof
          %302 = arith.maxui %in, %extracted_47 : i1
          %303 = bufferization.to_memref %17 : memref<9x3xi1>
          %304 = index.castu %c3 : index to i32
          %305 = vector.broadcast %c3 : index to vector<4xindex>
          vector.scatter %alloc_17[%c3, %c3] [%305], %163, %151 : memref<9x4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
          %alloc_54 = memref.alloc() : memref<5x3x3xf16>
          affine.yield %alloc_54 : memref<5x3x3xf16>
        } else {
          %299 = math.fma %0, %0, %0 : tensor<3x5xf16>
          %300 = memref.load %alloc_8[%c1, %c2] : memref<9x4xi1>
          %301 = arith.xori %extracted_47, %true : i1
          %302 = math.exp %12 : tensor<3x5xf32>
          %303 = vector.extract_strided_slice %96 {offsets = [1], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
          %304 = index.mul %c1, %c7
          %305 = bufferization.clone %32 : memref<9x4xf16> to memref<9x4xf16>
          %inserted_53 = tensor.insert %cst_0 into %9[%c2, %c4] : tensor<3x5xf32>
          %alloc_54 = memref.alloc() : memref<5x3x3xf16>
          affine.yield %alloc_54 : memref<5x3x3xf16>
        }
        %277 = math.tanh %2 : tensor<9x3xf16>
        %278 = arith.remui %in_46, %in_46 : i1
        %279 = bufferization.clone %alloc_8 : memref<9x4xi1> to memref<9x4xi1>
        %280 = arith.shrui %c791166266_i64, %c1063701009_i64 : i64
        %false = arith.constant false
        %false_48 = arith.constant false
        %281 = vector.transfer_read %15[%c13, %c11], %false_48 : tensor<9x3xi1>, vector<i1>
        %282 = tensor.empty() : tensor<9x5xi1>
        %283 = linalg.matmul ins(%15, %10 : tensor<9x3xi1>, tensor<3x5xi1>) outs(%282 : tensor<9x5xi1>) -> tensor<9x5xi1>
        %284 = math.sqrt %2 : tensor<9x3xf16>
        %285 = vector.broadcast %c1063701009_i64 : i64 to vector<5x3x3xi64>
        %286 = vector.broadcast %false : i1 to vector<9x3xi1>
        %287 = math.tan %7 : tensor<9x4xf32>
        %288 = arith.mulf %extracted, %cst_4 : f16
        %289 = bufferization.clone %alloc_6 : memref<3x5xi1> to memref<3x5xi1>
        memref.tensor_store %89, %alloc_18 : memref<9x4xi64>
        %splat_49 = tensor.splat %c791166266_i64 : tensor<3x5xi64>
        %290 = tensor.empty() : tensor<9x9xi16>
        %291 = linalg.matmul ins(%14, %18 : tensor<9x4xi16>, tensor<4x9xi16>) outs(%290 : tensor<9x9xi16>) -> tensor<9x9xi16>
        %292 = math.log %12 : tensor<3x5xf32>
        %293 = vector.splat %cst_4 : vector<3x5xf16>
        %294 = index.divu %142, %65
        %295 = arith.addf %cst_2, %cst : f16
        %inserted_50 = tensor.insert %c-27483_i16 into %14[%c7, %c0] : tensor<9x4xi16>
        %cst_51 = arith.constant 4.387200e+04 : f16
        %296 = arith.muli %in, %extracted_47 : i1
        %297 = index.maxu %c9, %c15
        affine.store %cst_3, %alloc_13[%c12, %c7] : memref<9x3xf32>
        %298 = math.fma %12, %12, %9 : tensor<3x5xf32>
        %true_52 = arith.constant true
        linalg.yield %true_52 : i1
      }
    %182 = scf.while (%arg3 = %true) : (i1) -> i1 {
      %271 = math.tan %7 : tensor<9x4xf32>
      %272 = arith.remui %true, %true : i1
      %273 = scf.while (%arg4 = %c851740943_i32) : (i32) -> i32 {
        %278 = vector.broadcast %cst_0 : f32 to vector<5x3x3xf32>
        %279 = vector.fma %278, %278, %278 : vector<5x3x3xf32>
        %280 = arith.addf %cst, %cst_4 : f16
        %281 = arith.minui %c791166266_i64, %c1989728629_i64 : i64
        %282 = vector.extract %130[3] : vector<9x4xf32>
        %283 = arith.shrsi %c723310721_i64, %c1989728629_i64 : i64
        %284 = arith.negf %cst_2 : f16
        %285 = math.copysign %cst_0, %cst_1 : f32
        %286 = index.mul %142, %rank_27
        scf.condition(%true_5) %c851740943_i32 : i32
      } do {
      ^bb0(%arg4: i32):
        %278 = vector.broadcast %true_5 : i1 to vector<3xi1>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %180, %96, %278 : vector<3x5xi1>, vector<5xi1> into vector<3xi1>
        %alloc_47 = memref.alloc() : memref<3x5xi64>
        memref.tensor_store %47, %alloc_47 : memref<3x5xi64>
        memref.tensor_store %15, %alloc_16 : memref<9x3xi1>
        %280 = arith.remui %c1063701009_i64, %c1063701009_i64 : i64
        %281 = math.tan %cst_4 : f16
        %282 = vector.broadcast %cst_0 : f32 to vector<9x4xf32>
        %283 = vector.fma %282, %160, %159 : vector<9x4xf32>
        %284 = math.round %2 : tensor<9x3xf16>
        %285 = vector.multi_reduction <mul>, %37, %cst_1 [0, 1] : vector<9x3xf32> to f32
        %286 = bufferization.clone %alloc_14 : memref<5x3x3xf32> to memref<5x3x3xf32>
        %287 = math.exp2 %7 : tensor<9x4xf32>
        %288 = arith.remf %extracted, %extracted : f16
        %289 = arith.shrui %c791166266_i64, %c1063701009_i64 : i64
        %false = arith.constant false
        %290 = vector.transfer_read %alloc_6[%135, %65], %false : memref<3x5xi1>, vector<i1>
        %291 = vector.broadcast %cst_3 : f32 to vector<3xf32>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %21, %69, %291 : vector<5xf32>, vector<3x5xf32> into vector<3xf32>
        %293 = tensor.empty() : tensor<9x4xi32>
        %294 = vector.broadcast %arg4 : i32 to vector<3x5xi32>
        %295 = vector.gather %293[%71, %135] [%294], %180, %294 : tensor<9x4xi32>, vector<3x5xi32>, vector<3x5xi1>, vector<3x5xi32> into vector<3x5xi32>
        %296 = arith.remf %extracted, %cst_2 : f16
        scf.yield %arg4 : i32
      }
      %274 = vector.multi_reduction <minf>, %41, %extracted [0, 1] : vector<9x4xf16> to f16
      %splat_46 = tensor.splat %arg3 : tensor<9x4xi1>
      %275 = index.floordivs %rank_27, %c14
      %276 = vector.shuffle %160, %160 [2, 4, 7, 8, 10, 11, 12, 13, 15, 17] : vector<9x4xf32>, vector<9x4xf32>
      %277 = vector.extract %151[0] : vector<4xi1>
      scf.condition(%arg3) %arg3 : i1
    } do {
    ^bb0(%arg3: i1):
      %271 = index.castu %c14 : index to i32
      %272 = vector.broadcast %c-30032_i16 : i16 to vector<9xi16>
      %273 = vector.broadcast %true : i1 to vector<9xi1>
      %274 = vector.maskedload %31[%c2, %c0], %273, %272 : memref<3x5xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %275 = arith.cmpi sgt, %arg3, %arg3 : i1
      %276 = math.fpowi %extracted, %c851740943_i32 : f16, i32
      %277 = math.fma %2, %2, %2 : tensor<9x3xf16>
      %278 = math.copysign %extracted, %cst : f16
      %279 = math.round %12 : tensor<3x5xf32>
      %true_46 = arith.constant true
      %280 = vector.transfer_read %181[%c2, %65, %c12], %true_46 : tensor<5x3x3xi1>, vector<4x9xi1>
      %281 = math.tan %0 : tensor<3x5xf16>
      %282 = arith.shrsi %c1_i64, %c723310721_i64 : i64
      %283 = math.fpowi %11, %154 : tensor<5x3x3xf32>, tensor<5x3x3xi32>
      %284 = arith.addi %c1989728629_i64, %c1989728629_i64 : i64
      affine.store %cst, %32[%c5, %c5] : memref<9x4xf16>
      %285 = vector.splat %rank : vector<9x4xindex>
      %286 = index.floordivs %135, %rank_27
      vector.print %149 : vector<20xf32>
      scf.yield %true_5 : i1
    }
    %183 = arith.muli %c791166266_i64, %c1989728629_i64 : i64
    %alloc_29 = memref.alloc() : memref<i16>
    memref.tensor_store %23, %alloc_29 : memref<i16>
    %alloc_30 = memref.alloc() : memref<5xi64>
    %184 = memref.realloc %alloc_30 : memref<5xi64> to memref<3xi64>
    %185 = vector.extract %171[4, 0] : vector<5x3x3xi32>
    %186 = vector.load %alloc_12[%c1, %c1] : memref<3x5xf16>, vector<9x4xf16>
    %187 = vector.broadcast %extracted : f16 to vector<4x4xf16>
    %188 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %41, %186, %187 : vector<9x4xf16>, vector<9x4xf16> into vector<4x4xf16>
    %189 = index.mul %167, %c5
    %190 = index.maxu %33, %108
    %splat_31 = tensor.splat %c-30032_i16 : tensor<3x5xi16>
    %191 = math.sqrt %0 : tensor<3x5xf16>
    %192 = arith.remf %cst, %cst : f16
    %193 = vector.broadcast %true : i1 to vector<3xi1>
    %194 = vector.maskedload %alloc_6[%c0, %c0], %193, %193 : memref<3x5xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %195 = math.tan %7 : tensor<9x4xf32>
    %196 = arith.remui %c-30032_i16, %c-30032_i16 : i16
    %197 = tensor.empty() : tensor<5x3x3xi1>
    %mapped_32 = linalg.map ins(%181 : tensor<5x3x3xi1>) outs(%197 : tensor<5x3x3xi1>)
      (%in: i1) {
        %271 = math.powf %cst_2, %cst : f16
        %272 = tensor.empty() : tensor<9x4xi32>
        %273 = math.fpowi %7, %272 : tensor<9x4xf32>, tensor<9x4xi32>
        %274 = math.powf %cst_3, %cst_0 : f32
        %275 = math.log10 %11 : tensor<5x3x3xf32>
        %276 = vector.broadcast %true_5 : i1 to vector<9xi1>
        %277 = vector.maskedload %alloc_17[%c2, %c1], %276, %276 : memref<9x4xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %278 = affine.min affine_map<(d0, d1, d2) -> (d1 ceildiv 128 + d1, d2, d1 ceildiv 128 + d1, d0)>(%189, %c7, %c2)
        %279 = vector.matrix_multiply %163, %277 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 9 : i32} : (vector<4xi1>, vector<9xi1>) -> vector<36xi1>
        %280 = vector.multi_reduction <minui>, %194, %true [0] : vector<3xi1> to i1
        %281 = vector.flat_transpose %149 {columns = 4 : i32, rows = 5 : i32} : vector<20xf32> -> vector<20xf32>
        %282 = bufferization.to_memref %11 : memref<5x3x3xf32>
        %extracted_46 = tensor.extract %3[%c6, %c0] : tensor<9x3xi1>
        %283 = math.powf %2, %2 : tensor<9x3xf16>
        %284 = index.maxu %114, %c2
        affine.store %extracted, %144[%c12, %c6] : memref<9x4xf16>
        %285 = vector.gather %8[%71, %108] [%171], %91, %91 : tensor<9x4xi1>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi1> into vector<5x3x3xi1>
        %inserted_47 = tensor.insert %cst_4 into %splat[%c4, %c1, %c0] : tensor<5x3x3xf16>
        %286 = arith.negf %cst_0 : f32
        %287 = math.copysign %7, %7 : tensor<9x4xf32>
        %288 = index.divu %c5, %129
        %289 = tensor.empty() : tensor<5x3x3xf32>
        %mapped_48 = linalg.map ins(%alloc_10 : memref<5x3x3xf32>) outs(%289 : tensor<5x3x3xf32>)
          (%in_49: f32) {
            %302 = math.atan2 %in_49, %in_49 : f32
            %splat_50 = tensor.splat %c723310721_i64 : tensor<9x3xi64>
            %303 = vector.extract %34[2] : vector<9x3xf32>
            %304 = arith.muli %280, %extracted_46 : i1
            memref.store %c791166266_i64, %alloc_18[%c3, %c0] : memref<9x4xi64>
            %305 = arith.minui %true, %280 : i1
            %306 = vector.shuffle %91, %91 [0, 1, 3, 6, 9] : vector<5x3x3xi1>, vector<5x3x3xi1>
            %307 = index.maxu %c9, %133
            %308 = index.divu %c2, %142
            %309 = arith.divsi %true_5, %280 : i1
            %310 = arith.remsi %c1063701009_i64, %c791166266_i64 : i64
            %311 = math.ctpop %181 : tensor<5x3x3xi1>
            memref.store %cst_1, %alloc_9[%c0, %c1, %c2] : memref<5x3x3xf32>
            %312 = arith.remui %c791166266_i64, %c1063701009_i64 : i64
            %313 = index.divu %c8, %278
            %314 = math.ceil %cst_0 : f32
            %315 = vector.extract_strided_slice %41 {offsets = [4], sizes = [2], strides = [1]} : vector<9x4xf16> to vector<2x4xf16>
            %316 = math.tan %2 : tensor<9x3xf16>
            %317 = index.ceildivs %71, %c7
            %318 = math.tan %2 : tensor<9x3xf16>
            %319 = arith.remf %extracted, %extracted : f16
            %320 = vector.flat_transpose %194 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
            %alloc_51 = memref.alloc() : memref<5x3x3xi16>
            %321 = vector.broadcast %c-27483_i16 : i16 to vector<9x4xi16>
            %322 = vector.broadcast %true : i1 to vector<9x4xi1>
            %323 = vector.broadcast %c851740943_i32 : i32 to vector<9x4xi32>
            %324 = vector.gather %alloc_51[%308, %33, %c13] [%323], %322, %321 : memref<5x3x3xi16>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi16> into vector<9x4xi16>
            %325 = arith.negf %extracted : f16
            %326 = math.ctlz %c-27483_i16 : i16
            %327 = arith.cmpf ult, %cst_0, %in_49 : f32
            vector.print %303 : vector<3xf32>
            %328 = vector.flat_transpose %78 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
            %329 = vector.broadcast %c-27483_i16 : i16 to vector<3xi16>
            %330 = vector.maskedload %31[%c2, %c0], %320, %329 : memref<3x5xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
            vector.print %323 : vector<9x4xi32>
            %331 = index.sub %33, %133
            %332 = bufferization.to_memref %6 : memref<9x3xi16>
            %cst_52 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_52 : f32
          }
        %290 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %37, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<9x3xf32>, vector<9xf32>
        %291 = math.fpowi %0, %38 : tensor<3x5xf16>, tensor<3x5xi32>
        %292 = math.fma %cst_1, %cst_0, %cst_0 : f32
        %293 = arith.mulf %cst_3, %cst_0 : f32
        %294 = arith.remui %true, %in : i1
        %295 = math.fma %9, %12, %12 : tensor<3x5xf32>
        %296 = arith.andi %c4811_i16, %c4811_i16 : i16
        %297 = arith.minui %c1063701009_i64, %c723310721_i64 : i64
        %298 = scf.if %extracted_46 -> (memref<3x5xi1>) {
          %302 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - d0, d0 floordiv 2)>(%65, %135, %c15, %66)
          affine.store %cst_1, %alloc_10[%c15, %c0, %c14] : memref<5x3x3xf32>
          %303 = vector.insert %136, %130 [4] : vector<4xf32> into vector<9x4xf32>
          %304 = math.fpowi %12, %38 : tensor<3x5xf32>, tensor<3x5xi32>
          bufferization.dealloc_tensor %0 : tensor<3x5xf16>
          %305 = math.atan2 %2, %2 : tensor<9x3xf16>
          %inserted_49 = tensor.insert %extracted_46 into %8[%c5, %c2] : tensor<9x4xi1>
          %306 = bufferization.to_memref %19 : memref<9xi16>
          scf.yield %alloc_6 : memref<3x5xi1>
        } else {
          %302 = math.absf %0 : tensor<3x5xf16>
          %303 = math.ipowi %14, %14 : tensor<9x4xi16>
          %304 = math.floor %0 : tensor<3x5xf16>
          bufferization.dealloc_tensor %expanded : tensor<9x3x1xi1>
          memref.assume_alignment %144, 2 : memref<9x4xf16>
          %305 = math.tan %12 : tensor<3x5xf32>
          %306 = vector.transpose %136, [0] : vector<4xf32> to vector<4xf32>
          %307 = arith.mulf %extracted, %cst : f16
          scf.yield %alloc_6 : memref<3x5xi1>
        }
        %299 = math.exp %2 : tensor<9x3xf16>
        %300 = arith.divf %cst_3, %cst_3 : f32
        %301 = math.exp %2 : tensor<9x3xf16>
        %false = arith.constant false
        linalg.yield %false : i1
      }
    %198 = math.ceil %9 : tensor<3x5xf32>
    %199 = vector.broadcast %c851740943_i32 : i32 to vector<5x3xi32>
    %200 = vector.multi_reduction <or>, %171, %199 [1] : vector<5x3x3xi32> to vector<5x3xi32>
    %201 = arith.minsi %c1989728629_i64, %c1989728629_i64 : i64
    %202 = math.round %cst_1 : f32
    %203 = tensor.empty() : tensor<9x4xi32>
    %204 = arith.muli %c4811_i16, %c4811_i16 : i16
    %rank_33 = tensor.rank %4 : tensor<9x3xi32>
    %205 = vector.load %32[%c2, %c1] : memref<9x4xf16>, vector<3x5xf16>
    %206 = arith.remf %cst_3, %cst_0 : f32
    %207 = index.floordivs %189, %c6
    %208 = arith.maxui %c-27483_i16, %c4811_i16 : i16
    %209 = memref.load %alloc_16[%c5, %c1] : memref<9x3xi1>
    %210 = arith.shli %c723310721_i64, %c1063701009_i64 : i64
    %alloc_34 = memref.alloc() : memref<9xi16>
    memref.tensor_store %reduced, %alloc_34 : memref<9xi16>
    %splat_35 = tensor.splat %c-30032_i16 : tensor<9x3xi16>
    affine.store %cst_0, %alloc_10[%c15, %c7, %c3] : memref<5x3x3xf32>
    %211 = tensor.empty() : tensor<5x3x3xf16>
    %mapped_36 = linalg.map ins(%splat, %splat, %splat : tensor<5x3x3xf16>, tensor<5x3x3xf16>, tensor<5x3x3xf16>) outs(%211 : tensor<5x3x3xf16>)
      (%in: f16, %in_46: f16, %in_47: f16) {
        %271 = tensor.empty() : tensor<9x3xi16>
        %272 = math.fma %0, %0, %0 : tensor<3x5xf16>
        %273 = index.sizeof
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %274 = vector.transfer_read %alloc_11[%c12, %c14], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<3x5xi16>, vector<4xi16>
        %275 = index.floordivs %c1, %c5
        %276 = arith.maxf %in_47, %in_47 : f16
        %277 = arith.andi %c1_i16, %c-30032_i16 : i16
        %false = arith.constant false
        %false_48 = arith.constant false
        %278 = vector.transfer_read %3[%174, %65], %false_48 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<9x3xi1>, vector<5xi1>
        %279 = math.round %12 : tensor<3x5xf32>
        %280 = index.mul %c7, %112
        %281 = vector.extract %205[0] : vector<3x5xf16>
        %282 = arith.remf %cst, %in_47 : f16
        %splat_49 = tensor.splat %in_46 : tensor<9x3xf16>
        %splat_50 = tensor.splat %c1989728629_i64 : tensor<9x4xi64>
        %283 = vector.extract %37[4] : vector<9x3xf32>
        %284 = index.maxu %c10, %145
        %285 = vector.broadcast %true_5 : i1 to vector<3xi1>
        %286 = vector.transfer_write %285, %8[%71, %107] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<9x4xi1>
        %287 = vector.broadcast %c1_i64 : i64 to vector<5x3x3xi64>
        %288 = vector.broadcast %cst_3 : f32 to vector<9xf32>
        %dest, %accumulated_value = vector.scan <mul>, %37, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<9x3xf32>, vector<9xf32>
        %alloca = memref.alloca() : memref<5x3x3xi64>
        %289 = math.log2 %cst_3 : f32
        %290 = math.log1p %extracted : f16
        %291 = math.sqrt %extracted : f16
        %292 = arith.minui %c4811_i16, %c-30032_i16 : i16
        %293 = math.ipowi %c1_i16, %c-30032_i16 : i16
        %294 = bufferization.clone %alloc_20 : memref<3x5xf16> to memref<3x5xf16>
        %295 = math.round %9 : tensor<3x5xf32>
        %296 = arith.shrsi %c851740943_i32, %c851740943_i32 : i32
        %297 = math.floor %9 : tensor<3x5xf32>
        %298 = math.fpowi %in_46, %c851740943_i32 : f16, i32
        %299 = math.tan %cst : f16
        %300 = tensor.empty() : tensor<9x3xi1>
        %cst_51 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_51 : f16
      }
    memref.store %c791166266_i64, %alloc_19[%c1, %c1] : memref<9x3xi64>
    %212 = math.roundeven %cst_0 : f32
    %213 = math.sqrt %7 : tensor<9x4xf32>
    %rank_37 = tensor.rank %splat : tensor<5x3x3xf16>
    bufferization.dealloc_tensor %splat_22 : tensor<9x3xi64>
    %214 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + d0 + d2 + 32, d1 mod 32 + d3, (d1 mod 32 + d3) floordiv 16, d1 + 4)>(%rank_33, %108, %c12, %190)
    %215 = scf.if %true -> (memref<5x3x3xi1>) {
      %271 = arith.addi %c-27483_i16, %c-27483_i16 : i16
      %272 = arith.andi %c-27483_i16, %c-27483_i16 : i16
      %cst_46 = arith.constant 1.000000e+00 : f32
      %273 = vector.transfer_read %126[%rank_33, %214, %190], %cst_46 : memref<5x3x3xf32>, vector<5x3xf32>
      %splat_47 = tensor.splat %cst_46 : tensor<9x4xf32>
      %274 = bufferization.clone %alloc_15 : memref<5x3x3xi1> to memref<5x3x3xi1>
      %275 = arith.negf %cst_1 : f32
      %276 = arith.shrui %c1063701009_i64, %c1989728629_i64 : i64
      %277 = scf.if %true_5 -> (memref<3x5xi1>) {
        %278 = math.log10 %splat : tensor<5x3x3xf16>
        %279 = math.tanh %12 : tensor<3x5xf32>
        %280 = index.maxu %142, %67
        %281 = math.ceil %9 : tensor<3x5xf32>
        %282 = math.roundeven %7 : tensor<9x4xf32>
        %283 = index.maxu %c12, %c1
        %284 = math.exp2 %7 : tensor<9x4xf32>
        %285 = math.ceil %cst_46 : f32
        scf.yield %alloc_6 : memref<3x5xi1>
      } else {
        %278 = math.copysign %cst_0, %cst_1 : f32
        %279 = math.log %extracted : f16
        %280 = arith.shrui %c-27483_i16, %c4811_i16 : i16
        %281 = math.copysign %cst_0, %cst_3 : f32
        %282 = bufferization.clone %alloc_14 : memref<5x3x3xf32> to memref<5x3x3xf32>
        %283 = arith.ori %c-27483_i16, %c4811_i16 : i16
        %284 = index.casts %c13 : index to i32
        %285 = math.exp2 %0 : tensor<3x5xf16>
        scf.yield %alloc_6 : memref<3x5xi1>
      }
      scf.yield %274 : memref<5x3x3xi1>
    } else {
      %271 = vector.create_mask %c7, %c2 : vector<3x5xi1>
      %272 = vector.broadcast %true : i1 to vector<9xi1>
      %273 = vector.maskedload %alloc_6[%c0, %c3], %272, %272 : memref<3x5xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
      %274 = vector.extract_strided_slice %171 {offsets = [1, 0], sizes = [3, 3], strides = [1, 1]} : vector<5x3x3xi32> to vector<3x3x3xi32>
      %275 = vector.flat_transpose %136 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %276 = vector.transfer_read %19[%67], %c0_i16 : tensor<9xi16>, vector<i16>
      %277 = arith.muli %c1_i16, %c-27483_i16 : i16
      %278 = math.absf %11 : tensor<5x3x3xf32>
      %279 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %194, %271, %77 : vector<3xi1>, vector<3x5xi1> into vector<5xi1>
      scf.yield %alloc_15 : memref<5x3x3xi1>
    }
    %extracted_38 = tensor.extract %13[%c4, %c0, %c1] : tensor<5x3x3xi1>
    %216 = index.ceildivu %33, %214
    %217 = index.maxu %142, %145
    %alloc_39 = memref.alloc() : memref<9x3xf32>
    %218 = index.add %c2, %129
    %219 = arith.addf %cst_4, %extracted : f16
    %220 = arith.maxf %cst_0, %cst_0 : f32
    %221 = index.divs %214, %rank_27
    %222 = index.ceildivs %108, %207
    %splat_40 = tensor.splat %cst_2 : tensor<5x3x3xf16>
    %223 = index.divu %222, %c6
    %224 = vector.broadcast %cst_2 : f16 to vector<3xf16>
    %225 = vector.multi_reduction <mul>, %205, %224 [1] : vector<3x5xf16> to vector<3xf16>
    vector.print %21 : vector<5xf32>
    %226 = index.add %c2, %214
    %227 = index.sizeof
    %228 = vector.broadcast %extracted_38 : i1 to vector<4x4xi1>
    %229 = vector.outerproduct %163, %163, %228 {kind = #vector.kind<xor>} : vector<4xi1>, vector<4xi1>
    %230 = arith.maxf %extracted, %cst_4 : f16
    %231 = scf.if %true -> (memref<9x4xf32>) {
      %271 = math.atan %11 : tensor<5x3x3xf32>
      %272 = tensor.empty() : tensor<3x5xf16>
      %273 = tensor.empty() : tensor<5x3x3xf16>
      %mapped_46 = linalg.map ins(%211, %211, %splat : tensor<5x3x3xf16>, tensor<5x3x3xf16>, tensor<5x3x3xf16>) outs(%273 : tensor<5x3x3xf16>)
        (%in: f16, %in_49: f16, %in_50: f16) {
          %278 = index.castu %c-27483_i16 : i16 to index
          %279 = vector.load %alloc_16[%c2, %c1] : memref<9x3xi1>, vector<3x5xi1>
          %cst_51 = arith.constant 2.726400e+04 : f16
          %280 = arith.remf %cst_4, %in_50 : f16
          %281 = vector.gather %alloc_16[%rank_37, %33] [%36], %35, %35 : memref<9x3xi1>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xi1> into vector<9x3xi1>
          %282 = math.tanh %in : f16
          %283 = math.fpowi %7, %203 : tensor<9x4xf32>, tensor<9x4xi32>
          bufferization.dealloc_tensor %splat_35 : tensor<9x3xi16>
          %284 = arith.remf %in_49, %extracted : f16
          %rank_52 = tensor.rank %15 : tensor<9x3xi1>
          %285 = math.log2 %11 : tensor<5x3x3xf32>
          %286 = math.cttz %3 : tensor<9x3xi1>
          memref.store %cst_3, %alloc_13[%c7, %c2] : memref<9x3xf32>
          %287 = index.divs %67, %114
          %extracted_53 = tensor.extract %17[%c8, %c2] : tensor<9x3xi1>
          %288 = index.floordivs %c12, %223
          %c-7878_i16 = arith.constant -7878 : i16
          %289 = math.rsqrt %11 : tensor<5x3x3xf32>
          %290 = math.exp2 %2 : tensor<9x3xf16>
          %291 = math.tan %9 : tensor<3x5xf32>
          %alloca = memref.alloca() : memref<9x3xi64>
          %292 = arith.shrsi %c4811_i16, %c-30032_i16 : i16
          %293 = math.rsqrt %extracted : f16
          %alloca_54 = memref.alloca() : memref<3x5xi64>
          %294 = math.fma %extracted, %in_50, %cst_4 : f16
          memref.assume_alignment %144, 1 : memref<9x4xf16>
          %295 = memref.atomic_rmw addf %cst_1, %alloc_9[%c3, %c1, %c1] : (f32, memref<5x3x3xf32>) -> f32
          %296 = math.powf %9, %12 : tensor<3x5xf32>
          %297 = vector.broadcast %in_49 : f16 to vector<9x3xf16>
          %298 = vector.gather %2[%65, %c4] [%36], %281, %297 : tensor<9x3xf16>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xf16> into vector<9x3xf16>
          %299 = vector.extract_strided_slice %171 {offsets = [0], sizes = [2], strides = [1]} : vector<5x3x3xi32> to vector<2x3x3xi32>
          %300 = index.mul %167, %189
          %301 = math.atan2 %9, %12 : tensor<3x5xf32>
          %cst_55 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_55 : f16
        }
      %274 = arith.negf %extracted : f16
      %275 = index.divu %c15, %139
      %276 = index.castu %true_5 : i1 to index
      %277 = arith.addf %extracted, %cst_4 : f16
      %extracted_47 = tensor.extract %6[%c5, %c0] : tensor<9x3xi16>
      %alloc_48 = memref.alloc() : memref<9x4xf32>
      scf.yield %alloc_48 : memref<9x4xf32>
    } else {
      %271 = bufferization.clone %79 : memref<3x5xf16> to memref<3x5xf16>
      %rank_46 = tensor.rank %13 : tensor<5x3x3xi1>
      %272 = math.log1p %splat_40 : tensor<5x3x3xf16>
      %273 = math.exp %cst_4 : f16
      %274 = vector.extract %77[0] : vector<5xi1>
      %275 = math.copysign %cst_4, %cst : f16
      %false = arith.constant false
      %276 = vector.transfer_read %collapsed[%218], %false : tensor<27xi1>, vector<i1>
      %277 = index.add %107, %33
      %alloc_47 = memref.alloc() : memref<9x4xf32>
      scf.yield %alloc_47 : memref<9x4xf32>
    }
    %extracted_41 = tensor.extract %38[%c1, %c4] : tensor<3x5xi32>
    %232 = arith.negf %cst_2 : f16
    %rank_42 = tensor.rank %10 : tensor<3x5xi1>
    %233 = arith.maxsi %true, %true : i1
    %234 = math.fpowi %2, %1 : tensor<9x3xf16>, tensor<9x3xi32>
    %235 = math.exp %9 : tensor<3x5xf32>
    %236 = math.tanh %211 : tensor<5x3x3xf16>
    %237 = index.sizeof
    %238 = vector.extract_strided_slice %180 {offsets = [0], sizes = [3], strides = [1]} : vector<3x5xi1> to vector<3x5xi1>
    %239 = bufferization.clone %alloc_12 : memref<3x5xf16> to memref<3x5xf16>
    %240 = vector.extract_strided_slice %93 {offsets = [3], sizes = [2], strides = [1]} : vector<5x3x3xi64> to vector<2x3x3xi64>
    %241 = arith.remf %cst_0, %cst_3 : f32
    %242 = math.log1p %cst_0 : f32
    %243 = index.add %c0, %103
    %244 = math.powf %12, %12 : tensor<3x5xf32>
    %245 = arith.muli %c1_i64, %c1989728629_i64 : i64
    %246 = math.log10 %9 : tensor<3x5xf32>
    %247 = vector.multi_reduction <maxf>, %131, %cst_1 [0, 1] : vector<9x4xf32> to f32
    %248 = arith.divf %cst_3, %cst_1 : f32
    %249 = math.log10 %11 : tensor<5x3x3xf32>
    %250 = index.casts %c1_i64 : i64 to index
    %251 = math.ipowi %5, %6 : tensor<9x3xi16>
    %252 = arith.shrui %c4811_i16, %c-27483_i16 : i16
    %253 = math.absf %211 : tensor<5x3x3xf16>
    %254 = arith.mulf %cst, %cst_4 : f16
    %from_elements = tensor.from_elements %c851740943_i32, %c851740943_i32, %c851740943_i32, %extracted_41, %extracted_41, %extracted_41, %extracted_41, %c851740943_i32, %extracted_41, %extracted_41, %extracted_41, %c851740943_i32, %c851740943_i32, %c851740943_i32, %extracted_41, %c851740943_i32, %extracted_41, %c851740943_i32, %extracted_41, %extracted_41, %extracted_41, %c851740943_i32, %extracted_41, %c851740943_i32, %extracted_41, %c851740943_i32, %c851740943_i32 : tensor<9x3xi32>
    %c0_i32 = arith.constant 0 : i32
    %255 = vector.transfer_read %38[%207, %112], %c0_i32 : tensor<3x5xi32>, vector<3xi32>
    %256 = arith.cmpf ugt, %extracted, %extracted : f16
    %257 = arith.ceildivsi %c851740943_i32, %c851740943_i32 : i32
    memref.store %cst_1, %126[%c4, %c2, %c0] : memref<5x3x3xf32>
    %258 = vector.broadcast %cst_1 : f32 to vector<3xf32>
    %259 = vector.multi_reduction <maxf>, %40, %258 [0] : vector<9x3xf32> to vector<3xf32>
    vector.print %163 : vector<4xi1>
    %260 = math.cos %cst : f16
    %extracted_43 = tensor.extract %15[%c4, %c1] : tensor<9x3xi1>
    %261 = scf.if %true_5 -> (f32) {
      %271 = arith.remf %cst, %extracted : f16
      vector.print %186 : vector<9x4xf16>
      %272 = math.log10 %11 : tensor<5x3x3xf32>
      %273 = vector.extract %149[2] : vector<20xf32>
      %274 = math.round %12 : tensor<3x5xf32>
      %275 = index.add %rank, %243
      %276 = math.powf %9, %12 : tensor<3x5xf32>
      %277 = vector.load %138[%c6, %c0] : memref<9x4xf16>, vector<3x5xf16>
      scf.yield %cst_1 : f32
    } else {
      %271 = index.castu %c13 : index to i32
      %272 = tensor.empty() : tensor<9x3xi1>
      %mapped_46 = linalg.map ins(%3, %alloc_16, %3 : tensor<9x3xi1>, memref<9x3xi1>, tensor<9x3xi1>) outs(%272 : tensor<9x3xi1>)
        (%in: i1, %in_47: i1, %in_48: i1) {
          %280 = vector.broadcast %extracted : f16 to vector<9xf16>
          %281 = vector.broadcast %in_48 : i1 to vector<9xi1>
          %282 = vector.maskedload %32[%c3, %c3], %281, %280 : memref<9x4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
          %283 = math.sqrt %2 : tensor<9x3xf16>
          %284 = math.ipowi %c851740943_i32, %c0_i32 : i32
          %285 = arith.cmpi ugt, %in_48, %extracted_38 : i1
          %286 = vector.gather %13[%c15, %133, %207] [%36], %35, %35 : tensor<5x3x3xi1>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xi1> into vector<9x3xi1>
          %287 = arith.remui %c-30032_i16, %c4811_i16 : i16
          %288 = arith.muli %in_48, %extracted_38 : i1
          %289 = arith.cmpf uno, %extracted, %cst : f16
          %290 = vector.reduction <mul>, %78 : vector<5xf32> into f32
          %291 = arith.maxf %cst_4, %cst_2 : f16
          %292 = vector.create_mask %216, %c0 : vector<3x5xi1>
          %293 = math.log %cst_2 : f16
          %294 = arith.minsi %in_47, %extracted_43 : i1
          %295 = index.mul %243, %145
          %296 = index.maxu %c3, %c6
          %297 = vector.flat_transpose %280 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
          %298 = math.sqrt %2 : tensor<9x3xf16>
          %299 = vector.matrix_multiply %193, %194 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
          %300 = arith.divsi %in, %extracted_43 : i1
          %301 = math.powf %7, %7 : tensor<9x4xf32>
          %302 = index.sizeof
          %303 = math.copysign %12, %9 : tensor<3x5xf32>
          bufferization.dealloc_tensor %13 : tensor<5x3x3xi1>
          %304 = memref.load %231[%c1, %c1] : memref<9x4xf32>
          %305 = vector.extract %280[0] : vector<9xf16>
          %rank_49 = tensor.rank %9 : tensor<3x5xf32>
          %306 = math.log1p %0 : tensor<3x5xf16>
          %307 = index.add %c9, %133
          %308 = memref.load %alloc_17[%c1, %c3] : memref<9x4xi1>
          %309 = math.log2 %0 : tensor<3x5xf16>
          %310 = math.absf %splat_40 : tensor<5x3x3xf16>
          %311 = arith.shrsi %c851740943_i32, %c851740943_i32 : i32
          %true_50 = arith.constant true
          linalg.yield %true_50 : i1
        }
      %273 = index.casts %c723310721_i64 : i64 to index
      %274 = vector.flat_transpose %151 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %275 = vector.broadcast %139 : index to vector<5xindex>
      %276 = vector.broadcast %cst_4 : f16 to vector<5xf16>
      vector.scatter %alloc_20[%c1, %c2] [%275], %96, %276 : memref<3x5xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
      %277 = vector.multi_reduction <maxui>, %93, %c791166266_i64 [0, 1, 2] : vector<5x3x3xi64> to i64
      %generated = tensor.generate %227, %217, %108 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %280 = math.tanh %0 : tensor<3x5xf16>
        %281 = math.absi %10 : tensor<3x5xi1>
        %282 = arith.remsi %c723310721_i64, %c1989728629_i64 : i64
        %283 = math.exp %0 : tensor<3x5xf16>
        tensor.yield %c-30032_i16 : i16
      } : tensor<?x?x?xi16>
      %278 = vector.broadcast %extracted_38 : i1 to vector<3x3xi1>
      %279 = vector.outerproduct %193, %193, %278 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
      scf.yield %cst_3 : f32
    }
    %262 = vector.shuffle %238, %238 [0, 1, 5] : vector<3x5xi1>, vector<3x5xi1>
    %263 = arith.shrsi %c1_i64, %c791166266_i64 : i64
    %264 = vector.create_mask %108, %250, %64 : vector<5x3x3xi1>
    %265 = bufferization.clone %alloc_12 : memref<3x5xf16> to memref<3x5xf16>
    %266 = tensor.empty() : tensor<9x4xi64>
    %267 = linalg.copy ins(%89 : tensor<9x4xi64>) outs(%266 : tensor<9x4xi64>) -> tensor<9x4xi64>
    %alloc_44 = memref.alloc() : memref<5x3xi1>
    linalg.transpose ins(%alloc_6 : memref<3x5xi1>) outs(%alloc_44 : memref<5x3xi1>) permutation = [1, 0] 
    %268 = tensor.empty() : tensor<9xi1>
    %reduced_45 = linalg.reduce ins(%3 : tensor<9x3xi1>) outs(%268 : tensor<9xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %271 = math.log %7 : tensor<9x4xf32>
        %272 = math.sqrt %2 : tensor<9x3xf16>
        %273 = vector.broadcast %cst_1 : f32 to vector<5x3x3xf32>
        %274 = vector.fma %273, %273, %273 : vector<5x3x3xf32>
        scf.if %in {
          %279 = vector.bitcast %186 : vector<9x4xf16> to vector<9x4xf16>
          %280 = arith.remf %extracted, %cst_4 : f16
          %281 = arith.andi %extracted_38, %extracted_38 : i1
          %alloc_46 = memref.alloc() : memref<5x3x3xi16>
          %282 = vector.broadcast %c-27483_i16 : i16 to vector<9x3xi16>
          %283 = vector.gather %alloc_46[%rank_27, %237, %rank_42] [%36], %35, %282 : memref<5x3x3xi16>, vector<9x3xi32>, vector<9x3xi1>, vector<9x3xi16> into vector<9x3xi16>
          %284 = index.sizeof
          %285 = arith.negf %cst_2 : f16
          %286 = affine.max affine_map<(d0, d1) -> ((d0 - 2) * 8, d0 mod 128, (d0 + 2) floordiv 16)>(%129, %214)
          %287 = math.cttz %15 : tensor<9x3xi1>
        }
        %275 = scf.execute_region -> f16 {
          %splat_46 = tensor.splat %cst_4 : tensor<9x4xf16>
          %279 = math.sqrt %extracted : f16
          %280 = bufferization.clone %265 : memref<3x5xf16> to memref<3x5xf16>
          %281 = vector.broadcast %216 : index to vector<3xindex>
          vector.scatter %alloc_44[%c1, %c2] [%281], %193, %194 : memref<5x3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
          %splat_47 = tensor.splat %c1063701009_i64 : tensor<9x3xi64>
          %282 = math.cttz %89 : tensor<9x4xi64>
          bufferization.dealloc_tensor %splat_31 : tensor<3x5xi16>
          %283 = math.tan %9 : tensor<3x5xf32>
          %284 = tensor.empty() : tensor<9x3xi32>
          vector.print %224 : vector<3xf16>
          %rank_48 = tensor.rank %6 : tensor<9x3xi16>
          %285 = math.exp2 %11 : tensor<5x3x3xf32>
          %286 = vector.broadcast %c-27483_i16 : i16 to vector<i16>
          %287 = vector.transfer_write %286, %5[%c4, %214] : vector<i16>, tensor<9x3xi16>
          %288 = vector.matrix_multiply %185, %185 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi32>, vector<3xi32>) -> vector<1xi32>
          %289 = vector.create_mask %218, %c1 : vector<9x4xi1>
          %290 = math.powf %extracted, %cst_2 : f16
          scf.yield %extracted : f16
        }
        %276 = math.cttz %c0_i32 : i32
        %277 = math.fpowi %cst, %extracted_41 : f16, i32
        %278 = index.castu %true_5 : i1 to index
        %false = arith.constant false
        linalg.yield %false : i1
      }
    %269 = scf.parallel (%arg3, %arg4) = (%174, %c7) to (%rank_27, %217) step (%c2, %c3) init (%265) -> memref<3x5xf16> {
      %271 = math.floor %11 : tensor<5x3x3xf32>
      %272 = arith.minsi %c4811_i16, %c4811_i16 : i16
      %collapsed_46 = tensor.collapse_shape %splat_35 [[0, 1]] : tensor<9x3xi16> into tensor<27xi16>
      %273 = math.fpowi %2, %1 : tensor<9x3xf16>, tensor<9x3xi32>
      %274 = arith.mulf %cst, %cst_4 : f16
      %275 = arith.ori %c0_i32, %extracted_41 : i32
      %276 = math.cttz %15 : tensor<9x3xi1>
      %277 = bufferization.clone %31 : memref<3x5xi16> to memref<3x5xi16>
      %278 = tensor.empty() : tensor<9x3xi32>
      %mapped_47 = linalg.map ins(%1, %4 : tensor<9x3xi32>, tensor<9x3xi32>) outs(%278 : tensor<9x3xi32>)
        (%in: i32, %in_49: i32) {
          %284 = math.ceil %splat_40 : tensor<5x3x3xf16>
          %285 = vector.broadcast %c1989728629_i64 : i64 to vector<3x5xi64>
          %286 = vector.broadcast %in : i32 to vector<3x5xi32>
          %287 = vector.gather %splat_22[%226, %107] [%286], %238, %285 : tensor<9x3xi64>, vector<3x5xi32>, vector<3x5xi1>, vector<3x5xi64> into vector<3x5xi64>
          %extracted_50 = tensor.extract %transposed[%c1, %c5] : tensor<4x9xi16>
          %288 = vector.gather %10[%167, %226] [%171], %264, %91 : tensor<3x5xi1>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi1> into vector<5x3x3xi1>
          %289 = math.ceil %cst_0 : f32
          %290 = vector.broadcast %214 : index to vector<5xindex>
          %291 = vector.broadcast %c4811_i16 : i16 to vector<5xi16>
          vector.scatter %277[%c0, %c1] [%290], %77, %291 : memref<3x5xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
          %292 = index.castu %c3 : index to i32
          %293 = vector.create_mask %133, %142 : vector<3x5xi1>
          %294 = math.rsqrt %cst_1 : f32
          %295 = math.exp2 %7 : tensor<9x4xf32>
          %296 = math.fpowi %extracted, %in_49 : f16, i32
          %297 = arith.cmpf uge, %cst, %extracted : f16
          %298 = math.absf %cst_4 : f16
          %299 = arith.mulf %cst_4, %cst_2 : f16
          %extracted_51 = tensor.extract %1[%c2, %c0] : tensor<9x3xi32>
          %300 = math.exp %cst : f16
          memref.copy %alloc_15, %215 : memref<5x3x3xi1> to memref<5x3x3xi1>
          %301 = math.exp2 %2 : tensor<9x3xf16>
          %302 = math.ipowi %c791166266_i64, %c1063701009_i64 : i64
          %303 = vector.maskedload %alloc_6[%c1, %c1], %193, %194 : memref<3x5xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
          %304 = math.cos %cst_2 : f16
          %305 = math.absi %19 : tensor<9xi16>
          %306 = math.atan2 %extracted, %extracted : f16
          %307 = vector.bitcast %159 : vector<9x4xf32> to vector<9x4xf32>
          %cst_52 = arith.constant 1.000000e+00 : f32
          %308 = vector.transfer_read %7[%64, %arg3], %cst_52 : tensor<9x4xf32>, vector<f32>
          bufferization.dealloc_tensor %6 : tensor<9x3xi16>
          memref.store %cst, %32[%c8, %c3] : memref<9x4xf16>
          %309 = vector.matrix_multiply %303, %77 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<3xi1>, vector<5xi1>) -> vector<15xi1>
          %310 = math.ceil %12 : tensor<3x5xf32>
          %311 = math.ctpop %c-27483_i16 : i16
          %312 = vector.extract_strided_slice %91 {offsets = [3], sizes = [2], strides = [1]} : vector<5x3x3xi1> to vector<2x3x3xi1>
          %313 = math.fma %211, %splat_40, %splat_40 : tensor<5x3x3xf16>
          %c0_i32_53 = arith.constant 0 : i32
          linalg.yield %c0_i32_53 : i32
        }
      %279 = math.tan %splat : tensor<5x3x3xf16>
      %280 = math.log %11 : tensor<5x3x3xf32>
      memref.tensor_store %10, %alloc_6 : memref<3x5xi1>
      scf.if %extracted_38 {
        %rank_49 = tensor.rank %9 : tensor<3x5xf32>
        %splat_50 = tensor.splat %261 : tensor<3x5xf32>
        %284 = vector.flat_transpose %163 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %285 = vector.insert %258, %37 [4] : vector<3xf32> into vector<9x3xf32>
        %286 = arith.remui %c4811_i16, %c-27483_i16 : i16
        %287 = math.fma %12, %splat_50, %9 : tensor<3x5xf32>
        %288 = arith.divf %cst_0, %cst_0 : f32
        %289 = vector.broadcast %extracted_41 : i32 to vector<3x3xi32>
        %dest, %accumulated_value = vector.scan <and>, %171, %289 {inclusive = false, reduction_dim = 0 : i64} : vector<5x3x3xi32>, vector<3x3xi32>
      } else {
        %284 = arith.shrsi %c791166266_i64, %c1989728629_i64 : i64
        %285 = math.round %splat : tensor<5x3x3xf16>
        %286 = math.rsqrt %2 : tensor<9x3xf16>
        %287 = tensor.empty() : tensor<4x9xi64>
        %288 = tensor.empty() : tensor<9x9xi64>
        %289 = linalg.matmul ins(%89, %287 : tensor<9x4xi64>, tensor<4x9xi64>) outs(%288 : tensor<9x9xi64>) -> tensor<9x9xi64>
        %290 = math.powf %11, %11 : tensor<5x3x3xf32>
        %291 = math.atan2 %7, %7 : tensor<9x4xf32>
        memref.assume_alignment %alloc_19, 8 : memref<9x3xi64>
        %292 = arith.shrsi %c723310721_i64, %c1_i64 : i64
      }
      %281 = index.add %108, %112
      %282 = index.castu %243 : index to i32
      %283 = affine.if affine_set<(d0) : (-(d0 mod 128 - d0 - d0 * 128 - 2) == 0, d0 mod 128 + 2 >= 0, d0 mod 128 - d0 >= 0, 0 == 0)>(%c14) -> i64 {
        %284 = index.castu %extracted_38 : i1 to index
        %285 = tensor.empty(%189, %c0) : tensor<?x3x?xi16>
        %286 = vector.broadcast %c-30032_i16 : i16 to vector<9x3xi16>
        %287 = math.cos %261 : f32
        %288 = index.maxu %214, %135
        %from_elements_49 = tensor.from_elements %cst_0, %247, %247, %cst_0, %247, %cst_1, %cst_1, %cst_0, %cst_1, %247, %247, %261, %cst_3, %261, %247, %cst_3, %cst_0, %261, %247, %cst_3, %cst_0, %247, %cst_0, %cst_1, %cst_0, %261, %261, %cst_1, %261, %cst_3, %cst_3, %261, %cst_0, %cst_0, %cst_0, %cst_1, %247, %cst_0, %cst_0, %247, %247, %cst_0, %cst_1, %261, %cst_3 : tensor<5x3x3xf32>
        %rank_50 = tensor.rank %reduced_45 : tensor<9xi1>
        %289 = math.log2 %cst_0 : f32
        affine.yield %c723310721_i64 : i64
      } else {
        %284 = arith.negf %extracted : f16
        %285 = math.ipowi %c1_i64, %c1_i64 : i64
        %286 = arith.muli %extracted_38, %extracted_38 : i1
        %287 = math.fma %cst_4, %cst, %extracted : f16
        %288 = math.absf %splat : tensor<5x3x3xf16>
        %289 = math.tanh %cst_4 : f16
        %alloca = memref.alloca() : memref<3x5xi64>
        %290 = vector.broadcast %c2 : index to vector<4xindex>
        %291 = vector.broadcast %extracted : f16 to vector<4xf16>
        vector.scatter %alloc_12[%c2, %c3] [%290], %163, %291 : memref<3x5xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        affine.yield %c1063701009_i64 : i64
      }
      %alloc_48 = memref.alloc() : memref<3x5xf16>
      scf.reduce(%alloc_48)  : memref<3x5xf16> {
      ^bb0(%arg5: memref<3x5xf16>, %arg6: memref<3x5xf16>):
        %284 = memref.atomic_rmw assign %cst, %arg5[%c0, %c4] : (f16, memref<3x5xf16>) -> f16
        %alloc_49 = memref.alloc() : memref<3x5xf32>
        memref.tensor_store %9, %alloc_49 : memref<3x5xf32>
        %285 = math.powf %11, %11 : tensor<5x3x3xf32>
        %286 = vector.reduction <maxf>, %21 : vector<5xf32> into f32
        %287 = math.absi %c1989728629_i64 : i64
        %288 = math.ceil %9 : tensor<3x5xf32>
        %289 = arith.shrsi %extracted_38, %true : i1
        %290 = index.maxs %c9, %rank_33
        %alloc_50 = memref.alloc() : memref<3x5xf16>
        scf.reduce.return %alloc_50 : memref<3x5xf16>
      }
      scf.yield
    }
    %270 = affine.vector_load %alloc_10[%c5, %c6, %rank] : memref<5x3x3xf32>, vector<4xf32>
    affine.vector_store %150, %alloc_8[%133, %218] : memref<9x4xi1>, vector<4xi1>
    vector.print %21 : vector<5xf32>
    vector.print %34 : vector<9x3xf32>
    vector.print %35 : vector<9x3xi1>
    vector.print %36 : vector<9x3xi32>
    vector.print %37 : vector<9x3xf32>
    vector.print %40 : vector<9x3xf32>
    vector.print %41 : vector<9x4xf16>
    vector.print %56 : vector<i16>
    vector.print %69 : vector<3x5xf32>
    vector.print %77 : vector<5xi1>
    vector.print %78 : vector<5xf32>
    vector.print %86 : vector<1xi1>
    vector.print %90 : vector<5x3x3xi64>
    vector.print %91 : vector<5x3x3xi1>
    vector.print %92 : vector<5x3x3xi32>
    vector.print %93 : vector<5x3x3xi64>
    vector.print %96 : vector<5xi1>
    vector.print %99 : vector<9x4xf32>
    vector.print %100 : vector<9x4xf32>
    vector.print %130 : vector<9x4xf32>
    vector.print %131 : vector<9x4xf32>
    vector.print %136 : vector<4xf32>
    vector.print %149 : vector<20xf32>
    vector.print %150 : vector<4xi1>
    vector.print %151 : vector<4xi1>
    vector.print %159 : vector<9x4xf32>
    vector.print %160 : vector<9x4xf32>
    vector.print %163 : vector<4xi1>
    vector.print %171 : vector<5x3x3xi32>
    vector.print %180 : vector<3x5xi1>
    vector.print %185 : vector<3xi32>
    vector.print %186 : vector<9x4xf16>
    vector.print %193 : vector<3xi1>
    vector.print %194 : vector<3xi1>
    vector.print %199 : vector<5x3xi32>
    vector.print %205 : vector<3x5xf16>
    vector.print %224 : vector<3xf16>
    vector.print %238 : vector<3x5xi1>
    vector.print %240 : vector<2x3x3xi64>
    vector.print %258 : vector<3xf32>
    vector.print %264 : vector<5x3x3xi1>
    vector.print %270 : vector<4xf32>
    vector.print %cst : f16
    vector.print %c791166266_i64 : i64
    vector.print %c851740943_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c4811_i16 : i16
    vector.print %c-27483_i16 : i16
    vector.print %c1063701009_i64 : i64
    vector.print %cst_1 : f32
    vector.print %c723310721_i64 : i64
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %c-30032_i16 : i16
    vector.print %c1989728629_i64 : i64
    vector.print %true : i1
    vector.print %true_5 : i1
    vector.print %extracted : f16
    vector.print %c1_i64 : i64
    vector.print %extracted_38 : i1
    vector.print %extracted_41 : i32
    vector.print %247 : f32
    vector.print %c0_i32 : i32
    vector.print %extracted_43 : i1
    vector.print %261 : f32
    return
  }
}
