module {
  func.func @func1(%arg0: i32) {
    %c1267058360_i32 = arith.constant 1267058360 : i32
    %true = arith.constant true
    %cst = arith.constant 0x4D8427FB : f32
    %cst_0 = arith.constant 6.128000e+04 : f16
    %cst_1 = arith.constant 3.443200e+04 : f16
    %c993638680_i32 = arith.constant 993638680 : i32
    %cst_2 = arith.constant 1.568000e+04 : f16
    %c848283327_i32 = arith.constant 848283327 : i32
    %false = arith.constant false
    %c1535624791_i32 = arith.constant 1535624791 : i32
    %cst_3 = arith.constant 2.908800e+04 : f16
    %c1122086390_i64 = arith.constant 1122086390 : i64
    %cst_4 = arith.constant 4.691200e+04 : f16
    %c20119_i16 = arith.constant 20119 : i16
    %true_5 = arith.constant true
    %c2293_i16 = arith.constant 2293 : i16
    %0 = tensor.empty() : tensor<16x16xi32>
    %1 = tensor.empty() : tensor<4x9x4xf16>
    %2 = tensor.empty() : tensor<4x4x16xi32>
    %3 = tensor.empty() : tensor<4x4x16xi64>
    %4 = tensor.empty() : tensor<4xf32>
    %5 = tensor.empty() : tensor<4xi32>
    %6 = tensor.empty() : tensor<16x16xi64>
    %7 = tensor.empty() : tensor<4xi1>
    %8 = tensor.empty() : tensor<4xi64>
    %9 = tensor.empty() : tensor<4x4x16xi16>
    %10 = tensor.empty() : tensor<4x4x16xi64>
    %11 = tensor.empty() : tensor<4x9x4xf32>
    %12 = tensor.empty() : tensor<4x4x16xi32>
    %13 = tensor.empty() : tensor<4x4x16xi64>
    %14 = tensor.empty() : tensor<16x16xi16>
    %15 = tensor.empty() : tensor<4x4x16xi64>
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
    %alloc = memref.alloc() : memref<16x16xi32>
    %alloc_6 = memref.alloc() : memref<16x16xf32>
    %alloc_7 = memref.alloc() : memref<4x4x16xi32>
    %alloc_8 = memref.alloc() : memref<4x4x16xf32>
    %alloc_9 = memref.alloc() : memref<4x4x16xi16>
    %alloc_10 = memref.alloc() : memref<16x16xi64>
    %alloc_11 = memref.alloc() : memref<16x16xi16>
    %alloc_12 = memref.alloc() : memref<4x9x4xi16>
    %alloc_13 = memref.alloc() : memref<4xf16>
    %alloc_14 = memref.alloc() : memref<4xi32>
    %alloc_15 = memref.alloc() : memref<4x4x16xf16>
    %alloc_16 = memref.alloc() : memref<16x16xi32>
    %alloc_17 = memref.alloc() : memref<4xi64>
    %alloc_18 = memref.alloc() : memref<4x9x4xf32>
    %alloc_19 = memref.alloc() : memref<4xf32>
    %alloc_20 = memref.alloc() : memref<4x9x4xi64>
    %16 = tensor.empty() : tensor<4x4x16xi64>
    %17 = linalg.copy ins(%10 : tensor<4x4x16xi64>) outs(%16 : tensor<4x4x16xi64>) -> tensor<4x4x16xi64>
    %alloc_21 = memref.alloc() : memref<4xi64>
    linalg.transpose ins(%8 : tensor<4xi64>) outs(%alloc_21 : memref<4xi64>) permutation = [0] 
    %18 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%alloc_14 : memref<4xi32>) outs(%18 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %258 = index.sizeof
        %259 = arith.maxsi %c1122086390_i64, %c1122086390_i64 : i64
        %260 = scf.execute_region -> index {
          %267 = math.log %cst_0 : f16
          %268 = math.cttz %14 : tensor<16x16xi16>
          %269 = math.atan %11 : tensor<4x9x4xf32>
          %270 = arith.remui %false, %true : i1
          %c1_i16_53 = arith.constant 1 : i16
          %c0_i16_54 = arith.constant 0 : i16
          %271 = vector.transfer_read %alloc_11[%c0, %c14], %c0_i16_54 : memref<16x16xi16>, vector<i16>
          %272 = math.copysign %4, %4 : tensor<4xf32>
          %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1, (d2 + d3) floordiv 4)>(%c8, %c15, %c10, %c15)
          %274 = arith.negf %cst_1 : f16
          %275 = math.log10 %cst_0 : f16
          %276 = affine.min affine_map<(d0) -> ((((d0 floordiv 2) floordiv 16) mod 16) * 2)>(%c15)
          %277 = index.add %c1, %c14
          %278 = arith.addi %c1122086390_i64, %c1122086390_i64 : i64
          %279 = vector.broadcast %cst : f32 to vector<1xf32>
          %280 = vector.extract_strided_slice %279 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %281 = math.ctlz %0 : tensor<16x16xi32>
          %282 = vector.flat_transpose %279 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %283 = affine.min affine_map<(d0) -> (2, 0)>(%c2)
          scf.yield %c5 : index
        }
        %261 = vector.broadcast %true_5 : i1 to vector<8xi1>
        %262 = vector.matrix_multiply %261, %261 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %263 = math.sqrt %4 : tensor<4xf32>
        %264 = math.exp %1 : tensor<4x9x4xf16>
        %265 = math.exp %1 : tensor<4x9x4xf16>
        %266 = math.ctpop %14 : tensor<16x16xi16>
        %c1_i32_52 = arith.constant 1 : i32
        linalg.yield %c1_i32_52 : i32
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c12, %c2) to (%c3, %c13) step (%c12, %c5) init (%cst_3) -> f16 {
      %258 = vector.broadcast %cst_0 : f16 to vector<16x16xf16>
      %259 = vector.broadcast %cst : f32 to vector<4xf32>
      %260 = vector.fma %259, %259, %259 : vector<4xf32>
      %261 = index.add %c3, %c3
      %262 = math.atan %cst_3 : f16
      %263 = math.copysign %4, %4 : tensor<4xf32>
      %splat_52 = tensor.splat %cst_3 : tensor<16x16xf16>
      %264 = vector.extract_strided_slice %260 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
      %265 = arith.divui %c993638680_i32, %c1535624791_i32 : i32
      affine.store %cst, %alloc_8[%c4, %c15, %c13] : memref<4x4x16xf32>
      %266 = vector.bitcast %259 : vector<4xf32> to vector<4xf32>
      %267 = math.floor %cst_4 : f16
      %268 = arith.maxf %cst_2, %cst_4 : f16
      scf.execute_region {
        %cast_54 = tensor.cast %7 : tensor<4xi1> to tensor<?xi1>
        %274 = index.casts %c4 : index to i32
        %275 = arith.shrui %c993638680_i32, %c1535624791_i32 : i32
        %276 = arith.remf %cst, %cst : f32
        %277 = arith.minui %c1122086390_i64, %c1122086390_i64 : i64
        %278 = arith.ceildivsi %c993638680_i32, %c848283327_i32 : i32
        %279 = arith.minui %c848283327_i32, %c1267058360_i32 : i32
        %280 = math.cttz %15 : tensor<4x4x16xi64>
        %281 = vector.matrix_multiply %266, %260 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %282 = vector.splat %c1535624791_i32 : vector<4x9x4xi32>
        %283 = memref.atomic_rmw minu %c1122086390_i64, %alloc_21[%c1] : (i64, memref<4xi64>) -> i64
        %284 = vector.broadcast %cst : f32 to vector<16x16xf32>
        %285 = vector.fma %284, %284, %284 : vector<16x16xf32>
        %286 = arith.maxf %cst_2, %cst_4 : f16
        %287 = vector.extract_strided_slice %259 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        vector.print %259 : vector<4xf32>
        %288 = math.powf %1, %1 : tensor<4x9x4xf16>
        scf.yield
      }
      %269 = math.fpowi %4, %5 : tensor<4xf32>, tensor<4xi32>
      %270 = math.round %cst_0 : f16
      %271 = vector.broadcast %true_5 : i1 to vector<i1>
      %272 = vector.transfer_write %271, %7[%c5] : vector<i1>, tensor<4xi1>
      %273 = tensor.empty() : tensor<4x4x16xi64>
      %cst_53 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_53)  : f16 {
      ^bb0(%arg3: f16, %arg4: f16):
        %274 = memref.atomic_rmw assign %cst, %alloc_18[%c2, %c7, %c0] : (f32, memref<4x9x4xf32>) -> f32
        %275 = bufferization.to_tensor %alloc_13 : memref<4xf16>
        %276 = arith.divui %c848283327_i32, %c1267058360_i32 : i32
        %277 = arith.addi %c1267058360_i32, %c1535624791_i32 : i32
        %278 = math.atan %cst : f32
        %279 = math.expm1 %cst_4 : f16
        %280 = arith.cmpf one, %cst_1, %arg3 : f16
        %281 = tensor.empty() : tensor<16x16xi64>
        %282 = linalg.matmul ins(%6, %6 : tensor<16x16xi64>, tensor<16x16xi64>) outs(%281 : tensor<16x16xi64>) -> tensor<16x16xi64>
        %cst_54 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_54 : f16
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_20[%c9, %c6, %c14] : memref<4x9x4xi64>, vector<9xi64>
    affine.vector_store %20, %alloc_20[%c13, %c4, %c12] : memref<4x9x4xi64>, vector<9xi64>
    %alloc_22 = memref.alloc() : memref<4xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%alloc_17, %alloc_22 : memref<4xi64>, memref<4xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = index.mul %c8, %c1
    %24 = math.sqrt %cst : f32
    %25 = math.ctpop %c1122086390_i64 : i64
    %26 = math.powf %cst_4, %cst_0 : f16
    %27 = vector.extract_strided_slice %20 {offsets = [3], sizes = [5], strides = [1]} : vector<9xi64> to vector<5xi64>
    %28 = math.log10 %cst_4 : f16
    %29 = arith.addi %true, %true : i1
    %30 = affine.load %alloc[%c6, %c13] : memref<16x16xi32>
    %31 = index.add %c3, %c6
    %32 = vector.broadcast %cst_3 : f16 to vector<4x4x16xf16>
    %33 = vector.shuffle %32, %32 [2, 3, 5, 7] : vector<4x4x16xf16>, vector<4x4x16xf16>
    %34 = math.log2 %1 : tensor<4x9x4xf16>
    %35 = math.ceil %cst_0 : f16
    %36 = arith.minui %false, %false : i1
    %37 = index.maxs %c8, %c14
    %38 = index.ceildivu %c11, %c10
    %39 = arith.divf %cst, %cst : f32
    %40 = vector.broadcast %c10 : index to vector<16xindex>
    %41 = vector.broadcast %true : i1 to vector<16xi1>
    %42 = vector.broadcast %c2293_i16 : i16 to vector<16xi16>
    vector.scatter %alloc_12[%c0, %c5, %c2] [%40], %41, %42 : memref<4x9x4xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
    %43 = math.log10 %4 : tensor<4xf32>
    scf.index_switch %c14 
    case 1 {
      %258 = vector.matrix_multiply %27, %27 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %259 = index.sub %38, %c6
      %260 = arith.andi %c1122086390_i64, %c1122086390_i64 : i64
      vector.print %20 : vector<9xi64>
      %261 = affine.if affine_set<(d0, d1) : (-(d0 mod 128) + d1 >= 0, (d0 mod 128) * -32 == 0, d0 >= 0)>(%c9, %c11) -> memref<4x4x16xi16> {
        %272 = vector.bitcast %27 : vector<5xi64> to vector<5xi64>
        %alloca = memref.alloca() : memref<4x9x4xi32>
        %273 = math.atan %11 : tensor<4x9x4xf32>
        %274 = vector.transpose %32, [0, 2, 1] : vector<4x4x16xf16> to vector<4x16x4xf16>
        %275 = tensor.empty() : tensor<16x16xi16>
        %true_55 = index.bool.constant true
        %276 = arith.floordivsi %c20119_i16, %c2293_i16 : i16
        %277 = index.sizeof
        affine.yield %alloc_9 : memref<4x4x16xi16>
      } else {
        %272 = tensor.empty() : tensor<4x9x4xi32>
        %273 = math.fpowi %1, %272 : tensor<4x9x4xf16>, tensor<4x9x4xi32>
        %274 = vector.broadcast %30 : i32 to vector<9xi32>
        %275 = vector.broadcast %true_5 : i1 to vector<9xi1>
        %276 = vector.maskedload %alloc_14[%c2], %275, %274 : memref<4xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %inserted_55 = tensor.insert %c1122086390_i64 into %3[%c1, %c0, %c6] : tensor<4x4x16xi64>
        %277 = math.ipowi %10, %10 : tensor<4x4x16xi64>
        %278 = arith.ori %c993638680_i32, %c1535624791_i32 : i32
        %279 = index.floordivs %c14, %37
        %280 = index.floordivs %c15, %279
        %cst_56 = arith.constant 1.000000e+00 : f32
        %281 = vector.transfer_read %4[%23], %cst_56 : tensor<4xf32>, vector<f32>
        affine.yield %alloc_9 : memref<4x4x16xi16>
      }
      %alloc_52 = memref.alloc() : memref<16xi64>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_21 : memref<16xi64>, memref<4xi64>) outs(%13 : tensor<4x4x16xi64>) {
      ^bb0(%in: i64, %in_55: i64, %out: i64):
        %272 = arith.andi %c1535624791_i32, %c993638680_i32 : i32
        %273 = vector.load %alloc_6[%c12, %c11] : memref<16x16xf32>, vector<16x16xf32>
        %274 = arith.floordivsi %c1122086390_i64, %in : i64
        %275 = index.floordivs %c11, %c9
        %c1_i64 = arith.constant 1 : i64
        %276 = vector.transfer_read %8[%c8], %c1_i64 : tensor<4xi64>, vector<i64>
        %277 = math.ctlz %2 : tensor<4x4x16xi32>
        %278 = arith.maxf %cst_1, %cst_2 : f16
        %279 = arith.maxf %cst, %cst : f32
        %280 = vector.matrix_multiply %258, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi64>, vector<9xi64>) -> vector<9xi64>
        %281 = index.maxs %c1, %c11
        %282 = affine.load %alloc_20[%c11, %c9, %c7] : memref<4x9x4xi64>
        %283 = vector.broadcast %c15 : index to vector<4xindex>
        %284 = vector.broadcast %true : i1 to vector<4xi1>
        %285 = vector.broadcast %c1_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_22[%c0] [%283], %284, %285 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %286 = index.divs %c0, %c3
        %287 = arith.addi %c1535624791_i32, %c848283327_i32 : i32
        %288 = index.sub %c8, %c15
        %289 = arith.addi %c993638680_i32, %30 : i32
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %280, %20, %c1122086390_i64 : vector<9xi64>, vector<9xi64> into i64
        %291 = math.sqrt %4 : tensor<4xf32>
        memref.tensor_store %12, %alloc_7 : memref<4x4x16xi32>
        %292 = index.add %c1, %c14
        %293 = math.ctlz %282 : i64
        %294 = math.ctpop %3 : tensor<4x4x16xi64>
        %295 = math.copysign %4, %4 : tensor<4xf32>
        %296 = bufferization.clone %alloc_6 : memref<16x16xf32> to memref<16x16xf32>
        %297 = vector.broadcast %in : i64 to vector<5x5xi64>
        %298 = vector.outerproduct %27, %27, %297 {kind = #vector.kind<mul>} : vector<5xi64>, vector<5xi64>
        %299 = math.roundeven %cst : f32
        %300 = vector.broadcast %282 : i64 to vector<9x9xi64>
        %301 = vector.outerproduct %20, %280, %300 {kind = #vector.kind<mul>} : vector<9xi64>, vector<9xi64>
        %302 = arith.shrui %c2293_i16, %c2293_i16 : i16
        %303 = arith.shrsi %30, %30 : i32
        %304 = math.floor %cst_2 : f16
        %cast_56 = tensor.cast %reduced : tensor<i32> to tensor<i32>
        %305 = memref.load %alloc_13[%c3] : memref<4xf16>
        linalg.yield %out : i64
      } -> tensor<4x4x16xi64>
      %263 = math.cttz %15 : tensor<4x4x16xi64>
      %264 = arith.remf %cst_2, %cst_1 : f16
      %265 = vector.broadcast %cst : f32 to vector<4xf32>
      %266 = vector.fma %265, %265, %265 : vector<4xf32>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<4x4x16xi16>) {
      ^bb0(%out: i16):
        %272 = vector.broadcast %cst : f32 to vector<4x9x4xf32>
        %273 = vector.fma %272, %272, %272 : vector<4x9x4xf32>
        %274 = arith.minui %c1267058360_i32, %c993638680_i32 : i32
        %275 = math.round %cst : f32
        %276 = arith.andi %out, %c20119_i16 : i16
        %277 = arith.muli %c993638680_i32, %30 : i32
        %278 = arith.remsi %c2293_i16, %out : i16
        %279 = index.sub %c10, %c11
        %280 = tensor.empty(%c10, %c3) : tensor<?x?xi1>
        %281 = arith.maxf %cst_4, %cst_4 : f16
        %282 = arith.muli %c20119_i16, %c20119_i16 : i16
        %283 = vector.matrix_multiply %258, %258 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %284 = vector.bitcast %273 : vector<4x9x4xf32> to vector<4x9x4xf32>
        %285 = math.exp %cst : f32
        %alloca = memref.alloca() : memref<4xi16>
        %286 = vector.broadcast %cst : f32 to vector<4xf32>
        %287 = vector.fma %286, %265, %265 : vector<4xf32>
        %288 = arith.shrui %out, %c2293_i16 : i16
        %289 = vector.shuffle %266, %286 [0, 1, 2, 3, 4, 5, 6, 7] : vector<4xf32>, vector<4xf32>
        %290 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<5xi64> to vector<1xi64>
        %291 = arith.andi %c2293_i16, %out : i16
        %292 = vector.insert %cst, %265 [2] : f32 into vector<4xf32>
        %alloc_55 = memref.alloc() : memref<4xi32>
        memref.copy %alloc_14, %alloc_55 : memref<4xi32> to memref<4xi32>
        %293 = vector.broadcast %c1122086390_i64 : i64 to vector<9xi64>
        vector.transfer_write %293, %alloc_20[%c13, %c4, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xi64>, memref<4x9x4xi64>
        %alloc_56 = memref.alloc() : memref<16x16xi64>
        memref.copy %alloc_10, %alloc_56 : memref<16x16xi64> to memref<16x16xi64>
        %294 = memref.load %alloc_11[%c6, %c1] : memref<16x16xi16>
        bufferization.dealloc_tensor %17 : tensor<4x4x16xi64>
        %295 = arith.maxf %cst_4, %cst_3 : f16
        %296 = memref.atomic_rmw addf %cst, %alloc_8[%c2, %c2, %c2] : (f32, memref<4x4x16xf32>) -> f32
        %297 = vector.splat %c10 : vector<4xindex>
        %rank_57 = tensor.rank %8 : tensor<4xi64>
        %alloca_58 = memref.alloca() : memref<16x16xi1>
        %298 = arith.divui %true_5, %true : i1
        %299 = vector.transpose %27, [0] : vector<5xi64> to vector<5xi64>
        linalg.yield %c20119_i16 : i16
      } -> tensor<4x4x16xi16>
      %268 = vector.transpose %265, [0] : vector<4xf32> to vector<4xf32>
      %expanded_53 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<4x4x16xi64> into tensor<4x4x16x1xi64>
      %false_54 = index.bool.constant false
      %269 = arith.shli %c848283327_i32, %c993638680_i32 : i32
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %266, %265, %cst : vector<4xf32>, vector<4xf32> into f32
      %271 = math.ceil %cst_3 : f16
      scf.yield
    }
    case 2 {
      vector.print %27 : vector<5xi64>
      %258 = index.add %c13, %c9
      %splat_52 = tensor.splat %c20119_i16 : tensor<4x4x16xi16>
      %259 = arith.muli %c848283327_i32, %30 : i32
      %alloc_53 = memref.alloc() : memref<4x4x16xi32>
      memref.copy %alloc_7, %alloc_53 : memref<4x4x16xi32> to memref<4x4x16xi32>
      %260 = index.floordivs %c2, %c15
      %261 = math.tan %1 : tensor<4x9x4xf16>
      %262 = vector.broadcast %c1122086390_i64 : i64 to vector<4xi64>
      %263 = vector.broadcast %false : i1 to vector<4xi1>
      %264 = vector.maskedload %alloc_21[%c1], %263, %262 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %265 = index.ceildivs %260, %258
      %266 = tensor.empty() : tensor<4x4x16xi64>
      %mapped_54 = linalg.map ins(%15, %17, %10 : tensor<4x4x16xi64>, tensor<4x4x16xi64>, tensor<4x4x16xi64>) outs(%266 : tensor<4x4x16xi64>)
        (%in: i64, %in_56: i64, %in_57: i64) {
          %271 = affine.max affine_map<(d0, d1, d2) -> (d1 * 2, d0)>(%c9, %c5, %c9)
          %272 = vector.broadcast %c20119_i16 : i16 to vector<i16>
          %273 = vector.transfer_write %272, %splat_52[%31, %c6, %c14] : vector<i16>, tensor<4x4x16xi16>
          %274 = vector.flat_transpose %27 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
          %275 = arith.shrsi %c1535624791_i32, %30 : i32
          %276 = vector.broadcast %in : i64 to vector<5x5xi64>
          %277 = vector.outerproduct %274, %27, %276 {kind = #vector.kind<or>} : vector<5xi64>, vector<5xi64>
          %278 = vector.broadcast %c1267058360_i32 : i32 to vector<4xi32>
          %279 = vector.gather %alloc_10[%37, %260] [%278], %263, %262 : memref<16x16xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %280 = index.floordivs %c13, %31
          %281 = vector.bitcast %27 : vector<5xi64> to vector<5xi64>
          %282 = arith.addi %c20119_i16, %c20119_i16 : i16
          %283 = index.casts %in : i64 to index
          %284 = vector.broadcast %c4 : index to vector<9xindex>
          %285 = vector.broadcast %true_5 : i1 to vector<9xi1>
          %286 = vector.broadcast %cst_4 : f16 to vector<9xf16>
          vector.scatter %alloc_13[%c3] [%284], %285, %286 : memref<4xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
          %287 = arith.divsi %c20119_i16, %c20119_i16 : i16
          %288 = index.add %c13, %271
          %289 = math.ctpop %10 : tensor<4x4x16xi64>
          %290 = math.log10 %4 : tensor<4xf32>
          affine.store %in_56, %alloc_21[%c15] : memref<4xi64>
          %cast_58 = tensor.cast %4 : tensor<4xf32> to tensor<?xf32>
          %291 = math.ctlz %2 : tensor<4x4x16xi32>
          %alloc_59 = memref.alloc() : memref<4x4x16xf32>
          memref.copy %alloc_8, %alloc_59 : memref<4x4x16xf32> to memref<4x4x16xf32>
          %292 = tensor.empty(%c10) : tensor<?xf16>
          affine.store %cst_2, %alloc_13[%c10] : memref<4xf16>
          %293 = math.copysign %11, %11 : tensor<4x9x4xf32>
          %294 = bufferization.to_tensor %alloc_8 : memref<4x4x16xf32>
          %295 = math.rsqrt %cst_2 : f16
          %296 = memref.atomic_rmw mulf %cst, %alloc_6[%c1, %c2] : (f32, memref<16x16xf32>) -> f32
          %297 = index.floordivs %c8, %c14
          %298 = affine.load %alloc_21[%c6] : memref<4xi64>
          %299 = memref.load %alloc_11[%c3, %c9] : memref<16x16xi16>
          %300 = vector.broadcast %c1122086390_i64 : i64 to vector<4x4xi64>
          %301 = vector.outerproduct %279, %279, %300 {kind = #vector.kind<add>} : vector<4xi64>, vector<4xi64>
          %302 = math.sqrt %cst_2 : f16
          %303 = math.tanh %cst_4 : f16
          %304 = math.ctpop %14 : tensor<16x16xi16>
          %c0_i64_60 = arith.constant 0 : i64
          linalg.yield %c0_i64_60 : i64
        }
      %267 = vector.insertelement %c1122086390_i64, %262[%c4 : index] : vector<4xi64>
      memref.copy %alloc_22, %alloc_17 : memref<4xi64> to memref<4xi64>
      %268 = arith.divui %false, %false : i1
      %collapsed_55 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<4x4x16xi64> into tensor<16x16xi64>
      %269 = arith.ori %true, %false : i1
      %270 = index.add %c7, %265
      scf.yield
    }
    default {
      %258 = scf.execute_region -> tensor<4x4x16xf32> {
        %273 = index.floordivs %c12, %c13
        %274 = vector.bitcast %32 : vector<4x4x16xf16> to vector<4x4x16xf16>
        %275 = bufferization.clone %alloc_13 : memref<4xf16> to memref<4xf16>
        %276 = tensor.empty() : tensor<4x9x4xf16>
        %277 = math.atan %cst_4 : f16
        %278 = index.sub %c2, %c12
        %279 = arith.shrui %c848283327_i32, %c993638680_i32 : i32
        %280 = vector.broadcast %c1122086390_i64 : i64 to vector<i64>
        %281 = vector.transfer_write %280, %8[%c6] : vector<i64>, tensor<4xi64>
        %282 = vector.broadcast %c5 : index to vector<4xindex>
        %283 = vector.broadcast %true : i1 to vector<4xi1>
        %284 = vector.broadcast %cst_4 : f16 to vector<4xf16>
        vector.scatter %275[%c1] [%282], %283, %284 : memref<4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %285 = arith.negf %cst_2 : f16
        %286 = memref.load %alloc_17[%c3] : memref<4xi64>
        %287 = index.sub %c3, %c4
        %288 = arith.divf %cst_2, %cst_1 : f16
        %289 = math.absi %10 : tensor<4x4x16xi64>
        %290 = vector.broadcast %c1122086390_i64 : i64 to vector<5x5xi64>
        %291 = vector.outerproduct %27, %27, %290 {kind = #vector.kind<maxui>} : vector<5xi64>, vector<5xi64>
        %c0_i64_54 = arith.constant 0 : i64
        %c0_i64_55 = arith.constant 0 : i64
        %292 = vector.transfer_read %10[%c2, %273, %c10], %c0_i64_55 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<4x4x16xi64>, vector<8x16xi64>
        %293 = tensor.empty() : tensor<4x4x16xf32>
        scf.yield %293 : tensor<4x4x16xf32>
      }
      %259 = math.atan2 %cst_4, %cst_2 : f16
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %27, %27, %c1122086390_i64 : vector<5xi64>, vector<5xi64> into i64
      %261 = index.add %c7, %c8
      %262 = vector.reduction <maxsi>, %20 : vector<9xi64> into i64
      %263 = arith.shrsi %c1535624791_i32, %c993638680_i32 : i32
      %264 = index.sizeof
      %265 = arith.ori %c20119_i16, %c2293_i16 : i16
      %266 = vector.reduction <add>, %27 : vector<5xi64> into i64
      %267 = math.powf %1, %1 : tensor<4x9x4xf16>
      %268 = math.sqrt %11 : tensor<4x9x4xf32>
      %rank_52 = tensor.rank %13 : tensor<4x4x16xi64>
      %269 = index.sizeof
      %270 = math.expm1 %cst_3 : f16
      %c0_i64_53 = arith.constant 0 : i64
      %271 = vector.transfer_read %16[%rank_52, %c0, %261], %c0_i64_53 : tensor<4x4x16xi64>, vector<8x4xi64>
      %272 = vector.create_mask %c7, %264, %c13 : vector<4x4x16xi1>
    }
    scf.if %true_5 {
      %258 = tensor.empty(%37) : tensor<?x4x16xi32>
      %259 = arith.addi %c848283327_i32, %c1535624791_i32 : i32
      %260 = vector.broadcast %c1122086390_i64 : i64 to vector<8xi64>
      vector.transfer_write %260, %alloc_20[%c10, %c15, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi64>, memref<4x9x4xi64>
      %261 = vector.broadcast %c993638680_i32 : i32 to vector<16x16xi32>
      %262 = affine.load %alloc_19[%c2] : memref<4xf32>
      %263 = arith.negf %cst_2 : f16
      %264 = math.log2 %1 : tensor<4x9x4xf16>
      %265 = vector.broadcast %c1267058360_i32 : i32 to vector<16xi32>
      %266 = vector.insert %265, %261 [10] : vector<16xi32> into vector<16x16xi32>
    } else {
      %258 = math.copysign %11, %11 : tensor<4x9x4xf32>
      %259 = bufferization.to_tensor %alloc : memref<16x16xi32>
      %260 = math.tanh %11 : tensor<4x9x4xf32>
      %261 = math.round %4 : tensor<4xf32>
      %262 = vector.broadcast %c1122086390_i64 : i64 to vector<9x9xi64>
      %263 = vector.outerproduct %20, %20, %262 {kind = #vector.kind<minsi>} : vector<9xi64>, vector<9xi64>
      %264 = vector.broadcast %c848283327_i32 : i32 to vector<4x9x4xi32>
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 2 - 4, d1)>(%23, %23, %c3, %c6)
      %266 = vector.shuffle %264, %264 [4, 5, 6] : vector<4x9x4xi32>, vector<4x9x4xi32>
    }
    %44 = math.round %cst_3 : f16
    %45 = index.floordivs %23, %c12
    %46 = vector.extract %32[1] : vector<4x4x16xf16>
    %47 = math.ceil %cst_4 : f16
    %48 = vector.shuffle %46, %46 [2] : vector<4x16xf16>, vector<4x16xf16>
    %49 = vector.matrix_multiply %20, %20 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
    %c1_i32 = arith.constant 1 : i32
    %50 = vector.transfer_read %12[%c7, %c6, %c11], %c1_i32 : tensor<4x4x16xi32>, vector<i32>
    %51 = math.sqrt %cst_1 : f16
    %52 = arith.addi %c1122086390_i64, %c1122086390_i64 : i64
    %53 = vector.flat_transpose %27 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
    %54 = math.log10 %1 : tensor<4x9x4xf16>
    %55 = arith.andi %c848283327_i32, %30 : i32
    %56 = index.sizeof
    %57 = math.ctpop %21 : tensor<i64>
    %58 = vector.multi_reduction <xor>, %27, %27 [] : vector<5xi64> to vector<5xi64>
    %59 = tensor.empty() : tensor<4x4x16xi32>
    %60 = memref.load %alloc_7[%c3, %c0, %c9] : memref<4x4x16xi32>
    %61 = arith.ori %true, %true_5 : i1
    %62 = affine.load %alloc_15[%c11, %c4, %c8] : memref<4x4x16xf16>
    %63 = arith.ceildivsi %false, %true_5 : i1
    %64 = index.maxs %56, %c2
    %65 = index.sub %c1, %c2
    affine.for %arg1 = 0 to 86 {
    }
    %66 = tensor.empty() : tensor<16x16xi64>
    %67 = linalg.matmul ins(%6, %6 : tensor<16x16xi64>, tensor<16x16xi64>) outs(%66 : tensor<16x16xi64>) -> tensor<16x16xi64>
    %68 = arith.negf %cst_2 : f16
    %69 = vector.broadcast %true : i1 to vector<4x9x4xi1>
    %70 = vector.extract_strided_slice %32 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4x16xf16> to vector<4x4x16xf16>
    %71 = arith.minui %c848283327_i32, %c1267058360_i32 : i32
    %false_23 = index.bool.constant false
    %72 = affine.if affine_set<(d0) : (0 == 0, ((d0 mod 64) * 16 - 4) * 4 == 0, d0 - d0 mod 64 - 16 == 0)>(%c13) -> f32 {
      %258 = arith.andi %c1267058360_i32, %c993638680_i32 : i32
      %259 = arith.addi %c1122086390_i64, %c1122086390_i64 : i64
      %rank_52 = tensor.rank %11 : tensor<4x9x4xf32>
      %260 = math.log1p %cst_1 : f16
      scf.execute_region {
        %263 = vector.broadcast %c5 : index to vector<4xindex>
        %264 = vector.broadcast %false_23 : i1 to vector<4xi1>
        %265 = vector.broadcast %cst : f32 to vector<4xf32>
        vector.scatter %alloc_6[%c9, %c14] [%263], %264, %265 : memref<16x16xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %alloc_54 = memref.alloc() : memref<16x16xi64>
        %alloca = memref.alloca() : memref<4x9x4xi16>
        %266 = vector.flat_transpose %27 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %267 = math.floor %4 : tensor<4xf32>
        %268 = math.ipowi %0, %0 : tensor<16x16xi32>
        %269 = vector.broadcast %cst_4 : f16 to vector<4xf16>
        %270 = math.ceil %11 : tensor<4x9x4xf32>
        %271 = arith.negf %cst_4 : f16
        %alloca_55 = memref.alloca() : memref<4x4x16xi64>
        %272 = math.expm1 %cst_0 : f16
        %273 = math.exp2 %4 : tensor<4xf32>
        %274 = math.ctpop %3 : tensor<4x4x16xi64>
        %275 = math.cos %cst_4 : f16
        %276 = math.sqrt %11 : tensor<4x9x4xf32>
        %277 = arith.muli %true, %true : i1
        scf.yield
      }
      %261 = math.log10 %1 : tensor<4x9x4xf16>
      %262 = math.exp %1 : tensor<4x9x4xf16>
      %cast_53 = tensor.cast %1 : tensor<4x9x4xf16> to tensor<?x?x?xf16>
      affine.yield %cst : f32
    } else {
      %258 = math.floor %cst_0 : f16
      %259 = vector.multi_reduction <and>, %49, %49 [] : vector<1xi64> to vector<1xi64>
      vector.print %46 : vector<4x16xf16>
      %260 = math.ctlz %59 : tensor<4x4x16xi32>
      %261 = index.add %c12, %c12
      %262 = scf.execute_region -> tensor<4x9x4xf32> {
        %265 = arith.minui %c1122086390_i64, %c1122086390_i64 : i64
        %true_52 = index.bool.constant true
        %266 = vector.extract_strided_slice %70 {offsets = [1, 2], sizes = [1, 2], strides = [1, 1]} : vector<4x4x16xf16> to vector<1x2x16xf16>
        %267 = vector.broadcast %c1122086390_i64 : i64 to vector<9x9xi64>
        %268 = vector.outerproduct %20, %20, %267 {kind = #vector.kind<xor>} : vector<9xi64>, vector<9xi64>
        %269 = vector.create_mask %45, %c7, %c11 : vector<4x9x4xi1>
        %270 = index.mul %c12, %64
        %c1_i64 = arith.constant 1 : i64
        %271 = vector.transfer_read %66[%c4, %c10], %c1_i64 : tensor<16x16xi64>, vector<i64>
        %272 = arith.xori %30, %c1535624791_i32 : i32
        %273 = math.log10 %cst : f32
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %49, %49, %c1122086390_i64 : vector<1xi64>, vector<1xi64> into i64
        %275 = index.mul %37, %c12
        %276 = math.powf %1, %1 : tensor<4x9x4xf16>
        %277 = vector.create_mask %c4, %65, %c13 : vector<4x9x4xi1>
        %278 = vector.multi_reduction <maxsi>, %27, %53 [] : vector<5xi64> to vector<5xi64>
        %alloc_53 = memref.alloc() : memref<4x9x4xi64>
        %279 = vector.broadcast %c1122086390_i64 : i64 to vector<5x5xi64>
        %280 = vector.outerproduct %27, %53, %279 {kind = #vector.kind<minui>} : vector<5xi64>, vector<5xi64>
        scf.yield %11 : tensor<4x9x4xf32>
      }
      %263 = index.sizeof
      %264 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %264, %alloc_6[%64, %c6] : vector<f32>, memref<16x16xf32>
      affine.yield %cst : f32
    }
    %rank = tensor.rank %15 : tensor<4x4x16xi64>
    %cast = tensor.cast %11 : tensor<4x9x4xf32> to tensor<?x?x?xf32>
    %73 = arith.remf %cst, %cst : f32
    %74 = arith.floordivsi %c1535624791_i32, %c848283327_i32 : i32
    %75 = math.log10 %1 : tensor<4x9x4xf16>
    %alloc_24 = memref.alloc() : memref<4xi32>
    memref.copy %alloc_14, %alloc_24 : memref<4xi32> to memref<4xi32>
    scf.if %true {
      %258 = math.round %cst_1 : f16
      %259 = math.absi %0 : tensor<16x16xi32>
      %dest_52, %accumulated_value_53 = vector.scan <maxf>, %70, %46 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4x16xf16>, vector<4x16xf16>
      memref.tensor_store %14, %alloc_11 : memref<16x16xi16>
      %260 = math.roundeven %cst_1 : f16
      %261 = math.expm1 %cst_2 : f16
      %dest_54, %accumulated_value_55 = vector.scan <mul>, %32, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4x16xf16>, vector<4x16xf16>
      %262 = vector.broadcast %c1267058360_i32 : i32 to vector<8x8xi32>
      vector.transfer_write %262, %alloc_7[%rank, %23, %23] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x8xi32>, memref<4x4x16xi32>
    }
    %76 = vector.broadcast %cst : f32 to vector<f32>
    vector.transfer_write %76, %alloc_19[%23] : vector<f32>, memref<4xf32>
    %77 = arith.ori %c1535624791_i32, %c1267058360_i32 : i32
    %78 = math.tanh %cst_1 : f16
    %79 = math.cttz %reduced : tensor<i32>
    %80 = arith.minf %cst_1, %62 : f16
    %81 = vector.reduction <mul>, %20 : vector<9xi64> into i64
    %82 = arith.subi %c848283327_i32, %c993638680_i32 : i32
    %83 = math.exp %cst_4 : f16
    %84 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 64 - d2 + d0 - d2 floordiv 64, d0 - d2 floordiv 64, d2 - 8, d2 floordiv 64)>(%64, %23, %45, %c9)
    %85 = arith.shrsi %false, %true : i1
    %86 = vector.broadcast %cst_3 : f16 to vector<4x4x16xf16>
    %87 = index.floordivs %c0, %c9
    %88 = vector.broadcast %cst : f32 to vector<4xf32>
    %89 = vector.fma %88, %88, %88 : vector<4xf32>
    %c1_i16 = arith.constant 1 : i16
    %c0_i16 = arith.constant 0 : i16
    %90 = vector.transfer_read %14[%45, %c14], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<16x16xi16>, vector<16xi16>
    %splat = tensor.splat %cst : tensor<16x16xf32>
    %91 = math.exp %splat : tensor<16x16xf32>
    %92 = vector.load %alloc_9[%c1, %c2, %c4] : memref<4x4x16xi16>, vector<4x9x4xi16>
    %93 = bufferization.clone %alloc_18 : memref<4x9x4xf32> to memref<4x9x4xf32>
    %94 = math.ctlz %7 : tensor<4xi1>
    %rank_25 = tensor.rank %15 : tensor<4x4x16xi64>
    %95 = math.sqrt %1 : tensor<4x9x4xf16>
    %expanded = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<4x9x4xf16> into tensor<4x9x4x1xf16>
    %96 = math.log10 %cst_1 : f16
    %97 = vector.broadcast %cst : f32 to vector<4x4xf32>
    %98 = vector.outerproduct %89, %88, %97 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
    %99 = math.powf %splat, %splat : tensor<16x16xf32>
    %100 = index.ceildivs %c11, %c1
    memref.copy %alloc_21, %alloc_17 : memref<4xi64> to memref<4xi64>
    %alloc_26 = memref.alloc() : memref<16xi32>
    %101 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_26, %5 : memref<16xi32>, tensor<4xi32>) outs(%12 : tensor<4x4x16xi32>) {
    ^bb0(%in: i32, %in_52: i32, %out: i32):
      %258 = math.absi %2 : tensor<4x4x16xi32>
      %259 = vector.multi_reduction <add>, %70, %cst_1 [0, 1, 2] : vector<4x4x16xf16> to f16
      %260 = memref.load %alloc_15[%c2, %c3, %c13] : memref<4x4x16xf16>
      %splat_53 = tensor.splat %false : tensor<16x16xi1>
      %alloc_54 = memref.alloc() : memref<4xi16>
      %261 = vector.broadcast %c0 : index to vector<16xindex>
      %262 = vector.broadcast %false_23 : i1 to vector<16xi1>
      %263 = vector.broadcast %c1122086390_i64 : i64 to vector<16xi64>
      vector.scatter %alloc_20[%c2, %c2, %c2] [%261], %262, %263 : memref<4x9x4xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
      scf.index_switch %100 
      case 1 {
        %288 = index.sizeof
        %289 = math.atan %1 : tensor<4x9x4xf16>
        %cast_56 = tensor.cast %2 : tensor<4x4x16xi32> to tensor<?x?x?xi32>
        %290 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        %291 = index.add %c14, %c6
        %292 = arith.mulf %cst, %cst : f32
        %293 = index.maxs %c8, %c1
        %294 = math.log10 %cst_0 : f16
        %295 = arith.maxsi %c20119_i16, %c20119_i16 : i16
        %296 = math.log %cst_3 : f16
        %297 = math.floor %1 : tensor<4x9x4xf16>
        %298 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %299 = arith.maxsi %false_23, %true_5 : i1
        %300 = math.tanh %1 : tensor<4x9x4xf16>
        %301 = arith.negf %cst_3 : f16
        %302 = math.round %cst_0 : f16
        scf.yield
      }
      case 2 {
        %c0_i64_56 = arith.constant 0 : i64
        %c0_i64_57 = arith.constant 0 : i64
        %288 = vector.transfer_read %15[%65, %c13, %c4], %c0_i64_57 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<4x4x16xi64>, vector<4xi64>
        %289 = math.log %1 : tensor<4x9x4xf16>
        %290 = arith.remui %out, %30 : i32
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %27, %53, %c0_i64_56 : vector<5xi64>, vector<5xi64> into i64
        %292 = index.maxs %c8, %c9
        %293 = math.exp %11 : tensor<4x9x4xf32>
        %294 = vector.shuffle %86, %32 [0, 6, 7] : vector<4x4x16xf16>, vector<4x4x16xf16>
        %splat_58 = tensor.splat %259 : tensor<4x9x4xf16>
        %295 = arith.cmpf false, %259, %cst_0 : f16
        %296 = vector.broadcast %cst : f32 to vector<f32>
        vector.transfer_write %296, %93[%c13, %c7, %100] : vector<f32>, memref<4x9x4xf32>
        %297 = vector.reduction <maxf>, %88 : vector<4xf32> into f32
        %298 = math.atan2 %cst_2, %cst_1 : f16
        %299 = math.sqrt %splat : tensor<16x16xf32>
        %300 = tensor.empty() : tensor<16x16xi32>
        %301 = linalg.matmul ins(%0, %0 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%300 : tensor<16x16xi32>) -> tensor<16x16xi32>
        %302 = vector.broadcast %c848283327_i32 : i32 to vector<i32>
        %303 = vector.transfer_write %302, %5[%c10] : vector<i32>, tensor<4xi32>
        %304 = index.floordivs %c11, %c7
        scf.yield
      }
      default {
        %288 = arith.remf %259, %cst_0 : f16
        %289 = index.floordivs %rank, %c11
        %290 = arith.ori %c2293_i16, %c1_i16 : i16
        %291 = math.atan2 %11, %11 : tensor<4x9x4xf32>
        %292 = vector.broadcast %65 : index to vector<9xindex>
        %293 = vector.broadcast %true_5 : i1 to vector<9xi1>
        %294 = vector.broadcast %cst : f32 to vector<9xf32>
        vector.scatter %alloc_8[%c1, %c2, %c6] [%292], %293, %294 : memref<4x4x16xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %295 = vector.extract %32[0, 3] : vector<4x4x16xf16>
        %296 = vector.broadcast %cst_4 : f16 to vector<4xf16>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %46, %295, %296 : vector<4x16xf16>, vector<16xf16> into vector<4xf16>
        %298 = arith.divf %cst_1, %cst_3 : f16
        %299 = affine.max affine_map<(d0) -> (((d0 ceildiv 32) ceildiv 32) * 32, d0, ((d0 ceildiv 32) ceildiv 32) * 32, (d0 ceildiv 32) ceildiv 32)>(%c15)
        %300 = arith.ori %in, %c993638680_i32 : i32
        %301 = arith.maxf %cst_2, %cst_3 : f16
        bufferization.dealloc_tensor %2 : tensor<4x4x16xi32>
        %302 = math.ctpop %c1_i16 : i16
        %cst_56 = arith.constant 1.000000e+00 : f32
        %cst_57 = arith.constant 0.000000e+00 : f32
        %303 = vector.transfer_read %4[%299], %cst_57 : tensor<4xf32>, vector<f32>
        %304 = arith.andi %out, %in_52 : i32
        affine.store %out, %alloc_16[%c5, %c8] : memref<16x16xi32>
      }
      %264 = vector.shuffle %20, %49 [0, 3, 6, 8] : vector<9xi64>, vector<1xi64>
      %265 = arith.ceildivsi %false, %true_5 : i1
      %266 = math.tanh %1 : tensor<4x9x4xf16>
      %267 = bufferization.to_tensor %alloc_12 : memref<4x9x4xi16>
      scf.if %false_23 {
        %288 = affine.max affine_map<(d0, d1) -> (d0, d0 * 2, d0 * 2)>(%rank_25, %c12)
        %289 = vector.load %93[%c0, %c1, %c3] : memref<4x9x4xf32>, vector<4x9x4xf32>
        %rank_56 = tensor.rank %cast : tensor<?x?x?xf32>
        %290 = arith.subi %c1122086390_i64, %c1122086390_i64 : i64
        %291 = arith.subi %c1267058360_i32, %c993638680_i32 : i32
        %292 = arith.ceildivsi %false, %true : i1
        %293 = arith.andi %c1_i32, %30 : i32
        %294 = math.log2 %1 : tensor<4x9x4xf16>
      } else {
        %288 = tensor.empty() : tensor<4xi1>
        %289 = vector.multi_reduction <or>, %20, %c1122086390_i64 [0] : vector<9xi64> to i64
        %290 = arith.remf %cst_4, %cst_0 : f16
        %291 = vector.extract %53[2] : vector<5xi64>
        %cast_56 = tensor.cast %expanded : tensor<4x9x4x1xf16> to tensor<?x?x?x?xf16>
        %292 = math.ctpop %reduced : tensor<i32>
        %293 = affine.min affine_map<(d0) -> (d0 * 9, d0 * -10, (d0 * 8 + (d0 floordiv 2) mod 32) floordiv 16, d0 * -10)>(%c6)
        %294 = math.round %11 : tensor<4x9x4xf32>
      }
      %268 = arith.maxsi %c2293_i16, %c2293_i16 : i16
      %generated_55 = tensor.generate %c8 {
      ^bb0(%arg1: index):
        %288 = math.atan2 %cst_2, %cst_1 : f16
        %289 = vector.extract_strided_slice %92 {offsets = [1], sizes = [3], strides = [1]} : vector<4x9x4xi16> to vector<3x9x4xi16>
        %rank_56 = tensor.rank %12 : tensor<4x4x16xi32>
        %290 = math.copysign %1, %1 : tensor<4x9x4xf16>
        tensor.yield %c1122086390_i64 : i64
      } : tensor<?xi64>
      %269 = scf.while (%arg1 = %c993638680_i32) : (i32) -> i32 {
        %288 = arith.remf %cst, %cst : f32
        %289 = arith.mulf %cst_4, %cst_4 : f16
        %290 = math.powf %expanded, %expanded : tensor<4x9x4x1xf16>
        %291 = vector.bitcast %27 : vector<5xi64> to vector<5xi64>
        %292 = arith.maxsi %in, %in : i32
        memref.assume_alignment %alloc_16, 1 : memref<16x16xi32>
        %293 = math.ceil %cst_1 : f16
        %294 = math.log %cst : f32
        scf.condition(%false_23) %arg1 : i32
      } do {
      ^bb0(%arg1: i32):
        %inserted_56 = tensor.insert %c1_i16 into %14[%c15, %c1] : tensor<16x16xi16>
        %288 = math.log2 %1 : tensor<4x9x4xf16>
        %289 = math.sqrt %62 : f16
        memref.copy %alloc, %alloc_16 : memref<16x16xi32> to memref<16x16xi32>
        %290 = vector.extract_strided_slice %70 {offsets = [1], sizes = [2], strides = [1]} : vector<4x4x16xf16> to vector<2x4x16xf16>
        %291 = vector.bitcast %86 : vector<4x4x16xf16> to vector<4x4x16xf16>
        %292 = math.absi %6 : tensor<16x16xi64>
        %collapsed_57 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<4x4x16xi64> into tensor<16x16xi64>
        %293 = arith.divui %arg1, %30 : i32
        %294 = index.maxs %38, %c13
        %295 = vector.broadcast %true : i1 to vector<9x4x9x4xi1>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %69, %69, %295 : vector<4x9x4xi1>, vector<4x9x4xi1> into vector<9x4x9x4xi1>
        %297 = vector.extract_strided_slice %53 {offsets = [2], sizes = [1], strides = [1]} : vector<5xi64> to vector<1xi64>
        %298 = arith.shrui %30, %in_52 : i32
        %299 = math.atan2 %4, %4 : tensor<4xf32>
        %300 = math.log %splat : tensor<16x16xf32>
        %alloca_58 = memref.alloca() : memref<4x9x4xi32>
        scf.yield %c1267058360_i32 : i32
      }
      %270 = vector.broadcast %cst : f32 to vector<4x4x16xf32>
      %271 = vector.fma %270, %270, %270 : vector<4x4x16xf32>
      %alloca = memref.alloca() : memref<4xi16>
      %272 = arith.remsi %true_5, %true_5 : i1
      %273 = affine.if affine_set<(d0) : (d0 ceildiv 128 + d0 == 0, d0 mod 4 >= 0, d0 >= 0)>(%c5) -> memref<4x4x16xi32> {
        memref.copy %alloc_21, %alloc_17 : memref<4xi64> to memref<4xi64>
        %288 = math.expm1 %splat : tensor<16x16xf32>
        %289 = index.ceildivs %87, %45
        %290 = index.sizeof
        %291 = arith.floordivsi %c1267058360_i32, %out : i32
        %alloc_56 = memref.alloc() : memref<i32>
        memref.tensor_store %reduced, %alloc_56 : memref<i32>
        %292 = vector.insertelement %c1122086390_i64, %49[%c5 : index] : vector<1xi64>
        %293 = math.round %cst_4 : f16
        affine.yield %alloc_7 : memref<4x4x16xi32>
      } else {
        %288 = math.powf %1, %1 : tensor<4x9x4xf16>
        %289 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 2 + 32)>(%c5, %c9, %c15)
        %290 = math.log2 %62 : f16
        %291 = math.ctlz %c1267058360_i32 : i32
        %292 = math.round %1 : tensor<4x9x4xf16>
        %293 = arith.ori %c2293_i16, %c2293_i16 : i16
        %294 = vector.broadcast %cst_2 : f16 to vector<4x9xf16>
        %295 = vector.transfer_write %294, %1[%c3, %87, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x9xf16>, tensor<4x9x4xf16>
        %296 = vector.flat_transpose %20 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        affine.yield %alloc_7 : memref<4x4x16xi32>
      }
      %274 = math.floor %1 : tensor<4x9x4xf16>
      %275 = vector.broadcast %cst_0 : f16 to vector<4xf16>
      %276 = arith.mulf %cst, %cst : f32
      %277 = arith.divsi %true, %false_23 : i1
      %278 = scf.while (%arg1 = %69) : (vector<4x9x4xi1>) -> vector<4x9x4xi1> {
        %288 = memref.load %alloc_10[%c5, %c15] : memref<16x16xi64>
        %289 = arith.cmpf true, %cst, %cst : f32
        %290 = math.log10 %1 : tensor<4x9x4xf16>
        %291 = math.cttz %0 : tensor<16x16xi32>
        %292 = arith.divf %cst_1, %62 : f16
        %293 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
        %294 = vector.multi_reduction <maxf>, %86, %293 [2] : vector<4x4x16xf16> to vector<4x4xf16>
        memref.tensor_store %8, %alloc_17 : memref<4xi64>
        %295 = math.sqrt %11 : tensor<4x9x4xf32>
        scf.condition(%true) %69 : vector<4x9x4xi1>
      } do {
      ^bb0(%arg1: vector<4x9x4xi1>):
        %288 = vector.matrix_multiply %88, %88 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %289 = memref.atomic_rmw maxu %30, %alloc[%c13, %c15] : (i32, memref<16x16xi32>) -> i32
        %290 = vector.extract %53[1] : vector<5xi64>
        %291 = math.rsqrt %4 : tensor<4xf32>
        %alloc_56 = memref.alloc() : memref<16x16xi1>
        memref.tensor_store %splat_53, %alloc_56 : memref<16x16xi1>
        %cast_57 = tensor.cast %15 : tensor<4x4x16xi64> to tensor<?x?x?xi64>
        %292 = math.round %4 : tensor<4xf32>
        %293 = arith.ori %c1535624791_i32, %out : i32
        %294 = math.cttz %0 : tensor<16x16xi32>
        %295 = arith.minf %259, %cst_4 : f16
        %296 = arith.floordivsi %false, %false : i1
        %297 = math.copysign %4, %4 : tensor<4xf32>
        %298 = math.roundeven %1 : tensor<4x9x4xf16>
        %299 = index.sub %23, %c9
        %300 = arith.andi %true_5, %false : i1
        %301 = math.atan2 %1, %1 : tensor<4x9x4xf16>
        scf.yield %69 : vector<4x9x4xi1>
      }
      %279 = vector.transpose %76, [] : vector<f32> to vector<f32>
      scf.if %false_23 {
        %288 = memref.load %alloc_6[%c0, %c14] : memref<16x16xf32>
        %289 = math.ctlz %10 : tensor<4x4x16xi64>
        %290 = math.powf %cst_2, %259 : f16
        %291 = math.expm1 %1 : tensor<4x9x4xf16>
        %292 = arith.andi %c993638680_i32, %in : i32
        %293 = vector.extract_strided_slice %89 {offsets = [1], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
        %false_56 = index.bool.constant false
        %294 = math.ceil %11 : tensor<4x9x4xf32>
      } else {
        %288 = math.exp %1 : tensor<4x9x4xf16>
        %alloc_56 = memref.alloc() : memref<4x9x4xf16>
        memref.tensor_store %1, %alloc_56 : memref<4x9x4xf16>
        %289 = math.cos %259 : f16
        %splat_57 = tensor.splat %false : tensor<4xi1>
        %290 = math.tan %62 : f16
        %291 = arith.ori %false_23, %false_23 : i1
        %292 = affine.load %alloc_6[%c0, %c1] : memref<16x16xf32>
        %293 = math.rsqrt %1 : tensor<4x9x4xf16>
      }
      %280 = vector.broadcast %cst : f32 to vector<f32>
      %281 = vector.transfer_write %280, %11[%c10, %c12, %c3] : vector<f32>, tensor<4x9x4xf32>
      %282 = vector.broadcast %cst : f32 to vector<4x4x16xf32>
      %283 = vector.fma %282, %270, %270 : vector<4x4x16xf32>
      %284 = memref.atomic_rmw minf %cst, %alloc_6[%c8, %c6] : (f32, memref<16x16xf32>) -> f32
      %285 = vector.transpose %76, [] : vector<f32> to vector<f32>
      %286 = arith.mulf %cst_4, %cst_3 : f16
      %287 = math.atan2 %cst_4, %cst_3 : f16
      linalg.yield %c1535624791_i32 : i32
    } -> tensor<4x4x16xi32>
    %102 = index.sizeof
    %103 = vector.broadcast %false_23 : i1 to vector<9x4x9x4xi1>
    %104 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %69, %69, %103 : vector<4x9x4xi1>, vector<4x9x4xi1> into vector<9x4x9x4xi1>
    scf.execute_region {
      %258 = vector.matrix_multiply %27, %27 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %259 = math.log2 %cst_0 : f16
      %alloc_52 = memref.alloc() : memref<4x4x16xi64>
      memref.tensor_store %3, %alloc_52 : memref<4x4x16xi64>
      %260 = index.floordivs %102, %45
      %261 = math.tanh %cst_1 : f16
      %262 = arith.negf %cst_0 : f16
      %splat_53 = tensor.splat %c1535624791_i32 : tensor<4xi32>
      %263 = math.copysign %expanded, %expanded : tensor<4x9x4x1xf16>
      %264 = arith.divf %cst, %cst : f32
      %265 = math.sqrt %cst_4 : f16
      %266 = math.atan2 %1, %1 : tensor<4x9x4xf16>
      %267 = vector.broadcast %cst_1 : f16 to vector<4xf16>
      %268 = vector.broadcast %false_23 : i1 to vector<4xi1>
      %269 = vector.maskedload %alloc_15[%c2, %c0, %c3], %268, %267 : memref<4x4x16xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %alloc_54 = memref.alloc() : memref<4x9x4xf16>
      memref.tensor_store %1, %alloc_54 : memref<4x9x4xf16>
      %270 = math.log10 %cst : f32
      %271 = vector.transpose %92, [2, 0, 1] : vector<4x9x4xi16> to vector<4x4x9xi16>
      %272 = index.floordivs %rank_25, %c7
      scf.yield
    }
    %105 = vector.flat_transpose %27 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
    %inserted = tensor.insert %cst into %4[%c2] : tensor<4xf32>
    %106 = arith.remui %c1_i32, %30 : i32
    %107 = affine.if affine_set<(d0, d1) : ((d1 + 1) mod 32 == 0)>(%c7, %c15) -> f32 {
      %258 = arith.ori %c1122086390_i64, %c1122086390_i64 : i64
      %259 = vector.broadcast %c993638680_i32 : i32 to vector<4x9x4xi32>
      %true_52 = arith.constant true
      %260 = arith.maxf %cst_3, %62 : f16
      %261 = math.exp2 %cst_3 : f16
      %alloc_53 = memref.alloc() : memref<4x4x16xi64>
      memref.tensor_store %13, %alloc_53 : memref<4x4x16xi64>
      %262 = arith.minui %false, %true : i1
      %263 = arith.addi %c993638680_i32, %c1267058360_i32 : i32
      affine.yield %cst : f32
    } else {
      %258 = arith.minui %c1_i32, %c993638680_i32 : i32
      %259 = affine.if affine_set<(d0) : (d0 mod 32 == 0, d0 + 96 == 0, d0 mod 32 == 0)>(%c0) -> f16 {
        %alloca = memref.alloca() : memref<4x4x16xi16>
        %265 = index.add %c4, %c6
        affine.store %30, %alloc[%c4, %c10] : memref<16x16xi32>
        %266 = vector.multi_reduction <minf>, %88, %89 [] : vector<4xf32> to vector<4xf32>
        %267 = index.ceildivs %265, %102
        %268 = math.ctpop %8 : tensor<4xi64>
        %269 = affine.load %alloc_16[%c9, %c11] : memref<16x16xi32>
        %270 = arith.ori %true_5, %false_23 : i1
        affine.yield %cst_4 : f16
      } else {
        %265 = memref.atomic_rmw assign %c1122086390_i64, %alloc_22[%c3] : (i64, memref<4xi64>) -> i64
        %266 = vector.broadcast %cst : f32 to vector<4x9x4xf32>
        %267 = vector.fma %266, %266, %266 : vector<4x9x4xf32>
        memref.copy %alloc_18, %93 : memref<4x9x4xf32> to memref<4x9x4xf32>
        %268 = tensor.empty() : tensor<16x16xf32>
        %269 = linalg.matmul ins(%splat, %splat : tensor<16x16xf32>, tensor<16x16xf32>) outs(%268 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %alloca = memref.alloca() : memref<4xi1>
        %270 = arith.andi %true_5, %false : i1
        %271 = vector.multi_reduction <xor>, %20, %c1122086390_i64 [0] : vector<9xi64> to i64
        %272 = math.powf %1, %1 : tensor<4x9x4xf16>
        affine.yield %cst_2 : f16
      }
      %260 = math.floor %1 : tensor<4x9x4xf16>
      %261 = vector.broadcast %c1122086390_i64 : i64 to vector<5x5xi64>
      %262 = vector.outerproduct %105, %105, %261 {kind = #vector.kind<xor>} : vector<5xi64>, vector<5xi64>
      vector.print %46 : vector<4x16xf16>
      %263 = math.powf %cst_1, %cst_2 : f16
      %264 = scf.index_switch %c14 -> memref<4xf16> 
      case 1 {
        %265 = arith.andi %true, %true_5 : i1
        %266 = math.ceil %4 : tensor<4xf32>
        %267 = math.tan %cst_3 : f16
        %268 = math.round %1 : tensor<4x9x4xf16>
        %269 = math.copysign %cst_4, %cst_2 : f16
        %270 = bufferization.to_tensor %alloc_18 : memref<4x9x4xf32>
        %271 = math.fpowi %cst_4, %c1_i32 : f16, i32
        %272 = math.log2 %11 : tensor<4x9x4xf32>
        %273 = arith.remui %c20119_i16, %c2293_i16 : i16
        affine.store %cst, %alloc_8[%c12, %c0, %c5] : memref<4x4x16xf32>
        %274 = vector.broadcast %102 : index to vector<9xindex>
        %275 = vector.broadcast %false : i1 to vector<9xi1>
        %276 = vector.broadcast %cst : f32 to vector<9xf32>
        vector.scatter %alloc_6[%c15, %c10] [%274], %275, %276 : memref<16x16xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        bufferization.dealloc_tensor %12 : tensor<4x4x16xi32>
        bufferization.dealloc_tensor %splat : tensor<16x16xf32>
        %277 = arith.negf %cst_3 : f16
        %278 = arith.muli %true, %false : i1
        %279 = math.ceil %62 : f16
        scf.yield %alloc_13 : memref<4xf16>
      }
      case 2 {
        %265 = arith.muli %c1267058360_i32, %c993638680_i32 : i32
        %266 = arith.ori %c1535624791_i32, %c1267058360_i32 : i32
        %267 = vector.load %alloc_6[%c2, %c7] : memref<16x16xf32>, vector<16x16xf32>
        %268 = arith.negf %cst_2 : f16
        vector.print %89 : vector<4xf32>
        %269 = arith.addi %false, %true_5 : i1
        %270 = tensor.empty() : tensor<4x4x16xi64>
        %271 = bufferization.to_tensor %alloc_15 : memref<4x4x16xf16>
        %272 = math.cttz %9 : tensor<4x4x16xi16>
        %273 = vector.bitcast %27 : vector<5xi64> to vector<5xi64>
        %274 = arith.ori %false, %false : i1
        %275 = vector.broadcast %cst_2 : f16 to vector<f16>
        vector.transfer_write %275, %alloc_15[%84, %c4, %31] : vector<f16>, memref<4x4x16xf16>
        %276 = bufferization.clone %alloc_13 : memref<4xf16> to memref<4xf16>
        %277 = math.log %splat : tensor<16x16xf32>
        %278 = arith.shli %30, %c1535624791_i32 : i32
        %279 = math.ctlz %8 : tensor<4xi64>
        scf.yield %276 : memref<4xf16>
      }
      default {
        memref.tensor_store %12, %alloc_7 : memref<4x4x16xi32>
        %collapsed_53 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<4x4x16xi64> into tensor<16x16xi64>
        %265 = arith.maxsi %c993638680_i32, %c1267058360_i32 : i32
        memref.assume_alignment %alloc_7, 8 : memref<4x4x16xi32>
        %266 = arith.remf %cst, %cst : f32
        %267 = math.round %11 : tensor<4x9x4xf32>
        %268 = memref.load %alloc_10[%c13, %c2] : memref<16x16xi64>
        %269 = arith.maxf %cst_4, %62 : f16
        %270 = arith.remf %cst_2, %cst_4 : f16
        %271 = vector.matrix_multiply %89, %88 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %272 = arith.minf %cst_4, %62 : f16
        %273 = index.add %c4, %c4
        %274 = math.expm1 %cst_2 : f16
        %275 = math.log2 %cst_1 : f16
        %276 = tensor.empty() : tensor<4x4x16xi1>
        %277 = math.log %splat : tensor<16x16xf32>
        scf.yield %alloc_13 : memref<4xf16>
      }
      %true_52 = arith.constant true
      affine.yield %cst : f32
    }
    %expanded_27 = tensor.expand_shape %5 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
    %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<16x16xi32> into tensor<256xi32>
    affine.store %c1122086390_i64, %alloc_21[%c5] : memref<4xi64>
    %108 = math.sqrt %cst_2 : f16
    %109 = vector.insert %46, %86 [3] : vector<4x16xf16> into vector<4x4x16xf16>
    %110 = vector.broadcast %c1_i32 : i32 to vector<i32>
    %111 = vector.transfer_write %110, %59[%c5, %102, %c5] : vector<i32>, tensor<4x4x16xi32>
    %112 = math.floor %cst_1 : f16
    %113 = tensor.empty() : tensor<16x16xi32>
    %114 = linalg.matmul ins(%0, %0 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%113 : tensor<16x16xi32>) -> tensor<16x16xi32>
    %115 = math.ctpop %6 : tensor<16x16xi64>
    %116 = math.expm1 %11 : tensor<4x9x4xf32>
    %117 = math.cttz %7 : tensor<4xi1>
    %cast_28 = tensor.cast %15 : tensor<4x4x16xi64> to tensor<?x?x?xi64>
    %118 = arith.andi %c1122086390_i64, %c1122086390_i64 : i64
    %119 = math.fpowi %cst, %c1267058360_i32 : f32, i32
    %120 = index.maxu %c15, %c7
    %121 = affine.if affine_set<(d0, d1) : (d1 >= 0, 0 == 0, d1 * 16 - (d0 + d1 - 1) >= 0)>(%c0, %c14) -> memref<4x4x16xf32> {
      %258 = affine.load %alloc_18[%c14, %c12, %c6] : memref<4x9x4xf32>
      %rank_52 = tensor.rank %7 : tensor<4xi1>
      %259 = tensor.empty() : tensor<4x4x16xf16>
      %260 = arith.negf %cst_4 : f16
      scf.execute_region {
        %cast_54 = tensor.cast %12 : tensor<4x4x16xi32> to tensor<?x?x?xi32>
        %263 = vector.extract_strided_slice %46 {offsets = [0], sizes = [4], strides = [1]} : vector<4x16xf16> to vector<4x16xf16>
        affine.store %c1267058360_i32, %alloc_14[%c11] : memref<4xi32>
        %264 = math.tanh %11 : tensor<4x9x4xf32>
        %265 = arith.maxf %cst_3, %cst_2 : f16
        %266 = math.exp2 %splat : tensor<16x16xf32>
        %267 = arith.divui %false, %true_5 : i1
        %268 = math.log2 %cst_2 : f16
        %269 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %270 = math.exp2 %4 : tensor<4xf32>
        %271 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %272 = vector.outerproduct %89, %88, %271 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %273 = affine.load %alloc_13[%c8] : memref<4xf16>
        %274 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, (d0 + 4) ceildiv 16)>(%65, %c14, %c6, %c9)
        %275 = math.roundeven %258 : f32
        bufferization.dealloc_tensor %6 : tensor<16x16xi64>
        %276 = math.ceil %258 : f32
        scf.yield
      }
      %261 = memref.atomic_rmw maxs %c2293_i16, %alloc_11[%c5, %c5] : (i16, memref<16x16xi16>) -> i16
      %splat_53 = tensor.splat %c1122086390_i64 : tensor<4x4x16xi64>
      %262 = math.expm1 %1 : tensor<4x9x4xf16>
      affine.yield %alloc_8 : memref<4x4x16xf32>
    } else {
      %258 = arith.ori %c1_i16, %c2293_i16 : i16
      affine.store %cst, %93[%c0, %c2, %c5] : memref<4x9x4xf32>
      %259 = math.atan2 %cst_0, %62 : f16
      affine.store %30, %alloc_7[%c6, %c15, %c5] : memref<4x4x16xi32>
      %260 = math.absi %66 : tensor<16x16xi64>
      %261 = vector.broadcast %c10 : index to vector<16xindex>
      %262 = vector.broadcast %false_23 : i1 to vector<16xi1>
      %263 = vector.broadcast %c2293_i16 : i16 to vector<16xi16>
      vector.scatter %alloc_9[%c2, %c0, %c1] [%261], %262, %263 : memref<4x4x16xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
      %264 = arith.subi %c993638680_i32, %30 : i32
      %265 = affine.for %arg1 = 0 to 64 iter_args(%arg2 = %21) -> (tensor<i64>) {
        affine.yield %21 : tensor<i64>
      }
      affine.yield %alloc_8 : memref<4x4x16xf32>
    }
    %122 = math.floor %cst_1 : f16
    %123 = vector.extract_strided_slice %105 {offsets = [1], sizes = [1], strides = [1]} : vector<5xi64> to vector<1xi64>
    %124 = vector.broadcast %c1267058360_i32 : i32 to vector<4xi32>
    %125 = math.cos %1 : tensor<4x9x4xf16>
    %126 = vector.shuffle %32, %70 [6] : vector<4x4x16xf16>, vector<4x4x16xf16>
    memref.copy %alloc_22, %alloc_21 : memref<4xi64> to memref<4xi64>
    %127 = arith.ceildivsi %false_23, %false : i1
    %128 = arith.cmpf oge, %cst, %cst : f32
    %129 = arith.negf %cst_0 : f16
    %130 = arith.divsi %c1122086390_i64, %c1122086390_i64 : i64
    %131 = tensor.empty() : tensor<16x16xi64>
    %mapped = linalg.map ins(%6, %alloc_10 : tensor<16x16xi64>, memref<16x16xi64>) outs(%131 : tensor<16x16xi64>)
      (%in: i64, %in_52: i64) {
        %258 = arith.shrsi %c993638680_i32, %c993638680_i32 : i32
        memref.copy %alloc_22, %alloc_17 : memref<4xi64> to memref<4xi64>
        %259 = index.floordivs %c12, %56
        %260 = memref.load %alloc_15[%c0, %c1, %c9] : memref<4x4x16xf16>
        %261 = math.floor %1 : tensor<4x9x4xf16>
        %262 = bufferization.to_tensor %alloc : memref<16x16xi32>
        %c0_i64_53 = arith.constant 0 : i64
        %263 = vector.transfer_read %16[%c5, %64, %102], %c0_i64_53 : tensor<4x4x16xi64>, vector<8x9xi64>
        %264 = math.copysign %62, %cst_0 : f16
        %265 = arith.remf %cst_4, %cst_0 : f16
        %266 = math.floor %1 : tensor<4x9x4xf16>
        %267 = vector.matrix_multiply %88, %88 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %268 = index.mul %64, %38
        %269 = math.tan %cst_3 : f16
        %generated_54 = tensor.generate %23 {
        ^bb0(%arg1: index, %arg2: index, %arg3: index):
          %285 = bufferization.clone %alloc_14 : memref<4xi32> to memref<4xi32>
          %286 = math.ctpop %9 : tensor<4x4x16xi16>
          %287 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
          %dest_62, %accumulated_value_63 = vector.scan <maxf>, %70, %287 {inclusive = true, reduction_dim = 2 : i64} : vector<4x4x16xf16>, vector<4x4xf16>
          %288 = index.add %c1, %268
          tensor.yield %c0_i64_53 : i64
        } : tensor<?x4x16xi64>
        %true_55 = index.bool.constant true
        %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<4x4x16xi32>) {
        ^bb0(%out: i32):
          %285 = arith.andi %in_52, %in : i64
          %286 = arith.ori %c1122086390_i64, %in_52 : i64
          %287 = vector.broadcast %c1267058360_i32 : i32 to vector<16xi32>
          %288 = vector.transfer_write %287, %113[%87, %23] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi32>, tensor<16x16xi32>
          memref.tensor_store %12, %alloc_7 : memref<4x4x16xi32>
          %289 = vector.shuffle %124, %124 [0, 1, 2, 3, 6] : vector<4xi32>, vector<4xi32>
          %290 = arith.shrsi %c20119_i16, %c1_i16 : i16
          %291 = math.ipowi %9, %9 : tensor<4x4x16xi16>
          %292 = vector.broadcast %true_55 : i1 to vector<4x4x16xi1>
          %false_62 = index.bool.constant false
          memref.tensor_store %8, %alloc_17 : memref<4xi64>
          %293 = arith.negf %cst_4 : f16
          %294 = arith.divui %true_55, %false_23 : i1
          %295 = math.atan %cst_0 : f16
          %296 = vector.create_mask %c8, %c12, %64 : vector<4x9x4xi1>
          %297 = math.ctpop %c20119_i16 : i16
          affine.store %c1535624791_i32, %alloc_14[%c15] : memref<4xi32>
          %298 = memref.atomic_rmw assign %in, %alloc_21[%c2] : (i64, memref<4xi64>) -> i64
          %299 = vector.broadcast %cst_1 : f16 to vector<16xf16>
          %dest_63, %accumulated_value_64 = vector.scan <minf>, %46, %299 {inclusive = true, reduction_dim = 0 : i64} : vector<4x16xf16>, vector<16xf16>
          %300 = vector.broadcast %false : i1 to vector<9x4xi1>
          %301 = vector.insert %300, %296 [3] : vector<9x4xi1> into vector<4x9x4xi1>
          %302 = math.exp %cst_0 : f16
          %303 = math.floor %1 : tensor<4x9x4xf16>
          %true_65 = index.bool.constant true
          %304 = math.ctpop %21 : tensor<i64>
          %alloc_66 = memref.alloc() : memref<16x16xi64>
          memref.copy %alloc_10, %alloc_66 : memref<16x16xi64> to memref<16x16xi64>
          %305 = vector.create_mask %23 : vector<4xi1>
          %306 = index.sizeof
          %307 = tensor.empty() : tensor<4xi32>
          %308 = arith.maxsi %true, %true_5 : i1
          %309 = arith.mulf %cst_4, %cst_2 : f16
          bufferization.dealloc_tensor %12 : tensor<4x4x16xi32>
          %310 = arith.subi %c1_i16, %c1_i16 : i16
          %311 = arith.divf %cst_0, %cst_4 : f16
          linalg.yield %out : i32
        } -> tensor<4x4x16xi32>
        %271 = vector.broadcast %cst_4 : f16 to vector<4x4xf16>
        %dest_56, %accumulated_value_57 = vector.scan <maxf>, %70, %271 {inclusive = false, reduction_dim = 2 : i64} : vector<4x4x16xf16>, vector<4x4xf16>
        %272 = scf.while (%arg1 = %124) : (vector<4xi32>) -> vector<4xi32> {
          %285 = arith.shli %c848283327_i32, %c1267058360_i32 : i32
          %286 = affine.max affine_map<(d0) -> (0)>(%259)
          %287 = index.mul %c3, %100
          %from_elements = tensor.from_elements %in, %in_52, %in_52, %c0_i64_53, %in, %in, %in_52, %c1122086390_i64, %in, %in, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %in_52, %c0_i64_53, %in, %c1122086390_i64, %in_52, %c0_i64_53, %in_52, %in, %c0_i64_53, %in, %c0_i64_53, %c1122086390_i64, %in_52, %c0_i64_53, %in, %in_52, %c0_i64_53, %c0_i64_53, %in_52, %in, %c0_i64_53, %c0_i64_53, %c0_i64_53, %in, %c1122086390_i64, %in_52, %in_52, %c0_i64_53, %in, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %in, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %c0_i64_53, %c0_i64_53, %c0_i64_53, %c0_i64_53, %c0_i64_53, %c0_i64_53, %c0_i64_53, %in, %in, %in_52, %in_52, %c0_i64_53, %c0_i64_53, %c1122086390_i64, %in, %c1122086390_i64, %in_52, %c1122086390_i64, %c1122086390_i64, %in, %c1122086390_i64, %c0_i64_53, %c0_i64_53, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %in, %in, %in_52, %c0_i64_53, %c0_i64_53, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %in_52, %c1122086390_i64, %in_52, %in, %in_52, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %in, %c0_i64_53, %in_52, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %c1122086390_i64, %in, %in, %c0_i64_53, %in, %in, %in_52, %c0_i64_53, %in, %c0_i64_53, %in_52, %in, %c0_i64_53, %in_52, %c0_i64_53, %c1122086390_i64, %c1122086390_i64, %in, %in, %c1122086390_i64, %in_52, %c1122086390_i64, %in_52, %in_52, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %in, %in_52, %c1122086390_i64, %in_52, %in_52, %c0_i64_53, %c1122086390_i64, %in_52, %in, %c1122086390_i64, %in, %c1122086390_i64, %in, %in_52, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %c0_i64_53, %c0_i64_53, %in_52, %c1122086390_i64, %in_52, %c1122086390_i64, %in, %in_52, %c0_i64_53, %in_52, %c0_i64_53, %c1122086390_i64, %c1122086390_i64, %in, %c0_i64_53, %in_52, %c0_i64_53, %c0_i64_53, %in, %in_52, %c1122086390_i64, %c0_i64_53, %in_52, %in, %in_52, %c1122086390_i64, %c0_i64_53, %in, %in, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %c0_i64_53, %c0_i64_53, %c0_i64_53, %in, %in, %c0_i64_53, %c0_i64_53, %c1122086390_i64, %in, %in, %in, %in_52, %in_52, %in_52, %c0_i64_53, %c0_i64_53, %in_52, %c1122086390_i64, %c0_i64_53, %in_52, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %in_52, %c0_i64_53, %in, %c1122086390_i64, %in_52, %c1122086390_i64, %c0_i64_53, %c0_i64_53, %c0_i64_53, %in, %in_52, %c0_i64_53, %in_52, %in_52, %in_52, %c0_i64_53, %c0_i64_53, %in, %in, %in, %c1122086390_i64, %in_52, %c0_i64_53, %in_52, %c0_i64_53, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %c1122086390_i64, %c0_i64_53, %in_52, %c1122086390_i64, %in_52, %c0_i64_53, %in, %c1122086390_i64, %c1122086390_i64, %c0_i64_53, %in_52, %in, %in_52, %in, %c0_i64_53, %c1122086390_i64, %in, %in_52, %in, %in_52, %in_52 : tensor<4x4x16xi64>
          %288 = arith.remsi %true, %true_5 : i1
          %289 = vector.broadcast %cst_0 : f16 to vector<4x9x4xf16>
          %290 = math.log2 %1 : tensor<4x9x4xf16>
          %291 = affine.min affine_map<(d0, d1, d2) -> ((d1 - d2 - 72) * 4, d1 - d2)>(%c7, %c1, %102)
          scf.condition(%false_23) %124 : vector<4xi32>
        } do {
        ^bb0(%arg1: vector<4xi32>):
          %285 = arith.minui %c0_i64_53, %in : i64
          %286 = vector.reduction <and>, %27 : vector<5xi64> into i64
          %287 = math.log %11 : tensor<4x9x4xf32>
          %288 = math.tanh %cst_3 : f16
          %289 = math.log2 %1 : tensor<4x9x4xf16>
          %290 = arith.minui %c1_i16, %c20119_i16 : i16
          vector.print %105 : vector<5xi64>
          %291 = math.absi %2 : tensor<4x4x16xi32>
          %292 = math.log %cst_2 : f16
          %293 = math.floor %expanded : tensor<4x9x4x1xf16>
          %294 = tensor.empty() : tensor<4xi32>
          %295 = arith.ori %false_23, %true : i1
          %296 = math.cttz %6 : tensor<16x16xi64>
          memref.assume_alignment %alloc_15, 2 : memref<4x4x16xf16>
          %false_62 = index.bool.constant false
          %297 = arith.ori %c1_i32, %c1535624791_i32 : i32
          scf.yield %124 : vector<4xi32>
        }
        %273 = arith.addi %false_23, %false : i1
        affine.store %c1_i32, %alloc_14[%c2] : memref<4xi32>
        %alloc_58 = memref.alloc() : memref<16x16xi16>
        memref.copy %alloc_11, %alloc_58 : memref<16x16xi16> to memref<16x16xi16>
        %274 = vector.create_mask %268, %23, %c13 : vector<4x9x4xi1>
        %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14 : memref<4xi32>) outs(%59 : tensor<4x4x16xi32>) {
        ^bb0(%in_62: i32, %out: i32):
          %285 = arith.remui %30, %in_62 : i32
          %286 = vector.flat_transpose %123 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %287 = math.log %cst_4 : f16
          %288 = vector.broadcast %cst : f32 to vector<4xf32>
          %289 = vector.fma %288, %88, %288 : vector<4xf32>
          %290 = affine.load %alloc_14[%c2] : memref<4xi32>
          memref.tensor_store %9, %alloc_9 : memref<4x4x16xi16>
          %291 = index.add %c11, %259
          %292 = affine.load %alloc_6[%c9, %c3] : memref<16x16xf32>
          %293 = math.sqrt %expanded : tensor<4x9x4x1xf16>
          %294 = affine.max affine_map<(d0, d1) -> (d1, d1 - 128, d1 - 128)>(%rank_25, %c10)
          %295 = math.ceil %splat : tensor<16x16xf32>
          %296 = vector.broadcast %c1_i16 : i16 to vector<9x4x9x4xi16>
          %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %92, %92, %296 : vector<4x9x4xi16>, vector<4x9x4xi16> into vector<9x4x9x4xi16>
          %298 = arith.muli %c1122086390_i64, %in_52 : i64
          %299 = math.cttz %true : i1
          %300 = vector.shuffle %288, %88 [1, 2, 3, 4, 5, 7] : vector<4xf32>, vector<4xf32>
          %collapsed_63 = tensor.collapse_shape %66 [[0, 1]] : tensor<16x16xi64> into tensor<256xi64>
          bufferization.dealloc_tensor %6 : tensor<16x16xi64>
          %301 = index.casts %in_62 : i32 to index
          %302 = arith.remf %cst, %292 : f32
          %inserted_64 = tensor.insert %292 into %cast[%c0, %c0, %c0] : tensor<?x?x?xf32>
          %303 = math.round %4 : tensor<4xf32>
          %304 = math.tan %11 : tensor<4x9x4xf32>
          %305 = vector.broadcast %c2293_i16 : i16 to vector<4x9xi16>
          %dest_65, %accumulated_value_66 = vector.scan <mul>, %92, %305 {inclusive = false, reduction_dim = 2 : i64} : vector<4x9x4xi16>, vector<4x9xi16>
          %306 = index.maxs %c7, %c14
          %307 = vector.broadcast %c7 : index to vector<16xindex>
          %308 = vector.broadcast %true_5 : i1 to vector<16xi1>
          %309 = vector.broadcast %cst : f32 to vector<16xf32>
          vector.scatter %alloc_19[%c3] [%307], %308, %309 : memref<4xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
          %310 = arith.minui %c1122086390_i64, %c0_i64_53 : i64
          %311 = arith.cmpf ule, %cst_3, %cst_1 : f16
          %312 = arith.shli %true_5, %false : i1
          %313 = index.sub %45, %102
          %314 = vector.flat_transpose %27 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
          memref.assume_alignment %alloc_6, 1 : memref<16x16xf32>
          %315 = math.cttz %c848283327_i32 : i32
          linalg.yield %c1267058360_i32 : i32
        } -> tensor<4x4x16xi32>
        %alloc_59 = memref.alloc() : memref<4xf32>
        memref.copy %alloc_19, %alloc_59 : memref<4xf32> to memref<4xf32>
        %276 = vector.matrix_multiply %53, %27 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %splat_60 = tensor.splat %cst_1 : tensor<4x4x16xf16>
        %277 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        affine.store %cst, %alloc_6[%c0, %c14] : memref<16x16xf32>
        %278 = arith.minui %c1_i32, %c1267058360_i32 : i32
        %279 = math.exp2 %expanded : tensor<4x9x4x1xf16>
        %280 = vector.broadcast %in_52 : i64 to vector<5x5xi64>
        %281 = vector.outerproduct %27, %105, %280 {kind = #vector.kind<mul>} : vector<5xi64>, vector<5xi64>
        %282 = vector.broadcast %c3 : index to vector<9xindex>
        %283 = vector.broadcast %false_23 : i1 to vector<9xi1>
        %284 = vector.broadcast %c1_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_11[%c6, %c11] [%282], %283, %284 : memref<16x16xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %c0_i64_61 = arith.constant 0 : i64
        linalg.yield %c0_i64_61 : i64
      }
    %132 = vector.broadcast %cst : f32 to vector<4xf32>
    %133 = vector.fma %132, %132, %132 : vector<4xf32>
    %134 = vector.bitcast %86 : vector<4x4x16xf16> to vector<4x4x16xf16>
    %135 = arith.maxsi %c2293_i16, %c2293_i16 : i16
    %136 = arith.maxsi %c1535624791_i32, %c848283327_i32 : i32
    %137 = math.ceil %cst : f32
    affine.store %c1122086390_i64, %alloc_17[%c0] : memref<4xi64>
    %138 = arith.maxf %cst, %cst : f32
    %139 = vector.flat_transpose %124 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
    %140 = vector.multi_reduction <mul>, %132, %cst [0] : vector<4xf32> to f32
    bufferization.dealloc_tensor %14 : tensor<16x16xi16>
    %141 = index.mul %c7, %100
    %142 = vector.extract_strided_slice %139 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi32> to vector<1xi32>
    %143 = vector.broadcast %c993638680_i32 : i32 to vector<4x4xi32>
    %144 = vector.outerproduct %139, %124, %143 {kind = #vector.kind<and>} : vector<4xi32>, vector<4xi32>
    %145 = vector.broadcast %true_5 : i1 to vector<9x4xi1>
    %dest, %accumulated_value = vector.scan <mul>, %69, %145 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x4xi1>, vector<9x4xi1>
    %146 = math.ctlz %expanded_27 : tensor<4x1xi32>
    %147 = index.maxs %64, %31
    %148 = arith.maxf %cst, %cst : f32
    %149 = arith.remf %cst_1, %62 : f16
    %150 = math.tanh %cst : f32
    %151 = math.log %cst : f32
    %false_29 = index.bool.constant false
    %152 = memref.realloc %alloc_19 : memref<4xf32> to memref<16xf32>
    %153 = scf.execute_region -> f16 {
      %258 = bufferization.to_tensor %93 : memref<4x9x4xf32>
      %cst_52 = arith.constant 2.02645683E+9 : f32
      %259 = arith.muli %false_23, %false_29 : i1
      %260 = tensor.empty(%c15, %c4) : tensor<?x?x16xi64>
      %261 = math.absi %10 : tensor<4x4x16xi64>
      %262 = index.maxs %c2, %c14
      %263 = bufferization.clone %alloc_8 : memref<4x4x16xf32> to memref<4x4x16xf32>
      %264 = math.log %cst_0 : f16
      %265 = arith.ori %false_29, %true_5 : i1
      %rank_53 = tensor.rank %15 : tensor<4x4x16xi64>
      %266 = math.cos %cst_3 : f16
      %267 = index.castu %23 : index to i32
      %268 = vector.extract_strided_slice %89 {offsets = [1], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
      %splat_54 = tensor.splat %cst_2 : tensor<4x4x16xf16>
      %269 = math.powf %4, %4 : tensor<4xf32>
      %270 = affine.for %arg1 = 0 to 13 iter_args(%arg2 = %262) -> (index) {
        affine.yield %102 : index
      }
      scf.yield %cst_0 : f16
    }
    %154 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %132, %89, %140 : vector<4xf32>, vector<4xf32> into f32
    %155 = vector.broadcast %c993638680_i32 : i32 to vector<4x9x4xi32>
    %156 = scf.while (%arg1 = %153) : (f16) -> f16 {
      %generated_52 = tensor.generate %23, %141 {
      ^bb0(%arg2: index, %arg3: index):
        %265 = index.castu %30 : i32 to index
        %266 = math.ctpop %14 : tensor<16x16xi16>
        %267 = arith.mulf %cst, %140 : f32
        %268 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d3 * 16 + 64))>(%37, %arg2, %c8, %100)
        tensor.yield %140 : f32
      } : tensor<?x?xf32>
      %258 = arith.mulf %cst_2, %62 : f16
      %259 = math.floor %arg1 : f16
      %260 = vector.broadcast %cst : f32 to vector<4x4x16xf32>
      %261 = vector.fma %260, %260, %260 : vector<4x4x16xf32>
      %c1_i32_53 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %262 = vector.transfer_read %0[%147, %c14], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<16x16xi32>, vector<16xi32>
      %263 = arith.divsi %c848283327_i32, %c1267058360_i32 : i32
      scf.execute_region {
        bufferization.dealloc_tensor %expanded_27 : tensor<4x1xi32>
        %265 = arith.muli %c993638680_i32, %c1535624791_i32 : i32
        %true_54 = index.bool.constant true
        %collapsed_55 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<4x9x4xf16> into tensor<36x4xf16>
        affine.store %cst, %alloc_19[%c14] : memref<4xf32>
        %266 = arith.maxsi %c1122086390_i64, %c1122086390_i64 : i64
        %267 = arith.floordivsi %true_54, %false_23 : i1
        %268 = vector.broadcast %140 : f32 to vector<4x4x16xf32>
        %269 = vector.fma %268, %261, %260 : vector<4x4x16xf32>
        %270 = math.log10 %153 : f16
        %271 = math.ctlz %c2293_i16 : i16
        %272 = math.exp %4 : tensor<4xf32>
        %273 = tensor.empty() : tensor<4xi1>
        %274 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d3 * 16 + 64))>(%c6, %147, %c3, %c6)
        %275 = math.sqrt %11 : tensor<4x9x4xf32>
        %276 = vector.create_mask %c0, %c14 : vector<16x16xi1>
        %277 = index.add %102, %c11
        scf.yield
      }
      %264 = scf.execute_region -> index {
        %splat_54 = tensor.splat %c993638680_i32 : tensor<16x16xi32>
        %265 = math.atan %cst_3 : f16
        %c0_i64_55 = arith.constant 0 : i64
        %c0_i64_56 = arith.constant 0 : i64
        %266 = vector.transfer_read %6[%c15, %84], %c0_i64_56 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<16x16xi64>, vector<4xi64>
        %267 = arith.maxf %cst_4, %153 : f16
        %268 = vector.broadcast %140 : f32 to vector<4x16xf32>
        %269 = vector.insert %268, %260 [1] : vector<4x16xf32> into vector<4x4x16xf32>
        %270 = math.copysign %cst_2, %62 : f16
        %271 = math.tan %cst_1 : f16
        %expanded_57 = tensor.expand_shape %66 [[0], [1, 2]] : tensor<16x16xi64> into tensor<16x16x1xi64>
        %272 = math.ceil %cst_2 : f16
        bufferization.dealloc_tensor %4 : tensor<4xf32>
        %273 = math.ctpop %c848283327_i32 : i32
        %274 = math.rsqrt %4 : tensor<4xf32>
        %true_58 = index.bool.constant true
        %275 = index.maxs %c15, %c9
        %true_59 = index.bool.constant true
        %276 = vector.matrix_multiply %142, %139 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi32>, vector<4xi32>) -> vector<4xi32>
        scf.yield %c0 : index
      }
      scf.condition(%true_5) %arg1 : f16
    } do {
    ^bb0(%arg1: f16):
      %258 = arith.remf %cst_0, %153 : f16
      %259 = vector.broadcast %140 : f32 to vector<16x16xf32>
      %260 = vector.fma %259, %259, %259 : vector<16x16xf32>
      scf.index_switch %c6 
      case 1 {
        %274 = arith.xori %false, %false_29 : i1
        %275 = math.sqrt %4 : tensor<4xf32>
        %276 = math.powf %140, %cst : f32
        %277 = math.atan %4 : tensor<4xf32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %20, %c1122086390_i64 : vector<9xi64>, vector<9xi64> into i64
        %c1_i64 = arith.constant 1 : i64
        %279 = vector.transfer_read %alloc_21[%37], %c1_i64 : memref<4xi64>, vector<i64>
        %alloca = memref.alloca() : memref<16x16xi1>
        %alloc_52 = memref.alloc() : memref<4x9x4x1xf16>
        memref.tensor_store %expanded, %alloc_52 : memref<4x9x4x1xf16>
        %280 = math.ctpop %c1_i32 : i32
        %281 = index.maxs %rank_25, %rank_25
        %282 = index.sub %c13, %84
        %283 = math.absi %3 : tensor<4x4x16xi64>
        %284 = arith.andi %c993638680_i32, %c1_i32 : i32
        %true_53 = index.bool.constant true
        %false_54 = index.bool.constant false
        %285 = vector.transpose %142, [0] : vector<1xi32> to vector<1xi32>
        scf.yield
      }
      case 2 {
        %274 = math.expm1 %cst_1 : f16
        %275 = vector.broadcast %140 : f32 to vector<4x4x16xf32>
        %276 = vector.fma %275, %275, %275 : vector<4x4x16xf32>
        %277 = arith.remf %cst_1, %153 : f16
        %278 = math.ctlz %13 : tensor<4x4x16xi64>
        memref.copy %alloc_16, %alloc : memref<16x16xi32> to memref<16x16xi32>
        %279 = index.ceildivs %23, %45
        %280 = arith.addi %c1122086390_i64, %c1122086390_i64 : i64
        %281 = arith.maxui %c1535624791_i32, %30 : i32
        %false_52 = index.bool.constant false
        %282 = math.sqrt %expanded : tensor<4x9x4x1xf16>
        %283 = vector.splat %100 : vector<4xindex>
        %284 = math.log %153 : f16
        %285 = vector.flat_transpose %53 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %286 = math.log10 %cst_2 : f16
        %287 = math.log2 %cst_0 : f16
        %288 = vector.broadcast %false_52 : i1 to vector<4x4x16xi1>
        scf.yield
      }
      default {
        %274 = math.absi %2 : tensor<4x4x16xi32>
        %expanded_52 = tensor.expand_shape %4 [[0, 1]] : tensor<4xf32> into tensor<4x1xf32>
        %275 = index.floordivs %45, %141
        %276 = index.floordivs %rank, %c4
        %277 = math.ctpop %22 : tensor<i64>
        %278 = math.cos %arg1 : f16
        %279 = arith.divf %cst_2, %cst_2 : f16
        %280 = math.expm1 %11 : tensor<4x9x4xf32>
        %false_53 = index.bool.constant false
        %281 = vector.flat_transpose %132 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %true_54 = index.bool.constant true
        %282 = vector.broadcast %cst_3 : f16 to vector<4x9x4xf16>
        %283 = arith.ceildivsi %c1267058360_i32, %c1535624791_i32 : i32
        %284 = math.floor %140 : f32
        %285 = math.tanh %4 : tensor<4xf32>
        %286 = vector.load %alloc_9[%c3, %c2, %c13] : memref<4x4x16xi16>, vector<4x9x4xi16>
      }
      %261 = vector.extract_strided_slice %92 {offsets = [0], sizes = [4], strides = [1]} : vector<4x9x4xi16> to vector<4x9x4xi16>
      %262 = index.add %c14, %141
      %263 = math.exp %cst_2 : f16
      %264 = arith.andi %30, %c1_i32 : i32
      %265 = math.atan2 %11, %11 : tensor<4x9x4xf32>
      %266 = arith.negf %cst_0 : f16
      %267 = vector.matrix_multiply %88, %132 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %268 = math.cttz %12 : tensor<4x4x16xi32>
      %269 = math.powf %4, %4 : tensor<4xf32>
      %270 = vector.load %alloc_19[%c2] : memref<4xf32>, vector<4xf32>
      %271 = index.floordivs %rank, %c15
      %272 = math.round %cst_2 : f16
      %273 = arith.remui %c1_i32, %c1_i32 : i32
      scf.yield %cst_3 : f16
    }
    %alloc_30 = memref.alloc() : memref<i64>
    memref.tensor_store %22, %alloc_30 : memref<i64>
    %157 = vector.matrix_multiply %105, %53 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
    %158 = scf.while (%arg1 = %49) : (vector<1xi64>) -> vector<1xi64> {
      %true_52 = index.bool.constant true
      %alloca = memref.alloca() : memref<4x4x16xi32>
      %258 = vector.broadcast %140 : f32 to vector<4x4xf32>
      %259 = vector.outerproduct %89, %88, %258 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
      %260 = index.casts %false_23 : i1 to index
      %261 = math.exp %cst_0 : f16
      %262 = vector.broadcast %cst : f32 to vector<4xf32>
      %263 = vector.fma %262, %132, %88 : vector<4xf32>
      %264 = scf.if %true -> (f16) {
        %265 = vector.create_mask %87, %c12, %c12 : vector<4x9x4xi1>
        %266 = arith.shrsi %true, %false_23 : i1
        %267 = math.cttz %c1122086390_i64 : i64
        %268 = index.sub %31, %37
        %269 = math.exp %4 : tensor<4xf32>
        %270 = vector.broadcast %cst_1 : f16 to vector<4x16x4x16xf16>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %70, %32, %270 : vector<4x4x16xf16>, vector<4x4x16xf16> into vector<4x16x4x16xf16>
        %272 = math.ctpop %8 : tensor<4xi64>
        %273 = index.add %65, %c8
        scf.yield %cst_4 : f16
      } else {
        %265 = index.add %64, %87
        %266 = vector.broadcast %cst_1 : f16 to vector<16xf16>
        %267 = vector.multi_reduction <minf>, %70, %266 [0, 1] : vector<4x4x16xf16> to vector<16xf16>
        %268 = arith.maxsi %false_29, %true : i1
        %269 = index.floordivs %141, %c8
        %false_55 = index.bool.constant false
        %270 = math.expm1 %cst_2 : f16
        %271 = tensor.empty() : tensor<4xi1>
        %272 = arith.negf %cst_4 : f16
        scf.yield %cst_2 : f16
      }
      %dest_53, %accumulated_value_54 = vector.scan <add>, %70, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4x16xf16>, vector<4x16xf16>
      scf.condition(%true) %157 : vector<1xi64>
    } do {
    ^bb0(%arg1: vector<1xi64>):
      %258 = arith.remui %c848283327_i32, %c1_i32 : i32
      %259 = math.sqrt %4 : tensor<4xf32>
      %260 = bufferization.to_tensor %alloc_20 : memref<4x9x4xi64>
      %261 = arith.remf %cst_4, %cst_0 : f16
      %alloc_52 = memref.alloc() : memref<4xi32>
      memref.copy %alloc_14, %alloc_52 : memref<4xi32> to memref<4xi32>
      %262 = vector.load %alloc_17[%c0] : memref<4xi64>, vector<4xi64>
      %rank_53 = tensor.rank %14 : tensor<16x16xi16>
      %alloc_54 = memref.alloc() : memref<4xf16>
      memref.copy %alloc_13, %alloc_54 : memref<4xf16> to memref<4xf16>
      %263 = vector.extract_strided_slice %46 {offsets = [2], sizes = [2], strides = [1]} : vector<4x16xf16> to vector<2x16xf16>
      %264 = vector.broadcast %c1122086390_i64 : i64 to vector<16x4xi64>
      %265 = vector.transfer_write %264, %260[%120, %c15, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x4xi64>, tensor<4x9x4xi64>
      %266 = math.round %140 : f32
      %267 = bufferization.clone %alloc_12 : memref<4x9x4xi16> to memref<4x9x4xi16>
      scf.execute_region {
        %271 = vector.transpose %27, [0] : vector<5xi64> to vector<5xi64>
        %272 = arith.shrui %c20119_i16, %c1_i16 : i16
        %273 = arith.divf %cst_3, %cst_0 : f16
        %expanded_55 = tensor.expand_shape %5 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %274 = arith.subi %c1_i16, %c1_i16 : i16
        %275 = vector.broadcast %c993638680_i32 : i32 to vector<4x4xi32>
        %276 = vector.outerproduct %124, %124, %275 {kind = #vector.kind<mul>} : vector<4xi32>, vector<4xi32>
        %true_56 = arith.constant true
        %cst_57 = arith.constant 1.000000e+00 : f32
        %277 = vector.transfer_read %4[%c8], %cst_57 : tensor<4xf32>, vector<f32>
        %alloc_58 = memref.alloc() : memref<4x4x16xi64>
        memref.tensor_store %13, %alloc_58 : memref<4x4x16xi64>
        %278 = memref.load %alloc_20[%c2, %c8, %c3] : memref<4x9x4xi64>
        %279 = arith.maxsi %c1122086390_i64, %c1122086390_i64 : i64
        %280 = arith.maxf %cst_4, %cst_1 : f16
        %281 = vector.broadcast %c1122086390_i64 : i64 to vector<4x4xi64>
        %282 = vector.outerproduct %262, %262, %281 {kind = #vector.kind<xor>} : vector<4xi64>, vector<4xi64>
        %283 = arith.negf %cst_4 : f16
        %284 = vector.flat_transpose %124 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %285 = math.absi %8 : tensor<4xi64>
        scf.yield
      }
      %268 = arith.maxf %62, %cst_0 : f16
      %269 = arith.maxsi %c1_i16, %c2293_i16 : i16
      %270 = arith.divf %153, %cst_3 : f16
      scf.yield %49 : vector<1xi64>
    }
    %159 = arith.divui %false_23, %false : i1
    %160 = vector.broadcast %cst : f32 to vector<16x16xf32>
    %161 = vector.fma %160, %160, %160 : vector<16x16xf32>
    %162 = math.absi %7 : tensor<4xi1>
    %163 = arith.ceildivsi %true_5, %true_5 : i1
    %164 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<4x9x4xf32>) {
    ^bb0(%out: f32):
      %258 = memref.load %alloc_7[%c1, %c0, %c3] : memref<4x4x16xi32>
      %259 = math.log1p %out : f32
      %260 = math.ctpop %14 : tensor<16x16xi16>
      %261 = affine.max affine_map<(d0, d1, d2) -> (d0 * 32, d0 + 16, d0 + 1)>(%c0, %c9, %c15)
      %262 = math.cttz %false : i1
      %263 = bufferization.clone %alloc_12 : memref<4x9x4xi16> to memref<4x9x4xi16>
      %264 = arith.floordivsi %c1267058360_i32, %30 : i32
      %265 = arith.divf %cst_1, %cst_2 : f16
      %266 = tensor.empty(%c15, %64) : tensor<?x?x16xf16>
      %267 = tensor.empty(%84) : tensor<4x4x?xi1>
      %268 = math.round %cst_2 : f16
      %269 = affine.max affine_map<(d0, d1, d2) -> ((d1 ceildiv 128 + 32) * 4, d1 ceildiv 128 + 32)>(%c13, %45, %c12)
      %270 = vector.extract_strided_slice %105 {offsets = [2], sizes = [2], strides = [1]} : vector<5xi64> to vector<2xi64>
      %271 = vector.broadcast %30 : i32 to vector<9x4xi32>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %155, %139, %271 : vector<4x9x4xi32>, vector<4xi32> into vector<9x4xi32>
      %273 = math.absi %c1267058360_i32 : i32
      %274 = math.powf %1, %1 : tensor<4x9x4xf16>
      %275 = vector.extract %53[3] : vector<5xi64>
      %276 = arith.andi %false_23, %true_5 : i1
      %277 = vector.broadcast %out : f32 to vector<4x9x4xf32>
      %278 = vector.fma %277, %277, %277 : vector<4x9x4xf32>
      %279 = vector.extract_strided_slice %155 {offsets = [2, 5], sizes = [1, 3], strides = [1, 1]} : vector<4x9x4xi32> to vector<1x3x4xi32>
      %280 = math.tan %62 : f16
      %281 = arith.shrui %true_5, %false : i1
      %282 = arith.subi %c1_i16, %c1_i16 : i16
      %283 = vector.broadcast %c1122086390_i64 : i64 to vector<9x9xi64>
      %284 = vector.outerproduct %20, %20, %283 {kind = #vector.kind<mul>} : vector<9xi64>, vector<9xi64>
      %285 = math.sqrt %11 : tensor<4x9x4xf32>
      %286 = math.sqrt %cst_4 : f16
      %287 = arith.muli %false_29, %false_23 : i1
      %288 = tensor.empty() : tensor<16x16xi64>
      %289 = linalg.matmul ins(%66, %6 : tensor<16x16xi64>, tensor<16x16xi64>) outs(%288 : tensor<16x16xi64>) -> tensor<16x16xi64>
      %alloca = memref.alloca() : memref<4xf32>
      %290 = math.atan %62 : f16
      %291 = vector.extract_strided_slice %157 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      %292 = vector.create_mask %102, %141 : vector<16x16xi1>
      linalg.yield %cst : f32
    } -> tensor<4x9x4xf32>
    %cast_31 = tensor.cast %4 : tensor<4xf32> to tensor<?xf32>
    %165 = vector.shuffle %123, %53 [0, 1, 2, 3, 4] : vector<1xi64>, vector<5xi64>
    %166 = arith.ceildivsi %true, %false_23 : i1
    memref.tensor_store %113, %alloc_16 : memref<16x16xi32>
    %167 = vector.broadcast %c993638680_i32 : i32 to vector<i32>
    vector.transfer_write %167, %alloc_14[%c7] : vector<i32>, memref<4xi32>
    %168 = bufferization.to_tensor %alloc_8 : memref<4x4x16xf32>
    %169 = vector.broadcast %false_23 : i1 to vector<4x4x16xi1>
    %170 = scf.execute_region -> f16 {
      %collapsed_52 = tensor.collapse_shape %14 [[0, 1]] : tensor<16x16xi16> into tensor<256xi16>
      %258 = math.absi %15 : tensor<4x4x16xi64>
      %259 = math.ctpop %18 : tensor<i32>
      %260 = index.add %c1, %c3
      %261 = index.mul %c0, %rank
      %262 = memref.atomic_rmw addi %c1_i16, %alloc_11[%c9, %c3] : (i16, memref<16x16xi16>) -> i16
      %263 = arith.mulf %140, %140 : f32
      %264 = math.floor %cst_2 : f16
      %265 = index.maxs %c13, %c0
      %266 = index.floordivs %23, %260
      memref.tensor_store %113, %alloc_16 : memref<16x16xi32>
      %267 = arith.divf %153, %cst_0 : f16
      %268 = index.floordivs %c2, %c15
      scf.execute_region {
        %271 = index.divs %c9, %45
        %272 = arith.divsi %false, %true : i1
        %273 = index.add %147, %260
        %274 = arith.maxsi %true, %false_23 : i1
        %275 = arith.divui %c1122086390_i64, %c1122086390_i64 : i64
        affine.store %c2293_i16, %alloc_12[%c13, %c4, %c14] : memref<4x9x4xi16>
        %276 = math.log2 %11 : tensor<4x9x4xf32>
        %277 = math.copysign %1, %1 : tensor<4x9x4xf16>
        %278 = index.add %260, %c12
        %279 = index.maxs %c6, %c5
        affine.store %cst_1, %alloc_15[%c9, %c3, %c13] : memref<4x4x16xf16>
        %280 = math.tanh %1 : tensor<4x9x4xf16>
        %281 = memref.atomic_rmw addi %c1535624791_i32, %alloc[%c1, %c3] : (i32, memref<16x16xi32>) -> i32
        %282 = arith.cmpi eq, %c2293_i16, %c2293_i16 : i16
        %283 = index.add %268, %271
        %284 = math.log10 %cst : f32
        scf.yield
      }
      %269 = arith.ori %c993638680_i32, %30 : i32
      %270 = arith.floordivsi %c1267058360_i32, %c1535624791_i32 : i32
      scf.yield %cst_3 : f16
    }
    %171 = math.atan2 %140, %140 : f32
    %172 = arith.minui %c1122086390_i64, %c1122086390_i64 : i64
    %173 = math.absi %66 : tensor<16x16xi64>
    %174 = math.exp %11 : tensor<4x9x4xf32>
    %175 = arith.remf %cst_1, %cst_2 : f16
    %cast_32 = tensor.cast %11 : tensor<4x9x4xf32> to tensor<?x?x?xf32>
    %176 = bufferization.to_tensor %alloc_8 : memref<4x4x16xf32>
    scf.execute_region {
      %258 = math.exp %168 : tensor<4x4x16xf32>
      %259 = vector.broadcast %cst_0 : f16 to vector<4x4xf16>
      %dest_52, %accumulated_value_53 = vector.scan <mul>, %32, %259 {inclusive = true, reduction_dim = 2 : i64} : vector<4x4x16xf16>, vector<4x4xf16>
      %260 = arith.andi %c2293_i16, %c1_i16 : i16
      %261 = affine.if affine_set<(d0, d1) : (d1 >= 0, 0 == 0, d1 * 16 - (d0 + d1 - 1) >= 0)>(%c12, %c12) -> f16 {
        %272 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %273 = vector.insertelement %c1122086390_i64, %53[%141 : index] : vector<5xi64>
        %274 = affine.max affine_map<(d0, d1) -> (d0)>(%31, %c5)
        %275 = math.log2 %cst_2 : f16
        %276 = vector.broadcast %cst_3 : f16 to vector<4x4xf16>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %134, %276 {inclusive = false, reduction_dim = 2 : i64} : vector<4x4x16xf16>, vector<4x4xf16>
        %277 = math.cttz %21 : tensor<i64>
        %278 = vector.multi_reduction <xor>, %157, %123 [] : vector<1xi64> to vector<1xi64>
        %279 = vector.broadcast %c1_i16 : i16 to vector<4x4xi16>
        %dest_58, %accumulated_value_59 = vector.scan <mul>, %92, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x4xi16>, vector<4x4xi16>
        affine.yield %cst_0 : f16
      } else {
        %272 = math.cttz %c20119_i16 : i16
        %273 = arith.ceildivsi %30, %30 : i32
        %274 = math.exp %cst_2 : f16
        vector.print %69 : vector<4x9x4xi1>
        %275 = arith.subi %c1_i16, %c1_i16 : i16
        %276 = math.ceil %cst : f32
        %277 = vector.matrix_multiply %20, %157 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<1xi64>) -> vector<9xi64>
        %278 = index.mul %100, %87
        affine.yield %cst_2 : f16
      }
      %262 = math.exp %cst_2 : f16
      %263 = math.cos %11 : tensor<4x9x4xf32>
      %264 = math.cttz %7 : tensor<4xi1>
      %265 = arith.mulf %62, %cst_3 : f16
      %c1_i16_54 = arith.constant 1 : i16
      %c0_i16_55 = arith.constant 0 : i16
      %266 = vector.transfer_read %alloc_9[%45, %c0, %c0], %c0_i16_55 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<4x4x16xi16>, vector<16xi16>
      %267 = vector.flat_transpose %53 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      %268 = index.ceildivs %c1, %c11
      bufferization.dealloc_tensor %4 : tensor<4xf32>
      memref.store %c848283327_i32, %alloc_16[%c2, %c6] : memref<16x16xi32>
      %269 = vector.create_mask %c4, %c4, %c10 : vector<4x9x4xi1>
      %270 = math.ctpop %c20119_i16 : i16
      %271 = vector.matrix_multiply %123, %49 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      scf.yield
    }
    %false_33 = index.bool.constant false
    %splat_34 = tensor.splat %true_5 : tensor<4x4x16xi1>
    %177 = arith.remui %c1535624791_i32, %30 : i32
    %178 = arith.remui %false_33, %false_33 : i1
    %179 = vector.extract_strided_slice %86 {offsets = [0, 0], sizes = [3, 2], strides = [1, 1]} : vector<4x4x16xf16> to vector<3x2x16xf16>
    %180 = arith.addi %false_23, %true : i1
    %181 = tensor.empty() : tensor<4x4x16xi64>
    %mapped_35 = linalg.map ins(%15, %15 : tensor<4x4x16xi64>, tensor<4x4x16xi64>) outs(%181 : tensor<4x4x16xi64>)
      (%in: i64, %in_52: i64) {
        %258 = scf.if %true -> (memref<4xi16>) {
          %291 = index.add %31, %c13
          %292 = math.absi %59 : tensor<4x4x16xi32>
          %293 = index.sizeof
          %294 = arith.muli %c1535624791_i32, %c1535624791_i32 : i32
          %c1_i16_57 = arith.constant 1 : i16
          %295 = vector.transfer_read %14[%c0, %c15], %c1_i16_57 : tensor<16x16xi16>, vector<9xi16>
          %296 = math.round %1 : tensor<4x9x4xf16>
          %297 = math.ipowi %181, %13 : tensor<4x4x16xi64>
          %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %132, %133, %140 : vector<4xf32>, vector<4xf32> into f32
          %alloc_58 = memref.alloc() : memref<4xi16>
          scf.yield %alloc_58 : memref<4xi16>
        } else {
          %291 = vector.transpose %134, [1, 0, 2] : vector<4x4x16xf16> to vector<4x4x16xf16>
          %292 = index.ceildivs %64, %87
          %293 = arith.andi %false_33, %true : i1
          %294 = math.exp2 %cst_3 : f16
          %295 = index.divu %rank_25, %c12
          %296 = vector.broadcast %cst_4 : f16 to vector<4xf16>
          %297 = index.add %c1, %64
          %alloc_57 = memref.alloc() : memref<16x16xi16>
          memref.copy %alloc_11, %alloc_57 : memref<16x16xi16> to memref<16x16xi16>
          %alloc_58 = memref.alloc() : memref<4xi16>
          scf.yield %alloc_58 : memref<4xi16>
        }
        %259 = index.mul %31, %102
        %260 = math.log %cst_4 : f16
        %261 = vector.load %alloc_8[%c2, %c0, %c15] : memref<4x4x16xf32>, vector<4x4x16xf32>
        %262 = vector.broadcast %45 : index to vector<8xindex>
        %263 = vector.broadcast %false_33 : i1 to vector<8xi1>
        %264 = vector.broadcast %c1_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_9[%c1, %c3, %c2] [%262], %263, %264 : memref<4x4x16xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %265 = arith.addi %true, %false_23 : i1
        %266 = vector.reduction <maxui>, %49 : vector<1xi64> into i64
        %267 = index.divs %c0, %56
        affine.for %arg1 = 0 to 123 {
        }
        %268 = arith.shli %c1_i16, %c2293_i16 : i16
        %269 = math.ctpop %113 : tensor<16x16xi32>
        %270 = arith.shrsi %c1535624791_i32, %c1_i32 : i32
        %271 = math.copysign %4, %4 : tensor<4xf32>
        %272 = arith.divui %true_5, %true_5 : i1
        %273 = math.ceil %176 : tensor<4x4x16xf32>
        %274 = bufferization.to_tensor %alloc_14 : memref<4xi32>
        %275 = math.cos %1 : tensor<4x9x4xf16>
        %276 = arith.divui %c848283327_i32, %c848283327_i32 : i32
        %277 = arith.shrui %c1122086390_i64, %c1122086390_i64 : i64
        %278 = vector.broadcast %cst_4 : f16 to vector<4x16x4x16xf16>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %134, %134, %278 : vector<4x4x16xf16>, vector<4x4x16xf16> into vector<4x16x4x16xf16>
        %280 = tensor.empty(%c1) : tensor<4x9x?xi32>
        %splat_53 = tensor.splat %true_5 : tensor<16x16xi1>
        %281 = arith.divf %140, %140 : f32
        %282 = vector.broadcast %cst_2 : f16 to vector<3x16xf16>
        %dest_54, %accumulated_value_55 = vector.scan <maxf>, %179, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2x16xf16>, vector<3x16xf16>
        %283 = math.round %168 : tensor<4x4x16xf32>
        %284 = math.ctlz %c1_i16 : i16
        %285 = arith.ori %c2293_i16, %c1_i16 : i16
        %286 = math.tan %cst_1 : f16
        %287 = arith.mulf %153, %170 : f16
        %288 = math.rsqrt %11 : tensor<4x9x4xf32>
        %289 = vector.shuffle %179, %179 [0, 2, 3, 4, 5] : vector<3x2x16xf16>, vector<3x2x16xf16>
        %290 = math.floor %4 : tensor<4xf32>
        %c0_i64_56 = arith.constant 0 : i64
        linalg.yield %c0_i64_56 : i64
      }
    %cst_36 = arith.constant 5.987200e+04 : f16
    %182 = affine.load %alloc_7[%c14, %c2, %c2] : memref<4x4x16xi32>
    %183 = arith.floordivsi %true, %false : i1
    %184 = math.powf %1, %1 : tensor<4x9x4xf16>
    %185 = math.copysign %140, %cst : f32
    %splat_37 = tensor.splat %c1535624791_i32 : tensor<16x16xi32>
    %186 = math.exp2 %1 : tensor<4x9x4xf16>
    %187 = arith.maxsi %false_23, %false_29 : i1
    %188 = math.log10 %1 : tensor<4x9x4xf16>
    %189 = index.add %c2, %141
    %190 = vector.shuffle %88, %132 [0, 1, 2] : vector<4xf32>, vector<4xf32>
    %191 = vector.extract_strided_slice %124 {offsets = [0], sizes = [2], strides = [1]} : vector<4xi32> to vector<2xi32>
    %192 = vector.insertelement %30, %191[%84 : index] : vector<2xi32>
    %193 = index.add %c2, %c11
    %194 = tensor.empty() : tensor<4xi32>
    %mapped_38 = linalg.map ins(%alloc_14 : memref<4xi32>) outs(%194 : tensor<4xi32>)
      (%in: i32) {
        %258 = arith.shrsi %c1_i16, %c2293_i16 : i16
        %alloc_52 = memref.alloc() : memref<4x9x4xi64>
        %259 = tensor.empty() : tensor<16xi64>
        %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17, %259, %alloc_22 : memref<4xi64>, tensor<16xi64>, memref<4xi64>) outs(%17 : tensor<4x4x16xi64>) {
        ^bb0(%in_57: i64, %in_58: i64, %in_59: i64, %out: i64):
          %286 = tensor.empty() : tensor<16x16xf32>
          %287 = math.floor %140 : f32
          %288 = index.floordivs %c6, %c1
          %289 = index.maxu %c6, %rank
          %290 = math.expm1 %cst_2 : f16
          %291 = arith.addi %true_5, %false_33 : i1
          %292 = math.powf %286, %286 : tensor<16x16xf32>
          %293 = arith.remf %cst_0, %cst_2 : f16
          %294 = bufferization.to_tensor %alloc_20 : memref<4x9x4xi64>
          %295 = math.cttz %14 : tensor<16x16xi16>
          %296 = index.add %102, %c14
          %297 = math.log2 %11 : tensor<4x9x4xf32>
          %298 = arith.shli %false_23, %false : i1
          %dest_60, %accumulated_value_61 = vector.scan <add>, %86, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4x16xf16>, vector<4x16xf16>
          %299 = math.sqrt %expanded : tensor<4x9x4x1xf16>
          %300 = tensor.empty(%288) : tensor<?xi32>
          %301 = vector.load %alloc_12[%c0, %c1, %c3] : memref<4x9x4xi16>, vector<4xi16>
          %302 = math.log %cst_4 : f16
          %303 = math.tan %168 : tensor<4x4x16xf32>
          %304 = arith.floordivsi %false, %false_29 : i1
          %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %49, %49, %in_58 : vector<1xi64>, vector<1xi64> into i64
          %306 = math.cos %62 : f16
          %alloc_62 = memref.alloc() : memref<4x4x16xf32>
          memref.copy %alloc_8, %alloc_62 : memref<4x4x16xf32> to memref<4x4x16xf32>
          %307 = vector.broadcast %140 : f32 to vector<16xf32>
          %dest_63, %accumulated_value_64 = vector.scan <minf>, %161, %307 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xf32>, vector<16xf32>
          %308 = index.sub %38, %288
          %alloc_65 = memref.alloc() : memref<4x4x16xi32>
          memref.copy %alloc_7, %alloc_65 : memref<4x4x16xi32> to memref<4x4x16xi32>
          %309 = arith.maxf %62, %62 : f16
          %cst_66 = arith.constant 1.000000e+00 : f32
          %310 = vector.transfer_read %93[%c11, %c15, %84], %cst_66 : memref<4x9x4xf32>, vector<f32>
          %311 = vector.broadcast %cst : f32 to vector<4x4xf32>
          %312 = vector.outerproduct %88, %132, %311 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
          %313 = math.ipowi %false_29, %false_23 : i1
          %314 = math.sqrt %4 : tensor<4xf32>
          %false_67 = index.bool.constant false
          linalg.yield %in_58 : i64
        } -> tensor<4x4x16xi64>
        %261 = arith.subi %c2293_i16, %c20119_i16 : i16
        %262 = math.floor %expanded : tensor<4x9x4x1xf16>
        %263 = arith.shli %182, %c1267058360_i32 : i32
        %alloc_53 = memref.alloc() : memref<4xf32>
        memref.copy %alloc_19, %alloc_53 : memref<4xf32> to memref<4xf32>
        %264 = arith.muli %true_5, %true_5 : i1
        %265 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %266 = vector.broadcast %c1267058360_i32 : i32 to vector<16x16xi32>
        %267 = vector.insert %cst, %88 [3] : f32 into vector<4xf32>
        %268 = math.ipowi %13, %3 : tensor<4x4x16xi64>
        %269 = math.copysign %1, %1 : tensor<4x9x4xf16>
        %270 = math.cos %cst_2 : f16
        %271 = vector.multi_reduction <add>, %105, %c1122086390_i64 [0] : vector<5xi64> to i64
        %272 = vector.flat_transpose %27 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %273 = math.exp %62 : f16
        %274 = math.round %140 : f32
        %275 = math.sqrt %176 : tensor<4x4x16xf32>
        %276 = index.add %23, %38
        %277 = arith.andi %c1267058360_i32, %182 : i32
        %278 = arith.andi %30, %c848283327_i32 : i32
        affine.store %c1_i16, %alloc_11[%c6, %c6] : memref<16x16xi16>
        %279 = bufferization.clone %alloc_16 : memref<16x16xi32> to memref<16x16xi32>
        %280 = math.ctlz %271 : i64
        %281 = arith.remui %c1_i16, %c1_i16 : i16
        %282 = arith.remf %140, %140 : f32
        %cast_54 = tensor.cast %expanded_27 : tensor<4x1xi32> to tensor<?x?xi32>
        %alloc_55 = memref.alloc() : memref<16x16xi16>
        memref.copy %alloc_11, %alloc_55 : memref<16x16xi16> to memref<16x16xi16>
        %283 = arith.subi %c848283327_i32, %c848283327_i32 : i32
        %284 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 8 + d2 + d0)>(%31, %c3, %c5)
        %285 = arith.minf %140, %cst : f32
        %c1_i32_56 = arith.constant 1 : i32
        linalg.yield %c1_i32_56 : i32
      }
    %195 = arith.negf %140 : f32
    %196 = arith.divsi %false, %false_33 : i1
    %197 = scf.index_switch %c13 -> vector<4x4x16xi1> 
    case 1 {
      %258 = index.maxs %56, %c13
      %259 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d3 + 32, d1)>(%c10, %64, %c13, %64)
      %260 = memref.atomic_rmw assign %153, %alloc_15[%c0, %c0, %c1] : (f16, memref<4x4x16xf16>) -> f16
      %261 = math.sqrt %168 : tensor<4x4x16xf32>
      %262 = arith.ori %c1122086390_i64, %c1122086390_i64 : i64
      %263 = arith.shrsi %182, %c1_i32 : i32
      %264 = vector.shuffle %53, %157 [1, 2, 3, 4] : vector<5xi64>, vector<1xi64>
      %265 = arith.divsi %c20119_i16, %c20119_i16 : i16
      %266 = math.ceil %cst_1 : f16
      %267 = index.floordivs %c2, %100
      %268 = vector.flat_transpose %124 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
      %269 = math.ceil %4 : tensor<4xf32>
      %270 = vector.broadcast %182 : i32 to vector<9x4xi32>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %139, %155, %270 : vector<4xi32>, vector<4x9x4xi32> into vector<9x4xi32>
      %272 = index.sizeof
      %273 = affine.load %alloc_20[%c1, %c3, %c3] : memref<4x9x4xi64>
      %274 = arith.shrsi %182, %c848283327_i32 : i32
      scf.yield %169 : vector<4x4x16xi1>
    }
    default {
      %alloc_52 = memref.alloc() : memref<16x4xi64>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52 : memref<16x4xi64>) outs(%17 : tensor<4x4x16xi64>) {
      ^bb0(%in: i64, %out: i64):
        %275 = vector.shuffle %92, %92 [3, 7] : vector<4x9x4xi16>, vector<4x9x4xi16>
        %276 = index.add %c11, %120
        %277 = math.sqrt %expanded : tensor<4x9x4x1xf16>
        %278 = vector.load %alloc_6[%c14, %c15] : memref<16x16xf32>, vector<4x4x16xf32>
        %279 = vector.broadcast %cst : f32 to vector<4x4x16xf32>
        %280 = vector.fma %279, %278, %279 : vector<4x4x16xf32>
        %281 = affine.max affine_map<(d0, d1) -> (d1, d1 floordiv 128)>(%c6, %c11)
        %282 = arith.maxsi %182, %c848283327_i32 : i32
        %false_54 = index.bool.constant false
        %283 = math.ctlz %true_5 : i1
        %alloc_55 = memref.alloc() : memref<4x4x16xf16>
        memref.copy %alloc_15, %alloc_55 : memref<4x4x16xf16> to memref<4x4x16xf16>
        %rank_56 = tensor.rank %splat_34 : tensor<4x4x16xi1>
        %284 = vector.shuffle %69, %69 [0, 1, 7] : vector<4x9x4xi1>, vector<4x9x4xi1>
        %splat_57 = tensor.splat %out : tensor<16x16xi64>
        %expanded_58 = tensor.expand_shape %splat_34 [[0], [1], [2, 3]] : tensor<4x4x16xi1> into tensor<4x4x16x1xi1>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %132, %132, %140 : vector<4xf32>, vector<4xf32> into f32
        %inserted_59 = tensor.insert %30 into %0[%c2, %c8] : tensor<16x16xi32>
        vector.print %279 : vector<4x4x16xf32>
        %286 = affine.max affine_map<(d0) -> (-d0, (d0 mod 128 + 128) ceildiv 16, (d0 * 9) floordiv 8 - 128)>(%141)
        %287 = memref.atomic_rmw mulf %cst, %alloc_8[%c2, %c1, %c6] : (f32, memref<4x4x16xf32>) -> f32
        %288 = math.sqrt %expanded : tensor<4x9x4x1xf16>
        %289 = math.tan %expanded : tensor<4x9x4x1xf16>
        vector.print %27 : vector<5xi64>
        %290 = arith.divui %out, %c1122086390_i64 : i64
        %291 = vector.create_mask %c5, %c1, %c9 : vector<4x9x4xi1>
        %292 = math.cttz %collapsed : tensor<256xi32>
        %293 = math.round %1 : tensor<4x9x4xf16>
        %294 = arith.ceildivsi %c1267058360_i32, %c1267058360_i32 : i32
        %295 = vector.broadcast %cst : f32 to vector<4x16xf32>
        %dest_60, %accumulated_value_61 = vector.scan <maxf>, %278, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4x16xf32>, vector<4x16xf32>
        %c1_i16_62 = arith.constant 1 : i16
        %c0_i16_63 = arith.constant 0 : i16
        %296 = vector.transfer_read %alloc_9[%rank_56, %276, %189], %c0_i16_63 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<4x4x16xi16>, vector<4x16xi16>
        %297 = math.cos %cst_3 : f16
        %298 = math.expm1 %168 : tensor<4x4x16xf32>
        %299 = vector.extract_strided_slice %53 {offsets = [2], sizes = [3], strides = [1]} : vector<5xi64> to vector<3xi64>
        linalg.yield %in : i64
      } -> tensor<4x4x16xi64>
      %generated_53 = tensor.generate %84 {
      ^bb0(%arg1: index):
        %275 = vector.bitcast %160 : vector<16x16xf32> to vector<16x16xf32>
        %276 = arith.remf %cst_0, %170 : f16
        %277 = vector.broadcast %c12 : index to vector<16xindex>
        %278 = vector.broadcast %false_33 : i1 to vector<16xi1>
        %279 = vector.broadcast %30 : i32 to vector<16xi32>
        vector.scatter %alloc_7[%c1, %c1, %c4] [%277], %278, %279 : memref<4x4x16xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
        %280 = vector.reduction <minf>, %88 : vector<4xf32> into f32
        tensor.yield %c1122086390_i64 : i64
      } : tensor<?xi64>
      %259 = arith.divui %c993638680_i32, %c1267058360_i32 : i32
      %260 = index.castu %false_33 : i1 to index
      %261 = vector.broadcast %c1_i16 : i16 to vector<4xi16>
      %262 = vector.transfer_write %261, %14[%c15, %45] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, tensor<16x16xi16>
      %263 = math.sqrt %cst_2 : f16
      %264 = math.round %cst_0 : f16
      %265 = affine.if affine_set<(d0) : (d0 ceildiv 128 + d0 == 0, d0 mod 4 >= 0, d0 >= 0)>(%c8) -> i64 {
        %true_54 = index.bool.constant true
        %275 = arith.cmpf ule, %153, %153 : f16
        %276 = arith.negf %cst : f32
        %277 = math.exp %140 : f32
        %alloc_55 = memref.alloc() : memref<4x4x16xi64>
        memref.tensor_store %13, %alloc_55 : memref<4x4x16xi64>
        %alloc_56 = memref.alloc() : memref<4xf16>
        memref.copy %alloc_13, %alloc_56 : memref<4xf16> to memref<4xf16>
        bufferization.dealloc_tensor %18 : tensor<i32>
        %278 = vector.insertelement %c1535624791_i32, %167[] : vector<i32>
        affine.yield %c1122086390_i64 : i64
      } else {
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 64, (d3 + 1) ceildiv 4, d2 + d1 + 4)>(%c10, %102, %rank_25, %31)
        %276 = tensor.empty() : tensor<4xi16>
        %277 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %278 = vector.outerproduct %88, %89, %277 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %279 = math.sqrt %168 : tensor<4x4x16xf32>
        %280 = vector.load %alloc_6[%c13, %c14] : memref<16x16xf32>, vector<4x4x16xf32>
        %281 = arith.floordivsi %false_23, %true : i1
        %282 = arith.minf %cst_1, %cst_2 : f16
        %283 = arith.addi %182, %c1535624791_i32 : i32
        affine.yield %c1122086390_i64 : i64
      }
      %266 = tensor.empty(%c13, %260) : tensor<?x?x16xf32>
      %267 = arith.divf %62, %170 : f16
      %268 = math.floor %176 : tensor<4x4x16xf32>
      %269 = vector.broadcast %140 : f32 to vector<4x9x4xf32>
      %270 = vector.gather %alloc_6[%rank_25, %45] [%155], %69, %269 : memref<16x16xf32>, vector<4x9x4xi32>, vector<4x9x4xi1>, vector<4x9x4xf32> into vector<4x9x4xf32>
      %271 = math.absi %13 : tensor<4x4x16xi64>
      %272 = index.ceildivs %c4, %c6
      %273 = math.floor %cst_4 : f16
      %274 = affine.for %arg1 = 0 to 40 iter_args(%arg2 = %alloc_9) -> (memref<4x4x16xi16>) {
        affine.yield %arg2 : memref<4x4x16xi16>
      }
      scf.yield %169 : vector<4x4x16xi1>
    }
    %198 = vector.broadcast %cst_4 : f16 to vector<16xf16>
    %199 = vector.insert %198, %46 [3] : vector<16xf16> into vector<4x16xf16>
    %200 = math.exp2 %expanded : tensor<4x9x4x1xf16>
    %201 = math.cos %4 : tensor<4xf32>
    %202 = index.add %147, %84
    %dest_39, %accumulated_value_40 = vector.scan <minf>, %46, %198 {inclusive = true, reduction_dim = 0 : i64} : vector<4x16xf16>, vector<16xf16>
    %203 = math.exp %cst_2 : f16
    %204 = math.tanh %168 : tensor<4x4x16xf32>
    %205 = tensor.empty() : tensor<4xi1>
    %mapped_41 = linalg.map ins(%7, %7, %7 : tensor<4xi1>, tensor<4xi1>, tensor<4xi1>) outs(%205 : tensor<4xi1>)
      (%in: i1, %in_52: i1, %in_53: i1) {
        %258 = tensor.empty() : tensor<4xi32>
        %259 = math.log %176 : tensor<4x4x16xf32>
        %260 = math.atan2 %splat, %splat : tensor<16x16xf32>
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %191, %191, %c993638680_i32 : vector<2xi32>, vector<2xi32> into i32
        %splat_54 = tensor.splat %170 : tensor<4x9x4xf16>
        %262 = math.ctlz %5 : tensor<4xi32>
        %263 = index.divs %c6, %c5
        %264 = math.fpowi %cst, %c1_i32 : f32, i32
        memref.tensor_store %4, %alloc_19 : memref<4xf32>
        %265 = arith.ori %false_33, %false : i1
        %266 = affine.max affine_map<(d0, d1, d2) -> (-d2 + 128, d2)>(%120, %c14, %c7)
        %267 = math.cos %170 : f16
        %268 = math.log10 %11 : tensor<4x9x4xf32>
        %269 = index.divs %c10, %64
        %270 = math.round %4 : tensor<4xf32>
        %false_55 = index.bool.constant false
        %inserted_56 = tensor.insert %c1122086390_i64 into %cast_28[%c0, %c0, %c0] : tensor<?x?x?xi64>
        %rank_57 = tensor.rank %13 : tensor<4x4x16xi64>
        %271 = vector.reduction <maxui>, %20 : vector<9xi64> into i64
        %272 = math.tanh %cst_2 : f16
        %273 = math.cttz %0 : tensor<16x16xi32>
        %false_58 = arith.constant false
        %false_59 = arith.constant false
        %274 = vector.transfer_read %splat_34[%c15, %84, %64], %false_59 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<4x4x16xi1>, vector<9xi1>
        %275 = arith.maxf %cst_3, %cst_1 : f16
        %276 = arith.andi %c2293_i16, %c1_i16 : i16
        %277 = math.rsqrt %cst_2 : f16
        bufferization.dealloc_tensor %splat : tensor<16x16xf32>
        %278 = index.floordivs %56, %31
        %279 = affine.if affine_set<(d0, d1) : (-(d0 mod 128) + d1 >= 0, (d0 mod 128) * -32 == 0, d0 >= 0)>(%c14, %c3) -> memref<4xi1> {
          %expanded_61 = tensor.expand_shape %205 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
          %284 = math.log %168 : tensor<4x4x16xf32>
          memref.copy %alloc_21, %alloc_17 : memref<4xi64> to memref<4xi64>
          %285 = arith.remf %140, %cst : f32
          %286 = vector.extract_strided_slice %133 {offsets = [1], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
          %287 = arith.shrsi %true, %false_58 : i1
          %288 = math.tanh %splat_54 : tensor<4x9x4xf16>
          %289 = tensor.empty() : tensor<4xf32>
          %alloc_62 = memref.alloc() : memref<4xi1>
          affine.yield %alloc_62 : memref<4xi1>
        } else {
          %284 = math.powf %cst_4, %62 : f16
          %285 = math.round %168 : tensor<4x4x16xf32>
          %286 = vector.broadcast %c1_i32 : i32 to vector<4x4xi32>
          %287 = vector.outerproduct %124, %124, %286 {kind = #vector.kind<add>} : vector<4xi32>, vector<4xi32>
          %cast_61 = tensor.cast %2 : tensor<4x4x16xi32> to tensor<?x?x?xi32>
          %288 = math.exp2 %11 : tensor<4x9x4xf32>
          %collapsed_62 = tensor.collapse_shape %14 [[0, 1]] : tensor<16x16xi16> into tensor<256xi16>
          %289 = arith.mulf %cst_4, %cst_3 : f16
          %290 = math.copysign %splat_54, %1 : tensor<4x9x4xf16>
          %alloc_63 = memref.alloc() : memref<4xi1>
          affine.yield %alloc_63 : memref<4xi1>
        }
        %280 = arith.minui %c1267058360_i32, %182 : i32
        %281 = math.exp %cst : f32
        %282 = arith.divf %cst_3, %cst_4 : f16
        %283 = bufferization.to_tensor %alloc_11 : memref<16x16xi16>
        %false_60 = arith.constant false
        linalg.yield %false_60 : i1
      }
    %206 = arith.mulf %cst_2, %cst_3 : f16
    %c0_i64 = arith.constant 0 : i64
    %207 = vector.transfer_read %3[%c0, %c15, %c1], %c0_i64 : tensor<4x4x16xi64>, vector<4x8xi64>
    %208 = math.floor %4 : tensor<4xf32>
    %alloc_42 = memref.alloc() : memref<4x4x16xf16>
    %209 = index.divs %102, %31
    %210 = math.sqrt %4 : tensor<4xf32>
    %211 = math.roundeven %170 : f16
    %212 = vector.broadcast %cst : f32 to vector<4x4x16xf32>
    %213 = vector.fma %212, %212, %212 : vector<4x4x16xf32>
    %214 = index.sub %120, %c7
    %collapsed_43 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<4x9x4xf32> into tensor<36x4xf32>
    %215 = vector.multi_reduction <mul>, %142, %142 [] : vector<1xi32> to vector<1xi32>
    %216 = arith.shrsi %false_29, %false : i1
    %cast_44 = tensor.cast %131 : tensor<16x16xi64> to tensor<?x?xi64>
    %217 = scf.while (%arg1 = %110) : (vector<i32>) -> vector<i32> {
      %rank_52 = tensor.rank %17 : tensor<4x4x16xi64>
      %258 = index.maxs %193, %84
      %259 = math.log %splat : tensor<16x16xf32>
      %260 = math.ceil %11 : tensor<4x9x4xf32>
      %261 = math.cos %11 : tensor<4x9x4xf32>
      %262 = arith.maxsi %c1_i32, %c993638680_i32 : i32
      %263 = arith.divsi %true, %false_33 : i1
      %264 = index.add %c15, %202
      scf.condition(%false_29) %110 : vector<i32>
    } do {
    ^bb0(%arg1: vector<i32>):
      %258 = index.floordivs %45, %23
      %splat_52 = tensor.splat %c1_i32 : tensor<4x9x4xi32>
      %259 = math.round %11 : tensor<4x9x4xf32>
      %260 = tensor.empty(%c7) : tensor<4x4x?xi64>
      %alloc_53 = memref.alloc() : memref<16x16xi1>
      %261 = arith.muli %c1_i16, %c1_i16 : i16
      %262 = math.ceil %cst_0 : f16
      %263 = arith.ceildivsi %true, %true : i1
      %264 = vector.broadcast %c2293_i16 : i16 to vector<4x4xi16>
      %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %92, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x4xi16>, vector<4x4xi16>
      %265 = arith.divui %c1122086390_i64, %c0_i64 : i64
      %266 = math.ctlz %3 : tensor<4x4x16xi64>
      %267 = vector.broadcast %cst : f32 to vector<f32>
      %268 = vector.transfer_write %267, %4[%rank_25] : vector<f32>, tensor<4xf32>
      affine.store %c1122086390_i64, %alloc_22[%c2] : memref<4xi64>
      %alloc_56 = memref.alloc() : memref<4xi16>
      %269 = vector.broadcast %c1_i16 : i16 to vector<16x16xi16>
      %270 = vector.broadcast %true : i1 to vector<16x16xi1>
      %271 = vector.broadcast %c1535624791_i32 : i32 to vector<16x16xi32>
      %272 = vector.gather %alloc_56[%c4] [%271], %270, %269 : memref<4xi16>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xi16> into vector<16x16xi16>
      %273 = vector.extract %155[1] : vector<4x9x4xi32>
      %274 = math.ceil %cst : f32
      scf.yield %167 : vector<i32>
    }
    %218 = tensor.empty() : tensor<4x4x16xi64>
    %mapped_45 = linalg.map ins(%181 : tensor<4x4x16xi64>) outs(%218 : tensor<4x4x16xi64>)
      (%in: i64) {
        %258 = vector.splat %147 : vector<16x16xindex>
        %259 = bufferization.to_tensor %alloc_9 : memref<4x4x16xi16>
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 2, d1, d3 + 32, (d3 + d2 * 64 - 8) mod 32)>(%38, %c15, %120, %c4)
        affine.for %arg1 = 0 to 119 {
        }
        %261 = math.sqrt %153 : f16
        %262 = math.cttz %c848283327_i32 : i32
        %generated_52 = tensor.generate %64 {
        ^bb0(%arg1: index, %arg2: index):
          %283 = math.ipowi %splat_34, %splat_34 : tensor<4x4x16xi1>
          %284 = vector.create_mask %189, %c1 : vector<16x16xi1>
          %285 = index.add %193, %c1
          %286 = tensor.empty() : tensor<16x16xi64>
          %287 = linalg.matmul ins(%131, %66 : tensor<16x16xi64>, tensor<16x16xi64>) outs(%286 : tensor<16x16xi64>) -> tensor<16x16xi64>
          tensor.yield %false : i1
        } : tensor<?x16xi1>
        %263 = math.round %4 : tensor<4xf32>
        %264 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%rank, %202, %100, %202)
        %265 = bufferization.to_tensor %alloc_22 : memref<4xi64>
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14 : memref<4xi32>) outs(%59 : tensor<4x4x16xi32>) {
        ^bb0(%in_56: i32, %out: i32):
          %283 = arith.shrui %c1122086390_i64, %c0_i64 : i64
          %284 = math.log2 %168 : tensor<4x4x16xf32>
          %285 = arith.maxsi %false_29, %false_29 : i1
          %286 = index.maxs %23, %c3
          %287 = arith.andi %false_33, %true : i1
          %288 = math.ipowi %in_56, %c1_i32 : i32
          %289 = vector.broadcast %cst : f32 to vector<16x16xf32>
          %290 = vector.fma %289, %289, %160 : vector<16x16xf32>
          %291 = arith.shrui %true_5, %false_33 : i1
          %292 = math.log10 %11 : tensor<4x9x4xf32>
          %293 = index.maxs %c6, %193
          %294 = arith.minui %false_29, %false_33 : i1
          %295 = math.log %168 : tensor<4x4x16xf32>
          %296 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d0 + d0 - 16), d1 * 128, d1 ceildiv 4)>(%202, %120, %c13, %84)
          %from_elements = tensor.from_elements %cst, %cst, %140, %cst : tensor<4xf32>
          %false_57 = index.bool.constant false
          %297 = memref.atomic_rmw maxu %c1_i32, %alloc_14[%c3] : (i32, memref<4xi32>) -> i32
          %298 = arith.muli %c20119_i16, %c20119_i16 : i16
          %299 = arith.divui %c1122086390_i64, %c0_i64 : i64
          %300 = math.ctpop %c1_i32 : i32
          %alloc_58 = memref.alloc() : memref<4x4x16xi64>
          memref.tensor_store %13, %alloc_58 : memref<4x4x16xi64>
          memref.copy %alloc_22, %alloc_17 : memref<4xi64> to memref<4xi64>
          %301 = math.expm1 %4 : tensor<4xf32>
          %302 = math.log %1 : tensor<4x9x4xf16>
          %303 = arith.cmpf ult, %cst_3, %cst_4 : f16
          %304 = memref.atomic_rmw ori %c1535624791_i32, %alloc_14[%c1] : (i32, memref<4xi32>) -> i32
          %305 = arith.mulf %62, %cst_4 : f16
          %306 = math.copysign %cst_1, %153 : f16
          %307 = vector.broadcast %140 : f32 to vector<4xf32>
          %308 = vector.fma %307, %307, %133 : vector<4xf32>
          %309 = arith.shrui %c1_i16, %c20119_i16 : i16
          %310 = math.floor %cst_2 : f16
          %311 = math.ctpop %out : i32
          %312 = arith.andi %30, %c1_i32 : i32
          linalg.yield %out : i32
        } -> tensor<4x4x16xi32>
        %267 = affine.for %arg1 = 0 to 125 iter_args(%arg2 = %c1122086390_i64) -> (i64) {
          affine.yield %c1122086390_i64 : i64
        }
        %268 = math.fpowi %168, %2 : tensor<4x4x16xf32>, tensor<4x4x16xi32>
        %269 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %270 = vector.outerproduct %132, %89, %269 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %271 = index.add %23, %c8
        %272 = vector.flat_transpose %157 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        affine.store %c1122086390_i64, %alloc_10[%c4, %c1] : memref<16x16xi64>
        %rank_53 = tensor.rank %2 : tensor<4x4x16xi32>
        %273 = math.expm1 %11 : tensor<4x9x4xf32>
        %274 = arith.xori %false_33, %false_33 : i1
        %275 = arith.floordivsi %false, %false : i1
        memref.tensor_store %5, %alloc_14 : memref<4xi32>
        %276 = math.round %cst_1 : f16
        %splat_54 = tensor.splat %cst_2 : tensor<4xf16>
        %277 = index.divs %65, %c14
        %278 = math.ctpop %10 : tensor<4x4x16xi64>
        %rank_55 = tensor.rank %13 : tensor<4x4x16xi64>
        %extracted = tensor.extract %collapsed[%c4] : tensor<256xi32>
        %279 = vector.shuffle %213, %212 [1, 6] : vector<4x4x16xf32>, vector<4x4x16xf32>
        memref.tensor_store %0, %alloc : memref<16x16xi32>
        %280 = memref.atomic_rmw maxs %30, %alloc_16[%c1, %c12] : (i32, memref<16x16xi32>) -> i32
        %281 = tensor.empty() : tensor<16x16xi64>
        %282 = linalg.matmul ins(%6, %66 : tensor<16x16xi64>, tensor<16x16xi64>) outs(%281 : tensor<16x16xi64>) -> tensor<16x16xi64>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %219 = math.floor %collapsed_43 : tensor<36x4xf32>
    %220 = vector.broadcast %cst : f32 to vector<4x16xf32>
    %221 = vector.insert %220, %213 [3] : vector<4x16xf32> into vector<4x4x16xf32>
    %222 = vector.splat %cst_2 : vector<16x16xf16>
    %223 = affine.if affine_set<(d0, d1) : ((d1 + 1) mod 32 == 0)>(%c13, %c4) -> i64 {
      %c0_i32 = arith.constant 0 : i32
      %258 = vector.transfer_read %113[%31, %193], %c0_i32 : tensor<16x16xi32>, vector<i32>
      %259 = math.tanh %153 : f16
      %260 = arith.remui %false_23, %false : i1
      %alloc_52 = memref.alloc() : memref<16x16xi32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<4x4x16xi16>) {
      ^bb0(%out: i16):
        %264 = math.atan %cst_4 : f16
        %265 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 4, d0 - 2, d1 + d2, (d1 mod 8) floordiv 32)>(%c10, %209, %37)
        %266 = index.floordivs %c8, %120
        %267 = arith.ori %false_33, %true : i1
        %268 = vector.multi_reduction <add>, %49, %c1122086390_i64 [0] : vector<1xi64> to i64
        %269 = arith.divf %62, %cst_0 : f16
        %270 = arith.ori %false_23, %false_23 : i1
        %271 = memref.atomic_rmw mulf %153, %alloc_15[%c2, %c0, %c1] : (f16, memref<4x4x16xf16>) -> f16
        %272 = vector.broadcast %cst_4 : f16 to vector<3x2xf16>
        %dest_55, %accumulated_value_56 = vector.scan <maxf>, %179, %272 {inclusive = true, reduction_dim = 2 : i64} : vector<3x2x16xf16>, vector<3x2xf16>
        %273 = bufferization.to_tensor %alloc_17 : memref<4xi64>
        %c1_i64 = arith.constant 1 : i64
        %274 = vector.transfer_read %6[%209, %100], %c1_i64 : tensor<16x16xi64>, vector<i64>
        %alloc_57 = memref.alloc() : memref<4x4x16xf16>
        memref.copy %alloc_15, %alloc_57 : memref<4x4x16xf16> to memref<4x4x16xf16>
        %275 = vector.flat_transpose %142 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %276 = bufferization.clone %alloc_9 : memref<4x4x16xi16> to memref<4x4x16xi16>
        %277 = arith.cmpi ule, %c848283327_i32, %182 : i32
        %278 = math.copysign %cst, %cst : f32
        %false_58 = index.bool.constant false
        %279 = math.log2 %cst_1 : f16
        %280 = bufferization.clone %alloc_14 : memref<4xi32> to memref<4xi32>
        %281 = math.tanh %170 : f16
        %282 = math.ctpop %c1_i32 : i32
        %283 = arith.muli %c1267058360_i32, %c1535624791_i32 : i32
        %alloc_59 = memref.alloc() : memref<4x9x4xf16>
        memref.tensor_store %1, %alloc_59 : memref<4x9x4xf16>
        %284 = arith.maxui %268, %268 : i64
        %285 = math.log %cst_4 : f16
        %286 = index.ceildivs %214, %45
        %287 = math.atan2 %cst, %140 : f32
        %288 = math.atan %expanded : tensor<4x9x4x1xf16>
        %289 = vector.create_mask %c12, %189, %c8 : vector<4x4x16xi1>
        %290 = arith.ori %false_58, %false : i1
        %291 = arith.maxsi %c1_i16, %out : i16
        %292 = tensor.empty() : tensor<16x16xi32>
        linalg.yield %out : i16
      } -> tensor<4x4x16xi16>
      %262 = affine.if affine_set<(d0, d1) : (d0 - 2 >= 0)>(%c5, %c9) -> memref<4x4x16xi16> {
        %264 = index.ceildivs %c8, %38
        %265 = math.floor %splat : tensor<16x16xf32>
        %266 = vector.splat %c848283327_i32 : vector<4x4x16xi32>
        %267 = math.cos %cst_1 : f16
        %268 = arith.maxsi %c1_i16, %c1_i16 : i16
        %269 = vector.broadcast %cst : f32 to vector<9xf32>
        %270 = vector.transfer_write %269, %splat[%64, %56] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<16x16xf32>
        %271 = tensor.empty() : tensor<4x9x4xi32>
        %272 = math.fpowi %1, %271 : tensor<4x9x4xf16>, tensor<4x9x4xi32>
        %false_55 = arith.constant false
        affine.yield %alloc_9 : memref<4x4x16xi16>
      } else {
        %264 = math.round %170 : f16
        %265 = math.powf %1, %1 : tensor<4x9x4xf16>
        %266 = math.exp %cst_4 : f16
        %267 = math.ceil %4 : tensor<4xf32>
        %from_elements = tensor.from_elements %cst, %140, %cst, %cst, %cst, %cst, %140, %140, %140, %140, %cst, %140, %140, %cst, %140, %140, %cst, %cst, %140, %cst, %140, %cst, %140, %140, %140, %cst, %140, %140, %cst, %cst, %cst, %140, %140, %cst, %cst, %140, %140, %140, %140, %140, %cst, %140, %cst, %140, %cst, %cst, %140, %cst, %140, %140, %140, %cst, %140, %cst, %cst, %140, %cst, %cst, %140, %140, %cst, %140, %140, %cst, %140, %cst, %140, %cst, %140, %cst, %cst, %cst, %cst, %140, %140, %cst, %cst, %cst, %cst, %cst, %140, %cst, %cst, %cst, %cst, %cst, %cst, %140, %cst, %cst, %140, %cst, %cst, %140, %140, %140, %cst, %cst, %cst, %140, %140, %140, %140, %cst, %140, %cst, %cst, %cst, %cst, %140, %140, %cst, %cst, %cst, %140, %140, %140, %cst, %cst, %140, %140, %140, %140, %cst, %140, %cst, %cst, %140, %140, %cst, %140, %140, %140, %140, %cst, %cst, %cst, %140, %cst, %140, %cst, %140, %cst, %cst, %cst, %cst, %cst, %cst, %140, %cst, %140, %140, %140, %140, %140, %140, %cst, %cst, %140, %140, %140, %140, %cst, %cst, %cst, %140, %cst, %140, %cst, %cst, %140, %cst, %cst, %140, %140, %140, %cst, %cst, %cst, %cst, %cst, %140, %140, %140, %140, %cst, %140, %140, %140, %140, %cst, %cst, %140, %140, %140, %140, %cst, %cst, %cst, %cst, %cst, %140, %140, %140, %cst, %cst, %cst, %cst, %140, %cst, %140, %140, %140, %140, %140, %140, %cst, %140, %140, %140, %cst, %cst, %140, %cst, %cst, %cst, %140, %cst, %cst, %cst, %140, %140, %140, %cst, %cst, %cst, %cst, %140, %140, %cst, %cst, %cst, %140, %cst, %cst, %cst, %140, %cst, %cst, %140, %140, %140, %140, %cst, %140, %140 : tensor<16x16xf32>
        %268 = arith.floordivsi %c1_i32, %c1535624791_i32 : i32
        %269 = affine.min affine_map<(d0) -> (d0 ceildiv 64, d0 * 64, d0, d0 * 2)>(%141)
        %270 = arith.ori %c20119_i16, %c1_i16 : i16
        affine.yield %alloc_9 : memref<4x4x16xi16>
      }
      %263 = arith.minui %false_29, %false_23 : i1
      %dest_53, %accumulated_value_54 = vector.scan <maxf>, %212, %220 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4x16xf32>, vector<4x16xf32>
      affine.yield %c0_i64 : i64
    } else {
      %258 = math.ctpop %113 : tensor<16x16xi32>
      %259 = math.sqrt %140 : f32
      %260 = arith.muli %true, %true_5 : i1
      %261 = math.absi %12 : tensor<4x4x16xi32>
      %262 = vector.extract %132[2] : vector<4xf32>
      %263 = arith.andi %false_33, %false_29 : i1
      %264 = tensor.empty() : tensor<16x4xi32>
      %alloc_52 = memref.alloc() : memref<16xi32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264, %264, %alloc_52 : tensor<16x4xi32>, tensor<16x4xi32>, memref<16xi32>) outs(%2 : tensor<4x4x16xi32>) {
      ^bb0(%in: i32, %in_53: i32, %in_54: i32, %out: i32):
        %267 = vector.create_mask %64 : vector<4xi1>
        %268 = affine.load %alloc_8[%c8, %c5, %c5] : memref<4x4x16xf32>
        %269 = math.log2 %splat : tensor<16x16xf32>
        %270 = arith.andi %c993638680_i32, %c848283327_i32 : i32
        %cst_55 = arith.constant 5.248000e+04 : f16
        %271 = index.sub %c0, %c7
        %272 = arith.andi %false, %true : i1
        %273 = tensor.empty(%64) : tensor<4x9x?xi64>
        %274 = vector.extract %49[0] : vector<1xi64>
        %275 = math.absi %splat_34 : tensor<4x4x16xi1>
        %276 = vector.splat %c1535624791_i32 : vector<16x16xi32>
        %277 = arith.minui %c993638680_i32, %c1535624791_i32 : i32
        %278 = affine.min affine_map<(d0) -> (d0 + 2, d0 + 1, d0)>(%64)
        %279 = vector.bitcast %133 : vector<4xf32> to vector<4xf32>
        %280 = vector.broadcast %c1_i32 : i32 to vector<1x1xi32>
        %281 = vector.outerproduct %142, %142, %280 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        %282 = vector.broadcast %268 : f32 to vector<4x4xf32>
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %212, %282 {inclusive = false, reduction_dim = 2 : i64} : vector<4x4x16xf32>, vector<4x4xf32>
        %283 = tensor.empty(%c9, %c11) : tensor<4x?x?xi64>
        memref.tensor_store %11, %alloc_18 : memref<4x9x4xf32>
        %284 = vector.broadcast %c1_i32 : i32 to vector<9x4xi32>
        %dest_58, %accumulated_value_59 = vector.scan <minui>, %155, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x4xi32>, vector<9x4xi32>
        %285 = arith.addi %out, %182 : i32
        %286 = vector.broadcast %c1122086390_i64 : i64 to vector<5x5xi64>
        %287 = vector.outerproduct %53, %53, %286 {kind = #vector.kind<maxui>} : vector<5xi64>, vector<5xi64>
        %288 = index.sub %c8, %147
        memref.tensor_store %2, %alloc_7 : memref<4x4x16xi32>
        %289 = vector.extract_strided_slice %88 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %290 = vector.load %alloc_21[%c1] : memref<4xi64>, vector<16x16xi64>
        %expanded_60 = tensor.expand_shape %5 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %291 = memref.atomic_rmw assign %140, %alloc_18[%c0, %c3, %c3] : (f32, memref<4x9x4xf32>) -> f32
        %292 = math.absi %c2293_i16 : i16
        %293 = vector.broadcast %c10 : index to vector<8xindex>
        %294 = vector.broadcast %false_23 : i1 to vector<8xi1>
        %295 = vector.broadcast %c2293_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_12[%c0, %c5, %c0] [%293], %294, %295 : memref<4x9x4xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %296 = arith.minui %c0_i64, %c1122086390_i64 : i64
        %297 = index.ceildivs %c14, %c15
        %298 = math.tanh %140 : f32
        linalg.yield %out : i32
      } -> tensor<4x4x16xi32>
      %266 = math.atan %cst_1 : f16
      affine.yield %c1122086390_i64 : i64
    }
    %224 = index.divs %84, %c12
    %225 = arith.floordivsi %c2293_i16, %c20119_i16 : i16
    %splat_46 = tensor.splat %182 : tensor<4xi32>
    %226 = math.exp %cst_4 : f16
    %227 = math.cttz %21 : tensor<i64>
    %228 = affine.max affine_map<(d0, d1, d2) -> (d1, d1 - (d2 - 16) + 128, d0)>(%c5, %214, %214)
    %229 = math.exp2 %11 : tensor<4x9x4xf32>
    %230 = vector.extract %89[0] : vector<4xf32>
    %231 = index.floordivs %202, %c8
    %232 = affine.max affine_map<(d0, d1) -> (-(d1 - d0 mod 64), -d1, d1 floordiv 8 + ((d0 mod 64) * 64) mod 128 - 16)>(%c1, %c7)
    %233 = vector.flat_transpose %53 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
    %234 = math.log %170 : f16
    %generated = tensor.generate %228 {
    ^bb0(%arg1: index):
      %258 = vector.flat_transpose %20 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
      %259 = memref.load %alloc_18[%c1, %c6, %c2] : memref<4x9x4xf32>
      %260 = arith.remui %c1535624791_i32, %c1535624791_i32 : i32
      %261 = affine.if affine_set<(d0) : (d0 ceildiv 128 + d0 == 0, d0 mod 4 >= 0, d0 >= 0)>(%c7) -> f16 {
        %262 = math.tan %11 : tensor<4x9x4xf32>
        %alloc_52 = memref.alloc() : memref<4xi1>
        memref.tensor_store %7, %alloc_52 : memref<4xi1>
        %263 = index.maxs %rank, %c0
        %264 = vector.shuffle %258, %157 [2, 3, 9] : vector<9xi64>, vector<1xi64>
        %265 = math.powf %cst_0, %62 : f16
        %266 = math.log10 %140 : f32
        %267 = arith.maxsi %false_33, %false : i1
        %268 = arith.maxsi %c1535624791_i32, %c993638680_i32 : i32
        affine.yield %cst_1 : f16
      } else {
        %262 = math.round %1 : tensor<4x9x4xf16>
        %263 = math.ctpop %9 : tensor<4x4x16xi16>
        affine.store %c1122086390_i64, %alloc_22[%c13] : memref<4xi64>
        %264 = arith.muli %30, %c848283327_i32 : i32
        memref.store %cst, %alloc_18[%c3, %c0, %c2] : memref<4x9x4xf32>
        %false_52 = index.bool.constant false
        %265 = bufferization.clone %93 : memref<4x9x4xf32> to memref<4x9x4xf32>
        %266 = index.sub %c9, %c14
        affine.yield %62 : f16
      }
      tensor.yield %cst : f32
    } : tensor<?xf32>
    %235 = math.sqrt %cst_3 : f16
    %236 = tensor.empty() : tensor<4x4x16xi32>
    %mapped_47 = linalg.map ins(%12, %alloc_7 : tensor<4x4x16xi32>, memref<4x4x16xi32>) outs(%236 : tensor<4x4x16xi32>)
      (%in: i32, %in_52: i32) {
        %258 = tensor.empty() : tensor<4x9x4xi32>
        %259 = math.fpowi %11, %258 : tensor<4x9x4xf32>, tensor<4x9x4xi32>
        %c9504_i16 = arith.constant 9504 : i16
        %260 = arith.andi %false_29, %true_5 : i1
        %261 = bufferization.clone %alloc_8 : memref<4x4x16xf32> to memref<4x4x16xf32>
        %262 = affine.if affine_set<(d0, d1, d2, d3) : (d2 >= 0, (d3 - 32) * 2 >= 0)>(%c12, %c10, %c8, %c9) -> memref<4x4x16xf16> {
          %290 = math.tanh %176 : tensor<4x4x16xf32>
          %291 = arith.negf %140 : f32
          %dest_55, %accumulated_value_56 = vector.scan <mul>, %212, %220 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4x16xf32>, vector<4x16xf32>
          %292 = math.log2 %11 : tensor<4x9x4xf32>
          %293 = arith.floordivsi %182, %c1535624791_i32 : i32
          %294 = math.cos %4 : tensor<4xf32>
          %295 = index.sub %100, %147
          %296 = arith.ori %30, %c1_i32 : i32
          affine.yield %alloc_15 : memref<4x4x16xf16>
        } else {
          %290 = tensor.empty() : tensor<36x4xi32>
          %291 = math.fpowi %collapsed_43, %290 : tensor<36x4xf32>, tensor<36x4xi32>
          %292 = index.maxs %87, %c3
          %293 = arith.remf %cst_1, %62 : f16
          %294 = vector.broadcast %true : i1 to vector<4x4x16xi1>
          %295 = index.ceildivu %c7, %87
          %296 = index.ceildivs %rank_25, %228
          %297 = math.copysign %153, %cst_4 : f16
          %298 = arith.divui %c848283327_i32, %in : i32
          affine.yield %alloc_15 : memref<4x4x16xf16>
        }
        %263 = vector.broadcast %140 : f32 to vector<16x16xf32>
        %264 = vector.fma %263, %263, %161 : vector<16x16xf32>
        affine.store %cst_2, %alloc_13[%c2] : memref<4xf16>
        %265 = vector.create_mask %c11, %c10, %c7 : vector<4x9x4xi1>
        %266 = arith.subi %true_5, %false_33 : i1
        %267 = affine.max affine_map<(d0, d1) -> (d0)>(%84, %193)
        %268 = index.add %189, %rank_25
        bufferization.dealloc_tensor %131 : tensor<16x16xi64>
        %269 = arith.floordivsi %true_5, %false_23 : i1
        %270 = vector.broadcast %cst : f32 to vector<16x16xf32>
        %271 = vector.fma %270, %263, %263 : vector<16x16xf32>
        %272 = math.round %expanded : tensor<4x9x4x1xf16>
        %273 = math.log1p %cst_4 : f16
        %274 = arith.minui %c1_i16, %c2293_i16 : i16
        %275 = vector.broadcast %170 : f16 to vector<4xf16>
        %276 = tensor.empty() : tensor<36x4xi32>
        %277 = math.fpowi %collapsed_43, %276 : tensor<36x4xf32>, tensor<36x4xi32>
        %278 = math.fpowi %140, %c1267058360_i32 : f32, i32
        %279 = vector.bitcast %213 : vector<4x4x16xf32> to vector<4x4x16xf32>
        %280 = index.divs %202, %56
        %281 = memref.atomic_rmw mulf %cst_1, %alloc_13[%c1] : (f16, memref<4xf16>) -> f16
        %282 = vector.extract %133[0] : vector<4xf32>
        %283 = math.ceil %collapsed_43 : tensor<36x4xf32>
        %284 = vector.broadcast %c0_i64 : i64 to vector<i64>
        %285 = vector.transfer_write %284, %10[%c9, %267, %c6] : vector<i64>, tensor<4x4x16xi64>
        %286 = arith.divf %cst_0, %cst_3 : f16
        %expanded_53 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<16x16xi16> into tensor<16x16x1xi16>
        %287 = vector.shuffle %169, %169 [0, 1, 3, 4, 7] : vector<4x4x16xi1>, vector<4x4x16xi1>
        %288 = arith.maxf %153, %170 : f16
        affine.store %140, %261[%c13, %c0, %c15] : memref<4x4x16xf32>
        %289 = math.tan %153 : f16
        %c1_i32_54 = arith.constant 1 : i32
        linalg.yield %c1_i32_54 : i32
      }
    %237 = vector.flat_transpose %142 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %238 = vector.broadcast %cst : f32 to vector<4x4xf32>
    %239 = vector.outerproduct %133, %89, %238 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
    %240 = scf.execute_region -> index {
      %258 = vector.broadcast %153 : f16 to vector<2x16xf16>
      %dest_52, %accumulated_value_53 = vector.scan <minf>, %179, %258 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2x16xf16>, vector<2x16xf16>
      %259 = index.add %45, %c0
      %260 = math.log %cst : f32
      %261 = index.floordivs %84, %c2
      %262 = arith.mulf %cst_4, %cst_1 : f16
      %expanded_54 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<4x4x16xi32> into tensor<4x4x16x1xi32>
      %263 = vector.shuffle %110, %110 [0, 1] : vector<i32>, vector<i32>
      %264 = arith.maxsi %false_33, %false_29 : i1
      %265 = math.sqrt %expanded : tensor<4x9x4x1xf16>
      %266 = math.exp %collapsed_43 : tensor<36x4xf32>
      %267 = math.floor %62 : f16
      %268 = vector.broadcast %56 : index to vector<4xindex>
      %269 = vector.broadcast %false : i1 to vector<4xi1>
      vector.scatter %alloc[%c12, %c8] [%268], %269, %139 : memref<16x16xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %270 = arith.minsi %c1_i32, %c1535624791_i32 : i32
      %271 = index.floordivs %147, %209
      %272 = arith.addi %false_23, %false_33 : i1
      %alloc_55 = memref.alloc() : memref<4x4x16xi64>
      memref.tensor_store %13, %alloc_55 : memref<4x4x16xi64>
      scf.yield %84 : index
    }
    %241 = affine.load %alloc_14[%c5] : memref<4xi32>
    %242 = math.floor %170 : f16
    %243 = bufferization.to_memref %12 : memref<4x4x16xi32>
    %244 = affine.min affine_map<(d0) -> (-d0, d0 - (d0 + 2), (d0 * -32) ceildiv 128)>(%228)
    %245 = math.floor %expanded : tensor<4x9x4x1xf16>
    %246 = vector.extract_strided_slice %179 {offsets = [1], sizes = [2], strides = [1]} : vector<3x2x16xf16> to vector<2x2x16xf16>
    %247 = math.ceil %cst_3 : f16
    %splat_48 = tensor.splat %c1267058360_i32 : tensor<4x4x16xi32>
    %248 = math.expm1 %cst_0 : f16
    %249 = arith.maxsi %false_33, %false_23 : i1
    %cast_49 = tensor.cast %splat_34 : tensor<4x4x16xi1> to tensor<?x?x?xi1>
    %250 = math.sqrt %176 : tensor<4x4x16xf32>
    %251 = vector.extract %105[2] : vector<5xi64>
    %252 = math.expm1 %cst_1 : f16
    %253 = math.sqrt %expanded : tensor<4x9x4x1xf16>
    memref.copy %alloc_17, %alloc_21 : memref<4xi64> to memref<4xi64>
    %254 = tensor.empty() : tensor<4x4x16xi1>
    %255 = linalg.copy ins(%splat_34 : tensor<4x4x16xi1>) outs(%254 : tensor<4x4x16xi1>) -> tensor<4x4x16xi1>
    %alloc_50 = memref.alloc() : memref<4xi32>
    linalg.transpose ins(%alloc_14 : memref<4xi32>) outs(%alloc_50 : memref<4xi32>) permutation = [0] 
    %256 = tensor.empty() : tensor<4xf16>
    %reduced_51 = linalg.reduce ins(%expanded : tensor<4x9x4x1xf16>) outs(%256 : tensor<4xf16>) dimensions = [0, 1, 3] 
      (%in: f16, %init: f16) {
        %258 = arith.divf %cst, %cst : f32
        %259 = arith.andi %false_23, %false_29 : i1
        %alloca = memref.alloca() : memref<16x16xi16>
        %260 = scf.while (%arg1 = %in) : (f16) -> f16 {
          %264 = vector.transpose %179, [1, 2, 0] : vector<3x2x16xf16> to vector<2x16x3xf16>
          %265 = affine.load %alloc_16[%c4, %c8] : memref<16x16xi32>
          %266 = vector.transpose %160, [0, 1] : vector<16x16xf32> to vector<16x16xf32>
          %267 = index.mul %209, %147
          %268 = index.floordivs %193, %141
          %269 = vector.multi_reduction <minf>, %32, %cst_3 [0, 1, 2] : vector<4x4x16xf16> to f16
          %270 = vector.broadcast %c1122086390_i64 : i64 to vector<i64>
          %271 = vector.transfer_write %270, %15[%64, %c6, %189] : vector<i64>, tensor<4x4x16xi64>
          %272 = index.floordivs %38, %45
          scf.condition(%true_5) %cst_2 : f16
        } do {
        ^bb0(%arg1: f16):
          %264 = tensor.empty() : tensor<4x9x4x1xi32>
          %265 = math.fpowi %expanded, %264 : tensor<4x9x4x1xf16>, tensor<4x9x4x1xi32>
          %266 = vector.extract %20[2] : vector<9xi64>
          %267 = vector.broadcast %cst : f32 to vector<4x4x16xf32>
          %268 = vector.fma %267, %213, %213 : vector<4x4x16xf32>
          %269 = vector.reduction <mul>, %105 : vector<5xi64> into i64
          %cast_53 = tensor.cast %10 : tensor<4x4x16xi64> to tensor<?x?x?xi64>
          %270 = vector.broadcast %c0_i64 : i64 to vector<5x5xi64>
          %271 = vector.outerproduct %27, %27, %270 {kind = #vector.kind<maxsi>} : vector<5xi64>, vector<5xi64>
          %272 = arith.divsi %c20119_i16, %c1_i16 : i16
          %273 = math.floor %cst_3 : f16
          %274 = index.add %56, %147
          %275 = arith.minui %false_33, %false_23 : i1
          %276 = index.sub %231, %c9
          %277 = memref.load %alloc_13[%c1] : memref<4xf16>
          %278 = arith.shrsi %c2293_i16, %c20119_i16 : i16
          %279 = vector.flat_transpose %191 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
          %280 = vector.shuffle %32, %32 [0, 1, 5, 6] : vector<4x4x16xf16>, vector<4x4x16xf16>
          %281 = arith.maxsi %c1267058360_i32, %c993638680_i32 : i32
          scf.yield %init : f16
        }
        %261 = math.log %11 : tensor<4x9x4xf32>
        %262 = vector.transpose %246, [1, 2, 0] : vector<2x2x16xf16> to vector<2x16x2xf16>
        scf.index_switch %64 
        case 1 {
          %264 = bufferization.clone %alloc_22 : memref<4xi64> to memref<4xi64>
          %265 = math.atan %62 : f16
          %c30866_i16 = arith.constant 30866 : i16
          %266 = vector.broadcast %cst : f32 to vector<4xf32>
          %267 = vector.fma %266, %132, %132 : vector<4xf32>
          %268 = math.round %168 : tensor<4x4x16xf32>
          %269 = arith.andi %c1122086390_i64, %c0_i64 : i64
          %c1_i32_53 = arith.constant 1 : i32
          %270 = vector.transfer_read %0[%c6, %rank_25], %c1_i32_53 : tensor<16x16xi32>, vector<i32>
          %271 = arith.shrui %c1_i16, %c2293_i16 : i16
          %272 = vector.shuffle %266, %133 [0, 2, 3, 4, 5, 7] : vector<4xf32>, vector<4xf32>
          %273 = bufferization.clone %alloc_14 : memref<4xi32> to memref<4xi32>
          %274 = vector.transpose %161, [1, 0] : vector<16x16xf32> to vector<16x16xf32>
          %275 = tensor.empty() : tensor<4xi1>
          %c1_i16_54 = arith.constant 1 : i16
          %c0_i16_55 = arith.constant 0 : i16
          %276 = vector.transfer_read %alloc_11[%224, %23], %c0_i16_55 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<16x16xi16>, vector<9xi16>
          %277 = arith.ori %182, %c1_i32_53 : i32
          %dest_56, %accumulated_value_57 = vector.scan <add>, %220, %266 {inclusive = true, reduction_dim = 1 : i64} : vector<4x16xf32>, vector<4xf32>
          %278 = memref.load %alloc_8[%c1, %c0, %c14] : memref<4x4x16xf32>
          scf.yield
        }
        case 2 {
          %264 = index.sizeof
          %265 = index.sizeof
          %266 = math.round %4 : tensor<4xf32>
          %267 = math.cos %176 : tensor<4x4x16xf32>
          %268 = arith.addi %c1_i16, %c2293_i16 : i16
          %269 = vector.broadcast %c1122086390_i64 : i64 to vector<9xi64>
          %270 = vector.transfer_write %269, %66[%c11, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, tensor<16x16xi64>
          %271 = arith.addi %c1267058360_i32, %30 : i32
          %272 = math.round %cst_0 : f16
          %273 = vector.extract_strided_slice %160 {offsets = [4], sizes = [6], strides = [1]} : vector<16x16xf32> to vector<6x16xf32>
          %274 = vector.bitcast %27 : vector<5xi64> to vector<5xi64>
          %275 = arith.mulf %cst_2, %cst_0 : f16
          %276 = math.copysign %4, %4 : tensor<4xf32>
          %277 = math.ipowi %reduced, %reduced : tensor<i32>
          %278 = arith.ori %c848283327_i32, %c1_i32 : i32
          %expanded_53 = tensor.expand_shape %splat_48 [[0], [1], [2, 3]] : tensor<4x4x16xi32> into tensor<4x4x16x1xi32>
          %279 = arith.andi %false, %false : i1
          scf.yield
        }
        case 3 {
          %264 = vector.broadcast %c2293_i16 : i16 to vector<4x4xi16>
          %dest_53, %accumulated_value_54 = vector.scan <mul>, %92, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x4xi16>, vector<4x4xi16>
          %265 = math.cttz %10 : tensor<4x4x16xi64>
          %266 = math.copysign %153, %cst_2 : f16
          %267 = index.maxs %c12, %rank
          %268 = vector.broadcast %cst_1 : f16 to vector<4xf16>
          memref.store %182, %alloc[%c14, %c0] : memref<16x16xi32>
          %269 = arith.addi %c1_i16, %c2293_i16 : i16
          %270 = math.copysign %expanded, %expanded : tensor<4x9x4x1xf16>
          %271 = math.log %62 : f16
          %272 = vector.matrix_multiply %53, %123 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<1xi64>) -> vector<5xi64>
          %273 = arith.remf %in, %cst_4 : f16
          %274 = math.tan %splat : tensor<16x16xf32>
          %275 = vector.extract_strided_slice %70 {offsets = [0], sizes = [4], strides = [1]} : vector<4x4x16xf16> to vector<4x4x16xf16>
          %cast_55 = tensor.cast %4 : tensor<4xf32> to tensor<?xf32>
          %276 = math.exp %splat : tensor<16x16xf32>
          %c-23052_i16 = arith.constant -23052 : i16
          scf.yield
        }
        default {
          %264 = arith.negf %cst_4 : f16
          affine.store %cst, %alloc_6[%c9, %c8] : memref<16x16xf32>
          %splat_53 = tensor.splat %c848283327_i32 : tensor<4x4x16xi32>
          %265 = vector.broadcast %c1267058360_i32 : i32 to vector<i32>
          vector.transfer_write %265, %alloc[%c3, %c10] : vector<i32>, memref<16x16xi32>
          bufferization.dealloc_tensor %22 : tensor<i64>
          %266 = math.exp2 %62 : f16
          %267 = arith.addi %182, %30 : i32
          %268 = arith.cmpi ugt, %c1_i16, %c20119_i16 : i16
          %269 = index.divs %224, %45
          %270 = arith.mulf %cst_0, %153 : f16
          %c1_i64 = arith.constant 1 : i64
          %c0_i64_54 = arith.constant 0 : i64
          %271 = vector.transfer_read %218[%202, %c6, %c9], %c0_i64_54 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<4x4x16xi64>, vector<8x9xi64>
          %272 = vector.broadcast %c0_i64 : i64 to vector<16x4xi64>
          %273 = vector.transfer_write %272, %17[%c4, %c5, %240] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x4xi64>, tensor<4x4x16xi64>
          %274 = arith.negf %cst_1 : f16
          %275 = math.ctlz %59 : tensor<4x4x16xi32>
          %276 = math.copysign %cst_0, %in : f16
          %rank_55 = tensor.rank %2 : tensor<4x4x16xi32>
        }
        %263 = index.sizeof
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    scf.parallel (%arg1) = (%64) to (%228) step (%c9) {
      %258 = vector.broadcast %false_29 : i1 to vector<4xi1>
      %259 = vector.gather %11[%23, %244, %c11] [%139], %258, %133 : tensor<4x9x4xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %260 = arith.minf %cst_4, %153 : f16
      %261 = scf.index_switch %214 -> vector<4x4x16xi1> 
      case 1 {
        %274 = index.mul %c6, %102
        %275 = arith.subi %c848283327_i32, %c1_i32 : i32
        %276 = arith.maxf %140, %cst : f32
        %277 = math.rsqrt %splat : tensor<16x16xf32>
        %278 = math.log2 %4 : tensor<4xf32>
        %279 = arith.mulf %170, %cst_1 : f16
        %280 = math.ctlz %c1267058360_i32 : i32
        %281 = math.sqrt %4 : tensor<4xf32>
        %282 = arith.subi %false, %true : i1
        %283 = vector.broadcast %c1122086390_i64 : i64 to vector<5x5xi64>
        %284 = vector.outerproduct %27, %27, %283 {kind = #vector.kind<xor>} : vector<5xi64>, vector<5xi64>
        %285 = arith.maxsi %30, %c1_i32 : i32
        %286 = arith.minsi %182, %241 : i32
        %287 = math.round %176 : tensor<4x4x16xf32>
        %288 = vector.flat_transpose %133 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %289 = math.ctpop %c2293_i16 : i16
        %extracted = tensor.extract %4[%c1] : tensor<4xf32>
        scf.yield %169 : vector<4x4x16xi1>
      }
      case 2 {
        %splat_53 = tensor.splat %c0_i64 : tensor<4x4x16xi64>
        %274 = math.cttz %false : i1
        %275 = math.cos %170 : f16
        %alloc_54 = memref.alloc() : memref<4xf16>
        memref.copy %alloc_13, %alloc_54 : memref<4xf16> to memref<4xf16>
        %276 = vector.broadcast %228 : index to vector<9xindex>
        %277 = vector.broadcast %false_29 : i1 to vector<9xi1>
        %278 = vector.broadcast %cst : f32 to vector<9xf32>
        vector.scatter %alloc_8[%c1, %c3, %c6] [%276], %277, %278 : memref<4x4x16xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %279 = bufferization.to_tensor %alloc_22 : memref<4xi64>
        %280 = vector.matrix_multiply %88, %89 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %281 = math.absi %5 : tensor<4xi32>
        memref.copy %alloc_50, %alloc_14 : memref<4xi32> to memref<4xi32>
        %282 = arith.shrsi %c0_i64, %c0_i64 : i64
        memref.tensor_store %113, %alloc : memref<16x16xi32>
        %283 = math.atan2 %4, %4 : tensor<4xf32>
        %284 = vector.broadcast %c1122086390_i64 : i64 to vector<5x5xi64>
        %285 = vector.outerproduct %53, %27, %284 {kind = #vector.kind<xor>} : vector<5xi64>, vector<5xi64>
        %286 = math.tan %collapsed_43 : tensor<36x4xf32>
        %287 = arith.maxsi %true_5, %false : i1
        %288 = math.log %170 : f16
        scf.yield %169 : vector<4x4x16xi1>
      }
      case 3 {
        %274 = index.sub %c9, %c11
        %275 = math.tanh %1 : tensor<4x9x4xf16>
        %276 = math.cos %168 : tensor<4x4x16xf32>
        %277 = arith.muli %30, %241 : i32
        %278 = math.cttz %131 : tensor<16x16xi64>
        %279 = index.mul %c1, %rank
        memref.copy %alloc_21, %alloc_22 : memref<4xi64> to memref<4xi64>
        %280 = index.sizeof
        %281 = arith.subi %c0_i64, %c0_i64 : i64
        %282 = vector.broadcast %c1535624791_i32 : i32 to vector<i32>
        %283 = vector.transfer_write %282, %0[%65, %c13] : vector<i32>, tensor<16x16xi32>
        %284 = math.ctpop %236 : tensor<4x4x16xi32>
        %285 = arith.minsi %c1535624791_i32, %30 : i32
        %286 = index.sub %c4, %244
        %287 = math.expm1 %cst_2 : f16
        %288 = math.sqrt %168 : tensor<4x4x16xf32>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64_53 = arith.constant 0 : i64
        %289 = vector.transfer_read %15[%c11, %244, %c1], %c0_i64_53 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<4x4x16xi64>, vector<9xi64>
        scf.yield %169 : vector<4x4x16xi1>
      }
      default {
        %274 = arith.muli %c1122086390_i64, %c1122086390_i64 : i64
        %275 = index.sub %c5, %202
        %276 = arith.ori %c1535624791_i32, %30 : i32
        %277 = math.copysign %cst_2, %cst_4 : f16
        %278 = vector.load %alloc_7[%c0, %c0, %c0] : memref<4x4x16xi32>, vector<16x16xi32>
        %279 = memref.load %alloc_11[%c7, %c12] : memref<16x16xi16>
        %280 = math.log1p %170 : f16
        %281 = math.tanh %11 : tensor<4x9x4xf32>
        %282 = vector.broadcast %false : i1 to vector<9x4x9x4xi1>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %69, %69, %282 : vector<4x9x4xi1>, vector<4x9x4xi1> into vector<9x4x9x4xi1>
        %284 = math.powf %153, %cst_3 : f16
        %285 = vector.broadcast %c1122086390_i64 : i64 to vector<16xi64>
        %286 = vector.transfer_write %285, %6[%189, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi64>, tensor<16x16xi64>
        %287 = arith.shli %true_5, %false_33 : i1
        %288 = vector.broadcast %140 : f32 to vector<4x9x4xf32>
        %289 = vector.fma %288, %288, %288 : vector<4x9x4xf32>
        %290 = vector.load %alloc[%c3, %c0] : memref<16x16xi32>, vector<16x16xi32>
        %291 = math.log2 %cst_0 : f16
        %292 = memref.atomic_rmw minf %cst, %alloc_18[%c3, %c3, %c2] : (f32, memref<4x9x4xf32>) -> f32
        scf.yield %169 : vector<4x4x16xi1>
      }
      %262 = math.exp2 %4 : tensor<4xf32>
      %263 = vector.insertelement %c0_i64, %157[%100 : index] : vector<1xi64>
      %264 = arith.maxsi %c848283327_i32, %c848283327_i32 : i32
      %265 = math.ceil %collapsed_43 : tensor<36x4xf32>
      %266 = vector.broadcast %c1122086390_i64 : i64 to vector<9x9xi64>
      %267 = vector.outerproduct %20, %20, %266 {kind = #vector.kind<maxui>} : vector<9xi64>, vector<9xi64>
      %from_elements = tensor.from_elements %false, %true_5, %true, %false_23 : tensor<4xi1>
      %268 = bufferization.clone %alloc_50 : memref<4xi32> to memref<4xi32>
      %269 = arith.muli %false_29, %false_33 : i1
      %270 = arith.addi %c1122086390_i64, %c1122086390_i64 : i64
      %271 = arith.mulf %153, %cst_0 : f16
      %272 = arith.addi %c993638680_i32, %c1535624791_i32 : i32
      %273 = vector.create_mask %c1, %100, %147 : vector<4x9x4xi1>
      %inserted_52 = tensor.insert %c0_i64 into %3[%c3, %c0, %c8] : tensor<4x4x16xi64>
      scf.yield
    }
    %257 = affine.vector_load %alloc_18[%c13, %45, %rank_25] : memref<4x9x4xf32>, vector<16xf32>
    affine.vector_store %191, %alloc_50[%c14] : memref<4xi32>, vector<2xi32>
    vector.print %20 : vector<9xi64>
    vector.print %27 : vector<5xi64>
    vector.print %32 : vector<4x4x16xf16>
    vector.print %46 : vector<4x16xf16>
    vector.print %49 : vector<1xi64>
    vector.print %53 : vector<5xi64>
    vector.print %69 : vector<4x9x4xi1>
    vector.print %70 : vector<4x4x16xf16>
    vector.print %76 : vector<f32>
    vector.print %86 : vector<4x4x16xf16>
    vector.print %88 : vector<4xf32>
    vector.print %89 : vector<4xf32>
    vector.print %92 : vector<4x9x4xi16>
    vector.print %105 : vector<5xi64>
    vector.print %110 : vector<i32>
    vector.print %123 : vector<1xi64>
    vector.print %124 : vector<4xi32>
    vector.print %132 : vector<4xf32>
    vector.print %133 : vector<4xf32>
    vector.print %134 : vector<4x4x16xf16>
    vector.print %139 : vector<4xi32>
    vector.print %142 : vector<1xi32>
    vector.print %155 : vector<4x9x4xi32>
    vector.print %157 : vector<1xi64>
    vector.print %160 : vector<16x16xf32>
    vector.print %161 : vector<16x16xf32>
    vector.print %167 : vector<i32>
    vector.print %169 : vector<4x4x16xi1>
    vector.print %179 : vector<3x2x16xf16>
    vector.print %191 : vector<2xi32>
    vector.print %198 : vector<16xf16>
    vector.print %212 : vector<4x4x16xf32>
    vector.print %213 : vector<4x4x16xf32>
    vector.print %220 : vector<4x16xf32>
    vector.print %233 : vector<5xi64>
    vector.print %237 : vector<1xi32>
    vector.print %246 : vector<2x2x16xf16>
    vector.print %257 : vector<16xf32>
    vector.print %c1267058360_i32 : i32
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %c993638680_i32 : i32
    vector.print %cst_2 : f16
    vector.print %c848283327_i32 : i32
    vector.print %false : i1
    vector.print %c1535624791_i32 : i32
    vector.print %cst_3 : f16
    vector.print %c1122086390_i64 : i64
    vector.print %cst_4 : f16
    vector.print %c20119_i16 : i16
    vector.print %true_5 : i1
    vector.print %c2293_i16 : i16
    vector.print %30 : i32
    vector.print %c1_i32 : i32
    vector.print %62 : f16
    vector.print %false_23 : i1
    vector.print %c1_i16 : i16
    vector.print %140 : f32
    vector.print %false_29 : i1
    vector.print %153 : f16
    vector.print %170 : f16
    vector.print %false_33 : i1
    vector.print %182 : i32
    vector.print %c0_i64 : i64
    vector.print %241 : i32
    return
  }
}
