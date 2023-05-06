module {
  func.func @func1() -> f32 {
    %c1678315323_i64 = arith.constant 1678315323 : i64
    %true = arith.constant true
    %cst = arith.constant 0x4E43C663 : f32
    %cst_0 = arith.constant 2.710400e+04 : f16
    %false = arith.constant false
    %c1901607918_i32 = arith.constant 1901607918 : i32
    %c1552290737_i64 = arith.constant 1552290737 : i64
    %c522676489_i32 = arith.constant 522676489 : i32
    %c-29564_i16 = arith.constant -29564 : i16
    %c29724_i16 = arith.constant 29724 : i16
    %c-15825_i16 = arith.constant -15825 : i16
    %c16477_i16 = arith.constant 16477 : i16
    %false_1 = arith.constant false
    %c134130799_i32 = arith.constant 134130799 : i32
    %cst_2 = arith.constant 8.072000e+03 : f16
    %c1820405062_i32 = arith.constant 1820405062 : i32
    %0 = tensor.empty() : tensor<9xf16>
    %1 = tensor.empty() : tensor<6x9xi64>
    %2 = tensor.empty() : tensor<6x9xf16>
    %3 = tensor.empty() : tensor<9xi16>
    %4 = tensor.empty() : tensor<6x9xi64>
    %5 = tensor.empty() : tensor<6x9xf32>
    %6 = tensor.empty() : tensor<1x6xf32>
    %7 = tensor.empty() : tensor<6x9xf32>
    %8 = tensor.empty() : tensor<1x6xi16>
    %9 = tensor.empty() : tensor<1x6xi16>
    %10 = tensor.empty() : tensor<6x9xf32>
    %11 = tensor.empty() : tensor<6x9xi32>
    %12 = tensor.empty() : tensor<9xi32>
    %13 = tensor.empty() : tensor<9xi16>
    %14 = tensor.empty() : tensor<1x6xi1>
    %15 = tensor.empty() : tensor<1x6xi64>
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
    %alloc = memref.alloc() : memref<6x9xf16>
    %alloc_3 = memref.alloc() : memref<9xi16>
    %alloc_4 = memref.alloc() : memref<6x9xf16>
    %alloc_5 = memref.alloc() : memref<1x6xi1>
    %alloc_6 = memref.alloc() : memref<9xi32>
    %alloc_7 = memref.alloc() : memref<9xi32>
    %alloc_8 = memref.alloc() : memref<6x9xi1>
    %alloc_9 = memref.alloc() : memref<6x9xf32>
    %alloc_10 = memref.alloc() : memref<9xf16>
    %alloc_11 = memref.alloc() : memref<6x9xi1>
    %alloc_12 = memref.alloc() : memref<6x9xi1>
    %alloc_13 = memref.alloc() : memref<1x6xi32>
    %alloc_14 = memref.alloc() : memref<6x9xi16>
    %alloc_15 = memref.alloc() : memref<1x6xi16>
    %alloc_16 = memref.alloc() : memref<9xi64>
    %alloc_17 = memref.alloc() : memref<9xf32>
    %16 = tensor.empty() : tensor<9xi16>
    %17 = linalg.copy ins(%3 : tensor<9xi16>) outs(%16 : tensor<9xi16>) -> tensor<9xi16>
    %18 = tensor.empty() : tensor<9xi16>
    %transposed = linalg.transpose ins(%13 : tensor<9xi16>) outs(%18 : tensor<9xi16>) permutation = [0] 
    %19 = tensor.empty() : tensor<1xi1>
    %reduced = linalg.reduce ins(%14 : tensor<1x6xi1>) outs(%19 : tensor<1xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %249 = vector.broadcast %c522676489_i32 : i32 to vector<13xi32>
        %250 = vector.broadcast %init : i1 to vector<13xi1>
        %251 = vector.maskedload %alloc_6[%c5], %250, %249 : memref<9xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %252 = arith.minf %cst, %cst : f32
        %253 = index.maxu %c10, %c4
        %254 = math.ipowi %in, %false_1 : i1
        memref.alloca_scope  {
          %258 = index.ceildivs %c1, %c3
          %259 = math.log2 %10 : tensor<6x9xf32>
          memref.tensor_store %12, %alloc_7 : memref<9xi32>
          %260 = index.divs %c1, %c6
          %261 = vector.broadcast %cst_2 : f16 to vector<9xf16>
          %262 = vector.broadcast %true : i1 to vector<9xi1>
          %263 = vector.broadcast %c522676489_i32 : i32 to vector<9xi32>
          %264 = vector.gather %alloc[%253, %c3] [%263], %262, %261 : memref<6x9xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
          %extracted_52 = tensor.extract %18[%c0] : tensor<9xi16>
          %265 = vector.bitcast %250 : vector<13xi1> to vector<13xi1>
          %266 = arith.subi %false, %init : i1
          %267 = index.divs %c11, %c6
          %268 = vector.extract_strided_slice %264 {offsets = [3], sizes = [6], strides = [1]} : vector<9xf16> to vector<6xf16>
          %269 = math.cos %cst : f32
          %splat_53 = tensor.splat %c1678315323_i64 : tensor<9xi64>
          %270 = vector.insert %cst_0, %268 [2] : f16 into vector<6xf16>
          %271 = math.log2 %5 : tensor<6x9xf32>
          %272 = bufferization.to_tensor %alloc_4 : memref<6x9xf16>
          %273 = math.atan2 %5, %5 : tensor<6x9xf32>
          %splat_54 = tensor.splat %c1820405062_i32 : tensor<6x9xi32>
          %274 = arith.xori %false_1, %false_1 : i1
          affine.store %c1678315323_i64, %alloc_16[%c13] : memref<9xi64>
          %275 = vector.matrix_multiply %250, %250 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<13xi1>) -> vector<1xi1>
          %276 = vector.broadcast %in : i1 to vector<6x9x13xi1>
          %277 = vector.broadcast %false : i1 to vector<6x9xi1>
          %dest, %accumulated_value = vector.scan <minui>, %276, %277 {inclusive = false, reduction_dim = 2 : i64} : vector<6x9x13xi1>, vector<6x9xi1>
          %278 = math.log10 %5 : tensor<6x9xf32>
          %279 = bufferization.to_memref %10 : memref<6x9xf32>
          affine.store %cst, %alloc_17[%c8] : memref<9xf32>
          %280 = math.atan2 %cst_2, %cst_2 : f16
          %281 = index.sizeof
          vector.print %275 : vector<1xi1>
          %282 = bufferization.clone %alloc_8 : memref<6x9xi1> to memref<6x9xi1>
          %283 = math.log10 %cst_0 : f16
          %284 = arith.mulf %cst_2, %cst_0 : f16
          %285 = math.fma %10, %5, %10 : tensor<6x9xf32>
          memref.store %false, %alloc_12[%c2, %c3] : memref<6x9xi1>
        }
        %255 = arith.minsi %in, %false : i1
        %256 = affine.max affine_map<(d0) -> (d0 mod 8, -d0 + -d0 + 128, d0 floordiv 64, ((-d0) mod 32) mod 64)>(%c4)
        %257 = memref.load %alloc_9[%c4, %c7] : memref<6x9xf32>
        %false_51 = arith.constant false
        linalg.yield %false_51 : i1
      }
    %20 = scf.parallel (%arg0) = (%c1) to (%c15) step (%c13) init (%12) -> tensor<9xi32> {
      %249 = vector.broadcast %false_1 : i1 to vector<6x9xi1>
      %250 = vector.transpose %249, [0, 1] : vector<6x9xi1> to vector<6x9xi1>
      %251 = vector.broadcast %cst_2 : f16 to vector<f16>
      %252 = vector.insertelement %cst_2, %251[] : vector<f16>
      %253 = vector.broadcast %c522676489_i32 : i32 to vector<6x9xi32>
      %254 = arith.addi %c1552290737_i64, %c1552290737_i64 : i64
      %255 = vector.broadcast %cst_0 : f16 to vector<6xf16>
      %256 = vector.matrix_multiply %255, %255 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
      %257 = vector.create_mask %c14 : vector<9xi1>
      %258 = index.ceildivu %c9, %c11
      %259 = vector.broadcast %c6 : index to vector<6xindex>
      %260 = vector.broadcast %false : i1 to vector<6xi1>
      %261 = vector.broadcast %c522676489_i32 : i32 to vector<6xi32>
      vector.scatter %alloc_13[%c0, %c0] [%259], %260, %261 : memref<1x6xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
      %alloc_51 = memref.alloc() : memref<6x9xi64>
      memref.tensor_store %4, %alloc_51 : memref<6x9xi64>
      %262 = math.fpowi %2, %11 : tensor<6x9xf16>, tensor<6x9xi32>
      %263 = math.absf %2 : tensor<6x9xf16>
      %collapsed_52 = tensor.collapse_shape %10 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
      %264 = arith.maxui %c522676489_i32, %c1820405062_i32 : i32
      %265 = arith.remsi %c1901607918_i32, %c1820405062_i32 : i32
      affine.store %c-15825_i16, %alloc_14[%c14, %c6] : memref<6x9xi16>
      %266 = vector.broadcast %c4 : index to vector<6xindex>
      %267 = vector.broadcast %false : i1 to vector<6xi1>
      %268 = vector.broadcast %c-15825_i16 : i16 to vector<6xi16>
      vector.scatter %alloc_15[%c0, %c3] [%266], %267, %268 : memref<1x6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
      %269 = tensor.empty() : tensor<9xi32>
      scf.reduce(%269)  : tensor<9xi32> {
      ^bb0(%arg1: tensor<9xi32>, %arg2: tensor<9xi32>):
        %alloc_53 = memref.alloc() : memref<9xf32>
        %270 = arith.xori %c134130799_i32, %c1820405062_i32 : i32
        %271 = math.tanh %6 : tensor<1x6xf32>
        memref.assume_alignment %alloc_3, 2 : memref<9xi16>
        %272 = math.fma %7, %10, %5 : tensor<6x9xf32>
        %273 = math.sqrt %7 : tensor<6x9xf32>
        %274 = math.copysign %6, %6 : tensor<1x6xf32>
        %275 = arith.divf %cst_2, %cst_0 : f16
        %276 = tensor.empty() : tensor<9xi32>
        scf.reduce.return %276 : tensor<9xi32>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_3[%c12] : memref<9xi16>, vector<13xi16>
    affine.vector_store %21, %alloc_3[%c4] : memref<9xi16>, vector<13xi16>
    %22 = tensor.empty() : tensor<9xi32>
    %23 = tensor.empty() : tensor<i32>
    %24 = linalg.dot ins(%12, %22 : tensor<9xi32>, tensor<9xi32>) outs(%23 : tensor<i32>) -> tensor<i32>
    %25 = arith.maxf %cst_0, %cst_2 : f16
    %26 = math.log10 %7 : tensor<6x9xf32>
    bufferization.dealloc_tensor %reduced : tensor<1xi1>
    %27 = math.fma %10, %10, %10 : tensor<6x9xf32>
    scf.if %false {
      %249 = math.exp2 %2 : tensor<6x9xf16>
      %250 = arith.shrui %c29724_i16, %c29724_i16 : i16
      %251 = index.add %c6, %c3
      %252 = bufferization.clone %alloc_16 : memref<9xi64> to memref<9xi64>
      %253 = arith.minsi %c1820405062_i32, %c1820405062_i32 : i32
      %254 = arith.remsi %false, %false : i1
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %255 = vector.transfer_read %6[%c7, %251], %cst_52 : tensor<1x6xf32>, vector<f32>
      %collapsed_53 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xi1> into tensor<6xi1>
    } else {
      %249 = scf.index_switch %c11 -> tensor<1x6xi1> 
      case 1 {
        %257 = math.round %10 : tensor<6x9xf32>
        %expanded_52 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<6x9xf32> into tensor<6x9x1xf32>
        %alloc_53 = memref.alloc() : memref<9x1xi32>
        %258 = tensor.empty() : tensor<6x1xi32>
        %259 = linalg.matmul ins(%11, %alloc_53 : tensor<6x9xi32>, memref<9x1xi32>) outs(%258 : tensor<6x1xi32>) -> tensor<6x1xi32>
        %260 = math.atan2 %10, %7 : tensor<6x9xf32>
        %261 = bufferization.clone %alloc_8 : memref<6x9xi1> to memref<6x9xi1>
        %262 = math.rsqrt %2 : tensor<6x9xf16>
        %263 = arith.addi %c522676489_i32, %c1820405062_i32 : i32
        %264 = index.castu %c5 : index to i32
        %265 = math.powf %7, %10 : tensor<6x9xf32>
        %266 = affine.apply affine_map<(d0) -> (0)>(%c13)
        %267 = math.sqrt %6 : tensor<1x6xf32>
        %268 = math.fpowi %5, %11 : tensor<6x9xf32>, tensor<6x9xi32>
        %269 = index.add %c2, %c12
        %270 = vector.shuffle %21, %21 [3, 4, 5, 9, 10, 13, 16, 18, 20, 22] : vector<13xi16>, vector<13xi16>
        memref.assume_alignment %alloc_11, 1 : memref<6x9xi1>
        %271 = arith.maxsi %c29724_i16, %c-29564_i16 : i16
        scf.yield %14 : tensor<1x6xi1>
      }
      case 2 {
        %257 = index.sizeof
        %258 = math.copysign %6, %6 : tensor<1x6xf32>
        %259 = arith.xori %false_1, %true : i1
        %260 = arith.shrui %c16477_i16, %c16477_i16 : i16
        %261 = math.atan %0 : tensor<9xf16>
        %262 = math.log %cst : f32
        %263 = bufferization.clone %alloc_9 : memref<6x9xf32> to memref<6x9xf32>
        %264 = arith.floordivsi %c16477_i16, %c29724_i16 : i16
        %265 = math.absi %16 : tensor<9xi16>
        %266 = math.tanh %cst_2 : f16
        %alloca_52 = memref.alloca() : memref<6x9xi1>
        vector.print %21 : vector<13xi16>
        %alloc_53 = memref.alloc() : memref<9x6xf32>
        %267 = tensor.empty() : tensor<6x6xf32>
        %268 = linalg.matmul ins(%5, %alloc_53 : tensor<6x9xf32>, memref<9x6xf32>) outs(%267 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %269 = arith.shrui %c1552290737_i64, %c1678315323_i64 : i64
        %270 = arith.divui %false_1, %false_1 : i1
        %alloc_54 = memref.alloc() : memref<6x6xf32>
        memref.tensor_store %267, %alloc_54 : memref<6x6xf32>
        scf.yield %14 : tensor<1x6xi1>
      }
      default {
        %257 = vector.create_mask %c5, %c8 : vector<6x9xi1>
        %258 = memref.load %alloc_7[%c0] : memref<9xi32>
        bufferization.dealloc_tensor %14 : tensor<1x6xi1>
        %259 = vector.broadcast %c29724_i16 : i16 to vector<6x9xi16>
        %260 = vector.broadcast %c134130799_i32 : i32 to vector<6x9xi32>
        %261 = vector.gather %8[%c13, %c3] [%260], %257, %259 : tensor<1x6xi16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi16> into vector<6x9xi16>
        %262 = vector.bitcast %257 : vector<6x9xi1> to vector<6x9xi1>
        %263 = index.sizeof
        %264 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d2)>(%c6, %c15, %c10)
        %alloc_52 = memref.alloc() : memref<9xi1>
        %265 = vector.gather %alloc_52[%c1] [%260], %257, %257 : memref<9xi1>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi1> into vector<6x9xi1>
        %266 = index.divs %c3, %c14
        %267 = math.copysign %7, %10 : tensor<6x9xf32>
        %268 = math.round %7 : tensor<6x9xf32>
        %269 = math.cos %5 : tensor<6x9xf32>
        %270 = arith.ceildivsi %c522676489_i32, %c1820405062_i32 : i32
        %271 = bufferization.clone %alloc_8 : memref<6x9xi1> to memref<6x9xi1>
        %272 = affine.min affine_map<(d0, d1) -> (d1 + d1 ceildiv 2)>(%c11, %c8)
        vector.print %260 : vector<6x9xi32>
        scf.yield %14 : tensor<1x6xi1>
      }
      %250 = arith.andi %c29724_i16, %c-29564_i16 : i16
      %251 = arith.xori %c-15825_i16, %c-29564_i16 : i16
      %alloc_51 = memref.alloc() : memref<6x9xi1>
      %252 = tensor.empty() : tensor<1x9xi1>
      %253 = linalg.matmul ins(%14, %alloc_51 : tensor<1x6xi1>, memref<6x9xi1>) outs(%252 : tensor<1x9xi1>) -> tensor<1x9xi1>
      %254 = index.maxu %c6, %c12
      %from_elements = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<6x9xf32>
      %255 = math.tanh %2 : tensor<6x9xf16>
      %256 = memref.alloca_scope  -> (memref<1x6xi64>) {
        %257 = math.atan %0 : tensor<9xf16>
        %258 = affine.min affine_map<(d0) -> (-d0 - 96, 0)>(%c6)
        %259 = math.round %from_elements : tensor<6x9xf32>
        %260 = math.cos %cst : f32
        %261 = vector.broadcast %254 : index to vector<9xindex>
        %262 = vector.broadcast %true : i1 to vector<9xi1>
        %263 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        vector.scatter %alloc_10[%c1] [%261], %262, %263 : memref<9xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %264 = math.roundeven %0 : tensor<9xf16>
        %265 = arith.xori %c-15825_i16, %c29724_i16 : i16
        %266 = math.sqrt %0 : tensor<9xf16>
        %267 = arith.shrui %c134130799_i32, %c1901607918_i32 : i32
        %268 = arith.remui %c-15825_i16, %c-29564_i16 : i16
        %269 = index.add %c8, %c4
        %270 = vector.broadcast %c16477_i16 : i16 to vector<13x13xi16>
        %271 = vector.outerproduct %21, %21, %270 {kind = #vector.kind<and>} : vector<13xi16>, vector<13xi16>
        %272 = arith.cmpf une, %cst_2, %cst_0 : f16
        %273 = bufferization.to_memref %2 : memref<6x9xf16>
        %274 = arith.remui %c16477_i16, %c29724_i16 : i16
        %275 = index.casts %false_1 : i1 to index
        %276 = math.log10 %7 : tensor<6x9xf32>
        %277 = math.ctpop %12 : tensor<9xi32>
        %278 = memref.load %alloc[%c0, %c0] : memref<6x9xf16>
        %279 = affine.min affine_map<(d0) -> (d0 * 4, d0 * 2)>(%c14)
        %280 = arith.maxsi %false_1, %true : i1
        %281 = arith.divsi %c1678315323_i64, %c1678315323_i64 : i64
        bufferization.dealloc_tensor %3 : tensor<9xi16>
        %282 = bufferization.clone %alloc_13 : memref<1x6xi32> to memref<1x6xi32>
        %283 = vector.transpose %21, [0] : vector<13xi16> to vector<13xi16>
        %284 = arith.mulf %cst_2, %cst_2 : f16
        %285 = arith.divf %cst_0, %cst_0 : f16
        %286 = arith.cmpf ule, %cst, %cst : f32
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %21, %21, %c-29564_i16 : vector<13xi16>, vector<13xi16> into i16
        %alloc_52 = memref.alloc() : memref<6x9xi1>
        %288 = index.maxs %c4, %c4
        %289 = arith.maxsi %c16477_i16, %c29724_i16 : i16
        %alloc_53 = memref.alloc() : memref<1x6xi64>
        memref.alloca_scope.return %alloc_53 : memref<1x6xi64>
      }
    }
    memref.assume_alignment %alloc_16, 8 : memref<9xi64>
    %28 = arith.maxui %c1901607918_i32, %c1901607918_i32 : i32
    %29 = math.tanh %6 : tensor<1x6xf32>
    %30 = vector.insertelement %c16477_i16, %21[%c3 : index] : vector<13xi16>
    %31 = math.fma %cst_0, %cst_0, %cst_2 : f16
    vector.print %21 : vector<13xi16>
    %32 = vector.broadcast %cst : f32 to vector<1x6xf32>
    %33 = vector.fma %32, %32, %32 : vector<1x6xf32>
    %34 = bufferization.clone %alloc_6 : memref<9xi32> to memref<9xi32>
    %extracted = tensor.extract %17[%c3] : tensor<9xi16>
    %35 = vector.broadcast %cst : f32 to vector<6x6xf32>
    %36 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %32, %32, %35 : vector<1x6xf32>, vector<1x6xf32> into vector<6x6xf32>
    %37 = bufferization.to_tensor %alloc_15 : memref<1x6xi16>
    %38 = index.floordivs %c0, %c3
    %39 = vector.matrix_multiply %21, %21 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<13xi16>) -> vector<1xi16>
    %cast = tensor.cast %10 : tensor<6x9xf32> to tensor<?x?xf32>
    %rank = tensor.rank %6 : tensor<1x6xf32>
    %40 = index.divu %c13, %c15
    %41 = index.castu %c5 : index to i32
    %42 = index.divs %c9, %c0
    %43 = math.round %5 : tensor<6x9xf32>
    %44 = arith.addi %c134130799_i32, %c1820405062_i32 : i32
    %45 = tensor.empty() : tensor<6x9xi1>
    %46 = index.maxs %c15, %c5
    %47 = vector.broadcast %c134130799_i32 : i32 to vector<1x6xi32>
    %48 = vector.broadcast %false : i1 to vector<1x6xi1>
    %49 = vector.gather %12[%c13] [%47], %48, %47 : tensor<9xi32>, vector<1x6xi32>, vector<1x6xi1>, vector<1x6xi32> into vector<1x6xi32>
    %50 = math.powf %6, %6 : tensor<1x6xf32>
    %51 = vector.broadcast %c16477_i16 : i16 to vector<1x1xi16>
    %52 = vector.outerproduct %39, %39, %51 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
    %53 = arith.divui %c1678315323_i64, %c1678315323_i64 : i64
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<6x9xi64> into tensor<54xi64>
    %54 = arith.minsi %c16477_i16, %c29724_i16 : i16
    %55 = math.atan2 %7, %7 : tensor<6x9xf32>
    %rank_18 = tensor.rank %4 : tensor<6x9xi64>
    %56 = math.exp %7 : tensor<6x9xf32>
    %57 = vector.bitcast %39 : vector<1xi16> to vector<1xi16>
    affine.store %c1901607918_i32, %34[%c8] : memref<9xi32>
    %58 = index.ceildivu %46, %c13
    %59 = arith.remf %cst_2, %cst_2 : f16
    %60 = vector.transpose %47, [1, 0] : vector<1x6xi32> to vector<6x1xi32>
    %61 = arith.addf %cst_2, %cst_2 : f16
    %62 = vector.transpose %21, [0] : vector<13xi16> to vector<13xi16>
    vector.print %32 : vector<1x6xf32>
    %63 = memref.alloca_scope  -> (memref<6x9xi32>) {
      %249 = memref.alloca_scope  -> (memref<1x6xi64>) {
        %281 = index.divs %c14, %38
        %282 = vector.bitcast %33 : vector<1x6xf32> to vector<1x6xf32>
        %283 = math.sqrt %cst : f32
        %284 = vector.broadcast %cst_0 : f16 to vector<6x9xf16>
        %285 = vector.broadcast %false : i1 to vector<6x9xi1>
        %286 = vector.broadcast %c522676489_i32 : i32 to vector<6x9xi32>
        %287 = vector.gather %0[%c12] [%286], %285, %284 : tensor<9xf16>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xf16> into vector<6x9xf16>
        %288 = arith.remf %cst_2, %cst_0 : f16
        %289 = arith.mulf %cst, %cst : f32
        %290 = index.sizeof
        %expanded_54 = tensor.expand_shape %12 [[0, 1]] : tensor<9xi32> into tensor<9x1xi32>
        %291 = arith.negf %cst_0 : f16
        %alloc_55 = memref.alloc() : memref<1x6xi1>
        %false_56 = index.bool.constant false
        %292 = bufferization.to_tensor %alloc_14 : memref<6x9xi16>
        %293 = index.ceildivu %c0, %c9
        %294 = tensor.empty() : tensor<1x9xi16>
        %295 = linalg.matmul ins(%8, %292 : tensor<1x6xi16>, tensor<6x9xi16>) outs(%294 : tensor<1x9xi16>) -> tensor<1x9xi16>
        vector.print %287 : vector<6x9xf16>
        %296 = bufferization.clone %alloc : memref<6x9xf16> to memref<6x9xf16>
        %c929640842_i64 = arith.constant 929640842 : i64
        memref.tensor_store %18, %alloc_3 : memref<9xi16>
        %extracted_57 = tensor.extract %13[%c4] : tensor<9xi16>
        %297 = index.castu %c7 : index to i32
        %298 = vector.broadcast %false_1 : i1 to vector<6xi1>
        %299 = vector.insert %298, %48 [0] : vector<6xi1> into vector<1x6xi1>
        %300 = math.round %0 : tensor<9xf16>
        %301 = arith.subi %c-15825_i16, %c-15825_i16 : i16
        %302 = arith.ori %c-29564_i16, %c16477_i16 : i16
        %303 = index.add %c2, %290
        %304 = math.atan %7 : tensor<6x9xf32>
        %305 = math.tanh %0 : tensor<9xf16>
        %306 = math.absf %2 : tensor<6x9xf16>
        %307 = math.round %10 : tensor<6x9xf32>
        %308 = math.round %6 : tensor<1x6xf32>
        %309 = affine.apply affine_map<(d0, d1) -> (((d0 ceildiv 128) mod 32) floordiv 4)>(%46, %c4)
        %310 = math.atan %7 : tensor<6x9xf32>
        %alloc_58 = memref.alloc() : memref<1x6xi64>
        memref.alloca_scope.return %alloc_58 : memref<1x6xi64>
      }
      %250 = math.log10 %7 : tensor<6x9xf32>
      %251 = arith.addf %cst_0, %cst_2 : f16
      %252 = math.cos %cst : f32
      %253 = vector.broadcast %c134130799_i32 : i32 to vector<1xi32>
      %dest, %accumulated_value = vector.scan <and>, %47, %253 {inclusive = true, reduction_dim = 1 : i64} : vector<1x6xi32>, vector<1xi32>
      %254 = math.atan2 %2, %2 : tensor<6x9xf16>
      %255 = vector.matrix_multiply %57, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %256 = math.round %cst_2 : f16
      %257 = vector.broadcast %c522676489_i32 : i32 to vector<9xi32>
      %258 = vector.broadcast %true : i1 to vector<9xi1>
      %259 = vector.gather %alloc_13[%38, %38] [%257], %258, %257 : memref<1x6xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
      %collapsed_51 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
      %260 = index.castu %rank_18 : index to i32
      %261 = arith.divsi %c1901607918_i32, %c1820405062_i32 : i32
      %262 = arith.mulf %cst_2, %cst_0 : f16
      %263 = vector.insert %false, %258 [0] : i1 into vector<9xi1>
      %collapsed_52 = tensor.collapse_shape %5 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
      %264 = arith.negf %cst_0 : f16
      %265 = index.maxu %38, %c8
      %266 = arith.shrui %c522676489_i32, %c134130799_i32 : i32
      %267 = arith.addi %false_1, %false : i1
      %268 = index.sizeof
      %269 = arith.cmpf ugt, %cst, %cst : f32
      %270 = arith.subi %true, %true : i1
      %271 = arith.shrui %c29724_i16, %c-15825_i16 : i16
      %272 = math.round %0 : tensor<9xf16>
      %273 = arith.addi %c1678315323_i64, %c1552290737_i64 : i64
      %274 = math.log %0 : tensor<9xf16>
      %275 = index.floordivs %c3, %46
      %276 = arith.minsi %false, %false_1 : i1
      %277 = arith.floordivsi %c29724_i16, %c-29564_i16 : i16
      %278 = bufferization.clone %alloc_11 : memref<6x9xi1> to memref<6x9xi1>
      %279 = math.fma %0, %0, %0 : tensor<9xf16>
      %280 = math.log2 %2 : tensor<6x9xf16>
      %alloc_53 = memref.alloc() : memref<6x9xi32>
      memref.alloca_scope.return %alloc_53 : memref<6x9xi32>
    }
    affine.store %cst_2, %alloc_10[%c8] : memref<9xf16>
    %64 = arith.minsi %extracted, %c29724_i16 : i16
    %65 = scf.while (%arg0 = %alloc_5) : (memref<1x6xi1>) -> memref<1x6xi1> {
      %249 = vector.shuffle %49, %47 [0, 1] : vector<1x6xi32>, vector<1x6xi32>
      %250 = arith.negf %cst : f32
      %251 = tensor.empty(%c1) : tensor<6x?xi1>
      %252 = arith.floordivsi %c1901607918_i32, %c1901607918_i32 : i32
      %253 = tensor.empty() : tensor<6x9xi32>
      %inserted_51 = tensor.insert %cst into %10[%c4, %c3] : tensor<6x9xf32>
      %254 = index.ceildivs %c11, %c15
      %255 = index.castu %46 : index to i32
      scf.condition(%false) %alloc_5 : memref<1x6xi1>
    } do {
    ^bb0(%arg0: memref<1x6xi1>):
      %249 = math.ctpop %13 : tensor<9xi16>
      %250 = vector.broadcast %false : i1 to vector<6xi1>
      %251 = vector.insert %250, %48 [0] : vector<6xi1> into vector<1x6xi1>
      %252 = arith.minsi %false_1, %false_1 : i1
      %253 = math.powf %10, %10 : tensor<6x9xf32>
      %254 = index.mul %38, %c5
      %255 = vector.flat_transpose %21 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
      %256 = tensor.empty() : tensor<9x1xi64>
      %257 = tensor.empty() : tensor<6x1xi64>
      %258 = linalg.matmul ins(%1, %256 : tensor<6x9xi64>, tensor<9x1xi64>) outs(%257 : tensor<6x1xi64>) -> tensor<6x1xi64>
      %259 = vector.bitcast %47 : vector<1x6xi32> to vector<1x6xf32>
      %260 = arith.mulf %cst, %cst : f32
      %261 = memref.load %alloc[%c3, %c6] : memref<6x9xf16>
      %262 = vector.reduction <and>, %21 : vector<13xi16> into i16
      %263 = bufferization.clone %arg0 : memref<1x6xi1> to memref<1x6xi1>
      %264 = index.sub %c6, %c2
      %265 = arith.divui %c16477_i16, %c16477_i16 : i16
      %266 = arith.maxf %cst, %cst : f32
      %267 = affine.min affine_map<(d0) -> (d0 + 32)>(%c9)
      scf.yield %alloc_5 : memref<1x6xi1>
    }
    %66 = arith.ceildivsi %c134130799_i32, %c1820405062_i32 : i32
    %67 = tensor.empty(%40, %c4) : tensor<?x?xi1>
    %68 = arith.maxui %c16477_i16, %extracted : i16
    %69 = affine.if affine_set<(d0) : ((d0 floordiv 2) floordiv 8 == 0, (-(d0 - 128)) mod 32 >= 0, d0 - 128 == 0, -(d0 - 128) == 0)>(%c0) -> memref<6x9xf32> {
      %249 = math.ipowi %c1820405062_i32, %c522676489_i32 : i32
      %alloca_51 = memref.alloca() : memref<6x9xf16>
      %250 = arith.remui %extracted, %c29724_i16 : i16
      %251 = arith.xori %c16477_i16, %c-29564_i16 : i16
      %252 = vector.create_mask %c2, %c10 : vector<6x9xi1>
      %253 = arith.minsi %c29724_i16, %c16477_i16 : i16
      %254 = memref.load %alloc_5[%c0, %c4] : memref<1x6xi1>
      %255 = bufferization.clone %alloc_3 : memref<9xi16> to memref<9xi16>
      affine.yield %alloc_9 : memref<6x9xf32>
    } else {
      %249 = memref.alloca_scope  -> (f16) {
        %256 = math.expm1 %0 : tensor<9xf16>
        %alloc_51 = memref.alloc() : memref<54xi64>
        memref.tensor_store %collapsed, %alloc_51 : memref<54xi64>
        %257 = arith.maxsi %extracted, %c-15825_i16 : i16
        %258 = arith.negf %cst : f32
        %259 = arith.cmpf one, %cst_0, %cst_0 : f16
        %260 = index.castu %c16477_i16 : i16 to index
        %261 = index.floordivs %c2, %c13
        %262 = vector.matrix_multiply %39, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 13 : i32} : (vector<1xi16>, vector<13xi16>) -> vector<13xi16>
        %expanded_52 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x9xf32> into tensor<6x9x1xf32>
        %263 = math.round %cst_2 : f16
        %264 = math.copysign %6, %6 : tensor<1x6xf32>
        %265 = math.atan %0 : tensor<9xf16>
        %266 = index.add %c10, %rank_18
        %267 = arith.shrui %c134130799_i32, %c1901607918_i32 : i32
        %rank_53 = tensor.rank %expanded_52 : tensor<6x9x1xf32>
        %268 = index.add %42, %c1
        %269 = affine.min affine_map<(d0) -> ((d0 floordiv 8) mod 128, ((d0 floordiv 8) mod 128) floordiv 2, (d0 floordiv 8) ceildiv 8 - 16, (d0 floordiv 8) ceildiv 8 - 16)>(%c6)
        %270 = arith.remui %c-15825_i16, %c16477_i16 : i16
        %271 = vector.bitcast %49 : vector<1x6xi32> to vector<1x6xi32>
        %272 = bufferization.to_memref %transposed : memref<9xi16>
        %273 = arith.addf %cst, %cst : f32
        %274 = arith.cmpf olt, %cst, %cst : f32
        %275 = math.tanh %6 : tensor<1x6xf32>
        %276 = math.round %7 : tensor<6x9xf32>
        %277 = index.maxs %c9, %c1
        %278 = math.powf %cst_0, %cst_0 : f16
        %279 = math.atan2 %6, %6 : tensor<1x6xf32>
        %280 = arith.remf %cst_2, %cst_2 : f16
        %281 = vector.extract %48[0] : vector<1x6xi1>
        %282 = vector.matrix_multiply %21, %39 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<1xi16>) -> vector<13xi16>
        %283 = math.rsqrt %expanded_52 : tensor<6x9x1xf32>
        %284 = arith.maxf %cst, %cst : f32
        memref.alloca_scope.return %cst_0 : f16
      }
      %250 = vector.broadcast %cst : f32 to vector<6xf32>
      %dest, %accumulated_value = vector.scan <minf>, %33, %250 {inclusive = false, reduction_dim = 0 : i64} : vector<1x6xf32>, vector<6xf32>
      %251 = vector.matrix_multiply %21, %39 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<1xi16>) -> vector<13xi16>
      memref.tensor_store %5, %alloc_9 : memref<6x9xf32>
      %252 = math.log10 %0 : tensor<9xf16>
      %253 = vector.transpose %48, [0, 1] : vector<1x6xi1> to vector<1x6xi1>
      %254 = arith.shrui %c1678315323_i64, %c1552290737_i64 : i64
      %255 = index.maxs %rank, %c3
      affine.yield %alloc_9 : memref<6x9xf32>
    }
    %70 = arith.ori %c-15825_i16, %c16477_i16 : i16
    %71 = math.sqrt %2 : tensor<6x9xf16>
    %72 = arith.remsi %c16477_i16, %c16477_i16 : i16
    %73 = arith.mulf %cst, %cst : f32
    %74 = vector.splat %c8 : vector<1x6xindex>
    %75 = arith.minsi %c134130799_i32, %c522676489_i32 : i32
    %76 = math.log10 %0 : tensor<9xf16>
    %77 = vector.bitcast %49 : vector<1x6xi32> to vector<1x6xi32>
    %78 = vector.broadcast %c-29564_i16 : i16 to vector<1x1xi16>
    %79 = vector.outerproduct %39, %39, %78 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
    bufferization.dealloc_tensor %2 : tensor<6x9xf16>
    %80 = arith.shrui %c29724_i16, %c-15825_i16 : i16
    %81 = scf.execute_region -> tensor<6x9xf32> {
      %249 = arith.addf %cst_2, %cst_2 : f16
      %250 = math.ipowi %c-15825_i16, %extracted : i16
      %251 = vector.reduction <or>, %39 : vector<1xi16> into i16
      %252 = arith.remsi %c16477_i16, %c-29564_i16 : i16
      %253 = arith.divf %cst_2, %cst_2 : f16
      %254 = arith.shrui %c1552290737_i64, %c1552290737_i64 : i64
      %extracted_51 = tensor.extract %13[%c3] : tensor<9xi16>
      %255 = vector.broadcast %cst : f32 to vector<6x6xf32>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %32, %32, %255 : vector<1x6xf32>, vector<1x6xf32> into vector<6x6xf32>
      %257 = math.ipowi %c29724_i16, %extracted_51 : i16
      affine.store %false_1, %alloc_8[%c13, %c8] : memref<6x9xi1>
      %258 = math.exp %cst_0 : f16
      %259 = arith.subi %c134130799_i32, %c522676489_i32 : i32
      %260 = bufferization.clone %alloc_13 : memref<1x6xi32> to memref<1x6xi32>
      %alloc_52 = memref.alloc() : memref<9x9xi32>
      %261 = tensor.empty() : tensor<6x9xi32>
      %262 = linalg.matmul ins(%11, %alloc_52 : tensor<6x9xi32>, memref<9x9xi32>) outs(%261 : tensor<6x9xi32>) -> tensor<6x9xi32>
      %263 = math.atan %10 : tensor<6x9xf32>
      %splat_53 = tensor.splat %c1678315323_i64 : tensor<9xi64>
      scf.yield %5 : tensor<6x9xf32>
    }
    %82 = vector.shuffle %47, %49 [0] : vector<1x6xi32>, vector<1x6xi32>
    %83 = index.ceildivs %58, %rank_18
    %expanded = tensor.expand_shape %0 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
    %splat = tensor.splat %c29724_i16 : tensor<6x9xi16>
    %cast_19 = tensor.cast %3 : tensor<9xi16> to tensor<?xi16>
    %collapsed_20 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
    %84 = vector.matrix_multiply %57, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
    %85 = vector.reduction <maxsi>, %39 : vector<1xi16> into i16
    %cst_21 = arith.constant 1.000000e+00 : f32
    %cst_22 = arith.constant 0.000000e+00 : f32
    %86 = vector.transfer_read %5[%40, %42], %cst_22 : tensor<6x9xf32>, vector<f32>
    %87 = vector.load %alloc_3[%c2] : memref<9xi16>, vector<6x9xi16>
    %88 = arith.divui %false, %false_1 : i1
    %89 = math.exp2 %cst_21 : f32
    %90 = math.copysign %6, %6 : tensor<1x6xf32>
    %91 = math.ctpop %13 : tensor<9xi16>
    %92 = math.tan %6 : tensor<1x6xf32>
    %93 = index.castu %true : i1 to index
    %94 = bufferization.clone %alloc_16 : memref<9xi64> to memref<9xi64>
    %95 = index.add %c3, %c1
    %96 = vector.broadcast %c13 : index to vector<9xindex>
    %97 = vector.broadcast %false : i1 to vector<9xi1>
    vector.scatter %alloc_8[%c0, %c7] [%96], %97, %97 : memref<6x9xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
    %collapsed_23 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x6xi1> into tensor<6xi1>
    %98 = affine.if affine_set<(d0, d1, d2, d3) : (d3 == 0, 0 >= 0)>(%c7, %c3, %c8, %c2) -> memref<9xi32> {
      %249 = vector.broadcast %c1820405062_i32 : i32 to vector<13xi32>
      %250 = vector.broadcast %false : i1 to vector<13xi1>
      %251 = vector.maskedload %alloc_7[%c2], %250, %249 : memref<9xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
      vector.print %87 : vector<6x9xi16>
      %252 = math.log10 %10 : tensor<6x9xf32>
      %253 = arith.minsi %false_1, %true : i1
      %254 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 8 - 64, d0 floordiv 8, d0, d0 ceildiv 128)>(%38, %c7, %c14)
      %255 = vector.transpose %33, [0, 1] : vector<1x6xf32> to vector<1x6xf32>
      %256 = index.ceildivu %c11, %rank_18
      %257 = math.ctpop %11 : tensor<6x9xi32>
      affine.yield %alloc_6 : memref<9xi32>
    } else {
      %249 = index.mul %c3, %c1
      %250 = vector.broadcast %cst_0 : f16 to vector<6xf16>
      %251 = vector.broadcast %true : i1 to vector<6xi1>
      %252 = vector.maskedload %alloc_10[%c3], %251, %250 : memref<9xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
      %253 = arith.addf %cst_21, %cst : f32
      %254 = math.absf %10 : tensor<6x9xf32>
      %255 = index.maxs %93, %c7
      %256 = vector.broadcast %cst_21 : f32 to vector<6x9xf32>
      %257 = vector.fma %256, %256, %256 : vector<6x9xf32>
      %258 = vector.matrix_multiply %39, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %259 = arith.minsi %c522676489_i32, %c134130799_i32 : i32
      affine.yield %alloc_7 : memref<9xi32>
    }
    %99 = vector.broadcast %c134130799_i32 : i32 to vector<1xi32>
    %100 = vector.broadcast %true : i1 to vector<1xi1>
    %101 = vector.maskedload %alloc_7[%c8], %100, %99 : memref<9xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    %102 = arith.remf %cst_2, %cst_0 : f16
    %103 = arith.mulf %cst_2, %cst_2 : f16
    %104 = arith.maxsi %c1820405062_i32, %c522676489_i32 : i32
    %105 = bufferization.to_tensor %alloc_7 : memref<9xi32>
    %extracted_24 = tensor.extract %19[%c0] : tensor<1xi1>
    %alloc_25 = memref.alloc() : memref<1x6xi64>
    %106 = vector.broadcast %c1552290737_i64 : i64 to vector<6x9xi64>
    %107 = vector.broadcast %false_1 : i1 to vector<6x9xi1>
    %108 = vector.broadcast %c1820405062_i32 : i32 to vector<6x9xi32>
    %109 = vector.gather %alloc_25[%c9, %c10] [%108], %107, %106 : memref<1x6xi64>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi64> into vector<6x9xi64>
    %110 = index.ceildivs %c3, %58
    %111 = vector.splat %rank_18 : vector<1x6xindex>
    %112 = vector.shuffle %32, %33 [1] : vector<1x6xf32>, vector<1x6xf32>
    vector.print %39 : vector<1xi16>
    %113 = arith.remf %cst_0, %cst_2 : f16
    %114 = arith.remui %extracted_24, %true : i1
    %115 = scf.while (%arg0 = %alloc_16) : (memref<9xi64>) -> memref<9xi64> {
      %249 = vector.broadcast %40 : index to vector<6xindex>
      %250 = vector.broadcast %false_1 : i1 to vector<6xi1>
      %251 = vector.broadcast %c-15825_i16 : i16 to vector<6xi16>
      vector.scatter %alloc_14[%c2, %c8] [%249], %250, %251 : memref<6x9xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
      %252 = index.divs %42, %c1
      %253 = index.mul %38, %c10
      %254 = vector.extract %84[0] : vector<1xi16>
      %255 = tensor.empty() : tensor<9xi16>
      %mapped = linalg.map ins(%13, %3, %18 : tensor<9xi16>, tensor<9xi16>, tensor<9xi16>) outs(%255 : tensor<9xi16>)
        (%in: i16, %in_51: i16, %in_52: i16) {
          %259 = math.round %cst_2 : f16
          %260 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 8 - d0)>(%c10, %c15, %253, %c10)
          %261 = affine.apply affine_map<(d0, d1) -> (((d1 * 2 + 2) ceildiv 32) ceildiv 8)>(%95, %46)
          %262 = arith.andi %c134130799_i32, %c1820405062_i32 : i32
          %263 = affine.apply affine_map<(d0, d1) -> (((d1 * 2 + 2) ceildiv 32) ceildiv 8)>(%c15, %c1)
          %264 = math.fma %cst_0, %cst_0, %cst_0 : f16
          %265 = index.maxs %93, %252
          %266 = arith.maxsi %extracted_24, %false_1 : i1
          %267 = vector.broadcast %c3 : index to vector<13xindex>
          %268 = vector.broadcast %false : i1 to vector<13xi1>
          %269 = vector.broadcast %cst_2 : f16 to vector<13xf16>
          vector.scatter %alloc_4[%c4, %c7] [%267], %268, %269 : memref<6x9xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
          %270 = arith.ori %c-29564_i16, %in : i16
          %271 = affine.apply affine_map<(d0) -> (0)>(%c6)
          memref.assume_alignment %arg0, 1 : memref<9xi64>
          %272 = vector.bitcast %33 : vector<1x6xf32> to vector<1x6xf32>
          %273 = vector.broadcast %c1678315323_i64 : i64 to vector<6x9xi64>
          %alloc_53 = memref.alloc() : memref<1x6xf32>
          memref.tensor_store %6, %alloc_53 : memref<1x6xf32>
          %274 = arith.shrsi %c1820405062_i32, %c1901607918_i32 : i32
          vector.print %87 : vector<6x9xi16>
          %275 = bufferization.clone %alloc_8 : memref<6x9xi1> to memref<6x9xi1>
          %276 = index.add %265, %93
          %277 = memref.load %alloc_14[%c5, %c1] : memref<6x9xi16>
          %278 = math.log %2 : tensor<6x9xf16>
          vector.print %99 : vector<1xi32>
          %279 = index.sub %c11, %rank
          %280 = bufferization.clone %alloc_17 : memref<9xf32> to memref<9xf32>
          %281 = arith.divsi %in_51, %c-29564_i16 : i16
          memref.store %extracted_24, %275[%c4, %c4] : memref<6x9xi1>
          %282 = tensor.empty() : tensor<6x9xi1>
          %283 = math.log10 %expanded : tensor<9x1xf16>
          memref.copy %alloc_17, %280 : memref<9xf32> to memref<9xf32>
          %284 = arith.maxf %cst_21, %cst_21 : f32
          %285 = arith.maxsi %c-29564_i16, %c-29564_i16 : i16
          %cast_54 = tensor.cast %6 : tensor<1x6xf32> to tensor<?x?xf32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %256 = arith.shrui %c1820405062_i32, %c1901607918_i32 : i32
      %257 = math.log2 %cst : f32
      %258 = index.sizeof
      scf.condition(%extracted_24) %94 : memref<9xi64>
    } do {
    ^bb0(%arg0: memref<9xi64>):
      %249 = index.mul %c2, %38
      %250 = math.sqrt %expanded : tensor<9x1xf16>
      %cast_51 = tensor.cast %17 : tensor<9xi16> to tensor<?xi16>
      %251 = index.ceildivs %c4, %c6
      %252 = arith.negf %cst_2 : f16
      %253 = index.mul %c10, %c5
      %254 = arith.addf %cst_2, %cst_2 : f16
      %255 = index.add %93, %83
      %256 = scf.if %true -> (i16) {
        memref.assume_alignment %arg0, 16 : memref<9xi64>
        %264 = math.atan2 %7, %10 : tensor<6x9xf32>
        %265 = arith.addf %cst, %cst_21 : f32
        %266 = arith.remsi %false_1, %false : i1
        %expanded_52 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<6x9xf16> into tensor<6x9x1xf16>
        %267 = arith.negf %cst_21 : f32
        %268 = arith.divsi %c1552290737_i64, %c1552290737_i64 : i64
        %269 = arith.floordivsi %true, %true : i1
        scf.yield %c29724_i16 : i16
      } else {
        %264 = math.log2 %0 : tensor<9xf16>
        %265 = arith.addf %cst_0, %cst_2 : f16
        memref.tensor_store %18, %alloc_3 : memref<9xi16>
        %266 = vector.shuffle %48, %48 [0] : vector<1x6xi1>, vector<1x6xi1>
        %false_52 = arith.constant false
        %false_53 = arith.constant false
        %267 = vector.transfer_read %reduced[%c12], %false_53 : tensor<1xi1>, vector<i1>
        %268 = vector.insertelement %c-29564_i16, %84[%c12 : index] : vector<1xi16>
        %269 = arith.negf %cst_2 : f16
        %270 = bufferization.clone %alloc_10 : memref<9xf16> to memref<9xf16>
        scf.yield %c-15825_i16 : i16
      }
      %257 = math.expm1 %0 : tensor<9xf16>
      %258 = math.sqrt %2 : tensor<6x9xf16>
      %259 = math.tanh %cst_21 : f32
      %260 = arith.ori %c1678315323_i64, %c1678315323_i64 : i64
      %261 = math.round %7 : tensor<6x9xf32>
      %262 = bufferization.to_tensor %alloc_9 : memref<6x9xf32>
      %263 = index.castu %false : i1 to index
      scf.yield %arg0 : memref<9xi64>
    }
    scf.index_switch %c15 
    case 1 {
      %249 = arith.minsi %false_1, %extracted_24 : i1
      %250 = index.mul %c14, %42
      %251 = arith.maxsi %true, %extracted_24 : i1
      %splat_51 = tensor.splat %c16477_i16 : tensor<6x9xi16>
      %252 = vector.shuffle %33, %32 [0] : vector<1x6xf32>, vector<1x6xf32>
      %253 = math.fpowi %cst_21, %c1820405062_i32 : f32, i32
      %254 = arith.shli %c134130799_i32, %c1820405062_i32 : i32
      %255 = vector.broadcast %c1 : index to vector<9xindex>
      %256 = vector.broadcast %extracted_24 : i1 to vector<9xi1>
      %257 = vector.broadcast %cst_21 : f32 to vector<9xf32>
      vector.scatter %alloc_17[%c0] [%255], %256, %257 : memref<9xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
      %258 = math.tan %6 : tensor<1x6xf32>
      %259 = arith.maxf %cst_0, %cst_0 : f16
      %260 = index.divs %c4, %83
      %cast_52 = tensor.cast %splat : tensor<6x9xi16> to tensor<?x?xi16>
      %261 = index.mul %38, %c15
      %262 = math.fma %5, %7, %7 : tensor<6x9xf32>
      %263 = affine.if affine_set<(d0) : (d0 - 127 >= 0, d0 >= 0, d0 mod 2 - (d0 - 128) >= 0)>(%c15) -> i1 {
        %265 = index.floordivs %c14, %46
        vector.print %48 : vector<1x6xi1>
        vector.print %57 : vector<1xi16>
        %266 = index.add %83, %93
        %267 = index.castu %c522676489_i32 : i32 to index
        %268 = bufferization.to_memref %cast_19 : memref<?xi16>
        %269 = arith.addf %cst_2, %cst_2 : f16
        %alloc_53 = memref.alloc() : memref<1x6xi1>
        memref.copy %alloc_5, %alloc_53 : memref<1x6xi1> to memref<1x6xi1>
        affine.yield %false_1 : i1
      } else {
        %265 = vector.broadcast %c1552290737_i64 : i64 to vector<9xi64>
        %266 = vector.insert %265, %106 [3] : vector<9xi64> into vector<6x9xi64>
        %267 = arith.shrui %c1678315323_i64, %c1552290737_i64 : i64
        %268 = arith.minsi %false_1, %false : i1
        %269 = arith.ceildivsi %c1678315323_i64, %c1552290737_i64 : i64
        %270 = arith.remsi %false_1, %true : i1
        memref.tensor_store %8, %alloc_15 : memref<1x6xi16>
        %271 = arith.remui %false_1, %true : i1
        %272 = vector.broadcast %c134130799_i32 : i32 to vector<6xi32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %47, %101, %272 : vector<1x6xi32>, vector<1xi32> into vector<6xi32>
        affine.yield %extracted_24 : i1
      }
      %264 = math.exp %10 : tensor<6x9xf32>
      scf.yield
    }
    case 2 {
      %249 = math.log2 %7 : tensor<6x9xf32>
      bufferization.dealloc_tensor %105 : tensor<9xi32>
      %250 = arith.shrsi %c1552290737_i64, %c1678315323_i64 : i64
      %251 = vector.broadcast %93 : index to vector<9xindex>
      %252 = vector.broadcast %false : i1 to vector<9xi1>
      %253 = vector.broadcast %cst_0 : f16 to vector<9xf16>
      vector.scatter %alloc_4[%c0, %c0] [%251], %252, %253 : memref<6x9xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      %254 = tensor.empty() : tensor<1x1x1xf16>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%254 : tensor<1x1x1xf16>) outs(%254 : tensor<1x1x1xf16>) {
      ^bb0(%in: f16, %out: f16):
        %266 = index.castu %c12 : index to i32
        %267 = math.log2 %in : f16
        %268 = arith.divsi %c1552290737_i64, %c1678315323_i64 : i64
        %269 = arith.remui %c16477_i16, %c16477_i16 : i16
        %270 = arith.xori %false, %true : i1
        %271 = math.round %cst : f32
        %272 = arith.remsi %extracted, %c-15825_i16 : i16
        %273 = arith.andi %c1901607918_i32, %c1820405062_i32 : i32
        %collapsed_52 = tensor.collapse_shape %15 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
        %274 = math.cos %81 : tensor<6x9xf32>
        %alloc_53 = memref.alloc() : memref<9x6xi64>
        %275 = tensor.empty() : tensor<6x6xi64>
        %276 = linalg.matmul ins(%4, %alloc_53 : tensor<6x9xi64>, memref<9x6xi64>) outs(%275 : tensor<6x6xi64>) -> tensor<6x6xi64>
        %277 = arith.addf %in, %cst_2 : f16
        %278 = math.log10 %10 : tensor<6x9xf32>
        %279 = arith.ori %extracted, %c-15825_i16 : i16
        %280 = math.round %in : f16
        %281 = math.ctlz %11 : tensor<6x9xi32>
        %282 = arith.maxui %extracted, %c29724_i16 : i16
        %283 = arith.remui %c16477_i16, %extracted : i16
        %284 = arith.ori %false_1, %extracted_24 : i1
        %285 = vector.broadcast %c1678315323_i64 : i64 to vector<6xi64>
        %dest, %accumulated_value = vector.scan <and>, %109, %285 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xi64>, vector<6xi64>
        %286 = index.ceildivu %c1, %83
        %collapsed_54 = tensor.collapse_shape %37 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
        %alloca_55 = memref.alloca() : memref<6x9xi64>
        %287 = arith.ceildivsi %c522676489_i32, %c134130799_i32 : i32
        %extracted_56 = tensor.extract %23[] : tensor<i32>
        %288 = vector.broadcast %extracted : i16 to vector<6xi16>
        %dest_57, %accumulated_value_58 = vector.scan <and>, %87, %288 {inclusive = false, reduction_dim = 1 : i64} : vector<6x9xi16>, vector<6xi16>
        memref.store %c1678315323_i64, %94[%c6] : memref<9xi64>
        %289 = vector.create_mask %c3 : vector<9xi1>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %100, %100, %true : vector<1xi1>, vector<1xi1> into i1
        %291 = bufferization.to_memref %collapsed_23 : memref<6xi1>
        %292 = math.sqrt %in : f16
        %293 = math.exp2 %cst_21 : f32
        linalg.yield %in : f16
      } -> tensor<1x1x1xf16>
      %256 = math.log2 %7 : tensor<6x9xf32>
      %257 = scf.while (%arg0 = %cst_21) : (f32) -> f32 {
        %266 = arith.ori %false, %false_1 : i1
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_52 = arith.constant 0 : i32
        %267 = vector.transfer_read %12[%rank_18], %c0_i32_52 : tensor<9xi32>, vector<i32>
        %268 = vector.shuffle %49, %77 [0] : vector<1x6xi32>, vector<1x6xi32>
        %cast_53 = tensor.cast %15 : tensor<1x6xi64> to tensor<?x?xi64>
        %269 = vector.matrix_multiply %39, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %alloc_54 = memref.alloc() : memref<9x1xi64>
        %270 = tensor.empty() : tensor<6x1xi64>
        %271 = linalg.matmul ins(%1, %alloc_54 : tensor<6x9xi64>, memref<9x1xi64>) outs(%270 : tensor<6x1xi64>) -> tensor<6x1xi64>
        %272 = arith.divui %c29724_i16, %c-29564_i16 : i16
        %273 = memref.load %alloc_17[%c5] : memref<9xf32>
        scf.condition(%true) %cst : f32
      } do {
      ^bb0(%arg0: f32):
        %266 = index.mul %42, %c11
        %267 = math.powf %7, %10 : tensor<6x9xf32>
        %268 = arith.minui %c1820405062_i32, %c1901607918_i32 : i32
        %269 = vector.broadcast %cst : f32 to vector<9xf32>
        %270 = vector.fma %269, %269, %269 : vector<9xf32>
        %271 = index.add %c0, %c4
        %272 = vector.broadcast %c1552290737_i64 : i64 to vector<6xi64>
        %dest, %accumulated_value = vector.scan <add>, %106, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xi64>, vector<6xi64>
        %273 = vector.bitcast %100 : vector<1xi1> to vector<1xi1>
        %274 = math.exp2 %expanded : tensor<9x1xf16>
        %275 = index.ceildivs %c9, %c15
        %276 = index.add %42, %c8
        %277 = arith.shrui %c29724_i16, %c-29564_i16 : i16
        %278 = math.ctlz %c1901607918_i32 : i32
        %279 = index.maxs %rank, %46
        %280 = tensor.empty(%c6) : tensor<?xi64>
        %281 = tensor.empty() : tensor<1x6xi32>
        %282 = math.fpowi %6, %281 : tensor<1x6xf32>, tensor<1x6xi32>
        %283 = index.maxu %c7, %95
        scf.yield %arg0 : f32
      }
      %258 = math.atan %cst_0 : f16
      %259 = vector.bitcast %77 : vector<1x6xi32> to vector<1x6xi32>
      %260 = vector.broadcast %cst : f32 to vector<6xf32>
      %261 = vector.broadcast %false : i1 to vector<6xi1>
      %262 = vector.maskedload %alloc_9[%c3, %c1], %261, %260 : memref<6x9xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %263 = arith.addf %cst_2, %cst_2 : f16
      %264 = vector.insertelement %false, %100[%40 : index] : vector<1xi1>
      %alloc_51 = memref.alloc() : memref<9x1xf16>
      memref.tensor_store %expanded, %alloc_51 : memref<9x1xf16>
      %265 = math.atan %cst : f32
      scf.index_switch %c14 
      case 1 {
        %266 = math.ipowi %14, %14 : tensor<1x6xi1>
        %alloc_52 = memref.alloc() : memref<9xi32>
        %267 = math.tanh %2 : tensor<6x9xf16>
        %268 = math.log10 %cst_0 : f16
        %269 = vector.broadcast %c1820405062_i32 : i32 to vector<1x1xi32>
        %270 = vector.outerproduct %101, %101, %269 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
        %271 = math.log10 %2 : tensor<6x9xf16>
        affine.store %c1678315323_i64, %alloc_16[%c7] : memref<9xi64>
        %alloc_53 = memref.alloc() : memref<9x9xi64>
        %272 = tensor.empty() : tensor<6x9xi64>
        %273 = linalg.matmul ins(%4, %alloc_53 : tensor<6x9xi64>, memref<9x9xi64>) outs(%272 : tensor<6x9xi64>) -> tensor<6x9xi64>
        %expanded_54 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<1x6xi16> into tensor<1x6x1xi16>
        %274 = index.floordivs %c6, %rank_18
        %275 = math.atan %0 : tensor<9xf16>
        %276 = vector.shuffle %100, %261 [1, 3, 4, 5] : vector<1xi1>, vector<6xi1>
        %277 = bufferization.clone %alloc_9 : memref<6x9xf32> to memref<6x9xf32>
        %alloca_55 = memref.alloca() : memref<6x9xi16>
        %278 = arith.shrui %c1901607918_i32, %c134130799_i32 : i32
        %279 = index.divs %110, %c5
        scf.yield
      }
      case 2 {
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %39, %57, %c-29564_i16 : vector<1xi16>, vector<1xi16> into i16
        %collapsed_52 = tensor.collapse_shape %7 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        %267 = bufferization.clone %alloc_10 : memref<9xf16> to memref<9xf16>
        %268 = arith.shrui %c134130799_i32, %c1820405062_i32 : i32
        %269 = arith.divui %c-15825_i16, %c-15825_i16 : i16
        %270 = vector.broadcast %40 : index to vector<9xindex>
        %271 = vector.broadcast %extracted_24 : i1 to vector<9xi1>
        %272 = vector.broadcast %extracted : i16 to vector<9xi16>
        vector.scatter %alloc_14[%c1, %c5] [%270], %271, %272 : memref<6x9xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %273 = math.ctpop %14 : tensor<1x6xi1>
        %274 = arith.floordivsi %c29724_i16, %c29724_i16 : i16
        %275 = math.tanh %7 : tensor<6x9xf32>
        %276 = arith.divsi %c1678315323_i64, %c1552290737_i64 : i64
        %expanded_53 = tensor.expand_shape %reduced [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
        %277 = vector.broadcast %c29724_i16 : i16 to vector<1x1xi16>
        %278 = vector.outerproduct %57, %39, %277 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
        bufferization.dealloc_tensor %collapsed_52 : tensor<54xf32>
        %279 = arith.subi %c522676489_i32, %c1820405062_i32 : i32
        %280 = arith.remsi %c522676489_i32, %c522676489_i32 : i32
        %281 = arith.maxf %cst, %cst : f32
        scf.yield
      }
      case 3 {
        %266 = arith.subi %c1901607918_i32, %c134130799_i32 : i32
        %267 = math.log %0 : tensor<9xf16>
        %rank_52 = tensor.rank %12 : tensor<9xi32>
        %268 = arith.addf %cst_2, %cst_2 : f16
        %269 = arith.remf %cst_21, %cst_21 : f32
        %270 = index.add %c10, %c13
        %271 = affine.min affine_map<(d0, d1, d2, d3) -> ((((d2 ceildiv 2) floordiv 4) floordiv 16) * 16, d3)>(%c5, %c7, %46, %c12)
        %272 = math.sqrt %2 : tensor<6x9xf16>
        %collapsed_53 = tensor.collapse_shape %5 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        %273 = arith.andi %false, %extracted_24 : i1
        %274 = vector.broadcast %rank : index to vector<13xindex>
        %275 = vector.broadcast %extracted_24 : i1 to vector<13xi1>
        vector.scatter %alloc_12[%c5, %c7] [%274], %275, %275 : memref<6x9xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
        %276 = index.add %rank, %c5
        %277 = vector.transpose %107, [0, 1] : vector<6x9xi1> to vector<6x9xi1>
        %278 = math.atan2 %7, %5 : tensor<6x9xf32>
        %279 = arith.ceildivsi %extracted_24, %false_1 : i1
        %280 = vector.broadcast %c1820405062_i32 : i32 to vector<6xi32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %77, %99, %280 : vector<1x6xi32>, vector<1xi32> into vector<6xi32>
        scf.yield
      }
      case 4 {
        %inserted_52 = tensor.insert %extracted into %8[%c0, %c1] : tensor<1x6xi16>
        %rank_53 = tensor.rank %7 : tensor<6x9xf32>
        %266 = index.castu %c522676489_i32 : i32 to index
        %267 = arith.addi %c-29564_i16, %c-15825_i16 : i16
        %268 = arith.addf %cst_21, %cst_21 : f32
        %269 = index.sizeof
        %extracted_54 = tensor.extract %0[%c4] : tensor<9xf16>
        %270 = bufferization.clone %alloc_25 : memref<1x6xi64> to memref<1x6xi64>
        %271 = math.ceil %extracted_54 : f16
        %272 = index.castu %93 : index to i32
        %273 = math.round %cst : f32
        affine.store %c-15825_i16, %alloc_14[%c14, %c2] : memref<6x9xi16>
        %274 = math.tanh %81 : tensor<6x9xf32>
        %extracted_55 = tensor.extract %8[%c0, %c4] : tensor<1x6xi16>
        %275 = math.log10 %7 : tensor<6x9xf32>
        %276 = vector.broadcast %c7 : index to vector<9xindex>
        %277 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %278 = vector.broadcast %c1901607918_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_13[%c0, %c5] [%276], %277, %278 : memref<1x6xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        scf.yield
      }
      default {
        %266 = arith.divsi %c1678315323_i64, %c1552290737_i64 : i64
        %267 = arith.negf %cst_2 : f16
        %268 = arith.remf %cst_0, %cst_2 : f16
        %269 = memref.load %alloc[%c0, %c8] : memref<6x9xf16>
        %270 = tensor.empty() : tensor<6x9xi64>
        %extracted_52 = tensor.extract %8[%c0, %c0] : tensor<1x6xi16>
        %271 = math.ipowi %13, %3 : tensor<9xi16>
        %272 = index.add %110, %83
        %273 = math.cttz %19 : tensor<1xi1>
        %274 = arith.floordivsi %extracted_52, %extracted_52 : i16
        %275 = bufferization.clone %63 : memref<6x9xi32> to memref<6x9xi32>
        %276 = math.round %7 : tensor<6x9xf32>
        %277 = arith.xori %c522676489_i32, %c1901607918_i32 : i32
        %278 = math.roundeven %2 : tensor<6x9xf16>
        %279 = math.roundeven %81 : tensor<6x9xf32>
        %280 = arith.shli %extracted, %c-29564_i16 : i16
      }
      affine.for %arg0 = 0 to 81 {
      }
      scf.yield
    }
    case 3 {
      %249 = tensor.empty() : tensor<6x9xf16>
      %250 = index.mul %c12, %83
      %251 = math.exp %2 : tensor<6x9xf16>
      %252 = math.round %2 : tensor<6x9xf16>
      %253 = math.atan2 %0, %0 : tensor<9xf16>
      %254 = math.sqrt %cst : f32
      %cst_51 = arith.constant 1.000000e+00 : f32
      %255 = vector.transfer_read %6[%c8, %c6], %cst_51 : tensor<1x6xf32>, vector<f32>
      %256 = bufferization.to_tensor %alloc_9 : memref<6x9xf32>
      memref.store %extracted_24, %alloc_8[%c5, %c0] : memref<6x9xi1>
      %257 = math.sqrt %7 : tensor<6x9xf32>
      %258 = vector.shuffle %39, %84 [1] : vector<1xi16>, vector<1xi16>
      %259 = math.round %81 : tensor<6x9xf32>
      %260 = arith.addi %c16477_i16, %c-15825_i16 : i16
      %261 = index.sizeof
      %262 = arith.negf %cst_21 : f32
      %263 = math.tanh %cst_2 : f16
      scf.yield
    }
    default {
      %249 = arith.xori %c29724_i16, %c16477_i16 : i16
      %250 = vector.matrix_multiply %99, %101 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %251 = math.cttz %45 : tensor<6x9xi1>
      %252 = vector.broadcast %c1552290737_i64 : i64 to vector<9xi64>
      %253 = vector.insert %252, %109 [1] : vector<9xi64> into vector<6x9xi64>
      %254 = arith.shrsi %false, %extracted_24 : i1
      %alloc_51 = memref.alloc() : memref<6x9xi64>
      memref.tensor_store %1, %alloc_51 : memref<6x9xi64>
      %255 = math.atan %6 : tensor<1x6xf32>
      %256 = math.powf %10, %5 : tensor<6x9xf32>
      %257 = tensor.empty() : tensor<1x1x1xf16>
      %alloc_52 = memref.alloc() : memref<1x1xf16>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_52 : memref<1x1xf16>, memref<1x1xf16>) outs(%257 : tensor<1x1x1xf16>) {
      ^bb0(%in: f16, %in_54: f16, %out: f16):
        %265 = math.round %5 : tensor<6x9xf32>
        %266 = vector.load %alloc_12[%c1, %c1] : memref<6x9xi1>, vector<6x9xi1>
        %267 = math.exp2 %in_54 : f16
        %268 = affine.apply affine_map<(d0, d1) -> ((d1 ceildiv 4) * 2)>(%46, %40)
        %269 = index.divs %83, %c7
        vector.print %77 : vector<1x6xi32>
        %cast_55 = tensor.cast %8 : tensor<1x6xi16> to tensor<?x?xi16>
        %270 = arith.ori %c-29564_i16, %extracted : i16
        %271 = vector.load %alloc_8[%c0, %c8] : memref<6x9xi1>, vector<6x9xi1>
        %272 = math.atan %2 : tensor<6x9xf16>
        bufferization.dealloc_tensor %4 : tensor<6x9xi64>
        %273 = affine.min affine_map<(d0, d1, d2) -> (d0, d1 - d0, d0 - 2)>(%42, %c0, %42)
        %collapsed_56 = tensor.collapse_shape %15 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
        %274 = affine.min affine_map<(d0, d1) -> (-(d0 * -128 - 1), d1 - 3, 59)>(%273, %273)
        %275 = math.atan %5 : tensor<6x9xf32>
        %276 = arith.shrui %c134130799_i32, %c522676489_i32 : i32
        %277 = arith.divf %in, %in_54 : f16
        %278 = arith.divui %c1678315323_i64, %c1552290737_i64 : i64
        memref.tensor_store %7, %alloc_9 : memref<6x9xf32>
        %279 = index.sizeof
        %280 = vector.broadcast %93 : index to vector<9xindex>
        %281 = vector.broadcast %true : i1 to vector<9xi1>
        vector.scatter %alloc_25[%c0, %c0] [%280], %281, %252 : memref<1x6xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %282 = arith.shli %true, %extracted_24 : i1
        %283 = arith.addi %c1552290737_i64, %c1552290737_i64 : i64
        %284 = arith.negf %out : f16
        %285 = arith.ori %c134130799_i32, %c1820405062_i32 : i32
        %286 = bufferization.clone %alloc_17 : memref<9xf32> to memref<9xf32>
        bufferization.dealloc_tensor %81 : tensor<6x9xf32>
        %287 = math.log2 %6 : tensor<1x6xf32>
        %288 = math.ctpop %3 : tensor<9xi16>
        %289 = vector.load %94[%c8] : memref<9xi64>, vector<6x9xi64>
        %290 = tensor.empty() : tensor<1x6xf16>
        %291 = math.round %cst_0 : f16
        linalg.yield %out : f16
      } -> tensor<1x1x1xf16>
      %259 = bufferization.clone %63 : memref<6x9xi32> to memref<6x9xi32>
      affine.store %c522676489_i32, %34[%c15] : memref<9xi32>
      %rank_53 = tensor.rank %8 : tensor<1x6xi16>
      %260 = arith.cmpf une, %cst_21, %cst_21 : f32
      %261 = arith.ori %c1552290737_i64, %c1552290737_i64 : i64
      %262 = arith.negf %cst_2 : f16
      %263 = vector.broadcast %extracted : i16 to vector<9x9xi16>
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %87, %87, %263 : vector<6x9xi16>, vector<6x9xi16> into vector<9x9xi16>
    }
    %extracted_26 = tensor.extract %transposed[%c7] : tensor<9xi16>
    %116 = arith.remsi %extracted_26, %c-15825_i16 : i16
    %117 = tensor.empty() : tensor<1x6xf32>
    %118 = math.ipowi %4, %4 : tensor<6x9xi64>
    %119 = arith.remsi %c522676489_i32, %c522676489_i32 : i32
    %120 = math.atan %0 : tensor<9xf16>
    affine.store %c1678315323_i64, %alloc_25[%c2, %c1] : memref<1x6xi64>
    %121 = scf.execute_region -> i64 {
      %249 = math.tanh %5 : tensor<6x9xf32>
      %250 = vector.matrix_multiply %21, %84 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<1xi16>) -> vector<13xi16>
      scf.if %true {
        %260 = arith.subi %c-29564_i16, %extracted_26 : i16
        %261 = math.exp %81 : tensor<6x9xf32>
        %262 = arith.ceildivsi %c1901607918_i32, %c1901607918_i32 : i32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %263 = vector.transfer_read %transposed[%c0], %c0_i16 : tensor<9xi16>, vector<i16>
        %264 = math.absf %6 : tensor<1x6xf32>
        %alloc_53 = memref.alloc() : memref<6x9xi1>
        %extracted_54 = tensor.extract %reduced[%c0] : tensor<1xi1>
        %265 = vector.broadcast %c16477_i16 : i16 to vector<1x1xi16>
        %266 = vector.outerproduct %39, %57, %265 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
      }
      %extracted_51 = tensor.extract %6[%c0, %c3] : tensor<1x6xf32>
      %251 = math.exp %10 : tensor<6x9xf32>
      %252 = arith.divsi %c16477_i16, %c16477_i16 : i16
      %253 = math.log2 %81 : tensor<6x9xf32>
      scf.index_switch %c1 
      case 1 {
        %260 = arith.divf %cst_2, %cst_0 : f16
        %261 = arith.shrui %c134130799_i32, %c1820405062_i32 : i32
        %262 = arith.divf %extracted_51, %cst_21 : f32
        %263 = vector.matrix_multiply %100, %100 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %264 = vector.insert %false_1, %100 [0] : i1 into vector<1xi1>
        %265 = bufferization.clone %63 : memref<6x9xi32> to memref<6x9xi32>
        %266 = arith.remsi %c134130799_i32, %c1820405062_i32 : i32
        %267 = arith.ceildivsi %c134130799_i32, %c1901607918_i32 : i32
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + 128, d1, d0 * 32, d2 floordiv 2 - 1)>(%93, %c13, %58, %95)
        %269 = arith.divf %cst_21, %extracted_51 : f32
        %270 = index.mul %c9, %c14
        %271 = vector.extract_strided_slice %39 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %272 = math.exp2 %2 : tensor<6x9xf16>
        %273 = arith.xori %false_1, %true : i1
        %274 = vector.insert %false_1, %100 [0] : i1 into vector<1xi1>
        %275 = arith.divsi %extracted_24, %false_1 : i1
        scf.yield
      }
      case 2 {
        %dest, %accumulated_value = vector.scan <add>, %77, %101 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6xi32>, vector<1xi32>
        %260 = index.add %c4, %42
        %261 = math.round %7 : tensor<6x9xf32>
        bufferization.dealloc_tensor %12 : tensor<9xi32>
        %expanded_53 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x9xf32> into tensor<6x9x1xf32>
        %262 = math.sqrt %7 : tensor<6x9xf32>
        %from_elements = tensor.from_elements %c522676489_i32, %c134130799_i32, %c1901607918_i32, %c1820405062_i32, %c522676489_i32, %c1820405062_i32 : tensor<1x6xi32>
        %alloc_54 = memref.alloc() : memref<6x9xi64>
        affine.store %c1552290737_i64, %alloc_16[%c11] : memref<9xi64>
        %263 = index.mul %c14, %c8
        %264 = arith.maxsi %extracted, %c16477_i16 : i16
        %265 = math.ctlz %15 : tensor<1x6xi64>
        %266 = math.cos %117 : tensor<1x6xf32>
        %267 = vector.shuffle %99, %99 [1] : vector<1xi32>, vector<1xi32>
        %alloc_55 = memref.alloc() : memref<1xi1>
        memref.tensor_store %19, %alloc_55 : memref<1xi1>
        %inserted_56 = tensor.insert %c16477_i16 into %8[%c0, %c4] : tensor<1x6xi16>
        scf.yield
      }
      case 3 {
        %260 = arith.mulf %cst_2, %cst_0 : f16
        %261 = vector.flat_transpose %39 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %262 = arith.maxf %cst, %extracted_51 : f32
        memref.assume_alignment %alloc_9, 4 : memref<6x9xf32>
        %263 = vector.broadcast %c3 : index to vector<6xindex>
        %264 = vector.broadcast %false_1 : i1 to vector<6xi1>
        %265 = vector.broadcast %c16477_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_15[%c0, %c1] [%263], %264, %265 : memref<1x6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %266 = math.round %cst : f32
        %267 = index.divs %83, %42
        memref.copy %alloc_7, %34 : memref<9xi32> to memref<9xi32>
        %268 = index.ceildivs %110, %c12
        %alloca_53 = memref.alloca() : memref<1x6xf32>
        %269 = arith.subi %c1552290737_i64, %c1552290737_i64 : i64
        %270 = math.cttz %c1552290737_i64 : i64
        %collapsed_54 = tensor.collapse_shape %11 [[0, 1]] : tensor<6x9xi32> into tensor<54xi32>
        %271 = index.castu %93 : index to i32
        %cst_55 = arith.constant 1.000000e+00 : f16
        %272 = vector.transfer_read %alloc_10[%c11], %cst_55 : memref<9xf16>, vector<f16>
        %273 = math.cos %expanded : tensor<9x1xf16>
        scf.yield
      }
      case 4 {
        %260 = tensor.empty() : tensor<6x9xi64>
        vector.print %101 : vector<1xi32>
        %261 = vector.shuffle %250, %84 [0, 1, 2, 3, 5, 11, 13] : vector<13xi16>, vector<1xi16>
        %262 = arith.minsi %c29724_i16, %c29724_i16 : i16
        %263 = math.atan %cst_21 : f32
        %264 = arith.remf %cst_21, %cst : f32
        %265 = arith.ori %false_1, %false : i1
        %cast_53 = tensor.cast %7 : tensor<6x9xf32> to tensor<?x?xf32>
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %100, %100, %false_1 : vector<1xi1>, vector<1xi1> into i1
        affine.store %c1901607918_i32, %63[%c8, %c15] : memref<6x9xi32>
        %267 = index.divs %c3, %93
        %268 = math.atan %6 : tensor<1x6xf32>
        memref.assume_alignment %alloc_25, 1 : memref<1x6xi64>
        %269 = bufferization.clone %alloc_13 : memref<1x6xi32> to memref<1x6xi32>
        %splat_54 = tensor.splat %true : tensor<9xi1>
        %true_55 = index.bool.constant true
        scf.yield
      }
      default {
        %260 = arith.maxsi %extracted, %extracted : i16
        %261 = affine.max affine_map<(d0) -> (d0 * 2 + 32, d0 * -32, d0 * -32, d0 + 8)>(%58)
        %262 = arith.maxui %extracted_24, %false : i1
        %263 = math.round %0 : tensor<9xf16>
        %264 = arith.divsi %true, %true : i1
        %265 = math.log2 %cst_0 : f16
        %266 = arith.divf %cst_21, %cst : f32
        %267 = arith.subi %c1901607918_i32, %c1901607918_i32 : i32
        %268 = math.cos %2 : tensor<6x9xf16>
        %269 = index.sizeof
        %270 = index.sizeof
        %271 = index.add %c4, %c8
        %272 = vector.broadcast %c522676489_i32 : i32 to vector<1x1xi32>
        %273 = vector.outerproduct %101, %99, %272 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_53 = arith.constant 0 : i16
        %274 = vector.transfer_read %splat[%c8, %58], %c0_i16_53 : tensor<6x9xi16>, vector<i16>
        %275 = arith.xori %c0_i16, %c-29564_i16 : i16
        %276 = math.round %2 : tensor<6x9xf16>
      }
      scf.execute_region {
        %260 = arith.minsi %false_1, %false_1 : i1
        %261 = arith.ceildivsi %true, %true : i1
        %262 = vector.shuffle %47, %47 [0] : vector<1x6xi32>, vector<1x6xi32>
        memref.assume_alignment %63, 4 : memref<6x9xi32>
        %263 = bufferization.clone %alloc_10 : memref<9xf16> to memref<9xf16>
        %264 = arith.addi %extracted_26, %extracted_26 : i16
        %265 = math.fpowi %cst_2, %c134130799_i32 : f16, i32
        %cast_53 = tensor.cast %24 : tensor<i32> to tensor<i32>
        memref.tensor_store %17, %alloc_3 : memref<9xi16>
        %alloc_54 = memref.alloc() : memref<9xf16>
        %266 = index.castu %38 : index to i32
        %267 = vector.reduction <add>, %100 : vector<1xi1> into i1
        %268 = arith.divsi %extracted_26, %c-29564_i16 : i16
        %269 = vector.transpose %109, [0, 1] : vector<6x9xi64> to vector<6x9xi64>
        memref.assume_alignment %alloc_25, 1 : memref<1x6xi64>
        %270 = math.round %expanded : tensor<9x1xf16>
        scf.yield
      }
      %254 = vector.transpose %77, [0, 1] : vector<1x6xi32> to vector<1x6xi32>
      %255 = tensor.empty() : tensor<1x9xf32>
      %256 = linalg.matmul ins(%6, %7 : tensor<1x6xf32>, tensor<6x9xf32>) outs(%255 : tensor<1x9xf32>) -> tensor<1x9xf32>
      %257 = math.tan %10 : tensor<6x9xf32>
      %258 = math.round %5 : tensor<6x9xf32>
      vector.print %108 : vector<6x9xi32>
      %259 = arith.xori %c-15825_i16, %extracted : i16
      %alloc_52 = memref.alloc() : memref<6x9xi16>
      scf.yield %c1552290737_i64 : i64
    }
    %122 = arith.divui %c16477_i16, %c-15825_i16 : i16
    %cast_27 = tensor.cast %5 : tensor<6x9xf32> to tensor<?x?xf32>
    %123 = math.sqrt %cst_2 : f16
    %124 = math.exp2 %cst : f32
    %125 = math.tanh %7 : tensor<6x9xf32>
    %126 = vector.broadcast %extracted_26 : i16 to vector<1x1xi16>
    %127 = vector.outerproduct %57, %39, %126 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
    %cast_28 = tensor.cast %13 : tensor<9xi16> to tensor<?xi16>
    %128 = math.tanh %cst_2 : f16
    %129 = arith.xori %c29724_i16, %c16477_i16 : i16
    %130 = arith.remf %cst_2, %cst_0 : f16
    %expanded_29 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<6x9xf16> into tensor<6x9x1xf16>
    %131 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded : tensor<9x1xf16>) outs(%expanded_29 : tensor<6x9x1xf16>) {
    ^bb0(%in: f16, %out: f16):
      %249 = affine.min affine_map<(d0) -> ((d0 floordiv 32) * 32, d0 floordiv 32, d0 mod 128)>(%58)
      %250 = index.mul %c15, %c8
      %251 = math.cttz %15 : tensor<1x6xi64>
      %cast_51 = tensor.cast %16 : tensor<9xi16> to tensor<?xi16>
      %252 = math.atan %5 : tensor<6x9xf32>
      %253 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d2)>(%249, %c2, %c10)
      %254 = arith.divf %cst_2, %out : f16
      %255 = math.log10 %0 : tensor<9xf16>
      %256 = arith.minsi %121, %c1678315323_i64 : i64
      %257 = arith.subi %c522676489_i32, %c1820405062_i32 : i32
      %258 = arith.remf %out, %in : f16
      %259 = math.sqrt %10 : tensor<6x9xf32>
      %260 = tensor.empty() : tensor<6x1xf16>
      %261 = linalg.matmul ins(%2, %expanded : tensor<6x9xf16>, tensor<9x1xf16>) outs(%260 : tensor<6x1xf16>) -> tensor<6x1xf16>
      %262 = math.sqrt %out : f16
      %263 = index.floordivs %rank_18, %c5
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%250, %263, %c15, %rank)
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc, %expanded : memref<6x9xf16>, tensor<9x1xf16>) outs(%expanded_29 : tensor<6x9x1xf16>) {
      ^bb0(%in_55: f16, %in_56: f16, %out_57: f16):
        %276 = vector.create_mask %c15, %42 : vector<6x9xi1>
        %277 = index.maxs %c7, %c3
        %278 = arith.andi %c-29564_i16, %extracted : i16
        %279 = index.divs %c14, %c6
        %280 = arith.remf %cst_0, %in_55 : f16
        %281 = math.log10 %10 : tensor<6x9xf32>
        %282 = memref.load %alloc_5[%c0, %c4] : memref<1x6xi1>
        %283 = index.divs %93, %c1
        vector.print %276 : vector<6x9xi1>
        %284 = arith.ceildivsi %c522676489_i32, %c1901607918_i32 : i32
        %285 = arith.addf %cst_2, %out : f16
        %false_58 = index.bool.constant false
        %286 = math.cos %117 : tensor<1x6xf32>
        %rank_59 = tensor.rank %37 : tensor<1x6xi16>
        %287 = arith.xori %false_58, %false : i1
        %288 = arith.divui %c1901607918_i32, %c522676489_i32 : i32
        %289 = math.ctpop %18 : tensor<9xi16>
        affine.store %cst_2, %alloc[%c12, %c10] : memref<6x9xf16>
        %290 = math.cos %out_57 : f16
        affine.store %true, %alloc_12[%c1, %c14] : memref<6x9xi1>
        %291 = arith.maxui %c-15825_i16, %c16477_i16 : i16
        %292 = arith.maxsi %c522676489_i32, %c134130799_i32 : i32
        %293 = arith.ori %c-29564_i16, %c-29564_i16 : i16
        %294 = arith.xori %121, %c1678315323_i64 : i64
        %295 = arith.maxsi %false_58, %false_1 : i1
        %296 = arith.remsi %c16477_i16, %extracted : i16
        %297 = math.powf %0, %0 : tensor<9xf16>
        %298 = arith.remui %c134130799_i32, %c134130799_i32 : i32
        %alloca_60 = memref.alloca() : memref<6x9xi1>
        %299 = arith.ceildivsi %c16477_i16, %extracted_26 : i16
        %300 = math.powf %out, %in_55 : f16
        %301 = vector.load %alloc_10[%c2] : memref<9xf16>, vector<1x6xf16>
        linalg.yield %cst_2 : f16
      } -> tensor<6x9x1xf16>
      %266 = math.round %2 : tensor<6x9xf16>
      %267 = math.cos %0 : tensor<9xf16>
      %268 = math.powf %6, %6 : tensor<1x6xf32>
      scf.if %false {
        %276 = index.add %40, %c10
        %277 = arith.remf %cst_0, %out : f16
        %collapsed_55 = tensor.collapse_shape %15 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
        %278 = vector.extract %107[5] : vector<6x9xi1>
        affine.store %cst_21, %alloc_17[%c2] : memref<9xf32>
        %279 = tensor.empty(%c8, %c3) : tensor<?x?xi32>
        %280 = arith.minsi %121, %c1678315323_i64 : i64
        %281 = index.floordivs %250, %42
      }
      %269 = arith.floordivsi %c1820405062_i32, %c1901607918_i32 : i32
      %alloc_52 = memref.alloc() : memref<6x9xi1>
      memref.tensor_store %81, %alloc_9 : memref<6x9xf32>
      %rank_53 = tensor.rank %9 : tensor<1x6xi16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded : tensor<9x1xf16>) outs(%expanded_29 : tensor<6x9x1xf16>) {
      ^bb0(%in_55: f16, %out_56: f16):
        %276 = arith.negf %out_56 : f16
        %277 = vector.shuffle %47, %47 [1] : vector<1x6xi32>, vector<1x6xi32>
        %278 = vector.shuffle %49, %49 [0, 1] : vector<1x6xi32>, vector<1x6xi32>
        %279 = math.absf %0 : tensor<9xf16>
        %280 = arith.remsi %false_1, %true : i1
        %281 = arith.maxf %in, %in_55 : f16
        %282 = arith.minsi %true, %extracted_24 : i1
        %283 = math.powf %2, %2 : tensor<6x9xf16>
        %284 = index.maxu %93, %42
        %285 = index.sizeof
        %286 = arith.negf %cst_0 : f16
        %287 = arith.subi %c134130799_i32, %c1820405062_i32 : i32
        %288 = math.cos %expanded : tensor<9x1xf16>
        %289 = index.divu %rank_53, %c14
        %290 = vector.matrix_multiply %84, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %291 = math.absf %0 : tensor<9xf16>
        %292 = vector.matrix_multiply %39, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %293 = bufferization.clone %alloc_17 : memref<9xf32> to memref<9xf32>
        %294 = arith.minui %false, %true : i1
        %collapsed_57 = tensor.collapse_shape %260 [[0, 1]] : tensor<6x1xf16> into tensor<6xf16>
        %295 = vector.matrix_multiply %57, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %296 = math.copysign %in_55, %in : f16
        %297 = vector.insertelement %c-15825_i16, %57[%285 : index] : vector<1xi16>
        %cast_58 = tensor.cast %collapsed : tensor<54xi64> to tensor<?xi64>
        %298 = bufferization.clone %alloc_15 : memref<1x6xi16> to memref<1x6xi16>
        %299 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d1 - 8))>(%289, %c8, %c12, %c5)
        %300 = arith.ceildivsi %extracted_24, %false_1 : i1
        %301 = math.round %cst : f32
        %302 = arith.remui %c-29564_i16, %c29724_i16 : i16
        %303 = arith.andi %c-29564_i16, %c-15825_i16 : i16
        %304 = math.tanh %0 : tensor<9xf16>
        %305 = arith.maxui %c16477_i16, %c16477_i16 : i16
        linalg.yield %in : f16
      } -> tensor<6x9x1xf16>
      %271 = vector.broadcast %c-29564_i16 : i16 to vector<9xi16>
      %272 = vector.reduction <xor>, %84 : vector<1xi16> into i16
      %273 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 + d3 - 8) mod 128, 0)>(%38, %110, %c8, %rank_18)
      %274 = math.tanh %out : f16
      %alloc_54 = memref.alloc() : memref<9xf16>
      memref.copy %alloc_10, %alloc_54 : memref<9xf16> to memref<9xf16>
      %275 = math.roundeven %6 : tensor<1x6xf32>
      linalg.yield %cst_0 : f16
    } -> tensor<6x9x1xf16>
    %cast_30 = tensor.cast %1 : tensor<6x9xi64> to tensor<?x?xi64>
    %alloc_31 = memref.alloc() : memref<1x6xi1>
    %132 = math.log10 %cst : f32
    %133 = arith.mulf %cst_21, %cst : f32
    %alloc_32 = memref.alloc() : memref<9xi64>
    %134 = arith.negf %cst_0 : f16
    %rank_33 = tensor.rank %cast_30 : tensor<?x?xi64>
    %135 = math.absf %2 : tensor<6x9xf16>
    %136 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + d1) * 8 - d0 mod 64)>(%c14, %rank, %rank, %c7)
    %137 = arith.shrui %extracted_26, %c-15825_i16 : i16
    %138 = vector.create_mask %110, %c4 : vector<6x9xi1>
    %extracted_34 = tensor.extract %expanded_29[%c5, %c4, %c0] : tensor<6x9x1xf16>
    %139 = math.atan2 %5, %10 : tensor<6x9xf32>
    scf.execute_region {
      %249 = math.copysign %cst, %cst_21 : f32
      %250 = math.log %7 : tensor<6x9xf32>
      %251 = vector.broadcast %cst_21 : f32 to vector<6x6xf32>
      %252 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %32, %33, %251 : vector<1x6xf32>, vector<1x6xf32> into vector<6x6xf32>
      %253 = vector.broadcast %extracted_26 : i16 to vector<1x6xi16>
      %254 = vector.create_mask %83, %c10 : vector<6x9xi1>
      %255 = vector.broadcast %extracted_34 : f16 to vector<13xf16>
      %256 = vector.broadcast %true : i1 to vector<13xi1>
      %257 = vector.maskedload %alloc_10[%c4], %256, %255 : memref<9xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
      %258 = arith.negf %cst : f32
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %84, %39, %c-15825_i16 : vector<1xi16>, vector<1xi16> into i16
      %260 = index.divs %c0, %c0
      %261 = affine.min affine_map<(d0) -> (d0 * -64, d0 * -64, d0 mod 2, d0 * -64 - 32)>(%95)
      %262 = arith.negf %cst_21 : f32
      %263 = arith.remui %true, %false : i1
      %264 = vector.shuffle %108, %108 [0, 1, 2, 3, 6, 7, 8, 9, 10, 11] : vector<6x9xi32>, vector<6x9xi32>
      %265 = tensor.empty() : tensor<1x6xi16>
      %266 = math.ctlz %collapsed : tensor<54xi64>
      %collapsed_51 = tensor.collapse_shape %expanded [[0, 1]] : tensor<9x1xf16> into tensor<9xf16>
      scf.yield
    }
    %140 = arith.floordivsi %c1552290737_i64, %121 : i64
    vector.print %33 : vector<1x6xf32>
    %expanded_35 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<1x6xi1> into tensor<1x6x1xi1>
    %141 = arith.ori %c29724_i16, %extracted_26 : i16
    %collapsed_36 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
    %142 = arith.divf %cst_21, %cst_21 : f32
    %143 = vector.reduction <minui>, %99 : vector<1xi32> into i32
    %144 = scf.index_switch %c6 -> vector<9xi1> 
    case 1 {
      %249 = bufferization.clone %alloc_13 : memref<1x6xi32> to memref<1x6xi32>
      %250 = tensor.empty() : tensor<6x1xf16>
      %251 = linalg.matmul ins(%2, %expanded : tensor<6x9xf16>, tensor<9x1xf16>) outs(%250 : tensor<6x1xf16>) -> tensor<6x1xf16>
      %252 = math.copysign %7, %10 : tensor<6x9xf32>
      %253 = arith.divui %121, %c1678315323_i64 : i64
      %254 = math.log10 %5 : tensor<6x9xf32>
      %cast_51 = tensor.cast %6 : tensor<1x6xf32> to tensor<?x?xf32>
      %255 = arith.remf %cst, %cst_21 : f32
      %256 = arith.andi %c1552290737_i64, %c1678315323_i64 : i64
      %257 = index.floordivs %c3, %c1
      %collapsed_52 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
      %258 = arith.negf %cst_0 : f16
      %259 = vector.matrix_multiply %57, %84 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %260 = arith.cmpf ueq, %cst_2, %cst_0 : f16
      %261 = vector.broadcast %true : i1 to vector<9xi1>
      %dest, %accumulated_value = vector.scan <minui>, %107, %261 {inclusive = true, reduction_dim = 0 : i64} : vector<6x9xi1>, vector<9xi1>
      %262 = math.round %5 : tensor<6x9xf32>
      %263 = arith.divui %c16477_i16, %c29724_i16 : i16
      %264 = vector.broadcast %extracted_24 : i1 to vector<9xi1>
      scf.yield %264 : vector<9xi1>
    }
    case 2 {
      %249 = index.divu %c0, %93
      %alloc_51 = memref.alloc() : memref<6x9xf32>
      %250 = arith.cmpf une, %extracted_34, %cst_2 : f16
      %251 = math.expm1 %expanded : tensor<9x1xf16>
      %252 = index.divu %c5, %rank
      %253 = vector.transpose %109, [1, 0] : vector<6x9xi64> to vector<9x6xi64>
      %cast_52 = tensor.cast %8 : tensor<1x6xi16> to tensor<?x?xi16>
      %splat_53 = tensor.splat %c-15825_i16 : tensor<6x9xi16>
      %254 = math.exp %2 : tensor<6x9xf16>
      %collapsed_54 = tensor.collapse_shape %expanded_29 [[0, 1], [2]] : tensor<6x9x1xf16> into tensor<54x1xf16>
      %255 = math.exp %cst_2 : f16
      %256 = arith.remui %c1820405062_i32, %c134130799_i32 : i32
      %257 = arith.ceildivsi %extracted, %c-15825_i16 : i16
      %258 = bufferization.clone %alloc_16 : memref<9xi64> to memref<9xi64>
      %259 = math.round %10 : tensor<6x9xf32>
      %260 = memref.load %alloc_4[%c1, %c0] : memref<6x9xf16>
      %261 = vector.broadcast %true : i1 to vector<9xi1>
      scf.yield %261 : vector<9xi1>
    }
    case 3 {
      %249 = bufferization.clone %63 : memref<6x9xi32> to memref<6x9xi32>
      memref.store %true, %alloc_12[%c1, %c4] : memref<6x9xi1>
      %250 = index.sizeof
      %251 = arith.divsi %c29724_i16, %extracted : i16
      %252 = arith.addi %c522676489_i32, %c522676489_i32 : i32
      %253 = bufferization.to_memref %4 : memref<6x9xi64>
      %254 = index.sizeof
      %255 = arith.minf %cst_21, %cst : f32
      %256 = index.mul %rank_33, %c12
      %257 = arith.floordivsi %c29724_i16, %c-29564_i16 : i16
      %258 = math.fma %7, %7, %7 : tensor<6x9xf32>
      %259 = arith.shrui %false, %extracted_24 : i1
      %260 = vector.create_mask %c2, %c12 : vector<6x9xi1>
      %261 = arith.ceildivsi %c1901607918_i32, %c522676489_i32 : i32
      %262 = vector.matrix_multiply %99, %101 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %263 = math.log2 %81 : tensor<6x9xf32>
      %264 = vector.broadcast %false : i1 to vector<9xi1>
      scf.yield %264 : vector<9xi1>
    }
    default {
      %249 = math.round %10 : tensor<6x9xf32>
      %cast_51 = tensor.cast %12 : tensor<9xi32> to tensor<?xi32>
      vector.print %39 : vector<1xi16>
      %splat_52 = tensor.splat %c1678315323_i64 : tensor<1x6xi64>
      %250 = arith.subi %c16477_i16, %c16477_i16 : i16
      %251 = bufferization.clone %alloc_9 : memref<6x9xf32> to memref<6x9xf32>
      %252 = arith.remf %cst_0, %cst_2 : f16
      %253 = vector.matrix_multiply %39, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %254 = tensor.empty() : tensor<6x9xf32>
      %255 = math.fma %7, %5, %7 : tensor<6x9xf32>
      %256 = math.fma %cst_0, %cst_2, %cst_0 : f16
      %257 = arith.negf %extracted_34 : f16
      %258 = math.round %254 : tensor<6x9xf32>
      %259 = arith.ceildivsi %c1552290737_i64, %c1552290737_i64 : i64
      %260 = arith.xori %extracted_26, %c-15825_i16 : i16
      %261 = math.cttz %splat_52 : tensor<1x6xi64>
      %262 = vector.broadcast %extracted_24 : i1 to vector<9xi1>
      scf.yield %262 : vector<9xi1>
    }
    %145 = vector.shuffle %21, %57 [0, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12] : vector<13xi16>, vector<1xi16>
    %146 = vector.bitcast %107 : vector<6x9xi1> to vector<6x9xi1>
    %splat_37 = tensor.splat %cst_0 : tensor<6x9xf16>
    %alloc_38 = memref.alloc() : memref<1x6xf32>
    %147 = vector.broadcast %cst : f32 to vector<6x9xf32>
    %148 = vector.fma %147, %147, %147 : vector<6x9xf32>
    %149 = vector.broadcast %cst_21 : f32 to vector<6x9xf32>
    %150 = vector.fma %149, %147, %149 : vector<6x9xf32>
    %151 = arith.negf %cst_21 : f32
    %152 = index.ceildivs %40, %93
    %alloca = memref.alloca() : memref<6x9xf16>
    %153 = tensor.empty() : tensor<1x6xi32>
    %154 = math.fpowi %6, %153 : tensor<1x6xf32>, tensor<1x6xi32>
    %155 = math.powf %10, %5 : tensor<6x9xf32>
    %156 = arith.cmpf une, %cst_0, %cst_0 : f16
    %157 = index.ceildivu %110, %rank_33
    %158 = index.sub %rank_18, %83
    %159 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%58, %157, %c3, %152)
    %160 = arith.xori %c1552290737_i64, %c1678315323_i64 : i64
    %161 = index.divu %rank_33, %158
    %162 = vector.load %alloc_9[%c2, %c6] : memref<6x9xf32>, vector<1x6xf32>
    %163 = arith.maxui %c1552290737_i64, %c1678315323_i64 : i64
    %164 = index.sizeof
    %165 = arith.shli %c1552290737_i64, %121 : i64
    %166 = math.copysign %splat_37, %2 : tensor<6x9xf16>
    %167 = index.maxs %c0, %c5
    bufferization.dealloc_tensor %24 : tensor<i32>
    %168 = math.ipowi %collapsed_23, %collapsed_23 : tensor<6xi1>
    %169 = math.exp2 %cst : f32
    %extracted_39 = tensor.extract %4[%c1, %c3] : tensor<6x9xi64>
    %170 = math.ceil %10 : tensor<6x9xf32>
    %171 = vector.shuffle %150, %150 [0, 1, 2, 3, 4, 5, 6, 7] : vector<6x9xf32>, vector<6x9xf32>
    %172 = vector.create_mask %95 : vector<9xi1>
    %173 = arith.divui %c29724_i16, %c29724_i16 : i16
    %174 = tensor.empty() : tensor<6x1x1xi1>
    %175 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%174 : tensor<6x1x1xi1>) outs(%expanded_35 : tensor<1x6x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %249 = math.atan %10 : tensor<6x9xf32>
      %250 = math.ctlz %153 : tensor<1x6xi32>
      %251 = vector.broadcast %false : i1 to vector<6xi1>
      %dest, %accumulated_value = vector.scan <maxui>, %138, %251 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xi1>, vector<6xi1>
      %252 = arith.andi %121, %extracted_39 : i64
      %253 = vector.bitcast %21 : vector<13xi16> to vector<13xi16>
      %254 = vector.broadcast %121 : i64 to vector<1xi64>
      %255 = vector.maskedload %94[%c3], %100, %254 : memref<9xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
      %256 = math.log %cst_0 : f16
      %257 = math.sqrt %2 : tensor<6x9xf16>
      %258 = arith.subi %c1678315323_i64, %c1552290737_i64 : i64
      %259 = math.tanh %6 : tensor<1x6xf32>
      %260 = arith.ceildivsi %c-15825_i16, %c16477_i16 : i16
      %261 = vector.bitcast %47 : vector<1x6xi32> to vector<1x6xi32>
      %262 = math.atan %10 : tensor<6x9xf32>
      %263 = math.ipowi %14, %14 : tensor<1x6xi1>
      %true_51 = index.bool.constant true
      %264 = arith.divsi %extracted, %c29724_i16 : i16
      %265 = math.absf %0 : tensor<9xf16>
      %266 = affine.if affine_set<(d0, d1, d2) : (d2 + (d1 floordiv 2) floordiv 4 == 0)>(%c6, %c14, %c3) -> i32 {
        %281 = math.round %expanded : tensor<9x1xf16>
        %282 = arith.remf %extracted_34, %cst_2 : f16
        %283 = arith.mulf %cst, %cst : f32
        %284 = arith.mulf %cst_0, %cst_0 : f16
        %285 = vector.create_mask %58, %c15 : vector<1x6xi1>
        %cast_53 = tensor.cast %2 : tensor<6x9xf16> to tensor<?x?xf16>
        %286 = tensor.empty() : tensor<6x9xi32>
        %287 = bufferization.clone %alloc_16 : memref<9xi64> to memref<9xi64>
        affine.yield %c134130799_i32 : i32
      } else {
        %281 = arith.floordivsi %c1678315323_i64, %extracted_39 : i64
        %extracted_53 = tensor.extract %2[%c2, %c8] : tensor<6x9xf16>
        %282 = arith.subi %extracted_24, %true_51 : i1
        %283 = tensor.empty() : tensor<9xi1>
        %284 = arith.divsi %extracted, %extracted : i16
        %285 = arith.shli %121, %extracted_39 : i64
        %286 = vector.flat_transpose %172 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %287 = arith.addf %cst_2, %extracted_53 : f16
        affine.yield %c522676489_i32 : i32
      }
      %267 = math.copysign %2, %2 : tensor<6x9xf16>
      %alloc_52 = memref.alloc() : memref<6x1xi1>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52 : memref<6x1xi1>) outs(%expanded_35 : tensor<1x6x1xi1>) {
      ^bb0(%in_53: i1, %out_54: i1):
        %alloca_55 = memref.alloca() : memref<6x9xi1>
        %281 = vector.extract_strided_slice %172 {offsets = [5], sizes = [3], strides = [1]} : vector<9xi1> to vector<3xi1>
        %282 = index.divu %152, %c4
        %283 = vector.load %alloc_17[%c7] : memref<9xf32>, vector<6x9xf32>
        %284 = math.log10 %0 : tensor<9xf16>
        %285 = memref.load %alloc_8[%c4, %c8] : memref<6x9xi1>
        %286 = vector.insertelement %out_54, %100[%c3 : index] : vector<1xi1>
        %287 = math.copysign %cst, %cst : f32
        %288 = arith.xori %121, %extracted_39 : i64
        %collapsed_56 = tensor.collapse_shape %7 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        vector.print %84 : vector<1xi16>
        %289 = bufferization.to_memref %expanded_29 : memref<6x9x1xf16>
        %290 = arith.ori %true, %in_53 : i1
        %291 = math.log2 %6 : tensor<1x6xf32>
        %292 = vector.splat %95 : vector<9xindex>
        %293 = arith.negf %cst_2 : f16
        %294 = arith.addi %out_54, %true : i1
        %295 = arith.shrui %c522676489_i32, %c1901607918_i32 : i32
        %296 = index.castu %extracted : i16 to index
        %297 = arith.shrui %c522676489_i32, %c134130799_i32 : i32
        %298 = math.exp2 %cst_2 : f16
        %299 = math.atan %0 : tensor<9xf16>
        %300 = math.round %cst_2 : f16
        %301 = bufferization.clone %alloc_15 : memref<1x6xi16> to memref<1x6xi16>
        %302 = arith.remsi %extracted_24, %false_1 : i1
        %303 = affine.apply affine_map<(d0) -> (0)>(%c4)
        %304 = arith.minsi %c134130799_i32, %c1901607918_i32 : i32
        %305 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 8 - d0)>(%110, %rank_18, %rank_18, %152)
        %306 = vector.transpose %100, [0] : vector<1xi1> to vector<1xi1>
        %307 = math.roundeven %cst_2 : f16
        %308 = arith.remsi %extracted, %c-29564_i16 : i16
        %309 = arith.divui %c29724_i16, %extracted_26 : i16
        linalg.yield %out_54 : i1
      } -> tensor<1x6x1xi1>
      %269 = math.atan %splat_37 : tensor<6x9xf16>
      %270 = arith.shrui %c29724_i16, %extracted : i16
      %271 = math.round %cst_2 : f16
      %272 = vector.reduction <maxsi>, %254 : vector<1xi64> into i64
      %273 = index.divs %rank_33, %c1
      %274 = math.round %0 : tensor<9xf16>
      %275 = bufferization.to_memref %collapsed_36 : memref<6xi16>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_10 : memref<9xf16>) outs(%expanded_29 : tensor<6x9x1xf16>) {
      ^bb0(%in_53: f16, %out_54: f16):
        %281 = arith.ori %extracted_26, %c-15825_i16 : i16
        %282 = index.add %c9, %46
        %283 = arith.xori %c29724_i16, %c-15825_i16 : i16
        %284 = math.fpowi %6, %153 : tensor<1x6xf32>, tensor<1x6xi32>
        %285 = index.castu %c4 : index to i32
        %cast_55 = tensor.cast %105 : tensor<9xi32> to tensor<?xi32>
        %286 = tensor.empty() : tensor<6x9xi16>
        %287 = vector.transpose %101, [0] : vector<1xi32> to vector<1xi32>
        affine.store %c-15825_i16, %275[%c7] : memref<6xi16>
        %288 = arith.addi %c1552290737_i64, %121 : i64
        %289 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 2)>(%167, %157, %282, %164)
        %290 = math.ctpop %8 : tensor<1x6xi16>
        %291 = arith.minsi %extracted, %c29724_i16 : i16
        %292 = math.ipowi %11, %11 : tensor<6x9xi32>
        %false_56 = index.bool.constant false
        %293 = arith.floordivsi %extracted_26, %c16477_i16 : i16
        %inserted_57 = tensor.insert %c1552290737_i64 into %15[%c0, %c5] : tensor<1x6xi64>
        %294 = math.copysign %0, %0 : tensor<9xf16>
        %295 = bufferization.to_memref %collapsed_36 : memref<6xi16>
        %296 = arith.divui %extracted_24, %true : i1
        %297 = arith.xori %true_51, %false_56 : i1
        %298 = vector.bitcast %33 : vector<1x6xf32> to vector<1x6xf32>
        %299 = arith.remsi %false_1, %true_51 : i1
        %alloc_58 = memref.alloc() : memref<9xi64>
        %300 = math.cos %0 : tensor<9xf16>
        %301 = vector.bitcast %21 : vector<13xi16> to vector<13xi16>
        %302 = math.round %out_54 : f16
        %303 = index.maxs %c15, %c10
        %rank_59 = tensor.rank %reduced : tensor<1xi1>
        %304 = arith.divui %c1552290737_i64, %121 : i64
        %305 = index.castu %c8 : index to i32
        %306 = math.exp2 %10 : tensor<6x9xf32>
        linalg.yield %cst_2 : f16
      } -> tensor<6x9x1xf16>
      %277 = tensor.empty() : tensor<1x6xi64>
      %mapped = linalg.map ins(%15, %15 : tensor<1x6xi64>, tensor<1x6xi64>) outs(%277 : tensor<1x6xi64>)
        (%in_53: i64, %in_54: i64) {
          %281 = math.round %2 : tensor<6x9xf16>
          %282 = index.divs %167, %40
          %283 = vector.broadcast %c522676489_i32 : i32 to vector<6xi32>
          %dest_55, %accumulated_value_56 = vector.scan <add>, %261, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
          %284 = arith.minsi %false_1, %false : i1
          %285 = vector.matrix_multiply %99, %101 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %286 = index.floordivs %273, %40
          %287 = math.copysign %0, %0 : tensor<9xf16>
          %288 = arith.xori %c29724_i16, %extracted : i16
          %289 = index.sizeof
          %290 = affine.min affine_map<(d0, d1) -> (0, d1 floordiv 128 + d1 floordiv 128 + d1 - 16 - 16, 4)>(%58, %c13)
          %291 = arith.ceildivsi %c1552290737_i64, %c1552290737_i64 : i64
          %292 = math.atan2 %7, %81 : tensor<6x9xf32>
          %extracted_57 = tensor.extract %collapsed_20[%c5] : tensor<6xi16>
          %293 = vector.broadcast %c-15825_i16 : i16 to vector<1x1xi16>
          %294 = vector.outerproduct %39, %39, %293 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
          %295 = math.ipowi %153, %153 : tensor<1x6xi32>
          %296 = math.sqrt %117 : tensor<1x6xf32>
          %297 = arith.maxui %c-15825_i16, %c16477_i16 : i16
          %298 = math.round %cst_0 : f16
          %299 = math.ctpop %15 : tensor<1x6xi64>
          %300 = index.divu %58, %rank
          %301 = math.copysign %5, %7 : tensor<6x9xf32>
          %expanded_58 = tensor.expand_shape %collapsed_36 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
          %false_59 = index.bool.constant false
          %302 = index.castu %c-15825_i16 : i16 to index
          %303 = arith.divui %false_59, %false_59 : i1
          %304 = math.sqrt %0 : tensor<9xf16>
          %305 = vector.create_mask %302, %290 : vector<1x6xi1>
          %306 = math.tanh %5 : tensor<6x9xf32>
          %307 = math.ipowi %in_54, %c1552290737_i64 : i64
          %308 = math.round %extracted_34 : f16
          %309 = vector.splat %extracted_34 : vector<6x9xf16>
          %310 = index.mul %300, %c7
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %278 = vector.broadcast %c11 : index to vector<1xindex>
      vector.scatter %alloc_8[%c4, %c5] [%278], %100, %100 : memref<6x9xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
      %279 = math.log10 %cst_0 : f16
      %280 = vector.matrix_multiply %21, %21 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<13xi16>) -> vector<1xi16>
      linalg.yield %false_1 : i1
    } -> tensor<1x6x1xi1>
    %176 = math.sqrt %cst : f32
    %177 = arith.shli %c16477_i16, %extracted : i16
    %178 = index.maxs %c11, %c3
    %179 = math.atan2 %0, %0 : tensor<9xf16>
    %180 = math.atan %7 : tensor<6x9xf32>
    %generated = tensor.generate %c7 {
    ^bb0(%arg0: index, %arg1: index):
      %249 = arith.minsi %c1901607918_i32, %c134130799_i32 : i32
      %250 = index.maxs %158, %c4
      %251 = arith.addf %extracted_34, %cst_0 : f16
      %alloc_51 = memref.alloc() : memref<9x6xi64>
      %252 = tensor.empty() : tensor<6x6xi64>
      %253 = linalg.matmul ins(%1, %alloc_51 : tensor<6x9xi64>, memref<9x6xi64>) outs(%252 : tensor<6x6xi64>) -> tensor<6x6xi64>
      tensor.yield %cst_0 : f16
    } : tensor<?x9xf16>
    %181 = index.casts %c1 : index to i32
    %182 = arith.remui %121, %extracted_39 : i64
    %183 = arith.negf %cst_2 : f16
    %rank_40 = tensor.rank %22 : tensor<9xi32>
    %184 = index.ceildivs %c10, %c8
    %inserted = tensor.insert %true into %14[%c0, %c0] : tensor<1x6xi1>
    %185 = arith.remsi %121, %extracted_39 : i64
    %rank_41 = tensor.rank %3 : tensor<9xi16>
    vector.print %100 : vector<1xi1>
    scf.execute_region {
      %249 = math.expm1 %7 : tensor<6x9xf32>
      %250 = math.atan %7 : tensor<6x9xf32>
      %251 = arith.maxui %c-15825_i16, %c29724_i16 : i16
      %252 = arith.addf %cst, %cst_21 : f32
      %253 = vector.extract_strided_slice %149 {offsets = [3], sizes = [1], strides = [1]} : vector<6x9xf32> to vector<1x9xf32>
      %254 = arith.ceildivsi %true, %extracted_24 : i1
      %255 = vector.reduction <mul>, %21 : vector<13xi16> into i16
      %256 = arith.remsi %true, %extracted_24 : i1
      %257 = arith.negf %extracted_34 : f16
      %258 = arith.divf %cst_0, %cst_0 : f16
      %259 = arith.addf %cst_0, %cst_2 : f16
      %260 = vector.broadcast %157 : index to vector<13xindex>
      %261 = vector.broadcast %false_1 : i1 to vector<13xi1>
      %262 = vector.broadcast %cst : f32 to vector<13xf32>
      vector.scatter %alloc_9[%c0, %c4] [%260], %261, %262 : memref<6x9xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
      %263 = bufferization.clone %alloc_3 : memref<9xi16> to memref<9xi16>
      %rank_51 = tensor.rank %8 : tensor<1x6xi16>
      %264 = vector.matrix_multiply %39, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %265 = arith.floordivsi %true, %false : i1
      scf.yield
    }
    %186 = math.expm1 %5 : tensor<6x9xf32>
    %187 = vector.broadcast %c-29564_i16 : i16 to vector<1x6xi16>
    %188 = vector.gather %37[%c9, %rank] [%47], %48, %187 : tensor<1x6xi16>, vector<1x6xi32>, vector<1x6xi1>, vector<1x6xi16> into vector<1x6xi16>
    %189 = arith.ori %extracted_39, %121 : i64
    %190 = index.add %c0, %152
    %191 = vector.maskedload %alloc_12[%c4, %c4], %172, %172 : memref<6x9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
    vector.print %148 : vector<6x9xf32>
    %192 = memref.load %alloc_16[%c2] : memref<9xi64>
    memref.tensor_store %13, %alloc_3 : memref<9xi16>
    %193 = affine.min affine_map<(d0, d1, d2) -> ((d1 - (d1 + 32)) * 4)>(%rank_18, %95, %167)
    scf.execute_region {
      %249 = arith.maxsi %c29724_i16, %c29724_i16 : i16
      %250 = arith.shli %c29724_i16, %c-15825_i16 : i16
      %251 = vector.create_mask %184, %157 : vector<6x9xi1>
      %252 = affine.if affine_set<(d0, d1, d2) : (d0 mod 128 == 0, d0 >= 0, d1 mod 64 == 0, d1 >= 0)>(%c9, %c0, %c3) -> i1 {
        %263 = vector.multi_reduction <maxui>, %101, %99 [] : vector<1xi32> to vector<1xi32>
        %264 = math.tanh %cst : f32
        %265 = math.round %6 : tensor<1x6xf32>
        %266 = bufferization.to_tensor %alloc_4 : memref<6x9xf16>
        %267 = arith.ceildivsi %false_1, %false_1 : i1
        affine.store %cst_2, %alloc[%c6, %c12] : memref<6x9xf16>
        %268 = math.rsqrt %cst_21 : f32
        %269 = vector.broadcast %c3 : index to vector<6xindex>
        %270 = vector.broadcast %true : i1 to vector<6xi1>
        %271 = vector.broadcast %c1552290737_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_16[%c2] [%269], %270, %271 : memref<9xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        affine.yield %extracted_24 : i1
      } else {
        %263 = index.add %c7, %152
        %264 = arith.remsi %c1552290737_i64, %121 : i64
        %265 = vector.load %alloc_4[%c0, %c6] : memref<6x9xf16>, vector<6x9xf16>
        %266 = math.fma %cst_0, %extracted_34, %cst_2 : f16
        %alloc_53 = memref.alloc() : memref<6x9xi64>
        memref.tensor_store %4, %alloc_53 : memref<6x9xi64>
        %267 = arith.divf %cst_21, %cst_21 : f32
        %268 = vector.load %alloc_6[%c6] : memref<9xi32>, vector<1x6xi32>
        %269 = index.divs %95, %152
        affine.yield %false : i1
      }
      %alloca_51 = memref.alloca() : memref<6x9xi64>
      %253 = arith.divsi %extracted_24, %false : i1
      %254 = index.sizeof
      %255 = vector.transpose %77, [0, 1] : vector<1x6xi32> to vector<1x6xi32>
      %256 = bufferization.to_memref %collapsed : memref<54xi64>
      %257 = memref.alloca_scope  -> (memref<6x9xi16>) {
        %263 = arith.remsi %c522676489_i32, %c1820405062_i32 : i32
        %264 = math.ctpop %9 : tensor<1x6xi16>
        %265 = arith.mulf %cst, %cst : f32
        %266 = vector.load %alloc_10[%c0] : memref<9xf16>, vector<6x9xf16>
        %267 = vector.reduction <mul>, %101 : vector<1xi32> into i32
        %268 = arith.ceildivsi %false_1, %false_1 : i1
        %269 = index.maxs %159, %136
        %270 = vector.shuffle %47, %47 [0] : vector<1x6xi32>, vector<1x6xi32>
        %271 = vector.broadcast %rank_40 : index to vector<6xindex>
        %272 = vector.broadcast %false : i1 to vector<6xi1>
        %273 = vector.broadcast %cst : f32 to vector<6xf32>
        vector.scatter %alloc_9[%c3, %c6] [%271], %272, %273 : memref<6x9xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %274 = bufferization.to_memref %7 : memref<6x9xf32>
        %275 = vector.matrix_multiply %84, %84 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %276 = arith.remf %extracted_34, %cst_0 : f16
        %277 = bufferization.clone %alloc_11 : memref<6x9xi1> to memref<6x9xi1>
        %278 = arith.cmpf uno, %cst_2, %cst_0 : f16
        %279 = bufferization.to_memref %10 : memref<6x9xf32>
        %280 = math.round %expanded_29 : tensor<6x9x1xf16>
        memref.assume_alignment %34, 2 : memref<9xi32>
        %281 = bufferization.clone %279 : memref<6x9xf32> to memref<6x9xf32>
        %collapsed_53 = tensor.collapse_shape %cast_30 [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
        %282 = arith.mulf %cst_2, %cst_0 : f16
        %283 = math.log10 %7 : tensor<6x9xf32>
        %284 = math.expm1 %81 : tensor<6x9xf32>
        %285 = math.round %expanded : tensor<9x1xf16>
        %286 = math.atan2 %extracted_34, %cst_2 : f16
        %287 = math.fma %splat_37, %2, %2 : tensor<6x9xf16>
        %288 = math.atan %0 : tensor<9xf16>
        %false_54 = index.bool.constant false
        %289 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 64) mod 32)>(%42, %40, %158)
        %290 = arith.remf %cst_2, %cst_2 : f16
        %291 = math.cttz %19 : tensor<1xi1>
        %292 = vector.insertelement %c522676489_i32, %101[%40 : index] : vector<1xi32>
        %293 = vector.broadcast %cst : f32 to vector<1x6xf32>
        %294 = vector.fma %293, %33, %33 : vector<1x6xf32>
        memref.alloca_scope.return %alloc_14 : memref<6x9xi16>
      }
      %258 = arith.ceildivsi %extracted_26, %c16477_i16 : i16
      %259 = arith.minsi %extracted, %c-15825_i16 : i16
      %260 = arith.mulf %cst, %cst_21 : f32
      %261 = math.ctpop %8 : tensor<1x6xi16>
      %alloc_52 = memref.alloc() : memref<6x9xi32>
      %262 = arith.mulf %extracted_34, %extracted_34 : f16
      scf.yield
    }
    %194 = index.maxs %193, %110
    %195 = math.tanh %0 : tensor<9xf16>
    bufferization.dealloc_tensor %1 : tensor<6x9xi64>
    %196 = math.log10 %81 : tensor<6x9xf32>
    %197 = bufferization.to_tensor %alloc_13 : memref<1x6xi32>
    %alloc_42 = memref.alloc() : memref<9x13xf32>
    %198 = tensor.empty() : tensor<6x13xf32>
    %199 = linalg.matmul ins(%7, %alloc_42 : tensor<6x9xf32>, memref<9x13xf32>) outs(%198 : tensor<6x13xf32>) -> tensor<6x13xf32>
    %200 = index.divu %c14, %158
    %201 = index.divu %38, %c3
    %extracted_43 = tensor.extract %4[%c3, %c5] : tensor<6x9xi64>
    %202 = arith.cmpf uno, %cst_21, %cst_21 : f32
    %203 = arith.remsi %extracted_24, %false : i1
    %204 = math.copysign %cst_21, %cst_21 : f32
    %205 = arith.divf %cst_2, %cst_0 : f16
    %206 = math.sqrt %splat_37 : tensor<6x9xf16>
    %true_44 = index.bool.constant true
    %c42 = arith.constant 42 : index
    %extracted_45 = tensor.extract %collapsed[%c42] : tensor<54xi64>
    %207 = math.fpowi %0, %12 : tensor<9xf16>, tensor<9xi32>
    %208 = index.mul %136, %167
    %209 = index.divs %200, %190
    %210 = math.powf %7, %10 : tensor<6x9xf32>
    %211 = math.powf %expanded_29, %expanded_29 : tensor<6x9x1xf16>
    %212 = math.cos %0 : tensor<9xf16>
    %213 = math.exp2 %expanded_29 : tensor<6x9x1xf16>
    %214 = arith.addi %extracted_43, %c1552290737_i64 : i64
    %215 = math.exp2 %7 : tensor<6x9xf32>
    %216 = vector.transpose %106, [1, 0] : vector<6x9xi64> to vector<9x6xi64>
    %217 = vector.gather %alloc_6[%42] [%108], %107, %108 : memref<9xi32>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi32> into vector<6x9xi32>
    %218 = math.atan %5 : tensor<6x9xf32>
    %219 = arith.maxf %cst_21, %cst_21 : f32
    %220 = vector.broadcast %c16477_i16 : i16 to vector<1x1xi16>
    %221 = vector.outerproduct %84, %57, %220 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
    %222 = vector.insertelement %c-29564_i16, %21[%46 : index] : vector<13xi16>
    %223 = arith.divui %c134130799_i32, %c1820405062_i32 : i32
    %224 = arith.addi %c1901607918_i32, %c522676489_i32 : i32
    %225 = arith.shrui %c522676489_i32, %c1820405062_i32 : i32
    %226 = arith.divui %c16477_i16, %c16477_i16 : i16
    %227 = arith.xori %c-29564_i16, %c16477_i16 : i16
    %expanded_46 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<6x9xi64> into tensor<6x9x1xi64>
    %alloc_47 = memref.alloc() : memref<6x9xi16>
    %cast_48 = tensor.cast %expanded : tensor<9x1xf16> to tensor<?x?xf16>
    %228 = math.ceil %cst_0 : f16
    %229 = affine.min affine_map<(d0, d1) -> ((d0 mod 128) floordiv 8 - (d0 + d1), (d0 mod 128) floordiv 8, (d0 + d1) floordiv 2, 0)>(%c0, %200)
    %230 = math.powf %expanded_29, %expanded_29 : tensor<6x9x1xf16>
    %231 = arith.floordivsi %false_1, %false_1 : i1
    %232 = index.sub %rank, %c11
    %233 = math.fma %5, %10, %81 : tensor<6x9xf32>
    affine.for %arg0 = 0 to 68 {
    }
    %234 = math.exp2 %5 : tensor<6x9xf32>
    %235 = affine.min affine_map<(d0, d1) -> (d1 * 128)>(%rank_18, %c0)
    %236 = vector.matrix_multiply %21, %57 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<1xi16>) -> vector<13xi16>
    %237 = math.atan %5 : tensor<6x9xf32>
    %238 = tensor.empty() : tensor<1x9xi16>
    %239 = linalg.matmul ins(%8, %splat : tensor<1x6xi16>, tensor<6x9xi16>) outs(%238 : tensor<1x9xi16>) -> tensor<1x9xi16>
    %240 = scf.index_switch %157 -> vector<9xf32> 
    case 1 {
      %249 = index.maxs %93, %95
      %250 = affine.for %arg0 = 0 to 98 iter_args(%arg1 = %4) -> (tensor<6x9xi64>) {
        affine.yield %1 : tensor<6x9xi64>
      }
      %251 = index.castu %extracted_39 : i64 to index
      memref.alloca_scope  {
        %265 = vector.broadcast %cst : f32 to vector<9xf32>
        %266 = vector.insert %265, %148 [0] : vector<9xf32> into vector<6x9xf32>
        %267 = arith.maxsi %c1820405062_i32, %c522676489_i32 : i32
        %268 = math.copysign %81, %7 : tensor<6x9xf32>
        %269 = arith.ceildivsi %c134130799_i32, %c522676489_i32 : i32
        %270 = arith.maxsi %c1552290737_i64, %extracted_39 : i64
        %271 = math.ctlz %18 : tensor<9xi16>
        %272 = arith.divf %cst_0, %cst_0 : f16
        %273 = arith.floordivsi %extracted, %c-29564_i16 : i16
        %dest, %accumulated_value = vector.scan <minf>, %150, %265 {inclusive = false, reduction_dim = 0 : i64} : vector<6x9xf32>, vector<9xf32>
        %274 = arith.maxsi %extracted_24, %false_1 : i1
        %collapsed_51 = tensor.collapse_shape %11 [[0, 1]] : tensor<6x9xi32> into tensor<54xi32>
        %alloc_52 = memref.alloc() : memref<6x9xf32>
        %alloca_53 = memref.alloca() : memref<9xf16>
        %275 = arith.shli %c1820405062_i32, %c522676489_i32 : i32
        %276 = vector.broadcast %extracted_24 : i1 to vector<6xi1>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %48, %100, %276 : vector<1x6xi1>, vector<1xi1> into vector<6xi1>
        %278 = index.mul %152, %c5
        %279 = vector.shuffle %87, %87 [4, 6, 9, 11] : vector<6x9xi16>, vector<6x9xi16>
        %280 = vector.broadcast %true_44 : i1 to vector<6xi1>
        %dest_54, %accumulated_value_55 = vector.scan <xor>, %138, %280 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xi1>, vector<6xi1>
        %281 = index.divs %235, %178
        %282 = math.atan2 %5, %7 : tensor<6x9xf32>
        %283 = index.ceildivs %c8, %c7
        %collapsed_56 = tensor.collapse_shape %2 [[0, 1]] : tensor<6x9xf16> into tensor<54xf16>
        %284 = arith.shrui %c1552290737_i64, %121 : i64
        %285 = vector.create_mask %278, %194 : vector<6x9xi1>
        %286 = arith.andi %true, %false : i1
        %287 = math.ipowi %extracted_26, %c-15825_i16 : i16
        %rank_57 = tensor.rank %collapsed_20 : tensor<6xi16>
        %extracted_58 = tensor.extract %cast_27[%c0, %c0] : tensor<?x?xf32>
        %288 = math.exp2 %6 : tensor<1x6xf32>
        %alloc_59 = memref.alloc() : memref<i32>
        memref.tensor_store %24, %alloc_59 : memref<i32>
        %289 = arith.divui %121, %extracted_45 : i64
        %290 = vector.load %alloc_13[%c0, %c4] : memref<1x6xi32>, vector<6x9xi32>
      }
      %252 = index.casts %c8 : index to i32
      %253 = arith.maxsi %extracted_45, %extracted_39 : i64
      memref.store %c29724_i16, %alloc_15[%c0, %c3] : memref<1x6xi16>
      %254 = vector.insert %172, %107 [3] : vector<9xi1> into vector<6x9xi1>
      %255 = arith.xori %extracted_43, %c1552290737_i64 : i64
      %256 = math.rsqrt %splat_37 : tensor<6x9xf16>
      %257 = bufferization.clone %alloc_4 : memref<6x9xf16> to memref<6x9xf16>
      %258 = vector.broadcast %c1901607918_i32 : i32 to vector<9xi32>
      %259 = vector.gather %63[%190, %193] [%258], %191, %258 : memref<6x9xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
      %260 = index.sub %190, %c10
      %261 = arith.maxsi %extracted_43, %c1552290737_i64 : i64
      %262 = arith.remf %cst_21, %cst_21 : f32
      %263 = math.log2 %6 : tensor<1x6xf32>
      %264 = vector.broadcast %cst : f32 to vector<9xf32>
      scf.yield %264 : vector<9xf32>
    }
    case 2 {
      %249 = arith.andi %c1552290737_i64, %c1552290737_i64 : i64
      %250 = bufferization.clone %alloc_11 : memref<6x9xi1> to memref<6x9xi1>
      %collapsed_51 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
      %251 = math.ctpop %c29724_i16 : i16
      memref.assume_alignment %alloc_25, 1 : memref<1x6xi64>
      %252 = math.atan %0 : tensor<9xf16>
      %collapsed_52 = tensor.collapse_shape %10 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
      %253 = arith.minsi %extracted_45, %121 : i64
      %254 = arith.shrui %extracted_39, %c1552290737_i64 : i64
      affine.store %true_44, %alloc_5[%c3, %c15] : memref<1x6xi1>
      %255 = index.add %200, %161
      %256 = math.log2 %117 : tensor<1x6xf32>
      %257 = math.round %cst_21 : f32
      affine.store %true_44, %alloc_11[%c5, %c1] : memref<6x9xi1>
      %alloca_53 = memref.alloca() : memref<6x9xi64>
      %258 = bufferization.clone %alloc_14 : memref<6x9xi16> to memref<6x9xi16>
      %259 = vector.broadcast %cst_21 : f32 to vector<9xf32>
      scf.yield %259 : vector<9xf32>
    }
    case 3 {
      %249 = arith.ceildivsi %extracted, %c-15825_i16 : i16
      %250 = vector.bitcast %217 : vector<6x9xi32> to vector<6x9xi32>
      %alloca_51 = memref.alloca() : memref<6x9xf16>
      %251 = index.divs %110, %193
      %alloca_52 = memref.alloca() : memref<6x9xi1>
      vector.print %87 : vector<6x9xi16>
      %splat_53 = tensor.splat %c1552290737_i64 : tensor<6x9xi64>
      %alloc_54 = memref.alloc() : memref<1x6xi1>
      %alloca_55 = memref.alloca() : memref<6x9xi64>
      %252 = math.log10 %5 : tensor<6x9xf32>
      %253 = tensor.empty() : tensor<1x9xi32>
      %254 = linalg.matmul ins(%153, %11 : tensor<1x6xi32>, tensor<6x9xi32>) outs(%253 : tensor<1x9xi32>) -> tensor<1x9xi32>
      %255 = arith.addf %cst, %cst_21 : f32
      %256 = tensor.empty() : tensor<6x1xf16>
      %257 = linalg.matmul ins(%2, %expanded : tensor<6x9xf16>, tensor<9x1xf16>) outs(%256 : tensor<6x1xf16>) -> tensor<6x1xf16>
      %258 = vector.extract %107[4] : vector<6x9xi1>
      %259 = math.expm1 %6 : tensor<1x6xf32>
      %260 = arith.ori %false, %false_1 : i1
      %261 = vector.broadcast %cst_21 : f32 to vector<9xf32>
      scf.yield %261 : vector<9xf32>
    }
    case 4 {
      %249 = bufferization.clone %alloc_15 : memref<1x6xi16> to memref<1x6xi16>
      %250 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 + d1) ceildiv 2)>(%42, %c15, %193, %46)
      %251 = scf.execute_region -> tensor<6x9xf32> {
        %266 = index.divs %208, %157
        %267 = vector.broadcast %c9 : index to vector<1xindex>
        vector.scatter %alloc_7[%c1] [%267], %100, %99 : memref<9xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %268 = index.castu %extracted_45 : i64 to index
        %269 = tensor.empty() : tensor<6x9xi1>
        %270 = vector.gather %alloc_17[%c3] [%47], %48, %32 : memref<9xf32>, vector<1x6xi32>, vector<1x6xi1>, vector<1x6xf32> into vector<1x6xf32>
        %271 = arith.maxsi %c29724_i16, %c16477_i16 : i16
        %272 = tensor.empty() : tensor<9x9xi16>
        %273 = tensor.empty() : tensor<1x9xi16>
        %274 = linalg.matmul ins(%238, %272 : tensor<1x9xi16>, tensor<9x9xi16>) outs(%273 : tensor<1x9xi16>) -> tensor<1x9xi16>
        %275 = arith.xori %c-29564_i16, %c29724_i16 : i16
        %276 = arith.remf %cst_21, %cst : f32
        %collapsed_52 = tensor.collapse_shape %expanded_35 [[0, 1], [2]] : tensor<1x6x1xi1> into tensor<6x1xi1>
        %extracted_53 = tensor.extract %45[%c2, %c1] : tensor<6x9xi1>
        affine.store %c16477_i16, %249[%c3, %c4] : memref<1x6xi16>
        %277 = math.cos %6 : tensor<1x6xf32>
        %278 = vector.broadcast %38 : index to vector<9xindex>
        %279 = vector.broadcast %c522676489_i32 : i32 to vector<9xi32>
        vector.scatter %63[%c2, %c1] [%278], %191, %279 : memref<6x9xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %280 = math.fma %2, %2, %2 : tensor<6x9xf16>
        bufferization.dealloc_tensor %4 : tensor<6x9xi64>
        scf.yield %5 : tensor<6x9xf32>
      }
      %252 = arith.remsi %extracted_39, %extracted_43 : i64
      %253 = math.tan %0 : tensor<9xf16>
      %254 = math.round %10 : tensor<6x9xf32>
      %255 = math.exp %0 : tensor<9xf16>
      %256 = math.log10 %cst_0 : f16
      %257 = bufferization.clone %alloc_17 : memref<9xf32> to memref<9xf32>
      %258 = affine.if affine_set<(d0) : (d0 floordiv 32 == 0, d0 * 8 - 7 == 0, d0 * 128 + 120 == 0)>(%c1) -> memref<9xi32> {
        %266 = bufferization.to_tensor %34 : memref<9xi32>
        %267 = arith.andi %extracted_24, %false : i1
        %268 = index.castu %42 : index to i32
        %269 = index.divu %152, %157
        %270 = vector.broadcast %cst : f32 to vector<1xf32>
        %271 = vector.maskedload %alloc_9[%c4, %c3], %100, %270 : memref<6x9xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %272 = arith.minui %false_1, %false : i1
        %273 = math.expm1 %10 : tensor<6x9xf32>
        %274 = arith.shrui %extracted_45, %extracted_39 : i64
        affine.yield %alloc_6 : memref<9xi32>
      } else {
        %266 = arith.shrui %121, %c1552290737_i64 : i64
        %267 = arith.mulf %cst_2, %cst_2 : f16
        %cast_52 = tensor.cast %collapsed : tensor<54xi64> to tensor<?xi64>
        %268 = arith.divsi %true_44, %true_44 : i1
        %269 = arith.negf %cst_2 : f16
        %270 = index.divs %c10, %157
        %271 = vector.shuffle %48, %48 [1] : vector<1x6xi1>, vector<1x6xi1>
        %272 = arith.addi %extracted_45, %extracted_39 : i64
        affine.yield %alloc_6 : memref<9xi32>
      }
      %false_51 = index.bool.constant false
      %259 = vector.broadcast %cst : f32 to vector<6xf32>
      %260 = vector.insert %259, %32 [0] : vector<6xf32> into vector<1x6xf32>
      %261 = vector.matrix_multiply %172, %100 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<1xi1>) -> vector<9xi1>
      %262 = arith.cmpf uge, %cst, %cst : f32
      %263 = arith.andi %c1552290737_i64, %extracted_43 : i64
      %264 = math.sqrt %117 : tensor<1x6xf32>
      %265 = vector.broadcast %cst_21 : f32 to vector<9xf32>
      scf.yield %265 : vector<9xf32>
    }
    default {
      %249 = arith.ceildivsi %false, %false_1 : i1
      %250 = math.tanh %cst_21 : f32
      %splat_51 = tensor.splat %cst_21 : tensor<1x6xf32>
      %251 = math.exp2 %7 : tensor<6x9xf32>
      %252 = bufferization.to_tensor %94 : memref<9xi64>
      %253 = arith.shrui %c1901607918_i32, %c1820405062_i32 : i32
      %254 = math.log2 %81 : tensor<6x9xf32>
      %255 = bufferization.to_memref %5 : memref<6x9xf32>
      %256 = vector.create_mask %c12, %95 : vector<6x9xi1>
      %257 = memref.load %alloc_15[%c0, %c2] : memref<1x6xi16>
      %258 = math.expm1 %6 : tensor<1x6xf32>
      %259 = arith.ceildivsi %c1552290737_i64, %extracted_45 : i64
      %extracted_52 = tensor.extract %reduced[%c0] : tensor<1xi1>
      %260 = vector.flat_transpose %172 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %261 = arith.xori %extracted_52, %false : i1
      vector.print %260 : vector<9xi1>
      %262 = vector.broadcast %cst : f32 to vector<9xf32>
      scf.yield %262 : vector<9xf32>
    }
    %241 = memref.load %34[%c1] : memref<9xi32>
    %242 = arith.remui %121, %extracted_43 : i64
    %243 = math.fma %10, %10, %5 : tensor<6x9xf32>
    %244 = bufferization.clone %alloc_5 : memref<1x6xi1> to memref<1x6xi1>
    %245 = tensor.empty() : tensor<1x6xi1>
    %246 = linalg.copy ins(%14 : tensor<1x6xi1>) outs(%245 : tensor<1x6xi1>) -> tensor<1x6xi1>
    %alloc_49 = memref.alloc() : memref<9x6xf32>
    linalg.transpose ins(%alloc_9 : memref<6x9xf32>) outs(%alloc_49 : memref<9x6xf32>) permutation = [1, 0] 
    %247 = tensor.empty() : tensor<i16>
    %reduced_50 = linalg.reduce ins(%9 : tensor<1x6xi16>) outs(%247 : tensor<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %249 = vector.load %244[%c0, %c5] : memref<1x6xi1>, vector<6x9xi1>
        %250 = vector.create_mask %c12 : vector<9xi1>
        %251 = index.add %c11, %c13
        %252 = tensor.empty() : tensor<1x6xf16>
        memref.copy %alloc_7, %34 : memref<9xi32> to memref<9xi32>
        %253 = vector.matrix_multiply %172, %250 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
        %collapsed_51 = tensor.collapse_shape %197 [[0, 1]] : tensor<1x6xi32> into tensor<6xi32>
        %254 = affine.if affine_set<(d0, d1, d2, d3) : (d3 == 0, 0 >= 0)>(%c3, %c1, %c9, %c3) -> memref<6x9xi16> {
          %splat_52 = tensor.splat %c1901607918_i32 : tensor<6x9xi32>
          %splat_53 = tensor.splat %extracted_43 : tensor<6x9xi64>
          %255 = math.log2 %expanded : tensor<9x1xf16>
          %256 = arith.mulf %cst_2, %cst_2 : f16
          %257 = math.powf %81, %10 : tensor<6x9xf32>
          %258 = index.divs %58, %58
          %cst_54 = arith.constant 1.000000e+00 : f32
          %cst_55 = arith.constant 0.000000e+00 : f32
          %259 = vector.transfer_read %alloc_49[%rank_33, %229], %cst_55 : memref<9x6xf32>, vector<f32>
          %260 = arith.xori %extracted_45, %extracted_43 : i64
          affine.yield %alloc_14 : memref<6x9xi16>
        } else {
          %255 = arith.shli %true, %true_44 : i1
          %256 = math.absi %121 : i64
          %257 = vector.gather %11[%c10, %159] [%108], %249, %108 : tensor<6x9xi32>, vector<6x9xi32>, vector<6x9xi1>, vector<6x9xi32> into vector<6x9xi32>
          %258 = index.add %c3, %c6
          %259 = arith.minsi %false_1, %false : i1
          %260 = vector.shuffle %146, %138 [0, 5, 7, 10, 11] : vector<6x9xi1>, vector<6x9xi1>
          %261 = vector.shuffle %32, %33 [1] : vector<1x6xf32>, vector<1x6xf32>
          affine.store %cst, %alloc_49[%c14, %c6] : memref<9x6xf32>
          affine.yield %alloc_14 : memref<6x9xi16>
        }
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg0) = (%209) to (%c12) step (%c12) {
      %249 = index.maxs %201, %200
      %250 = math.round %2 : tensor<6x9xf16>
      %251 = vector.broadcast %cst_21 : f32 to vector<6x9xf32>
      %252 = vector.fma %251, %150, %150 : vector<6x9xf32>
      %alloc_51 = memref.alloc() : memref<9xi16>
      %253 = vector.shuffle %191, %100 [1, 4] : vector<9xi1>, vector<1xi1>
      %extracted_52 = tensor.extract %24[] : tensor<i32>
      %alloc_53 = memref.alloc() : memref<9xi32>
      %254 = arith.subi %false, %true_44 : i1
      %collapsed_54 = tensor.collapse_shape %expanded_35 [[0, 1], [2]] : tensor<1x6x1xi1> into tensor<6x1xi1>
      %255 = math.log10 %6 : tensor<1x6xf32>
      %256 = math.log2 %81 : tensor<6x9xf32>
      %257 = arith.xori %121, %121 : i64
      %258 = index.maxu %c11, %c12
      %259 = vector.broadcast %cst_21 : f32 to vector<6xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %251, %259 {inclusive = true, reduction_dim = 1 : i64} : vector<6x9xf32>, vector<6xf32>
      %260 = arith.ceildivsi %false_1, %false : i1
      %261 = math.log2 %2 : tensor<6x9xf16>
      scf.yield
    }
    %248 = affine.vector_load %alloc_7[%95] : memref<9xi32>, vector<1xi32>
    affine.vector_store %99, %34[%c7] : memref<9xi32>, vector<1xi32>
    vector.print %21 : vector<13xi16>
    vector.print %32 : vector<1x6xf32>
    vector.print %33 : vector<1x6xf32>
    vector.print %39 : vector<1xi16>
    vector.print %47 : vector<1x6xi32>
    vector.print %48 : vector<1x6xi1>
    vector.print %49 : vector<1x6xi32>
    vector.print %57 : vector<1xi16>
    vector.print %77 : vector<1x6xi32>
    vector.print %84 : vector<1xi16>
    vector.print %87 : vector<6x9xi16>
    vector.print %99 : vector<1xi32>
    vector.print %100 : vector<1xi1>
    vector.print %101 : vector<1xi32>
    vector.print %106 : vector<6x9xi64>
    vector.print %107 : vector<6x9xi1>
    vector.print %108 : vector<6x9xi32>
    vector.print %109 : vector<6x9xi64>
    vector.print %138 : vector<6x9xi1>
    vector.print %146 : vector<6x9xi1>
    vector.print %147 : vector<6x9xf32>
    vector.print %148 : vector<6x9xf32>
    vector.print %149 : vector<6x9xf32>
    vector.print %150 : vector<6x9xf32>
    vector.print %162 : vector<1x6xf32>
    vector.print %172 : vector<9xi1>
    vector.print %187 : vector<1x6xi16>
    vector.print %188 : vector<1x6xi16>
    vector.print %191 : vector<9xi1>
    vector.print %217 : vector<6x9xi32>
    vector.print %236 : vector<13xi16>
    vector.print %248 : vector<1xi32>
    vector.print %c1678315323_i64 : i64
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %false : i1
    vector.print %c1901607918_i32 : i32
    vector.print %c1552290737_i64 : i64
    vector.print %c522676489_i32 : i32
    vector.print %c-29564_i16 : i16
    vector.print %c29724_i16 : i16
    vector.print %c-15825_i16 : i16
    vector.print %c16477_i16 : i16
    vector.print %false_1 : i1
    vector.print %c134130799_i32 : i32
    vector.print %cst_2 : f16
    vector.print %c1820405062_i32 : i32
    vector.print %extracted : i16
    vector.print %cst_21 : f32
    vector.print %extracted_24 : i1
    vector.print %extracted_26 : i16
    vector.print %121 : i64
    vector.print %extracted_34 : f16
    vector.print %extracted_39 : i64
    vector.print %extracted_43 : i64
    vector.print %true_44 : i1
    vector.print %extracted_45 : i64
    return %cst : f32
  }
}
