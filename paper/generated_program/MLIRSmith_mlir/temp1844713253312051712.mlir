module {
  func.func nested @func1(%arg0: tensor<14x14xi16>) -> tensor<9xi32> {
    %c1896993623_i32 = arith.constant 1896993623 : i32
    %cst = arith.constant 1.87896717E+9 : f32
    %c-19317_i16 = arith.constant -19317 : i16
    %c976833789_i64 = arith.constant 976833789 : i64
    %c29831_i16 = arith.constant 29831 : i16
    %cst_0 = arith.constant 1.84982707E+9 : f32
    %cst_1 = arith.constant 4.054400e+04 : f16
    %c4658_i16 = arith.constant 4658 : i16
    %c10841_i16 = arith.constant 10841 : i16
    %c2038868897_i32 = arith.constant 2038868897 : i32
    %c846129297_i32 = arith.constant 846129297 : i32
    %c-8044_i16 = arith.constant -8044 : i16
    %c2135986617_i64 = arith.constant 2135986617 : i64
    %c11664_i16 = arith.constant 11664 : i16
    %false = arith.constant false
    %cst_2 = arith.constant 1.69369715E+9 : f32
    %0 = tensor.empty() : tensor<9xi64>
    %1 = tensor.empty() : tensor<14x14xi64>
    %2 = tensor.empty() : tensor<14x14xf32>
    %3 = tensor.empty() : tensor<14xi1>
    %4 = tensor.empty() : tensor<9xi32>
    %5 = tensor.empty() : tensor<9xf32>
    %6 = tensor.empty() : tensor<14xf16>
    %7 = tensor.empty() : tensor<9xi32>
    %8 = tensor.empty() : tensor<9xi16>
    %9 = tensor.empty() : tensor<14xi16>
    %10 = tensor.empty() : tensor<14xi16>
    %11 = tensor.empty() : tensor<9xf16>
    %12 = tensor.empty() : tensor<14x14xi32>
    %13 = tensor.empty() : tensor<14x14xi64>
    %14 = tensor.empty() : tensor<14xi16>
    %15 = tensor.empty() : tensor<9xf32>
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
    %alloc = memref.alloc() : memref<9xf16>
    %alloc_3 = memref.alloc() : memref<9xi16>
    %alloc_4 = memref.alloc() : memref<14xi16>
    %alloc_5 = memref.alloc() : memref<9xi16>
    %alloc_6 = memref.alloc() : memref<14x14xi1>
    %alloc_7 = memref.alloc() : memref<14x14xi64>
    %alloc_8 = memref.alloc() : memref<9xi32>
    %alloc_9 = memref.alloc() : memref<14x14xf16>
    %alloc_10 = memref.alloc() : memref<14x14xi32>
    %alloc_11 = memref.alloc() : memref<14x14xi32>
    %alloc_12 = memref.alloc() : memref<14x14xi1>
    %alloc_13 = memref.alloc() : memref<14x14xf32>
    %alloc_14 = memref.alloc() : memref<9xi1>
    %alloc_15 = memref.alloc() : memref<9xi1>
    %alloc_16 = memref.alloc() : memref<9xi1>
    %alloc_17 = memref.alloc() : memref<9xi32>
    %16 = tensor.empty() : tensor<14xf16>
    %17 = linalg.copy ins(%6 : tensor<14xf16>) outs(%16 : tensor<14xf16>) -> tensor<14xf16>
    %18 = tensor.empty() : tensor<14x14xf32>
    %transposed = linalg.transpose ins(%alloc_13 : memref<14x14xf32>) outs(%18 : tensor<14x14xf32>) permutation = [1, 0] 
    %alloc_18 = memref.alloc() : memref<i16>
    linalg.reduce ins(%14 : tensor<14xi16>) outs(%alloc_18 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %254 = arith.subi %c2135986617_i64, %c976833789_i64 : i64
        %255 = index.sub %c1, %c6
        %256 = vector.broadcast %c11664_i16 : i16 to vector<14xi16>
        %257 = vector.broadcast %false : i1 to vector<14xi1>
        %258 = vector.maskedload %alloc_5[%c1], %257, %256 : memref<9xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %259 = vector.broadcast %c976833789_i64 : i64 to vector<9xi64>
        %260 = vector.broadcast %false : i1 to vector<9xi1>
        %261 = vector.maskedload %alloc_7[%c3, %c0], %260, %259 : memref<14x14xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %262 = index.sizeof
        %263 = vector.broadcast %false : i1 to vector<9xi1>
        %264 = arith.remf %cst_1, %cst_1 : f16
        %265 = math.ipowi %4, %4 : tensor<9xi32>
        %c1_i16_43 = arith.constant 1 : i16
        linalg.yield %c1_i16_43 : i16
      }
    scf.parallel (%arg1) = (%c4) to (%c5) step (%c2) {
      %254 = vector.broadcast %c2135986617_i64 : i64 to vector<i64>
      %255 = vector.transfer_write %254, %0[%c13] : vector<i64>, tensor<9xi64>
      %256 = affine.if affine_set<(d0, d1, d2) : (d0 >= 0, ((d1 - 16) ceildiv 2) floordiv 2 >= 0, d1 floordiv 8 + 8 == 0, d1 floordiv 4 - 4 == 0)>(%c11, %c15, %c8) -> memref<9xi64> {
        %271 = tensor.empty() : tensor<14xf32>
        %272 = index.divu %c10, %c9
        memref.copy %alloc_17, %alloc_8 : memref<9xi32> to memref<9xi32>
        %273 = index.divu %c1, %c7
        %274 = vector.broadcast %false : i1 to vector<1xi1>
        %275 = vector.multi_reduction <or>, %274, %274 [] : vector<1xi1> to vector<1xi1>
        %cst_44 = arith.constant 1.000000e+00 : f32
        %cst_45 = arith.constant 0.000000e+00 : f32
        %276 = vector.transfer_read %5[%c12], %cst_45 : tensor<9xf32>, vector<f32>
        %277 = math.rsqrt %5 : tensor<9xf32>
        %278 = arith.cmpi ult, %c29831_i16, %c-8044_i16 : i16
        %alloc_46 = memref.alloc() : memref<9xi64>
        affine.yield %alloc_46 : memref<9xi64>
      } else {
        %271 = vector.shuffle %254, %254 [0, 1] : vector<i64>, vector<i64>
        %272 = arith.remf %cst, %cst_2 : f32
        %273 = index.sizeof
        %274 = arith.minui %c4658_i16, %c29831_i16 : i16
        %275 = vector.broadcast %cst_1 : f16 to vector<14xf16>
        %276 = vector.flat_transpose %275 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
        %277 = tensor.empty() : tensor<14xi32>
        %278 = math.fpowi %6, %277 : tensor<14xf16>, tensor<14xi32>
        %279 = vector.broadcast %false : i1 to vector<8xi1>
        %280 = vector.maskedload %alloc_15[%c2], %279, %279 : memref<9xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %extracted_44 = tensor.extract %277[%c13] : tensor<14xi32>
        %alloc_45 = memref.alloc() : memref<9xi64>
        affine.yield %alloc_45 : memref<9xi64>
      }
      %257 = arith.remf %cst_2, %cst_0 : f32
      %258 = bufferization.clone %alloc_12 : memref<14x14xi1> to memref<14x14xi1>
      %259 = affine.load %alloc_11[%c4, %c10] : memref<14x14xi32>
      %cst_43 = arith.constant 1.00572685E+9 : f32
      %260 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      %261 = vector.multi_reduction <mul>, %260, %cst [0] : vector<1xf32> to f32
      %262 = index.sub %c13, %c4
      %263 = index.sizeof
      %264 = index.maxs %c8, %c9
      %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %260, %260, %cst_0 : vector<1xf32>, vector<1xf32> into f32
      %266 = math.powf %5, %15 : tensor<9xf32>
      %267 = vector.shuffle %254, %254 [0, 1] : vector<i64>, vector<i64>
      %268 = math.copysign %11, %11 : tensor<9xf16>
      %269 = index.ceildivu %c6, %c1
      %270 = affine.load %alloc[%c4] : memref<9xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c7] : memref<9xi32>, vector<11xi32>
    affine.vector_store %19, %alloc_11[%c4, %c6] : memref<14x14xi32>, vector<11xi32>
    %20 = tensor.empty() : tensor<9xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%15, %20 : tensor<9xf32>, tensor<9xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = vector.broadcast %c846129297_i32 : i32 to vector<i32>
    %24 = vector.transfer_write %23, %7[%c5] : vector<i32>, tensor<9xi32>
    scf.index_switch %c12 
    case 1 {
      %254 = vector.create_mask %c13 : vector<9xi1>
      %255 = math.log %18 : tensor<14x14xf32>
      %256 = vector.bitcast %254 : vector<9xi1> to vector<9xi1>
      %257 = arith.subi %c11664_i16, %c10841_i16 : i16
      %258 = vector.create_mask %c8, %c1 : vector<14x14xi1>
      %259 = math.rsqrt %17 : tensor<14xf16>
      memref.store %c2038868897_i32, %alloc_8[%c6] : memref<9xi32>
      %260 = arith.cmpi ne, %c29831_i16, %c29831_i16 : i16
      %261 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %261, %alloc_9[%c1, %c14] : vector<f16>, memref<14x14xf16>
      %262 = arith.cmpi eq, %c29831_i16, %c-8044_i16 : i16
      %263 = math.tanh %6 : tensor<14xf16>
      %264 = index.sizeof
      %265 = arith.cmpf oeq, %cst_0, %cst_2 : f32
      %266 = vector.multi_reduction <maxui>, %258, %258 [] : vector<14x14xi1> to vector<14x14xi1>
      %267 = tensor.empty() : tensor<9xi1>
      %false_43 = index.bool.constant false
      scf.yield
    }
    case 2 {
      %generated_43 = tensor.generate %c0 {
      ^bb0(%arg1: index):
        %268 = arith.remui %c4658_i16, %c11664_i16 : i16
        %269 = index.ceildivu %c14, %c9
        %270 = arith.addi %c846129297_i32, %c1896993623_i32 : i32
        %271 = vector.shuffle %23, %23 [0, 1] : vector<i32>, vector<i32>
        tensor.yield %c2135986617_i64 : i64
      } : tensor<?xi64>
      %254 = vector.multi_reduction <minui>, %19, %19 [] : vector<11xi32> to vector<11xi32>
      %255 = vector.load %alloc[%c3] : memref<9xf16>, vector<14xf16>
      %256 = math.cttz %c29831_i16 : i16
      %257 = vector.splat %c7 : vector<9xindex>
      %c1_i64 = arith.constant 1 : i64
      %258 = vector.transfer_read %alloc_7[%c14, %c5], %c1_i64 : memref<14x14xi64>, vector<8xi64>
      %259 = vector.broadcast %c1896993623_i32 : i32 to vector<14x14xi32>
      %260 = affine.for %arg1 = 0 to 8 iter_args(%arg2 = %13) -> (tensor<14x14xi64>) {
        affine.yield %13 : tensor<14x14xi64>
      }
      %261 = math.tan %5 : tensor<9xf32>
      %262 = index.maxs %c13, %c7
      %263 = memref.atomic_rmw maxs %c1896993623_i32, %alloc_11[%c2, %c10] : (i32, memref<14x14xi32>) -> i32
      affine.store %false, %alloc_16[%c0] : memref<9xi1>
      %264 = arith.shli %c846129297_i32, %c2038868897_i32 : i32
      %265 = arith.negf %cst_0 : f32
      %266 = memref.atomic_rmw andi %c846129297_i32, %alloc_17[%c3] : (i32, memref<9xi32>) -> i32
      %267 = arith.maxsi %false, %false : i1
      scf.yield
    }
    case 3 {
      %254 = math.atan %16 : tensor<14xf16>
      %255 = math.ceil %cst_2 : f32
      %256 = arith.cmpf ult, %cst_0, %cst_2 : f32
      %257 = arith.remf %cst_1, %cst_1 : f16
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_43 = arith.constant 0 : i16
      %258 = vector.transfer_read %alloc_3[%c13], %c0_i16_43 : memref<9xi16>, vector<i16>
      %259 = math.tanh %5 : tensor<9xf32>
      %260 = memref.alloca_scope  -> (memref<9xi1>) {
        %270 = math.round %cst_1 : f16
        %271 = bufferization.clone %alloc_3 : memref<9xi16> to memref<9xi16>
        %272 = arith.mulf %cst, %cst : f32
        %273 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
        %274 = arith.minsi %c846129297_i32, %c1896993623_i32 : i32
        %275 = vector.multi_reduction <mul>, %19, %c846129297_i32 [0] : vector<11xi32> to i32
        %276 = index.sizeof
        %277 = math.sqrt %11 : tensor<9xf16>
        %278 = tensor.empty() : tensor<9xi64>
        %279 = vector.load %alloc[%c6] : memref<9xf16>, vector<9xf16>
        %280 = math.fma %6, %16, %6 : tensor<14xf16>
        %281 = arith.negf %cst_1 : f16
        %282 = memref.realloc %alloc_16 : memref<9xi1> to memref<9xi1>
        %283 = arith.maxui %c-19317_i16, %c0_i16 : i16
        %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 * 2)>(%c8, %c0, %c5, %c13)
        memref.copy %alloc_8, %alloc_17 : memref<9xi32> to memref<9xi32>
        %285 = vector.bitcast %19 : vector<11xi32> to vector<11xi32>
        %286 = math.floor %5 : tensor<9xf32>
        %287 = arith.shrui %false, %false : i1
        %cst_44 = arith.constant 1.000000e+00 : f32
        %288 = vector.transfer_read %20[%c9], %cst_44 : tensor<9xf32>, vector<f32>
        %expanded_45 = tensor.expand_shape %11 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
        %289 = math.powf %cst_44, %cst_2 : f32
        %290 = math.cos %transposed : tensor<14x14xf32>
        %291 = vector.matrix_multiply %273, %273 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
        %292 = memref.realloc %alloc_17 : memref<9xi32> to memref<9xi32>
        %293 = math.ipowi %3, %3 : tensor<14xi1>
        %294 = arith.floordivsi %false, %false : i1
        %extracted_46 = tensor.extract %18[%c13, %c10] : tensor<14x14xf32>
        %295 = arith.cmpi sge, %c976833789_i64, %c2135986617_i64 : i64
        %296 = arith.mulf %cst, %cst_44 : f32
        %c0_i64 = arith.constant 0 : i64
        %297 = vector.transfer_read %0[%c12], %c0_i64 : tensor<9xi64>, vector<i64>
        %298 = arith.maxsi %c29831_i16, %c4658_i16 : i16
        memref.alloca_scope.return %alloc_14 : memref<9xi1>
      }
      %261 = arith.cmpi slt, %c4658_i16, %c4658_i16 : i16
      affine.store %c2038868897_i32, %alloc_11[%c4, %c11] : memref<14x14xi32>
      %262 = math.atan %22 : tensor<f32>
      %263 = math.cttz %9 : tensor<14xi16>
      %264 = arith.ceildivsi %c0_i16, %c10841_i16 : i16
      %265 = vector.broadcast %c1896993623_i32 : i32 to vector<11x11xi32>
      %266 = vector.outerproduct %19, %19, %265 {kind = #vector.kind<mul>} : vector<11xi32>, vector<11xi32>
      %267 = memref.atomic_rmw ori %c4658_i16, %alloc_18[] : (i16, memref<i16>) -> i16
      %268 = index.maxs %c0, %c4
      %269 = tensor.empty() : tensor<14x14xf16>
      scf.yield
    }
    default {
      %254 = math.exp %5 : tensor<9xf32>
      %255 = bufferization.to_tensor %alloc_8 : memref<9xi32>
      %256 = scf.execute_region -> i1 {
        %270 = math.ipowi %false, %false : i1
        %271 = math.cttz %3 : tensor<14xi1>
        %272 = arith.negf %cst_1 : f16
        %cast = tensor.cast %0 : tensor<9xi64> to tensor<?xi64>
        %alloc_46 = memref.alloc() : memref<14x14xf16>
        memref.copy %alloc_9, %alloc_46 : memref<14x14xf16> to memref<14x14xf16>
        %273 = arith.divf %cst, %cst_2 : f32
        %274 = arith.shrui %c29831_i16, %c10841_i16 : i16
        %275 = arith.floordivsi %c2135986617_i64, %c2135986617_i64 : i64
        %276 = vector.broadcast %c1896993623_i32 : i32 to vector<i32>
        %277 = vector.transfer_write %276, %12[%c11, %c10] : vector<i32>, tensor<14x14xi32>
        bufferization.dealloc_tensor %4 : tensor<9xi32>
        %278 = math.round %transposed : tensor<14x14xf32>
        %279 = arith.minui %c-19317_i16, %c-19317_i16 : i16
        %280 = math.cttz %c-19317_i16 : i16
        %281 = index.sub %c12, %c3
        memref.copy %alloc_10, %alloc_11 : memref<14x14xi32> to memref<14x14xi32>
        %282 = math.rsqrt %6 : tensor<14xf16>
        scf.yield %false : i1
      }
      %257 = math.rsqrt %11 : tensor<9xf16>
      %258 = memref.realloc %alloc_5 : memref<9xi16> to memref<9xi16>
      %extracted_43 = tensor.extract %4[%c5] : tensor<9xi32>
      %259 = arith.ceildivsi %c-8044_i16, %c-19317_i16 : i16
      %260 = arith.cmpf une, %cst_0, %cst_0 : f32
      %261 = scf.index_switch %c13 -> tensor<9xi1> 
      case 1 {
        %270 = arith.remf %cst_1, %cst_1 : f16
        %271 = index.divs %c4, %c9
        %272 = vector.shuffle %19, %19 [1, 3, 6, 7, 8, 9, 10, 11, 16, 17, 19, 20] : vector<11xi32>, vector<11xi32>
        %273 = math.ceil %6 : tensor<14xf16>
        %274 = index.maxs %c9, %c1
        %275 = math.exp2 %20 : tensor<9xf32>
        %276 = arith.addi %false, %false : i1
        %277 = memref.atomic_rmw maxu %c4658_i16, %alloc_4[%c1] : (i16, memref<14xi16>) -> i16
        %278 = arith.cmpf ueq, %cst_1, %cst_1 : f16
        %279 = arith.ori %c10841_i16, %c10841_i16 : i16
        %280 = math.tanh %11 : tensor<9xf16>
        %281 = arith.remf %cst, %cst_2 : f32
        %282 = vector.matrix_multiply %19, %19 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
        %283 = index.sizeof
        %284 = vector.insert %extracted_43, %282 [0] : i32 into vector<1xi32>
        %285 = math.fpowi %15, %7 : tensor<9xf32>, tensor<9xi32>
        %286 = tensor.empty() : tensor<9xi1>
        scf.yield %286 : tensor<9xi1>
      }
      case 2 {
        %270 = arith.remui %c-8044_i16, %c4658_i16 : i16
        %271 = arith.remui %c2038868897_i32, %c1896993623_i32 : i32
        %collapsed_46 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
        %272 = math.tanh %6 : tensor<14xf16>
        %273 = memref.load %alloc_15[%c4] : memref<9xi1>
        %274 = arith.divsi %false, %false : i1
        %275 = vector.broadcast %cst : f32 to vector<f32>
        %276 = vector.transfer_write %275, %20[%c3] : vector<f32>, tensor<9xf32>
        %inserted_47 = tensor.insert %c-8044_i16 into %8[%c5] : tensor<9xi16>
        %277 = math.cttz %4 : tensor<9xi32>
        %extracted_48 = tensor.extract %2[%c3, %c0] : tensor<14x14xf32>
        %278 = arith.minf %cst, %cst : f32
        %279 = math.fpowi %cst_1, %c846129297_i32 : f16, i32
        %280 = vector.reduction <minui>, %19 : vector<11xi32> into i32
        %281 = math.absf %17 : tensor<14xf16>
        %282 = vector.broadcast %c2135986617_i64 : i64 to vector<i64>
        %283 = vector.transfer_write %282, %collapsed_46[%c5] : vector<i64>, tensor<196xi64>
        %284 = tensor.empty() : tensor<9xi16>
        %285 = tensor.empty() : tensor<9xi1>
        scf.yield %285 : tensor<9xi1>
      }
      case 3 {
        %270 = arith.subi %c2135986617_i64, %c976833789_i64 : i64
        %271 = index.divu %c10, %c2
        %272 = index.casts %c5 : index to i32
        %273 = math.floor %2 : tensor<14x14xf32>
        %274 = vector.broadcast %c2038868897_i32 : i32 to vector<9xi32>
        %275 = vector.broadcast %false : i1 to vector<9xi1>
        %276 = vector.gather %alloc_17[%c1] [%274], %275, %274 : memref<9xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %277 = math.ipowi %7, %4 : tensor<9xi32>
        %c1_i64 = arith.constant 1 : i64
        %278 = vector.transfer_read %0[%c15], %c1_i64 : tensor<9xi64>, vector<i64>
        %false_46 = arith.constant false
        %false_47 = arith.constant false
        %279 = vector.transfer_read %alloc_12[%c7, %c10], %false_47 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<14x14xi1>, vector<11xi1>
        %280 = math.round %16 : tensor<14xf16>
        %281 = math.fma %11, %11, %11 : tensor<9xf16>
        %282 = arith.ceildivsi %c976833789_i64, %c1_i64 : i64
        %283 = vector.broadcast %cst_0 : f32 to vector<9x14x11xf32>
        %284 = vector.broadcast %cst_2 : f32 to vector<9x14xf32>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %283, %284 {inclusive = true, reduction_dim = 2 : i64} : vector<9x14x11xf32>, vector<9x14xf32>
        %alloc_50 = memref.alloc() : memref<14x14xf16>
        %285 = bufferization.clone %alloc_7 : memref<14x14xi64> to memref<14x14xi64>
        %286 = math.cttz %false_46 : i1
        %287 = arith.ori %c1_i64, %c976833789_i64 : i64
        %288 = tensor.empty() : tensor<9xi1>
        scf.yield %288 : tensor<9xi1>
      }
      case 4 {
        %270 = math.tanh %16 : tensor<14xf16>
        %271 = vector.reduction <minsi>, %19 : vector<11xi32> into i32
        %272 = arith.remf %cst_1, %cst_1 : f16
        %273 = arith.divf %cst_1, %cst_1 : f16
        %extracted_46 = tensor.extract %5[%c2] : tensor<9xf32>
        %274 = arith.subi %c2135986617_i64, %c976833789_i64 : i64
        %c2129100659_i64 = arith.constant 2129100659 : i64
        %275 = arith.minui %c846129297_i32, %c2038868897_i32 : i32
        %276 = math.cttz %extracted_43 : i32
        %splat = tensor.splat %c-8044_i16 : tensor<9xi16>
        %277 = math.ipowi %c1896993623_i32, %extracted_43 : i32
        %expanded_47 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<14x14xf32> into tensor<14x14x1xf32>
        %278 = arith.ceildivsi %c11664_i16, %c10841_i16 : i16
        %279 = arith.minui %extracted_43, %c846129297_i32 : i32
        %280 = math.sqrt %15 : tensor<9xf32>
        %281 = math.tanh %20 : tensor<9xf32>
        %282 = tensor.empty() : tensor<9xi1>
        scf.yield %282 : tensor<9xi1>
      }
      default {
        %270 = affine.load %alloc_3[%c8] : memref<9xi16>
        %271 = math.rsqrt %2 : tensor<14x14xf32>
        %alloc_46 = memref.alloc() : memref<14xf16>
        memref.copy %alloc_17, %alloc_8 : memref<9xi32> to memref<9xi32>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_47 = arith.constant 0 : i32
        %272 = vector.transfer_read %7[%c9], %c0_i32_47 : tensor<9xi32>, vector<i32>
        %273 = math.atan2 %15, %20 : tensor<9xf32>
        %274 = math.fpowi %2, %12 : tensor<14x14xf32>, tensor<14x14xi32>
        %275 = math.powf %22, %22 : tensor<f32>
        %276 = math.log %cst : f32
        %277 = index.divu %c6, %c0
        %278 = arith.remf %cst_1, %cst_1 : f16
        %279 = math.sqrt %18 : tensor<14x14xf32>
        %280 = arith.cmpi sgt, %c846129297_i32, %c1896993623_i32 : i32
        %281 = arith.muli %c11664_i16, %c29831_i16 : i16
        %282 = memref.realloc %alloc_3 : memref<9xi16> to memref<8xi16>
        %283 = vector.load %alloc_12[%c12, %c10] : memref<14x14xi1>, vector<14x14xi1>
        %284 = tensor.empty() : tensor<9xi1>
        scf.yield %284 : tensor<9xi1>
      }
      %262 = index.casts %c14 : index to i32
      %263 = bufferization.to_memref %6 : memref<14xf16>
      %264 = math.tanh %20 : tensor<9xf32>
      %265 = arith.divf %cst_0, %cst : f32
      %266 = vector.broadcast %c2038868897_i32 : i32 to vector<9x8x8xi32>
      %267 = vector.broadcast %extracted_43 : i32 to vector<9x8xi32>
      %dest_44, %accumulated_value_45 = vector.scan <or>, %266, %267 {inclusive = true, reduction_dim = 1 : i64} : vector<9x8x8xi32>, vector<9x8xi32>
      %268 = scf.while (%arg1 = %23) : (vector<i32>) -> vector<i32> {
        %270 = index.floordivs %c12, %c4
        %271 = math.floor %22 : tensor<f32>
        %272 = arith.shrsi %c10841_i16, %c11664_i16 : i16
        %273 = index.divs %c8, %c0
        %274 = index.divu %c8, %c2
        %275 = math.powf %16, %6 : tensor<14xf16>
        bufferization.dealloc_tensor %13 : tensor<14x14xi64>
        %276 = math.rsqrt %20 : tensor<9xf32>
        scf.condition(%false) %23 : vector<i32>
      } do {
      ^bb0(%arg1: vector<i32>):
        %270 = bufferization.to_memref %14 : memref<14xi16>
        %271 = arith.ceildivsi %extracted_43, %extracted_43 : i32
        %272 = vector.broadcast %c2135986617_i64 : i64 to vector<8x8x14xi64>
        %273 = vector.broadcast %c2135986617_i64 : i64 to vector<8x14xi64>
        %dest_46, %accumulated_value_47 = vector.scan <minui>, %272, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<8x8x14xi64>, vector<8x14xi64>
        %274 = memref.realloc %alloc_4 : memref<14xi16> to memref<9xi16>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %19, %19, %extracted_43 : vector<11xi32>, vector<11xi32> into i32
        %276 = bufferization.to_memref %4 : memref<9xi32>
        %false_48 = arith.constant false
        %277 = arith.ori %false, %256 : i1
        %278 = math.rsqrt %16 : tensor<14xf16>
        %279 = arith.negf %cst_1 : f16
        %280 = arith.minui %c10841_i16, %c4658_i16 : i16
        affine.store %c4658_i16, %alloc_5[%c7] : memref<9xi16>
        %281 = arith.ceildivsi %c11664_i16, %c10841_i16 : i16
        %282 = arith.ceildivsi %c2135986617_i64, %c976833789_i64 : i64
        %283 = arith.remf %cst_0, %cst : f32
        %284 = tensor.empty() : tensor<14xi32>
        scf.yield %23 : vector<i32>
      }
      %269 = math.log2 %cst : f32
    }
    %25 = math.ipowi %c11664_i16, %c29831_i16 : i16
    %26 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %c846129297_i32 : vector<11xi32>, vector<11xi32> into i32
    %27 = memref.atomic_rmw muli %c1896993623_i32, %alloc_17[%c8] : (i32, memref<9xi32>) -> i32
    %28 = vector.create_mask %c9 : vector<9xi1>
    %29 = arith.divsi %false, %false : i1
    %30 = vector.shuffle %19, %19 [0, 2, 4, 7, 8, 11, 14, 15, 19] : vector<11xi32>, vector<11xi32>
    %31 = vector.broadcast %c1896993623_i32 : i32 to vector<11x11xi32>
    %32 = vector.outerproduct %19, %19, %31 {kind = #vector.kind<and>} : vector<11xi32>, vector<11xi32>
    %33 = tensor.empty() : tensor<14x14xi64>
    %34 = linalg.matmul ins(%1, %13 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%33 : tensor<14x14xi64>) -> tensor<14x14xi64>
    %alloc_19 = memref.alloc() : memref<9xf16>
    %35 = arith.cmpi ule, %c2038868897_i32, %c2038868897_i32 : i32
    %36 = math.cttz %14 : tensor<14xi16>
    %37 = memref.alloca_scope  -> (memref<9xi16>) {
      %254 = vector.broadcast %c11664_i16 : i16 to vector<9xi16>
      %255 = bufferization.to_memref %2 : memref<14x14xf32>
      %256 = math.ipowi %8, %8 : tensor<9xi16>
      %257 = arith.maxsi %c976833789_i64, %c976833789_i64 : i64
      %258 = arith.addi %c2135986617_i64, %c2135986617_i64 : i64
      %259 = math.tanh %cst_1 : f16
      %260 = index.castu %c4 : index to i32
      %261 = arith.remf %cst, %cst_2 : f32
      %262 = math.tanh %11 : tensor<9xf16>
      %263 = index.ceildivu %c3, %c10
      %264 = vector.shuffle %28, %28 [1, 2, 4, 6, 7, 8, 9, 11, 13] : vector<9xi1>, vector<9xi1>
      %265 = scf.if %false -> (i64) {
        %282 = memref.atomic_rmw maxs %c1896993623_i32, %alloc_11[%c4, %c11] : (i32, memref<14x14xi32>) -> i32
        %283 = arith.addi %c976833789_i64, %c2135986617_i64 : i64
        %284 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %285 = vector.broadcast %false : i1 to vector<14x14xi1>
        %286 = vector.broadcast %c1896993623_i32 : i32 to vector<14x14xi32>
        %287 = vector.gather %alloc_9[%c9, %c6] [%286], %285, %284 : memref<14x14xf16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf16> into vector<14x14xf16>
        affine.store %false, %alloc_16[%c8] : memref<9xi1>
        %288 = arith.addf %cst_2, %cst : f32
        %289 = bufferization.clone %alloc_8 : memref<9xi32> to memref<9xi32>
        %290 = arith.remf %cst, %cst : f32
        %291 = arith.divsi %c1896993623_i32, %c2038868897_i32 : i32
        scf.yield %c976833789_i64 : i64
      } else {
        %282 = arith.cmpf oge, %cst_0, %cst_0 : f32
        %283 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %284 = math.sqrt %cst : f32
        %alloc_44 = memref.alloc() : memref<14x14xf16>
        %285 = math.tan %2 : tensor<14x14xf32>
        %286 = arith.addf %cst, %cst : f32
        %287 = affine.load %alloc[%c1] : memref<9xf16>
        %extracted_45 = tensor.extract %4[%c1] : tensor<9xi32>
        scf.yield %c2135986617_i64 : i64
      }
      %266 = index.mul %c15, %c5
      %267 = math.expm1 %cst_0 : f32
      %268 = arith.divf %cst, %cst_2 : f32
      %269 = math.log2 %16 : tensor<14xf16>
      %270 = memref.realloc %alloc_16 : memref<9xi1> to memref<14xi1>
      %271 = vector.bitcast %254 : vector<9xi16> to vector<9xi16>
      %272 = arith.addf %cst, %cst : f32
      %273 = arith.remui %c2038868897_i32, %c1896993623_i32 : i32
      %274 = arith.shli %c846129297_i32, %c2038868897_i32 : i32
      memref.store %c2038868897_i32, %alloc_8[%c0] : memref<9xi32>
      memref.assume_alignment %alloc_11, 2 : memref<14x14xi32>
      %275 = index.casts %c8 : index to i32
      %276 = scf.while (%arg1 = %28) : (vector<9xi1>) -> vector<9xi1> {
        %282 = arith.shrsi %c2038868897_i32, %c2038868897_i32 : i32
        %283 = arith.divui %c-8044_i16, %c-8044_i16 : i16
        %284 = index.sub %c5, %c11
        %285 = arith.maxui %c976833789_i64, %265 : i64
        %cst_44 = arith.constant 3.686400e+04 : f16
        %286 = vector.reduction <mul>, %19 : vector<11xi32> into i32
        memref.assume_alignment %alloc_9, 4 : memref<14x14xf16>
        %287 = math.cttz %c-8044_i16 : i16
        scf.condition(%false) %28 : vector<9xi1>
      } do {
      ^bb0(%arg1: vector<9xi1>):
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %254, %271, %c4658_i16 : vector<9xi16>, vector<9xi16> into i16
        %expanded_44 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<14x14xf32> into tensor<14x14x1xf32>
        %283 = arith.remui %c-8044_i16, %c4658_i16 : i16
        %284 = vector.multi_reduction <maxsi>, %254, %271 [] : vector<9xi16> to vector<9xi16>
        %collapsed_45 = tensor.collapse_shape %2 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %extracted_46 = tensor.extract %5[%c8] : tensor<9xf32>
        %285 = math.ipowi %c1896993623_i32, %c2038868897_i32 : i32
        %286 = vector.insert %c-8044_i16, %254 [1] : i16 into vector<9xi16>
        %287 = vector.bitcast %254 : vector<9xi16> to vector<9xi16>
        %288 = arith.cmpf ord, %extracted_46, %cst : f32
        affine.store %c-19317_i16, %alloc_4[%c15] : memref<14xi16>
        memref.store %c846129297_i32, %alloc_17[%c6] : memref<9xi32>
        %289 = math.cos %extracted_46 : f32
        %290 = arith.divsi %265, %c2135986617_i64 : i64
        %291 = arith.ori %c976833789_i64, %c976833789_i64 : i64
        %292 = memref.load %alloc_7[%c7, %c11] : memref<14x14xi64>
        scf.yield %28 : vector<9xi1>
      }
      %277 = arith.cmpi sgt, %c1896993623_i32, %c1896993623_i32 : i32
      %278 = vector.insertelement %false, %28[%c3 : index] : vector<9xi1>
      %279 = arith.negf %cst_0 : f32
      %generated_43 = tensor.generate %c12 {
      ^bb0(%arg1: index):
        %282 = arith.minf %cst_2, %cst_0 : f32
        %283 = math.atan2 %cst_1, %cst_1 : f16
        %284 = tensor.empty() : tensor<9xi64>
        %285 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c2, %c12, %c12)
        tensor.yield %c976833789_i64 : i64
      } : tensor<?xi64>
      %280 = vector.broadcast %c2038868897_i32 : i32 to vector<i32>
      vector.transfer_write %280, %alloc_11[%c15, %266] : vector<i32>, memref<14x14xi32>
      bufferization.dealloc_tensor %0 : tensor<9xi64>
      %281 = vector.transpose %280, [] : vector<i32> to vector<i32>
      memref.alloca_scope.return %alloc_3 : memref<9xi16>
    }
    %38 = math.fpowi %15, %7 : tensor<9xf32>, tensor<9xi32>
    vector.print %28 : vector<9xi1>
    %39 = arith.addf %cst_2, %cst : f32
    memref.assume_alignment %alloc_3, 1 : memref<9xi16>
    %40 = arith.negf %cst_1 : f16
    %41 = arith.muli %c1896993623_i32, %c846129297_i32 : i32
    %42 = vector.broadcast %c2038868897_i32 : i32 to vector<14xi32>
    %43 = vector.broadcast %false : i1 to vector<14xi1>
    %44 = vector.maskedload %alloc_17[%c1], %43, %42 : memref<9xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
    %45 = math.atan %15 : tensor<9xf32>
    %46 = math.roundeven %cst_1 : f16
    %47 = vector.create_mask %c14, %c7 : vector<14x14xi1>
    %48 = arith.divsi %c10841_i16, %c10841_i16 : i16
    %49 = math.absf %cst : f32
    %50 = math.ceil %15 : tensor<9xf32>
    %51 = index.sizeof
    %extracted = tensor.extract %18[%c2, %c5] : tensor<14x14xf32>
    %52 = math.ipowi %14, %9 : tensor<14xi16>
    %53 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c6, %51, %c2, %c4)
    memref.assume_alignment %alloc_18, 1 : memref<i16>
    bufferization.dealloc_tensor %10 : tensor<14xi16>
    %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
    %54 = bufferization.to_memref %9 : memref<14xi16>
    %55 = math.rsqrt %extracted : f32
    %56 = bufferization.to_tensor %alloc_10 : memref<14x14xi32>
    %57 = vector.reduction <or>, %44 : vector<14xi32> into i32
    %58 = math.absf %cst_0 : f32
    %59 = math.cttz %8 : tensor<9xi16>
    %60 = index.sub %c14, %c6
    %61 = math.expm1 %20 : tensor<9xf32>
    %62 = vector.broadcast %c11664_i16 : i16 to vector<14x14xi16>
    %63 = bufferization.to_memref %transposed : memref<14x14xf32>
    scf.index_switch %c7 
    case 1 {
      %254 = index.divu %c11, %c3
      %splat = tensor.splat %c11664_i16 : tensor<14x14xi16>
      %255 = math.log2 %21 : tensor<f32>
      %256 = index.sizeof
      %257 = memref.realloc %37 : memref<9xi16> to memref<9xi16>
      %258 = math.round %6 : tensor<14xf16>
      %splat_43 = tensor.splat %c29831_i16 : tensor<14xi16>
      %259 = arith.divui %c-8044_i16, %c-8044_i16 : i16
      %260 = math.ceil %cst_1 : f16
      %261 = arith.addi %c-19317_i16, %c11664_i16 : i16
      %262 = arith.shrui %false, %false : i1
      %263 = scf.index_switch %254 -> vector<9xf32> 
      case 1 {
        %267 = vector.broadcast %c-19317_i16 : i16 to vector<i16>
        vector.transfer_write %267, %54[%c4] : vector<i16>, memref<14xi16>
        %268 = bufferization.clone %54 : memref<14xi16> to memref<14xi16>
        %269 = memref.atomic_rmw assign %c4658_i16, %alloc_3[%c8] : (i16, memref<9xi16>) -> i16
        %270 = arith.minui %c2135986617_i64, %c976833789_i64 : i64
        %271 = math.powf %6, %17 : tensor<14xf16>
        %272 = math.roundeven %cst : f32
        %273 = arith.cmpi sgt, %false, %false : i1
        %inserted_45 = tensor.insert %c846129297_i32 into %4[%c1] : tensor<9xi32>
        %274 = math.cttz %0 : tensor<9xi64>
        %false_46 = index.bool.constant false
        %extracted_47 = tensor.extract %13[%c6, %c5] : tensor<14x14xi64>
        %275 = vector.insertelement %c2038868897_i32, %19[%c15 : index] : vector<11xi32>
        %276 = vector.matrix_multiply %28, %28 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
        %277 = arith.addi %c976833789_i64, %extracted_47 : i64
        memref.assume_alignment %54, 2 : memref<14xi16>
        %278 = vector.broadcast %c29831_i16 : i16 to vector<14xi16>
        %dest_48, %accumulated_value_49 = vector.scan <maxui>, %62, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi16>, vector<14xi16>
        %279 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        scf.yield %279 : vector<9xf32>
      }
      case 2 {
        %267 = math.absf %transposed : tensor<14x14xf32>
        %268 = index.maxs %c9, %c15
        %alloca = memref.alloca() : memref<9xi32>
        %269 = arith.shrui %c11664_i16, %c29831_i16 : i16
        bufferization.dealloc_tensor %20 : tensor<9xf32>
        %true_45 = arith.constant true
        %270 = vector.transfer_read %3[%c0], %true_45 : tensor<14xi1>, vector<i1>
        %271 = vector.extract_strided_slice %28 {offsets = [5], sizes = [2], strides = [1]} : vector<9xi1> to vector<2xi1>
        %expanded_46 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
        %272 = vector.insertelement %c846129297_i32, %19[%c7 : index] : vector<11xi32>
        %273 = math.copysign %transposed, %transposed : tensor<14x14xf32>
        %274 = arith.remf %cst, %cst_0 : f32
        %275 = math.log2 %6 : tensor<14xf16>
        %276 = index.sizeof
        %277 = bufferization.clone %54 : memref<14xi16> to memref<14xi16>
        %cst_47 = arith.constant 1.26216934E+9 : f32
        %278 = math.powf %11, %11 : tensor<9xf16>
        %279 = vector.broadcast %extracted : f32 to vector<9xf32>
        scf.yield %279 : vector<9xf32>
      }
      case 3 {
        %267 = math.roundeven %15 : tensor<9xf32>
        %268 = index.sub %c15, %c12
        %269 = math.ceil %2 : tensor<14x14xf32>
        %270 = vector.broadcast %cst_1 : f16 to vector<f16>
        %271 = vector.transfer_write %270, %16[%c1] : vector<f16>, tensor<14xf16>
        %272 = bufferization.to_memref %1 : memref<14x14xi64>
        memref.copy %alloc_3, %37 : memref<9xi16> to memref<9xi16>
        %273 = index.maxs %53, %60
        %274 = vector.insertelement %c846129297_i32, %19[%c4 : index] : vector<11xi32>
        %275 = vector.create_mask %53 : vector<14xi1>
        %276 = memref.realloc %alloc_16 : memref<9xi1> to memref<8xi1>
        %277 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %278 = vector.broadcast %false : i1 to vector<8xi1>
        %279 = vector.maskedload %alloc_9[%c6, %c0], %278, %277 : memref<14x14xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        bufferization.dealloc_tensor %10 : tensor<14xi16>
        %280 = affine.apply affine_map<(d0) -> (d0 - 16)>(%c7)
        %281 = arith.subi %c2135986617_i64, %c2135986617_i64 : i64
        %282 = vector.reduction <maxui>, %28 : vector<9xi1> into i1
        %283 = index.sub %273, %60
        %284 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        scf.yield %284 : vector<9xf32>
      }
      default {
        %267 = math.absi %9 : tensor<14xi16>
        %268 = math.floor %15 : tensor<9xf32>
        %269 = tensor.empty() : tensor<14xi32>
        %270 = math.fpowi %6, %269 : tensor<14xf16>, tensor<14xi32>
        %cst_45 = arith.constant 1.77459866E+9 : f32
        %271 = index.ceildivs %254, %51
        %alloc_46 = memref.alloc() : memref<9xi16>
        %272 = arith.addf %cst, %cst_2 : f32
        %273 = arith.negf %cst : f32
        %274 = arith.addi %c1896993623_i32, %c846129297_i32 : i32
        %275 = math.log2 %5 : tensor<9xf32>
        %276 = arith.minf %cst_1, %cst_1 : f16
        %extracted_47 = tensor.extract %1[%c8, %c7] : tensor<14x14xi64>
        %277 = arith.maxui %c1896993623_i32, %c846129297_i32 : i32
        %278 = arith.divf %cst_0, %extracted : f32
        %279 = math.ipowi %14, %14 : tensor<14xi16>
        %280 = bufferization.to_tensor %alloc_7 : memref<14x14xi64>
        %281 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        scf.yield %281 : vector<9xf32>
      }
      %264 = vector.broadcast %c4658_i16 : i16 to vector<i16>
      vector.transfer_write %264, %alloc_5[%c1] : vector<i16>, memref<9xi16>
      %265 = vector.insertelement %c1896993623_i32, %23[] : vector<i32>
      %266 = vector.shuffle %19, %42 [1, 5, 6, 8, 11, 13, 14, 15, 17, 18, 19, 21, 24] : vector<11xi32>, vector<14xi32>
      %cst_44 = arith.constant 0x4D134458 : f32
      scf.yield
    }
    case 2 {
      %254 = bufferization.to_memref %33 : memref<14x14xi64>
      %255 = memref.atomic_rmw assign %cst_1, %alloc[%c3] : (f16, memref<9xf16>) -> f16
      %256 = math.log2 %extracted : f32
      %257 = bufferization.to_tensor %alloc_4 : memref<14xi16>
      %258 = arith.shrsi %c1896993623_i32, %c846129297_i32 : i32
      affine.for %arg1 = 0 to 84 {
      }
      %259 = math.rsqrt %6 : tensor<14xf16>
      %260 = arith.addf %cst_2, %cst_2 : f32
      %261 = index.sizeof
      %262 = arith.addi %c2038868897_i32, %c1896993623_i32 : i32
      %263 = scf.while (%arg1 = %alloc_6) : (memref<14x14xi1>) -> memref<14x14xi1> {
        %271 = index.sizeof
        %272 = vector.create_mask %c7 : vector<9xi1>
        memref.assume_alignment %alloc_10, 16 : memref<14x14xi32>
        %273 = arith.addf %cst, %extracted : f32
        %274 = memref.realloc %alloc_8 : memref<9xi32> to memref<9xi32>
        %275 = arith.maxui %c976833789_i64, %c2135986617_i64 : i64
        %276 = math.fma %cst_0, %cst_0, %cst_2 : f32
        %277 = arith.ori %c11664_i16, %c29831_i16 : i16
        scf.condition(%false) %alloc_6 : memref<14x14xi1>
      } do {
      ^bb0(%arg1: memref<14x14xi1>):
        %271 = arith.maxf %cst, %cst_2 : f32
        memref.assume_alignment %alloc_5, 8 : memref<9xi16>
        memref.store %c846129297_i32, %alloc_8[%c3] : memref<9xi32>
        %272 = arith.cmpf ult, %cst_1, %cst_1 : f16
        %273 = vector.splat %c10841_i16 : vector<9xi16>
        %274 = arith.divsi %c2135986617_i64, %c2135986617_i64 : i64
        %275 = index.divu %60, %c8
        %c973846010_i64 = arith.constant 973846010 : i64
        %276 = vector.matrix_multiply %19, %19 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
        %277 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %278 = vector.extract_strided_slice %43 {offsets = [11], sizes = [3], strides = [1]} : vector<14xi1> to vector<3xi1>
        %279 = vector.broadcast %c1896993623_i32 : i32 to vector<i32>
        %280 = vector.transfer_write %279, %4[%c5] : vector<i32>, tensor<9xi32>
        %281 = arith.remf %extracted, %extracted : f32
        %282 = math.rsqrt %22 : tensor<f32>
        %283 = vector.bitcast %62 : vector<14x14xi16> to vector<14x14xi16>
        %284 = math.rsqrt %5 : tensor<9xf32>
        scf.yield %alloc_6 : memref<14x14xi1>
      }
      %264 = math.powf %6, %17 : tensor<14xf16>
      %265 = affine.for %arg1 = 0 to 48 iter_args(%arg2 = %19) -> (vector<11xi32>) {
        affine.yield %19 : vector<11xi32>
      }
      %266 = vector.broadcast %cst_0 : f32 to vector<9xf32>
      %267 = vector.broadcast %c1896993623_i32 : i32 to vector<9xi32>
      %268 = vector.gather %63[%c15, %60] [%267], %28, %266 : memref<14x14xf32>, vector<9xi32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %269 = arith.shrsi %false, %false : i1
      %270 = index.divu %c9, %c8
      scf.yield
    }
    case 3 {
      %254 = arith.ori %c11664_i16, %c11664_i16 : i16
      %255 = vector.broadcast %c-8044_i16 : i16 to vector<14xi16>
      %256 = vector.maskedload %alloc_4[%c0], %43, %255 : memref<14xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %257 = tensor.empty() : tensor<9xi1>
      %258 = arith.remf %cst_1, %cst_1 : f16
      bufferization.dealloc_tensor %13 : tensor<14x14xi64>
      %259 = math.absf %11 : tensor<9xf16>
      %generated_43 = tensor.generate %c15 {
      ^bb0(%arg1: index):
        %267 = arith.divf %cst, %cst_0 : f32
        %268 = index.divs %c7, %c2
        %269 = bufferization.to_tensor %alloc_7 : memref<14x14xi64>
        %extracted_45 = tensor.extract %6[%c6] : tensor<14xf16>
        tensor.yield %c2135986617_i64 : i64
      } : tensor<?xi64>
      %260 = arith.maxsi %c2135986617_i64, %c2135986617_i64 : i64
      %261 = arith.shrsi %c-8044_i16, %c-8044_i16 : i16
      %262 = bufferization.to_tensor %37 : memref<9xi16>
      %extracted_44 = tensor.extract %15[%c3] : tensor<9xf32>
      memref.store %false, %alloc_15[%c7] : memref<9xi1>
      %263 = arith.cmpi uge, %c-8044_i16, %c-8044_i16 : i16
      %264 = scf.while (%arg1 = %47) : (vector<14x14xi1>) -> vector<14x14xi1> {
        %267 = arith.maxsi %c-8044_i16, %c-8044_i16 : i16
        %268 = math.atan2 %cst_2, %cst : f32
        %269 = vector.maskedload %alloc_17[%c1], %43, %42 : memref<9xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %270 = math.log2 %cst_0 : f32
        %271 = vector.shuffle %23, %23 [0, 1] : vector<i32>, vector<i32>
        memref.store %extracted, %63[%c8, %c6] : memref<14x14xf32>
        %272 = math.powf %15, %15 : tensor<9xf32>
        %273 = tensor.empty() : tensor<14x14xi64>
        %274 = linalg.matmul ins(%13, %1 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%273 : tensor<14x14xi64>) -> tensor<14x14xi64>
        scf.condition(%false) %47 : vector<14x14xi1>
      } do {
      ^bb0(%arg1: vector<14x14xi1>):
        %267 = bufferization.clone %alloc_16 : memref<9xi1> to memref<9xi1>
        %268 = vector.reduction <or>, %43 : vector<14xi1> into i1
        %269 = arith.minui %c976833789_i64, %c976833789_i64 : i64
        %270 = index.maxs %c13, %53
        %271 = math.cos %15 : tensor<9xf32>
        %272 = bufferization.to_tensor %alloc_13 : memref<14x14xf32>
        %273 = math.fpowi %transposed, %12 : tensor<14x14xf32>, tensor<14x14xi32>
        %274 = math.rsqrt %cst_2 : f32
        %inserted_45 = tensor.insert %c-19317_i16 into %14[%c11] : tensor<14xi16>
        %275 = index.ceildivu %c15, %c10
        %276 = memref.realloc %alloc_5 : memref<9xi16> to memref<9xi16>
        %277 = vector.reduction <and>, %255 : vector<14xi16> into i16
        %278 = arith.divf %cst_1, %cst_1 : f16
        %279 = vector.matrix_multiply %43, %28 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 9 : i32} : (vector<14xi1>, vector<9xi1>) -> vector<126xi1>
        %280 = arith.floordivsi %c2038868897_i32, %c2038868897_i32 : i32
        %281 = vector.matrix_multiply %42, %42 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
        scf.yield %47 : vector<14x14xi1>
      }
      %265 = tensor.empty() : tensor<9xi1>
      %266 = math.copysign %6, %17 : tensor<14xf16>
      scf.yield
    }
    default {
      %254 = arith.maxsi %c1896993623_i32, %c1896993623_i32 : i32
      %255 = arith.minf %cst_1, %cst_1 : f16
      %256 = scf.if %false -> (i32) {
        %265 = math.fpowi %extracted, %c2038868897_i32 : f32, i32
        %266 = index.add %c13, %51
        %267 = arith.cmpi ne, %c10841_i16, %c10841_i16 : i16
        %268 = vector.multi_reduction <xor>, %43, %false [0] : vector<14xi1> to i1
        %269 = math.ctpop %c4658_i16 : i16
        %270 = arith.minui %false, %268 : i1
        %271 = bufferization.to_tensor %alloc_11 : memref<14x14xi32>
        %272 = vector.reduction <maxsi>, %42 : vector<14xi32> into i32
        scf.yield %c846129297_i32 : i32
      } else {
        %c1_i16_47 = arith.constant 1 : i16
        %265 = vector.transfer_read %8[%c4], %c1_i16_47 : tensor<9xi16>, vector<i16>
        %266 = arith.floordivsi %c-19317_i16, %c-19317_i16 : i16
        %267 = vector.broadcast %c1_i16_47 : i16 to vector<14xi16>
        %268 = vector.multi_reduction <minui>, %62, %267 [1] : vector<14x14xi16> to vector<14xi16>
        %269 = math.round %18 : tensor<14x14xf32>
        %270 = bufferization.to_memref %8 : memref<9xi16>
        %271 = index.sub %c0, %51
        %272 = vector.broadcast %c2038868897_i32 : i32 to vector<i32>
        vector.transfer_write %272, %alloc_17[%c15] : vector<i32>, memref<9xi32>
        %273 = arith.remf %cst_2, %cst : f32
        scf.yield %c2038868897_i32 : i32
      }
      %257 = math.exp2 %cst_2 : f32
      %extracted_43 = tensor.extract %14[%c11] : tensor<14xi16>
      %258 = math.atan2 %6, %16 : tensor<14xf16>
      %generated_44 = tensor.generate %c0 {
      ^bb0(%arg1: index):
        %265 = vector.broadcast %c10841_i16 : i16 to vector<9xi16>
        %266 = memref.realloc %alloc_8 : memref<9xi32> to memref<14xi32>
        %267 = math.floor %cst : f32
        %268 = memref.realloc %alloc : memref<9xf16> to memref<8xf16>
        tensor.yield %256 : i32
      } : tensor<?xi32>
      %259 = math.rsqrt %6 : tensor<14xf16>
      %260 = math.cttz %14 : tensor<14xi16>
      %261 = affine.if affine_set<(d0, d1, d2, d3) : (d1 >= 0, d0 + d1 + 16 == 0, d2 * 32 >= 0, d0 == 0)>(%c1, %c6, %c3, %c13) -> i1 {
        %265 = vector.broadcast %c10841_i16 : i16 to vector<14xi16>
        %266 = vector.multi_reduction <maxui>, %62, %265 [1] : vector<14x14xi16> to vector<14xi16>
        %splat = tensor.splat %c-19317_i16 : tensor<14x14xi16>
        %267 = index.sizeof
        %268 = memref.load %alloc_11[%c10, %c2] : memref<14x14xi32>
        %269 = bufferization.to_memref %17 : memref<14xf16>
        %270 = arith.divsi %false, %false : i1
        %271 = math.ipowi %splat, %splat : tensor<14x14xi16>
        %272 = arith.addf %cst_2, %cst : f32
        affine.yield %false : i1
      } else {
        memref.store %c976833789_i64, %alloc_7[%c0, %c4] : memref<14x14xi64>
        %265 = math.copysign %cst, %cst_2 : f32
        %expanded_47 = tensor.expand_shape %7 [[0, 1]] : tensor<9xi32> into tensor<9x1xi32>
        %266 = arith.minui %c29831_i16, %c-8044_i16 : i16
        %inserted_48 = tensor.insert %c1896993623_i32 into %56[%c5, %c0] : tensor<14x14xi32>
        %267 = math.exp %5 : tensor<9xf32>
        %268 = index.casts %c4658_i16 : i16 to index
        %extracted_49 = tensor.extract %22[] : tensor<f32>
        affine.yield %false : i1
      }
      %collapsed_45 = tensor.collapse_shape %2 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %262 = scf.while (%arg1 = %c-8044_i16) : (i16) -> i16 {
        %265 = math.ipowi %c4658_i16, %c-19317_i16 : i16
        %266 = math.floor %17 : tensor<14xf16>
        %267 = vector.insertelement %c2038868897_i32, %19[%c7 : index] : vector<11xi32>
        %268 = math.exp2 %15 : tensor<9xf32>
        %cst_47 = arith.constant 0x4E430B58 : f32
        %collapsed_48 = tensor.collapse_shape %56 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
        %269 = vector.broadcast %c2135986617_i64 : i64 to vector<11xi64>
        %270 = vector.transfer_write %269, %13[%c15, %51] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi64>, tensor<14x14xi64>
        %271 = math.absf %extracted : f32
        scf.condition(%false) %extracted_43 : i16
      } do {
      ^bb0(%arg1: i16):
        %expanded_47 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
        %265 = vector.splat %c15 : vector<14x14xindex>
        %extracted_48 = tensor.extract %transposed[%c8, %c4] : tensor<14x14xf32>
        %266 = arith.ori %c2038868897_i32, %c1896993623_i32 : i32
        %267 = vector.insert %43, %47 [7] : vector<14xi1> into vector<14x14xi1>
        %268 = arith.ori %false, %false : i1
        %269 = arith.remui %extracted_43, %arg1 : i16
        %270 = bufferization.to_tensor %alloc_3 : memref<9xi16>
        %271 = arith.cmpi sle, %arg1, %c11664_i16 : i16
        %272 = vector.create_mask %c6, %51 : vector<14x14xi1>
        %273 = arith.shli %arg1, %extracted_43 : i16
        %274 = arith.divsi %c11664_i16, %c4658_i16 : i16
        %275 = arith.negf %cst_2 : f32
        %276 = arith.mulf %extracted_48, %cst_0 : f32
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %47, %272, %47 : vector<14x14xi1>, vector<14x14xi1> into vector<14x14xi1>
        %278 = vector.extract %47[12] : vector<14x14xi1>
        scf.yield %c10841_i16 : i16
      }
      %cst_46 = arith.constant 0x4D8BBB20 : f32
      memref.copy %alloc_17, %alloc_8 : memref<9xi32> to memref<9xi32>
      %263 = bufferization.to_memref %15 : memref<9xf32>
      %264 = vector.reduction <mul>, %44 : vector<14xi32> into i32
    }
    %64 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %44, %42, %c1896993623_i32 : vector<14xi32>, vector<14xi32> into i32
    %65 = math.round %15 : tensor<9xf32>
    %66 = index.divs %c0, %c14
    %67 = arith.shrui %c29831_i16, %c-8044_i16 : i16
    %68 = tensor.empty() : tensor<14xi32>
    %69 = math.fpowi %17, %68 : tensor<14xf16>, tensor<14xi32>
    %70 = math.exp2 %cst : f32
    %71 = scf.while (%arg1 = %alloc_3) : (memref<9xi16>) -> memref<9xi16> {
      memref.assume_alignment %alloc_14, 16 : memref<9xi1>
      %254 = vector.splat %c9 : vector<14x14xindex>
      %255 = memref.atomic_rmw addi %c-8044_i16, %alloc_5[%c4] : (i16, memref<9xi16>) -> i16
      %256 = arith.subi %c11664_i16, %c10841_i16 : i16
      %257 = memref.realloc %alloc_16 : memref<9xi1> to memref<11xi1>
      %258 = math.round %15 : tensor<9xf32>
      %259 = vector.create_mask %51 : vector<9xi1>
      %260 = vector.extract %259[0] : vector<9xi1>
      scf.condition(%false) %alloc_3 : memref<9xi16>
    } do {
    ^bb0(%arg1: memref<9xi16>):
      %254 = math.absf %cst_1 : f16
      %inserted_43 = tensor.insert %c976833789_i64 into %33[%c11, %c8] : tensor<14x14xi64>
      %255 = arith.cmpi sgt, %c1896993623_i32, %c1896993623_i32 : i32
      %256 = affine.load %arg1[%c6] : memref<9xi16>
      memref.copy %63, %alloc_13 : memref<14x14xf32> to memref<14x14xf32>
      %257 = vector.multi_reduction <minui>, %42, %42 [] : vector<14xi32> to vector<14xi32>
      %258 = affine.for %arg2 = 0 to 15 iter_args(%arg3 = %43) -> (vector<14xi1>) {
        affine.yield %43 : vector<14xi1>
      }
      %259 = math.exp %15 : tensor<9xf32>
      %260 = memref.atomic_rmw maxf %extracted, %alloc_13[%c12, %c9] : (f32, memref<14x14xf32>) -> f32
      %261 = arith.cmpi ugt, %c29831_i16, %c10841_i16 : i16
      %262 = vector.splat %cst_1 : vector<14xf16>
      %263 = arith.maxui %c11664_i16, %c11664_i16 : i16
      %264 = bufferization.to_memref %2 : memref<14x14xf32>
      %265 = index.divu %c6, %c8
      %266 = vector.insert %false, %28 [6] : i1 into vector<9xi1>
      affine.for %arg2 = 0 to 90 {
      }
      scf.yield %alloc_5 : memref<9xi16>
    }
    %72 = arith.divf %cst_1, %cst_1 : f16
    %73 = affine.apply affine_map<(d0, d1) -> (d1 mod 8)>(%c3, %c1)
    %cst_20 = arith.constant 1.14491789E+9 : f32
    %74 = math.cttz %c4658_i16 : i16
    %75 = math.atan2 %17, %16 : tensor<14xf16>
    bufferization.dealloc_tensor %10 : tensor<14xi16>
    %76 = index.maxu %51, %c12
    %c1_i16 = arith.constant 1 : i16
    %77 = vector.transfer_read %37[%c15], %c1_i16 : memref<9xi16>, vector<i16>
    %78 = math.log %5 : tensor<9xf32>
    %79 = arith.remf %cst, %cst_2 : f32
    %80 = vector.reduction <or>, %44 : vector<14xi32> into i32
    %inserted = tensor.insert %false into %3[%c2] : tensor<14xi1>
    %81 = vector.broadcast %c-19317_i16 : i16 to vector<i16>
    %82 = vector.transfer_write %81, %10[%53] : vector<i16>, tensor<14xi16>
    %83 = bufferization.to_tensor %alloc_4 : memref<14xi16>
    %generated = tensor.generate %c14 {
    ^bb0(%arg1: index):
      %254 = math.rsqrt %cst_0 : f32
      %255 = vector.broadcast %c-19317_i16 : i16 to vector<14xi16>
      %dest_43, %accumulated_value_44 = vector.scan <or>, %62, %255 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi16>, vector<14xi16>
      %collapsed_45 = tensor.collapse_shape %transposed [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %256 = arith.minui %c976833789_i64, %c2135986617_i64 : i64
      tensor.yield %cst_2 : f32
    } : tensor<?xf32>
    %84 = arith.shrsi %c846129297_i32, %c846129297_i32 : i32
    %85 = arith.floordivsi %c1_i16, %c4658_i16 : i16
    %86 = affine.for %arg1 = 0 to 92 iter_args(%arg2 = %2) -> (tensor<14x14xf32>) {
      affine.yield %transposed : tensor<14x14xf32>
    }
    %87 = math.ceil %11 : tensor<9xf16>
    memref.store %false, %alloc_15[%c7] : memref<9xi1>
    %c0_i32 = arith.constant 0 : i32
    %88 = vector.transfer_read %alloc_8[%c13], %c0_i32 : memref<9xi32>, vector<i32>
    %89 = math.rsqrt %cst_2 : f32
    %90 = math.sqrt %15 : tensor<9xf32>
    %91 = arith.subi %c-19317_i16, %c29831_i16 : i16
    %generated_21 = tensor.generate %c4 {
    ^bb0(%arg1: index):
      %254 = math.floor %17 : tensor<14xf16>
      %255 = math.fma %15, %15, %15 : tensor<9xf32>
      %256 = arith.remui %c-19317_i16, %c11664_i16 : i16
      %257 = vector.broadcast %c1_i16 : i16 to vector<i16>
      %258 = vector.transfer_write %257, %10[%arg1] : vector<i16>, tensor<14xi16>
      tensor.yield %c-8044_i16 : i16
    } : tensor<?xi16>
    %92 = arith.ceildivsi %c-19317_i16, %c1_i16 : i16
    %93 = arith.cmpi uge, %c-19317_i16, %c-8044_i16 : i16
    %94 = vector.create_mask %c8, %c9 : vector<14x14xi1>
    %95 = memref.realloc %alloc_14 : memref<9xi1> to memref<11xi1>
    %96 = affine.if affine_set<(d0, d1, d2) : (d0 >= 0, ((d1 - 16) ceildiv 2) floordiv 2 >= 0, d1 floordiv 8 + 8 == 0, d1 floordiv 4 - 4 == 0)>(%c8, %c2, %c7) -> i16 {
      %254 = vector.broadcast %c11664_i16 : i16 to vector<i16>
      vector.transfer_write %254, %alloc_3[%53] : vector<i16>, memref<9xi16>
      %255 = math.cttz %collapsed : tensor<196xi64>
      %256 = arith.addf %cst, %cst_0 : f32
      %cst_43 = arith.constant 1.000000e+00 : f32
      %cst_44 = arith.constant 0.000000e+00 : f32
      %257 = vector.transfer_read %18[%c4, %c6], %cst_44 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<14x14xf32>, vector<9xf32>
      %258 = memref.realloc %alloc_17 : memref<9xi32> to memref<9xi32>
      %259 = index.sub %c1, %c1
      %260 = vector.splat %76 : vector<14xindex>
      scf.if %false {
        %splat = tensor.splat %cst_1 : tensor<9xf16>
        %c0_i16 = arith.constant 0 : i16
        %261 = vector.transfer_read %alloc_3[%51], %c0_i16 : memref<9xi16>, vector<i16>
        %262 = arith.cmpf true, %extracted, %cst_43 : f32
        %263 = math.ipowi %c0_i32, %c846129297_i32 : i32
        %264 = vector.splat %c1_i16 : vector<9xi16>
        %265 = memref.load %alloc_7[%c4, %c12] : memref<14x14xi64>
        %266 = arith.maxf %cst_2, %cst_43 : f32
        %267 = math.tan %6 : tensor<14xf16>
      }
      affine.yield %c-19317_i16 : i16
    } else {
      %254 = arith.ceildivsi %c11664_i16, %c11664_i16 : i16
      %generated_43 = tensor.generate %c3 {
      ^bb0(%arg1: index):
        %259 = arith.maxsi %c11664_i16, %c11664_i16 : i16
        %260 = math.rsqrt %cst_2 : f32
        %expanded_45 = tensor.expand_shape %7 [[0, 1]] : tensor<9xi32> into tensor<9x1xi32>
        %261 = vector.broadcast %cst_1 : f16 to vector<14xf16>
        tensor.yield %c4658_i16 : i16
      } : tensor<?xi16>
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %42, %44, %c0_i32 : vector<14xi32>, vector<14xi32> into i32
      %256 = vector.matrix_multiply %19, %42 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 14 : i32} : (vector<11xi32>, vector<14xi32>) -> vector<154xi32>
      %257 = memref.alloca_scope  -> (memref<9xi1>) {
        %259 = arith.remf %cst, %cst : f32
        %260 = arith.ori %c0_i32, %c0_i32 : i32
        %261 = tensor.empty() : tensor<i32>
        %262 = math.fpowi %21, %261 : tensor<f32>, tensor<i32>
        %263 = affine.load %alloc_7[%c5, %c11] : memref<14x14xi64>
        %264 = vector.broadcast %c1_i16 : i16 to vector<14xi16>
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %62, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi16>, vector<14xi16>
        %265 = math.round %cst_2 : f32
        %266 = vector.broadcast %c2038868897_i32 : i32 to vector<9xi32>
        %267 = vector.gather %alloc_15[%c0] [%266], %28, %28 : memref<9xi1>, vector<9xi32>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %268 = arith.minf %cst_0, %cst_0 : f32
        %269 = vector.reduction <mul>, %28 : vector<9xi1> into i1
        %dest_47, %accumulated_value_48 = vector.scan <or>, %94, %43 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
        %270 = math.absi %8 : tensor<9xi16>
        %271 = arith.divsi %c1896993623_i32, %c0_i32 : i32
        %272 = arith.maxsi %c2135986617_i64, %263 : i64
        %273 = arith.minui %c11664_i16, %c-8044_i16 : i16
        %274 = arith.minf %cst, %extracted : f32
        %275 = arith.divsi %c976833789_i64, %c2135986617_i64 : i64
        %expanded_49 = tensor.expand_shape %14 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %276 = vector.multi_reduction <mul>, %47, %false [0, 1] : vector<14x14xi1> to i1
        %277 = arith.remui %c2038868897_i32, %c2038868897_i32 : i32
        %278 = arith.subi %c4658_i16, %c29831_i16 : i16
        %279 = arith.cmpi ne, %c1896993623_i32, %c1896993623_i32 : i32
        %280 = math.ipowi %8, %8 : tensor<9xi16>
        %281 = vector.bitcast %43 : vector<14xi1> to vector<14xi1>
        bufferization.dealloc_tensor %0 : tensor<9xi64>
        %alloc_50 = memref.alloc() : memref<i16>
        memref.copy %alloc_18, %alloc_50 : memref<i16> to memref<i16>
        %282 = arith.maxsi %276, %false : i1
        %283 = index.maxs %c12, %c10
        %284 = arith.floordivsi %c2135986617_i64, %263 : i64
        memref.copy %37, %alloc_5 : memref<9xi16> to memref<9xi16>
        %285 = index.divu %c0, %c10
        %286 = arith.ceildivsi %276, %false : i1
        %false_51 = index.bool.constant false
        memref.alloca_scope.return %alloc_15 : memref<9xi1>
      }
      %258 = math.log1p %11 : tensor<9xf16>
      memref.store %c11664_i16, %alloc_5[%c7] : memref<9xi16>
      %generated_44 = tensor.generate %66 {
      ^bb0(%arg1: index, %arg2: index):
        %259 = arith.divsi %c29831_i16, %c4658_i16 : i16
        %260 = tensor.empty() : tensor<14x14xf32>
        %261 = linalg.matmul ins(%2, %2 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%260 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %262 = index.sub %arg1, %c13
        %cst_45 = arith.constant 1.000000e+00 : f32
        %cst_46 = arith.constant 0.000000e+00 : f32
        %263 = vector.transfer_read %2[%66, %66], %cst_46 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xf32>, vector<9xf32>
        tensor.yield %cst_1 : f16
      } : tensor<?x14xf16>
      affine.yield %c10841_i16 : i16
    }
    %97 = arith.subi %c2038868897_i32, %c2038868897_i32 : i32
    %inserted_22 = tensor.insert %cst_1 into %16[%c11] : tensor<14xf16>
    %c0_i32_23 = arith.constant 0 : i32
    %c0_i32_24 = arith.constant 0 : i32
    %98 = vector.transfer_read %56[%c10, %73], %c0_i32_24 : tensor<14x14xi32>, vector<i32>
    %99 = vector.multi_reduction <maxui>, %47, %43 [1] : vector<14x14xi1> to vector<14xi1>
    %100 = math.tanh %2 : tensor<14x14xf32>
    %101 = index.sub %c12, %66
    %102 = math.copysign %17, %17 : tensor<14xf16>
    %103 = math.powf %11, %11 : tensor<9xf16>
    %104 = vector.broadcast %cst : f32 to vector<14x14xf32>
    %105 = vector.fma %104, %104, %104 : vector<14x14xf32>
    %106 = vector.insertelement %false, %43[%c7 : index] : vector<14xi1>
    %107 = math.ipowi %collapsed, %collapsed : tensor<196xi64>
    %alloc_25 = memref.alloc() : memref<9xf16>
    %108 = arith.minsi %c1_i16, %c10841_i16 : i16
    %alloc_26 = memref.alloc() : memref<9xi32>
    %109 = math.atan2 %5, %20 : tensor<9xf32>
    %110 = vector.broadcast %cst_0 : f32 to vector<f32>
    vector.transfer_write %110, %alloc_13[%c15, %51] : vector<f32>, memref<14x14xf32>
    %111 = math.atan %2 : tensor<14x14xf32>
    %112 = math.exp2 %transposed : tensor<14x14xf32>
    %113 = affine.if affine_set<(d0, d1) : (-(d0 floordiv 2 - (d0 + d0 floordiv 2)) - d1 mod 64 == 0, d0 + d0 floordiv 2 >= 0, (d0 floordiv 2) mod 32 - 32 >= 0, -(d0 floordiv 2 - (d0 + d0 floordiv 2)) >= 0)>(%c14, %c6) -> memref<14xf16> {
      %254 = scf.while (%arg1 = %c976833789_i64) : (i64) -> i64 {
        %262 = memref.atomic_rmw maxu %c2038868897_i32, %alloc_11[%c4, %c8] : (i32, memref<14x14xi32>) -> i32
        %splat = tensor.splat %cst : tensor<14x14xf32>
        %263 = math.rsqrt %cst : f32
        memref.copy %alloc_14, %alloc_15 : memref<9xi1> to memref<9xi1>
        %264 = math.rsqrt %cst_2 : f32
        affine.store %false, %alloc_15[%c8] : memref<9xi1>
        %265 = arith.divf %cst, %cst_0 : f32
        %266 = index.divs %c14, %c1
        scf.condition(%false) %c976833789_i64 : i64
      } do {
      ^bb0(%arg1: i64):
        %262 = index.maxs %c7, %c8
        %263 = math.rsqrt %21 : tensor<f32>
        %264 = math.log %2 : tensor<14x14xf32>
        %265 = index.divu %60, %c9
        %266 = vector.create_mask %c6, %66 : vector<14x14xi1>
        %267 = math.round %6 : tensor<14xf16>
        %268 = arith.floordivsi %c-8044_i16, %c4658_i16 : i16
        %269 = math.copysign %11, %11 : tensor<9xf16>
        %270 = vector.splat %c2135986617_i64 : vector<14x14xi64>
        %271 = arith.floordivsi %false, %false : i1
        %272 = bufferization.to_tensor %63 : memref<14x14xf32>
        %273 = arith.minui %c846129297_i32, %c1896993623_i32 : i32
        %expanded_44 = tensor.expand_shape %10 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %274 = math.absi %false : i1
        %275 = math.rsqrt %11 : tensor<9xf16>
        memref.assume_alignment %alloc_15, 1 : memref<9xi1>
        scf.yield %c2135986617_i64 : i64
      }
      %255 = arith.ceildivsi %c-19317_i16, %c10841_i16 : i16
      %256 = math.floor %5 : tensor<9xf32>
      %257 = math.atan %5 : tensor<9xf32>
      %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %28, %28, %false : vector<9xi1>, vector<9xi1> into i1
      %259 = arith.minui %c976833789_i64, %c2135986617_i64 : i64
      %260 = index.maxu %c13, %c14
      %261 = vector.transpose %43, [0] : vector<14xi1> to vector<14xi1>
      %alloc_43 = memref.alloc() : memref<14xf16>
      affine.yield %alloc_43 : memref<14xf16>
    } else {
      %254 = math.atan2 %11, %11 : tensor<9xf16>
      %255 = scf.while (%arg1 = %81) : (vector<i16>) -> vector<i16> {
        %262 = math.floor %6 : tensor<14xf16>
        %263 = math.round %20 : tensor<9xf32>
        %264 = arith.maxsi %c11664_i16, %c4658_i16 : i16
        %265 = math.log2 %11 : tensor<9xf16>
        %266 = math.sqrt %15 : tensor<9xf32>
        %267 = arith.remf %cst_1, %cst_1 : f16
        %268 = math.absf %21 : tensor<f32>
        %269 = arith.minf %extracted, %cst_0 : f32
        scf.condition(%false) %81 : vector<i16>
      } do {
      ^bb0(%arg1: vector<i16>):
        memref.assume_alignment %alloc_11, 4 : memref<14x14xi32>
        %262 = math.cttz %collapsed : tensor<196xi64>
        %263 = tensor.empty() : tensor<9xi64>
        %264 = index.castu %c5 : index to i32
        %265 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %dest_46, %accumulated_value_47 = vector.scan <add>, %104, %265 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
        %inserted_48 = tensor.insert %c-8044_i16 into %generated_21[%c0] : tensor<?xi16>
        %extracted_49 = tensor.extract %3[%c7] : tensor<14xi1>
        %266 = math.absf %cst_1 : f16
        %267 = affine.apply affine_map<(d0, d1, d2) -> ((-d0) mod 32)>(%c14, %c3, %c14)
        %268 = math.sqrt %5 : tensor<9xf32>
        %269 = math.cos %22 : tensor<f32>
        %270 = arith.floordivsi %c11664_i16, %c-19317_i16 : i16
        %271 = math.roundeven %21 : tensor<f32>
        %272 = vector.extract %47[2] : vector<14x14xi1>
        %273 = arith.ori %c976833789_i64, %c976833789_i64 : i64
        %274 = math.rsqrt %5 : tensor<9xf32>
        scf.yield %81 : vector<i16>
      }
      %256 = math.atan %6 : tensor<14xf16>
      %257 = arith.subi %c1896993623_i32, %c0_i32_23 : i32
      %258 = vector.splat %c3 : vector<14x14xindex>
      %259 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      %dest_43, %accumulated_value_44 = vector.scan <add>, %104, %259 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
      %260 = index.sub %c1, %c15
      %261 = math.cttz %c0_i32 : i32
      %alloc_45 = memref.alloc() : memref<14xf16>
      affine.yield %alloc_45 : memref<14xf16>
    }
    %114 = math.cttz %14 : tensor<14xi16>
    %115 = arith.maxf %cst_1, %cst_1 : f16
    %116 = arith.ori %c10841_i16, %c11664_i16 : i16
    %117 = arith.ceildivsi %c0_i32_23, %c0_i32_23 : i32
    %118 = memref.realloc %alloc_3 : memref<9xi16> to memref<8xi16>
    %119 = arith.subi %c11664_i16, %c10841_i16 : i16
    %120 = math.exp2 %17 : tensor<14xf16>
    %121 = math.fma %22, %22, %22 : tensor<f32>
    %122 = index.divu %73, %c5
    %cst_27 = arith.constant 1.000000e+00 : f32
    %123 = vector.transfer_read %2[%c13, %c10], %cst_27 : tensor<14x14xf32>, vector<f32>
    %124 = arith.cmpf ueq, %cst_2, %cst_27 : f32
    %125 = affine.load %63[%c4, %c13] : memref<14x14xf32>
    %126 = vector.extract %47[9] : vector<14x14xi1>
    %127 = index.divu %101, %51
    %128 = bufferization.to_memref %68 : memref<14xi32>
    %129 = math.absf %18 : tensor<14x14xf32>
    %130 = index.sub %53, %c8
    %131 = scf.while (%arg1 = %cst_2) : (f32) -> f32 {
      vector.print %23 : vector<i32>
      %254 = vector.broadcast %c11664_i16 : i16 to vector<14x14xi16>
      %255 = arith.ori %c2038868897_i32, %c846129297_i32 : i32
      %256 = vector.matrix_multiply %44, %44 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
      %inserted_43 = tensor.insert %arg1 into %transposed[%c6, %c3] : tensor<14x14xf32>
      %257 = arith.shrsi %c-19317_i16, %c4658_i16 : i16
      %258 = math.ipowi %0, %0 : tensor<9xi64>
      %259 = vector.broadcast %c846129297_i32 : i32 to vector<8xi32>
      %260 = vector.broadcast %false : i1 to vector<8xi1>
      %261 = vector.maskedload %128[%c6], %260, %259 : memref<14xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      scf.condition(%false) %arg1 : f32
    } do {
    ^bb0(%arg1: f32):
      %cst_43 = arith.constant 4.208000e+04 : f16
      %extracted_44 = tensor.extract %33[%c3, %c0] : tensor<14x14xi64>
      %254 = bufferization.to_tensor %128 : memref<14xi32>
      %255 = math.atan %6 : tensor<14xf16>
      %256 = vector.broadcast %c0_i32_23 : i32 to vector<i32>
      %257 = vector.transfer_write %256, %254[%c14] : vector<i32>, tensor<14xi32>
      %258 = math.copysign %cst_0, %cst_2 : f32
      %259 = vector.bitcast %44 : vector<14xi32> to vector<14xi32>
      %260 = math.ipowi %4, %4 : tensor<9xi32>
      %261 = arith.minui %c1896993623_i32, %c1896993623_i32 : i32
      %262 = arith.divf %arg1, %cst_2 : f32
      %263 = arith.subi %c11664_i16, %c10841_i16 : i16
      %264 = affine.if affine_set<(d0) : (-(-d0 + (-(-d0 - 32)) floordiv 64 - 32) == 0, -(-d0 - 32) + 16 == 0, d0 >= 0, -d0 + 32 == 0)>(%c14) -> memref<9xi1> {
        %268 = memref.load %37[%c7] : memref<9xi16>
        %269 = math.atan %17 : tensor<14xf16>
        %270 = math.fpowi %5, %7 : tensor<9xf32>, tensor<9xi32>
        %extracted_46 = tensor.extract %2[%c2, %c9] : tensor<14x14xf32>
        %271 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 128)>(%c6, %c12, %c2)
        %extracted_47 = tensor.extract %0[%c1] : tensor<9xi64>
        %272 = math.fpowi %extracted_46, %c846129297_i32 : f32, i32
        %true_48 = index.bool.constant true
        affine.yield %alloc_14 : memref<9xi1>
      } else {
        %268 = memref.atomic_rmw assign %cst_2, %63[%c0, %c1] : (f32, memref<14x14xf32>) -> f32
        %269 = vector.load %alloc_17[%c2] : memref<9xi32>, vector<14xi32>
        %270 = vector.load %63[%c5, %c4] : memref<14x14xf32>, vector<9xf32>
        %271 = arith.maxsi %c0_i32_23, %c0_i32 : i32
        %272 = vector.shuffle %94, %94 [2, 4, 5, 6, 7, 10, 11, 12, 13, 14, 17, 18, 20, 21, 23, 26] : vector<14x14xi1>, vector<14x14xi1>
        %extracted_46 = tensor.extract %3[%c10] : tensor<14xi1>
        %273 = arith.remf %cst, %cst_0 : f32
        bufferization.dealloc_tensor %254 : tensor<14xi32>
        affine.yield %alloc_15 : memref<9xi1>
      }
      %265 = index.divu %c14, %c5
      %expanded_45 = tensor.expand_shape %9 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
      %266 = arith.remf %cst_27, %extracted : f32
      %267 = arith.remf %cst_1, %cst_1 : f16
      scf.yield %cst_27 : f32
    }
    %132 = vector.splat %130 : vector<14x14xindex>
    %generated_28 = tensor.generate %c2 {
    ^bb0(%arg1: index):
      affine.for %arg2 = 0 to 69 {
      }
      %from_elements = tensor.from_elements %cst_27, %cst_2, %extracted, %cst_2, %cst, %cst_0, %cst_0, %125, %cst, %cst_27, %cst_2, %cst_2, %cst_0, %extracted : tensor<14xf32>
      %254 = scf.execute_region -> vector<9xi1> {
        bufferization.dealloc_tensor %1 : tensor<14x14xi64>
        %256 = index.sub %60, %arg1
        %257 = affine.load %alloc_12[%c13, %c8] : memref<14x14xi1>
        %258 = math.atan %6 : tensor<14xf16>
        %259 = math.exp %2 : tensor<14x14xf32>
        %260 = math.log2 %21 : tensor<f32>
        %261 = bufferization.to_tensor %alloc_8 : memref<9xi32>
        %262 = arith.divsi %false, %257 : i1
        %263 = arith.cmpf ult, %cst, %cst_27 : f32
        %264 = tensor.empty() : tensor<14x14xf32>
        %265 = linalg.matmul ins(%transposed, %2 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%264 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %266 = vector.broadcast %cst : f32 to vector<9xf32>
        %c0_i16 = arith.constant 0 : i16
        %267 = vector.transfer_read %83[%76], %c0_i16 : tensor<14xi16>, vector<i16>
        %268 = index.divu %c7, %c2
        %269 = vector.broadcast %125 : f32 to vector<14xf32>
        %dest_43, %accumulated_value_44 = vector.scan <mul>, %105, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        memref.store %c29831_i16, %54[%c12] : memref<14xi16>
        %270 = math.round %6 : tensor<14xf16>
        scf.yield %28 : vector<9xi1>
      }
      %255 = arith.maxf %cst_2, %cst_0 : f32
      tensor.yield %c976833789_i64 : i64
    } : tensor<?xi64>
    %133 = arith.maxsi %c1_i16, %c10841_i16 : i16
    memref.store %false, %alloc_6[%c11, %c4] : memref<14x14xi1>
    %134 = arith.minui %c0_i32_23, %c1896993623_i32 : i32
    %135 = math.fpowi %6, %68 : tensor<14xf16>, tensor<14xi32>
    %136 = scf.execute_region -> index {
      %254 = math.absf %16 : tensor<14xf16>
      %255 = index.sizeof
      %256 = index.maxs %51, %255
      memref.copy %alloc_8, %alloc_17 : memref<9xi32> to memref<9xi32>
      memref.store %cst_1, %alloc_9[%c7, %c12] : memref<14x14xf16>
      %257 = math.atan %21 : tensor<f32>
      %258 = index.sizeof
      %extracted_43 = tensor.extract %2[%c2, %c8] : tensor<14x14xf32>
      %extracted_44 = tensor.extract %22[] : tensor<f32>
      %259 = arith.cmpf oeq, %cst_0, %cst_2 : f32
      %260 = arith.ori %c0_i32, %c0_i32 : i32
      %261 = math.rsqrt %2 : tensor<14x14xf32>
      %inserted_45 = tensor.insert %c29831_i16 into %14[%c11] : tensor<14xi16>
      memref.alloca_scope  {
        %264 = math.fpowi %6, %68 : tensor<14xf16>, tensor<14xi32>
        %265 = index.divu %73, %60
        %alloc_46 = memref.alloc() : memref<14xi32>
        memref.store %false, %alloc_6[%c10, %c0] : memref<14x14xi1>
        %266 = vector.insert %43, %47 [12] : vector<14xi1> into vector<14x14xi1>
        %expanded_47 = tensor.expand_shape %0 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
        memref.assume_alignment %alloc_11, 8 : memref<14x14xi32>
        %267 = vector.broadcast %c1896993623_i32 : i32 to vector<14xi32>
        %268 = affine.load %alloc_7[%c15, %c4] : memref<14x14xi64>
        %269 = math.absf %21 : tensor<f32>
        %270 = index.divu %127, %c1
        %271 = arith.ori %c1_i16, %c-8044_i16 : i16
        %272 = arith.addf %cst_0, %cst_27 : f32
        %273 = arith.ori %268, %c2135986617_i64 : i64
        %274 = math.tanh %2 : tensor<14x14xf32>
        %275 = arith.remsi %268, %268 : i64
        %276 = arith.remf %cst_0, %cst_2 : f32
        %277 = arith.cmpi slt, %c2038868897_i32, %c846129297_i32 : i32
        %278 = memref.realloc %alloc_4 : memref<14xi16> to memref<9xi16>
        %279 = arith.ori %c2038868897_i32, %c0_i32 : i32
        %280 = math.atan %cst_27 : f32
        %dest_48, %accumulated_value_49 = vector.scan <or>, %47, %43 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
        %281 = math.tan %extracted : f32
        %282 = vector.broadcast %cst_1 : f16 to vector<9xf16>
        %283 = arith.addi %false, %false : i1
        %284 = bufferization.to_tensor %alloc_10 : memref<14x14xi32>
        %285 = math.fma %extracted, %extracted_44, %extracted : f32
        %286 = arith.cmpf uno, %extracted_44, %125 : f32
        %287 = arith.negf %cst_1 : f16
        %288 = vector.matrix_multiply %267, %44 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
        %289 = vector.extract_strided_slice %104 {offsets = [0], sizes = [6], strides = [1]} : vector<14x14xf32> to vector<6x14xf32>
        %290 = index.sub %c10, %c5
      }
      %262 = vector.reduction <mul>, %28 : vector<9xi1> into i1
      %263 = memref.realloc %alloc_8 : memref<9xi32> to memref<8xi32>
      scf.yield %66 : index
    }
    %137 = arith.addi %c0_i32, %c1896993623_i32 : i32
    %138 = vector.broadcast %c0_i32_23 : i32 to vector<9xi32>
    %139 = affine.load %alloc_7[%c2, %c3] : memref<14x14xi64>
    %dest, %accumulated_value = vector.scan <or>, %47, %43 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
    %140 = arith.addf %cst_27, %cst_27 : f32
    %141 = scf.execute_region -> index {
      %254 = arith.floordivsi %c-19317_i16, %c-19317_i16 : i16
      %255 = math.fma %11, %11, %11 : tensor<9xf16>
      %256 = math.floor %2 : tensor<14x14xf32>
      %257 = vector.shuffle %43, %126 [2, 3, 4, 6, 7, 9, 10, 12, 13, 14, 15, 18, 19, 21, 22, 23, 25, 26] : vector<14xi1>, vector<14xi1>
      %258 = arith.remui %c10841_i16, %c29831_i16 : i16
      scf.execute_region {
        %269 = bufferization.clone %alloc : memref<9xf16> to memref<9xf16>
        memref.store %c2038868897_i32, %alloc_11[%c12, %c12] : memref<14x14xi32>
        %270 = vector.broadcast %cst_1 : f16 to vector<9xf16>
        %271 = vector.maskedload %alloc[%c1], %28, %270 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %272 = vector.broadcast %c11664_i16 : i16 to vector<i16>
        %273 = vector.transfer_write %272, %10[%c4] : vector<i16>, tensor<14xi16>
        %274 = arith.divui %c29831_i16, %c-8044_i16 : i16
        %275 = arith.maxf %cst_0, %cst : f32
        %276 = vector.broadcast %c0_i32_23 : i32 to vector<14xi32>
        %cast = tensor.cast %9 : tensor<14xi16> to tensor<?xi16>
        %c1440713478_i64 = arith.constant 1440713478 : i64
        %277 = math.ipowi %collapsed, %collapsed : tensor<196xi64>
        %278 = vector.multi_reduction <add>, %270, %cst_1 [0] : vector<9xf16> to f16
        %279 = tensor.empty() : tensor<9xf16>
        %280 = math.powf %11, %11 : tensor<9xf16>
        affine.store %125, %alloc_13[%c10, %c11] : memref<14x14xf32>
        %281 = affine.apply affine_map<(d0, d1, d2) -> (-d2 + d0)>(%c12, %127, %76)
        %282 = arith.maxui %139, %c2135986617_i64 : i64
        scf.yield
      }
      %259 = math.log10 %20 : tensor<9xf32>
      %260 = bufferization.clone %alloc_18 : memref<i16> to memref<i16>
      %261 = math.absi %68 : tensor<14xi32>
      %262 = vector.broadcast %c0_i32_23 : i32 to vector<14xi32>
      %263 = arith.shrsi %c11664_i16, %c1_i16 : i16
      %264 = index.sub %c0, %c1
      %265 = math.fma %15, %15, %5 : tensor<9xf32>
      %266 = vector.load %alloc[%c1] : memref<9xf16>, vector<9xf16>
      %267 = arith.remf %125, %125 : f32
      %268 = vector.broadcast %extracted : f32 to vector<14xf32>
      %dest_43, %accumulated_value_44 = vector.scan <minf>, %105, %268 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
      scf.yield %76 : index
    }
    %142 = arith.remui %c-19317_i16, %c-19317_i16 : i16
    affine.store %c29831_i16, %37[%c15] : memref<9xi16>
    vector.print %44 : vector<14xi32>
    %143 = arith.divf %125, %125 : f32
    %144 = math.roundeven %18 : tensor<14x14xf32>
    %collapsed_29 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
    %145 = arith.andi %c2135986617_i64, %139 : i64
    %146 = arith.ceildivsi %c1896993623_i32, %c846129297_i32 : i32
    %inserted_30 = tensor.insert %c4658_i16 into %83[%c4] : tensor<14xi16>
    %147 = bufferization.to_memref %6 : memref<14xf16>
    %148 = math.tanh %6 : tensor<14xf16>
    %149 = arith.divsi %c0_i32_23, %c0_i32 : i32
    bufferization.dealloc_tensor %10 : tensor<14xi16>
    %150 = vector.insert %126, %47 [13] : vector<14xi1> into vector<14x14xi1>
    %151 = bufferization.to_tensor %alloc_4 : memref<14xi16>
    %152 = arith.ori %c0_i32_23, %c846129297_i32 : i32
    %153 = vector.multi_reduction <maxui>, %138, %138 [] : vector<9xi32> to vector<9xi32>
    %154 = arith.cmpf ult, %cst_2, %cst_0 : f32
    %155 = affine.for %arg1 = 0 to 56 iter_args(%arg2 = %6) -> (tensor<14xf16>) {
      affine.yield %6 : tensor<14xf16>
    }
    bufferization.dealloc_tensor %collapsed_29 : tensor<196xi64>
    %156 = arith.subi %c11664_i16, %c10841_i16 : i16
    %157 = math.rsqrt %2 : tensor<14x14xf32>
    %158 = vector.broadcast %125 : f32 to vector<9xf32>
    %inserted_31 = tensor.insert %cst_1 into %11[%c7] : tensor<9xf16>
    %159 = arith.maxsi %c0_i32_23, %c0_i32 : i32
    %160 = math.rsqrt %cst_0 : f32
    %161 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 128)>(%60, %c15, %c11)
    %162 = vector.reduction <and>, %138 : vector<9xi32> into i32
    %163 = scf.while (%arg1 = %c-19317_i16) : (i16) -> i16 {
      %254 = bufferization.to_memref %0 : memref<9xi64>
      %255 = vector.matrix_multiply %42, %44 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %105, %104, %104 : vector<14x14xf32>, vector<14x14xf32> into vector<14x14xf32>
      %257 = math.rsqrt %15 : tensor<9xf32>
      %258 = bufferization.to_tensor %147 : memref<14xf16>
      bufferization.dealloc_tensor %6 : tensor<14xf16>
      %259 = arith.remf %cst, %cst : f32
      %260 = arith.addf %125, %cst_2 : f32
      scf.condition(%false) %c-19317_i16 : i16
    } do {
    ^bb0(%arg1: i16):
      %c39 = arith.constant 39 : index
      %extracted_43 = tensor.extract %collapsed[%c39] : tensor<196xi64>
      %254 = math.roundeven %11 : tensor<9xf16>
      %255 = math.log2 %15 : tensor<9xf32>
      %256 = arith.divf %cst_0, %cst_0 : f32
      %expanded_44 = tensor.expand_shape %9 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
      %257 = arith.remf %cst_27, %extracted : f32
      %258 = math.cttz %10 : tensor<14xi16>
      %259 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %104, %104, %105 : vector<14x14xf32>, vector<14x14xf32> into vector<14x14xf32>
      %260 = math.cttz %56 : tensor<14x14xi32>
      %261 = vector.broadcast %c11664_i16 : i16 to vector<14xi16>
      bufferization.dealloc_tensor %1 : tensor<14x14xi64>
      %262 = vector.matrix_multiply %126, %43 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %263 = affine.for %arg2 = 0 to 52 iter_args(%arg3 = %alloc_9) -> (memref<14x14xf16>) {
        affine.yield %arg3 : memref<14x14xf16>
      }
      %264 = index.casts %c10841_i16 : i16 to index
      %265 = math.absf %20 : tensor<9xf32>
      %266 = arith.mulf %cst_1, %cst_1 : f16
      scf.yield %c1_i16 : i16
    }
    %164 = vector.multi_reduction <or>, %28, %28 [] : vector<9xi1> to vector<9xi1>
    %165 = math.tanh %cst_1 : f16
    %166 = math.log %cst : f32
    %167 = vector.broadcast %cst_2 : f32 to vector<14xf32>
    %dest_32, %accumulated_value_33 = vector.scan <add>, %105, %167 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
    %168 = affine.for %arg1 = 0 to 45 iter_args(%arg2 = %alloc_13) -> (memref<14x14xf32>) {
      affine.yield %arg2 : memref<14x14xf32>
    }
    %169 = scf.while (%arg1 = %cst) : (f32) -> f32 {
      %c-30322_i16 = arith.constant -30322 : i16
      %254 = index.ceildivu %c0, %c8
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %255 = vector.transfer_read %collapsed_29[%136], %c0_i64 : tensor<196xi64>, vector<i64>
      scf.index_switch %c6 
      case 1 {
        %260 = vector.broadcast %cst_1 : f16 to vector<f16>
        %261 = vector.transfer_write %260, %6[%53] : vector<f16>, tensor<14xf16>
        memref.assume_alignment %alloc, 2 : memref<9xf16>
        %262 = tensor.empty() : tensor<14x14xf16>
        %263 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %264 = vector.broadcast %c2038868897_i32 : i32 to vector<14x14xi32>
        %265 = vector.gather %262[%76, %c7] [%264], %47, %263 : tensor<14x14xf16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf16> into vector<14x14xf16>
        %266 = math.absi %c0_i32_23 : i32
        %c370471036_i64 = arith.constant 370471036 : i64
        %267 = index.ceildivs %c14, %136
        %268 = math.cttz %4 : tensor<9xi32>
        %269 = vector.reduction <xor>, %126 : vector<14xi1> into i1
        %270 = arith.ori %c11664_i16, %c-19317_i16 : i16
        %271 = arith.cmpi ugt, %c11664_i16, %c-19317_i16 : i16
        %alloc_43 = memref.alloc() : memref<9xf16>
        memref.copy %alloc, %alloc_43 : memref<9xf16> to memref<9xf16>
        %272 = vector.broadcast %cst_1 : f16 to vector<14xf16>
        %dest_44, %accumulated_value_45 = vector.scan <maxf>, %265, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf16>, vector<14xf16>
        %273 = vector.broadcast %cst_1 : f16 to vector<f16>
        %274 = vector.transfer_write %273, %6[%161] : vector<f16>, tensor<14xf16>
        %275 = memref.atomic_rmw maxu %c2038868897_i32, %alloc_8[%c0] : (i32, memref<9xi32>) -> i32
        %276 = arith.remf %cst_0, %cst_2 : f32
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %104, %105, %104 : vector<14x14xf32>, vector<14x14xf32> into vector<14x14xf32>
        scf.yield
      }
      default {
        %260 = affine.load %alloc_4[%c0] : memref<14xi16>
        %261 = arith.negf %cst : f32
        %262 = math.floor %6 : tensor<14xf16>
        %263 = arith.ori %c1896993623_i32, %c0_i32 : i32
        %264 = index.sub %53, %254
        %265 = vector.create_mask %c12 : vector<14xi1>
        %266 = arith.maxf %cst_27, %cst_0 : f32
        %267 = vector.extract_strided_slice %62 {offsets = [4], sizes = [9], strides = [1]} : vector<14x14xi16> to vector<9x14xi16>
        %268 = memref.atomic_rmw maxf %cst, %alloc_13[%c2, %c11] : (f32, memref<14x14xf32>) -> f32
        memref.store %c2038868897_i32, %alloc_10[%c1, %c12] : memref<14x14xi32>
        %269 = math.floor %5 : tensor<9xf32>
        %270 = vector.insertelement %c1896993623_i32, %42[%161 : index] : vector<14xi32>
        %271 = vector.multi_reduction <or>, %44, %42 [] : vector<14xi32> to vector<14xi32>
        %272 = vector.multi_reduction <maxf>, %104, %105 [] : vector<14x14xf32> to vector<14x14xf32>
        %273 = tensor.empty() : tensor<9xi16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %44, %44, %c0_i32_23 : vector<14xi32>, vector<14xi32> into i32
      }
      %256 = arith.cmpf ogt, %cst_2, %cst_27 : f32
      %257 = vector.matrix_multiply %138, %44 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 14 : i32} : (vector<9xi32>, vector<14xi32>) -> vector<126xi32>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %62, %62, %62 : vector<14x14xi16>, vector<14x14xi16> into vector<14x14xi16>
      %259 = tensor.empty(%53) : tensor<?xf16>
      scf.condition(%false) %arg1 : f32
    } do {
    ^bb0(%arg1: f32):
      memref.copy %alloc_14, %alloc_15 : memref<9xi1> to memref<9xi1>
      %254 = index.divu %c3, %53
      %255 = arith.floordivsi %c0_i32, %c1896993623_i32 : i32
      %256 = arith.remf %cst_0, %extracted : f32
      %257 = math.cttz %c1_i16 : i16
      memref.assume_alignment %alloc_11, 1 : memref<14x14xi32>
      %258 = math.cttz %13 : tensor<14x14xi64>
      %259 = arith.ceildivsi %c29831_i16, %c1_i16 : i16
      %260 = arith.maxsi %c1_i16, %c11664_i16 : i16
      %261 = arith.minf %arg1, %arg1 : f32
      %262 = math.floor %6 : tensor<14xf16>
      %263 = arith.remf %extracted, %cst : f32
      %264 = arith.divf %cst_2, %cst : f32
      %265 = bufferization.to_tensor %alloc_18 : memref<i16>
      %266 = math.atan %125 : f32
      %267 = index.sizeof
      scf.yield %extracted : f32
    }
    %170 = arith.divf %extracted, %125 : f32
    %171 = arith.maxf %cst_2, %cst_0 : f32
    %172 = tensor.empty() : tensor<14x14xf32>
    %173 = arith.divf %cst, %cst_27 : f32
    %174 = vector.broadcast %c2135986617_i64 : i64 to vector<i64>
    %175 = vector.transfer_write %174, %1[%c12, %c4] : vector<i64>, tensor<14x14xi64>
    %176 = arith.remf %cst_2, %cst_2 : f32
    %inserted_34 = tensor.insert %c2038868897_i32 into %68[%c9] : tensor<14xi32>
    memref.copy %alloc_14, %alloc_15 : memref<9xi1> to memref<9xi1>
    %177 = arith.shrui %c2135986617_i64, %c976833789_i64 : i64
    %178 = index.divu %60, %c10
    %179 = scf.while (%arg1 = %81) : (vector<i16>) -> vector<i16> {
      %alloc_43 = memref.alloc() : memref<14x14xi64>
      memref.copy %alloc_7, %alloc_43 : memref<14x14xi64> to memref<14x14xi64>
      %expanded_44 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
      %254 = math.atan2 %11, %11 : tensor<9xf16>
      %255 = arith.addi %c29831_i16, %c29831_i16 : i16
      %256 = arith.ori %c1_i16, %c-19317_i16 : i16
      %collapsed_45 = tensor.collapse_shape %expanded_44 [[0, 1], [2]] : tensor<14x14x1xi64> into tensor<196x1xi64>
      %257 = bufferization.to_tensor %alloc_7 : memref<14x14xi64>
      %extracted_46 = tensor.extract %1[%c1, %c0] : tensor<14x14xi64>
      scf.condition(%false) %81 : vector<i16>
    } do {
    ^bb0(%arg1: vector<i16>):
      %inserted_43 = tensor.insert %extracted into %15[%c2] : tensor<9xf32>
      %254 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 8 - (d1 + 8))>(%c15, %53, %c1, %178)
      affine.for %arg2 = 0 to 7 {
      }
      %255 = arith.floordivsi %c1_i16, %c1_i16 : i16
      %256 = math.log2 %172 : tensor<14x14xf32>
      %257 = index.sizeof
      %258 = math.ipowi %3, %3 : tensor<14xi1>
      %dest_44, %accumulated_value_45 = vector.scan <add>, %47, %43 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
      %259 = arith.addi %c10841_i16, %c29831_i16 : i16
      %260 = arith.addi %c-8044_i16, %c-19317_i16 : i16
      %261 = vector.maskedload %alloc_17[%c2], %28, %138 : memref<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
      %262 = affine.for %arg2 = 0 to 21 iter_args(%arg3 = %19) -> (vector<11xi32>) {
        affine.yield %19 : vector<11xi32>
      }
      %263 = math.fma %2, %2, %172 : tensor<14x14xf32>
      %264 = arith.divf %cst_27, %extracted : f32
      %265 = math.cos %125 : f32
      %266 = arith.ceildivsi %c11664_i16, %c29831_i16 : i16
      scf.yield %81 : vector<i16>
    }
    %180 = vector.flat_transpose %44 {columns = 7 : i32, rows = 2 : i32} : vector<14xi32> -> vector<14xi32>
    %181 = index.castu %c-8044_i16 : i16 to index
    %182 = math.rsqrt %extracted : f32
    %183 = math.log %transposed : tensor<14x14xf32>
    affine.for %arg1 = 0 to 69 {
    }
    %184 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %180, %42, %c0_i32 : vector<14xi32>, vector<14xi32> into i32
    %185 = math.round %2 : tensor<14x14xf32>
    %186 = vector.insertelement %c1896993623_i32, %42[%130 : index] : vector<14xi32>
    %187 = arith.remf %cst_2, %cst : f32
    %188 = math.tanh %5 : tensor<9xf32>
    %inserted_35 = tensor.insert %cst into %22[] : tensor<f32>
    %189 = math.ceil %cst_27 : f32
    %190 = vector.broadcast %false : i1 to vector<i1>
    %191 = vector.transfer_write %190, %3[%122] : vector<i1>, tensor<14xi1>
    %192 = arith.minui %c0_i32, %c1896993623_i32 : i32
    %193 = affine.load %alloc_12[%c1, %c12] : memref<14x14xi1>
    %194 = arith.mulf %cst_1, %cst_1 : f16
    %195 = bufferization.clone %alloc_4 : memref<14xi16> to memref<14xi16>
    %196 = scf.while (%arg1 = %alloc_17) : (memref<9xi32>) -> memref<9xi32> {
      %254 = math.powf %22, %22 : tensor<f32>
      %255 = vector.extract %158[2] : vector<9xf32>
      %256 = math.cttz %c1_i16 : i16
      %257 = affine.load %alloc_13[%c4, %c12] : memref<14x14xf32>
      %258 = vector.broadcast %c0_i32_23 : i32 to vector<9xi32>
      %259 = arith.remf %cst_27, %cst_0 : f32
      %260 = math.ipowi %c0_i32_23, %c0_i32 : i32
      %261 = vector.broadcast %257 : f32 to vector<14x14xf32>
      %262 = vector.fma %261, %104, %261 : vector<14x14xf32>
      scf.condition(%false) %arg1 : memref<9xi32>
    } do {
    ^bb0(%arg1: memref<9xi32>):
      %254 = vector.reduction <add>, %44 : vector<14xi32> into i32
      %255 = arith.minf %cst_2, %extracted : f32
      %256 = index.ceildivu %c10, %c2
      %257 = index.sizeof
      %258 = arith.subi %c10841_i16, %c11664_i16 : i16
      %259 = arith.maxsi %c2038868897_i32, %c1896993623_i32 : i32
      %260 = vector.extract %104[4] : vector<14x14xf32>
      memref.alloca_scope  {
        %266 = arith.shli %c-8044_i16, %c10841_i16 : i16
        %267 = arith.divsi %c10841_i16, %c-8044_i16 : i16
        %268 = index.maxu %c9, %c2
        %269 = math.atan %5 : tensor<9xf32>
        %270 = affine.load %195[%c8] : memref<14xi16>
        %271 = math.absf %6 : tensor<14xf16>
        %272 = arith.divf %cst_0, %cst_27 : f32
        %273 = vector.matrix_multiply %43, %126 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
        %cast_44 = tensor.cast %6 : tensor<14xf16> to tensor<?xf16>
        %274 = bufferization.to_tensor %alloc_5 : memref<9xi16>
        %275 = arith.negf %cst : f32
        %276 = arith.divsi %c2038868897_i32, %c0_i32_23 : i32
        %277 = math.rsqrt %cst_27 : f32
        %278 = vector.broadcast %extracted : f32 to vector<14xf32>
        %279 = vector.fma %278, %260, %260 : vector<14xf32>
        %280 = memref.realloc %alloc_15 : memref<9xi1> to memref<14xi1>
        %281 = math.ctpop %151 : tensor<14xi16>
        %282 = memref.load %alloc_5[%c3] : memref<9xi16>
        %collapsed_45 = tensor.collapse_shape %18 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %283 = index.sizeof
        %284 = math.roundeven %5 : tensor<9xf32>
        %285 = index.divs %c3, %256
        affine.store %c1_i16, %195[%c1] : memref<14xi16>
        %286 = arith.shrui %c976833789_i64, %139 : i64
        %287 = arith.ori %c0_i32_23, %c846129297_i32 : i32
        %288 = memref.atomic_rmw assign %c2038868897_i32, %alloc_8[%c0] : (i32, memref<9xi32>) -> i32
        %289 = tensor.empty(%127) : tensor<?xf32>
        %290 = vector.insert %126, %47 [8] : vector<14xi1> into vector<14x14xi1>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%101, %136, %c9)
        %292 = math.ceil %15 : tensor<9xf32>
        %dest_46, %accumulated_value_47 = vector.scan <minf>, %104, %260 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %false_48 = index.bool.constant false
        %293 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c14, %256, %c15, %c12)
      }
      %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %158, %158, %cst_2 : vector<9xf32>, vector<9xf32> into f32
      %262 = index.ceildivu %122, %c1
      %c1441655677_i64 = arith.constant 1441655677 : i64
      %cast = tensor.cast %12 : tensor<14x14xi32> to tensor<?x?xi32>
      %cst_43 = arith.constant 1.75071322E+9 : f32
      %263 = memref.atomic_rmw muli %c0_i32, %alloc_10[%c3, %c2] : (i32, memref<14x14xi32>) -> i32
      %264 = memref.atomic_rmw maxu %c-19317_i16, %alloc_5[%c6] : (i16, memref<9xi16>) -> i16
      %265 = index.maxs %66, %256
      scf.yield %arg1 : memref<9xi32>
    }
    bufferization.dealloc_tensor %4 : tensor<9xi32>
    %197 = vector.reduction <xor>, %44 : vector<14xi32> into i32
    %198 = vector.create_mask %73, %51 : vector<14x14xi1>
    %199 = math.rsqrt %extracted : f32
    %200 = arith.subi %c2038868897_i32, %c846129297_i32 : i32
    bufferization.dealloc_tensor %12 : tensor<14x14xi32>
    %201 = affine.load %alloc_13[%c7, %c13] : memref<14x14xf32>
    %202 = arith.ori %c0_i32, %c2038868897_i32 : i32
    %203 = math.floor %11 : tensor<9xf16>
    %204 = vector.broadcast %extracted : f32 to vector<14xf32>
    %dest_36, %accumulated_value_37 = vector.scan <mul>, %105, %204 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
    %205 = index.divs %c15, %c10
    %206 = affine.load %alloc_11[%c7, %c9] : memref<14x14xi32>
    memref.store %c1896993623_i32, %alloc_10[%c8, %c6] : memref<14x14xi32>
    %207 = math.cttz %33 : tensor<14x14xi64>
    %208 = vector.broadcast %cst_2 : f32 to vector<14xf32>
    %209 = vector.insert %208, %105 [9] : vector<14xf32> into vector<14x14xf32>
    %210 = arith.ori %c-8044_i16, %c-8044_i16 : i16
    %211 = vector.broadcast %cst_1 : f16 to vector<11xf16>
    %212 = vector.broadcast %193 : i1 to vector<11xi1>
    %213 = vector.maskedload %alloc_9[%c0, %c0], %212, %211 : memref<14x14xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    %214 = arith.minf %extracted, %201 : f32
    %215 = vector.maskedload %alloc_9[%c9, %c5], %212, %213 : memref<14x14xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    %216 = arith.floordivsi %139, %c976833789_i64 : i64
    %217 = math.log %2 : tensor<14x14xf32>
    %218 = arith.shli %139, %139 : i64
    %cst_38 = arith.constant 1.000000e+00 : f32
    %219 = vector.transfer_read %alloc_13[%51, %205], %cst_38 : memref<14x14xf32>, vector<8xf32>
    %220 = index.divs %181, %178
    %expanded = tensor.expand_shape %collapsed [[0, 1]] : tensor<196xi64> into tensor<196x1xi64>
    %221 = arith.divf %125, %cst : f32
    %222 = index.sizeof
    bufferization.dealloc_tensor %generated : tensor<?xf32>
    memref.copy %37, %alloc_5 : memref<9xi16> to memref<9xi16>
    %223 = arith.negf %cst_2 : f32
    %224 = math.rsqrt %20 : tensor<9xf32>
    %225 = math.fma %15, %5, %15 : tensor<9xf32>
    %226 = arith.maxf %cst_27, %cst_27 : f32
    %227 = vector.broadcast %c2038868897_i32 : i32 to vector<i32>
    %228 = vector.transfer_write %227, %7[%141] : vector<i32>, tensor<9xi32>
    %true = index.bool.constant true
    affine.for %arg1 = 0 to 122 {
    }
    %229 = math.ipowi %33, %33 : tensor<14x14xi64>
    %230 = arith.ori %c0_i32, %c2038868897_i32 : i32
    %231 = arith.negf %cst_38 : f32
    %232 = arith.divsi %193, %true : i1
    %233 = index.divu %220, %c12
    %234 = vector.extract %62[7] : vector<14x14xi16>
    %235 = arith.minsi %false, %false : i1
    %236 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %198, %43, %43 : vector<14x14xi1>, vector<14xi1> into vector<14xi1>
    %generated_39 = tensor.generate %181 {
    ^bb0(%arg1: index):
      %254 = math.atan %cst_2 : f32
      %255 = affine.load %alloc_4[%c8] : memref<14xi16>
      %expanded_43 = tensor.expand_shape %7 [[0, 1]] : tensor<9xi32> into tensor<9x1xi32>
      %256 = vector.insertelement %255, %81[] : vector<i16>
      tensor.yield %125 : f32
    } : tensor<?xf32>
    memref.store %c4658_i16, %alloc_18[] : memref<i16>
    %extracted_40 = tensor.extract %21[] : tensor<f32>
    %237 = arith.minsi %c11664_i16, %c11664_i16 : i16
    %238 = vector.bitcast %104 : vector<14x14xf32> to vector<14x14xi32>
    %collapsed_41 = tensor.collapse_shape %172 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
    %239 = bufferization.clone %alloc_9 : memref<14x14xf16> to memref<14x14xf16>
    %240 = arith.divf %extracted_40, %125 : f32
    %241 = arith.cmpf false, %extracted_40, %125 : f32
    memref.store %193, %alloc_14[%c6] : memref<9xi1>
    %242 = tensor.empty() : tensor<14x14xf32>
    %243 = bufferization.clone %alloc_15 : memref<9xi1> to memref<9xi1>
    %244 = memref.atomic_rmw assign %cst_1, %147[%c2] : (f16, memref<14xf16>) -> f16
    %245 = arith.negf %cst_0 : f32
    %246 = scf.while (%arg1 = %alloc) : (memref<9xf16>) -> memref<9xf16> {
      %254 = arith.maxf %cst_38, %extracted_40 : f32
      %c8740_i16 = arith.constant 8740 : i16
      %255 = math.roundeven %201 : f32
      %extracted_43 = tensor.extract %11[%c1] : tensor<9xf16>
      %true_44 = index.bool.constant true
      affine.store %cst_1, %alloc[%c13] : memref<9xf16>
      %256 = arith.negf %cst : f32
      %257 = math.rsqrt %11 : tensor<9xf16>
      scf.condition(%193) %arg1 : memref<9xf16>
    } do {
    ^bb0(%arg1: memref<9xf16>):
      %expanded_43 = tensor.expand_shape %9 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
      %254 = arith.shrsi %c2135986617_i64, %139 : i64
      %255 = index.ceildivu %c9, %c11
      %256 = arith.remui %c29831_i16, %c29831_i16 : i16
      %generated_44 = tensor.generate %c15 {
      ^bb0(%arg2: index):
        %267 = arith.divsi %c10841_i16, %c10841_i16 : i16
        %268 = arith.divsi %c1896993623_i32, %c0_i32_23 : i32
        %269 = arith.divf %cst_2, %cst_27 : f32
        %splat = tensor.splat %201 : tensor<14x14xf32>
        tensor.yield %193 : i1
      } : tensor<?xi1>
      memref.assume_alignment %alloc_10, 4 : memref<14x14xi32>
      %257 = math.ceil %extracted : f32
      %258 = math.round %6 : tensor<14xf16>
      %259 = index.divu %53, %76
      %260 = bufferization.to_tensor %alloc_5 : memref<9xi16>
      %261 = memref.realloc %alloc : memref<9xf16> to memref<9xf16>
      %262 = arith.addf %extracted, %cst_2 : f32
      %263 = arith.ceildivsi %c-19317_i16, %c4658_i16 : i16
      %264 = memref.atomic_rmw andi %c-8044_i16, %54[%c1] : (i16, memref<14xi16>) -> i16
      %265 = arith.shrui %139, %c976833789_i64 : i64
      %266 = vector.bitcast %126 : vector<14xi1> to vector<14xi1>
      scf.yield %alloc : memref<9xf16>
    }
    %247 = arith.cmpf one, %cst_27, %201 : f32
    %248 = tensor.empty(%c7) : tensor<?xf32>
    %249 = linalg.copy ins(%generated : tensor<?xf32>) outs(%248 : tensor<?xf32>) -> tensor<?xf32>
    %250 = tensor.empty() : tensor<9xi32>
    %transposed_42 = linalg.transpose ins(%7 : tensor<9xi32>) outs(%250 : tensor<9xi32>) permutation = [0] 
    %251 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%11 : tensor<9xf16>) outs(%251 : tensor<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %254 = arith.cmpi eq, %c-19317_i16, %c29831_i16 : i16
        %255 = vector.multi_reduction <add>, %212, %212 [] : vector<11xi1> to vector<11xi1>
        %256 = index.casts %c1 : index to i32
        %257 = vector.reduction <or>, %180 : vector<14xi32> into i32
        %258 = arith.maxf %cst_0, %201 : f32
        %259 = vector.create_mask %141 : vector<9xi1>
        %260 = memref.load %243[%c5] : memref<9xi1>
        %rank = tensor.rank %11 : tensor<9xf16>
        %cst_43 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_43 : f16
      }
    %252 = scf.parallel (%arg1) = (%127) to (%c14) step (%c8) init (%c11664_i16) -> i16 {
      %254 = arith.shrsi %c2038868897_i32, %c0_i32 : i32
      %255 = arith.addi %206, %c846129297_i32 : i32
      %256 = math.rsqrt %5 : tensor<9xf32>
      %257 = vector.insert %126, %198 [4] : vector<14xi1> into vector<14x14xi1>
      memref.store %c846129297_i32, %alloc_10[%c3, %c4] : memref<14x14xi32>
      %258 = math.cttz %c0_i32_23 : i32
      %259 = vector.matrix_multiply %234, %234 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
      %260 = memref.realloc %alloc_3 : memref<9xi16> to memref<11xi16>
      %261 = math.absi %7 : tensor<9xi32>
      memref.copy %54, %195 : memref<14xi16> to memref<14xi16>
      %dest_43, %accumulated_value_44 = vector.scan <xor>, %94, %126 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
      bufferization.dealloc_tensor %10 : tensor<14xi16>
      affine.store %193, %243[%c4] : memref<9xi1>
      %extracted_45 = tensor.extract %1[%c10, %c8] : tensor<14x14xi64>
      memref.alloca_scope  {
        %262 = math.rsqrt %cst_0 : f32
        memref.store %c2038868897_i32, %alloc_10[%c4, %c2] : memref<14x14xi32>
        %263 = arith.maxsi %c11664_i16, %c29831_i16 : i16
        %264 = vector.reduction <or>, %43 : vector<14xi1> into i1
        %265 = math.rsqrt %2 : tensor<14x14xf32>
        %266 = arith.subi %extracted_45, %c976833789_i64 : i64
        %267 = math.ipowi %33, %13 : tensor<14x14xi64>
        %268 = tensor.empty() : tensor<14xi1>
        %269 = arith.remf %extracted, %cst : f32
        %c0_i16_47 = arith.constant 0 : i16
        %270 = vector.transfer_read %9[%130], %c0_i16_47 : tensor<14xi16>, vector<i16>
        %271 = bufferization.to_tensor %alloc_15 : memref<9xi1>
        %272 = math.cttz %c2135986617_i64 : i64
        %273 = index.casts %60 : index to i32
        %274 = math.ipowi %13, %13 : tensor<14x14xi64>
        %275 = memref.realloc %128 : memref<14xi32> to memref<8xi32>
        %276 = bufferization.to_memref %22 : memref<f32>
        %277 = vector.maskedload %243[%c4], %28, %28 : memref<9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %278 = math.ipowi %139, %c2135986617_i64 : i64
        memref.copy %239, %alloc_9 : memref<14x14xf16> to memref<14x14xf16>
        %279 = index.casts %c12 : index to i32
        %280 = bufferization.to_memref %2 : memref<14x14xf32>
        %281 = index.sub %c7, %127
        memref.copy %alloc_4, %195 : memref<14xi16> to memref<14xi16>
        %282 = arith.maxui %false, %193 : i1
        %283 = vector.shuffle %47, %94 [2, 3, 5, 6, 8, 13, 14, 15, 16, 17, 19, 20, 21, 24, 26] : vector<14x14xi1>, vector<14x14xi1>
        %284 = bufferization.to_tensor %37 : memref<9xi16>
        %285 = arith.subi %193, %false : i1
        %286 = math.atan %15 : tensor<9xf32>
        %287 = arith.floordivsi %c1_i16, %c4658_i16 : i16
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 * 2)>(%c12, %c6, %181, %c4)
        %extracted_48 = tensor.extract %3[%c4] : tensor<14xi1>
        %289 = vector.multi_reduction <maxf>, %215, %213 [] : vector<11xf16> to vector<11xf16>
      }
      %c25 = arith.constant 25 : index
      %extracted_46 = tensor.extract %collapsed_41[%c25] : tensor<196xf32>
      %c0_i16 = arith.constant 0 : i16
      scf.reduce(%c0_i16)  : i16 {
      ^bb0(%arg2: i16, %arg3: i16):
        %262 = vector.create_mask %c9, %c2 : vector<14x14xi1>
        %263 = arith.divsi %c4658_i16, %c4658_i16 : i16
        %expanded_47 = tensor.expand_shape %15 [[0, 1]] : tensor<9xf32> into tensor<9x1xf32>
        %264 = arith.maxsi %c0_i32_23, %c2038868897_i32 : i32
        %265 = bufferization.to_memref %2 : memref<14x14xf32>
        %266 = memref.atomic_rmw maxs %c0_i16, %54[%c8] : (i16, memref<14xi16>) -> i16
        %267 = math.cttz %c0_i32_23 : i32
        %cst_48 = arith.constant 4.310400e+04 : f16
        %c0_i16_49 = arith.constant 0 : i16
        scf.reduce.return %c0_i16_49 : i16
      }
      scf.yield
    }
    %253 = affine.vector_load %195[%73] : memref<14xi16>, vector<8xi16>
    affine.vector_store %42, %128[%c8] : memref<14xi32>, vector<14xi32>
    vector.print %19 : vector<11xi32>
    vector.print %23 : vector<i32>
    vector.print %28 : vector<9xi1>
    vector.print %42 : vector<14xi32>
    vector.print %43 : vector<14xi1>
    vector.print %44 : vector<14xi32>
    vector.print %47 : vector<14x14xi1>
    vector.print %62 : vector<14x14xi16>
    vector.print %81 : vector<i16>
    vector.print %94 : vector<14x14xi1>
    vector.print %104 : vector<14x14xf32>
    vector.print %105 : vector<14x14xf32>
    vector.print %110 : vector<f32>
    vector.print %126 : vector<14xi1>
    vector.print %138 : vector<9xi32>
    vector.print %158 : vector<9xf32>
    vector.print %174 : vector<i64>
    vector.print %180 : vector<14xi32>
    vector.print %190 : vector<i1>
    vector.print %198 : vector<14x14xi1>
    vector.print %208 : vector<14xf32>
    vector.print %211 : vector<11xf16>
    vector.print %212 : vector<11xi1>
    vector.print %213 : vector<11xf16>
    vector.print %215 : vector<11xf16>
    vector.print %227 : vector<i32>
    vector.print %234 : vector<14xi16>
    vector.print %238 : vector<14x14xi32>
    vector.print %253 : vector<8xi16>
    vector.print %c1896993623_i32 : i32
    vector.print %cst : f32
    vector.print %c-19317_i16 : i16
    vector.print %c976833789_i64 : i64
    vector.print %c29831_i16 : i16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c4658_i16 : i16
    vector.print %c10841_i16 : i16
    vector.print %c2038868897_i32 : i32
    vector.print %c846129297_i32 : i32
    vector.print %c-8044_i16 : i16
    vector.print %c2135986617_i64 : i64
    vector.print %c11664_i16 : i16
    vector.print %false : i1
    vector.print %cst_2 : f32
    vector.print %extracted : f32
    vector.print %c1_i16 : i16
    vector.print %c0_i32 : i32
    vector.print %c0_i32_23 : i32
    vector.print %cst_27 : f32
    vector.print %125 : f32
    vector.print %139 : i64
    vector.print %193 : i1
    vector.print %201 : f32
    vector.print %206 : i32
    vector.print %cst_38 : f32
    vector.print %true : i1
    vector.print %extracted_40 : f32
    return %250 : tensor<9xi32>
  }
}
