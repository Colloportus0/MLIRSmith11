module {
  func.func nested @func1(%arg0: i16) -> vector<8xi1> {
    %true = arith.constant true
    %cst = arith.constant 0x4D9EA88B : f32
    %cst_0 = arith.constant 8.092000e+03 : f16
    %c243339535_i32 = arith.constant 243339535 : i32
    %c844_i16 = arith.constant 844 : i16
    %c1173614337_i32 = arith.constant 1173614337 : i32
    %c147688179_i64 = arith.constant 147688179 : i64
    %cst_1 = arith.constant 0x4DF31BB1 : f32
    %false = arith.constant false
    %c1768117351_i32 = arith.constant 1768117351 : i32
    %cst_2 = arith.constant 1.256800e+04 : f16
    %cst_3 = arith.constant 8.494590e+08 : f32
    %c425051238_i64 = arith.constant 425051238 : i64
    %c7995_i16 = arith.constant 7995 : i16
    %cst_4 = arith.constant 3.272000e+04 : f16
    %cst_5 = arith.constant 2.05943462E+9 : f32
    %0 = tensor.empty() : tensor<4x4x4xf16>
    %1 = tensor.empty() : tensor<8xi64>
    %2 = tensor.empty() : tensor<4x4xi64>
    %3 = tensor.empty() : tensor<4x4xi1>
    %4 = tensor.empty() : tensor<8xi1>
    %5 = tensor.empty() : tensor<8xi64>
    %6 = tensor.empty() : tensor<4x4xf16>
    %7 = tensor.empty() : tensor<8xi32>
    %8 = tensor.empty() : tensor<4x4x4xi64>
    %9 = tensor.empty() : tensor<8xi16>
    %10 = tensor.empty() : tensor<4x4xi16>
    %11 = tensor.empty() : tensor<8xi16>
    %12 = tensor.empty() : tensor<8xi32>
    %13 = tensor.empty() : tensor<8xf16>
    %14 = tensor.empty() : tensor<4x4x4xf16>
    %15 = tensor.empty() : tensor<8xf32>
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
    %alloc = memref.alloc() : memref<4x4x4xi64>
    %alloc_6 = memref.alloc() : memref<4x4xi16>
    %alloc_7 = memref.alloc() : memref<4x4x4xi32>
    %alloc_8 = memref.alloc() : memref<4x4xi64>
    %alloc_9 = memref.alloc() : memref<4x4xi64>
    %alloc_10 = memref.alloc() : memref<8xf16>
    %alloc_11 = memref.alloc() : memref<4x4x4xi16>
    %alloc_12 = memref.alloc() : memref<8xi32>
    %alloc_13 = memref.alloc() : memref<8xi1>
    %alloc_14 = memref.alloc() : memref<8xi16>
    %alloc_15 = memref.alloc() : memref<8xf16>
    %alloc_16 = memref.alloc() : memref<4x4xf16>
    %alloc_17 = memref.alloc() : memref<8xi64>
    %alloc_18 = memref.alloc() : memref<4x4xf32>
    %alloc_19 = memref.alloc() : memref<4x4xi16>
    %alloc_20 = memref.alloc() : memref<8xf32>
    %16 = tensor.empty() : tensor<4x4x4xf16>
    %17 = linalg.copy ins(%14 : tensor<4x4x4xf16>) outs(%16 : tensor<4x4x4xf16>) -> tensor<4x4x4xf16>
    %18 = tensor.empty() : tensor<8xi16>
    %transposed = linalg.transpose ins(%9 : tensor<8xi16>) outs(%18 : tensor<8xi16>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<i64>
    linalg.reduce ins(%5 : tensor<8xi64>) outs(%alloc_21 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %263 = vector.broadcast %c7995_i16 : i16 to vector<11xi16>
        %264 = vector.transfer_write %263, %10[%c9, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<4x4xi16>
        %alloc_53 = memref.alloc() : memref<4xf16>
        %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53 : memref<4xf16>) outs(%0 : tensor<4x4x4xf16>) {
        ^bb0(%in_56: f16, %out: f16):
          %false_57 = index.bool.constant false
          %269 = vector.broadcast %cst_4 : f16 to vector<f16>
          %270 = vector.transfer_write %269, %14[%c3, %c0, %c1] : vector<f16>, tensor<4x4x4xf16>
          %false_58 = arith.constant false
          %false_59 = arith.constant false
          %271 = vector.transfer_read %alloc_13[%c12], %false_59 : memref<8xi1>, vector<i1>
          %272 = vector.extract_strided_slice %263 {offsets = [0], sizes = [9], strides = [1]} : vector<11xi16> to vector<9xi16>
          %alloca_60 = memref.alloca() : memref<4x4x4xf32>
          %273 = math.powf %cst_2, %cst_2 : f16
          %274 = index.sizeof
          %275 = index.castu %c1 : index to i32
          %276 = vector.broadcast %c844_i16 : i16 to vector<11x11xi16>
          %277 = vector.outerproduct %263, %263, %276 {kind = #vector.kind<xor>} : vector<11xi16>, vector<11xi16>
          %278 = index.ceildivu %274, %c14
          %279 = vector.create_mask %c1 : vector<8xi1>
          %inserted_61 = tensor.insert %c844_i16 into %9[%c0] : tensor<8xi16>
          memref.copy %alloc_10, %alloc_15 : memref<8xf16> to memref<8xf16>
          %280 = index.divs %c11, %278
          %281 = affine.load %alloc_14[%c12] : memref<8xi16>
          %282 = index.maxu %c4, %c12
          %283 = index.add %c4, %c8
          %284 = math.cttz %2 : tensor<4x4xi64>
          %285 = math.ctpop %11 : tensor<8xi16>
          %286 = index.add %c14, %280
          %287 = tensor.empty() : tensor<4x4xi1>
          %288 = linalg.matmul ins(%3, %3 : tensor<4x4xi1>, tensor<4x4xi1>) outs(%287 : tensor<4x4xi1>) -> tensor<4x4xi1>
          %289 = tensor.empty() : tensor<4x4x4xi32>
          %290 = vector.broadcast %c1173614337_i32 : i32 to vector<4x4x4xi32>
          %291 = vector.broadcast %false_58 : i1 to vector<4x4x4xi1>
          %292 = vector.gather %289[%274, %278, %c12] [%290], %291, %290 : tensor<4x4x4xi32>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xi32> into vector<4x4x4xi32>
          %293 = math.log10 %cst_3 : f32
          %294 = math.tan %15 : tensor<8xf32>
          %295 = index.castu %c8 : index to i32
          %296 = math.fpowi %cst_2, %c1173614337_i32 : f16, i32
          %297 = math.log %15 : tensor<8xf32>
          %298 = vector.broadcast %cst_3 : f32 to vector<4x4x4xf32>
          %299 = vector.gather %15[%c9] [%290], %291, %298 : tensor<8xf32>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xf32> into vector<4x4x4xf32>
          %300 = math.exp2 %cst : f32
          %301 = math.atan2 %6, %6 : tensor<4x4xf16>
          %302 = bufferization.clone %alloc_15 : memref<8xf16> to memref<8xf16>
          %303 = bufferization.clone %alloc_19 : memref<4x4xi16> to memref<4x4xi16>
          linalg.yield %cst_2 : f16
        } -> tensor<4x4x4xf16>
        %266 = vector.extract %263[0] : vector<11xi16>
        %267 = math.powf %15, %15 : tensor<8xf32>
        %expanded_54 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<4x4x4xi64> into tensor<4x4x4x1xi64>
        %rank_55 = tensor.rank %1 : tensor<8xi64>
        memref.store %cst, %alloc_18[%c3, %c1] : memref<4x4xf32>
        %268 = arith.addi %c425051238_i64, %init : i64
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg1) = (%c3) to (%c14) step (%c12) {
      %263 = math.round %14 : tensor<4x4x4xf16>
      %264 = math.absi %5 : tensor<8xi64>
      %265 = arith.maxf %cst_0, %cst_0 : f16
      %266 = index.sizeof
      %267 = math.cttz %c844_i16 : i16
      %268 = index.maxu %c5, %c8
      %269 = arith.maxf %cst_1, %cst_5 : f32
      %270 = bufferization.to_tensor %alloc_13 : memref<8xi1>
      %271 = arith.mulf %cst_0, %cst_4 : f16
      %272 = math.log %14 : tensor<4x4x4xf16>
      %extracted_53 = tensor.extract %1[%c7] : tensor<8xi64>
      bufferization.dealloc_tensor %3 : tensor<4x4xi1>
      %273 = vector.broadcast %c844_i16 : i16 to vector<1xi16>
      %274 = vector.extract %273[0] : vector<1xi16>
      memref.tensor_store %transposed, %alloc_14 : memref<8xi16>
      %275 = vector.splat %c11 : vector<8xindex>
      %276 = arith.divsi %c844_i16, %c844_i16 : i16
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c1, %c6] : memref<4x4xi64>, vector<4xi64>
    affine.vector_store %19, %alloc_8[%c0, %c4] : memref<4x4xi64>, vector<4xi64>
    %alloc_22 = memref.alloc() : memref<8xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%alloc_12, %alloc_22 : memref<8xi32>, memref<8xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = arith.negf %cst_0 : f16
    %23 = index.ceildivs %c10, %c0
    %24 = scf.index_switch %c5 -> vector<8xi1> 
    case 1 {
      %263 = arith.remsi %c844_i16, %c7995_i16 : i16
      %inserted_53 = tensor.insert %c1173614337_i32 into %7[%c3] : tensor<8xi32>
      %264 = math.tanh %13 : tensor<8xf16>
      %265 = arith.divui %true, %false : i1
      %inserted_54 = tensor.insert %c1173614337_i32 into %12[%c6] : tensor<8xi32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %c425051238_i64 : vector<4xi64>, vector<4xi64> into i64
      %267 = arith.ori %false, %false : i1
      %268 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
      %269 = math.ceil %13 : tensor<8xf16>
      %270 = arith.divf %cst_1, %cst_3 : f32
      %271 = index.casts %c13 : index to i32
      %272 = index.castu %c1173614337_i32 : i32 to index
      %rank_55 = tensor.rank %14 : tensor<4x4x4xf16>
      %273 = arith.mulf %cst_4, %cst_4 : f16
      %extracted_56 = tensor.extract %4[%c1] : tensor<8xi1>
      %274 = arith.maxui %extracted_56, %extracted_56 : i1
      %275 = vector.broadcast %true : i1 to vector<8xi1>
      scf.yield %275 : vector<8xi1>
    }
    case 2 {
      %263 = math.absi %3 : tensor<4x4xi1>
      %264 = math.round %15 : tensor<8xf32>
      %265 = vector.broadcast %cst_5 : f32 to vector<4x4x4xf32>
      %266 = vector.fma %265, %265, %265 : vector<4x4x4xf32>
      %267 = arith.shrsi %true, %true : i1
      %268 = math.tan %13 : tensor<8xf16>
      %269 = index.divu %c2, %c1
      %270 = tensor.empty() : tensor<4x4xi64>
      %271 = linalg.matmul ins(%2, %2 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%270 : tensor<4x4xi64>) -> tensor<4x4xi64>
      %272 = math.fma %14, %0, %0 : tensor<4x4x4xf16>
      %273 = arith.maxui %true, %true : i1
      %274 = index.floordivs %c11, %269
      %generated_53 = tensor.generate %c2, %c14 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %280 = math.ipowi %11, %9 : tensor<8xi16>
        %281 = index.divu %c10, %23
        %282 = arith.minsi %true, %false : i1
        %283 = math.round %cst_0 : f16
        tensor.yield %c1173614337_i32 : i32
      } : tensor<?x?x4xi32>
      %275 = math.absi %9 : tensor<8xi16>
      %276 = math.powf %cst_5, %cst_5 : f32
      memref.copy %alloc_12, %alloc_22 : memref<8xi32> to memref<8xi32>
      %277 = index.sizeof
      %278 = arith.mulf %cst, %cst_1 : f32
      %279 = vector.broadcast %true : i1 to vector<8xi1>
      scf.yield %279 : vector<8xi1>
    }
    case 3 {
      %263 = arith.divui %c844_i16, %c844_i16 : i16
      %264 = math.ipowi %12, %12 : tensor<8xi32>
      %265 = index.divu %c7, %c0
      %generated_53 = tensor.generate %c1 {
      ^bb0(%arg1: index):
        %280 = affine.load %alloc_15[%c11] : memref<8xf16>
        %281 = arith.negf %cst_0 : f16
        %282 = arith.shrsi %true, %true : i1
        %283 = affine.apply affine_map<(d0, d1) -> (d0 + 128)>(%c14, %c11)
        tensor.yield %false : i1
      } : tensor<?xi1>
      %266 = arith.negf %cst_4 : f16
      %267 = arith.remf %cst_4, %cst_4 : f16
      %268 = vector.splat %cst_1 : vector<4x4xf32>
      %269 = math.exp %14 : tensor<4x4x4xf16>
      %270 = math.tanh %15 : tensor<8xf32>
      %271 = vector.broadcast %cst_0 : f16 to vector<8xf16>
      %272 = vector.broadcast %true : i1 to vector<8xi1>
      %273 = vector.broadcast %c1173614337_i32 : i32 to vector<8xi32>
      %274 = vector.gather %6[%c9, %265] [%273], %272, %271 : tensor<4x4xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %true_54 = index.bool.constant true
      %275 = math.rsqrt %cst_2 : f16
      %276 = vector.multi_reduction <minf>, %271, %cst_4 [0] : vector<8xf16> to f16
      %277 = math.copysign %15, %15 : tensor<8xf32>
      %278 = vector.shuffle %19, %19 [1, 3, 6, 7] : vector<4xi64>, vector<4xi64>
      %279 = tensor.empty() : tensor<4x4x4xf16>
      %mapped_55 = linalg.map ins(%16, %0, %16 : tensor<4x4x4xf16>, tensor<4x4x4xf16>, tensor<4x4x4xf16>) outs(%279 : tensor<4x4x4xf16>)
        (%in: f16, %in_56: f16, %in_57: f16) {
          %280 = arith.negf %cst_0 : f16
          %281 = vector.flat_transpose %274 {columns = 4 : i32, rows = 2 : i32} : vector<8xf16> -> vector<8xf16>
          %282 = vector.broadcast %cst_2 : f16 to vector<8xf16>
          bufferization.dealloc_tensor %12 : tensor<8xi32>
          %283 = math.cttz %4 : tensor<8xi1>
          %284 = math.floor %cst_5 : f32
          %285 = index.floordivs %c15, %c3
          %286 = arith.ceildivsi %c243339535_i32, %c1173614337_i32 : i32
          %287 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%c4, %c11, %c10)
          %288 = index.ceildivu %265, %c1
          %289 = arith.shrsi %c7995_i16, %c7995_i16 : i16
          %290 = vector.broadcast %cst_5 : f32 to vector<4x11xf32>
          %291 = vector.broadcast %cst_1 : f32 to vector<11xf32>
          %dest, %accumulated_value = vector.scan <mul>, %290, %291 {inclusive = false, reduction_dim = 0 : i64} : vector<4x11xf32>, vector<11xf32>
          %292 = index.divu %c6, %c12
          %293 = vector.broadcast %c147688179_i64 : i64 to vector<4x4xi64>
          %294 = vector.outerproduct %19, %19, %293 {kind = #vector.kind<mul>} : vector<4xi64>, vector<4xi64>
          %295 = vector.flat_transpose %271 {columns = 4 : i32, rows = 2 : i32} : vector<8xf16> -> vector<8xf16>
          %296 = memref.atomic_rmw addf %cst_1, %alloc_18[%c2, %c3] : (f32, memref<4x4xf32>) -> f32
          %297 = bufferization.to_tensor %alloc_17 : memref<8xi64>
          %298 = vector.extract %271[0] : vector<8xf16>
          %299 = bufferization.clone %alloc_18 : memref<4x4xf32> to memref<4x4xf32>
          %extracted_58 = tensor.extract %20[] : tensor<i32>
          %expanded_59 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<4x4x4xi64> into tensor<4x4x4x1xi64>
          %300 = math.absf %in_57 : f16
          %301 = math.tan %0 : tensor<4x4x4xf16>
          %302 = vector.broadcast %276 : f16 to vector<f16>
          %303 = vector.transfer_write %302, %6[%c15, %c14] : vector<f16>, tensor<4x4xf16>
          %304 = vector.splat %c6 : vector<8xindex>
          %305 = index.ceildivu %c14, %c14
          %306 = vector.matrix_multiply %272, %272 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
          %307 = bufferization.clone %alloc_12 : memref<8xi32> to memref<8xi32>
          %308 = vector.reduction <add>, %281 : vector<8xf16> into f16
          %309 = arith.floordivsi %extracted_58, %c1173614337_i32 : i32
          %310 = arith.shrsi %c1768117351_i32, %c1173614337_i32 : i32
          %311 = vector.broadcast %276 : f16 to vector<f16>
          %312 = vector.transfer_write %311, %13[%c15] : vector<f16>, tensor<8xf16>
          %cst_60 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_60 : f16
        }
      scf.yield %272 : vector<8xi1>
    }
    default {
      %263 = vector.extract %19[2] : vector<4xi64>
      %264 = tensor.empty() : tensor<4x4xi16>
      %265 = linalg.matmul ins(%10, %10 : tensor<4x4xi16>, tensor<4x4xi16>) outs(%264 : tensor<4x4xi16>) -> tensor<4x4xi16>
      %266 = arith.xori %c147688179_i64, %c147688179_i64 : i64
      %267 = affine.apply affine_map<(d0, d1) -> (d0 + 128)>(%c11, %c3)
      %268 = math.floor %cst_1 : f32
      %269 = vector.broadcast %c1173614337_i32 : i32 to vector<4x4xi32>
      %270 = arith.minf %cst_4, %cst_0 : f16
      %271 = scf.if %true -> (i1) {
        %279 = vector.broadcast %c12 : index to vector<4xindex>
        %280 = vector.broadcast %false : i1 to vector<4xi1>
        %281 = vector.broadcast %c844_i16 : i16 to vector<4xi16>
        vector.scatter %alloc_19[%c0, %c2] [%279], %280, %281 : memref<4x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %282 = math.exp2 %17 : tensor<4x4x4xf16>
        %283 = math.rsqrt %6 : tensor<4x4xf16>
        %284 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %285 = index.maxu %c11, %c3
        %286 = vector.broadcast %c844_i16 : i16 to vector<i16>
        %287 = vector.transfer_write %286, %10[%23, %c10] : vector<i16>, tensor<4x4xi16>
        %288 = tensor.empty(%285, %c8) : tensor<?x?x4xi16>
        %289 = math.log10 %14 : tensor<4x4x4xf16>
        scf.yield %false : i1
      } else {
        %279 = affine.min affine_map<(d0, d1, d2) -> (d1, (d1 - d0 + 2) floordiv 8, d0 - 2, d0 * -32)>(%c4, %23, %c8)
        %280 = arith.xori %c1768117351_i32, %c1768117351_i32 : i32
        %rank_54 = tensor.rank %12 : tensor<8xi32>
        %281 = vector.multi_reduction <xor>, %269, %269 [] : vector<4x4xi32> to vector<4x4xi32>
        %expanded_55 = tensor.expand_shape %7 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %282 = math.absf %13 : tensor<8xf16>
        %283 = index.ceildivu %c0, %23
        %true_56 = index.bool.constant true
        scf.yield %true : i1
      }
      %272 = math.ceil %cst_0 : f16
      %cast_53 = tensor.cast %7 : tensor<8xi32> to tensor<?xi32>
      %273 = arith.ceildivsi %c844_i16, %c844_i16 : i16
      vector.print %269 : vector<4x4xi32>
      %274 = math.tan %cst_5 : f32
      %275 = math.exp2 %cst_4 : f16
      %276 = math.ctpop %c1768117351_i32 : i32
      %277 = vector.extract_strided_slice %269 {offsets = [1], sizes = [1], strides = [1]} : vector<4x4xi32> to vector<1x4xi32>
      %278 = vector.broadcast %true : i1 to vector<8xi1>
      scf.yield %278 : vector<8xi1>
    }
    %25 = arith.cmpf une, %cst, %cst : f32
    %26 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
    %false_23 = index.bool.constant false
    %extracted = tensor.extract %20[] : tensor<i32>
    %expanded = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<4x4x4xf16> into tensor<4x4x4x1xf16>
    %27 = index.sizeof
    %28 = index.floordivs %c8, %c3
    %29 = index.add %c10, %c10
    %30 = math.round %14 : tensor<4x4x4xf16>
    %31 = index.floordivs %c2, %c9
    %32 = arith.divsi %c844_i16, %c844_i16 : i16
    %33 = bufferization.clone %alloc_6 : memref<4x4xi16> to memref<4x4xi16>
    %34 = tensor.empty(%c14) : tensor<?xi32>
    %35 = arith.remsi %c1768117351_i32, %extracted : i32
    %36 = arith.negf %cst_1 : f32
    %37 = math.atan2 %cst_3, %cst : f32
    %38 = arith.addf %cst_0, %cst_0 : f16
    %39 = arith.floordivsi %c243339535_i32, %c243339535_i32 : i32
    bufferization.dealloc_tensor %6 : tensor<4x4xf16>
    %40 = vector.splat %27 : vector<4x4x4xindex>
    %41 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %26, %19, %c425051238_i64 : vector<4xi64>, vector<4xi64> into i64
    %42 = vector.broadcast %c4 : index to vector<8xindex>
    %43 = vector.broadcast %true : i1 to vector<8xi1>
    %44 = vector.broadcast %c7995_i16 : i16 to vector<8xi16>
    vector.scatter %alloc_11[%c2, %c3, %c1] [%42], %43, %44 : memref<4x4x4xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
    scf.execute_region {
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %26, %c147688179_i64 : vector<4xi64>, vector<4xi64> into i64
      %264 = arith.maxui %c844_i16, %c7995_i16 : i16
      %cast_53 = tensor.cast %0 : tensor<4x4x4xf16> to tensor<?x?x?xf16>
      memref.assume_alignment %alloc_22, 16 : memref<8xi32>
      %265 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
      %266 = math.ctpop %5 : tensor<8xi64>
      %267 = arith.mulf %cst_4, %cst_4 : f16
      %268 = vector.extract_strided_slice %19 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi64> to vector<1xi64>
      %269 = vector.splat %cst_3 : vector<8xf32>
      %270 = math.rsqrt %cst_1 : f32
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16 : tensor<4x4x4xf16>) outs(%14 : tensor<4x4x4xf16>) {
      ^bb0(%in: f16, %out: f16):
        %276 = math.absi %3 : tensor<4x4xi1>
        %277 = index.castu %extracted : i32 to index
        %278 = math.cttz %11 : tensor<8xi16>
        %279 = math.ctpop %4 : tensor<8xi1>
        %280 = index.casts %c11 : index to i32
        %281 = index.maxu %c2, %c6
        %282 = arith.ceildivsi %c7995_i16, %c7995_i16 : i16
        %cast_54 = tensor.cast %15 : tensor<8xf32> to tensor<?xf32>
        %283 = math.atan2 %in, %cst_4 : f16
        %284 = arith.remsi %c425051238_i64, %c147688179_i64 : i64
        %285 = math.fpowi %15, %12 : tensor<8xf32>, tensor<8xi32>
        %286 = vector.multi_reduction <maxui>, %19, %c147688179_i64 [0] : vector<4xi64> to i64
        %rank_55 = tensor.rank %8 : tensor<4x4x4xi64>
        %287 = math.cos %0 : tensor<4x4x4xf16>
        %inserted_56 = tensor.insert %false_23 into %3[%c2, %c3] : tensor<4x4xi1>
        %288 = arith.remsi %c1768117351_i32, %c1173614337_i32 : i32
        %289 = math.ceil %cst_3 : f32
        %290 = math.exp2 %in : f16
        %291 = arith.divf %cst_3, %cst_1 : f32
        %292 = math.ctlz %c147688179_i64 : i64
        %293 = arith.addf %cst_3, %cst : f32
        %294 = vector.multi_reduction <add>, %265, %265 [] : vector<4xi64> to vector<4xi64>
        %295 = index.floordivs %c7, %rank_55
        %296 = bufferization.clone %alloc_6 : memref<4x4xi16> to memref<4x4xi16>
        %297 = vector.broadcast %cst : f32 to vector<8xf32>
        %298 = vector.flat_transpose %297 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %299 = math.fma %cst, %cst, %cst_3 : f32
        %300 = vector.splat %cst_2 : vector<4x4xf16>
        %301 = tensor.empty() : tensor<4x4xi16>
        %302 = linalg.matmul ins(%10, %10 : tensor<4x4xi16>, tensor<4x4xi16>) outs(%301 : tensor<4x4xi16>) -> tensor<4x4xi16>
        %extracted_57 = tensor.extract %cast_54[%c0] : tensor<?xf32>
        %303 = index.sub %31, %29
        %304 = index.casts %c7995_i16 : i16 to index
        linalg.yield %in : f16
      } -> tensor<4x4x4xf16>
      %272 = math.cttz %1 : tensor<8xi64>
      %273 = arith.subi %c147688179_i64, %c147688179_i64 : i64
      memref.tensor_store %12, %alloc_12 : memref<8xi32>
      %274 = bufferization.to_tensor %alloc_16 : memref<4x4xf16>
      %275 = index.castu %c2 : index to i32
      scf.yield
    }
    %45 = math.exp2 %15 : tensor<8xf32>
    %generated = tensor.generate %27, %c8, %c15 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %263 = math.ipowi %9, %9 : tensor<8xi16>
      %264 = scf.index_switch %c12 -> tensor<8xi16> 
      case 1 {
        %267 = index.sub %c15, %c0
        %268 = math.ceil %15 : tensor<8xf32>
        %true_53 = index.bool.constant true
        %269 = arith.floordivsi %c425051238_i64, %c147688179_i64 : i64
        %270 = arith.addf %cst_2, %cst_4 : f16
        %271 = affine.apply affine_map<(d0) -> (((d0 ceildiv 32) ceildiv 8) ceildiv 128)>(%c9)
        %272 = math.fpowi %cst_4, %c243339535_i32 : f16, i32
        %273 = arith.ori %false_23, %false : i1
        %274 = index.divs %c10, %c3
        memref.store %c1768117351_i32, %alloc_22[%c2] : memref<8xi32>
        %275 = arith.minf %cst_1, %cst_1 : f32
        %276 = vector.broadcast %cst_4 : f16 to vector<11xf16>
        %277 = vector.transfer_write %276, %14[%c10, %c11, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<11xf16>, tensor<4x4x4xf16>
        %278 = math.tan %cst_3 : f32
        %279 = arith.remsi %c425051238_i64, %c147688179_i64 : i64
        %280 = index.divs %c5, %23
        %281 = vector.transpose %19, [0] : vector<4xi64> to vector<4xi64>
        scf.yield %9 : tensor<8xi16>
      }
      case 2 {
        %alloc_53 = memref.alloc() : memref<4x4x4xf16>
        %267 = vector.broadcast %cst_0 : f16 to vector<4x4x4xf16>
        %268 = vector.broadcast %false_23 : i1 to vector<4x4x4xi1>
        %269 = vector.broadcast %c243339535_i32 : i32 to vector<4x4x4xi32>
        %270 = vector.gather %alloc_53[%c15, %c8, %c2] [%269], %268, %267 : memref<4x4x4xf16>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xf16> into vector<4x4x4xf16>
        %271 = math.powf %cst, %cst : f32
        %272 = vector.matrix_multiply %26, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %273 = math.atan2 %0, %17 : tensor<4x4x4xf16>
        memref.tensor_store %1, %alloc_17 : memref<8xi64>
        %274 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %275 = vector.fma %274, %274, %274 : vector<8xf32>
        %276 = math.tan %14 : tensor<4x4x4xf16>
        %277 = vector.create_mask %c10 : vector<8xi1>
        %278 = math.absf %13 : tensor<8xf16>
        %279 = math.ctpop %3 : tensor<4x4xi1>
        %280 = arith.subi %c147688179_i64, %c425051238_i64 : i64
        %281 = vector.reduction <add>, %275 : vector<8xf32> into f32
        memref.store %c1768117351_i32, %alloc_7[%c3, %c1, %c1] : memref<4x4x4xi32>
        %282 = math.ctpop %18 : tensor<8xi16>
        %283 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 2 - d0 - 32)>(%23, %c12, %c3)
        %284 = arith.addf %cst, %cst_5 : f32
        scf.yield %9 : tensor<8xi16>
      }
      case 3 {
        %267 = vector.broadcast %c425051238_i64 : i64 to vector<8xi64>
        %268 = math.tan %17 : tensor<4x4x4xf16>
        %269 = arith.addf %cst_2, %cst_0 : f16
        %270 = math.ceil %6 : tensor<4x4xf16>
        %271 = arith.ori %extracted, %c243339535_i32 : i32
        %272 = vector.insertelement %c147688179_i64, %267[%c1 : index] : vector<8xi64>
        %273 = arith.remf %cst_3, %cst : f32
        %274 = arith.cmpf ule, %cst_5, %cst_5 : f32
        %275 = math.ipowi %18, %9 : tensor<8xi16>
        %276 = index.casts %c844_i16 : i16 to index
        %277 = arith.addf %cst_4, %cst_2 : f16
        %expanded_53 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<4x4x4xf16> into tensor<4x4x4x1xf16>
        %278 = vector.transpose %26, [0] : vector<4xi64> to vector<4xi64>
        %279 = vector.transpose %26, [0] : vector<4xi64> to vector<4xi64>
        %280 = math.log %6 : tensor<4x4xf16>
        %281 = vector.transpose %267, [0] : vector<8xi64> to vector<8xi64>
        scf.yield %18 : tensor<8xi16>
      }
      case 4 {
        %267 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c3, %c11, %c4, %c15)
        %268 = vector.broadcast %cst_1 : f32 to vector<f32>
        vector.transfer_write %268, %alloc_20[%c10] : vector<f32>, memref<8xf32>
        %269 = tensor.empty() : tensor<4x4x4x1xi32>
        %270 = math.fpowi %expanded, %269 : tensor<4x4x4x1xf16>, tensor<4x4x4x1xi32>
        memref.store %cst_2, %alloc_10[%c4] : memref<8xf16>
        %271 = arith.maxui %true, %false_23 : i1
        %272 = memref.load %alloc_8[%c1, %c1] : memref<4x4xi64>
        %273 = bufferization.to_tensor %alloc_20 : memref<8xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %19, %26, %c147688179_i64 : vector<4xi64>, vector<4xi64> into i64
        %275 = tensor.empty() : tensor<8xi64>
        %276 = index.divu %c8, %c5
        %alloca_53 = memref.alloca() : memref<8xf16>
        %277 = arith.addi %false, %false : i1
        %278 = vector.extract %26[0] : vector<4xi64>
        %279 = arith.divf %cst_0, %cst_0 : f16
        %280 = vector.create_mask %c1 : vector<8xi1>
        %281 = arith.maxui %false_23, %false_23 : i1
        scf.yield %transposed : tensor<8xi16>
      }
      default {
        %267 = vector.multi_reduction <minsi>, %26, %c425051238_i64 [0] : vector<4xi64> to i64
        %268 = arith.ori %c1768117351_i32, %c1768117351_i32 : i32
        %269 = index.sizeof
        %270 = arith.minsi %c147688179_i64, %c147688179_i64 : i64
        %271 = index.sub %arg2, %arg3
        %expanded_53 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<4x4x4xi64> into tensor<4x4x4x1xi64>
        %272 = index.castu %c7995_i16 : i16 to index
        %rank_54 = tensor.rank %6 : tensor<4x4xf16>
        %273 = vector.broadcast %c1768117351_i32 : i32 to vector<i32>
        vector.transfer_write %273, %alloc_22[%arg3] : vector<i32>, memref<8xi32>
        %274 = arith.cmpf true, %cst_1, %cst : f32
        %275 = index.castu %c7995_i16 : i16 to index
        %276 = index.castu %extracted : i32 to index
        %277 = arith.maxf %cst_3, %cst_1 : f32
        %278 = arith.andi %false, %false_23 : i1
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %19, %19, %c147688179_i64 : vector<4xi64>, vector<4xi64> into i64
        %280 = math.exp2 %cst_3 : f32
        scf.yield %11 : tensor<8xi16>
      }
      %265 = vector.matrix_multiply %19, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %266 = scf.execute_region -> memref<8xi16> {
        %267 = memref.atomic_rmw minu %c1173614337_i32, %alloc_12[%c3] : (i32, memref<8xi32>) -> i32
        %268 = bufferization.to_tensor %alloc_20 : memref<8xf32>
        %cast_53 = tensor.cast %8 : tensor<4x4x4xi64> to tensor<?x?x?xi64>
        %269 = arith.minf %cst_1, %cst_1 : f32
        %270 = vector.matrix_multiply %26, %265 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<1xi64>) -> vector<4xi64>
        %271 = vector.extract_strided_slice %265 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %272 = arith.shrsi %c147688179_i64, %c425051238_i64 : i64
        %273 = index.floordivs %c2, %31
        %274 = index.sizeof
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %270, %26, %c425051238_i64 : vector<4xi64>, vector<4xi64> into i64
        %276 = math.ctlz %c844_i16 : i16
        %inserted_54 = tensor.insert %cst_3 into %268[%c2] : tensor<8xf32>
        %277 = math.expm1 %cst_5 : f32
        %278 = tensor.empty() : tensor<4x4x4xi32>
        %279 = math.fpowi %14, %278 : tensor<4x4x4xf16>, tensor<4x4x4xi32>
        %280 = math.sqrt %16 : tensor<4x4x4xf16>
        memref.assume_alignment %alloc_17, 16 : memref<8xi64>
        scf.yield %alloc_14 : memref<8xi16>
      }
      tensor.yield %cst_5 : f32
    } : tensor<?x?x?xf32>
    %46 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
    %47 = vector.transpose %46, [0, 1] : vector<4x4xf32> to vector<4x4xf32>
    %48 = math.exp %14 : tensor<4x4x4xf16>
    %49 = vector.splat %c7 : vector<4x4xindex>
    %extracted_24 = tensor.extract %8[%c3, %c0, %c0] : tensor<4x4x4xi64>
    %50 = arith.shrsi %extracted_24, %extracted_24 : i64
    %51 = tensor.empty() : tensor<8xf16>
    %52 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %6 : tensor<4x4x4xf16>, tensor<4x4xf16>) outs(%17 : tensor<4x4x4xf16>) {
    ^bb0(%in: f16, %in_53: f16, %out: f16):
      %263 = math.copysign %cst_5, %cst_5 : f32
      %264 = arith.remf %cst, %cst_3 : f32
      %265 = affine.max affine_map<(d0, d1, d2) -> ((d2 + d1) ceildiv 16, d1 + 4)>(%c11, %c8, %c14)
      %266 = vector.insert %c425051238_i64, %19 [2] : i64 into vector<4xi64>
      %expanded_54 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<4x4x4xi64> into tensor<4x4x4x1xi64>
      %267 = math.tan %0 : tensor<4x4x4xf16>
      %268 = bufferization.to_tensor %alloc_13 : memref<8xi1>
      %269 = arith.shli %c425051238_i64, %extracted_24 : i64
      %270 = index.floordivs %c0, %c3
      scf.execute_region {
        %292 = math.ipowi %3, %3 : tensor<4x4xi1>
        %293 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %294 = vector.fma %293, %293, %46 : vector<4x4xf32>
        %alloca_56 = memref.alloca() : memref<4x4xf32>
        %295 = arith.minf %cst_3, %cst_1 : f32
        %296 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %297 = math.fpowi %cst_0, %extracted : f16, i32
        %298 = arith.divui %false_23, %false : i1
        %299 = vector.insertelement %c147688179_i64, %26[%c13 : index] : vector<4xi64>
        %300 = memref.load %alloc_16[%c0, %c0] : memref<4x4xf16>
        %301 = affine.apply affine_map<(d0) -> (((d0 ceildiv 32) ceildiv 8) ceildiv 128)>(%29)
        %302 = arith.ori %extracted, %c1173614337_i32 : i32
        %inserted_57 = tensor.insert %c844_i16 into %10[%c0, %c0] : tensor<4x4xi16>
        vector.print %293 : vector<4x4xf32>
        %303 = tensor.empty() : tensor<4x4xf16>
        %304 = linalg.matmul ins(%6, %6 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%303 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %305 = arith.maxui %c844_i16, %c7995_i16 : i16
        %306 = arith.maxui %extracted_24, %extracted_24 : i64
        scf.yield
      }
      %271 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi64> to vector<1xi64>
      %272 = vector.broadcast %cst : f32 to vector<8xf32>
      %273 = vector.broadcast %false_23 : i1 to vector<8xi1>
      %274 = vector.broadcast %c1173614337_i32 : i32 to vector<8xi32>
      %275 = vector.gather %alloc_18[%c4, %c3] [%274], %273, %272 : memref<4x4xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      memref.store %cst_2, %alloc_15[%c6] : memref<8xf16>
      %276 = math.cttz %2 : tensor<4x4xi64>
      %277 = arith.divui %true, %true : i1
      %278 = vector.broadcast %cst_0 : f16 to vector<8xf16>
      %279 = arith.shli %c425051238_i64, %c147688179_i64 : i64
      %inserted_55 = tensor.insert %extracted into %20[] : tensor<i32>
      %280 = vector.broadcast %c12 : index to vector<8xindex>
      %281 = vector.broadcast %c147688179_i64 : i64 to vector<8xi64>
      vector.scatter %alloc_9[%c1, %c2] [%280], %273, %281 : memref<4x4xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
      %282 = index.ceildivu %265, %c0
      %283 = math.cttz %5 : tensor<8xi64>
      memref.tensor_store %transposed, %alloc_14 : memref<8xi16>
      %284 = arith.shrsi %false_23, %true : i1
      %285 = arith.ori %c147688179_i64, %c147688179_i64 : i64
      %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<4x4xi16> into tensor<16xi16>
      %286 = arith.remf %cst_1, %cst_3 : f32
      %287 = arith.minsi %c425051238_i64, %extracted_24 : i64
      %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %19, %19, %c147688179_i64 : vector<4xi64>, vector<4xi64> into i64
      %289 = vector.matrix_multiply %272, %275 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
      %290 = math.exp %in : f16
      memref.assume_alignment %alloc_18, 16 : memref<4x4xf32>
      %291 = vector.transpose %271, [0] : vector<1xi64> to vector<1xi64>
      linalg.yield %cst_0 : f16
    } -> tensor<4x4x4xf16>
    %53 = math.fpowi %cst_3, %c243339535_i32 : f32, i32
    %54 = index.sizeof
    %55 = math.rsqrt %51 : tensor<8xf16>
    %56 = index.maxu %28, %31
    affine.for %arg1 = 0 to 0 {
    }
    %57 = math.ipowi %11, %18 : tensor<8xi16>
    %58 = index.floordivs %c3, %54
    %59 = arith.ori %c1768117351_i32, %c1173614337_i32 : i32
    %60 = bufferization.clone %alloc_11 : memref<4x4x4xi16> to memref<4x4x4xi16>
    %extracted_25 = tensor.extract %15[%c7] : tensor<8xf32>
    %61 = math.ctlz %1 : tensor<8xi64>
    %62 = index.casts %c14 : index to i32
    %63 = index.sizeof
    %64 = index.divu %27, %54
    %65 = math.floor %17 : tensor<4x4x4xf16>
    %66 = tensor.empty(%c15, %27) : tensor<?x?xi1>
    %67 = arith.mulf %cst_2, %cst_2 : f16
    %68 = math.round %14 : tensor<4x4x4xf16>
    %69 = scf.index_switch %c10 -> vector<4x4x4xi1> 
    case 1 {
      %263 = arith.ori %false, %false : i1
      %264 = math.exp2 %cst_2 : f16
      %265 = arith.minf %cst_1, %extracted_25 : f32
      %266 = index.divs %23, %27
      bufferization.dealloc_tensor %transposed : tensor<8xi16>
      %267 = arith.maxsi %extracted, %c1768117351_i32 : i32
      %268 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%56, %54, %63)
      %269 = arith.remf %cst_0, %cst_2 : f16
      %270 = index.sizeof
      %271 = arith.andi %c425051238_i64, %extracted_24 : i64
      %272 = vector.transpose %19, [0] : vector<4xi64> to vector<4xi64>
      %rank_53 = tensor.rank %11 : tensor<8xi16>
      %rank_54 = tensor.rank %9 : tensor<8xi16>
      %273 = math.log10 %6 : tensor<4x4xf16>
      %274 = vector.transpose %26, [0] : vector<4xi64> to vector<4xi64>
      %275 = bufferization.clone %alloc_10 : memref<8xf16> to memref<8xf16>
      %276 = vector.broadcast %false : i1 to vector<4x4x4xi1>
      scf.yield %276 : vector<4x4x4xi1>
    }
    case 2 {
      %263 = index.castu %c11 : index to i32
      %264 = math.cttz %8 : tensor<4x4x4xi64>
      %265 = tensor.empty(%31) : tensor<?xi16>
      %266 = affine.load %alloc_7[%c15, %c4, %c15] : memref<4x4x4xi32>
      %267 = index.sizeof
      %268 = arith.divf %extracted_25, %cst : f32
      %269 = index.divs %31, %c11
      %270 = arith.cmpf uno, %cst_2, %cst_2 : f16
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6, %alloc_16, %6 : tensor<4x4xf16>, memref<4x4xf16>, tensor<4x4xf16>) outs(%0 : tensor<4x4x4xf16>) {
      ^bb0(%in: f16, %in_54: f16, %in_55: f16, %out: f16):
        %279 = math.floor %14 : tensor<4x4x4xf16>
        %280 = math.expm1 %15 : tensor<8xf32>
        %281 = arith.ceildivsi %c7995_i16, %c844_i16 : i16
        %282 = bufferization.clone %alloc : memref<4x4x4xi64> to memref<4x4x4xi64>
        %inserted_56 = tensor.insert %in_54 into %expanded[%c2, %c0, %c1, %c0] : tensor<4x4x4x1xf16>
        %283 = math.tanh %cst_2 : f16
        %cast_57 = tensor.cast %expanded : tensor<4x4x4x1xf16> to tensor<?x?x?x?xf16>
        %284 = math.ctlz %4 : tensor<8xi1>
        %285 = math.tanh %6 : tensor<4x4xf16>
        %286 = vector.create_mask %54, %c13 : vector<4x4xi1>
        %cast_58 = tensor.cast %4 : tensor<8xi1> to tensor<?xi1>
        %287 = index.divu %c9, %c3
        %288 = vector.broadcast %in : f16 to vector<8xf16>
        %289 = index.add %56, %54
        %290 = arith.divui %c1173614337_i32, %c243339535_i32 : i32
        %291 = math.fma %extracted_25, %cst_3, %cst_5 : f32
        %292 = memref.atomic_rmw assign %in, %alloc_15[%c2] : (f16, memref<8xf16>) -> f16
        %293 = index.casts %false : i1 to index
        %c21177_i16 = arith.constant 21177 : i16
        %294 = arith.maxf %cst_4, %cst_2 : f16
        %295 = vector.extract_strided_slice %46 {offsets = [1], sizes = [3], strides = [1]} : vector<4x4xf32> to vector<3x4xf32>
        %296 = math.absf %cst_5 : f32
        %297 = math.ipowi %extracted_24, %extracted_24 : i64
        %298 = math.exp2 %cst : f32
        %299 = arith.ori %false, %false_23 : i1
        %300 = math.log %cst_3 : f32
        %301 = arith.ori %c147688179_i64, %extracted_24 : i64
        %302 = arith.xori %c7995_i16, %c844_i16 : i16
        %303 = vector.shuffle %26, %26 [0, 2, 4, 7] : vector<4xi64>, vector<4xi64>
        %304 = arith.minui %extracted_24, %extracted_24 : i64
        %305 = math.ctpop %7 : tensor<8xi32>
        %306 = vector.transpose %295, [0, 1] : vector<3x4xf32> to vector<3x4xf32>
        linalg.yield %cst_4 : f16
      } -> tensor<4x4x4xf16>
      %272 = vector.insert %c147688179_i64, %26 [3] : i64 into vector<4xi64>
      %273 = arith.maxui %false_23, %false_23 : i1
      %expanded_53 = tensor.expand_shape %1 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
      %274 = vector.flat_transpose %26 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
      %275 = math.absi %false_23 : i1
      %276 = index.sizeof
      %277 = vector.flat_transpose %274 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
      %278 = vector.broadcast %false : i1 to vector<4x4x4xi1>
      scf.yield %278 : vector<4x4x4xi1>
    }
    case 3 {
      %263 = index.casts %c5 : index to i32
      %264 = math.exp2 %cst_5 : f32
      %265 = index.sizeof
      %266 = arith.shrui %c7995_i16, %c7995_i16 : i16
      memref.store %extracted_24, %alloc_8[%c3, %c3] : memref<4x4xi64>
      %267 = vector.transpose %26, [0] : vector<4xi64> to vector<4xi64>
      %268 = arith.ori %false_23, %false : i1
      %269 = vector.broadcast %cst : f32 to vector<8xf32>
      %270 = vector.fma %269, %269, %269 : vector<8xf32>
      %271 = math.absi %4 : tensor<8xi1>
      %272 = index.ceildivu %c13, %c14
      %273 = tensor.empty() : tensor<4x4xi16>
      %274 = linalg.matmul ins(%10, %10 : tensor<4x4xi16>, tensor<4x4xi16>) outs(%273 : tensor<4x4xi16>) -> tensor<4x4xi16>
      %275 = arith.remf %cst_5, %cst : f32
      %276 = math.ctpop %4 : tensor<8xi1>
      memref.assume_alignment %alloc_14, 1 : memref<8xi16>
      %277 = vector.broadcast %cst_5 : f32 to vector<4xf32>
      %dest, %accumulated_value = vector.scan <add>, %46, %277 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xf32>, vector<4xf32>
      %278 = math.exp2 %16 : tensor<4x4x4xf16>
      %279 = vector.broadcast %false : i1 to vector<4x4x4xi1>
      scf.yield %279 : vector<4x4x4xi1>
    }
    case 4 {
      %263 = arith.addf %cst_5, %cst_1 : f32
      %264 = math.rsqrt %6 : tensor<4x4xf16>
      vector.print %26 : vector<4xi64>
      %265 = vector.splat %c12 : vector<4x4xindex>
      %266 = vector.bitcast %46 : vector<4x4xf32> to vector<4x4xf32>
      %267 = scf.index_switch %c10 -> i1 
      case 1 {
        %282 = arith.maxf %cst_5, %cst_3 : f32
        %283 = math.ipowi %c1173614337_i32, %c1173614337_i32 : i32
        %284 = arith.xori %c425051238_i64, %c147688179_i64 : i64
        %285 = vector.create_mask %c1 : vector<8xi1>
        %286 = math.tanh %14 : tensor<4x4x4xf16>
        %287 = math.log10 %extracted_25 : f32
        %288 = arith.divui %true, %false_23 : i1
        %289 = vector.flat_transpose %26 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %290 = arith.ceildivsi %true, %false_23 : i1
        %291 = math.ipowi %12, %7 : tensor<8xi32>
        %292 = math.exp %15 : tensor<8xf32>
        %293 = arith.ceildivsi %extracted_24, %c425051238_i64 : i64
        %expanded_53 = tensor.expand_shape %7 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %294 = index.sub %c1, %c7
        %295 = math.exp2 %16 : tensor<4x4x4xf16>
        %296 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        scf.yield %false_23 : i1
      }
      case 2 {
        %282 = arith.xori %true, %false : i1
        %283 = math.cttz %10 : tensor<4x4xi16>
        %284 = index.maxu %c12, %c4
        %285 = vector.broadcast %false_23 : i1 to vector<8xi1>
        %286 = vector.transfer_write %285, %3[%c8, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi1>, tensor<4x4xi1>
        %287 = arith.maxui %extracted, %extracted : i32
        %288 = tensor.empty() : tensor<4x4xf16>
        %289 = linalg.matmul ins(%6, %6 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%288 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %290 = arith.minsi %false, %false_23 : i1
        %291 = memref.atomic_rmw addf %cst_0, %alloc_10[%c0] : (f16, memref<8xf16>) -> f16
        %292 = vector.transpose %266, [0, 1] : vector<4x4xf32> to vector<4x4xf32>
        %293 = index.castu %false_23 : i1 to index
        %294 = vector.broadcast %cst_4 : f16 to vector<4x4x4xf16>
        %295 = math.absf %cst_4 : f16
        %296 = vector.broadcast %true : i1 to vector<i1>
        %297 = vector.transfer_write %296, %4[%58] : vector<i1>, tensor<8xi1>
        %298 = math.tanh %6 : tensor<4x4xf16>
        %expanded_53 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<4x4x4xf16> into tensor<4x4x4x1xf16>
        %299 = index.sizeof
        scf.yield %false : i1
      }
      case 3 {
        memref.tensor_store %2, %alloc_8 : memref<4x4xi64>
        %alloca_53 = memref.alloca() : memref<8xi1>
        %282 = vector.extract_strided_slice %26 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi64> to vector<4xi64>
        %283 = bufferization.clone %alloc_7 : memref<4x4x4xi32> to memref<4x4x4xi32>
        %extracted_54 = tensor.extract %15[%c3] : tensor<8xf32>
        %284 = math.cttz %3 : tensor<4x4xi1>
        %285 = arith.minf %cst, %cst_5 : f32
        %286 = vector.insert %extracted_24, %26 [0] : i64 into vector<4xi64>
        %287 = math.floor %15 : tensor<8xf32>
        %288 = vector.transpose %266, [1, 0] : vector<4x4xf32> to vector<4x4xf32>
        %289 = vector.extract_strided_slice %266 {offsets = [0], sizes = [1], strides = [1]} : vector<4x4xf32> to vector<1x4xf32>
        %290 = math.round %cst_2 : f16
        %291 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %292 = vector.broadcast %c425051238_i64 : i64 to vector<4x4xi64>
        %293 = vector.outerproduct %291, %26, %292 {kind = #vector.kind<and>} : vector<4xi64>, vector<4xi64>
        memref.tensor_store %11, %alloc_14 : memref<8xi16>
        %294 = math.copysign %cst_4, %cst_2 : f16
        scf.yield %true : i1
      }
      default {
        %282 = index.casts %c11 : index to i32
        %283 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%c4, %64, %c11)
        %284 = math.ctlz %false_23 : i1
        %285 = vector.create_mask %54, %c4, %c0 : vector<4x4x4xi1>
        %286 = math.exp %15 : tensor<8xf32>
        %287 = vector.matrix_multiply %26, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %288 = math.exp %15 : tensor<8xf32>
        %289 = vector.reduction <and>, %19 : vector<4xi64> into i64
        %290 = arith.mulf %cst_3, %cst_3 : f32
        %291 = arith.xori %true, %false_23 : i1
        %292 = arith.ori %extracted_24, %c425051238_i64 : i64
        %293 = math.exp2 %6 : tensor<4x4xf16>
        %cst_53 = arith.constant 2.729600e+04 : f16
        %294 = vector.broadcast %58 : index to vector<16xindex>
        %295 = vector.broadcast %true : i1 to vector<16xi1>
        %296 = vector.broadcast %cst_4 : f16 to vector<16xf16>
        vector.scatter %alloc_15[%c0] [%294], %295, %296 : memref<8xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %297 = math.tanh %14 : tensor<4x4x4xf16>
        %298 = vector.broadcast %c147688179_i64 : i64 to vector<4x4xi64>
        %299 = vector.outerproduct %19, %26, %298 {kind = #vector.kind<maxui>} : vector<4xi64>, vector<4xi64>
        scf.yield %false : i1
      }
      %268 = math.log10 %13 : tensor<8xf16>
      %269 = math.tanh %6 : tensor<4x4xf16>
      %270 = tensor.empty() : tensor<4x4xi1>
      %271 = linalg.matmul ins(%3, %3 : tensor<4x4xi1>, tensor<4x4xi1>) outs(%270 : tensor<4x4xi1>) -> tensor<4x4xi1>
      %272 = vector.broadcast %c0 : index to vector<4xindex>
      %273 = vector.broadcast %false_23 : i1 to vector<4xi1>
      %274 = vector.broadcast %c844_i16 : i16 to vector<4xi16>
      vector.scatter %33[%c1, %c2] [%272], %273, %274 : memref<4x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %275 = arith.divui %c243339535_i32, %c1768117351_i32 : i32
      %276 = bufferization.to_tensor %33 : memref<4x4xi16>
      %277 = arith.maxui %false_23, %false : i1
      %278 = math.atan %cst_2 : f16
      %279 = arith.divsi %c425051238_i64, %c425051238_i64 : i64
      %280 = vector.broadcast %c425051238_i64 : i64 to vector<8xi64>
      %281 = vector.broadcast %true : i1 to vector<4x4x4xi1>
      scf.yield %281 : vector<4x4x4xi1>
    }
    default {
      %263 = vector.create_mask %c13, %56 : vector<4x4xi1>
      %264 = vector.matrix_multiply %19, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %265 = math.log10 %cst_3 : f32
      %266 = index.castu %c9 : index to i32
      %inserted_53 = tensor.insert %cst into %generated[%c0, %c0, %c0] : tensor<?x?x?xf32>
      %267 = vector.broadcast %c0 : index to vector<4xindex>
      %268 = vector.broadcast %false : i1 to vector<4xi1>
      vector.scatter %alloc_8[%c1, %c0] [%267], %268, %19 : memref<4x4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %269 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%c0, %58, %c14)
      %270 = vector.extract %19[0] : vector<4xi64>
      %271 = bufferization.to_tensor %alloc_16 : memref<4x4xf16>
      %272 = tensor.empty() : tensor<4x4x4xi32>
      %273 = math.fpowi %14, %272 : tensor<4x4x4xf16>, tensor<4x4x4xi32>
      %274 = index.floordivs %c15, %29
      %275 = vector.matrix_multiply %26, %264 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<1xi64>) -> vector<4xi64>
      %276 = math.exp %13 : tensor<8xf16>
      %277 = math.log2 %13 : tensor<8xf16>
      %278 = arith.maxsi %false_23, %false : i1
      %279 = vector.shuffle %26, %26 [1, 4, 5, 6, 7] : vector<4xi64>, vector<4xi64>
      %280 = vector.broadcast %true : i1 to vector<4x4x4xi1>
      scf.yield %280 : vector<4x4x4xi1>
    }
    %70 = arith.ori %true, %false : i1
    %71 = index.casts %c6 : index to i32
    %72 = tensor.empty() : tensor<4x4xi16>
    %mapped = linalg.map ins(%33 : memref<4x4xi16>) outs(%72 : tensor<4x4xi16>)
      (%in: i16) {
        %263 = index.floordivs %c13, %c13
        %264 = vector.splat %23 : vector<8xindex>
        %265 = arith.maxui %c1173614337_i32, %extracted : i32
        %collapsed = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
        %266 = vector.broadcast %extracted_24 : i64 to vector<4x4xi64>
        %267 = vector.outerproduct %26, %19, %266 {kind = #vector.kind<mul>} : vector<4xi64>, vector<4xi64>
        %268 = index.ceildivu %23, %c5
        %269 = index.sizeof
        %270 = vector.broadcast %c844_i16 : i16 to vector<i16>
        %271 = vector.transfer_write %270, %11[%31] : vector<i16>, tensor<8xi16>
        %272 = index.add %64, %c10
        %273 = math.round %cst_0 : f16
        %274 = vector.broadcast %c243339535_i32 : i32 to vector<4x4x4xi32>
        %c1028445020_i64 = arith.constant 1028445020 : i64
        %275 = vector.broadcast %extracted_25 : f32 to vector<4xf32>
        %dest, %accumulated_value = vector.scan <add>, %46, %275 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xf32>, vector<4xf32>
        %276 = math.absi %2 : tensor<4x4xi64>
        %splat_53 = tensor.splat %in : tensor<4x4xi16>
        %277 = vector.create_mask %c5 : vector<8xi1>
        %278 = math.cttz %2 : tensor<4x4xi64>
        %279 = vector.broadcast %c12 : index to vector<8xindex>
        %280 = vector.broadcast %c844_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_11[%c1, %c3, %c0] [%279], %277, %280 : memref<4x4x4xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %281 = arith.divui %c844_i16, %c7995_i16 : i16
        %282 = math.atan2 %13, %51 : tensor<8xf16>
        %283 = memref.atomic_rmw addi %c425051238_i64, %alloc_9[%c3, %c1] : (i64, memref<4x4xi64>) -> i64
        %284 = memref.realloc %alloc_17 : memref<8xi64> to memref<11xi64>
        %285 = arith.minf %cst_2, %cst_2 : f16
        %286 = vector.create_mask %27, %c7 : vector<4x4xi1>
        %287 = index.add %c15, %263
        %288 = vector.broadcast %false : i1 to vector<4xi1>
        %dest_54, %accumulated_value_55 = vector.scan <minui>, %286, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4xi1>, vector<4xi1>
        %extracted_56 = tensor.extract %15[%c1] : tensor<8xf32>
        %collapsed_57 = tensor.collapse_shape %2 [[0, 1]] : tensor<4x4xi64> into tensor<16xi64>
        %289 = bufferization.clone %alloc : memref<4x4x4xi64> to memref<4x4x4xi64>
        %290 = math.ceil %51 : tensor<8xf16>
        %291 = arith.ori %false, %false_23 : i1
        %292 = math.log %expanded : tensor<4x4x4x1xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %73 = memref.atomic_rmw mins %c1173614337_i32, %alloc_12[%c6] : (i32, memref<8xi32>) -> i32
    %74 = arith.maxf %extracted_25, %cst_1 : f32
    %75 = vector.extract %26[2] : vector<4xi64>
    %76 = math.cttz %3 : tensor<4x4xi1>
    %77 = math.ipowi %10, %10 : tensor<4x4xi16>
    %78 = vector.broadcast %cst_0 : f16 to vector<f16>
    %79 = vector.transfer_write %78, %6[%c5, %c6] : vector<f16>, tensor<4x4xf16>
    %80 = vector.extract_strided_slice %46 {offsets = [0], sizes = [1], strides = [1]} : vector<4x4xf32> to vector<1x4xf32>
    %alloc_26 = memref.alloc() : memref<4x4x4xf32>
    %81 = vector.broadcast %false_23 : i1 to vector<4x4xi1>
    %82 = vector.broadcast %extracted : i32 to vector<4x4xi32>
    %83 = vector.gather %alloc_26[%58, %c11, %31] [%82], %81, %46 : memref<4x4x4xf32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf32> into vector<4x4xf32>
    %84 = tensor.empty() : tensor<4x4xf16>
    %85 = index.divu %c13, %c6
    %expanded_27 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<4x4x4xf16> into tensor<4x4x4x1xf16>
    %86 = arith.ori %false, %false_23 : i1
    memref.alloca_scope  {
      %263 = vector.extract %80[0] : vector<1x4xf32>
      %264 = arith.remsi %c147688179_i64, %extracted_24 : i64
      %265 = math.cos %16 : tensor<4x4x4xf16>
      %266 = arith.addf %cst_1, %cst_1 : f32
      %267 = vector.create_mask %c1, %c14, %28 : vector<4x4x4xi1>
      %inserted_53 = tensor.insert %cst_0 into %16[%c3, %c3, %c0] : tensor<4x4x4xf16>
      %268 = arith.shrsi %false, %false : i1
      %269 = arith.addf %cst_3, %cst_3 : f32
      %270 = tensor.empty() : tensor<4x4xi64>
      %271 = vector.extract %263[3] : vector<4xf32>
      %272 = tensor.empty() : tensor<4x4x4xi16>
      %mapped_54 = linalg.map ins(%60 : memref<4x4x4xi16>) outs(%272 : tensor<4x4x4xi16>)
        (%in: i16) {
          %288 = math.copysign %cst_1, %cst_1 : f32
          %289 = math.tanh %15 : tensor<8xf32>
          %290 = math.atan %expanded : tensor<4x4x4x1xf16>
          %291 = arith.negf %cst_2 : f16
          %292 = math.fma %17, %14, %16 : tensor<4x4x4xf16>
          %293 = index.ceildivu %54, %c14
          %true_60 = index.bool.constant true
          %294 = math.exp %13 : tensor<8xf16>
          %295 = arith.maxsi %c1173614337_i32, %extracted : i32
          %296 = memref.atomic_rmw muli %c425051238_i64, %alloc[%c3, %c0, %c3] : (i64, memref<4x4x4xi64>) -> i64
          %297 = memref.atomic_rmw maxs %extracted, %alloc_7[%c3, %c0, %c1] : (i32, memref<4x4x4xi32>) -> i32
          %inserted_61 = tensor.insert %in into %10[%c3, %c1] : tensor<4x4xi16>
          %298 = math.fma %cst_0, %cst_4, %cst_4 : f16
          %299 = math.ipowi %c7995_i16, %in : i16
          %300 = arith.ori %c243339535_i32, %c243339535_i32 : i32
          %301 = math.ctlz %transposed : tensor<8xi16>
          %302 = arith.ceildivsi %false, %true_60 : i1
          %from_elements_62 = tensor.from_elements %c7995_i16, %c844_i16, %c7995_i16, %c844_i16, %c844_i16, %c7995_i16, %c7995_i16, %c7995_i16 : tensor<8xi16>
          %303 = math.log10 %14 : tensor<4x4x4xf16>
          %304 = vector.matrix_multiply %19, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
          %305 = vector.matrix_multiply %19, %304 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<1xi64>) -> vector<4xi64>
          %306 = math.fpowi %13, %7 : tensor<8xf16>, tensor<8xi32>
          %307 = index.add %27, %54
          %308 = vector.broadcast %c7995_i16 : i16 to vector<4xi16>
          %309 = vector.broadcast %true : i1 to vector<4xi1>
          %310 = vector.maskedload %alloc_6[%c0, %c0], %309, %308 : memref<4x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
          %311 = math.expm1 %expanded_27 : tensor<4x4x4x1xf16>
          %312 = math.ceil %14 : tensor<4x4x4xf16>
          %313 = arith.xori %false, %false_23 : i1
          %314 = arith.xori %c147688179_i64, %extracted_24 : i64
          %315 = arith.xori %c1173614337_i32, %extracted : i32
          %316 = arith.maxf %cst_3, %extracted_25 : f32
          %317 = vector.bitcast %19 : vector<4xi64> to vector<4xi64>
          %318 = arith.negf %cst : f32
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      memref.tensor_store %2, %alloc_8 : memref<4x4xi64>
      %273 = vector.matrix_multiply %263, %263 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %274 = vector.multi_reduction <or>, %82, %extracted [0, 1] : vector<4x4xi32> to i32
      %275 = vector.broadcast %extracted_25 : f32 to vector<4x4x4xf32>
      %276 = vector.fma %275, %275, %275 : vector<4x4x4xf32>
      %277 = arith.ceildivsi %274, %extracted : i32
      %278 = memref.atomic_rmw minu %c844_i16, %60[%c0, %c0, %c3] : (i16, memref<4x4x4xi16>) -> i16
      %279 = arith.remf %extracted_25, %cst : f32
      %extracted_55 = tensor.extract %11[%c2] : tensor<8xi16>
      %280 = math.round %17 : tensor<4x4x4xf16>
      %281 = math.fpowi %cst_0, %extracted : f16, i32
      %282 = vector.multi_reduction <minf>, %273, %273 [] : vector<1xf32> to vector<1xf32>
      bufferization.dealloc_tensor %11 : tensor<8xi16>
      %alloca_56 = memref.alloca() : memref<4x4x4xf32>
      %283 = math.ctlz %false_23 : i1
      %from_elements_57 = tensor.from_elements %c844_i16, %extracted_55, %c844_i16, %c844_i16, %c7995_i16, %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c844_i16, %c7995_i16, %extracted_55, %c844_i16, %c7995_i16, %extracted_55, %c844_i16, %c7995_i16, %c7995_i16, %c844_i16, %extracted_55, %c7995_i16, %c844_i16, %c7995_i16, %extracted_55, %c844_i16, %extracted_55, %c844_i16, %extracted_55, %extracted_55, %c7995_i16, %c7995_i16, %c7995_i16, %extracted_55, %c844_i16, %c844_i16, %extracted_55, %extracted_55, %extracted_55, %extracted_55, %extracted_55, %c844_i16, %extracted_55, %c844_i16, %extracted_55, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c7995_i16, %c844_i16, %c844_i16, %c7995_i16, %c844_i16, %extracted_55, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c7995_i16, %extracted_55, %extracted_55, %extracted_55, %c844_i16, %c844_i16 : tensor<4x4x4xi16>
      %inserted_58 = tensor.insert %cst_2 into %expanded[%c0, %c2, %c3, %c0] : tensor<4x4x4x1xf16>
      %generated_59 = tensor.generate %c11 {
      ^bb0(%arg1: index):
        %288 = arith.divui %extracted_55, %c844_i16 : i16
        %289 = vector.broadcast %cst_3 : f32 to vector<4x4x4xf32>
        %290 = vector.fma %289, %289, %289 : vector<4x4x4xf32>
        %291 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        %292 = vector.broadcast %false : i1 to vector<8xi1>
        %293 = vector.broadcast %c1173614337_i32 : i32 to vector<8xi32>
        %294 = vector.gather %16[%85, %c1, %arg1] [%293], %292, %291 : tensor<4x4x4xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %295 = math.cttz %false_23 : i1
        tensor.yield %extracted_25 : f32
      } : tensor<?xf32>
      %284 = vector.multi_reduction <mul>, %19, %19 [] : vector<4xi64> to vector<4xi64>
      %285 = vector.multi_reduction <maxui>, %267, %false_23 [0, 1, 2] : vector<4x4x4xi1> to i1
      %286 = arith.shrsi %274, %c243339535_i32 : i32
      %287 = vector.bitcast %82 : vector<4x4xi32> to vector<4x4xf32>
    }
    %87 = math.tanh %17 : tensor<4x4x4xf16>
    %88 = arith.maxui %c147688179_i64, %extracted_24 : i64
    %89 = math.ceil %expanded : tensor<4x4x4x1xf16>
    %splat = tensor.splat %c1173614337_i32 : tensor<8xi32>
    %90 = memref.atomic_rmw assign %c243339535_i32, %alloc_12[%c4] : (i32, memref<8xi32>) -> i32
    %91 = vector.broadcast %c425051238_i64 : i64 to vector<11xi64>
    %92 = vector.broadcast %false_23 : i1 to vector<11xi1>
    %93 = vector.maskedload %alloc[%c3, %c2, %c2], %92, %91 : memref<4x4x4xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
    %inserted = tensor.insert %c425051238_i64 into %8[%c0, %c2, %c2] : tensor<4x4x4xi64>
    memref.assume_alignment %alloc_8, 8 : memref<4x4xi64>
    %94 = vector.bitcast %81 : vector<4x4xi1> to vector<4x4xi1>
    %95 = vector.extract_strided_slice %94 {offsets = [1], sizes = [1], strides = [1]} : vector<4x4xi1> to vector<1x4xi1>
    %96 = math.tan %6 : tensor<4x4xf16>
    %97 = index.ceildivs %c10, %c3
    %98 = arith.minui %c243339535_i32, %extracted : i32
    %99 = index.casts %c3 : index to i32
    %100 = arith.divsi %c1768117351_i32, %c243339535_i32 : i32
    %101 = arith.addf %cst_1, %cst_1 : f32
    %102 = index.divu %64, %c12
    %103 = index.ceildivu %c3, %85
    %104 = arith.addf %cst_2, %cst_0 : f16
    %105 = math.tan %6 : tensor<4x4xf16>
    %alloca = memref.alloca() : memref<8xi64>
    %106 = arith.maxui %c844_i16, %c7995_i16 : i16
    %107 = index.divs %97, %c15
    %108 = arith.cmpf uge, %cst_2, %cst_4 : f16
    %109 = vector.broadcast %cst_4 : f16 to vector<16x11xf16>
    %110 = vector.transfer_write %109, %0[%c1, %63, %58] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x11xf16>, tensor<4x4x4xf16>
    %111 = bufferization.to_tensor %alloc_26 : memref<4x4x4xf32>
    %112 = math.expm1 %15 : tensor<8xf32>
    %113 = index.casts %c243339535_i32 : i32 to index
    %114 = vector.broadcast %cst_0 : f16 to vector<8x16x8xf16>
    %115 = vector.transfer_write %114, %expanded[%c15, %c5, %58, %27] {permutation_map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>} : vector<8x16x8xf16>, tensor<4x4x4x1xf16>
    %116 = arith.ori %true, %true : i1
    %117 = vector.flat_transpose %92 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
    %118 = arith.divf %cst_3, %cst_1 : f32
    %119 = math.absi %20 : tensor<i32>
    %120 = memref.atomic_rmw maxf %cst_3, %alloc_18[%c0, %c3] : (f32, memref<4x4xf32>) -> f32
    %121 = index.castu %false : i1 to index
    %122 = vector.extract_strided_slice %81 {offsets = [1], sizes = [2], strides = [1]} : vector<4x4xi1> to vector<2x4xi1>
    %123 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 8 - d2)>(%c10, %121, %56, %c15)
    %124 = arith.floordivsi %c844_i16, %c7995_i16 : i16
    memref.copy %alloc_6, %alloc_19 : memref<4x4xi16> to memref<4x4xi16>
    %125 = math.round %0 : tensor<4x4x4xf16>
    %126 = math.cttz %splat : tensor<8xi32>
    %127 = math.cttz %c1768117351_i32 : i32
    %alloc_28 = memref.alloc() : memref<4xi64>
    %128 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_28 : memref<4xi64>) outs(%8 : tensor<4x4x4xi64>) {
    ^bb0(%in: i64, %out: i64):
      %263 = index.add %58, %c6
      %264 = bufferization.clone %alloc_7 : memref<4x4x4xi32> to memref<4x4x4xi32>
      %265 = math.ipowi %false, %true : i1
      %266 = arith.remui %in, %in : i64
      %extracted_53 = tensor.extract %5[%c2] : tensor<8xi64>
      %267 = index.sizeof
      %268 = vector.splat %27 : vector<4x4xindex>
      %269 = math.ipowi %20, %20 : tensor<i32>
      %270 = math.ctlz %2 : tensor<4x4xi64>
      %271 = math.rsqrt %15 : tensor<8xf32>
      %272 = arith.floordivsi %extracted_53, %c147688179_i64 : i64
      %273 = math.exp %cst_1 : f32
      %274 = arith.ori %c425051238_i64, %c147688179_i64 : i64
      %275 = math.fma %extracted_25, %extracted_25, %cst_5 : f32
      %276 = math.exp2 %cst_3 : f32
      %277 = arith.ori %c1173614337_i32, %c243339535_i32 : i32
      %278 = bufferization.clone %alloc_6 : memref<4x4xi16> to memref<4x4xi16>
      %279 = arith.negf %cst_5 : f32
      %280 = vector.matrix_multiply %93, %91 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
      %281 = vector.broadcast %c1173614337_i32 : i32 to vector<4x4xi32>
      scf.index_switch %29 
      case 1 {
        %rank_55 = tensor.rank %1 : tensor<8xi64>
        %293 = math.ipowi %20, %20 : tensor<i32>
        %294 = math.cttz %18 : tensor<8xi16>
        %295 = math.exp2 %0 : tensor<4x4x4xf16>
        %296 = arith.xori %extracted_24, %in : i64
        %297 = vector.broadcast %cst : f32 to vector<4x4x4xf32>
        %298 = vector.fma %297, %297, %297 : vector<4x4x4xf32>
        %false_56 = index.bool.constant false
        %299 = math.tanh %14 : tensor<4x4x4xf16>
        %alloc_57 = memref.alloc() : memref<4x4xi32>
        %300 = vector.gather %alloc_57[%c3, %97] [%281], %81, %82 : memref<4x4xi32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi32> into vector<4x4xi32>
        %301 = math.ctlz %3 : tensor<4x4xi1>
        memref.assume_alignment %alloc_19, 1 : memref<4x4xi16>
        %302 = vector.bitcast %300 : vector<4x4xi32> to vector<4x4xi32>
        %303 = vector.create_mask %85 : vector<8xi1>
        %304 = math.expm1 %16 : tensor<4x4x4xf16>
        %305 = arith.divui %false_56, %false_56 : i1
        %306 = vector.reduction <xor>, %91 : vector<11xi64> into i64
        scf.yield
      }
      case 2 {
        %293 = math.expm1 %51 : tensor<8xf16>
        %294 = math.log1p %cst_2 : f16
        %295 = vector.shuffle %19, %19 [1, 2, 4, 5, 7] : vector<4xi64>, vector<4xi64>
        %296 = index.divu %c11, %103
        %297 = math.expm1 %13 : tensor<8xf16>
        %298 = math.log10 %15 : tensor<8xf32>
        %299 = arith.cmpf ueq, %cst_0, %cst_4 : f16
        %300 = arith.minsi %extracted, %c1768117351_i32 : i32
        %301 = math.log2 %cst_1 : f32
        %302 = index.divu %97, %c9
        %303 = memref.atomic_rmw mulf %cst, %alloc_18[%c1, %c2] : (f32, memref<4x4xf32>) -> f32
        %304 = arith.xori %true, %true : i1
        %305 = affine.load %alloc_16[%c0, %c13] : memref<4x4xf16>
        %306 = arith.remsi %c147688179_i64, %in : i64
        %307 = math.ctlz %7 : tensor<8xi32>
        %308 = arith.maxf %extracted_25, %cst : f32
        scf.yield
      }
      case 3 {
        %293 = bufferization.clone %278 : memref<4x4xi16> to memref<4x4xi16>
        %false_55 = index.bool.constant false
        %294 = vector.broadcast %in : i64 to vector<8xi64>
        %295 = vector.broadcast %false_23 : i1 to vector<8xi1>
        %296 = vector.broadcast %extracted : i32 to vector<8xi32>
        %297 = vector.gather %alloc[%31, %63, %121] [%296], %295, %294 : memref<4x4x4xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        %298 = index.ceildivu %c4, %c10
        %299 = index.sizeof
        %rank_56 = tensor.rank %15 : tensor<8xf32>
        %300 = arith.remf %cst_4, %cst_4 : f16
        %301 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %302 = arith.cmpf one, %cst_2, %cst_2 : f16
        %303 = index.sizeof
        %304 = vector.broadcast %c844_i16 : i16 to vector<16xi16>
        %305 = vector.broadcast %false : i1 to vector<16xi1>
        %306 = vector.maskedload %alloc_19[%c0, %c2], %305, %304 : memref<4x4xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %307 = math.round %cst_5 : f32
        %308 = arith.shrsi %false, %true : i1
        %309 = math.ceil %extracted_25 : f32
        %310 = index.ceildivu %c2, %c4
        %311 = arith.maxui %c243339535_i32, %extracted : i32
        scf.yield
      }
      default {
        %inserted_55 = tensor.insert %cst_0 into %0[%c3, %c0, %c1] : tensor<4x4x4xf16>
        %293 = arith.minf %cst_1, %cst : f32
        %294 = arith.floordivsi %c7995_i16, %c844_i16 : i16
        %295 = math.absi %9 : tensor<8xi16>
        %296 = math.powf %15, %15 : tensor<8xf32>
        %297 = arith.maxsi %in, %in : i64
        %298 = vector.extract_strided_slice %280 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %extracted_56 = tensor.extract %8[%c3, %c0, %c3] : tensor<4x4x4xi64>
        %299 = memref.atomic_rmw ori %extracted_24, %alloc_8[%c2, %c1] : (i64, memref<4x4xi64>) -> i64
        %300 = vector.bitcast %93 : vector<11xi64> to vector<11xi64>
        %301 = vector.broadcast %c147688179_i64 : i64 to vector<1x1xi64>
        %302 = vector.outerproduct %298, %298, %301 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
        %303 = arith.maxf %cst, %extracted_25 : f32
        %304 = vector.flat_transpose %93 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %305 = math.ctpop %2 : tensor<4x4xi64>
        %306 = math.ceil %13 : tensor<8xf16>
        %inserted_57 = tensor.insert %c1768117351_i32 into %20[] : tensor<i32>
      }
      %282 = bufferization.clone %alloc : memref<4x4x4xi64> to memref<4x4x4xi64>
      %283 = vector.broadcast %c243339535_i32 : i32 to vector<4x4x4xi32>
      %284 = vector.broadcast %false : i1 to vector<4x4x4xi1>
      %285 = vector.gather %12[%c7] [%283], %284, %283 : tensor<8xi32>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xi32> into vector<4x4x4xi32>
      %286 = index.add %54, %64
      %expanded_54 = tensor.expand_shape %12 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
      %287 = index.floordivs %c11, %23
      %288 = vector.extract %281[3] : vector<4x4xi32>
      %289 = arith.ceildivsi %c1173614337_i32, %extracted : i32
      scf.index_switch %107 
      case 1 {
        %from_elements_55 = tensor.from_elements %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c844_i16, %c844_i16, %c844_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c844_i16, %c844_i16, %c844_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c844_i16, %c7995_i16, %c7995_i16, %c844_i16, %c844_i16, %c7995_i16, %c844_i16, %c7995_i16 : tensor<4x4x4xi16>
        %293 = math.log %extracted_25 : f32
        %294 = arith.ori %c147688179_i64, %extracted_24 : i64
        %295 = vector.broadcast %63 : index to vector<16xindex>
        %296 = vector.broadcast %false_23 : i1 to vector<16xi1>
        %297 = vector.broadcast %c1173614337_i32 : i32 to vector<16xi32>
        vector.scatter %264[%c2, %c1, %c2] [%295], %296, %297 : memref<4x4x4xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
        %298 = math.log1p %expanded : tensor<4x4x4x1xf16>
        memref.store %cst_5, %alloc_26[%c2, %c1, %c1] : memref<4x4x4xf32>
        %299 = math.round %0 : tensor<4x4x4xf16>
        %300 = arith.maxui %c844_i16, %c844_i16 : i16
        %301 = tensor.empty() : tensor<4x4xi16>
        %302 = math.ipowi %extracted, %c1173614337_i32 : i32
        %303 = vector.shuffle %94, %81 [0, 1, 3, 5, 7] : vector<4x4xi1>, vector<4x4xi1>
        %304 = vector.insertelement %out, %280[%c4 : index] : vector<1xi64>
        %305 = index.sub %113, %27
        %false_56 = index.bool.constant false
        %306 = affine.load %alloc_20[%c3] : memref<8xf32>
        %alloca_57 = memref.alloca() : memref<8xi64>
        scf.yield
      }
      case 2 {
        %293 = math.exp %51 : tensor<8xf16>
        %294 = arith.divsi %extracted_53, %out : i64
        %295 = vector.bitcast %91 : vector<11xi64> to vector<11xi64>
        %296 = math.cttz %4 : tensor<8xi1>
        %297 = vector.broadcast %c13 : index to vector<16xindex>
        %298 = vector.broadcast %false : i1 to vector<16xi1>
        %299 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        vector.scatter %alloc_26[%c3, %c0, %c0] [%297], %298, %299 : memref<4x4x4xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %300 = vector.extract %109[7] : vector<16x11xf16>
        %301 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%123, %263, %c1, %64)
        %302 = tensor.empty() : tensor<8xi1>
        %cast_55 = tensor.cast %14 : tensor<4x4x4xf16> to tensor<?x?x?xf16>
        %303 = vector.bitcast %93 : vector<11xi64> to vector<11xi64>
        %304 = vector.matrix_multiply %91, %93 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
        %305 = vector.broadcast %extracted_25 : f32 to vector<8xf32>
        %306 = bufferization.clone %alloc_16 : memref<4x4xf16> to memref<4x4xf16>
        %307 = arith.minsi %out, %extracted_53 : i64
        %308 = math.powf %13, %13 : tensor<8xf16>
        %309 = arith.xori %c844_i16, %c844_i16 : i16
        scf.yield
      }
      default {
        %293 = vector.broadcast %false_23 : i1 to vector<4xi1>
        %294 = vector.insert %293, %95 [0] : vector<4xi1> into vector<1x4xi1>
        %295 = vector.broadcast %c6 : index to vector<4xindex>
        vector.scatter %alloc[%c0, %c1, %c1] [%295], %293, %26 : memref<4x4x4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %296 = index.floordivs %103, %c0
        %297 = index.divu %103, %c4
        %298 = math.powf %cst_1, %cst_5 : f32
        %299 = bufferization.clone %278 : memref<4x4xi16> to memref<4x4xi16>
        %300 = bufferization.clone %alloc_17 : memref<8xi64> to memref<8xi64>
        %301 = vector.matrix_multiply %19, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %302 = index.floordivs %56, %c15
        %303 = index.divu %c6, %63
        %cast_55 = tensor.cast %12 : tensor<8xi32> to tensor<?xi32>
        %304 = arith.remf %cst_4, %cst_0 : f16
        %305 = arith.negf %cst_0 : f16
        %306 = index.castu %23 : index to i32
        %true_56 = arith.constant true
        %307 = math.tan %cst : f32
      }
      %290 = vector.flat_transpose %117 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
      %291 = index.add %107, %c12
      %292 = math.powf %expanded_27, %expanded : tensor<4x4x4x1xf16>
      linalg.yield %in : i64
    } -> tensor<4x4x4xi64>
    %129 = arith.remf %cst_0, %cst_2 : f16
    %130 = tensor.empty(%c9) : tensor<?x4x4xi32>
    %131 = arith.shrsi %c1173614337_i32, %c243339535_i32 : i32
    %132 = math.log10 %16 : tensor<4x4x4xf16>
    %rank = tensor.rank %expanded_27 : tensor<4x4x4x1xf16>
    %133 = arith.ceildivsi %c243339535_i32, %c1768117351_i32 : i32
    %generated_29 = tensor.generate %c7 {
    ^bb0(%arg1: index, %arg2: index):
      memref.alloca_scope  {
        %266 = arith.xori %c1768117351_i32, %extracted : i32
        %267 = vector.broadcast %c425051238_i64 : i64 to vector<4x4x4xi64>
        %268 = arith.divsi %extracted_24, %extracted_24 : i64
        %269 = arith.minsi %extracted, %c1768117351_i32 : i32
        %270 = arith.remf %cst_5, %cst : f32
        %271 = math.exp %84 : tensor<4x4xf16>
        %272 = index.maxu %c9, %c7
        %273 = math.tan %0 : tensor<4x4x4xf16>
        %274 = index.add %rank, %c13
        %275 = vector.broadcast %c243339535_i32 : i32 to vector<4x4x4xi32>
        %276 = memref.load %60[%c2, %c2, %c0] : memref<4x4x4xi16>
        %277 = vector.broadcast %extracted : i32 to vector<4xi32>
        %278 = vector.multi_reduction <maxsi>, %82, %277 [1] : vector<4x4xi32> to vector<4xi32>
        %false_53 = index.bool.constant false
        %279 = arith.ori %c425051238_i64, %c425051238_i64 : i64
        memref.store %cst_3, %alloc_26[%c2, %c1, %c3] : memref<4x4x4xf32>
        %280 = bufferization.clone %alloc_8 : memref<4x4xi64> to memref<4x4xi64>
        %281 = vector.multi_reduction <and>, %81, %false_53 [0, 1] : vector<4x4xi1> to i1
        %282 = math.absf %cst_3 : f32
        %283 = math.fma %16, %0, %0 : tensor<4x4x4xf16>
        %284 = arith.ori %false, %false_23 : i1
        %inserted_54 = tensor.insert %cst_4 into %6[%c0, %c2] : tensor<4x4xf16>
        %285 = arith.remf %cst_2, %cst_0 : f16
        %286 = math.sqrt %cst_5 : f32
        %287 = vector.broadcast %c425051238_i64 : i64 to vector<16xi64>
        %288 = vector.broadcast %false_23 : i1 to vector<16xi1>
        %289 = vector.maskedload %280[%c1, %c0], %288, %287 : memref<4x4xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %290 = math.cttz %c243339535_i32 : i32
        %291 = arith.remf %cst_4, %cst_2 : f16
        %292 = index.divu %c13, %274
        %293 = arith.remf %cst, %cst : f32
        %294 = arith.minf %extracted_25, %extracted_25 : f32
        %295 = tensor.empty() : tensor<4x4xi32>
        %296 = math.fpowi %6, %295 : tensor<4x4xf16>, tensor<4x4xi32>
        %297 = math.copysign %cst_4, %cst_2 : f16
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %94, %94, %94 : vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
      }
      %263 = arith.maxui %c425051238_i64, %extracted_24 : i64
      %264 = index.sub %56, %29
      %265 = arith.remf %cst_5, %cst_5 : f32
      tensor.yield %c1173614337_i32 : i32
    } : tensor<?x4xi32>
    %134 = math.ctpop %7 : tensor<8xi32>
    %135 = math.rsqrt %14 : tensor<4x4x4xf16>
    %136 = bufferization.clone %alloc_18 : memref<4x4xf32> to memref<4x4xf32>
    %alloc_30 = memref.alloc() : memref<4x4xf16>
    memref.copy %alloc_16, %alloc_30 : memref<4x4xf16> to memref<4x4xf16>
    %137 = index.add %c5, %c4
    %138 = math.fma %15, %15, %15 : tensor<8xf32>
    %rank_31 = tensor.rank %7 : tensor<8xi32>
    %false_32 = arith.constant false
    %139 = arith.remsi %true, %false : i1
    %140 = vector.splat %c7 : vector<8xindex>
    %141 = bufferization.clone %alloc_14 : memref<8xi16> to memref<8xi16>
    %142 = index.add %23, %c2
    vector.print %94 : vector<4x4xi1>
    %143 = vector.broadcast %cst_0 : f16 to vector<f16>
    %144 = vector.transfer_write %143, %84[%23, %c2] : vector<f16>, tensor<4x4xf16>
    %145 = math.copysign %15, %15 : tensor<8xf32>
    %146 = math.ceil %14 : tensor<4x4x4xf16>
    %147 = vector.broadcast %c8 : index to vector<4xindex>
    %148 = vector.broadcast %true : i1 to vector<4xi1>
    %149 = vector.broadcast %cst : f32 to vector<4xf32>
    vector.scatter %alloc_20[%c3] [%147], %148, %149 : memref<8xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %150 = index.casts %extracted : i32 to index
    %151 = vector.shuffle %92, %117 [0, 3, 6, 7, 8, 9, 10, 11, 14, 17, 18, 20] : vector<11xi1>, vector<11xi1>
    %152 = index.sub %27, %c7
    memref.store %c844_i16, %alloc_11[%c2, %c3, %c1] : memref<4x4x4xi16>
    %153 = vector.broadcast %true : i1 to vector<4x4xi1>
    %154 = vector.extract_strided_slice %94 {offsets = [1], sizes = [2], strides = [1]} : vector<4x4xi1> to vector<2x4xi1>
    %rank_33 = tensor.rank %14 : tensor<4x4x4xf16>
    %155 = math.log10 %cst_0 : f16
    %156 = arith.floordivsi %false, %false_23 : i1
    memref.tensor_store %2, %alloc_8 : memref<4x4xi64>
    %157 = memref.load %alloc_17[%c1] : memref<8xi64>
    %158 = vector.shuffle %46, %80 [1, 2, 3, 4] : vector<4x4xf32>, vector<1x4xf32>
    %159 = tensor.empty() : tensor<4x4x4xi16>
    %mapped_34 = linalg.map ins(%60, %60, %60 : memref<4x4x4xi16>, memref<4x4x4xi16>, memref<4x4x4xi16>) outs(%159 : tensor<4x4x4xi16>)
      (%in: i16, %in_53: i16, %in_54: i16) {
        %263 = index.casts %c3 : index to i32
        %264 = index.floordivs %c5, %121
        %extracted_55 = tensor.extract %splat[%c3] : tensor<8xi32>
        %265 = math.atan %cst_1 : f32
        %expanded_56 = tensor.expand_shape %5 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
        %266 = arith.divsi %c7995_i16, %in_53 : i16
        %267 = vector.create_mask %c13, %c8, %rank_31 : vector<4x4x4xi1>
        %268 = math.cttz %159 : tensor<4x4x4xi16>
        %269 = tensor.empty() : tensor<8xi16>
        %270 = arith.shrsi %extracted_55, %extracted_55 : i32
        %271 = arith.addf %cst_4, %cst_0 : f16
        %272 = vector.splat %142 : vector<4x4x4xindex>
        %273 = vector.splat %false_23 : vector<4x4xi1>
        %274 = vector.broadcast %cst : f32 to vector<4x1xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %83, %80, %274 : vector<4x4xf32>, vector<1x4xf32> into vector<4x1xf32>
        %276 = arith.divf %cst_2, %cst_4 : f16
        %277 = math.tanh %111 : tensor<4x4x4xf32>
        %278 = arith.divf %cst_3, %cst_3 : f32
        %279 = arith.shrsi %c844_i16, %c844_i16 : i16
        %280 = index.castu %false : i1 to index
        %281 = math.ipowi %1, %5 : tensor<8xi64>
        %282 = math.log1p %14 : tensor<4x4x4xf16>
        %283 = vector.create_mask %c9 : vector<8xi1>
        %284 = vector.broadcast %extracted_24 : i64 to vector<11x11xi64>
        %285 = vector.outerproduct %93, %91, %284 {kind = #vector.kind<maxui>} : vector<11xi64>, vector<11xi64>
        %286 = arith.maxui %extracted_55, %c1768117351_i32 : i32
        scf.index_switch %152 
        case 1 {
          %294 = math.fma %cst_1, %extracted_25, %cst : f32
          %295 = vector.broadcast %in : i16 to vector<4x4x4xi16>
          %296 = bufferization.clone %alloc_20 : memref<8xf32> to memref<8xf32>
          %297 = math.rsqrt %extracted_25 : f32
          %from_elements_57 = tensor.from_elements %cst_5, %extracted_25, %cst_3, %cst_1, %extracted_25, %extracted_25, %extracted_25, %cst_3 : tensor<8xf32>
          %298 = arith.maxui %true, %true : i1
          %299 = math.absi %false_23 : i1
          %300 = bufferization.clone %alloc_8 : memref<4x4xi64> to memref<4x4xi64>
          %301 = math.atan2 %cst_5, %cst_1 : f32
          %302 = index.floordivs %c0, %c11
          %303 = arith.ori %c147688179_i64, %c425051238_i64 : i64
          %304 = arith.divf %cst_4, %cst_4 : f16
          %305 = tensor.empty() : tensor<8xi1>
          %306 = vector.transpose %267, [0, 1, 2] : vector<4x4x4xi1> to vector<4x4x4xi1>
          %307 = index.divs %28, %rank_33
          %308 = bufferization.to_tensor %alloc_10 : memref<8xf16>
          scf.yield
        }
        case 2 {
          %294 = vector.broadcast %c1768117351_i32 : i32 to vector<i32>
          %295 = vector.transfer_write %294, %splat[%c14] : vector<i32>, tensor<8xi32>
          %296 = vector.create_mask %97, %c7, %58 : vector<4x4x4xi1>
          %297 = index.castu %c13 : index to i32
          %splat_57 = tensor.splat %extracted_25 : tensor<8xf32>
          %298 = math.cttz %in_54 : i16
          %299 = math.log10 %expanded_27 : tensor<4x4x4x1xf16>
          %300 = math.atan2 %expanded, %expanded_27 : tensor<4x4x4x1xf16>
          %301 = memref.load %alloc_8[%c2, %c0] : memref<4x4xi64>
          %302 = math.log10 %16 : tensor<4x4x4xf16>
          %303 = math.rsqrt %17 : tensor<4x4x4xf16>
          %304 = index.casts %in_54 : i16 to index
          %305 = index.casts %c8 : index to i32
          %306 = math.atan %cst_5 : f32
          %307 = index.ceildivu %29, %23
          %308 = tensor.empty(%c0) : tensor<4x?xi16>
          %expanded_58 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<4x4x4xf16> into tensor<4x4x4x1xf16>
          scf.yield
        }
        case 3 {
          memref.store %c147688179_i64, %alloc_17[%c5] : memref<8xi64>
          %alloca_57 = memref.alloca() : memref<8xi1>
          %294 = vector.extract %283[2] : vector<8xi1>
          %295 = math.absf %6 : tensor<4x4xf16>
          memref.tensor_store %10, %alloc_19 : memref<4x4xi16>
          %296 = math.cttz %11 : tensor<8xi16>
          %297 = math.atan2 %84, %6 : tensor<4x4xf16>
          %298 = vector.matrix_multiply %117, %283 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 8 : i32} : (vector<11xi1>, vector<8xi1>) -> vector<88xi1>
          %299 = vector.broadcast %cst : f32 to vector<8xf32>
          vector.transfer_write %299, %alloc_26[%137, %56, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xf32>, memref<4x4x4xf32>
          %300 = arith.minf %cst, %extracted_25 : f32
          %301 = arith.divui %c844_i16, %in : i16
          %302 = vector.broadcast %extracted_55 : i32 to vector<8xi32>
          %303 = vector.gather %111[%137, %102, %c10] [%302], %283, %299 : tensor<4x4x4xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
          %304 = math.powf %13, %13 : tensor<8xf16>
          %305 = vector.create_mask %rank_31 : vector<8xi1>
          %306 = index.casts %true : i1 to index
          %307 = vector.broadcast %cst : f32 to vector<8x8xf32>
          %308 = vector.outerproduct %303, %303, %307 {kind = #vector.kind<add>} : vector<8xf32>, vector<8xf32>
          scf.yield
        }
        case 4 {
          %294 = arith.addf %cst, %cst_1 : f32
          %295 = memref.atomic_rmw mulf %cst, %alloc_20[%c6] : (f32, memref<8xf32>) -> f32
          %296 = math.ctpop %18 : tensor<8xi16>
          %297 = vector.broadcast %false_23 : i1 to vector<4x4x4xi1>
          %298 = arith.shrsi %true, %false : i1
          %from_elements_57 = tensor.from_elements %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_0, %cst_0 : tensor<8xf16>
          %299 = arith.addf %extracted_25, %cst : f32
          %300 = vector.transpose %91, [0] : vector<11xi64> to vector<11xi64>
          %301 = arith.minf %cst_1, %cst : f32
          %302 = vector.broadcast %c147688179_i64 : i64 to vector<11x11xi64>
          %303 = vector.outerproduct %93, %93, %302 {kind = #vector.kind<minsi>} : vector<11xi64>, vector<11xi64>
          %304 = arith.divsi %c1768117351_i32, %c1173614337_i32 : i32
          %305 = memref.load %alloc_26[%c3, %c2, %c1] : memref<4x4x4xf32>
          %306 = arith.remf %cst_4, %cst_2 : f16
          %307 = math.tan %cst_1 : f32
          %308 = arith.remui %c243339535_i32, %c243339535_i32 : i32
          %309 = arith.maxui %extracted, %c1768117351_i32 : i32
          scf.yield
        }
        default {
          %294 = vector.create_mask %63, %137 : vector<4x4xi1>
          %295 = index.divs %31, %c3
          %296 = vector.broadcast %false_23 : i1 to vector<4xi1>
          %297 = vector.maskedload %alloc[%c1, %c3, %c2], %296, %19 : memref<4x4x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %298 = vector.extract_strided_slice %92 {offsets = [2], sizes = [9], strides = [1]} : vector<11xi1> to vector<9xi1>
          %299 = index.casts %extracted : i32 to index
          %300 = arith.minf %cst_2, %cst_0 : f16
          %301 = arith.divf %cst_2, %cst_0 : f16
          %false_57 = index.bool.constant false
          %302 = arith.ori %c844_i16, %in_54 : i16
          %303 = arith.remf %cst_5, %cst : f32
          %304 = index.sizeof
          %305 = vector.shuffle %283, %283 [1, 5, 8, 10, 13, 14, 15] : vector<8xi1>, vector<8xi1>
          %306 = math.absf %111 : tensor<4x4x4xf32>
          %307 = affine.apply affine_map<(d0, d1) -> ((d0 - d1) floordiv 32)>(%c0, %54)
          %308 = math.atan2 %cst, %extracted_25 : f32
          %309 = vector.multi_reduction <mul>, %19, %297 [] : vector<4xi64> to vector<4xi64>
        }
        %287 = math.log10 %cst_0 : f16
        %288 = index.divs %150, %54
        %289 = tensor.empty(%137, %c2) : tensor<?x?xi64>
        %290 = arith.divui %in_53, %in_54 : i16
        %291 = arith.cmpi ult, %extracted, %extracted_55 : i32
        %292 = index.add %c3, %280
        %293 = arith.ceildivsi %c243339535_i32, %c1768117351_i32 : i32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %160 = arith.cmpf ugt, %cst_4, %cst_2 : f16
    %161 = vector.broadcast %c147688179_i64 : i64 to vector<16xi64>
    %162 = vector.broadcast %true : i1 to vector<16xi1>
    %163 = vector.maskedload %alloc_21[], %162, %161 : memref<i64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
    %164 = tensor.empty() : tensor<8xi64>
    %mapped_35 = linalg.map ins(%5 : tensor<8xi64>) outs(%164 : tensor<8xi64>)
      (%in: i64) {
        %263 = index.divs %c0, %142
        %264 = math.expm1 %17 : tensor<4x4x4xf16>
        %265 = affine.apply affine_map<(d0, d1) -> ((d0 - 8) ceildiv 2)>(%97, %58)
        %266 = math.exp2 %51 : tensor<8xf16>
        %267 = math.ctpop %8 : tensor<4x4x4xi64>
        %268 = bufferization.clone %alloc : memref<4x4x4xi64> to memref<4x4x4xi64>
        %269 = vector.broadcast %c147688179_i64 : i64 to vector<8xi64>
        %270 = vector.broadcast %false_23 : i1 to vector<8xi1>
        %271 = vector.broadcast %extracted : i32 to vector<8xi32>
        %272 = vector.gather %2[%c11, %263] [%271], %270, %269 : tensor<4x4xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        %273 = vector.extract %162[9] : vector<16xi1>
        %true_53 = index.bool.constant true
        scf.index_switch %27 
        case 1 {
          %298 = arith.ori %true_53, %false_23 : i1
          %299 = memref.atomic_rmw mulf %extracted_25, %alloc_18[%c0, %c0] : (f32, memref<4x4xf32>) -> f32
          %300 = arith.maxui %c425051238_i64, %extracted_24 : i64
          %301 = index.castu %28 : index to i32
          %302 = math.tanh %6 : tensor<4x4xf16>
          %303 = math.exp2 %cst_2 : f16
          %304 = arith.remf %cst_4, %cst_2 : f16
          %305 = math.log10 %cst_3 : f32
          %306 = math.log2 %cst : f32
          %307 = vector.broadcast %false_23 : i1 to vector<4xi1>
          %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %81, %307 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi1>, vector<4xi1>
          %308 = vector.broadcast %c7995_i16 : i16 to vector<8x8xi16>
          vector.transfer_write %308, %60[%23, %28, %85] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x8xi16>, memref<4x4x4xi16>
          %309 = vector.broadcast %c844_i16 : i16 to vector<8xi16>
          %310 = vector.gather %alloc_14[%c7] [%271], %270, %309 : memref<8xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
          %311 = index.divu %31, %56
          %312 = vector.create_mask %113, %152 : vector<4x4xi1>
          %313 = math.round %extracted_25 : f32
          %314 = arith.mulf %cst_1, %cst_5 : f32
          scf.yield
        }
        case 2 {
          memref.store %cst_0, %alloc_15[%c7] : memref<8xf16>
          %298 = index.floordivs %rank, %23
          %299 = vector.extract %270[2] : vector<8xi1>
          %300 = index.maxu %c10, %152
          %301 = vector.broadcast %true_53 : i1 to vector<i1>
          %302 = vector.transfer_write %301, %3[%152, %23] : vector<i1>, tensor<4x4xi1>
          %303 = arith.minf %extracted_25, %cst : f32
          %304 = math.tanh %13 : tensor<8xf16>
          %305 = tensor.empty() : tensor<4x4xf16>
          %306 = linalg.matmul ins(%6, %6 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%305 : tensor<4x4xf16>) -> tensor<4x4xf16>
          %307 = vector.extract_strided_slice %46 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4xf32> to vector<4x4xf32>
          memref.store %c844_i16, %alloc_14[%c5] : memref<8xi16>
          memref.tensor_store %5, %alloc_17 : memref<8xi64>
          %308 = vector.bitcast %270 : vector<8xi1> to vector<8xi1>
          %309 = math.log2 %cst_1 : f32
          %310 = vector.extract_strided_slice %154 {offsets = [0], sizes = [2], strides = [1]} : vector<2x4xi1> to vector<2x4xi1>
          %311 = arith.shrsi %c7995_i16, %c844_i16 : i16
          %312 = math.tan %84 : tensor<4x4xf16>
          scf.yield
        }
        default {
          %298 = arith.maxsi %false_23, %true_53 : i1
          %299 = vector.broadcast %false_23 : i1 to vector<4x2xi1>
          %300 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %94, %154, %299 : vector<4x4xi1>, vector<2x4xi1> into vector<4x2xi1>
          %301 = bufferization.clone %alloc_11 : memref<4x4x4xi16> to memref<4x4x4xi16>
          %302 = arith.xori %true, %true_53 : i1
          %303 = math.log2 %cst_0 : f16
          %304 = index.casts %31 : index to i32
          %305 = bufferization.to_tensor %alloc_17 : memref<8xi64>
          %306 = arith.maxui %true, %false_23 : i1
          %307 = math.absi %c425051238_i64 : i64
          %308 = arith.addf %cst_3, %cst : f32
          %309 = vector.splat %c844_i16 : vector<8xi16>
          %310 = math.exp2 %15 : tensor<8xf32>
          %311 = arith.cmpf false, %cst_5, %extracted_25 : f32
          %312 = math.ipowi %7, %splat : tensor<8xi32>
          %313 = math.fpowi %15, %7 : tensor<8xf32>, tensor<8xi32>
          %314 = index.add %rank_31, %c15
        }
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %81, %153, %153 : vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
        %275 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %276 = vector.create_mask %63, %c11 : vector<4x4xi1>
        %277 = tensor.empty() : tensor<4xf16>
        %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_16, %6, %277 : memref<4x4xf16>, tensor<4x4xf16>, tensor<4xf16>) outs(%14 : tensor<4x4x4xf16>) {
        ^bb0(%in_54: f16, %in_55: f16, %in_56: f16, %out: f16):
          %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %153, %81, %276 : vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
          %299 = bufferization.clone %alloc_19 : memref<4x4xi16> to memref<4x4xi16>
          %300 = arith.remf %cst_1, %cst_1 : f32
          %301 = math.cttz %8 : tensor<4x4x4xi64>
          %302 = vector.splat %c7 : vector<8xindex>
          %303 = math.absf %cst_4 : f16
          %304 = vector.broadcast %c147688179_i64 : i64 to vector<11x11xi64>
          %305 = vector.outerproduct %93, %91, %304 {kind = #vector.kind<maxui>} : vector<11xi64>, vector<11xi64>
          %306 = math.ctlz %1 : tensor<8xi64>
          %307 = affine.load %alloc_15[%c15] : memref<8xf16>
          %308 = math.log10 %cst_3 : f32
          %309 = index.maxu %c9, %c5
          %310 = arith.addf %cst_1, %cst_1 : f32
          %311 = math.floor %cst_5 : f32
          %312 = arith.shrsi %c1768117351_i32, %extracted : i32
          %inserted_57 = tensor.insert %c7995_i16 into %transposed[%c7] : tensor<8xi16>
          %313 = arith.remui %c1768117351_i32, %extracted : i32
          %false_58 = index.bool.constant false
          %314 = vector.broadcast %c7995_i16 : i16 to vector<i16>
          vector.transfer_write %314, %alloc_14[%c11] : vector<i16>, memref<8xi16>
          %315 = math.rsqrt %13 : tensor<8xf16>
          %316 = arith.minui %extracted, %extracted : i32
          %317 = math.tanh %cst_0 : f16
          %318 = math.cttz %21 : tensor<i32>
          %319 = memref.atomic_rmw maxf %cst_1, %alloc_18[%c2, %c0] : (f32, memref<4x4xf32>) -> f32
          %320 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%31, %150, %c6)
          %splat_59 = tensor.splat %in_54 : tensor<8xf16>
          %321 = math.absi %7 : tensor<8xi32>
          vector.print %91 : vector<11xi64>
          %rank_60 = tensor.rank %10 : tensor<4x4xi16>
          %322 = math.cttz %2 : tensor<4x4xi64>
          %323 = math.ctlz %c243339535_i32 : i32
          %324 = arith.divsi %true_53, %false_23 : i1
          %325 = vector.matrix_multiply %26, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
          linalg.yield %cst_0 : f16
        } -> tensor<4x4x4xf16>
        %279 = scf.execute_region -> tensor<4x4x4xi16> {
          %298 = index.sub %c11, %c0
          %299 = bufferization.clone %33 : memref<4x4xi16> to memref<4x4xi16>
          %300 = math.cos %extracted_25 : f32
          %301 = index.sizeof
          %302 = index.sizeof
          %303 = index.divu %142, %150
          memref.tensor_store %51, %alloc_10 : memref<8xf16>
          %304 = arith.divui %in, %c425051238_i64 : i64
          %305 = index.divu %113, %58
          %extracted_54 = tensor.extract %111[%c0, %c0, %c1] : tensor<4x4x4xf32>
          %306 = bufferization.clone %alloc_16 : memref<4x4xf16> to memref<4x4xf16>
          %307 = math.exp2 %84 : tensor<4x4xf16>
          %308 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%c15, %150, %31)
          %309 = math.ctlz %false : i1
          %310 = vector.extract_strided_slice %94 {offsets = [2], sizes = [1], strides = [1]} : vector<4x4xi1> to vector<1x4xi1>
          %311 = vector.multi_reduction <add>, %153, %153 [] : vector<4x4xi1> to vector<4x4xi1>
          scf.yield %159 : tensor<4x4x4xi16>
        }
        %280 = arith.divsi %in, %extracted_24 : i64
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %92, %92, %false_23 : vector<11xi1>, vector<11xi1> into i1
        %282 = arith.floordivsi %c147688179_i64, %c147688179_i64 : i64
        %283 = arith.remf %cst_3, %cst : f32
        %284 = arith.ori %true, %false : i1
        memref.store %c425051238_i64, %alloc_9[%c1, %c3] : memref<4x4xi64>
        %285 = arith.ceildivsi %extracted_24, %extracted_24 : i64
        %286 = index.divu %c2, %c2
        %287 = vector.broadcast %c425051238_i64 : i64 to vector<16x16xi64>
        %288 = vector.outerproduct %161, %163, %287 {kind = #vector.kind<minsi>} : vector<16xi64>, vector<16xi64>
        %289 = vector.broadcast %extracted : i32 to vector<8xi32>
        %290 = vector.broadcast %cst_5 : f32 to vector<4xf32>
        %dest, %accumulated_value = vector.scan <mul>, %80, %290 {inclusive = true, reduction_dim = 0 : i64} : vector<1x4xf32>, vector<4xf32>
        %291 = affine.load %268[%c0, %c13, %c4] : memref<4x4x4xi64>
        %292 = vector.broadcast %123 : index to vector<4xindex>
        %293 = vector.broadcast %true : i1 to vector<4xi1>
        vector.scatter %alloc_8[%c0, %c1] [%292], %293, %26 : memref<4x4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %294 = tensor.empty() : tensor<4x4x4xi32>
        %295 = math.fpowi %14, %294 : tensor<4x4x4xf16>, tensor<4x4x4xi32>
        %296 = vector.extract %161[10] : vector<16xi64>
        scf.index_switch %rank 
        case 1 {
          %298 = arith.ori %c243339535_i32, %extracted : i32
          %299 = math.roundeven %13 : tensor<8xf16>
          %300 = index.casts %c3 : index to i32
          %301 = vector.broadcast %286 : index to vector<8xindex>
          vector.scatter %alloc_13[%c1] [%301], %270, %270 : memref<8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %302 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%64, %rank_31, %64, %150)
          %303 = index.ceildivu %c2, %150
          %cst_54 = arith.constant 1.6864393E+9 : f32
          %304 = tensor.empty() : tensor<8xi64>
          %305 = math.tan %0 : tensor<4x4x4xf16>
          %306 = vector.broadcast %c147688179_i64 : i64 to vector<16x16xi64>
          %307 = vector.outerproduct %161, %161, %306 {kind = #vector.kind<maxui>} : vector<16xi64>, vector<16xi64>
          %308 = vector.broadcast %true_53 : i1 to vector<4x2xi1>
          %309 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %94, %154, %308 : vector<4x4xi1>, vector<2x4xi1> into vector<4x2xi1>
          %310 = math.ipowi %10, %10 : tensor<4x4xi16>
          %311 = index.ceildivu %97, %56
          %312 = math.log2 %14 : tensor<4x4x4xf16>
          %313 = vector.broadcast %cst_4 : f16 to vector<4xf16>
          %314 = vector.transfer_write %313, %84[%121, %rank_31] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf16>, tensor<4x4xf16>
          %315 = math.ctlz %1 : tensor<8xi64>
          scf.yield
        }
        default {
          %true_54 = index.bool.constant true
          %298 = math.roundeven %14 : tensor<4x4x4xf16>
          bufferization.dealloc_tensor %159 : tensor<4x4x4xi16>
          %299 = arith.divf %cst_2, %cst_0 : f16
          %300 = bufferization.clone %alloc_16 : memref<4x4xf16> to memref<4x4xf16>
          %301 = memref.atomic_rmw mulf %cst_2, %alloc_10[%c7] : (f16, memref<8xf16>) -> f16
          %302 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c8, %c13, %286, %265)
          %303 = index.floordivs %142, %23
          %304 = arith.divf %cst_4, %cst_0 : f16
          %305 = math.cttz %164 : tensor<8xi64>
          %306 = index.add %c6, %31
          memref.tensor_store %6, %300 : memref<4x4xf16>
          %307 = arith.shrsi %c844_i16, %c7995_i16 : i16
          %308 = math.cttz %extracted_24 : i64
          %309 = math.roundeven %expanded : tensor<4x4x4x1xf16>
          %310 = index.sizeof
        }
        %297 = arith.divui %false, %false : i1
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %165 = math.sqrt %6 : tensor<4x4xf16>
    %166 = math.ipowi %11, %9 : tensor<8xi16>
    %167 = math.copysign %111, %111 : tensor<4x4x4xf32>
    %168 = math.log10 %6 : tensor<4x4xf16>
    %169 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%14 : tensor<4x4x4xf16>) {
    ^bb0(%out: f16):
      %263 = bufferization.clone %136 : memref<4x4xf32> to memref<4x4xf32>
      %264 = affine.apply affine_map<(d0) -> (((d0 ceildiv 32) ceildiv 8) ceildiv 128)>(%c2)
      %265 = math.log %cst : f32
      %266 = arith.shrsi %false, %false_23 : i1
      %267 = vector.extract_strided_slice %153 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4xi1> to vector<4x4xi1>
      %268 = math.cttz %false : i1
      %269 = memref.load %141[%c4] : memref<8xi16>
      %270 = arith.maxui %c147688179_i64, %c147688179_i64 : i64
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %19, %19, %c425051238_i64 : vector<4xi64>, vector<4xi64> into i64
      memref.assume_alignment %136, 8 : memref<4x4xf32>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<4x4x4xf16>) {
      ^bb0(%out_58: f16):
        %from_elements_59 = tensor.from_elements %cst_5, %cst_5, %cst_5, %cst_5, %extracted_25, %cst_5, %extracted_25, %cst, %extracted_25, %extracted_25, %cst_3, %extracted_25, %extracted_25, %extracted_25, %cst, %cst, %cst_5, %cst_5, %cst_3, %extracted_25, %extracted_25, %cst_1, %cst_1, %cst, %cst_3, %extracted_25, %cst_5, %cst_5, %extracted_25, %cst_5, %cst_3, %extracted_25, %cst_3, %extracted_25, %cst_5, %extracted_25, %extracted_25, %cst, %cst_5, %cst_3, %cst, %cst_1, %cst_1, %cst_3, %cst, %cst_3, %extracted_25, %cst_1, %cst_5, %cst_5, %cst, %cst_5, %cst_3, %cst_1, %extracted_25, %cst_5, %cst_1, %cst_1, %cst_3, %cst_5, %cst, %cst_3, %cst_3, %cst_3 : tensor<4x4x4xf32>
        %289 = vector.matrix_multiply %91, %26 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 4 : i32} : (vector<11xi64>, vector<4xi64>) -> vector<44xi64>
        %expanded_60 = tensor.expand_shape %4 [[0, 1]] : tensor<8xi1> into tensor<8x1xi1>
        %290 = math.exp %84 : tensor<4x4xf16>
        %291 = index.add %c1, %c15
        %292 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d1) mod 64)>(%c12, %c14, %137)
        %293 = bufferization.to_tensor %alloc_9 : memref<4x4xi64>
        %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<4x4xi16> into tensor<16xi16>
        %294 = vector.broadcast %c7995_i16 : i16 to vector<i16>
        %295 = vector.transfer_write %294, %10[%c0, %rank] : vector<i16>, tensor<4x4xi16>
        %296 = index.add %97, %rank_31
        %297 = arith.shrsi %c243339535_i32, %extracted : i32
        %298 = vector.broadcast %cst_2 : f16 to vector<8xf16>
        %299 = arith.mulf %extracted_25, %cst : f32
        %300 = math.ctlz %159 : tensor<4x4x4xi16>
        %301 = math.atan2 %from_elements_59, %from_elements_59 : tensor<4x4x4xf32>
        %302 = vector.shuffle %46, %80 [0, 1, 2, 4] : vector<4x4xf32>, vector<1x4xf32>
        %303 = math.exp2 %14 : tensor<4x4x4xf16>
        %304 = index.casts %false : i1 to index
        %305 = index.ceildivs %c9, %113
        %306 = vector.reduction <minui>, %93 : vector<11xi64> into i64
        %extracted_61 = tensor.extract %12[%c7] : tensor<8xi32>
        %307 = arith.divui %extracted, %extracted : i32
        %rank_62 = tensor.rank %0 : tensor<4x4x4xf16>
        %308 = math.exp %out_58 : f16
        %309 = arith.ori %false_23, %true : i1
        %310 = index.maxu %c2, %rank_31
        %311 = vector.transpose %82, [0, 1] : vector<4x4xi32> to vector<4x4xi32>
        %312 = arith.divsi %c1173614337_i32, %c1173614337_i32 : i32
        %313 = index.floordivs %28, %28
        %314 = vector.extract_strided_slice %81 {offsets = [1], sizes = [1], strides = [1]} : vector<4x4xi1> to vector<1x4xi1>
        %rank_63 = tensor.rank %293 : tensor<4x4xi64>
        %315 = vector.broadcast %c147688179_i64 : i64 to vector<4x4xi64>
        %316 = vector.gather %164[%310] [%82], %153, %315 : tensor<8xi64>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi64> into vector<4x4xi64>
        linalg.yield %cst_4 : f16
      } -> tensor<4x4x4xf16>
      %273 = vector.broadcast %false_23 : i1 to vector<16x16xi1>
      %274 = vector.outerproduct %162, %162, %273 {kind = #vector.kind<mul>} : vector<16xi1>, vector<16xi1>
      %from_elements_53 = tensor.from_elements %c7995_i16, %c844_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c7995_i16, %c844_i16, %c7995_i16 : tensor<8xi16>
      %275 = math.rsqrt %cst_0 : f16
      %276 = math.ipowi %c147688179_i64, %c147688179_i64 : i64
      %277 = math.exp %16 : tensor<4x4x4xf16>
      %278 = math.tanh %0 : tensor<4x4x4xf16>
      affine.for %arg1 = 0 to 23 {
      }
      %279 = index.ceildivu %137, %107
      %280 = index.casts %121 : index to i32
      %281 = arith.minf %out, %cst_0 : f16
      %282 = math.absi %c7995_i16 : i16
      %extracted_54 = tensor.extract %7[%c5] : tensor<8xi32>
      %283 = bufferization.to_memref %5 : memref<8xi64>
      %from_elements_55 = tensor.from_elements %false_23, %false_23, %false_23, %false, %true, %false_23, %false_23, %true, %true, %true, %false, %false_23, %true, %false, %false_23, %false_23 : tensor<4x4xi1>
      %284 = math.round %expanded : tensor<4x4x4x1xf16>
      %expanded_56 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
      %285 = math.ctpop %8 : tensor<4x4x4xi64>
      %286 = math.log1p %cst_0 : f16
      %alloc_57 = memref.alloc() : memref<4x4x4xf16>
      memref.tensor_store %14, %alloc_57 : memref<4x4x4xf16>
      %287 = arith.shrsi %true, %false_23 : i1
      %288 = math.ctlz %7 : tensor<8xi32>
      linalg.yield %cst_4 : f16
    } -> tensor<4x4x4xf16>
    %170 = affine.load %alloc_19[%c10, %c4] : memref<4x4xi16>
    %cst_36 = arith.constant 8.368000e+03 : f16
    %171 = vector.broadcast %cst_2 : f16 to vector<8xf16>
    %172 = vector.multi_reduction <add>, %114, %171 [0, 1] : vector<8x16x8xf16> to vector<8xf16>
    %173 = arith.divsi %c844_i16, %170 : i16
    %174 = math.absi %c7995_i16 : i16
    %175 = math.tan %13 : tensor<8xf16>
    %176 = arith.xori %c243339535_i32, %c1768117351_i32 : i32
    %cast = tensor.cast %10 : tensor<4x4xi16> to tensor<?x?xi16>
    %177 = math.atan2 %13, %51 : tensor<8xf16>
    %178 = vector.broadcast %c243339535_i32 : i32 to vector<8xi32>
    %179 = scf.execute_region -> vector<4x4xi1> {
      %263 = arith.minsi %c243339535_i32, %c1768117351_i32 : i32
      %264 = index.sizeof
      %265 = arith.floordivsi %c1173614337_i32, %c1768117351_i32 : i32
      %266 = math.exp %cst_3 : f32
      %267 = memref.atomic_rmw andi %c1768117351_i32, %alloc_22[%c6] : (i32, memref<8xi32>) -> i32
      %268 = vector.extract_strided_slice %19 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi64> to vector<1xi64>
      affine.for %arg1 = 0 to 97 {
      }
      %269 = arith.cmpf ule, %cst_4, %cst_4 : f16
      %270 = math.ctpop %10 : tensor<4x4xi16>
      %271 = math.atan %16 : tensor<4x4x4xf16>
      %rank_53 = tensor.rank %9 : tensor<8xi16>
      %272 = bufferization.to_tensor %60 : memref<4x4x4xi16>
      %273 = bufferization.clone %136 : memref<4x4xf32> to memref<4x4xf32>
      %274 = affine.load %alloc_10[%c13] : memref<8xf16>
      %275 = vector.matrix_multiply %163, %163 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
      %276 = math.log %cst_2 : f16
      scf.yield %94 : vector<4x4xi1>
    }
    %180 = arith.floordivsi %c1768117351_i32, %c1173614337_i32 : i32
    %181 = memref.atomic_rmw addf %cst_5, %alloc_20[%c7] : (f32, memref<8xf32>) -> f32
    %alloc_37 = memref.alloc() : memref<8xi32>
    %182 = math.exp %0 : tensor<4x4x4xf16>
    %183 = math.ctlz %2 : tensor<4x4xi64>
    %184 = vector.broadcast %cst_5 : f32 to vector<4xf32>
    %185 = vector.multi_reduction <minf>, %80, %184 [0] : vector<1x4xf32> to vector<4xf32>
    %rank_38 = tensor.rank %111 : tensor<4x4x4xf32>
    %generated_39 = tensor.generate %c0 {
    ^bb0(%arg1: index):
      %inserted_53 = tensor.insert %c425051238_i64 into %1[%c3] : tensor<8xi64>
      %263 = vector.insertelement %cst_4, %78[] : vector<f16>
      %264 = vector.broadcast %103 : index to vector<11xindex>
      %265 = vector.broadcast %c1173614337_i32 : i32 to vector<11xi32>
      vector.scatter %alloc_12[%c3] [%264], %92, %265 : memref<8xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
      %266 = math.atan2 %cst_5, %cst : f32
      tensor.yield %extracted : i32
    } : tensor<?xi32>
    %186 = math.absi %4 : tensor<8xi1>
    %187 = math.ceil %expanded_27 : tensor<4x4x4x1xf16>
    %188 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %184, %46, %184 : vector<4xf32>, vector<4x4xf32> into vector<4xf32>
    %189 = affine.load %136[%c8, %c0] : memref<4x4xf32>
    %190 = index.divu %103, %c6
    %191 = arith.remf %cst_0, %cst_4 : f16
    %192 = vector.splat %97 : vector<8xindex>
    %193 = memref.realloc %alloc_15 : memref<8xf16> to memref<11xf16>
    %194 = index.maxu %64, %c5
    %195 = math.ipowi %extracted_24, %c425051238_i64 : i64
    %196 = arith.minsi %extracted, %extracted : i32
    %197 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c12, %97, %152, %152)
    %198 = vector.extract_strided_slice %91 {offsets = [0], sizes = [8], strides = [1]} : vector<11xi64> to vector<8xi64>
    %199 = math.sqrt %cst : f32
    %inserted_40 = tensor.insert %c1173614337_i32 into %splat[%c5] : tensor<8xi32>
    %200 = vector.broadcast %cst_3 : f32 to vector<f32>
    %201 = vector.transfer_write %200, %111[%c5, %rank_33, %c2] : vector<f32>, tensor<4x4x4xf32>
    %generated_41 = tensor.generate %c6, %58, %rank_33 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%84, %0 : tensor<4x4xf16>, tensor<4x4x4xf16>) outs(%16 : tensor<4x4x4xf16>) {
      ^bb0(%in: f16, %in_54: f16, %out: f16):
        %265 = index.divu %rank, %121
        %266 = arith.divui %true, %true : i1
        %extracted_55 = tensor.extract %splat[%c2] : tensor<8xi32>
        %267 = arith.shrsi %false, %true : i1
        %268 = index.casts %c7995_i16 : i16 to index
        %269 = arith.maxsi %extracted_55, %c1768117351_i32 : i32
        %270 = math.ipowi %159, %159 : tensor<4x4x4xi16>
        %271 = index.floordivs %23, %c12
        %272 = bufferization.to_tensor %alloc_7 : memref<4x4x4xi32>
        %273 = math.fpowi %13, %7 : tensor<8xf16>, tensor<8xi32>
        %c1_i16 = arith.constant 1 : i16
        %274 = vector.transfer_read %10[%c5, %c9], %c1_i16 : tensor<4x4xi16>, vector<i16>
        %275 = math.ipowi %2, %2 : tensor<4x4xi64>
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %117, %92, %false_23 : vector<11xi1>, vector<11xi1> into i1
        %277 = math.tanh %out : f16
        %278 = vector.broadcast %cst : f32 to vector<8xf32>
        %279 = arith.maxui %c243339535_i32, %extracted_55 : i32
        %280 = memref.atomic_rmw assign %c147688179_i64, %alloc_17[%c0] : (i64, memref<8xi64>) -> i64
        %inserted_56 = tensor.insert %c1768117351_i32 into %12[%c6] : tensor<8xi32>
        %281 = arith.ori %false, %false : i1
        %282 = tensor.empty() : tensor<8xf16>
        %283 = memref.realloc %141 : memref<8xi16> to memref<11xi16>
        %284 = vector.broadcast %85 : index to vector<11xindex>
        vector.scatter %alloc_13[%c1] [%284], %92, %92 : memref<8xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
        %285 = arith.floordivsi %true, %false : i1
        memref.tensor_store %111, %alloc_26 : memref<4x4x4xf32>
        %286 = arith.remf %cst_2, %out : f16
        %287 = tensor.empty() : tensor<4x4xi64>
        %288 = linalg.matmul ins(%2, %2 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%287 : tensor<4x4xi64>) -> tensor<4x4xi64>
        %289 = math.absf %13 : tensor<8xf16>
        %alloc_57 = memref.alloc() : memref<4x4xi1>
        memref.tensor_store %3, %alloc_57 : memref<4x4xi1>
        %290 = vector.flat_transpose %163 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
        %291 = arith.addf %cst_1, %cst : f32
        %292 = index.ceildivs %113, %194
        %293 = vector.flat_transpose %93 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        linalg.yield %in_54 : f16
      } -> tensor<4x4x4xf16>
      %alloca_53 = memref.alloca() : memref<4x4x4xi1>
      %264 = vector.flat_transpose %91 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
      %collapsed = tensor.collapse_shape %generated_29 [[0, 1]] : tensor<?x4xi32> into tensor<?xi32>
      tensor.yield %extracted : i32
    } : tensor<?x?x?xi32>
    %202 = vector.broadcast %189 : f32 to vector<8xf32>
    %203 = vector.bitcast %95 : vector<1x4xi1> to vector<1x4xi1>
    %204 = math.exp %cst : f32
    %205 = affine.for %arg1 = 0 to 67 iter_args(%arg2 = %58) -> (index) {
      affine.yield %c3 : index
    }
    %206 = tensor.empty() : tensor<4xf16>
    %207 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6, %14, %206 : tensor<4x4xf16>, tensor<4x4x4xf16>, tensor<4xf16>) outs(%14 : tensor<4x4x4xf16>) {
    ^bb0(%in: f16, %in_53: f16, %in_54: f16, %out: f16):
      %263 = arith.minsi %c425051238_i64, %c425051238_i64 : i64
      %264 = index.floordivs %rank_31, %rank_33
      %265 = bufferization.clone %alloc_10 : memref<8xf16> to memref<8xf16>
      %266 = vector.matrix_multiply %198, %93 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 11 : i32} : (vector<8xi64>, vector<11xi64>) -> vector<88xi64>
      %267 = arith.divui %false_23, %false_23 : i1
      %268 = index.sizeof
      %269 = vector.create_mask %150 : vector<8xi1>
      memref.assume_alignment %136, 1 : memref<4x4xf32>
      %extracted_55 = tensor.extract %4[%c4] : tensor<8xi1>
      %270 = math.atan2 %14, %14 : tensor<4x4x4xf16>
      %expanded_56 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<4x4xi16> into tensor<4x4x1xi16>
      %271 = vector.create_mask %58, %c4, %c4 : vector<4x4x4xi1>
      %272 = vector.matrix_multiply %163, %266 {lhs_columns = 8 : i32, lhs_rows = 2 : i32, rhs_columns = 11 : i32} : (vector<16xi64>, vector<88xi64>) -> vector<22xi64>
      %273 = arith.minui %c147688179_i64, %extracted_24 : i64
      %274 = tensor.empty() : tensor<i64>
      %mapped_57 = linalg.map ins(%alloc_21, %alloc_21, %alloc_21 : memref<i64>, memref<i64>, memref<i64>) outs(%274 : tensor<i64>)
        (%in_59: i64, %in_60: i64, %in_61: i64) {
          %292 = arith.ceildivsi %true, %true : i1
          %expanded_62 = tensor.expand_shape %51 [[0, 1]] : tensor<8xf16> into tensor<8x1xf16>
          %293 = arith.addf %cst, %cst_5 : f32
          %294 = vector.splat %28 : vector<4x4x4xindex>
          %295 = math.fma %in_54, %in_53, %cst_4 : f16
          %296 = vector.flat_transpose %202 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
          %297 = vector.broadcast %cst_5 : f32 to vector<4x4xf32>
          %298 = vector.broadcast %cst_1 : f32 to vector<8xf32>
          %true_63 = index.bool.constant true
          %299 = memref.atomic_rmw andi %170, %alloc_19[%c3, %c3] : (i16, memref<4x4xi16>) -> i16
          %300 = bufferization.to_tensor %alloc_8 : memref<4x4xi64>
          %301 = memref.atomic_rmw maxf %cst_0, %265[%c7] : (f16, memref<8xf16>) -> f16
          %302 = memref.atomic_rmw muli %extracted_24, %alloc_17[%c3] : (i64, memref<8xi64>) -> i64
          %303 = arith.maxui %in_60, %in_59 : i64
          %alloc_64 = memref.alloc() : memref<i32>
          memref.tensor_store %20, %alloc_64 : memref<i32>
          %304 = memref.load %alloc_15[%c7] : memref<8xf16>
          %305 = math.round %cst_0 : f16
          %306 = arith.remf %in_54, %cst_0 : f16
          %307 = vector.broadcast %in_61 : i64 to vector<8xi64>
          %308 = math.cttz %5 : tensor<8xi64>
          %309 = vector.broadcast %cst_2 : f16 to vector<16x16xf16>
          %310 = vector.transfer_write %309, %16[%c7, %123, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x16xf16>, tensor<4x4x4xf16>
          %311 = math.tanh %cst_5 : f32
          %312 = math.exp2 %6 : tensor<4x4xf16>
          %313 = index.casts %28 : index to i32
          %314 = index.divs %27, %264
          %315 = index.ceildivu %137, %c7
          %316 = math.floor %15 : tensor<8xf32>
          %317 = math.tanh %cst_2 : f16
          %318 = arith.cmpf oeq, %extracted_25, %cst_3 : f32
          %319 = vector.flat_transpose %202 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
          %320 = vector.extract %109[8] : vector<16x11xf16>
          %321 = arith.cmpf one, %cst, %cst : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %275 = math.ctpop %extracted_55 : i1
      bufferization.dealloc_tensor %9 : tensor<8xi16>
      %276 = arith.remui %extracted, %extracted : i32
      %alloc_58 = memref.alloc() : memref<8xf32>
      memref.copy %alloc_20, %alloc_58 : memref<8xf32> to memref<8xf32>
      %277 = math.ceil %14 : tensor<4x4x4xf16>
      %278 = math.ipowi %2, %2 : tensor<4x4xi64>
      %279 = vector.broadcast %rank : index to vector<16xindex>
      %280 = vector.broadcast %c844_i16 : i16 to vector<16xi16>
      vector.scatter %33[%c3, %c3] [%279], %162, %280 : memref<4x4xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
      %281 = arith.xori %c7995_i16, %170 : i16
      %282 = math.log10 %13 : tensor<8xf16>
      %283 = arith.divui %extracted_55, %false : i1
      %284 = tensor.empty() : tensor<4x4xi1>
      %285 = linalg.matmul ins(%3, %3 : tensor<4x4xi1>, tensor<4x4xi1>) outs(%284 : tensor<4x4xi1>) -> tensor<4x4xi1>
      %286 = arith.maxsi %false, %true : i1
      %287 = affine.for %arg1 = 0 to 106 iter_args(%arg2 = %178) -> (vector<8xi32>) {
        affine.yield %178 : vector<8xi32>
      }
      scf.execute_region {
        %292 = vector.create_mask %113, %121, %c2 : vector<4x4x4xi1>
        %293 = math.log1p %cst_1 : f32
        %294 = memref.realloc %alloc_13 : memref<8xi1> to memref<16xi1>
        %295 = bufferization.clone %33 : memref<4x4xi16> to memref<4x4xi16>
        %296 = index.floordivs %28, %c4
        %297 = arith.minsi %c844_i16, %c7995_i16 : i16
        %298 = index.casts %54 : index to i32
        %299 = math.atan %189 : f32
        %300 = math.copysign %51, %13 : tensor<8xf16>
        %from_elements_59 = tensor.from_elements %cst_0, %cst_2, %cst_4, %cst_0, %in_54, %in_54, %cst_0, %in : tensor<8xf16>
        %301 = arith.addi %extracted_24, %c147688179_i64 : i64
        %302 = math.exp %0 : tensor<4x4x4xf16>
        %303 = math.roundeven %cst_5 : f32
        %304 = index.sub %102, %56
        %305 = index.ceildivu %c6, %123
        %306 = arith.shrsi %extracted, %c1768117351_i32 : i32
        scf.yield
      }
      %288 = math.log10 %in_54 : f16
      %289 = index.castu %c7995_i16 : i16 to index
      %290 = vector.broadcast %c147688179_i64 : i64 to vector<4x4xi64>
      %291 = vector.gather %8[%23, %64, %23] [%82], %81, %290 : tensor<4x4x4xi64>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi64> into vector<4x4xi64>
      linalg.yield %in : f16
    } -> tensor<4x4x4xf16>
    %208 = vector.broadcast %cst_3 : f32 to vector<16xf32>
    %209 = vector.maskedload %alloc_18[%c0, %c0], %162, %208 : memref<4x4xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
    %generated_42 = tensor.generate %c10 {
    ^bb0(%arg1: index, %arg2: index):
      %263 = arith.divf %cst_2, %cst_0 : f16
      %264 = arith.divui %c844_i16, %c844_i16 : i16
      %265 = arith.minf %cst_4, %cst_2 : f16
      %266 = arith.maxsi %c425051238_i64, %c147688179_i64 : i64
      tensor.yield %true : i1
    } : tensor<?x4xi1>
    %210 = arith.remf %189, %cst_5 : f32
    %211 = math.log10 %0 : tensor<4x4x4xf16>
    %generated_43 = tensor.generate %54 {
    ^bb0(%arg1: index):
      %263 = vector.broadcast %c425051238_i64 : i64 to vector<i64>
      %264 = vector.transfer_write %263, %5[%150] : vector<i64>, tensor<8xi64>
      %generated_53 = tensor.generate %137, %31, %150 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %267 = arith.negf %189 : f32
        affine.store %170, %33[%c13, %c0] : memref<4x4xi16>
        %268 = index.casts %c7995_i16 : i16 to index
        %269 = vector.extract %91[7] : vector<11xi64>
        tensor.yield %c1173614337_i32 : i32
      } : tensor<?x?x?xi32>
      %265 = math.log10 %111 : tensor<4x4x4xf32>
      %266 = math.exp %cst_3 : f32
      tensor.yield %c1768117351_i32 : i32
    } : tensor<?xi32>
    %212 = vector.flat_transpose %161 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
    %213 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %c425051238_i64 : vector<4xi64>, vector<4xi64> into i64
    %generated_44 = tensor.generate %c11, %137, %c13 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      memref.tensor_store %4, %alloc_13 : memref<8xi1>
      %263 = arith.mulf %cst_4, %cst_2 : f16
      %264 = vector.broadcast %cst_1 : f32 to vector<8xf32>
      %265 = math.sqrt %15 : tensor<8xf32>
      tensor.yield %c7995_i16 : i16
    } : tensor<?x?x?xi16>
    %214 = affine.load %alloc_15[%c8] : memref<8xf16>
    %215 = vector.broadcast %false_23 : i1 to vector<4xi1>
    %216 = vector.multi_reduction <maxsi>, %154, %215 [0] : vector<2x4xi1> to vector<4xi1>
    %217 = math.ctlz %159 : tensor<4x4x4xi16>
    %218 = math.expm1 %expanded_27 : tensor<4x4x4x1xf16>
    %219 = vector.bitcast %117 : vector<11xi1> to vector<11xi1>
    %220 = math.sqrt %14 : tensor<4x4x4xf16>
    %221 = math.copysign %expanded, %expanded : tensor<4x4x4x1xf16>
    %222 = math.tanh %cst : f32
    %223 = vector.broadcast %cst_1 : f32 to vector<8x8xf32>
    %224 = vector.outerproduct %202, %202, %223 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
    %225 = index.sizeof
    %226 = arith.divui %c1173614337_i32, %c243339535_i32 : i32
    %227 = math.log1p %expanded_27 : tensor<4x4x4x1xf16>
    %228 = memref.atomic_rmw maxf %cst_2, %alloc_16[%c2, %c1] : (f16, memref<4x4xf16>) -> f16
    %229 = math.exp2 %84 : tensor<4x4xf16>
    %230 = vector.shuffle %209, %184 [0, 1, 6, 9, 10, 11, 12, 13, 16] : vector<16xf32>, vector<4xf32>
    %231 = math.tan %0 : tensor<4x4x4xf16>
    %generated_45 = tensor.generate %c9, %194 {
    ^bb0(%arg1: index, %arg2: index):
      %263 = arith.maxf %cst_0, %cst_0 : f16
      %264 = vector.broadcast %cst_2 : f16 to vector<f16>
      %265 = vector.transfer_write %264, %13[%54] : vector<f16>, tensor<8xf16>
      %extracted_53 = tensor.extract %10[%c3, %c2] : tensor<4x4xi16>
      %266 = index.ceildivu %29, %85
      tensor.yield %214 : f16
    } : tensor<?x?xf16>
    %232 = math.ctlz %7 : tensor<8xi32>
    %rank_46 = tensor.rank %5 : tensor<8xi64>
    %233 = vector.matrix_multiply %202, %184 {lhs_columns = 4 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<4xf32>) -> vector<2xf32>
    %234 = tensor.empty() : tensor<8xi32>
    memref.assume_alignment %alloc_12, 1 : memref<8xi32>
    %235 = vector.create_mask %rank_38, %c14 : vector<4x4xi1>
    %236 = affine.load %136[%c10, %c5] : memref<4x4xf32>
    %237 = math.exp2 %189 : f32
    %238 = math.fma %cst_5, %extracted_25, %cst : f32
    %239 = math.ctlz %9 : tensor<8xi16>
    %240 = math.ctlz %10 : tensor<4x4xi16>
    %241 = index.sub %c12, %c4
    %242 = vector.broadcast %cst_1 : f32 to vector<4x4xf32>
    %243 = index.add %c12, %c10
    %from_elements = tensor.from_elements %c844_i16, %c844_i16, %170, %c844_i16, %c844_i16, %170, %c7995_i16, %c844_i16 : tensor<8xi16>
    %244 = arith.minsi %extracted, %c1768117351_i32 : i32
    %245 = vector.broadcast %64 : index to vector<4xindex>
    %246 = vector.broadcast %cst_2 : f16 to vector<4xf16>
    vector.scatter %alloc_16[%c3, %c2] [%245], %215, %246 : memref<4x4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
    %expanded_47 = tensor.expand_shape %1 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
    %247 = vector.bitcast %215 : vector<4xi1> to vector<4xi1>
    %248 = arith.cmpf uge, %189, %extracted_25 : f32
    %249 = index.sizeof
    %250 = math.tan %189 : f32
    %251 = tensor.empty() : tensor<4x4xi32>
    affine.for %arg1 = 0 to 26 {
    }
    %252 = vector.broadcast %170 : i16 to vector<4x4x4xi16>
    %253 = vector.maskedload %alloc_13[%c1], %162, %162 : memref<8xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
    %254 = vector.transpose %143, [] : vector<f16> to vector<f16>
    %255 = tensor.empty() : tensor<4x4x4xf16>
    %mapped_48 = linalg.map ins(%0 : tensor<4x4x4xf16>) outs(%255 : tensor<4x4x4xf16>)
      (%in: f16) {
        %263 = math.ipowi %21, %21 : tensor<i32>
        %264 = memref.atomic_rmw assign %extracted_24, %alloc_17[%c4] : (i64, memref<8xi64>) -> i64
        %265 = tensor.empty() : tensor<8xi32>
        %mapped_53 = linalg.map ins(%7, %12 : tensor<8xi32>, tensor<8xi32>) outs(%265 : tensor<8xi32>)
          (%in_60: i32, %in_61: i32) {
            %293 = index.add %c11, %c9
            %294 = memref.load %alloc_18[%c2, %c1] : memref<4x4xf32>
            %295 = math.rsqrt %in : f16
            %296 = arith.ceildivsi %in_60, %extracted : i32
            %rank_62 = tensor.rank %expanded_47 : tensor<8x1xi64>
            %297 = memref.atomic_rmw mins %170, %alloc_14[%c4] : (i16, memref<8xi16>) -> i16
            %298 = index.casts %false_23 : i1 to index
            %299 = math.round %17 : tensor<4x4x4xf16>
            %300 = vector.broadcast %cst_4 : f16 to vector<f16>
            vector.transfer_write %300, %alloc_16[%123, %85] : vector<f16>, memref<4x4xf16>
            %301 = math.ctlz %170 : i16
            %302 = vector.multi_reduction <minui>, %93, %c425051238_i64 [0] : vector<11xi64> to i64
            %303 = vector.create_mask %28, %113 : vector<4x4xi1>
            %304 = math.round %0 : tensor<4x4x4xf16>
            %305 = arith.remf %extracted_25, %extracted_25 : f32
            %306 = arith.addi %in_61, %c1173614337_i32 : i32
            %307 = arith.divsi %in_60, %c1768117351_i32 : i32
            %308 = math.ctlz %10 : tensor<4x4xi16>
            %309 = tensor.empty() : tensor<4x4xf32>
            %310 = vector.broadcast %cst_1 : f32 to vector<4x4x4xf32>
            %311 = vector.broadcast %false : i1 to vector<4x4x4xi1>
            %312 = vector.broadcast %in_60 : i32 to vector<4x4x4xi32>
            %313 = vector.gather %309[%c6, %298] [%312], %311, %310 : tensor<4x4xf32>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xf32> into vector<4x4x4xf32>
            %false_63 = index.bool.constant false
            %314 = bufferization.clone %alloc : memref<4x4x4xi64> to memref<4x4x4xi64>
            %315 = math.copysign %51, %13 : tensor<8xf16>
            %316 = tensor.empty() : tensor<4x4x4x1xi32>
            %317 = math.fpowi %expanded, %316 : tensor<4x4x4x1xf16>, tensor<4x4x4x1xi32>
            %318 = vector.bitcast %178 : vector<8xi32> to vector<8xi32>
            %319 = math.tanh %0 : tensor<4x4x4xf16>
            %320 = arith.remf %189, %cst_3 : f32
            %rank_64 = tensor.rank %8 : tensor<4x4x4xi64>
            %expanded_65 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
            %extracted_66 = tensor.extract %expanded_65[%c3, %c2, %c0] : tensor<4x4x1xf16>
            %321 = arith.minsi %c7995_i16, %c844_i16 : i16
            %322 = math.roundeven %15 : tensor<8xf32>
            %inserted_67 = tensor.insert %c147688179_i64 into %2[%c2, %c2] : tensor<4x4xi64>
            %323 = tensor.empty(%194) : tensor<4x4x?xi32>
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %266 = math.powf %15, %15 : tensor<8xf32>
        %267 = memref.atomic_rmw maxu %c147688179_i64, %alloc_17[%c0] : (i64, memref<8xi64>) -> i64
        %268 = vector.extract_strided_slice %215 {offsets = [1], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
        %cast_54 = tensor.cast %8 : tensor<4x4x4xi64> to tensor<?x?x?xi64>
        %269 = vector.broadcast %63 : index to vector<8xindex>
        %270 = vector.broadcast %false : i1 to vector<8xi1>
        %271 = vector.broadcast %170 : i16 to vector<8xi16>
        vector.scatter %alloc_6[%c2, %c3] [%269], %270, %271 : memref<4x4xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %272 = math.tanh %expanded_27 : tensor<4x4x4x1xf16>
        %273 = math.ctpop %4 : tensor<8xi1>
        %274 = index.casts %c147688179_i64 : i64 to index
        %splat_55 = tensor.splat %c844_i16 : tensor<4x4xi16>
        %275 = vector.broadcast %236 : f32 to vector<1xf32>
        %dest, %accumulated_value = vector.scan <mul>, %80, %275 {inclusive = true, reduction_dim = 1 : i64} : vector<1x4xf32>, vector<1xf32>
        %276 = index.mul %54, %137
        %277 = vector.extract_strided_slice %242 {offsets = [1], sizes = [2], strides = [1]} : vector<4x4xf32> to vector<2x4xf32>
        %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%27, %107, %rank_46, %54)
        %279 = math.cos %cst_0 : f16
        %280 = affine.load %136[%c15, %c9] : memref<4x4xf32>
        %281 = arith.addi %170, %170 : i16
        %282 = arith.ori %c844_i16, %c844_i16 : i16
        %283 = index.castu %58 : index to i32
        %284 = arith.maxsi %false_23, %false : i1
        %285 = math.fma %111, %111, %111 : tensor<4x4x4xf32>
        %286 = math.log10 %16 : tensor<4x4x4xf16>
        %extracted_56 = tensor.extract %14[%c0, %c0, %c3] : tensor<4x4x4xf16>
        %rank_57 = tensor.rank %4 : tensor<8xi1>
        %287 = math.exp2 %280 : f32
        %288 = index.casts %rank_33 : index to i32
        %rank_58 = tensor.rank %expanded_47 : tensor<8x1xi64>
        %289 = vector.matrix_multiply %162, %92 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 11 : i32} : (vector<16xi1>, vector<11xi1>) -> vector<176xi1>
        %290 = arith.maxsi %extracted, %c243339535_i32 : i32
        %291 = vector.broadcast %c12 : index to vector<16xindex>
        %292 = vector.broadcast %c1768117351_i32 : i32 to vector<16xi32>
        vector.scatter %alloc_7[%c2, %c0, %c1] [%291], %162, %292 : memref<4x4x4xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    %256 = math.expm1 %extracted_25 : f32
    %generated_49 = tensor.generate %c11, %28, %197 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %generated_53 = tensor.generate %c3 {
      ^bb0(%arg4: index, %arg5: index):
        %267 = index.divu %85, %23
        %268 = bufferization.clone %alloc_26 : memref<4x4x4xf32> to memref<4x4x4xf32>
        %269 = math.round %13 : tensor<8xf16>
        %270 = vector.broadcast %c425051238_i64 : i64 to vector<4x4xi64>
        %271 = vector.outerproduct %19, %26, %270 {kind = #vector.kind<add>} : vector<4xi64>, vector<4xi64>
        tensor.yield %extracted : i32
      } : tensor<?x4xi32>
      %263 = arith.divf %cst_0, %cst_4 : f16
      %264 = math.expm1 %255 : tensor<4x4x4xf16>
      %265 = tensor.empty() : tensor<4x4xf16>
      %266 = linalg.matmul ins(%6, %6 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%265 : tensor<4x4xf16>) -> tensor<4x4xf16>
      tensor.yield %false : i1
    } : tensor<?x?x?xi1>
    %257 = tensor.empty() : tensor<4x4x4xi64>
    %mapped_50 = linalg.map ins(%8, %8, %alloc : tensor<4x4x4xi64>, tensor<4x4x4xi64>, memref<4x4x4xi64>) outs(%257 : tensor<4x4x4xi64>)
      (%in: i64, %in_53: i64, %in_54: i64) {
        %false_55 = arith.constant false
        %263 = tensor.empty() : tensor<8xi16>
        %264 = index.maxu %121, %58
        %265 = index.floordivs %c0, %85
        %266 = arith.remf %cst, %cst : f32
        %267 = tensor.empty() : tensor<8xi16>
        %mapped_56 = linalg.map ins(%11 : tensor<8xi16>) outs(%267 : tensor<8xi16>)
          (%in_65: i16) {
            %286 = arith.minf %cst_3, %cst_3 : f32
            %287 = vector.splat %in : vector<8xi64>
            %288 = bufferization.to_tensor %alloc_10 : memref<8xf16>
            %289 = math.ctpop %9 : tensor<8xi16>
            %290 = vector.bitcast %212 : vector<16xi64> to vector<16xi64>
            %291 = math.absi %in : i64
            memref.store %170, %alloc_19[%c2, %c2] : memref<4x4xi16>
            %292 = math.round %expanded_27 : tensor<4x4x4x1xf16>
            %293 = vector.reduction <minui>, %290 : vector<16xi64> into i64
            %294 = math.tan %15 : tensor<8xf32>
            %295 = vector.flat_transpose %184 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
            %296 = math.expm1 %236 : f32
            %297 = math.ceil %cst : f32
            %298 = vector.extract_strided_slice %83 {offsets = [0], sizes = [2], strides = [1]} : vector<4x4xf32> to vector<2x4xf32>
            %299 = arith.remf %189, %extracted_25 : f32
            %300 = math.ctlz %164 : tensor<8xi64>
            %301 = vector.broadcast %c844_i16 : i16 to vector<i16>
            vector.transfer_write %301, %141[%31] : vector<i16>, memref<8xi16>
            %302 = math.round %236 : f32
            %303 = arith.minf %extracted_25, %extracted_25 : f32
            %304 = math.tanh %cst_1 : f32
            %305 = arith.andi %170, %in_65 : i16
            %306 = math.ctlz %8 : tensor<4x4x4xi64>
            %307 = bufferization.to_tensor %alloc_21 : memref<i64>
            %308 = vector.splat %64 : vector<8xindex>
            %309 = arith.xori %in_54, %extracted_24 : i64
            %310 = arith.minsi %in_65, %170 : i16
            %311 = math.tan %cst : f32
            %312 = bufferization.to_tensor %136 : memref<4x4xf32>
            %313 = tensor.empty() : tensor<8xi1>
            %314 = math.ipowi %transposed, %9 : tensor<8xi16>
            %315 = arith.maxf %cst_0, %cst_0 : f16
            %316 = arith.remf %cst, %189 : f32
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %rank_57 = tensor.rank %8 : tensor<4x4x4xi64>
        %268 = math.ipowi %12, %12 : tensor<8xi32>
        %269 = math.ceil %cst : f32
        %270 = vector.bitcast %198 : vector<8xi64> to vector<8xi64>
        %extracted_58 = tensor.extract %expanded[%c0, %c2, %c3, %c0] : tensor<4x4x4x1xf16>
        %271 = math.rsqrt %cst_1 : f32
        %272 = vector.broadcast %extracted_24 : i64 to vector<11x11xi64>
        %273 = vector.outerproduct %91, %93, %272 {kind = #vector.kind<minui>} : vector<11xi64>, vector<11xi64>
        %274 = arith.mulf %extracted_58, %cst_2 : f16
        %275 = index.ceildivu %264, %121
        %276 = vector.reduction <and>, %163 : vector<16xi64> into i64
        %expanded_59 = tensor.expand_shape %5 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
        %277 = index.casts %c5 : index to i32
        %extracted_60 = tensor.extract %251[%c2, %c2] : tensor<4x4xi32>
        %278 = vector.flat_transpose %171 {columns = 4 : i32, rows = 2 : i32} : vector<8xf16> -> vector<8xf16>
        %279 = vector.matrix_multiply %208, %184 {lhs_columns = 4 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<4xf32>) -> vector<4xf32>
        %280 = index.ceildivu %rank_46, %rank_38
        %281 = math.exp %14 : tensor<4x4x4xf16>
        %expanded_61 = tensor.expand_shape %18 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
        %282 = index.ceildivu %63, %102
        %283 = math.absi %extracted : i32
        %extracted_62 = tensor.extract %generated_29[%c0, %c3] : tensor<?x4xi32>
        %c635989661_i64 = arith.constant 635989661 : i64
        %284 = index.castu %extracted_62 : i32 to index
        %extracted_63 = tensor.extract %16[%c0, %c0, %c3] : tensor<4x4x4xf16>
        %cst_64 = arith.constant 1.37774042E+9 : f32
        %285 = arith.floordivsi %false_23, %true : i1
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %258 = tensor.empty() : tensor<8xi64>
    %259 = linalg.copy ins(%1 : tensor<8xi64>) outs(%258 : tensor<8xi64>) -> tensor<8xi64>
    %alloc_51 = memref.alloc() : memref<8xf16>
    linalg.transpose ins(%13 : tensor<8xf16>) outs(%alloc_51 : memref<8xf16>) permutation = [0] 
    %alloc_52 = memref.alloc() : memref<i16>
    linalg.reduce ins(%transposed : tensor<8xi16>) outs(%alloc_52 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %263 = vector.broadcast %extracted_24 : i64 to vector<i64>
        vector.transfer_write %263, %alloc_8[%225, %197] : vector<i64>, memref<4x4xi64>
        %264 = math.ctlz %12 : tensor<8xi32>
        %265 = arith.shrsi %c425051238_i64, %c425051238_i64 : i64
        %266 = arith.floordivsi %c1768117351_i32, %c243339535_i32 : i32
        %267 = vector.broadcast %false_23 : i1 to vector<8xi1>
        %268 = math.tanh %6 : tensor<4x4xf16>
        %269 = bufferization.clone %alloc_11 : memref<4x4x4xi16> to memref<4x4x4xi16>
        %270 = arith.remf %189, %extracted_25 : f32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %260 = scf.parallel (%arg1, %arg2) = (%c1, %rank_46) to (%c11, %c6) step (%c6, %c1) init (%117) -> vector<11xi1> {
      %263 = arith.negf %214 : f16
      %264 = tensor.empty() : tensor<8xf16>
      %265 = math.exp %cst_4 : f16
      %generated_53 = tensor.generate %142, %31, %194 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %276 = math.ipowi %true, %false : i1
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c4, %rank_46, %c10)
        %278 = math.log10 %84 : tensor<4x4xf16>
        %279 = vector.broadcast %cst_0 : f16 to vector<f16>
        vector.transfer_write %279, %alloc_15[%23] : vector<f16>, memref<8xf16>
        tensor.yield %extracted : i32
      } : tensor<?x?x?xi32>
      %266 = arith.addf %cst_5, %cst_3 : f32
      %267 = arith.remf %cst_0, %214 : f16
      %268 = arith.ori %170, %c7995_i16 : i16
      %269 = vector.reduction <xor>, %93 : vector<11xi64> into i64
      %270 = arith.shrsi %c147688179_i64, %extracted_24 : i64
      %271 = arith.minf %extracted_25, %cst_1 : f32
      %272 = vector.splat %c15 : vector<4x4x4xindex>
      %273 = vector.flat_transpose %178 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
      scf.index_switch %c9 
      case 1 {
        %alloc_55 = memref.alloc() : memref<4x4x4x1xf16>
        memref.tensor_store %expanded_27, %alloc_55 : memref<4x4x4x1xf16>
        %276 = arith.remf %236, %cst : f32
        %277 = arith.shrui %170, %c844_i16 : i16
        %278 = vector.broadcast %236 : f32 to vector<8xf32>
        %279 = math.absi %3 : tensor<4x4xi1>
        %280 = math.ipowi %c147688179_i64, %c425051238_i64 : i64
        %281 = vector.multi_reduction <maxsi>, %198, %extracted_24 [0] : vector<8xi64> to i64
        %rank_56 = tensor.rank %21 : tensor<i32>
        %282 = affine.load %alloc_18[%c11, %c6] : memref<4x4xf32>
        %283 = arith.divf %cst_2, %cst_0 : f16
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c0, %152, %rank_33)
        %285 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %false_57 = index.bool.constant false
        %alloca_58 = memref.alloca() : memref<8xi32>
        %286 = affine.apply affine_map<(d0) -> (((d0 ceildiv 32) ceildiv 8) ceildiv 128)>(%123)
        %287 = arith.maxf %214, %cst_4 : f16
        scf.yield
      }
      default {
        %276 = index.casts %true : i1 to index
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %122, %153, %122 : vector<2x4xi1>, vector<4x4xi1> into vector<2x4xi1>
        %278 = arith.mulf %214, %cst_0 : f16
        %279 = math.exp %cst_1 : f32
        %280 = math.copysign %extracted_25, %extracted_25 : f32
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %184, %242, %184 : vector<4xf32>, vector<4x4xf32> into vector<4xf32>
        %282 = arith.divui %c1173614337_i32, %c1768117351_i32 : i32
        %283 = arith.andi %c7995_i16, %c844_i16 : i16
        %284 = index.divu %225, %64
        %285 = math.log2 %214 : f16
        %286 = vector.extract_strided_slice %209 {offsets = [5], sizes = [10], strides = [1]} : vector<16xf32> to vector<10xf32>
        %alloc_55 = memref.alloc() : memref<4x4x4xf16>
        memref.tensor_store %17, %alloc_55 : memref<4x4x4xf16>
        %287 = vector.extract_strided_slice %273 {offsets = [0], sizes = [8], strides = [1]} : vector<8xi32> to vector<8xi32>
        %288 = math.round %cst_2 : f16
        %289 = math.exp2 %13 : tensor<8xf16>
        %290 = math.roundeven %cst : f32
      }
      %274 = vector.extract_strided_slice %253 {offsets = [14], sizes = [1], strides = [1]} : vector<16xi1> to vector<1xi1>
      bufferization.dealloc_tensor %20 : tensor<i32>
      %extracted_54 = tensor.extract %4[%c7] : tensor<8xi1>
      %275 = vector.broadcast %false : i1 to vector<11xi1>
      scf.reduce(%275)  : vector<11xi1> {
      ^bb0(%arg3: vector<11xi1>, %arg4: vector<11xi1>):
        %276 = index.sizeof
        %277 = arith.remf %cst, %cst_5 : f32
        %278 = memref.atomic_rmw maxu %c7995_i16, %alloc_11[%c1, %c0, %c1] : (i16, memref<4x4x4xi16>) -> i16
        %279 = vector.extract_strided_slice %153 {offsets = [2], sizes = [1], strides = [1]} : vector<4x4xi1> to vector<1x4xi1>
        %extracted_55 = tensor.extract %5[%c6] : tensor<8xi64>
        %280 = index.divs %249, %rank_38
        %281 = index.sizeof
        %282 = affine.load %alloc[%c15, %c6, %c2] : memref<4x4x4xi64>
        %283 = vector.broadcast %false_23 : i1 to vector<11xi1>
        scf.reduce.return %283 : vector<11xi1>
      }
      scf.yield
    }
    %261 = affine.vector_load %alloc_16[%29, %107] : memref<4x4xf16>, vector<16xf16>
    affine.vector_store %233, %alloc_20[%150] : memref<8xf32>, vector<2xf32>
    vector.print %19 : vector<4xi64>
    vector.print %26 : vector<4xi64>
    vector.print %46 : vector<4x4xf32>
    vector.print %78 : vector<f16>
    vector.print %80 : vector<1x4xf32>
    vector.print %81 : vector<4x4xi1>
    vector.print %82 : vector<4x4xi32>
    vector.print %83 : vector<4x4xf32>
    vector.print %91 : vector<11xi64>
    vector.print %92 : vector<11xi1>
    vector.print %93 : vector<11xi64>
    vector.print %94 : vector<4x4xi1>
    vector.print %95 : vector<1x4xi1>
    vector.print %109 : vector<16x11xf16>
    vector.print %114 : vector<8x16x8xf16>
    vector.print %117 : vector<11xi1>
    vector.print %122 : vector<2x4xi1>
    vector.print %143 : vector<f16>
    vector.print %153 : vector<4x4xi1>
    vector.print %154 : vector<2x4xi1>
    vector.print %161 : vector<16xi64>
    vector.print %162 : vector<16xi1>
    vector.print %163 : vector<16xi64>
    vector.print %171 : vector<8xf16>
    vector.print %178 : vector<8xi32>
    vector.print %184 : vector<4xf32>
    vector.print %198 : vector<8xi64>
    vector.print %200 : vector<f32>
    vector.print %202 : vector<8xf32>
    vector.print %203 : vector<1x4xi1>
    vector.print %208 : vector<16xf32>
    vector.print %209 : vector<16xf32>
    vector.print %212 : vector<16xi64>
    vector.print %215 : vector<4xi1>
    vector.print %219 : vector<11xi1>
    vector.print %233 : vector<2xf32>
    vector.print %235 : vector<4x4xi1>
    vector.print %242 : vector<4x4xf32>
    vector.print %247 : vector<4xi1>
    vector.print %252 : vector<4x4x4xi16>
    vector.print %253 : vector<16xi1>
    vector.print %261 : vector<16xf16>
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c243339535_i32 : i32
    vector.print %c844_i16 : i16
    vector.print %c1173614337_i32 : i32
    vector.print %c147688179_i64 : i64
    vector.print %cst_1 : f32
    vector.print %false : i1
    vector.print %c1768117351_i32 : i32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c425051238_i64 : i64
    vector.print %c7995_i16 : i16
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %false_23 : i1
    vector.print %extracted : i32
    vector.print %extracted_24 : i64
    vector.print %extracted_25 : f32
    vector.print %170 : i16
    vector.print %189 : f32
    vector.print %214 : f16
    vector.print %236 : f32
    %262 = vector.broadcast %false : i1 to vector<8xi1>
    return %262 : vector<8xi1>
  }
}
