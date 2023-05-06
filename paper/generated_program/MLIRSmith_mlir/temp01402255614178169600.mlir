module {
  func.func @func1(%arg0: i64, %arg1: memref<5x6xf16>) -> tensor<5x6xi32> {
    %c444_i16 = arith.constant 444 : i16
    %c857641886_i32 = arith.constant 857641886 : i32
    %c466405358_i64 = arith.constant 466405358 : i64
    %true = arith.constant true
    %c265124073_i32 = arith.constant 265124073 : i32
    %c2107142454_i64 = arith.constant 2107142454 : i64
    %c14056_i16 = arith.constant 14056 : i16
    %c525636631_i32 = arith.constant 525636631 : i32
    %c312935160_i32 = arith.constant 312935160 : i32
    %cst = arith.constant 4.438400e+04 : f16
    %cst_0 = arith.constant 0x4D473CFF : f32
    %c112927684_i64 = arith.constant 112927684 : i64
    %cst_1 = arith.constant 3.956000e+03 : f16
    %cst_2 = arith.constant 0x4CCCB91B : f32
    %c1830594341_i32 = arith.constant 1830594341 : i32
    %c27195_i16 = arith.constant 27195 : i16
    %0 = tensor.empty() : tensor<5x6xi16>
    %1 = tensor.empty() : tensor<6x8xi64>
    %2 = tensor.empty() : tensor<6x6xf16>
    %3 = tensor.empty() : tensor<5x6xf32>
    %4 = tensor.empty() : tensor<5x6xf32>
    %5 = tensor.empty() : tensor<6x6xi64>
    %6 = tensor.empty() : tensor<6x6xi64>
    %7 = tensor.empty() : tensor<6x5x6xi1>
    %8 = tensor.empty() : tensor<5x6xf32>
    %9 = tensor.empty() : tensor<6x6xi32>
    %10 = tensor.empty() : tensor<6x6xi32>
    %11 = tensor.empty() : tensor<6x6xf16>
    %12 = tensor.empty() : tensor<6x8xi16>
    %13 = tensor.empty() : tensor<6x6xi64>
    %14 = tensor.empty() : tensor<5x6xf16>
    %15 = tensor.empty() : tensor<6x6xi1>
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
    %alloc = memref.alloc() : memref<6x5x6xi32>
    %alloc_3 = memref.alloc() : memref<6x5x6xf32>
    %alloc_4 = memref.alloc() : memref<6x5x6xi64>
    %alloc_5 = memref.alloc() : memref<5x6xi1>
    %alloc_6 = memref.alloc() : memref<6x5x6xi64>
    %alloc_7 = memref.alloc() : memref<6x5x6xi16>
    %alloc_8 = memref.alloc() : memref<6x6xi32>
    %alloc_9 = memref.alloc() : memref<6x5x6xf32>
    %alloc_10 = memref.alloc() : memref<6x5x6xi64>
    %alloc_11 = memref.alloc() : memref<6x8xi64>
    %alloc_12 = memref.alloc() : memref<6x5x6xf16>
    %alloc_13 = memref.alloc() : memref<6x5x6xf32>
    %alloc_14 = memref.alloc() : memref<6x5x6xi16>
    %alloc_15 = memref.alloc() : memref<6x6xi64>
    %alloc_16 = memref.alloc() : memref<5x6xf32>
    %alloc_17 = memref.alloc() : memref<6x8xi1>
    %16 = tensor.empty() : tensor<6x6xf16>
    %17 = linalg.copy ins(%2 : tensor<6x6xf16>) outs(%16 : tensor<6x6xf16>) -> tensor<6x6xf16>
    %18 = tensor.empty() : tensor<6x6xf16>
    %transposed = linalg.transpose ins(%2 : tensor<6x6xf16>) outs(%18 : tensor<6x6xf16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<6xf16>
    %reduced = linalg.reduce ins(%11 : tensor<6x6xf16>) outs(%19 : tensor<6xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %279 = arith.divsi %c857641886_i32, %c1830594341_i32 : i32
        %c570071859_i32 = arith.constant 570071859 : i32
        %280 = math.absf %2 : tensor<6x6xf16>
        %collapsed_36 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x6xf32> into tensor<30xf32>
        %281 = arith.negf %in : f16
        memref.tensor_store %1, %alloc_11 : memref<6x8xi64>
        scf.if %true {
          %283 = vector.broadcast %c112927684_i64 : i64 to vector<8xi64>
          %284 = vector.flat_transpose %283 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          %285 = math.roundeven %3 : tensor<5x6xf32>
          %286 = math.fma %in, %cst_1, %init : f16
          memref.assume_alignment %alloc_3, 2 : memref<6x5x6xf32>
          %287 = math.ceil %transposed : tensor<6x6xf16>
          %288 = math.powf %18, %11 : tensor<6x6xf16>
          %289 = bufferization.to_tensor %alloc_16 : memref<5x6xf32>
          %290 = math.copysign %in, %init : f16
        }
        %282 = scf.execute_region -> f16 {
          affine.store %c2107142454_i64, %alloc_4[%c14, %c12, %c1] : memref<6x5x6xi64>
          %283 = tensor.empty() : tensor<5x6xi32>
          %284 = math.fpowi %14, %283 : tensor<5x6xf16>, tensor<5x6xi32>
          %extracted_38 = tensor.extract %3[%c3, %c1] : tensor<5x6xf32>
          %285 = vector.load %alloc_4[%c0, %c1, %c1] : memref<6x5x6xi64>, vector<5x6xi64>
          %286 = index.floordivs %c13, %c15
          %287 = bufferization.to_tensor %alloc_11 : memref<6x8xi64>
          %288 = math.tan %collapsed_36 : tensor<30xf32>
          %289 = vector.extract_strided_slice %285 {offsets = [3], sizes = [1], strides = [1]} : vector<5x6xi64> to vector<1x6xi64>
          %cast_39 = tensor.cast %5 : tensor<6x6xi64> to tensor<?x?xi64>
          %290 = arith.mulf %init, %in : f16
          %291 = memref.atomic_rmw minf %cst_2, %alloc_3[%c3, %c1, %c3] : (f32, memref<6x5x6xf32>) -> f32
          %c1370101619_i32 = arith.constant 1370101619 : i32
          %292 = vector.transpose %289, [1, 0] : vector<1x6xi64> to vector<6x1xi64>
          %293 = affine.max affine_map<(d0) -> (0, 0, 0, 0)>(%c5)
          memref.store %c466405358_i64, %alloc_11[%c0, %c0] : memref<6x8xi64>
          %294 = arith.maxsi %c857641886_i32, %c312935160_i32 : i32
          scf.yield %cst_1 : f16
        }
        %cst_37 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_37 : f16
      }
    %20 = scf.parallel (%arg2, %arg3) = (%c9, %c8) to (%c8, %c12) step (%c11, %c7) init (%alloc_17) -> memref<6x8xi1> {
      %279 = math.absi %c444_i16 : i16
      %280 = vector.broadcast %c265124073_i32 : i32 to vector<1xi32>
      %281 = vector.multi_reduction <or>, %280, %c857641886_i32 [0] : vector<1xi32> to i32
      %282 = math.atan2 %transposed, %11 : tensor<6x6xf16>
      %283 = scf.while (%arg4 = %c1830594341_i32) : (i32) -> i32 {
        %293 = vector.broadcast %cst_1 : f16 to vector<6x8xf16>
        %294 = math.atan2 %11, %18 : tensor<6x6xf16>
        %295 = math.log2 %18 : tensor<6x6xf16>
        %296 = arith.remsi %c525636631_i32, %arg4 : i32
        %297 = arith.subi %true, %true : i1
        %extracted_40 = tensor.extract %1[%c3, %c6] : tensor<6x8xi64>
        %298 = vector.create_mask %c11, %c11 : vector<6x8xi1>
        %299 = arith.maxf %cst, %cst : f16
        scf.condition(%true) %c857641886_i32 : i32
      } do {
      ^bb0(%arg4: i32):
        %293 = index.casts %c2 : index to i32
        %294 = bufferization.clone %alloc_7 : memref<6x5x6xi16> to memref<6x5x6xi16>
        %295 = arith.floordivsi %c466405358_i64, %c466405358_i64 : i64
        %alloc_40 = memref.alloc() : memref<5x6xf32>
        %296 = math.log1p %8 : tensor<5x6xf32>
        %297 = vector.shuffle %280, %280 [1] : vector<1xi32>, vector<1xi32>
        %298 = math.tanh %11 : tensor<6x6xf16>
        %299 = math.exp2 %transposed : tensor<6x6xf16>
        %300 = vector.bitcast %280 : vector<1xi32> to vector<1xi32>
        %301 = vector.broadcast %c265124073_i32 : i32 to vector<1x1xi32>
        %302 = vector.outerproduct %300, %280, %301 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
        %303 = arith.ceildivsi %true, %true : i1
        %304 = bufferization.to_tensor %alloc : memref<6x5x6xi32>
        %305 = arith.addi %arg4, %c1830594341_i32 : i32
        %306 = affine.min affine_map<(d0, d1) -> (d1 * 64, d1 * 64, -(d0 floordiv 8 + d1 ceildiv 8) + 4)>(%c15, %c0)
        %307 = index.sub %c15, %c3
        %308 = arith.remf %cst_1, %cst : f16
        scf.yield %c265124073_i32 : i32
      }
      %284 = index.sizeof
      %extracted_36 = tensor.extract %4[%c0, %c4] : tensor<5x6xf32>
      %285 = math.exp2 %extracted_36 : f32
      %extracted_37 = tensor.extract %19[%c0] : tensor<6xf16>
      %286 = scf.if %true -> (memref<6x6xi16>) {
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %280, %280, %c525636631_i32 : vector<1xi32>, vector<1xi32> into i32
        %alloc_40 = memref.alloc() : memref<5xf32>
        %294 = memref.realloc %alloc_40 : memref<5xf32> to memref<6xf32>
        %295 = index.sizeof
        %296 = arith.remui %c312935160_i32, %281 : i32
        %cst_41 = arith.constant 1.53665869E+9 : f32
        memref.store %c466405358_i64, %alloc_10[%c1, %c4, %c0] : memref<6x5x6xi64>
        %297 = arith.minui %c27195_i16, %c444_i16 : i16
        %298 = index.sizeof
        %alloc_42 = memref.alloc() : memref<6x6xi16>
        scf.yield %alloc_42 : memref<6x6xi16>
      } else {
        %293 = arith.cmpi ne, %c14056_i16, %c27195_i16 : i16
        %294 = index.sub %c6, %c10
        %295 = affine.load %alloc_4[%c14, %c12, %c9] : memref<6x5x6xi64>
        %296 = vector.extract %280[0] : vector<1xi32>
        %297 = math.exp %cst_2 : f32
        %298 = arith.divsi %c265124073_i32, %c312935160_i32 : i32
        %alloc_40 = memref.alloc() : memref<6x5x6xf16>
        %299 = index.divu %284, %c8
        %alloc_41 = memref.alloc() : memref<6x6xi16>
        scf.yield %alloc_41 : memref<6x6xi16>
      }
      %287 = math.atan2 %14, %14 : tensor<5x6xf16>
      %288 = arith.muli %c265124073_i32, %c857641886_i32 : i32
      %289 = math.fma %transposed, %11, %16 : tensor<6x6xf16>
      %cast_38 = tensor.cast %19 : tensor<6xf16> to tensor<?xf16>
      %290 = math.ctlz %c14056_i16 : i16
      %291 = arith.maxf %cst_0, %extracted_36 : f32
      %292 = math.copysign %cst_0, %cst_2 : f32
      %alloc_39 = memref.alloc() : memref<6x8xi1>
      scf.reduce(%alloc_39)  : memref<6x8xi1> {
      ^bb0(%arg4: memref<6x8xi1>, %arg5: memref<6x8xi1>):
        %293 = index.mul %c13, %c15
        %294 = math.atan2 %11, %2 : tensor<6x6xf16>
        %295 = math.exp %11 : tensor<6x6xf16>
        %296 = index.mul %c13, %c0
        %297 = arith.remui %c857641886_i32, %c312935160_i32 : i32
        %298 = math.tan %19 : tensor<6xf16>
        %299 = vector.multi_reduction <minsi>, %280, %280 [] : vector<1xi32> to vector<1xi32>
        %300 = arith.shrui %c1830594341_i32, %c857641886_i32 : i32
        %alloc_40 = memref.alloc() : memref<6x8xi1>
        scf.reduce.return %alloc_40 : memref<6x8xi1>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_6[%c8, %c15, %c12] : memref<6x5x6xi64>, vector<8xi64>
    affine.vector_store %21, %alloc_4[%c12, %c12, %c7] : memref<6x5x6xi64>, vector<8xi64>
    %alloc_18 = memref.alloc() : memref<6xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%19, %alloc_18 : tensor<6xf16>, memref<6xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = vector.broadcast %cst_0 : f32 to vector<6xf32>
    %25 = vector.broadcast %true : i1 to vector<6xi1>
    %26 = vector.maskedload %alloc_9[%c3, %c1, %c0], %25, %24 : memref<6x5x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
    %27 = math.log10 %16 : tensor<6x6xf16>
    %28 = arith.maxsi %true, %true : i1
    %29 = arith.remui %c2107142454_i64, %c112927684_i64 : i64
    %30 = arith.shrui %c2107142454_i64, %c112927684_i64 : i64
    vector.print %26 : vector<6xf32>
    %31 = bufferization.clone %alloc_3 : memref<6x5x6xf32> to memref<6x5x6xf32>
    %32 = arith.maxui %c525636631_i32, %c312935160_i32 : i32
    %33 = arith.xori %c1830594341_i32, %c857641886_i32 : i32
    %34 = arith.negf %cst : f16
    %35 = scf.execute_region -> index {
      %279 = index.divu %c14, %c5
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %24, %26, %cst_0 : vector<6xf32>, vector<6xf32> into f32
      %281 = math.tanh %22 : tensor<f16>
      %282 = vector.broadcast %cst_2 : f32 to vector<6x6xf32>
      %283 = vector.outerproduct %26, %26, %282 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
      %284 = scf.index_switch %c9 -> f16 
      case 1 {
        %294 = arith.addi %c1830594341_i32, %c265124073_i32 : i32
        %295 = math.log10 %transposed : tensor<6x6xf16>
        %296 = math.log2 %3 : tensor<5x6xf32>
        %297 = math.exp2 %23 : tensor<f16>
        %298 = arith.remui %c525636631_i32, %c525636631_i32 : i32
        %299 = vector.shuffle %21, %21 [0, 1, 2, 5, 7, 8, 9, 10, 11, 13, 15] : vector<8xi64>, vector<8xi64>
        %300 = index.sub %c8, %c6
        %301 = tensor.empty() : tensor<6x6xi64>
        %302 = linalg.matmul ins(%13, %6 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%301 : tensor<6x6xi64>) -> tensor<6x6xi64>
        %303 = arith.maxf %cst_2, %cst_2 : f32
        %alloc_37 = memref.alloc() : memref<f16>
        memref.tensor_store %23, %alloc_37 : memref<f16>
        %304 = vector.bitcast %25 : vector<6xi1> to vector<6xi1>
        %305 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
        %306 = vector.outerproduct %24, %26, %305 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
        %307 = math.ipowi %c14056_i16, %c444_i16 : i16
        %308 = math.fma %16, %17, %11 : tensor<6x6xf16>
        %309 = math.exp %8 : tensor<5x6xf32>
        %310 = arith.shrui %c2107142454_i64, %c466405358_i64 : i64
        scf.yield %cst : f16
      }
      default {
        %294 = math.exp %16 : tensor<6x6xf16>
        %295 = arith.minui %c444_i16, %c27195_i16 : i16
        %296 = arith.shrui %c1830594341_i32, %c1830594341_i32 : i32
        %297 = arith.negf %cst : f16
        %298 = math.tanh %19 : tensor<6xf16>
        %299 = vector.flat_transpose %24 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %300 = index.ceildivu %c6, %c0
        %301 = arith.cmpi ule, %c525636631_i32, %c1830594341_i32 : i32
        %302 = math.exp2 %3 : tensor<5x6xf32>
        %303 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 8) * 4, ((d1 ceildiv 8) floordiv 64) floordiv 128, ((d1 ceildiv 8) floordiv 64) floordiv 128)>(%c2, %c6, %c9)
        %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %26, %299, %cst_2 : vector<6xf32>, vector<6xf32> into f32
        %305 = arith.mulf %cst, %cst : f16
        %306 = math.fma %23, %23, %23 : tensor<f16>
        %307 = math.log2 %transposed : tensor<6x6xf16>
        bufferization.dealloc_tensor %6 : tensor<6x6xi64>
        %308 = math.tan %cst_2 : f32
        scf.yield %cst : f16
      }
      %285 = vector.insertelement %cst_2, %24[%c8 : index] : vector<6xf32>
      %286 = math.log1p %11 : tensor<6x6xf16>
      %287 = scf.index_switch %c5 -> tensor<6x8xi16> 
      case 1 {
        %294 = arith.remf %cst_2, %cst_2 : f32
        %295 = math.ctlz %c525636631_i32 : i32
        %296 = arith.maxf %cst, %cst_1 : f16
        %297 = arith.subi %c444_i16, %c444_i16 : i16
        %298 = index.sizeof
        %299 = vector.flat_transpose %21 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %300 = index.mul %c7, %c15
        %301 = math.log2 %17 : tensor<6x6xf16>
        %302 = index.mul %c12, %c14
        %303 = arith.negf %cst_1 : f16
        %304 = math.atan2 %19, %reduced : tensor<6xf16>
        %305 = arith.maxui %true, %true : i1
        %306 = math.tanh %14 : tensor<5x6xf16>
        %307 = index.ceildivs %c10, %279
        %308 = index.casts %c112927684_i64 : i64 to index
        %309 = affine.load %alloc_10[%c1, %c5, %c14] : memref<6x5x6xi64>
        scf.yield %12 : tensor<6x8xi16>
      }
      case 2 {
        %294 = arith.minf %cst_1, %cst : f16
        %295 = vector.broadcast %c10 : index to vector<5xindex>
        %296 = vector.broadcast %true : i1 to vector<5xi1>
        %297 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        vector.scatter %alloc_18[%c1] [%295], %296, %297 : memref<6xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
        %298 = arith.subi %c466405358_i64, %c2107142454_i64 : i64
        %299 = arith.shrui %c466405358_i64, %c2107142454_i64 : i64
        %alloc_37 = memref.alloc() : memref<5x6xf16>
        memref.tensor_store %14, %alloc_37 : memref<5x6xf16>
        %300 = math.floor %17 : tensor<6x6xf16>
        %301 = vector.load %31[%c1, %c4, %c2] : memref<6x5x6xf32>, vector<6x5x6xf32>
        %302 = index.sub %c4, %c2
        %303 = math.fma %cst_1, %cst_1, %cst : f16
        %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %26, %24, %cst_2 : vector<6xf32>, vector<6xf32> into f32
        %305 = math.ipowi %c1830594341_i32, %c857641886_i32 : i32
        %306 = vector.load %alloc_10[%c0, %c4, %c5] : memref<6x5x6xi64>, vector<6x6xi64>
        %307 = math.cos %14 : tensor<5x6xf16>
        %rank = tensor.rank %6 : tensor<6x6xi64>
        %308 = math.floor %8 : tensor<5x6xf32>
        %309 = arith.xori %c525636631_i32, %c312935160_i32 : i32
        scf.yield %12 : tensor<6x8xi16>
      }
      case 3 {
        %294 = math.copysign %2, %17 : tensor<6x6xf16>
        %295 = bufferization.to_memref %0 : memref<5x6xi16>
        %296 = vector.flat_transpose %24 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %297 = vector.broadcast %c2107142454_i64 : i64 to vector<8xi64>
        %298 = vector.transfer_write %297, %5[%c14, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, tensor<6x6xi64>
        %299 = arith.andi %c525636631_i32, %c1830594341_i32 : i32
        %300 = arith.subi %true, %true : i1
        %301 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %302 = arith.xori %c265124073_i32, %c265124073_i32 : i32
        %303 = math.exp %8 : tensor<5x6xf32>
        %304 = arith.shrui %c444_i16, %c444_i16 : i16
        %305 = affine.load %alloc_9[%c14, %c9, %c9] : memref<6x5x6xf32>
        %306 = arith.minf %305, %cst_0 : f32
        %307 = arith.shrui %c27195_i16, %c444_i16 : i16
        %308 = vector.insertelement %c2107142454_i64, %21[%c8 : index] : vector<8xi64>
        %alloc_37 = memref.alloc() : memref<6x5x6xf16>
        %309 = affine.load %alloc_13[%c6, %c0, %c2] : memref<6x5x6xf32>
        scf.yield %12 : tensor<6x8xi16>
      }
      default {
        %294 = math.tanh %11 : tensor<6x6xf16>
        %295 = affine.min affine_map<(d0, d1) -> (d0 - d1)>(%c2, %c13)
        %296 = index.sizeof
        %297 = index.casts %c265124073_i32 : i32 to index
        %inserted = tensor.insert %cst_2 into %4[%c4, %c3] : tensor<5x6xf32>
        %splat_37 = tensor.splat %cst_1 : tensor<5x6xf16>
        %298 = index.sub %c4, %c1
        %299 = math.exp %4 : tensor<5x6xf32>
        %300 = arith.shrui %c1830594341_i32, %c265124073_i32 : i32
        %301 = arith.negf %cst_2 : f32
        %302 = arith.remf %cst, %cst : f16
        %303 = math.atan2 %4, %4 : tensor<5x6xf32>
        %304 = math.log %14 : tensor<5x6xf16>
        %305 = arith.negf %cst : f16
        %306 = index.mul %c14, %c10
        %307 = math.absf %17 : tensor<6x6xf16>
        scf.yield %12 : tensor<6x8xi16>
      }
      %288 = affine.load %alloc_3[%c9, %c12, %c13] : memref<6x5x6xf32>
      affine.store %c312935160_i32, %alloc_8[%c6, %c15] : memref<6x6xi32>
      %289 = math.absf %8 : tensor<5x6xf32>
      %alloc_36 = memref.alloc() : memref<5x6xi16>
      memref.tensor_store %0, %alloc_36 : memref<5x6xi16>
      %290 = vector.transpose %26, [0] : vector<6xf32> to vector<6xf32>
      %291 = arith.shrui %c466405358_i64, %c2107142454_i64 : i64
      %292 = scf.while (%arg2 = %c525636631_i32) : (i32) -> i32 {
        %294 = index.sizeof
        %295 = math.roundeven %14 : tensor<5x6xf16>
        %296 = index.casts %c444_i16 : i16 to index
        %297 = math.log %cst_1 : f16
        %298 = arith.minui %c312935160_i32, %c857641886_i32 : i32
        %299 = math.ipowi %true, %true : i1
        %300 = arith.floordivsi %c112927684_i64, %c466405358_i64 : i64
        %301 = index.sizeof
        scf.condition(%true) %c1830594341_i32 : i32
      } do {
      ^bb0(%arg2: i32):
        %294 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %295 = math.tanh %22 : tensor<f16>
        %296 = vector.create_mask %c7, %c12 : vector<6x8xi1>
        %297 = vector.broadcast %c12 : index to vector<8xindex>
        %298 = vector.broadcast %true : i1 to vector<8xi1>
        %299 = vector.broadcast %cst : f16 to vector<8xf16>
        vector.scatter %alloc_12[%c2, %c4, %c2] [%297], %298, %299 : memref<6x5x6xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %300 = arith.minui %c1830594341_i32, %c265124073_i32 : i32
        bufferization.dealloc_tensor %11 : tensor<6x6xf16>
        %301 = arith.remui %c857641886_i32, %c1830594341_i32 : i32
        bufferization.dealloc_tensor %14 : tensor<5x6xf16>
        %302 = index.sub %279, %c8
        %303 = math.tanh %cst_1 : f16
        %304 = arith.negf %cst_0 : f32
        %305 = arith.remf %cst_1, %cst : f16
        %306 = affine.load %alloc_7[%c15, %c5, %c4] : memref<6x5x6xi16>
        %307 = index.sub %c14, %c2
        %308 = vector.broadcast %true : i1 to vector<5xi1>
        %309 = vector.maskedload %alloc_17[%c1, %c4], %308, %308 : memref<6x8xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %310 = vector.insert %cst_2, %24 [2] : f32 into vector<6xf32>
        scf.yield %c312935160_i32 : i32
      }
      %293 = vector.create_mask %c7, %c12 : vector<6x8xi1>
      scf.yield %c2 : index
    }
    %36 = math.log2 %2 : tensor<6x6xf16>
    %37 = arith.shrui %c14056_i16, %c27195_i16 : i16
    %38 = arith.remf %cst, %cst_1 : f16
    %39 = math.ctpop %5 : tensor<6x6xi64>
    %40 = vector.load %alloc_5[%c0, %c2] : memref<5x6xi1>, vector<6x6xi1>
    %41 = arith.andi %c14056_i16, %c14056_i16 : i16
    %42 = index.ceildivu %c12, %c14
    %true_19 = index.bool.constant true
    %cast = tensor.cast %15 : tensor<6x6xi1> to tensor<?x?xi1>
    %splat = tensor.splat %c2107142454_i64 : tensor<6x6xi64>
    %43 = index.mul %c8, %c5
    %44 = arith.floordivsi %c265124073_i32, %c525636631_i32 : i32
    %45 = index.sizeof
    %46 = tensor.empty() : tensor<6x6xi64>
    %47 = linalg.matmul ins(%6, %5 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%46 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %48 = vector.insertelement %true_19, %25[%43 : index] : vector<6xi1>
    %splat_20 = tensor.splat %c312935160_i32 : tensor<5x6xi32>
    %49 = vector.extract_strided_slice %26 {offsets = [2], sizes = [2], strides = [1]} : vector<6xf32> to vector<2xf32>
    %50 = vector.broadcast %c15 : index to vector<5xindex>
    %51 = vector.broadcast %true_19 : i1 to vector<5xi1>
    %52 = vector.broadcast %cst_0 : f32 to vector<5xf32>
    vector.scatter %alloc_16[%c4, %c1] [%50], %51, %52 : memref<5x6xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
    %53 = vector.maskedload %alloc_5[%c3, %c4], %25, %25 : memref<5x6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
    %54 = math.log2 %cst_1 : f16
    %55 = math.log %cst_0 : f32
    %56 = arith.maxf %cst_1, %cst : f16
    %57 = index.divu %c4, %c9
    %58 = arith.remf %cst_1, %cst_1 : f16
    %59 = tensor.empty() : tensor<6x6xi64>
    %60 = linalg.matmul ins(%6, %6 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%59 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %61 = arith.remf %cst, %cst_1 : f16
    %62 = math.log2 %cst : f16
    %63 = vector.insert %cst_2, %26 [5] : f32 into vector<6xf32>
    %64 = math.copysign %14, %14 : tensor<5x6xf16>
    %65 = arith.remui %c525636631_i32, %c1830594341_i32 : i32
    %66 = vector.create_mask %c9, %c13 : vector<6x6xi1>
    %67 = math.ceil %14 : tensor<5x6xf16>
    %68 = math.tan %14 : tensor<5x6xf16>
    %69 = math.tanh %11 : tensor<6x6xf16>
    %70 = math.absf %8 : tensor<5x6xf32>
    %71 = arith.addi %c2107142454_i64, %c112927684_i64 : i64
    %72 = affine.max affine_map<(d0) -> ((d0 ceildiv 64 + 1) ceildiv 2, d0 ceildiv 16, (d0 ceildiv 16 + 8) floordiv 64, d0 floordiv 8)>(%c1)
    %alloc_21 = memref.alloc() : memref<6x6xf32>
    %alloc_22 = memref.alloc() : memref<6x5x6xi32>
    %73 = vector.shuffle %25, %25 [1, 2, 4, 9, 10, 11] : vector<6xi1>, vector<6xi1>
    %74 = arith.shrui %c2107142454_i64, %c112927684_i64 : i64
    %75 = scf.if %true -> (i64) {
      %splat_36 = tensor.splat %c444_i16 : tensor<6x8xi16>
      %279 = index.sizeof
      %splat_37 = tensor.splat %c857641886_i32 : tensor<5x6xi32>
      %280 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
      memref.tensor_store %5, %alloc_15 : memref<6x6xi64>
      %281 = math.exp2 %cst_1 : f16
      %extracted_38 = tensor.extract %46[%c1, %c5] : tensor<6x6xi64>
      scf.index_switch %c5 
      case 1 {
        %282 = vector.create_mask %c8, %c7, %c7 : vector<6x5x6xi1>
        %283 = math.tanh %18 : tensor<6x6xf16>
        %alloc_39 = memref.alloc() : memref<5x6xi64>
        %284 = arith.maxui %c1830594341_i32, %c525636631_i32 : i32
        %285 = math.cttz %c265124073_i32 : i32
        %286 = arith.remf %cst_0, %cst_0 : f32
        %287 = index.divu %c8, %c9
        %288 = math.exp2 %8 : tensor<5x6xf32>
        %289 = math.fma %8, %3, %8 : tensor<5x6xf32>
        %inserted = tensor.insert %cst_2 into %8[%c1, %c2] : tensor<5x6xf32>
        %290 = arith.remf %cst_2, %cst_0 : f32
        %291 = arith.muli %c466405358_i64, %c112927684_i64 : i64
        affine.store %c525636631_i32, %alloc_8[%c4, %c1] : memref<6x6xi32>
        %292 = tensor.empty() : tensor<5x6xi1>
        %293 = arith.addi %c27195_i16, %c14056_i16 : i16
        %294 = math.copysign %11, %18 : tensor<6x6xf16>
        scf.yield
      }
      case 2 {
        %extracted_39 = tensor.extract %cast[%c0, %c0] : tensor<?x?xi1>
        %282 = bufferization.to_tensor %alloc_8 : memref<6x6xi32>
        %283 = index.ceildivu %c2, %42
        %284 = vector.insert %cst_0, %26 [3] : f32 into vector<6xf32>
        %285 = vector.bitcast %40 : vector<6x6xi1> to vector<6x6xi1>
        %286 = arith.remui %c312935160_i32, %c312935160_i32 : i32
        %287 = math.exp %16 : tensor<6x6xf16>
        %288 = arith.remf %cst_1, %cst : f16
        %289 = arith.divsi %extracted_38, %c112927684_i64 : i64
        %290 = vector.load %alloc_7[%c3, %c3, %c0] : memref<6x5x6xi16>, vector<6x6xi16>
        %291 = arith.maxui %c112927684_i64, %c466405358_i64 : i64
        %292 = math.fpowi %3, %splat_37 : tensor<5x6xf32>, tensor<5x6xi32>
        %293 = arith.ceildivsi %extracted_39, %true_19 : i1
        %294 = bufferization.clone %alloc_16 : memref<5x6xf32> to memref<5x6xf32>
        %295 = arith.shli %c27195_i16, %c444_i16 : i16
        %296 = index.sizeof
        scf.yield
      }
      default {
        %282 = affine.min affine_map<(d0, d1) -> (d0 + d1 + 64, (-d1) ceildiv 64)>(%c13, %35)
        memref.tensor_store %reduced, %alloc_18 : memref<6xf16>
        %283 = arith.addi %c2107142454_i64, %c466405358_i64 : i64
        %284 = vector.broadcast %cst_2 : f32 to vector<f32>
        vector.transfer_write %284, %31[%42, %282, %c10] : vector<f32>, memref<6x5x6xf32>
        %285 = math.fma %3, %4, %4 : tensor<5x6xf32>
        %286 = arith.maxui %c525636631_i32, %c1830594341_i32 : i32
        %287 = memref.realloc %alloc_18 : memref<6xf16> to memref<8xf16>
        %288 = vector.broadcast %cst_2 : f32 to vector<5x6xf32>
        %289 = vector.fma %288, %288, %288 : vector<5x6xf32>
        %290 = index.sub %45, %c2
        memref.store %cst_2, %31[%c0, %c3, %c1] : memref<6x5x6xf32>
        %291 = vector.broadcast %cst_0 : f32 to vector<6x8xf32>
        %292 = vector.fma %291, %291, %291 : vector<6x8xf32>
        %alloc_39 = memref.alloc() : memref<6x5x6xf32>
        %293 = arith.minsi %c466405358_i64, %c466405358_i64 : i64
        %294 = math.log2 %4 : tensor<5x6xf32>
        %true_40 = index.bool.constant true
        %295 = math.atan2 %cst, %cst_1 : f16
      }
      scf.yield %extracted_38 : i64
    } else {
      %279 = arith.remf %cst_1, %cst_1 : f16
      %280 = scf.while (%arg2 = %alloc_5) : (memref<5x6xi1>) -> memref<5x6xi1> {
        %285 = vector.multi_reduction <or>, %40, %25 [0] : vector<6x6xi1> to vector<6xi1>
        %286 = memref.load %alloc_16[%c2, %c4] : memref<5x6xf32>
        %287 = arith.cmpi sgt, %true_19, %true : i1
        %288 = bufferization.clone %alloc_3 : memref<6x5x6xf32> to memref<6x5x6xf32>
        %289 = math.exp2 %18 : tensor<6x6xf16>
        %290 = math.floor %cst_0 : f32
        %291 = arith.remui %c112927684_i64, %c112927684_i64 : i64
        %292 = math.fpowi %18, %9 : tensor<6x6xf16>, tensor<6x6xi32>
        scf.condition(%true) %alloc_5 : memref<5x6xi1>
      } do {
      ^bb0(%arg2: memref<5x6xi1>):
        %285 = vector.broadcast %c112927684_i64 : i64 to vector<6xi64>
        %286 = vector.maskedload %alloc_10[%c2, %c1, %c4], %25, %285 : memref<6x5x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %287 = vector.bitcast %26 : vector<6xf32> to vector<6xf32>
        %288 = bufferization.clone %31 : memref<6x5x6xf32> to memref<6x5x6xf32>
        %289 = arith.divsi %c2107142454_i64, %c112927684_i64 : i64
        %290 = index.castu %c4 : index to i32
        %291 = arith.shrui %c857641886_i32, %c312935160_i32 : i32
        %292 = arith.remsi %c857641886_i32, %c525636631_i32 : i32
        %293 = math.fpowi %11, %9 : tensor<6x6xf16>, tensor<6x6xi32>
        memref.assume_alignment %arg2, 2 : memref<5x6xi1>
        %294 = vector.broadcast %c444_i16 : i16 to vector<6x8xi16>
        %collapsed_37 = tensor.collapse_shape %15 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
        %295 = arith.minui %true, %true : i1
        %296 = arith.addi %c112927684_i64, %c2107142454_i64 : i64
        %297 = index.sizeof
        %298 = arith.divf %cst_1, %cst_1 : f16
        %299 = vector.extract_strided_slice %286 {offsets = [4], sizes = [2], strides = [1]} : vector<6xi64> to vector<2xi64>
        scf.yield %alloc_5 : memref<5x6xi1>
      }
      %281 = arith.floordivsi %c857641886_i32, %c265124073_i32 : i32
      scf.if %true {
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %26, %26, %cst_2 : vector<6xf32>, vector<6xf32> into f32
        %286 = math.copysign %8, %4 : tensor<5x6xf32>
        %287 = index.sub %35, %c12
        %288 = arith.maxui %c466405358_i64, %c112927684_i64 : i64
        %289 = math.floor %17 : tensor<6x6xf16>
        %290 = arith.floordivsi %true, %true_19 : i1
        %291 = arith.remf %cst_1, %cst_1 : f16
        %292 = arith.remf %cst_0, %cst_2 : f32
      }
      %282 = arith.divsi %c265124073_i32, %c312935160_i32 : i32
      %splat_36 = tensor.splat %c312935160_i32 : tensor<6x6xi32>
      %283 = arith.remf %cst, %cst_1 : f16
      %284 = math.fma %2, %18, %17 : tensor<6x6xf16>
      scf.yield %c112927684_i64 : i64
    }
    %76 = affine.load %alloc_9[%c3, %c3, %c12] : memref<6x5x6xf32>
    scf.if %true {
      %279 = arith.subi %c525636631_i32, %c525636631_i32 : i32
      %280 = math.absf %4 : tensor<5x6xf32>
      %281 = arith.divf %76, %cst_2 : f32
      %282 = math.atan2 %14, %14 : tensor<5x6xf16>
      %283 = arith.divsi %c1830594341_i32, %c265124073_i32 : i32
      %cst_36 = arith.constant 1.000000e+00 : f16
      %284 = vector.transfer_read %2[%c5, %c13], %cst_36 : tensor<6x6xf16>, vector<8xf16>
      %285 = scf.if %true -> (i64) {
        %287 = math.fma %cst, %cst_36, %cst_36 : f16
        %288 = math.exp %reduced : tensor<6xf16>
        %289 = tensor.empty() : tensor<6x8xf32>
        %290 = tensor.empty() : tensor<5x8xf32>
        %291 = linalg.matmul ins(%8, %289 : tensor<5x6xf32>, tensor<6x8xf32>) outs(%290 : tensor<5x8xf32>) -> tensor<5x8xf32>
        %292 = math.cos %290 : tensor<5x8xf32>
        %293 = arith.floordivsi %c112927684_i64, %c466405358_i64 : i64
        %294 = math.atan2 %18, %17 : tensor<6x6xf16>
        %295 = arith.minui %true_19, %true_19 : i1
        %296 = arith.maxf %76, %76 : f32
        scf.yield %75 : i64
      } else {
        %287 = vector.create_mask %c13, %c3, %c8 : vector<6x5x6xi1>
        affine.store %true_19, %alloc_17[%c13, %c6] : memref<6x8xi1>
        %288 = math.copysign %reduced, %reduced : tensor<6xf16>
        %289 = math.log2 %cst_1 : f16
        %290 = math.log1p %8 : tensor<5x6xf32>
        %291 = vector.broadcast %cst_2 : f32 to vector<6x6xf32>
        %292 = vector.fma %291, %291, %291 : vector<6x6xf32>
        %293 = math.ctlz %c312935160_i32 : i32
        %294 = math.expm1 %2 : tensor<6x6xf16>
        scf.yield %75 : i64
      }
      %286 = math.fma %14, %14, %14 : tensor<5x6xf16>
    }
    memref.assume_alignment %alloc, 4 : memref<6x5x6xi32>
    %77 = tensor.empty() : tensor<6x6xi64>
    %mapped = linalg.map ins(%13 : tensor<6x6xi64>) outs(%77 : tensor<6x6xi64>)
      (%in: i64) {
        %279 = index.casts %c14056_i16 : i16 to index
        %280 = math.tan %cst_2 : f32
        %281 = arith.remsi %75, %c2107142454_i64 : i64
        %282 = vector.broadcast %75 : i64 to vector<i64>
        %283 = vector.transfer_write %282, %46[%279, %42] : vector<i64>, tensor<6x6xi64>
        %284 = math.ceil %8 : tensor<5x6xf32>
        %285 = bufferization.to_tensor %alloc_13 : memref<6x5x6xf32>
        %286 = math.exp %cst_2 : f32
        %generated = tensor.generate %c7, %c15 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          %315 = arith.negf %76 : f32
          %316 = math.fma %16, %17, %11 : tensor<6x6xf16>
          %317 = vector.shuffle %24, %24 [4, 7, 9, 10, 11] : vector<6xf32>, vector<6xf32>
          memref.store %cst_0, %31[%c3, %c1, %c2] : memref<6x5x6xf32>
          tensor.yield %cst_2 : f32
        } : tensor<?x?x6xf32>
        %287 = index.mul %c5, %c8
        %288 = tensor.empty() : tensor<5x6xi1>
        %289 = vector.broadcast %true : i1 to vector<5x6xi1>
        %290 = vector.broadcast %c525636631_i32 : i32 to vector<5x6xi32>
        %291 = vector.gather %288[%c12, %c11] [%290], %289, %289 : tensor<5x6xi1>, vector<5x6xi32>, vector<5x6xi1>, vector<5x6xi1> into vector<5x6xi1>
        %292 = index.ceildivu %c0, %c3
        %293 = math.powf %22, %22 : tensor<f16>
        %294 = vector.create_mask %c3, %c2 : vector<6x8xi1>
        %295 = math.ipowi %splat, %6 : tensor<6x6xi64>
        %296 = index.casts %c1830594341_i32 : i32 to index
        %297 = tensor.empty() : tensor<5x6xi32>
        %298 = linalg.matmul ins(%splat_20, %10 : tensor<5x6xi32>, tensor<6x6xi32>) outs(%297 : tensor<5x6xi32>) -> tensor<5x6xi32>
        %299 = arith.maxf %cst_2, %cst_2 : f32
        %300 = vector.broadcast %c444_i16 : i16 to vector<6x5x6xi16>
        %301 = arith.remsi %c112927684_i64, %75 : i64
        %302 = vector.broadcast %true_19 : i1 to vector<6xi1>
        %303 = vector.transfer_write %302, %15[%45, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi1>, tensor<6x6xi1>
        %304 = arith.minui %c466405358_i64, %c112927684_i64 : i64
        %305 = vector.multi_reduction <or>, %66, %25 [1] : vector<6x6xi1> to vector<6xi1>
        %306 = affine.apply affine_map<(d0, d1) -> ((d0 mod 8) * 128)>(%c8, %c14)
        %307 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%45, %c0, %c10, %c5)
        %308 = arith.shrui %true_19, %true_19 : i1
        %alloc_36 = memref.alloc() : memref<6x5x6xi1>
        memref.tensor_store %7, %alloc_36 : memref<6x5x6xi1>
        %309 = arith.divf %cst_2, %cst_0 : f32
        %310 = arith.remf %cst_1, %cst : f16
        %311 = math.exp %reduced : tensor<6xf16>
        %312 = math.fma %76, %76, %76 : f32
        %313 = vector.bitcast %24 : vector<6xf32> to vector<6xf32>
        %314 = math.tanh %22 : tensor<f16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %78 = math.exp %8 : tensor<5x6xf32>
    %extracted = tensor.extract %2[%c3, %c1] : tensor<6x6xf16>
    %79 = math.exp %18 : tensor<6x6xf16>
    %80 = arith.subi %c2107142454_i64, %75 : i64
    %true_23 = index.bool.constant true
    %81 = index.casts %c3 : index to i32
    %82 = vector.broadcast %76 : f32 to vector<2x2xf32>
    %83 = vector.outerproduct %49, %49, %82 {kind = #vector.kind<mul>} : vector<2xf32>, vector<2xf32>
    %84 = vector.insert %true_19, %25 [2] : i1 into vector<6xi1>
    %85 = vector.extract_strided_slice %24 {offsets = [1], sizes = [3], strides = [1]} : vector<6xf32> to vector<3xf32>
    %86 = arith.addi %true_23, %true_23 : i1
    %87 = arith.maxf %extracted, %cst : f16
    %88 = arith.addi %c857641886_i32, %c1830594341_i32 : i32
    %89 = arith.maxf %cst, %cst : f16
    %90 = vector.extract_strided_slice %21 {offsets = [6], sizes = [2], strides = [1]} : vector<8xi64> to vector<2xi64>
    %cst_24 = arith.constant 1.000000e+00 : f16
    %91 = vector.transfer_read %alloc_12[%c14, %42, %c6], %cst_24 : memref<6x5x6xf16>, vector<5xf16>
    %92 = arith.floordivsi %c112927684_i64, %75 : i64
    %93 = vector.broadcast %76 : f32 to vector<f32>
    %94 = vector.transfer_write %93, %3[%42, %42] : vector<f32>, tensor<5x6xf32>
    %95 = vector.insertelement %true_19, %53[%c3 : index] : vector<6xi1>
    %96 = math.tan %14 : tensor<5x6xf16>
    %97 = math.tanh %2 : tensor<6x6xf16>
    %98 = math.tan %8 : tensor<5x6xf32>
    %99 = vector.insert %c112927684_i64, %90 [1] : i64 into vector<2xi64>
    %100 = arith.maxsi %c27195_i16, %c27195_i16 : i16
    %101 = tensor.empty() : tensor<6x5x6xf32>
    %mapped_25 = linalg.map ins(%alloc_3 : memref<6x5x6xf32>) outs(%101 : tensor<6x5x6xf32>)
      (%in: f32) {
        %279 = vector.broadcast %c112927684_i64 : i64 to vector<i64>
        %280 = vector.transfer_write %279, %13[%42, %c8] : vector<i64>, tensor<6x6xi64>
        %281 = arith.addi %c265124073_i32, %c312935160_i32 : i32
        %282 = math.fma %cst_2, %in, %76 : f32
        %283 = vector.extract_strided_slice %49 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
        %284 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
        %285 = vector.fma %284, %284, %284 : vector<6x6xf32>
        %286 = arith.floordivsi %c265124073_i32, %c857641886_i32 : i32
        %287 = index.divu %35, %c15
        %288 = math.tanh %11 : tensor<6x6xf16>
        %289 = tensor.empty() : tensor<6x6xi32>
        %290 = linalg.matmul ins(%10, %10 : tensor<6x6xi32>, tensor<6x6xi32>) outs(%289 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %291 = index.mul %42, %c0
        %292 = arith.divf %extracted, %cst_24 : f16
        %293 = math.fpowi %cst_0, %c312935160_i32 : f32, i32
        %294 = arith.cmpi ne, %true_19, %true : i1
        %295 = arith.xori %c27195_i16, %c14056_i16 : i16
        %296 = arith.floordivsi %c2107142454_i64, %c466405358_i64 : i64
        %297 = arith.addf %cst, %cst_1 : f16
        %298 = vector.insertelement %true, %25[%c7 : index] : vector<6xi1>
        %299 = math.roundeven %19 : tensor<6xf16>
        scf.index_switch %c3 
        case 1 {
          %314 = math.atan2 %14, %14 : tensor<5x6xf16>
          %315 = math.log10 %23 : tensor<f16>
          %316 = index.mul %c0, %c11
          %317 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %285, %26, %26 : vector<6x6xf32>, vector<6xf32> into vector<6xf32>
          %318 = math.ipowi %5, %6 : tensor<6x6xi64>
          %319 = index.mul %c0, %c11
          %false = arith.constant false
          %true_37 = arith.constant true
          %320 = vector.insert %true, %53 [4] : i1 into vector<6xi1>
          %321 = arith.maxf %cst_24, %cst : f16
          %322 = arith.maxsi %true, %true_23 : i1
          %323 = arith.ceildivsi %true_19, %true_23 : i1
          %324 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
          %325 = arith.maxsi %c525636631_i32, %c1830594341_i32 : i32
          bufferization.dealloc_tensor %22 : tensor<f16>
          %dest, %accumulated_value = vector.scan <mul>, %285, %26 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xf32>, vector<6xf32>
          scf.yield
        }
        default {
          %314 = bufferization.to_memref %19 : memref<6xf16>
          %315 = vector.outerproduct %24, %26, %284 {kind = #vector.kind<minf>} : vector<6xf32>, vector<6xf32>
          %316 = arith.cmpi sgt, %c312935160_i32, %c312935160_i32 : i32
          %317 = math.exp %4 : tensor<5x6xf32>
          %318 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %25, %25, %true_19 : vector<6xi1>, vector<6xi1> into i1
          %319 = math.atan2 %8, %4 : tensor<5x6xf32>
          %320 = arith.remf %cst, %cst_24 : f16
          %321 = vector.broadcast %c112927684_i64 : i64 to vector<i64>
          %322 = vector.transfer_write %321, %splat[%35, %c14] : vector<i64>, tensor<6x6xi64>
          %323 = vector.extract_strided_slice %66 {offsets = [0], sizes = [4], strides = [1]} : vector<6x6xi1> to vector<4x6xi1>
          %324 = math.ipowi %6, %59 : tensor<6x6xi64>
          %325 = math.copysign %cst_0, %76 : f32
          %326 = math.log10 %3 : tensor<5x6xf32>
          %327 = arith.muli %c1830594341_i32, %c525636631_i32 : i32
          %328 = arith.mulf %cst_2, %in : f32
          %alloc_37 = memref.alloc() : memref<6x6xf16>
          memref.tensor_store %11, %alloc_37 : memref<6x6xf16>
          %329 = arith.remsi %c112927684_i64, %c466405358_i64 : i64
        }
        %300 = index.casts %true_19 : i1 to index
        %301 = index.maxs %c10, %57
        %302 = scf.index_switch %c0 -> i32 
        case 1 {
          %314 = arith.maxsi %c265124073_i32, %c265124073_i32 : i32
          %315 = index.ceildivu %c11, %35
          %316 = arith.divf %76, %in : f32
          %c1299590559_i64 = arith.constant 1299590559 : i64
          %317 = math.ctpop %59 : tensor<6x6xi64>
          memref.tensor_store %13, %alloc_15 : memref<6x6xi64>
          %318 = index.mul %c4, %42
          %319 = math.tan %16 : tensor<6x6xf16>
          %320 = arith.mulf %cst_2, %in : f32
          %false = index.bool.constant false
          %321 = math.tanh %11 : tensor<6x6xf16>
          %322 = math.copysign %reduced, %reduced : tensor<6xf16>
          %323 = index.casts %c312935160_i32 : i32 to index
          %324 = index.mul %c6, %c2
          %325 = math.log %17 : tensor<6x6xf16>
          %326 = math.roundeven %8 : tensor<5x6xf32>
          scf.yield %c312935160_i32 : i32
        }
        default {
          %314 = arith.divf %cst_24, %cst_24 : f16
          %315 = math.fma %19, %19, %reduced : tensor<6xf16>
          %316 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
          %splat_37 = tensor.splat %c857641886_i32 : tensor<6x8xi32>
          %317 = arith.maxsi %true_23, %true_19 : i1
          %318 = arith.divf %cst_1, %cst : f16
          %319 = tensor.empty() : tensor<6x6xf16>
          %320 = linalg.matmul ins(%17, %11 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%319 : tensor<6x6xf16>) -> tensor<6x6xf16>
          bufferization.dealloc_tensor %0 : tensor<5x6xi16>
          memref.store %c2107142454_i64, %alloc_4[%c3, %c4, %c3] : memref<6x5x6xi64>
          %321 = index.divu %45, %c8
          %322 = math.exp2 %extracted : f16
          %323 = affine.load %alloc_14[%c11, %c5, %c5] : memref<6x5x6xi16>
          %324 = arith.minui %c112927684_i64, %75 : i64
          %325 = arith.maxf %extracted, %cst_1 : f16
          %326 = vector.multi_reduction <maxsi>, %40, %66 [] : vector<6x6xi1> to vector<6x6xi1>
          %327 = math.expm1 %11 : tensor<6x6xf16>
          scf.yield %c857641886_i32 : i32
        }
        %303 = arith.floordivsi %true_19, %true : i1
        %304 = vector.broadcast %c112927684_i64 : i64 to vector<6xi64>
        %305 = vector.maskedload %alloc_10[%c4, %c3, %c3], %53, %304 : memref<6x5x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %306 = math.tan %8 : tensor<5x6xf32>
        %307 = math.tanh %23 : tensor<f16>
        %308 = index.mul %c11, %45
        %309 = math.expm1 %cst_1 : f16
        %310 = tensor.empty() : tensor<6x5x6xi64>
        %311 = tensor.empty() : tensor<6x5x6xi16>
        %312 = math.ipowi %13, %5 : tensor<6x6xi64>
        %313 = arith.muli %c857641886_i32, %c857641886_i32 : i32
        %cst_36 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_36 : f32
      }
    %102 = arith.addi %c112927684_i64, %c112927684_i64 : i64
    %103 = vector.broadcast %c265124073_i32 : i32 to vector<6x8xi32>
    %104 = vector.broadcast %true_23 : i1 to vector<6x8xi1>
    %105 = vector.gather %alloc[%43, %c11, %c1] [%103], %104, %103 : memref<6x5x6xi32>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi32> into vector<6x8xi32>
    affine.store %75, %alloc_4[%c5, %c6, %c3] : memref<6x5x6xi64>
    %106 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
    %107 = math.fma %cst_0, %cst_2, %cst_0 : f32
    %108 = bufferization.clone %alloc : memref<6x5x6xi32> to memref<6x5x6xi32>
    %109 = arith.muli %c312935160_i32, %c857641886_i32 : i32
    %110 = arith.negf %cst : f16
    %111 = index.casts %c112927684_i64 : i64 to index
    %112 = arith.andi %75, %75 : i64
    %113 = arith.remui %true_23, %true_23 : i1
    %114 = math.exp %transposed : tensor<6x6xf16>
    %115 = vector.broadcast %extracted : f16 to vector<6x6xf16>
    %116 = arith.remf %cst_2, %cst_2 : f32
    %117 = arith.divf %cst_24, %cst : f16
    %118 = arith.subi %c265124073_i32, %c525636631_i32 : i32
    %extracted_26 = tensor.extract %8[%c1, %c1] : tensor<5x6xf32>
    %119 = math.tanh %14 : tensor<5x6xf16>
    %120 = math.tanh %2 : tensor<6x6xf16>
    %121 = index.sub %c4, %c1
    %122 = arith.remf %76, %cst_0 : f32
    %123 = index.sizeof
    %124 = arith.maxf %cst_24, %cst : f16
    %125 = math.exp2 %19 : tensor<6xf16>
    %126 = vector.load %alloc_10[%c0, %c2, %c5] : memref<6x5x6xi64>, vector<6x6xi64>
    %127 = vector.broadcast %cst : f16 to vector<6xf16>
    %128 = vector.maskedload %alloc_12[%c1, %c3, %c1], %25, %127 : memref<6x5x6xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %129 = math.log %14 : tensor<5x6xf16>
    scf.if %true_23 {
      %279 = math.log1p %18 : tensor<6x6xf16>
      %280 = math.exp2 %transposed : tensor<6x6xf16>
      %281 = math.log1p %11 : tensor<6x6xf16>
      bufferization.dealloc_tensor %22 : tensor<f16>
      %282 = math.log2 %11 : tensor<6x6xf16>
      %283 = arith.muli %c2107142454_i64, %c466405358_i64 : i64
      %284 = index.ceildivu %123, %c14
      %285 = vector.create_mask %284, %72 : vector<5x6xi1>
    }
    %130 = vector.broadcast %c265124073_i32 : i32 to vector<8x8xi32>
    %131 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %103, %105, %130 : vector<6x8xi32>, vector<6x8xi32> into vector<8x8xi32>
    %132 = math.ctlz %c525636631_i32 : i32
    %extracted_27 = tensor.extract %2[%c2, %c2] : tensor<6x6xf16>
    %133 = math.tanh %22 : tensor<f16>
    %134 = math.floor %101 : tensor<6x5x6xf32>
    %135 = index.casts %true_23 : i1 to index
    %136 = math.log2 %23 : tensor<f16>
    %137 = arith.addi %75, %c466405358_i64 : i64
    %138 = arith.remsi %c265124073_i32, %c265124073_i32 : i32
    %139 = vector.broadcast %cst_0 : f32 to vector<8xf32>
    %140 = vector.transfer_write %139, %8[%c12, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf32>, tensor<5x6xf32>
    %141 = arith.minsi %c1830594341_i32, %c857641886_i32 : i32
    %142 = vector.load %alloc_9[%c4, %c3, %c3] : memref<6x5x6xf32>, vector<5x6xf32>
    %143 = arith.minf %extracted_27, %cst : f16
    %144 = scf.while (%arg2 = %alloc_7) : (memref<6x5x6xi16>) -> memref<6x5x6xi16> {
      %279 = arith.negf %extracted_26 : f32
      %280 = tensor.empty() : tensor<6x5x6xi16>
      scf.if %true {
        %286 = arith.floordivsi %c112927684_i64, %75 : i64
        %287 = math.ceil %4 : tensor<5x6xf32>
        %288 = affine.apply affine_map<(d0) -> (d0 * -128)>(%43)
        %289 = arith.remsi %c27195_i16, %c14056_i16 : i16
        %290 = math.copysign %23, %22 : tensor<f16>
        %291 = arith.cmpi eq, %c265124073_i32, %c312935160_i32 : i32
        %292 = arith.addf %extracted, %cst : f16
        %293 = math.ctlz %c27195_i16 : i16
      } else {
        %splat_37 = tensor.splat %c525636631_i32 : tensor<6x6xi32>
        %286 = math.ceil %2 : tensor<6x6xf16>
        %287 = vector.broadcast %c112927684_i64 : i64 to vector<8xi64>
        %288 = vector.transfer_write %287, %46[%c1, %57] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, tensor<6x6xi64>
        %289 = affine.load %alloc[%c10, %c8, %c2] : memref<6x5x6xi32>
        %290 = arith.divf %cst, %cst_1 : f16
        %291 = arith.maxf %cst_1, %extracted : f16
        %292 = arith.remui %c1830594341_i32, %c525636631_i32 : i32
        %293 = vector.broadcast %c1830594341_i32 : i32 to vector<i32>
        vector.transfer_write %293, %alloc_8[%c15, %c1] : vector<i32>, memref<6x6xi32>
      }
      affine.store %cst_0, %alloc_3[%c5, %c2, %c9] : memref<6x5x6xf32>
      %281 = math.tan %16 : tensor<6x6xf16>
      %282 = arith.addi %c444_i16, %c27195_i16 : i16
      %283 = vector.create_mask %42, %111 : vector<6x6xi1>
      %alloc_36 = memref.alloc() : memref<8x6xi16>
      %284 = tensor.empty() : tensor<6x6xi16>
      %285 = linalg.matmul ins(%12, %alloc_36 : tensor<6x8xi16>, memref<8x6xi16>) outs(%284 : tensor<6x6xi16>) -> tensor<6x6xi16>
      scf.condition(%true_23) %arg2 : memref<6x5x6xi16>
    } do {
    ^bb0(%arg2: memref<6x5x6xi16>):
      %279 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
      %280 = vector.broadcast %true : i1 to vector<8xi1>
      %281 = vector.maskedload %alloc_9[%c0, %c0, %c5], %280, %139 : memref<6x5x6xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %282 = vector.broadcast %cst_1 : f16 to vector<6xf16>
      %283 = vector.transfer_write %282, %2[%c8, %135] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf16>, tensor<6x6xf16>
      %284 = arith.maxsi %75, %c466405358_i64 : i64
      %285 = math.ceil %extracted : f16
      %286 = math.absf %11 : tensor<6x6xf16>
      %287 = index.sub %c9, %c5
      memref.store %75, %alloc_15[%c5, %c5] : memref<6x6xi64>
      %288 = math.atan2 %76, %76 : f32
      %289 = arith.mulf %cst_0, %cst_0 : f32
      %290 = vector.insertelement %true_19, %53[%45 : index] : vector<6xi1>
      %291 = index.sub %c10, %123
      %292 = vector.extract_strided_slice %282 {offsets = [2], sizes = [1], strides = [1]} : vector<6xf16> to vector<1xf16>
      %293 = arith.maxf %extracted_26, %cst_2 : f32
      %294 = arith.shli %true_23, %true : i1
      %295 = arith.subi %true, %true_19 : i1
      scf.yield %alloc_14 : memref<6x5x6xi16>
    }
    scf.if %true_23 {
      affine.store %c265124073_i32, %alloc[%c5, %c10, %c1] : memref<6x5x6xi32>
      vector.print %139 : vector<8xf32>
      %cast_36 = tensor.cast %3 : tensor<5x6xf32> to tensor<?x?xf32>
      %279 = tensor.empty() : tensor<6x6xi64>
      %280 = linalg.matmul ins(%13, %13 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%279 : tensor<6x6xi64>) -> tensor<6x6xi64>
      %281 = vector.create_mask %c3, %123 : vector<6x8xi1>
      %282 = arith.muli %c525636631_i32, %c525636631_i32 : i32
      %283 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %127, %115, %127 : vector<6xf16>, vector<6x6xf16> into vector<6xf16>
      %284 = index.sub %135, %c10
    } else {
      %279 = index.sizeof
      %280 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %53, %40, %25 : vector<6xi1>, vector<6x6xi1> into vector<6xi1>
      scf.if %true_19 {
        %286 = math.sqrt %extracted_26 : f32
        %287 = math.exp2 %cst_24 : f16
        bufferization.dealloc_tensor %transposed : tensor<6x6xf16>
        %288 = math.powf %11, %transposed : tensor<6x6xf16>
        %289 = vector.extract_strided_slice %66 {offsets = [0], sizes = [3], strides = [1]} : vector<6x6xi1> to vector<3x6xi1>
        %290 = index.ceildivu %c11, %123
        %291 = arith.divf %cst_2, %76 : f32
        %292 = math.exp2 %4 : tensor<5x6xf32>
      }
      %281 = arith.minui %75, %c112927684_i64 : i64
      %282 = index.ceildivs %c1, %c14
      %283 = math.fma %76, %cst_0, %extracted_26 : f32
      %284 = arith.maxsi %c857641886_i32, %c857641886_i32 : i32
      %285 = tensor.empty() : tensor<6x6xf16>
      %mapped_36 = linalg.map ins(%2 : tensor<6x6xf16>) outs(%285 : tensor<6x6xf16>)
        (%in: f16) {
          %286 = vector.insert %127, %115 [1] : vector<6xf16> into vector<6x6xf16>
          %287 = vector.flat_transpose %49 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
          %288 = vector.bitcast %40 : vector<6x6xi1> to vector<6x6xi1>
          %289 = arith.negf %cst_24 : f16
          %290 = index.sub %57, %43
          %291 = tensor.empty() : tensor<6x5xf32>
          %292 = tensor.empty() : tensor<5x5xf32>
          %293 = linalg.matmul ins(%4, %291 : tensor<5x6xf32>, tensor<6x5xf32>) outs(%292 : tensor<5x5xf32>) -> tensor<5x5xf32>
          %true_37 = arith.constant true
          %294 = arith.subi %c857641886_i32, %c312935160_i32 : i32
          %295 = vector.create_mask %c10, %35 : vector<6x8xi1>
          %296 = index.mul %111, %c0
          %297 = math.powf %cst_1, %extracted_27 : f16
          %298 = tensor.empty() : tensor<5x5xi32>
          %299 = math.fpowi %292, %298 : tensor<5x5xf32>, tensor<5x5xi32>
          %300 = math.cos %285 : tensor<6x6xf16>
          %301 = math.ceil %extracted_27 : f16
          %302 = bufferization.clone %alloc_3 : memref<6x5x6xf32> to memref<6x5x6xf32>
          %303 = arith.shrui %true, %true_23 : i1
          %304 = arith.muli %true_23, %true_23 : i1
          %305 = arith.cmpi ule, %true_23, %true_23 : i1
          %alloc_38 = memref.alloc() : memref<6x8xf16>
          %306 = arith.floordivsi %c466405358_i64, %c2107142454_i64 : i64
          %307 = arith.shrui %c525636631_i32, %c857641886_i32 : i32
          %308 = math.absf %18 : tensor<6x6xf16>
          %309 = arith.subi %c312935160_i32, %c525636631_i32 : i32
          %310 = arith.xori %75, %c2107142454_i64 : i64
          %alloc_39 = memref.alloc() : memref<6x6xf16>
          memref.tensor_store %17, %alloc_39 : memref<6x6xf16>
          %311 = index.casts %true : i1 to index
          %312 = index.add %c15, %311
          %313 = math.ctlz %c14056_i16 : i16
          %314 = math.expm1 %cst_1 : f16
          %315 = arith.floordivsi %c525636631_i32, %c857641886_i32 : i32
          %316 = vector.multi_reduction <maxui>, %106, %true_23 [0] : vector<6xi1> to i1
          %317 = vector.broadcast %76 : f32 to vector<5xf32>
          %318 = vector.broadcast %true_19 : i1 to vector<5xi1>
          %319 = vector.maskedload %alloc_16[%c2, %c3], %318, %317 : memref<5x6xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
          %cst_40 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_40 : f16
        }
    }
    %145 = index.mul %121, %c3
    %146 = affine.for %arg2 = 0 to 40 iter_args(%arg3 = %6) -> (tensor<6x6xi64>) {
      affine.yield %arg3 : tensor<6x6xi64>
    }
    %147 = math.exp2 %2 : tensor<6x6xf16>
    %148 = arith.divsi %c265124073_i32, %c857641886_i32 : i32
    %149 = index.add %c1, %c15
    %150 = math.roundeven %11 : tensor<6x6xf16>
    %151 = arith.floordivsi %c265124073_i32, %c312935160_i32 : i32
    %152 = arith.remf %extracted, %extracted : f16
    %153 = math.roundeven %cst_1 : f16
    %154 = vector.create_mask %c4, %c5 : vector<5x6xi1>
    %155 = math.roundeven %11 : tensor<6x6xf16>
    %156 = math.ctlz %10 : tensor<6x6xi32>
    %157 = index.sizeof
    %alloc_28 = memref.alloc() : memref<6x6xi64>
    %158 = arith.remf %cst_1, %extracted_27 : f16
    %159 = arith.maxsi %true, %true : i1
    %160 = arith.remf %76, %cst_0 : f32
    %161 = arith.negf %extracted_27 : f16
    %162 = vector.broadcast %76 : f32 to vector<6x8xf32>
    %163 = vector.fma %162, %162, %162 : vector<6x8xf32>
    memref.store %true_23, %alloc_17[%c0, %c6] : memref<6x8xi1>
    %164 = vector.extract_strided_slice %90 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
    %165 = arith.cmpi slt, %c466405358_i64, %c112927684_i64 : i64
    %166 = arith.andi %true, %true_19 : i1
    %167 = index.ceildivu %35, %c13
    %cast_29 = tensor.cast %17 : tensor<6x6xf16> to tensor<?x?xf16>
    %168 = tensor.empty() : tensor<6x6xi64>
    %169 = linalg.matmul ins(%77, %5 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%168 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %collapsed = tensor.collapse_shape %18 [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
    %170 = math.copysign %transposed, %transposed : tensor<6x6xf16>
    %171 = arith.maxsi %c312935160_i32, %c265124073_i32 : i32
    %172 = arith.maxf %extracted, %cst : f16
    %173 = math.log10 %cst_0 : f32
    %174 = vector.extract_strided_slice %103 {offsets = [3], sizes = [3], strides = [1]} : vector<6x8xi32> to vector<3x8xi32>
    %175 = memref.load %alloc_15[%c4, %c3] : memref<6x6xi64>
    %176 = arith.maxsi %c27195_i16, %c14056_i16 : i16
    %177 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_5 : memref<5x6xi1>) outs(%7 : tensor<6x5x6xi1>) {
    ^bb0(%in: i1, %out: i1):
      %279 = arith.remf %cst, %extracted : f16
      %280 = vector.maskedload %alloc_16[%c3, %c3], %53, %24 : memref<5x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      scf.if %true {
        %308 = vector.broadcast %c444_i16 : i16 to vector<i16>
        %309 = vector.transfer_write %308, %12[%135, %c2] : vector<i16>, tensor<6x8xi16>
        %310 = vector.insert %106, %66 [0] : vector<6xi1> into vector<6x6xi1>
        %311 = math.cttz %5 : tensor<6x6xi64>
        %312 = vector.insert %c466405358_i64, %90 [1] : i64 into vector<2xi64>
        %313 = tensor.empty() : tensor<5x6xi1>
        %314 = arith.minsi %c27195_i16, %c14056_i16 : i16
        %315 = math.atan2 %3, %8 : tensor<5x6xf32>
        %316 = arith.divui %c857641886_i32, %c312935160_i32 : i32
      }
      %281 = math.roundeven %2 : tensor<6x6xf16>
      %282 = math.ipowi %0, %0 : tensor<5x6xi16>
      %expanded = tensor.expand_shape %77 [[0], [1, 2]] : tensor<6x6xi64> into tensor<6x6x1xi64>
      %283 = arith.divsi %c2107142454_i64, %75 : i64
      scf.if %true_23 {
        %308 = math.log2 %transposed : tensor<6x6xf16>
        %309 = math.floor %17 : tensor<6x6xf16>
        %310 = index.ceildivu %c1, %c2
        %311 = math.absf %cst : f16
        %extracted_38 = tensor.extract %splat[%c2, %c4] : tensor<6x6xi64>
        %312 = arith.andi %out, %in : i1
        %313 = index.casts %c1830594341_i32 : i32 to index
        %314 = arith.andi %c14056_i16, %c27195_i16 : i16
      }
      bufferization.dealloc_tensor %23 : tensor<f16>
      %inserted = tensor.insert %true into %7[%c3, %c4, %c3] : tensor<6x5x6xi1>
      %284 = arith.floordivsi %c466405358_i64, %c466405358_i64 : i64
      %285 = vector.broadcast %extracted_26 : f32 to vector<6x6xf32>
      %286 = vector.fma %285, %285, %285 : vector<6x6xf32>
      %cst_36 = arith.constant 1.996800e+04 : f16
      %287 = arith.shrui %c27195_i16, %c14056_i16 : i16
      %288 = index.floordivs %c3, %35
      %289 = tensor.empty() : tensor<6x6xf16>
      %290 = linalg.matmul ins(%2, %11 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%289 : tensor<6x6xf16>) -> tensor<6x6xf16>
      %291 = vector.broadcast %cst_1 : f16 to vector<8xf16>
      %292 = vector.broadcast %true : i1 to vector<8xi1>
      %293 = vector.maskedload %alloc_12[%c5, %c0, %c5], %292, %291 : memref<6x5x6xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %alloc_37 = memref.alloc() : memref<6x5x6xi1>
      %294 = arith.andi %c466405358_i64, %c466405358_i64 : i64
      %295 = memref.realloc %alloc_18 : memref<6xf16> to memref<5xf16>
      %296 = math.atan2 %14, %14 : tensor<5x6xf16>
      %297 = arith.remsi %c525636631_i32, %c265124073_i32 : i32
      %298 = math.log %cst_1 : f16
      %299 = math.powf %reduced, %reduced : tensor<6xf16>
      %300 = index.castu %167 : index to i32
      %301 = vector.extract_strided_slice %90 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
      %302 = affine.for %arg2 = 0 to 117 iter_args(%arg3 = %c8) -> (index) {
        affine.yield %arg3 : index
      }
      %303 = index.sizeof
      %304 = math.log2 %19 : tensor<6xf16>
      %305 = vector.broadcast %c12 : index to vector<6xindex>
      vector.scatter %31[%c5, %c3, %c0] [%305], %53, %26 : memref<6x5x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
      %306 = math.log2 %101 : tensor<6x5x6xf32>
      %307 = math.ipowi %splat, %splat : tensor<6x6xi64>
      linalg.yield %out : i1
    } -> tensor<6x5x6xi1>
    %178 = vector.broadcast %cst_0 : f32 to vector<8xf32>
    %179 = vector.transfer_write %178, %3[%c1, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf32>, tensor<5x6xf32>
    %180 = index.sub %167, %35
    %181 = arith.cmpi ule, %75, %c466405358_i64 : i64
    %182 = math.tan %cst_0 : f32
    %183 = vector.broadcast %cst_1 : f16 to vector<6x8xf16>
    %184 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %115, %128, %128 : vector<6x6xf16>, vector<6xf16> into vector<6xf16>
    %185 = index.mul %35, %c1
    %186 = math.exp2 %4 : tensor<5x6xf32>
    %187 = vector.maskedload %alloc_12[%c4, %c2, %c0], %106, %128 : memref<6x5x6xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %188 = vector.transpose %85, [0] : vector<3xf32> to vector<3xf32>
    %189 = math.floor %76 : f32
    %190 = index.ceildivu %c2, %c14
    %191 = arith.subi %c466405358_i64, %c2107142454_i64 : i64
    %192 = arith.cmpi slt, %c525636631_i32, %c857641886_i32 : i32
    %193 = arith.shrui %c1830594341_i32, %c525636631_i32 : i32
    vector.print %106 : vector<6xi1>
    %194 = math.log2 %17 : tensor<6x6xf16>
    %195 = math.tanh %23 : tensor<f16>
    %196 = math.ceil %4 : tensor<5x6xf32>
    %197 = arith.maxsi %c27195_i16, %c14056_i16 : i16
    affine.store %cst_0, %alloc_16[%c1, %c14] : memref<5x6xf32>
    %198 = math.ipowi %splat, %59 : tensor<6x6xi64>
    %199 = arith.floordivsi %c112927684_i64, %c466405358_i64 : i64
    %200 = math.exp %17 : tensor<6x6xf16>
    %201 = arith.negf %extracted_27 : f16
    %202 = index.sub %42, %135
    %203 = arith.ceildivsi %true, %true : i1
    %204 = arith.remsi %true_19, %true_23 : i1
    %205 = math.log %18 : tensor<6x6xf16>
    %206 = math.copysign %cst, %cst : f16
    %207 = arith.andi %75, %75 : i64
    %208 = math.log2 %cst_24 : f16
    %209 = memref.alloca_scope  -> (i16) {
      %279 = math.expm1 %collapsed : tensor<36xf16>
      %280 = arith.remsi %c2107142454_i64, %c112927684_i64 : i64
      %281 = arith.cmpi ult, %c312935160_i32, %c265124073_i32 : i32
      %282 = arith.maxf %cst, %cst_1 : f16
      memref.alloca_scope  {
        %310 = arith.negf %extracted_26 : f32
        %311 = bufferization.to_memref %reduced : memref<6xf16>
        %312 = vector.broadcast %cst_0 : f32 to vector<5x6xf32>
        %313 = vector.fma %312, %312, %142 : vector<5x6xf32>
        %c0_i16 = arith.constant 0 : i16
        %314 = vector.transfer_read %12[%123, %c0], %c0_i16 : tensor<6x8xi16>, vector<8xi16>
        %315 = index.sizeof
        %alloc_36 = memref.alloc() : memref<6x6xi1>
        memref.tensor_store %15, %alloc_36 : memref<6x6xi1>
        %316 = arith.xori %c444_i16, %c444_i16 : i16
        %317 = arith.divsi %true_23, %true_19 : i1
        %alloc_37 = memref.alloc() : memref<5x6xf32>
        %318 = bufferization.to_memref %46 : memref<6x6xi64>
        %319 = tensor.empty() : tensor<6x6xf16>
        %320 = linalg.matmul ins(%transposed, %transposed : tensor<6x6xf16>, tensor<6x6xf16>) outs(%319 : tensor<6x6xf16>) -> tensor<6x6xf16>
        affine.store %c2107142454_i64, %318[%c0, %c9] : memref<6x6xi64>
        %321 = index.ceildivu %c10, %c14
        %322 = arith.maxf %cst_0, %cst_0 : f32
        %323 = memref.realloc %alloc_18 : memref<6xf16> to memref<8xf16>
        %324 = vector.outerproduct %106, %53, %40 {kind = #vector.kind<minsi>} : vector<6xi1>, vector<6xi1>
        %325 = math.roundeven %4 : tensor<5x6xf32>
        %326 = arith.shrui %75, %c466405358_i64 : i64
        %327 = math.ipowi %c312935160_i32, %c525636631_i32 : i32
        %328 = math.log %19 : tensor<6xf16>
        %329 = arith.divf %76, %cst_2 : f32
        %330 = arith.divsi %c444_i16, %c444_i16 : i16
        %331 = vector.broadcast %cst_0 : f32 to vector<5x6xf32>
        %332 = vector.fma %331, %312, %331 : vector<5x6xf32>
        %333 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - 1)>(%c4, %c0, %c8, %c8)
        %334 = index.mul %c6, %c12
        %335 = vector.broadcast %c265124073_i32 : i32 to vector<5xi32>
        %336 = vector.transfer_write %335, %10[%c12, %45] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi32>, tensor<6x6xi32>
        %337 = math.fma %18, %18, %11 : tensor<6x6xf16>
        %338 = index.sizeof
        %339 = arith.muli %c1830594341_i32, %c857641886_i32 : i32
        %340 = tensor.empty() : tensor<6x6xi64>
        %341 = linalg.matmul ins(%13, %46 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%340 : tensor<6x6xi64>) -> tensor<6x6xi64>
        %342 = vector.bitcast %139 : vector<8xf32> to vector<8xf32>
        %c20438_i16 = arith.constant 20438 : i16
      }
      %283 = arith.minf %cst_0, %cst_0 : f32
      %284 = math.fma %transposed, %2, %17 : tensor<6x6xf16>
      %285 = bufferization.clone %alloc_8 : memref<6x6xi32> to memref<6x6xi32>
      %286 = vector.create_mask %190, %202 : vector<6x8xi1>
      %287 = math.log1p %17 : tensor<6x6xf16>
      %288 = arith.divf %cst, %cst : f16
      %289 = arith.subi %true, %true_23 : i1
      %290 = arith.divf %extracted_26, %76 : f32
      %291 = arith.shrui %true_19, %true_23 : i1
      %292 = arith.minsi %c444_i16, %c14056_i16 : i16
      %293 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %178, %162, %24 : vector<8xf32>, vector<6x8xf32> into vector<6xf32>
      %294 = vector.broadcast %c27195_i16 : i16 to vector<i16>
      %295 = vector.transfer_write %294, %0[%c10, %c9] : vector<i16>, tensor<5x6xi16>
      %296 = memref.load %alloc_6[%c5, %c1, %c1] : memref<6x5x6xi64>
      %297 = arith.maxsi %c2107142454_i64, %c112927684_i64 : i64
      %298 = index.ceildivu %72, %57
      %299 = arith.maxui %c265124073_i32, %c525636631_i32 : i32
      %300 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
      %301 = arith.divf %cst_1, %cst_24 : f16
      %302 = vector.broadcast %extracted : f16 to vector<8xf16>
      %303 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %127, %183, %302 : vector<6xf16>, vector<6x8xf16> into vector<8xf16>
      %304 = scf.index_switch %c5 -> memref<6x8xi32> 
      case 1 {
        %310 = math.fma %reduced, %reduced, %reduced : tensor<6xf16>
        %311 = index.sub %42, %111
        %312 = arith.subi %c1830594341_i32, %c265124073_i32 : i32
        %313 = tensor.empty() : tensor<5x6xf16>
        %314 = linalg.matmul ins(%14, %11 : tensor<5x6xf16>, tensor<6x6xf16>) outs(%313 : tensor<5x6xf16>) -> tensor<5x6xf16>
        %315 = arith.addf %cst_0, %cst_2 : f32
        %316 = vector.broadcast %cst : f16 to vector<6xf16>
        %317 = vector.transfer_write %316, %2[%123, %157] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf16>, tensor<6x6xf16>
        %alloc_36 = memref.alloc() : memref<8x6xi16>
        %318 = tensor.empty() : tensor<6x6xi16>
        %319 = linalg.matmul ins(%12, %alloc_36 : tensor<6x8xi16>, memref<8x6xi16>) outs(%318 : tensor<6x6xi16>) -> tensor<6x6xi16>
        %320 = vector.broadcast %c312935160_i32 : i32 to vector<3x6xi32>
        %321 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %174, %103, %320 : vector<3x8xi32>, vector<6x8xi32> into vector<3x6xi32>
        %322 = arith.remf %cst_0, %extracted_26 : f32
        %323 = math.ceil %cst_2 : f32
        %alloc_37 = memref.alloc() : memref<5x6xf16>
        %324 = arith.ceildivsi %75, %c466405358_i64 : i64
        %325 = math.tanh %extracted : f16
        bufferization.dealloc_tensor %8 : tensor<5x6xf32>
        %326 = index.mul %c14, %c11
        %327 = arith.remf %extracted_27, %extracted : f16
        %alloc_38 = memref.alloc() : memref<6x8xi32>
        scf.yield %alloc_38 : memref<6x8xi32>
      }
      case 2 {
        %310 = math.exp %2 : tensor<6x6xf16>
        %311 = vector.broadcast %c857641886_i32 : i32 to vector<6xi32>
        %312 = vector.maskedload %285[%c5, %c1], %53, %311 : memref<6x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %313 = arith.floordivsi %true, %true_19 : i1
        %314 = index.divu %c15, %43
        %315 = math.atan2 %cst_0, %76 : f32
        %316 = math.sqrt %2 : tensor<6x6xf16>
        memref.store %cst_0, %31[%c0, %c3, %c2] : memref<6x5x6xf32>
        %317 = math.atan2 %3, %8 : tensor<5x6xf32>
        %318 = math.ceil %extracted_26 : f32
        %319 = vector.broadcast %c466405358_i64 : i64 to vector<5x6xi64>
        %c1928471270_i32 = arith.constant 1928471270 : i32
        %320 = bufferization.clone %alloc_3 : memref<6x5x6xf32> to memref<6x5x6xf32>
        %321 = math.fpowi %8, %splat_20 : tensor<5x6xf32>, tensor<5x6xi32>
        %322 = arith.remsi %true, %true_23 : i1
        %323 = arith.minui %c525636631_i32, %c525636631_i32 : i32
        %324 = vector.insert %26, %142 [3] : vector<6xf32> into vector<5x6xf32>
        %alloc_36 = memref.alloc() : memref<6x8xi32>
        scf.yield %alloc_36 : memref<6x8xi32>
      }
      case 3 {
        %310 = math.tan %11 : tensor<6x6xf16>
        %311 = arith.cmpi ult, %true, %true : i1
        %312 = math.copysign %transposed, %16 : tensor<6x6xf16>
        %313 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d1, d2 + 4)>(%121, %c0, %185, %c12)
        %314 = math.tan %cst_24 : f16
        %315 = math.fma %cst_1, %cst_1, %cst_1 : f16
        %316 = memref.load %31[%c4, %c0, %c4] : memref<6x5x6xf32>
        %317 = math.log2 %4 : tensor<5x6xf32>
        %318 = vector.broadcast %cst_0 : f32 to vector<f32>
        vector.transfer_write %318, %31[%c10, %35, %c1] : vector<f32>, memref<6x5x6xf32>
        %319 = index.maxs %72, %185
        %320 = math.sqrt %4 : tensor<5x6xf32>
        %321 = arith.minsi %c525636631_i32, %c525636631_i32 : i32
        %322 = math.ceil %19 : tensor<6xf16>
        %323 = vector.broadcast %c112927684_i64 : i64 to vector<6x5x6xi64>
        %324 = vector.broadcast %c466405358_i64 : i64 to vector<6xi64>
        %325 = vector.transfer_write %324, %5[%c0, %145] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi64>, tensor<6x6xi64>
        %326 = arith.cmpi ule, %true_19, %true_23 : i1
        %alloc_36 = memref.alloc() : memref<6x8xi32>
        scf.yield %alloc_36 : memref<6x8xi32>
      }
      case 4 {
        %310 = arith.xori %c27195_i16, %c444_i16 : i16
        %311 = math.atan2 %extracted, %extracted : f16
        %alloc_36 = memref.alloc() : memref<6x8xi64>
        %312 = arith.minf %extracted_26, %76 : f32
        %313 = math.fma %23, %23, %22 : tensor<f16>
        %expanded = tensor.expand_shape %13 [[0], [1, 2]] : tensor<6x6xi64> into tensor<6x6x1xi64>
        %inserted = tensor.insert %76 into %4[%c4, %c3] : tensor<5x6xf32>
        %314 = vector.broadcast %c112927684_i64 : i64 to vector<5xi64>
        %315 = vector.broadcast %true : i1 to vector<5xi1>
        %316 = vector.maskedload %alloc_15[%c0, %c3], %315, %314 : memref<6x6xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %317 = tensor.empty() : tensor<6x8xf16>
        %318 = index.casts %c2 : index to i32
        %319 = math.atan2 %101, %101 : tensor<6x5x6xf32>
        %320 = math.fma %3, %3, %3 : tensor<5x6xf32>
        %321 = math.floor %extracted : f16
        %322 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
        %323 = vector.fma %322, %322, %322 : vector<6x6xf32>
        %324 = tensor.empty() : tensor<6x6xf16>
        %325 = linalg.matmul ins(%16, %18 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%324 : tensor<6x6xf16>) -> tensor<6x6xf16>
        %rank = tensor.rank %collapsed : tensor<36xf16>
        %alloc_37 = memref.alloc() : memref<6x8xi32>
        scf.yield %alloc_37 : memref<6x8xi32>
      }
      default {
        %310 = math.roundeven %3 : tensor<5x6xf32>
        %311 = vector.broadcast %extracted_26 : f32 to vector<5x6xf32>
        memref.assume_alignment %alloc_11, 1 : memref<6x8xi64>
        %312 = arith.floordivsi %c265124073_i32, %c857641886_i32 : i32
        %313 = arith.subi %c265124073_i32, %c312935160_i32 : i32
        %314 = vector.outerproduct %25, %53, %40 {kind = #vector.kind<maxsi>} : vector<6xi1>, vector<6xi1>
        %315 = math.ceil %cst_2 : f32
        %316 = arith.cmpi ugt, %true_23, %true_23 : i1
        %317 = vector.load %alloc_7[%c4, %c0, %c3] : memref<6x5x6xi16>, vector<6x6xi16>
        %true_36 = index.bool.constant true
        %extracted_37 = tensor.extract %10[%c2, %c3] : tensor<6x6xi32>
        %318 = math.sqrt %4 : tensor<5x6xf32>
        %319 = vector.broadcast %true_19 : i1 to vector<5xi1>
        %320 = vector.transfer_write %319, %7[%111, %c4, %72] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, tensor<6x5x6xi1>
        vector.print %162 : vector<6x8xf32>
        %321 = arith.shli %c265124073_i32, %c525636631_i32 : i32
        %322 = arith.maxsi %75, %75 : i64
        %alloc_38 = memref.alloc() : memref<6x8xi32>
        scf.yield %alloc_38 : memref<6x8xi32>
      }
      %305 = math.absf %14 : tensor<5x6xf16>
      scf.index_switch %c12 
      case 1 {
        %310 = arith.minsi %true, %true_23 : i1
        %311 = math.fpowi %cst_0, %c265124073_i32 : f32, i32
        %312 = math.floor %19 : tensor<6xf16>
        %alloc_36 = memref.alloc() : memref<8x8xi16>
        %313 = tensor.empty() : tensor<6x8xi16>
        %314 = linalg.matmul ins(%12, %alloc_36 : tensor<6x8xi16>, memref<8x8xi16>) outs(%313 : tensor<6x8xi16>) -> tensor<6x8xi16>
        %315 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
        %316 = vector.load %alloc_15[%c1, %c5] : memref<6x6xi64>, vector<6x5x6xi64>
        %317 = math.tan %extracted_27 : f16
        %318 = arith.addi %c525636631_i32, %c525636631_i32 : i32
        memref.tensor_store %8, %alloc_16 : memref<5x6xf32>
        %319 = vector.shuffle %178, %49 [2, 6, 7, 8] : vector<8xf32>, vector<2xf32>
        %320 = bufferization.clone %alloc_5 : memref<5x6xi1> to memref<5x6xi1>
        %321 = math.absf %extracted : f16
        affine.store %c112927684_i64, %alloc_15[%c5, %c12] : memref<6x6xi64>
        %322 = affine.load %alloc_3[%c12, %c0, %c10] : memref<6x5x6xf32>
        %323 = arith.addf %cst_24, %cst : f16
        %324 = index.castu %c27195_i16 : i16 to index
        scf.yield
      }
      case 2 {
        %310 = arith.minui %c466405358_i64, %c466405358_i64 : i64
        %311 = math.ceil %76 : f32
        %312 = math.log2 %extracted_27 : f16
        %313 = arith.divf %extracted_26, %cst_0 : f32
        %314 = arith.shrui %c312935160_i32, %c312935160_i32 : i32
        %315 = arith.subi %c2107142454_i64, %75 : i64
        %extracted_36 = tensor.extract %cast[%c0, %c0] : tensor<?x?xi1>
        %316 = arith.divsi %75, %c2107142454_i64 : i64
        %false = index.bool.constant false
        %317 = arith.negf %76 : f32
        %318 = arith.mulf %cst_2, %76 : f32
        %319 = vector.create_mask %123, %167, %c1 : vector<6x5x6xi1>
        %320 = vector.broadcast %cst_2 : f32 to vector<5x6xf32>
        %321 = vector.fma %320, %320, %142 : vector<5x6xf32>
        %322 = arith.xori %c2107142454_i64, %75 : i64
        %323 = arith.floordivsi %false, %extracted_36 : i1
        %324 = math.floor %cst_0 : f32
        scf.yield
      }
      case 3 {
        %310 = vector.broadcast %extracted_26 : f32 to vector<6x8xf32>
        %311 = vector.fma %310, %163, %163 : vector<6x8xf32>
        %312 = arith.minui %c857641886_i32, %c265124073_i32 : i32
        %313 = vector.shuffle %154, %66 [2, 3, 4, 5, 7, 9] : vector<5x6xi1>, vector<6x6xi1>
        %cst_36 = arith.constant 5.420800e+04 : f16
        %314 = arith.maxsi %true, %true_23 : i1
        %315 = index.divu %42, %57
        %316 = math.ipowi %9, %9 : tensor<6x6xi32>
        %317 = index.ceildivu %111, %145
        %318 = arith.addi %c112927684_i64, %c2107142454_i64 : i64
        %319 = tensor.empty() : tensor<6x6xi32>
        %320 = linalg.matmul ins(%9, %9 : tensor<6x6xi32>, tensor<6x6xi32>) outs(%319 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %321 = arith.negf %cst_24 : f16
        %322 = arith.minsi %c857641886_i32, %c265124073_i32 : i32
        %323 = bufferization.clone %alloc_7 : memref<6x5x6xi16> to memref<6x5x6xi16>
        %324 = vector.extract_strided_slice %106 {offsets = [3], sizes = [3], strides = [1]} : vector<6xi1> to vector<3xi1>
        %325 = math.roundeven %14 : tensor<5x6xf16>
        %326 = math.absf %reduced : tensor<6xf16>
        scf.yield
      }
      default {
        %splat_36 = tensor.splat %75 : tensor<6x6xi64>
        %310 = arith.cmpi ule, %true_23, %true_19 : i1
        vector.print %106 : vector<6xi1>
        %311 = math.exp2 %22 : tensor<f16>
        %alloc_37 = memref.alloc() : memref<5x6xi16>
        %312 = vector.flat_transpose %90 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %rank = tensor.rank %splat_20 : tensor<5x6xi32>
        %313 = math.ceil %cst_0 : f32
        %314 = vector.load %31[%c4, %c1, %c0] : memref<6x5x6xf32>, vector<5x6xf32>
        %315 = math.ceil %19 : tensor<6xf16>
        %316 = vector.outerproduct %25, %53, %66 {kind = #vector.kind<minui>} : vector<6xi1>, vector<6xi1>
        memref.store %c14056_i16, %alloc_14[%c1, %c4, %c3] : memref<6x5x6xi16>
        %317 = math.log %4 : tensor<5x6xf32>
        %318 = vector.bitcast %174 : vector<3x8xi32> to vector<3x8xf32>
        memref.tensor_store %6, %alloc_15 : memref<6x6xi64>
        %319 = arith.negf %extracted : f16
      }
      %306 = index.castu %c1830594341_i32 : i32 to index
      %307 = math.tanh %14 : tensor<5x6xf16>
      %308 = math.tanh %17 : tensor<6x6xf16>
      %309 = vector.create_mask %c0, %180 : vector<6x8xi1>
      affine.store %true_23, %alloc_17[%c12, %c5] : memref<6x8xi1>
      memref.alloca_scope.return %c14056_i16 : i16
    }
    %210 = math.log2 %4 : tensor<5x6xf32>
    %211 = arith.maxsi %c1830594341_i32, %c312935160_i32 : i32
    %212 = vector.outerproduct %128, %187, %115 {kind = #vector.kind<minf>} : vector<6xf16>, vector<6xf16>
    %213 = tensor.empty() : tensor<f16>
    %mapped_30 = linalg.map ins(%23 : tensor<f16>) outs(%213 : tensor<f16>)
      (%in: f16) {
        %279 = math.log %22 : tensor<f16>
        %280 = math.powf %cst_2, %cst_0 : f32
        %281 = arith.maxf %cst_1, %cst_24 : f16
        %282 = bufferization.to_tensor %alloc_9 : memref<6x5x6xf32>
        %splat_36 = tensor.splat %extracted : tensor<6x8xf16>
        %283 = math.ipowi %0, %0 : tensor<5x6xi16>
        %284 = vector.broadcast %c312935160_i32 : i32 to vector<8xi32>
        vector.transfer_write %284, %alloc_8[%157, %185] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi32>, memref<6x6xi32>
        %285 = math.ctpop %209 : i16
        %286 = arith.remui %c857641886_i32, %c525636631_i32 : i32
        memref.assume_alignment %alloc_11, 4 : memref<6x8xi64>
        %287 = arith.minui %c14056_i16, %209 : i16
        %288 = math.ipowi %true, %true_19 : i1
        %289 = arith.minsi %c265124073_i32, %c857641886_i32 : i32
        %cast_37 = tensor.cast %8 : tensor<5x6xf32> to tensor<?x?xf32>
        %extracted_38 = tensor.extract %0[%c1, %c4] : tensor<5x6xi16>
        %290 = arith.subi %c466405358_i64, %75 : i64
        %291 = scf.while (%arg2 = %cst) : (f16) -> f16 {
          %307 = arith.maxf %cst_24, %cst_1 : f16
          %308 = arith.maxui %c857641886_i32, %c265124073_i32 : i32
          %c534541834_i32 = arith.constant 534541834 : i32
          %309 = math.sqrt %4 : tensor<5x6xf32>
          %310 = arith.shrui %c112927684_i64, %c112927684_i64 : i64
          %311 = vector.insert %extracted_26, %85 [1] : f32 into vector<3xf32>
          affine.store %true, %alloc_17[%c14, %c13] : memref<6x8xi1>
          %312 = vector.extract_strided_slice %66 {offsets = [4], sizes = [1], strides = [1]} : vector<6x6xi1> to vector<1x6xi1>
          scf.condition(%true_23) %cst_24 : f16
        } do {
        ^bb0(%arg2: f16):
          memref.store %extracted_26, %alloc_3[%c5, %c0, %c1] : memref<6x5x6xf32>
          %307 = arith.minui %c27195_i16, %extracted_38 : i16
          memref.store %209, %alloc_7[%c5, %c0, %c4] : memref<6x5x6xi16>
          %308 = math.log1p %213 : tensor<f16>
          %309 = index.sub %c4, %c8
          %310 = math.log %extracted_26 : f32
          %311 = vector.broadcast %extracted_26 : f32 to vector<6x5x6xf32>
          %312 = vector.fma %311, %311, %311 : vector<6x5x6xf32>
          %313 = vector.load %alloc[%c5, %c4, %c5] : memref<6x5x6xi32>, vector<6x8xi32>
          %314 = bufferization.to_tensor %alloc_13 : memref<6x5x6xf32>
          %315 = math.log10 %101 : tensor<6x5x6xf32>
          %316 = index.add %121, %202
          %317 = vector.insertelement %cst_24, %127[%c15 : index] : vector<6xf16>
          %318 = vector.load %alloc_3[%c2, %c2, %c3] : memref<6x5x6xf32>, vector<6x5x6xf32>
          %319 = math.copysign %3, %4 : tensor<5x6xf32>
          %320 = vector.flat_transpose %53 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
          %321 = arith.remf %extracted, %extracted : f16
          scf.yield %extracted_27 : f16
        }
        %292 = math.fma %4, %4, %3 : tensor<5x6xf32>
        %293 = math.floor %splat_36 : tensor<6x8xf16>
        %true_39 = index.bool.constant true
        %294 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
        %295 = arith.maxsi %c312935160_i32, %c857641886_i32 : i32
        %296 = math.copysign %213, %22 : tensor<f16>
        %297 = arith.maxui %c525636631_i32, %c525636631_i32 : i32
        %298 = math.ceil %17 : tensor<6x6xf16>
        %299 = arith.floordivsi %c27195_i16, %c444_i16 : i16
        %300 = vector.broadcast %cst_2 : f32 to vector<5x8xf32>
        %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %142, %163, %300 : vector<5x6xf32>, vector<6x8xf32> into vector<5x8xf32>
        %302 = bufferization.clone %31 : memref<6x5x6xf32> to memref<6x5x6xf32>
        %303 = memref.atomic_rmw maxf %extracted_26, %alloc_16[%c4, %c4] : (f32, memref<5x6xf32>) -> f32
        %304 = math.ceil %282 : tensor<6x5x6xf32>
        %305 = bufferization.clone %108 : memref<6x5x6xi32> to memref<6x5x6xi32>
        %306 = math.ipowi %12, %12 : tensor<6x8xi16>
        %cst_40 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_40 : f16
      }
    memref.store %c14056_i16, %alloc_14[%c0, %c1, %c4] : memref<6x5x6xi16>
    %214 = vector.outerproduct %128, %187, %115 {kind = #vector.kind<minf>} : vector<6xf16>, vector<6xf16>
    %215 = math.roundeven %cst_0 : f32
    %216 = index.maxs %c1, %180
    %alloc_31 = memref.alloc() : memref<5x6xi1>
    %217 = arith.muli %75, %c466405358_i64 : i64
    %218 = index.mul %c4, %157
    %219 = math.expm1 %2 : tensor<6x6xf16>
    %220 = index.sub %202, %157
    %221 = affine.load %alloc_11[%c14, %c15] : memref<6x8xi64>
    %222 = vector.create_mask %149, %149 : vector<6x8xi1>
    %223 = vector.broadcast %76 : f32 to vector<6x6xf32>
    %224 = vector.outerproduct %24, %26, %223 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
    %225 = math.absi %15 : tensor<6x6xi1>
    %226 = math.ceil %11 : tensor<6x6xf16>
    %227 = arith.maxui %true, %true_19 : i1
    %228 = arith.ceildivsi %true, %true_23 : i1
    %229 = tensor.empty() : tensor<6x5x6xi16>
    %mapped_32 = linalg.map ins(%alloc_7, %alloc_7, %alloc_14 : memref<6x5x6xi16>, memref<6x5x6xi16>, memref<6x5x6xi16>) outs(%229 : tensor<6x5x6xi16>)
      (%in: i16, %in_36: i16, %in_37: i16) {
        %extracted_38 = tensor.extract %9[%c4, %c0] : tensor<6x6xi32>
        %279 = memref.load %alloc_13[%c0, %c4, %c0] : memref<6x5x6xf32>
        %280 = vector.maskedload %alloc_3[%c1, %c0, %c3], %25, %26 : memref<6x5x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %281 = index.sizeof
        %282 = arith.minui %c466405358_i64, %c112927684_i64 : i64
        %283 = vector.insertelement %cst_24, %187[%218 : index] : vector<6xf16>
        affine.store %221, %alloc_11[%c11, %c1] : memref<6x8xi64>
        bufferization.dealloc_tensor %0 : tensor<5x6xi16>
        memref.tensor_store %13, %alloc_15 : memref<6x6xi64>
        %284 = bufferization.to_tensor %alloc_16 : memref<5x6xf32>
        %285 = arith.mulf %cst_2, %extracted_26 : f32
        affine.store %true, %alloc_17[%c2, %c15] : memref<6x8xi1>
        %286 = vector.create_mask %281, %145 : vector<6x8xi1>
        %extracted_39 = tensor.extract %168[%c0, %c3] : tensor<6x6xi64>
        %287 = vector.bitcast %164 : vector<1xi64> to vector<1xi64>
        %288 = scf.while (%arg2 = %31) : (memref<6x5x6xf32>) -> memref<6x5x6xf32> {
          %303 = index.sizeof
          %304 = math.log2 %14 : tensor<5x6xf16>
          %305 = arith.shrui %221, %75 : i64
          %306 = vector.load %alloc_17[%c3, %c1] : memref<6x8xi1>, vector<6x5x6xi1>
          %307 = arith.shrui %c857641886_i32, %c525636631_i32 : i32
          %308 = vector.reduction <mul>, %106 : vector<6xi1> into i1
          %309 = vector.broadcast %c444_i16 : i16 to vector<5x6xi16>
          %310 = arith.divf %cst, %extracted : f16
          scf.condition(%true) %arg2 : memref<6x5x6xf32>
        } do {
        ^bb0(%arg2: memref<6x5x6xf32>):
          %303 = vector.shuffle %93, %93 [0, 1] : vector<f32>, vector<f32>
          %304 = index.casts %c27195_i16 : i16 to index
          affine.store %true_19, %alloc_17[%c7, %c12] : memref<6x8xi1>
          %305 = arith.subi %c27195_i16, %c14056_i16 : i16
          %false = arith.constant false
          %306 = vector.transfer_read %alloc_17[%121, %c1], %false : memref<6x8xi1>, vector<6xi1>
          memref.store %75, %alloc_4[%c4, %c3, %c3] : memref<6x5x6xi64>
          %307 = math.ctlz %extracted_38 : i32
          %cast_41 = tensor.cast %3 : tensor<5x6xf32> to tensor<?x?xf32>
          %308 = arith.negf %extracted_26 : f32
          %309 = affine.min affine_map<(d0) -> ((d0 ceildiv 8) * 128)>(%57)
          %splat_42 = tensor.splat %true_23 : tensor<6x8xi1>
          %310 = vector.bitcast %139 : vector<8xf32> to vector<8xf32>
          %311 = affine.load %alloc_13[%c12, %c11, %c5] : memref<6x5x6xf32>
          %312 = math.powf %extracted_26, %311 : f32
          %313 = index.ceildivu %121, %180
          %314 = bufferization.to_memref %13 : memref<6x6xi64>
          scf.yield %arg2 : memref<6x5x6xf32>
        }
        %cast_40 = tensor.cast %8 : tensor<5x6xf32> to tensor<?x?xf32>
        %289 = bufferization.clone %alloc_13 : memref<6x5x6xf32> to memref<6x5x6xf32>
        %290 = index.casts %57 : index to i32
        %291 = arith.remf %cst_1, %cst : f16
        %292 = math.tanh %cst_24 : f16
        %293 = index.maxs %c7, %190
        scf.if %true_19 {
          %303 = arith.remui %true_19, %true_23 : i1
          %304 = math.tanh %cst_0 : f32
          %305 = arith.shrui %c265124073_i32, %c857641886_i32 : i32
          %306 = arith.maxsi %c444_i16, %in_37 : i16
          %307 = affine.min affine_map<(d0, d1) -> (d1 - (d0 ceildiv 16) mod 32 - 64)>(%185, %135)
          %308 = tensor.empty() : tensor<6x6xi1>
          %309 = linalg.matmul ins(%15, %15 : tensor<6x6xi1>, tensor<6x6xi1>) outs(%308 : tensor<6x6xi1>) -> tensor<6x6xi1>
          %310 = math.tan %4 : tensor<5x6xf32>
          %311 = arith.remsi %c466405358_i64, %c112927684_i64 : i64
        }
        %294 = vector.insertelement %cst_2, %139[%145 : index] : vector<8xf32>
        %295 = vector.maskedload %alloc_13[%c1, %c4, %c0], %53, %26 : memref<6x5x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %296 = arith.addf %extracted_26, %extracted_26 : f32
        %297 = math.ceil %3 : tensor<5x6xf32>
        %298 = vector.insert %extracted_26, %295 [2] : f32 into vector<6xf32>
        %299 = vector.broadcast %cst_24 : f16 to vector<6x5x6xf16>
        %300 = arith.mulf %extracted_27, %extracted : f16
        %301 = math.absf %reduced : tensor<6xf16>
        %302 = vector.extract_strided_slice %104 {offsets = [3], sizes = [1], strides = [1]} : vector<6x8xi1> to vector<1x8xi1>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %230 = arith.subi %c857641886_i32, %c525636631_i32 : i32
    scf.execute_region {
      %279 = math.cos %2 : tensor<6x6xf16>
      %280 = math.cos %3 : tensor<5x6xf32>
      %281 = arith.maxf %extracted_27, %cst_24 : f16
      memref.store %76, %alloc_9[%c0, %c0, %c1] : memref<6x5x6xf32>
      %282 = vector.insert %cst_2, %139 [1] : f32 into vector<8xf32>
      %283 = arith.andi %c14056_i16, %c444_i16 : i16
      %inserted = tensor.insert %c2107142454_i64 into %1[%c1, %c1] : tensor<6x8xi64>
      %284 = arith.floordivsi %c14056_i16, %c27195_i16 : i16
      %285 = arith.shli %true_19, %true : i1
      scf.index_switch %167 
      case 1 {
        %295 = math.fpowi %18, %10 : tensor<6x6xf16>, tensor<6x6xi32>
        %296 = arith.floordivsi %209, %209 : i16
        memref.assume_alignment %alloc_16, 1 : memref<5x6xf32>
        %297 = arith.minsi %c14056_i16, %209 : i16
        %298 = arith.muli %c857641886_i32, %c525636631_i32 : i32
        %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %49, %49, %76 : vector<2xf32>, vector<2xf32> into f32
        %300 = arith.ceildivsi %75, %c466405358_i64 : i64
        %301 = arith.remui %true, %true : i1
        %302 = index.sub %c15, %167
        %303 = math.fma %18, %11, %18 : tensor<6x6xf16>
        %304 = index.ceildivu %c10, %123
        %305 = index.ceildivu %145, %c10
        %306 = memref.atomic_rmw minf %extracted_26, %31[%c0, %c3, %c2] : (f32, memref<6x5x6xf32>) -> f32
        %307 = arith.maxui %75, %c2107142454_i64 : i64
        %308 = arith.floordivsi %c312935160_i32, %c265124073_i32 : i32
        %309 = arith.minui %c27195_i16, %c27195_i16 : i16
        scf.yield
      }
      case 2 {
        %295 = math.log %cst_0 : f32
        %296 = arith.andi %221, %c2107142454_i64 : i64
        %297 = index.divu %c3, %c11
        %298 = vector.broadcast %true_19 : i1 to vector<8xi1>
        %299 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %25, %104, %298 : vector<6xi1>, vector<6x8xi1> into vector<8xi1>
        %300 = arith.remf %cst_24, %cst_1 : f16
        %301 = arith.minsi %75, %75 : i64
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<6x6xf16> into tensor<6x6x1xf16>
        %302 = affine.min affine_map<(d0, d1, d2, d3) -> (-d0 - d0 floordiv 64)>(%42, %c5, %c3, %135)
        %303 = math.log10 %4 : tensor<5x6xf32>
        %304 = math.expm1 %8 : tensor<5x6xf32>
        %305 = vector.insertelement %extracted_26, %26[%c11 : index] : vector<6xf32>
        %306 = math.exp2 %8 : tensor<5x6xf32>
        %307 = index.casts %75 : i64 to index
        %308 = arith.remf %cst, %cst_24 : f16
        %309 = arith.maxsi %c525636631_i32, %c525636631_i32 : i32
        %310 = math.ceil %8 : tensor<5x6xf32>
        scf.yield
      }
      case 3 {
        %295 = math.log2 %213 : tensor<f16>
        %296 = arith.minui %c112927684_i64, %221 : i64
        %297 = memref.realloc %alloc_18 : memref<6xf16> to memref<6xf16>
        %298 = arith.minsi %c312935160_i32, %c312935160_i32 : i32
        %299 = arith.floordivsi %c2107142454_i64, %221 : i64
        %300 = index.mul %190, %c15
        %301 = vector.bitcast %53 : vector<6xi1> to vector<6xi1>
        %302 = math.copysign %8, %3 : tensor<5x6xf32>
        %303 = vector.broadcast %c112927684_i64 : i64 to vector<1x1xi64>
        %304 = vector.outerproduct %164, %164, %303 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
        %305 = vector.insertelement %cst_24, %127[%42 : index] : vector<6xf16>
        %306 = math.floor %17 : tensor<6x6xf16>
        %expanded = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x6xi32> into tensor<6x6x1xi32>
        %307 = affine.load %alloc_17[%c0, %c6] : memref<6x8xi1>
        %308 = vector.broadcast %c1830594341_i32 : i32 to vector<6xi32>
        %309 = vector.transfer_write %308, %expanded[%135, %c8, %202] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi32>, tensor<6x6x1xi32>
        %310 = arith.shrui %221, %75 : i64
        %311 = arith.ceildivsi %307, %true_19 : i1
        scf.yield
      }
      default {
        %295 = vector.extract_strided_slice %126 {offsets = [3], sizes = [2], strides = [1]} : vector<6x6xi64> to vector<2x6xi64>
        %296 = math.powf %8, %8 : tensor<5x6xf32>
        %297 = arith.floordivsi %209, %209 : i16
        %298 = vector.broadcast %c27195_i16 : i16 to vector<i16>
        %299 = vector.transfer_write %298, %12[%c2, %c4] : vector<i16>, tensor<6x8xi16>
        %300 = math.sqrt %reduced : tensor<6xf16>
        %301 = math.expm1 %extracted : f16
        %302 = math.copysign %14, %14 : tensor<5x6xf16>
        %splat_36 = tensor.splat %c112927684_i64 : tensor<6x8xi64>
        %303 = math.log1p %extracted_26 : f32
        %304 = affine.load %alloc_4[%c2, %c8, %c6] : memref<6x5x6xi64>
        %305 = bufferization.to_tensor %alloc_9 : memref<6x5x6xf32>
        %306 = arith.muli %true, %true_23 : i1
        %307 = arith.negf %cst_0 : f32
        %308 = math.absf %16 : tensor<6x6xf16>
        %309 = bufferization.to_memref %13 : memref<6x6xi64>
        %rank = tensor.rank %59 : tensor<6x6xi64>
      }
      %286 = vector.broadcast %c857641886_i32 : i32 to vector<5xi32>
      %287 = vector.broadcast %true_23 : i1 to vector<5xi1>
      %288 = vector.maskedload %108[%c3, %c0, %c2], %287, %286 : memref<6x5x6xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %289 = affine.min affine_map<(d0, d1, d2) -> (d2 - 128, d2 - d0 - (d0 + d2 - 2), 0, d2 - 2)>(%220, %c10, %216)
      %290 = vector.bitcast %66 : vector<6x6xi1> to vector<6x6xi1>
      %291 = index.mul %35, %c7
      %292 = arith.minsi %c857641886_i32, %c265124073_i32 : i32
      %293 = tensor.empty() : tensor<5x8xi16>
      %294 = linalg.matmul ins(%0, %12 : tensor<5x6xi16>, tensor<6x8xi16>) outs(%293 : tensor<5x8xi16>) -> tensor<5x8xi16>
      scf.yield
    }
    affine.store %extracted_27, %alloc_18[%c13] : memref<6xf16>
    %231 = math.absf %4 : tensor<5x6xf32>
    %232 = bufferization.to_tensor %alloc_11 : memref<6x8xi64>
    %233 = vector.create_mask %57, %c4 : vector<6x8xi1>
    %234 = math.tanh %16 : tensor<6x6xf16>
    %235 = math.floor %22 : tensor<f16>
    %236 = arith.divf %cst, %cst_1 : f16
    %237 = scf.index_switch %35 -> memref<5x6xi1> 
    case 1 {
      %279 = math.absf %reduced : tensor<6xf16>
      %280 = tensor.empty() : tensor<6x8xi16>
      %mapped_36 = linalg.map ins(%12 : tensor<6x8xi16>) outs(%280 : tensor<6x8xi16>)
        (%in: i16) {
          %295 = vector.broadcast %cst_1 : f16 to vector<6x8xf16>
          %296 = math.fma %17, %17, %11 : tensor<6x6xf16>
          %297 = index.ceildivu %42, %45
          %298 = arith.muli %c525636631_i32, %c1830594341_i32 : i32
          %299 = arith.divf %cst_0, %cst_2 : f32
          %300 = arith.cmpi ne, %in, %in : i16
          %301 = arith.divf %cst_2, %76 : f32
          %302 = arith.subi %c525636631_i32, %c265124073_i32 : i32
          %303 = arith.floordivsi %true_19, %true : i1
          %304 = arith.negf %cst : f16
          %305 = arith.subi %c14056_i16, %c14056_i16 : i16
          %306 = arith.minf %cst_1, %extracted : f16
          %307 = arith.remf %cst_0, %cst_2 : f32
          %extracted_37 = tensor.extract %18[%c1, %c0] : tensor<6x6xf16>
          %308 = math.tan %3 : tensor<5x6xf32>
          %309 = arith.xori %true_23, %true_19 : i1
          %310 = index.mul %123, %c14
          %311 = arith.andi %in, %c14056_i16 : i16
          %312 = math.fma %101, %101, %101 : tensor<6x5x6xf32>
          %313 = arith.divf %cst_24, %extracted_37 : f16
          %314 = tensor.empty() : tensor<6x6xf16>
          %315 = linalg.matmul ins(%17, %11 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%314 : tensor<6x6xf16>) -> tensor<6x6xf16>
          %316 = math.log %3 : tensor<5x6xf32>
          %317 = arith.xori %c1830594341_i32, %c525636631_i32 : i32
          %318 = math.absf %3 : tensor<5x6xf32>
          %319 = math.absf %8 : tensor<5x6xf32>
          %320 = arith.subi %c444_i16, %c14056_i16 : i16
          %321 = vector.multi_reduction <maxf>, %85, %85 [] : vector<3xf32> to vector<3xf32>
          %322 = math.tan %2 : tensor<6x6xf16>
          %323 = bufferization.clone %alloc_14 : memref<6x5x6xi16> to memref<6x5x6xi16>
          %324 = arith.muli %c1830594341_i32, %c265124073_i32 : i32
          %325 = arith.negf %cst : f16
          %326 = tensor.empty() : tensor<6x6xi32>
          %327 = linalg.matmul ins(%9, %10 : tensor<6x6xi32>, tensor<6x6xi32>) outs(%326 : tensor<6x6xi32>) -> tensor<6x6xi32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %281 = scf.if %true_23 -> (memref<5x6xi1>) {
        affine.store %221, %alloc_6[%c12, %c0, %c12] : memref<6x5x6xi64>
        %295 = index.casts %c10 : index to i32
        %296 = math.tan %11 : tensor<6x6xf16>
        %297 = index.divu %42, %167
        %298 = math.powf %22, %22 : tensor<f16>
        %299 = vector.broadcast %c2107142454_i64 : i64 to vector<6xi64>
        %300 = vector.insert %299, %126 [0] : vector<6xi64> into vector<6x6xi64>
        %301 = arith.negf %extracted_26 : f32
        %302 = math.log2 %2 : tensor<6x6xf16>
        scf.yield %alloc_5 : memref<5x6xi1>
      } else {
        %false_37 = index.bool.constant false
        %295 = arith.muli %c857641886_i32, %c312935160_i32 : i32
        %296 = arith.shrsi %221, %221 : i64
        %297 = bufferization.clone %alloc_14 : memref<6x5x6xi16> to memref<6x5x6xi16>
        %298 = math.atan2 %16, %11 : tensor<6x6xf16>
        %299 = arith.shli %c857641886_i32, %c525636631_i32 : i32
        %300 = bufferization.clone %alloc_7 : memref<6x5x6xi16> to memref<6x5x6xi16>
        %301 = arith.divsi %c1830594341_i32, %c312935160_i32 : i32
        scf.yield %alloc_5 : memref<5x6xi1>
      }
      %282 = math.ctpop %splat : tensor<6x6xi64>
      %283 = vector.broadcast %76 : f32 to vector<6x6xf32>
      %284 = vector.fma %283, %283, %283 : vector<6x6xf32>
      %285 = math.ctlz %c1830594341_i32 : i32
      %286 = math.tanh %2 : tensor<6x6xf16>
      %287 = math.roundeven %3 : tensor<5x6xf32>
      %288 = math.roundeven %3 : tensor<5x6xf32>
      %289 = vector.flat_transpose %128 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
      %290 = arith.maxf %cst, %cst_24 : f16
      %291 = math.ctlz %c265124073_i32 : i32
      %292 = arith.maxui %c27195_i16, %209 : i16
      %293 = math.ipowi %c1830594341_i32, %c265124073_i32 : i32
      %294 = math.ctlz %9 : tensor<6x6xi32>
      %false = index.bool.constant false
      scf.yield %alloc_5 : memref<5x6xi1>
    }
    case 2 {
      %279 = index.ceildivu %185, %202
      %280 = arith.addf %cst_24, %cst_1 : f16
      %281 = memref.realloc %alloc_18 : memref<6xf16> to memref<8xf16>
      %282 = vector.insertelement %cst_2, %49[%c0 : index] : vector<2xf32>
      %283 = affine.load %alloc_14[%c8, %c7, %c6] : memref<6x5x6xi16>
      %284 = bufferization.to_memref %splat_20 : memref<5x6xi32>
      %285 = math.log10 %extracted_27 : f16
      %286 = tensor.empty() : tensor<6x6xi64>
      %287 = linalg.matmul ins(%splat, %6 : tensor<6x6xi64>, tensor<6x6xi64>) outs(%286 : tensor<6x6xi64>) -> tensor<6x6xi64>
      %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<6x6xf16> into tensor<6x6x1xf16>
      %288 = arith.floordivsi %c525636631_i32, %c312935160_i32 : i32
      %splat_36 = tensor.splat %cst_0 : tensor<6x8xf32>
      %289 = arith.remsi %283, %c14056_i16 : i16
      %290 = vector.extract_strided_slice %104 {offsets = [1], sizes = [5], strides = [1]} : vector<6x8xi1> to vector<5x8xi1>
      %291 = math.sqrt %cst : f16
      %292 = affine.min affine_map<(d0, d1, d2) -> (d0, d0 floordiv 8 - 16, 0)>(%185, %45, %279)
      %293 = math.log10 %213 : tensor<f16>
      scf.yield %alloc_5 : memref<5x6xi1>
    }
    case 3 {
      %279 = tensor.empty() : tensor<i32>
      %280 = math.fpowi %213, %279 : tensor<f16>, tensor<i32>
      %281 = arith.muli %c466405358_i64, %221 : i64
      %282 = vector.load %alloc_18[%c2] : memref<6xf16>, vector<6x5x6xf16>
      %283 = vector.extract_strided_slice %53 {offsets = [3], sizes = [1], strides = [1]} : vector<6xi1> to vector<1xi1>
      %284 = memref.atomic_rmw andi %221, %alloc_6[%c3, %c1, %c0] : (i64, memref<6x5x6xi64>) -> i64
      %285 = vector.insertelement %extracted, %127[%c10 : index] : vector<6xf16>
      %286 = math.cos %2 : tensor<6x6xf16>
      %287 = math.copysign %2, %17 : tensor<6x6xf16>
      %288 = index.ceildivu %c13, %157
      %289 = index.ceildivu %167, %145
      %290 = math.floor %4 : tensor<5x6xf32>
      %291 = affine.load %alloc_14[%c6, %c11, %c13] : memref<6x5x6xi16>
      %true_36 = index.bool.constant true
      %292 = arith.divf %cst_1, %cst_1 : f16
      %293 = math.log1p %4 : tensor<5x6xf32>
      %294 = index.divu %c2, %c7
      scf.yield %alloc_5 : memref<5x6xi1>
    }
    default {
      %279 = arith.remui %75, %c466405358_i64 : i64
      %280 = index.sub %45, %216
      %rank = tensor.rank %0 : tensor<5x6xi16>
      %281 = math.powf %3, %8 : tensor<5x6xf32>
      %282 = math.expm1 %4 : tensor<5x6xf32>
      %283 = arith.maxsi %c14056_i16, %c27195_i16 : i16
      %284 = tensor.empty() : tensor<6x6xf16>
      %285 = linalg.matmul ins(%transposed, %11 : tensor<6x6xf16>, tensor<6x6xf16>) outs(%284 : tensor<6x6xf16>) -> tensor<6x6xf16>
      %286 = arith.divsi %221, %221 : i64
      %287 = index.mul %121, %rank
      %288 = arith.addf %extracted_26, %cst_0 : f32
      %289 = vector.shuffle %126, %126 [0, 2, 4, 5, 7, 8, 9, 11] : vector<6x6xi64>, vector<6x6xi64>
      %290 = arith.xori %75, %75 : i64
      %291 = arith.negf %cst_1 : f16
      %292 = index.floordivs %c11, %111
      %293 = math.exp %extracted_26 : f32
      %294 = arith.maxsi %c857641886_i32, %c525636631_i32 : i32
      scf.yield %alloc_5 : memref<5x6xi1>
    }
    %238 = vector.broadcast %c857641886_i32 : i32 to vector<8xi32>
    %239 = vector.insert %238, %174 [2] : vector<8xi32> into vector<3x8xi32>
    %240 = math.absf %4 : tensor<5x6xf32>
    %241 = math.log %23 : tensor<f16>
    %cast_33 = tensor.cast %232 : tensor<6x8xi64> to tensor<?x?xi64>
    %242 = math.absf %cst_1 : f16
    %243 = vector.flat_transpose %178 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %244 = math.fma %2, %transposed, %2 : tensor<6x6xf16>
    %245 = math.tan %76 : f32
    %246 = arith.divf %cst_1, %cst : f16
    %247 = arith.minsi %c14056_i16, %c27195_i16 : i16
    %248 = math.atan2 %14, %14 : tensor<5x6xf16>
    %249 = bufferization.to_memref %3 : memref<5x6xf32>
    %250 = vector.reduction <minsi>, %106 : vector<6xi1> into i1
    %251 = arith.remf %cst_1, %extracted_27 : f16
    %252 = math.exp %cst_2 : f32
    %253 = math.tan %3 : tensor<5x6xf32>
    %254 = arith.maxsi %true_23, %true_19 : i1
    %255 = vector.splat %c14056_i16 : vector<6x8xi16>
    %256 = memref.load %alloc_17[%c1, %c4] : memref<6x8xi1>
    %257 = math.tanh %extracted : f16
    %258 = math.fma %3, %8, %4 : tensor<5x6xf32>
    %259 = math.tanh %cst_0 : f32
    %260 = math.atan2 %4, %4 : tensor<5x6xf32>
    %261 = tensor.empty() : tensor<6xi1>
    %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%261 : tensor<6xi1>) outs(%7 : tensor<6x5x6xi1>) {
    ^bb0(%in: i1, %out: i1):
      %279 = vector.maskedload %alloc_3[%c5, %c4, %c5], %106, %26 : memref<6x5x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %cast_36 = tensor.cast %17 : tensor<6x6xf16> to tensor<?x?xf16>
      %280 = math.log2 %22 : tensor<f16>
      %281 = tensor.empty() : tensor<6xf32>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%281 : tensor<6xf32>) outs(%101 : tensor<6x5x6xf32>) {
      ^bb0(%in_39: f32, %out_40: f32):
        memref.tensor_store %splat, %alloc_15 : memref<6x6xi64>
        %308 = math.expm1 %19 : tensor<6xf16>
        %309 = arith.remsi %in, %true_23 : i1
        %310 = index.sub %c13, %121
        %311 = vector.multi_reduction <maxf>, %49, %in_39 [0] : vector<2xf32> to f32
        %312 = arith.maxui %true_23, %true_23 : i1
        %313 = arith.minsi %c27195_i16, %209 : i16
        %rank_41 = tensor.rank %9 : tensor<6x6xi32>
        affine.store %c265124073_i32, %alloc_8[%c9, %c7] : memref<6x6xi32>
        %314 = arith.remui %true_19, %true_19 : i1
        %315 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %178, %163, %279 : vector<8xf32>, vector<6x8xf32> into vector<6xf32>
        %316 = math.exp2 %22 : tensor<f16>
        %317 = index.casts %true_23 : i1 to index
        %c1588343679_i32 = arith.constant 1588343679 : i32
        %extracted_42 = tensor.extract %cast_36[%c0, %c0] : tensor<?x?xf16>
        memref.tensor_store %4, %alloc_16 : memref<5x6xf32>
        %318 = math.exp %8 : tensor<5x6xf32>
        %319 = arith.remsi %c27195_i16, %c14056_i16 : i16
        %320 = arith.shli %c27195_i16, %c444_i16 : i16
        %321 = bufferization.clone %alloc : memref<6x5x6xi32> to memref<6x5x6xi32>
        %collapsed_43 = tensor.collapse_shape %15 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
        %322 = arith.shrui %c444_i16, %c14056_i16 : i16
        %323 = arith.xori %209, %c444_i16 : i16
        %324 = tensor.empty(%c7, %c11, %35) : tensor<?x?x?xf16>
        %325 = bufferization.to_memref %18 : memref<6x6xf16>
        %cast_44 = tensor.cast %22 : tensor<f16> to tensor<f16>
        %326 = math.exp %311 : f32
        %327 = arith.maxsi %c525636631_i32, %c265124073_i32 : i32
        %328 = math.ceil %reduced : tensor<6xf16>
        %329 = arith.xori %true_19, %out : i1
        %330 = tensor.empty(%149, %190) : tensor<?x5x?xi1>
        %331 = affine.load %alloc_9[%c8, %c15, %c10] : memref<6x5x6xf32>
        linalg.yield %in_39 : f32
      } -> tensor<6x5x6xf32>
      %283 = vector.shuffle %233, %104 [1, 2, 3, 4, 7, 8, 9] : vector<6x8xi1>, vector<6x8xi1>
      %284 = vector.shuffle %163, %163 [0, 1, 2, 5, 6, 7, 8] : vector<6x8xf32>, vector<6x8xf32>
      %285 = arith.muli %true_23, %in : i1
      %286 = arith.maxf %extracted_26, %extracted_26 : f32
      scf.execute_region {
        %308 = math.expm1 %extracted_27 : f16
        %309 = arith.maxsi %true, %true_19 : i1
        %310 = index.ceildivu %c6, %157
        %311 = math.powf %14, %14 : tensor<5x6xf16>
        %312 = arith.shrui %true, %out : i1
        %313 = math.log %cst_1 : f16
        %314 = bufferization.to_memref %2 : memref<6x6xf16>
        %315 = index.sizeof
        %inserted_39 = tensor.insert %c466405358_i64 into %6[%c1, %c0] : tensor<6x6xi64>
        %316 = math.floor %17 : tensor<6x6xf16>
        %317 = affine.max affine_map<(d0) -> (d0 mod 8, d0 mod 8 + d0, d0 mod 8 + d0 - d0 ceildiv 64, d0 mod 8 + d0 - d0 ceildiv 64)>(%43)
        %318 = arith.cmpi slt, %c2107142454_i64, %c112927684_i64 : i64
        %319 = vector.bitcast %183 : vector<6x8xf16> to vector<6x8xf16>
        %320 = vector.broadcast %76 : f32 to vector<8x8xf32>
        %321 = vector.outerproduct %178, %178, %320 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
        %322 = vector.broadcast %cst_0 : f32 to vector<6x8xf32>
        %323 = vector.fma %322, %163, %163 : vector<6x8xf32>
        %324 = arith.minsi %true, %true_19 : i1
        scf.yield
      }
      %287 = arith.maxsi %in, %out : i1
      %alloc_37 = memref.alloc() : memref<6x6xf32>
      %288 = tensor.empty() : tensor<5x6xf32>
      %289 = linalg.matmul ins(%4, %alloc_37 : tensor<5x6xf32>, memref<6x6xf32>) outs(%288 : tensor<5x6xf32>) -> tensor<5x6xf32>
      %290 = tensor.empty() : tensor<5x6xi32>
      %291 = linalg.matmul ins(%splat_20, %9 : tensor<5x6xi32>, tensor<6x6xi32>) outs(%290 : tensor<5x6xi32>) -> tensor<5x6xi32>
      %292 = arith.shrui %c466405358_i64, %75 : i64
      %293 = bufferization.to_tensor %alloc_8 : memref<6x6xi32>
      %294 = math.ceil %3 : tensor<5x6xf32>
      affine.store %extracted_27, %alloc_12[%c12, %c3, %c12] : memref<6x5x6xf16>
      %295 = vector.broadcast %extracted : f16 to vector<5xf16>
      %296 = vector.transfer_write %295, %2[%42, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf16>, tensor<6x6xf16>
      %297 = tensor.empty() : tensor<6x8xi16>
      %mapped_38 = linalg.map ins(%12 : tensor<6x8xi16>) outs(%297 : tensor<6x8xi16>)
        (%in_39: i16) {
          %308 = arith.andi %c27195_i16, %c27195_i16 : i16
          %cast_40 = tensor.cast %splat_20 : tensor<5x6xi32> to tensor<?x?xi32>
          %309 = math.fpowi %288, %290 : tensor<5x6xf32>, tensor<5x6xi32>
          memref.assume_alignment %alloc_15, 16 : memref<6x6xi64>
          %alloc_41 = memref.alloc() : memref<6x5x6xi32>
          %310 = vector.broadcast %c112927684_i64 : i64 to vector<6xi64>
          vector.transfer_write %310, %alloc_10[%c15, %43, %149] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi64>, memref<6x5x6xi64>
          %311 = math.log1p %3 : tensor<5x6xf32>
          %312 = arith.minf %extracted_27, %cst_1 : f16
          %313 = math.ctlz %c444_i16 : i16
          %314 = vector.maskedload %31[%c4, %c3, %c5], %53, %26 : memref<6x5x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
          %315 = vector.create_mask %135, %202, %157 : vector<6x5x6xi1>
          %316 = math.exp %101 : tensor<6x5x6xf32>
          %alloc_42 = memref.alloc() : memref<6x6xi32>
          %317 = vector.matrix_multiply %128, %187 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
          %318 = math.log2 %14 : tensor<5x6xf16>
          %319 = math.ipowi %10, %10 : tensor<6x6xi32>
          %320 = index.casts %42 : index to i32
          %321 = math.log1p %extracted_27 : f16
          %322 = math.roundeven %23 : tensor<f16>
          %323 = vector.broadcast %76 : f32 to vector<5x6xf32>
          %324 = vector.fma %323, %323, %142 : vector<5x6xf32>
          %325 = math.cos %8 : tensor<5x6xf32>
          %326 = math.floor %19 : tensor<6xf16>
          %327 = arith.negf %extracted_27 : f16
          %328 = math.log %8 : tensor<5x6xf32>
          %329 = arith.shli %75, %221 : i64
          %330 = arith.maxf %76, %extracted_26 : f32
          %331 = arith.divsi %c525636631_i32, %c1830594341_i32 : i32
          %332 = math.roundeven %11 : tensor<6x6xf16>
          %333 = math.fma %extracted_26, %76, %76 : f32
          %334 = affine.load %alloc_8[%c14, %c1] : memref<6x6xi32>
          %335 = vector.broadcast %75 : i64 to vector<8x8xi64>
          %336 = vector.outerproduct %21, %21, %335 {kind = #vector.kind<maxui>} : vector<8xi64>, vector<8xi64>
          %337 = math.expm1 %4 : tensor<5x6xf32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %rank = tensor.rank %290 : tensor<5x6xi32>
      affine.for %arg2 = 0 to 114 {
      }
      %298 = arith.remsi %c857641886_i32, %c1830594341_i32 : i32
      %299 = index.castu %216 : index to i32
      affine.for %arg2 = 0 to 26 {
      }
      %300 = arith.maxsi %c466405358_i64, %c2107142454_i64 : i64
      %301 = vector.transpose %295, [0] : vector<5xf16> to vector<5xf16>
      %302 = bufferization.to_memref %4 : memref<5x6xf32>
      %303 = affine.min affine_map<(d0, d1, d2, d3) -> (-d0, d3 * 64 + 64)>(%121, %c1, %157, %157)
      %304 = bufferization.to_tensor %alloc_18 : memref<6xf16>
      %inserted = tensor.insert %c466405358_i64 into %46[%c5, %c1] : tensor<6x6xi64>
      %305 = math.floor %extracted_27 : f16
      %306 = arith.minsi %c857641886_i32, %c1830594341_i32 : i32
      %307 = arith.minui %c312935160_i32, %c312935160_i32 : i32
      linalg.yield %true_19 : i1
    } -> tensor<6x5x6xi1>
    %263 = math.log %101 : tensor<6x5x6xf32>
    %264 = tensor.empty() : tensor<36xi32>
    %265 = math.fpowi %collapsed, %264 : tensor<36xf16>, tensor<36xi32>
    %266 = arith.floordivsi %c112927684_i64, %c466405358_i64 : i64
    %267 = math.powf %101, %101 : tensor<6x5x6xf32>
    %268 = math.cos %cst_1 : f16
    %269 = affine.max affine_map<(d0) -> (((-(d0 ceildiv 32)) mod 2) mod 128)>(%157)
    %270 = affine.load %alloc_17[%c11, %c4] : memref<6x8xi1>
    %271 = math.ipowi %12, %12 : tensor<6x8xi16>
    %272 = scf.execute_region -> i16 {
      %279 = arith.maxsi %true, %270 : i1
      %280 = math.roundeven %cst_24 : f16
      %281 = arith.mulf %cst, %extracted_27 : f16
      %282 = math.cos %4 : tensor<5x6xf32>
      %283 = math.ceil %213 : tensor<f16>
      %284 = arith.minui %270, %true_23 : i1
      %285 = index.casts %c27195_i16 : i16 to index
      %splat_36 = tensor.splat %c112927684_i64 : tensor<6x8xi64>
      %286 = index.ceildivu %149, %c0
      %287 = bufferization.clone %alloc_13 : memref<6x5x6xf32> to memref<6x5x6xf32>
      %288 = arith.muli %c14056_i16, %c27195_i16 : i16
      %289 = math.log10 %2 : tensor<6x6xf16>
      %290 = affine.for %arg2 = 0 to 30 iter_args(%arg3 = %14) -> (tensor<5x6xf16>) {
        affine.yield %14 : tensor<5x6xf16>
      }
      %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %164, %164, %75 : vector<1xi64>, vector<1xi64> into i64
      %292 = arith.remui %75, %221 : i64
      %293 = memref.alloca_scope  -> (memref<6x6xf32>) {
        %294 = arith.subi %c14056_i16, %209 : i16
        %295 = vector.create_mask %43, %c1, %269 : vector<6x5x6xi1>
        %cast_37 = tensor.cast %13 : tensor<6x6xi64> to tensor<?x?xi64>
        %296 = math.absf %8 : tensor<5x6xf32>
        %297 = math.exp2 %transposed : tensor<6x6xf16>
        %298 = vector.insertelement %true_19, %53[%123 : index] : vector<6xi1>
        %299 = arith.minf %cst_2, %cst_0 : f32
        %300 = math.ceil %4 : tensor<5x6xf32>
        %301 = vector.broadcast %extracted_26 : f32 to vector<8x8xf32>
        %302 = vector.outerproduct %243, %178, %301 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %303 = arith.minf %cst_24, %cst_1 : f16
        %304 = index.sizeof
        %305 = index.casts %c2 : index to i32
        %306 = index.mul %43, %c6
        %307 = math.floor %76 : f32
        %308 = arith.maxf %cst_24, %extracted_27 : f16
        %309 = math.ceil %8 : tensor<5x6xf32>
        %310 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %40, %25, %25 : vector<6x6xi1>, vector<6xi1> into vector<6xi1>
        %311 = vector.broadcast %true_23 : i1 to vector<8xi1>
        %312 = vector.insert %311, %104 [5] : vector<8xi1> into vector<6x8xi1>
        %313 = arith.cmpi sge, %c112927684_i64, %c112927684_i64 : i64
        %c-21873_i16 = arith.constant -21873 : i16
        %314 = memref.realloc %alloc_18 : memref<6xf16> to memref<8xf16>
        %315 = math.roundeven %76 : f32
        %316 = math.ceil %16 : tensor<6x6xf16>
        %317 = math.cos %14 : tensor<5x6xf16>
        %318 = math.ipowi %true, %270 : i1
        %319 = arith.andi %c27195_i16, %c14056_i16 : i16
        %320 = arith.minsi %c444_i16, %c14056_i16 : i16
        %321 = vector.create_mask %269, %c14, %218 : vector<6x5x6xi1>
        %322 = math.exp2 %16 : tensor<6x6xf16>
        %323 = math.exp2 %18 : tensor<6x6xf16>
        %324 = math.roundeven %extracted : f16
        vector.print %311 : vector<8xi1>
        %alloc_38 = memref.alloc() : memref<6x6xf32>
        memref.alloca_scope.return %alloc_38 : memref<6x6xf32>
      }
      scf.yield %c27195_i16 : i16
    }
    %273 = tensor.empty() : tensor<6x6xi64>
    %274 = linalg.copy ins(%5 : tensor<6x6xi64>) outs(%273 : tensor<6x6xi64>) -> tensor<6x6xi64>
    %275 = tensor.empty() : tensor<6x6xi1>
    %transposed_34 = linalg.transpose ins(%15 : tensor<6x6xi1>) outs(%275 : tensor<6x6xi1>) permutation = [1, 0] 
    %276 = tensor.empty() : tensor<6xi1>
    %reduced_35 = linalg.reduce ins(%15 : tensor<6x6xi1>) outs(%276 : tensor<6xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %279 = arith.maxf %cst_1, %cst : f16
        %280 = arith.negf %extracted : f16
        %281 = index.ceildivs %269, %45
        %282 = index.floordivs %c5, %269
        %false = index.bool.constant false
        %283 = vector.extract_strided_slice %126 {offsets = [3], sizes = [1], strides = [1]} : vector<6x6xi64> to vector<1x6xi64>
        %284 = vector.insertelement %cst, %127[%c1 : index] : vector<6xf16>
        %285 = math.sqrt %reduced : tensor<6xf16>
        %false_36 = arith.constant false
        linalg.yield %false_36 : i1
      }
    %277 = scf.parallel (%arg2) = (%111) to (%111) step (%c5) init (%75) -> i64 {
      %279 = tensor.empty() : tensor<5x8xi16>
      %280 = linalg.matmul ins(%0, %12 : tensor<5x6xi16>, tensor<6x8xi16>) outs(%279 : tensor<5x8xi16>) -> tensor<5x8xi16>
      %281 = math.tan %23 : tensor<f16>
      %282 = arith.remf %cst_0, %cst_0 : f32
      %283 = affine.load %alloc_7[%c0, %c6, %c1] : memref<6x5x6xi16>
      %284 = vector.create_mask %167, %c7 : vector<5x6xi1>
      %285 = bufferization.clone %alloc_4 : memref<6x5x6xi64> to memref<6x5x6xi64>
      %286 = math.tan %cst_24 : f16
      %287 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
      %288 = vector.fma %287, %287, %287 : vector<6x6xf32>
      %289 = arith.maxsi %true, %true_23 : i1
      %290 = arith.addi %c14056_i16, %c14056_i16 : i16
      %291 = arith.divf %76, %extracted_26 : f32
      %292 = index.floordivs %c6, %c5
      %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %106, %53, %true : vector<6xi1>, vector<6xi1> into i1
      %294 = index.casts %202 : index to i32
      %295 = vector.extract_strided_slice %284 {offsets = [3], sizes = [2], strides = [1]} : vector<5x6xi1> to vector<2x6xi1>
      %296 = vector.load %alloc_18[%c3] : memref<6xf16>, vector<6x8xf16>
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg3: i64, %arg4: i64):
        %297 = vector.broadcast %c27195_i16 : i16 to vector<6x6xi16>
        %298 = arith.andi %true_19, %true : i1
        %299 = math.exp2 %extracted_26 : f32
        %collapsed_36 = tensor.collapse_shape %transposed [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
        %300 = math.exp %extracted : f16
        %301 = arith.minf %cst_0, %extracted_26 : f32
        %302 = vector.broadcast %76 : f32 to vector<6x8xf32>
        %303 = vector.fma %302, %302, %162 : vector<6x8xf32>
        bufferization.dealloc_tensor %transposed_34 : tensor<6x6xi1>
        %c0_i64_37 = arith.constant 0 : i64
        scf.reduce.return %c0_i64_37 : i64
      }
      scf.yield
    }
    %278 = affine.vector_load %alloc_11[%111, %185] : memref<6x8xi64>, vector<6xi64>
    affine.vector_store %49, %31[%c8, %c9, %111] : memref<6x5x6xf32>, vector<2xf32>
    vector.print %21 : vector<8xi64>
    vector.print %24 : vector<6xf32>
    vector.print %25 : vector<6xi1>
    vector.print %26 : vector<6xf32>
    vector.print %40 : vector<6x6xi1>
    vector.print %49 : vector<2xf32>
    vector.print %53 : vector<6xi1>
    vector.print %66 : vector<6x6xi1>
    vector.print %85 : vector<3xf32>
    vector.print %90 : vector<2xi64>
    vector.print %93 : vector<f32>
    vector.print %103 : vector<6x8xi32>
    vector.print %104 : vector<6x8xi1>
    vector.print %105 : vector<6x8xi32>
    vector.print %106 : vector<6xi1>
    vector.print %115 : vector<6x6xf16>
    vector.print %126 : vector<6x6xi64>
    vector.print %127 : vector<6xf16>
    vector.print %128 : vector<6xf16>
    vector.print %139 : vector<8xf32>
    vector.print %142 : vector<5x6xf32>
    vector.print %154 : vector<5x6xi1>
    vector.print %162 : vector<6x8xf32>
    vector.print %163 : vector<6x8xf32>
    vector.print %164 : vector<1xi64>
    vector.print %174 : vector<3x8xi32>
    vector.print %178 : vector<8xf32>
    vector.print %183 : vector<6x8xf16>
    vector.print %187 : vector<6xf16>
    vector.print %222 : vector<6x8xi1>
    vector.print %233 : vector<6x8xi1>
    vector.print %238 : vector<8xi32>
    vector.print %243 : vector<8xf32>
    vector.print %278 : vector<6xi64>
    vector.print %c444_i16 : i16
    vector.print %c857641886_i32 : i32
    vector.print %c466405358_i64 : i64
    vector.print %true : i1
    vector.print %c265124073_i32 : i32
    vector.print %c2107142454_i64 : i64
    vector.print %c14056_i16 : i16
    vector.print %c525636631_i32 : i32
    vector.print %c312935160_i32 : i32
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c112927684_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c1830594341_i32 : i32
    vector.print %c27195_i16 : i16
    vector.print %true_19 : i1
    vector.print %75 : i64
    vector.print %76 : f32
    vector.print %extracted : f16
    vector.print %true_23 : i1
    vector.print %cst_24 : f16
    vector.print %extracted_26 : f32
    vector.print %extracted_27 : f16
    vector.print %209 : i16
    vector.print %221 : i64
    vector.print %270 : i1
    vector.print %272 : i16
    return %splat_20 : tensor<5x6xi32>
  }
}
