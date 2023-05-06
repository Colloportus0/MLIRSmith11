module {
  func.func private @func1() -> memref<5xi16> {
    %c-18386_i16 = arith.constant -18386 : i16
    %c2028099654_i32 = arith.constant 2028099654 : i32
    %c290583078_i64 = arith.constant 290583078 : i64
    %false = arith.constant false
    %c597053239_i64 = arith.constant 597053239 : i64
    %false_0 = arith.constant false
    %false_1 = arith.constant false
    %cst = arith.constant 6.003200e+04 : f16
    %c1954114746_i32 = arith.constant 1954114746 : i32
    %c857525772_i64 = arith.constant 857525772 : i64
    %cst_2 = arith.constant 4.086400e+04 : f16
    %cst_3 = arith.constant 5.108000e+03 : f16
    %cst_4 = arith.constant 2.118400e+04 : f16
    %c471358910_i32 = arith.constant 471358910 : i32
    %c366035889_i32 = arith.constant 366035889 : i32
    %c348884248_i32 = arith.constant 348884248 : i32
    %0 = tensor.empty() : tensor<7x7x7xi1>
    %1 = tensor.empty() : tensor<7x7x7xi16>
    %2 = tensor.empty() : tensor<5xf16>
    %3 = tensor.empty() : tensor<5xi64>
    %4 = tensor.empty() : tensor<5xf32>
    %5 = tensor.empty() : tensor<5xf32>
    %6 = tensor.empty() : tensor<7x7x7xf16>
    %7 = tensor.empty() : tensor<7x7x7xi1>
    %8 = tensor.empty() : tensor<5xf16>
    %9 = tensor.empty() : tensor<5xi16>
    %10 = tensor.empty() : tensor<7x7x7xi16>
    %11 = tensor.empty() : tensor<7x7x7xi64>
    %12 = tensor.empty() : tensor<5xi64>
    %13 = tensor.empty() : tensor<7x7x7xi1>
    %14 = tensor.empty() : tensor<7x7x7xi16>
    %15 = tensor.empty() : tensor<7x7x7xi64>
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
    %alloc = memref.alloc() : memref<5xf16>
    %alloc_5 = memref.alloc() : memref<5xi1>
    %alloc_6 = memref.alloc() : memref<7x7x7xi16>
    %alloc_7 = memref.alloc() : memref<5xi32>
    %alloc_8 = memref.alloc() : memref<5xf16>
    %alloc_9 = memref.alloc() : memref<5xi1>
    %alloc_10 = memref.alloc() : memref<7x7x7xf32>
    %alloc_11 = memref.alloc() : memref<5xi1>
    %alloc_12 = memref.alloc() : memref<7x7x7xf32>
    %alloc_13 = memref.alloc() : memref<7x7x7xi16>
    %alloc_14 = memref.alloc() : memref<7x7x7xi64>
    %alloc_15 = memref.alloc() : memref<5xi32>
    %alloc_16 = memref.alloc() : memref<5xi1>
    %alloc_17 = memref.alloc() : memref<5xi32>
    %alloc_18 = memref.alloc() : memref<5xi32>
    %alloc_19 = memref.alloc() : memref<5xi64>
    %16 = tensor.empty() : tensor<5xi16>
    %17 = linalg.copy ins(%9 : tensor<5xi16>) outs(%16 : tensor<5xi16>) -> tensor<5xi16>
    %18 = tensor.empty() : tensor<5xi16>
    %transposed = linalg.transpose ins(%9 : tensor<5xi16>) outs(%18 : tensor<5xi16>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<f16>
    linalg.reduce ins(%2 : tensor<5xf16>) outs(%alloc_20 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %264 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 2)>(%c10, %c6, %c10)
        %265 = math.atan %8 : tensor<5xf16>
        %266 = vector.broadcast %false_0 : i1 to vector<1xi1>
        %267 = vector.insert %false, %266 [0] : i1 into vector<1xi1>
        %268 = math.ctlz %12 : tensor<5xi64>
        %269 = math.exp2 %cst_2 : f16
        %rank_47 = tensor.rank %0 : tensor<7x7x7xi1>
        %270 = math.ceil %init : f16
        %271 = bufferization.to_memref %12 : memref<5xi64>
        %cst_48 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_48 : f16
      }
    %19 = scf.parallel (%arg0, %arg1) = (%c5, %c1) to (%c4, %c6) step (%c3, %c11) init (%cst_3) -> f16 {
      %264 = math.log1p %4 : tensor<5xf32>
      %265 = math.tan %8 : tensor<5xf16>
      %266 = arith.cmpf one, %cst_3, %cst : f16
      %267 = index.maxu %c6, %c14
      %268 = bufferization.clone %alloc_17 : memref<5xi32> to memref<5xi32>
      %269 = index.maxs %c3, %c3
      %270 = index.castu %c10 : index to i32
      %extracted_47 = tensor.extract %9[%c4] : tensor<5xi16>
      %271 = math.ctpop %transposed : tensor<5xi16>
      %true_48 = index.bool.constant true
      %272 = scf.index_switch %c8 -> i1 
      case 1 {
        %278 = arith.divsi %false, %false_0 : i1
        %279 = arith.addi %c471358910_i32, %c1954114746_i32 : i32
        %280 = vector.broadcast %false_1 : i1 to vector<1xi1>
        %281 = vector.broadcast %false_1 : i1 to vector<1xi1>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %280, %281, %true_48 : vector<1xi1>, vector<1xi1> into i1
        %283 = index.ceildivu %arg0, %267
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c15, %c13, %c6)
        affine.store %c-18386_i16, %alloc_13[%c5, %c3, %c4] : memref<7x7x7xi16>
        %285 = vector.splat %false_0 : vector<7x7x7xi1>
        %286 = arith.shli %c366035889_i32, %c2028099654_i32 : i32
        %287 = index.maxs %283, %c5
        %288 = math.log %2 : tensor<5xf16>
        %289 = vector.multi_reduction <maxui>, %280, %280 [] : vector<1xi1> to vector<1xi1>
        %290 = arith.xori %false_1, %true_48 : i1
        %291 = vector.extract_strided_slice %280 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %292 = math.cos %cst_3 : f16
        %293 = bufferization.clone %268 : memref<5xi32> to memref<5xi32>
        %294 = math.atan %4 : tensor<5xf32>
        scf.yield %false : i1
      }
      case 2 {
        %278 = bufferization.clone %alloc_13 : memref<7x7x7xi16> to memref<7x7x7xi16>
        %279 = arith.ceildivsi %c597053239_i64, %c290583078_i64 : i64
        %280 = math.round %cst : f16
        %alloca_50 = memref.alloca() : memref<5xi16>
        %281 = arith.shli %c471358910_i32, %c348884248_i32 : i32
        %alloc_51 = memref.alloc() : memref<7x7x7xf16>
        memref.tensor_store %6, %alloc_51 : memref<7x7x7xf16>
        %282 = arith.minsi %c-18386_i16, %c-18386_i16 : i16
        %cst_52 = arith.constant 1.000000e+00 : f32
        %283 = vector.broadcast %cst_52 : f32 to vector<1xf32>
        %284 = vector.extract_strided_slice %283 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %285 = index.ceildivs %c14, %c4
        %286 = bufferization.clone %alloc_19 : memref<5xi64> to memref<5xi64>
        %287 = arith.addf %cst_52, %cst_52 : f32
        %288 = index.maxs %c14, %269
        %289 = index.ceildivs %c12, %c8
        %alloc_53 = memref.alloc() : memref<6x7xf32>
        %290 = tensor.empty() : tensor<7x5xf32>
        %291 = tensor.empty() : tensor<6x5xf32>
        %292 = linalg.matmul ins(%alloc_53, %290 : memref<6x7xf32>, tensor<7x5xf32>) outs(%291 : tensor<6x5xf32>) -> tensor<6x5xf32>
        %293 = index.floordivs %c6, %c12
        %294 = arith.mulf %cst_2, %cst_4 : f16
        scf.yield %true_48 : i1
      }
      default {
        %alloc_50 = memref.alloc() : memref<5xi16>
        memref.tensor_store %transposed, %alloc_50 : memref<5xi16>
        %278 = vector.broadcast %c-18386_i16 : i16 to vector<1xi16>
        %279 = vector.multi_reduction <or>, %278, %extracted_47 [0] : vector<1xi16> to i16
        %280 = math.cos %6 : tensor<7x7x7xf16>
        %281 = vector.create_mask %c2, %c6, %c11 : vector<7x7x7xi1>
        %282 = arith.divf %cst_2, %cst : f16
        bufferization.dealloc_tensor %17 : tensor<5xi16>
        %283 = vector.splat %c11 : vector<5xindex>
        memref.copy %alloc_9, %alloc_5 : memref<5xi1> to memref<5xi1>
        %284 = vector.create_mask %c6, %267, %c15 : vector<7x7x7xi1>
        %285 = math.cttz %false_0 : i1
        %true_51 = arith.constant true
        %false_52 = arith.constant false
        %286 = vector.transfer_read %alloc_16[%c1], %false_52 : memref<5xi1>, vector<i1>
        %287 = math.round %6 : tensor<7x7x7xf16>
        %288 = vector.multi_reduction <maxsi>, %278, %c-18386_i16 [0] : vector<1xi16> to i16
        %289 = memref.atomic_rmw muli %c-18386_i16, %alloc_6[%c3, %c0, %c1] : (i16, memref<7x7x7xi16>) -> i16
        %290 = math.ctlz %10 : tensor<7x7x7xi16>
        %291 = memref.realloc %alloc_11 : memref<5xi1> to memref<7xi1>
        scf.yield %true_51 : i1
      }
      %273 = math.ctlz %15 : tensor<7x7x7xi64>
      %274 = arith.addf %cst_4, %cst_4 : f16
      %275 = affine.load %alloc_7[%c7] : memref<5xi32>
      %276 = math.fma %4, %4, %5 : tensor<5xf32>
      %277 = arith.addf %cst_3, %cst : f16
      %cst_49 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_49)  : f16 {
      ^bb0(%arg2: f16, %arg3: f16):
        %278 = arith.divui %275, %c2028099654_i32 : i32
        %279 = vector.broadcast %c290583078_i64 : i64 to vector<7xi64>
        %280 = vector.flat_transpose %279 {columns = 7 : i32, rows = 1 : i32} : vector<7xi64> -> vector<7xi64>
        %281 = vector.insertelement %c857525772_i64, %280[%c10 : index] : vector<7xi64>
        %282 = vector.splat %c2 : vector<5xindex>
        %283 = vector.splat %c10 : vector<5xindex>
        %rank_50 = tensor.rank %9 : tensor<5xi16>
        %284 = math.round %arg2 : f16
        %285 = bufferization.clone %alloc_11 : memref<5xi1> to memref<5xi1>
        %cst_51 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_51 : f16
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_10[%c12, %c10, %c3] : memref<7x7x7xf32>, vector<6xf32>
    affine.vector_store %20, %alloc_10[%c1, %c6, %c4] : memref<7x7x7xf32>, vector<6xf32>
    %alloc_21 = memref.alloc() : memref<5xi16>
    %21 = tensor.empty() : tensor<i16>
    %22 = linalg.dot ins(%9, %alloc_21 : tensor<5xi16>, memref<5xi16>) outs(%21 : tensor<i16>) -> tensor<i16>
    %23 = arith.cmpi sgt, %false_0, %false_0 : i1
    %24 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d2)>(%c15, %c14, %c4)
    %cst_22 = arith.constant 1.000000e+00 : f32
    %25 = vector.broadcast %cst_22 : f32 to vector<6x6xf32>
    %26 = vector.outerproduct %20, %20, %25 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
    %27 = memref.realloc %alloc_17 : memref<5xi32> to memref<6xi32>
    %28 = math.cos %cst_4 : f16
    %29 = arith.maxui %c290583078_i64, %c597053239_i64 : i64
    %alloca = memref.alloca() : memref<5xi64>
    %30 = arith.shli %c597053239_i64, %c857525772_i64 : i64
    %31 = math.absi %7 : tensor<7x7x7xi1>
    %32 = math.log1p %5 : tensor<5xf32>
    %33 = scf.index_switch %c2 -> tensor<7x7x7xi16> 
    case 1 {
      %264 = arith.addi %false_1, %false_0 : i1
      %265 = math.sqrt %8 : tensor<5xf16>
      affine.store %false_1, %alloc_9[%c14] : memref<5xi1>
      %266 = arith.muli %c366035889_i32, %c366035889_i32 : i32
      scf.execute_region {
        %false_47 = index.bool.constant false
        %276 = bufferization.to_tensor %alloc_5 : memref<5xi1>
        %277 = math.atan2 %6, %6 : tensor<7x7x7xf16>
        %278 = arith.divui %false_47, %false_1 : i1
        %279 = vector.splat %c0 : vector<7x7x7xindex>
        %280 = index.mul %c8, %c14
        %cst_48 = arith.constant 1.000000e+00 : f32
        %281 = vector.broadcast %cst_48 : f32 to vector<6x6xf32>
        %282 = vector.outerproduct %20, %20, %281 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
        %283 = vector.flat_transpose %20 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %284 = math.ctlz %c1954114746_i32 : i32
        %collapsed_49 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<7x7x7xi16> into tensor<49x7xi16>
        %285 = arith.minsi %c857525772_i64, %c857525772_i64 : i64
        %286 = index.castu %c7 : index to i32
        affine.store %c-18386_i16, %alloc_13[%c10, %c5, %c2] : memref<7x7x7xi16>
        %287 = arith.maxsi %false_47, %false_1 : i1
        %288 = vector.splat %cst : vector<7x7x7xf16>
        %289 = math.sqrt %4 : tensor<5xf32>
        scf.yield
      }
      %267 = math.fma %2, %8, %8 : tensor<5xf16>
      %268 = arith.divui %c1954114746_i32, %c366035889_i32 : i32
      %269 = bufferization.to_tensor %alloc_14 : memref<7x7x7xi64>
      scf.index_switch %c8 
      case 1 {
        %276 = arith.addi %false, %false : i1
        %277 = math.sqrt %cst : f16
        %278 = math.log1p %cst_4 : f16
        %279 = arith.shrui %c1954114746_i32, %c2028099654_i32 : i32
        %280 = math.atan %cst_3 : f16
        %281 = vector.splat %cst_2 : vector<5xf16>
        %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (9)>(%c9, %c1, %c11, %c6)
        %283 = math.fma %8, %8, %2 : tensor<5xf16>
        %284 = arith.muli %c348884248_i32, %c471358910_i32 : i32
        %285 = arith.shrui %c2028099654_i32, %c366035889_i32 : i32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_47 = arith.constant 0 : i16
        %286 = vector.transfer_read %1[%c0, %c7, %c14], %c0_i16_47 : tensor<7x7x7xi16>, vector<i16>
        %287 = bufferization.clone %alloc_6 : memref<7x7x7xi16> to memref<7x7x7xi16>
        %288 = vector.broadcast %c12 : index to vector<7xindex>
        %289 = vector.broadcast %false_1 : i1 to vector<7xi1>
        vector.scatter %alloc_5[%c1] [%288], %289, %289 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %290 = math.round %6 : tensor<7x7x7xf16>
        memref.tensor_store %12, %alloc_19 : memref<5xi64>
        %291 = bufferization.clone %alloc_10 : memref<7x7x7xf32> to memref<7x7x7xf32>
        scf.yield
      }
      case 2 {
        %true_47 = arith.constant true
        %276 = vector.extract_strided_slice %20 {offsets = [3], sizes = [1], strides = [1]} : vector<6xf32> to vector<1xf32>
        %277 = tensor.empty() : tensor<7x7x7xi32>
        %278 = math.fpowi %6, %277 : tensor<7x7x7xf16>, tensor<7x7x7xi32>
        %279 = arith.muli %c857525772_i64, %c290583078_i64 : i64
        %280 = math.exp2 %4 : tensor<5xf32>
        bufferization.dealloc_tensor %0 : tensor<7x7x7xi1>
        %281 = math.fma %cst_4, %cst_3, %cst_3 : f16
        %282 = math.expm1 %5 : tensor<5xf32>
        %283 = math.round %5 : tensor<5xf32>
        %284 = math.cos %cst_2 : f16
        %285 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c14, %c4, %c13)
        %286 = arith.maxui %false_0, %false : i1
        %287 = math.expm1 %4 : tensor<5xf32>
        %288 = math.tan %2 : tensor<5xf16>
        %289 = memref.realloc %alloc_19 : memref<5xi64> to memref<5xi64>
        %290 = math.atan %2 : tensor<5xf16>
        scf.yield
      }
      default {
        %276 = vector.splat %c6 : vector<5xindex>
        %277 = math.round %2 : tensor<5xf16>
        %278 = math.sqrt %8 : tensor<5xf16>
        %279 = arith.shli %false_0, %false_0 : i1
        vector.print %20 : vector<6xf32>
        %280 = arith.remui %false_0, %false : i1
        affine.store %c-18386_i16, %alloc_6[%c5, %c11, %c0] : memref<7x7x7xi16>
        %rank_47 = tensor.rank %11 : tensor<7x7x7xi64>
        %alloc_48 = memref.alloc() : memref<7x7x7xi1>
        memref.tensor_store %7, %alloc_48 : memref<7x7x7xi1>
        %281 = memref.load %alloc_10[%c5, %c0, %c6] : memref<7x7x7xf32>
        %282 = vector.shuffle %20, %20 [0, 2, 3, 4, 6, 7, 8, 9] : vector<6xf32>, vector<6xf32>
        %283 = math.absi %11 : tensor<7x7x7xi64>
        %284 = affine.apply affine_map<(d0, d1) -> (((d0 mod 64) ceildiv 128) ceildiv 8)>(%c9, %c14)
        %extracted_49 = tensor.extract %0[%c3, %c2, %c0] : tensor<7x7x7xi1>
        %285 = index.ceildivu %c7, %c5
        %286 = memref.load %alloc_18[%c1] : memref<5xi32>
      }
      %270 = vector.splat %false_0 : vector<5xi1>
      %271 = index.ceildivu %c9, %c15
      %272 = math.cttz %0 : tensor<7x7x7xi1>
      %273 = math.ctpop %c2028099654_i32 : i32
      vector.print %20 : vector<6xf32>
      %274 = math.atan %2 : tensor<5xf16>
      %275 = arith.addi %false_1, %false_0 : i1
      scf.yield %1 : tensor<7x7x7xi16>
    }
    default {
      %cst_47 = arith.constant 1.000000e+00 : f32
      %264 = vector.broadcast %cst_47 : f32 to vector<6x6xf32>
      %265 = vector.outerproduct %20, %20, %264 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
      %rank_48 = tensor.rank %12 : tensor<5xi64>
      %266 = tensor.empty() : tensor<5xi32>
      %267 = math.fpowi %4, %266 : tensor<5xf32>, tensor<5xi32>
      %268 = index.maxu %c14, %c5
      %269 = tensor.empty() : tensor<5xi1>
      %270 = vector.broadcast %false_0 : i1 to vector<5xi1>
      %271 = vector.broadcast %c348884248_i32 : i32 to vector<5xi32>
      %272 = vector.gather %269[%c13] [%271], %270, %270 : tensor<5xi1>, vector<5xi32>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %extracted_49 = tensor.extract %18[%c0] : tensor<5xi16>
      %273 = index.ceildivs %c2, %c6
      %274 = math.log1p %4 : tensor<5xf32>
      %275 = math.log2 %5 : tensor<5xf32>
      %276 = math.floor %4 : tensor<5xf32>
      %277 = arith.divf %cst_3, %cst_3 : f16
      %extracted_50 = tensor.extract %11[%c4, %c0, %c4] : tensor<7x7x7xi64>
      %278 = math.exp2 %6 : tensor<7x7x7xf16>
      %279 = math.sqrt %cst : f16
      %280 = math.floor %8 : tensor<5xf16>
      %281 = memref.atomic_rmw muli %c597053239_i64, %alloc_14[%c4, %c5, %c4] : (i64, memref<7x7x7xi64>) -> i64
      scf.yield %10 : tensor<7x7x7xi16>
    }
    %34 = scf.while (%arg0 = %alloc_20) : (memref<f16>) -> memref<f16> {
      %264 = bufferization.to_tensor %alloc_7 : memref<5xi32>
      %265 = arith.shli %false, %false : i1
      %266 = math.expm1 %cst_4 : f16
      %267 = tensor.empty() : tensor<5xi16>
      %mapped_47 = linalg.map ins(%17, %alloc_21 : tensor<5xi16>, memref<5xi16>) outs(%267 : tensor<5xi16>)
        (%in: i16, %in_48: i16) {
          %extracted_49 = tensor.extract %22[] : tensor<i16>
          %272 = vector.broadcast %c6 : index to vector<7xindex>
          %273 = vector.broadcast %false_0 : i1 to vector<7xi1>
          vector.scatter %alloc_9[%c3] [%272], %273, %273 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
          %274 = affine.apply affine_map<(d0, d1) -> (d1 + d0)>(%c8, %c14)
          %275 = bufferization.clone %alloc_12 : memref<7x7x7xf32> to memref<7x7x7xf32>
          %276 = math.ipowi %in_48, %in_48 : i16
          %277 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d2)>(%c4, %c8, %c7)
          %278 = index.sub %c9, %277
          %279 = arith.remui %c597053239_i64, %c857525772_i64 : i64
          %280 = memref.atomic_rmw addf %cst, %alloc_20[] : (f16, memref<f16>) -> f16
          %281 = vector.broadcast %cst_2 : f16 to vector<7xf16>
          %282 = vector.broadcast %false_1 : i1 to vector<7xi1>
          %283 = vector.maskedload %alloc_20[], %282, %281 : memref<f16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
          %284 = arith.subi %false_1, %false_0 : i1
          %285 = vector.load %alloc_16[%c4] : memref<5xi1>, vector<7x7x7xi1>
          %286 = math.fma %cst_2, %cst_2, %cst_3 : f16
          %true_50 = arith.constant true
          %false_51 = arith.constant false
          %287 = vector.transfer_read %13[%c14, %c4, %c14], %false_51 : tensor<7x7x7xi1>, vector<i1>
          %288 = math.atan %cst_3 : f16
          %289 = arith.maxui %c857525772_i64, %c597053239_i64 : i64
          %290 = math.floor %8 : tensor<5xf16>
          %291 = math.cttz %c-18386_i16 : i16
          %292 = vector.flat_transpose %283 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
          %293 = arith.ceildivsi %in, %c-18386_i16 : i16
          %294 = math.round %5 : tensor<5xf32>
          %295 = arith.mulf %cst, %cst_3 : f16
          %296 = math.rsqrt %cst_3 : f16
          %297 = arith.minsi %c-18386_i16, %in_48 : i16
          %298 = arith.ceildivsi %c290583078_i64, %c857525772_i64 : i64
          %299 = vector.extract %285[0, 3] : vector<7x7x7xi1>
          %300 = arith.subi %false, %true_50 : i1
          %301 = vector.insertelement %false_0, %299[%c8 : index] : vector<7xi1>
          %302 = arith.maxsi %false_0, %true_50 : i1
          %303 = math.exp %cst_3 : f16
          %304 = math.tan %5 : tensor<5xf32>
          %305 = index.divs %c6, %c15
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %268 = math.ceil %2 : tensor<5xf16>
      %269 = vector.broadcast %c5 : index to vector<7xindex>
      %270 = vector.broadcast %false : i1 to vector<7xi1>
      vector.scatter %alloc_11[%c3] [%269], %270, %270 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      scf.index_switch %c14 
      case 1 {
        %272 = index.floordivs %c5, %c14
        %273 = math.log10 %cst_4 : f16
        %274 = math.cttz %14 : tensor<7x7x7xi16>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %275 = vector.broadcast %cst_48 : f32 to vector<6x6xf32>
        %276 = vector.outerproduct %20, %20, %275 {kind = #vector.kind<mul>} : vector<6xf32>, vector<6xf32>
        %277 = arith.remf %cst_2, %cst_4 : f16
        %278 = math.log2 %2 : tensor<5xf16>
        %279 = arith.divf %cst_4, %cst_4 : f16
        %extracted_49 = tensor.extract %5[%c2] : tensor<5xf32>
        %280 = vector.insertelement %extracted_49, %20[%c15 : index] : vector<6xf32>
        %281 = math.fma %extracted_49, %extracted_49, %extracted_49 : f32
        %rank_50 = tensor.rank %2 : tensor<5xf16>
        %282 = arith.ceildivsi %false_1, %false : i1
        %283 = arith.remf %cst_2, %cst : f16
        %284 = arith.xori %c366035889_i32, %c1954114746_i32 : i32
        %285 = memref.load %alloc_10[%c5, %c1, %c4] : memref<7x7x7xf32>
        %286 = math.cos %5 : tensor<5xf32>
        scf.yield
      }
      default {
        %272 = index.maxs %c3, %c15
        %273 = bufferization.clone %alloc_15 : memref<5xi32> to memref<5xi32>
        %rank_48 = tensor.rank %12 : tensor<5xi64>
        %274 = math.ctpop %9 : tensor<5xi16>
        bufferization.dealloc_tensor %0 : tensor<7x7x7xi1>
        %275 = math.absi %c597053239_i64 : i64
        %276 = math.log2 %4 : tensor<5xf32>
        %277 = math.absi %c-18386_i16 : i16
        %278 = arith.cmpf olt, %cst_4, %cst_3 : f16
        %279 = arith.minsi %c348884248_i32, %c366035889_i32 : i32
        %280 = index.divu %272, %c2
        %281 = bufferization.to_memref %5 : memref<5xf32>
        %282 = index.sub %c5, %rank_48
        %283 = bufferization.to_memref %22 : memref<i16>
        memref.store %c-18386_i16, %alloc_13[%c6, %c2, %c5] : memref<7x7x7xi16>
        %284 = index.sub %c10, %282
      }
      %271 = math.powf %6, %6 : tensor<7x7x7xf16>
      scf.condition(%false) %arg0 : memref<f16>
    } do {
    ^bb0(%arg0: memref<f16>):
      %alloca_47 = memref.alloca() : memref<7x7x7xf16>
      %264 = math.log2 %5 : tensor<5xf32>
      %265 = scf.while (%arg1 = %arg0) : (memref<f16>) -> memref<f16> {
        %280 = vector.splat %c8 : vector<5xindex>
        %281 = index.ceildivu %c2, %c15
        %282 = index.maxu %c3, %c4
        %283 = arith.minsi %c348884248_i32, %c2028099654_i32 : i32
        %284 = arith.shrui %c597053239_i64, %c857525772_i64 : i64
        %285 = math.ctpop %0 : tensor<7x7x7xi1>
        %286 = bufferization.clone %arg1 : memref<f16> to memref<f16>
        %287 = math.tan %5 : tensor<5xf32>
        scf.condition(%false) %arg1 : memref<f16>
      } do {
      ^bb0(%arg1: memref<f16>):
        %280 = math.sqrt %2 : tensor<5xf16>
        %cst_49 = arith.constant 1.000000e+00 : f32
        %281 = vector.broadcast %cst_49 : f32 to vector<6x6xf32>
        %282 = vector.outerproduct %20, %20, %281 {kind = #vector.kind<mul>} : vector<6xf32>, vector<6xf32>
        %283 = vector.broadcast %c-18386_i16 : i16 to vector<7x7x7xi16>
        %284 = arith.remui %c1954114746_i32, %c471358910_i32 : i32
        %285 = math.atan %8 : tensor<5xf16>
        %cst_50 = arith.constant 1.000000e+00 : f32
        %286 = vector.broadcast %cst_50 : f32 to vector<6x6xf32>
        %287 = vector.outerproduct %20, %20, %286 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
        %288 = math.floor %2 : tensor<5xf16>
        %289 = math.cttz %7 : tensor<7x7x7xi1>
        %290 = vector.broadcast %c11 : index to vector<6xindex>
        %291 = vector.broadcast %false_0 : i1 to vector<6xi1>
        vector.scatter %alloc_9[%c0] [%290], %291, %291 : memref<5xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %292 = vector.create_mask %c8 : vector<5xi1>
        %293 = math.rsqrt %6 : tensor<7x7x7xf16>
        %alloc_51 = memref.alloc() : memref<7x7x7xi1>
        memref.tensor_store %13, %alloc_51 : memref<7x7x7xi1>
        %294 = affine.max affine_map<(d0, d1, d2) -> (d0 * -8)>(%c8, %c7, %c5)
        %295 = arith.mulf %cst_4, %cst : f16
        %296 = index.ceildivu %c7, %c0
        %297 = arith.remui %c348884248_i32, %c2028099654_i32 : i32
        scf.yield %arg0 : memref<f16>
      }
      %266 = math.log10 %5 : tensor<5xf32>
      %267 = index.sub %c6, %c9
      %268 = arith.minf %cst, %cst_2 : f16
      %269 = arith.divui %c471358910_i32, %c348884248_i32 : i32
      %270 = math.absi %3 : tensor<5xi64>
      %271 = vector.flat_transpose %20 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
      %272 = arith.divui %false, %false_1 : i1
      %273 = math.round %8 : tensor<5xf16>
      %274 = arith.maxui %c348884248_i32, %c348884248_i32 : i32
      vector.print %271 : vector<6xf32>
      %275 = math.log10 %2 : tensor<5xf16>
      %276 = memref.atomic_rmw mulf %cst_2, %alloc_20[] : (f16, memref<f16>) -> f16
      %277 = tensor.empty() : tensor<7x5xi1>
      %alloc_48 = memref.alloc() : memref<5x7xi1>
      %278 = tensor.empty() : tensor<7x7xi1>
      %279 = linalg.matmul ins(%277, %alloc_48 : tensor<7x5xi1>, memref<5x7xi1>) outs(%278 : tensor<7x7xi1>) -> tensor<7x7xi1>
      scf.yield %alloc_20 : memref<f16>
    }
    %35 = affine.apply affine_map<(d0) -> (d0 + 146)>(%c10)
    %36 = index.divs %c11, %c4
    %cst_23 = arith.constant 1.000000e+00 : f32
    %37 = vector.broadcast %cst_23 : f32 to vector<5xf32>
    %38 = vector.broadcast %false_0 : i1 to vector<5xi1>
    %39 = vector.maskedload %alloc_10[%c2, %c3, %c4], %38, %37 : memref<7x7x7xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
    vector.print %20 : vector<6xf32>
    %40 = index.maxu %c7, %c12
    %alloc_24 = memref.alloc() : memref<7x7xi32>
    %41 = tensor.empty() : tensor<7x5xi32>
    %42 = tensor.empty() : tensor<7x5xi32>
    %43 = linalg.matmul ins(%alloc_24, %41 : memref<7x7xi32>, tensor<7x5xi32>) outs(%42 : tensor<7x5xi32>) -> tensor<7x5xi32>
    %44 = math.ctpop %c348884248_i32 : i32
    %45 = affine.max affine_map<(d0, d1) -> (-((d0 - 2) mod 32), -((d0 - 2) mod 32) - 2, d1 + 1, d1 + 1)>(%c2, %c2)
    %46 = memref.load %alloc_5[%c1] : memref<5xi1>
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<7x7x7xi1> into tensor<49x7xi1>
    %47 = index.mul %c0, %c5
    %48 = math.round %2 : tensor<5xf16>
    scf.if %false_1 {
      %264 = vector.create_mask %36, %c9, %c10 : vector<7x7x7xi1>
      %alloc_47 = memref.alloc() : memref<5x7xi32>
      %265 = tensor.empty() : tensor<7x7xi32>
      %266 = linalg.matmul ins(%42, %alloc_47 : tensor<7x5xi32>, memref<5x7xi32>) outs(%265 : tensor<7x7xi32>) -> tensor<7x7xi32>
      %267 = arith.negf %cst_23 : f32
      %268 = index.mul %c3, %c10
      %269 = arith.remf %cst_3, %cst_2 : f16
      %270 = vector.broadcast %false_0 : i1 to vector<5x5xi1>
      %271 = vector.outerproduct %38, %38, %270 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
      %272 = arith.muli %c1954114746_i32, %c471358910_i32 : i32
      %273 = math.cos %2 : tensor<5xf16>
    }
    %49 = math.absi %14 : tensor<7x7x7xi16>
    %50 = math.sqrt %cst : f16
    %51 = vector.splat %c2 : vector<7x7x7xindex>
    %52 = math.rsqrt %cst_3 : f16
    %53 = arith.remf %cst_4, %cst : f16
    %54 = arith.minsi %false_0, %false : i1
    %55 = vector.broadcast %false_1 : i1 to vector<7x7x7xi1>
    %56 = math.ceil %5 : tensor<5xf32>
    %57 = arith.negf %cst_2 : f16
    %58 = vector.broadcast %cst_23 : f32 to vector<5xf32>
    %59 = vector.fma %58, %39, %37 : vector<5xf32>
    %60 = math.fpowi %cst_3, %c2028099654_i32 : f16, i32
    %61 = vector.flat_transpose %58 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
    %62 = arith.mulf %cst_23, %cst_23 : f32
    %63 = arith.negf %cst_2 : f16
    %64 = math.log2 %cst_2 : f16
    %65 = vector.broadcast %false : i1 to vector<5x5xi1>
    %66 = vector.outerproduct %38, %38, %65 {kind = #vector.kind<and>} : vector<5xi1>, vector<5xi1>
    %67 = math.atan %cst_4 : f16
    %extracted = tensor.extract %1[%c2, %c0, %c2] : tensor<7x7x7xi16>
    %68 = vector.flat_transpose %61 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
    %69 = math.round %2 : tensor<5xf16>
    bufferization.dealloc_tensor %transposed : tensor<5xi16>
    %70 = math.fma %cst_3, %cst, %cst_4 : f16
    %alloc_25 = memref.alloc() : memref<7x5xi1>
    %71 = tensor.empty() : tensor<49x5xi1>
    %72 = linalg.matmul ins(%collapsed, %alloc_25 : tensor<49x7xi1>, memref<7x5xi1>) outs(%71 : tensor<49x5xi1>) -> tensor<49x5xi1>
    memref.alloca_scope  {
      %264 = index.sizeof
      %265 = vector.broadcast %false_0 : i1 to vector<7x7xi1>
      %dest, %accumulated_value = vector.scan <minsi>, %55, %265 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x7xi1>, vector<7x7xi1>
      %cst_47 = arith.constant 1.000000e+00 : f16
      %cst_48 = arith.constant 0.000000e+00 : f16
      %266 = vector.transfer_read %alloc_8[%36], %cst_48 : memref<5xf16>, vector<f16>
      %267 = math.ipowi %18, %18 : tensor<5xi16>
      %268 = math.fma %6, %6, %6 : tensor<7x7x7xf16>
      %rank_49 = tensor.rank %3 : tensor<5xi64>
      %269 = bufferization.to_tensor %alloc_17 : memref<5xi32>
      %270 = arith.cmpi ne, %c2028099654_i32, %c1954114746_i32 : i32
      %271 = vector.broadcast %false_1 : i1 to vector<i1>
      vector.transfer_write %271, %alloc_11[%c11] : vector<i1>, memref<5xi1>
      %272 = index.floordivs %c10, %24
      %collapsed_50 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<7x7x7xi64> into tensor<49x7xi64>
      %273 = vector.broadcast %cst_23 : f32 to vector<f32>
      %274 = vector.transfer_write %273, %4[%36] : vector<f32>, tensor<5xf32>
      %275 = index.maxu %c7, %c9
      %276 = arith.divf %cst_2, %cst_4 : f16
      %277 = memref.load %alloc_20[] : memref<f16>
      %278 = vector.extract %59[3] : vector<5xf32>
      %279 = arith.maxsi %c857525772_i64, %c857525772_i64 : i64
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %280 = vector.transfer_read %alloc_13[%45, %45, %45], %c0_i16 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<7x7x7xi16>, vector<7x7xi16>
      %extracted_51 = tensor.extract %14[%c2, %c3, %c2] : tensor<7x7x7xi16>
      %281 = index.maxs %264, %rank_49
      %282 = arith.addi %false_0, %false_0 : i1
      %283 = arith.mulf %cst_2, %cst : f16
      %284 = arith.minui %extracted, %c1_i16 : i16
      %285 = vector.broadcast %c290583078_i64 : i64 to vector<5xi64>
      %286 = vector.broadcast %c1954114746_i32 : i32 to vector<5xi32>
      %287 = vector.gather %alloc_14[%c4, %c2, %c9] [%286], %38, %285 : memref<7x7x7xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %288 = arith.divsi %c471358910_i32, %c2028099654_i32 : i32
      %289 = index.floordivs %c7, %c1
      %290 = math.round %6 : tensor<7x7x7xf16>
      %291 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 2) * 2 + 16, (d0 mod 2 + d1 mod 8) * -8, d1 + 4, (d0 ceildiv 2) * 2 + 16)>(%c11, %rank_49)
      %292 = math.fpowi %cst_47, %c348884248_i32 : f16, i32
      %293 = math.absi %42 : tensor<7x5xi32>
      %294 = math.tan %4 : tensor<5xf32>
      %295 = arith.addf %cst_23, %cst_23 : f32
    }
    %73 = memref.load %alloc_19[%c1] : memref<5xi64>
    %74 = index.maxu %c6, %c4
    %75 = index.divs %c8, %c4
    %76 = memref.realloc %alloc_8 : memref<5xf16> to memref<7xf16>
    %77 = scf.execute_region -> i64 {
      %264 = vector.splat %35 : vector<5xindex>
      %265 = arith.minui %c348884248_i32, %c348884248_i32 : i32
      %266 = affine.apply affine_map<(d0, d1) -> (((d0 mod 64) ceildiv 128) ceildiv 8)>(%74, %c3)
      %267 = memref.realloc %alloc_8 : memref<5xf16> to memref<7xf16>
      %268 = vector.broadcast %false_0 : i1 to vector<7x7xi1>
      %269 = vector.multi_reduction <maxsi>, %55, %268 [0] : vector<7x7x7xi1> to vector<7x7xi1>
      %270 = math.absi %11 : tensor<7x7x7xi64>
      memref.copy %alloc_9, %alloc_5 : memref<5xi1> to memref<5xi1>
      affine.store %false_1, %alloc_16[%c6] : memref<5xi1>
      %271 = math.rsqrt %6 : tensor<7x7x7xf16>
      %272 = bufferization.clone %alloc_16 : memref<5xi1> to memref<5xi1>
      %273 = math.round %8 : tensor<5xf16>
      %274 = arith.shli %false, %false : i1
      %275 = arith.muli %c857525772_i64, %c857525772_i64 : i64
      %alloc_47 = memref.alloc() : memref<i16>
      memref.tensor_store %22, %alloc_47 : memref<i16>
      %276 = vector.shuffle %59, %37 [2, 6] : vector<5xf32>, vector<5xf32>
      %277 = math.log1p %6 : tensor<7x7x7xf16>
      scf.yield %c857525772_i64 : i64
    }
    %78 = vector.extract %58[4] : vector<5xf32>
    %79 = math.rsqrt %8 : tensor<5xf16>
    memref.store %77, %alloc_19[%c4] : memref<5xi64>
    %80 = vector.broadcast %false_0 : i1 to vector<5x5xi1>
    %81 = vector.outerproduct %38, %38, %80 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
    %82 = math.ctpop %42 : tensor<7x5xi32>
    %alloca_26 = memref.alloca() : memref<5xi16>
    %83 = tensor.empty() : tensor<5xi32>
    %84 = math.fpowi %4, %83 : tensor<5xf32>, tensor<5xi32>
    %85 = math.log2 %cst_23 : f32
    %86 = vector.insert %cst_23, %37 [3] : f32 into vector<5xf32>
    %87 = math.fpowi %2, %83 : tensor<5xf16>, tensor<5xi32>
    %88 = index.floordivs %c2, %75
    %89 = index.maxu %c12, %c1
    %true = index.bool.constant true
    %90 = vector.broadcast %35 : index to vector<5xindex>
    %91 = vector.broadcast %c471358910_i32 : i32 to vector<5xi32>
    vector.scatter %alloc_15[%c2] [%90], %38, %91 : memref<5xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
    %92 = math.atan %4 : tensor<5xf32>
    %93 = vector.splat %c857525772_i64 : vector<7x7x7xi64>
    %94 = vector.broadcast %88 : index to vector<7xindex>
    %95 = vector.broadcast %false_1 : i1 to vector<7xi1>
    vector.scatter %alloc_16[%c0] [%94], %95, %95 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %96 = math.absi %c857525772_i64 : i64
    %generated = tensor.generate %c8 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %264 = index.divu %c7, %c9
      %265 = affine.apply affine_map<(d0) -> (0)>(%75)
      %266 = arith.addi %c348884248_i32, %c2028099654_i32 : i32
      %267 = arith.divf %cst_3, %cst : f16
      tensor.yield %false_1 : i1
    } : tensor<?x7x7xi1>
    %97 = arith.remui %c-18386_i16, %c-18386_i16 : i16
    %true_27 = index.bool.constant true
    %98 = vector.splat %c15 : vector<7x7x7xindex>
    %99 = math.log1p %8 : tensor<5xf16>
    %100 = arith.divui %c2028099654_i32, %c1954114746_i32 : i32
    %101 = arith.subi %c1954114746_i32, %c471358910_i32 : i32
    %102 = index.maxu %c0, %c0
    %103 = bufferization.to_tensor %alloc_9 : memref<5xi1>
    %104 = math.cos %cst_3 : f16
    %105 = affine.apply affine_map<(d0, d1, d2) -> ((d1 - 64) * 32)>(%c15, %c9, %102)
    %106 = arith.negf %cst_23 : f32
    %107 = math.log10 %8 : tensor<5xf16>
    %108 = index.ceildivs %c11, %c10
    %109 = vector.shuffle %39, %58 [2, 3, 6, 7, 8, 9] : vector<5xf32>, vector<5xf32>
    %110 = math.log %cst_2 : f16
    %111 = arith.remui %false, %false_1 : i1
    %112 = arith.ceildivsi %false_1, %false_0 : i1
    %113 = math.ceil %cst_3 : f16
    vector.print %20 : vector<6xf32>
    %generated_28 = tensor.generate %c12 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %264 = math.ctlz %16 : tensor<5xi16>
      %265 = affine.apply affine_map<(d0) -> (d0 + 16)>(%c2)
      memref.store %cst_2, %alloc[%c2] : memref<5xf16>
      %266 = arith.cmpf false, %cst_4, %cst_2 : f16
      tensor.yield %c366035889_i32 : i32
    } : tensor<?x7x7xi32>
    vector.print %38 : vector<5xi1>
    %114 = math.powf %4, %4 : tensor<5xf32>
    %115 = affine.apply affine_map<(d0, d1, d2) -> ((d1 - 64) * 32)>(%40, %74, %40)
    %116 = arith.addf %cst_4, %cst_2 : f16
    %117 = math.absi %15 : tensor<7x7x7xi64>
    %118 = arith.negf %cst_2 : f16
    %119 = math.rsqrt %5 : tensor<5xf32>
    memref.copy %alloc_5, %alloc_9 : memref<5xi1> to memref<5xi1>
    %alloca_29 = memref.alloca() : memref<7x7x7xf16>
    %false_30 = arith.constant false
    %120 = vector.transfer_read %alloc_5[%105], %false_30 : memref<5xi1>, vector<i1>
    %rank = tensor.rank %10 : tensor<7x7x7xi16>
    %121 = arith.addf %cst_23, %cst_23 : f32
    %122 = bufferization.to_memref %14 : memref<7x7x7xi16>
    %123 = arith.cmpi uge, %false, %false_1 : i1
    %false_31 = index.bool.constant false
    %124 = affine.load %alloc[%c5] : memref<5xf16>
    %extracted_32 = tensor.extract %12[%c0] : tensor<5xi64>
    vector.print %37 : vector<5xf32>
    %125 = math.round %cst_23 : f32
    %126 = scf.execute_region -> memref<5xi1> {
      %264 = affine.min affine_map<(d0, d1, d2) -> (-d0, d1, (d2 - 32) ceildiv 128)>(%c3, %88, %c4)
      %265 = math.cttz %transposed : tensor<5xi16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %59, %61, %cst_23 : vector<5xf32>, vector<5xf32> into f32
      %267 = arith.muli %c-18386_i16, %c-18386_i16 : i16
      %268 = vector.load %alloc_16[%c0] : memref<5xi1>, vector<7x7x7xi1>
      %269 = arith.cmpi ule, %c290583078_i64, %c857525772_i64 : i64
      %270 = math.ceil %cst_4 : f16
      %271 = vector.flat_transpose %39 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %272 = vector.insert %cst_23, %58 [4] : f32 into vector<5xf32>
      %273 = index.divs %c7, %24
      %274 = math.tan %cst_3 : f16
      %275 = scf.index_switch %c10 -> vector<5xi16> 
      case 1 {
        %280 = bufferization.clone %alloc_7 : memref<5xi32> to memref<5xi32>
        %281 = arith.shli %extracted, %extracted : i16
        %282 = arith.subi %false, %false_0 : i1
        %expanded_47 = tensor.expand_shape %16 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
        %283 = math.cttz %15 : tensor<7x7x7xi64>
        %284 = arith.remui %false_1, %true : i1
        %285 = index.floordivs %c13, %88
        %286 = arith.minsi %c857525772_i64, %c290583078_i64 : i64
        %287 = bufferization.clone %alloc_14 : memref<7x7x7xi64> to memref<7x7x7xi64>
        %288 = arith.addf %cst_23, %cst_23 : f32
        %289 = vector.extract_strided_slice %55 {offsets = [1, 1], sizes = [2, 4], strides = [1, 1]} : vector<7x7x7xi1> to vector<2x4x7xi1>
        %extracted_48 = tensor.extract %10[%c4, %c6, %c2] : tensor<7x7x7xi16>
        %290 = arith.muli %c366035889_i32, %c471358910_i32 : i32
        %291 = arith.divf %cst, %cst : f16
        %292 = affine.min affine_map<(d0, d1) -> (d1 - 8, d0 mod 16 - d1 + 2)>(%c9, %c9)
        %293 = index.divs %108, %292
        %294 = vector.broadcast %extracted_48 : i16 to vector<5xi16>
        scf.yield %294 : vector<5xi16>
      }
      default {
        %280 = index.maxs %89, %c13
        %281 = arith.minf %cst, %cst_3 : f16
        vector.print %68 : vector<5xf32>
        %282 = index.divs %c2, %24
        %283 = math.ceil %5 : tensor<5xf32>
        %284 = index.maxu %264, %c11
        %285 = vector.splat %c-18386_i16 : vector<5xi16>
        %286 = vector.broadcast %c8 : index to vector<7xindex>
        %287 = vector.broadcast %true_27 : i1 to vector<7xi1>
        %288 = vector.broadcast %cst : f16 to vector<7xf16>
        vector.scatter %alloc[%c4] [%286], %287, %288 : memref<5xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %289 = math.log %4 : tensor<5xf32>
        %290 = arith.remf %cst_3, %cst_4 : f16
        %291 = index.divs %35, %rank
        %292 = arith.shrsi %extracted_32, %c290583078_i64 : i64
        %293 = affine.apply affine_map<(d0) -> (d0 + 146)>(%88)
        %294 = index.mul %c12, %291
        %expanded_47 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x7x7xi1> into tensor<7x7x7x1xi1>
        %extracted_48 = tensor.extract %6[%c0, %c0, %c2] : tensor<7x7x7xf16>
        %295 = vector.broadcast %extracted : i16 to vector<5xi16>
        scf.yield %295 : vector<5xi16>
      }
      %276 = affine.min affine_map<(d0) -> (-(d0 ceildiv 16), d0 mod 32 + 128, (d0 mod 32 + 128) * 32)>(%c1)
      %277 = math.tan %8 : tensor<5xf16>
      %278 = arith.negf %cst : f16
      %279 = math.ctpop %extracted_32 : i64
      scf.yield %alloc_9 : memref<5xi1>
    }
    %127 = math.fma %cst_23, %cst_23, %cst_23 : f32
    %128 = vector.insertelement %cst_23, %20[%c8 : index] : vector<6xf32>
    %129 = arith.cmpf ueq, %cst_3, %cst_3 : f16
    %130 = arith.minf %cst_23, %cst_23 : f32
    memref.assume_alignment %alloc_13, 2 : memref<7x7x7xi16>
    %131 = bufferization.to_memref %0 : memref<7x7x7xi1>
    %132 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 128)>(%c8, %89, %47, %36)
    %133 = arith.maxsi %c1954114746_i32, %c471358910_i32 : i32
    %134 = math.fma %cst, %cst_3, %cst_4 : f16
    %135 = index.maxs %c11, %89
    %136 = arith.remf %cst_3, %cst_4 : f16
    %137 = math.cttz %1 : tensor<7x7x7xi16>
    %138 = math.sqrt %2 : tensor<5xf16>
    %139 = arith.ceildivsi %extracted, %c-18386_i16 : i16
    %140 = arith.cmpi sle, %c2028099654_i32, %c366035889_i32 : i32
    %alloca_33 = memref.alloca() : memref<7x7x7xi64>
    %141 = arith.remui %c597053239_i64, %extracted_32 : i64
    %142 = affine.if affine_set<(d0, d1, d2) : (-d2 == 0)>(%c6, %c0, %c13) -> f32 {
      %264 = scf.if %true -> (memref<5xi16>) {
        %alloc_48 = memref.alloc() : memref<5xi32>
        %rank_49 = tensor.rank %transposed : tensor<5xi16>
        %271 = vector.splat %132 : vector<7x7x7xindex>
        %272 = vector.splat %c857525772_i64 : vector<7x7x7xi64>
        %273 = arith.subi %false_0, %false_31 : i1
        %274 = math.powf %2, %2 : tensor<5xf16>
        %275 = arith.xori %false_0, %true : i1
        %276 = affine.apply affine_map<(d0, d1) -> (d1 + d0)>(%40, %102)
        scf.yield %alloc_21 : memref<5xi16>
      } else {
        %cast = tensor.cast %83 : tensor<5xi32> to tensor<?xi32>
        %271 = arith.negf %cst : f16
        %alloc_48 = memref.alloc() : memref<7x7xi1>
        %272 = tensor.empty() : tensor<49x7xi1>
        %273 = linalg.matmul ins(%collapsed, %alloc_48 : tensor<49x7xi1>, memref<7x7xi1>) outs(%272 : tensor<49x7xi1>) -> tensor<49x7xi1>
        %274 = bufferization.to_memref %71 : memref<49x5xi1>
        %275 = vector.broadcast %c-18386_i16 : i16 to vector<7x6xi16>
        %276 = vector.transfer_write %275, %1[%c15, %c12, %45] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x6xi16>, tensor<7x7x7xi16>
        %277 = arith.maxui %false_1, %false_30 : i1
        %278 = math.tanh %8 : tensor<5xf16>
        %279 = arith.muli %extracted, %c-18386_i16 : i16
        scf.yield %alloc_21 : memref<5xi16>
      }
      %265 = math.log10 %cst : f16
      %266 = arith.negf %cst_4 : f16
      %rank_47 = tensor.rank %14 : tensor<7x7x7xi16>
      %267 = math.log %cst_23 : f32
      %268 = arith.shli %false_31, %false : i1
      %269 = math.atan2 %5, %4 : tensor<5xf32>
      %270 = math.cos %8 : tensor<5xf16>
      affine.yield %cst_23 : f32
    } else {
      %264 = arith.xori %c348884248_i32, %c366035889_i32 : i32
      %265 = arith.shrui %c2028099654_i32, %c1954114746_i32 : i32
      %266 = math.round %4 : tensor<5xf32>
      memref.store %c348884248_i32, %alloc_15[%c4] : memref<5xi32>
      %267 = arith.minui %false_31, %true_27 : i1
      %268 = math.absi %12 : tensor<5xi64>
      %269 = vector.broadcast %cst_23 : f32 to vector<5x5xf32>
      %270 = vector.outerproduct %59, %37, %269 {kind = #vector.kind<minf>} : vector<5xf32>, vector<5xf32>
      %271 = tensor.empty() : tensor<5xi16>
      %mapped_47 = linalg.map ins(%transposed, %transposed : tensor<5xi16>, tensor<5xi16>) outs(%271 : tensor<5xi16>)
        (%in: i16, %in_48: i16) {
          %272 = math.atan %5 : tensor<5xf32>
          %273 = vector.broadcast %cst_23 : f32 to vector<5x5xf32>
          %274 = vector.outerproduct %58, %61, %273 {kind = #vector.kind<maxf>} : vector<5xf32>, vector<5xf32>
          %275 = arith.addf %cst, %cst : f16
          %276 = math.absf %8 : tensor<5xf16>
          %277 = vector.multi_reduction <minf>, %39, %58 [] : vector<5xf32> to vector<5xf32>
          %278 = vector.create_mask %c13 : vector<5xi1>
          %279 = vector.insert %false_1, %278 [3] : i1 into vector<5xi1>
          %280 = math.floor %cst : f16
          %281 = arith.divsi %false, %true_27 : i1
          %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %58, %61, %cst_23 : vector<5xf32>, vector<5xf32> into f32
          %283 = index.floordivs %35, %74
          %284 = arith.minsi %false_0, %true_27 : i1
          %285 = arith.shli %c1954114746_i32, %c1954114746_i32 : i32
          %286 = affine.min affine_map<(d0, d1) -> ((d1 + 16) * 2 + d0 * 4 + (d0 floordiv 4) ceildiv 8 + 128, (d0 floordiv 4) ceildiv 8, d0 * 4, (((d1 + 16) * 2) floordiv 16) floordiv 4)>(%c15, %c4)
          %287 = math.tanh %124 : f16
          %288 = math.log %6 : tensor<7x7x7xf16>
          %false_49 = index.bool.constant false
          %289 = affine.min affine_map<(d0) -> (-d0 - ((-d0) floordiv 64) mod 32, (-d0) floordiv 64 + 4, -d0 - ((-d0) floordiv 64) mod 32, d0 + 8)>(%c15)
          %290 = arith.ceildivsi %extracted_32, %c290583078_i64 : i64
          %291 = vector.shuffle %68, %20 [0, 1, 2, 7, 8] : vector<5xf32>, vector<6xf32>
          %292 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c12, %132, %c2)
          %293 = vector.insert %cst_23, %59 [2] : f32 into vector<5xf32>
          %294 = math.absi %12 : tensor<5xi64>
          %splat = tensor.splat %false_1 : tensor<7x7x7xi1>
          %295 = vector.broadcast %c348884248_i32 : i32 to vector<i32>
          vector.transfer_write %295, %alloc_15[%36] : vector<i32>, memref<5xi32>
          %296 = arith.minsi %c597053239_i64, %77 : i64
          %297 = arith.maxsi %c366035889_i32, %c348884248_i32 : i32
          %298 = arith.minsi %in, %in : i16
          %299 = arith.minsi %in_48, %extracted : i16
          %false_50 = index.bool.constant false
          %300 = vector.splat %292 : vector<7x7x7xindex>
          %301 = vector.extract_strided_slice %278 {offsets = [3], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      affine.yield %cst_23 : f32
    }
    %143 = arith.shrui %c-18386_i16, %extracted : i16
    %144 = index.ceildivu %102, %102
    %145 = tensor.empty() : tensor<7x7x7xf16>
    %mapped = linalg.map ins(%6, %6, %6 : tensor<7x7x7xf16>, tensor<7x7x7xf16>, tensor<7x7x7xf16>) outs(%145 : tensor<7x7x7xf16>)
      (%in: f16, %in_47: f16, %in_48: f16) {
        %264 = vector.broadcast %40 : index to vector<6xindex>
        %265 = vector.broadcast %false_30 : i1 to vector<6xi1>
        vector.scatter %alloc_16[%c4] [%264], %265, %265 : memref<5xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %266 = arith.shrui %false_0, %false_31 : i1
        %267 = arith.ceildivsi %c1954114746_i32, %c348884248_i32 : i32
        %268 = vector.insertelement %cst_23, %68[%45 : index] : vector<5xf32>
        %269 = math.absi %extracted_32 : i64
        %270 = math.atan %145 : tensor<7x7x7xf16>
        %271 = math.absf %in : f16
        %272 = vector.insert %false_0, %38 [2] : i1 into vector<5xi1>
        %273 = memref.load %alloc_7[%c4] : memref<5xi32>
        %274 = index.floordivs %c9, %45
        %275 = tensor.empty() : tensor<5xi16>
        %276 = arith.divui %c366035889_i32, %c1954114746_i32 : i32
        memref.copy %alloc_18, %alloc_7 : memref<5xi32> to memref<5xi32>
        %277 = vector.broadcast %cst_3 : f16 to vector<5xf16>
        %278 = index.ceildivu %c9, %c11
        %279 = index.ceildivu %102, %35
        %280 = vector.transpose %61, [0] : vector<5xf32> to vector<5xf32>
        %281 = tensor.empty() : tensor<5x7xi32>
        %282 = tensor.empty() : tensor<7x7xi32>
        %283 = linalg.matmul ins(%42, %281 : tensor<7x5xi32>, tensor<5x7xi32>) outs(%282 : tensor<7x7xi32>) -> tensor<7x7xi32>
        %284 = arith.ceildivsi %c471358910_i32, %c2028099654_i32 : i32
        %c1826363198_i32 = arith.constant 1826363198 : i32
        %true_49 = arith.constant true
        %285 = vector.transfer_read %71[%89, %36], %true_49 : tensor<49x5xi1>, vector<5xi1>
        %286 = vector.insertelement %cst_23, %59[%c0 : index] : vector<5xf32>
        %287 = math.expm1 %6 : tensor<7x7x7xf16>
        %288 = arith.shli %extracted_32, %c597053239_i64 : i64
        %289 = arith.ceildivsi %c471358910_i32, %c471358910_i32 : i32
        %alloca_50 = memref.alloca() : memref<5xf16>
        %290 = math.atan2 %4, %4 : tensor<5xf32>
        %291 = arith.maxui %false_30, %false_1 : i1
        %292 = index.divu %c11, %36
        %293 = memref.realloc %alloc_11 : memref<5xi1> to memref<7xi1>
        %294 = arith.cmpf uge, %in, %in : f16
        %extracted_51 = tensor.extract %21[] : tensor<i16>
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    %146 = arith.minf %cst, %cst_3 : f16
    %147 = math.expm1 %2 : tensor<5xf16>
    %148 = arith.subi %c597053239_i64, %77 : i64
    %149 = vector.multi_reduction <maxf>, %20, %cst_23 [0] : vector<6xf32> to f32
    %150 = math.atan2 %2, %8 : tensor<5xf16>
    %151 = vector.insert %cst_23, %68 [3] : f32 into vector<5xf32>
    %152 = tensor.empty() : tensor<5x7xi1>
    %153 = tensor.empty() : tensor<49x7xi1>
    %154 = linalg.matmul ins(%71, %152 : tensor<49x5xi1>, tensor<5x7xi1>) outs(%153 : tensor<49x7xi1>) -> tensor<49x7xi1>
    %155 = index.maxs %c7, %c4
    %156 = math.ctlz %9 : tensor<5xi16>
    %157 = vector.broadcast %c4 : index to vector<7xindex>
    %158 = vector.broadcast %false_0 : i1 to vector<7xi1>
    vector.scatter %alloc_9[%c2] [%157], %158, %158 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %159 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 mod 8)>(%c15, %105, %c7, %c0)
    %160 = vector.extract %59[2] : vector<5xf32>
    %161 = vector.broadcast %extracted : i16 to vector<5xi16>
    %162 = index.floordivs %c12, %c3
    %163 = arith.maxsi %extracted, %c-18386_i16 : i16
    %164 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 32, d2, (d1 - 2) * -64)>(%c15, %c7, %c1, %c13)
    %165 = arith.shrsi %false_30, %false_31 : i1
    %166 = arith.cmpi sle, %c-18386_i16, %c-18386_i16 : i16
    %extracted_34 = tensor.extract %18[%c2] : tensor<5xi16>
    %167 = vector.extract %55[5] : vector<7x7x7xi1>
    %168 = math.fma %6, %145, %145 : tensor<7x7x7xf16>
    %169 = vector.create_mask %c12 : vector<5xi1>
    %170 = vector.bitcast %61 : vector<5xf32> to vector<5xf32>
    %true_35 = index.bool.constant true
    %171 = vector.multi_reduction <add>, %170, %58 [] : vector<5xf32> to vector<5xf32>
    %rank_36 = tensor.rank %1 : tensor<7x7x7xi16>
    %172 = vector.broadcast %c-18386_i16 : i16 to vector<7x7x7xi16>
    %173 = vector.broadcast %c1954114746_i32 : i32 to vector<7x7x7xi32>
    %174 = vector.gather %9[%c9] [%173], %55, %172 : tensor<5xi16>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xi16> into vector<7x7x7xi16>
    %175 = math.log1p %cst_3 : f16
    %176 = vector.flat_transpose %61 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
    %177 = index.maxu %135, %c12
    %expanded = tensor.expand_shape %transposed [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
    %178 = vector.create_mask %88, %24, %c14 : vector<7x7x7xi1>
    %179 = math.round %4 : tensor<5xf32>
    %180 = math.sqrt %5 : tensor<5xf32>
    %181 = memref.load %alloc_8[%c1] : memref<5xf16>
    %182 = memref.load %alloc_21[%c0] : memref<5xi16>
    %183 = math.exp2 %cst_23 : f32
    %184 = arith.maxui %extracted_34, %extracted_34 : i16
    %185 = math.round %145 : tensor<7x7x7xf16>
    memref.store %c857525772_i64, %alloc_14[%c2, %c6, %c3] : memref<7x7x7xi64>
    scf.index_switch %c10 
    case 1 {
      %c1_i16 = arith.constant 1 : i16
      %264 = vector.transfer_read %16[%c2], %c1_i16 : tensor<5xi16>, vector<i16>
      %265 = math.ceil %6 : tensor<7x7x7xf16>
      memref.store %c2028099654_i32, %alloc_15[%c1] : memref<5xi32>
      %266 = math.tanh %cst : f16
      %cst_47 = arith.constant 3.076800e+04 : f16
      %267 = arith.divsi %c366035889_i32, %c2028099654_i32 : i32
      %268 = arith.shrsi %c471358910_i32, %c366035889_i32 : i32
      %269 = affine.min affine_map<(d0, d1) -> (-(d0 + 16) - 16)>(%105, %45)
      %270 = affine.load %126[%c10] : memref<5xi1>
      %271 = memref.atomic_rmw minf %cst_23, %alloc_10[%c1, %c1, %c1] : (f32, memref<7x7x7xf32>) -> f32
      bufferization.dealloc_tensor %8 : tensor<5xf16>
      %272 = bufferization.clone %alloc_17 : memref<5xi32> to memref<5xi32>
      %273 = arith.muli %true, %false_31 : i1
      %274 = arith.divf %cst_4, %cst_3 : f16
      %275 = math.sqrt %5 : tensor<5xf32>
      %276 = arith.shli %c857525772_i64, %77 : i64
      scf.yield
    }
    default {
      %264 = vector.splat %c15 : vector<7x7x7xindex>
      %265 = arith.xori %c857525772_i64, %extracted_32 : i64
      %266 = bufferization.to_memref %14 : memref<7x7x7xi16>
      %267 = math.atan2 %cst, %cst_3 : f16
      %268 = index.divu %102, %75
      %269 = arith.cmpf oeq, %cst_3, %cst : f16
      %270 = math.copysign %cst_2, %cst_2 : f16
      %from_elements = tensor.from_elements %extracted, %c-18386_i16, %extracted_34, %extracted, %c-18386_i16 : tensor<5xi16>
      affine.store %149, %alloc_12[%c12, %c10, %c6] : memref<7x7x7xf32>
      %271 = scf.execute_region -> index {
        %278 = arith.minsi %false_31, %false_31 : i1
        %279 = vector.broadcast %cst_23 : f32 to vector<5x5xf32>
        %280 = vector.outerproduct %39, %39, %279 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
        %281 = arith.cmpi ne, %extracted, %extracted_34 : i16
        %282 = arith.maxsi %false_1, %false_1 : i1
        %alloc_47 = memref.alloc() : memref<49x7xi1>
        memref.tensor_store %collapsed, %alloc_47 : memref<49x7xi1>
        %283 = math.powf %4, %4 : tensor<5xf32>
        %284 = bufferization.to_memref %18 : memref<5xi16>
        %285 = math.fma %cst_2, %cst, %124 : f16
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - (d1 - 16) - 1, -d0, d1)>(%c8, %c13, %89, %c8)
        %287 = index.sub %74, %c15
        %288 = memref.realloc %alloc_9 : memref<5xi1> to memref<6xi1>
        %289 = arith.cmpf uge, %cst_2, %cst_2 : f16
        %290 = bufferization.to_memref %42 : memref<7x5xi32>
        %extracted_48 = tensor.extract %8[%c4] : tensor<5xf16>
        %291 = math.log %8 : tensor<5xf16>
        %292 = affine.min affine_map<(d0, d1) -> (((-(d0 floordiv 64)) mod 64) floordiv 32, (d0 floordiv 64) * 16, d1 + 4, (-(d0 floordiv 64)) ceildiv 128)>(%45, %c0)
        scf.yield %89 : index
      }
      %272 = bufferization.to_memref %22 : memref<i16>
      %273 = vector.insert %149, %61 [0] : f32 into vector<5xf32>
      %274 = math.floor %cst_2 : f16
      %275 = index.divs %271, %268
      %276 = arith.remf %cst_2, %124 : f16
      %277 = index.floordivs %268, %c7
    }
    %186 = arith.maxui %true_27, %true : i1
    vector.print %37 : vector<5xf32>
    %187 = vector.broadcast %74 : index to vector<5xindex>
    vector.scatter %alloc_10[%c3, %c6, %c0] [%187], %38, %170 : memref<7x7x7xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
    %188 = scf.if %false -> (memref<5xf16>) {
      %264 = math.rsqrt %4 : tensor<5xf32>
      %265 = index.sizeof
      %266 = math.tanh %6 : tensor<7x7x7xf16>
      %267 = bufferization.clone %alloc_13 : memref<7x7x7xi16> to memref<7x7x7xi16>
      %268 = arith.negf %cst_2 : f16
      %269 = arith.minf %cst_3, %cst_2 : f16
      %270 = tensor.empty() : tensor<7xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<7xi1>) outs(%13 : tensor<7x7x7xi1>) {
      ^bb0(%in: i1, %out: i1):
        affine.store %false, %alloc_5[%c6] : memref<5xi1>
        %273 = arith.maxsi %c-18386_i16, %extracted : i16
        %274 = memref.load %alloc_18[%c0] : memref<5xi32>
        %275 = arith.shrsi %false, %true : i1
        %276 = vector.shuffle %174, %174 [1, 3, 5, 7, 8, 10] : vector<7x7x7xi16>, vector<7x7x7xi16>
        %277 = vector.broadcast %cst : f16 to vector<5xf16>
        %278 = vector.broadcast %c471358910_i32 : i32 to vector<5xi32>
        %279 = vector.gather %8[%88] [%278], %169, %277 : tensor<5xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %280 = arith.ceildivsi %extracted, %c-18386_i16 : i16
        %281 = arith.addf %cst_23, %149 : f32
        %282 = vector.matrix_multiply %20, %37 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 5 : i32} : (vector<6xf32>, vector<5xf32>) -> vector<30xf32>
        %283 = vector.insert %cst_23, %68 [1] : f32 into vector<5xf32>
        %284 = vector.broadcast %extracted_34 : i16 to vector<7x7xi16>
        %dest, %accumulated_value = vector.scan <minui>, %174, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x7xi16>, vector<7x7xi16>
        %285 = math.powf %cst, %cst_2 : f16
        %286 = math.cos %5 : tensor<5xf32>
        %287 = arith.muli %c348884248_i32, %c471358910_i32 : i32
        %288 = arith.divui %true_35, %true_27 : i1
        %289 = arith.minf %149, %cst_23 : f32
        %290 = math.expm1 %cst_23 : f32
        %291 = math.atan %6 : tensor<7x7x7xf16>
        %292 = arith.ceildivsi %c290583078_i64, %c857525772_i64 : i64
        %293 = arith.muli %c2028099654_i32, %c2028099654_i32 : i32
        %294 = math.log1p %5 : tensor<5xf32>
        %295 = index.maxs %c2, %c8
        %296 = memref.load %alloc_14[%c6, %c2, %c4] : memref<7x7x7xi64>
        %297 = vector.flat_transpose %282 {columns = 5 : i32, rows = 6 : i32} : vector<30xf32> -> vector<30xf32>
        %298 = index.ceildivu %c3, %159
        %299 = index.casts %155 : index to i32
        %collapsed_47 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<7x7x7xi16> into tensor<49x7xi16>
        %300 = vector.broadcast %c3 : index to vector<7xindex>
        %301 = vector.broadcast %false : i1 to vector<7xi1>
        %302 = vector.broadcast %c366035889_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_7[%c3] [%300], %301, %302 : memref<5xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %303 = index.maxu %115, %45
        %304 = vector.gather %103[%c14] [%173], %178, %178 : tensor<5xi1>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xi1> into vector<7x7x7xi1>
        %305 = affine.min affine_map<(d0) -> ((d0 - 16) * 2, d0)>(%159)
        %306 = bufferization.clone %126 : memref<5xi1> to memref<5xi1>
        linalg.yield %false : i1
      } -> tensor<7x7x7xi1>
      %272 = arith.maxsi %extracted_32, %77 : i64
      scf.yield %alloc_8 : memref<5xf16>
    } else {
      %264 = arith.maxsi %extracted_32, %77 : i64
      %265 = vector.broadcast %extracted_32 : i64 to vector<i64>
      %266 = vector.transfer_write %265, %11[%c8, %144, %c0] : vector<i64>, tensor<7x7x7xi64>
      %267 = math.cttz %c857525772_i64 : i64
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %58, %39, %cst_23 : vector<5xf32>, vector<5xf32> into f32
      %269 = arith.shrui %77, %c597053239_i64 : i64
      %270 = vector.multi_reduction <maxui>, %178, %false [0, 1, 2] : vector<7x7x7xi1> to i1
      %271 = affine.load %122[%c2, %c9, %c5] : memref<7x7x7xi16>
      %272 = math.fpowi %149, %c471358910_i32 : f32, i32
      scf.yield %alloc_8 : memref<5xf16>
    }
    %189 = math.sqrt %6 : tensor<7x7x7xf16>
    %190 = math.cos %8 : tensor<5xf16>
    %191 = bufferization.clone %alloc_14 : memref<7x7x7xi64> to memref<7x7x7xi64>
    %192 = vector.broadcast %c597053239_i64 : i64 to vector<5xi64>
    %193 = vector.maskedload %alloc_14[%c2, %c0, %c6], %38, %192 : memref<7x7x7xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %194 = math.fma %5, %4, %5 : tensor<5xf32>
    %195 = arith.maxsi %true, %true : i1
    %196 = affine.apply affine_map<(d0, d1) -> (((d0 mod 64) ceildiv 128) ceildiv 8)>(%155, %47)
    %197 = math.tanh %6 : tensor<7x7x7xf16>
    %false_37 = index.bool.constant false
    %198 = vector.extract %55[3] : vector<7x7x7xi1>
    %199 = math.fma %cst, %124, %cst_4 : f16
    %200 = arith.cmpf uge, %124, %cst_2 : f16
    %201 = vector.flat_transpose %38 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
    %202 = index.sub %159, %89
    %203 = tensor.empty() : tensor<5x6xi32>
    %204 = tensor.empty() : tensor<7x6xi32>
    %205 = linalg.matmul ins(%42, %203 : tensor<7x5xi32>, tensor<5x6xi32>) outs(%204 : tensor<7x6xi32>) -> tensor<7x6xi32>
    %206 = math.log10 %cst_4 : f16
    %207 = math.atan2 %4, %5 : tensor<5xf32>
    memref.store %c2028099654_i32, %alloc_17[%c2] : memref<5xi32>
    %208 = math.fma %2, %2, %2 : tensor<5xf16>
    %209 = vector.splat %c14 : vector<5xindex>
    %210 = arith.addf %149, %149 : f32
    %211 = arith.remf %124, %cst : f16
    %212 = scf.if %false_0 -> (i32) {
      %264 = arith.andi %true_27, %true : i1
      %265 = arith.cmpf oge, %cst_2, %cst : f16
      %alloca_47 = memref.alloca() : memref<5xi1>
      %alloc_48 = memref.alloc() : memref<i16>
      memref.tensor_store %22, %alloc_48 : memref<i16>
      %266 = math.ctpop %7 : tensor<7x7x7xi1>
      %267 = math.exp %6 : tensor<7x7x7xf16>
      %extracted_49 = tensor.extract %145[%c1, %c3, %c2] : tensor<7x7x7xf16>
      %268 = math.atan %8 : tensor<5xf16>
      scf.yield %c366035889_i32 : i32
    } else {
      %264 = bufferization.clone %alloc_10 : memref<7x7x7xf32> to memref<7x7x7xf32>
      %265 = arith.muli %c290583078_i64, %extracted_32 : i64
      %266 = math.cos %2 : tensor<5xf16>
      %267 = vector.broadcast %extracted_32 : i64 to vector<5x5xi64>
      %268 = vector.outerproduct %192, %193, %267 {kind = #vector.kind<and>} : vector<5xi64>, vector<5xi64>
      vector.print %174 : vector<7x7x7xi16>
      affine.for %arg0 = 0 to 94 {
      }
      %269 = index.casts %c471358910_i32 : i32 to index
      %270 = arith.cmpf olt, %cst_23, %cst_23 : f32
      scf.yield %c348884248_i32 : i32
    }
    %213 = math.round %cst_4 : f16
    %rank_38 = tensor.rank %12 : tensor<5xi64>
    %214 = bufferization.clone %alloc_10 : memref<7x7x7xf32> to memref<7x7x7xf32>
    %215 = arith.cmpi uge, %c-18386_i16, %c-18386_i16 : i16
    scf.execute_region {
      %264 = math.absi %11 : tensor<7x7x7xi64>
      %265 = memref.load %alloc_20[] : memref<f16>
      %266 = math.log2 %cst : f16
      %267 = math.powf %5, %5 : tensor<5xf32>
      vector.print %20 : vector<6xf32>
      %268 = arith.maxui %c348884248_i32, %c366035889_i32 : i32
      %269 = arith.shli %extracted_34, %c-18386_i16 : i16
      %270 = arith.shli %false_37, %false_1 : i1
      %271 = math.log %5 : tensor<5xf32>
      %272 = index.mul %105, %88
      %273 = bufferization.clone %alloc_21 : memref<5xi16> to memref<5xi16>
      %274 = math.ctlz %false_1 : i1
      %275 = math.fpowi %cst_4, %c471358910_i32 : f16, i32
      %276 = vector.extract %68[1] : vector<5xf32>
      %277 = vector.broadcast %cst_23 : f32 to vector<5x5xf32>
      %278 = vector.outerproduct %58, %58, %277 {kind = #vector.kind<maxf>} : vector<5xf32>, vector<5xf32>
      %279 = math.ctpop %1 : tensor<7x7x7xi16>
      scf.yield
    }
    %216 = arith.cmpf false, %124, %cst_2 : f16
    %217 = arith.shli %c597053239_i64, %c290583078_i64 : i64
    %218 = vector.extract %59[1] : vector<5xf32>
    %219 = math.fpowi %4, %83 : tensor<5xf32>, tensor<5xi32>
    %220 = index.casts %c857525772_i64 : i64 to index
    %221 = math.log1p %2 : tensor<5xf16>
    %222 = arith.addf %124, %cst : f16
    %223 = math.sqrt %6 : tensor<7x7x7xf16>
    %224 = math.powf %cst_4, %cst : f16
    %225 = vector.extract %20[2] : vector<6xf32>
    %226 = math.round %2 : tensor<5xf16>
    %227 = memref.load %188[%c4] : memref<5xf16>
    %228 = scf.index_switch %102 -> vector<5xi1> 
    case 1 {
      %264 = math.log10 %5 : tensor<5xf32>
      %265 = index.mul %159, %c6
      %266 = math.log1p %cst_4 : f16
      %267 = vector.transpose %176, [0] : vector<5xf32> to vector<5xf32>
      %268 = arith.xori %c348884248_i32, %c1954114746_i32 : i32
      %269 = arith.xori %false_30, %true : i1
      %270 = index.floordivs %155, %108
      %collapsed_47 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<7x7x7xi16> into tensor<49x7xi16>
      %271 = math.cttz %collapsed_47 : tensor<49x7xi16>
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %169, %38, %true_35 : vector<5xi1>, vector<5xi1> into i1
      %273 = scf.execute_region -> tensor<7x7x7xf32> {
        %278 = math.ctpop %c348884248_i32 : i32
        %279 = arith.mulf %cst_2, %cst_4 : f16
        %280 = math.log1p %8 : tensor<5xf16>
        %281 = vector.insert %cst_23, %39 [1] : f32 into vector<5xf32>
        %282 = arith.shli %extracted_34, %extracted : i16
        %283 = vector.splat %164 : vector<7x7x7xindex>
        %284 = index.maxu %rank_38, %89
        %285 = arith.minsi %true_27, %true_27 : i1
        %286 = vector.splat %rank : vector<7x7x7xindex>
        %287 = math.roundeven %4 : tensor<5xf32>
        %288 = math.log %cst_2 : f16
        %289 = math.ctpop %12 : tensor<5xi64>
        memref.copy %122, %alloc_6 : memref<7x7x7xi16> to memref<7x7x7xi16>
        %290 = arith.divf %124, %cst_2 : f16
        %291 = arith.cmpi ult, %c1954114746_i32, %c1954114746_i32 : i32
        %292 = arith.negf %cst : f16
        %293 = tensor.empty() : tensor<7x7x7xf32>
        scf.yield %293 : tensor<7x7x7xf32>
      }
      %274 = math.sqrt %5 : tensor<5xf32>
      %rank_48 = tensor.rank %1 : tensor<7x7x7xi16>
      %275 = index.maxs %202, %rank_36
      %alloc_49 = memref.alloc() : memref<5x7xi1>
      %276 = tensor.empty() : tensor<49x7xi1>
      %277 = linalg.matmul ins(%71, %alloc_49 : tensor<49x5xi1>, memref<5x7xi1>) outs(%276 : tensor<49x7xi1>) -> tensor<49x7xi1>
      %collapsed_50 = tensor.collapse_shape %145 [[0, 1], [2]] : tensor<7x7x7xf16> into tensor<49x7xf16>
      scf.yield %169 : vector<5xi1>
    }
    default {
      %264 = index.maxu %c13, %24
      %265 = arith.remui %77, %77 : i64
      %266 = math.absi %11 : tensor<7x7x7xi64>
      %267 = memref.atomic_rmw minu %212, %alloc_18[%c1] : (i32, memref<5xi32>) -> i32
      %268 = vector.multi_reduction <add>, %20, %20 [] : vector<6xf32> to vector<6xf32>
      %269 = arith.ceildivsi %true, %true : i1
      %270 = arith.remf %124, %124 : f16
      %271 = arith.minf %cst_23, %149 : f32
      %272 = arith.remui %false_30, %true_35 : i1
      %273 = index.sizeof
      scf.execute_region {
        %279 = index.divs %c6, %159
        %280 = vector.broadcast %extracted_34 : i16 to vector<7x7xi16>
        %dest, %accumulated_value = vector.scan <mul>, %172, %280 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x7xi16>, vector<7x7xi16>
        %281 = vector.broadcast %cst_23 : f32 to vector<5x5xf32>
        %282 = vector.outerproduct %39, %39, %281 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
        %283 = math.absi %0 : tensor<7x7x7xi1>
        %284 = math.round %8 : tensor<5xf16>
        %285 = vector.insertelement %false_1, %169[%164 : index] : vector<5xi1>
        %286 = index.sizeof
        %287 = math.sqrt %8 : tensor<5xf16>
        vector.print %161 : vector<5xi16>
        %288 = tensor.empty() : tensor<1x5xi16>
        %289 = tensor.empty() : tensor<5x5xi16>
        %290 = linalg.matmul ins(%expanded, %288 : tensor<5x1xi16>, tensor<1x5xi16>) outs(%289 : tensor<5x5xi16>) -> tensor<5x5xi16>
        %291 = vector.extract_strided_slice %58 {offsets = [0], sizes = [4], strides = [1]} : vector<5xf32> to vector<4xf32>
        %292 = arith.minsi %false_30, %true_27 : i1
        %293 = affine.min affine_map<(d0) -> ((-(d0 + 4) - 2) mod 16, (-(d0 + 4) - 2) floordiv 8, (-(d0 + 4) - 2) mod 16 - (-(d0 + 4)) ceildiv 128, -(d0 + 4) - 2)>(%c8)
        %294 = affine.load %188[%c14] : memref<5xf16>
        %295 = math.absi %10 : tensor<7x7x7xi16>
        %296 = vector.insertelement %cst_23, %20[%102 : index] : vector<6xf32>
        scf.yield
      }
      %274 = bufferization.to_memref %transposed : memref<5xi16>
      %275 = index.floordivs %264, %177
      %276 = arith.andi %false_37, %false_31 : i1
      %277 = arith.ceildivsi %true, %false_31 : i1
      %278 = vector.flat_transpose %58 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      scf.yield %38 : vector<5xi1>
    }
    %229 = math.powf %8, %8 : tensor<5xf16>
    affine.for %arg0 = 0 to 124 {
    }
    %230 = arith.addf %124, %cst_4 : f16
    %231 = arith.maxui %true_27, %false : i1
    %generated_39 = tensor.generate %155 {
    ^bb0(%arg0: index):
      %264 = vector.flat_transpose %59 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %265 = affine.load %alloc_16[%c5] : memref<5xi1>
      %rank_47 = tensor.rank %4 : tensor<5xf32>
      %266 = arith.maxsi %c290583078_i64, %c857525772_i64 : i64
      tensor.yield %c290583078_i64 : i64
    } : tensor<?xi64>
    %232 = math.sqrt %6 : tensor<7x7x7xf16>
    memref.assume_alignment %alloc_16, 8 : memref<5xi1>
    %233 = index.mul %75, %102
    %234 = math.atan2 %149, %cst_23 : f32
    %235 = tensor.empty() : tensor<7x7x7xf32>
    %mapped_40 = linalg.map ins(%alloc_10 : memref<7x7x7xf32>) outs(%235 : tensor<7x7x7xf32>)
      (%in: f32) {
        %264 = arith.shli %false_0, %false_31 : i1
        vector.print %39 : vector<5xf32>
        %265 = math.log2 %149 : f32
        %collapsed_47 = tensor.collapse_shape %71 [[0, 1]] : tensor<49x5xi1> into tensor<245xi1>
        %alloc_48 = memref.alloc() : memref<7xi16>
        %alloc_49 = memref.alloc() : memref<7x7xi16>
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %alloc_48, %alloc_49 : tensor<7x7x7xi16>, memref<7xi16>, memref<7x7xi16>) outs(%14 : tensor<7x7x7xi16>) {
        ^bb0(%in_56: i16, %in_57: i16, %in_58: i16, %out: i16):
          %289 = math.copysign %cst_3, %cst_3 : f16
          %290 = math.atan2 %cst, %cst_4 : f16
          %291 = index.casts %false : i1 to index
          %292 = arith.divf %cst_2, %cst : f16
          %293 = arith.muli %77, %c857525772_i64 : i64
          %294 = index.ceildivu %233, %233
          %295 = arith.maxui %c348884248_i32, %c2028099654_i32 : i32
          %296 = memref.atomic_rmw maxu %in_57, %122[%c5, %c4, %c5] : (i16, memref<7x7x7xi16>) -> i16
          %297 = arith.shli %c366035889_i32, %c1954114746_i32 : i32
          vector.print %174 : vector<7x7x7xi16>
          %298 = math.cos %4 : tensor<5xf32>
          %299 = math.absi %extracted_32 : i64
          %300 = math.atan %4 : tensor<5xf32>
          %301 = index.divs %rank_38, %164
          memref.assume_alignment %alloc_13, 16 : memref<7x7x7xi16>
          %302 = index.casts %false : i1 to index
          %303 = index.sub %105, %302
          bufferization.dealloc_tensor %14 : tensor<7x7x7xi16>
          %extracted_59 = tensor.extract %3[%c1] : tensor<5xi64>
          %304 = vector.splat %196 : vector<7x7x7xindex>
          %305 = index.maxu %c3, %40
          %306 = math.atan %149 : f32
          %307 = math.absf %4 : tensor<5xf32>
          %308 = vector.bitcast %178 : vector<7x7x7xi1> to vector<7x7x7xi1>
          %309 = vector.insertelement %false, %38[%115 : index] : vector<5xi1>
          %310 = arith.minsi %false, %false_1 : i1
          %311 = arith.shrui %c366035889_i32, %c471358910_i32 : i32
          %true_60 = index.bool.constant true
          %312 = vector.extract_strided_slice %59 {offsets = [2], sizes = [2], strides = [1]} : vector<5xf32> to vector<2xf32>
          %313 = vector.broadcast %cst_3 : f16 to vector<7x7x7xf16>
          %314 = vector.gather %188[%45] [%173], %55, %313 : memref<5xf16>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xf16> into vector<7x7x7xf16>
          %315 = arith.ceildivsi %c857525772_i64, %77 : i64
          %316 = arith.divsi %c366035889_i32, %c348884248_i32 : i32
          linalg.yield %in_56 : i16
        } -> tensor<7x7x7xi16>
        %267 = affine.load %alloc_16[%c6] : memref<5xi1>
        %268 = vector.broadcast %false_37 : i1 to vector<5x5xi1>
        %269 = vector.outerproduct %38, %201, %268 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
        %cst_50 = arith.constant 1.000000e+00 : f16
        %270 = vector.transfer_read %alloc[%47], %cst_50 : memref<5xf16>, vector<f16>
        %271 = arith.xori %c2028099654_i32, %c366035889_i32 : i32
        %272 = math.copysign %2, %2 : tensor<5xf16>
        %273 = math.round %8 : tensor<5xf16>
        %274 = math.cttz %1 : tensor<7x7x7xi16>
        %275 = index.sizeof
        %276 = math.cos %5 : tensor<5xf32>
        %277 = affine.apply affine_map<(d0) -> (d0 * -2)>(%36)
        %278 = math.absf %2 : tensor<5xf16>
        %extracted_51 = tensor.extract %16[%c4] : tensor<5xi16>
        %279 = math.absf %4 : tensor<5xf32>
        %280 = bufferization.to_memref %21 : memref<i16>
        %281 = arith.divui %c1954114746_i32, %c366035889_i32 : i32
        %282 = math.atan %8 : tensor<5xf16>
        affine.store %extracted, %122[%c9, %c15, %c11] : memref<7x7x7xi16>
        %283 = vector.splat %115 : vector<5xindex>
        %284 = math.rsqrt %8 : tensor<5xf16>
        %285 = arith.ceildivsi %c290583078_i64, %77 : i64
        %286 = arith.addf %124, %cst_4 : f16
        %287 = tensor.empty(%c7) : tensor<?xf16>
        %alloc_52 = memref.alloc() : memref<f16>
        memref.copy %alloc_20, %alloc_52 : memref<f16> to memref<f16>
        %rank_53 = tensor.rank %17 : tensor<5xi16>
        memref.tensor_store %1, %122 : memref<7x7x7xi16>
        %collapsed_54 = tensor.collapse_shape %204 [[0, 1]] : tensor<7x6xi32> into tensor<42xi32>
        %288 = arith.mulf %149, %149 : f32
        %cst_55 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_55 : f32
      }
    %extracted_41 = tensor.extract %13[%c1, %c3, %c1] : tensor<7x7x7xi1>
    %236 = arith.maxui %false_37, %true_27 : i1
    %237 = math.ctpop %22 : tensor<i16>
    %238 = math.cos %145 : tensor<7x7x7xf16>
    %generated_42 = tensor.generate %c13 {
    ^bb0(%arg0: index):
      %264 = math.tanh %6 : tensor<7x7x7xf16>
      %265 = vector.shuffle %176, %59 [3, 9] : vector<5xf32>, vector<5xf32>
      %266 = index.divs %74, %45
      %267 = index.divu %102, %135
      tensor.yield %cst_3 : f16
    } : tensor<?xf16>
    %239 = memref.load %alloc_15[%c4] : memref<5xi32>
    %240 = math.ceil %5 : tensor<5xf32>
    %241 = memref.atomic_rmw maxf %cst_23, %214[%c2, %c5, %c5] : (f32, memref<7x7x7xf32>) -> f32
    %242 = vector.broadcast %extracted_34 : i16 to vector<7x7xi16>
    %243 = vector.insert %242, %174 [1] : vector<7x7xi16> into vector<7x7x7xi16>
    %244 = tensor.empty() : tensor<5xi32>
    %mapped_43 = linalg.map ins(%alloc_18, %alloc_7, %alloc_7 : memref<5xi32>, memref<5xi32>, memref<5xi32>) outs(%244 : tensor<5xi32>)
      (%in: i32, %in_47: i32, %in_48: i32) {
        %264 = vector.extract %55[5, 3] : vector<7x7x7xi1>
        %265 = math.tanh %5 : tensor<5xf32>
        %266 = vector.broadcast %149 : f32 to vector<5x5xf32>
        %267 = vector.outerproduct %61, %170, %266 {kind = #vector.kind<minf>} : vector<5xf32>, vector<5xf32>
        %268 = math.cttz %c471358910_i32 : i32
        %269 = math.fma %4, %4, %5 : tensor<5xf32>
        %270 = vector.create_mask %74, %47, %c15 : vector<7x7x7xi1>
        scf.index_switch %35 
        case 1 {
          %295 = arith.cmpi sgt, %false_30, %true : i1
          %296 = arith.maxsi %c-18386_i16, %extracted : i16
          %297 = arith.mulf %cst_3, %cst_2 : f16
          %298 = math.fma %6, %145, %6 : tensor<7x7x7xf16>
          %299 = vector.insertelement %cst_23, %170[%105 : index] : vector<5xf32>
          %300 = bufferization.to_memref %145 : memref<7x7x7xf16>
          affine.store %cst_23, %alloc_12[%c14, %c8, %c2] : memref<7x7x7xf32>
          %301 = math.ceil %8 : tensor<5xf16>
          %302 = vector.extract %68[0] : vector<5xf32>
          %303 = bufferization.clone %alloc : memref<5xf16> to memref<5xf16>
          bufferization.dealloc_tensor %145 : tensor<7x7x7xf16>
          %304 = bufferization.clone %alloc_18 : memref<5xi32> to memref<5xi32>
          %305 = arith.remf %cst_4, %cst_2 : f16
          memref.copy %alloc_17, %alloc_7 : memref<5xi32> to memref<5xi32>
          %rank_50 = tensor.rank %7 : tensor<7x7x7xi1>
          %306 = memref.load %alloc_18[%c3] : memref<5xi32>
          scf.yield
        }
        default {
          %295 = bufferization.clone %126 : memref<5xi1> to memref<5xi1>
          %296 = vector.load %214[%c2, %c0, %c6] : memref<7x7x7xf32>, vector<5xf32>
          %297 = arith.cmpf olt, %cst_2, %cst_3 : f16
          %298 = index.divu %c4, %115
          %299 = math.log2 %5 : tensor<5xf32>
          %300 = arith.shli %extracted_41, %extracted_41 : i1
          %false_50 = index.bool.constant false
          %301 = arith.shli %false_50, %true_27 : i1
          %302 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 - d2) ceildiv 2 - 16, d2, d3 - d2 - 2)>(%202, %c14, %rank_36, %47)
          %303 = affine.load %alloc_13[%c2, %c3, %c10] : memref<7x7x7xi16>
          %304 = vector.flat_transpose %38 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
          %305 = vector.broadcast %40 : index to vector<6xindex>
          %306 = vector.broadcast %false_50 : i1 to vector<6xi1>
          vector.scatter %alloc_5[%c0] [%305], %306, %306 : memref<5xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %307 = tensor.empty(%102) : tensor<7x7x?xf16>
          %308 = math.absi %0 : tensor<7x7x7xi1>
          %309 = index.ceildivu %105, %35
          %310 = arith.shrui %c290583078_i64, %c597053239_i64 : i64
        }
        %271 = arith.remui %c471358910_i32, %c1954114746_i32 : i32
        %272 = math.cttz %extracted_32 : i64
        %273 = memref.atomic_rmw maxu %c471358910_i32, %alloc_18[%c3] : (i32, memref<5xi32>) -> i32
        %274 = math.rsqrt %6 : tensor<7x7x7xf16>
        memref.store %false_1, %alloc_16[%c4] : memref<5xi1>
        %275 = arith.maxsi %false_37, %false_30 : i1
        %276 = arith.remf %cst_23, %149 : f32
        %277 = math.cttz %77 : i64
        %278 = affine.load %191[%c1, %c14, %c11] : memref<7x7x7xi64>
        %279 = arith.maxsi %278, %c290583078_i64 : i64
        scf.execute_region {
          %295 = tensor.empty() : tensor<7x7x7xf16>
          %296 = bufferization.to_memref %12 : memref<5xi64>
          %297 = arith.shrsi %false_0, %false_1 : i1
          %298 = arith.minf %cst, %cst_3 : f16
          %299 = math.powf %2, %8 : tensor<5xf16>
          %300 = arith.divui %c597053239_i64, %77 : i64
          %301 = arith.remui %278, %c597053239_i64 : i64
          %302 = math.sqrt %5 : tensor<5xf32>
          %303 = index.sizeof
          %304 = vector.insert %extracted_34, %161 [1] : i16 into vector<5xi16>
          %cast = tensor.cast %10 : tensor<7x7x7xi16> to tensor<?x?x?xi16>
          %305 = memref.load %alloc_6[%c1, %c2, %c5] : memref<7x7x7xi16>
          %306 = affine.max affine_map<(d0, d1) -> (0)>(%24, %202)
          %307 = index.maxu %24, %c7
          vector.print %173 : vector<7x7x7xi32>
          memref.tensor_store %2, %alloc : memref<5xf16>
          scf.yield
        }
        %280 = vector.insert %cst_23, %58 [2] : f32 into vector<5xf32>
        %281 = bufferization.to_memref %8 : memref<5xf16>
        %282 = math.round %5 : tensor<5xf32>
        %283 = arith.ceildivsi %212, %c348884248_i32 : i32
        %284 = vector.splat %c471358910_i32 : vector<5xi32>
        %285 = vector.broadcast %202 : index to vector<6xindex>
        %286 = vector.broadcast %true_35 : i1 to vector<6xi1>
        %287 = vector.broadcast %cst_4 : f16 to vector<6xf16>
        vector.scatter %188[%c4] [%285], %286, %287 : memref<5xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %288 = bufferization.to_memref %244 : memref<5xi32>
        %289 = arith.negf %cst_23 : f32
        %290 = math.sqrt %6 : tensor<7x7x7xf16>
        %rank_49 = tensor.rank %12 : tensor<5xi64>
        %291 = math.tan %4 : tensor<5xf32>
        %292 = math.atan2 %cst_3, %124 : f16
        %293 = arith.minsi %in_47, %in_48 : i32
        %294 = affine.load %alloc_7[%c2] : memref<5xi32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %245 = math.atan2 %149, %cst_23 : f32
    %246 = vector.broadcast %extracted : i16 to vector<5x5xi16>
    %247 = vector.outerproduct %161, %161, %246 {kind = #vector.kind<or>} : vector<5xi16>, vector<5xi16>
    %false_44 = arith.constant false
    %248 = math.expm1 %6 : tensor<7x7x7xf16>
    %249 = vector.broadcast %149 : f32 to vector<7x7x7xf32>
    %250 = affine.apply affine_map<(d0, d1) -> (((d0 * 2) ceildiv 16) * 4)>(%c5, %196)
    %251 = vector.broadcast %149 : f32 to vector<6x6xf32>
    %252 = vector.outerproduct %20, %20, %251 {kind = #vector.kind<minf>} : vector<6xf32>, vector<6xf32>
    memref.store %cst_4, %alloc_8[%c1] : memref<5xf16>
    %253 = index.castu %c2 : index to i32
    %254 = vector.shuffle %37, %68 [2, 5, 6, 9] : vector<5xf32>, vector<5xf32>
    %255 = index.add %202, %250
    %256 = vector.insert %false_31, %38 [2] : i1 into vector<5xi1>
    %257 = math.powf %5, %4 : tensor<5xf32>
    %258 = memref.atomic_rmw mulf %149, %alloc_12[%c4, %c1, %c5] : (f32, memref<7x7x7xf32>) -> f32
    %259 = math.fma %cst_3, %124, %cst_3 : f16
    %260 = arith.divui %extracted, %c-18386_i16 : i16
    %261 = tensor.empty() : tensor<5xf16>
    %262 = linalg.copy ins(%2 : tensor<5xf16>) outs(%261 : tensor<5xf16>) -> tensor<5xf16>
    %alloc_45 = memref.alloc() : memref<5xf16>
    linalg.transpose ins(%alloc_8 : memref<5xf16>) outs(%alloc_45 : memref<5xf16>) permutation = [0] 
    %alloc_46 = memref.alloc() : memref<i1>
    linalg.reduce ins(%103 : tensor<5xi1>) outs(%alloc_46 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %264 = arith.maxsi %c471358910_i32, %c2028099654_i32 : i32
        %265 = arith.maxui %c2028099654_i32, %c366035889_i32 : i32
        %266 = memref.load %alloc_14[%c0, %c5, %c4] : memref<7x7x7xi64>
        %267 = vector.shuffle %176, %59 [2, 3, 5, 8] : vector<5xf32>, vector<5xf32>
        %268 = math.powf %8, %8 : tensor<5xf16>
        %269 = arith.maxsi %c348884248_i32, %c2028099654_i32 : i32
        %270 = bufferization.clone %122 : memref<7x7x7xi16> to memref<7x7x7xi16>
        %271 = arith.cmpf une, %cst, %cst_4 : f16
        %true_47 = arith.constant true
        linalg.yield %true_47 : i1
      }
    scf.parallel (%arg0) = (%162) to (%88) step (%c9) {
      %264 = math.round %4 : tensor<5xf32>
      %265 = scf.execute_region -> f16 {
        %cast = tensor.cast %expanded : tensor<5x1xi16> to tensor<?x?xi16>
        %collapsed_48 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<7x7x7xi1> into tensor<49x7xi1>
        %278 = math.fma %cst_3, %cst_3, %cst_4 : f16
        %279 = math.sqrt %235 : tensor<7x7x7xf32>
        %280 = memref.load %alloc_14[%c3, %c3, %c3] : memref<7x7x7xi64>
        %281 = index.mul %c13, %c12
        %282 = tensor.empty(%c11) : tensor<7x?x7xi32>
        %283 = math.floor %8 : tensor<5xf16>
        %284 = math.log10 %8 : tensor<5xf16>
        %285 = bufferization.clone %alloc_18 : memref<5xi32> to memref<5xi32>
        %286 = arith.mulf %cst, %cst_2 : f16
        %287 = vector.flat_transpose %192 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %rank_49 = tensor.rank %18 : tensor<5xi16>
        %288 = vector.extract_strided_slice %201 {offsets = [0], sizes = [1], strides = [1]} : vector<5xi1> to vector<1xi1>
        %289 = bufferization.clone %alloc_18 : memref<5xi32> to memref<5xi32>
        %290 = vector.load %alloc_12[%c5, %c0, %c2] : memref<7x7x7xf32>, vector<5xf32>
        scf.yield %cst : f16
      }
      %266 = index.floordivs %c13, %144
      %267 = arith.remf %cst, %124 : f16
      %alloc_47 = memref.alloc() : memref<7x7xi1>
      %268 = tensor.empty() : tensor<49x7xi1>
      %269 = linalg.matmul ins(%153, %alloc_47 : tensor<49x7xi1>, memref<7x7xi1>) outs(%268 : tensor<49x7xi1>) -> tensor<49x7xi1>
      vector.print %242 : vector<7x7xi16>
      %270 = bufferization.to_tensor %188 : memref<5xf16>
      %271 = arith.subi %77, %77 : i64
      vector.print %68 : vector<5xf32>
      %272 = affine.min affine_map<(d0, d1) -> (d1 - 8, ((d0 - (d1 - 8)) mod 4 + d0 - d1) * 128 - 4, -((d0 - (d1 - 8)) mod 4) - 2)>(%40, %36)
      vector.print %173 : vector<7x7x7xi32>
      %273 = index.floordivs %36, %c5
      %274 = arith.maxsi %false_31, %false : i1
      %275 = vector.extract_strided_slice %68 {offsets = [3], sizes = [2], strides = [1]} : vector<5xf32> to vector<2xf32>
      %276 = math.round %4 : tensor<5xf32>
      %277 = index.mul %74, %102
      scf.yield
    }
    %263 = affine.vector_load %alloc_17[%rank] : memref<5xi32>, vector<7xi32>
    affine.vector_store %58, %alloc_12[%255, %c15, %c5] : memref<7x7x7xf32>, vector<5xf32>
    vector.print %20 : vector<6xf32>
    vector.print %37 : vector<5xf32>
    vector.print %38 : vector<5xi1>
    vector.print %39 : vector<5xf32>
    vector.print %55 : vector<7x7x7xi1>
    vector.print %58 : vector<5xf32>
    vector.print %59 : vector<5xf32>
    vector.print %61 : vector<5xf32>
    vector.print %68 : vector<5xf32>
    vector.print %161 : vector<5xi16>
    vector.print %167 : vector<7x7xi1>
    vector.print %169 : vector<5xi1>
    vector.print %170 : vector<5xf32>
    vector.print %172 : vector<7x7x7xi16>
    vector.print %173 : vector<7x7x7xi32>
    vector.print %174 : vector<7x7x7xi16>
    vector.print %176 : vector<5xf32>
    vector.print %178 : vector<7x7x7xi1>
    vector.print %192 : vector<5xi64>
    vector.print %193 : vector<5xi64>
    vector.print %198 : vector<7x7xi1>
    vector.print %201 : vector<5xi1>
    vector.print %242 : vector<7x7xi16>
    vector.print %249 : vector<7x7x7xf32>
    vector.print %263 : vector<7xi32>
    vector.print %c-18386_i16 : i16
    vector.print %c2028099654_i32 : i32
    vector.print %c290583078_i64 : i64
    vector.print %false : i1
    vector.print %c597053239_i64 : i64
    vector.print %false_0 : i1
    vector.print %false_1 : i1
    vector.print %cst : f16
    vector.print %c1954114746_i32 : i32
    vector.print %c857525772_i64 : i64
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %c471358910_i32 : i32
    vector.print %c366035889_i32 : i32
    vector.print %c348884248_i32 : i32
    vector.print %cst_23 : f32
    vector.print %extracted : i16
    vector.print %77 : i64
    vector.print %true : i1
    vector.print %true_27 : i1
    vector.print %false_30 : i1
    vector.print %false_31 : i1
    vector.print %124 : f16
    vector.print %extracted_32 : i64
    vector.print %149 : f32
    vector.print %extracted_34 : i16
    vector.print %true_35 : i1
    vector.print %false_37 : i1
    vector.print %212 : i32
    vector.print %extracted_41 : i1
    return %alloc_21 : memref<5xi16>
  }
}
