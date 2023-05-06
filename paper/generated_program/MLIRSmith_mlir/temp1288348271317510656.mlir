module {
  func.func nested @func1(%arg0: tensor<1x6xf32>, %arg1: index, %arg2: vector<6x6x6xi32>) -> i16 {
    %c25536_i16 = arith.constant 25536 : i16
    %cst = arith.constant 0x4E329832 : f32
    %cst_0 = arith.constant 1.314464E+9 : f32
    %c1101131446_i32 = arith.constant 1101131446 : i32
    %true = arith.constant true
    %true_1 = arith.constant true
    %c728709914_i64 = arith.constant 728709914 : i64
    %c2136994837_i32 = arith.constant 2136994837 : i32
    %c23297_i16 = arith.constant 23297 : i16
    %cst_2 = arith.constant 3.324800e+04 : f16
    %c574043727_i32 = arith.constant 574043727 : i32
    %c963791498_i64 = arith.constant 963791498 : i64
    %cst_3 = arith.constant 2.11664909E+9 : f32
    %c31481_i16 = arith.constant 31481 : i16
    %c-1636_i16 = arith.constant -1636 : i16
    %c1239302868_i32 = arith.constant 1239302868 : i32
    %0 = tensor.empty() : tensor<6x6x6xf32>
    %1 = tensor.empty() : tensor<12xi1>
    %2 = tensor.empty() : tensor<6x6x6xf32>
    %3 = tensor.empty() : tensor<12xi1>
    %4 = tensor.empty() : tensor<12xi1>
    %5 = tensor.empty() : tensor<12xf16>
    %6 = tensor.empty() : tensor<12xi64>
    %7 = tensor.empty() : tensor<6x6x6xi32>
    %8 = tensor.empty() : tensor<1x6xi64>
    %9 = tensor.empty() : tensor<12xf16>
    %10 = tensor.empty() : tensor<1x6xf16>
    %11 = tensor.empty() : tensor<10x12xf32>
    %12 = tensor.empty() : tensor<12xi32>
    %13 = tensor.empty() : tensor<6x6x6xi32>
    %14 = tensor.empty() : tensor<1x6xf32>
    %15 = tensor.empty() : tensor<12xf32>
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
    %alloc = memref.alloc() : memref<1x6xi1>
    %alloc_4 = memref.alloc() : memref<6x6x6xi16>
    %alloc_5 = memref.alloc() : memref<1x6xf16>
    %alloc_6 = memref.alloc() : memref<1x6xf32>
    %alloc_7 = memref.alloc() : memref<6x6x6xf16>
    %alloc_8 = memref.alloc() : memref<12xi32>
    %alloc_9 = memref.alloc() : memref<10x12xi16>
    %alloc_10 = memref.alloc() : memref<12xi64>
    %alloc_11 = memref.alloc() : memref<6x6x6xi1>
    %alloc_12 = memref.alloc() : memref<12xi64>
    %alloc_13 = memref.alloc() : memref<1x6xi1>
    %alloc_14 = memref.alloc() : memref<1x6xf16>
    %alloc_15 = memref.alloc() : memref<10x12xi1>
    %alloc_16 = memref.alloc() : memref<1x6xi32>
    %alloc_17 = memref.alloc() : memref<6x6x6xi1>
    %alloc_18 = memref.alloc() : memref<1x6xi16>
    %16 = tensor.empty() : tensor<12xf16>
    %17 = linalg.copy ins(%9 : tensor<12xf16>) outs(%16 : tensor<12xf16>) -> tensor<12xf16>
    %alloc_19 = memref.alloc() : memref<6x1xf32>
    linalg.transpose ins(%alloc_6 : memref<1x6xf32>) outs(%alloc_19 : memref<6x1xf32>) permutation = [1, 0] 
    %alloc_20 = memref.alloc() : memref<10xi16>
    linalg.reduce ins(%alloc_9 : memref<10x12xi16>) outs(%alloc_20 : memref<10xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %253 = math.expm1 %11 : tensor<10x12xf32>
        %254 = arith.mulf %cst_0, %cst_3 : f32
        %c211940179_i32 = arith.constant 211940179 : i32
        %255 = arith.minf %cst_3, %cst : f32
        %256 = arith.minf %cst_2, %cst_2 : f16
        %257 = arith.remf %cst_3, %cst_3 : f32
        %258 = vector.broadcast %in : i16 to vector<12x10x1xi16>
        %259 = vector.broadcast %c25536_i16 : i16 to vector<12x10xi16>
        %dest, %accumulated_value = vector.scan <minsi>, %258, %259 {inclusive = false, reduction_dim = 2 : i64} : vector<12x10x1xi16>, vector<12x10xi16>
        %260 = index.castu %c25536_i16 : i16 to index
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg3) = (%c8) to (%c3) step (%c13) {
      scf.if %true_1 {
        %270 = arith.remsi %c-1636_i16, %c23297_i16 : i16
        %271 = vector.broadcast %c31481_i16 : i16 to vector<1xi16>
        %272 = vector.extract_strided_slice %271 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %273 = arith.subi %true, %true : i1
        %274 = arith.negf %cst_0 : f32
        %275 = math.round %9 : tensor<12xf16>
        %276 = vector.splat %c0 : vector<12xindex>
        %277 = arith.ori %true, %true_1 : i1
        vector.print %271 : vector<1xi16>
      } else {
        %270 = math.floor %cst_2 : f16
        %271 = index.ceildivu %c1, %c15
        %272 = arith.divsi %c1239302868_i32, %c2136994837_i32 : i32
        affine.store %cst_2, %alloc_5[%c6, %c6] : memref<1x6xf16>
        %273 = vector.create_mask %c7, %c11 : vector<10x12xi1>
        %274 = arith.subi %c1101131446_i32, %c574043727_i32 : i32
        %275 = math.powf %11, %11 : tensor<10x12xf32>
        %276 = vector.broadcast %cst : f32 to vector<f32>
        %277 = vector.transfer_write %276, %2[%c5, %c0, %c15] : vector<f32>, tensor<6x6x6xf32>
      }
      %253 = vector.broadcast %c31481_i16 : i16 to vector<1xi16>
      %254 = vector.extract_strided_slice %253 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      %255 = vector.broadcast %c25536_i16 : i16 to vector<6xi16>
      %256 = vector.broadcast %true : i1 to vector<6xi1>
      %257 = vector.maskedload %alloc_9[%c2, %c3], %256, %255 : memref<10x12xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %258 = arith.divf %cst_0, %cst_0 : f32
      scf.if %true_1 {
        %270 = math.cttz %c2136994837_i32 : i32
        %271 = math.fpowi %cst, %c574043727_i32 : f32, i32
        %272 = index.castu %c2136994837_i32 : i32 to index
        %273 = math.cos %9 : tensor<12xf16>
        %274 = arith.muli %true_1, %true : i1
        %275 = index.casts %c15 : index to i32
        %276 = arith.andi %c23297_i16, %c-1636_i16 : i16
        %true_46 = index.bool.constant true
      } else {
        %270 = math.tanh %2 : tensor<6x6x6xf32>
        %rank_46 = tensor.rank %1 : tensor<12xi1>
        %271 = arith.cmpi ugt, %c963791498_i64, %c963791498_i64 : i64
        %272 = arith.xori %true_1, %true : i1
        %273 = vector.extract %257[3] : vector<6xi16>
        %cst_47 = arith.constant 1.08125312E+9 : f32
        %274 = vector.transpose %255, [0] : vector<6xi16> to vector<6xi16>
        %275 = arith.remf %cst_2, %cst_2 : f16
      }
      %259 = arith.shrsi %c1239302868_i32, %c574043727_i32 : i32
      %260 = math.powf %15, %15 : tensor<12xf32>
      %261 = index.maxs %c10, %c13
      %262 = math.round %2 : tensor<6x6x6xf32>
      %263 = vector.broadcast %cst : f32 to vector<12xf32>
      %264 = vector.fma %263, %263, %263 : vector<12xf32>
      %265 = vector.extract %257[5] : vector<6xi16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %264, %264, %cst_0 : vector<12xf32>, vector<12xf32> into f32
      scf.execute_region {
        %270 = tensor.empty() : tensor<1x6xi32>
        %271 = math.fpowi %10, %270 : tensor<1x6xf16>, tensor<1x6xi32>
        %272 = vector.broadcast %cst_2 : f16 to vector<f16>
        %273 = vector.transfer_write %272, %17[%c8] : vector<f16>, tensor<12xf16>
        %274 = vector.insertelement %cst_2, %272[] : vector<f16>
        %275 = math.cos %5 : tensor<12xf16>
        %alloc_46 = memref.alloc() : memref<1x6xi16>
        bufferization.dealloc_tensor %12 : tensor<12xi32>
        %276 = vector.matrix_multiply %253, %253 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %277 = index.sub %c11, %261
        %278 = math.cttz %6 : tensor<12xi64>
        %279 = math.ipowi %true, %true_1 : i1
        %280 = math.log10 %10 : tensor<1x6xf16>
        %281 = math.ctpop %13 : tensor<6x6x6xi32>
        %282 = vector.broadcast %277 : index to vector<10xindex>
        %283 = vector.broadcast %true : i1 to vector<10xi1>
        %284 = vector.broadcast %c31481_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_9[%c8, %c2] [%282], %283, %284 : memref<10x12xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %285 = index.maxs %c7, %c8
        %286 = arith.cmpi sge, %c728709914_i64, %c963791498_i64 : i64
        %287 = vector.insertelement %c-1636_i16, %254[%c1 : index] : vector<1xi16>
        scf.yield
      }
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %253, %253, %c31481_i16 : vector<1xi16>, vector<1xi16> into i16
      %268 = scf.execute_region -> i64 {
        %splat_46 = tensor.splat %cst_2 : tensor<1x6xf16>
        %270 = vector.extract %263[0] : vector<12xf32>
        %271 = vector.broadcast %c1101131446_i32 : i32 to vector<12xi32>
        %272 = vector.broadcast %c728709914_i64 : i64 to vector<10xi64>
        %273 = vector.broadcast %true : i1 to vector<10xi1>
        %274 = vector.maskedload %alloc_10[%c8], %273, %272 : memref<12xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %275 = memref.realloc %alloc_12 : memref<12xi64> to memref<10xi64>
        %276 = vector.splat %c11 : vector<12xindex>
        %277 = math.exp %15 : tensor<12xf32>
        %278 = vector.insert %c31481_i16, %257 [3] : i16 into vector<6xi16>
        %279 = index.mul %c1, %c7
        %280 = math.ipowi %8, %8 : tensor<1x6xi64>
        %281 = arith.mulf %cst_3, %cst_3 : f32
        %282 = arith.shrsi %c31481_i16, %c25536_i16 : i16
        %c11756_i16 = arith.constant 11756 : i16
        %283 = arith.remf %cst, %cst : f32
        %284 = vector.broadcast %c1239302868_i32 : i32 to vector<12x12xi32>
        %285 = vector.outerproduct %271, %271, %284 {kind = #vector.kind<minui>} : vector<12xi32>, vector<12xi32>
        %286 = vector.shuffle %257, %255 [2, 3, 8, 10] : vector<6xi16>, vector<6xi16>
        scf.yield %c728709914_i64 : i64
      }
      %269 = index.castu %c574043727_i32 : i32 to index
      scf.yield
    }
    %18 = affine.vector_load %alloc_6[%c12, %c3] : memref<1x6xf32>, vector<6xf32>
    affine.vector_store %18, %alloc_6[%c6, %c13] : memref<1x6xf32>, vector<6xf32>
    %19 = tensor.empty() : tensor<12xi1>
    %20 = tensor.empty() : tensor<i1>
    %21 = linalg.dot ins(%4, %19 : tensor<12xi1>, tensor<12xi1>) outs(%20 : tensor<i1>) -> tensor<i1>
    %22 = vector.extract_strided_slice %18 {offsets = [4], sizes = [1], strides = [1]} : vector<6xf32> to vector<1xf32>
    %23 = affine.load %alloc_14[%c0, %c11] : memref<1x6xf16>
    memref.assume_alignment %alloc_11, 8 : memref<6x6x6xi1>
    %24 = math.fma %14, %14, %14 : tensor<1x6xf32>
    bufferization.dealloc_tensor %13 : tensor<6x6x6xi32>
    %25 = math.ipowi %8, %8 : tensor<1x6xi64>
    %26 = math.round %2 : tensor<6x6x6xf32>
    %27 = math.powf %9, %16 : tensor<12xf16>
    %28 = math.cttz %c963791498_i64 : i64
    %29 = bufferization.clone %alloc_14 : memref<1x6xf16> to memref<1x6xf16>
    %30 = vector.extract_strided_slice %22 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %31 = math.roundeven %0 : tensor<6x6x6xf32>
    %32 = scf.execute_region -> tensor<12xi64> {
      %253 = index.divu %c3, %c3
      %false_46 = index.bool.constant false
      affine.for %arg3 = 0 to 124 {
      }
      %254 = tensor.empty() : tensor<10x12xf32>
      %mapped_47 = linalg.map ins(%11 : tensor<10x12xf32>) outs(%254 : tensor<10x12xf32>)
        (%in: f32) {
          %268 = vector.broadcast %cst_0 : f32 to vector<6x6x6xf32>
          %269 = vector.fma %268, %268, %268 : vector<6x6x6xf32>
          %270 = arith.maxsi %c574043727_i32, %c1239302868_i32 : i32
          %271 = vector.broadcast %c728709914_i64 : i64 to vector<i64>
          %272 = vector.transfer_write %271, %6[%c0] : vector<i64>, tensor<12xi64>
          %273 = math.roundeven %5 : tensor<12xf16>
          %274 = math.cos %17 : tensor<12xf16>
          %275 = math.ctpop %7 : tensor<6x6x6xi32>
          %276 = vector.extract_strided_slice %30 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          memref.store %false_46, %alloc_15[%c9, %c2] : memref<10x12xi1>
          %277 = arith.cmpi sle, %false_46, %true : i1
          %278 = index.sub %c11, %c7
          %279 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
          %dest, %accumulated_value = vector.scan <add>, %268, %279 {inclusive = true, reduction_dim = 2 : i64} : vector<6x6x6xf32>, vector<6x6xf32>
          %280 = vector.create_mask %278, %253 : vector<10x12xi1>
          %281 = math.cos %16 : tensor<12xf16>
          %282 = index.maxu %c7, %c6
          %283 = vector.broadcast %cst_2 : f16 to vector<f16>
          %284 = vector.transfer_write %283, %5[%c1] : vector<f16>, tensor<12xf16>
          %285 = vector.broadcast %cst_0 : f32 to vector<10x12xf32>
          %286 = vector.fma %285, %285, %285 : vector<10x12xf32>
          %287 = index.sizeof
          memref.assume_alignment %alloc, 8 : memref<1x6xi1>
          %288 = vector.splat %c-1636_i16 : vector<10x12xi16>
          %289 = affine.max affine_map<(d0, d1) -> ((d1 - d0 + d0) * 64)>(%c2, %278)
          %290 = math.ipowi %21, %21 : tensor<i1>
          %291 = arith.floordivsi %c25536_i16, %c23297_i16 : i16
          %292 = math.fma %9, %16, %16 : tensor<12xf16>
          %293 = math.roundeven %15 : tensor<12xf32>
          %294 = arith.floordivsi %c-1636_i16, %c31481_i16 : i16
          %295 = arith.floordivsi %c963791498_i64, %c728709914_i64 : i64
          memref.store %c2136994837_i32, %alloc_8[%c6] : memref<12xi32>
          %296 = arith.minui %c1239302868_i32, %c1239302868_i32 : i32
          %297 = vector.broadcast %c25536_i16 : i16 to vector<1xi16>
          %298 = vector.broadcast %false_46 : i1 to vector<1xi1>
          %299 = vector.maskedload %alloc_20[%c1], %298, %297 : memref<10xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          vector.print %269 : vector<6x6x6xf32>
          %300 = vector.create_mask %c4, %c15 : vector<10x12xi1>
          %301 = math.round %14 : tensor<1x6xf32>
          %cst_49 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_49 : f32
        }
      %255 = vector.broadcast %c25536_i16 : i16 to vector<1xi16>
      %256 = vector.broadcast %false_46 : i1 to vector<1xi1>
      %257 = vector.maskedload %alloc_18[%c0, %c3], %256, %255 : memref<1x6xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %258 = math.absi %true : i1
      %true_48 = index.bool.constant true
      %259 = math.log10 %15 : tensor<12xf32>
      %260 = index.mul %253, %c1
      %261 = index.floordivs %c8, %c15
      %262 = arith.remf %cst_3, %cst_0 : f32
      %263 = math.absi %c31481_i16 : i16
      %264 = math.absi %7 : tensor<6x6x6xi32>
      %265 = arith.andi %true, %true_1 : i1
      %266 = math.log2 %254 : tensor<10x12xf32>
      %267 = bufferization.to_memref %16 : memref<12xf16>
      scf.yield %6 : tensor<12xi64>
    }
    %33 = arith.andi %c1101131446_i32, %c2136994837_i32 : i32
    %34 = math.atan2 %17, %17 : tensor<12xf16>
    %35 = arith.shrui %c728709914_i64, %c728709914_i64 : i64
    %36 = vector.broadcast %cst_3 : f32 to vector<10x12xf32>
    %37 = index.divs %c9, %c6
    %38 = math.copysign %15, %15 : tensor<12xf32>
    %39 = vector.insertelement %cst_0, %22[%c8 : index] : vector<1xf32>
    %40 = math.powf %11, %11 : tensor<10x12xf32>
    %c1352139553_i32 = arith.constant 1352139553 : i32
    %41 = math.fpowi %15, %12 : tensor<12xf32>, tensor<12xi32>
    %generated = tensor.generate %c15 {
    ^bb0(%arg3: index, %arg4: index):
      %253 = vector.create_mask %c9, %c2 : vector<1x6xi1>
      %alloc_46 = memref.alloc() : memref<6x12xi64>
      %254 = tensor.empty() : tensor<1x12xi64>
      %255 = linalg.matmul ins(%8, %alloc_46 : tensor<1x6xi64>, memref<6x12xi64>) outs(%254 : tensor<1x12xi64>) -> tensor<1x12xi64>
      %256 = index.maxu %c6, %c11
      %generated_47 = tensor.generate %c4, %arg3 {
      ^bb0(%arg5: index, %arg6: index):
        %257 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
        %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %36, %36, %257 : vector<10x12xf32>, vector<10x12xf32> into vector<12x12xf32>
        %259 = math.cttz %1 : tensor<12xi1>
        %260 = math.exp %9 : tensor<12xf16>
        %261 = index.divu %c1, %c14
        tensor.yield %c-1636_i16 : i16
      } : tensor<?x?xi16>
      tensor.yield %c25536_i16 : i16
    } : tensor<?x12xi16>
    %42 = math.atan %17 : tensor<12xf16>
    %cst_21 = arith.constant 1.000000e+00 : f32
    %cst_22 = arith.constant 0.000000e+00 : f32
    %43 = vector.transfer_read %11[%c6, %c10], %cst_22 : tensor<10x12xf32>, vector<f32>
    %44 = vector.broadcast %cst_0 : f32 to vector<6x6x6xf32>
    %45 = vector.fma %44, %44, %44 : vector<6x6x6xf32>
    %46 = math.absi %32 : tensor<12xi64>
    %47 = vector.broadcast %cst_3 : f32 to vector<10x12xf32>
    %48 = vector.fma %47, %36, %36 : vector<10x12xf32>
    %49 = arith.divsi %c31481_i16, %c25536_i16 : i16
    %50 = arith.remsi %c728709914_i64, %c963791498_i64 : i64
    %51 = index.maxs %c14, %c5
    %52 = arith.shli %c2136994837_i32, %c2136994837_i32 : i32
    %53 = index.add %51, %c13
    %54 = arith.shrui %c25536_i16, %c31481_i16 : i16
    %55 = index.divu %37, %c11
    %alloc_23 = memref.alloc() : memref<6x6x6xi1>
    %56 = affine.apply affine_map<(d0, d1) -> (0)>(%c11, %c8)
    %splat = tensor.splat %23 : tensor<6x6x6xf16>
    %57 = math.atan %23 : f16
    %alloc_24 = memref.alloc() : memref<1x6xi64>
    memref.tensor_store %8, %alloc_24 : memref<1x6xi64>
    %58 = vector.transpose %22, [0] : vector<1xf32> to vector<1xf32>
    %59 = index.add %c7, %c2
    %60 = math.atan %splat : tensor<6x6x6xf16>
    memref.assume_alignment %alloc_13, 16 : memref<1x6xi1>
    %61 = math.roundeven %cst_2 : f16
    %62 = vector.broadcast %cst_3 : f32 to vector<f32>
    vector.transfer_write %62, %alloc_19[%53, %c6] : vector<f32>, memref<6x1xf32>
    %63 = arith.shli %true_1, %true : i1
    %64 = arith.divf %cst_2, %23 : f16
    %65 = arith.remf %cst_21, %cst : f32
    %66 = vector.broadcast %cst : f32 to vector<12x12xf32>
    %67 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %47, %48, %66 : vector<10x12xf32>, vector<10x12xf32> into vector<12x12xf32>
    %68 = index.sub %c11, %51
    %69 = math.round %17 : tensor<12xf16>
    %70 = arith.remf %23, %cst_2 : f16
    %71 = math.rsqrt %2 : tensor<6x6x6xf32>
    %72 = arith.addi %c2136994837_i32, %c2136994837_i32 : i32
    %cast = tensor.cast %8 : tensor<1x6xi64> to tensor<?x?xi64>
    %73 = arith.remf %cst_21, %cst_0 : f32
    %74 = arith.shli %c23297_i16, %c-1636_i16 : i16
    %75 = math.cos %cst : f32
    %76 = arith.cmpi uge, %c963791498_i64, %c728709914_i64 : i64
    %77 = vector.broadcast %c-1636_i16 : i16 to vector<10xi16>
    %78 = vector.broadcast %true_1 : i1 to vector<10xi1>
    %79 = vector.maskedload %alloc_4[%c5, %c3, %c4], %78, %77 : memref<6x6x6xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
    %80 = index.sizeof
    %81 = math.fpowi %9, %12 : tensor<12xf16>, tensor<12xi32>
    %82 = vector.broadcast %37 : index to vector<12xindex>
    %83 = vector.broadcast %true_1 : i1 to vector<12xi1>
    %84 = vector.broadcast %cst_2 : f16 to vector<12xf16>
    vector.scatter %alloc_14[%c0, %c0] [%82], %83, %84 : memref<1x6xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    %rank = tensor.rank %9 : tensor<12xf16>
    %85 = math.cttz %13 : tensor<6x6x6xi32>
    %86 = vector.bitcast %18 : vector<6xf32> to vector<6xf32>
    %87 = arith.andi %c963791498_i64, %c963791498_i64 : i64
    %88 = affine.for %arg3 = 0 to 13 iter_args(%arg4 = %c10) -> (index) {
      affine.yield %c7 : index
    }
    %89 = arith.minsi %c25536_i16, %c31481_i16 : i16
    %90 = index.ceildivs %c3, %37
    %rank_25 = tensor.rank %21 : tensor<i1>
    %91 = vector.broadcast %cst_0 : f32 to vector<12xf32>
    %92 = arith.remsi %true_1, %true : i1
    scf.if %true_1 {
      %253 = vector.reduction <xor>, %79 : vector<10xi16> into i16
      %254 = arith.cmpi ult, %c574043727_i32, %c1239302868_i32 : i32
      %255 = affine.if affine_set<(d0) : (d0 mod 64 + d0 - 4 >= 0, -d0 - 32 == 0)>(%c10) -> memref<10x12xf16> {
        %260 = math.atan %17 : tensor<12xf16>
        %261 = math.ipowi %8, %8 : tensor<1x6xi64>
        %262 = arith.mulf %cst_2, %cst_2 : f16
        %263 = vector.create_mask %c5, %90 : vector<1x6xi1>
        %264 = arith.ori %c23297_i16, %c23297_i16 : i16
        %265 = tensor.empty() : tensor<10x12xi16>
        %266 = math.absf %9 : tensor<12xf16>
        %expanded_46 = tensor.expand_shape %19 [[0, 1]] : tensor<12xi1> into tensor<12x1xi1>
        %alloc_47 = memref.alloc() : memref<10x12xf16>
        affine.yield %alloc_47 : memref<10x12xf16>
      } else {
        %260 = index.mul %37, %c4
        %261 = arith.shrui %c23297_i16, %c25536_i16 : i16
        %alloc_46 = memref.alloc() : memref<12xi32>
        memref.copy %alloc_8, %alloc_46 : memref<12xi32> to memref<12xi32>
        %alloc_47 = memref.alloc() : memref<10x12xi16>
        memref.copy %alloc_9, %alloc_47 : memref<10x12xi16> to memref<10x12xi16>
        %262 = arith.remui %c1239302868_i32, %c1101131446_i32 : i32
        %263 = vector.extract_strided_slice %48 {offsets = [8], sizes = [1], strides = [1]} : vector<10x12xf32> to vector<1x12xf32>
        %264 = tensor.empty() : tensor<6x6xf32>
        %265 = tensor.empty() : tensor<1x6xf32>
        %266 = linalg.matmul ins(%14, %264 : tensor<1x6xf32>, tensor<6x6xf32>) outs(%265 : tensor<1x6xf32>) -> tensor<1x6xf32>
        %267 = math.log2 %9 : tensor<12xf16>
        %alloc_48 = memref.alloc() : memref<10x12xf16>
        affine.yield %alloc_48 : memref<10x12xf16>
      }
      vector.print %30 : vector<1xf32>
      %256 = arith.cmpi sgt, %true_1, %true_1 : i1
      %257 = math.roundeven %9 : tensor<12xf16>
      %258 = math.roundeven %0 : tensor<6x6x6xf32>
      %259 = math.cos %5 : tensor<12xf16>
    } else {
      %253 = arith.subi %c31481_i16, %c25536_i16 : i16
      %254 = arith.shli %c1239302868_i32, %c1239302868_i32 : i32
      %255 = arith.maxsi %true, %true : i1
      %256 = arith.shrui %c-1636_i16, %c31481_i16 : i16
      %257 = math.atan %cst_3 : f32
      %258 = math.ipowi %c31481_i16, %c23297_i16 : i16
      affine.for %arg3 = 0 to 124 {
      }
      %259 = math.round %cst_3 : f32
    }
    %93 = vector.broadcast %cst_21 : f32 to vector<12x12xf32>
    %94 = vector.outerproduct %91, %91, %93 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
    %95 = arith.andi %c963791498_i64, %c963791498_i64 : i64
    %96 = math.exp2 %11 : tensor<10x12xf32>
    %97 = arith.minui %c1101131446_i32, %c2136994837_i32 : i32
    %98 = math.fpowi %cst_2, %c1239302868_i32 : f16, i32
    %99 = memref.realloc %alloc_20 : memref<10xi16> to memref<6xi16>
    %100 = scf.index_switch %c13 -> tensor<12xf32> 
    case 1 {
      scf.if %true {
        %268 = arith.shli %c-1636_i16, %c23297_i16 : i16
        %269 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %270 = vector.maskedload %alloc_19[%c2, %c0], %78, %269 : memref<6x1xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        memref.assume_alignment %alloc_7, 4 : memref<6x6x6xf16>
        %alloc_46 = memref.alloc() : memref<12x10xf32>
        %271 = tensor.empty() : tensor<10x10xf32>
        %272 = linalg.matmul ins(%11, %alloc_46 : tensor<10x12xf32>, memref<12x10xf32>) outs(%271 : tensor<10x10xf32>) -> tensor<10x10xf32>
        %273 = arith.remf %cst, %cst : f32
        %274 = vector.insertelement %cst_21, %269[%59 : index] : vector<10xf32>
        %275 = arith.minf %cst_2, %23 : f16
        vector.print %36 : vector<10x12xf32>
      } else {
        %268 = vector.reduction <minf>, %22 : vector<1xf32> into f32
        %269 = affine.max affine_map<(d0) -> (0)>(%c15)
        %270 = arith.minui %c728709914_i64, %c728709914_i64 : i64
        %cast_46 = tensor.cast %20 : tensor<i1> to tensor<i1>
        %271 = affine.max affine_map<(d0) -> (d0 * 4, 0, d0)>(%c2)
        %272 = arith.subi %c25536_i16, %c25536_i16 : i16
        %273 = arith.maxsi %c25536_i16, %c31481_i16 : i16
        %extracted = tensor.extract %2[%c1, %c1, %c3] : tensor<6x6x6xf32>
      }
      %253 = bufferization.to_memref %1 : memref<12xi1>
      %254 = arith.divsi %c25536_i16, %c25536_i16 : i16
      %255 = arith.negf %cst_21 : f32
      %256 = memref.load %alloc_10[%c0] : memref<12xi64>
      %257 = vector.shuffle %22, %30 [0, 1] : vector<1xf32>, vector<1xf32>
      %258 = vector.splat %55 : vector<6x6x6xindex>
      %259 = math.fma %14, %14, %14 : tensor<1x6xf32>
      %260 = vector.create_mask %68, %c11 : vector<1x6xi1>
      %261 = index.castu %c14 : index to i32
      %262 = vector.extract_strided_slice %79 {offsets = [8], sizes = [2], strides = [1]} : vector<10xi16> to vector<2xi16>
      %263 = arith.muli %c-1636_i16, %c23297_i16 : i16
      %264 = math.fpowi %5, %12 : tensor<12xf16>, tensor<12xi32>
      %265 = math.atan %2 : tensor<6x6x6xf32>
      %266 = index.ceildivs %c5, %37
      %267 = math.powf %splat, %splat : tensor<6x6x6xf16>
      scf.yield %15 : tensor<12xf32>
    }
    default {
      %253 = math.floor %0 : tensor<6x6x6xf32>
      %254 = math.exp %splat : tensor<6x6x6xf16>
      %255 = vector.broadcast %cst_0 : f32 to vector<6x6x6xf32>
      %256 = vector.splat %c15 : vector<6x6x6xindex>
      %257 = scf.while (%arg3 = %22) : (vector<1xf32>) -> vector<1xf32> {
        %expanded_47 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<1x6xf16> into tensor<1x6x1xf16>
        %267 = arith.divui %c2136994837_i32, %c1239302868_i32 : i32
        %268 = arith.floordivsi %c23297_i16, %c31481_i16 : i16
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %269 = vector.transfer_read %5[%c7], %cst_49 : tensor<12xf16>, vector<f16>
        %270 = memref.realloc %alloc_10 : memref<12xi64> to memref<1xi64>
        %271 = math.floor %10 : tensor<1x6xf16>
        %272 = math.fma %10, %10, %10 : tensor<1x6xf16>
        %273 = index.add %c3, %37
        scf.condition(%true_1) %22 : vector<1xf32>
      } do {
      ^bb0(%arg3: vector<1xf32>):
        %267 = arith.floordivsi %c574043727_i32, %c1239302868_i32 : i32
        %268 = math.absi %13 : tensor<6x6x6xi32>
        %269 = math.log2 %15 : tensor<12xf32>
        %from_elements = tensor.from_elements %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c728709914_i64, %c963791498_i64, %c728709914_i64, %c963791498_i64, %c963791498_i64, %c963791498_i64, %c728709914_i64, %c728709914_i64 : tensor<6x6x6xi64>
        %270 = arith.maxsi %c-1636_i16, %c25536_i16 : i16
        %c315554312_i64 = arith.constant 315554312 : i64
        %271 = arith.xori %c-1636_i16, %c23297_i16 : i16
        %272 = index.ceildivs %c10, %c14
        %273 = index.add %c4, %c0
        %alloc_47 = memref.alloc() : memref<6x6xf16>
        %274 = tensor.empty() : tensor<1x6xf16>
        %275 = linalg.matmul ins(%10, %alloc_47 : tensor<1x6xf16>, memref<6x6xf16>) outs(%274 : tensor<1x6xf16>) -> tensor<1x6xf16>
        %276 = math.roundeven %15 : tensor<12xf32>
        %277 = index.sub %80, %c4
        %278 = vector.extract_strided_slice %78 {offsets = [3], sizes = [5], strides = [1]} : vector<10xi1> to vector<5xi1>
        %279 = vector.extract %22[0] : vector<1xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %78, %78, %true_1 : vector<10xi1>, vector<10xi1> into i1
        %281 = index.casts %c1101131446_i32 : i32 to index
        scf.yield %30 : vector<1xf32>
      }
      %258 = arith.shrui %true, %true : i1
      %259 = vector.transpose %45, [1, 2, 0] : vector<6x6x6xf32> to vector<6x6x6xf32>
      %260 = tensor.empty() : tensor<10x12xi32>
      %261 = math.fpowi %11, %260 : tensor<10x12xf32>, tensor<10x12xi32>
      bufferization.dealloc_tensor %16 : tensor<12xf16>
      %splat_46 = tensor.splat %c2136994837_i32 : tensor<10x12xi32>
      %262 = math.fpowi %cst, %c574043727_i32 : f32, i32
      %263 = arith.andi %c31481_i16, %c31481_i16 : i16
      %264 = math.floor %cst : f32
      %265 = index.sub %56, %c0
      affine.for %arg3 = 0 to 115 {
      }
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %91, %91, %cst_21 : vector<12xf32>, vector<12xf32> into f32
      scf.yield %15 : tensor<12xf32>
    }
    %101 = affine.if affine_set<(d0) : (d0 mod 4 >= 0, d0 - (d0 + d0 mod 4) == 0, d0 mod 4 == 0)>(%c6) -> memref<6x6x6xf32> {
      %253 = math.log2 %2 : tensor<6x6x6xf32>
      bufferization.dealloc_tensor %4 : tensor<12xi1>
      %254 = index.divu %c9, %c2
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<6x6x6xi32>) {
      ^bb0(%out: i32):
        %260 = index.maxu %c8, %c4
        %261 = vector.matrix_multiply %78, %78 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %262 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 4 - (d0 + d1 ceildiv 4) - d1 ceildiv 4)>(%c11, %rank_25)
        %263 = math.log2 %10 : tensor<1x6xf16>
        %264 = vector.create_mask %53 : vector<12xi1>
        %265 = math.rsqrt %0 : tensor<6x6x6xf32>
        %266 = affine.max affine_map<(d0, d1, d2, d3) -> (8)>(%c11, %53, %80, %c9)
        %267 = vector.insertelement %cst_21, %30[%56 : index] : vector<1xf32>
        %268 = math.atan2 %11, %11 : tensor<10x12xf32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %18, %86, %cst : vector<6xf32>, vector<6xf32> into f32
        %270 = arith.remf %cst_2, %cst_2 : f16
        %271 = math.absf %16 : tensor<12xf16>
        %272 = index.ceildivu %80, %c13
        %273 = index.floordivs %c7, %260
        %274 = math.roundeven %23 : f16
        %275 = arith.shrui %c1101131446_i32, %out : i32
        %276 = vector.create_mask %c8, %c12 : vector<1x6xi1>
        %277 = arith.ori %c25536_i16, %c31481_i16 : i16
        bufferization.dealloc_tensor %0 : tensor<6x6x6xf32>
        %278 = arith.maxf %cst_2, %23 : f16
        %279 = math.ctpop %c574043727_i32 : i32
        bufferization.dealloc_tensor %7 : tensor<6x6x6xi32>
        %280 = vector.maskedload %alloc_17[%c0, %c1, %c1], %78, %78 : memref<6x6x6xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %true_47 = arith.constant true
        %281 = index.divs %c4, %272
        memref.assume_alignment %alloc_5, 8 : memref<1x6xf16>
        %282 = vector.broadcast %272 : index to vector<10xindex>
        %283 = vector.broadcast %cst_3 : f32 to vector<10xf32>
        vector.scatter %alloc_6[%c0, %c2] [%282], %78, %283 : memref<1x6xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %284 = math.absi %c963791498_i64 : i64
        %285 = math.fma %16, %9, %5 : tensor<12xf16>
        %286 = arith.divsi %c31481_i16, %c25536_i16 : i16
        %rank_48 = tensor.rank %6 : tensor<12xi64>
        %287 = index.sizeof
        linalg.yield %c1239302868_i32 : i32
      } -> tensor<6x6x6xi32>
      %256 = arith.subi %c1239302868_i32, %c574043727_i32 : i32
      %257 = math.roundeven %14 : tensor<1x6xf32>
      %258 = vector.insertelement %cst_21, %86[%c15 : index] : vector<6xf32>
      %259 = vector.broadcast %c23297_i16 : i16 to vector<12xi16>
      %alloc_46 = memref.alloc() : memref<6x6x6xf32>
      affine.yield %alloc_46 : memref<6x6x6xf32>
    } else {
      %253 = arith.andi %c31481_i16, %c-1636_i16 : i16
      %254 = arith.ori %c2136994837_i32, %c2136994837_i32 : i32
      %255 = arith.shrui %c31481_i16, %c31481_i16 : i16
      %256 = math.log10 %17 : tensor<12xf16>
      %257 = math.ctpop %true_1 : i1
      %258 = arith.maxui %true, %true : i1
      %259 = index.casts %c0 : index to i32
      %260 = bufferization.clone %alloc_18 : memref<1x6xi16> to memref<1x6xi16>
      %alloc_46 = memref.alloc() : memref<6x6x6xf32>
      affine.yield %alloc_46 : memref<6x6x6xf32>
    }
    %102 = arith.negf %cst_0 : f32
    %103 = index.sub %c5, %c9
    %104 = affine.max affine_map<(d0, d1, d2) -> (d1 ceildiv 8 - d1, -(d0 - 128), (d0 - 128) ceildiv 4, d1 ceildiv 8 - d1 - 8)>(%c5, %c5, %c2)
    %105 = scf.execute_region -> tensor<6x6x6xf16> {
      %253 = index.mul %104, %c10
      %254 = affine.if affine_set<(d0, d1, d2) : (d1 >= 0)>(%c9, %c12, %c9) -> f32 {
        %265 = index.ceildivs %59, %103
        %266 = vector.create_mask %103, %104 : vector<10x12xi1>
        %267 = index.divu %c3, %c3
        %268 = arith.remf %cst, %cst_3 : f32
        %269 = vector.splat %59 : vector<1x6xindex>
        %270 = vector.splat %c2 : vector<6x6x6xindex>
        %271 = vector.multi_reduction <mul>, %91, %cst_0 [0] : vector<12xf32> to f32
        %272 = math.ctpop %21 : tensor<i1>
        affine.yield %cst_21 : f32
      } else {
        %265 = vector.broadcast %c574043727_i32 : i32 to vector<1x12xi32>
        %266 = vector.transfer_write %265, %13[%rank, %104, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x12xi32>, tensor<6x6x6xi32>
        %267 = memref.realloc %alloc_8 : memref<12xi32> to memref<6xi32>
        %268 = arith.ori %c1101131446_i32, %c2136994837_i32 : i32
        %269 = memref.realloc %alloc_12 : memref<12xi64> to memref<12xi64>
        %270 = index.sizeof
        %271 = math.atan2 %0, %2 : tensor<6x6x6xf32>
        %272 = index.castu %90 : index to i32
        %273 = arith.minsi %c25536_i16, %c-1636_i16 : i16
        affine.yield %cst : f32
      }
      %255 = vector.splat %c4 : vector<12xindex>
      %256 = arith.minsi %c963791498_i64, %c963791498_i64 : i64
      %generated_46 = tensor.generate %rank, %53 {
      ^bb0(%arg3: index, %arg4: index):
        %265 = arith.maxsi %c31481_i16, %c23297_i16 : i16
        %266 = vector.broadcast %cst_3 : f32 to vector<6x6x6xf32>
        %267 = vector.fma %266, %44, %45 : vector<6x6x6xf32>
        %268 = vector.splat %59 : vector<1x6xindex>
        %269 = math.ipowi %6, %32 : tensor<12xi64>
        tensor.yield %cst : f32
      } : tensor<?x?xf32>
      scf.index_switch %c0 
      case 1 {
        %265 = vector.broadcast %c6 : index to vector<12xindex>
        %266 = vector.broadcast %true : i1 to vector<12xi1>
        %267 = vector.broadcast %c963791498_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_12[%c1] [%265], %266, %267 : memref<12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %268 = index.sizeof
        %269 = index.ceildivs %37, %c10
        %270 = affine.max affine_map<(d0, d1, d2) -> (d0 * 2, (d1 + 16) ceildiv 32, 0, d0 - 64)>(%c1, %c8, %c15)
        %alloc_48 = memref.alloc() : memref<10x12xf32>
        %271 = vector.broadcast %true : i1 to vector<6x6x6xi1>
        %272 = vector.broadcast %c574043727_i32 : i32 to vector<6x6x6xi32>
        %273 = vector.gather %alloc_48[%c10, %c10] [%272], %271, %45 : memref<10x12xf32>, vector<6x6x6xi32>, vector<6x6x6xi1>, vector<6x6x6xf32> into vector<6x6x6xf32>
        %274 = math.floor %17 : tensor<12xf16>
        %275 = arith.shrui %c2136994837_i32, %c574043727_i32 : i32
        %276 = math.fma %14, %14, %14 : tensor<1x6xf32>
        %alloc_49 = memref.alloc() : memref<12x12xf32>
        %277 = tensor.empty() : tensor<10x12xf32>
        %278 = linalg.matmul ins(%11, %alloc_49 : tensor<10x12xf32>, memref<12x12xf32>) outs(%277 : tensor<10x12xf32>) -> tensor<10x12xf32>
        %279 = arith.remf %cst, %cst_3 : f32
        %280 = vector.insertelement %cst, %91[%269 : index] : vector<12xf32>
        memref.store %c31481_i16, %alloc_18[%c0, %c2] : memref<1x6xi16>
        %281 = index.casts %c5 : index to i32
        %282 = affine.max affine_map<(d0, d1, d2) -> (-(d2 - d0), (d2 ceildiv 16 - 16) ceildiv 2, d1 - 1, d2)>(%rank, %c8, %104)
        %283 = math.atan2 %9, %9 : tensor<12xf16>
        %284 = index.maxu %80, %51
        scf.yield
      }
      case 2 {
        %265 = math.rsqrt %11 : tensor<10x12xf32>
        %266 = arith.minui %c963791498_i64, %c963791498_i64 : i64
        %267 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%59, %c12, %c8)
        %268 = vector.broadcast %cst_21 : f32 to vector<10x12xf32>
        %269 = vector.fma %268, %47, %47 : vector<10x12xf32>
        %270 = vector.extract_strided_slice %86 {offsets = [3], sizes = [3], strides = [1]} : vector<6xf32> to vector<3xf32>
        %271 = math.ipowi %21, %20 : tensor<i1>
        %272 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %273 = vector.outerproduct %22, %22, %272 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %274 = arith.minsi %true, %true : i1
        %275 = math.log10 %10 : tensor<1x6xf16>
        %splat_48 = tensor.splat %c23297_i16 : tensor<10x12xi16>
        %276 = arith.maxsi %true_1, %true : i1
        %277 = index.maxu %c0, %c6
        %278 = tensor.empty(%c14) : tensor<?xi1>
        %279 = arith.floordivsi %c-1636_i16, %c-1636_i16 : i16
        %280 = arith.maxsi %c25536_i16, %c23297_i16 : i16
        %collapsed_49 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xf32> into tensor<6xf32>
        scf.yield
      }
      case 3 {
        %splat_48 = tensor.splat %c728709914_i64 : tensor<6x6x6xi64>
        %265 = tensor.empty() : tensor<1x6xi1>
        %266 = vector.reduction <maxf>, %91 : vector<12xf32> into f32
        %267 = arith.divf %cst_21, %cst_21 : f32
        %268 = vector.extract %86[5] : vector<6xf32>
        %269 = math.round %cst_0 : f32
        %270 = vector.broadcast %cst : f32 to vector<1x1xf32>
        %271 = vector.outerproduct %30, %30, %270 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %272 = vector.transpose %45, [0, 1, 2] : vector<6x6x6xf32> to vector<6x6x6xf32>
        %273 = math.round %2 : tensor<6x6x6xf32>
        %274 = vector.broadcast %cst : f32 to vector<12xf32>
        %275 = vector.fma %274, %91, %91 : vector<12xf32>
        %276 = index.ceildivs %55, %c12
        %277 = arith.ori %true, %true : i1
        %true_49 = arith.constant true
        %278 = vector.transfer_read %alloc_17[%59, %276, %37], %true_49 : memref<6x6x6xi1>, vector<1x12xi1>
        %279 = arith.divsi %c1239302868_i32, %c1239302868_i32 : i32
        %280 = math.powf %16, %17 : tensor<12xf16>
        %splat_50 = tensor.splat %true : tensor<6x6x6xi1>
        scf.yield
      }
      default {
        %265 = math.tan %5 : tensor<12xf16>
        %266 = math.fma %16, %5, %16 : tensor<12xf16>
        %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %18, %86, %cst_21 : vector<6xf32>, vector<6xf32> into f32
        %268 = index.maxs %c8, %c1
        %269 = affine.min affine_map<(d0, d1) -> (d0 floordiv 32 + d0 floordiv 32 - d1)>(%rank_25, %268)
        %270 = index.add %103, %rank
        %271 = index.casts %true_1 : i1 to index
        %alloc_48 = memref.alloc() : memref<12xi32>
        %272 = index.floordivs %271, %55
        %true_49 = arith.constant true
        %273 = arith.addf %cst, %cst_21 : f32
        %274 = arith.divsi %c1239302868_i32, %c1239302868_i32 : i32
        %275 = index.castu %51 : index to i32
        memref.assume_alignment %alloc_16, 1 : memref<1x6xi32>
        %collapsed_50 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
        %276 = math.log %2 : tensor<6x6x6xf32>
      }
      %257 = memref.realloc %alloc_8 : memref<12xi32> to memref<10xi32>
      %258 = math.atan2 %23, %cst_2 : f16
      %259 = math.log10 %10 : tensor<1x6xf16>
      %260 = arith.xori %true, %true_1 : i1
      memref.store %cst_0, %alloc_6[%c0, %c1] : memref<1x6xf32>
      %261 = math.atan2 %2, %2 : tensor<6x6x6xf32>
      %262 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %262, %alloc_17[%253, %c10, %68] : vector<i1>, memref<6x6x6xi1>
      %263 = memref.load %alloc_8[%c4] : memref<12xi32>
      %264 = arith.floordivsi %c574043727_i32, %c574043727_i32 : i32
      %false_47 = index.bool.constant false
      scf.yield %splat : tensor<6x6x6xf16>
    }
    %true_26 = index.bool.constant true
    %106 = math.round %10 : tensor<1x6xf16>
    %107 = math.ipowi %1, %4 : tensor<12xi1>
    %108 = arith.remf %cst_2, %cst_2 : f16
    %rank_27 = tensor.rank %11 : tensor<10x12xf32>
    %109 = arith.divf %cst, %cst_21 : f32
    %110 = math.sqrt %17 : tensor<12xf16>
    %111 = vector.broadcast %c31481_i16 : i16 to vector<6x6x6xi16>
    %112 = index.ceildivs %c14, %c6
    %113 = vector.broadcast %103 : index to vector<10xindex>
    vector.scatter %alloc_18[%c0, %c2] [%113], %78, %77 : memref<1x6xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
    %114 = math.round %16 : tensor<12xf16>
    %115 = scf.while (%arg3 = %45) : (vector<6x6x6xf32>) -> vector<6x6x6xf32> {
      %253 = arith.divui %c31481_i16, %c-1636_i16 : i16
      %254 = vector.splat %51 : vector<1x6xindex>
      %255 = affine.for %arg4 = 0 to 3 iter_args(%arg5 = %7) -> (tensor<6x6x6xi32>) {
        affine.yield %7 : tensor<6x6x6xi32>
      }
      %256 = index.casts %112 : index to i32
      %257 = arith.xori %true_26, %true_26 : i1
      %258 = memref.load %alloc_14[%c0, %c0] : memref<1x6xf16>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %78, %78, %true_1 : vector<10xi1>, vector<10xi1> into i1
      %260 = memref.alloca_scope  -> (i64) {
        %261 = arith.subi %c1101131446_i32, %c2136994837_i32 : i32
        %262 = arith.remui %true_1, %true_1 : i1
        %263 = index.maxs %c11, %103
        %264 = index.divu %rank_25, %c14
        %265 = vector.extract_strided_slice %18 {offsets = [2], sizes = [3], strides = [1]} : vector<6xf32> to vector<3xf32>
        %266 = arith.shli %c31481_i16, %c31481_i16 : i16
        %267 = math.exp %cst_3 : f32
        %268 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %18, %44, %268 : vector<6xf32>, vector<6x6x6xf32> into vector<6x6xf32>
        %270 = bufferization.to_tensor %alloc_10 : memref<12xi64>
        %271 = arith.remf %23, %cst_2 : f16
        memref.copy %alloc_14, %29 : memref<1x6xf16> to memref<1x6xf16>
        %272 = vector.splat %37 : vector<6x6x6xindex>
        %273 = arith.remf %cst_3, %cst_3 : f32
        %collapsed_46 = tensor.collapse_shape %11 [[0, 1]] : tensor<10x12xf32> into tensor<120xf32>
        %274 = arith.cmpi slt, %c-1636_i16, %c25536_i16 : i16
        bufferization.dealloc_tensor %8 : tensor<1x6xi64>
        %275 = arith.maxsi %c2136994837_i32, %c574043727_i32 : i32
        %276 = math.atan %cst_21 : f32
        %277 = math.fma %16, %5, %9 : tensor<12xf16>
        %278 = vector.insertelement %cst_0, %265[%c0 : index] : vector<3xf32>
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 2)>(%rank_27, %rank_25, %68, %263)
        %280 = math.ipowi %4, %3 : tensor<12xi1>
        %281 = index.sizeof
        %282 = math.sqrt %9 : tensor<12xf16>
        %283 = math.exp %cst_3 : f32
        %284 = index.maxs %53, %90
        %285 = arith.xori %c23297_i16, %c25536_i16 : i16
        %286 = index.ceildivs %281, %80
        %287 = vector.insertelement %c23297_i16, %79[%56 : index] : vector<10xi16>
        %288 = math.cttz %8 : tensor<1x6xi64>
        %289 = math.log10 %15 : tensor<12xf32>
        %rank_47 = tensor.rank %3 : tensor<12xi1>
        memref.alloca_scope.return %c728709914_i64 : i64
      }
      scf.condition(%true) %45 : vector<6x6x6xf32>
    } do {
    ^bb0(%arg3: vector<6x6x6xf32>):
      %253 = math.roundeven %105 : tensor<6x6x6xf16>
      %254 = arith.divui %c963791498_i64, %c728709914_i64 : i64
      %255 = vector.broadcast %cst_21 : f32 to vector<f32>
      vector.transfer_write %255, %alloc_19[%rank_25, %rank_25] : vector<f32>, memref<6x1xf32>
      %collapsed_46 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
      %alloca = memref.alloca() : memref<12xi32>
      %256 = tensor.empty() : tensor<12xi16>
      %257 = vector.extract %111[5] : vector<6x6x6xi16>
      %258 = vector.broadcast %c963791498_i64 : i64 to vector<6x6x6xi64>
      %259 = scf.if %true_26 -> (i32) {
        %266 = arith.divsi %c728709914_i64, %c728709914_i64 : i64
        memref.assume_alignment %alloc_13, 1 : memref<1x6xi1>
        %267 = vector.broadcast %cst_21 : f32 to vector<12x12xf32>
        %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %47, %48, %267 : vector<10x12xf32>, vector<10x12xf32> into vector<12x12xf32>
        %269 = index.mul %68, %37
        %270 = index.sizeof
        %271 = vector.broadcast %cst_0 : f32 to vector<12x12xf32>
        %272 = vector.outerproduct %91, %91, %271 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
        %273 = math.ipowi %1, %1 : tensor<12xi1>
        %274 = bufferization.clone %alloc_7 : memref<6x6x6xf16> to memref<6x6x6xf16>
        scf.yield %c1101131446_i32 : i32
      } else {
        %266 = index.sizeof
        %267 = index.sub %c0, %c14
        %collapsed_47 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
        %268 = arith.maxf %cst_3, %cst_3 : f32
        %269 = vector.bitcast %257 : vector<6x6xi16> to vector<6x6xi16>
        %270 = arith.ori %true_1, %true : i1
        %271 = math.ctpop %19 : tensor<12xi1>
        %272 = vector.multi_reduction <minui>, %269, %269 [] : vector<6x6xi16> to vector<6x6xi16>
        scf.yield %c2136994837_i32 : i32
      }
      %260 = vector.load %alloc_12[%c10] : memref<12xi64>, vector<1x6xi64>
      %261 = math.atan %cst_0 : f32
      %262 = arith.maxsi %c963791498_i64, %c728709914_i64 : i64
      scf.execute_region {
        %266 = math.roundeven %16 : tensor<12xf16>
        %collapsed_47 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xf32> into tensor<6xf32>
        %267 = memref.realloc %alloc_12 : memref<12xi64> to memref<1xi64>
        %268 = vector.broadcast %c728709914_i64 : i64 to vector<1x6xi64>
        %269 = arith.andi %c2136994837_i32, %c1239302868_i32 : i32
        %270 = index.divu %c11, %c10
        %271 = math.round %23 : f16
        %272 = vector.insertelement %true, %78[%c8 : index] : vector<10xi1>
        %273 = math.cttz %c728709914_i64 : i64
        %274 = index.mul %rank_25, %104
        %275 = arith.shli %true, %true_26 : i1
        %alloc_48 = memref.alloc() : memref<6x6x6xf32>
        %276 = vector.broadcast %true_1 : i1 to vector<6x6x6xi1>
        %277 = vector.broadcast %259 : i32 to vector<6x6x6xi32>
        %278 = vector.gather %alloc_48[%c2, %68, %80] [%277], %276, %45 : memref<6x6x6xf32>, vector<6x6x6xi32>, vector<6x6x6xi1>, vector<6x6x6xf32> into vector<6x6x6xf32>
        %inserted_49 = tensor.insert %cst into %11[%c9, %c10] : tensor<10x12xf32>
        %279 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
        %280 = vector.outerproduct %86, %86, %279 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
        %281 = math.ipowi %32, %32 : tensor<12xi64>
        %282 = vector.extract_strided_slice %86 {offsets = [3], sizes = [2], strides = [1]} : vector<6xf32> to vector<2xf32>
        scf.yield
      }
      %263 = vector.insertelement %c23297_i16, %77[%c15 : index] : vector<10xi16>
      %264 = arith.ori %true_26, %true : i1
      %265 = arith.mulf %cst_2, %23 : f16
      scf.yield %44 : vector<6x6x6xf32>
    }
    memref.assume_alignment %alloc, 1 : memref<1x6xi1>
    %116 = math.ipowi %32, %6 : tensor<12xi64>
    %117 = math.expm1 %9 : tensor<12xf16>
    %118 = scf.if %true -> (memref<6x6x6xf16>) {
      %253 = math.exp %5 : tensor<12xf16>
      %254 = scf.if %true_26 -> (i16) {
        %261 = arith.ori %c728709914_i64, %c963791498_i64 : i64
        %262 = arith.cmpi uge, %true, %true_26 : i1
        %expanded_48 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<6x6x6xf32> into tensor<6x6x6x1xf32>
        %263 = math.absf %expanded_48 : tensor<6x6x6x1xf32>
        vector.print %62 : vector<f32>
        %264 = math.fpowi %105, %13 : tensor<6x6x6xf16>, tensor<6x6x6xi32>
        %splat_49 = tensor.splat %cst : tensor<10x12xf32>
        %265 = math.atan %cst : f32
        scf.yield %c23297_i16 : i16
      } else {
        %261 = index.divs %c8, %c3
        %262 = math.roundeven %105 : tensor<6x6x6xf16>
        %263 = math.atan2 %9, %5 : tensor<12xf16>
        %collapsed_48 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x12xi16> into tensor<?xi16>
        %collapsed_49 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<6x6x6xi32> into tensor<36x6xi32>
        %true_50 = arith.constant true
        %264 = index.ceildivs %c13, %c15
        %265 = math.ctpop %3 : tensor<12xi1>
        scf.yield %c-1636_i16 : i16
      }
      %collapsed_46 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<6x6x6xi32> into tensor<36x6xi32>
      %255 = arith.negf %cst_21 : f32
      %256 = math.atan %cst_21 : f32
      %257 = index.maxs %c7, %c0
      %258 = tensor.empty() : tensor<12xf16>
      %mapped_47 = linalg.map ins(%16 : tensor<12xf16>) outs(%258 : tensor<12xf16>)
        (%in: f16) {
          %splat_48 = tensor.splat %c2136994837_i32 : tensor<12xi32>
          %261 = arith.shli %c31481_i16, %c25536_i16 : i16
          %262 = index.mul %c3, %59
          %263 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 4)>(%c0, %104, %51)
          %264 = index.sizeof
          %265 = math.atan %258 : tensor<12xf16>
          %266 = vector.reduction <and>, %77 : vector<10xi16> into i16
          %267 = arith.maxsi %true_1, %true_1 : i1
          %268 = vector.broadcast %cst_0 : f32 to vector<1x6xf32>
          %cst_49 = arith.constant 1.000000e+00 : f32
          %cst_50 = arith.constant 0.000000e+00 : f32
          %269 = vector.transfer_read %14[%c0, %c15], %cst_50 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x6xf32>, vector<12xf32>
          %270 = arith.cmpi ugt, %c31481_i16, %c31481_i16 : i16
          %271 = index.mul %c14, %c6
          %true_51 = index.bool.constant true
          %272 = arith.cmpi ult, %c1101131446_i32, %c1101131446_i32 : i32
          %273 = math.log2 %5 : tensor<12xf16>
          memref.assume_alignment %alloc_16, 1 : memref<1x6xi32>
          %collapsed_52 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<6x6x6xi32> into tensor<36x6xi32>
          %274 = vector.multi_reduction <mul>, %86, %86 [] : vector<6xf32> to vector<6xf32>
          %275 = memref.realloc %alloc_8 : memref<12xi32> to memref<12xi32>
          %276 = math.round %11 : tensor<10x12xf32>
          %277 = arith.subi %254, %254 : i16
          %278 = affine.max affine_map<(d0) -> (d0 * 2, d0, -d0)>(%103)
          %279 = arith.remf %cst_3, %cst_3 : f32
          %280 = vector.bitcast %22 : vector<1xf32> to vector<1xf32>
          %collapsed_53 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
          %281 = index.floordivs %112, %271
          %282 = index.add %90, %c14
          %283 = tensor.empty() : tensor<12xi32>
          %284 = index.sizeof
          bufferization.dealloc_tensor %6 : tensor<12xi64>
          %285 = math.cos %0 : tensor<6x6x6xf32>
          %286 = arith.muli %c963791498_i64, %c963791498_i64 : i64
          %cst_54 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_54 : f16
        }
      %259 = vector.broadcast %true_26 : i1 to vector<1xi1>
      %260 = vector.maskedload %alloc_17[%c5, %c3, %c4], %259, %259 : memref<6x6x6xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      scf.yield %alloc_7 : memref<6x6x6xf16>
    } else {
      %253 = math.powf %5, %16 : tensor<12xf16>
      %254 = arith.remf %23, %23 : f16
      %255 = arith.subi %c-1636_i16, %c23297_i16 : i16
      %256 = math.atan %cst_3 : f32
      %257 = arith.floordivsi %true_26, %true_26 : i1
      %258 = affine.max affine_map<(d0, d1) -> (d1, d0, d1 mod 32)>(%103, %c10)
      memref.assume_alignment %alloc_16, 1 : memref<1x6xi32>
      memref.assume_alignment %alloc_14, 1 : memref<1x6xf16>
      scf.yield %alloc_7 : memref<6x6x6xf16>
    }
    %rank_28 = tensor.rank %12 : tensor<12xi32>
    %119 = scf.execute_region -> f16 {
      %253 = math.round %11 : tensor<10x12xf32>
      %254 = arith.remui %c2136994837_i32, %c1101131446_i32 : i32
      %255 = memref.alloca_scope  -> (f16) {
        %extracted = tensor.extract %9[%c10] : tensor<12xf16>
        %269 = tensor.empty() : tensor<6x6xf16>
        %270 = tensor.empty() : tensor<1x6xf16>
        %271 = linalg.matmul ins(%10, %269 : tensor<1x6xf16>, tensor<6x6xf16>) outs(%270 : tensor<1x6xf16>) -> tensor<1x6xf16>
        %272 = index.divs %c9, %c8
        %273 = arith.maxsi %c-1636_i16, %c31481_i16 : i16
        %274 = tensor.empty() : tensor<12xf16>
        %275 = math.cttz %6 : tensor<12xi64>
        %276 = math.powf %cst_21, %cst : f32
        %277 = math.absf %cst : f32
        %278 = arith.minui %c963791498_i64, %c728709914_i64 : i64
        %279 = arith.maxsi %c2136994837_i32, %c2136994837_i32 : i32
        %280 = vector.broadcast %c1101131446_i32 : i32 to vector<6x6x6xi32>
        %281 = index.casts %c1101131446_i32 : i32 to index
        %282 = arith.negf %23 : f16
        %283 = index.divs %272, %59
        %284 = math.fma %10, %10, %10 : tensor<1x6xf16>
        %285 = vector.create_mask %c7, %c7 : vector<10x12xi1>
        %286 = arith.andi %c728709914_i64, %c963791498_i64 : i64
        %287 = index.divs %c1, %56
        %288 = index.sub %59, %rank
        %289 = vector.reduction <mul>, %91 : vector<12xf32> into f32
        %splat_47 = tensor.splat %cst_0 : tensor<12xf32>
        %290 = arith.minf %cst_0, %cst_21 : f32
        %collapsed_48 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xf32> into tensor<6xf32>
        %291 = vector.broadcast %cst : f32 to vector<1x6xf32>
        %292 = vector.fma %291, %291, %291 : vector<1x6xf32>
        %293 = vector.extract_strided_slice %18 {offsets = [3], sizes = [1], strides = [1]} : vector<6xf32> to vector<1xf32>
        %294 = math.fpowi %splat_47, %12 : tensor<12xf32>, tensor<12xi32>
        %295 = arith.addf %cst_2, %extracted : f16
        %296 = index.divu %53, %c4
        %297 = arith.andi %c1101131446_i32, %c574043727_i32 : i32
        %cst_49 = arith.constant 1.31265843E+9 : f32
        %298 = arith.maxsi %c574043727_i32, %c1101131446_i32 : i32
        %299 = vector.create_mask %51, %59, %c11 : vector<6x6x6xi1>
        memref.alloca_scope.return %extracted : f16
      }
      %256 = arith.floordivsi %c-1636_i16, %c25536_i16 : i16
      %257 = vector.transpose %48, [1, 0] : vector<10x12xf32> to vector<12x10xf32>
      %258 = arith.ori %c2136994837_i32, %c2136994837_i32 : i32
      %259 = arith.remui %c23297_i16, %c25536_i16 : i16
      %260 = math.cos %cst_21 : f32
      %261 = vector.broadcast %cst_21 : f32 to vector<6x6x6xf32>
      %262 = vector.fma %261, %261, %261 : vector<6x6x6xf32>
      %263 = arith.remsi %true_1, %true : i1
      %264 = index.maxu %rank_25, %c11
      %cst_46 = arith.constant 6.393600e+04 : f16
      %265 = vector.matrix_multiply %22, %22 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %266 = math.exp %splat : tensor<6x6x6xf16>
      %267 = vector.reduction <add>, %91 : vector<12xf32> into f32
      %268 = arith.maxsi %c1239302868_i32, %c2136994837_i32 : i32
      scf.yield %255 : f16
    }
    %120 = vector.create_mask %68, %51, %37 : vector<6x6x6xi1>
    scf.execute_region {
      %253 = vector.broadcast %cst_0 : f32 to vector<6x6x6xf32>
      %254 = vector.fma %253, %44, %253 : vector<6x6x6xf32>
      %255 = tensor.empty() : tensor<6x6x6xf16>
      %mapped_46 = linalg.map ins(%splat : tensor<6x6x6xf16>) outs(%255 : tensor<6x6x6xf16>)
        (%in: f16) {
          %266 = math.atan2 %23, %cst_2 : f16
          %267 = arith.subi %c728709914_i64, %c963791498_i64 : i64
          %268 = arith.divsi %c23297_i16, %c25536_i16 : i16
          %269 = vector.broadcast %c31481_i16 : i16 to vector<6x6x6xi16>
          %270 = arith.cmpi eq, %c23297_i16, %c25536_i16 : i16
          %271 = arith.floordivsi %true, %true_26 : i1
          %272 = vector.reduction <add>, %18 : vector<6xf32> into f32
          %273 = arith.ori %c1101131446_i32, %c1239302868_i32 : i32
          %274 = math.fpowi %cst, %c574043727_i32 : f32, i32
          %275 = math.absf %5 : tensor<12xf16>
          %false_50 = index.bool.constant false
          %276 = math.roundeven %9 : tensor<12xf16>
          memref.assume_alignment %alloc_17, 1 : memref<6x6x6xi1>
          %277 = arith.andi %true_26, %false_50 : i1
          %278 = arith.andi %true, %false_50 : i1
          %279 = index.casts %c-1636_i16 : i16 to index
          %280 = arith.andi %c1101131446_i32, %c1101131446_i32 : i32
          %281 = vector.splat %c5 : vector<6x6x6xindex>
          %282 = vector.reduction <add>, %77 : vector<10xi16> into i16
          bufferization.dealloc_tensor %9 : tensor<12xf16>
          %283 = index.divs %68, %rank_25
          %284 = math.atan %119 : f16
          %285 = math.cos %splat : tensor<6x6x6xf16>
          %286 = vector.reduction <add>, %22 : vector<1xf32> into f32
          %287 = arith.remsi %c963791498_i64, %c963791498_i64 : i64
          %288 = math.ipowi %true, %true : i1
          vector.print %77 : vector<10xi16>
          %289 = math.floor %14 : tensor<1x6xf32>
          %290 = index.casts %c25536_i16 : i16 to index
          %291 = index.floordivs %c10, %80
          %292 = arith.muli %c963791498_i64, %c963791498_i64 : i64
          %293 = vector.broadcast %true_26 : i1 to vector<10x12xi1>
          %cst_51 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_51 : f16
        }
      %256 = math.absf %255 : tensor<6x6x6xf16>
      %257 = math.cos %0 : tensor<6x6x6xf32>
      %258 = arith.andi %c31481_i16, %c-1636_i16 : i16
      %generated_47 = tensor.generate %68 {
      ^bb0(%arg3: index):
        %266 = arith.andi %c728709914_i64, %c728709914_i64 : i64
        %267 = vector.maskedload %alloc_4[%c3, %c5, %c1], %78, %77 : memref<6x6x6xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %268 = vector.splat %cst_2 : vector<12xf16>
        %269 = index.maxs %103, %rank_27
        tensor.yield %c2136994837_i32 : i32
      } : tensor<?xi32>
      %259 = vector.transpose %45, [0, 1, 2] : vector<6x6x6xf32> to vector<6x6x6xf32>
      vector.print %45 : vector<6x6x6xf32>
      %260 = arith.xori %c31481_i16, %c23297_i16 : i16
      %261 = vector.create_mask %rank_25, %53, %55 : vector<6x6x6xi1>
      %alloc_48 = memref.alloc() : memref<1x6xi16>
      memref.copy %alloc_18, %alloc_48 : memref<1x6xi16> to memref<1x6xi16>
      %262 = arith.mulf %119, %119 : f16
      %false_49 = index.bool.constant false
      %263 = math.atan %105 : tensor<6x6x6xf16>
      %264 = index.maxs %c0, %rank_27
      %265 = vector.reduction <add>, %78 : vector<10xi1> into i1
      scf.yield
    }
    %121 = vector.extract_strided_slice %36 {offsets = [6], sizes = [4], strides = [1]} : vector<10x12xf32> to vector<4x12xf32>
    %122 = vector.broadcast %23 : f16 to vector<6xf16>
    %123 = vector.broadcast %true_1 : i1 to vector<6xi1>
    %124 = vector.maskedload %alloc_5[%c0, %c5], %123, %122 : memref<1x6xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %generated_29 = tensor.generate %37 {
    ^bb0(%arg3: index, %arg4: index):
      %253 = vector.create_mask %68, %90 : vector<10x12xi1>
      %254 = arith.divui %c2136994837_i32, %c1239302868_i32 : i32
      %255 = vector.bitcast %111 : vector<6x6x6xi16> to vector<6x6x6xf16>
      %256 = math.powf %17, %16 : tensor<12xf16>
      tensor.yield %true_1 : i1
    } : tensor<?x6xi1>
    %125 = arith.subi %c1101131446_i32, %c2136994837_i32 : i32
    %126 = math.log2 %5 : tensor<12xf16>
    %127 = affine.max affine_map<(d0) -> (((d0 ceildiv 4 - 128) * 2) floordiv 128 + 16, d0 * 64, (-(d0 ceildiv 4) + (d0 ceildiv 4 - 128) * 2) floordiv 32, d0 * 64)>(%rank_28)
    %128 = vector.extract %121[2] : vector<4x12xf32>
    %129 = math.absi %8 : tensor<1x6xi64>
    memref.assume_alignment %alloc_18, 4 : memref<1x6xi16>
    %130 = scf.while (%arg3 = %cst) : (f32) -> f32 {
      %253 = math.roundeven %5 : tensor<12xf16>
      %254 = bufferization.clone %alloc_13 : memref<1x6xi1> to memref<1x6xi1>
      %255 = index.casts %c23297_i16 : i16 to index
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %18, %18, %cst_0 : vector<6xf32>, vector<6xf32> into f32
      %257 = vector.broadcast %c963791498_i64 : i64 to vector<10xi64>
      %258 = vector.maskedload %alloc_12[%c7], %78, %257 : memref<12xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
      %cast_46 = tensor.cast %12 : tensor<12xi32> to tensor<?xi32>
      %259 = vector.transpose %36, [1, 0] : vector<10x12xf32> to vector<12x10xf32>
      %260 = index.sub %c3, %c3
      scf.condition(%true) %cst : f32
    } do {
    ^bb0(%arg3: f32):
      %253 = index.mul %c6, %104
      %254 = tensor.empty(%rank_27) : tensor<?x12xi16>
      %255 = arith.andi %c23297_i16, %c23297_i16 : i16
      %256 = arith.ori %c-1636_i16, %c31481_i16 : i16
      %257 = math.absf %10 : tensor<1x6xf16>
      %258 = vector.splat %119 : vector<10x12xf16>
      %259 = arith.divf %cst_3, %cst_21 : f32
      %260 = index.floordivs %80, %c13
      %261 = tensor.empty() : tensor<1x6xf16>
      %262 = tensor.empty() : tensor<1x6xi32>
      %263 = math.fpowi %14, %262 : tensor<1x6xf32>, tensor<1x6xi32>
      %264 = index.casts %51 : index to i32
      %265 = scf.if %true_1 -> (f32) {
        %270 = arith.shli %c23297_i16, %c25536_i16 : i16
        %271 = math.exp2 %10 : tensor<1x6xf16>
        %272 = memref.realloc %alloc_20 : memref<10xi16> to memref<12xi16>
        %273 = vector.broadcast %59 : index to vector<1xindex>
        %274 = vector.broadcast %true_1 : i1 to vector<1xi1>
        vector.scatter %alloc_13[%c0, %c0] [%273], %274, %274 : memref<1x6xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %275 = math.floor %11 : tensor<10x12xf32>
        %276 = arith.remf %cst_0, %cst_0 : f32
        %277 = arith.cmpi ult, %c25536_i16, %c-1636_i16 : i16
        %278 = index.ceildivs %80, %c12
        scf.yield %cst : f32
      } else {
        %270 = vector.matrix_multiply %86, %91 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<6xf32>, vector<12xf32>) -> vector<2xf32>
        %271 = arith.shli %c-1636_i16, %c23297_i16 : i16
        %272 = math.exp2 %cst_0 : f32
        %273 = affine.max affine_map<(d0, d1) -> ((d1 - d0) * -2, d1 mod 4 - 64, d1 mod 4 - (d1 - d0) floordiv 128, (d1 - d0) floordiv 128)>(%rank, %c7)
        %274 = arith.negf %cst : f32
        %alloc_47 = memref.alloc() : memref<6x1xf32>
        %275 = tensor.empty() : tensor<1x1xf32>
        %276 = linalg.matmul ins(%14, %alloc_47 : tensor<1x6xf32>, memref<6x1xf32>) outs(%275 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %277 = vector.create_mask %rank_28 : vector<12xi1>
        %278 = vector.insertelement %arg3, %270[%c15 : index] : vector<2xf32>
        scf.yield %cst_3 : f32
      }
      %266 = math.log10 %cst_3 : f32
      %alloc_46 = memref.alloc() : memref<10x12xi32>
      %267 = arith.remf %cst, %cst_0 : f32
      %268 = vector.broadcast %true_26 : i1 to vector<12xi1>
      %269 = vector.maskedload %alloc_17[%c4, %c4, %c2], %268, %268 : memref<6x6x6xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      scf.yield %cst_3 : f32
    }
    scf.execute_region {
      %253 = math.log %0 : tensor<6x6x6xf32>
      affine.for %arg3 = 0 to 127 {
      }
      memref.assume_alignment %alloc_12, 4 : memref<12xi64>
      %254 = bufferization.to_memref %20 : memref<i1>
      %255 = bufferization.clone %254 : memref<i1> to memref<i1>
      %256 = math.fpowi %5, %12 : tensor<12xf16>, tensor<12xi32>
      %257 = vector.splat %c31481_i16 : vector<10x12xi16>
      %258 = arith.divf %cst, %cst_0 : f32
      %259 = arith.negf %cst_3 : f32
      %splat_46 = tensor.splat %c23297_i16 : tensor<10x12xi16>
      %260 = arith.subi %c574043727_i32, %c2136994837_i32 : i32
      %261 = affine.load %alloc_19[%c5, %c4] : memref<6x1xf32>
      %262 = arith.divf %23, %23 : f16
      %263 = vector.create_mask %c15 : vector<12xi1>
      %264 = vector.broadcast %cst_3 : f32 to vector<12x12xf32>
      %265 = vector.outerproduct %128, %128, %264 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
      %alloc_47 = memref.alloc() : memref<6x1xi64>
      %266 = tensor.empty() : tensor<1x1xi64>
      %267 = linalg.matmul ins(%8, %alloc_47 : tensor<1x6xi64>, memref<6x1xi64>) outs(%266 : tensor<1x1xi64>) -> tensor<1x1xi64>
      scf.yield
    }
    %131 = math.log10 %5 : tensor<12xf16>
    %inserted = tensor.insert %cst_2 into %splat[%c0, %c5, %c4] : tensor<6x6x6xf16>
    %132 = arith.shli %c25536_i16, %c-1636_i16 : i16
    %133 = scf.index_switch %c4 -> vector<10x12xi32> 
    case 1 {
      %253 = index.casts %c5 : index to i32
      %254 = arith.ori %true, %true_26 : i1
      %255 = arith.divf %cst_21, %cst_21 : f32
      %256 = vector.extract %123[1] : vector<6xi1>
      %257 = arith.ori %c-1636_i16, %c31481_i16 : i16
      %258 = index.floordivs %68, %104
      %259 = bufferization.clone %alloc_11 : memref<6x6x6xi1> to memref<6x6x6xi1>
      %260 = vector.splat %true : vector<10x12xi1>
      %261 = arith.muli %true_1, %true : i1
      %262 = index.maxs %c12, %37
      %263 = vector.splat %cst : vector<6x6x6xf32>
      %264 = vector.bitcast %79 : vector<10xi16> to vector<10xi16>
      vector.print %22 : vector<1xf32>
      %265 = arith.maxsi %c-1636_i16, %c25536_i16 : i16
      %266 = arith.ori %c-1636_i16, %c-1636_i16 : i16
      %267 = vector.transpose %44, [0, 2, 1] : vector<6x6x6xf32> to vector<6x6x6xf32>
      %268 = vector.broadcast %c2136994837_i32 : i32 to vector<10x12xi32>
      scf.yield %268 : vector<10x12xi32>
    }
    case 2 {
      affine.for %arg3 = 0 to 10 {
      }
      %253 = math.copysign %cst_3, %cst_0 : f32
      %254 = index.casts %true_26 : i1 to index
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %86, %86, %cst_21 : vector<6xf32>, vector<6xf32> into f32
      %256 = vector.extract %86[1] : vector<6xf32>
      %257 = index.maxs %51, %c4
      %258 = math.ctpop %1 : tensor<12xi1>
      %259 = tensor.empty() : tensor<6x6x6xi1>
      %mapped_46 = linalg.map ins(%alloc_11, %alloc_11 : memref<6x6x6xi1>, memref<6x6x6xi1>) outs(%259 : tensor<6x6x6xi1>)
        (%in: i1, %in_49: i1) {
          %267 = math.ctpop %13 : tensor<6x6x6xi32>
          %268 = arith.maxsi %c25536_i16, %c-1636_i16 : i16
          %269 = index.divu %rank, %c15
          %270 = index.ceildivs %127, %c13
          %271 = math.fma %5, %5, %9 : tensor<12xf16>
          %272 = arith.subi %c-1636_i16, %c31481_i16 : i16
          %273 = vector.multi_reduction <xor>, %123, %true [0] : vector<6xi1> to i1
          %274 = arith.negf %119 : f16
          %275 = arith.maxui %c23297_i16, %c23297_i16 : i16
          %276 = arith.shli %true_1, %in_49 : i1
          %277 = index.ceildivs %c5, %c0
          %278 = vector.splat %59 : vector<6x6x6xindex>
          %279 = arith.maxsi %c963791498_i64, %c963791498_i64 : i64
          %false_50 = index.bool.constant false
          %280 = index.floordivs %c14, %c9
          %281 = vector.bitcast %79 : vector<10xi16> to vector<10xi16>
          %282 = arith.minui %c25536_i16, %c25536_i16 : i16
          %283 = tensor.empty() : tensor<10x12xf32>
          %splat_51 = tensor.splat %23 : tensor<6x6x6xf16>
          %284 = vector.extract %91[2] : vector<12xf32>
          bufferization.dealloc_tensor %3 : tensor<12xi1>
          %rank_52 = tensor.rank %3 : tensor<12xi1>
          %285 = arith.minf %cst_3, %cst : f32
          %286 = arith.remsi %c31481_i16, %c-1636_i16 : i16
          %287 = math.log2 %2 : tensor<6x6x6xf32>
          %rank_53 = tensor.rank %10 : tensor<1x6xf16>
          %288 = vector.create_mask %c9, %37 : vector<10x12xi1>
          memref.assume_alignment %alloc_19, 2 : memref<6x1xf32>
          %289 = arith.remui %true, %false_50 : i1
          %290 = math.fpowi %119, %c1239302868_i32 : f16, i32
          %291 = index.maxu %c5, %257
          %collapsed_54 = tensor.collapse_shape %splat_51 [[0, 1], [2]] : tensor<6x6x6xf16> into tensor<36x6xf16>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %alloc_47 = memref.alloc() : memref<1x6xf32>
      %260 = vector.bitcast %77 : vector<10xi16> to vector<10xi16>
      %261 = arith.divsi %true_26, %true_1 : i1
      %262 = vector.reduction <maxsi>, %77 : vector<10xi16> into i16
      %263 = arith.divui %c2136994837_i32, %c1239302868_i32 : i32
      %cst_48 = arith.constant 0x4E1A191F : f32
      %264 = math.powf %9, %17 : tensor<12xf16>
      %265 = vector.insertelement %c23297_i16, %260[%c13 : index] : vector<10xi16>
      %266 = vector.broadcast %c2136994837_i32 : i32 to vector<10x12xi32>
      scf.yield %266 : vector<10x12xi32>
    }
    default {
      %253 = math.atan %11 : tensor<10x12xf32>
      %254 = arith.minf %119, %cst_2 : f16
      %255 = arith.divf %23, %23 : f16
      %256 = scf.while (%arg3 = %alloc_18) : (memref<1x6xi16>) -> memref<1x6xi16> {
        %269 = tensor.empty(%37, %56) : tensor<6x?x?xi32>
        %270 = math.log2 %17 : tensor<12xf16>
        %271 = arith.andi %true_1, %true_26 : i1
        %272 = vector.broadcast %c1239302868_i32 : i32 to vector<12xi32>
        %273 = vector.transfer_write %272, %7[%127, %90, %53] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi32>, tensor<6x6x6xi32>
        %274 = affine.max affine_map<(d0, d1, d2) -> (d2 * 16, 0, (d2 floordiv 16 - d1 ceildiv 128) * -16)>(%c0, %c12, %37)
        %275 = math.log10 %10 : tensor<1x6xf16>
        %276 = math.ctpop %20 : tensor<i1>
        %277 = math.atan2 %10, %10 : tensor<1x6xf16>
        scf.condition(%true_1) %alloc_18 : memref<1x6xi16>
      } do {
      ^bb0(%arg3: memref<1x6xi16>):
        %269 = arith.floordivsi %true_1, %true_1 : i1
        %270 = vector.extract %30[0] : vector<1xf32>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %271 = vector.transfer_read %118[%c0, %rank_27, %127], %cst_47 : memref<6x6x6xf16>, vector<f16>
        %272 = math.ctpop %c1239302868_i32 : i32
        %273 = index.floordivs %127, %c1
        %274 = arith.ori %c25536_i16, %c-1636_i16 : i16
        %275 = math.cos %16 : tensor<12xf16>
        vector.print %36 : vector<10x12xf32>
        %276 = arith.divsi %c574043727_i32, %c574043727_i32 : i32
        %expanded_48 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<1x6xf32> into tensor<1x6x1xf32>
        %277 = arith.ori %c25536_i16, %c25536_i16 : i16
        %278 = index.divu %c2, %c9
        %279 = math.powf %expanded_48, %expanded_48 : tensor<1x6x1xf32>
        %280 = arith.divsi %true, %true_1 : i1
        %281 = vector.extract_strided_slice %122 {offsets = [4], sizes = [1], strides = [1]} : vector<6xf16> to vector<1xf16>
        %false_49 = index.bool.constant false
        scf.yield %alloc_18 : memref<1x6xi16>
      }
      %257 = scf.if %true_26 -> (memref<1x6xf32>) {
        %269 = affine.apply affine_map<(d0, d1) -> (-d1 + 2)>(%c13, %c11)
        %270 = vector.create_mask %269, %112 : vector<10x12xi1>
        %271 = index.divs %37, %59
        %272 = arith.minui %c1239302868_i32, %c574043727_i32 : i32
        %273 = math.log %splat : tensor<6x6x6xf16>
        %274 = arith.divsi %true, %true_1 : i1
        %275 = vector.bitcast %18 : vector<6xf32> to vector<6xf32>
        %276 = arith.divf %cst_2, %119 : f16
        scf.yield %alloc_6 : memref<1x6xf32>
      } else {
        %269 = math.fpowi %splat, %13 : tensor<6x6x6xf16>, tensor<6x6x6xi32>
        %270 = math.log %5 : tensor<12xf16>
        %271 = arith.minsi %c23297_i16, %c31481_i16 : i16
        %272 = arith.divf %cst_21, %cst_0 : f32
        %273 = index.ceildivs %51, %c3
        %274 = vector.broadcast %c574043727_i32 : i32 to vector<12xi32>
        %275 = vector.broadcast %true : i1 to vector<12xi1>
        %276 = vector.maskedload %alloc_8[%c10], %275, %274 : memref<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %277 = math.floor %14 : tensor<1x6xf32>
        %278 = math.copysign %5, %9 : tensor<12xf16>
        scf.yield %alloc_6 : memref<1x6xf32>
      }
      %258 = arith.cmpi slt, %c-1636_i16, %c25536_i16 : i16
      %259 = index.add %c9, %37
      %260 = vector.transpose %121, [0, 1] : vector<4x12xf32> to vector<4x12xf32>
      %261 = tensor.empty() : tensor<12xf32>
      memref.tensor_store %12, %alloc_8 : memref<12xi32>
      %262 = math.exp %11 : tensor<10x12xf32>
      %263 = math.floor %cst_3 : f32
      %264 = vector.shuffle %111, %111 [0, 4, 5, 6, 9, 10] : vector<6x6x6xi16>, vector<6x6x6xi16>
      %265 = math.absi %21 : tensor<i1>
      %266 = math.expm1 %9 : tensor<12xf16>
      %267 = vector.bitcast %79 : vector<10xi16> to vector<10xi16>
      %268 = vector.broadcast %c574043727_i32 : i32 to vector<10x12xi32>
      scf.yield %268 : vector<10x12xi32>
    }
    %134 = index.add %c12, %55
    %true_30 = index.bool.constant true
    %135 = vector.splat %c10 : vector<12xindex>
    %136 = vector.broadcast %cst_2 : f16 to vector<12xf16>
    %137 = tensor.empty() : tensor<6x6x6xi64>
    %138 = math.floor %9 : tensor<12xf16>
    %139 = index.maxs %c1, %134
    %140 = math.round %15 : tensor<12xf32>
    %alloc_31 = memref.alloc() : memref<10x12xi32>
    %141 = index.casts %rank_27 : index to i32
    %cst_32 = arith.constant 1.50134643E+9 : f32
    scf.execute_region {
      %253 = arith.maxf %cst_0, %cst_21 : f32
      %254 = arith.ori %c728709914_i64, %c728709914_i64 : i64
      %255 = math.cttz %c728709914_i64 : i64
      %256 = index.floordivs %rank_27, %rank_25
      %257 = affine.load %alloc_8[%c5] : memref<12xi32>
      %258 = index.castu %68 : index to i32
      %259 = scf.if %true_1 -> (memref<1x6xi1>) {
        %269 = arith.minui %true, %true_26 : i1
        %270 = math.floor %9 : tensor<12xf16>
        %271 = arith.ori %true_26, %true : i1
        %272 = math.powf %cst_21, %cst_21 : f32
        %alloc_46 = memref.alloc() : memref<1x6xi16>
        memref.copy %alloc_18, %alloc_46 : memref<1x6xi16> to memref<1x6xi16>
        %273 = arith.divsi %true_26, %true_26 : i1
        %274 = math.floor %0 : tensor<6x6x6xf32>
        %cst_47 = arith.constant 1.000000e+00 : f32
        %275 = vector.transfer_read %alloc_6[%256, %c4], %cst_47 : memref<1x6xf32>, vector<6xf32>
        scf.yield %alloc_13 : memref<1x6xi1>
      } else {
        %cst_46 = arith.constant 1.000000e+00 : f16
        %269 = vector.transfer_read %10[%c10, %c1], %cst_46 : tensor<1x6xf16>, vector<f16>
        %270 = index.sub %rank, %139
        bufferization.dealloc_tensor %5 : tensor<12xf16>
        %271 = arith.remf %cst, %cst_21 : f32
        %272 = bufferization.to_tensor %alloc_9 : memref<10x12xi16>
        %273 = index.castu %true : i1 to index
        %274 = index.castu %c5 : index to i32
        %275 = math.atan2 %14, %14 : tensor<1x6xf32>
        scf.yield %alloc_13 : memref<1x6xi1>
      }
      %260 = index.maxu %c14, %139
      %261 = math.atan %0 : tensor<6x6x6xf32>
      %262 = math.cttz %c963791498_i64 : i64
      %263 = math.roundeven %5 : tensor<12xf16>
      %264 = math.cttz %c2136994837_i32 : i32
      %265 = vector.transpose %45, [0, 1, 2] : vector<6x6x6xf32> to vector<6x6x6xf32>
      %266 = arith.ori %c1101131446_i32, %257 : i32
      %267 = affine.apply affine_map<(d0, d1) -> ((d1 - 4) * 32)>(%68, %56)
      %268 = arith.ceildivsi %true_1, %true_1 : i1
      scf.yield
    }
    %142 = math.atan2 %15, %15 : tensor<12xf32>
    %143 = arith.remf %cst_3, %cst_3 : f32
    %144 = arith.minui %c2136994837_i32, %c2136994837_i32 : i32
    %true_33 = index.bool.constant true
    %145 = vector.broadcast %c1239302868_i32 : i32 to vector<i32>
    %146 = vector.transfer_write %145, %12[%c9] : vector<i32>, tensor<12xi32>
    scf.if %true_33 {
      %253 = arith.cmpi sge, %c1239302868_i32, %c2136994837_i32 : i32
      %cast_46 = tensor.cast %13 : tensor<6x6x6xi32> to tensor<?x?x?xi32>
      %254 = vector.transpose %124, [0] : vector<6xf16> to vector<6xf16>
      %255 = vector.splat %cst_0 : vector<10x12xf32>
      %256 = vector.broadcast %cst_0 : f32 to vector<12xf32>
      %257 = index.ceildivs %c4, %139
      %258 = vector.broadcast %c31481_i16 : i16 to vector<1xi16>
      %259 = vector.broadcast %true_30 : i1 to vector<1xi1>
      %260 = vector.maskedload %alloc_20[%c9], %259, %258 : memref<10xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %261 = index.castu %true_30 : i1 to index
    } else {
      %253 = index.maxu %112, %112
      %254 = arith.cmpi sgt, %true_30, %true_30 : i1
      %255 = vector.broadcast %cst : f32 to vector<1x6xf32>
      scf.if %true_33 {
        %260 = vector.maskedload %29[%c0, %c3], %123, %122 : memref<1x6xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %261 = vector.shuffle %30, %22 [0] : vector<1xf32>, vector<1xf32>
        %cst_46 = arith.constant 1.000000e+00 : f32
        %262 = vector.transfer_read %alloc_6[%c12, %53], %cst_46 : memref<1x6xf32>, vector<1xf32>
        %263 = math.log %11 : tensor<10x12xf32>
        %264 = vector.broadcast %cst_21 : f32 to vector<12xf32>
        %265 = vector.fma %264, %91, %264 : vector<12xf32>
        %266 = index.sizeof
        %267 = vector.broadcast %c963791498_i64 : i64 to vector<10x12xi64>
        %268 = vector.transpose %145, [] : vector<i32> to vector<i32>
      } else {
        %260 = index.ceildivu %rank_28, %c1
        %261 = vector.transpose %78, [0] : vector<10xi1> to vector<10xi1>
        %262 = vector.insertelement %cst, %62[] : vector<f32>
        %263 = tensor.empty() : tensor<1x6xf16>
        %264 = math.round %2 : tensor<6x6x6xf32>
        %265 = math.round %11 : tensor<10x12xf32>
        %266 = math.expm1 %23 : f16
        %267 = index.floordivs %103, %c12
      }
      %256 = math.fpowi %cst_2, %c1239302868_i32 : f16, i32
      bufferization.dealloc_tensor %8 : tensor<1x6xi64>
      %257 = math.tanh %17 : tensor<12xf16>
      %258 = vector.broadcast %cst : f32 to vector<6x6xf32>
      %259 = vector.outerproduct %18, %18, %258 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
    }
    %147 = math.exp2 %cst_21 : f32
    %148 = math.powf %cst_0, %cst_0 : f32
    %149 = arith.maxsi %c23297_i16, %c25536_i16 : i16
    %150 = arith.divsi %c963791498_i64, %c963791498_i64 : i64
    %151 = vector.insertelement %true, %78[%c1 : index] : vector<10xi1>
    %152 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 32 + 4, d0)>(%c1, %56)
    affine.for %arg3 = 0 to 127 {
    }
    %true_34 = index.bool.constant true
    %153 = vector.extract %30[0] : vector<1xf32>
    %154 = arith.divf %cst_0, %cst_21 : f32
    memref.assume_alignment %118, 2 : memref<6x6x6xf16>
    %155 = arith.divsi %c31481_i16, %c-1636_i16 : i16
    %156 = math.log10 %11 : tensor<10x12xf32>
    %157 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d0 * 64, d0)>(%c6, %56, %56, %rank_25)
    %158 = math.atan %cst : f32
    %159 = math.cos %10 : tensor<1x6xf16>
    %160 = vector.broadcast %c1239302868_i32 : i32 to vector<1x6xi32>
    %161 = index.maxs %68, %139
    %162 = affine.if affine_set<(d0, d1) : (((d1 floordiv 16) ceildiv 128) mod 128 - (d1 mod 128 + (d1 floordiv 16) ceildiv 128) >= 0)>(%c4, %c10) -> memref<12xi32> {
      %253 = vector.broadcast %cst : f32 to vector<6x6xf32>
      %254 = vector.outerproduct %86, %18, %253 {kind = #vector.kind<mul>} : vector<6xf32>, vector<6xf32>
      %255 = arith.subi %c574043727_i32, %c1239302868_i32 : i32
      %256 = math.round %cst_2 : f16
      %257 = vector.reduction <add>, %122 : vector<6xf16> into f16
      memref.alloca_scope  {
        %261 = vector.transpose %160, [0, 1] : vector<1x6xi32> to vector<1x6xi32>
        %262 = vector.bitcast %120 : vector<6x6x6xi1> to vector<6x6x6xi1>
        %263 = arith.remsi %true_26, %true_26 : i1
        %264 = math.cos %17 : tensor<12xf16>
        %265 = vector.extract_strided_slice %79 {offsets = [2], sizes = [4], strides = [1]} : vector<10xi16> to vector<4xi16>
        %266 = vector.insertelement %cst_21, %30[%c14 : index] : vector<1xf32>
        %267 = vector.create_mask %51, %127 : vector<1x6xi1>
        %268 = math.round %17 : tensor<12xf16>
        %269 = math.log2 %cst_0 : f32
        %270 = arith.shrui %c2136994837_i32, %c1101131446_i32 : i32
        %271 = vector.broadcast %true : i1 to vector<12xi1>
        %272 = vector.maskedload %alloc_5[%c0, %c4], %271, %136 : memref<1x6xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %273 = arith.minui %c728709914_i64, %c963791498_i64 : i64
        %274 = bufferization.clone %alloc_13 : memref<1x6xi1> to memref<1x6xi1>
        %275 = arith.minf %cst_0, %cst_21 : f32
        %276 = math.absi %true_26 : i1
        %277 = math.fpowi %cst_3, %c2136994837_i32 : f32, i32
        %278 = math.cos %5 : tensor<12xf16>
        %279 = math.powf %9, %17 : tensor<12xf16>
        %280 = arith.minf %cst, %cst : f32
        %281 = vector.broadcast %cst : f32 to vector<12xf32>
        %282 = vector.fma %281, %91, %91 : vector<12xf32>
        %283 = arith.shli %true_30, %true : i1
        %284 = math.absi %true : i1
        %285 = arith.maxf %cst, %cst : f32
        %286 = vector.matrix_multiply %30, %22 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %287 = arith.subi %true_34, %true : i1
        %alloc_46 = memref.alloc() : memref<10x12xf16>
        %288 = arith.remf %cst, %cst_0 : f32
        %289 = vector.broadcast %c574043727_i32 : i32 to vector<6xi32>
        %290 = vector.maskedload %alloc_16[%c0, %c2], %123, %289 : memref<1x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %291 = arith.divsi %c23297_i16, %c25536_i16 : i16
        %292 = index.sizeof
        %true_47 = index.bool.constant true
        memref.assume_alignment %29, 4 : memref<1x6xf16>
      }
      %258 = vector.reduction <maxui>, %123 : vector<6xi1> into i1
      %259 = math.powf %0, %0 : tensor<6x6x6xf32>
      %260 = math.round %105 : tensor<6x6x6xf16>
      affine.yield %alloc_8 : memref<12xi32>
    } else {
      %253 = index.maxs %68, %c5
      %c0_i32 = arith.constant 0 : i32
      %254 = vector.transfer_read %alloc_8[%56], %c0_i32 : memref<12xi32>, vector<i32>
      %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_0, %cst, %cst_21, %cst_21, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_21, %cst, %cst_21, %cst, %cst_0, %cst, %cst_3, %cst_0, %cst_3, %cst, %cst_0, %cst_0, %cst_21, %cst_21, %cst_3, %cst_21, %cst_3, %cst, %cst_0, %cst_21, %cst_21, %cst_0, %cst_0, %cst_21, %cst, %cst_0, %cst_21, %cst_21, %cst_0, %cst_3, %cst, %cst_0, %cst, %cst_0, %cst_3, %cst, %cst, %cst, %cst_0, %cst, %cst_21, %cst_3, %cst_21, %cst_0, %cst, %cst, %cst, %cst_21, %cst_21, %cst_0, %cst_0, %cst_21, %cst, %cst_21, %cst_21, %cst_3, %cst_0, %cst_0, %cst_3, %cst_0, %cst_0, %cst_3, %cst_21, %cst_0, %cst_3, %cst, %cst, %cst_0, %cst_21, %cst_0, %cst_21, %cst, %cst, %cst_0, %cst_21, %cst, %cst, %cst_0, %cst, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_21, %cst_21, %cst_21, %cst_21, %cst_0, %cst_0, %cst_21, %cst_0, %cst_21, %cst_21, %cst_0, %cst_21, %cst, %cst_21, %cst_0, %cst_21, %cst_0, %cst_21, %cst_3, %cst_21, %cst_21, %cst_21, %cst_0, %cst_3 : tensor<10x12xf32>
      %255 = memref.alloca_scope  -> (memref<10x12xi16>) {
        %260 = bufferization.clone %29 : memref<1x6xf16> to memref<1x6xf16>
        %261 = math.atan2 %10, %10 : tensor<1x6xf16>
        %262 = index.ceildivs %55, %127
        %263 = arith.andi %c0_i32, %c2136994837_i32 : i32
        %264 = arith.cmpi ult, %true_30, %true_33 : i1
        %265 = arith.divui %true_30, %true_26 : i1
        %266 = arith.xori %c1101131446_i32, %c0_i32 : i32
        %267 = index.floordivs %c10, %152
        %268 = tensor.empty(%c4) : tensor<1x?xi64>
        %269 = math.floor %105 : tensor<6x6x6xf16>
        %270 = math.roundeven %15 : tensor<12xf32>
        %271 = math.roundeven %cst : f32
        %272 = arith.andi %c-1636_i16, %c25536_i16 : i16
        %273 = index.ceildivs %c4, %c12
        %274 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 64, d1 + 16)>(%161, %c8, %161)
        affine.store %true, %alloc_17[%c5, %c4, %c8] : memref<6x6x6xi1>
        %275 = vector.splat %c31481_i16 : vector<6x6x6xi16>
        %276 = arith.remsi %c23297_i16, %c-1636_i16 : i16
        %277 = math.log10 %15 : tensor<12xf32>
        %278 = arith.addi %c2136994837_i32, %c1101131446_i32 : i32
        %279 = math.fpowi %2, %13 : tensor<6x6x6xf32>, tensor<6x6x6xi32>
        %280 = math.absf %15 : tensor<12xf32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %136, %136, %119 : vector<12xf16>, vector<12xf16> into f16
        memref.assume_alignment %alloc_14, 1 : memref<1x6xf16>
        %282 = vector.broadcast %c23297_i16 : i16 to vector<1x6xi16>
        %rank_46 = tensor.rank %0 : tensor<6x6x6xf32>
        %283 = arith.shrui %c574043727_i32, %c1239302868_i32 : i32
        memref.assume_alignment %118, 4 : memref<6x6x6xf16>
        %284 = vector.broadcast %c31481_i16 : i16 to vector<6x6x6xi16>
        %285 = index.sizeof
        %286 = math.expm1 %11 : tensor<10x12xf32>
        %cst_47 = arith.constant 5.036800e+04 : f16
        memref.alloca_scope.return %alloc_9 : memref<10x12xi16>
      }
      %256 = arith.floordivsi %true_26, %true_26 : i1
      scf.if %true_26 {
        %260 = index.add %127, %37
        %261 = index.sub %c9, %103
        %262 = index.divs %c0, %59
        %263 = arith.shrui %c31481_i16, %c23297_i16 : i16
        %264 = memref.atomic_rmw muli %c2136994837_i32, %alloc_16[%c0, %c0] : (i32, memref<1x6xi32>) -> i32
        %265 = vector.broadcast %true_30 : i1 to vector<10x10xi1>
        %266 = vector.outerproduct %78, %78, %265 {kind = #vector.kind<mul>} : vector<10xi1>, vector<10xi1>
        %267 = math.round %15 : tensor<12xf32>
        %268 = tensor.empty() : tensor<10x12xi64>
      } else {
        %false_46 = arith.constant false
        %260 = arith.ori %c0_i32, %c1239302868_i32 : i32
        %261 = vector.broadcast %cst_21 : f32 to vector<1x6xf32>
        memref.assume_alignment %alloc_14, 8 : memref<1x6xf16>
        %262 = math.ctpop %c0_i32 : i32
        %263 = math.ctpop %c1101131446_i32 : i32
        %264 = arith.negf %cst_3 : f32
        %265 = math.floor %cst : f32
      }
      %257 = vector.broadcast %true_33 : i1 to vector<10x10xi1>
      %258 = vector.outerproduct %78, %78, %257 {kind = #vector.kind<minsi>} : vector<10xi1>, vector<10xi1>
      %259 = index.divu %161, %134
      affine.yield %alloc_8 : memref<12xi32>
    }
    memref.assume_alignment %alloc_11, 4 : memref<6x6x6xi1>
    %splat_35 = tensor.splat %true : tensor<1x6xi1>
    %163 = scf.while (%arg3 = %145) : (vector<i32>) -> vector<i32> {
      %253 = arith.addf %cst, %cst_21 : f32
      %254 = math.ctpop %splat_35 : tensor<1x6xi1>
      %255 = vector.create_mask %rank_27, %53, %c14 : vector<6x6x6xi1>
      %256 = vector.create_mask %c5, %157 : vector<10x12xi1>
      %257 = index.divu %90, %c8
      %splat_46 = tensor.splat %c574043727_i32 : tensor<6x6x6xi32>
      %258 = arith.ori %c31481_i16, %c23297_i16 : i16
      %259 = index.castu %c25536_i16 : i16 to index
      scf.condition(%true) %145 : vector<i32>
    } do {
    ^bb0(%arg3: vector<i32>):
      %253 = math.exp2 %14 : tensor<1x6xf32>
      %254 = vector.multi_reduction <xor>, %79, %c23297_i16 [0] : vector<10xi16> to i16
      %255 = vector.transpose %22, [0] : vector<1xf32> to vector<1xf32>
      %256 = math.atan2 %0, %2 : tensor<6x6x6xf32>
      %257 = index.maxu %rank_25, %c5
      %258 = memref.atomic_rmw minu %c1239302868_i32, %alloc_8[%c0] : (i32, memref<12xi32>) -> i32
      %259 = vector.bitcast %123 : vector<6xi1> to vector<6xi1>
      scf.execute_region {
        %266 = index.divs %c15, %c5
        %267 = math.cttz %c1239302868_i32 : i32
        %cst_47 = arith.constant 1.000000e+00 : f16
        %cst_48 = arith.constant 0.000000e+00 : f16
        %268 = vector.transfer_read %splat[%c15, %c4, %112], %cst_48 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<6x6x6xf16>, vector<1x1xf16>
        %269 = math.absf %11 : tensor<10x12xf32>
        %270 = arith.minf %cst_47, %119 : f16
        %271 = math.powf %cst_3, %cst_21 : f32
        %true_49 = index.bool.constant true
        %272 = arith.shrsi %c1101131446_i32, %c1239302868_i32 : i32
        %273 = math.absf %11 : tensor<10x12xf32>
        %274 = math.round %119 : f16
        %275 = math.ctlz %splat_35 : tensor<1x6xi1>
        bufferization.dealloc_tensor %11 : tensor<10x12xf32>
        %276 = vector.create_mask %rank_27, %139 : vector<1x6xi1>
        %277 = vector.extract_strided_slice %18 {offsets = [4], sizes = [2], strides = [1]} : vector<6xf32> to vector<2xf32>
        %278 = vector.extract %45[3] : vector<6x6x6xf32>
        %279 = math.fma %cst_0, %cst_0, %cst_21 : f32
        scf.yield
      }
      %260 = vector.create_mask %37, %157 : vector<10x12xi1>
      scf.index_switch %rank_27 
      case 1 {
        %266 = math.ipowi %13, %13 : tensor<6x6x6xi32>
        %from_elements = tensor.from_elements %cst_21, %cst_3, %cst_21, %cst_3, %cst_0, %cst : tensor<1x6xf32>
        %267 = index.sizeof
        %268 = vector.reduction <maxf>, %122 : vector<6xf16> into f16
        %269 = arith.divf %cst_0, %cst_0 : f32
        %270 = arith.divsi %true_30, %true_26 : i1
        memref.copy %alloc_13, %alloc : memref<1x6xi1> to memref<1x6xi1>
        %271 = math.round %10 : tensor<1x6xf16>
        %272 = vector.broadcast %cst_2 : f16 to vector<1x6xf16>
        %273 = vector.maskedload %alloc_4[%c0, %c0, %c3], %78, %79 : memref<6x6x6xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %274 = arith.shli %c-1636_i16, %c23297_i16 : i16
        %true_47 = index.bool.constant true
        %275 = arith.cmpi ule, %c23297_i16, %c23297_i16 : i16
        %276 = arith.floordivsi %c728709914_i64, %c728709914_i64 : i64
        %277 = math.absf %2 : tensor<6x6x6xf32>
        %278 = arith.cmpi uge, %true_33, %true_26 : i1
        scf.yield
      }
      case 2 {
        %false_47 = index.bool.constant false
        memref.assume_alignment %29, 1 : memref<1x6xf16>
        affine.store %cst_2, %29[%c1, %c13] : memref<1x6xf16>
        %266 = arith.minf %cst_2, %119 : f16
        %267 = math.atan2 %cst_2, %119 : f16
        %268 = math.ctpop %c-1636_i16 : i16
        %splat_48 = tensor.splat %true_34 : tensor<6x6x6xi1>
        %269 = vector.broadcast %c2136994837_i32 : i32 to vector<12xi32>
        %270 = math.round %14 : tensor<1x6xf32>
        %271 = math.floor %10 : tensor<1x6xf16>
        %272 = arith.ori %c31481_i16, %c25536_i16 : i16
        %273 = arith.shrui %true_33, %true : i1
        %274 = vector.broadcast %c31481_i16 : i16 to vector<6xi16>
        %275 = vector.maskedload %alloc_4[%c5, %c4, %c2], %123, %274 : memref<6x6x6xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %276 = vector.splat %c4 : vector<6x6x6xindex>
        %277 = math.ctlz %c-1636_i16 : i16
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %274, %275, %c31481_i16 : vector<6xi16>, vector<6xi16> into i16
        scf.yield
      }
      case 3 {
        %266 = index.maxu %c5, %rank_27
        %267 = tensor.empty(%c1) : tensor<?xi1>
        %268 = math.floor %cst_3 : f32
        %true_47 = index.bool.constant true
        %269 = math.powf %cst, %cst_21 : f32
        %270 = vector.splat %c2136994837_i32 : vector<10x12xi32>
        affine.store %c1239302868_i32, %alloc_8[%c14] : memref<12xi32>
        %271 = arith.divf %cst_3, %cst_21 : f32
        %272 = math.absf %15 : tensor<12xf32>
        %273 = math.round %14 : tensor<1x6xf32>
        %alloc_48 = memref.alloc() : memref<1x6xi32>
        memref.copy %alloc_16, %alloc_48 : memref<1x6xi32> to memref<1x6xi32>
        %cst_49 = arith.constant 1.000000e+00 : f16
        %274 = vector.transfer_read %alloc_14[%c10, %c1], %cst_49 : memref<1x6xf16>, vector<f16>
        %275 = affine.max affine_map<(d0, d1, d2) -> ((d1 + d0) * 32)>(%55, %134, %rank_27)
        %inserted_50 = tensor.insert %cst_3 into %15[%c11] : tensor<12xf32>
        %276 = math.floor %cst : f32
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %79, %79, %c25536_i16 : vector<10xi16>, vector<10xi16> into i16
        scf.yield
      }
      default {
        vector.print %128 : vector<12xf32>
        %266 = math.absf %2 : tensor<6x6x6xf32>
        %267 = vector.maskedload %alloc[%c0, %c4], %78, %78 : memref<1x6xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %268 = tensor.empty() : tensor<10x12xi16>
        %269 = arith.divf %23, %23 : f16
        %270 = vector.extract_strided_slice %136 {offsets = [3], sizes = [1], strides = [1]} : vector<12xf16> to vector<1xf16>
        %271 = arith.shrui %c1101131446_i32, %c574043727_i32 : i32
        %272 = arith.maxui %c-1636_i16, %c-1636_i16 : i16
        %273 = math.round %splat : tensor<6x6x6xf16>
        %274 = math.rsqrt %15 : tensor<12xf32>
        %275 = math.atan2 %10, %10 : tensor<1x6xf16>
        %276 = index.sizeof
        %277 = index.ceildivu %c1, %55
        %278 = vector.transpose %124, [0] : vector<6xf16> to vector<6xf16>
        %279 = arith.ori %254, %c25536_i16 : i16
        vector.print %77 : vector<10xi16>
      }
      %261 = math.rsqrt %11 : tensor<10x12xf32>
      %false_46 = index.bool.constant false
      %262 = vector.insertelement %true_1, %259[%c13 : index] : vector<6xi1>
      %263 = math.roundeven %9 : tensor<12xf16>
      %264 = math.absi %254 : i16
      %265 = math.floor %9 : tensor<12xf16>
      scf.yield %145 : vector<i32>
    }
    %164 = scf.while (%arg3 = %22) : (vector<1xf32>) -> vector<1xf32> {
      %253 = vector.broadcast %c31481_i16 : i16 to vector<10x10xi16>
      %254 = vector.outerproduct %77, %79, %253 {kind = #vector.kind<or>} : vector<10xi16>, vector<10xi16>
      %rank_46 = tensor.rank %9 : tensor<12xf16>
      affine.store %23, %alloc_14[%c1, %c15] : memref<1x6xf16>
      %255 = arith.minui %true_34, %true_33 : i1
      %rank_47 = tensor.rank %generated_29 : tensor<?x6xi1>
      %256 = affine.apply affine_map<(d0) -> (d0 * -16)>(%c0)
      %257 = affine.for %arg4 = 0 to 64 iter_args(%arg5 = %3) -> (tensor<12xi1>) {
        affine.yield %arg5 : tensor<12xi1>
      }
      %258 = math.powf %14, %14 : tensor<1x6xf32>
      scf.condition(%true) %22 : vector<1xf32>
    } do {
    ^bb0(%arg3: vector<1xf32>):
      %253 = arith.remsi %true_1, %true : i1
      bufferization.dealloc_tensor %0 : tensor<6x6x6xf32>
      %254 = affine.max affine_map<(d0) -> (d0 * 16, 0, d0, 0)>(%68)
      %255 = math.fma %105, %splat, %105 : tensor<6x6x6xf16>
      %256 = scf.index_switch %37 -> index 
      case 1 {
        memref.copy %alloc_10, %alloc_12 : memref<12xi64> to memref<12xi64>
        %266 = index.casts %c23297_i16 : i16 to index
        %267 = index.sizeof
        %268 = index.maxu %c7, %c11
        %269 = math.absf %14 : tensor<1x6xf32>
        %270 = arith.maxsi %true_30, %true_30 : i1
        %271 = bufferization.clone %alloc_20 : memref<10xi16> to memref<10xi16>
        %rank_47 = tensor.rank %9 : tensor<12xf16>
        %272 = vector.insertelement %c23297_i16, %77[%rank : index] : vector<10xi16>
        %273 = index.ceildivu %c2, %254
        %274 = index.mul %c7, %268
        %275 = math.ctpop %true_30 : i1
        %276 = math.atan2 %119, %23 : f16
        %277 = math.ctpop %c574043727_i32 : i32
        %278 = vector.create_mask %59 : vector<12xi1>
        %279 = vector.broadcast %cst : f32 to vector<10x12xf32>
        %280 = vector.fma %279, %279, %48 : vector<10x12xf32>
        scf.yield %rank_27 : index
      }
      case 2 {
        %266 = index.casts %true_34 : i1 to index
        %267 = math.round %15 : tensor<12xf32>
        %268 = math.floor %cst_3 : f32
        %269 = vector.multi_reduction <maxsi>, %123, %true [0] : vector<6xi1> to i1
        %270 = math.powf %17, %9 : tensor<12xf16>
        %271 = vector.load %alloc_13[%c0, %c1] : memref<1x6xi1>, vector<1x6xi1>
        %272 = arith.divui %true, %true_34 : i1
        %273 = arith.remsi %c-1636_i16, %c23297_i16 : i16
        %274 = math.roundeven %17 : tensor<12xf16>
        %275 = math.log2 %2 : tensor<6x6x6xf32>
        %276 = arith.minui %c574043727_i32, %c1239302868_i32 : i32
        %277 = vector.broadcast %cst_21 : f32 to vector<6x6xf32>
        %278 = vector.outerproduct %18, %86, %277 {kind = #vector.kind<minf>} : vector<6xf32>, vector<6xf32>
        %279 = arith.cmpi sge, %c728709914_i64, %c728709914_i64 : i64
        %280 = math.roundeven %9 : tensor<12xf16>
        %281 = arith.andi %true_30, %true_1 : i1
        %282 = vector.broadcast %cst_0 : f32 to vector<10x4xf32>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %47, %121, %282 : vector<10x12xf32>, vector<4x12xf32> into vector<10x4xf32>
        scf.yield %c10 : index
      }
      case 3 {
        %266 = vector.create_mask %rank_28 : vector<12xi1>
        %267 = math.cos %cst_21 : f32
        %268 = index.castu %c574043727_i32 : i32 to index
        %alloc_47 = memref.alloc() : memref<1x6xf32>
        memref.copy %alloc_6, %alloc_47 : memref<1x6xf32> to memref<1x6xf32>
        %269 = math.log2 %15 : tensor<12xf32>
        %270 = math.powf %10, %10 : tensor<1x6xf16>
        %271 = bufferization.clone %alloc_18 : memref<1x6xi16> to memref<1x6xi16>
        memref.store %c574043727_i32, %alloc_8[%c11] : memref<12xi32>
        %272 = math.fma %119, %23, %119 : f16
        %273 = vector.shuffle %136, %136 [2, 3, 4, 5, 6, 10, 11, 13, 14, 17, 18, 21, 22, 23] : vector<12xf16>, vector<12xf16>
        %274 = math.cos %cst_21 : f32
        %275 = arith.minsi %true_26, %true_1 : i1
        %276 = math.log2 %cst_2 : f16
        %277 = arith.maxsi %true_30, %true_33 : i1
        %278 = arith.negf %119 : f16
        %279 = arith.minf %cst_21, %cst_3 : f32
        scf.yield %152 : index
      }
      case 4 {
        %266 = vector.shuffle %77, %77 [0, 1, 2, 4, 5, 6, 7, 8, 9, 12, 14, 15, 16, 17, 19] : vector<10xi16>, vector<10xi16>
        %267 = index.ceildivs %c1, %127
        %268 = math.cos %5 : tensor<12xf16>
        %269 = arith.andi %true_33, %true_1 : i1
        %270 = arith.remf %23, %cst_2 : f16
        %271 = arith.andi %c2136994837_i32, %c574043727_i32 : i32
        %272 = tensor.empty() : tensor<6x1xi1>
        %273 = tensor.empty() : tensor<1x1xi1>
        %274 = linalg.matmul ins(%splat_35, %272 : tensor<1x6xi1>, tensor<6x1xi1>) outs(%273 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %275 = vector.splat %c11 : vector<1x6xindex>
        %276 = vector.broadcast %cst_3 : f32 to vector<12xf32>
        %277 = vector.fma %276, %276, %128 : vector<12xf32>
        %splat_47 = tensor.splat %c1101131446_i32 : tensor<6x6x6xi32>
        %278 = index.floordivs %c11, %c15
        memref.store %119, %alloc_5[%c0, %c2] : memref<1x6xf16>
        %279 = index.mul %c0, %c7
        %280 = vector.splat %53 : vector<10x12xindex>
        %281 = vector.broadcast %c23297_i16 : i16 to vector<10x10xi16>
        %282 = vector.outerproduct %79, %79, %281 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
        %283 = vector.reduction <minf>, %136 : vector<12xf16> into f16
        scf.yield %59 : index
      }
      default {
        %true_47 = arith.constant true
        %false_48 = arith.constant false
        %266 = vector.transfer_read %1[%161], %false_48 : tensor<12xi1>, vector<i1>
        %267 = arith.ori %true_30, %true_1 : i1
        %268 = vector.broadcast %c574043727_i32 : i32 to vector<12xi32>
        %269 = memref.realloc %alloc_10 : memref<12xi64> to memref<6xi64>
        %collapsed_49 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
        %rank_50 = tensor.rank %12 : tensor<12xi32>
        %270 = vector.load %alloc[%c0, %c2] : memref<1x6xi1>, vector<6x6x6xi1>
        %271 = bufferization.clone %alloc_19 : memref<6x1xf32> to memref<6x1xf32>
        %c74649532_i64 = arith.constant 74649532 : i64
        %alloc_51 = memref.alloc() : memref<10xi16>
        memref.copy %alloc_20, %alloc_51 : memref<10xi16> to memref<10xi16>
        %272 = math.ctpop %c1239302868_i32 : i32
        %cast_52 = tensor.cast %6 : tensor<12xi64> to tensor<?xi64>
        %273 = vector.broadcast %true_30 : i1 to vector<1xi1>
        %274 = vector.maskedload %alloc_13[%c0, %c1], %273, %273 : memref<1x6xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %275 = math.ipowi %1, %4 : tensor<12xi1>
        %276 = arith.remf %cst_21, %cst_3 : f32
        %277 = arith.subi %true, %true_33 : i1
        scf.yield %c14 : index
      }
      %257 = arith.shli %true_26, %true_33 : i1
      %258 = math.fma %splat, %splat, %splat : tensor<6x6x6xf16>
      %259 = math.absi %32 : tensor<12xi64>
      %260 = arith.divsi %true_30, %true_1 : i1
      %261 = vector.reduction <minf>, %122 : vector<6xf16> into f16
      %262 = math.ceil %15 : tensor<12xf32>
      %generated_46 = tensor.generate %c5 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        %266 = arith.cmpi ule, %c963791498_i64, %c728709914_i64 : i64
        %267 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d0 - 4, d2 * 8 + d0 - 4, d0)>(%139, %c9, %c3, %134)
        %extracted = tensor.extract %2[%c0, %c5, %c0] : tensor<6x6x6xf32>
        %268 = vector.insertelement %cst, %128[%90 : index] : vector<12xf32>
        tensor.yield %c2136994837_i32 : i32
      } : tensor<?x6x6xi32>
      %263 = index.castu %c1239302868_i32 : i32 to index
      %264 = index.add %c10, %c13
      %265 = vector.transpose %77, [0] : vector<10xi16> to vector<10xi16>
      %c712671243_i32 = arith.constant 712671243 : i32
      scf.yield %30 : vector<1xf32>
    }
    %165 = scf.while (%arg3 = %c574043727_i32) : (i32) -> i32 {
      %253 = affine.if affine_set<(d0, d1, d2) : ((d1 floordiv 8) * 2 == 0, d1 >= 0, d0 ceildiv 64 == 0)>(%c5, %c13, %c6) -> memref<1x6xf16> {
        %rank_46 = tensor.rank %14 : tensor<1x6xf32>
        %262 = arith.subi %true_30, %true_1 : i1
        %263 = vector.broadcast %90 : index to vector<10xindex>
        vector.scatter %alloc_15[%c9, %c1] [%263], %78, %78 : memref<10x12xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %inserted_47 = tensor.insert %cst into %2[%c1, %c0, %c2] : tensor<6x6x6xf32>
        %264 = vector.create_mask %c2 : vector<12xi1>
        %265 = arith.negf %cst_2 : f16
        %266 = arith.shli %c574043727_i32, %c1239302868_i32 : i32
        %267 = arith.remf %cst, %cst_21 : f32
        affine.yield %alloc_14 : memref<1x6xf16>
      } else {
        %262 = arith.floordivsi %c574043727_i32, %c574043727_i32 : i32
        %263 = vector.broadcast %c1239302868_i32 : i32 to vector<1x6xi32>
        %264 = arith.ori %c25536_i16, %c31481_i16 : i16
        %265 = index.mul %152, %rank_28
        %266 = arith.shrui %true_30, %true_34 : i1
        %267 = arith.subi %c574043727_i32, %c1101131446_i32 : i32
        %268 = math.fpowi %cst_2, %c1101131446_i32 : f16, i32
        %269 = arith.mulf %cst, %cst_3 : f32
        affine.yield %alloc_5 : memref<1x6xf16>
      }
      %254 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %255 = vector.outerproduct %22, %22, %254 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
      %256 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 1)>(%53, %161, %c8)
      %257 = arith.andi %true, %true : i1
      %258 = arith.ori %c-1636_i16, %c25536_i16 : i16
      %259 = arith.ori %true_1, %true_30 : i1
      %260 = arith.remui %c963791498_i64, %c728709914_i64 : i64
      %261 = arith.floordivsi %c31481_i16, %c31481_i16 : i16
      scf.condition(%true_26) %c1101131446_i32 : i32
    } do {
    ^bb0(%arg3: i32):
      %253 = arith.andi %c23297_i16, %c25536_i16 : i16
      %254 = arith.andi %true_33, %true_34 : i1
      %255 = vector.broadcast %c728709914_i64 : i64 to vector<6x6x6xi64>
      %256 = vector.create_mask %c12 : vector<12xi1>
      %257 = index.maxu %157, %c12
      %258 = arith.ori %c1101131446_i32, %c574043727_i32 : i32
      %259 = vector.splat %c1 : vector<1x6xindex>
      %260 = arith.subi %c31481_i16, %c25536_i16 : i16
      %261 = arith.maxsi %c2136994837_i32, %c2136994837_i32 : i32
      %262 = math.atan %5 : tensor<12xf16>
      affine.store %c728709914_i64, %alloc_12[%c5] : memref<12xi64>
      %263 = tensor.empty() : tensor<6x6x6xi32>
      %generated_46 = tensor.generate %rank_27 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        %267 = index.divu %c3, %c5
        %268 = index.castu %c31481_i16 : i16 to index
        %269 = math.expm1 %11 : tensor<10x12xf32>
        %270 = index.ceildivu %c3, %arg4
        tensor.yield %119 : f16
      } : tensor<?x6x6xf16>
      %264 = math.absf %0 : tensor<6x6x6xf32>
      %265 = arith.andi %c1239302868_i32, %c1239302868_i32 : i32
      %266 = scf.if %true -> (i64) {
        %267 = index.sizeof
        %expanded_47 = tensor.expand_shape %1 [[0, 1]] : tensor<12xi1> into tensor<12x1xi1>
        %268 = vector.bitcast %36 : vector<10x12xf32> to vector<10x12xf32>
        %269 = index.floordivs %90, %68
        %270 = arith.divf %119, %cst_2 : f16
        %271 = math.round %15 : tensor<12xf32>
        %272 = math.log2 %0 : tensor<6x6x6xf32>
        %273 = math.cos %119 : f16
        scf.yield %c963791498_i64 : i64
      } else {
        %267 = tensor.empty(%c1) : tensor<?x6x6xi16>
        %268 = arith.xori %true_30, %true_26 : i1
        %269 = math.log10 %10 : tensor<1x6xf16>
        %270 = vector.broadcast %cst : f32 to vector<6x6x6xf32>
        %271 = vector.fma %270, %45, %45 : vector<6x6x6xf32>
        %272 = vector.transpose %160, [0, 1] : vector<1x6xi32> to vector<1x6xi32>
        %273 = arith.andi %true_26, %true_30 : i1
        %274 = arith.mulf %cst_2, %119 : f16
        %275 = vector.extract %270[1, 3] : vector<6x6x6xf32>
        scf.yield %c728709914_i64 : i64
      }
      scf.yield %arg3 : i32
    }
    %166 = vector.insertelement %cst_2, %136[%c9 : index] : vector<12xf16>
    %167 = math.fpowi %9, %12 : tensor<12xf16>, tensor<12xi32>
    %168 = arith.andi %c25536_i16, %c-1636_i16 : i16
    %false = index.bool.constant false
    %169 = math.exp2 %9 : tensor<12xf16>
    %170 = math.copysign %splat, %splat : tensor<6x6x6xf16>
    %171 = math.roundeven %splat : tensor<6x6x6xf16>
    %172 = math.cttz %c963791498_i64 : i64
    memref.alloca_scope  {
      %253 = arith.shrsi %true_1, %true_33 : i1
      %254 = math.round %0 : tensor<6x6x6xf32>
      %255 = arith.mulf %cst_21, %cst : f32
      %256 = vector.reduction <add>, %122 : vector<6xf16> into f16
      scf.execute_region {
        %284 = arith.shrui %c728709914_i64, %c963791498_i64 : i64
        %285 = index.castu %c25536_i16 : i16 to index
        %286 = arith.maxui %false, %true : i1
        %287 = vector.extract %160[0] : vector<1x6xi32>
        %288 = vector.maskedload %alloc_15[%c2, %c5], %123, %123 : memref<10x12xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %289 = arith.shrui %c1101131446_i32, %c1239302868_i32 : i32
        %290 = affine.load %alloc_5[%c4, %c4] : memref<1x6xf16>
        %291 = math.fpowi %15, %12 : tensor<12xf32>, tensor<12xi32>
        memref.store %cst_0, %alloc_6[%c0, %c0] : memref<1x6xf32>
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %288, %288, %true_30 : vector<6xi1>, vector<6xi1> into i1
        %293 = vector.broadcast %c574043727_i32 : i32 to vector<1x6xi32>
        %294 = vector.broadcast %c1101131446_i32 : i32 to vector<12xi32>
        %295 = index.sub %c15, %c8
        %296 = index.ceildivs %68, %68
        %297 = vector.broadcast %23 : f16 to vector<10xf16>
        %298 = vector.maskedload %29[%c0, %c4], %78, %297 : memref<1x6xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %299 = vector.broadcast %c728709914_i64 : i64 to vector<10xi64>
        %300 = vector.maskedload %alloc_10[%c2], %78, %299 : memref<12xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        scf.yield
      }
      %generated_46 = tensor.generate %c0, %161, %c15 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %284 = arith.divui %c2136994837_i32, %c574043727_i32 : i32
        %285 = tensor.empty() : tensor<12xi1>
        %286 = arith.shrui %c728709914_i64, %c963791498_i64 : i64
        %287 = math.powf %15, %15 : tensor<12xf32>
        tensor.yield %cst_21 : f32
      } : tensor<?x?x?xf32>
      %257 = index.floordivs %c5, %rank_27
      %258 = arith.divf %cst_3, %cst : f32
      %259 = arith.divf %23, %119 : f16
      %rank_47 = tensor.rank %8 : tensor<1x6xi64>
      %260 = vector.broadcast %cst_0 : f32 to vector<f32>
      %261 = vector.transfer_write %260, %11[%c1, %c10] : vector<f32>, tensor<10x12xf32>
      %262 = bufferization.clone %alloc_9 : memref<10x12xi16> to memref<10x12xi16>
      %extracted = tensor.extract %32[%c10] : tensor<12xi64>
      %263 = memref.load %118[%c3, %c2, %c0] : memref<6x6x6xf16>
      %264 = vector.transpose %45, [2, 1, 0] : vector<6x6x6xf32> to vector<6x6x6xf32>
      %splat_48 = tensor.splat %true_34 : tensor<12xi1>
      %265 = vector.multi_reduction <maxf>, %47, %cst [0, 1] : vector<10x12xf32> to f32
      %266 = arith.maxsi %c23297_i16, %c31481_i16 : i16
      %267 = math.log2 %cst_2 : f16
      vector.print %48 : vector<10x12xf32>
      %268 = scf.while (%arg3 = %alloc_17) : (memref<6x6x6xi1>) -> memref<6x6x6xi1> {
        %284 = index.casts %c2136994837_i32 : i32 to index
        %285 = vector.insertelement %c1101131446_i32, %145[] : vector<i32>
        %286 = math.powf %10, %10 : tensor<1x6xf16>
        %287 = vector.broadcast %cst_21 : f32 to vector<1x6xf32>
        %alloc_50 = memref.alloc() : memref<6x6x6xi16>
        memref.copy %alloc_4, %alloc_50 : memref<6x6x6xi16> to memref<6x6x6xi16>
        %288 = math.round %23 : f16
        %289 = math.exp %9 : tensor<12xf16>
        %290 = math.atan %9 : tensor<12xf16>
        scf.condition(%true_33) %arg3 : memref<6x6x6xi1>
      } do {
      ^bb0(%arg3: memref<6x6x6xi1>):
        %284 = index.divs %c15, %157
        %285 = bufferization.clone %alloc_18 : memref<1x6xi16> to memref<1x6xi16>
        %286 = vector.broadcast %cst_2 : f16 to vector<12x12xf16>
        %287 = vector.outerproduct %136, %136, %286 {kind = #vector.kind<mul>} : vector<12xf16>, vector<12xf16>
        %288 = arith.remf %cst_3, %cst : f32
        %alloc_50 = memref.alloc() : memref<6x6x6xi16>
        %289 = arith.minsi %false, %true : i1
        %290 = index.ceildivs %139, %139
        %291 = vector.broadcast %cst : f32 to vector<10x12xf32>
        %292 = vector.fma %291, %291, %48 : vector<10x12xf32>
        %293 = arith.minsi %c963791498_i64, %extracted : i64
        %294 = arith.divsi %c23297_i16, %c25536_i16 : i16
        %295 = arith.minsi %true_33, %true_26 : i1
        %296 = math.ctpop %true : i1
        %297 = vector.broadcast %true_30 : i1 to vector<10x12xi1>
        %298 = vector.broadcast %c574043727_i32 : i32 to vector<10x12xi32>
        %299 = vector.gather %4[%68] [%298], %297, %297 : tensor<12xi1>, vector<10x12xi32>, vector<10x12xi1>, vector<10x12xi1> into vector<10x12xi1>
        %300 = math.exp2 %2 : tensor<6x6x6xf32>
        %301 = index.divs %c10, %68
        %302 = affine.load %alloc_18[%c7, %c0] : memref<1x6xi16>
        scf.yield %arg3 : memref<6x6x6xi1>
      }
      %269 = vector.broadcast %c0 : index to vector<1xindex>
      %270 = vector.broadcast %true_30 : i1 to vector<1xi1>
      %271 = vector.broadcast %c25536_i16 : i16 to vector<1xi16>
      vector.scatter %alloc_18[%c0, %c4] [%269], %270, %271 : memref<1x6xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %272 = arith.andi %c1101131446_i32, %c1101131446_i32 : i32
      %273 = vector.broadcast %c25536_i16 : i16 to vector<6x6x6x6xi16>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %111, %111, %273 : vector<6x6x6xi16>, vector<6x6x6xi16> into vector<6x6x6x6xi16>
      %275 = vector.broadcast %53 : index to vector<10xindex>
      %276 = vector.broadcast %c1101131446_i32 : i32 to vector<10xi32>
      vector.scatter %alloc_16[%c0, %c0] [%275], %78, %276 : memref<1x6xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
      %277 = arith.minf %cst, %cst_0 : f32
      %278 = tensor.empty() : tensor<6x1xf16>
      %279 = tensor.empty() : tensor<1x1xf16>
      %280 = linalg.matmul ins(%10, %278 : tensor<1x6xf16>, tensor<6x1xf16>) outs(%279 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %281 = arith.floordivsi %false, %true : i1
      %cast_49 = tensor.cast %12 : tensor<12xi32> to tensor<?xi32>
      scf.index_switch %rank_28 
      case 1 {
        %284 = math.floor %cst_21 : f32
        %285 = arith.shrui %c23297_i16, %c-1636_i16 : i16
        %286 = arith.ori %c-1636_i16, %c-1636_i16 : i16
        %287 = tensor.empty(%152, %127) : tensor<?x?x6xi64>
        %288 = math.atan %0 : tensor<6x6x6xf32>
        %289 = vector.create_mask %rank_47, %c10 : vector<1x6xi1>
        %290 = arith.andi %c1239302868_i32, %c2136994837_i32 : i32
        %expanded_50 = tensor.expand_shape %splat_35 [[0], [1, 2]] : tensor<1x6xi1> into tensor<1x6x1xi1>
        %291 = arith.remsi %c1239302868_i32, %c574043727_i32 : i32
        %292 = arith.remf %cst_21, %265 : f32
        %293 = arith.divsi %true_1, %false : i1
        %294 = vector.broadcast %cst_21 : f32 to vector<1x6xf32>
        %295 = vector.fma %294, %294, %294 : vector<1x6xf32>
        %296 = arith.maxsi %true, %true_1 : i1
        %297 = index.sub %112, %rank
        %298 = math.log %0 : tensor<6x6x6xf32>
        %299 = affine.load %alloc_13[%c7, %c8] : memref<1x6xi1>
        scf.yield
      }
      default {
        %284 = vector.broadcast %c1239302868_i32 : i32 to vector<1xi32>
        %285 = vector.transfer_write %284, %7[%c2, %c3, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi32>, tensor<6x6x6xi32>
        %286 = math.fma %14, %14, %14 : tensor<1x6xf32>
        %287 = index.divu %c4, %59
        %288 = arith.cmpi sle, %c574043727_i32, %c2136994837_i32 : i32
        memref.store %true, %alloc_17[%c4, %c2, %c1] : memref<6x6x6xi1>
        %289 = vector.broadcast %119 : f16 to vector<1xf16>
        %290 = vector.broadcast %true : i1 to vector<1xi1>
        %291 = vector.maskedload %alloc_7[%c2, %c2, %c5], %290, %289 : memref<6x6x6xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %292 = math.atan2 %splat, %105 : tensor<6x6x6xf16>
        %293 = arith.maxsi %c25536_i16, %c31481_i16 : i16
        %294 = math.atan %cst_3 : f32
        %295 = vector.reduction <mul>, %124 : vector<6xf16> into f16
        %296 = arith.remf %cst_2, %119 : f16
        %297 = arith.remf %23, %cst_2 : f16
        %298 = vector.broadcast %true_34 : i1 to vector<12xi1>
        %299 = vector.maskedload %alloc_14[%c0, %c0], %298, %136 : memref<1x6xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %300 = arith.minui %c23297_i16, %c25536_i16 : i16
        %301 = arith.remf %cst, %cst_21 : f32
        %302 = math.log2 %15 : tensor<12xf32>
      }
      %282 = math.rsqrt %2 : tensor<6x6x6xf32>
      %283 = index.divu %c13, %127
    }
    %173 = arith.xori %c25536_i16, %c31481_i16 : i16
    %174 = math.ipowi %7, %7 : tensor<6x6x6xi32>
    %175 = vector.broadcast %c963791498_i64 : i64 to vector<10x12xi64>
    %176 = vector.bitcast %91 : vector<12xf32> to vector<12xf32>
    %177 = arith.minui %true_34, %true : i1
    %expanded = tensor.expand_shape %12 [[0, 1]] : tensor<12xi32> into tensor<12x1xi32>
    %178 = arith.remf %23, %23 : f16
    %rank_36 = tensor.rank %expanded : tensor<12x1xi32>
    %179 = math.atan %105 : tensor<6x6x6xf16>
    %180 = tensor.empty() : tensor<12xi32>
    %mapped = linalg.map ins(%12 : tensor<12xi32>) outs(%180 : tensor<12xi32>)
      (%in: i32) {
        %253 = vector.create_mask %c7, %rank_25, %90 : vector<6x6x6xi1>
        %254 = math.ctpop %20 : tensor<i1>
        %255 = math.expm1 %cst_2 : f16
        %collapsed_46 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
        %256 = vector.create_mask %c0, %c0 : vector<10x12xi1>
        %257 = tensor.empty() : tensor<6x6xf32>
        %258 = tensor.empty() : tensor<1x6xf32>
        %259 = linalg.matmul ins(%14, %257 : tensor<1x6xf32>, tensor<6x6xf32>) outs(%258 : tensor<1x6xf32>) -> tensor<1x6xf32>
        %260 = math.log2 %11 : tensor<10x12xf32>
        %261 = arith.negf %cst_3 : f32
        %262 = math.atan %9 : tensor<12xf16>
        %263 = math.absf %23 : f16
        %264 = memref.load %118[%c2, %c2, %c1] : memref<6x6x6xf16>
        %265 = math.fpowi %17, %12 : tensor<12xf16>, tensor<12xi32>
        %266 = math.ctlz %c25536_i16 : i16
        %267 = math.roundeven %splat : tensor<6x6x6xf16>
        %268 = math.absf %2 : tensor<6x6x6xf32>
        %269 = index.mul %c15, %rank_27
        %270 = vector.splat %in : vector<10x12xi32>
        %271 = arith.remf %cst_3, %cst_21 : f32
        %272 = vector.insertelement %cst_21, %86[%59 : index] : vector<6xf32>
        %273 = arith.minf %119, %119 : f16
        %false_47 = index.bool.constant false
        bufferization.dealloc_tensor %5 : tensor<12xf16>
        %274 = index.mul %152, %c8
        memref.alloca_scope  {
          %279 = index.floordivs %c13, %55
          %280 = vector.broadcast %cst_0 : f32 to vector<6x6x6xf32>
          %281 = vector.fma %280, %45, %280 : vector<6x6x6xf32>
          %282 = math.atan2 %cst, %cst : f32
          %283 = arith.minsi %true, %true_26 : i1
          %284 = math.exp %16 : tensor<12xf16>
          %collapsed_51 = tensor.collapse_shape %collapsed_46 [[0, 1]] : tensor<36x6xf32> into tensor<216xf32>
          %285 = arith.subi %c2136994837_i32, %c574043727_i32 : i32
          %286 = bufferization.clone %alloc_17 : memref<6x6x6xi1> to memref<6x6x6xi1>
          %287 = math.round %23 : f16
          %288 = math.atan %5 : tensor<12xf16>
          %289 = math.log %9 : tensor<12xf16>
          %290 = vector.broadcast %c1101131446_i32 : i32 to vector<i32>
          %291 = vector.transfer_write %290, %12[%c5] : vector<i32>, tensor<12xi32>
          %292 = tensor.empty() : tensor<1x6xi32>
          %293 = math.fpowi %14, %292 : tensor<1x6xf32>, tensor<1x6xi32>
          %294 = tensor.empty() : tensor<12xi32>
          %295 = vector.broadcast %cst_21 : f32 to vector<1x1xf32>
          %296 = vector.outerproduct %30, %30, %295 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
          %297 = arith.divsi %c1239302868_i32, %c574043727_i32 : i32
          %298 = math.roundeven %9 : tensor<12xf16>
          %299 = vector.broadcast %true : i1 to vector<10xi1>
          vector.transfer_write %299, %alloc_17[%c13, %269, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi1>, memref<6x6x6xi1>
          %300 = arith.minui %true_33, %true_1 : i1
          %301 = math.fpowi %2, %13 : tensor<6x6x6xf32>, tensor<6x6x6xi32>
          %302 = math.powf %16, %5 : tensor<12xf16>
          %303 = vector.splat %cst_3 : vector<10x12xf32>
          %304 = vector.insertelement %true_26, %78[%c11 : index] : vector<10xi1>
          bufferization.dealloc_tensor %7 : tensor<6x6x6xi32>
          %305 = arith.remf %119, %119 : f16
          %306 = affine.max affine_map<(d0) -> ((d0 + 2) ceildiv 2, d0 + (d0 + 2) ceildiv 2 - (d0 + 2) ceildiv 2, d0 + (d0 + 2) ceildiv 2 - (d0 + (d0 + 2) ceildiv 2 - (d0 + 2) ceildiv 2) - 2, (d0 + (d0 + 2) ceildiv 2 - (d0 + (d0 + 2) ceildiv 2 - (d0 + 2) ceildiv 2) - 2) * 8)>(%c9)
          %307 = math.fma %258, %258, %14 : tensor<1x6xf32>
          %308 = arith.remf %cst_0, %cst_0 : f32
          %collapsed_52 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xf32> into tensor<6xf32>
          %309 = arith.maxsi %c23297_i16, %c-1636_i16 : i16
          %310 = arith.shli %false, %true_26 : i1
          %311 = index.add %51, %c2
        }
        scf.execute_region {
          %279 = index.divu %55, %c10
          %alloc_51 = memref.alloc() : memref<6x10xf16>
          %280 = tensor.empty() : tensor<1x10xf16>
          %281 = linalg.matmul ins(%10, %alloc_51 : tensor<1x6xf16>, memref<6x10xf16>) outs(%280 : tensor<1x10xf16>) -> tensor<1x10xf16>
          %282 = vector.broadcast %false_47 : i1 to vector<10x12xi1>
          %283 = arith.andi %true_30, %true_34 : i1
          %284 = math.log %splat : tensor<6x6x6xf16>
          %285 = math.floor %cst_2 : f16
          %286 = math.fma %105, %105, %105 : tensor<6x6x6xf16>
          %287 = math.absf %5 : tensor<12xf16>
          %288 = index.divs %55, %59
          %289 = vector.matrix_multiply %79, %79 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
          %290 = arith.divsi %c963791498_i64, %c963791498_i64 : i64
          %291 = index.ceildivs %rank_25, %c4
          memref.store %c23297_i16, %alloc_20[%c4] : memref<10xi16>
          %292 = math.absi %true_30 : i1
          %293 = math.powf %cst_2, %23 : f16
          %alloc_52 = memref.alloc() : memref<12xi32>
          scf.yield
        }
        affine.for %arg3 = 0 to 114 {
        }
        %275 = math.atan %collapsed_46 : tensor<36x6xf32>
        %collapsed_48 = tensor.collapse_shape %collapsed_46 [[0, 1]] : tensor<36x6xf32> into tensor<216xf32>
        %collapsed_49 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
        %splat_50 = tensor.splat %true_34 : tensor<10x12xi1>
        %276 = math.exp %105 : tensor<6x6x6xf16>
        %277 = vector.broadcast %true_34 : i1 to vector<1xi1>
        %278 = vector.maskedload %alloc_19[%c5, %c0], %277, %22 : memref<6x1xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %181 = math.floor %14 : tensor<1x6xf32>
    %182 = index.divu %112, %c7
    %183 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %136, %136, %cst_2 : vector<12xf16>, vector<12xf16> into f16
    %expanded_37 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<6x6x6xf32> into tensor<6x6x6x1xf32>
    %rank_38 = tensor.rank %15 : tensor<12xf32>
    %184 = math.roundeven %15 : tensor<12xf32>
    %false_39 = index.bool.constant false
    %185 = math.powf %17, %5 : tensor<12xf16>
    %186 = vector.broadcast %false : i1 to vector<6x6xi1>
    %187 = vector.outerproduct %123, %123, %186 {kind = #vector.kind<minsi>} : vector<6xi1>, vector<6xi1>
    %collapsed = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<6x6x6xi32> into tensor<36x6xi32>
    %188 = math.exp %expanded_37 : tensor<6x6x6x1xf32>
    %189 = math.roundeven %14 : tensor<1x6xf32>
    %190 = math.ipowi %c25536_i16, %c25536_i16 : i16
    %191 = vector.bitcast %79 : vector<10xi16> to vector<10xi16>
    %cst_40 = arith.constant 1.000000e+00 : f16
    %192 = vector.transfer_read %alloc_7[%rank_25, %c3, %c5], %cst_40 : memref<6x6x6xf16>, vector<10xf16>
    %193 = arith.muli %true_26, %false_39 : i1
    %194 = arith.andi %true_34, %false_39 : i1
    %195 = affine.load %alloc_10[%c1] : memref<12xi64>
    %196 = index.ceildivs %182, %c7
    scf.execute_region {
      %253 = arith.divf %cst, %cst_21 : f32
      memref.copy %118, %alloc_7 : memref<6x6x6xf16> to memref<6x6x6xf16>
      %254 = vector.create_mask %c4, %rank_27, %104 : vector<6x6x6xi1>
      %255 = math.cttz %12 : tensor<12xi32>
      affine.for %arg3 = 0 to 120 {
      }
      %256 = index.castu %c963791498_i64 : i64 to index
      %257 = index.ceildivs %90, %c0
      %258 = arith.shrsi %c728709914_i64, %c963791498_i64 : i64
      %rank_46 = tensor.rank %5 : tensor<12xf16>
      %259 = arith.shli %c23297_i16, %c31481_i16 : i16
      %260 = index.mul %112, %103
      %261 = index.sizeof
      %262 = vector.extract %124[1] : vector<6xf16>
      %263 = vector.insertelement %cst_40, %136[%112 : index] : vector<12xf16>
      %264 = arith.divsi %c1239302868_i32, %c2136994837_i32 : i32
      %265 = index.mul %rank_25, %rank_25
      scf.yield
    }
    %197 = math.roundeven %cst_40 : f16
    %cst_41 = arith.constant 2.601600e+04 : f16
    %198 = index.floordivs %157, %c0
    %199 = vector.bitcast %123 : vector<6xi1> to vector<6xi1>
    %200 = index.maxu %152, %90
    %201 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 floordiv 128) floordiv 64 - d0 >= 0, (d1 floordiv 4 + d0 * 64) * 128 >= 0)>(%c14, %c11, %c0, %c3) -> i16 {
      vector.print %199 : vector<6xi1>
      %253 = index.sub %161, %134
      %254 = index.divu %80, %c0
      %255 = arith.andi %false, %true_26 : i1
      %from_elements = tensor.from_elements %c-1636_i16, %c23297_i16, %c-1636_i16, %c25536_i16, %c31481_i16, %c25536_i16, %c23297_i16, %c23297_i16, %c-1636_i16, %c-1636_i16, %c-1636_i16, %c31481_i16 : tensor<12xi16>
      %256 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 - 2) * 64)>(%c15, %56, %90, %254)
      %257 = vector.broadcast %c7 : index to vector<10xindex>
      vector.scatter %alloc_17[%c5, %c0, %c5] [%257], %78, %78 : memref<6x6x6xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %258 = math.log2 %119 : f16
      affine.yield %c23297_i16 : i16
    } else {
      %253 = math.cos %cst_2 : f16
      %254 = arith.ori %false, %true_34 : i1
      %255 = bufferization.clone %alloc_19 : memref<6x1xf32> to memref<6x1xf32>
      %256 = vector.create_mask %c14, %198 : vector<10x12xi1>
      %257 = math.round %9 : tensor<12xf16>
      %258 = arith.remui %false, %true_1 : i1
      %259 = memref.atomic_rmw maxf %cst_3, %alloc_19[%c4, %c0] : (f32, memref<6x1xf32>) -> f32
      %260 = vector.insertelement %cst, %86[%51 : index] : vector<6xf32>
      affine.yield %c-1636_i16 : i16
    }
    %202 = vector.extract_strided_slice %128 {offsets = [4], sizes = [8], strides = [1]} : vector<12xf32> to vector<8xf32>
    %203 = affine.max affine_map<(d0) -> (d0 * 8 + (-(d0 * 16 - 32)) floordiv 2 + (-(((d0 * 16 - 32) * 2) floordiv 32)) floordiv 2)>(%55)
    %204 = math.ctpop %true_34 : i1
    %205 = vector.extract %202[6] : vector<8xf32>
    %206 = index.add %152, %c8
    %207 = arith.negf %cst_3 : f32
    %208 = vector.insertelement %cst_0, %202[%139 : index] : vector<8xf32>
    %209 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 ceildiv 64 + d0 - 8) * 4, d3, d0 ceildiv 64, d0 ceildiv 32)>(%196, %c0, %c13, %56)
    %210 = index.castu %161 : index to i32
    %211 = math.ipowi %7, %13 : tensor<6x6x6xi32>
    %212 = arith.andi %c25536_i16, %c31481_i16 : i16
    %213 = arith.negf %cst : f32
    %214 = math.copysign %15, %15 : tensor<12xf32>
    %215 = arith.maxsi %c31481_i16, %c-1636_i16 : i16
    %216 = arith.maxsi %c2136994837_i32, %c2136994837_i32 : i32
    %217 = math.round %2 : tensor<6x6x6xf32>
    %218 = index.add %rank_36, %103
    %219 = arith.shrsi %true_34, %false_39 : i1
    %220 = math.ctlz %195 : i64
    %221 = arith.remui %c-1636_i16, %c25536_i16 : i16
    %222 = math.ipowi %c-1636_i16, %c-1636_i16 : i16
    %223 = arith.remsi %true_30, %true_26 : i1
    %224 = arith.minf %cst, %cst_3 : f32
    %225 = math.ctpop %splat_35 : tensor<1x6xi1>
    %226 = index.divs %c11, %127
    %227 = affine.for %arg3 = 0 to 97 iter_args(%arg4 = %48) -> (vector<10x12xf32>) {
      affine.yield %47 : vector<10x12xf32>
    }
    %228 = math.atan2 %expanded_37, %expanded_37 : tensor<6x6x6x1xf32>
    %229 = affine.if affine_set<(d0) : ((d0 mod 8) ceildiv 32 == 0)>(%c1) -> memref<6x6x6xi32> {
      %253 = arith.remf %cst_40, %cst_2 : f16
      %254 = vector.broadcast %true_26 : i1 to vector<1xi1>
      %255 = vector.maskedload %alloc[%c0, %c5], %254, %254 : memref<1x6xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %256 = vector.matrix_multiply %91, %22 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<1xf32>) -> vector<12xf32>
      %257 = vector.broadcast %true_34 : i1 to vector<1x1xi1>
      %258 = vector.outerproduct %254, %255, %257 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
      %259 = vector.extract %176[1] : vector<12xf32>
      %260 = vector.multi_reduction <mul>, %22, %cst [0] : vector<1xf32> to f32
      %261 = vector.broadcast %260 : f32 to vector<12xf32>
      %262 = vector.fma %261, %91, %256 : vector<12xf32>
      %263 = math.roundeven %11 : tensor<10x12xf32>
      %alloc_46 = memref.alloc() : memref<6x6x6xi32>
      affine.yield %alloc_46 : memref<6x6x6xi32>
    } else {
      %253 = math.round %cst_21 : f32
      scf.execute_region {
        %259 = bufferization.clone %29 : memref<1x6xf16> to memref<1x6xf16>
        %260 = math.cttz %8 : tensor<1x6xi64>
        %261 = vector.broadcast %c31481_i16 : i16 to vector<1xi16>
        %262 = vector.broadcast %true_33 : i1 to vector<1xi1>
        %263 = vector.maskedload %alloc_4[%c3, %c2, %c4], %262, %261 : memref<6x6x6xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        memref.copy %alloc_7, %118 : memref<6x6x6xf16> to memref<6x6x6xf16>
        %264 = math.atan %14 : tensor<1x6xf32>
        %cst_50 = arith.constant 0x4E068A71 : f32
        %265 = index.casts %false_39 : i1 to index
        %266 = math.round %16 : tensor<12xf16>
        %267 = vector.maskedload %alloc_18[%c0, %c4], %78, %79 : memref<1x6xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %268 = index.floordivs %206, %rank_36
        %269 = vector.multi_reduction <or>, %263, %261 [] : vector<1xi16> to vector<1xi16>
        %270 = vector.transpose %199, [0] : vector<6xi1> to vector<6xi1>
        %271 = vector.insert %23, %136 [0] : f16 into vector<12xf16>
        memref.copy %alloc_17, %alloc_11 : memref<6x6x6xi1> to memref<6x6x6xi1>
        %272 = math.cos %105 : tensor<6x6x6xf16>
        %273 = index.sizeof
        scf.yield
      }
      %cast_46 = tensor.cast %14 : tensor<1x6xf32> to tensor<?x?xf32>
      %254 = math.powf %11, %11 : tensor<10x12xf32>
      %255 = arith.remf %cst_0, %cst : f32
      %false_47 = arith.constant false
      %false_48 = arith.constant false
      %256 = vector.transfer_read %splat_35[%c11, %c8], %false_48 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x6xi1>, vector<10xi1>
      %257 = arith.ori %c23297_i16, %c25536_i16 : i16
      %258 = vector.broadcast %127 : index to vector<6xindex>
      vector.scatter %alloc_13[%c0, %c3] [%258], %123, %123 : memref<1x6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
      %alloc_49 = memref.alloc() : memref<6x6x6xi32>
      affine.yield %alloc_49 : memref<6x6x6xi32>
    }
    %false_42 = index.bool.constant false
    %230 = tensor.empty() : tensor<1x6xi1>
    %mapped_43 = linalg.map ins(%alloc, %splat_35 : memref<1x6xi1>, tensor<1x6xi1>) outs(%230 : tensor<1x6xi1>)
      (%in: i1, %in_46: i1) {
        %253 = affine.max affine_map<(d0, d1, d2, d3) -> (-d0, d0 * 2, d0 * 16)>(%rank_38, %134, %90, %c5)
        %254 = arith.xori %false_42, %true_33 : i1
        %255 = tensor.empty() : tensor<6x6x6xf16>
        %mapped_47 = linalg.map ins(%alloc_7 : memref<6x6x6xf16>) outs(%255 : tensor<6x6x6xf16>)
          (%in_56: f16) {
            %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %202, %202, %cst : vector<8xf32>, vector<8xf32> into f32
            %inserted_57 = tensor.insert %cst_21 into %11[%c8, %c6] : tensor<10x12xf32>
            %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 32 - 64, d1 ceildiv 64, -(d2 floordiv 32 - 16))>(%c3, %c10, %51, %198)
            %283 = arith.ori %c1239302868_i32, %c1101131446_i32 : i32
            %284 = math.log10 %10 : tensor<1x6xf16>
            memref.assume_alignment %alloc_14, 4 : memref<1x6xf16>
            %285 = index.floordivs %c1, %127
            %286 = vector.broadcast %c10 : index to vector<12xindex>
            %287 = vector.broadcast %false : i1 to vector<12xi1>
            vector.scatter %alloc[%c0, %c4] [%286], %287, %287 : memref<1x6xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
            %288 = vector.extract %86[1] : vector<6xf32>
            %289 = vector.broadcast %c963791498_i64 : i64 to vector<i64>
            %290 = vector.transfer_write %289, %8[%59, %c1] : vector<i64>, tensor<1x6xi64>
            %291 = math.absf %23 : f16
            %292 = vector.broadcast %c963791498_i64 : i64 to vector<10xi64>
            %293 = vector.maskedload %alloc_10[%c3], %78, %292 : memref<12xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
            %294 = arith.negf %cst_2 : f16
            %295 = arith.minsi %c-1636_i16, %c-1636_i16 : i16
            %296 = math.log2 %15 : tensor<12xf32>
            %297 = math.roundeven %cst : f32
            %298 = arith.andi %true_34, %true_1 : i1
            %299 = vector.transpose %293, [0] : vector<10xi64> to vector<10xi64>
            %300 = arith.remf %cst_0, %cst_21 : f32
            %301 = vector.broadcast %cst : f32 to vector<12x12xf32>
            %302 = vector.outerproduct %91, %128, %301 {kind = #vector.kind<mul>} : vector<12xf32>, vector<12xf32>
            %303 = math.ctpop %19 : tensor<12xi1>
            %304 = vector.broadcast %true_26 : i1 to vector<12xi1>
            %305 = vector.maskedload %alloc_14[%c0, %c3], %304, %136 : memref<1x6xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
            %306 = index.floordivs %104, %c9
            %307 = vector.broadcast %cst : f32 to vector<1x6xf32>
            %308 = vector.fma %307, %307, %307 : vector<1x6xf32>
            %rank_58 = tensor.rank %0 : tensor<6x6x6xf32>
            %309 = index.floordivs %53, %c6
            %310 = math.absf %17 : tensor<12xf16>
            %311 = arith.floordivsi %c574043727_i32, %c1239302868_i32 : i32
            %312 = math.round %cst_2 : f16
            %rank_59 = tensor.rank %6 : tensor<12xi64>
            %313 = arith.floordivsi %c2136994837_i32, %c574043727_i32 : i32
            %314 = index.add %59, %127
            %cst_60 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_60 : f16
          }
        %256 = vector.splat %c7 : vector<10x12xindex>
        %257 = math.exp %23 : f16
        %collapsed_48 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<6x6x6xf16> into tensor<36x6xf16>
        %258 = arith.cmpf ogt, %cst_0, %cst_3 : f32
        %259 = arith.shrui %c1101131446_i32, %c2136994837_i32 : i32
        %false_49 = index.bool.constant false
        %alloc_50 = memref.alloc() : memref<6x6xi64>
        %260 = tensor.empty() : tensor<1x6xi64>
        %261 = linalg.matmul ins(%8, %alloc_50 : tensor<1x6xi64>, memref<6x6xi64>) outs(%260 : tensor<1x6xi64>) -> tensor<1x6xi64>
        %262 = bufferization.clone %alloc_7 : memref<6x6x6xf16> to memref<6x6x6xf16>
        %263 = math.exp2 %0 : tensor<6x6x6xf32>
        %264 = vector.insertelement %cst_0, %86[%c8 : index] : vector<6xf32>
        %265 = math.floor %14 : tensor<1x6xf32>
        %266 = vector.splat %cst_3 : vector<10x12xf32>
        %267 = math.ipowi %1, %1 : tensor<12xi1>
        %268 = math.cos %0 : tensor<6x6x6xf32>
        %269 = math.atan %cst : f32
        %270 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %271 = vector.outerproduct %22, %30, %270 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %272 = index.ceildivu %59, %56
        %alloc_51 = memref.alloc() : memref<1x6xf32>
        %273 = vector.splat %true_1 : vector<12xi1>
        %274 = arith.maxsi %in_46, %false : i1
        %275 = arith.maxsi %c1239302868_i32, %c1239302868_i32 : i32
        %276 = vector.reduction <minui>, %191 : vector<10xi16> into i16
        %277 = arith.muli %c23297_i16, %c23297_i16 : i16
        %cst_52 = arith.constant 1.578400e+04 : f16
        %278 = math.absf %cst_2 : f16
        %279 = affine.max affine_map<(d0) -> (-((d0 floordiv 32) * 16 + 16) + (d0 floordiv 32) * 16, (d0 floordiv 32) * 16, (d0 floordiv 32) * 16, d0 mod 8)>(%c15)
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %78, %78, %false_39 : vector<10xi1>, vector<10xi1> into i1
        %splat_53 = tensor.splat %119 : tensor<12xf16>
        %true_54 = index.bool.constant true
        %true_55 = arith.constant true
        linalg.yield %true_55 : i1
      }
    %231 = math.floor %splat : tensor<6x6x6xf16>
    %232 = math.rsqrt %119 : f16
    %233 = math.roundeven %11 : tensor<10x12xf32>
    %234 = vector.multi_reduction <maxui>, %77, %c23297_i16 [0] : vector<10xi16> to i16
    %235 = bufferization.clone %alloc_7 : memref<6x6x6xf16> to memref<6x6x6xf16>
    %236 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %191, %77, %234 : vector<10xi16>, vector<10xi16> into i16
    %237 = math.ctpop %expanded : tensor<12x1xi32>
    %238 = math.exp2 %14 : tensor<1x6xf32>
    %239 = math.cttz %7 : tensor<6x6x6xi32>
    %240 = vector.broadcast %206 : index to vector<12xindex>
    %241 = vector.broadcast %false_39 : i1 to vector<12xi1>
    vector.scatter %alloc_11[%c3, %c1, %c5] [%240], %241, %241 : memref<6x6x6xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
    %242 = arith.xori %234, %c-1636_i16 : i16
    %243 = arith.minf %23, %cst_2 : f16
    %244 = arith.divsi %c23297_i16, %c25536_i16 : i16
    %245 = scf.execute_region -> memref<12xf32> {
      %253 = index.divu %c3, %196
      memref.alloca_scope  {
        %265 = math.fma %10, %10, %10 : tensor<1x6xf16>
        %266 = math.atan %5 : tensor<12xf16>
        %267 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %45, %267 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6x6xf32>, vector<6x6xf32>
        %268 = index.mul %51, %c2
        %c1_i16 = arith.constant 1 : i16
        %269 = vector.transfer_read %alloc_4[%112, %206, %134], %c1_i16 : memref<6x6x6xi16>, vector<i16>
        %splat_48 = tensor.splat %false_42 : tensor<10x12xi1>
        %270 = vector.splat %56 : vector<10x12xindex>
        %271 = arith.shrui %c1239302868_i32, %c1239302868_i32 : i32
        %272 = math.atan2 %15, %15 : tensor<12xf32>
        %273 = index.add %56, %rank_36
        %274 = math.fma %105, %splat, %105 : tensor<6x6x6xf16>
        %275 = vector.broadcast %c23297_i16 : i16 to vector<6xi16>
        %276 = vector.maskedload %alloc_4[%c3, %c1, %c2], %123, %275 : memref<6x6x6xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %277 = math.fpowi %splat, %13 : tensor<6x6x6xf16>, tensor<6x6x6xi32>
        %278 = vector.broadcast %true_26 : i1 to vector<6x6xi1>
        %279 = vector.outerproduct %199, %199, %278 {kind = #vector.kind<add>} : vector<6xi1>, vector<6xi1>
        %280 = tensor.empty() : tensor<6x1xi1>
        %281 = tensor.empty() : tensor<1x1xi1>
        %282 = linalg.matmul ins(%splat_35, %280 : tensor<1x6xi1>, tensor<6x1xi1>) outs(%281 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %283 = math.floor %9 : tensor<12xf16>
        %284 = vector.broadcast %c1239302868_i32 : i32 to vector<1x6xi32>
        %285 = index.maxs %55, %103
        %286 = vector.insertelement %cst, %128[%c4 : index] : vector<12xf32>
        %287 = vector.broadcast %cst_21 : f32 to vector<1x6xf32>
        %288 = vector.fma %287, %287, %287 : vector<1x6xf32>
        %289 = index.casts %false_39 : i1 to index
        %290 = math.cos %0 : tensor<6x6x6xf32>
        %291 = index.mul %56, %200
        %inserted_49 = tensor.insert %true_26 into %281[%c0, %c0] : tensor<1x1xi1>
        %292 = math.cos %cst_3 : f32
        %293 = vector.transpose %45, [0, 2, 1] : vector<6x6x6xf32> to vector<6x6x6xf32>
        %294 = arith.remf %cst_3, %cst_0 : f32
        %295 = math.ctpop %c-1636_i16 : i16
        %296 = math.fpowi %2, %7 : tensor<6x6x6xf32>, tensor<6x6x6xi32>
        %297 = math.atan2 %2, %0 : tensor<6x6x6xf32>
        %298 = arith.negf %cst_2 : f16
        %299 = arith.cmpi ugt, %c2136994837_i32, %c1101131446_i32 : i32
      }
      %254 = bufferization.to_memref %generated_29 : memref<?x6xi1>
      %255 = arith.minsi %true_26, %true_1 : i1
      %256 = math.floor %15 : tensor<12xf32>
      %257 = math.log %11 : tensor<10x12xf32>
      %258 = math.fpowi %cst_40, %c1239302868_i32 : f16, i32
      %259 = tensor.empty() : tensor<6x6x6xf16>
      %mapped_46 = linalg.map ins(%105, %105, %splat : tensor<6x6x6xf16>, tensor<6x6x6xf16>, tensor<6x6x6xf16>) outs(%259 : tensor<6x6x6xf16>)
        (%in: f16, %in_48: f16, %in_49: f16) {
          %splat_50 = tensor.splat %in_48 : tensor<1x6xf16>
          %265 = vector.broadcast %cst_21 : f32 to vector<12x12xf32>
          %266 = vector.outerproduct %128, %128, %265 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
          %267 = arith.subi %true_1, %false_42 : i1
          %268 = math.roundeven %splat_50 : tensor<1x6xf16>
          %269 = tensor.empty(%139) : tensor<6x6x?xi16>
          bufferization.dealloc_tensor %3 : tensor<12xi1>
          %270 = math.exp %in : f16
          %271 = math.exp %cst_0 : f32
          %272 = vector.insertelement %cst_40, %136[%51 : index] : vector<12xf16>
          %273 = arith.ori %c1101131446_i32, %c574043727_i32 : i32
          %alloc_51 = memref.alloc() : memref<6x12xf32>
          %274 = tensor.empty() : tensor<1x12xf32>
          %275 = linalg.matmul ins(%14, %alloc_51 : tensor<1x6xf32>, memref<6x12xf32>) outs(%274 : tensor<1x12xf32>) -> tensor<1x12xf32>
          %276 = arith.andi %false_42, %true_30 : i1
          %277 = math.round %cst : f32
          %278 = vector.transpose %86, [0] : vector<6xf32> to vector<6xf32>
          %279 = vector.extract %136[6] : vector<12xf16>
          %280 = vector.broadcast %195 : i64 to vector<12xi64>
          %281 = math.cos %0 : tensor<6x6x6xf32>
          %282 = vector.extract %79[4] : vector<10xi16>
          %283 = math.exp2 %11 : tensor<10x12xf32>
          %284 = arith.andi %true_33, %true_33 : i1
          %285 = math.exp %17 : tensor<12xf16>
          %alloc_52 = memref.alloc() : memref<1x6xi32>
          memref.copy %alloc_16, %alloc_52 : memref<1x6xi32> to memref<1x6xi32>
          memref.store %cst_40, %alloc_14[%c0, %c3] : memref<1x6xf16>
          %286 = vector.extract_strided_slice %48 {offsets = [1], sizes = [5], strides = [1]} : vector<10x12xf32> to vector<5x12xf32>
          %287 = index.sub %253, %203
          %288 = arith.cmpi ne, %true_34, %false_42 : i1
          %289 = arith.shli %c963791498_i64, %c728709914_i64 : i64
          %290 = arith.mulf %in_48, %cst_40 : f16
          affine.store %false_42, %alloc[%c5, %c0] : memref<1x6xi1>
          %291 = vector.splat %cst_21 : vector<12xf32>
          %292 = arith.minsi %true_26, %true_1 : i1
          %293 = vector.reduction <mul>, %30 : vector<1xf32> into f32
          %cst_53 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_53 : f16
        }
      scf.execute_region {
        %265 = vector.reduction <mul>, %128 : vector<12xf32> into f32
        %266 = vector.multi_reduction <add>, %136, %136 [] : vector<12xf16> to vector<12xf16>
        %267 = math.cos %2 : tensor<6x6x6xf32>
        %268 = index.mul %c14, %51
        %269 = vector.broadcast %c23297_i16 : i16 to vector<10x10xi16>
        %270 = vector.outerproduct %77, %191, %269 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
        %271 = math.rsqrt %119 : f16
        bufferization.dealloc_tensor %7 : tensor<6x6x6xi32>
        %alloc_48 = memref.alloc() : memref<6x6x6xi16>
        memref.copy %alloc_4, %alloc_48 : memref<6x6x6xi16> to memref<6x6x6xi16>
        %272 = index.floordivs %134, %c15
        %273 = arith.negf %119 : f16
        %274 = vector.transpose %202, [0] : vector<8xf32> to vector<8xf32>
        %275 = math.powf %5, %5 : tensor<12xf16>
        %276 = arith.negf %cst_21 : f32
        %277 = arith.divsi %c963791498_i64, %195 : i64
        %278 = arith.divf %cst, %cst_0 : f32
        %279 = arith.remsi %c2136994837_i32, %c1239302868_i32 : i32
        scf.yield
      }
      %260 = index.add %203, %198
      %261 = index.ceildivs %rank_38, %51
      %262 = arith.mulf %cst_2, %cst_2 : f16
      %263 = arith.divsi %c574043727_i32, %c574043727_i32 : i32
      memref.assume_alignment %alloc_20, 16 : memref<10xi16>
      memref.assume_alignment %alloc_14, 4 : memref<1x6xf16>
      %264 = math.roundeven %9 : tensor<12xf16>
      %alloc_47 = memref.alloc() : memref<12xf32>
      scf.yield %alloc_47 : memref<12xf32>
    }
    %246 = vector.broadcast %cst_21 : f32 to vector<12xf32>
    %247 = vector.fma %246, %91, %176 : vector<12xf32>
    %248 = vector.extract %91[8] : vector<12xf32>
    %249 = tensor.empty() : tensor<1x6xi1>
    %250 = linalg.copy ins(%230 : tensor<1x6xi1>) outs(%249 : tensor<1x6xi1>) -> tensor<1x6xi1>
    %alloc_44 = memref.alloc() : memref<6x1xi1>
    linalg.transpose ins(%splat_35 : tensor<1x6xi1>) outs(%alloc_44 : memref<6x1xi1>) permutation = [1, 0] 
    %alloc_45 = memref.alloc() : memref<i1>
    linalg.reduce ins(%19 : tensor<12xi1>) outs(%alloc_45 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %253 = arith.floordivsi %true_26, %true_1 : i1
        %254 = index.add %203, %rank_38
        %255 = memref.realloc %alloc_12 : memref<12xi64> to memref<10xi64>
        %256 = math.fma %9, %9, %5 : tensor<12xf16>
        %257 = arith.divf %cst_40, %23 : f16
        %258 = arith.subi %true_33, %true_34 : i1
        %259 = index.maxu %c11, %134
        %260 = math.log10 %14 : tensor<1x6xf32>
        %false_46 = arith.constant false
        linalg.yield %false_46 : i1
      }
    %251 = scf.parallel (%arg3, %arg4) = (%51, %c13) to (%200, %rank_36) step (%c13, %c1) init (%2) -> tensor<6x6x6xf32> {
      %253 = math.expm1 %cst_40 : f16
      %254 = arith.cmpi ugt, %true_1, %true_1 : i1
      %255 = arith.negf %cst_3 : f32
      %256 = vector.insertelement %cst, %246[%c7 : index] : vector<12xf32>
      %257 = arith.divsi %false, %false : i1
      %258 = tensor.empty() : tensor<1x6xi1>
      %mapped_46 = linalg.map ins(%230, %249, %230 : tensor<1x6xi1>, tensor<1x6xi1>, tensor<1x6xi1>) outs(%258 : tensor<1x6xi1>)
        (%in: i1, %in_48: i1, %in_49: i1) {
          %268 = vector.reduction <minsi>, %199 : vector<6xi1> into i1
          affine.store %cst_3, %alloc_6[%c4, %c1] : memref<1x6xf32>
          %269 = vector.broadcast %c31481_i16 : i16 to vector<1xi16>
          vector.transfer_write %269, %alloc_9[%rank_27, %203] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi16>, memref<10x12xi16>
          %270 = vector.insertelement %c23297_i16, %191[%c0 : index] : vector<10xi16>
          %271 = arith.minf %cst_0, %cst_0 : f32
          %splat_50 = tensor.splat %23 : tensor<12xf16>
          %272 = vector.broadcast %195 : i64 to vector<1xi64>
          %273 = vector.broadcast %true_33 : i1 to vector<1xi1>
          %274 = vector.maskedload %alloc_12[%c3], %273, %272 : memref<12xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %275 = arith.ori %c23297_i16, %c23297_i16 : i16
          %276 = arith.andi %c23297_i16, %c31481_i16 : i16
          %277 = arith.minui %195, %c728709914_i64 : i64
          %278 = arith.divsi %false_42, %in : i1
          %279 = math.log %2 : tensor<6x6x6xf32>
          %280 = arith.divsi %c574043727_i32, %c2136994837_i32 : i32
          memref.assume_alignment %alloc_9, 16 : memref<10x12xi16>
          %281 = arith.remf %cst_21, %cst_3 : f32
          %282 = arith.minui %true, %in : i1
          %283 = vector.broadcast %c728709914_i64 : i64 to vector<12x12xi64>
          %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %175, %175, %283 : vector<10x12xi64>, vector<10x12xi64> into vector<12x12xi64>
          %285 = index.maxs %59, %139
          %286 = vector.broadcast %in_48 : i1 to vector<6x6xi1>
          %287 = vector.outerproduct %199, %123, %286 {kind = #vector.kind<minui>} : vector<6xi1>, vector<6xi1>
          %288 = vector.broadcast %161 : index to vector<12xindex>
          %289 = vector.broadcast %in : i1 to vector<12xi1>
          vector.scatter %245[%c8] [%288], %289, %91 : memref<12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
          %290 = math.log1p %119 : f16
          %291 = arith.subi %false_42, %true_33 : i1
          %292 = arith.minf %119, %cst_2 : f16
          %alloc_51 = memref.alloc() : memref<12xi64>
          %293 = tensor.empty() : tensor<1x10xi32>
          %294 = tensor.empty() : tensor<12x10xi32>
          %295 = linalg.matmul ins(%expanded, %293 : tensor<12x1xi32>, tensor<1x10xi32>) outs(%294 : tensor<12x10xi32>) -> tensor<12x10xi32>
          %false_52 = index.bool.constant false
          %296 = tensor.empty() : tensor<1x6xi16>
          %297 = arith.minf %119, %cst_40 : f16
          %298 = math.tanh %11 : tensor<10x12xf32>
          %299 = math.exp %5 : tensor<12xf16>
          %300 = index.mul %rank_25, %rank_38
          %301 = arith.shli %false_52, %true_34 : i1
          %false_53 = arith.constant false
          linalg.yield %false_53 : i1
        }
      %259 = math.log %10 : tensor<1x6xf16>
      %260 = vector.insertelement %cst_0, %247[%rank : index] : vector<12xf32>
      %261 = math.ctpop %true_34 : i1
      %c1_i32 = arith.constant 1 : i32
      %262 = vector.transfer_read %7[%c5, %80, %55], %c1_i32 : tensor<6x6x6xi32>, vector<i32>
      %263 = vector.broadcast %false_42 : i1 to vector<6x6x6xi1>
      %264 = vector.multi_reduction <and>, %77, %c31481_i16 [0] : vector<10xi16> to i16
      scf.index_switch %200 
      case 1 {
        %268 = arith.cmpf une, %cst_0, %cst_0 : f32
        %269 = math.atan2 %16, %16 : tensor<12xf16>
        %270 = vector.matrix_multiply %247, %176 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
        %collapsed_48 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xf32> into tensor<6xf32>
        %271 = arith.ori %c1_i32, %c1239302868_i32 : i32
        %272 = vector.broadcast %23 : f16 to vector<1xf16>
        %273 = vector.broadcast %false_39 : i1 to vector<1xi1>
        %274 = vector.maskedload %alloc_7[%c0, %c1, %c2], %273, %272 : memref<6x6x6xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %275 = bufferization.to_tensor %118 : memref<6x6x6xf16>
        %276 = math.roundeven %23 : f16
        %277 = vector.matrix_multiply %77, %77 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
        %278 = vector.broadcast %cst : f32 to vector<10x12xf32>
        %279 = vector.fma %278, %36, %48 : vector<10x12xf32>
        %280 = index.castu %c7 : index to i32
        %281 = arith.divsi %true_26, %false_39 : i1
        %282 = math.ctlz %c1101131446_i32 : i32
        %283 = arith.maxsi %c963791498_i64, %c728709914_i64 : i64
        %284 = math.cos %0 : tensor<6x6x6xf32>
        %285 = arith.andi %195, %c728709914_i64 : i64
        scf.yield
      }
      case 2 {
        %rank_48 = tensor.rank %3 : tensor<12xi1>
        %268 = index.castu %139 : index to i32
        %269 = index.sizeof
        %270 = math.absi %3 : tensor<12xi1>
        %271 = vector.broadcast %cst_3 : f32 to vector<6x6x6xf32>
        %272 = vector.fma %271, %44, %271 : vector<6x6x6xf32>
        %273 = arith.maxsi %true_26, %false_39 : i1
        %alloc_49 = memref.alloc() : memref<1x6xi32>
        memref.copy %alloc_16, %alloc_49 : memref<1x6xi32> to memref<1x6xi32>
        %274 = vector.create_mask %c5, %c1, %90 : vector<6x6x6xi1>
        %rank_50 = tensor.rank %0 : tensor<6x6x6xf32>
        %cast_51 = tensor.cast %9 : tensor<12xf16> to tensor<?xf16>
        %275 = math.ipowi %250, %splat_35 : tensor<1x6xi1>
        %276 = vector.extract %79[9] : vector<10xi16>
        %277 = arith.andi %true_30, %false_39 : i1
        %278 = math.cos %2 : tensor<6x6x6xf32>
        %279 = math.log2 %0 : tensor<6x6x6xf32>
        %cst_52 = arith.constant 0x4E3E61EB : f32
        scf.yield
      }
      case 3 {
        %268 = arith.cmpi sle, %c1239302868_i32, %c574043727_i32 : i32
        %269 = math.fma %23, %119, %cst_2 : f16
        %270 = arith.shrui %234, %c-1636_i16 : i16
        %splat_48 = tensor.splat %c1239302868_i32 : tensor<6x6x6xi32>
        %271 = affine.apply affine_map<(d0) -> ((d0 + 16) mod 32 + 4)>(%rank_28)
        %272 = affine.max affine_map<(d0, d1, d2) -> (d2, d0)>(%c15, %arg3, %c8)
        %273 = math.absf %11 : tensor<10x12xf32>
        %274 = vector.transpose %175, [0, 1] : vector<10x12xi64> to vector<10x12xi64>
        %275 = index.add %157, %90
        %276 = arith.divsi %true_30, %false : i1
        memref.store %true_33, %alloc_15[%c4, %c9] : memref<10x12xi1>
        %alloc_49 = memref.alloc() : memref<10x12xi32>
        %277 = vector.transpose %30, [0] : vector<1xf32> to vector<1xf32>
        %278 = arith.subi %c2136994837_i32, %c1_i32 : i32
        %279 = arith.andi %c574043727_i32, %c1_i32 : i32
        %280 = vector.splat %264 : vector<6x6x6xi16>
        scf.yield
      }
      default {
        %268 = vector.broadcast %182 : index to vector<12xindex>
        %269 = vector.broadcast %true_26 : i1 to vector<12xi1>
        %270 = vector.broadcast %c728709914_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_12[%c5] [%268], %269, %270 : memref<12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        memref.copy %alloc_12, %alloc_10 : memref<12xi64> to memref<12xi64>
        %271 = vector.create_mask %90, %rank_38, %59 : vector<6x6x6xi1>
        %272 = index.sizeof
        %273 = vector.broadcast %234 : i16 to vector<10x10xi16>
        %274 = vector.outerproduct %79, %77, %273 {kind = #vector.kind<minsi>} : vector<10xi16>, vector<10xi16>
        %275 = vector.multi_reduction <add>, %191, %c23297_i16 [0] : vector<10xi16> to i16
        %276 = vector.extract %111[5] : vector<6x6x6xi16>
        %277 = vector.load %alloc_7[%c3, %c4, %c3] : memref<6x6x6xf16>, vector<1x6xf16>
        %278 = math.ctpop %1 : tensor<12xi1>
        %279 = tensor.empty() : tensor<1x6xi32>
        %280 = math.fpowi %10, %279 : tensor<1x6xf16>, tensor<1x6xi32>
        %281 = math.log2 %cst_0 : f32
        %282 = math.log %2 : tensor<6x6x6xf32>
        %283 = math.atan2 %expanded_37, %expanded_37 : tensor<6x6x6x1xf32>
        %284 = arith.divf %119, %23 : f16
        %285 = arith.divsi %275, %234 : i16
        memref.assume_alignment %alloc_17, 2 : memref<6x6x6xi1>
      }
      %265 = index.ceildivs %c12, %c6
      %266 = arith.shrui %c25536_i16, %c23297_i16 : i16
      %collapsed_47 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
      %267 = tensor.empty() : tensor<6x6x6xf32>
      scf.reduce(%267)  : tensor<6x6x6xf32> {
      ^bb0(%arg5: tensor<6x6x6xf32>, %arg6: tensor<6x6x6xf32>):
        %268 = index.castu %c728709914_i64 : i64 to index
        memref.copy %29, %alloc_14 : memref<1x6xf16> to memref<1x6xf16>
        %269 = index.maxu %c4, %rank
        %270 = math.fma %10, %10, %10 : tensor<1x6xf16>
        %271 = arith.ori %false_42, %false_42 : i1
        %272 = math.absf %cst_0 : f32
        memref.assume_alignment %alloc_17, 1 : memref<6x6x6xi1>
        %273 = arith.andi %false_42, %true_26 : i1
        %274 = tensor.empty() : tensor<6x6x6xf32>
        scf.reduce.return %274 : tensor<6x6x6xf32>
      }
      scf.yield
    }
    %252 = affine.vector_load %alloc_13[%157, %c5] : memref<1x6xi1>, vector<6xi1>
    affine.vector_store %128, %245[%c15] : memref<12xf32>, vector<12xf32>
    vector.print %18 : vector<6xf32>
    vector.print %22 : vector<1xf32>
    vector.print %30 : vector<1xf32>
    vector.print %36 : vector<10x12xf32>
    vector.print %44 : vector<6x6x6xf32>
    vector.print %45 : vector<6x6x6xf32>
    vector.print %47 : vector<10x12xf32>
    vector.print %48 : vector<10x12xf32>
    vector.print %62 : vector<f32>
    vector.print %77 : vector<10xi16>
    vector.print %78 : vector<10xi1>
    vector.print %79 : vector<10xi16>
    vector.print %86 : vector<6xf32>
    vector.print %91 : vector<12xf32>
    vector.print %111 : vector<6x6x6xi16>
    vector.print %120 : vector<6x6x6xi1>
    vector.print %121 : vector<4x12xf32>
    vector.print %122 : vector<6xf16>
    vector.print %123 : vector<6xi1>
    vector.print %124 : vector<6xf16>
    vector.print %128 : vector<12xf32>
    vector.print %136 : vector<12xf16>
    vector.print %145 : vector<i32>
    vector.print %160 : vector<1x6xi32>
    vector.print %175 : vector<10x12xi64>
    vector.print %176 : vector<12xf32>
    vector.print %191 : vector<10xi16>
    vector.print %199 : vector<6xi1>
    vector.print %202 : vector<8xf32>
    vector.print %246 : vector<12xf32>
    vector.print %247 : vector<12xf32>
    vector.print %252 : vector<6xi1>
    vector.print %c25536_i16 : i16
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %c1101131446_i32 : i32
    vector.print %true : i1
    vector.print %true_1 : i1
    vector.print %c728709914_i64 : i64
    vector.print %c2136994837_i32 : i32
    vector.print %c23297_i16 : i16
    vector.print %cst_2 : f16
    vector.print %c574043727_i32 : i32
    vector.print %c963791498_i64 : i64
    vector.print %cst_3 : f32
    vector.print %c31481_i16 : i16
    vector.print %c-1636_i16 : i16
    vector.print %c1239302868_i32 : i32
    vector.print %23 : f16
    vector.print %cst_21 : f32
    vector.print %true_26 : i1
    vector.print %119 : f16
    vector.print %true_30 : i1
    vector.print %true_33 : i1
    vector.print %true_34 : i1
    vector.print %false : i1
    vector.print %false_39 : i1
    vector.print %cst_40 : f16
    vector.print %195 : i64
    vector.print %false_42 : i1
    vector.print %234 : i16
    return %c23297_i16 : i16
  }
}
