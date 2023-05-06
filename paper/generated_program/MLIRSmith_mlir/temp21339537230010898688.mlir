module {
  func.func nested @func1(%arg0: tensor<9x2xf32>) {
    %cst = arith.constant 0x4E378EFE : f32
    %cst_0 = arith.constant 6.272000e+04 : f16
    %c172817522_i64 = arith.constant 172817522 : i64
    %c32058_i16 = arith.constant 32058 : i16
    %cst_1 = arith.constant 1.356800e+04 : f16
    %c1212036663_i32 = arith.constant 1212036663 : i32
    %cst_2 = arith.constant 0x4D63C856 : f32
    %cst_3 = arith.constant 4.316800e+04 : f16
    %c-11559_i16 = arith.constant -11559 : i16
    %c1268726765_i32 = arith.constant 1268726765 : i32
    %true = arith.constant true
    %c265157077_i32 = arith.constant 265157077 : i32
    %cst_4 = arith.constant 0x4E42055F : f32
    %cst_5 = arith.constant 1.10537626E+9 : f32
    %c518060233_i32 = arith.constant 518060233 : i32
    %c13810_i16 = arith.constant 13810 : i16
    %0 = tensor.empty() : tensor<4xi1>
    %1 = tensor.empty() : tensor<4x2xf16>
    %2 = tensor.empty() : tensor<2xi1>
    %3 = tensor.empty() : tensor<2xi16>
    %4 = tensor.empty() : tensor<4xf32>
    %5 = tensor.empty() : tensor<4x2xf32>
    %6 = tensor.empty() : tensor<2xf16>
    %7 = tensor.empty() : tensor<4xi16>
    %8 = tensor.empty() : tensor<4xi32>
    %9 = tensor.empty() : tensor<9x2xi32>
    %10 = tensor.empty() : tensor<4xi16>
    %11 = tensor.empty() : tensor<2xi1>
    %12 = tensor.empty() : tensor<4xi1>
    %13 = tensor.empty() : tensor<9x2xi16>
    %14 = tensor.empty() : tensor<4x2xi16>
    %15 = tensor.empty() : tensor<2xi64>
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
    %alloc = memref.alloc() : memref<4xi1>
    %alloc_6 = memref.alloc() : memref<9x2xf32>
    %alloc_7 = memref.alloc() : memref<4x2xi32>
    %alloc_8 = memref.alloc() : memref<2xf32>
    %alloc_9 = memref.alloc() : memref<9x2xf16>
    %alloc_10 = memref.alloc() : memref<4x2xf16>
    %alloc_11 = memref.alloc() : memref<2xi1>
    %alloc_12 = memref.alloc() : memref<4xi64>
    %alloc_13 = memref.alloc() : memref<2xi16>
    %alloc_14 = memref.alloc() : memref<2xf32>
    %alloc_15 = memref.alloc() : memref<2xi64>
    %alloc_16 = memref.alloc() : memref<9x2xi16>
    %alloc_17 = memref.alloc() : memref<4x2xi1>
    %alloc_18 = memref.alloc() : memref<4xi64>
    %alloc_19 = memref.alloc() : memref<4xf16>
    %alloc_20 = memref.alloc() : memref<2xi1>
    %16 = tensor.empty() : tensor<4xi16>
    %17 = linalg.copy ins(%10 : tensor<4xi16>) outs(%16 : tensor<4xi16>) -> tensor<4xi16>
    %18 = tensor.empty() : tensor<2x4xf32>
    %transposed = linalg.transpose ins(%5 : tensor<4x2xf32>) outs(%18 : tensor<2x4xf32>) permutation = [1, 0] 
    %alloc_21 = memref.alloc() : memref<i16>
    linalg.reduce ins(%16 : tensor<4xi16>) outs(%alloc_21 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %267 = math.copysign %cst_5, %cst_4 : f32
        %268 = index.sub %c3, %c8
        %true_44 = arith.constant true
        %extracted_45 = tensor.extract %8[%c2] : tensor<4xi32>
        %269 = math.cos %6 : tensor<2xf16>
        %270 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 64)>(%c11, %c12, %c9)
        %271 = arith.andi %init, %init : i16
        scf.execute_region {
          memref.assume_alignment %alloc_11, 8 : memref<2xi1>
          %alloc_46 = memref.alloc() : memref<2x2xi16>
          %272 = tensor.empty() : tensor<9x2xi16>
          %273 = linalg.matmul ins(%13, %alloc_46 : tensor<9x2xi16>, memref<2x2xi16>) outs(%272 : tensor<9x2xi16>) -> tensor<9x2xi16>
          %274 = arith.maxsi %c172817522_i64, %c172817522_i64 : i64
          %275 = arith.xori %c1212036663_i32, %extracted_45 : i32
          %276 = arith.andi %c13810_i16, %c13810_i16 : i16
          %277 = tensor.empty(%c1) : tensor<?xi16>
          %278 = arith.ceildivsi %c-11559_i16, %init : i16
          %279 = vector.broadcast %cst : f32 to vector<4x2xf32>
          %280 = arith.remf %cst_3, %cst_3 : f16
          %281 = arith.remf %cst_1, %cst_1 : f16
          %282 = vector.create_mask %c11, %c15 : vector<4x2xi1>
          %283 = index.casts %c2 : index to i32
          %284 = math.log2 %cst_1 : f16
          %inserted_47 = tensor.insert %c32058_i16 into %10[%c0] : tensor<4xi16>
          %285 = bufferization.to_memref %4 : memref<4xf32>
          %286 = arith.remui %c518060233_i32, %extracted_45 : i32
          scf.yield
        }
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg1, %arg2) = (%c12, %c4) to (%c3, %c4) step (%c8, %c12) {
      %267 = math.round %6 : tensor<2xf16>
      %268 = vector.broadcast %c172817522_i64 : i64 to vector<1xi64>
      %269 = vector.extract_strided_slice %268 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      %270 = arith.xori %c-11559_i16, %c-11559_i16 : i16
      %271 = vector.broadcast %cst_2 : f32 to vector<4xf32>
      %272 = vector.fma %271, %271, %271 : vector<4xf32>
      %273 = vector.broadcast %c172817522_i64 : i64 to vector<i64>
      %274 = vector.transfer_write %273, %15[%c4] : vector<i64>, tensor<2xi64>
      %275 = math.cos %4 : tensor<4xf32>
      memref.tensor_store %0, %alloc : memref<4xi1>
      %276 = bufferization.clone %alloc_9 : memref<9x2xf16> to memref<9x2xf16>
      %277 = arith.shrui %c518060233_i32, %c265157077_i32 : i32
      %splat_44 = tensor.splat %c-11559_i16 : tensor<2xi16>
      %true_45 = arith.constant true
      %false_46 = arith.constant false
      %278 = vector.transfer_read %12[%c3], %false_46 : tensor<4xi1>, vector<i1>
      %279 = arith.andi %true_45, %true : i1
      %280 = math.powf %cst_2, %cst : f32
      %generated_47 = tensor.generate %c3 {
      ^bb0(%arg3: index):
        %alloc_48 = memref.alloc() : memref<9x2xi32>
        memref.tensor_store %9, %alloc_48 : memref<9x2xi32>
        %283 = math.exp2 %cst_2 : f32
        %284 = vector.extract %272[3] : vector<4xf32>
        %285 = math.floor %18 : tensor<2x4xf32>
        tensor.yield %cst_0 : f16
      } : tensor<?xf16>
      %281 = index.add %c12, %c1
      %282 = vector.extract %268[0] : vector<1xi64>
      scf.yield
    }
    %19 = affine.vector_load %alloc_14[%c10] : memref<2xf32>, vector<11xf32>
    affine.vector_store %19, %alloc_8[%c0] : memref<2xf32>, vector<11xf32>
    %alloc_22 = memref.alloc() : memref<4xf32>
    %20 = tensor.empty() : tensor<f32>
    %21 = linalg.dot ins(%4, %alloc_22 : tensor<4xf32>, memref<4xf32>) outs(%20 : tensor<f32>) -> tensor<f32>
    %22 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 4 + 4)>(%c1, %c9, %c14, %c13)
    %23 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
    %24 = math.fma %4, %4, %4 : tensor<4xf32>
    %25 = arith.maxf %cst_0, %cst_3 : f16
    %26 = math.tan %6 : tensor<2xf16>
    %27 = math.tan %6 : tensor<2xf16>
    %28 = math.fpowi %cst_1, %c265157077_i32 : f16, i32
    %29 = scf.if %true -> (memref<2xi1>) {
      %267 = affine.if affine_set<(d0, d1) : ((d0 floordiv 64) floordiv 8 >= 0, d0 floordiv 2 == 0, d1 floordiv 4 - 4 == 0)>(%c10, %c1) -> f16 {
        %273 = arith.ceildivsi %c1268726765_i32, %c265157077_i32 : i32
        %274 = vector.bitcast %19 : vector<11xf32> to vector<11xf32>
        %275 = arith.remf %cst_2, %cst_4 : f32
        %276 = affine.load %alloc_21[] : memref<i16>
        %277 = vector.flat_transpose %23 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %alloc_45 = memref.alloc() : memref<9x2xf16>
        memref.copy %alloc_9, %alloc_45 : memref<9x2xf16> to memref<9x2xf16>
        %278 = math.log2 %4 : tensor<4xf32>
        %279 = math.ipowi %10, %7 : tensor<4xi16>
        affine.yield %cst_0 : f16
      } else {
        %273 = index.ceildivs %c5, %c14
        %274 = index.sizeof
        %275 = math.log1p %cst_1 : f16
        %276 = arith.andi %true, %true : i1
        %alloc_45 = memref.alloc() : memref<2xi32>
        %277 = math.fpowi %cst, %c265157077_i32 : f32, i32
        %278 = vector.transpose %19, [0] : vector<11xf32> to vector<11xf32>
        %279 = arith.minf %cst_3, %cst_1 : f16
        affine.yield %cst_0 : f16
      }
      %268 = arith.remf %cst_5, %cst_2 : f32
      %inserted_44 = tensor.insert %c-11559_i16 into %10[%c0] : tensor<4xi16>
      %269 = vector.shuffle %19, %23 [2, 5, 7, 8, 10, 13, 14, 15, 16, 19, 21] : vector<11xf32>, vector<11xf32>
      %270 = affine.for %arg1 = 0 to 96 iter_args(%arg2 = %alloc_9) -> (memref<9x2xf16>) {
        affine.yield %arg2 : memref<9x2xf16>
      }
      scf.if %true {
        %alloca_45 = memref.alloca() : memref<4x2xi32>
        %273 = index.divu %c5, %c13
        %274 = arith.andi %c32058_i16, %c13810_i16 : i16
        %cast_46 = tensor.cast %13 : tensor<9x2xi16> to tensor<?x?xi16>
        %275 = math.ceil %cst_1 : f16
        %276 = vector.shuffle %23, %19 [0, 3, 4, 5, 6, 9, 10, 12, 13, 14, 17, 18, 20, 21] : vector<11xf32>, vector<11xf32>
        %277 = arith.mulf %cst_3, %cst_3 : f16
        %278 = index.castu %true : i1 to index
      } else {
        %splat_45 = tensor.splat %cst_3 : tensor<4xf16>
        %splat_46 = tensor.splat %cst_3 : tensor<4x2xf16>
        %alloc_47 = memref.alloc() : memref<4xf16>
        memref.copy %alloc_19, %alloc_47 : memref<4xf16> to memref<4xf16>
        %273 = math.powf %20, %20 : tensor<f32>
        %274 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 - 64)) floordiv 64)>(%c10, %22, %c9)
        %275 = math.log1p %6 : tensor<2xf16>
        %276 = index.ceildivs %c13, %c1
        %277 = math.floor %6 : tensor<2xf16>
      }
      %271 = arith.ori %c265157077_i32, %c1268726765_i32 : i32
      %272 = math.cttz %15 : tensor<2xi64>
      scf.yield %alloc_20 : memref<2xi1>
    } else {
      %267 = vector.broadcast %cst_5 : f32 to vector<11x11xf32>
      %268 = vector.outerproduct %23, %23, %267 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
      %269 = index.ceildivs %c12, %c3
      %270 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
      %271 = vector.broadcast %true : i1 to vector<4xi1>
      %272 = vector.broadcast %c518060233_i32 : i32 to vector<4xi32>
      %273 = vector.gather %alloc_12[%c3] [%272], %271, %270 : memref<4xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %274 = vector.broadcast %cst_4 : f32 to vector<f32>
      %275 = vector.transfer_write %274, %5[%c12, %c13] : vector<f32>, tensor<4x2xf32>
      %276 = index.castu %c6 : index to i32
      %277 = arith.andi %c172817522_i64, %c172817522_i64 : i64
      %278 = arith.ceildivsi %c1212036663_i32, %c1268726765_i32 : i32
      %279 = index.maxs %c4, %c13
      scf.yield %alloc_20 : memref<2xi1>
    }
    %30 = index.casts %c7 : index to i32
    %31 = math.round %cst_2 : f32
    %32 = tensor.empty() : tensor<4xi1>
    %33 = vector.bitcast %23 : vector<11xf32> to vector<11xi32>
    %34 = memref.alloca_scope  -> (i1) {
      %alloc_44 = memref.alloc() : memref<9x2xi32>
      memref.tensor_store %9, %alloc_44 : memref<9x2xi32>
      %267 = index.sizeof
      %collapsed_45 = tensor.collapse_shape %13 [[0, 1]] : tensor<9x2xi16> into tensor<18xi16>
      scf.index_switch %c0 
      case 1 {
        %296 = math.log1p %4 : tensor<4xf32>
        %297 = arith.divf %cst_4, %cst_5 : f32
        %298 = math.ipowi %8, %8 : tensor<4xi32>
        %299 = vector.create_mask %c6 : vector<2xi1>
        %300 = arith.ceildivsi %c1268726765_i32, %c1212036663_i32 : i32
        %301 = vector.broadcast %true : i1 to vector<11xi1>
        %302 = vector.maskedload %alloc_6[%c0, %c1], %301, %23 : memref<9x2xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %303 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        %304 = vector.broadcast %true : i1 to vector<9xi1>
        %305 = vector.maskedload %alloc_19[%c1], %304, %303 : memref<4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %306 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d3 + 32))>(%c4, %c4, %c0, %c12)
        %307 = math.log10 %6 : tensor<2xf16>
        %308 = vector.reduction <maxf>, %23 : vector<11xf32> into f32
        %309 = math.atan %cst_2 : f32
        %310 = tensor.empty(%c8, %c14) : tensor<?x?xf16>
        %311 = arith.floordivsi %true, %true : i1
        %312 = arith.minsi %c265157077_i32, %c1268726765_i32 : i32
        %313 = arith.muli %c1268726765_i32, %c265157077_i32 : i32
        %314 = math.floor %20 : tensor<f32>
        scf.yield
      }
      case 2 {
        %296 = index.maxu %c10, %c14
        %297 = arith.shrui %true, %true : i1
        %splat_49 = tensor.splat %cst_2 : tensor<4x2xf32>
        memref.assume_alignment %alloc_16, 4 : memref<9x2xi16>
        %298 = affine.min affine_map<(d0, d1) -> (d1 + d0 - 30, d1 + d0 - 32, d1 + d0 + 16)>(%c1, %c10)
        %299 = vector.broadcast %cst_4 : f32 to vector<4xf32>
        %300 = vector.fma %299, %299, %299 : vector<4xf32>
        %301 = vector.broadcast %298 : index to vector<11xindex>
        %302 = vector.broadcast %true : i1 to vector<11xi1>
        vector.scatter %alloc_17[%c3, %c0] [%301], %302, %302 : memref<4x2xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
        %303 = bufferization.clone %alloc_14 : memref<2xf32> to memref<2xf32>
        %304 = vector.extract_strided_slice %33 {offsets = [4], sizes = [4], strides = [1]} : vector<11xi32> to vector<4xi32>
        %305 = math.cttz %c518060233_i32 : i32
        %306 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%267, %296, %298, %c6)
        %307 = math.round %cst_1 : f16
        %308 = vector.create_mask %c15, %c3 : vector<4x2xi1>
        %309 = arith.maxsi %c32058_i16, %c-11559_i16 : i16
        %310 = bufferization.clone %alloc_21 : memref<i16> to memref<i16>
        %311 = arith.minf %cst_2, %cst_4 : f32
        scf.yield
      }
      case 3 {
        %296 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %297 = arith.minf %cst_4, %cst_4 : f32
        %298 = index.ceildivu %c10, %c6
        %cst_49 = arith.constant 2.638400e+04 : f16
        %alloca_50 = memref.alloca() : memref<2xi16>
        %299 = vector.extract %23[6] : vector<11xf32>
        %300 = math.fma %4, %4, %4 : tensor<4xf32>
        %301 = tensor.empty() : tensor<2xi16>
        %true_51 = index.bool.constant true
        %302 = bufferization.to_tensor %alloc_12 : memref<4xi64>
        %303 = arith.floordivsi %c265157077_i32, %c1212036663_i32 : i32
        %304 = arith.shrui %c1212036663_i32, %c518060233_i32 : i32
        %305 = math.log %cst_0 : f16
        %306 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c10, %c10, %c14)
        bufferization.dealloc_tensor %18 : tensor<2x4xf32>
        %307 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 mod 2)>(%c0, %c6, %c9, %c7)
        scf.yield
      }
      case 4 {
        %296 = vector.insert %cst_5, %19 [7] : f32 into vector<11xf32>
        %inserted_49 = tensor.insert %true into %12[%c1] : tensor<4xi1>
        %297 = vector.extract_strided_slice %19 {offsets = [8], sizes = [3], strides = [1]} : vector<11xf32> to vector<3xf32>
        %298 = vector.broadcast %cst : f32 to vector<9x2xf32>
        %299 = vector.fma %298, %298, %298 : vector<9x2xf32>
        %300 = arith.shrui %c13810_i16, %c13810_i16 : i16
        %301 = math.tanh %4 : tensor<4xf32>
        %302 = vector.create_mask %c5 : vector<4xi1>
        %alloc_50 = memref.alloc() : memref<18xi16>
        memref.tensor_store %collapsed_45, %alloc_50 : memref<18xi16>
        %303 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 mod 2)>(%c10, %c15, %c12, %c15)
        %304 = vector.extract_strided_slice %19 {offsets = [2], sizes = [2], strides = [1]} : vector<11xf32> to vector<2xf32>
        %305 = vector.broadcast %cst_2 : f32 to vector<2x2xf32>
        %306 = vector.outerproduct %304, %304, %305 {kind = #vector.kind<add>} : vector<2xf32>, vector<2xf32>
        %307 = math.log2 %5 : tensor<4x2xf32>
        %308 = math.log %5 : tensor<4x2xf32>
        %309 = index.castu %c13 : index to i32
        %310 = math.absf %cst_0 : f16
        %311 = math.sqrt %4 : tensor<4xf32>
        scf.yield
      }
      default {
        %296 = math.atan2 %cst, %cst_2 : f32
        memref.assume_alignment %alloc_21, 1 : memref<i16>
        %297 = vector.broadcast %c518060233_i32 : i32 to vector<11x11xi32>
        %298 = vector.outerproduct %33, %33, %297 {kind = #vector.kind<or>} : vector<11xi32>, vector<11xi32>
        %299 = vector.load %alloc_19[%c3] : memref<4xf16>, vector<4xf16>
        %300 = math.log %cst : f32
        %301 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
        %302 = vector.broadcast %true : i1 to vector<4xi1>
        %303 = vector.maskedload %alloc_12[%c0], %302, %301 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %304 = index.maxs %c0, %c11
        %305 = affine.max affine_map<(d0, d1, d2) -> (-(d0 mod 128 - d0), d0, 0, -d1)>(%c8, %c13, %c4)
        %306 = vector.extract_strided_slice %33 {offsets = [2], sizes = [9], strides = [1]} : vector<11xi32> to vector<9xi32>
        %307 = arith.shrsi %c518060233_i32, %c1268726765_i32 : i32
        %alloc_49 = memref.alloc() : memref<4xi16>
        memref.tensor_store %17, %alloc_49 : memref<4xi16>
        %308 = vector.reduction <or>, %301 : vector<4xi64> into i64
        %309 = affine.min affine_map<(d0) -> (d0 - 54, d0 - 54)>(%c12)
        %310 = vector.broadcast %true : i1 to vector<i1>
        %311 = vector.transfer_write %310, %11[%c5] : vector<i1>, tensor<2xi1>
        %312 = vector.broadcast %c14 : index to vector<2xindex>
        %313 = vector.broadcast %true : i1 to vector<2xi1>
        %314 = vector.broadcast %c172817522_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_15[%c0] [%312], %313, %314 : memref<2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %315 = math.sqrt %20 : tensor<f32>
      }
      %268 = vector.shuffle %19, %19 [1, 2, 4, 8, 10, 13, 14, 16, 20] : vector<11xf32>, vector<11xf32>
      %269 = index.sizeof
      %270 = vector.extract_strided_slice %19 {offsets = [9], sizes = [2], strides = [1]} : vector<11xf32> to vector<2xf32>
      %271 = bufferization.clone %alloc : memref<4xi1> to memref<4xi1>
      %272 = math.ctlz %c172817522_i64 : i64
      %273 = math.roundeven %21 : tensor<f32>
      %274 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %275 = vector.fma %274, %274, %274 : vector<4xf32>
      %276 = index.maxs %c9, %269
      memref.assume_alignment %alloc_15, 2 : memref<2xi64>
      %277 = arith.remui %c13810_i16, %c13810_i16 : i16
      %278 = index.casts %true : i1 to index
      %279 = vector.broadcast %cst : f32 to vector<4x2xf32>
      %280 = vector.fma %279, %279, %279 : vector<4x2xf32>
      %extracted_46 = tensor.extract %0[%c2] : tensor<4xi1>
      %splat_47 = tensor.splat %c1268726765_i32 : tensor<2xi32>
      %281 = vector.flat_transpose %275 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %282 = math.rsqrt %4 : tensor<4xf32>
      %283 = vector.broadcast %true : i1 to vector<2xi1>
      %284 = vector.broadcast %c518060233_i32 : i32 to vector<2xi32>
      %285 = vector.gather %4[%c12] [%284], %283, %270 : tensor<4xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %286 = vector.extract %281[0] : vector<4xf32>
      %287 = affine.min affine_map<(d0) -> ((d0 + 1) ceildiv 4, d0 + 32, (d0 + 32) ceildiv 2)>(%c13)
      %288 = memref.realloc %alloc_8 : memref<2xf32> to memref<2xf32>
      %289 = math.log1p %cst : f32
      %290 = vector.matrix_multiply %283, %283 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
      %291 = vector.bitcast %274 : vector<4xf32> to vector<4xf32>
      %292 = index.maxu %c1, %c0
      %293 = scf.while (%arg1 = %cst_3) : (f16) -> f16 {
        %alloca_49 = memref.alloca() : memref<9x2xi1>
        %296 = vector.broadcast %cst_3 : f16 to vector<2xf16>
        %297 = vector.maskedload %alloc_9[%c7, %c0], %283, %296 : memref<9x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %298 = vector.insert %cst_5, %285 [1] : f32 into vector<2xf32>
        %299 = index.casts %c6 : index to i32
        %alloc_50 = memref.alloc() : memref<2xi1>
        %300 = vector.create_mask %c13 : vector<2xi1>
        %301 = math.fma %cst_3, %cst_1, %arg1 : f16
        %302 = vector.flat_transpose %281 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        scf.condition(%true) %arg1 : f16
      } do {
      ^bb0(%arg1: f16):
        %296 = arith.ori %c1268726765_i32, %c518060233_i32 : i32
        %297 = arith.shrsi %c-11559_i16, %c32058_i16 : i16
        %298 = math.ctlz %c-11559_i16 : i16
        %299 = math.exp2 %20 : tensor<f32>
        %300 = math.exp2 %cst : f32
        %301 = math.fma %cst_1, %arg1, %arg1 : f16
        %302 = arith.xori %c518060233_i32, %c518060233_i32 : i32
        %303 = arith.ceildivsi %c265157077_i32, %c518060233_i32 : i32
        %304 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
        %alloca_49 = memref.alloca() : memref<9x2xi32>
        %305 = arith.addi %c518060233_i32, %c1268726765_i32 : i32
        %306 = vector.flat_transpose %274 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %307 = arith.maxui %c-11559_i16, %c13810_i16 : i16
        %308 = vector.extract_strided_slice %291 {offsets = [1], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
        %309 = vector.multi_reduction <minsi>, %283, %true [0] : vector<2xi1> to i1
        %310 = arith.shli %c265157077_i32, %c1212036663_i32 : i32
        scf.yield %cst_0 : f16
      }
      %294 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
      scf.if %extracted_46 {
        %296 = arith.ceildivsi %c-11559_i16, %c13810_i16 : i16
        %297 = index.maxs %c0, %c0
        %298 = arith.ori %c-11559_i16, %c-11559_i16 : i16
        %299 = arith.mulf %cst_5, %cst_4 : f32
        %300 = arith.maxsi %c32058_i16, %c13810_i16 : i16
        %alloca_49 = memref.alloca() : memref<2xi16>
        %301 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 - 64)) floordiv 64)>(%278, %c10, %278)
        %302 = vector.shuffle %270, %285 [2, 3] : vector<2xf32>, vector<2xf32>
      } else {
        %296 = arith.minui %extracted_46, %true : i1
        %inserted_49 = tensor.insert %c1268726765_i32 into %9[%c6, %c0] : tensor<9x2xi32>
        %297 = arith.minf %cst_2, %cst_5 : f32
        %298 = affine.max affine_map<(d0) -> ((d0 mod 128) floordiv 8, d0, d0)>(%276)
        %c714087685_i64 = arith.constant 714087685 : i64
        %299 = arith.maxsi %c1212036663_i32, %c265157077_i32 : i32
        %300 = memref.atomic_rmw mins %c518060233_i32, %alloc_7[%c2, %c1] : (i32, memref<4x2xi32>) -> i32
        %301 = arith.xori %true, %true : i1
      }
      %295 = tensor.empty() : tensor<4x2xf16>
      %mapped_48 = linalg.map ins(%1, %1, %1 : tensor<4x2xf16>, tensor<4x2xf16>, tensor<4x2xf16>) outs(%295 : tensor<4x2xf16>)
        (%in: f16, %in_49: f16, %in_50: f16) {
          %inserted_51 = tensor.insert %c-11559_i16 into %7[%c2] : tensor<4xi16>
          %296 = arith.floordivsi %c265157077_i32, %c518060233_i32 : i32
          %297 = arith.shrsi %true, %true : i1
          %298 = vector.extract %285[0] : vector<2xf32>
          %299 = arith.ori %c518060233_i32, %c265157077_i32 : i32
          %extracted_52 = tensor.extract %13[%c6, %c0] : tensor<9x2xi16>
          %300 = math.absf %6 : tensor<2xf16>
          %301 = arith.maxsi %extracted_46, %extracted_46 : i1
          %302 = math.atan %295 : tensor<4x2xf16>
          %303 = arith.maxui %c1212036663_i32, %c265157077_i32 : i32
          %304 = vector.bitcast %284 : vector<2xi32> to vector<2xf32>
          %extracted_53 = tensor.extract %2[%c1] : tensor<2xi1>
          %305 = arith.ceildivsi %c172817522_i64, %c172817522_i64 : i64
          %expanded_54 = tensor.expand_shape %splat_47 [[0, 1]] : tensor<2xi32> into tensor<2x1xi32>
          %true_55 = index.bool.constant true
          %306 = index.maxs %267, %292
          %307 = arith.shrsi %c32058_i16, %c32058_i16 : i16
          %308 = math.ceil %20 : tensor<f32>
          %309 = vector.extract_strided_slice %279 {offsets = [1], sizes = [2], strides = [1]} : vector<4x2xf32> to vector<2x2xf32>
          %310 = vector.shuffle %285, %270 [0, 1] : vector<2xf32>, vector<2xf32>
          %311 = arith.floordivsi %true, %extracted_46 : i1
          %312 = math.floor %21 : tensor<f32>
          %313 = math.fma %20, %21, %21 : tensor<f32>
          %314 = vector.broadcast %cst_5 : f32 to vector<2xf32>
          %315 = vector.fma %314, %270, %304 : vector<2xf32>
          %false_56 = index.bool.constant false
          %316 = arith.shrsi %extracted_46, %false_56 : i1
          %317 = arith.floordivsi %c13810_i16, %c-11559_i16 : i16
          %alloc_57 = memref.alloc() : memref<4xi16>
          memref.tensor_store %7, %alloc_57 : memref<4xi16>
          %318 = arith.shrsi %extracted_46, %true_55 : i1
          affine.store %extracted_52, %alloc_16[%c7, %c9] : memref<9x2xi16>
          %319 = math.log2 %cst_2 : f32
          memref.assume_alignment %alloc_19, 2 : memref<4xf16>
          %cst_58 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_58 : f16
        }
      memref.alloca_scope.return %true : i1
    }
    %35 = vector.flat_transpose %23 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
    %36 = vector.extract_strided_slice %19 {offsets = [7], sizes = [1], strides = [1]} : vector<11xf32> to vector<1xf32>
    %37 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%c2, %c4, %c6)
    %38 = arith.ori %34, %true : i1
    %39 = scf.index_switch %c8 -> memref<9x2xf16> 
    case 1 {
      %267 = arith.minui %c13810_i16, %c32058_i16 : i16
      vector.print %23 : vector<11xf32>
      %268 = arith.maxf %cst_3, %cst_3 : f16
      %269 = bufferization.clone %alloc : memref<4xi1> to memref<4xi1>
      %alloca_44 = memref.alloca() : memref<4x2xi16>
      %alloca_45 = memref.alloca() : memref<4xi64>
      %270 = math.atan2 %cst_5, %cst : f32
      %271 = math.copysign %5, %5 : tensor<4x2xf32>
      %272 = index.sizeof
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %273 = vector.transfer_read %15[%c5], %c0_i64 : tensor<2xi64>, vector<i64>
      %274 = math.fma %cst_2, %cst_5, %cst_4 : f32
      %275 = arith.addi %true, %true : i1
      %276 = vector.broadcast %cst_2 : f32 to vector<4x2xf32>
      %277 = vector.fma %276, %276, %276 : vector<4x2xf32>
      %278 = arith.remui %c172817522_i64, %c172817522_i64 : i64
      %279 = arith.cmpf ole, %cst_3, %cst_1 : f16
      %280 = affine.max affine_map<(d0, d1) -> (d0, d1, d1 * 4, d0 + d1 - d1 * 8)>(%c12, %c12)
      scf.yield %alloc_9 : memref<9x2xf16>
    }
    case 2 {
      %267 = math.absf %1 : tensor<4x2xf16>
      %268 = arith.minf %cst_4, %cst_5 : f32
      %269 = math.ipowi %9, %9 : tensor<9x2xi32>
      %270 = arith.addi %c1212036663_i32, %c1212036663_i32 : i32
      %271 = vector.create_mask %c14 : vector<4xi1>
      %272 = vector.broadcast %c32058_i16 : i16 to vector<2xi16>
      %273 = vector.broadcast %true : i1 to vector<2xi1>
      %274 = vector.broadcast %c1268726765_i32 : i32 to vector<2xi32>
      %275 = vector.gather %alloc_16[%c4, %c2] [%274], %273, %272 : memref<9x2xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %276 = arith.shrsi %true, %34 : i1
      %c2046444046_i32 = arith.constant 2046444046 : i32
      %277 = vector.flat_transpose %275 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %278 = math.floor %21 : tensor<f32>
      %279 = index.add %c6, %c7
      %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 ceildiv 32 + d0))>(%c8, %c14, %c4, %c5)
      %281 = math.powf %4, %4 : tensor<4xf32>
      %282 = index.sizeof
      %generated_44 = tensor.generate %c14 {
      ^bb0(%arg1: index):
        %284 = arith.addf %cst_5, %cst : f32
        %285 = tensor.empty() : tensor<4xi16>
        %286 = math.ipowi %16, %7 : tensor<4xi16>
        %287 = math.ipowi %c265157077_i32, %c265157077_i32 : i32
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      %283 = math.floor %cst_1 : f16
      scf.yield %alloc_9 : memref<9x2xf16>
    }
    case 3 {
      %267 = index.castu %c7 : index to i32
      %268 = vector.broadcast %c13810_i16 : i16 to vector<4xi16>
      %269 = vector.broadcast %34 : i1 to vector<4xi1>
      %270 = vector.maskedload %alloc_21[], %269, %268 : memref<i16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      memref.tensor_store %15, %alloc_15 : memref<2xi64>
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (d1 >= 0)>(%c14, %c6, %c14, %c2) -> memref<2xf16> {
        %284 = bufferization.to_tensor %alloc_21 : memref<i16>
        %285 = vector.broadcast %cst_1 : f16 to vector<9x2xf16>
        memref.assume_alignment %alloc_15, 16 : memref<2xi64>
        %286 = arith.ceildivsi %34, %true : i1
        memref.assume_alignment %alloc_7, 8 : memref<4x2xi32>
        %287 = math.cos %18 : tensor<2x4xf32>
        %288 = index.casts %22 : index to i32
        %289 = vector.matrix_multiply %23, %35 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %alloc_45 = memref.alloc() : memref<2xf16>
        affine.yield %alloc_45 : memref<2xf16>
      } else {
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 32)>(%c14, %c9, %c9)
        %285 = memref.realloc %alloc_14 : memref<2xf32> to memref<2xf32>
        %286 = vector.broadcast %c6 : index to vector<4xindex>
        %287 = vector.broadcast %c518060233_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_7[%c3, %c0] [%286], %269, %287 : memref<4x2xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %288 = vector.bitcast %270 : vector<4xi16> to vector<4xi16>
        %289 = vector.create_mask %c12, %c9 : vector<4x2xi1>
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4)>(%37, %c0, %c14, %c5)
        %291 = arith.ori %c172817522_i64, %c172817522_i64 : i64
        %292 = arith.shrsi %c1212036663_i32, %c1268726765_i32 : i32
        %alloc_45 = memref.alloc() : memref<2xf16>
        affine.yield %alloc_45 : memref<2xf16>
      }
      %272 = tensor.empty() : tensor<2xi32>
      %273 = math.fpowi %6, %272 : tensor<2xf16>, tensor<2xi32>
      %274 = vector.broadcast %c13 : index to vector<4xindex>
      vector.scatter %alloc_13[%c1] [%274], %269, %268 : memref<2xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %expanded_44 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<2x4xf32> into tensor<2x4x1xf32>
      %275 = affine.if affine_set<(d0, d1) : (60 >= 0, 15 >= 0, 0 >= 0)>(%c6, %c10) -> f16 {
        %alloc_45 = memref.alloc() : memref<4x2xi32>
        %284 = tensor.empty() : tensor<4x2xi32>
        %285 = math.fpowi %1, %284 : tensor<4x2xf16>, tensor<4x2xi32>
        %286 = math.tanh %1 : tensor<4x2xf16>
        %287 = math.round %6 : tensor<2xf16>
        %288 = vector.flat_transpose %270 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %289 = math.cos %cst_4 : f32
        %290 = math.absf %cst_4 : f32
        %291 = math.floor %cst_1 : f16
        affine.yield %cst_0 : f16
      } else {
        %284 = index.ceildivu %c7, %c1
        %285 = math.powf %6, %6 : tensor<2xf16>
        %286 = math.sqrt %cst_0 : f16
        %287 = bufferization.to_memref %5 : memref<4x2xf32>
        %288 = index.sizeof
        %expanded_45 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<4x2xi16> into tensor<4x2x1xi16>
        %extracted_46 = tensor.extract %11[%c1] : tensor<2xi1>
        %289 = arith.maxsi %c32058_i16, %c-11559_i16 : i16
        affine.yield %cst_0 : f16
      }
      %276 = arith.maxsi %c-11559_i16, %c-11559_i16 : i16
      %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%c11, %c7, %c11, %c15)
      %278 = index.add %c8, %c12
      %279 = math.log1p %5 : tensor<4x2xf32>
      %280 = scf.while (%arg1 = %35) : (vector<11xf32>) -> vector<11xf32> {
        %splat_45 = tensor.splat %c13810_i16 : tensor<4x2xi16>
        memref.copy %alloc_8, %alloc_14 : memref<2xf32> to memref<2xf32>
        %284 = arith.ori %34, %true : i1
        %285 = affine.min affine_map<(d0, d1, d2) -> (d2 - 2)>(%c13, %277, %22)
        %286 = arith.mulf %cst_4, %cst_5 : f32
        %extracted_46 = tensor.extract %10[%c3] : tensor<4xi16>
        %287 = arith.addi %c265157077_i32, %c1212036663_i32 : i32
        %288 = math.expm1 %5 : tensor<4x2xf32>
        scf.condition(%34) %19 : vector<11xf32>
      } do {
      ^bb0(%arg1: vector<11xf32>):
        %splat_45 = tensor.splat %c518060233_i32 : tensor<9x2xi32>
        %284 = math.log2 %expanded_44 : tensor<2x4x1xf32>
        %285 = math.atan2 %5, %5 : tensor<4x2xf32>
        %286 = math.floor %cst_0 : f16
        %287 = math.copysign %5, %5 : tensor<4x2xf32>
        %288 = math.copysign %21, %21 : tensor<f32>
        %from_elements_46 = tensor.from_elements %true, %34, %34, %34 : tensor<4xi1>
        %289 = vector.shuffle %35, %36 [0, 2, 3, 8, 10, 11] : vector<11xf32>, vector<1xf32>
        %290 = math.cttz %splat_45 : tensor<9x2xi32>
        %291 = math.tanh %5 : tensor<4x2xf32>
        %292 = vector.bitcast %23 : vector<11xf32> to vector<11xf32>
        %293 = bufferization.clone %alloc_18 : memref<4xi64> to memref<4xi64>
        %294 = affine.apply affine_map<(d0) -> ((d0 floordiv 64) * -16)>(%37)
        %295 = vector.shuffle %269, %269 [0, 2, 3, 4, 5, 6, 7] : vector<4xi1>, vector<4xi1>
        %296 = arith.floordivsi %c-11559_i16, %c32058_i16 : i16
        %297 = vector.reduction <maxf>, %23 : vector<11xf32> into f32
        scf.yield %35 : vector<11xf32>
      }
      %281 = scf.index_switch %c12 -> f32 
      case 1 {
        %284 = arith.xori %c518060233_i32, %c518060233_i32 : i32
        %285 = math.fpowi %cst_3, %c265157077_i32 : f16, i32
        %286 = arith.ceildivsi %c172817522_i64, %c172817522_i64 : i64
        %287 = vector.shuffle %33, %33 [0, 5, 6, 12, 13, 15, 18, 20, 21] : vector<11xi32>, vector<11xi32>
        %288 = vector.broadcast %c1212036663_i32 : i32 to vector<11x11xi32>
        %289 = vector.outerproduct %33, %33, %288 {kind = #vector.kind<mul>} : vector<11xi32>, vector<11xi32>
        %290 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
        %291 = vector.maskedload %alloc_18[%c0], %269, %290 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %292 = math.log %5 : tensor<4x2xf32>
        %293 = math.absf %cst_3 : f16
        %294 = vector.broadcast %c32058_i16 : i16 to vector<2xi16>
        %295 = vector.broadcast %true : i1 to vector<2xi1>
        %296 = vector.maskedload %alloc_16[%c4, %c1], %295, %294 : memref<9x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %297 = arith.remf %cst_5, %cst_5 : f32
        %extracted_45 = tensor.extract %expanded_44[%c0, %c0, %c0] : tensor<2x4x1xf32>
        %inserted_46 = tensor.insert %c-11559_i16 into %7[%c2] : tensor<4xi16>
        %298 = math.ipowi %12, %12 : tensor<4xi1>
        %299 = math.tan %cst_1 : f16
        %300 = arith.remui %c1268726765_i32, %c518060233_i32 : i32
        %301 = vector.create_mask %c11 : vector<4xi1>
        scf.yield %cst_2 : f32
      }
      case 2 {
        %284 = tensor.empty() : tensor<i32>
        %285 = math.fpowi %20, %284 : tensor<f32>, tensor<i32>
        %286 = arith.remui %c518060233_i32, %c265157077_i32 : i32
        %alloc_45 = memref.alloc() : memref<f32>
        memref.tensor_store %21, %alloc_45 : memref<f32>
        %287 = affine.load %alloc_20[%c10] : memref<2xi1>
        %288 = affine.min affine_map<(d0) -> (d0 mod 32 + 16)>(%c9)
        %289 = math.cttz %9 : tensor<9x2xi32>
        %290 = arith.divui %c13810_i16, %c13810_i16 : i16
        %alloc_46 = memref.alloc() : memref<4x2xi16>
        memref.tensor_store %14, %alloc_46 : memref<4x2xi16>
        %291 = tensor.empty() : tensor<2xi1>
        %alloc_47 = memref.alloc() : memref<4xi32>
        memref.tensor_store %8, %alloc_47 : memref<4xi32>
        %292 = bufferization.to_memref %10 : memref<4xi16>
        %293 = arith.muli %c172817522_i64, %c172817522_i64 : i64
        %collapsed_48 = tensor.collapse_shape %transposed [[0, 1]] : tensor<2x4xf32> into tensor<8xf32>
        %294 = arith.addi %c265157077_i32, %c265157077_i32 : i32
        %295 = vector.broadcast %cst_4 : f32 to vector<4x2xf32>
        %296 = vector.fma %295, %295, %295 : vector<4x2xf32>
        %297 = math.fma %transposed, %transposed, %transposed : tensor<2x4xf32>
        scf.yield %cst_2 : f32
      }
      default {
        %284 = arith.shrsi %c-11559_i16, %c32058_i16 : i16
        %285 = math.log10 %6 : tensor<2xf16>
        %286 = arith.cmpi ugt, %c1268726765_i32, %c265157077_i32 : i32
        %287 = arith.xori %true, %34 : i1
        %288 = arith.addi %c172817522_i64, %c172817522_i64 : i64
        %289 = arith.ori %34, %true : i1
        %290 = vector.broadcast %c10 : index to vector<4xindex>
        %291 = vector.broadcast %c1212036663_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_7[%c2, %c0] [%290], %269, %291 : memref<4x2xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %292 = memref.realloc %alloc_22 : memref<4xf32> to memref<4xf32>
        %293 = math.ipowi %0, %0 : tensor<4xi1>
        memref.assume_alignment %alloc_13, 8 : memref<2xi16>
        %collapsed_45 = tensor.collapse_shape %13 [[0, 1]] : tensor<9x2xi16> into tensor<18xi16>
        %294 = vector.reduction <add>, %23 : vector<11xf32> into f32
        affine.store %c172817522_i64, %alloc_18[%c5] : memref<4xi64>
        %collapsed_46 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x2xf32> into tensor<8xf32>
        %295 = arith.maxsi %c1268726765_i32, %c1212036663_i32 : i32
        %extracted_47 = tensor.extract %272[%c0] : tensor<2xi32>
        scf.yield %cst_5 : f32
      }
      %282 = index.ceildivs %c13, %c2
      %283 = affine.max affine_map<(d0, d1) -> (d1)>(%22, %277)
      scf.yield %alloc_9 : memref<9x2xf16>
    }
    default {
      %267 = arith.shrui %c1268726765_i32, %c518060233_i32 : i32
      %268 = memref.realloc %alloc_20 : memref<2xi1> to memref<9xi1>
      %269 = vector.broadcast %cst_5 : f32 to vector<9xf32>
      %270 = vector.broadcast %true : i1 to vector<9xi1>
      %271 = vector.maskedload %alloc_22[%c2], %270, %269 : memref<4xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %extracted_44 = tensor.extract %0[%c0] : tensor<4xi1>
      %272 = math.log10 %transposed : tensor<2x4xf32>
      %273 = affine.load %alloc_8[%c7] : memref<2xf32>
      %274 = vector.broadcast %c13810_i16 : i16 to vector<2xi16>
      vector.transfer_write %274, %alloc_16[%c10, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi16>, memref<9x2xi16>
      %275 = math.sqrt %5 : tensor<4x2xf32>
      %276 = vector.insert %c32058_i16, %274 [0] : i16 into vector<2xi16>
      %c0_i32 = arith.constant 0 : i32
      %277 = vector.transfer_read %9[%c12, %c14], %c0_i32 : tensor<9x2xi32>, vector<i32>
      %278 = index.casts %c1212036663_i32 : i32 to index
      %alloca_45 = memref.alloca() : memref<9x2xi32>
      %279 = arith.negf %cst_2 : f32
      %alloc_46 = memref.alloc() : memref<2x9xi16>
      %280 = tensor.empty() : tensor<4x9xi16>
      %281 = linalg.matmul ins(%14, %alloc_46 : tensor<4x2xi16>, memref<2x9xi16>) outs(%280 : tensor<4x9xi16>) -> tensor<4x9xi16>
      %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 ceildiv 32 + d0))>(%278, %c5, %c15, %c7)
      %283 = math.tanh %cst_5 : f32
      scf.yield %alloc_9 : memref<9x2xf16>
    }
    affine.for %arg1 = 0 to 69 {
    }
    %extracted = tensor.extract %32[%c2] : tensor<4xi1>
    %40 = arith.remf %cst_1, %cst_0 : f16
    %41 = scf.while (%arg1 = %alloc_11) : (memref<2xi1>) -> memref<2xi1> {
      %267 = vector.extract %23[6] : vector<11xf32>
      %268 = index.ceildivu %c4, %c1
      %269 = index.maxs %c1, %c14
      %270 = math.atan %1 : tensor<4x2xf16>
      %271 = vector.bitcast %23 : vector<11xf32> to vector<11xi32>
      %272 = vector.extract_strided_slice %36 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %273 = scf.while (%arg2 = %alloc_10) : (memref<4x2xf16>) -> memref<4x2xf16> {
        %278 = arith.cmpi eq, %c13810_i16, %c13810_i16 : i16
        %279 = vector.extract_strided_slice %19 {offsets = [9], sizes = [1], strides = [1]} : vector<11xf32> to vector<1xf32>
        %280 = math.atan %4 : tensor<4xf32>
        %281 = vector.create_mask %37, %c12 : vector<4x2xi1>
        %282 = math.log1p %cst_0 : f16
        %283 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 32)>(%c14, %c15, %c15)
        %284 = math.rsqrt %1 : tensor<4x2xf16>
        %rank = tensor.rank %1 : tensor<4x2xf16>
        scf.condition(%34) %alloc_10 : memref<4x2xf16>
      } do {
      ^bb0(%arg2: memref<4x2xf16>):
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 16 - 4)>(%c7, %c7, %c3, %c7)
        %279 = math.fma %6, %6, %6 : tensor<2xf16>
        %280 = math.floor %6 : tensor<2xf16>
        %281 = arith.maxsi %c172817522_i64, %c172817522_i64 : i64
        %282 = arith.remui %c13810_i16, %c-11559_i16 : i16
        %283 = math.absi %2 : tensor<2xi1>
        %284 = vector.bitcast %19 : vector<11xf32> to vector<11xf32>
        %false_44 = index.bool.constant false
        %285 = arith.ceildivsi %34, %extracted : i1
        %false_45 = index.bool.constant false
        %286 = arith.shrsi %extracted, %false_44 : i1
        %287 = arith.maxsi %c-11559_i16, %c13810_i16 : i16
        %288 = index.maxu %278, %c14
        %289 = arith.minf %cst_5, %cst_2 : f32
        %290 = math.ipowi %16, %7 : tensor<4xi16>
        %291 = vector.multi_reduction <add>, %33, %c1212036663_i32 [0] : vector<11xi32> to i32
        scf.yield %arg2 : memref<4x2xf16>
      }
      %274 = vector.broadcast %cst_1 : f16 to vector<4xf16>
      %275 = vector.broadcast %true : i1 to vector<4xi1>
      %276 = vector.broadcast %c1212036663_i32 : i32 to vector<4xi32>
      %277 = vector.gather %1[%c4, %c14] [%276], %275, %274 : tensor<4x2xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      scf.condition(%extracted) %arg1 : memref<2xi1>
    } do {
    ^bb0(%arg1: memref<2xi1>):
      %267 = math.atan %4 : tensor<4xf32>
      %268 = index.sizeof
      %269 = tensor.empty() : tensor<9x2xf16>
      %270 = vector.broadcast %cst_3 : f16 to vector<9x2xf16>
      %271 = vector.broadcast %true : i1 to vector<9x2xi1>
      %272 = vector.broadcast %c518060233_i32 : i32 to vector<9x2xi32>
      %273 = vector.gather %269[%c12, %c6] [%272], %271, %270 : tensor<9x2xf16>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf16> into vector<9x2xf16>
      %274 = arith.negf %cst_2 : f32
      %cast_44 = tensor.cast %12 : tensor<4xi1> to tensor<?xi1>
      %false_45 = index.bool.constant false
      %collapsed_46 = tensor.collapse_shape %13 [[0, 1]] : tensor<9x2xi16> into tensor<18xi16>
      %275 = arith.ori %c518060233_i32, %c518060233_i32 : i32
      %276 = math.cos %6 : tensor<2xf16>
      %277 = vector.shuffle %33, %33 [1, 2, 12, 13, 21] : vector<11xi32>, vector<11xi32>
      %278 = vector.shuffle %36, %35 [0, 2, 4, 5, 7] : vector<1xf32>, vector<11xf32>
      %279 = math.fma %5, %5, %5 : tensor<4x2xf32>
      %280 = index.floordivs %c10, %c3
      %281 = arith.muli %c265157077_i32, %c265157077_i32 : i32
      %282 = math.rsqrt %18 : tensor<2x4xf32>
      %283 = vector.broadcast %c8 : index to vector<4xindex>
      %284 = vector.broadcast %34 : i1 to vector<4xi1>
      vector.scatter %alloc[%c3] [%283], %284, %284 : memref<4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
      scf.yield %29 : memref<2xi1>
    }
    %42 = math.absf %cst_1 : f16
    %43 = vector.broadcast %c9 : index to vector<4xindex>
    %44 = vector.broadcast %extracted : i1 to vector<4xi1>
    %45 = vector.broadcast %cst_2 : f32 to vector<4xf32>
    vector.scatter %alloc_22[%c1] [%43], %44, %45 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %46 = index.casts %c172817522_i64 : i64 to index
    %47 = scf.while (%arg1 = %cst_2) : (f32) -> f32 {
      %267 = vector.create_mask %c13, %46 : vector<4x2xi1>
      %268 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 - 64)) floordiv 64)>(%22, %c3, %22)
      %269 = math.cos %5 : tensor<4x2xf32>
      %270 = arith.remf %cst_1, %cst_1 : f16
      %271 = vector.extract_strided_slice %267 {offsets = [1], sizes = [2], strides = [1]} : vector<4x2xi1> to vector<2x2xi1>
      %272 = memref.realloc %alloc_12 : memref<4xi64> to memref<2xi64>
      %expanded_44 = tensor.expand_shape %0 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
      %from_elements_45 = tensor.from_elements %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64 : tensor<4x2xi64>
      scf.condition(%true) %arg1 : f32
    } do {
    ^bb0(%arg1: f32):
      %267 = index.casts %c1212036663_i32 : i32 to index
      %false_44 = index.bool.constant false
      %268 = vector.broadcast %c14 : index to vector<2xindex>
      %269 = vector.broadcast %34 : i1 to vector<2xi1>
      %270 = vector.broadcast %cst_3 : f16 to vector<2xf16>
      vector.scatter %alloc_10[%c2, %c0] [%268], %269, %270 : memref<4x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
      %271 = index.ceildivu %22, %c3
      affine.for %arg2 = 0 to 118 {
      }
      %272 = arith.maxsi %c265157077_i32, %c1212036663_i32 : i32
      %273 = index.ceildivu %22, %c15
      %274 = arith.shrui %c13810_i16, %c13810_i16 : i16
      %275 = math.tan %18 : tensor<2x4xf32>
      %276 = vector.flat_transpose %33 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
      %splat_45 = tensor.splat %cst_5 : tensor<4xf32>
      %277 = vector.create_mask %c8 : vector<2xi1>
      %278 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
      %279 = math.ipowi %7, %7 : tensor<4xi16>
      %280 = arith.maxsi %c13810_i16, %c13810_i16 : i16
      %281 = math.copysign %cst, %cst_4 : f32
      scf.yield %arg1 : f32
    }
    %48 = math.tan %1 : tensor<4x2xf16>
    %49 = scf.index_switch %c7 -> tensor<4xf32> 
    case 1 {
      %267 = arith.floordivsi %c32058_i16, %c-11559_i16 : i16
      %268 = arith.maxui %c-11559_i16, %c-11559_i16 : i16
      %269 = affine.if affine_set<(d0) : (d0 >= 0, d0 floordiv 2 + (d0 - 2) ceildiv 8 + 32 >= 0, d0 * 4096 == 0)>(%c0) -> memref<9x2xf16> {
        %280 = vector.reduction <maxsi>, %33 : vector<11xi32> into i32
        %281 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 4 - 12, d1 - 1, -(d1 - 1) + 32)>(%c12, %c7, %c13)
        %282 = vector.broadcast %cst_2 : f32 to vector<9x2xf32>
        %283 = vector.fma %282, %282, %282 : vector<9x2xf32>
        %expanded_45 = tensor.expand_shape %6 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
        %284 = math.log2 %4 : tensor<4xf32>
        %285 = index.add %37, %c5
        %286 = affine.min affine_map<(d0) -> ((d0 floordiv 2) * 128 + 24, ((d0 floordiv 2) * 4 + (d0 * 2) floordiv 32 - 1) mod 8, d0 + 4, (d0 floordiv 2) ceildiv 64)>(%c0)
        %false_46 = index.bool.constant false
        affine.yield %alloc_9 : memref<9x2xf16>
      } else {
        %280 = math.fma %6, %6, %6 : tensor<2xf16>
        %281 = tensor.empty() : tensor<2x11xi32>
        %282 = tensor.empty() : tensor<9x11xi32>
        %283 = linalg.matmul ins(%9, %281 : tensor<9x2xi32>, tensor<2x11xi32>) outs(%282 : tensor<9x11xi32>) -> tensor<9x11xi32>
        %284 = math.round %5 : tensor<4x2xf32>
        %285 = vector.broadcast %c7 : index to vector<9xindex>
        %286 = vector.broadcast %true : i1 to vector<9xi1>
        %287 = vector.broadcast %c13810_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_21[] [%285], %286, %287 : memref<i16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %288 = arith.ceildivsi %extracted, %34 : i1
        %289 = arith.divf %cst, %cst_4 : f32
        %290 = arith.maxsi %c1212036663_i32, %c518060233_i32 : i32
        %291 = arith.shrui %c1212036663_i32, %c1212036663_i32 : i32
        affine.yield %alloc_9 : memref<9x2xf16>
      }
      %270 = affine.load %29[%c8] : memref<2xi1>
      %271 = affine.if affine_set<(d0, d1, d2) : (d1 + d0 floordiv 16 >= 0, d0 mod 4 == 0, 0 >= 0, (d0 floordiv 16) ceildiv 64 >= 0)>(%c15, %c12, %c15) -> memref<4xi32> {
        %expanded_45 = tensor.expand_shape %10 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %280 = vector.transpose %33, [0] : vector<11xi32> to vector<11xi32>
        memref.assume_alignment %alloc_15, 2 : memref<2xi64>
        %281 = math.ceil %6 : tensor<2xf16>
        %282 = math.log2 %6 : tensor<2xf16>
        %283 = vector.broadcast %true : i1 to vector<4x2xi1>
        %284 = vector.flat_transpose %36 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %285 = arith.ori %extracted, %true : i1
        %alloc_46 = memref.alloc() : memref<4xi32>
        affine.yield %alloc_46 : memref<4xi32>
      } else {
        %280 = math.absf %4 : tensor<4xf32>
        %281 = arith.floordivsi %extracted, %270 : i1
        %282 = math.fpowi %cst_5, %c1268726765_i32 : f32, i32
        %283 = vector.reduction <mul>, %35 : vector<11xf32> into f32
        %284 = affine.load %alloc_22[%c11] : memref<4xf32>
        memref.assume_alignment %alloc, 2 : memref<4xi1>
        %collapsed_45 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
        %285 = arith.remf %cst_4, %284 : f32
        %alloc_46 = memref.alloc() : memref<4xi32>
        affine.yield %alloc_46 : memref<4xi32>
      }
      %extracted_44 = tensor.extract %8[%c1] : tensor<4xi32>
      %272 = memref.realloc %alloc_19 : memref<4xf16> to memref<11xf16>
      %273 = math.atan2 %5, %5 : tensor<4x2xf32>
      memref.assume_alignment %alloc_12, 2 : memref<4xi64>
      %274 = math.copysign %cst, %cst_2 : f32
      memref.assume_alignment %alloc, 2 : memref<4xi1>
      %275 = vector.extract %23[7] : vector<11xf32>
      %276 = tensor.empty() : tensor<9x2xi32>
      %277 = math.ctlz %12 : tensor<4xi1>
      %278 = index.casts %c3 : index to i32
      %279 = arith.shrsi %270, %true : i1
      scf.yield %4 : tensor<4xf32>
    }
    case 2 {
      %267 = arith.ceildivsi %extracted, %34 : i1
      %268 = tensor.empty() : tensor<4xi1>
      %mapped_44 = linalg.map ins(%alloc : memref<4xi1>) outs(%268 : tensor<4xi1>)
        (%in: i1) {
          %282 = math.log1p %1 : tensor<4x2xf16>
          %283 = vector.reduction <mul>, %19 : vector<11xf32> into f32
          %284 = vector.insertelement %cst, %36[%c7 : index] : vector<1xf32>
          %285 = vector.broadcast %cst : f32 to vector<2xf32>
          %286 = vector.fma %285, %285, %285 : vector<2xf32>
          %287 = affine.min affine_map<(d0) -> (d0 * -2 - 8, d0 * -2, d0)>(%c6)
          %288 = affine.apply affine_map<(d0) -> ((d0 floordiv 64) * -16)>(%c4)
          %289 = math.atan2 %4, %4 : tensor<4xf32>
          %290 = index.ceildivs %c12, %22
          %291 = math.sqrt %cst_5 : f32
          %292 = vector.broadcast %in : i1 to vector<2xi1>
          %293 = vector.create_mask %46, %290 : vector<4x2xi1>
          %294 = index.ceildivu %c7, %c14
          %295 = vector.broadcast %c32058_i16 : i16 to vector<2xi16>
          %296 = math.ceil %cst_0 : f16
          memref.tensor_store %2, %29 : memref<2xi1>
          %297 = arith.remui %34, %in : i1
          %298 = tensor.empty() : tensor<4x2xi1>
          %299 = affine.min affine_map<(d0) -> (d0 * 16, (d0 * 65) floordiv 16)>(%290)
          %300 = tensor.empty() : tensor<2x4xi32>
          %301 = tensor.empty() : tensor<9x4xi32>
          %302 = linalg.matmul ins(%9, %300 : tensor<9x2xi32>, tensor<2x4xi32>) outs(%301 : tensor<9x4xi32>) -> tensor<9x4xi32>
          %303 = arith.ceildivsi %c13810_i16, %c13810_i16 : i16
          memref.assume_alignment %alloc_20, 4 : memref<2xi1>
          %304 = arith.remf %cst, %cst_4 : f32
          %alloca_46 = memref.alloca() : memref<4x2xi16>
          %305 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
          %306 = vector.outerproduct %286, %286, %305 {kind = #vector.kind<maxf>} : vector<2xf32>, vector<2xf32>
          %307 = arith.floordivsi %c1268726765_i32, %c1212036663_i32 : i32
          %308 = index.ceildivu %c1, %c15
          %309 = math.fma %cst_2, %cst_2, %cst : f32
          %310 = vector.maskedload %29[%c0], %292, %292 : memref<2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %311 = math.fpowi %cst, %c1212036663_i32 : f32, i32
          %312 = math.round %5 : tensor<4x2xf32>
          %313 = index.casts %c-11559_i16 : i16 to index
          %inserted_47 = tensor.insert %cst_2 into %4[%c1] : tensor<4xf32>
          %false_48 = arith.constant false
          linalg.yield %false_48 : i1
        }
      %269 = arith.andi %c-11559_i16, %c32058_i16 : i16
      %270 = vector.broadcast %c-11559_i16 : i16 to vector<2xi16>
      %271 = arith.maxsi %c265157077_i32, %c265157077_i32 : i32
      %272 = math.ipowi %8, %8 : tensor<4xi32>
      %c1_i16 = arith.constant 1 : i16
      %273 = vector.transfer_read %13[%46, %c4], %c1_i16 : tensor<9x2xi16>, vector<i16>
      %274 = math.atan %cst_3 : f16
      %275 = math.fpowi %cst, %c518060233_i32 : f32, i32
      %276 = arith.divf %cst_4, %cst_4 : f32
      %277 = math.round %transposed : tensor<2x4xf32>
      %278 = bufferization.to_memref %5 : memref<4x2xf32>
      %279 = affine.for %arg1 = 0 to 123 iter_args(%arg2 = %22) -> (index) {
        affine.yield %37 : index
      }
      %280 = vector.broadcast %cst_2 : f32 to vector<f32>
      vector.transfer_write %280, %alloc_22[%c11] : vector<f32>, memref<4xf32>
      %splat_45 = tensor.splat %c1268726765_i32 : tensor<9x2xi32>
      %281 = index.sizeof
      scf.yield %4 : tensor<4xf32>
    }
    case 3 {
      %267 = arith.mulf %cst_5, %cst_4 : f32
      %268 = index.divs %c2, %c9
      %269 = vector.extract %35[1] : vector<11xf32>
      %270 = index.castu %c1212036663_i32 : i32 to index
      %271 = arith.remf %cst_0, %cst_1 : f16
      %272 = vector.flat_transpose %33 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
      %273 = index.casts %c1212036663_i32 : i32 to index
      %274 = math.floor %cst_2 : f32
      %extracted_44 = tensor.extract %6[%c0] : tensor<2xf16>
      vector.print %36 : vector<1xf32>
      %cst_45 = arith.constant 1.631200e+04 : f16
      %275 = vector.broadcast %270 : index to vector<4xindex>
      %276 = vector.broadcast %true : i1 to vector<4xi1>
      %277 = vector.broadcast %c13810_i16 : i16 to vector<4xi16>
      vector.scatter %alloc_16[%c3, %c1] [%275], %276, %277 : memref<9x2xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %278 = vector.broadcast %22 : index to vector<2xindex>
      %279 = vector.broadcast %34 : i1 to vector<2xi1>
      %280 = vector.broadcast %cst : f32 to vector<2xf32>
      vector.scatter %alloc_6[%c7, %c1] [%278], %279, %280 : memref<9x2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %281 = math.powf %21, %20 : tensor<f32>
      %282 = tensor.empty() : tensor<4x2xi32>
      %283 = math.fpowi %1, %282 : tensor<4x2xf16>, tensor<4x2xi32>
      %284 = vector.broadcast %c172817522_i64 : i64 to vector<2xi64>
      %285 = vector.broadcast %extracted : i1 to vector<2xi1>
      %286 = vector.maskedload %alloc_18[%c1], %285, %284 : memref<4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      scf.yield %4 : tensor<4xf32>
    }
    default {
      %267 = index.sub %c14, %c6
      %268 = scf.index_switch %46 -> index 
      case 1 {
        %284 = math.exp2 %5 : tensor<4x2xf32>
        %285 = vector.transpose %35, [0] : vector<11xf32> to vector<11xf32>
        %286 = math.floor %cst_1 : f16
        %287 = math.fpowi %cst_5, %c1268726765_i32 : f32, i32
        %288 = index.maxs %c7, %c7
        affine.store %cst, %alloc_6[%c8, %c7] : memref<9x2xf32>
        %289 = bufferization.clone %alloc_12 : memref<4xi64> to memref<4xi64>
        %290 = affine.load %alloc_14[%c6] : memref<2xf32>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%c4, %c6, %c15)
        %292 = math.roundeven %cst_0 : f16
        %alloca_44 = memref.alloca() : memref<9x2xf32>
        %293 = vector.insertelement %c265157077_i32, %33[%c7 : index] : vector<11xi32>
        %294 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        %295 = vector.broadcast %true : i1 to vector<2xi1>
        %296 = vector.maskedload %alloc_10[%c2, %c0], %295, %294 : memref<4x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %297 = arith.floordivsi %c172817522_i64, %c172817522_i64 : i64
        %298 = affine.load %alloc_15[%c1] : memref<2xi64>
        %c1_i16 = arith.constant 1 : i16
        %299 = vector.transfer_read %10[%267], %c1_i16 : tensor<4xi16>, vector<i16>
        scf.yield %c1 : index
      }
      case 2 {
        %284 = vector.multi_reduction <maxf>, %23, %23 [] : vector<11xf32> to vector<11xf32>
        %285 = arith.addi %c1268726765_i32, %c518060233_i32 : i32
        %286 = vector.splat %37 : vector<9x2xindex>
        %from_elements_44 = tensor.from_elements %c-11559_i16, %c-11559_i16, %c32058_i16, %c32058_i16, %c32058_i16, %c-11559_i16, %c13810_i16, %c32058_i16, %c-11559_i16, %c-11559_i16, %c32058_i16, %c32058_i16, %c32058_i16, %c-11559_i16, %c-11559_i16, %c32058_i16, %c-11559_i16, %c32058_i16 : tensor<9x2xi16>
        %287 = arith.maxf %cst_2, %cst_5 : f32
        %288 = arith.ori %c265157077_i32, %c1268726765_i32 : i32
        %289 = tensor.empty() : tensor<2xi64>
        %290 = index.add %c4, %c10
        %291 = math.ctpop %from_elements_44 : tensor<9x2xi16>
        %cst_45 = arith.constant 2.851200e+04 : f16
        %292 = vector.broadcast %c172817522_i64 : i64 to vector<9xi64>
        %293 = vector.broadcast %34 : i1 to vector<9xi1>
        %294 = vector.maskedload %alloc_18[%c1], %293, %292 : memref<4xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %295 = math.cos %cst_4 : f32
        %collapsed_46 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
        %true_47 = index.bool.constant true
        %296 = vector.reduction <minui>, %294 : vector<9xi64> into i64
        %297 = vector.broadcast %c172817522_i64 : i64 to vector<9x9xi64>
        %298 = vector.outerproduct %292, %292, %297 {kind = #vector.kind<or>} : vector<9xi64>, vector<9xi64>
        scf.yield %c15 : index
      }
      case 3 {
        %284 = math.atan2 %6, %6 : tensor<2xf16>
        %285 = arith.maxf %cst_2, %cst_2 : f32
        %286 = arith.ceildivsi %c1212036663_i32, %c265157077_i32 : i32
        %cast_44 = tensor.cast %15 : tensor<2xi64> to tensor<?xi64>
        %287 = math.ipowi %9, %9 : tensor<9x2xi32>
        %alloca_45 = memref.alloca() : memref<4x2xi64>
        memref.assume_alignment %alloc_17, 16 : memref<4x2xi1>
        %288 = math.absf %21 : tensor<f32>
        %289 = math.cos %6 : tensor<2xf16>
        %290 = index.casts %c518060233_i32 : i32 to index
        %291 = arith.floordivsi %c1212036663_i32, %c518060233_i32 : i32
        %collapsed_46 = tensor.collapse_shape %18 [[0, 1]] : tensor<2x4xf32> into tensor<8xf32>
        %292 = vector.flat_transpose %35 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %293 = math.ceil %collapsed_46 : tensor<8xf32>
        %294 = arith.negf %cst_2 : f32
        %295 = index.maxu %267, %c14
        scf.yield %290 : index
      }
      default {
        %284 = vector.load %alloc_19[%c2] : memref<4xf16>, vector<9x2xf16>
        %285 = tensor.empty() : tensor<2x4xi16>
        %286 = tensor.empty() : tensor<9x4xi16>
        %287 = linalg.matmul ins(%13, %285 : tensor<9x2xi16>, tensor<2x4xi16>) outs(%286 : tensor<9x4xi16>) -> tensor<9x4xi16>
        %288 = arith.ceildivsi %c518060233_i32, %c1212036663_i32 : i32
        %289 = index.divu %c6, %c15
        %290 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %291 = vector.transfer_write %290, %transposed[%c3, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf32>, tensor<2x4xf32>
        %292 = arith.minui %34, %extracted : i1
        %293 = vector.flat_transpose %35 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %alloc_44 = memref.alloc() : memref<4xi16>
        memref.tensor_store %7, %alloc_44 : memref<4xi16>
        %294 = math.fpowi %cst, %c1212036663_i32 : f32, i32
        %295 = bufferization.to_memref %0 : memref<4xi1>
        %296 = math.sqrt %cst_3 : f16
        %297 = affine.apply affine_map<(d0) -> (d0 + 136)>(%c6)
        %298 = arith.cmpf uno, %cst_5, %cst_4 : f32
        %299 = index.casts %c1212036663_i32 : i32 to index
        %300 = index.casts %34 : i1 to index
        %301 = math.sqrt %cst_1 : f16
        scf.yield %c0 : index
      }
      %269 = memref.atomic_rmw minf %cst_0, %alloc_19[%c3] : (f16, memref<4xf16>) -> f16
      %c1284845313_i64 = arith.constant 1284845313 : i64
      %270 = memref.realloc %alloc_19 : memref<4xf16> to memref<9xf16>
      %271 = arith.addi %c1268726765_i32, %c1212036663_i32 : i32
      %272 = math.ipowi %c518060233_i32, %c1212036663_i32 : i32
      %273 = math.cttz %17 : tensor<4xi16>
      %274 = math.powf %cst_1, %cst_3 : f16
      %275 = math.round %transposed : tensor<2x4xf32>
      %276 = vector.broadcast %c0 : index to vector<4xindex>
      %277 = vector.broadcast %extracted : i1 to vector<4xi1>
      %278 = vector.broadcast %cst_2 : f32 to vector<4xf32>
      vector.scatter %alloc_22[%c2] [%276], %277, %278 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %279 = vector.insertelement %c265157077_i32, %33[%c12 : index] : vector<11xi32>
      %280 = math.log2 %21 : tensor<f32>
      %281 = bufferization.to_memref %11 : memref<2xi1>
      %282 = scf.index_switch %c2 -> tensor<2xi32> 
      case 1 {
        %284 = math.log10 %4 : tensor<4xf32>
        %285 = math.tanh %1 : tensor<4x2xf16>
        %286 = vector.broadcast %34 : i1 to vector<i1>
        %287 = vector.transfer_write %286, %32[%c12] : vector<i1>, tensor<4xi1>
        %288 = math.tanh %6 : tensor<2xf16>
        %289 = vector.shuffle %286, %286 [0, 1] : vector<i1>, vector<i1>
        %290 = affine.max affine_map<(d0) -> ((d0 mod 4) floordiv 32 - 62, -d0, -d0, (d0 floordiv 4) mod 16)>(%c5)
        %291 = arith.remui %c265157077_i32, %c1212036663_i32 : i32
        %extracted_44 = tensor.extract %18[%c1, %c2] : tensor<2x4xf32>
        %292 = math.cttz %c265157077_i32 : i32
        %293 = vector.reduction <minf>, %23 : vector<11xf32> into f32
        %false_45 = arith.constant false
        %294 = arith.ceildivsi %c32058_i16, %c-11559_i16 : i16
        %295 = arith.maxf %extracted_44, %cst_4 : f32
        %296 = arith.mulf %extracted_44, %extracted_44 : f32
        %297 = index.maxu %c7, %46
        %298 = arith.floordivsi %c172817522_i64, %c172817522_i64 : i64
        %299 = tensor.empty() : tensor<2xi32>
        scf.yield %299 : tensor<2xi32>
      }
      case 2 {
        %284 = arith.cmpf ogt, %cst_4, %cst : f32
        %285 = math.fpowi %cst_3, %c1268726765_i32 : f16, i32
        %286 = bufferization.to_memref %16 : memref<4xi16>
        %287 = math.log %cst_3 : f16
        %extracted_44 = tensor.extract %3[%c1] : tensor<2xi16>
        %288 = vector.multi_reduction <maxf>, %23, %cst_4 [0] : vector<11xf32> to f32
        %289 = arith.cmpf ule, %288, %cst_4 : f32
        %alloc_45 = memref.alloc() : memref<4x2xi16>
        %290 = vector.multi_reduction <add>, %36, %36 [] : vector<1xf32> to vector<1xf32>
        %291 = affine.min affine_map<(d0, d1, d2) -> (d1 - 4, (-(d1 + 128)) floordiv 8, (-(d1 + 128)) floordiv 8, d1 + d2 + d1 + 128 - d1 + 128)>(%c12, %c3, %c10)
        %from_elements_46 = tensor.from_elements %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64 : tensor<9x2xi64>
        %c1956542008_i64 = arith.constant 1956542008 : i64
        %292 = tensor.empty(%c10) : tensor<9x?xi16>
        %293 = vector.broadcast %cst : f32 to vector<4xf32>
        %294 = vector.broadcast %extracted : i1 to vector<4xi1>
        %295 = vector.maskedload %alloc_8[%c1], %294, %293 : memref<2xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %296 = math.ceil %cst_2 : f32
        %297 = vector.broadcast %cst_3 : f16 to vector<9x2xf16>
        %298 = tensor.empty() : tensor<2xi32>
        scf.yield %298 : tensor<2xi32>
      }
      case 3 {
        %284 = math.floor %cst_1 : f16
        %285 = arith.mulf %cst, %cst_5 : f32
        %286 = vector.load %alloc_13[%c1] : memref<2xi16>, vector<2xi16>
        %287 = vector.broadcast %cst : f32 to vector<9x2xf32>
        %288 = vector.broadcast %34 : i1 to vector<9x2xi1>
        %289 = vector.broadcast %c1268726765_i32 : i32 to vector<9x2xi32>
        %290 = vector.gather %alloc_22[%c8] [%289], %288, %287 : memref<4xf32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf32> into vector<9x2xf32>
        %291 = math.floor %cst_5 : f32
        %292 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 32)>(%46, %c0, %c5)
        %293 = math.copysign %cst_4, %cst_4 : f32
        %294 = vector.broadcast %c15 : index to vector<4xindex>
        %295 = vector.broadcast %true : i1 to vector<4xi1>
        %296 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        vector.scatter %alloc_9[%c2, %c0] [%294], %295, %296 : memref<9x2xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %297 = vector.shuffle %33, %33 [4, 6, 7, 8, 11, 13, 14, 16, 19, 20] : vector<11xi32>, vector<11xi32>
        %298 = arith.addi %c518060233_i32, %c265157077_i32 : i32
        %299 = arith.mulf %cst, %cst_2 : f32
        %300 = math.atan %4 : tensor<4xf32>
        %301 = arith.remf %cst_2, %cst_2 : f32
        %302 = math.powf %5, %5 : tensor<4x2xf32>
        %303 = vector.extract %35[7] : vector<11xf32>
        %from_elements_44 = tensor.from_elements %34, %34 : tensor<2xi1>
        %304 = tensor.empty() : tensor<2xi32>
        scf.yield %304 : tensor<2xi32>
      }
      case 4 {
        %284 = math.fpowi %cst, %c518060233_i32 : f32, i32
        %285 = math.log1p %6 : tensor<2xf16>
        %286 = index.sub %c10, %c5
        %287 = arith.floordivsi %c1212036663_i32, %c518060233_i32 : i32
        %288 = index.ceildivu %46, %c3
        %289 = vector.matrix_multiply %19, %23 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %290 = vector.matrix_multiply %19, %19 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %291 = index.add %22, %c7
        %292 = arith.cmpf olt, %cst_5, %cst_4 : f32
        %from_elements_44 = tensor.from_elements %cst, %cst_4 : tensor<2xf32>
        %293 = math.absf %cst_5 : f32
        %294 = vector.reduction <add>, %33 : vector<11xi32> into i32
        %295 = vector.broadcast %extracted : i1 to vector<11xi1>
        %296 = vector.maskedload %alloc_22[%c1], %295, %35 : memref<4xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %297 = math.round %cst_0 : f16
        %298 = vector.broadcast %c1268726765_i32 : i32 to vector<9x2xi32>
        memref.store %c-11559_i16, %alloc_13[%c1] : memref<2xi16>
        %299 = tensor.empty() : tensor<2xi32>
        scf.yield %299 : tensor<2xi32>
      }
      default {
        %284 = index.casts %37 : index to i32
        %alloca_44 = memref.alloca() : memref<9x2xi32>
        %285 = memref.realloc %alloc_18 : memref<4xi64> to memref<4xi64>
        %true_45 = index.bool.constant true
        %286 = vector.broadcast %cst_2 : f32 to vector<9x2xf32>
        %287 = index.maxs %c1, %c15
        %288 = vector.broadcast %46 : index to vector<2xindex>
        %289 = vector.broadcast %true_45 : i1 to vector<2xi1>
        vector.scatter %29[%c1] [%288], %289, %289 : memref<2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %290 = math.absf %1 : tensor<4x2xf16>
        %291 = arith.ceildivsi %true_45, %true_45 : i1
        %292 = vector.broadcast %true_45 : i1 to vector<2xi1>
        memref.assume_alignment %alloc_15, 1 : memref<2xi64>
        %293 = math.powf %4, %4 : tensor<4xf32>
        %294 = arith.mulf %cst_5, %cst_5 : f32
        %alloca_46 = memref.alloca() : memref<4x2xf32>
        %295 = math.tan %cst_4 : f32
        %296 = math.ctlz %14 : tensor<4x2xi16>
        %297 = tensor.empty() : tensor<2xi32>
        scf.yield %297 : tensor<2xi32>
      }
      %283 = vector.broadcast %cst_5 : f32 to vector<4xf32>
      scf.yield %4 : tensor<4xf32>
    }
    %50 = math.floor %cst_5 : f32
    %51 = math.copysign %cst_1, %cst_0 : f16
    memref.tensor_store %13, %alloc_16 : memref<9x2xi16>
    %52 = arith.maxsi %true, %extracted : i1
    %53 = arith.maxsi %c-11559_i16, %c32058_i16 : i16
    %54 = memref.alloca_scope  -> (memref<4x2xi64>) {
      %267 = math.ceil %20 : tensor<f32>
      %268 = vector.transpose %33, [0] : vector<11xi32> to vector<11xi32>
      %269 = math.tanh %1 : tensor<4x2xf16>
      %270 = vector.insertelement %cst_4, %23[%c6 : index] : vector<11xf32>
      %271 = math.atan2 %cst_3, %cst_3 : f16
      affine.store %c32058_i16, %alloc_13[%c5] : memref<2xi16>
      %272 = index.add %c3, %c14
      %273 = math.ctlz %c265157077_i32 : i32
      %false_44 = index.bool.constant false
      %274 = vector.reduction <add>, %35 : vector<11xf32> into f32
      %275 = math.fma %transposed, %transposed, %18 : tensor<2x4xf32>
      %276 = arith.negf %cst_4 : f32
      memref.copy %alloc_11, %29 : memref<2xi1> to memref<2xi1>
      %277 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
      %278 = vector.broadcast %false_44 : i1 to vector<4xi1>
      %279 = vector.maskedload %alloc_12[%c3], %278, %277 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %generated_45 = tensor.generate %c5 {
      ^bb0(%arg1: index, %arg2: index):
        %299 = arith.divf %cst_1, %cst_0 : f16
        %300 = affine.max affine_map<(d0, d1) -> (d1, (d1 + 1) * -63, d1 + 1)>(%arg2, %c13)
        %301 = arith.ori %c32058_i16, %c-11559_i16 : i16
        %302 = vector.bitcast %279 : vector<4xi64> to vector<4xi64>
        tensor.yield %c172817522_i64 : i64
      } : tensor<?x2xi64>
      %280 = math.atan2 %18, %transposed : tensor<2x4xf32>
      %281 = math.round %20 : tensor<f32>
      %splat_46 = tensor.splat %c265157077_i32 : tensor<2xi32>
      %282 = vector.multi_reduction <mul>, %36, %36 [] : vector<1xf32> to vector<1xf32>
      %283 = math.round %cst_5 : f32
      %284 = math.log10 %18 : tensor<2x4xf32>
      %285 = tensor.empty() : tensor<4x4x4xi1>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%32, %285 : tensor<4xi1>, tensor<4x4x4xi1>) outs(%285 : tensor<4x4x4xi1>) {
      ^bb0(%in: i1, %in_48: i1, %out: i1):
        %299 = arith.shrui %c518060233_i32, %c518060233_i32 : i32
        %300 = arith.divui %c518060233_i32, %c1268726765_i32 : i32
        %301 = vector.bitcast %36 : vector<1xf32> to vector<1xf32>
        %302 = math.rsqrt %4 : tensor<4xf32>
        %303 = math.floor %5 : tensor<4x2xf32>
        %from_elements_49 = tensor.from_elements %in_48, %out, %in_48, %34, %out, %in, %34, %out, %out, %in_48, %extracted, %true, %34, %extracted, %in, %extracted, %34, %extracted : tensor<9x2xi1>
        %304 = arith.remsi %true, %extracted : i1
        %305 = arith.muli %true, %extracted : i1
        %306 = vector.broadcast %cst_4 : f32 to vector<9x2xf32>
        %307 = vector.fma %306, %306, %306 : vector<9x2xf32>
        %308 = arith.minf %cst_2, %cst : f32
        %309 = index.add %c8, %c12
        %310 = tensor.empty() : tensor<i32>
        %311 = math.fpowi %21, %310 : tensor<f32>, tensor<i32>
        %312 = math.ipowi %34, %out : i1
        %313 = math.floor %transposed : tensor<2x4xf32>
        %314 = vector.create_mask %c5, %22 : vector<9x2xi1>
        %315 = arith.floordivsi %in_48, %in_48 : i1
        %316 = index.ceildivu %309, %c1
        %317 = index.ceildivs %c13, %c14
        %318 = tensor.empty() : tensor<4xi32>
        %319 = math.rsqrt %cst_5 : f32
        %c796280992_i32 = arith.constant 796280992 : i32
        %320 = index.sub %22, %309
        %extracted_50 = tensor.extract %18[%c1, %c2] : tensor<2x4xf32>
        %321 = index.divu %c7, %c6
        %collapsed_51 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
        %322 = math.fma %cst_0, %cst_0, %cst_1 : f16
        %323 = index.floordivs %320, %320
        %324 = vector.shuffle %19, %36 [3, 4, 5, 7, 9] : vector<11xf32>, vector<1xf32>
        %325 = arith.divf %cst_5, %cst_5 : f32
        %326 = index.sub %c13, %c9
        %327 = index.add %c15, %326
        %328 = vector.broadcast %cst_1 : f16 to vector<f16>
        %329 = vector.transfer_write %328, %6[%c13] : vector<f16>, tensor<2xf16>
        linalg.yield %true : i1
      } -> tensor<4x4x4xi1>
      %287 = index.floordivs %c0, %c14
      %288 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%c10, %c0, %c13)
      %289 = math.ctpop %9 : tensor<9x2xi32>
      %290 = vector.broadcast %cst_0 : f16 to vector<2xf16>
      %291 = vector.broadcast %34 : i1 to vector<2xi1>
      %292 = vector.maskedload %alloc_19[%c3], %291, %290 : memref<4xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %293 = arith.minui %true, %extracted : i1
      %294 = math.fpowi %4, %8 : tensor<4xf32>, tensor<4xi32>
      %295 = arith.muli %extracted, %false_44 : i1
      %296 = math.fma %21, %20, %20 : tensor<f32>
      %297 = vector.extract_strided_slice %290 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
      %298 = arith.remf %cst_5, %cst_5 : f32
      %alloc_47 = memref.alloc() : memref<4x2xi64>
      memref.alloca_scope.return %alloc_47 : memref<4x2xi64>
    }
    %55 = tensor.empty() : tensor<4xi64>
    %56 = vector.broadcast %c172817522_i64 : i64 to vector<2xi64>
    %57 = vector.broadcast %34 : i1 to vector<2xi1>
    %58 = vector.broadcast %c518060233_i32 : i32 to vector<2xi32>
    %59 = vector.gather %55[%c8] [%58], %57, %56 : tensor<4xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %60 = affine.for %arg1 = 0 to 119 iter_args(%arg2 = %cst_0) -> (f16) {
      affine.yield %cst_1 : f16
    }
    %61 = vector.broadcast %c172817522_i64 : i64 to vector<2x2xi64>
    %62 = vector.outerproduct %59, %56, %61 {kind = #vector.kind<or>} : vector<2xi64>, vector<2xi64>
    %inserted = tensor.insert %c-11559_i16 into %10[%c2] : tensor<4xi16>
    %63 = vector.transpose %58, [0] : vector<2xi32> to vector<2xi32>
    %64 = affine.max affine_map<(d0) -> (d0 mod 8 - d0, d0 - 160, d0 - 32)>(%c5)
    %c1730772902_i32 = arith.constant 1730772902 : i32
    %65 = vector.load %29[%c1] : memref<2xi1>, vector<9x2xi1>
    %66 = vector.broadcast %34 : i1 to vector<11xi1>
    %67 = vector.maskedload %alloc[%c2], %66, %66 : memref<4xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
    %68 = arith.ceildivsi %c172817522_i64, %c172817522_i64 : i64
    %69 = bufferization.to_memref %13 : memref<9x2xi16>
    %70 = memref.realloc %alloc_12 : memref<4xi64> to memref<4xi64>
    %71 = index.casts %c3 : index to i32
    %72 = arith.mulf %cst_5, %cst_4 : f32
    %73 = vector.broadcast %c13810_i16 : i16 to vector<2xi16>
    %74 = vector.gather %13[%c7, %c1] [%58], %57, %73 : tensor<9x2xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
    %75 = index.floordivs %c12, %c2
    memref.assume_alignment %alloc_17, 8 : memref<4x2xi1>
    %76 = scf.if %true -> (memref<4xi1>) {
      %267 = math.cos %cst_5 : f32
      %268 = memref.load %alloc_13[%c1] : memref<2xi16>
      %269 = vector.broadcast %c-11559_i16 : i16 to vector<2xi16>
      vector.transfer_write %269, %alloc_16[%c11, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi16>, memref<9x2xi16>
      %270 = math.powf %transposed, %transposed : tensor<2x4xf32>
      %271 = vector.shuffle %35, %23 [0, 1, 3, 4, 7, 15, 18, 19] : vector<11xf32>, vector<11xf32>
      %272 = vector.create_mask %c1, %46 : vector<9x2xi1>
      %273 = math.exp2 %1 : tensor<4x2xf16>
      %c1605262354_i32 = arith.constant 1605262354 : i32
      scf.yield %alloc : memref<4xi1>
    } else {
      %267 = math.exp2 %18 : tensor<2x4xf32>
      %splat_44 = tensor.splat %cst_4 : tensor<4x2xf32>
      %268 = index.maxs %37, %c12
      %269 = math.log1p %4 : tensor<4xf32>
      %270 = scf.while (%arg1 = %alloc_21) : (memref<i16>) -> memref<i16> {
        %extracted_45 = tensor.extract %10[%c0] : tensor<4xi16>
        %274 = index.maxs %37, %22
        %275 = index.floordivs %c12, %c9
        %collapsed_46 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
        %276 = vector.extract_strided_slice %33 {offsets = [9], sizes = [2], strides = [1]} : vector<11xi32> to vector<2xi32>
        %277 = index.sub %75, %c15
        %278 = math.floor %21 : tensor<f32>
        %279 = vector.transpose %58, [0] : vector<2xi32> to vector<2xi32>
        scf.condition(%true) %alloc_21 : memref<i16>
      } do {
      ^bb0(%arg1: memref<i16>):
        %274 = index.castu %c518060233_i32 : i32 to index
        %275 = vector.extract %66[4] : vector<11xi1>
        %276 = vector.matrix_multiply %66, %67 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi1>, vector<11xi1>) -> vector<1xi1>
        %277 = arith.xori %c13810_i16, %c32058_i16 : i16
        %278 = index.add %c1, %c9
        %splat_45 = tensor.splat %34 : tensor<2xi1>
        %279 = arith.remf %cst_1, %cst_1 : f16
        %280 = arith.cmpf oeq, %cst_5, %cst : f32
        %281 = vector.flat_transpose %74 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        %282 = arith.maxsi %c-11559_i16, %c13810_i16 : i16
        %283 = index.sub %c11, %c5
        %284 = arith.remui %true, %extracted : i1
        %285 = arith.ceildivsi %c1212036663_i32, %c1268726765_i32 : i32
        %286 = math.exp2 %4 : tensor<4xf32>
        %from_elements_46 = tensor.from_elements %c1212036663_i32, %c265157077_i32, %c518060233_i32, %c518060233_i32, %c518060233_i32, %c265157077_i32, %c265157077_i32, %c518060233_i32, %c265157077_i32, %c265157077_i32, %c1212036663_i32, %c1268726765_i32, %c1268726765_i32, %c265157077_i32, %c1268726765_i32, %c518060233_i32, %c518060233_i32, %c518060233_i32 : tensor<9x2xi32>
        %287 = arith.cmpi ule, %c-11559_i16, %c-11559_i16 : i16
        scf.yield %alloc_21 : memref<i16>
      }
      %271 = math.fma %18, %18, %18 : tensor<2x4xf32>
      %272 = arith.mulf %cst_1, %cst_1 : f16
      %273 = math.expm1 %transposed : tensor<2x4xf32>
      scf.yield %alloc : memref<4xi1>
    }
    %generated = tensor.generate %c3, %c13 {
    ^bb0(%arg1: index, %arg2: index):
      %267 = math.atan2 %cst, %cst : f32
      %268 = affine.max affine_map<(d0, d1) -> (d1 + 32, (d1 - 2) mod 128, (d1 - 2) mod 4, d1 - 2)>(%c11, %22)
      %269 = math.ceil %5 : tensor<4x2xf32>
      %270 = memref.alloca_scope  -> (f16) {
        %271 = vector.broadcast %c172817522_i64 : i64 to vector<2x2xi64>
        %272 = vector.outerproduct %59, %56, %271 {kind = #vector.kind<mul>} : vector<2xi64>, vector<2xi64>
        %273 = arith.minf %cst_3, %cst_3 : f16
        %expanded_44 = tensor.expand_shape %12 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %274 = memref.realloc %alloc_14 : memref<2xf32> to memref<2xf32>
        %inserted_45 = tensor.insert %c172817522_i64 into %15[%c1] : tensor<2xi64>
        %275 = arith.ceildivsi %c13810_i16, %c-11559_i16 : i16
        %alloca_46 = memref.alloca() : memref<9x2xf32>
        %276 = vector.transpose %58, [0] : vector<2xi32> to vector<2xi32>
        %277 = math.log1p %6 : tensor<2xf16>
        %278 = vector.broadcast %22 : index to vector<2xindex>
        %279 = vector.broadcast %cst_5 : f32 to vector<2xf32>
        vector.scatter %alloc_8[%c1] [%278], %57, %279 : memref<2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %280 = index.sub %37, %c2
        %281 = index.maxu %c9, %c9
        %282 = vector.shuffle %73, %73 [0, 2] : vector<2xi16>, vector<2xi16>
        %283 = math.fpowi %cst_0, %c265157077_i32 : f16, i32
        %284 = memref.realloc %alloc_15 : memref<2xi64> to memref<2xi64>
        %285 = vector.create_mask %c3, %c5 : vector<9x2xi1>
        %286 = affine.load %alloc_21[] : memref<i16>
        %287 = math.log10 %transposed : tensor<2x4xf32>
        %288 = vector.extract %58[0] : vector<2xi32>
        %289 = math.copysign %4, %4 : tensor<4xf32>
        %290 = vector.extract_strided_slice %23 {offsets = [5], sizes = [5], strides = [1]} : vector<11xf32> to vector<5xf32>
        %291 = memref.realloc %alloc_20 : memref<2xi1> to memref<2xi1>
        %292 = math.floor %5 : tensor<4x2xf32>
        %293 = bufferization.clone %29 : memref<2xi1> to memref<2xi1>
        %294 = arith.shrui %c32058_i16, %c32058_i16 : i16
        %295 = index.sub %75, %c5
        %296 = arith.shli %extracted, %true : i1
        %297 = vector.extract %285[0] : vector<9x2xi1>
        %collapsed_47 = tensor.collapse_shape %13 [[0, 1]] : tensor<9x2xi16> into tensor<18xi16>
        %298 = affine.max affine_map<(d0, d1) -> ((-d1) mod 2, (d0 - 1) * 8, 0)>(%75, %c9)
        %299 = vector.reduction <maxsi>, %67 : vector<11xi1> into i1
        %300 = math.tanh %5 : tensor<4x2xf32>
        memref.alloca_scope.return %cst_0 : f16
      }
      tensor.yield %extracted : i1
    } : tensor<?x?xi1>
    %77 = math.atan2 %cst_1, %cst_1 : f16
    %78 = vector.multi_reduction <or>, %57, %57 [] : vector<2xi1> to vector<2xi1>
    %79 = math.floor %cst_3 : f16
    %c1001771131_i32 = arith.constant 1001771131 : i32
    %80 = index.add %c6, %c15
    %81 = index.sizeof
    %82 = vector.extract_strided_slice %67 {offsets = [3], sizes = [2], strides = [1]} : vector<11xi1> to vector<2xi1>
    %83 = arith.remui %c32058_i16, %c32058_i16 : i16
    %84 = bufferization.to_tensor %alloc_20 : memref<2xi1>
    %85 = arith.muli %true, %true : i1
    %86 = index.floordivs %c14, %c15
    %c1646451656_i32 = arith.constant 1646451656 : i32
    memref.assume_alignment %69, 16 : memref<9x2xi16>
    %87 = math.absi %0 : tensor<4xi1>
    %88 = vector.insert %cst_4, %19 [10] : f32 into vector<11xf32>
    %89 = index.maxs %c0, %75
    %false = arith.constant false
    %90 = vector.transfer_read %0[%46], %false : tensor<4xi1>, vector<i1>
    %from_elements = tensor.from_elements %true, %true, %true, %34 : tensor<4xi1>
    %91 = vector.broadcast %c172817522_i64 : i64 to vector<4x2xi64>
    %92 = math.copysign %18, %18 : tensor<2x4xf32>
    %93 = math.log1p %6 : tensor<2xf16>
    %94 = vector.gather %15[%c3] [%58], %82, %56 : tensor<2xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %95 = arith.divf %cst_5, %cst_2 : f32
    %96 = math.log1p %cst_4 : f32
    %extracted_23 = tensor.extract %17[%c0] : tensor<4xi16>
    %97 = vector.broadcast %false : i1 to vector<i1>
    %98 = vector.transfer_write %97, %0[%75] : vector<i1>, tensor<4xi1>
    %99 = vector.broadcast %cst_2 : f32 to vector<f32>
    %100 = vector.transfer_write %99, %5[%46, %c12] : vector<f32>, tensor<4x2xf32>
    %101 = tensor.empty() : tensor<4x2xi32>
    %102 = math.fpowi %5, %101 : tensor<4x2xf32>, tensor<4x2xi32>
    %103 = math.fma %4, %4, %4 : tensor<4xf32>
    %104 = arith.divui %extracted, %true : i1
    scf.index_switch %64 
    case 1 {
      %267 = index.sub %64, %75
      %268 = arith.floordivsi %extracted_23, %c-11559_i16 : i16
      %269 = math.log1p %cst_0 : f16
      %270 = math.tanh %cst_3 : f16
      affine.store %c1268726765_i32, %alloc_7[%c1, %c2] : memref<4x2xi32>
      %271 = math.floor %5 : tensor<4x2xf32>
      %272 = index.sizeof
      %273 = arith.addi %true, %extracted : i1
      %274 = tensor.empty() : tensor<2xf32>
      %mapped_44 = linalg.map ins(%alloc_14, %alloc_14, %alloc_14 : memref<2xf32>, memref<2xf32>, memref<2xf32>) outs(%274 : tensor<2xf32>)
        (%in: f32, %in_45: f32, %in_46: f32) {
          %283 = vector.broadcast %in : f32 to vector<11x11xf32>
          %284 = vector.outerproduct %35, %35, %283 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
          %285 = math.round %cst : f32
          %286 = bufferization.clone %alloc_7 : memref<4x2xi32> to memref<4x2xi32>
          %287 = arith.minf %cst_4, %in_46 : f32
          %288 = vector.broadcast %in_45 : f32 to vector<f32>
          %289 = vector.transfer_write %288, %4[%80] : vector<f32>, tensor<4xf32>
          %false_47 = index.bool.constant false
          %290 = index.sub %22, %75
          %false_48 = arith.constant false
          %false_49 = arith.constant false
          %291 = vector.transfer_read %76[%80], %false_49 : memref<4xi1>, vector<i1>
          %292 = vector.broadcast %cst_1 : f16 to vector<9xf16>
          %293 = vector.broadcast %false_47 : i1 to vector<9xi1>
          %294 = vector.maskedload %alloc_19[%c1], %293, %292 : memref<4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
          %rank = tensor.rank %10 : tensor<4xi16>
          %295 = arith.cmpi ugt, %c32058_i16, %c32058_i16 : i16
          %296 = arith.ceildivsi %true, %extracted : i1
          %splat_50 = tensor.splat %c172817522_i64 : tensor<2xi64>
          %297 = tensor.empty() : tensor<2x4xi32>
          %298 = math.fpowi %transposed, %297 : tensor<2x4xf32>, tensor<2x4xi32>
          %299 = vector.transpose %33, [0] : vector<11xi32> to vector<11xi32>
          %300 = index.ceildivu %75, %80
          %301 = math.atan2 %274, %274 : tensor<2xf32>
          %302 = index.sizeof
          %303 = affine.min affine_map<(d0) -> (d0, -d0, -d0 - 16)>(%c2)
          %304 = arith.floordivsi %c172817522_i64, %c172817522_i64 : i64
          %305 = vector.extract_strided_slice %23 {offsets = [9], sizes = [2], strides = [1]} : vector<11xf32> to vector<2xf32>
          %306 = vector.flat_transpose %305 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
          %307 = arith.maxsi %c518060233_i32, %c265157077_i32 : i32
          %308 = index.sizeof
          %309 = tensor.empty() : tensor<9x4xi32>
          %310 = linalg.matmul ins(%9, %297 : tensor<9x2xi32>, tensor<2x4xi32>) outs(%309 : tensor<9x4xi32>) -> tensor<9x4xi32>
          %311 = math.cos %1 : tensor<4x2xf16>
          %312 = math.sqrt %cst_3 : f16
          %inserted_51 = tensor.insert %c172817522_i64 into %15[%c1] : tensor<2xi64>
          %313 = affine.load %alloc_11[%c13] : memref<2xi1>
          %314 = arith.muli %c265157077_i32, %c1268726765_i32 : i32
          %315 = arith.ceildivsi %extracted, %extracted : i1
          %316 = math.cttz %from_elements : tensor<4xi1>
          %cst_52 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_52 : f32
        }
      %275 = index.maxs %80, %37
      %276 = math.fpowi %5, %101 : tensor<4x2xf32>, tensor<4x2xi32>
      %277 = vector.shuffle %66, %66 [1, 2, 3, 4, 5, 6, 10, 11, 12, 15, 16, 20, 21] : vector<11xi1>, vector<11xi1>
      %278 = index.maxs %86, %c1
      %279 = math.atan2 %cst_5, %cst : f32
      %280 = vector.broadcast %c32058_i16 : i16 to vector<2x2xi16>
      %281 = vector.outerproduct %73, %74, %280 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
      %282 = vector.create_mask %278 : vector<2xi1>
      scf.yield
    }
    case 2 {
      %267 = vector.reduction <minsi>, %94 : vector<2xi64> into i64
      %true_44 = index.bool.constant true
      %268 = vector.broadcast %cst_5 : f32 to vector<11x11xf32>
      %269 = vector.outerproduct %35, %19, %268 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
      %270 = arith.ori %c-11559_i16, %c13810_i16 : i16
      %271 = arith.remf %cst_4, %cst : f32
      %from_elements_45 = tensor.from_elements %cst_4, %cst_2 : tensor<2xf32>
      %272 = affine.min affine_map<(d0) -> (d0 ceildiv 64 - ((d0 ceildiv 64) ceildiv 32 + 128), 0)>(%c11)
      %splat_46 = tensor.splat %c518060233_i32 : tensor<4xi32>
      %273 = index.add %c15, %c14
      %274 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 2)>(%75, %81, %80, %c9)
      %275 = vector.create_mask %64, %272 : vector<4x2xi1>
      %276 = arith.remui %c32058_i16, %c13810_i16 : i16
      %277 = math.tanh %1 : tensor<4x2xf16>
      %278 = vector.create_mask %c5, %64 : vector<4x2xi1>
      %279 = vector.reduction <xor>, %73 : vector<2xi16> into i16
      %280 = math.exp %4 : tensor<4xf32>
      scf.yield
    }
    case 3 {
      %false_44 = index.bool.constant false
      %267 = affine.if affine_set<(d0, d1) : (60 >= 0, 15 >= 0, 0 >= 0)>(%c0, %c10) -> i32 {
        %279 = arith.mulf %cst_0, %cst_1 : f16
        %280 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        %281 = vector.broadcast %34 : i1 to vector<4xi1>
        %282 = vector.maskedload %alloc_14[%c1], %281, %280 : memref<2xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %283 = arith.ceildivsi %c13810_i16, %c-11559_i16 : i16
        %284 = index.maxu %c1, %c11
        %285 = math.absi %2 : tensor<2xi1>
        %286 = tensor.empty() : tensor<9x2xf16>
        %287 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %288 = vector.broadcast %c1212036663_i32 : i32 to vector<4xi32>
        %289 = vector.gather %286[%c5, %81] [%288], %281, %287 : tensor<9x2xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %true_48 = arith.constant true
        %false_49 = arith.constant false
        %290 = vector.transfer_read %29[%86], %false_49 : memref<2xi1>, vector<i1>
        %291 = math.exp2 %transposed : tensor<2x4xf32>
        affine.yield %c1268726765_i32 : i32
      } else {
        %279 = bufferization.to_memref %12 : memref<4xi1>
        %280 = arith.remui %34, %false : i1
        %281 = math.log2 %cst : f32
        %alloc_48 = memref.alloc() : memref<4xi16>
        memref.tensor_store %7, %alloc_48 : memref<4xi16>
        %282 = math.sqrt %cst_5 : f32
        %alloca_49 = memref.alloca() : memref<9x2xi16>
        %283 = vector.create_mask %c6 : vector<4xi1>
        %284 = math.fma %cst_3, %cst_0, %cst_3 : f16
        affine.yield %c1268726765_i32 : i32
      }
      %268 = index.ceildivu %46, %37
      %269 = math.copysign %transposed, %transposed : tensor<2x4xf32>
      %270 = vector.extract_strided_slice %73 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi16> to vector<1xi16>
      %alloc_45 = memref.alloc() : memref<4xi32>
      memref.tensor_store %8, %alloc_45 : memref<4xi32>
      %271 = math.copysign %cst_2, %cst : f32
      %272 = vector.shuffle %36, %35 [1, 2, 3, 4, 5, 9, 10] : vector<1xf32>, vector<11xf32>
      %273 = arith.ori %extracted, %false_44 : i1
      %true_46 = index.bool.constant true
      %274 = index.sizeof
      %275 = memref.atomic_rmw maxf %cst_4, %alloc_8[%c1] : (f32, memref<2xf32>) -> f32
      %276 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 mod 2)>(%c9, %c2, %75, %c0)
      %cst_47 = arith.constant 0x4DBA57E7 : f32
      %277 = vector.broadcast %cst_2 : f32 to vector<4x2xf32>
      %278 = affine.if affine_set<(d0, d1) : (d1 * 8 == 0, d1 >= 0)>(%c4, %c8) -> f16 {
        %279 = vector.broadcast %cst_4 : f32 to vector<f32>
        vector.transfer_write %279, %alloc_22[%c15] : vector<f32>, memref<4xf32>
        %280 = math.log %cst_0 : f16
        %281 = vector.broadcast %cst_0 : f16 to vector<9x2xf16>
        %282 = vector.broadcast %c1212036663_i32 : i32 to vector<9x2xi32>
        %283 = vector.gather %alloc_19[%c0] [%282], %65, %281 : memref<4xf16>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf16> into vector<9x2xf16>
        %284 = math.atan2 %cst_1, %cst_0 : f16
        %285 = math.cos %cst_5 : f32
        %286 = arith.minsi %true, %false_44 : i1
        %287 = bufferization.to_memref %9 : memref<9x2xi32>
        %288 = arith.remf %cst_1, %cst_1 : f16
        affine.yield %cst_0 : f16
      } else {
        %279 = arith.mulf %cst, %cst_5 : f32
        memref.tensor_store %0, %76 : memref<4xi1>
        %280 = math.tan %4 : tensor<4xf32>
        %281 = math.fpowi %cst_2, %c518060233_i32 : f32, i32
        %282 = vector.extract_strided_slice %23 {offsets = [4], sizes = [7], strides = [1]} : vector<11xf32> to vector<7xf32>
        %283 = index.sizeof
        %284 = vector.insertelement %true_46, %66[%c14 : index] : vector<11xi1>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_48 = arith.constant 0 : i16
        %285 = vector.transfer_read %69[%75, %c8], %c0_i16_48 : memref<9x2xi16>, vector<i16>
        affine.yield %cst_3 : f16
      }
      scf.yield
    }
    default {
      %267 = vector.create_mask %c12, %c3 : vector<4x2xi1>
      %268 = math.absf %5 : tensor<4x2xf32>
      %alloca_44 = memref.alloca() : memref<9x2xf16>
      %269 = index.ceildivs %c8, %c13
      %270 = affine.min affine_map<(d0, d1, d2) -> (d2 - d1)>(%269, %c6, %269)
      %cst_45 = arith.constant 0x4C66272C : f32
      %271 = index.maxu %c1, %c8
      %272 = bufferization.clone %alloc_16 : memref<9x2xi16> to memref<9x2xi16>
      %splat_46 = tensor.splat %extracted : tensor<2xi1>
      %273 = vector.insertelement %false, %57[%37 : index] : vector<2xi1>
      %274 = vector.broadcast %cst_3 : f16 to vector<11xf16>
      %275 = vector.transfer_write %274, %1[%c7, %270] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, tensor<4x2xf16>
      %276 = scf.while (%arg1 = %274) : (vector<11xf16>) -> vector<11xf16> {
        %280 = math.log2 %4 : tensor<4xf32>
        %extracted_48 = tensor.extract %10[%c3] : tensor<4xi16>
        %281 = math.atan2 %cst_1, %cst_1 : f16
        %282 = vector.flat_transpose %66 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
        %283 = arith.shrsi %c172817522_i64, %c172817522_i64 : i64
        %284 = arith.maxsi %c265157077_i32, %c265157077_i32 : i32
        %collapsed_49 = tensor.collapse_shape %14 [[0, 1]] : tensor<4x2xi16> into tensor<8xi16>
        %285 = arith.divsi %c518060233_i32, %c1212036663_i32 : i32
        scf.condition(%false) %274 : vector<11xf16>
      } do {
      ^bb0(%arg1: vector<11xf16>):
        %280 = math.exp2 %6 : tensor<2xf16>
        %281 = bufferization.clone %alloc_13 : memref<2xi16> to memref<2xi16>
        %282 = vector.broadcast %cst : f32 to vector<4xf32>
        %283 = vector.fma %282, %282, %282 : vector<4xf32>
        %284 = vector.create_mask %c13, %80 : vector<4x2xi1>
        %285 = vector.extract %23[6] : vector<11xf32>
        %286 = math.absf %4 : tensor<4xf32>
        %287 = vector.extract %67[0] : vector<11xi1>
        %288 = arith.mulf %cst_5, %cst : f32
        %289 = math.powf %cst_4, %cst_5 : f32
        %290 = math.ceil %cst_5 : f32
        %291 = arith.addi %c13810_i16, %c32058_i16 : i16
        %292 = math.log %cst_3 : f16
        %293 = arith.muli %true, %34 : i1
        %294 = vector.matrix_multiply %94, %59 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
        %295 = index.ceildivs %c9, %c2
        %296 = affine.apply affine_map<(d0, d1) -> (d0 * 128 - 4)>(%80, %c0)
        scf.yield %274 : vector<11xf16>
      }
      %277 = arith.maxf %cst, %cst_2 : f32
      %278 = math.atan %cst_5 : f32
      %from_elements_47 = tensor.from_elements %cst_0, %cst_3, %cst_1, %cst_0, %cst_1, %cst_3, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_3 : tensor<9x2xf16>
      %279 = math.rsqrt %4 : tensor<4xf32>
    }
    %105 = math.round %6 : tensor<2xf16>
    %106 = index.casts %c32058_i16 : i16 to index
    %107 = index.maxu %46, %c2
    %108 = vector.extract %73[0] : vector<2xi16>
    %109 = arith.addi %extracted_23, %extracted_23 : i16
    %110 = math.rsqrt %cst_0 : f16
    affine.for %arg1 = 0 to 60 {
    }
    %111 = vector.shuffle %57, %66 [0, 1, 6, 9, 11, 12] : vector<2xi1>, vector<11xi1>
    %alloc_24 = memref.alloc() : memref<2x4xi16>
    %112 = tensor.empty() : tensor<9x4xi16>
    %113 = linalg.matmul ins(%13, %alloc_24 : tensor<9x2xi16>, memref<2x4xi16>) outs(%112 : tensor<9x4xi16>) -> tensor<9x4xi16>
    %alloc_25 = memref.alloc() : memref<2xf16>
    memref.tensor_store %6, %alloc_25 : memref<2xf16>
    %114 = vector.reduction <and>, %33 : vector<11xi32> into i32
    %115 = index.divu %c14, %c12
    %116 = math.powf %4, %4 : tensor<4xf32>
    %117 = vector.broadcast %c32058_i16 : i16 to vector<2x2xi16>
    %118 = vector.outerproduct %73, %73, %117 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
    memref.assume_alignment %alloc_21, 8 : memref<i16>
    %119 = vector.flat_transpose %36 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
    %120 = math.log %1 : tensor<4x2xf16>
    %121 = scf.index_switch %81 -> index 
    case 1 {
      %267 = arith.addf %cst_1, %cst_1 : f16
      %generated_44 = tensor.generate %89, %86 {
      ^bb0(%arg1: index, %arg2: index):
        %280 = math.floor %cst_3 : f16
        %281 = index.maxu %46, %80
        %282 = index.maxs %c9, %80
        %alloc_46 = memref.alloc() : memref<2xf16>
        memref.tensor_store %6, %alloc_46 : memref<2xf16>
        tensor.yield %c1268726765_i32 : i32
      } : tensor<?x?xi32>
      memref.tensor_store %13, %69 : memref<9x2xi16>
      %268 = arith.ceildivsi %true, %34 : i1
      %269 = tensor.empty() : tensor<2xi16>
      %270 = arith.remf %cst_1, %cst_1 : f16
      %271 = arith.floordivsi %true, %34 : i1
      %272 = math.log1p %cst : f32
      %273 = index.sub %c15, %c0
      %from_elements_45 = tensor.from_elements %c1212036663_i32, %c518060233_i32, %c265157077_i32, %c1212036663_i32, %c1212036663_i32, %c265157077_i32, %c265157077_i32, %c1212036663_i32, %c1212036663_i32, %c1212036663_i32, %c1268726765_i32, %c1212036663_i32, %c518060233_i32, %c1212036663_i32, %c1268726765_i32, %c1268726765_i32, %c1212036663_i32, %c518060233_i32 : tensor<9x2xi32>
      %274 = arith.shrsi %c1268726765_i32, %c265157077_i32 : i32
      %275 = index.floordivs %115, %c11
      %276 = vector.flat_transpose %67 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
      %277 = arith.muli %false, %true : i1
      %278 = math.sqrt %cst_3 : f16
      %279 = arith.addi %c172817522_i64, %c172817522_i64 : i64
      scf.yield %c2 : index
    }
    case 2 {
      %267 = vector.bitcast %119 : vector<1xf32> to vector<1xf32>
      %268 = vector.create_mask %46, %c11 : vector<9x2xi1>
      %269 = math.log1p %cst_5 : f32
      %extracted_44 = tensor.extract %10[%c1] : tensor<4xi16>
      %270 = bufferization.to_memref %101 : memref<4x2xi32>
      %271 = index.casts %107 : index to i32
      %272 = arith.remui %c32058_i16, %c32058_i16 : i16
      %c1160554725_i32 = arith.constant 1160554725 : i32
      %273 = vector.broadcast %cst_5 : f32 to vector<2xf32>
      %274 = vector.fma %273, %273, %273 : vector<2xf32>
      %275 = memref.alloca_scope  -> (memref<4xi32>) {
        %282 = arith.addi %34, %34 : i1
        %extracted_45 = tensor.extract %2[%c1] : tensor<2xi1>
        %283 = arith.subi %c265157077_i32, %c1268726765_i32 : i32
        %284 = vector.broadcast %34 : i1 to vector<4xi1>
        %285 = vector.maskedload %alloc_20[%c0], %284, %284 : memref<2xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %286 = arith.minf %cst, %cst_5 : f32
        %287 = math.log2 %cst_4 : f32
        %288 = arith.addi %true, %true : i1
        %289 = math.ceil %5 : tensor<4x2xf32>
        %inserted_46 = tensor.insert %cst_2 into %5[%c1, %c1] : tensor<4x2xf32>
        %290 = index.ceildivs %81, %c0
        %false_47 = index.bool.constant false
        %splat_48 = tensor.splat %cst_2 : tensor<4xf32>
        %291 = arith.shrui %c265157077_i32, %c1212036663_i32 : i32
        %292 = math.ctlz %c265157077_i32 : i32
        %293 = bufferization.to_tensor %alloc_6 : memref<9x2xf32>
        %294 = math.floor %20 : tensor<f32>
        %295 = arith.cmpi sle, %c32058_i16, %extracted_23 : i16
        %296 = vector.splat %c4 : vector<4x2xindex>
        %297 = arith.floordivsi %extracted_44, %c-11559_i16 : i16
        memref.assume_alignment %alloc, 4 : memref<4xi1>
        %298 = bufferization.clone %alloc_18 : memref<4xi64> to memref<4xi64>
        %299 = arith.negf %cst_1 : f16
        %300 = index.maxs %c8, %c15
        %301 = arith.negf %cst_1 : f16
        memref.assume_alignment %alloc_19, 2 : memref<4xf16>
        %302 = vector.multi_reduction <mul>, %19, %19 [] : vector<11xf32> to vector<11xf32>
        %false_49 = index.bool.constant false
        %303 = arith.cmpf ule, %cst_5, %cst_5 : f32
        %304 = tensor.empty() : tensor<4x2xi16>
        %305 = math.cos %5 : tensor<4x2xf32>
        %306 = vector.broadcast %c172817522_i64 : i64 to vector<11xi64>
        %307 = vector.maskedload %alloc_15[%c1], %67, %306 : memref<2xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %308 = vector.transpose %99, [] : vector<f32> to vector<f32>
        %alloc_50 = memref.alloc() : memref<4xi32>
        memref.alloca_scope.return %alloc_50 : memref<4xi32>
      }
      %276 = math.ceil %6 : tensor<2xf16>
      %277 = math.tanh %5 : tensor<4x2xf32>
      %278 = tensor.empty() : tensor<2xi32>
      %279 = math.fpowi %6, %278 : tensor<2xf16>, tensor<2xi32>
      %280 = bufferization.clone %alloc_12 : memref<4xi64> to memref<4xi64>
      %281 = math.rsqrt %18 : tensor<2x4xf32>
      memref.assume_alignment %69, 2 : memref<9x2xi16>
      scf.yield %c0 : index
    }
    case 3 {
      %267 = math.copysign %4, %4 : tensor<4xf32>
      %268 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d0 + 64), -(d0 + 64), d2 * -2)>(%80, %c1, %81, %46)
      %269 = arith.divf %cst_4, %cst : f32
      %270 = index.casts %c1268726765_i32 : i32 to index
      %271 = arith.addi %true, %false : i1
      %272 = vector.broadcast %c172817522_i64 : i64 to vector<i64>
      vector.transfer_write %272, %alloc_15[%c11] : vector<i64>, memref<2xi64>
      %273 = vector.extract_strided_slice %23 {offsets = [0], sizes = [3], strides = [1]} : vector<11xf32> to vector<3xf32>
      %274 = arith.divui %extracted, %true : i1
      %275 = vector.create_mask %c13 : vector<2xi1>
      %extracted_44 = tensor.extract %9[%c1, %c0] : tensor<9x2xi32>
      %276 = scf.index_switch %81 -> vector<9x2xi64> 
      case 1 {
        %281 = vector.shuffle %65, %65 [0, 1, 3, 4, 10, 13, 15] : vector<9x2xi1>, vector<9x2xi1>
        %cst_45 = arith.constant 1.54863706E+9 : f32
        %282 = math.round %cst_1 : f16
        %283 = vector.broadcast %c172817522_i64 : i64 to vector<11xi64>
        %284 = vector.maskedload %alloc_18[%c1], %66, %283 : memref<4xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %285 = vector.extract %66[5] : vector<11xi1>
        %286 = index.casts %c6 : index to i32
        %alloc_46 = memref.alloc() : memref<4xi64>
        %287 = bufferization.to_tensor %29 : memref<2xi1>
        %288 = arith.shrsi %true, %true : i1
        %289 = math.exp %cst_2 : f32
        %290 = affine.load %29[%c13] : memref<2xi1>
        memref.assume_alignment %alloc_8, 8 : memref<2xf32>
        %collapsed_47 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
        %291 = math.floor %5 : tensor<4x2xf32>
        %292 = index.maxs %75, %86
        %293 = arith.remui %false, %true : i1
        %294 = vector.broadcast %c172817522_i64 : i64 to vector<9x2xi64>
        scf.yield %294 : vector<9x2xi64>
      }
      case 2 {
        %281 = index.maxs %80, %c6
        %282 = vector.broadcast %c1268726765_i32 : i32 to vector<9x2xi32>
        %283 = arith.mulf %cst_0, %cst_1 : f16
        %284 = math.round %6 : tensor<2xf16>
        %285 = index.maxu %c13, %270
        %286 = arith.floordivsi %true, %true : i1
        %287 = tensor.empty() : tensor<2xi64>
        memref.assume_alignment %alloc_14, 2 : memref<2xf32>
        %288 = vector.broadcast %false : i1 to vector<2xi1>
        %289 = arith.muli %c32058_i16, %c32058_i16 : i16
        %290 = tensor.empty() : tensor<i32>
        %291 = math.fpowi %20, %290 : tensor<f32>, tensor<i32>
        %292 = vector.extract %65[1] : vector<9x2xi1>
        %293 = math.tanh %6 : tensor<2xf16>
        %294 = memref.realloc %alloc_12 : memref<4xi64> to memref<11xi64>
        %295 = memref.load %alloc_20[%c1] : memref<2xi1>
        %296 = arith.xori %true, %false : i1
        %297 = vector.broadcast %c172817522_i64 : i64 to vector<9x2xi64>
        scf.yield %297 : vector<9x2xi64>
      }
      default {
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 ceildiv 32 + d0))>(%c8, %89, %86, %c12)
        %282 = math.round %cst_3 : f16
        %283 = bufferization.to_tensor %alloc_12 : memref<4xi64>
        %284 = vector.bitcast %65 : vector<9x2xi1> to vector<9x2xi1>
        %285 = math.exp2 %cst_3 : f16
        %286 = math.tan %cst : f32
        %287 = arith.minui %c-11559_i16, %c-11559_i16 : i16
        %288 = arith.remui %c518060233_i32, %c518060233_i32 : i32
        %289 = vector.broadcast %c4 : index to vector<9xindex>
        %290 = vector.broadcast %false : i1 to vector<9xi1>
        %291 = vector.broadcast %c-11559_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_21[] [%289], %290, %291 : memref<i16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %292 = math.floor %1 : tensor<4x2xf16>
        %293 = memref.realloc %alloc_11 : memref<2xi1> to memref<9xi1>
        %alloc_45 = memref.alloc() : memref<4xi16>
        memref.tensor_store %16, %alloc_45 : memref<4xi16>
        %294 = arith.shrui %true, %true : i1
        %295 = index.maxs %115, %c2
        %296 = math.atan2 %21, %20 : tensor<f32>
        %297 = math.log2 %cst_2 : f32
        %298 = vector.broadcast %c172817522_i64 : i64 to vector<9x2xi64>
        scf.yield %298 : vector<9x2xi64>
      }
      %277 = math.sqrt %cst_2 : f32
      %278 = vector.insertelement %c13810_i16, %73[%86 : index] : vector<2xi16>
      %279 = index.maxs %75, %81
      %280 = math.log2 %6 : tensor<2xf16>
      memref.alloca_scope  {
        %281 = math.fma %cst_3, %cst_0, %cst_0 : f16
        %282 = arith.floordivsi %34, %34 : i1
        %283 = arith.ceildivsi %true, %extracted : i1
        %284 = memref.realloc %alloc_13 : memref<2xi16> to memref<11xi16>
        %285 = bufferization.to_memref %20 : memref<f32>
        %286 = math.floor %cst_4 : f32
        %287 = math.ctlz %9 : tensor<9x2xi32>
        %288 = math.fpowi %1, %101 : tensor<4x2xf16>, tensor<4x2xi32>
        %289 = math.atan2 %4, %4 : tensor<4xf32>
        memref.tensor_store %13, %alloc_16 : memref<9x2xi16>
        %splat_45 = tensor.splat %extracted_44 : tensor<4x2xi32>
        %290 = vector.flat_transpose %56 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %291 = arith.floordivsi %c1268726765_i32, %c518060233_i32 : i32
        %292 = arith.minsi %extracted_23, %c-11559_i16 : i16
        %293 = math.fma %1, %1, %1 : tensor<4x2xf16>
        %extracted_46 = tensor.extract %2[%c0] : tensor<2xi1>
        memref.assume_alignment %alloc_13, 8 : memref<2xi16>
        %294 = index.casts %c32058_i16 : i16 to index
        %alloc_47 = memref.alloc() : memref<4x2xf16>
        memref.copy %alloc_10, %alloc_47 : memref<4x2xf16> to memref<4x2xf16>
        %extracted_48 = tensor.extract %112[%c1, %c3] : tensor<9x4xi16>
        %295 = vector.insertelement %cst_5, %273[%86 : index] : vector<3xf32>
        %296 = math.floor %cst_2 : f32
        %297 = math.fma %transposed, %18, %18 : tensor<2x4xf32>
        %298 = arith.maxsi %c1268726765_i32, %c265157077_i32 : i32
        %299 = vector.broadcast %c1268726765_i32 : i32 to vector<i32>
        %300 = vector.transfer_write %299, %splat_45[%22, %46] : vector<i32>, tensor<4x2xi32>
        %301 = math.exp %cst : f32
        %alloca_49 = memref.alloca() : memref<4xi32>
        %collapsed_50 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
        %302 = math.atan2 %4, %4 : tensor<4xf32>
        %alloc_51 = memref.alloc() : memref<9x2xf32>
        memref.copy %alloc_6, %alloc_51 : memref<9x2xf32> to memref<9x2xf32>
        %cast_52 = tensor.cast %1 : tensor<4x2xf16> to tensor<?x?xf16>
        %303 = vector.broadcast %cst_5 : f32 to vector<2xf32>
        %304 = vector.fma %303, %303, %303 : vector<2xf32>
      }
      scf.yield %c5 : index
    }
    case 4 {
      %267 = vector.flat_transpose %119 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %268 = math.rsqrt %1 : tensor<4x2xf16>
      %269 = arith.xori %c265157077_i32, %c265157077_i32 : i32
      %270 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 64)>(%c2, %c0, %107)
      %271 = bufferization.to_tensor %alloc : memref<4xi1>
      %rank = tensor.rank %10 : tensor<4xi16>
      %272 = bufferization.to_memref %271 : memref<4xi1>
      %273 = vector.shuffle %99, %99 [0, 1] : vector<f32>, vector<f32>
      %274 = vector.broadcast %true : i1 to vector<2x2xi1>
      %275 = vector.outerproduct %57, %82, %274 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
      %276 = arith.minf %cst_5, %cst : f32
      %277 = vector.broadcast %cst_3 : f16 to vector<f16>
      vector.transfer_write %277, %alloc_19[%75] : vector<f16>, memref<4xf16>
      %278 = arith.minf %cst_0, %cst_1 : f16
      memref.copy %29, %alloc_11 : memref<2xi1> to memref<2xi1>
      %splat_44 = tensor.splat %c13810_i16 : tensor<9x2xi16>
      %279 = arith.remf %cst_1, %cst_0 : f16
      %280 = bufferization.to_memref %20 : memref<f32>
      scf.yield %270 : index
    }
    default {
      %267 = index.casts %c265157077_i32 : i32 to index
      %268 = vector.bitcast %66 : vector<11xi1> to vector<11xi1>
      %269 = affine.load %alloc_21[] : memref<i16>
      %270 = math.cttz %0 : tensor<4xi1>
      %271 = math.round %cst_1 : f16
      %272 = math.atan %cst_3 : f16
      %273 = arith.shrsi %false, %true : i1
      %274 = arith.ori %269, %269 : i16
      %275 = arith.remui %true, %true : i1
      %276 = arith.cmpf oge, %cst_2, %cst : f32
      %277 = math.cttz %true : i1
      %278 = memref.alloca_scope  -> (memref<4xi64>) {
        %282 = vector.create_mask %c12 : vector<4xi1>
        %283 = math.rsqrt %cst : f32
        %284 = math.copysign %transposed, %transposed : tensor<2x4xf32>
        %285 = math.copysign %6, %6 : tensor<2xf16>
        %286 = vector.shuffle %268, %268 [0, 2, 5, 6, 9, 10, 11, 12, 15, 16] : vector<11xi1>, vector<11xi1>
        %287 = math.expm1 %5 : tensor<4x2xf32>
        %288 = arith.muli %extracted, %extracted : i1
        %289 = memref.load %29[%c0] : memref<2xi1>
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4)>(%80, %46, %46, %c0)
        %291 = math.powf %cst_5, %cst_2 : f32
        %292 = vector.broadcast %c14 : index to vector<11xindex>
        %293 = vector.broadcast %cst_0 : f16 to vector<11xf16>
        vector.scatter %alloc_19[%c0] [%292], %268, %293 : memref<4xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %294 = vector.bitcast %268 : vector<11xi1> to vector<11xi1>
        memref.copy %alloc_14, %alloc_8 : memref<2xf32> to memref<2xf32>
        %295 = math.log1p %6 : tensor<2xf16>
        %296 = vector.create_mask %81 : vector<2xi1>
        %splat_45 = tensor.splat %c1268726765_i32 : tensor<4xi32>
        %297 = index.maxs %c8, %107
        %alloca_46 = memref.alloca() : memref<9x2xf32>
        %298 = index.maxs %22, %c9
        %299 = vector.load %alloc[%c0] : memref<4xi1>, vector<9x2xi1>
        %300 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c11, %c1, %267)
        %301 = math.ceil %cst_3 : f16
        %inserted_47 = tensor.insert %extracted into %12[%c2] : tensor<4xi1>
        %302 = index.ceildivu %37, %115
        memref.assume_alignment %alloc_9, 1 : memref<9x2xf16>
        memref.assume_alignment %alloc_17, 8 : memref<4x2xi1>
        %303 = math.ipowi %14, %14 : tensor<4x2xi16>
        %304 = math.ceil %transposed : tensor<2x4xf32>
        %305 = math.sqrt %cst_5 : f32
        %306 = vector.shuffle %119, %35 [2, 3, 4, 5, 6, 7, 9, 10, 11] : vector<1xf32>, vector<11xf32>
        %307 = vector.extract_strided_slice %35 {offsets = [2], sizes = [3], strides = [1]} : vector<11xf32> to vector<3xf32>
        %308 = math.round %cst_1 : f16
        memref.alloca_scope.return %alloc_12 : memref<4xi64>
      }
      %279 = tensor.empty() : tensor<2xi32>
      %280 = math.fpowi %6, %279 : tensor<2xf16>, tensor<2xi32>
      %from_elements_44 = tensor.from_elements %c1268726765_i32, %c518060233_i32, %c518060233_i32, %c1212036663_i32, %c265157077_i32, %c1268726765_i32, %c518060233_i32, %c265157077_i32, %c1212036663_i32, %c265157077_i32, %c518060233_i32, %c265157077_i32, %c1268726765_i32, %c1268726765_i32, %c1212036663_i32, %c265157077_i32, %c1268726765_i32, %c1212036663_i32 : tensor<9x2xi32>
      %281 = memref.realloc %alloc_8 : memref<2xf32> to memref<2xf32>
      %c1214463869_i32 = arith.constant 1214463869 : i32
      scf.yield %c2 : index
    }
    %122 = bufferization.clone %alloc_14 : memref<2xf32> to memref<2xf32>
    %123 = vector.bitcast %59 : vector<2xi64> to vector<2xi64>
    %124 = arith.floordivsi %34, %extracted : i1
    %from_elements_26 = tensor.from_elements %cst_4, %cst_4 : tensor<2xf32>
    %125 = index.maxs %64, %86
    %126 = vector.broadcast %115 : index to vector<4xindex>
    %127 = vector.broadcast %extracted : i1 to vector<4xi1>
    %128 = vector.broadcast %cst_1 : f16 to vector<4xf16>
    vector.scatter %alloc_10[%c3, %c0] [%126], %127, %128 : memref<4x2xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
    %129 = scf.while (%arg1 = %c1212036663_i32) : (i32) -> i32 {
      %267 = arith.negf %cst_4 : f32
      %268 = math.ctlz %0 : tensor<4xi1>
      %269 = vector.broadcast %c172817522_i64 : i64 to vector<9xi64>
      %270 = vector.broadcast %34 : i1 to vector<9xi1>
      %271 = vector.maskedload %alloc_15[%c0], %270, %269 : memref<2xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %from_elements_44 = tensor.from_elements %c172817522_i64, %c172817522_i64 : tensor<2xi64>
      %272 = math.floor %5 : tensor<4x2xf32>
      %273 = arith.remsi %c-11559_i16, %c-11559_i16 : i16
      %274 = bufferization.to_tensor %76 : memref<4xi1>
      %275 = arith.mulf %cst_1, %cst_0 : f16
      scf.condition(%false) %c518060233_i32 : i32
    } do {
    ^bb0(%arg1: i32):
      %267 = arith.ceildivsi %34, %true : i1
      %268 = index.sub %c14, %106
      %269 = index.floordivs %c7, %c6
      %270 = math.rsqrt %from_elements_26 : tensor<2xf32>
      vector.print %82 : vector<2xi1>
      %271 = arith.minsi %c32058_i16, %extracted_23 : i16
      %272 = arith.mulf %cst_4, %cst_4 : f32
      %273 = math.round %6 : tensor<2xf16>
      %274 = vector.extract %67[6] : vector<11xi1>
      %275 = math.absf %5 : tensor<4x2xf32>
      %276 = arith.ceildivsi %arg1, %c518060233_i32 : i32
      %277 = math.fma %6, %6, %6 : tensor<2xf16>
      %278 = vector.broadcast %cst : f32 to vector<4xf32>
      %279 = vector.fma %278, %278, %278 : vector<4xf32>
      %280 = arith.remsi %extracted_23, %c32058_i16 : i16
      memref.copy %76, %alloc : memref<4xi1> to memref<4xi1>
      %281 = arith.maxsi %arg1, %c1212036663_i32 : i32
      scf.yield %c265157077_i32 : i32
    }
    %130 = vector.broadcast %cst : f32 to vector<4xf32>
    %131 = vector.fma %130, %130, %130 : vector<4xf32>
    %132 = vector.bitcast %119 : vector<1xf32> to vector<1xi32>
    %true_27 = index.bool.constant true
    %alloca = memref.alloca() : memref<9x2xf16>
    %from_elements_28 = tensor.from_elements %c-11559_i16, %c13810_i16 : tensor<2xi16>
    %133 = math.tan %20 : tensor<f32>
    %134 = vector.transpose %23, [0] : vector<11xf32> to vector<11xf32>
    %135 = scf.index_switch %c2 -> i64 
    case 1 {
      %267 = affine.if affine_set<(d0, d1) : (d1 * 8 == 0, d1 >= 0)>(%c0, %c1) -> memref<9x2xi1> {
        %280 = math.rsqrt %from_elements_26 : tensor<2xf32>
        %281 = math.log1p %cst_1 : f16
        memref.tensor_store %2, %alloc_20 : memref<2xi1>
        %282 = math.cos %6 : tensor<2xf16>
        %283 = vector.extract_strided_slice %35 {offsets = [7], sizes = [4], strides = [1]} : vector<11xf32> to vector<4xf32>
        memref.assume_alignment %29, 16 : memref<2xi1>
        %284 = tensor.empty() : tensor<4xf32>
        %alloc_46 = memref.alloc() : memref<9x2xf32>
        memref.copy %alloc_6, %alloc_46 : memref<9x2xf32> to memref<9x2xf32>
        %alloc_47 = memref.alloc() : memref<9x2xi1>
        affine.yield %alloc_47 : memref<9x2xi1>
      } else {
        %280 = math.copysign %18, %18 : tensor<2x4xf32>
        %281 = vector.insertelement %c265157077_i32, %58[%c9 : index] : vector<2xi32>
        %282 = arith.divui %false, %false : i1
        %283 = vector.shuffle %97, %97 [0, 1] : vector<i1>, vector<i1>
        %extracted_46 = tensor.extract %from_elements_28[%c0] : tensor<2xi16>
        %284 = index.ceildivs %c8, %106
        %true_47 = index.bool.constant true
        %alloc_48 = memref.alloc() : memref<9x2xi64>
        %285 = vector.broadcast %c172817522_i64 : i64 to vector<9x2xi64>
        %286 = vector.broadcast %c518060233_i32 : i32 to vector<9x2xi32>
        %287 = vector.gather %alloc_48[%86, %c1] [%286], %65, %285 : memref<9x2xi64>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi64> into vector<9x2xi64>
        %alloc_49 = memref.alloc() : memref<9x2xi1>
        affine.yield %alloc_49 : memref<9x2xi1>
      }
      %268 = math.floor %21 : tensor<f32>
      %269 = math.fma %18, %transposed, %transposed : tensor<2x4xf32>
      %270 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 64)>(%115, %c14, %c11)
      memref.assume_alignment %54, 2 : memref<4x2xi64>
      %271 = bufferization.clone %alloc_12 : memref<4xi64> to memref<4xi64>
      %272 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %expanded_44 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
      %273 = arith.floordivsi %34, %34 : i1
      %274 = index.floordivs %c15, %115
      %275 = index.maxs %274, %c9
      %rank = tensor.rank %10 : tensor<4xi16>
      %276 = vector.bitcast %36 : vector<1xf32> to vector<1xf32>
      %277 = index.floordivs %64, %46
      %c1_i16 = arith.constant 1 : i16
      %278 = vector.transfer_read %3[%275], %c1_i16 : tensor<2xi16>, vector<i16>
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_45 = arith.constant 0 : i32
      %279 = vector.transfer_read %8[%c11], %c0_i32_45 : tensor<4xi32>, vector<i32>
      scf.yield %c172817522_i64 : i64
    }
    case 2 {
      %267 = math.expm1 %transposed : tensor<2x4xf32>
      %268 = arith.mulf %cst_1, %cst_3 : f16
      %269 = math.log10 %cst_1 : f16
      %c-18414_i16 = arith.constant -18414 : i16
      %collapsed_44 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x2xf32> into tensor<8xf32>
      %generated_45 = tensor.generate %c4, %22 {
      ^bb0(%arg1: index, %arg2: index):
        %false_47 = arith.constant false
        %277 = affine.max affine_map<(d0, d1, d2) -> (d1, (d1 + d0) * 32)>(%c1, %c9, %37)
        %278 = math.copysign %1, %1 : tensor<4x2xf16>
        %279 = vector.bitcast %119 : vector<1xf32> to vector<1xf32>
        tensor.yield %c-11559_i16 : i16
      } : tensor<?x?xi16>
      %270 = bufferization.clone %alloc_22 : memref<4xf32> to memref<4xf32>
      %271 = index.maxu %46, %c1
      %from_elements_46 = tensor.from_elements %c13810_i16, %extracted_23, %c32058_i16, %c-11559_i16 : tensor<4xi16>
      %272 = math.tan %4 : tensor<4xf32>
      affine.for %arg1 = 0 to 14 {
      }
      %273 = arith.mulf %cst_1, %cst_0 : f16
      %c1480890787_i32 = arith.constant 1480890787 : i32
      %274 = math.log2 %21 : tensor<f32>
      %275 = vector.extract %130[2] : vector<4xf32>
      %276 = vector.extract_strided_slice %35 {offsets = [7], sizes = [1], strides = [1]} : vector<11xf32> to vector<1xf32>
      scf.yield %c172817522_i64 : i64
    }
    case 3 {
      %267 = arith.floordivsi %c-11559_i16, %c32058_i16 : i16
      %268 = arith.cmpf uge, %cst_3, %cst_1 : f16
      %269 = arith.shrsi %34, %extracted : i1
      %270 = vector.broadcast %cst_4 : f32 to vector<9x2xf32>
      %271 = vector.broadcast %c518060233_i32 : i32 to vector<9x2xi32>
      %272 = vector.gather %5[%c14, %c11] [%271], %65, %270 : tensor<4x2xf32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf32> into vector<9x2xf32>
      %273 = math.fma %cst_4, %cst_2, %cst_4 : f32
      %274 = index.sizeof
      %275 = math.tan %cst_2 : f32
      %generated_44 = tensor.generate %c1, %c5 {
      ^bb0(%arg1: index, %arg2: index):
        %281 = math.floor %4 : tensor<4xf32>
        %282 = arith.floordivsi %c32058_i16, %c13810_i16 : i16
        %283 = index.maxu %46, %89
        %284 = tensor.empty() : tensor<2xi32>
        %285 = math.fpowi %6, %284 : tensor<2xf16>, tensor<2xi32>
        tensor.yield %true_27 : i1
      } : tensor<?x?xi1>
      %276 = math.round %18 : tensor<2x4xf32>
      %277 = affine.if affine_set<(d0) : ((d0 + 1) * 4 >= 0, ((d0 + 1) * 4) floordiv 64 >= 0, d0 * 65536 == 0, d0 * 1024 >= 0)>(%c12) -> f32 {
        %281 = math.cos %cst_5 : f32
        %282 = index.maxs %c0, %c4
        %283 = math.floor %cst : f32
        %284 = arith.floordivsi %c-11559_i16, %c32058_i16 : i16
        %285 = math.exp2 %cst_0 : f16
        %286 = vector.broadcast %cst : f32 to vector<2xf32>
        %287 = vector.fma %286, %286, %286 : vector<2xf32>
        %288 = math.sqrt %cst_1 : f16
        %289 = arith.andi %c13810_i16, %c13810_i16 : i16
        affine.yield %cst_2 : f32
      } else {
        %281 = vector.extract_strided_slice %57 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
        %282 = affine.apply affine_map<(d0) -> (d0 + 136)>(%c14)
        %283 = math.ipowi %32, %12 : tensor<4xi1>
        %284 = index.add %c2, %75
        %285 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %286 = math.copysign %5, %5 : tensor<4x2xf32>
        %extracted_46 = tensor.extract %6[%c1] : tensor<2xf16>
        %287 = vector.broadcast %cst_2 : f32 to vector<4x2xf32>
        %288 = vector.fma %287, %287, %287 : vector<4x2xf32>
        affine.yield %cst_4 : f32
      }
      %278 = vector.flat_transpose %130 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %279 = arith.andi %c-11559_i16, %c13810_i16 : i16
      %alloc_45 = memref.alloc() : memref<i16>
      memref.copy %alloc_21, %alloc_45 : memref<i16> to memref<i16>
      %280 = math.atan2 %4, %4 : tensor<4xf32>
      memref.assume_alignment %122, 4 : memref<2xf32>
      scf.if %true {
        %281 = affine.min affine_map<(d0) -> (d0 + d0 - 12, d0 + 4, d0 + d0 - 12 - (d0 + d0 - 12) floordiv 8, (d0 + d0 - 12) floordiv 8 - 2)>(%80)
        %282 = bufferization.to_memref %3 : memref<2xi16>
        %283 = math.exp2 %transposed : tensor<2x4xf32>
        %284 = tensor.empty() : tensor<i32>
        %285 = math.fpowi %21, %284 : tensor<f32>, tensor<i32>
        %286 = arith.remui %false, %true_27 : i1
        %cast_46 = tensor.cast %2 : tensor<2xi1> to tensor<?xi1>
        %287 = math.exp %5 : tensor<4x2xf32>
        %288 = arith.shrui %c518060233_i32, %c265157077_i32 : i32
      }
      scf.yield %c172817522_i64 : i64
    }
    case 4 {
      %267 = math.ceil %4 : tensor<4xf32>
      %268 = index.casts %125 : index to i32
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * -2 + 64, (-d0) floordiv 64, (-d0) floordiv 64)>(%37, %81, %c9, %c5)
      %270 = vector.extract_strided_slice %91 {offsets = [1], sizes = [1], strides = [1]} : vector<4x2xi64> to vector<1x2xi64>
      %271 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %271, %122[%c12] : vector<f32>, memref<2xf32>
      %272 = arith.remui %c172817522_i64, %c172817522_i64 : i64
      %alloc_44 = memref.alloc() : memref<2xf16>
      %273 = arith.mulf %cst_3, %cst_1 : f16
      %274 = vector.broadcast %c265157077_i32 : i32 to vector<4x2xi32>
      %275 = vector.broadcast %34 : i1 to vector<4x2xi1>
      %276 = vector.gather %alloc_7[%46, %c1] [%274], %275, %274 : memref<4x2xi32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi32> into vector<4x2xi32>
      %true_45 = index.bool.constant true
      %inserted_46 = tensor.insert %cst into %5[%c0, %c1] : tensor<4x2xf32>
      %277 = vector.shuffle %67, %57 [5, 7, 11, 12] : vector<11xi1>, vector<2xi1>
      %278 = math.log2 %transposed : tensor<2x4xf32>
      %alloc_47 = memref.alloc() : memref<4xi16>
      memref.tensor_store %7, %alloc_47 : memref<4xi16>
      %279 = index.maxs %80, %c13
      %280 = math.floor %1 : tensor<4x2xf16>
      scf.yield %c172817522_i64 : i64
    }
    default {
      %267 = index.sub %115, %37
      %from_elements_44 = tensor.from_elements %cst_2, %cst_2, %cst_4, %cst_4 : tensor<4xf32>
      %268 = vector.load %alloc_17[%c1, %c1] : memref<4x2xi1>, vector<4xi1>
      %269 = tensor.empty() : tensor<2x2xf32>
      %270 = linalg.matmul ins(%18, %5 : tensor<2x4xf32>, tensor<4x2xf32>) outs(%269 : tensor<2x2xf32>) -> tensor<2x2xf32>
      %271 = math.ctlz %12 : tensor<4xi1>
      %272 = affine.min affine_map<(d0) -> (d0 ceildiv 32 + d0 + 8, d0 * -16, -(d0 + 8) - (d0 floordiv 4 + 2) mod 16)>(%106)
      %273 = bufferization.to_tensor %69 : memref<9x2xi16>
      %274 = arith.ori %true_27, %true : i1
      %275 = arith.floordivsi %extracted, %false : i1
      %276 = vector.broadcast %c265157077_i32 : i32 to vector<11x11xi32>
      %277 = vector.outerproduct %33, %33, %276 {kind = #vector.kind<xor>} : vector<11xi32>, vector<11xi32>
      %278 = math.round %6 : tensor<2xf16>
      %splat_45 = tensor.splat %c518060233_i32 : tensor<9x2xi32>
      %279 = scf.index_switch %115 -> memref<2xi64> 
      case 1 {
        %283 = arith.addi %c1268726765_i32, %c265157077_i32 : i32
        %284 = index.divu %c15, %c6
        %285 = math.rsqrt %18 : tensor<2x4xf32>
        %286 = affine.min affine_map<(d0) -> (-d0, -(d0 mod 16), -d0 + 16)>(%c13)
        %dest, %accumulated_value = vector.scan <xor>, %65, %57 {inclusive = false, reduction_dim = 0 : i64} : vector<9x2xi1>, vector<2xi1>
        %287 = math.rsqrt %transposed : tensor<2x4xf32>
        %288 = vector.shuffle %132, %58 [2] : vector<1xi32>, vector<2xi32>
        %289 = math.exp %from_elements_44 : tensor<4xf32>
        %290 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %291 = vector.transfer_write %290, %5[%c0, %286] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<4x2xf32>
        %292 = tensor.empty() : tensor<2x2xf32>
        %293 = linalg.matmul ins(%transposed, %5 : tensor<2x4xf32>, tensor<4x2xf32>) outs(%292 : tensor<2x2xf32>) -> tensor<2x2xf32>
        memref.assume_alignment %alloc_15, 8 : memref<2xi64>
        %294 = arith.cmpi uge, %true_27, %34 : i1
        %295 = math.powf %cst_0, %cst_1 : f16
        %296 = vector.broadcast %c15 : index to vector<4xindex>
        %297 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        vector.scatter %alloc_10[%c3, %c0] [%296], %268, %297 : memref<4x2xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %298 = arith.maxsi %c13810_i16, %c-11559_i16 : i16
        %299 = arith.cmpi sgt, %c172817522_i64, %c172817522_i64 : i64
        scf.yield %alloc_15 : memref<2xi64>
      }
      case 2 {
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_46 = arith.constant 0 : i64
        %283 = vector.transfer_read %54[%c8, %46], %c0_i64_46 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<4x2xi64>, vector<11xi64>
        %284 = index.add %c11, %c8
        %285 = arith.shrsi %true_27, %34 : i1
        %286 = math.cttz %55 : tensor<4xi64>
        %287 = index.divs %107, %c9
        %288 = affine.max affine_map<(d0, d1, d2) -> (d1 - 64, -(d0 mod 16), d0 * 256)>(%c1, %c9, %107)
        %289 = arith.ceildivsi %c1212036663_i32, %c265157077_i32 : i32
        %cst_47 = arith.constant 1.000000e+00 : f16
        %cst_48 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %1[%c6, %c6], %cst_48 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x2xf16>, vector<4xf16>
        %291 = math.ceil %cst : f32
        %292 = index.maxs %c0, %288
        %293 = affine.load %alloc_9[%c13, %c1] : memref<9x2xf16>
        %inserted_49 = tensor.insert %false into %11[%c1] : tensor<2xi1>
        %294 = math.fma %6, %6, %6 : tensor<2xf16>
        %cast_50 = tensor.cast %13 : tensor<9x2xi16> to tensor<?x?xi16>
        %295 = math.floor %from_elements_44 : tensor<4xf32>
        %296 = math.ceil %4 : tensor<4xf32>
        scf.yield %alloc_15 : memref<2xi64>
      }
      default {
        %283 = arith.divf %cst_4, %cst_4 : f32
        %284 = index.maxs %80, %86
        %285 = index.sub %81, %125
        %286 = math.exp2 %cst_1 : f16
        %splat_46 = tensor.splat %cst_0 : tensor<2xf16>
        %collapsed_47 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
        %287 = index.add %37, %81
        %288 = vector.transpose %99, [] : vector<f32> to vector<f32>
        %alloc_48 = memref.alloc() : memref<4xi32>
        memref.tensor_store %8, %alloc_48 : memref<4xi32>
        %289 = vector.load %alloc_21[] : memref<i16>, vector<2xi16>
        %290 = math.fpowi %cst_0, %c518060233_i32 : f16, i32
        %291 = memref.load %alloc_8[%c0] : memref<2xf32>
        %alloc_49 = memref.alloc() : memref<4xi16>
        memref.tensor_store %16, %alloc_49 : memref<4xi16>
        %splat_50 = tensor.splat %true : tensor<2xi1>
        %extracted_51 = tensor.extract %1[%c2, %c1] : tensor<4x2xf16>
        %292 = vector.matrix_multiply %33, %132 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<1xi32>) -> vector<11xi32>
        scf.yield %alloc_15 : memref<2xi64>
      }
      %280 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 floordiv 16) floordiv 16 == 0, d3 == 0)>(%c7, %c14, %c0, %c8) -> memref<2xf16> {
        %283 = vector.shuffle %56, %59 [0] : vector<2xi64>, vector<2xi64>
        %284 = index.add %c12, %75
        %285 = math.floor %1 : tensor<4x2xf16>
        %from_elements_46 = tensor.from_elements %cst, %cst, %cst_5, %cst_4, %cst_4, %cst_5, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst, %cst_5, %cst, %cst_2, %cst : tensor<9x2xf32>
        %286 = bufferization.clone %alloc_18 : memref<4xi64> to memref<4xi64>
        %287 = arith.remui %c1212036663_i32, %c1268726765_i32 : i32
        %288 = vector.flat_transpose %123 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %289 = vector.broadcast %true_27 : i1 to vector<4x4xi1>
        %290 = vector.outerproduct %268, %268, %289 {kind = #vector.kind<xor>} : vector<4xi1>, vector<4xi1>
        %alloc_47 = memref.alloc() : memref<2xf16>
        affine.yield %alloc_47 : memref<2xf16>
      } else {
        %283 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%c4, %c3, %c3)
        %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c3, %115, %80, %283)
        %285 = vector.create_mask %267 : vector<4xi1>
        memref.copy %29, %alloc_11 : memref<2xi1> to memref<2xi1>
        %286 = vector.bitcast %119 : vector<1xf32> to vector<1xf32>
        %287 = vector.extract_strided_slice %285 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
        %288 = math.log1p %transposed : tensor<2x4xf32>
        %289 = bufferization.to_tensor %alloc_14 : memref<2xf32>
        %alloc_46 = memref.alloc() : memref<2xf16>
        affine.yield %alloc_46 : memref<2xf16>
      }
      %281 = vector.shuffle %67, %268 [0, 3, 4, 7, 8, 9, 12, 13] : vector<11xi1>, vector<4xi1>
      %282 = vector.reduction <add>, %35 : vector<11xf32> into f32
      scf.yield %c172817522_i64 : i64
    }
    %cast = tensor.cast %1 : tensor<4x2xf16> to tensor<?x?xf16>
    scf.index_switch %115 
    case 1 {
      %267 = tensor.empty() : tensor<2x4xi32>
      %268 = math.fpowi %18, %267 : tensor<2x4xf32>, tensor<2x4xi32>
      %269 = vector.broadcast %cst_5 : f32 to vector<2xf32>
      %270 = vector.maskedload %alloc_8[%c0], %82, %269 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %271 = tensor.empty() : tensor<4x4xf32>
      %272 = linalg.matmul ins(%5, %transposed : tensor<4x2xf32>, tensor<2x4xf32>) outs(%271 : tensor<4x4xf32>) -> tensor<4x4xf32>
      %alloc_44 = memref.alloc() : memref<4xi16>
      %273 = vector.broadcast %c13810_i16 : i16 to vector<4xi16>
      %274 = vector.broadcast %extracted : i1 to vector<4xi1>
      %275 = vector.broadcast %c518060233_i32 : i32 to vector<4xi32>
      %276 = vector.gather %alloc_44[%89] [%275], %274, %273 : memref<4xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %277 = math.fma %cst_3, %cst_0, %cst_3 : f16
      %278 = math.fma %cst_3, %cst_0, %cst_3 : f16
      %279 = math.fpowi %18, %267 : tensor<2x4xf32>, tensor<2x4xi32>
      %280 = tensor.empty() : tensor<2xf16>
      scf.execute_region {
        %287 = arith.remf %cst_1, %cst_1 : f16
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d3 + 32))>(%c0, %c9, %81, %89)
        %289 = index.add %106, %c6
        %290 = math.rsqrt %from_elements_26 : tensor<2xf32>
        %291 = vector.flat_transpose %130 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %292 = vector.shuffle %67, %67 [1, 2, 4, 10, 11, 12, 13, 19] : vector<11xi1>, vector<11xi1>
        %expanded_47 = tensor.expand_shape %55 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %293 = bufferization.clone %alloc_7 : memref<4x2xi32> to memref<4x2xi32>
        %294 = arith.andi %c1212036663_i32, %c1268726765_i32 : i32
        %295 = math.log1p %cst_5 : f32
        %296 = vector.broadcast %extracted_23 : i16 to vector<2xi16>
        %297 = arith.addi %c13810_i16, %c-11559_i16 : i16
        %298 = math.rsqrt %1 : tensor<4x2xf16>
        %299 = arith.addi %c32058_i16, %c-11559_i16 : i16
        %300 = tensor.empty() : tensor<2x4xf32>
        %301 = linalg.matmul ins(%18, %271 : tensor<2x4xf32>, tensor<4x4xf32>) outs(%300 : tensor<2x4xf32>) -> tensor<2x4xf32>
        %302 = index.sizeof
        scf.yield
      }
      %extracted_45 = tensor.extract %55[%c1] : tensor<4xi64>
      %281 = vector.broadcast %c172817522_i64 : i64 to vector<i64>
      %282 = vector.transfer_write %281, %15[%c7] : vector<i64>, tensor<2xi64>
      %283 = arith.remf %cst_2, %cst_4 : f32
      %284 = scf.while (%arg1 = %281) : (vector<i64>) -> vector<i64> {
        %287 = index.maxu %86, %89
        %288 = vector.broadcast %cst_0 : f16 to vector<11xf16>
        %289 = vector.maskedload %alloc_9[%c6, %c0], %66, %288 : memref<9x2xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %290 = vector.extract %289[6] : vector<11xf16>
        %291 = index.maxu %22, %22
        %292 = vector.flat_transpose %276 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %293 = math.round %cst_0 : f16
        %294 = vector.reduction <maxsi>, %276 : vector<4xi16> into i16
        %295 = tensor.empty() : tensor<2x4xf32>
        %296 = linalg.matmul ins(%transposed, %271 : tensor<2x4xf32>, tensor<4x4xf32>) outs(%295 : tensor<2x4xf32>) -> tensor<2x4xf32>
        scf.condition(%true_27) %281 : vector<i64>
      } do {
      ^bb0(%arg1: vector<i64>):
        %cast_47 = tensor.cast %7 : tensor<4xi16> to tensor<?xi16>
        %287 = vector.broadcast %c1268726765_i32 : i32 to vector<i32>
        %288 = vector.transfer_write %287, %collapsed[%c14] : vector<i32>, tensor<18xi32>
        %289 = index.ceildivu %115, %80
        %290 = vector.broadcast %289 : index to vector<2xindex>
        vector.scatter %76[%c1] [%290], %57, %57 : memref<4xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %291 = math.fma %4, %4, %4 : tensor<4xf32>
        %292 = math.powf %4, %4 : tensor<4xf32>
        %alloc_48 = memref.alloc() : memref<i16>
        memref.copy %alloc_21, %alloc_48 : memref<i16> to memref<i16>
        %293 = arith.remf %cst_1, %cst_0 : f16
        %294 = index.ceildivs %86, %37
        %295 = arith.ori %c13810_i16, %c32058_i16 : i16
        %296 = index.maxs %c14, %c7
        %297 = tensor.empty() : tensor<4x4xi32>
        %298 = linalg.matmul ins(%101, %267 : tensor<4x2xi32>, tensor<2x4xi32>) outs(%297 : tensor<4x4xi32>) -> tensor<4x4xi32>
        %299 = vector.flat_transpose %35 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %300 = memref.realloc %122 : memref<2xf32> to memref<2xf32>
        %301 = arith.addf %cst_1, %cst_0 : f16
        %302 = vector.extract %274[3] : vector<4xi1>
        scf.yield %281 : vector<i64>
      }
      %285 = scf.while (%arg1 = %c1268726765_i32) : (i32) -> i32 {
        %287 = index.floordivs %c9, %c10
        %cast_47 = tensor.cast %11 : tensor<2xi1> to tensor<?xi1>
        %288 = vector.bitcast %65 : vector<9x2xi1> to vector<9x2xi1>
        %289 = math.floor %transposed : tensor<2x4xf32>
        %290 = math.log2 %cst_5 : f32
        %291 = index.sub %c3, %89
        %extracted_48 = tensor.extract %14[%c0, %c0] : tensor<4x2xi16>
        %292 = vector.gather %76[%c15] [%58], %57, %82 : memref<4xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        scf.condition(%false) %c518060233_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %inserted_47 = tensor.insert %cst_3 into %6[%c1] : tensor<2xf16>
        %287 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 - 64)) floordiv 64)>(%22, %c0, %115)
        %288 = tensor.empty() : tensor<2xi32>
        %289 = math.fpowi %6, %288 : tensor<2xf16>, tensor<2xi32>
        %290 = arith.cmpf une, %cst, %cst_5 : f32
        %291 = arith.shrsi %c13810_i16, %extracted_23 : i16
        %292 = math.atan2 %5, %5 : tensor<4x2xf32>
        %293 = vector.insert %cst, %23 [10] : f32 into vector<11xf32>
        %cst_48 = arith.constant 4.598400e+04 : f16
        %294 = index.casts %c14 : index to i32
        %295 = vector.broadcast %c32058_i16 : i16 to vector<i16>
        %296 = vector.transfer_write %295, %14[%c10, %c9] : vector<i16>, tensor<4x2xi16>
        %extracted_49 = tensor.extract %9[%c5, %c1] : tensor<9x2xi32>
        %inserted_50 = tensor.insert %c13810_i16 into %10[%c0] : tensor<4xi16>
        %297 = arith.remf %cst_0, %cst_1 : f16
        %298 = arith.floordivsi %c265157077_i32, %c518060233_i32 : i32
        %299 = vector.broadcast %true_27 : i1 to vector<11x11xi1>
        %300 = vector.outerproduct %67, %66, %299 {kind = #vector.kind<xor>} : vector<11xi1>, vector<11xi1>
        %301 = math.round %280 : tensor<2xf16>
        scf.yield %c265157077_i32 : i32
      }
      %collapsed_46 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x2xf32> into tensor<8xf32>
      %286 = arith.divf %cst_3, %cst_1 : f16
      scf.yield
    }
    case 2 {
      %267 = index.maxs %37, %c3
      %268 = math.floor %5 : tensor<4x2xf32>
      %269 = arith.cmpf oeq, %cst_4, %cst : f32
      %270 = scf.while (%arg1 = %99) : (vector<f32>) -> vector<f32> {
        %282 = index.maxu %c3, %c4
        %283 = math.ipowi %13, %13 : tensor<9x2xi16>
        %284 = arith.mulf %cst_0, %cst_1 : f16
        %285 = math.powf %cst, %cst_2 : f32
        %286 = math.ctlz %c32058_i16 : i16
        %287 = tensor.empty() : tensor<2xi32>
        %288 = math.fpowi %from_elements_26, %287 : tensor<2xf32>, tensor<2xi32>
        %289 = math.log1p %1 : tensor<4x2xf16>
        %290 = vector.extract %56[1] : vector<2xi64>
        scf.condition(%34) %99 : vector<f32>
      } do {
      ^bb0(%arg1: vector<f32>):
        %282 = arith.shrsi %c1212036663_i32, %c265157077_i32 : i32
        %283 = vector.create_mask %115 : vector<4xi1>
        %rank = tensor.rank %3 : tensor<2xi16>
        %284 = arith.remf %cst_1, %cst_3 : f16
        %285 = bufferization.clone %29 : memref<2xi1> to memref<2xi1>
        %286 = arith.remf %cst_4, %cst_5 : f32
        %inserted_45 = tensor.insert %extracted_23 into %7[%c2] : tensor<4xi16>
        %287 = arith.floordivsi %true_27, %true_27 : i1
        %alloc_46 = memref.alloc() : memref<9x4xi16>
        memref.tensor_store %112, %alloc_46 : memref<9x4xi16>
        memref.assume_alignment %alloc_11, 2 : memref<2xi1>
        %288 = math.roundeven %20 : tensor<f32>
        %289 = arith.divf %cst_5, %cst : f32
        %290 = vector.maskedload %285[%c0], %283, %283 : memref<2xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %291 = vector.broadcast %c172817522_i64 : i64 to vector<9x2xi64>
        %292 = arith.shrui %extracted_23, %c32058_i16 : i16
        %293 = arith.shrsi %c265157077_i32, %c1268726765_i32 : i32
        scf.yield %99 : vector<f32>
      }
      %271 = vector.insert %c13810_i16, %73 [0] : i16 into vector<2xi16>
      %collapsed_44 = tensor.collapse_shape %transposed [[0, 1]] : tensor<2x4xf32> into tensor<8xf32>
      %272 = math.cos %1 : tensor<4x2xf16>
      %273 = vector.bitcast %56 : vector<2xi64> to vector<2xi64>
      %274 = vector.extract_strided_slice %19 {offsets = [2], sizes = [7], strides = [1]} : vector<11xf32> to vector<7xf32>
      %275 = vector.insertelement %c1268726765_i32, %132[%c12 : index] : vector<1xi32>
      %276 = bufferization.to_memref %8 : memref<4xi32>
      %277 = bufferization.to_memref %5 : memref<4x2xf32>
      %278 = arith.ori %extracted_23, %c13810_i16 : i16
      %279 = memref.load %69[%c0, %c0] : memref<9x2xi16>
      %280 = tensor.empty(%c10) : tensor<?x2xi1>
      %281 = math.ipowi %12, %12 : tensor<4xi1>
      scf.yield
    }
    case 3 {
      %267 = vector.flat_transpose %56 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %268 = math.exp %cst_3 : f16
      %extracted_44 = tensor.extract %9[%c0, %c1] : tensor<9x2xi32>
      %269 = math.rsqrt %from_elements_26 : tensor<2xf32>
      %270 = vector.extract_strided_slice %73 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi16> to vector<2xi16>
      %271 = index.ceildivu %c15, %c4
      %272 = math.round %18 : tensor<2x4xf32>
      memref.assume_alignment %122, 8 : memref<2xf32>
      %from_elements_45 = tensor.from_elements %c-11559_i16, %c13810_i16, %c13810_i16, %c-11559_i16 : tensor<4xi16>
      %273 = bufferization.to_tensor %alloc_16 : memref<9x2xi16>
      %274 = vector.broadcast %c172817522_i64 : i64 to vector<2x2xi64>
      %275 = vector.outerproduct %94, %267, %274 {kind = #vector.kind<maxsi>} : vector<2xi64>, vector<2xi64>
      %cst_46 = arith.constant 0x4E0477EF : f32
      %rank = tensor.rank %5 : tensor<4x2xf32>
      %276 = index.casts %c265157077_i32 : i32 to index
      %277 = vector.insertelement %extracted, %66[%c4 : index] : vector<11xi1>
      %278 = index.add %115, %37
      scf.yield
    }
    default {
      %267 = index.ceildivu %c15, %c1
      %268 = math.log2 %6 : tensor<2xf16>
      %269 = index.add %86, %107
      %270 = arith.mulf %cst, %cst_5 : f32
      %cast_44 = tensor.cast %7 : tensor<4xi16> to tensor<?xi16>
      %alloc_45 = memref.alloc() : memref<4xi32>
      memref.tensor_store %8, %alloc_45 : memref<4xi32>
      %271 = math.expm1 %5 : tensor<4x2xf32>
      %inserted_46 = tensor.insert %extracted into %84[%c0] : tensor<2xi1>
      %272 = arith.addi %c518060233_i32, %c1268726765_i32 : i32
      %273 = affine.min affine_map<(d0, d1) -> (-(d0 + 128))>(%267, %125)
      %274 = arith.floordivsi %false, %true : i1
      %275 = arith.shrsi %c518060233_i32, %c518060233_i32 : i32
      vector.print %132 : vector<1xi32>
      %276 = vector.broadcast %c-11559_i16 : i16 to vector<i16>
      %277 = vector.transfer_write %276, %3[%273] : vector<i16>, tensor<2xi16>
      %278 = vector.transpose %82, [0] : vector<2xi1> to vector<2xi1>
      %279 = vector.create_mask %22, %22 : vector<9x2xi1>
    }
    %splat = tensor.splat %cst_4 : tensor<4x2xf32>
    %generated_29 = tensor.generate %80, %c0 {
    ^bb0(%arg1: index, %arg2: index):
      %267 = arith.shrsi %false, %34 : i1
      %268 = math.exp %4 : tensor<4xf32>
      %269 = vector.transpose %130, [0] : vector<4xf32> to vector<4xf32>
      %270 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %271 = vector.maskedload %alloc_8[%c0], %57, %270 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      tensor.yield %cst : f32
    } : tensor<?x?xf32>
    %136 = tensor.empty() : tensor<2xi32>
    %137 = math.fpowi %from_elements_26, %136 : tensor<2xf32>, tensor<2xi32>
    %138 = vector.broadcast %34 : i1 to vector<i1>
    %139 = vector.transfer_write %138, %84[%c1] : vector<i1>, tensor<2xi1>
    %140 = vector.broadcast %c32058_i16 : i16 to vector<4xi16>
    vector.transfer_write %140, %alloc_16[%115, %46] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, memref<9x2xi16>
    scf.index_switch %c15 
    case 1 {
      %267 = arith.muli %c1268726765_i32, %c1268726765_i32 : i32
      %268 = arith.xori %c518060233_i32, %c1268726765_i32 : i32
      %269 = vector.insertelement %cst_2, %35[%c11 : index] : vector<11xf32>
      %270 = bufferization.clone %alloc : memref<4xi1> to memref<4xi1>
      %271 = math.fma %cst_0, %cst_0, %cst_1 : f16
      %272 = index.maxs %125, %c10
      %273 = arith.muli %c1268726765_i32, %c518060233_i32 : i32
      %274 = math.tanh %cst_4 : f32
      %275 = math.copysign %5, %5 : tensor<4x2xf32>
      %276 = arith.negf %cst_1 : f16
      %277 = math.absf %from_elements_26 : tensor<2xf32>
      %278 = scf.while (%arg1 = %alloc_13) : (memref<2xi16>) -> memref<2xi16> {
        %283 = vector.broadcast %107 : index to vector<11xindex>
        vector.scatter %alloc_11[%c0] [%283], %66, %67 : memref<2xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
        %284 = math.round %4 : tensor<4xf32>
        %from_elements_44 = tensor.from_elements %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64, %c172817522_i64 : tensor<9x2xi64>
        %285 = index.casts %true_27 : i1 to index
        %286 = math.powf %cst_0, %cst_0 : f16
        %287 = tensor.empty(%c15) : tensor<9x?xi1>
        %288 = math.ctlz %136 : tensor<2xi32>
        %289 = vector.flat_transpose %35 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        scf.condition(%false) %arg1 : memref<2xi16>
      } do {
      ^bb0(%arg1: memref<2xi16>):
        %283 = arith.floordivsi %true, %true : i1
        %284 = index.divu %c5, %89
        %285 = arith.remui %c1212036663_i32, %c1268726765_i32 : i32
        %extracted_44 = tensor.extract %1[%c2, %c1] : tensor<4x2xf16>
        %286 = arith.maxsi %c1268726765_i32, %c1212036663_i32 : i32
        memref.store %false, %76[%c3] : memref<4xi1>
        %alloc_45 = memref.alloc() : memref<9x2xi32>
        memref.tensor_store %9, %alloc_45 : memref<9x2xi32>
        %287 = vector.broadcast %c1 : index to vector<2xindex>
        vector.scatter %alloc_16[%c1, %c0] [%287], %57, %74 : memref<9x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        memref.assume_alignment %alloc, 2 : memref<4xi1>
        %288 = arith.xori %c518060233_i32, %c1212036663_i32 : i32
        %289 = arith.ceildivsi %c1268726765_i32, %c1268726765_i32 : i32
        %290 = arith.floordivsi %extracted_23, %c13810_i16 : i16
        %291 = arith.shrui %c32058_i16, %c-11559_i16 : i16
        %292 = vector.insertelement %c518060233_i32, %33[%106 : index] : vector<11xi32>
        %293 = math.fma %21, %21, %21 : tensor<f32>
        %294 = vector.flat_transpose %140 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        scf.yield %arg1 : memref<2xi16>
      }
      %279 = arith.maxsi %c-11559_i16, %extracted_23 : i16
      %280 = index.casts %c32058_i16 : i16 to index
      %281 = math.ceil %from_elements_26 : tensor<2xf32>
      %282 = bufferization.to_memref %3 : memref<2xi16>
      scf.yield
    }
    case 2 {
      %267 = math.ipowi %3, %3 : tensor<2xi16>
      %268 = arith.remf %cst_2, %cst_4 : f32
      %alloc_44 = memref.alloc() : memref<4x2xi32>
      %269 = vector.extract_strided_slice %58 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi32> to vector<2xi32>
      %270 = arith.shrsi %extracted, %true_27 : i1
      %271 = tensor.empty() : tensor<4xi1>
      %mapped_45 = linalg.map ins(%0 : tensor<4xi1>) outs(%271 : tensor<4xi1>)
        (%in: i1) {
          %280 = vector.extract_strided_slice %57 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
          %281 = vector.transpose %123, [0] : vector<2xi64> to vector<2xi64>
          %282 = vector.shuffle %131, %35 [3, 4, 5, 9, 10, 12, 13, 14] : vector<4xf32>, vector<11xf32>
          %283 = index.add %81, %106
          %expanded_50 = tensor.expand_shape %101 [[0], [1, 2]] : tensor<4x2xi32> into tensor<4x2x1xi32>
          %284 = math.round %cst_4 : f32
          %285 = arith.shli %in, %false : i1
          %286 = vector.flat_transpose %74 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
          %287 = index.floordivs %125, %86
          %288 = index.maxs %115, %c5
          %289 = arith.floordivsi %c172817522_i64, %c172817522_i64 : i64
          %290 = arith.remui %34, %extracted : i1
          %291 = arith.addi %c518060233_i32, %c1212036663_i32 : i32
          %292 = affine.load %alloc_20[%c13] : memref<2xi1>
          memref.assume_alignment %alloc_18, 1 : memref<4xi64>
          %cst_51 = arith.constant 1.000000e+00 : f16
          %cst_52 = arith.constant 0.000000e+00 : f16
          %293 = vector.transfer_read %6[%46], %cst_52 : tensor<2xf16>, vector<f16>
          %294 = math.log %20 : tensor<f32>
          %295 = math.rsqrt %20 : tensor<f32>
          memref.assume_alignment %alloc_19, 1 : memref<4xf16>
          %296 = arith.remf %cst_1, %cst_0 : f16
          %297 = vector.reduction <add>, %132 : vector<1xi32> into i32
          %c930049265_i32 = arith.constant 930049265 : i32
          %298 = index.casts %c32058_i16 : i16 to index
          %299 = math.log1p %6 : tensor<2xf16>
          %300 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
          %c24912_i16 = arith.constant 24912 : i16
          %301 = vector.broadcast %c1212036663_i32 : i32 to vector<i32>
          %302 = vector.transfer_write %301, %9[%80, %c13] : vector<i32>, tensor<9x2xi32>
          %303 = vector.matrix_multiply %23, %130 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 4 : i32} : (vector<11xf32>, vector<4xf32>) -> vector<44xf32>
          %304 = arith.remf %cst, %cst_2 : f32
          %305 = arith.addi %c32058_i16, %extracted_23 : i16
          %306 = tensor.empty() : tensor<4x2xf32>
          %307 = arith.minui %c13810_i16, %c-11559_i16 : i16
          %true_53 = arith.constant true
          linalg.yield %true_53 : i1
        }
      %false_46 = index.bool.constant false
      %272 = math.atan2 %4, %4 : tensor<4xf32>
      %273 = affine.load %alloc_12[%c15] : memref<4xi64>
      %false_47 = arith.constant false
      %false_48 = arith.constant false
      %274 = vector.transfer_read %271[%c14], %false_48 : tensor<4xi1>, vector<i1>
      %275 = arith.remf %cst_1, %cst_3 : f16
      %cast_49 = tensor.cast %10 : tensor<4xi16> to tensor<?xi16>
      %276 = arith.remf %cst, %cst_2 : f32
      %277 = arith.muli %c32058_i16, %c-11559_i16 : i16
      %278 = affine.min affine_map<(d0) -> ((d0 ceildiv 2 - 128) * 2, -(d0 * 2 + 8) + (d0 ceildiv 2 - 128) * 2)>(%c8)
      %279 = arith.minui %c32058_i16, %c13810_i16 : i16
      scf.yield
    }
    default {
      %collapsed_44 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x2xf32> into tensor<8xf32>
      %267 = scf.while (%arg1 = %82) : (vector<2xi1>) -> vector<2xi1> {
        %281 = math.fpowi %cst_1, %c1268726765_i32 : f16, i32
        %282 = math.ipowi %14, %14 : tensor<4x2xi16>
        %283 = index.divu %115, %c5
        %284 = math.absf %cst_5 : f32
        %285 = arith.minf %cst_3, %cst_1 : f16
        %286 = affine.max affine_map<(d0, d1) -> (((d1 + d0) floordiv 2) floordiv 8)>(%c4, %283)
        %287 = tensor.empty() : tensor<2x4xi32>
        %288 = tensor.empty() : tensor<9x4xi32>
        %289 = linalg.matmul ins(%9, %287 : tensor<9x2xi32>, tensor<2x4xi32>) outs(%288 : tensor<9x4xi32>) -> tensor<9x4xi32>
        %290 = index.maxu %86, %c14
        scf.condition(%true) %82 : vector<2xi1>
      } do {
      ^bb0(%arg1: vector<2xi1>):
        %281 = memref.realloc %alloc_20 : memref<2xi1> to memref<9xi1>
        %282 = vector.shuffle %132, %58 [2] : vector<1xi32>, vector<2xi32>
        %splat_46 = tensor.splat %c172817522_i64 : tensor<4xi64>
        %283 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
        %false_47 = index.bool.constant false
        %284 = vector.insertelement %c172817522_i64, %283[%107 : index] : vector<1xi64>
        %285 = arith.cmpi ne, %c518060233_i32, %c518060233_i32 : i32
        %cst_48 = arith.constant 1.000000e+00 : f16
        %286 = vector.transfer_read %6[%c8], %cst_48 : tensor<2xf16>, vector<f16>
        affine.store %cst_0, %alloc_10[%c7, %c8] : memref<4x2xf16>
        %287 = math.cos %cst_48 : f16
        %288 = memref.load %29[%c1] : memref<2xi1>
        %false_49 = index.bool.constant false
        %c-24891_i16 = arith.constant -24891 : i16
        %289 = arith.floordivsi %c1268726765_i32, %c1268726765_i32 : i32
        %290 = tensor.empty(%22) : tensor<?xi32>
        %291 = index.maxu %37, %c6
        scf.yield %82 : vector<2xi1>
      }
      %268 = arith.floordivsi %c32058_i16, %c32058_i16 : i16
      %269 = arith.remsi %c518060233_i32, %c265157077_i32 : i32
      %270 = arith.xori %c172817522_i64, %c172817522_i64 : i64
      %271 = math.tanh %20 : tensor<f32>
      %expanded_45 = tensor.expand_shape %32 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
      %272 = index.castu %81 : index to i32
      %273 = vector.broadcast %34 : i1 to vector<i1>
      %274 = vector.transfer_write %273, %12[%80] : vector<i1>, tensor<4xi1>
      memref.assume_alignment %76, 1 : memref<4xi1>
      %275 = arith.shrsi %c518060233_i32, %c1212036663_i32 : i32
      %276 = vector.extract_strided_slice %56 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
      %277 = arith.remsi %true_27, %true : i1
      %278 = index.casts %c4 : index to i32
      %279 = math.fpowi %5, %101 : tensor<4x2xf32>, tensor<4x2xi32>
      %280 = index.add %106, %22
    }
    %141 = math.round %4 : tensor<4xf32>
    %142 = index.add %c10, %106
    %143 = math.fpowi %cst, %c265157077_i32 : f32, i32
    %144 = math.floor %1 : tensor<4x2xf16>
    %145 = math.floor %cst_1 : f16
    %146 = vector.broadcast %c3 : index to vector<11xindex>
    vector.scatter %alloc_22[%c2] [%146], %66, %23 : memref<4xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
    scf.index_switch %107 
    case 1 {
      %collapsed_44 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
      %267 = vector.broadcast %c-11559_i16 : i16 to vector<9xi16>
      %268 = vector.broadcast %extracted : i1 to vector<9xi1>
      %269 = vector.maskedload %alloc_16[%c2, %c1], %268, %267 : memref<9x2xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %270 = math.log2 %transposed : tensor<2x4xf32>
      %271 = vector.multi_reduction <or>, %67, %false [0] : vector<11xi1> to i1
      %272 = bufferization.to_memref %1 : memref<4x2xf16>
      memref.assume_alignment %alloc_18, 2 : memref<4xi64>
      %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 ceildiv 32 + d0))>(%c3, %c3, %c15, %c11)
      %274 = vector.broadcast %c518060233_i32 : i32 to vector<9x2xi32>
      %275 = vector.gather %8[%c14] [%274], %65, %274 : tensor<4xi32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi32> into vector<9x2xi32>
      %276 = vector.matrix_multiply %36, %35 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 11 : i32} : (vector<1xf32>, vector<11xf32>) -> vector<11xf32>
      %277 = math.log2 %cst_1 : f16
      %278 = bufferization.clone %alloc_22 : memref<4xf32> to memref<4xf32>
      memref.copy %alloc_12, %alloc_18 : memref<4xi64> to memref<4xi64>
      %279 = vector.splat %c32058_i16 : vector<4xi16>
      %280 = arith.floordivsi %false, %extracted : i1
      %281 = vector.maskedload %69[%c6, %c1], %82, %73 : memref<9x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%37, %273, %106, %c15)
      scf.yield
    }
    default {
      %267 = arith.mulf %cst_4, %cst_2 : f32
      %268 = math.copysign %18, %18 : tensor<2x4xf32>
      %269 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 ceildiv 32 + d0))>(%37, %142, %89, %c11)
      %270 = arith.ceildivsi %c518060233_i32, %c518060233_i32 : i32
      %271 = vector.bitcast %73 : vector<2xi16> to vector<2xi16>
      %272 = bufferization.clone %122 : memref<2xf32> to memref<2xf32>
      %273 = vector.flat_transpose %66 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
      %274 = tensor.empty(%c1) : tensor<?x2xi64>
      %275 = index.add %c4, %c2
      %276 = index.add %106, %c12
      %277 = math.copysign %21, %21 : tensor<f32>
      %278 = scf.index_switch %c6 -> f32 
      case 1 {
        %281 = affine.load %272[%c0] : memref<2xf32>
        %282 = math.exp %18 : tensor<2x4xf32>
        %283 = vector.matrix_multiply %35, %35 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %284 = arith.addi %true_27, %true_27 : i1
        %285 = tensor.empty() : tensor<2x4xi32>
        %286 = tensor.empty() : tensor<9x4xi32>
        %287 = linalg.matmul ins(%9, %285 : tensor<9x2xi32>, tensor<2x4xi32>) outs(%286 : tensor<9x4xi32>) -> tensor<9x4xi32>
        %288 = math.absf %from_elements_26 : tensor<2xf32>
        %289 = arith.andi %c172817522_i64, %c172817522_i64 : i64
        %290 = tensor.empty() : tensor<i32>
        %291 = math.fpowi %20, %290 : tensor<f32>, tensor<i32>
        %292 = math.atan2 %18, %18 : tensor<2x4xf32>
        %293 = index.add %142, %46
        %294 = math.absf %splat : tensor<4x2xf32>
        %295 = math.atan2 %281, %281 : f32
        %296 = vector.transpose %56, [0] : vector<2xi64> to vector<2xi64>
        %297 = vector.bitcast %56 : vector<2xi64> to vector<2xi64>
        %298 = math.round %cst_3 : f16
        %299 = math.ipowi %14, %14 : tensor<4x2xi16>
        scf.yield %281 : f32
      }
      case 2 {
        %281 = math.copysign %4, %4 : tensor<4xf32>
        %alloca_45 = memref.alloca() : memref<2xi16>
        %282 = math.ipowi %12, %32 : tensor<4xi1>
        %283 = affine.load %alloc_14[%c12] : memref<2xf32>
        %284 = index.add %c12, %115
        %285 = vector.create_mask %c3, %c0 : vector<9x2xi1>
        %286 = arith.ori %c1212036663_i32, %c1212036663_i32 : i32
        %287 = arith.cmpf une, %cst_0, %cst_0 : f16
        %288 = math.round %5 : tensor<4x2xf32>
        %289 = index.divs %269, %37
        %290 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %291 = vector.outerproduct %119, %119, %290 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %292 = math.tan %21 : tensor<f32>
        %293 = math.log2 %6 : tensor<2xf16>
        %294 = arith.ori %c1268726765_i32, %c1268726765_i32 : i32
        %295 = math.absi %7 : tensor<4xi16>
        %296 = math.log1p %283 : f32
        scf.yield %cst_2 : f32
      }
      case 3 {
        %281 = arith.cmpf ult, %cst_3, %cst_0 : f16
        %282 = math.cttz %7 : tensor<4xi16>
        %283 = vector.shuffle %66, %66 [1, 2, 3, 4, 7, 11, 13, 16, 19, 20] : vector<11xi1>, vector<11xi1>
        %284 = math.rsqrt %cst_5 : f32
        %285 = vector.gather %alloc_17[%22, %22] [%58], %57, %57 : memref<4x2xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %286 = arith.andi %c1212036663_i32, %c1212036663_i32 : i32
        %alloc_45 = memref.alloc() : memref<4xi16>
        memref.tensor_store %16, %alloc_45 : memref<4xi16>
        %287 = arith.floordivsi %c172817522_i64, %c172817522_i64 : i64
        %288 = math.ipowi %c1212036663_i32, %c1212036663_i32 : i32
        %289 = math.ipowi %9, %9 : tensor<9x2xi32>
        %290 = arith.shrui %34, %34 : i1
        %291 = math.log1p %cst_1 : f16
        %extracted_46 = tensor.extract %7[%c3] : tensor<4xi16>
        %292 = vector.shuffle %123, %94 [0, 1, 2] : vector<2xi64>, vector<2xi64>
        %293 = vector.insertelement %cst_4, %23[%c13 : index] : vector<11xf32>
        %294 = math.cos %cst_2 : f32
        scf.yield %cst_2 : f32
      }
      case 4 {
        memref.assume_alignment %272, 4 : memref<2xf32>
        %281 = index.maxs %37, %c5
        %cast_45 = tensor.cast %11 : tensor<2xi1> to tensor<?xi1>
        %282 = arith.mulf %cst_5, %cst_5 : f32
        %283 = math.tan %cst_4 : f32
        %284 = math.fpowi %from_elements_26, %136 : tensor<2xf32>, tensor<2xi32>
        %285 = math.expm1 %from_elements_26 : tensor<2xf32>
        memref.assume_alignment %alloc_10, 2 : memref<4x2xf16>
        %286 = math.atan %6 : tensor<2xf16>
        %from_elements_46 = tensor.from_elements %cst_0, %cst_0, %cst_3, %cst_1, %cst_3, %cst_0, %cst_0, %cst_0 : tensor<4x2xf16>
        %287 = vector.shuffle %33, %33 [0, 1, 2, 4, 5, 6, 7, 13, 14, 15, 17, 18, 19, 20] : vector<11xi32>, vector<11xi32>
        %288 = vector.extract %65[8] : vector<9x2xi1>
        %expanded_47 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
        %289 = index.sizeof
        %290 = index.ceildivu %275, %142
        %false_48 = index.bool.constant false
        scf.yield %cst_4 : f32
      }
      default {
        %281 = vector.broadcast %cst_1 : f16 to vector<4x2xf16>
        %282 = index.add %75, %c15
        %283 = vector.create_mask %80, %c5 : vector<4x2xi1>
        %284 = index.ceildivs %46, %c2
        %285 = math.fma %4, %4, %4 : tensor<4xf32>
        %286 = math.powf %4, %4 : tensor<4xf32>
        %287 = arith.addi %c518060233_i32, %c265157077_i32 : i32
        %288 = index.maxu %c10, %142
        vector.print %271 : vector<2xi16>
        %inserted_45 = tensor.insert %cst_1 into %1[%c1, %c0] : tensor<4x2xf16>
        %289 = vector.maskedload %272[%c1], %273, %23 : memref<2xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %290 = arith.remf %cst_4, %cst : f32
        %291 = vector.bitcast %132 : vector<1xi32> to vector<1xi32>
        %292 = affine.load %alloc_11[%c15] : memref<2xi1>
        %293 = index.maxu %c6, %c2
        memref.assume_alignment %alloc_21, 4 : memref<i16>
        scf.yield %cst_2 : f32
      }
      scf.if %true {
        %281 = vector.transpose %94, [0] : vector<2xi64> to vector<2xi64>
        %282 = index.ceildivs %125, %125
        %283 = math.powf %cst_1, %cst_1 : f16
        %284 = math.fma %6, %6, %6 : tensor<2xf16>
        %285 = index.maxs %86, %c15
        %cst_45 = arith.constant 1.000000e+00 : f16
        %cst_46 = arith.constant 0.000000e+00 : f16
        %286 = vector.transfer_read %alloc_19[%46], %cst_46 : memref<4xf16>, vector<f16>
        %287 = vector.shuffle %19, %35 [0, 1, 2, 3, 6, 7, 9, 15, 16] : vector<11xf32>, vector<11xf32>
        %extracted_47 = tensor.extract %10[%c1] : tensor<4xi16>
      } else {
        %281 = vector.flat_transpose %119 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %282 = affine.apply affine_map<(d0) -> (d0 floordiv 16)>(%125)
        %283 = arith.minui %c518060233_i32, %c265157077_i32 : i32
        %284 = bufferization.clone %alloc_18 : memref<4xi64> to memref<4xi64>
        %285 = math.round %1 : tensor<4x2xf16>
        %286 = math.log1p %6 : tensor<2xf16>
        %287 = math.copysign %1, %1 : tensor<4x2xf16>
        %288 = arith.cmpf ugt, %cst, %cst_4 : f32
      }
      %splat_44 = tensor.splat %cst_2 : tensor<4x2xf32>
      %279 = arith.xori %extracted, %true_27 : i1
      %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 ceildiv 32 + d0))>(%115, %c10, %37, %142)
    }
    %147 = index.maxs %c14, %c15
    %148 = math.exp2 %4 : tensor<4xf32>
    %149 = math.copysign %1, %1 : tensor<4x2xf16>
    %150 = vector.broadcast %false : i1 to vector<9xi1>
    %151 = vector.maskedload %alloc_11[%c0], %150, %150 : memref<2xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
    %cst_30 = arith.constant 1.25275418E+9 : f32
    %152 = vector.broadcast %c0 : index to vector<4xindex>
    %153 = vector.broadcast %34 : i1 to vector<4xi1>
    vector.scatter %alloc[%c3] [%152], %153, %153 : memref<4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
    %154 = arith.xori %extracted_23, %c-11559_i16 : i16
    %alloc_31 = memref.alloc() : memref<4x2xf32>
    %155 = tensor.empty() : tensor<4x4x4xi1>
    %156 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%155 : tensor<4x4x4xi1>) {
    ^bb0(%out: i1):
      %267 = affine.if affine_set<(d0, d1) : (-(d0 - (d1 + d0)) + 16 == 0, -(d0 - (d1 + d0)) >= 0, d1 mod 32 == 0)>(%c1, %c9) -> memref<4xf16> {
        %297 = index.sizeof
        %298 = arith.ceildivsi %true_27, %true_27 : i1
        %299 = vector.load %alloc_16[%c2, %c0] : memref<9x2xi16>, vector<4xi16>
        %300 = arith.ori %c1212036663_i32, %c1212036663_i32 : i32
        %301 = math.atan2 %1, %1 : tensor<4x2xf16>
        %302 = index.casts %34 : i1 to index
        %303 = vector.bitcast %57 : vector<2xi1> to vector<2xi1>
        %304 = math.log1p %1 : tensor<4x2xf16>
        affine.yield %alloc_19 : memref<4xf16>
      } else {
        %297 = index.ceildivu %c5, %c4
        %298 = bufferization.clone %54 : memref<4x2xi64> to memref<4x2xi64>
        %true_50 = index.bool.constant true
        %299 = index.sizeof
        %300 = arith.divui %c172817522_i64, %c172817522_i64 : i64
        %301 = affine.apply affine_map<(d0) -> (d0 floordiv 16)>(%80)
        %302 = vector.flat_transpose %67 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
        %303 = affine.min affine_map<(d0, d1) -> (d0 + d1)>(%299, %c0)
        affine.yield %alloc_19 : memref<4xf16>
      }
      %268 = index.casts %115 : index to i32
      %269 = arith.floordivsi %c32058_i16, %c32058_i16 : i16
      %270 = math.rsqrt %4 : tensor<4xf32>
      %collapsed_44 = tensor.collapse_shape %112 [[0, 1]] : tensor<9x4xi16> into tensor<36xi16>
      %alloca_45 = memref.alloca() : memref<4x2xi1>
      %271 = math.cos %18 : tensor<2x4xf32>
      %272 = vector.insertelement %cst, %130[%147 : index] : vector<4xf32>
      %273 = arith.floordivsi %out, %true : i1
      %alloca_46 = memref.alloca() : memref<4xf16>
      %274 = index.casts %c13810_i16 : i16 to index
      %275 = math.powf %cst_5, %cst_2 : f32
      %276 = index.maxu %c4, %274
      %277 = vector.broadcast %cst_4 : f32 to vector<9x2xf32>
      %278 = vector.fma %277, %277, %277 : vector<9x2xf32>
      %279 = index.sizeof
      %cst_47 = arith.constant 2.500000e+01 : f16
      %280 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %281 = vector.fma %280, %280, %280 : vector<2xf32>
      memref.alloca_scope  {
        %297 = vector.load %alloc_19[%c1] : memref<4xf16>, vector<9x2xf16>
        %298 = index.casts %80 : index to i32
        %299 = arith.shrsi %c265157077_i32, %c1212036663_i32 : i32
        %300 = tensor.empty() : tensor<9x2xi16>
        %301 = arith.remf %cst_1, %cst_0 : f16
        %302 = vector.shuffle %280, %23 [1, 2, 4, 5, 9, 10, 11, 12] : vector<2xf32>, vector<11xf32>
        %303 = math.exp2 %21 : tensor<f32>
        %304 = arith.xori %extracted, %true : i1
        %305 = vector.broadcast %extracted : i1 to vector<i1>
        %306 = vector.transfer_write %305, %11[%c2] : vector<i1>, tensor<2xi1>
        %307 = math.atan2 %6, %6 : tensor<2xf16>
        %308 = math.tan %cst_3 : f16
        %309 = vector.maskedload %alloc_6[%c0, %c0], %57, %280 : memref<9x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %310 = index.maxu %86, %89
        %311 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %alloc_50 = memref.alloc() : memref<f32>
        memref.tensor_store %20, %alloc_50 : memref<f32>
        %312 = index.divu %276, %276
        %313 = arith.addi %c265157077_i32, %c265157077_i32 : i32
        %false_51 = index.bool.constant false
        %314 = math.copysign %4, %4 : tensor<4xf32>
        %315 = math.copysign %1, %1 : tensor<4x2xf16>
        %false_52 = arith.constant false
        %false_53 = arith.constant false
        %316 = vector.transfer_read %0[%279], %false_53 : tensor<4xi1>, vector<i1>
        %317 = vector.extract_strided_slice %123 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
        %318 = arith.shrui %false_52, %false_52 : i1
        %319 = math.log %4 : tensor<4xf32>
        %320 = math.atan2 %splat, %5 : tensor<4x2xf32>
        %321 = arith.addi %false_52, %true_27 : i1
        %322 = math.copysign %cst, %cst : f32
        %323 = math.log1p %cst_4 : f32
        %324 = arith.divui %34, %false : i1
        %325 = vector.matrix_multiply %281, %311 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %326 = vector.extract %36[0] : vector<1xf32>
        %327 = index.maxs %c13, %c14
      }
      %splat_48 = tensor.splat %cst_1 : tensor<9x2xf16>
      %282 = index.divs %c0, %80
      %283 = bufferization.clone %alloc_18 : memref<4xi64> to memref<4xi64>
      %284 = affine.min affine_map<(d0, d1, d2) -> (d2, d0, d2)>(%276, %c1, %c10)
      %285 = index.sub %22, %86
      %286 = math.sqrt %splat : tensor<4x2xf32>
      %287 = vector.broadcast %34 : i1 to vector<9x9xi1>
      %288 = vector.outerproduct %151, %150, %287 {kind = #vector.kind<minui>} : vector<9xi1>, vector<9xi1>
      %289 = affine.min affine_map<(d0, d1) -> (0, d0 * -3)>(%37, %284)
      %290 = affine.load %alloc_11[%c5] : memref<2xi1>
      %alloc_49 = memref.alloc() : memref<9x2xi64>
      %291 = vector.broadcast %c172817522_i64 : i64 to vector<9x2xi64>
      %292 = vector.broadcast %c265157077_i32 : i32 to vector<9x2xi32>
      %293 = vector.gather %alloc_49[%284, %c15] [%292], %65, %291 : memref<9x2xi64>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi64> into vector<9x2xi64>
      %294 = bufferization.clone %54 : memref<4x2xi64> to memref<4x2xi64>
      memref.alloca_scope  {
        %297 = arith.maxf %cst_0, %cst_1 : f16
        memref.assume_alignment %alloc, 16 : memref<4xi1>
        %298 = arith.xori %true, %false : i1
        %299 = arith.cmpi ugt, %true_27, %extracted : i1
        memref.assume_alignment %alloc_12, 16 : memref<4xi64>
        %300 = arith.andi %true_27, %out : i1
        %301 = affine.min affine_map<(d0, d1) -> (d0 - d1, d0 - d1)>(%147, %284)
        %302 = math.tanh %cst : f32
        %303 = math.copysign %cst_1, %cst_0 : f16
        %304 = affine.min affine_map<(d0) -> (d0 * 64, d0 * 1024, d0 * -64)>(%c2)
        %extracted_50 = tensor.extract %55[%c0] : tensor<4xi64>
        %305 = vector.shuffle %123, %56 [0, 1] : vector<2xi64>, vector<2xi64>
        %306 = arith.mulf %cst_1, %cst_0 : f16
        %307 = arith.remui %extracted, %true : i1
        %308 = index.ceildivs %c4, %147
        %309 = index.divu %282, %c9
        %310 = math.floor %cst_0 : f16
        %311 = memref.realloc %alloc_14 : memref<2xf32> to memref<9xf32>
        %312 = arith.maxf %cst_0, %cst_3 : f16
        %313 = math.sqrt %cst_3 : f16
        %from_elements_51 = tensor.from_elements %c172817522_i64, %c172817522_i64, %c172817522_i64, %extracted_50 : tensor<4xi64>
        %314 = vector.maskedload %76[%c1], %151, %151 : memref<4xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %315 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %expanded_52 = tensor.expand_shape %16 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %alloca_53 = memref.alloca() : memref<2xi16>
        %316 = index.castu %true_27 : i1 to index
        %317 = arith.cmpf ueq, %cst, %cst_2 : f32
        %318 = arith.addi %extracted_23, %c13810_i16 : i16
        %319 = math.absf %1 : tensor<4x2xf16>
        %320 = math.ceil %cst_2 : f32
        %321 = bufferization.to_memref %from_elements_51 : memref<4xi64>
        vector.print %33 : vector<11xi32>
      }
      %295 = math.fma %6, %6, %6 : tensor<2xf16>
      %296 = arith.remui %34, %false : i1
      linalg.yield %extracted : i1
    } -> tensor<4x4x4xi1>
    %157 = memref.alloca_scope  -> (i64) {
      %267 = index.ceildivs %c6, %c13
      %268 = vector.shuffle %74, %73 [1, 3] : vector<2xi16>, vector<2xi16>
      %269 = affine.load %122[%c0] : memref<2xf32>
      %270 = arith.minui %true, %true : i1
      %271 = index.add %c10, %75
      %272 = math.copysign %1, %1 : tensor<4x2xf16>
      %273 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %274 = vector.gather %122[%c0] [%58], %82, %273 : memref<2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %275 = arith.divui %c13810_i16, %extracted_23 : i16
      %276 = vector.transpose %35, [0] : vector<11xf32> to vector<11xf32>
      %277 = vector.create_mask %c14, %c2 : vector<9x2xi1>
      %278 = memref.load %alloc_11[%c1] : memref<2xi1>
      %279 = tensor.empty() : tensor<9x2xi1>
      %280 = arith.maxsi %c265157077_i32, %c265157077_i32 : i32
      %281 = vector.extract %131[0] : vector<4xf32>
      %282 = vector.reduction <and>, %150 : vector<9xi1> into i1
      %283 = vector.matrix_multiply %67, %57 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 2 : i32} : (vector<11xi1>, vector<2xi1>) -> vector<22xi1>
      %284 = index.maxs %267, %c13
      %285 = index.sizeof
      %extracted_44 = tensor.extract %from_elements[%c0] : tensor<4xi1>
      %286 = scf.while (%arg1 = %true_27) : (i1) -> i1 {
        %300 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2)>(%89, %86, %75, %75)
        %301 = vector.splat %37 : vector<4x2xindex>
        %alloc_47 = memref.alloc() : memref<4xi16>
        memref.tensor_store %16, %alloc_47 : memref<4xi16>
        affine.store %cst_0, %alloc_10[%c2, %c3] : memref<4x2xf16>
        %302 = tensor.empty() : tensor<9x2xf32>
        %303 = index.maxs %c12, %89
        %splat_48 = tensor.splat %c32058_i16 : tensor<4xi16>
        %304 = arith.ceildivsi %c-11559_i16, %c13810_i16 : i16
        scf.condition(%true_27) %extracted : i1
      } do {
      ^bb0(%arg1: i1):
        %300 = vector.broadcast %269 : f32 to vector<4x2xf32>
        %301 = vector.fma %300, %300, %300 : vector<4x2xf32>
        %302 = vector.transpose %277, [1, 0] : vector<9x2xi1> to vector<2x9xi1>
        %303 = vector.create_mask %75 : vector<4xi1>
        vector.print %150 : vector<9xi1>
        %304 = arith.mulf %cst_3, %cst_0 : f16
        %305 = vector.create_mask %80 : vector<2xi1>
        %306 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
        %307 = memref.realloc %alloc_12 : memref<4xi64> to memref<9xi64>
        %308 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
        %309 = vector.broadcast %c265157077_i32 : i32 to vector<4xi32>
        %310 = vector.gather %54[%284, %37] [%309], %303, %308 : memref<4x2xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %311 = arith.cmpi sge, %true, %extracted_44 : i1
        %312 = tensor.empty() : tensor<4xi1>
        %313 = vector.extract_strided_slice %82 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
        memref.copy %alloc, %76 : memref<4xi1> to memref<4xi1>
        %314 = arith.negf %cst_0 : f16
        memref.assume_alignment %alloc_13, 8 : memref<2xi16>
        %315 = math.round %cst_3 : f16
        scf.yield %true : i1
      }
      %287 = arith.floordivsi %c1212036663_i32, %c265157077_i32 : i32
      %288 = vector.bitcast %273 : vector<2xf32> to vector<2xf32>
      %289 = arith.maxf %cst_0, %cst_3 : f16
      %290 = math.cos %cst : f32
      %291 = vector.transpose %56, [0] : vector<2xi64> to vector<2xi64>
      %alloc_45 = memref.alloc() : memref<2x4xi32>
      %292 = tensor.empty() : tensor<4x4xi32>
      %293 = linalg.matmul ins(%101, %alloc_45 : tensor<4x2xi32>, memref<2x4xi32>) outs(%292 : tensor<4x4xi32>) -> tensor<4x4xi32>
      %294 = tensor.empty() : tensor<4xf32>
      %295 = arith.ori %extracted_23, %c32058_i16 : i16
      %296 = vector.shuffle %138, %138 [0, 1] : vector<i1>, vector<i1>
      %297 = tensor.empty() : tensor<i32>
      %298 = math.fpowi %20, %297 : tensor<f32>, tensor<i32>
      %299 = scf.while (%arg1 = %cst_4) : (f32) -> f32 {
        %300 = math.log1p %from_elements_26 : tensor<2xf32>
        %301 = vector.flat_transpose %123 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %inserted_47 = tensor.insert %c-11559_i16 into %14[%c2, %c0] : tensor<4x2xi16>
        %302 = vector.flat_transpose %132 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %303 = index.castu %c32058_i16 : i16 to index
        %304 = math.exp2 %1 : tensor<4x2xf16>
        %305 = arith.maxsi %c172817522_i64, %c172817522_i64 : i64
        %306 = math.floor %21 : tensor<f32>
        scf.condition(%extracted) %cst_2 : f32
      } do {
      ^bb0(%arg1: f32):
        %300 = math.ceil %1 : tensor<4x2xf16>
        %301 = index.maxu %c14, %c15
        %302 = math.ipowi %15, %15 : tensor<2xi64>
        %303 = math.cos %20 : tensor<f32>
        %304 = math.log2 %269 : f32
        %305 = memref.load %76[%c0] : memref<4xi1>
        %306 = math.exp %21 : tensor<f32>
        %false_47 = index.bool.constant false
        %307 = vector.broadcast %c10 : index to vector<2xindex>
        vector.scatter %alloc_14[%c1] [%307], %82, %288 : memref<2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %308 = arith.floordivsi %c518060233_i32, %c1212036663_i32 : i32
        %309 = arith.floordivsi %false_47, %true_27 : i1
        %310 = vector.extract_strided_slice %73 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi16> to vector<2xi16>
        %311 = vector.extract_strided_slice %283 {offsets = [7], sizes = [7], strides = [1]} : vector<22xi1> to vector<7xi1>
        %312 = vector.broadcast %c-11559_i16 : i16 to vector<4xi16>
        vector.transfer_write %312, %alloc_16[%106, %81] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, memref<9x2xi16>
        %313 = math.atan2 %transposed, %18 : tensor<2x4xf32>
        %314 = math.log1p %4 : tensor<4xf32>
        scf.yield %cst_5 : f32
      }
      %alloca_46 = memref.alloca() : memref<2xi64>
      memref.alloca_scope.return %c172817522_i64 : i64
    }
    %158 = memref.load %alloc_9[%c8, %c1] : memref<9x2xf16>
    %159 = tensor.empty() : tensor<4xi1>
    %mapped = linalg.map ins(%12, %from_elements, %76 : tensor<4xi1>, tensor<4xi1>, memref<4xi1>) outs(%159 : tensor<4xi1>)
      (%in: i1, %in_44: i1, %in_45: i1) {
        %267 = vector.reduction <maxsi>, %74 : vector<2xi16> into i16
        %268 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
        %269 = vector.extract_strided_slice %33 {offsets = [5], sizes = [5], strides = [1]} : vector<11xi32> to vector<5xi32>
        %270 = math.log2 %from_elements_26 : tensor<2xf32>
        %271 = math.atan2 %cst_5, %cst : f32
        %splat_46 = tensor.splat %c13810_i16 : tensor<4x2xi16>
        %272 = math.ctlz %14 : tensor<4x2xi16>
        %273 = math.ceil %5 : tensor<4x2xf32>
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0 floordiv 2 + (d1 floordiv 16) ceildiv 8 - 64, d0 floordiv 2 + (d1 floordiv 16) ceildiv 8 - 64)>(%81, %107, %c4)
        %275 = index.maxu %115, %107
        %276 = arith.addf %cst, %cst_4 : f32
        %277 = math.floor %cst_5 : f32
        %278 = vector.extract %59[1] : vector<2xi64>
        %279 = arith.shrsi %true_27, %in_45 : i1
        %280 = arith.remui %c1212036663_i32, %c1268726765_i32 : i32
        %281 = scf.while (%arg1 = %true) : (i1) -> i1 {
          %299 = vector.extract_strided_slice %57 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
          %300 = math.log2 %cst : f32
          %301 = arith.floordivsi %arg1, %true : i1
          %302 = math.powf %cst_4, %cst_2 : f32
          %303 = arith.ori %false, %true : i1
          %304 = math.expm1 %20 : tensor<f32>
          %true_48 = arith.constant true
          %305 = vector.transfer_read %12[%107], %true_48 : tensor<4xi1>, vector<i1>
          %306 = affine.max affine_map<(d0) -> ((d0 mod 32) * -32 + (d0 mod 32) * -32 - 192 - 128)>(%c15)
          scf.condition(%in_44) %in : i1
        } do {
        ^bb0(%arg1: i1):
          %alloca_48 = memref.alloca() : memref<4xi1>
          %299 = vector.matrix_multiply %132, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi32>, vector<2xi32>) -> vector<2xi32>
          %300 = index.sub %86, %80
          %301 = math.cttz %34 : i1
          %302 = affine.min affine_map<(d0, d1) -> (d0, d1 - (d1 + 128))>(%c1, %86)
          %303 = vector.reduction <and>, %59 : vector<2xi64> into i64
          %304 = math.log10 %cst_1 : f16
          %305 = vector.broadcast %cst_2 : f32 to vector<2xf32>
          %306 = vector.fma %305, %305, %305 : vector<2xf32>
          %307 = affine.load %alloc_15[%c3] : memref<2xi64>
          %308 = math.log2 %cst_3 : f16
          %309 = math.copysign %6, %6 : tensor<2xf16>
          %310 = arith.shrsi %extracted_23, %c13810_i16 : i16
          %311 = vector.broadcast %in_44 : i1 to vector<11xi1>
          vector.transfer_write %311, %alloc_17[%302, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi1>, memref<4x2xi1>
          %312 = index.maxu %37, %46
          %313 = math.tanh %cst_3 : f16
          %314 = math.atan2 %cst_3, %cst_0 : f16
          scf.yield %arg1 : i1
        }
        %282 = vector.reduction <maxf>, %119 : vector<1xf32> into f32
        %283 = vector.reduction <and>, %73 : vector<2xi16> into i16
        %284 = vector.broadcast %true_27 : i1 to vector<i1>
        %285 = vector.transfer_write %284, %12[%c14] : vector<i1>, tensor<4xi1>
        %286 = index.sizeof
        %287 = scf.if %34 -> (memref<4x2xi16>) {
          %299 = vector.extract_strided_slice %131 {offsets = [0], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
          %300 = vector.broadcast %c-11559_i16 : i16 to vector<11xi16>
          %301 = vector.maskedload %alloc_13[%c0], %66, %300 : memref<2xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
          %302 = arith.cmpi slt, %true_27, %in : i1
          %303 = vector.maskedload %69[%c4, %c0], %57, %73 : memref<9x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
          %alloc_48 = memref.alloc() : memref<4x2xi16>
          memref.tensor_store %14, %alloc_48 : memref<4x2xi16>
          %from_elements_49 = tensor.from_elements %cst_0, %cst_3, %cst_3, %cst_0 : tensor<4xf16>
          %304 = arith.ori %c265157077_i32, %c265157077_i32 : i32
          %305 = vector.broadcast %c-11559_i16 : i16 to vector<11x11xi16>
          %306 = vector.outerproduct %300, %301, %305 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
          %alloc_50 = memref.alloc() : memref<4x2xi16>
          scf.yield %alloc_50 : memref<4x2xi16>
        } else {
          %299 = math.round %4 : tensor<4xf32>
          %300 = arith.ceildivsi %c-11559_i16, %c-11559_i16 : i16
          %301 = math.log1p %cst_4 : f32
          %302 = math.round %1 : tensor<4x2xf16>
          %303 = vector.create_mask %81, %106 : vector<4x2xi1>
          %collapsed_48 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
          %inserted_49 = tensor.insert %in into %84[%c1] : tensor<2xi1>
          %304 = vector.extract_strided_slice %65 {offsets = [4], sizes = [4], strides = [1]} : vector<9x2xi1> to vector<4x2xi1>
          %alloc_50 = memref.alloc() : memref<4x2xi16>
          scf.yield %alloc_50 : memref<4x2xi16>
        }
        %288 = vector.reduction <add>, %58 : vector<2xi32> into i32
        %289 = math.copysign %5, %splat : tensor<4x2xf32>
        %290 = index.casts %c32058_i16 : i16 to index
        %291 = math.ctlz %7 : tensor<4xi16>
        %292 = vector.transpose %138, [] : vector<i1> to vector<i1>
        %293 = tensor.empty() : tensor<4x4x4xi1>
        %294 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%293, %12, %293 : tensor<4x4x4xi1>, tensor<4xi1>, tensor<4x4x4xi1>) outs(%293 : tensor<4x4x4xi1>) {
        ^bb0(%in_48: i1, %in_49: i1, %in_50: i1, %out: i1):
          %299 = memref.realloc %alloc_13 : memref<2xi16> to memref<11xi16>
          memref.tensor_store %15, %alloc_15 : memref<2xi64>
          %true_51 = index.bool.constant true
          %300 = arith.floordivsi %157, %c172817522_i64 : i64
          %301 = arith.maxsi %c265157077_i32, %c265157077_i32 : i32
          %302 = math.tanh %4 : tensor<4xf32>
          %303 = arith.shli %in_44, %true_51 : i1
          %304 = index.casts %c5 : index to i32
          %true_52 = index.bool.constant true
          memref.assume_alignment %122, 2 : memref<2xf32>
          %305 = vector.matrix_multiply %35, %119 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<1xf32>) -> vector<11xf32>
          memref.copy %alloc_20, %29 : memref<2xi1> to memref<2xi1>
          %306 = math.log2 %cst_2 : f32
          %from_elements_53 = tensor.from_elements %cst_4, %cst : tensor<2xf32>
          %307 = arith.remf %cst, %cst_2 : f32
          %308 = arith.shrsi %true_27, %in : i1
          %309 = vector.flat_transpose %94 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
          %310 = tensor.empty() : tensor<2x9xi32>
          %311 = tensor.empty() : tensor<9x9xi32>
          %312 = linalg.matmul ins(%9, %310 : tensor<9x2xi32>, tensor<2x9xi32>) outs(%311 : tensor<9x9xi32>) -> tensor<9x9xi32>
          %313 = vector.broadcast %cst_5 : f32 to vector<4x2xf32>
          %314 = vector.fma %313, %313, %313 : vector<4x2xf32>
          %315 = vector.broadcast %34 : i1 to vector<2xi1>
          %316 = arith.floordivsi %in_50, %in_45 : i1
          %317 = index.castu %c32058_i16 : i16 to index
          %318 = vector.multi_reduction <mul>, %19, %35 [] : vector<11xf32> to vector<11xf32>
          %319 = affine.min affine_map<(d0, d1) -> (d1 * 8)>(%c12, %c1)
          %320 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d3 + 32))>(%106, %c4, %37, %c2)
          %321 = arith.shrsi %true, %true_27 : i1
          %false_54 = index.bool.constant false
          %322 = math.cttz %c518060233_i32 : i32
          %323 = index.maxs %125, %86
          %324 = arith.ceildivsi %in_48, %in_48 : i1
          %inserted_55 = tensor.insert %c265157077_i32 into %9[%c4, %c0] : tensor<9x2xi32>
          %325 = arith.remsi %c265157077_i32, %c518060233_i32 : i32
          linalg.yield %false : i1
        } -> tensor<4x4x4xi1>
        %295 = affine.apply affine_map<(d0) -> (d0 floordiv 16)>(%c13)
        %296 = arith.addi %false, %false : i1
        %297 = vector.extract %151[8] : vector<9xi1>
        %298 = arith.addi %c265157077_i32, %c1212036663_i32 : i32
        memref.assume_alignment %alloc_9, 1 : memref<9x2xf16>
        %false_47 = arith.constant false
        linalg.yield %false_47 : i1
      }
    %160 = arith.cmpi sge, %c1268726765_i32, %c518060233_i32 : i32
    %161 = arith.cmpf uge, %cst_0, %cst_3 : f16
    %162 = vector.extract_strided_slice %58 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi32> to vector<1xi32>
    %163 = scf.index_switch %142 -> vector<4xi64> 
    case 1 {
      %267 = arith.addi %c-11559_i16, %extracted_23 : i16
      %268 = arith.remui %false, %34 : i1
      %269 = math.cttz %c1268726765_i32 : i32
      %270 = math.fpowi %6, %136 : tensor<2xf16>, tensor<2xi32>
      %271 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %272 = vector.outerproduct %36, %36, %271 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      %273 = math.log10 %cst_5 : f32
      %from_elements_44 = tensor.from_elements %extracted, %true_27, %true, %true_27, %extracted, %extracted, %true, %false : tensor<4x2xi1>
      %274 = math.fma %6, %6, %6 : tensor<2xf16>
      %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d3, ((d1 - d2) * 32) floordiv 64, d1 * 2 - 64)>(%c9, %86, %147, %64)
      %extracted_45 = tensor.extract %0[%c3] : tensor<4xi1>
      %splat_46 = tensor.splat %false : tensor<2xi1>
      %276 = arith.minsi %extracted_45, %false : i1
      %277 = math.ipowi %extracted_45, %extracted_45 : i1
      scf.if %true {
        %280 = math.log1p %6 : tensor<2xf16>
        affine.store %cst_0, %alloc_9[%c7, %c7] : memref<9x2xf16>
        %281 = math.ipowi %0, %12 : tensor<4xi1>
        %282 = vector.create_mask %37, %22 : vector<9x2xi1>
        %283 = arith.remui %c172817522_i64, %c172817522_i64 : i64
        %284 = math.powf %1, %1 : tensor<4x2xf16>
        memref.assume_alignment %alloc_12, 2 : memref<4xi64>
        %285 = arith.remf %cst_5, %cst_2 : f32
      } else {
        %expanded_47 = tensor.expand_shape %4 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        %280 = math.fma %6, %6, %6 : tensor<2xf16>
        %281 = math.log1p %cst_2 : f32
        %282 = vector.broadcast %157 : i64 to vector<4xi64>
        %283 = vector.broadcast %extracted_45 : i1 to vector<9x9xi1>
        %284 = vector.outerproduct %151, %151, %283 {kind = #vector.kind<maxui>} : vector<9xi1>, vector<9xi1>
        %285 = arith.andi %c13810_i16, %c32058_i16 : i16
        %cst_48 = arith.constant 1.70197619E+9 : f32
        memref.assume_alignment %alloc_21, 2 : memref<i16>
      }
      %278 = memref.realloc %alloc_18 : memref<4xi64> to memref<11xi64>
      %dest, %accumulated_value = vector.scan <maxsi>, %91, %59 {inclusive = true, reduction_dim = 0 : i64} : vector<4x2xi64>, vector<2xi64>
      %279 = vector.broadcast %157 : i64 to vector<4xi64>
      scf.yield %279 : vector<4xi64>
    }
    default {
      %267 = math.atan2 %transposed, %transposed : tensor<2x4xf32>
      memref.tensor_store %2, %alloc_20 : memref<2xi1>
      %268 = vector.extract_strided_slice %59 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
      %c-12526_i16 = arith.constant -12526 : i16
      %269 = vector.broadcast %cst : f32 to vector<11x11xf32>
      %270 = vector.outerproduct %19, %23, %269 {kind = #vector.kind<mul>} : vector<11xf32>, vector<11xf32>
      %271 = vector.broadcast %cst_3 : f16 to vector<9x2xf16>
      %272 = math.log10 %5 : tensor<4x2xf32>
      %splat_44 = tensor.splat %c265157077_i32 : tensor<9x2xi32>
      %273 = vector.flat_transpose %131 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %274 = index.divs %c14, %c10
      %275 = math.rsqrt %4 : tensor<4xf32>
      %276 = tensor.empty() : tensor<9x2xf16>
      %mapped_45 = linalg.map ins(%alloc_9, %alloc_9 : memref<9x2xf16>, memref<9x2xf16>) outs(%276 : tensor<9x2xf16>)
        (%in: f16, %in_46: f16) {
          %281 = arith.addi %c13810_i16, %c13810_i16 : i16
          %282 = arith.xori %c13810_i16, %extracted_23 : i16
          %283 = arith.maxsi %extracted, %extracted : i1
          memref.tensor_store %32, %alloc : memref<4xi1>
          %284 = index.maxs %c8, %c7
          %285 = index.maxs %80, %c12
          %splat_47 = tensor.splat %false : tensor<2xi1>
          %286 = bufferization.to_memref %cast : memref<?x?xf16>
          %287 = vector.shuffle %99, %99 [0, 1] : vector<f32>, vector<f32>
          %288 = math.floor %transposed : tensor<2x4xf32>
          %289 = arith.minui %c518060233_i32, %c1268726765_i32 : i32
          %290 = arith.addi %extracted_23, %c13810_i16 : i16
          %291 = arith.shrsi %extracted, %false : i1
          %292 = arith.ori %c172817522_i64, %c172817522_i64 : i64
          %293 = math.log2 %in : f16
          %294 = arith.mulf %cst_5, %cst_4 : f32
          %295 = math.exp2 %1 : tensor<4x2xf16>
          %296 = math.round %transposed : tensor<2x4xf32>
          %297 = arith.subi %c265157077_i32, %c518060233_i32 : i32
          %298 = math.floor %18 : tensor<2x4xf32>
          %299 = math.tanh %5 : tensor<4x2xf32>
          %300 = math.absf %in_46 : f16
          %301 = vector.extract %123[0] : vector<2xi64>
          %302 = vector.flat_transpose %57 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
          %303 = arith.minui %c13810_i16, %c32058_i16 : i16
          %304 = vector.insert %cst, %36 [0] : f32 into vector<1xf32>
          %true_48 = index.bool.constant true
          %from_elements_49 = tensor.from_elements %true_27, %true : tensor<2xi1>
          %305 = arith.remui %extracted_23, %c32058_i16 : i16
          %alloc_50 = memref.alloc() : memref<9x2xi16>
          %306 = vector.extract_strided_slice %36 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %307 = math.powf %6, %6 : tensor<2xf16>
          %cst_51 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_51 : f16
        }
      %277 = math.log2 %21 : tensor<f32>
      memref.alloca_scope  {
        %281 = math.round %from_elements_26 : tensor<2xf32>
        %282 = math.ceil %18 : tensor<2x4xf32>
        %283 = vector.flat_transpose %23 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %284 = arith.divf %cst_4, %cst_2 : f32
        %285 = math.rsqrt %cst_4 : f32
        %286 = math.cos %cst_5 : f32
        %287 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 32)>(%c6, %c6, %147)
        %288 = arith.floordivsi %c518060233_i32, %c518060233_i32 : i32
        %extracted_46 = tensor.extract %from_elements_28[%c0] : tensor<2xi16>
        %289 = math.tanh %4 : tensor<4xf32>
        memref.tensor_store %15, %alloc_15 : memref<2xi64>
        %290 = vector.broadcast %true_27 : i1 to vector<4x2xi1>
        %291 = arith.minf %cst_5, %cst_5 : f32
        %292 = math.log2 %cst_4 : f32
        %293 = math.atan2 %cst_4, %cst_4 : f32
        %294 = math.cos %cst_5 : f32
        %295 = vector.broadcast %157 : i64 to vector<11xi64>
        %296 = vector.maskedload %alloc_15[%c0], %67, %295 : memref<2xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %297 = affine.max affine_map<(d0) -> ((-d0 - 1) mod 8)>(%c1)
        %298 = vector.broadcast %142 : index to vector<2xindex>
        %299 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        vector.scatter %alloc_6[%c3, %c0] [%298], %82, %299 : memref<9x2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %300 = vector.broadcast %cst : f32 to vector<9x2xf32>
        %301 = vector.fma %300, %300, %300 : vector<9x2xf32>
        %302 = bufferization.to_tensor %alloc_13 : memref<2xi16>
        %303 = arith.divf %cst, %cst_5 : f32
        %304 = arith.cmpf ule, %cst_1, %cst_3 : f16
        memref.copy %alloc, %76 : memref<4xi1> to memref<4xi1>
        %305 = affine.load %alloc_13[%c7] : memref<2xi16>
        %306 = index.sizeof
        %307 = tensor.empty() : tensor<2x9xi16>
        %308 = tensor.empty() : tensor<9x9xi16>
        %309 = linalg.matmul ins(%13, %307 : tensor<9x2xi16>, tensor<2x9xi16>) outs(%308 : tensor<9x9xi16>) -> tensor<9x9xi16>
        %310 = tensor.empty() : tensor<9x2xi1>
        %311 = vector.broadcast %true : i1 to vector<4xi1>
        %312 = vector.broadcast %c265157077_i32 : i32 to vector<4xi32>
        %313 = vector.gather %310[%c8, %c3] [%312], %311, %311 : tensor<9x2xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %314 = arith.negf %cst_3 : f16
        %315 = math.rsqrt %18 : tensor<2x4xf32>
        %316 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 + 10) floordiv 32, d1 ceildiv 128)>(%287, %142, %c2, %106)
        %317 = math.ipowi %310, %310 : tensor<9x2xi1>
      }
      %278 = arith.andi %c172817522_i64, %157 : i64
      %279 = arith.remui %34, %true : i1
      %280 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
      scf.yield %280 : vector<4xi64>
    }
    %164 = vector.reduction <mul>, %132 : vector<1xi32> into i32
    %165 = scf.while (%arg1 = %true_27) : (i1) -> i1 {
      %267 = index.casts %81 : index to i32
      %268 = vector.multi_reduction <mul>, %23, %cst_4 [0] : vector<11xf32> to f32
      %269 = arith.negf %cst_2 : f32
      scf.index_switch %86 
      case 1 {
        %273 = vector.create_mask %46 : vector<2xi1>
        %274 = arith.maxsi %extracted_23, %c-11559_i16 : i16
        %275 = arith.remf %cst_1, %cst_0 : f16
        %276 = vector.broadcast %c8 : index to vector<9xindex>
        %277 = vector.broadcast %cst_3 : f16 to vector<9xf16>
        vector.scatter %alloc_19[%c1] [%276], %150, %277 : memref<4xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        memref.assume_alignment %alloc_21, 2 : memref<i16>
        %278 = math.tanh %transposed : tensor<2x4xf32>
        %279 = arith.ceildivsi %c518060233_i32, %c1268726765_i32 : i32
        %280 = math.log2 %from_elements_26 : tensor<2xf32>
        %281 = arith.remui %c518060233_i32, %c265157077_i32 : i32
        %282 = vector.shuffle %65, %65 [1, 2, 3, 5, 8, 9, 10, 11, 13, 14] : vector<9x2xi1>, vector<9x2xi1>
        %true_45 = index.bool.constant true
        %283 = arith.floordivsi %c32058_i16, %c-11559_i16 : i16
        %inserted_46 = tensor.insert %c1268726765_i32 into %8[%c2] : tensor<4xi32>
        %284 = arith.maxf %cst_5, %cst_2 : f32
        %alloca_47 = memref.alloca() : memref<4x2xf32>
        %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d3 + 32))>(%c9, %125, %c0, %22)
        scf.yield
      }
      case 2 {
        %273 = affine.load %alloc_8[%c14] : memref<2xf32>
        %274 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
        %dest, %accumulated_value = vector.scan <and>, %91, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2xi64>, vector<4xi64>
        %275 = index.maxs %c15, %c10
        %276 = affine.max affine_map<(d0, d1) -> (d0 * -8, d0 * 2, d0 * 2)>(%37, %125)
        %277 = arith.ceildivsi %c1212036663_i32, %c1268726765_i32 : i32
        %278 = math.rsqrt %cst_2 : f32
        %279 = math.floor %transposed : tensor<2x4xf32>
        %280 = vector.extract_strided_slice %131 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %281 = vector.matrix_multiply %150, %67 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 11 : i32} : (vector<9xi1>, vector<11xi1>) -> vector<99xi1>
        %282 = math.ipowi %0, %159 : tensor<4xi1>
        %splat_45 = tensor.splat %cst_3 : tensor<4x2xf16>
        bufferization.dealloc_tensor %8 : tensor<4xi32>
        %283 = vector.broadcast %c32058_i16 : i16 to vector<2xi16>
        vector.transfer_write %283, %alloc_16[%c15, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi16>, memref<9x2xi16>
        %284 = arith.ceildivsi %true_27, %extracted : i1
        %285 = arith.maxsi %157, %157 : i64
        %286 = index.maxs %81, %c13
        scf.yield
      }
      default {
        %273 = math.tanh %cst_0 : f16
        %274 = math.round %5 : tensor<4x2xf32>
        %splat_45 = tensor.splat %extracted_23 : tensor<4xi16>
        %275 = math.log2 %268 : f32
        %276 = math.floor %268 : f32
        %277 = vector.broadcast %106 : index to vector<9xindex>
        %278 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        vector.scatter %alloc_9[%c6, %c1] [%277], %151, %278 : memref<9x2xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %279 = vector.broadcast %cst : f32 to vector<4xf32>
        %280 = vector.fma %279, %131, %130 : vector<4xf32>
        %281 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        %282 = vector.fma %281, %130, %130 : vector<4xf32>
        %283 = math.ipowi %16, %7 : tensor<4xi16>
        %284 = arith.mulf %cst_4, %cst_2 : f32
        %285 = math.atan2 %4, %4 : tensor<4xf32>
        %286 = index.divs %75, %37
        %287 = math.log %cst_0 : f16
        %true_46 = arith.constant true
        %288 = vector.transfer_read %11[%c6], %true_46 : tensor<2xi1>, vector<i1>
        %289 = index.sizeof
        %290 = index.maxs %c9, %c5
      }
      %true_44 = index.bool.constant true
      %270 = math.ceil %cst_3 : f16
      %271 = arith.mulf %cst_1, %cst_1 : f16
      %272 = vector.insertelement %cst, %23[%c12 : index] : vector<11xf32>
      scf.condition(%false) %true : i1
    } do {
    ^bb0(%arg1: i1):
      %267 = vector.multi_reduction <add>, %150, %true [0] : vector<9xi1> to i1
      %268 = vector.shuffle %67, %150 [2, 4, 5, 6, 7, 10, 11, 14, 15, 17] : vector<11xi1>, vector<9xi1>
      %269 = vector.flat_transpose %73 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %270 = vector.transpose %138, [] : vector<i1> to vector<i1>
      %271 = math.absf %1 : tensor<4x2xf16>
      %272 = index.sub %c3, %115
      %273 = index.maxu %c6, %107
      %274 = arith.remui %false, %true : i1
      %generated_44 = tensor.generate %c13, %107 {
      ^bb0(%arg2: index, %arg3: index):
        %280 = arith.mulf %cst_3, %cst_3 : f16
        %281 = math.exp2 %1 : tensor<4x2xf16>
        %282 = arith.remui %arg1, %true : i1
        %283 = math.fma %cst_2, %cst_4, %cst_2 : f32
        tensor.yield %c-11559_i16 : i16
      } : tensor<?x?xi16>
      %275 = index.casts %false : i1 to index
      %276 = vector.shuffle %67, %67 [2, 4, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19] : vector<11xi1>, vector<11xi1>
      %extracted_45 = tensor.extract %6[%c1] : tensor<2xf16>
      %277 = arith.maxsi %extracted_23, %c13810_i16 : i16
      %278 = arith.maxsi %true, %34 : i1
      %generated_46 = tensor.generate %c14 {
      ^bb0(%arg2: index):
        %false_47 = index.bool.constant false
        %280 = memref.realloc %alloc_8 : memref<2xf32> to memref<11xf32>
        %281 = math.log2 %from_elements_26 : tensor<2xf32>
        %282 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
        %283 = vector.outerproduct %36, %36, %282 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        tensor.yield %cst_2 : f32
      } : tensor<?xf32>
      %279 = math.log2 %transposed : tensor<2x4xf32>
      scf.yield %true : i1
    }
    %166 = arith.xori %34, %false : i1
    %167 = scf.while (%arg1 = %35) : (vector<11xf32>) -> vector<11xf32> {
      %267 = arith.ceildivsi %c1212036663_i32, %c518060233_i32 : i32
      %268 = math.fma %5, %splat, %splat : tensor<4x2xf32>
      %269 = math.rsqrt %cst_5 : f32
      %alloc_44 = memref.alloc() : memref<f32>
      memref.tensor_store %21, %alloc_44 : memref<f32>
      %generated_45 = tensor.generate %46 {
      ^bb0(%arg2: index):
        %273 = index.castu %c13 : index to i32
        %alloca_46 = memref.alloca() : memref<4xi32>
        %274 = vector.broadcast %cst_1 : f16 to vector<11xf16>
        %275 = vector.maskedload %alloc_10[%c0, %c1], %67, %274 : memref<4x2xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %true_47 = index.bool.constant true
        tensor.yield %c172817522_i64 : i64
      } : tensor<?xi64>
      %270 = vector.broadcast %c1212036663_i32 : i32 to vector<2xi32>
      %271 = memref.alloca_scope  -> (memref<4xi16>) {
        %273 = arith.shrsi %true, %extracted : i1
        %274 = vector.transpose %150, [0] : vector<9xi1> to vector<9xi1>
        %275 = index.maxs %22, %c7
        %276 = vector.bitcast %67 : vector<11xi1> to vector<11xi1>
        %c-14294_i16 = arith.constant -14294 : i16
        %extracted_46 = tensor.extract %6[%c0] : tensor<2xf16>
        %277 = vector.broadcast %c5 : index to vector<11xindex>
        vector.scatter %76[%c2] [%277], %66, %67 : memref<4xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
        %278 = bufferization.clone %alloc_17 : memref<4x2xi1> to memref<4x2xi1>
        %279 = math.powf %cst_4, %cst_5 : f32
        %280 = index.add %37, %c14
        %281 = affine.max affine_map<(d0, d1, d2) -> (0)>(%c9, %c13, %115)
        %282 = arith.floordivsi %c1268726765_i32, %c265157077_i32 : i32
        %283 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
        %284 = vector.broadcast %extracted : i1 to vector<4xi1>
        %285 = vector.maskedload %54[%c3, %c0], %284, %283 : memref<4x2xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %286 = arith.minf %extracted_46, %cst_1 : f16
        %287 = vector.gather %15[%c7] [%58], %82, %59 : tensor<2xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %288 = arith.maxsi %157, %157 : i64
        %289 = arith.minui %c13810_i16, %extracted_23 : i16
        %290 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %291 = vector.maskedload %alloc_6[%c3, %c1], %150, %290 : memref<9x2xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %292 = math.expm1 %cst_0 : f16
        %293 = tensor.empty() : tensor<2x4xi32>
        %294 = math.fpowi %18, %293 : tensor<2x4xf32>, tensor<2x4xi32>
        %295 = math.log1p %cst_4 : f32
        %296 = math.log %cst_5 : f32
        %297 = arith.floordivsi %c518060233_i32, %c518060233_i32 : i32
        %298 = arith.minf %extracted_46, %extracted_46 : f16
        %299 = math.powf %18, %18 : tensor<2x4xf32>
        %300 = vector.flat_transpose %35 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %301 = arith.ceildivsi %34, %extracted : i1
        %302 = index.divs %37, %280
        %303 = arith.addi %true_27, %false : i1
        %304 = vector.broadcast %80 : index to vector<2xindex>
        vector.scatter %76[%c0] [%304], %82, %82 : memref<4xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %cst_47 = arith.constant 1.000000e+00 : f16
        %cst_48 = arith.constant 0.000000e+00 : f16
        %305 = vector.transfer_read %alloc_10[%c0, %64], %cst_48 : memref<4x2xf16>, vector<f16>
        %306 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4)>(%115, %c15, %37, %281)
        %alloc_49 = memref.alloc() : memref<4xi16>
        memref.alloca_scope.return %alloc_49 : memref<4xi16>
      }
      %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 16, d2 floordiv 8)>(%37, %c2, %c12, %46)
      scf.condition(%34) %35 : vector<11xf32>
    } do {
    ^bb0(%arg1: vector<11xf32>):
      %267 = vector.bitcast %35 : vector<11xf32> to vector<11xf32>
      %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, (d3 floordiv 8) * -2, (d2 ceildiv 4) * 32, (d3 floordiv 8) * -2)>(%c2, %c14, %c7, %80)
      %269 = index.add %c10, %115
      %270 = index.divu %46, %c6
      %271 = arith.maxf %cst_0, %cst_1 : f16
      %272 = math.absi %c32058_i16 : i16
      %273 = math.log1p %6 : tensor<2xf16>
      %274 = vector.broadcast %true : i1 to vector<4xi1>
      %275 = vector.maskedload %alloc_11[%c1], %274, %274 : memref<2xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %276 = memref.load %alloc_22[%c2] : memref<4xf32>
      %277 = vector.broadcast %cst_5 : f32 to vector<4x2xf32>
      %278 = vector.fma %277, %277, %277 : vector<4x2xf32>
      %splat_44 = tensor.splat %false : tensor<9x2xi1>
      %279 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%81, %75, %107, %107)
      %280 = vector.create_mask %125 : vector<2xi1>
      %281 = math.ipowi %84, %2 : tensor<2xi1>
      %282 = arith.negf %cst_3 : f16
      %inserted_45 = tensor.insert %cst_5 into %20[] : tensor<f32>
      scf.yield %19 : vector<11xf32>
    }
    %generated_32 = tensor.generate %c14 {
    ^bb0(%arg1: index):
      %267 = vector.broadcast %cst : f32 to vector<4xf32>
      %268 = vector.fma %267, %131, %130 : vector<4xf32>
      %269 = arith.remui %c265157077_i32, %c518060233_i32 : i32
      %270 = arith.remf %cst_2, %cst_4 : f32
      %alloca_44 = memref.alloca() : memref<4xi32>
      tensor.yield %true : i1
    } : tensor<?xi1>
    %168 = math.atan %1 : tensor<4x2xf16>
    %169 = math.log %from_elements_26 : tensor<2xf32>
    %170 = math.exp2 %20 : tensor<f32>
    %c1175496193_i32 = arith.constant 1175496193 : i32
    %171 = math.fpowi %1, %101 : tensor<4x2xf16>, tensor<4x2xi32>
    %172 = arith.negf %cst_5 : f32
    %173 = arith.mulf %cst, %cst_2 : f32
    %174 = math.sqrt %1 : tensor<4x2xf16>
    %cast_33 = tensor.cast %15 : tensor<2xi64> to tensor<?xi64>
    %175 = arith.remf %cst_1, %cst_0 : f16
    %176 = arith.maxsi %false, %true : i1
    %177 = index.casts %106 : index to i32
    %178 = affine.load %alloc_13[%c8] : memref<2xi16>
    %179 = arith.mulf %cst, %cst_2 : f32
    %alloca_34 = memref.alloca() : memref<9x2xi32>
    %180 = arith.divf %cst_0, %cst_1 : f16
    %181 = affine.min affine_map<(d0, d1) -> (d1)>(%c3, %c3)
    %182 = math.cttz %34 : i1
    %183 = vector.insert %cst_2, %35 [4] : f32 into vector<11xf32>
    %184 = vector.extract %91[1] : vector<4x2xi64>
    %185 = index.ceildivu %22, %147
    %186 = memref.alloca_scope  -> (memref<9x2xi1>) {
      %267 = vector.broadcast %c32058_i16 : i16 to vector<2xi16>
      %268 = affine.load %alloc_21[] : memref<i16>
      %269 = math.floor %5 : tensor<4x2xf32>
      %270 = affine.max affine_map<(d0) -> (d0 + d0 - 1, d0 + d0 - 1 - 16)>(%115)
      %271 = arith.shrsi %157, %c172817522_i64 : i64
      %272 = scf.while (%arg1 = %151) : (vector<9xi1>) -> vector<9xi1> {
        memref.assume_alignment %29, 16 : memref<2xi1>
        %296 = index.casts %178 : i16 to index
        %297 = math.tan %6 : tensor<2xf16>
        %298 = affine.max affine_map<(d0, d1, d2) -> (0, d1 floordiv 8 - d1, d1 floordiv 8, 0)>(%c12, %89, %142)
        %299 = vector.broadcast %c11 : index to vector<9xindex>
        %300 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        vector.scatter %alloc_14[%c0] [%299], %151, %300 : memref<2xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %301 = bufferization.to_memref %generated_32 : memref<?xi1>
        %302 = arith.mulf %cst_5, %cst : f32
        %303 = vector.maskedload %alloc_22[%c2], %66, %35 : memref<4xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        scf.condition(%extracted) %150 : vector<9xi1>
      } do {
      ^bb0(%arg1: vector<9xi1>):
        %296 = arith.maxui %c265157077_i32, %c1212036663_i32 : i32
        %297 = arith.addi %c172817522_i64, %157 : i64
        %298 = affine.load %alloc_14[%c15] : memref<2xf32>
        %299 = arith.remui %extracted_23, %c32058_i16 : i16
        %300 = math.powf %1, %1 : tensor<4x2xf16>
        %301 = math.fma %1, %1, %1 : tensor<4x2xf16>
        %302 = math.expm1 %18 : tensor<2x4xf32>
        %303 = math.atan2 %21, %20 : tensor<f32>
        %304 = math.fma %cst_2, %cst, %cst_5 : f32
        %305 = vector.broadcast %cst_0 : f16 to vector<2xf16>
        %306 = vector.gather %alloc_9[%c5, %81] [%58], %82, %305 : memref<9x2xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %307 = math.fma %cst_1, %cst_3, %cst_1 : f16
        %308 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 - 64)) floordiv 64)>(%181, %81, %81)
        %309 = vector.broadcast %c1212036663_i32 : i32 to vector<11x11xi32>
        %310 = vector.outerproduct %33, %33, %309 {kind = #vector.kind<add>} : vector<11xi32>, vector<11xi32>
        %311 = arith.ceildivsi %true_27, %extracted : i1
        %312 = bufferization.to_memref %9 : memref<9x2xi32>
        %313 = arith.remui %true, %false : i1
        scf.yield %151 : vector<9xi1>
      }
      %273 = index.castu %106 : index to i32
      %274 = scf.while (%arg1 = %c172817522_i64) : (i64) -> i64 {
        %296 = index.add %64, %147
        %297 = index.add %22, %80
        %298 = arith.remf %cst_0, %cst_1 : f16
        %299 = vector.broadcast %true : i1 to vector<9x9xi1>
        %300 = vector.outerproduct %150, %150, %299 {kind = #vector.kind<minsi>} : vector<9xi1>, vector<9xi1>
        %301 = math.log1p %cst_4 : f32
        %splat_47 = tensor.splat %c-11559_i16 : tensor<4xi16>
        %302 = math.atan %cst_5 : f32
        %303 = math.rsqrt %4 : tensor<4xf32>
        scf.condition(%true_27) %c172817522_i64 : i64
      } do {
      ^bb0(%arg1: i64):
        %rank = tensor.rank %5 : tensor<4x2xf32>
        %296 = tensor.empty() : tensor<2x4xi32>
        %297 = math.fpowi %18, %296 : tensor<2x4xf32>, tensor<2x4xi32>
        %298 = arith.addi %c32058_i16, %178 : i16
        %299 = arith.negf %cst_0 : f16
        %alloc_47 = memref.alloc() : memref<9x2xi16>
        %300 = arith.mulf %cst_3, %cst_1 : f16
        %301 = vector.reduction <minf>, %131 : vector<4xf32> into f32
        %302 = arith.ori %true, %false : i1
        %c-12271_i16 = arith.constant -12271 : i16
        %303 = math.absf %6 : tensor<2xf16>
        %304 = vector.broadcast %c4 : index to vector<9xindex>
        %305 = vector.broadcast %arg1 : i64 to vector<9xi64>
        vector.scatter %54[%c2, %c1] [%304], %151, %305 : memref<4x2xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %306 = arith.divui %true, %true : i1
        %307 = bufferization.to_tensor %alloc_14 : memref<2xf32>
        %308 = math.rsqrt %cst : f32
        %309 = arith.addi %34, %extracted : i1
        %310 = vector.shuffle %33, %162 [0, 8, 9, 10] : vector<11xi32>, vector<1xi32>
        scf.yield %c172817522_i64 : i64
      }
      memref.alloca_scope  {
        %296 = arith.maxsi %157, %c172817522_i64 : i64
        %alloc_47 = memref.alloc() : memref<4x2xi16>
        %297 = vector.broadcast %268 : i16 to vector<9x2xi16>
        %298 = vector.broadcast %c518060233_i32 : i32 to vector<9x2xi32>
        %299 = vector.gather %alloc_47[%c7, %46] [%298], %65, %297 : memref<4x2xi16>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi16> into vector<9x2xi16>
        %300 = math.round %4 : tensor<4xf32>
        %301 = math.log1p %1 : tensor<4x2xf16>
        %302 = bufferization.to_tensor %alloc_19 : memref<4xf16>
        %303 = arith.minf %cst_0, %cst_0 : f16
        %false_48 = index.bool.constant false
        %304 = arith.floordivsi %extracted, %false_48 : i1
        %305 = arith.subi %c32058_i16, %extracted_23 : i16
        %306 = arith.maxsi %268, %c-11559_i16 : i16
        %307 = vector.broadcast %37 : index to vector<2xindex>
        vector.scatter %alloc_15[%c0] [%307], %82, %184 : memref<2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %308 = arith.addi %false_48, %false : i1
        %309 = arith.addi %178, %178 : i16
        %310 = math.floor %cst : f32
        %311 = index.ceildivu %37, %270
        %inserted_49 = tensor.insert %c1212036663_i32 into %101[%c3, %c1] : tensor<4x2xi32>
        %312 = math.ctlz %0 : tensor<4xi1>
        %313 = vector.insertelement %extracted, %67[%c13 : index] : vector<11xi1>
        %314 = index.sizeof
        %315 = vector.broadcast %true : i1 to vector<11x11xi1>
        %316 = vector.outerproduct %67, %67, %315 {kind = #vector.kind<minsi>} : vector<11xi1>, vector<11xi1>
        %317 = vector.broadcast %c265157077_i32 : i32 to vector<9xi32>
        %318 = vector.transfer_write %317, %9[%181, %81] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi32>, tensor<9x2xi32>
        %319 = math.expm1 %302 : tensor<4xf16>
        %320 = arith.divf %cst_1, %cst_1 : f16
        %alloc_50 = memref.alloc() : memref<4xf32>
        %321 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %322 = vector.fma %321, %321, %321 : vector<2xf32>
        %323 = math.atan %5 : tensor<4x2xf32>
        %324 = vector.reduction <and>, %56 : vector<2xi64> into i64
        %325 = vector.shuffle %66, %57 [0, 2, 4, 10, 11] : vector<11xi1>, vector<2xi1>
        %326 = math.rsqrt %4 : tensor<4xf32>
        %327 = math.log1p %cst_2 : f32
        memref.assume_alignment %69, 4 : memref<9x2xi16>
        %328 = vector.maskedload %alloc_13[%c1], %57, %267 : memref<2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      }
      %275 = affine.if affine_set<(d0, d1) : (60 >= 0, 15 >= 0, 0 >= 0)>(%c6, %c0) -> i16 {
        %296 = index.maxu %75, %c6
        %297 = vector.broadcast %c265157077_i32 : i32 to vector<1x1xi32>
        %298 = vector.outerproduct %132, %162, %297 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
        %299 = vector.extract %91[2] : vector<4x2xi64>
        %300 = math.log1p %20 : tensor<f32>
        memref.assume_alignment %alloc_22, 2 : memref<4xf32>
        %301 = arith.ceildivsi %c518060233_i32, %c1268726765_i32 : i32
        %302 = math.fma %from_elements_26, %from_elements_26, %from_elements_26 : tensor<2xf32>
        %303 = memref.load %29[%c0] : memref<2xi1>
        affine.yield %c-11559_i16 : i16
      } else {
        %alloc_47 = memref.alloc() : memref<9x2xf16>
        %296 = tensor.empty() : tensor<2x2xf32>
        %297 = linalg.matmul ins(%transposed, %5 : tensor<2x4xf32>, tensor<4x2xf32>) outs(%296 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %298 = arith.shrsi %false, %false : i1
        %299 = tensor.empty() : tensor<9x2xi16>
        %300 = linalg.matmul ins(%112, %14 : tensor<9x4xi16>, tensor<4x2xi16>) outs(%299 : tensor<9x2xi16>) -> tensor<9x2xi16>
        %301 = arith.remf %cst_4, %cst_4 : f32
        %302 = math.log2 %4 : tensor<4xf32>
        %from_elements_48 = tensor.from_elements %cst_2, %cst_2, %cst_4, %cst_2 : tensor<4xf32>
        %303 = index.maxs %c15, %c5
        affine.yield %c-11559_i16 : i16
      }
      %276 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
      %277 = math.fpowi %cst_1, %c265157077_i32 : f16, i32
      %alloc_44 = memref.alloc() : memref<2xf16>
      memref.tensor_store %6, %alloc_44 : memref<2xf16>
      %278 = arith.shrsi %c-11559_i16, %178 : i16
      %279 = vector.bitcast %123 : vector<2xi64> to vector<2xi64>
      %280 = index.casts %c-11559_i16 : i16 to index
      %281 = vector.broadcast %c1268726765_i32 : i32 to vector<i32>
      %282 = vector.transfer_write %281, %136[%185] : vector<i32>, tensor<2xi32>
      %283 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 floordiv 2) mod 2 == 0, d2 - d1 >= 0, d2 - d1 >= 0)>(%c3, %c9, %c14, %c10) -> f32 {
        %296 = vector.reduction <add>, %59 : vector<2xi64> into i64
        %297 = vector.broadcast %cst : f32 to vector<9x2xf32>
        %298 = vector.broadcast %c1212036663_i32 : i32 to vector<9x2xi32>
        %299 = vector.gather %122[%89] [%298], %65, %297 : memref<2xf32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf32> into vector<9x2xf32>
        %300 = arith.minf %cst_2, %cst_2 : f32
        %301 = affine.min affine_map<(d0) -> (-(d0 floordiv 16 - d0))>(%c3)
        %302 = arith.shrsi %c13810_i16, %178 : i16
        %303 = vector.extract %151[0] : vector<9xi1>
        %304 = index.maxs %c9, %c9
        %alloc_47 = memref.alloc() : memref<4xf16>
        memref.copy %alloc_19, %alloc_47 : memref<4xf16> to memref<4xf16>
        affine.yield %cst_5 : f32
      } else {
        %296 = memref.load %alloc_19[%c1] : memref<4xf16>
        %297 = arith.ori %c1268726765_i32, %c1212036663_i32 : i32
        %298 = math.round %4 : tensor<4xf32>
        %299 = vector.create_mask %80, %37 : vector<9x2xi1>
        %300 = vector.broadcast %false : i1 to vector<4x2xi1>
        %301 = arith.cmpf ugt, %cst_0, %cst_0 : f16
        %302 = index.sizeof
        %303 = arith.maxsi %c265157077_i32, %c265157077_i32 : i32
        affine.yield %cst_4 : f32
      }
      %284 = index.maxu %115, %46
      %285 = math.tanh %cst_3 : f16
      memref.tensor_store %13, %69 : memref<9x2xi16>
      %286 = math.floor %5 : tensor<4x2xf32>
      %287 = math.log2 %1 : tensor<4x2xf16>
      %extracted_45 = tensor.extract %from_elements[%c2] : tensor<4xi1>
      %288 = math.exp2 %splat : tensor<4x2xf32>
      %289 = math.fpowi %6, %136 : tensor<2xf16>, tensor<2xi32>
      %290 = vector.create_mask %c15 : vector<4xi1>
      %291 = arith.remf %cst, %cst : f32
      %292 = index.ceildivu %22, %c13
      %293 = math.fma %4, %4, %4 : tensor<4xf32>
      %294 = index.floordivs %c7, %284
      %295 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 floordiv 16) floordiv 16 == 0, d3 == 0)>(%c14, %c10, %c11, %c3) -> f32 {
        %296 = math.ctlz %8 : tensor<4xi32>
        %297 = index.ceildivu %c12, %280
        %298 = memref.load %alloc_6[%c1, %c0] : memref<9x2xf32>
        %c29144_i16 = arith.constant 29144 : i16
        %299 = math.fma %cst, %cst_5, %cst_4 : f32
        %300 = math.tanh %cst : f32
        %alloc_47 = memref.alloc() : memref<9x2xi64>
        %301 = vector.transpose %97, [] : vector<i1> to vector<i1>
        affine.yield %cst_4 : f32
      } else {
        %296 = vector.broadcast %c9 : index to vector<9xindex>
        %297 = vector.broadcast %c172817522_i64 : i64 to vector<9xi64>
        vector.scatter %54[%c1, %c0] [%296], %150, %297 : memref<4x2xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %298 = vector.shuffle %151, %67 [0, 5, 6, 8, 11, 13, 16, 17, 19] : vector<9xi1>, vector<11xi1>
        %299 = arith.cmpi ule, %c-11559_i16, %c32058_i16 : i16
        %300 = index.maxs %89, %c10
        %301 = vector.extract_strided_slice %150 {offsets = [1], sizes = [4], strides = [1]} : vector<9xi1> to vector<4xi1>
        %302 = math.floor %6 : tensor<2xf16>
        %303 = index.add %106, %106
        %304 = arith.ori %c1268726765_i32, %c265157077_i32 : i32
        affine.yield %cst_2 : f32
      }
      %alloc_46 = memref.alloc() : memref<9x2xi1>
      memref.alloca_scope.return %alloc_46 : memref<9x2xi1>
    }
    %splat_35 = tensor.splat %c1268726765_i32 : tensor<4x2xi32>
    %187 = arith.remf %cst, %cst_4 : f32
    %188 = vector.shuffle %184, %59 [0, 2, 3] : vector<2xi64>, vector<2xi64>
    %189 = vector.bitcast %82 : vector<2xi1> to vector<2xi1>
    %alloc_36 = memref.alloc() : memref<9x2xi32>
    memref.tensor_store %9, %alloc_36 : memref<9x2xi32>
    %alloc_37 = memref.alloc() : memref<4xi16>
    memref.tensor_store %16, %alloc_37 : memref<4xi16>
    %190 = scf.execute_region -> memref<4xi64> {
      %267 = vector.extract_strided_slice %59 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
      %268 = math.copysign %cst_5, %cst : f32
      memref.assume_alignment %alloc_10, 16 : memref<4x2xf16>
      %splat_44 = tensor.splat %c172817522_i64 : tensor<9x2xi64>
      %269 = math.log2 %6 : tensor<2xf16>
      %270 = math.ceil %cst_5 : f32
      %271 = index.maxs %64, %c9
      %272 = math.log %cst_3 : f16
      %273 = vector.transpose %119, [0] : vector<1xf32> to vector<1xf32>
      %from_elements_45 = tensor.from_elements %cst, %cst_5, %cst_2, %cst_2 : tensor<4xf32>
      %274 = vector.reduction <minf>, %36 : vector<1xf32> into f32
      %275 = affine.load %alloc_19[%c6] : memref<4xf16>
      %276 = arith.minsi %178, %c32058_i16 : i16
      %277 = index.ceildivu %c5, %c4
      %278 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
      %279 = math.ceil %6 : tensor<2xf16>
      scf.yield %alloc_12 : memref<4xi64>
    }
    %191 = scf.if %extracted -> (memref<4x2xi16>) {
      %c1_i16 = arith.constant 1 : i16
      %267 = vector.transfer_read %from_elements_28[%c11], %c1_i16 : tensor<2xi16>, vector<i16>
      %268 = index.castu %c518060233_i32 : i32 to index
      %269 = math.cos %cst : f32
      %270 = index.sizeof
      %271 = math.atan2 %5, %5 : tensor<4x2xf32>
      %272 = arith.remf %cst, %cst_5 : f32
      %273 = vector.multi_reduction <minsi>, %57, %57 [] : vector<2xi1> to vector<2xi1>
      %274 = math.atan2 %from_elements_26, %from_elements_26 : tensor<2xf32>
      %alloc_44 = memref.alloc() : memref<4x2xi16>
      scf.yield %alloc_44 : memref<4x2xi16>
    } else {
      %267 = math.copysign %18, %transposed : tensor<2x4xf32>
      %268 = arith.floordivsi %c518060233_i32, %c518060233_i32 : i32
      %269 = arith.addi %c172817522_i64, %c172817522_i64 : i64
      %from_elements_44 = tensor.from_elements %c265157077_i32, %c1268726765_i32, %c265157077_i32, %c518060233_i32, %c1268726765_i32, %c265157077_i32, %c1212036663_i32, %c1268726765_i32, %c265157077_i32, %c1212036663_i32, %c265157077_i32, %c1212036663_i32, %c265157077_i32, %c1268726765_i32, %c518060233_i32, %c518060233_i32, %c265157077_i32, %c1212036663_i32 : tensor<9x2xi32>
      %270 = math.fma %4, %4, %4 : tensor<4xf32>
      %271 = arith.shrui %c518060233_i32, %c1268726765_i32 : i32
      %272 = vector.flat_transpose %59 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %273 = math.fpowi %6, %136 : tensor<2xf16>, tensor<2xi32>
      %alloc_45 = memref.alloc() : memref<4x2xi16>
      scf.yield %alloc_45 : memref<4x2xi16>
    }
    %192 = tensor.empty() : tensor<4x4xf32>
    %193 = linalg.matmul ins(%5, %transposed : tensor<4x2xf32>, tensor<2x4xf32>) outs(%192 : tensor<4x4xf32>) -> tensor<4x4xf32>
    %194 = vector.transpose %131, [0] : vector<4xf32> to vector<4xf32>
    %195 = affine.if affine_set<(d0, d1, d2, d3) : (d1 >= 0)>(%c4, %c13, %c13, %c8) -> i1 {
      %267 = scf.while (%arg1 = %alloc_13) : (memref<2xi16>) -> memref<2xi16> {
        %273 = index.maxs %89, %115
        %274 = vector.broadcast %c265157077_i32 : i32 to vector<9x2xi32>
        %275 = vector.gather %alloc_7[%c10, %c13] [%274], %65, %274 : memref<4x2xi32>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xi32> into vector<9x2xi32>
        memref.assume_alignment %alloc_9, 8 : memref<9x2xf16>
        %276 = arith.remf %cst_5, %cst_5 : f32
        %277 = index.add %273, %142
        %278 = vector.create_mask %c2 : vector<2xi1>
        %279 = math.log1p %cst_4 : f32
        %rank = tensor.rank %0 : tensor<4xi1>
        scf.condition(%extracted) %arg1 : memref<2xi16>
      } do {
      ^bb0(%arg1: memref<2xi16>):
        %273 = arith.shli %34, %true_27 : i1
        %274 = vector.transpose %189, [0] : vector<2xi1> to vector<2xi1>
        %275 = arith.remui %extracted, %false : i1
        %276 = math.cttz %157 : i64
        %277 = arith.ceildivsi %c13810_i16, %c13810_i16 : i16
        %extracted_46 = tensor.extract %cast[%c0, %c0] : tensor<?x?xf16>
        %278 = math.rsqrt %6 : tensor<2xf16>
        %279 = arith.xori %true_27, %true : i1
        %280 = math.log1p %cst_1 : f16
        %281 = arith.divf %cst_2, %cst_5 : f32
        %282 = math.round %from_elements_26 : tensor<2xf32>
        %alloca_47 = memref.alloca() : memref<9x2xi32>
        %283 = vector.extract %33[3] : vector<11xi32>
        %284 = bufferization.to_memref %10 : memref<4xi16>
        %285 = math.fma %6, %6, %6 : tensor<2xf16>
        %splat_48 = tensor.splat %c1212036663_i32 : tensor<4x2xi32>
        scf.yield %alloc_13 : memref<2xi16>
      }
      %268 = arith.maxsi %c265157077_i32, %c1212036663_i32 : i32
      %269 = vector.create_mask %147 : vector<2xi1>
      %270 = math.log %1 : tensor<4x2xf16>
      %271 = scf.while (%arg1 = %34) : (i1) -> i1 {
        %273 = index.add %c14, %c9
        %collapsed_46 = tensor.collapse_shape %101 [[0, 1]] : tensor<4x2xi32> into tensor<8xi32>
        %274 = math.fpowi %4, %8 : tensor<4xf32>, tensor<4xi32>
        %275 = math.cos %4 : tensor<4xf32>
        %276 = math.ctlz %15 : tensor<2xi64>
        %277 = math.round %cst_3 : f16
        %278 = arith.maxsi %c13810_i16, %c-11559_i16 : i16
        %279 = index.maxu %107, %75
        scf.condition(%34) %false : i1
      } do {
      ^bb0(%arg1: i1):
        %273 = affine.max affine_map<(d0, d1) -> (d0, d1 - 4, d1 * 32, (-d1) floordiv 4)>(%c15, %c2)
        %274 = arith.remf %cst_1, %cst_0 : f16
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d3 floordiv 16, (d3 floordiv 16) ceildiv 64)>(%125, %86, %81, %c0)
        %splat_46 = tensor.splat %c-11559_i16 : tensor<4x2xi16>
        %276 = arith.muli %c265157077_i32, %c1212036663_i32 : i32
        %277 = math.fma %6, %6, %6 : tensor<2xf16>
        %278 = math.floor %cst : f32
        %279 = math.ipowi %3, %3 : tensor<2xi16>
        %280 = math.ctlz %c13810_i16 : i16
        %281 = math.ipowi %9, %9 : tensor<9x2xi32>
        %282 = bufferization.clone %alloc_14 : memref<2xf32> to memref<2xf32>
        %283 = arith.floordivsi %c1268726765_i32, %c265157077_i32 : i32
        %284 = tensor.empty() : tensor<4x2xf32>
        %285 = index.ceildivu %125, %c1
        %286 = math.log10 %splat : tensor<4x2xf32>
        %287 = arith.addi %c13810_i16, %178 : i16
        scf.yield %true_27 : i1
      }
      %272 = arith.minf %cst_1, %cst_0 : f16
      %inserted_44 = tensor.insert %cst_2 into %5[%c2, %c1] : tensor<4x2xf32>
      %alloc_45 = memref.alloc() : memref<4x2xf32>
      affine.yield %34 : i1
    } else {
      %267 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
      %268 = math.log1p %20 : tensor<f32>
      %269 = arith.negf %cst_5 : f32
      %270 = index.sizeof
      %271 = bufferization.to_memref %2 : memref<2xi1>
      %272 = math.absf %cst_3 : f16
      %273 = math.round %18 : tensor<2x4xf32>
      scf.if %true_27 {
        %274 = math.powf %4, %4 : tensor<4xf32>
        %275 = arith.ceildivsi %c265157077_i32, %c1212036663_i32 : i32
        %276 = math.rsqrt %4 : tensor<4xf32>
        %277 = index.floordivs %22, %81
        %278 = math.log2 %21 : tensor<f32>
        %inserted_44 = tensor.insert %true_27 into %generated[%c0, %c0] : tensor<?x?xi1>
        %279 = affine.max affine_map<(d0, d1) -> (0, 0)>(%c4, %115)
        %false_45 = index.bool.constant false
      }
      affine.yield %extracted : i1
    }
    %196 = arith.floordivsi %178, %extracted_23 : i16
    %197 = affine.if affine_set<(d0, d1, d2, d3) : (d1 >= 0)>(%c11, %c3, %c12, %c11) -> memref<2xi16> {
      %267 = vector.extract %74[0] : vector<2xi16>
      %268 = vector.broadcast %c1212036663_i32 : i32 to vector<4x2xi32>
      %269 = vector.broadcast %true : i1 to vector<4x2xi1>
      %270 = vector.gather %136[%c12] [%268], %269, %268 : tensor<2xi32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi32> into vector<4x2xi32>
      %271 = arith.ori %c13810_i16, %178 : i16
      %272 = index.maxs %64, %c1
      %alloc_44 = memref.alloc() : memref<2x2xi32>
      %273 = tensor.empty() : tensor<4x2xi32>
      %274 = linalg.matmul ins(%splat_35, %alloc_44 : tensor<4x2xi32>, memref<2x2xi32>) outs(%273 : tensor<4x2xi32>) -> tensor<4x2xi32>
      %275 = arith.mulf %cst_4, %cst : f32
      %276 = index.add %106, %c9
      %277 = affine.for %arg1 = 0 to 84 iter_args(%arg2 = %190) -> (memref<4xi64>) {
        affine.yield %190 : memref<4xi64>
      }
      affine.yield %alloc_13 : memref<2xi16>
    } else {
      %267 = arith.ceildivsi %c-11559_i16, %c13810_i16 : i16
      %268 = index.mul %75, %c6
      %269 = vector.broadcast %cst_2 : f32 to vector<4x2xf32>
      %270 = vector.fma %269, %269, %269 : vector<4x2xf32>
      %alloc_44 = memref.alloc() : memref<4xi32>
      memref.tensor_store %8, %alloc_44 : memref<4xi32>
      %271 = arith.xori %true_27, %false : i1
      %272 = index.maxs %c7, %c5
      %273 = math.round %cst_0 : f16
      %274 = math.absf %splat : tensor<4x2xf32>
      affine.yield %alloc_13 : memref<2xi16>
    }
    memref.alloca_scope  {
      %267 = arith.maxsi %178, %c-11559_i16 : i16
      %268 = vector.broadcast %cst : f32 to vector<9x2xf32>
      %269 = vector.fma %268, %268, %268 : vector<9x2xf32>
      %270 = vector.multi_reduction <minsi>, %74, %73 [] : vector<2xi16> to vector<2xi16>
      %extracted_44 = tensor.extract %20[] : tensor<f32>
      %271 = vector.extract %19[8] : vector<11xf32>
      %272 = vector.broadcast %extracted_44 : f32 to vector<9xf32>
      %273 = vector.maskedload %alloc_22[%c0], %151, %272 : memref<4xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %274 = index.mul %c2, %c13
      %275 = vector.extract %23[6] : vector<11xf32>
      %276 = index.maxu %22, %86
      %277 = math.ipowi %7, %17 : tensor<4xi16>
      %cast_45 = tensor.cast %9 : tensor<9x2xi32> to tensor<?x?xi32>
      %from_elements_46 = tensor.from_elements %c518060233_i32, %c1212036663_i32, %c1212036663_i32, %c1268726765_i32, %c265157077_i32, %c1268726765_i32, %c1268726765_i32, %c1268726765_i32 : tensor<4x2xi32>
      %278 = vector.load %122[%c1] : memref<2xf32>, vector<4xf32>
      %279 = math.fma %1, %1, %1 : tensor<4x2xf16>
      %280 = arith.shrsi %extracted_23, %178 : i16
      %281 = vector.broadcast %cst_3 : f16 to vector<9xf16>
      %282 = vector.maskedload %alloc_9[%c1, %c0], %151, %281 : memref<9x2xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %283 = memref.load %alloc_22[%c2] : memref<4xf32>
      %284 = index.ceildivs %c8, %81
      %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%89, %274, %274, %276)
      %286 = vector.broadcast %c13 : index to vector<2xindex>
      %287 = vector.broadcast %cst_0 : f16 to vector<2xf16>
      vector.scatter %alloc_9[%c8, %c0] [%286], %189, %287 : memref<9x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
      %288 = math.ceil %cst_2 : f32
      %289 = math.rsqrt %cst : f32
      %290 = math.atan2 %cst_1, %cst_3 : f16
      %291 = math.floor %4 : tensor<4xf32>
      %292 = arith.ori %c172817522_i64, %c172817522_i64 : i64
      %293 = arith.addi %c32058_i16, %178 : i16
      %294 = arith.remf %cst_5, %cst_5 : f32
      %295 = index.maxs %c11, %37
      %296 = affine.max affine_map<(d0, d1) -> (0, d1, 0, d0 floordiv 16)>(%c5, %89)
      %297 = vector.transpose %94, [0] : vector<2xi64> to vector<2xi64>
      %298 = bufferization.to_memref %6 : memref<2xf16>
      %299 = math.ipowi %13, %13 : tensor<9x2xi16>
    }
    %198 = arith.mulf %cst, %cst_5 : f32
    %199 = vector.broadcast %75 : index to vector<9xindex>
    %200 = vector.broadcast %cst_4 : f32 to vector<9xf32>
    vector.scatter %alloc_22[%c3] [%199], %150, %200 : memref<4xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
    %alloca_38 = memref.alloca() : memref<2xf32>
    %201 = index.ceildivs %c13, %c2
    %202 = vector.shuffle %131, %130 [1, 2, 4, 6, 7] : vector<4xf32>, vector<4xf32>
    %203 = scf.index_switch %22 -> i1 
    case 1 {
      %267 = index.castu %89 : index to i32
      %268 = math.floor %cst_3 : f16
      %269 = math.exp2 %cst_3 : f16
      %270 = arith.remui %c265157077_i32, %c1268726765_i32 : i32
      %271 = index.maxs %46, %142
      memref.tensor_store %1, %alloc_10 : memref<4x2xf16>
      scf.index_switch %80 
      case 1 {
        %279 = arith.ceildivsi %157, %c172817522_i64 : i64
        %280 = math.fma %4, %4, %4 : tensor<4xf32>
        %281 = index.casts %157 : i64 to index
        %282 = arith.minui %c1212036663_i32, %c1212036663_i32 : i32
        %collapsed_46 = tensor.collapse_shape %generated_29 [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
        %283 = vector.broadcast %281 : index to vector<11xindex>
        %284 = vector.broadcast %c13810_i16 : i16 to vector<11xi16>
        vector.scatter %alloc_16[%c7, %c1] [%283], %66, %284 : memref<9x2xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
        %285 = math.log2 %splat : tensor<4x2xf32>
        %286 = math.rsqrt %cst_0 : f16
        %287 = arith.divf %cst_2, %cst_2 : f32
        %288 = arith.minf %cst_2, %cst : f32
        %289 = vector.maskedload %alloc_20[%c1], %66, %66 : memref<2xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
        %290 = affine.max affine_map<(d0, d1, d2) -> (d1 + d2 * 2)>(%80, %c14, %c11)
        %291 = arith.mulf %cst_3, %cst_1 : f16
        %292 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 2, d3, (d2 - d0) * -2, d2 - d0)>(%106, %115, %125, %37)
        %293 = tensor.empty() : tensor<2x4xf16>
        %294 = tensor.empty() : tensor<4x4xf16>
        %295 = linalg.matmul ins(%1, %293 : tensor<4x2xf16>, tensor<2x4xf16>) outs(%294 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %296 = arith.xori %34, %true : i1
        scf.yield
      }
      default {
        %279 = tensor.empty() : tensor<i32>
        %280 = math.fpowi %20, %279 : tensor<f32>, tensor<i32>
        %281 = math.absf %18 : tensor<2x4xf32>
        %282 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %283 = vector.fma %282, %282, %282 : vector<2xf32>
        vector.print %67 : vector<11xi1>
        %284 = vector.gather %alloc[%89] [%58], %57, %82 : memref<4xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %285 = tensor.empty() : tensor<4xi64>
        %286 = math.fma %21, %20, %20 : tensor<f32>
        %287 = vector.splat %c2 : vector<9x2xindex>
        %288 = math.rsqrt %4 : tensor<4xf32>
        %from_elements_46 = tensor.from_elements %c1212036663_i32, %c518060233_i32, %c1212036663_i32, %c518060233_i32, %c1268726765_i32, %c518060233_i32, %c1212036663_i32, %c265157077_i32, %c518060233_i32, %c518060233_i32, %c1268726765_i32, %c1212036663_i32, %c1212036663_i32, %c265157077_i32, %c265157077_i32, %c265157077_i32, %c265157077_i32, %c1212036663_i32 : tensor<9x2xi32>
        %289 = math.fpowi %4, %8 : tensor<4xf32>, tensor<4xi32>
        %collapsed_47 = tensor.collapse_shape %from_elements_46 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
        %splat_48 = tensor.splat %cst_0 : tensor<4x2xf16>
        %290 = affine.load %alloc[%c13] : memref<4xi1>
        %291 = arith.maxsi %false, %extracted : i1
        %292 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4)>(%106, %22, %c9, %c8)
      }
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_44 = arith.constant 0 : i32
      %272 = vector.transfer_read %alloc_7[%c10, %147], %c0_i32_44 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<4x2xi32>, vector<2xi32>
      %273 = arith.ceildivsi %c518060233_i32, %c1268726765_i32 : i32
      %274 = math.atan2 %192, %192 : tensor<4x4xf32>
      %275 = math.round %6 : tensor<2xf16>
      %276 = math.ctlz %c265157077_i32 : i32
      %extracted_45 = tensor.extract %from_elements[%c2] : tensor<4xi1>
      %277 = math.fpowi %cst, %c265157077_i32 : f32, i32
      scf.index_switch %c7 
      case 1 {
        %279 = bufferization.to_tensor %alloc_15 : memref<2xi64>
        %collapsed_46 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
        %splat_47 = tensor.splat %extracted : tensor<4x2xi1>
        %280 = math.cos %cst_5 : f32
        %alloc_48 = memref.alloc() : memref<2x2xi16>
        %281 = tensor.empty() : tensor<9x2xi16>
        %282 = linalg.matmul ins(%13, %alloc_48 : tensor<9x2xi16>, memref<2x2xi16>) outs(%281 : tensor<9x2xi16>) -> tensor<9x2xi16>
        %283 = affine.max affine_map<(d0, d1, d2) -> (-(d1 mod 16 - 64), (d1 mod 16) * 64)>(%c11, %89, %115)
        %284 = arith.remui %c518060233_i32, %c1212036663_i32 : i32
        %285 = arith.addf %cst_2, %cst_4 : f32
        %286 = math.cos %6 : tensor<2xf16>
        %287 = math.fpowi %4, %8 : tensor<4xf32>, tensor<4xi32>
        %288 = vector.bitcast %74 : vector<2xi16> to vector<2xi16>
        %289 = vector.broadcast %false : i1 to vector<11x11xi1>
        %290 = vector.outerproduct %67, %66, %289 {kind = #vector.kind<or>} : vector<11xi1>, vector<11xi1>
        %291 = math.tan %1 : tensor<4x2xf16>
        %292 = arith.shrsi %extracted, %true_27 : i1
        %293 = vector.flat_transpose %123 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %294 = math.tan %transposed : tensor<2x4xf32>
        scf.yield
      }
      case 2 {
        %279 = math.cos %4 : tensor<4xf32>
        %280 = vector.broadcast %c5 : index to vector<9xindex>
        %281 = vector.broadcast %cst_1 : f16 to vector<9xf16>
        vector.scatter %alloc_10[%c0, %c1] [%280], %150, %281 : memref<4x2xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %282 = arith.cmpi sgt, %157, %c172817522_i64 : i64
        %283 = math.tan %cst_5 : f32
        %284 = arith.ceildivsi %34, %true_27 : i1
        %285 = bufferization.clone %186 : memref<9x2xi1> to memref<9x2xi1>
        memref.assume_alignment %alloc_12, 16 : memref<4xi64>
        %286 = math.fma %cst_5, %cst, %cst : f32
        %287 = affine.min affine_map<(d0) -> (d0, ((((d0 floordiv 64) ceildiv 128) floordiv 128) * 16) floordiv 64, (d0 floordiv 64) ceildiv 128)>(%c7)
        %288 = index.maxu %c8, %c11
        %289 = math.powf %cst_1, %cst_1 : f16
        %290 = arith.xori %c518060233_i32, %c1212036663_i32 : i32
        %291 = math.fpowi %5, %101 : tensor<4x2xf32>, tensor<4x2xi32>
        %292 = arith.mulf %cst_2, %cst_2 : f32
        %293 = vector.broadcast %cst_2 : f32 to vector<9x2xf32>
        %294 = vector.fma %293, %293, %293 : vector<9x2xf32>
        %295 = vector.broadcast %cst_0 : f16 to vector<2xf16>
        %296 = vector.maskedload %alloc_19[%c1], %189, %295 : memref<4xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        scf.yield
      }
      case 3 {
        %279 = bufferization.to_tensor %191 : memref<4x2xi16>
        %280 = math.fpowi %cst_5, %c518060233_i32 : f32, i32
        %281 = arith.maxf %cst_1, %cst_1 : f16
        %282 = math.cos %5 : tensor<4x2xf32>
        %283 = index.maxu %c7, %c6
        %284 = memref.load %186[%c8, %c0] : memref<9x2xi1>
        %285 = index.divs %185, %c8
        %286 = math.tan %18 : tensor<2x4xf32>
        %287 = arith.mulf %cst_0, %cst_3 : f16
        %288 = math.cos %cst_1 : f16
        %289 = math.rsqrt %18 : tensor<2x4xf32>
        %290 = vector.broadcast %c172817522_i64 : i64 to vector<i64>
        %291 = vector.transfer_write %290, %55[%80] : vector<i64>, tensor<4xi64>
        %c26100_i16 = arith.constant 26100 : i16
        %292 = math.fpowi %1, %splat_35 : tensor<4x2xf16>, tensor<4x2xi32>
        %293 = math.fma %from_elements_26, %from_elements_26, %from_elements_26 : tensor<2xf32>
        %294 = vector.bitcast %140 : vector<4xi16> to vector<4xi16>
        scf.yield
      }
      case 4 {
        %279 = vector.broadcast %cst : f32 to vector<4x2xf32>
        %280 = vector.fma %279, %279, %279 : vector<4x2xf32>
        %extracted_46 = tensor.extract %136[%c0] : tensor<2xi32>
        %281 = arith.xori %c1268726765_i32, %c0_i32 : i32
        %282 = vector.broadcast %cst : f32 to vector<2xf32>
        %283 = vector.fma %282, %282, %282 : vector<2xf32>
        %284 = vector.create_mask %c3, %125 : vector<9x2xi1>
        memref.assume_alignment %69, 1 : memref<9x2xi16>
        %285 = arith.remui %extracted, %34 : i1
        %286 = affine.load %alloc_8[%c8] : memref<2xf32>
        %287 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %splat_47 = tensor.splat %c518060233_i32 : tensor<4xi32>
        %288 = math.log1p %cst_1 : f16
        %expanded_48 = tensor.expand_shape %6 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
        %splat_49 = tensor.splat %extracted : tensor<4xi1>
        %289 = math.sqrt %cst_0 : f16
        %290 = arith.cmpi uge, %c13810_i16, %c13810_i16 : i16
        %291 = vector.extract %94[1] : vector<2xi64>
        scf.yield
      }
      default {
        %279 = vector.broadcast %125 : index to vector<9xindex>
        %280 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        vector.scatter %alloc_8[%c1] [%279], %150, %280 : memref<2xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %281 = math.atan2 %18, %transposed : tensor<2x4xf32>
        %282 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 64)>(%81, %c0, %c12)
        %283 = arith.remf %cst_5, %cst : f32
        %284 = vector.broadcast %c9 : index to vector<11xindex>
        vector.scatter %alloc[%c0] [%284], %67, %67 : memref<4xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
        %285 = arith.maxf %cst, %cst_2 : f32
        %286 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%c12, %185, %c9)
        %287 = math.ipowi %178, %c32058_i16 : i16
        %288 = vector.load %alloc_10[%c3, %c0] : memref<4x2xf16>, vector<9x2xf16>
        %289 = arith.maxsi %c518060233_i32, %c0_i32 : i32
        %290 = bufferization.clone %76 : memref<4xi1> to memref<4xi1>
        %from_elements_46 = tensor.from_elements %c1268726765_i32, %c0_i32, %c1268726765_i32, %c265157077_i32 : tensor<4xi32>
        %291 = arith.cmpi eq, %c13810_i16, %c13810_i16 : i16
        %292 = math.absf %cst_2 : f32
        %from_elements_47 = tensor.from_elements %cst_4, %cst_5, %cst_4, %cst_5, %cst_4, %cst_2, %cst_5, %cst : tensor<4x2xf32>
        %293 = affine.load %alloc_17[%c11, %c7] : memref<4x2xi1>
      }
      %278 = vector.shuffle %91, %91 [1, 3, 6] : vector<4x2xi64>, vector<4x2xi64>
      scf.yield %extracted : i1
    }
    default {
      %267 = arith.minf %cst_2, %cst_2 : f32
      %268 = affine.load %alloc_21[] : memref<i16>
      %269 = index.divu %c0, %c12
      %270 = vector.broadcast %c518060233_i32 : i32 to vector<1x1xi32>
      %271 = vector.outerproduct %162, %162, %270 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
      %272 = math.sqrt %cst_1 : f16
      %273 = arith.remui %c265157077_i32, %c1268726765_i32 : i32
      %274 = bufferization.to_tensor %alloc_15 : memref<2xi64>
      %275 = memref.load %alloc_16[%c3, %c1] : memref<9x2xi16>
      %276 = index.maxu %c10, %80
      %277 = math.round %21 : tensor<f32>
      %278 = math.tanh %6 : tensor<2xf16>
      %279 = arith.addi %34, %true_27 : i1
      %alloc_44 = memref.alloc() : memref<2x4xf32>
      memref.tensor_store %transposed, %alloc_44 : memref<2x4xf32>
      %280 = math.exp2 %1 : tensor<4x2xf16>
      scf.index_switch %c8 
      case 1 {
        %282 = math.fpowi %5, %splat_35 : tensor<4x2xf32>, tensor<4x2xi32>
        %283 = math.log2 %cst : f32
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 32)>(%147, %125, %75)
        %cast_45 = tensor.cast %6 : tensor<2xf16> to tensor<?xf16>
        %285 = vector.broadcast %147 : index to vector<2xindex>
        vector.scatter %alloc_21[] [%285], %189, %73 : memref<i16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %286 = math.rsqrt %cst_5 : f32
        %287 = index.sizeof
        %288 = vector.reduction <xor>, %94 : vector<2xi64> into i64
        %289 = bufferization.to_tensor %alloc_15 : memref<2xi64>
        %290 = arith.minsi %c1212036663_i32, %c518060233_i32 : i32
        %291 = math.ctlz %9 : tensor<9x2xi32>
        %292 = math.log1p %cst : f32
        %293 = arith.remf %cst, %cst : f32
        %294 = arith.addi %178, %178 : i16
        %295 = vector.matrix_multiply %23, %23 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %296 = arith.shrsi %c32058_i16, %c32058_i16 : i16
        scf.yield
      }
      case 2 {
        %282 = bufferization.clone %191 : memref<4x2xi16> to memref<4x2xi16>
        %splat_45 = tensor.splat %cst_3 : tensor<2xf16>
        %283 = math.atan2 %splat_45, %6 : tensor<2xf16>
        %284 = math.expm1 %21 : tensor<f32>
        %285 = affine.max affine_map<(d0, d1, d2, d3) -> (d2)>(%c8, %115, %269, %c1)
        %286 = math.floor %cst_0 : f16
        %287 = bufferization.clone %alloc_6 : memref<9x2xf32> to memref<9x2xf32>
        %288 = arith.xori %c1268726765_i32, %c1268726765_i32 : i32
        %289 = math.ceil %cst_0 : f16
        %290 = index.casts %true_27 : i1 to index
        %291 = arith.addi %c-11559_i16, %268 : i16
        %expanded_46 = tensor.expand_shape %12 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %292 = arith.shrsi %c1212036663_i32, %c265157077_i32 : i32
        %293 = vector.create_mask %c3 : vector<4xi1>
        %294 = math.round %1 : tensor<4x2xf16>
        %295 = math.floor %cst_0 : f16
        scf.yield
      }
      case 3 {
        %282 = math.floor %5 : tensor<4x2xf32>
        %283 = vector.broadcast %cst : f32 to vector<2xf32>
        %284 = memref.load %alloc_12[%c0] : memref<4xi64>
        %285 = affine.max affine_map<(d0) -> (d0 floordiv 32)>(%115)
        %286 = bufferization.clone %alloc_8 : memref<2xf32> to memref<2xf32>
        %287 = arith.remui %178, %c-11559_i16 : i16
        %false_45 = arith.constant false
        %288 = vector.transfer_read %11[%269], %false_45 : tensor<2xi1>, vector<i1>
        %extracted_46 = tensor.extract %3[%c1] : tensor<2xi16>
        %inserted_47 = tensor.insert %c-11559_i16 into %7[%c1] : tensor<4xi16>
        %289 = arith.xori %c32058_i16, %178 : i16
        %290 = arith.remui %true, %true_27 : i1
        %extracted_48 = tensor.extract %112[%c2, %c1] : tensor<9x4xi16>
        %291 = index.maxs %c8, %201
        %collapsed_49 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
        %292 = arith.remui %true_27, %true : i1
        %293 = arith.maxsi %268, %c32058_i16 : i16
        scf.yield
      }
      default {
        %282 = arith.divf %cst_3, %cst_3 : f16
        %283 = arith.ceildivsi %true_27, %extracted : i1
        %284 = vector.broadcast %cst : f32 to vector<4xf32>
        %285 = vector.fma %284, %284, %284 : vector<4xf32>
        %286 = vector.broadcast %cst_0 : f16 to vector<9x2xf16>
        %287 = vector.broadcast %c265157077_i32 : i32 to vector<9x2xi32>
        %288 = vector.gather %alloc_19[%c3] [%287], %65, %286 : memref<4xf16>, vector<9x2xi32>, vector<9x2xi1>, vector<9x2xf16> into vector<9x2xf16>
        %collapsed_45 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x2xf16> into tensor<8xf16>
        %289 = index.sub %89, %c5
        %290 = index.castu %22 : index to i32
        %291 = arith.mulf %cst_0, %cst_1 : f16
        %292 = arith.shrui %extracted, %extracted : i1
        %extracted_46 = tensor.extract %10[%c1] : tensor<4xi16>
        %293 = vector.flat_transpose %140 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %294 = math.rsqrt %cst : f32
        %295 = arith.divui %c518060233_i32, %c518060233_i32 : i32
        %296 = math.tan %transposed : tensor<2x4xf32>
        %297 = tensor.empty() : tensor<2x4xi32>
        %298 = math.fpowi %transposed, %297 : tensor<2x4xf32>, tensor<2x4xi32>
        %299 = index.maxs %107, %107
      }
      %281 = memref.alloca_scope  -> (memref<4x2xi16>) {
        %c48416534_i64 = arith.constant 48416534 : i64
        memref.tensor_store %3, %alloc_13 : memref<2xi16>
        %alloca_45 = memref.alloca() : memref<9x2xi32>
        %282 = math.rsqrt %transposed : tensor<2x4xf32>
        memref.assume_alignment %186, 8 : memref<9x2xi1>
        %283 = arith.remf %cst_3, %cst_1 : f16
        %284 = math.fma %20, %21, %20 : tensor<f32>
        %285 = arith.remf %cst, %cst_2 : f32
        %false_46 = index.bool.constant false
        %286 = math.fma %cst_1, %cst_0, %cst_1 : f16
        %287 = math.atan %21 : tensor<f32>
        %288 = arith.xori %268, %c32058_i16 : i16
        %289 = vector.broadcast %c265157077_i32 : i32 to vector<i32>
        %290 = vector.transfer_write %289, %splat_35[%276, %125] : vector<i32>, tensor<4x2xi32>
        %291 = math.exp2 %cst_2 : f32
        %alloc_47 = memref.alloc() : memref<9x2xi32>
        %292 = index.ceildivs %86, %64
        %extracted_48 = tensor.extract %10[%c1] : tensor<4xi16>
        %293 = vector.extract %91[0] : vector<4x2xi64>
        %294 = vector.shuffle %97, %97 [0, 1] : vector<i1>, vector<i1>
        %295 = arith.maxsi %c172817522_i64, %157 : i64
        %296 = math.cos %splat : tensor<4x2xf32>
        %297 = arith.ceildivsi %c265157077_i32, %c1268726765_i32 : i32
        %c0_i32 = arith.constant 0 : i32
        %298 = vector.transfer_read %collapsed[%c11], %c0_i32 : tensor<18xi32>, vector<i32>
        memref.assume_alignment %alloc_17, 4 : memref<4x2xi1>
        %299 = math.powf %192, %192 : tensor<4x4xf32>
        %300 = index.sizeof
        %false_49 = index.bool.constant false
        %301 = arith.xori %false_46, %34 : i1
        %302 = index.maxs %c8, %106
        %303 = memref.load %29[%c0] : memref<2xi1>
        %304 = arith.ceildivsi %c-11559_i16, %c-11559_i16 : i16
        %305 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%185, %c14, %142, %89)
        memref.alloca_scope.return %191 : memref<4x2xi16>
      }
      scf.yield %extracted : i1
    }
    %204 = math.floor %21 : tensor<f32>
    %205 = vector.broadcast %46 : index to vector<2xindex>
    %206 = vector.broadcast %cst_3 : f16 to vector<2xf16>
    vector.scatter %alloc_10[%c2, %c1] [%205], %189, %206 : memref<4x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
    %207 = math.sqrt %cst : f32
    %208 = math.fpowi %1, %splat_35 : tensor<4x2xf16>, tensor<4x2xi32>
    %209 = math.rsqrt %1 : tensor<4x2xf16>
    %210 = index.casts %c10 : index to i32
    %211 = math.log1p %1 : tensor<4x2xf16>
    %212 = arith.mulf %cst_1, %cst_3 : f16
    %213 = vector.broadcast %178 : i16 to vector<i16>
    vector.transfer_write %213, %191[%c13, %c3] : vector<i16>, memref<4x2xi16>
    %alloca_39 = memref.alloca() : memref<4xf32>
    %214 = math.rsqrt %cst_5 : f32
    %215 = memref.realloc %alloc_13 : memref<2xi16> to memref<11xi16>
    %216 = math.floor %1 : tensor<4x2xf16>
    %217 = tensor.empty() : tensor<2x2xf16>
    %218 = tensor.empty() : tensor<4x2xf16>
    %219 = linalg.matmul ins(%1, %217 : tensor<4x2xf16>, tensor<2x2xf16>) outs(%218 : tensor<4x2xf16>) -> tensor<4x2xf16>
    %220 = scf.execute_region -> index {
      %extracted_44 = tensor.extract %7[%c3] : tensor<4xi16>
      %267 = math.log10 %18 : tensor<2x4xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %268 = vector.transfer_read %alloc_7[%75, %c6], %c0_i32 : memref<4x2xi32>, vector<i32>
      %269 = math.cos %cst_2 : f32
      %270 = arith.remui %true, %34 : i1
      %splat_45 = tensor.splat %true_27 : tensor<2xi1>
      %splat_46 = tensor.splat %false : tensor<2xi1>
      %271 = arith.cmpi ule, %178, %extracted_44 : i16
      %272 = vector.flat_transpose %151 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %273 = math.sqrt %218 : tensor<4x2xf16>
      %274 = math.floor %cst_0 : f16
      %275 = arith.addi %c32058_i16, %c13810_i16 : i16
      %cst_47 = arith.constant 1.000000e+00 : f32
      %cst_48 = arith.constant 0.000000e+00 : f32
      %276 = vector.transfer_read %transposed[%115, %86], %cst_48 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<2x4xf32>, vector<2xf32>
      %277 = math.log %192 : tensor<4x4xf32>
      %278 = arith.addi %extracted, %extracted : i1
      %279 = vector.matrix_multiply %56, %56 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
      scf.yield %c6 : index
    }
    %221 = index.ceildivs %c7, %64
    %222 = memref.alloca_scope  -> (memref<9x2xi16>) {
      %267 = tensor.empty() : tensor<2x4xi16>
      %268 = tensor.empty() : tensor<9x4xi16>
      %269 = linalg.matmul ins(%13, %267 : tensor<9x2xi16>, tensor<2x4xi16>) outs(%268 : tensor<9x4xi16>) -> tensor<9x4xi16>
      %270 = arith.addi %c172817522_i64, %c172817522_i64 : i64
      %cast_44 = tensor.cast %11 : tensor<2xi1> to tensor<?xi1>
      %271 = affine.if affine_set<(d0, d1) : (d1 * 16 == 0, ((d0 - d1) * 129) ceildiv 64 >= 0)>(%c3, %c8) -> i16 {
        %301 = arith.shrsi %c32058_i16, %c13810_i16 : i16
        %302 = math.exp2 %6 : tensor<2xf16>
        %cast_47 = tensor.cast %4 : tensor<4xf32> to tensor<?xf32>
        %303 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        %304 = vector.maskedload %alloc_6[%c1, %c1], %57, %303 : memref<9x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        memref.tensor_store %3, %alloc_13 : memref<2xi16>
        %305 = math.floor %192 : tensor<4x4xf32>
        %306 = math.log1p %from_elements_26 : tensor<2xf32>
        %307 = math.tan %1 : tensor<4x2xf16>
        affine.yield %c13810_i16 : i16
      } else {
        %301 = arith.shrsi %c1212036663_i32, %c1268726765_i32 : i32
        %302 = memref.load %54[%c0, %c0] : memref<4x2xi64>
        %303 = vector.broadcast %c3 : index to vector<4xindex>
        %304 = vector.broadcast %34 : i1 to vector<4xi1>
        vector.scatter %69[%c7, %c1] [%303], %304, %140 : memref<9x2xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %305 = vector.extract_strided_slice %140 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi16> to vector<3xi16>
        %306 = math.copysign %cst, %cst_5 : f32
        %307 = math.log2 %218 : tensor<4x2xf16>
        %308 = memref.load %alloc_12[%c0] : memref<4xi64>
        %309 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c2, %c7, %c14)
        affine.yield %178 : i16
      }
      %272 = memref.realloc %alloc : memref<4xi1> to memref<11xi1>
      %273 = math.log2 %from_elements_26 : tensor<2xf32>
      %274 = math.rsqrt %4 : tensor<4xf32>
      %275 = vector.extract_strided_slice %189 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
      scf.execute_region {
        %301 = math.copysign %cst, %cst_2 : f32
        %302 = index.maxs %37, %c9
        %303 = arith.floordivsi %extracted_23, %c32058_i16 : i16
        %304 = vector.reduction <minsi>, %184 : vector<2xi64> into i64
        %305 = vector.broadcast %true_27 : i1 to vector<4x2xi1>
        %306 = index.add %22, %75
        %307 = math.copysign %cst_2, %cst_2 : f32
        %308 = bufferization.to_memref %4 : memref<4xf32>
        %309 = arith.negf %cst : f32
        %splat_47 = tensor.splat %c13810_i16 : tensor<4xi16>
        %310 = vector.reduction <mul>, %132 : vector<1xi32> into i32
        %311 = math.fma %cst_0, %cst_0, %cst_1 : f16
        %cast_48 = tensor.cast %from_elements : tensor<4xi1> to tensor<?xi1>
        %inserted_49 = tensor.insert %extracted_23 into %10[%c0] : tensor<4xi16>
        %312 = vector.bitcast %119 : vector<1xf32> to vector<1xf32>
        %313 = arith.muli %c1212036663_i32, %c1268726765_i32 : i32
        scf.yield
      }
      %276 = vector.broadcast %extracted : i1 to vector<2x2xi1>
      %277 = vector.outerproduct %57, %57, %276 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
      %278 = bufferization.to_tensor %alloc_12 : memref<4xi64>
      %279 = math.fpowi %from_elements_26, %136 : tensor<2xf32>, tensor<2xi32>
      %c-1559_i16 = arith.constant -1559 : i16
      %280 = index.castu %true_27 : i1 to index
      %281 = arith.negf %cst_3 : f16
      %282 = math.atan %4 : tensor<4xf32>
      %alloc_45 = memref.alloc() : memref<i16>
      memref.copy %alloc_21, %alloc_45 : memref<i16> to memref<i16>
      %283 = math.log %1 : tensor<4x2xf16>
      memref.assume_alignment %122, 16 : memref<2xf32>
      %284 = arith.shli %extracted_23, %c-11559_i16 : i16
      %285 = vector.broadcast %c2 : index to vector<9xindex>
      %286 = vector.broadcast %cst_3 : f16 to vector<9xf16>
      vector.scatter %alloc_10[%c2, %c1] [%285], %151, %286 : memref<4x2xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      %287 = index.casts %220 : index to i32
      %c263524312_i32 = arith.constant 263524312 : i32
      scf.if %false {
        %301 = arith.floordivsi %178, %178 : i16
        %302 = affine.min affine_map<(d0) -> (-d0 - 57, d0 mod 16)>(%c10)
        %303 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %304 = vector.broadcast %86 : index to vector<9xindex>
        vector.scatter %alloc_20[%c1] [%304], %150, %150 : memref<2xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
        %305 = vector.insertelement %c-11559_i16, %213[] : vector<i16>
        %306 = index.add %37, %c13
        %307 = memref.load %alloc_11[%c1] : memref<2xi1>
        %308 = index.add %201, %107
      } else {
        %301 = vector.insertelement %c-11559_i16, %213[] : vector<i16>
        %302 = arith.divf %cst_1, %cst_3 : f16
        %303 = bufferization.to_memref %4 : memref<4xf32>
        %304 = index.maxu %89, %115
        %extracted_47 = tensor.extract %3[%c0] : tensor<2xi16>
        %305 = math.log2 %1 : tensor<4x2xf16>
        %306 = vector.multi_reduction <xor>, %275, %34 [0] : vector<2xi1> to i1
        %307 = arith.minf %cst_2, %cst : f32
      }
      %288 = vector.multi_reduction <minui>, %162, %132 [] : vector<1xi32> to vector<1xi32>
      %289 = index.floordivs %86, %c13
      %290 = vector.broadcast %extracted_23 : i16 to vector<4x2xi16>
      %291 = vector.broadcast %false : i1 to vector<4x2xi1>
      %292 = vector.broadcast %c1268726765_i32 : i32 to vector<4x2xi32>
      %293 = vector.gather %alloc_13[%64] [%292], %291, %290 : memref<2xi16>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi16> into vector<4x2xi16>
      %294 = bufferization.to_memref %cast_33 : memref<?xi64>
      %295 = math.roundeven %21 : tensor<f32>
      %collapsed_46 = tensor.collapse_shape %9 [[0, 1]] : tensor<9x2xi32> into tensor<18xi32>
      %296 = vector.broadcast %c172817522_i64 : i64 to vector<4xi64>
      %297 = vector.broadcast %extracted : i1 to vector<4xi1>
      %298 = vector.broadcast %c1212036663_i32 : i32 to vector<4xi32>
      %299 = vector.gather %15[%c2] [%298], %297, %296 : tensor<2xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %300 = vector.broadcast %89 : index to vector<4xindex>
      vector.scatter %alloc_18[%c0] [%300], %297, %299 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      memref.alloca_scope.return %69 : memref<9x2xi16>
    }
    %223 = vector.maskedload %29[%c0], %66, %66 : memref<2xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
    %224 = index.casts %true : i1 to index
    %225 = memref.load %alloc[%c2] : memref<4xi1>
    %226 = bufferization.clone %222 : memref<9x2xi16> to memref<9x2xi16>
    %227 = arith.floordivsi %true_27, %true_27 : i1
    %228 = index.sizeof
    %229 = vector.insert %cst, %23 [5] : f32 into vector<11xf32>
    %230 = index.castu %37 : index to i32
    %231 = vector.extract_strided_slice %140 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi16> to vector<4xi16>
    %232 = arith.addi %c1268726765_i32, %c265157077_i32 : i32
    %expanded = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<2x4xf32> into tensor<2x4x1xf32>
    %233 = arith.xori %157, %157 : i64
    %234 = math.sqrt %from_elements_26 : tensor<2xf32>
    %235 = arith.mulf %cst_1, %cst_0 : f16
    %236 = arith.mulf %cst_0, %cst_3 : f16
    %237 = math.absf %5 : tensor<4x2xf32>
    %238 = index.add %22, %c7
    %239 = arith.remui %c1212036663_i32, %c265157077_i32 : i32
    %240 = index.casts %c172817522_i64 : i64 to index
    %241 = arith.shrsi %c1212036663_i32, %c518060233_i32 : i32
    %242 = arith.shrsi %extracted, %false : i1
    %243 = vector.flat_transpose %66 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
    %244 = arith.minui %178, %178 : i16
    %245 = memref.realloc %29 : memref<2xi1> to memref<4xi1>
    %246 = math.atan2 %cst, %cst : f32
    %247 = math.log %from_elements_26 : tensor<2xf32>
    %248 = bufferization.to_tensor %alloc_15 : memref<2xi64>
    %inserted_40 = tensor.insert %cst into %expanded[%c1, %c3, %c0] : tensor<2x4x1xf32>
    %alloca_41 = memref.alloca() : memref<4xi1>
    %249 = math.log1p %from_elements_26 : tensor<2xf32>
    %splat_42 = tensor.splat %c1212036663_i32 : tensor<4xi32>
    %250 = math.exp2 %6 : tensor<2xf16>
    %251 = arith.shrsi %true, %extracted : i1
    %252 = arith.shli %c1268726765_i32, %c1212036663_i32 : i32
    %253 = vector.broadcast %c-11559_i16 : i16 to vector<4x4xi16>
    %254 = vector.outerproduct %231, %231, %253 {kind = #vector.kind<or>} : vector<4xi16>, vector<4xi16>
    %255 = arith.ceildivsi %true_27, %extracted : i1
    %256 = math.floor %cst_5 : f32
    %257 = arith.floordivsi %34, %extracted : i1
    %258 = vector.extract_strided_slice %119 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %259 = vector.transpose %162, [0] : vector<1xi32> to vector<1xi32>
    %260 = math.exp2 %5 : tensor<4x2xf32>
    %261 = arith.addi %c265157077_i32, %c518060233_i32 : i32
    %262 = arith.divui %false, %false : i1
    %263 = tensor.empty() : tensor<4x2xf32>
    %264 = linalg.copy ins(%5 : tensor<4x2xf32>) outs(%263 : tensor<4x2xf32>) -> tensor<4x2xf32>
    %alloc_43 = memref.alloc() : memref<4x9xi16>
    linalg.transpose ins(%112 : tensor<9x4xi16>) outs(%alloc_43 : memref<4x9xi16>) permutation = [1, 0] 
    %265 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%11 : tensor<2xi1>) outs(%265 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %267 = affine.for %arg1 = 0 to 68 iter_args(%arg2 = %c14) -> (index) {
          affine.yield %240 : index
        }
        memref.tensor_store %1, %alloc_10 : memref<4x2xf16>
        %268 = arith.cmpf one, %cst_2, %cst_4 : f32
        %269 = index.maxs %228, %c13
        %270 = arith.muli %c518060233_i32, %c265157077_i32 : i32
        %271 = tensor.empty() : tensor<2x11xf16>
        %272 = tensor.empty() : tensor<4x11xf16>
        %273 = linalg.matmul ins(%218, %271 : tensor<4x2xf16>, tensor<2x11xf16>) outs(%272 : tensor<4x11xf16>) -> tensor<4x11xf16>
        %274 = math.log %splat : tensor<4x2xf32>
        %275 = arith.addi %178, %c13810_i16 : i16
        %true_44 = arith.constant true
        linalg.yield %true_44 : i1
      }
    scf.parallel (%arg1, %arg2) = (%c8, %22) to (%185, %181) step (%c7, %c14) {
      %c1509592573_i64 = arith.constant 1509592573 : i64
      %collapsed_44 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x2xf32> into tensor<8xf32>
      %267 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %267, %76[%c8] : vector<i1>, memref<4xi1>
      %268 = math.round %collapsed_44 : tensor<8xf32>
      %269 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 - 64)) floordiv 64)>(%107, %c12, %c4)
      %270 = vector.broadcast %cst_3 : f16 to vector<9x2xf16>
      %271 = math.log10 %1 : tensor<4x2xf16>
      %272 = index.maxs %106, %81
      %273 = arith.ceildivsi %extracted_23, %c32058_i16 : i16
      %274 = math.floor %expanded : tensor<2x4x1xf32>
      %275 = vector.broadcast %cst : f32 to vector<11x11xf32>
      %276 = vector.outerproduct %19, %23, %275 {kind = #vector.kind<mul>} : vector<11xf32>, vector<11xf32>
      %277 = arith.andi %c32058_i16, %178 : i16
      %alloc_45 = memref.alloc() : memref<4x2xf32>
      memref.tensor_store %5, %alloc_45 : memref<4x2xf32>
      %278 = math.tan %cst : f32
      %279 = vector.insertelement %157, %59[%89 : index] : vector<2xi64>
      %c17798_i16 = arith.constant 17798 : i16
      scf.yield
    }
    %266 = affine.vector_load %186[%80, %185] : memref<9x2xi1>, vector<2xi1>
    affine.vector_store %243, %76[%c5] : memref<4xi1>, vector<11xi1>
    vector.print %19 : vector<11xf32>
    vector.print %23 : vector<11xf32>
    vector.print %33 : vector<11xi32>
    vector.print %35 : vector<11xf32>
    vector.print %36 : vector<1xf32>
    vector.print %56 : vector<2xi64>
    vector.print %57 : vector<2xi1>
    vector.print %58 : vector<2xi32>
    vector.print %59 : vector<2xi64>
    vector.print %65 : vector<9x2xi1>
    vector.print %66 : vector<11xi1>
    vector.print %67 : vector<11xi1>
    vector.print %73 : vector<2xi16>
    vector.print %74 : vector<2xi16>
    vector.print %82 : vector<2xi1>
    vector.print %91 : vector<4x2xi64>
    vector.print %94 : vector<2xi64>
    vector.print %97 : vector<i1>
    vector.print %99 : vector<f32>
    vector.print %119 : vector<1xf32>
    vector.print %123 : vector<2xi64>
    vector.print %130 : vector<4xf32>
    vector.print %131 : vector<4xf32>
    vector.print %132 : vector<1xi32>
    vector.print %138 : vector<i1>
    vector.print %140 : vector<4xi16>
    vector.print %150 : vector<9xi1>
    vector.print %151 : vector<9xi1>
    vector.print %162 : vector<1xi32>
    vector.print %184 : vector<2xi64>
    vector.print %189 : vector<2xi1>
    vector.print %213 : vector<i16>
    vector.print %223 : vector<11xi1>
    vector.print %231 : vector<4xi16>
    vector.print %243 : vector<11xi1>
    vector.print %258 : vector<1xf32>
    vector.print %266 : vector<2xi1>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c172817522_i64 : i64
    vector.print %c32058_i16 : i16
    vector.print %cst_1 : f16
    vector.print %c1212036663_i32 : i32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c-11559_i16 : i16
    vector.print %c1268726765_i32 : i32
    vector.print %true : i1
    vector.print %c265157077_i32 : i32
    vector.print %cst_4 : f32
    vector.print %cst_5 : f32
    vector.print %c518060233_i32 : i32
    vector.print %c13810_i16 : i16
    vector.print %34 : i1
    vector.print %extracted : i1
    vector.print %false : i1
    vector.print %extracted_23 : i16
    vector.print %true_27 : i1
    vector.print %157 : i64
    vector.print %178 : i16
    return
  }
}
