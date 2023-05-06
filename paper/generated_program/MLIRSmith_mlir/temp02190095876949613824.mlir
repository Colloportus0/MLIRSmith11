module {
  func.func @func1() -> vector<2xi1> {
    %c1223857795_i64 = arith.constant 1223857795 : i64
    %cst = arith.constant 2.988800e+04 : f16
    %c587105715_i64 = arith.constant 587105715 : i64
    %c-25750_i16 = arith.constant -25750 : i16
    %c1687761739_i64 = arith.constant 1687761739 : i64
    %c1905834818_i32 = arith.constant 1905834818 : i32
    %cst_0 = arith.constant 0x4DBACDCE : f32
    %c1335620276_i64 = arith.constant 1335620276 : i64
    %c29947_i16 = arith.constant 29947 : i16
    %cst_1 = arith.constant 0x4C84F395 : f32
    %c1963615805_i32 = arith.constant 1963615805 : i32
    %c12646_i16 = arith.constant 12646 : i16
    %c695434013_i32 = arith.constant 695434013 : i32
    %false = arith.constant false
    %false_2 = arith.constant false
    %cst_3 = arith.constant 0x4D89962D : f32
    %0 = tensor.empty() : tensor<1x1xi32>
    %1 = tensor.empty() : tensor<1x1xi32>
    %2 = tensor.empty() : tensor<2xi64>
    %3 = tensor.empty() : tensor<1x1xf16>
    %4 = tensor.empty() : tensor<2xi32>
    %5 = tensor.empty() : tensor<2xi64>
    %6 = tensor.empty() : tensor<2x1xi16>
    %7 = tensor.empty() : tensor<2xi32>
    %8 = tensor.empty() : tensor<2x1xf32>
    %9 = tensor.empty() : tensor<2xi16>
    %10 = tensor.empty() : tensor<1x1xi64>
    %11 = tensor.empty() : tensor<2xf32>
    %12 = tensor.empty() : tensor<1x1xi64>
    %13 = tensor.empty() : tensor<2xf16>
    %14 = tensor.empty() : tensor<2xf32>
    %15 = tensor.empty() : tensor<2xi16>
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
    %alloc = memref.alloc() : memref<2xi64>
    %alloc_4 = memref.alloc() : memref<1x1xi1>
    %alloc_5 = memref.alloc() : memref<2x1xf32>
    %alloc_6 = memref.alloc() : memref<2x1xi1>
    %alloc_7 = memref.alloc() : memref<2xf16>
    %alloc_8 = memref.alloc() : memref<2xi32>
    %alloc_9 = memref.alloc() : memref<1x1xf32>
    %alloc_10 = memref.alloc() : memref<2xf16>
    %alloc_11 = memref.alloc() : memref<2x1xf16>
    %alloc_12 = memref.alloc() : memref<2xi16>
    %alloc_13 = memref.alloc() : memref<2xi32>
    %alloc_14 = memref.alloc() : memref<1x1xi32>
    %alloc_15 = memref.alloc() : memref<1x1xf32>
    %alloc_16 = memref.alloc() : memref<2x1xi1>
    %alloc_17 = memref.alloc() : memref<2xi1>
    %alloc_18 = memref.alloc() : memref<1x1xi1>
    %16 = tensor.empty() : tensor<2xi16>
    %17 = linalg.copy ins(%9 : tensor<2xi16>) outs(%16 : tensor<2xi16>) -> tensor<2xi16>
    %alloc_19 = memref.alloc() : memref<1x1xi32>
    linalg.transpose ins(%0 : tensor<1x1xi32>) outs(%alloc_19 : memref<1x1xi32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%5 : tensor<2xi64>) outs(%18 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %263 = arith.remui %c12646_i16, %c29947_i16 : i16
        %264 = vector.broadcast %c695434013_i32 : i32 to vector<i32>
        %265 = vector.insertelement %c695434013_i32, %264[] : vector<i32>
        scf.index_switch %c11 
        case 1 {
          %271 = arith.remsi %c12646_i16, %c-25750_i16 : i16
          %272 = index.castu %c14 : index to i32
          memref.tensor_store %4, %alloc_8 : memref<2xi32>
          %alloc_30 = memref.alloc() : memref<1x1xf16>
          memref.tensor_store %3, %alloc_30 : memref<1x1xf16>
          %273 = math.exp2 %cst_1 : f32
          %274 = arith.remui %c587105715_i64, %in : i64
          %275 = vector.broadcast %c1963615805_i32 : i32 to vector<15x2xi32>
          %276 = vector.broadcast %c1905834818_i32 : i32 to vector<15xi32>
          %dest, %accumulated_value = vector.scan <mul>, %275, %276 {inclusive = false, reduction_dim = 1 : i64} : vector<15x2xi32>, vector<15xi32>
          %277 = arith.shli %c695434013_i32, %c1905834818_i32 : i32
          %278 = arith.cmpf oge, %cst_1, %cst_0 : f32
          %279 = vector.broadcast %c14 : index to vector<1xindex>
          %280 = vector.broadcast %false : i1 to vector<1xi1>
          %281 = vector.broadcast %c1963615805_i32 : i32 to vector<1xi32>
          vector.scatter %alloc_19[%c0, %c0] [%279], %280, %281 : memref<1x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
          %282 = arith.shrui %false_2, %false_2 : i1
          %283 = math.fpowi %3, %0 : tensor<1x1xf16>, tensor<1x1xi32>
          %284 = index.floordivs %c12, %c13
          %285 = vector.splat %c2 : vector<2x1xindex>
          %286 = math.fpowi %11, %7 : tensor<2xf32>, tensor<2xi32>
          %287 = index.maxs %c2, %c5
          scf.yield
        }
        default {
          %271 = bufferization.to_tensor %alloc_13 : memref<2xi32>
          %272 = arith.maxui %in, %init : i64
          %273 = vector.broadcast %c-25750_i16 : i16 to vector<i16>
          %274 = vector.transfer_write %273, %15[%c10] : vector<i16>, tensor<2xi16>
          %275 = math.roundeven %13 : tensor<2xf16>
          %276 = vector.splat %cst_1 : vector<1x1xf32>
          %277 = math.atan2 %8, %8 : tensor<2x1xf32>
          %cast_30 = tensor.cast %7 : tensor<2xi32> to tensor<?xi32>
          %cast_31 = tensor.cast %5 : tensor<2xi64> to tensor<?xi64>
          %278 = math.absf %cst : f16
          %279 = math.tanh %cst_3 : f32
          memref.store %false, %alloc_18[%c0, %c0] : memref<1x1xi1>
          %280 = index.sub %c2, %c14
          %281 = arith.andi %c1687761739_i64, %c587105715_i64 : i64
          %282 = affine.max affine_map<(d0) -> (d0 * 8, -d0)>(%c0)
          %alloc_32 = memref.alloc() : memref<2x1xi16>
          memref.tensor_store %6, %alloc_32 : memref<2x1xi16>
          %283 = math.round %11 : tensor<2xf32>
        }
        scf.execute_region {
          %271 = math.rsqrt %8 : tensor<2x1xf32>
          %272 = index.sizeof
          %273 = arith.minf %cst, %cst : f16
          %274 = arith.cmpf ueq, %cst_3, %cst_1 : f32
          %275 = math.copysign %cst, %cst : f16
          %276 = vector.broadcast %c1687761739_i64 : i64 to vector<1xi64>
          %277 = vector.extract %276[0] : vector<1xi64>
          %278 = math.roundeven %cst_3 : f32
          %279 = vector.splat %c-25750_i16 : vector<1x1xi16>
          %280 = vector.broadcast %cst_1 : f32 to vector<15xf32>
          %281 = vector.broadcast %false : i1 to vector<15xi1>
          %282 = vector.maskedload %alloc_15[%c0, %c0], %281, %280 : memref<1x1xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
          %283 = math.fpowi %13, %4 : tensor<2xf16>, tensor<2xi32>
          %284 = arith.maxsi %false_2, %false : i1
          %c30155_i16 = arith.constant 30155 : i16
          %285 = arith.negf %cst : f16
          %286 = bufferization.to_tensor %alloc_17 : memref<2xi1>
          %287 = math.rsqrt %cst_3 : f32
          %alloca_30 = memref.alloca() : memref<2xf16>
          scf.yield
        }
        scf.execute_region {
          %271 = arith.addf %cst_0, %cst_0 : f32
          %272 = arith.divf %cst_0, %cst_3 : f32
          %273 = arith.remui %in, %c587105715_i64 : i64
          %274 = vector.broadcast %c587105715_i64 : i64 to vector<1xi64>
          %275 = vector.extract_strided_slice %274 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
          %276 = index.mul %c5, %c10
          %277 = vector.insertelement %c695434013_i32, %264[] : vector<i32>
          %278 = vector.multi_reduction <minsi>, %275, %in [0] : vector<1xi64> to i64
          %collapsed_30 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
          %279 = math.exp2 %cst : f16
          %280 = math.log2 %cst_3 : f32
          %281 = arith.mulf %cst_1, %cst_3 : f32
          %282 = math.exp2 %14 : tensor<2xf32>
          %283 = arith.muli %false_2, %false_2 : i1
          %284 = arith.minsi %in, %c1335620276_i64 : i64
          %285 = index.maxs %c8, %c15
          %286 = bufferization.to_tensor %alloc_4 : memref<1x1xi1>
          scf.yield
        }
        %266 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 - d2) floordiv 4 + d1 >= 0)>(%c13, %c12, %c4, %c7) -> i32 {
          %271 = vector.broadcast %c29947_i16 : i16 to vector<i16>
          %272 = vector.transfer_write %271, %16[%c15] : vector<i16>, tensor<2xi16>
          %273 = index.castu %c-25750_i16 : i16 to index
          %274 = math.log2 %3 : tensor<1x1xf16>
          %275 = index.castu %c14 : index to i32
          %276 = math.atan2 %13, %13 : tensor<2xf16>
          %277 = math.roundeven %13 : tensor<2xf16>
          %278 = index.divs %c2, %c11
          bufferization.dealloc_tensor %2 : tensor<2xi64>
          affine.yield %c1963615805_i32 : i32
        } else {
          %271 = index.ceildivu %c10, %c11
          %272 = arith.divf %cst, %cst : f16
          %273 = arith.addf %cst_0, %cst_3 : f32
          %274 = vector.broadcast %cst_3 : f32 to vector<1xf32>
          %275 = vector.extract %274[0] : vector<1xf32>
          %276 = arith.remf %cst_1, %cst_1 : f32
          %277 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 64) mod 32, d1, d0 + 16, d0)>(%c11, %c9)
          %278 = arith.divui %c587105715_i64, %c1335620276_i64 : i64
          %279 = math.ipowi %17, %16 : tensor<2xi16>
          affine.yield %c1905834818_i32 : i32
        }
        %267 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %268 = vector.broadcast %false : i1 to vector<8xi1>
        %269 = vector.maskedload %alloc_5[%c0, %c0], %268, %267 : memref<2x1xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %270 = arith.shrsi %in, %init : i64
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg0) = (%c8) to (%c9) step (%c12) {
      %263 = index.divs %c15, %c8
      %264 = index.sizeof
      %265 = math.fpowi %cst_1, %c1963615805_i32 : f32, i32
      %266 = arith.addf %cst_0, %cst_1 : f32
      %267 = arith.xori %c1335620276_i64, %c1335620276_i64 : i64
      %268 = arith.subi %c1335620276_i64, %c1223857795_i64 : i64
      %269 = math.exp2 %cst_1 : f32
      %270 = tensor.empty() : tensor<2xi64>
      %271 = arith.divf %cst, %cst : f16
      %272 = arith.addf %cst_0, %cst_0 : f32
      %273 = vector.broadcast %c1963615805_i32 : i32 to vector<1xi32>
      %274 = vector.extract_strided_slice %273 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %275 = math.fma %8, %8, %8 : tensor<2x1xf32>
      %276 = arith.muli %false, %false : i1
      %alloc_30 = memref.alloc() : memref<i64>
      memref.tensor_store %reduced, %alloc_30 : memref<i64>
      %277 = vector.extract_strided_slice %273 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %278 = scf.index_switch %c5 -> tensor<1x1xi32> 
      case 1 {
        %279 = math.exp2 %14 : tensor<2xf32>
        %280 = math.atan %11 : tensor<2xf32>
        %281 = math.round %11 : tensor<2xf32>
        %282 = vector.multi_reduction <xor>, %277, %c1905834818_i32 [0] : vector<1xi32> to i32
        %283 = arith.minui %c-25750_i16, %c-25750_i16 : i16
        %284 = index.maxu %c3, %c2
        %285 = index.maxs %c10, %c1
        %286 = math.floor %14 : tensor<2xf32>
        %287 = math.atan %3 : tensor<1x1xf16>
        %288 = arith.remui %c1905834818_i32, %282 : i32
        %289 = index.sub %285, %c11
        %290 = vector.broadcast %false : i1 to vector<2x1xi1>
        %291 = vector.broadcast %c695434013_i32 : i32 to vector<2x1xi32>
        %292 = vector.gather %alloc_17[%284] [%291], %290, %290 : memref<2xi1>, vector<2x1xi32>, vector<2x1xi1>, vector<2x1xi1> into vector<2x1xi1>
        %293 = arith.shli %c29947_i16, %c12646_i16 : i16
        %294 = index.ceildivs %263, %285
        %295 = arith.remf %cst, %cst : f16
        %296 = vector.broadcast %c29947_i16 : i16 to vector<1xi16>
        %297 = vector.broadcast %false_2 : i1 to vector<1xi1>
        %298 = vector.maskedload %alloc_12[%c1], %297, %296 : memref<2xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        scf.yield %0 : tensor<1x1xi32>
      }
      case 2 {
        %279 = index.sub %c3, %c9
        %280 = index.sub %c8, %c6
        %281 = arith.divsi %c12646_i16, %c-25750_i16 : i16
        %282 = vector.extract_strided_slice %273 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %283 = math.atan %13 : tensor<2xf16>
        %284 = affine.max affine_map<(d0) -> (0, d0 mod 128, (d0 mod 128) * 4)>(%c7)
        %285 = index.casts %c1963615805_i32 : i32 to index
        %286 = math.absf %cst : f16
        %287 = math.atan2 %13, %13 : tensor<2xf16>
        %288 = arith.remsi %c1335620276_i64, %c1335620276_i64 : i64
        %289 = arith.minf %cst_0, %cst_1 : f32
        %290 = arith.minsi %c1223857795_i64, %c1223857795_i64 : i64
        %291 = arith.xori %c587105715_i64, %c1687761739_i64 : i64
        %292 = vector.reduction <or>, %273 : vector<1xi32> into i32
        %293 = index.sub %c15, %c5
        %294 = index.floordivs %264, %c1
        scf.yield %1 : tensor<1x1xi32>
      }
      case 3 {
        %279 = math.fpowi %13, %7 : tensor<2xf16>, tensor<2xi32>
        %280 = arith.subi %false, %false_2 : i1
        %281 = math.fma %13, %13, %13 : tensor<2xf16>
        memref.tensor_store %15, %alloc_12 : memref<2xi16>
        %282 = arith.minf %cst, %cst : f16
        bufferization.dealloc_tensor %2 : tensor<2xi64>
        %283 = vector.extract_strided_slice %273 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %284 = memref.realloc %alloc_13 : memref<2xi32> to memref<8xi32>
        %285 = index.castu %c1335620276_i64 : i64 to index
        %286 = index.sub %c0, %c8
        %287 = vector.broadcast %c5 : index to vector<15xindex>
        %288 = vector.broadcast %false : i1 to vector<15xi1>
        %289 = vector.broadcast %c1963615805_i32 : i32 to vector<15xi32>
        vector.scatter %alloc_14[%c0, %c0] [%287], %288, %289 : memref<1x1xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %290 = math.exp2 %8 : tensor<2x1xf32>
        %291 = arith.minui %false_2, %false_2 : i1
        %292 = arith.remsi %c695434013_i32, %c1963615805_i32 : i32
        %293 = math.exp2 %3 : tensor<1x1xf16>
        %cst_31 = arith.constant 1.59336371E+9 : f32
        scf.yield %0 : tensor<1x1xi32>
      }
      default {
        %true = index.bool.constant true
        %279 = arith.andi %c-25750_i16, %c12646_i16 : i16
        %280 = math.atan %cst_0 : f32
        %cst_31 = arith.constant 1.000000e+00 : f32
        %281 = vector.transfer_read %8[%c9, %263], %cst_31 : tensor<2x1xf32>, vector<f32>
        %282 = math.expm1 %cst : f16
        %283 = vector.multi_reduction <mul>, %274, %274 [] : vector<1xi32> to vector<1xi32>
        %284 = math.ipowi %7, %4 : tensor<2xi32>
        %rank_32 = tensor.rank %11 : tensor<2xf32>
        %rank_33 = tensor.rank %15 : tensor<2xi16>
        %collapsed_34 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
        %285 = vector.broadcast %c695434013_i32 : i32 to vector<1x1xi32>
        %286 = vector.outerproduct %274, %277, %285 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
        %287 = math.cttz %c1687761739_i64 : i64
        %288 = arith.minf %cst_0, %cst_1 : f32
        %289 = math.tanh %cst : f16
        %290 = vector.splat %c14 : vector<1x1xindex>
        %291 = vector.multi_reduction <add>, %273, %c1905834818_i32 [0] : vector<1xi32> to i32
        scf.yield %1 : tensor<1x1xi32>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_13[%c8] : memref<2xi32>, vector<2xi32>
    affine.vector_store %19, %alloc_8[%c10] : memref<2xi32>, vector<2xi32>
    %20 = tensor.empty() : tensor<2xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%alloc, %20 : memref<2xi64>, tensor<2xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = math.powf %11, %11 : tensor<2xf32>
    %24 = math.exp2 %14 : tensor<2xf32>
    %25 = vector.insert %c1905834818_i32, %19 [1] : i32 into vector<2xi32>
    %26 = math.log %cst : f16
    %27 = math.round %3 : tensor<1x1xf16>
    %28 = math.atan2 %8, %8 : tensor<2x1xf32>
    %29 = arith.addf %cst_0, %cst_3 : f32
    %alloca = memref.alloca() : memref<1x1xi1>
    %30 = vector.extract %19[1] : vector<2xi32>
    %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<2x1xi16> into tensor<2xi16>
    %31 = vector.broadcast %c1905834818_i32 : i32 to vector<2x1xi32>
    %32 = arith.andi %c1335620276_i64, %c587105715_i64 : i64
    scf.execute_region {
      %263 = math.fma %3, %3, %3 : tensor<1x1xf16>
      %264 = math.tanh %14 : tensor<2xf32>
      %265 = arith.minsi %c12646_i16, %c29947_i16 : i16
      %266 = arith.ceildivsi %c587105715_i64, %c1687761739_i64 : i64
      %267 = memref.realloc %alloc : memref<2xi64> to memref<1xi64>
      bufferization.dealloc_tensor %3 : tensor<1x1xf16>
      affine.for %arg0 = 0 to 124 {
      }
      %268 = index.maxs %c7, %c4
      %269 = arith.xori %c-25750_i16, %c12646_i16 : i16
      %270 = affine.for %arg0 = 0 to 61 iter_args(%arg1 = %c7) -> (index) {
        affine.yield %c3 : index
      }
      %271 = vector.extract %19[0] : vector<2xi32>
      %rank_30 = tensor.rank %3 : tensor<1x1xf16>
      %272 = index.castu %c587105715_i64 : i64 to index
      %273 = vector.broadcast %c-25750_i16 : i16 to vector<2x1xi16>
      %274 = arith.remui %c1905834818_i32, %c695434013_i32 : i32
      %275 = arith.maxui %c1963615805_i32, %c695434013_i32 : i32
      scf.yield
    }
    %33 = math.rsqrt %8 : tensor<2x1xf32>
    %34 = arith.maxf %cst_3, %cst_3 : f32
    %35 = vector.matrix_multiply %19, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi32>, vector<2xi32>) -> vector<1xi32>
    %36 = math.rsqrt %14 : tensor<2xf32>
    %37 = arith.shrsi %false, %false_2 : i1
    scf.execute_region {
      %263 = tensor.empty() : tensor<2xf16>
      %mapped_30 = linalg.map ins(%13, %alloc_7, %alloc_7 : tensor<2xf16>, memref<2xf16>, memref<2xf16>) outs(%263 : tensor<2xf16>)
        (%in: f16, %in_32: f16, %in_33: f16) {
          %277 = arith.xori %c1963615805_i32, %c1905834818_i32 : i32
          %278 = memref.atomic_rmw minf %cst_0, %alloc_5[%c1, %c0] : (f32, memref<2x1xf32>) -> f32
          %279 = arith.remf %cst, %cst : f16
          %280 = arith.remsi %c1335620276_i64, %c587105715_i64 : i64
          %281 = index.mul %c8, %c7
          %282 = vector.multi_reduction <and>, %35, %35 [] : vector<1xi32> to vector<1xi32>
          %283 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 128)>(%c1, %c2, %c2)
          %284 = arith.remsi %c29947_i16, %c29947_i16 : i16
          %285 = vector.broadcast %c3 : index to vector<1xindex>
          %286 = vector.broadcast %false : i1 to vector<1xi1>
          %287 = vector.broadcast %in_33 : f16 to vector<1xf16>
          vector.scatter %alloc_11[%c0, %c0] [%285], %286, %287 : memref<2x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
          %288 = vector.reduction <maxui>, %35 : vector<1xi32> into i32
          %289 = arith.cmpf ugt, %cst, %in_33 : f16
          %290 = index.divu %c2, %281
          %291 = arith.cmpi sle, %c695434013_i32, %c695434013_i32 : i32
          %292 = vector.broadcast %cst : f16 to vector<2xf16>
          %293 = vector.broadcast %false : i1 to vector<2xi1>
          %294 = vector.maskedload %alloc_7[%c1], %293, %292 : memref<2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
          %295 = vector.extract %293[1] : vector<2xi1>
          memref.assume_alignment %alloc_7, 2 : memref<2xf16>
          %296 = math.powf %8, %8 : tensor<2x1xf32>
          %297 = math.atan2 %13, %13 : tensor<2xf16>
          %298 = math.tanh %in : f16
          %299 = arith.addf %cst_3, %cst_0 : f32
          %300 = index.floordivs %c14, %290
          %301 = arith.remsi %c1335620276_i64, %c1223857795_i64 : i64
          %302 = vector.broadcast %cst_1 : f32 to vector<2x1xf32>
          %303 = vector.fma %302, %302, %302 : vector<2x1xf32>
          %304 = index.castu %c11 : index to i32
          %305 = index.floordivs %c11, %c3
          %306 = math.absi %21 : tensor<i64>
          %307 = arith.muli %c-25750_i16, %c-25750_i16 : i16
          %308 = vector.multi_reduction <add>, %293, %false [0] : vector<2xi1> to i1
          %309 = arith.minf %in_33, %cst : f16
          %alloc_34 = memref.alloc() : memref<1x1xi64>
          memref.tensor_store %10, %alloc_34 : memref<1x1xi64>
          %310 = math.exp2 %cst : f16
          %311 = arith.minf %cst_3, %cst_0 : f32
          %cst_35 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_35 : f16
        }
      %264 = affine.max affine_map<(d0, d1) -> (d1 - 128, d1 - 128, d1 - 128)>(%c14, %c3)
      %265 = arith.subi %false, %false : i1
      %266 = math.fma %11, %11, %11 : tensor<2xf32>
      %267 = math.rsqrt %14 : tensor<2xf32>
      %268 = math.round %263 : tensor<2xf16>
      %269 = arith.minf %cst, %cst : f16
      %270 = bufferization.to_tensor %alloc_5 : memref<2x1xf32>
      %cast_31 = tensor.cast %12 : tensor<1x1xi64> to tensor<?x?xi64>
      %271 = arith.ori %c1963615805_i32, %c695434013_i32 : i32
      %272 = arith.floordivsi %false_2, %false : i1
      %273 = index.mul %c6, %c6
      %274 = math.floor %13 : tensor<2xf16>
      %275 = math.expm1 %8 : tensor<2x1xf32>
      memref.tensor_store %1, %alloc_19 : memref<1x1xi32>
      %276 = math.fpowi %cst, %c695434013_i32 : f16, i32
      scf.yield
    }
    %38 = math.floor %3 : tensor<1x1xf16>
    %39 = math.log %11 : tensor<2xf32>
    %40 = arith.minui %c12646_i16, %c-25750_i16 : i16
    %41 = arith.minsi %c695434013_i32, %c1905834818_i32 : i32
    %42 = arith.addf %cst, %cst : f16
    %43 = math.roundeven %3 : tensor<1x1xf16>
    %44 = index.divu %c9, %c9
    %45 = math.rsqrt %13 : tensor<2xf16>
    %46 = vector.broadcast %false_2 : i1 to vector<2xi1>
    %47 = index.mul %c9, %c3
    %48 = arith.mulf %cst_3, %cst_0 : f32
    %49 = arith.addf %cst, %cst : f16
    %50 = vector.broadcast %cst_3 : f32 to vector<2x1xf32>
    %51 = vector.broadcast %c9 : index to vector<8xindex>
    %52 = vector.broadcast %false : i1 to vector<8xi1>
    %53 = vector.broadcast %cst_1 : f32 to vector<8xf32>
    vector.scatter %alloc_15[%c0, %c0] [%51], %52, %53 : memref<1x1xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
    %from_elements = tensor.from_elements %cst, %cst : tensor<2xf16>
    %54 = vector.insert %35, %31 [0] : vector<1xi32> into vector<2x1xi32>
    %55 = vector.extract %50[1] : vector<2x1xf32>
    %56 = affine.apply affine_map<(d0, d1) -> (d0)>(%c14, %c7)
    %57 = index.floordivs %c14, %c11
    %58 = math.tanh %13 : tensor<2xf16>
    %59 = arith.negf %cst_3 : f32
    %60 = index.mul %c4, %c12
    %61 = index.sizeof
    %62 = math.fma %13, %13, %from_elements : tensor<2xf16>
    %63 = affine.apply affine_map<(d0, d1, d2) -> (d2 ceildiv 64 - d0 + 32)>(%c13, %c13, %44)
    %64 = scf.if %false -> (memref<1x1xf16>) {
      %263 = tensor.empty() : tensor<8x8x8xi32>
      %alloc_30 = memref.alloc() : memref<8xi32>
      %264 = tensor.empty() : tensor<8x8xi32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_30, %alloc_30, %264 : memref<8xi32>, memref<8xi32>, tensor<8x8xi32>) outs(%263 : tensor<8x8x8xi32>) {
      ^bb0(%in: i32, %in_33: i32, %in_34: i32, %out: i32):
        %272 = arith.minsi %out, %out : i32
        %273 = arith.xori %out, %c1905834818_i32 : i32
        %true = index.bool.constant true
        %274 = arith.addi %c29947_i16, %c12646_i16 : i16
        %275 = vector.broadcast %cst_1 : f32 to vector<2x1xf32>
        %276 = vector.fma %275, %275, %275 : vector<2x1xf32>
        %277 = math.tanh %11 : tensor<2xf32>
        %278 = vector.extract %50[1] : vector<2x1xf32>
        %279 = math.ctpop %c-25750_i16 : i16
        %280 = vector.broadcast %cst_0 : f32 to vector<8xf32>
        %281 = vector.broadcast %false_2 : i1 to vector<8xi1>
        %282 = vector.maskedload %alloc_5[%c1, %c0], %281, %280 : memref<2x1xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %283 = arith.minf %cst_0, %cst_0 : f32
        %284 = math.sqrt %from_elements : tensor<2xf16>
        %285 = arith.andi %c12646_i16, %c-25750_i16 : i16
        %286 = vector.broadcast %true : i1 to vector<1x1xi1>
        %287 = arith.cmpf one, %cst, %cst : f16
        %288 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
        %289 = vector.fma %288, %288, %288 : vector<1x1xf32>
        %290 = arith.remui %c1905834818_i32, %c695434013_i32 : i32
        %291 = arith.minf %cst, %cst : f16
        bufferization.dealloc_tensor %0 : tensor<1x1xi32>
        %292 = arith.shrsi %in, %out : i32
        %293 = math.tanh %13 : tensor<2xf16>
        %294 = math.absi %12 : tensor<1x1xi64>
        %295 = bufferization.to_tensor %alloc_17 : memref<2xi1>
        %296 = arith.cmpf olt, %cst_0, %cst_0 : f32
        %297 = arith.divui %false, %true : i1
        %298 = vector.broadcast %c-25750_i16 : i16 to vector<2xi16>
        %299 = vector.gather %17[%57] [%19], %46, %298 : tensor<2xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %300 = math.exp %cst_0 : f32
        bufferization.dealloc_tensor %13 : tensor<2xf16>
        %301 = vector.broadcast %false_2 : i1 to vector<1xi1>
        %302 = vector.maskedload %alloc_6[%c0, %c0], %301, %301 : memref<2x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %303 = index.sizeof
        %304 = vector.broadcast %cst_3 : f32 to vector<2xf32>
        %305 = vector.fma %304, %304, %304 : vector<2xf32>
        %306 = math.round %from_elements : tensor<2xf16>
        %307 = arith.remui %c1335620276_i64, %c1687761739_i64 : i64
        linalg.yield %c695434013_i32 : i32
      } -> tensor<8x8x8xi32>
      %266 = vector.multi_reduction <or>, %31, %31 [] : vector<2x1xi32> to vector<2x1xi32>
      %267 = affine.min affine_map<(d0) -> ((d0 ceildiv 32) floordiv 2, -(d0 ceildiv 32), (d0 ceildiv 32) floordiv 2, -d0)>(%c9)
      %268 = index.sub %267, %c4
      %269 = arith.remui %c29947_i16, %c12646_i16 : i16
      %270 = index.sizeof
      %271 = index.maxs %c6, %47
      %false_31 = index.bool.constant false
      %alloc_32 = memref.alloc() : memref<1x1xf16>
      scf.yield %alloc_32 : memref<1x1xf16>
    } else {
      %263 = vector.shuffle %50, %50 [0, 2] : vector<2x1xf32>, vector<2x1xf32>
      %264 = arith.maxsi %c587105715_i64, %c1687761739_i64 : i64
      %265 = arith.minsi %c587105715_i64, %c587105715_i64 : i64
      %266 = arith.addf %cst, %cst : f16
      %267 = math.rsqrt %cst_3 : f32
      %268 = math.tanh %3 : tensor<1x1xf16>
      %269 = arith.remf %cst_1, %cst_0 : f32
      %270 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %271 = vector.fma %270, %270, %270 : vector<2xf32>
      %alloc_30 = memref.alloc() : memref<1x1xf16>
      scf.yield %alloc_30 : memref<1x1xf16>
    }
    %65 = arith.ceildivsi %c695434013_i32, %c1963615805_i32 : i32
    %66 = scf.index_switch %c15 -> index 
    case 1 {
      %263 = arith.cmpf olt, %cst, %cst : f16
      %264 = math.roundeven %8 : tensor<2x1xf32>
      %265 = vector.splat %c0 : vector<2xindex>
      %266 = math.cos %13 : tensor<2xf16>
      %267 = vector.extract %35[0] : vector<1xi32>
      memref.tensor_store %0, %alloc_14 : memref<1x1xi32>
      %268 = arith.remsi %c1223857795_i64, %c1687761739_i64 : i64
      %269 = vector.broadcast %false : i1 to vector<1x1xi1>
      %270 = memref.realloc %alloc_8 : memref<2xi32> to memref<1xi32>
      %271 = index.divu %c9, %c1
      %272 = index.maxs %c1, %56
      %273 = math.tan %14 : tensor<2xf32>
      %274 = vector.broadcast %c1335620276_i64 : i64 to vector<2xi64>
      %275 = vector.maskedload %alloc[%c0], %46, %274 : memref<2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %collapsed_30 = tensor.collapse_shape %8 [[0, 1]] : tensor<2x1xf32> into tensor<2xf32>
      %276 = vector.shuffle %46, %46 [2, 3] : vector<2xi1>, vector<2xi1>
      %277 = math.roundeven %8 : tensor<2x1xf32>
      scf.yield %56 : index
    }
    default {
      %263 = math.absi %4 : tensor<2xi32>
      %264 = vector.load %alloc_10[%c1] : memref<2xf16>, vector<1x1xf16>
      %265 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      %266 = vector.fma %265, %265, %265 : vector<2xf32>
      %267 = affine.max affine_map<(d0, d1) -> (d0 - 1, (d0 - 1) * 4, (d0 + d1 - 1) ceildiv 16)>(%c15, %47)
      %268 = arith.cmpi eq, %c695434013_i32, %c1963615805_i32 : i32
      %269 = bufferization.clone %alloc_7 : memref<2xf16> to memref<2xf16>
      %270 = affine.load %alloc[%c7] : memref<2xi64>
      %271 = math.tanh %11 : tensor<2xf32>
      %272 = math.copysign %8, %8 : tensor<2x1xf32>
      %273 = affine.apply affine_map<(d0, d1, d2) -> (d0 mod 4)>(%44, %267, %c7)
      %274 = math.tanh %11 : tensor<2xf32>
      %275 = memref.realloc %alloc : memref<2xi64> to memref<8xi64>
      bufferization.dealloc_tensor %collapsed : tensor<2xi16>
      %collapsed_30 = tensor.collapse_shape %6 [[0, 1]] : tensor<2x1xi16> into tensor<2xi16>
      %276 = arith.minui %c1687761739_i64, %270 : i64
      %277 = index.floordivs %57, %c1
      scf.yield %273 : index
    }
    %67 = vector.multi_reduction <add>, %31, %35 [0] : vector<2x1xi32> to vector<1xi32>
    %68 = arith.cmpi slt, %false_2, %false_2 : i1
    %69 = tensor.empty(%c7) : tensor<?xi16>
    %70 = memref.realloc %alloc_7 : memref<2xf16> to memref<8xf16>
    %71 = arith.divui %c12646_i16, %c-25750_i16 : i16
    memref.copy %alloc_10, %alloc_7 : memref<2xf16> to memref<2xf16>
    %72 = math.atan2 %14, %14 : tensor<2xf32>
    %73 = index.mul %c9, %c2
    %74 = arith.addf %cst_1, %cst_0 : f32
    %75 = vector.extract_strided_slice %50 {offsets = [0], sizes = [2], strides = [1]} : vector<2x1xf32> to vector<2x1xf32>
    %76 = math.powf %13, %13 : tensor<2xf16>
    %77 = vector.broadcast %c1223857795_i64 : i64 to vector<15xi64>
    %78 = vector.broadcast %false : i1 to vector<15xi1>
    %79 = vector.maskedload %alloc[%c1], %78, %77 : memref<2xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
    %80 = vector.extract_strided_slice %79 {offsets = [4], sizes = [8], strides = [1]} : vector<15xi64> to vector<8xi64>
    %81 = scf.index_switch %c8 -> f32 
    case 1 {
      %263 = vector.broadcast %false_2 : i1 to vector<8xi1>
      %264 = vector.maskedload %alloc_6[%c1, %c0], %263, %263 : memref<2x1xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
      %265 = bufferization.to_tensor %alloc_9 : memref<1x1xf32>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %266 = vector.transfer_read %12[%c13, %c14], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x1xi64>, vector<15xi64>
      %267 = math.atan2 %13, %from_elements : tensor<2xf16>
      %268 = memref.realloc %alloc_7 : memref<2xf16> to memref<2xf16>
      %269 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      memref.tensor_store %5, %alloc : memref<2xi64>
      %270 = arith.xori %c-25750_i16, %c-25750_i16 : i16
      %271 = affine.max affine_map<(d0, d1) -> (d1 floordiv 32, (d1 - (d0 + d1) - d1) ceildiv 8, -(d1 - (d0 + d1) - d1), d1 * 32)>(%c1, %60)
      memref.tensor_store %17, %alloc_12 : memref<2xi16>
      %272 = bufferization.to_tensor %alloc_14 : memref<1x1xi32>
      %true = index.bool.constant true
      memref.copy %alloc_18, %alloc_4 : memref<1x1xi1> to memref<1x1xi1>
      %273 = vector.insertelement %cst_3, %269[%c9 : index] : vector<2xf32>
      scf.if %true {
        %275 = math.log1p %11 : tensor<2xf32>
        %276 = arith.remui %c1_i64, %c1223857795_i64 : i64
        %277 = vector.reduction <minf>, %269 : vector<2xf32> into f32
        %278 = math.absi %collapsed : tensor<2xi16>
        %alloc_30 = memref.alloc() : memref<2xi32>
        %279 = math.floor %8 : tensor<2x1xf32>
        %280 = index.ceildivu %c14, %c10
        %281 = math.round %11 : tensor<2xf32>
      }
      %274 = math.fpowi %cst_3, %c695434013_i32 : f32, i32
      scf.yield %cst_3 : f32
    }
    case 2 {
      %263 = arith.minui %false_2, %false : i1
      %264 = arith.remf %cst_3, %cst_0 : f32
      %265 = index.floordivs %c2, %c4
      %266 = arith.andi %c29947_i16, %c29947_i16 : i16
      %splat = tensor.splat %false_2 : tensor<2xi1>
      %267 = vector.extract_strided_slice %78 {offsets = [5], sizes = [9], strides = [1]} : vector<15xi1> to vector<9xi1>
      %268 = vector.splat %c8 : vector<2x1xindex>
      %269 = index.sizeof
      %270 = math.cos %from_elements : tensor<2xf16>
      %271 = math.fma %13, %13, %from_elements : tensor<2xf16>
      %272 = memref.realloc %alloc : memref<2xi64> to memref<8xi64>
      %273 = bufferization.to_tensor %alloc_8 : memref<2xi32>
      %274 = arith.ori %c1963615805_i32, %c695434013_i32 : i32
      %275 = math.expm1 %11 : tensor<2xf32>
      memref.assume_alignment %alloc_15, 8 : memref<1x1xf32>
      %276 = math.log2 %from_elements : tensor<2xf16>
      scf.yield %cst_1 : f32
    }
    case 3 {
      %263 = math.fma %11, %14, %14 : tensor<2xf32>
      %264 = math.cos %cst_3 : f32
      scf.index_switch %61 
      case 1 {
        %279 = index.maxu %c10, %63
        %280 = arith.remsi %c695434013_i32, %c1963615805_i32 : i32
        %281 = math.tanh %8 : tensor<2x1xf32>
        %false_30 = index.bool.constant false
        %282 = vector.insertelement %c1905834818_i32, %19[%44 : index] : vector<2xi32>
        %283 = vector.extract_strided_slice %46 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
        %284 = vector.broadcast %c695434013_i32 : i32 to vector<i32>
        %285 = vector.transfer_write %284, %7[%c15] : vector<i32>, tensor<2xi32>
        %286 = vector.broadcast %false : i1 to vector<2xi1>
        %287 = math.copysign %8, %8 : tensor<2x1xf32>
        %collapsed_31 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
        %288 = tensor.empty() : tensor<2xi64>
        %289 = memref.realloc %alloc_12 : memref<2xi16> to memref<15xi16>
        %290 = math.powf %14, %14 : tensor<2xf32>
        %291 = arith.divf %cst, %cst : f16
        %292 = arith.cmpf une, %cst_0, %cst_3 : f32
        %293 = vector.extract_strided_slice %77 {offsets = [0], sizes = [11], strides = [1]} : vector<15xi64> to vector<11xi64>
        scf.yield
      }
      case 2 {
        %from_elements_30 = tensor.from_elements %false_2, %false_2 : tensor<2xi1>
        %279 = vector.broadcast %c-25750_i16 : i16 to vector<2x1xi16>
        %280 = arith.muli %c587105715_i64, %c1687761739_i64 : i64
        %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 16, -(d3 ceildiv 8), -d1, -(d3 ceildiv 8))>(%c7, %63, %61, %c6)
        %282 = arith.xori %c12646_i16, %c-25750_i16 : i16
        %283 = arith.subi %false_2, %false : i1
        %284 = index.mul %c7, %c13
        %285 = index.sub %57, %c4
        %286 = arith.subi %false, %false_2 : i1
        %287 = math.copysign %14, %11 : tensor<2xf32>
        memref.tensor_store %9, %alloc_12 : memref<2xi16>
        %288 = index.castu %false : i1 to index
        %289 = vector.broadcast %c6 : index to vector<1xindex>
        %290 = vector.broadcast %false : i1 to vector<1xi1>
        vector.scatter %alloc_9[%c0, %c0] [%289], %290, %55 : memref<1x1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %291 = math.fpowi %3, %0 : tensor<1x1xf16>, tensor<1x1xi32>
        %292 = vector.create_mask %c7, %c3 : vector<2x1xi1>
        memref.tensor_store %from_elements, %alloc_7 : memref<2xf16>
        scf.yield
      }
      case 3 {
        %279 = math.ctlz %18 : tensor<i64>
        %280 = vector.extract_strided_slice %80 {offsets = [2], sizes = [4], strides = [1]} : vector<8xi64> to vector<4xi64>
        %281 = index.sub %47, %73
        %282 = math.round %14 : tensor<2xf32>
        %283 = math.absf %from_elements : tensor<2xf16>
        %284 = math.rsqrt %11 : tensor<2xf32>
        %285 = arith.shrsi %c12646_i16, %c29947_i16 : i16
        %286 = math.fma %cst, %cst, %cst : f16
        memref.assume_alignment %alloc_17, 1 : memref<2xi1>
        %287 = math.exp2 %cst_0 : f32
        %288 = math.log2 %cst_1 : f32
        %289 = vector.extract %46[0] : vector<2xi1>
        %290 = arith.andi %false, %false_2 : i1
        %291 = index.maxs %c4, %47
        %292 = index.floordivs %c3, %291
        %293 = index.casts %c1335620276_i64 : i64 to index
        scf.yield
      }
      default {
        %279 = index.ceildivu %c9, %c2
        %from_elements_30 = tensor.from_elements %cst_0, %cst_3 : tensor<2xf32>
        %280 = math.fpowi %cst_3, %c695434013_i32 : f32, i32
        %281 = arith.divsi %c695434013_i32, %c1963615805_i32 : i32
        %alloc_31 = memref.alloc() : memref<1x1xi16>
        %282 = vector.broadcast %c-25750_i16 : i16 to vector<2x1xi16>
        %283 = vector.broadcast %false : i1 to vector<2x1xi1>
        %284 = vector.gather %alloc_31[%44, %57] [%31], %283, %282 : memref<1x1xi16>, vector<2x1xi32>, vector<2x1xi1>, vector<2x1xi16> into vector<2x1xi16>
        %285 = math.round %14 : tensor<2xf32>
        %286 = arith.ceildivsi %c1223857795_i64, %c1335620276_i64 : i64
        %287 = arith.subi %c-25750_i16, %c-25750_i16 : i16
        %288 = arith.divsi %c1687761739_i64, %c1223857795_i64 : i64
        %289 = arith.remsi %false, %false_2 : i1
        %cast_32 = tensor.cast %from_elements : tensor<2xf16> to tensor<?xf16>
        %extracted = tensor.extract %15[%c0] : tensor<2xi16>
        %alloc_33 = memref.alloc() : memref<2xf32>
        memref.tensor_store %14, %alloc_33 : memref<2xf32>
        %290 = vector.extract %283[0] : vector<2x1xi1>
        %291 = arith.subi %c-25750_i16, %c12646_i16 : i16
        %292 = arith.subi %c1963615805_i32, %c1963615805_i32 : i32
      }
      %265 = scf.while (%arg0 = %75) : (vector<2x1xf32>) -> vector<2x1xf32> {
        memref.copy %alloc_13, %alloc_8 : memref<2xi32> to memref<2xi32>
        %279 = math.powf %13, %from_elements : tensor<2xf16>
        %280 = index.maxs %c15, %c2
        %281 = math.copysign %3, %3 : tensor<1x1xf16>
        %282 = arith.subi %c1687761739_i64, %c1335620276_i64 : i64
        %283 = index.mul %56, %c3
        %cast_30 = tensor.cast %11 : tensor<2xf32> to tensor<?xf32>
        %284 = math.sqrt %cst_1 : f32
        scf.condition(%false_2) %50 : vector<2x1xf32>
      } do {
      ^bb0(%arg0: vector<2x1xf32>):
        %279 = math.log10 %8 : tensor<2x1xf32>
        %280 = math.fma %3, %3, %3 : tensor<1x1xf16>
        %281 = vector.broadcast %c1905834818_i32 : i32 to vector<8xi32>
        %282 = vector.broadcast %false_2 : i1 to vector<8xi1>
        %283 = vector.maskedload %alloc_19[%c0, %c0], %282, %281 : memref<1x1xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %284 = affine.max affine_map<(d0) -> (d0 * 64)>(%63)
        %285 = vector.splat %c2 : vector<2x1xindex>
        %286 = arith.mulf %cst, %cst : f16
        memref.assume_alignment %alloc, 1 : memref<2xi64>
        %287 = math.sqrt %from_elements : tensor<2xf16>
        %288 = arith.xori %c695434013_i32, %c1963615805_i32 : i32
        %289 = vector.broadcast %cst : f16 to vector<8xf16>
        %290 = vector.maskedload %alloc_10[%c1], %282, %289 : memref<2xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %291 = vector.extract %282[4] : vector<8xi1>
        %292 = index.ceildivu %c9, %44
        %293 = arith.remf %cst, %cst : f16
        %collapsed_30 = tensor.collapse_shape %3 [[0, 1]] : tensor<1x1xf16> into tensor<1xf16>
        %cast_31 = tensor.cast %9 : tensor<2xi16> to tensor<?xi16>
        %294 = math.ctpop %7 : tensor<2xi32>
        scf.yield %50 : vector<2x1xf32>
      }
      %266 = index.maxs %c9, %60
      %267 = math.tan %11 : tensor<2xf32>
      %268 = index.ceildivu %57, %73
      %269 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      %270 = vector.multi_reduction <add>, %75, %269 [1] : vector<2x1xf32> to vector<2xf32>
      %271 = arith.cmpi ult, %false_2, %false : i1
      %272 = vector.insertelement %cst_3, %269[%57 : index] : vector<2xf32>
      %273 = math.powf %cst_3, %cst_3 : f32
      %274 = arith.remsi %c1223857795_i64, %c1335620276_i64 : i64
      %275 = vector.broadcast %false_2 : i1 to vector<2xi1>
      %276 = vector.reduction <maxsi>, %19 : vector<2xi32> into i32
      %277 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
      %278 = math.log2 %cst_3 : f32
      scf.yield %cst_0 : f32
    }
    case 4 {
      %263 = arith.ceildivsi %false, %false_2 : i1
      %264 = affine.min affine_map<(d0) -> (d0 * 128, d0 * 128, d0 + 2)>(%73)
      %265 = affine.if affine_set<(d0, d1, d2) : (d2 * -128 - 128 >= 0)>(%c10, %c11, %c10) -> memref<2xi64> {
        memref.store %false_2, %alloc_18[%c0, %c0] : memref<1x1xi1>
        %277 = bufferization.to_memref %1 : memref<1x1xi32>
        %278 = index.casts %c12646_i16 : i16 to index
        %279 = math.exp2 %cst : f16
        %280 = arith.mulf %cst, %cst : f16
        %281 = arith.mulf %cst_3, %cst_1 : f32
        %282 = bufferization.to_tensor %alloc_16 : memref<2x1xi1>
        %283 = math.log1p %from_elements : tensor<2xf16>
        affine.yield %alloc : memref<2xi64>
      } else {
        %277 = math.rsqrt %14 : tensor<2xf32>
        %278 = affine.min affine_map<(d0, d1, d2) -> (d1, -(d2 floordiv 128), d1 * -32, -(d2 floordiv 128) - d1)>(%c13, %c10, %c7)
        %279 = arith.xori %c1905834818_i32, %c1963615805_i32 : i32
        %280 = vector.extract_strided_slice %50 {offsets = [0], sizes = [2], strides = [1]} : vector<2x1xf32> to vector<2x1xf32>
        %281 = vector.broadcast %cst : f16 to vector<15xf16>
        %282 = vector.maskedload %alloc_7[%c1], %78, %281 : memref<2xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %283 = memref.realloc %alloc_8 : memref<2xi32> to memref<1xi32>
        %284 = arith.shrsi %false, %false_2 : i1
        %285 = arith.minsi %c-25750_i16, %c29947_i16 : i16
        affine.yield %alloc : memref<2xi64>
      }
      %266 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 128) * 16, d3 * 64, d0 + d2 - d0 + d0)>(%73, %c15, %c8, %56)
      bufferization.dealloc_tensor %17 : tensor<2xi16>
      %267 = arith.maxf %cst, %cst : f16
      %268 = arith.ori %c1223857795_i64, %c1223857795_i64 : i64
      %269 = scf.while (%arg0 = %false) : (i1) -> i1 {
        %277 = arith.ceildivsi %c695434013_i32, %c1905834818_i32 : i32
        %278 = vector.extract %77[3] : vector<15xi64>
        %279 = vector.extract %50[0] : vector<2x1xf32>
        %280 = arith.andi %c1963615805_i32, %c695434013_i32 : i32
        %281 = index.castu %c1 : index to i32
        %282 = index.floordivs %c2, %47
        %283 = vector.reduction <mul>, %55 : vector<1xf32> into f32
        %from_elements_32 = tensor.from_elements %c29947_i16, %c-25750_i16 : tensor<2xi16>
        scf.condition(%false) %arg0 : i1
      } do {
      ^bb0(%arg0: i1):
        %277 = vector.extract %79[1] : vector<15xi64>
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d1 mod 32), d2 floordiv 32)>(%c14, %c13, %c14, %c2)
        %279 = vector.splat %c587105715_i64 : vector<2x1xi64>
        %280 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 128 - (d1 mod 128 + d2))>(%c12, %266, %c10)
        %281 = arith.andi %c1963615805_i32, %c1963615805_i32 : i32
        %282 = index.floordivs %c0, %c4
        %283 = arith.andi %c-25750_i16, %c-25750_i16 : i16
        %true = index.bool.constant true
        %284 = arith.muli %c1963615805_i32, %c1905834818_i32 : i32
        %285 = memref.realloc %alloc : memref<2xi64> to memref<8xi64>
        %286 = arith.divf %cst_1, %cst_0 : f32
        %splat = tensor.splat %true : tensor<2xi1>
        %287 = index.castu %c6 : index to i32
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 32, d0 ceildiv 128 - 56, -d3)>(%c2, %c12, %73, %56)
        %289 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 + d3) * 64)>(%c5, %288, %278, %c5)
        %290 = arith.divsi %c587105715_i64, %c1335620276_i64 : i64
        scf.yield %true : i1
      }
      %270 = vector.shuffle %35, %35 [1] : vector<1xi32>, vector<1xi32>
      %271 = index.sub %c2, %73
      %collapsed_30 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
      %272 = math.tanh %from_elements : tensor<2xf16>
      %cast_31 = tensor.cast %16 : tensor<2xi16> to tensor<?xi16>
      %273 = arith.remf %cst_1, %cst_0 : f32
      %274 = vector.broadcast %cst : f16 to vector<15xf16>
      %275 = vector.maskedload %alloc_7[%c1], %78, %274 : memref<2xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
      %276 = vector.multi_reduction <maxsi>, %35, %c695434013_i32 [0] : vector<1xi32> to i32
      scf.yield %cst_3 : f32
    }
    default {
      %263 = arith.cmpi sge, %c1905834818_i32, %c1963615805_i32 : i32
      %264 = index.sub %c4, %63
      %265 = vector.shuffle %80, %79 [0, 1, 3, 4, 7, 8, 10, 13, 14, 21, 22] : vector<8xi64>, vector<15xi64>
      %266 = tensor.empty(%c7) : tensor<?xi32>
      %267 = arith.shli %c1223857795_i64, %c1335620276_i64 : i64
      %268 = affine.max affine_map<(d0) -> (d0)>(%c9)
      %269 = vector.multi_reduction <maxui>, %77, %c587105715_i64 [0] : vector<15xi64> to i64
      %270 = arith.shli %false_2, %false : i1
      scf.execute_region {
        %277 = math.tanh %11 : tensor<2xf32>
        %278 = arith.minsi %269, %c1335620276_i64 : i64
        %279 = vector.insert %false, %78 [10] : i1 into vector<15xi1>
        %280 = arith.remf %cst_3, %cst_1 : f32
        %281 = math.fpowi %3, %0 : tensor<1x1xf16>, tensor<1x1xi32>
        %282 = math.round %14 : tensor<2xf32>
        %283 = index.maxu %c0, %73
        %284 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi32> to vector<2xi32>
        %285 = affine.max affine_map<(d0, d1) -> ((d1 mod 64 - 128) ceildiv 16, -((d1 mod 64) floordiv 8 - 12), d0 ceildiv 4)>(%c2, %c0)
        %alloca_31 = memref.alloca() : memref<2x1xf32>
        %286 = math.ipowi %12, %10 : tensor<1x1xi64>
        %cst_32 = arith.constant 1.000000e+00 : f32
        %287 = vector.transfer_read %8[%63, %61], %cst_32 : tensor<2x1xf32>, vector<f32>
        %288 = math.exp %11 : tensor<2xf32>
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + d0, d3 + (d1 * 2) floordiv 128, d1 + d0)>(%c2, %47, %c11, %73)
        memref.tensor_store %7, %alloc_8 : memref<2xi32>
        %290 = index.floordivs %c3, %c15
        scf.yield
      }
      %271 = math.copysign %cst_0, %cst_0 : f32
      %272 = math.round %11 : tensor<2xf32>
      %273 = index.maxs %73, %c4
      %274 = index.sub %273, %47
      %275 = vector.multi_reduction <maxui>, %19, %c695434013_i32 [0] : vector<2xi32> to i32
      %alloc_30 = memref.alloc() : memref<1x1xi64>
      memref.tensor_store %10, %alloc_30 : memref<1x1xi64>
      %276 = arith.muli %false_2, %false : i1
      scf.yield %cst_0 : f32
    }
    %82 = math.cttz %c587105715_i64 : i64
    %83 = vector.broadcast %cst : f16 to vector<2xf16>
    scf.if %false {
      %collapsed_30 = tensor.collapse_shape %8 [[0, 1]] : tensor<2x1xf32> into tensor<2xf32>
      %263 = index.maxu %47, %c11
      %264 = vector.insertelement %cst_0, %55[%47 : index] : vector<1xf32>
      %c190632855_i64 = arith.constant 190632855 : i64
      %inserted_31 = tensor.insert %cst into %13[%c1] : tensor<2xf16>
      %265 = index.castu %c587105715_i64 : i64 to index
      %266 = arith.mulf %cst_1, %cst_1 : f32
      %267 = vector.extract_strided_slice %77 {offsets = [5], sizes = [1], strides = [1]} : vector<15xi64> to vector<1xi64>
    } else {
      %263 = affine.for %arg0 = 0 to 53 iter_args(%arg1 = %reduced) -> (tensor<i64>) {
        affine.yield %arg1 : tensor<i64>
      }
      %264 = tensor.empty() : tensor<8x8x8xi32>
      %265 = tensor.empty() : tensor<8xi32>
      %alloc_30 = memref.alloc() : memref<8x8xi32>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %alloc_30, %265 : tensor<8xi32>, memref<8x8xi32>, tensor<8xi32>) outs(%264 : tensor<8x8x8xi32>) {
      ^bb0(%in: i32, %in_32: i32, %in_33: i32, %out: i32):
        %272 = arith.minf %cst_3, %cst_1 : f32
        %273 = arith.maxui %c-25750_i16, %c12646_i16 : i16
        %274 = arith.minf %cst_0, %cst_3 : f32
        %collapsed_34 = tensor.collapse_shape %0 [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
        %275 = index.divs %c11, %60
        %276 = arith.remf %cst_3, %cst_1 : f32
        %277 = math.ipowi %c1335620276_i64, %c587105715_i64 : i64
        %278 = arith.divf %cst_1, %cst_1 : f32
        %279 = arith.minui %c-25750_i16, %c-25750_i16 : i16
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d0 * 64)>(%c12, %44, %c15, %c1)
        %cast_35 = tensor.cast %3 : tensor<1x1xf16> to tensor<?x?xf16>
        %281 = arith.muli %in_32, %in_32 : i32
        %282 = tensor.empty() : tensor<2x1xi32>
        %283 = vector.broadcast %in : i32 to vector<1x1xi32>
        %284 = vector.broadcast %false_2 : i1 to vector<1x1xi1>
        %285 = vector.gather %282[%c7, %c0] [%283], %284, %283 : tensor<2x1xi32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi32> into vector<1x1xi32>
        %286 = math.round %cst_1 : f32
        %287 = math.log1p %14 : tensor<2xf32>
        %288 = math.cos %cst_0 : f32
        %289 = arith.remsi %false, %false_2 : i1
        %290 = math.ctpop %6 : tensor<2x1xi16>
        %false_36 = index.bool.constant false
        %291 = bufferization.to_tensor %alloc_5 : memref<2x1xf32>
        %292 = math.expm1 %11 : tensor<2xf32>
        %293 = vector.extract_strided_slice %79 {offsets = [12], sizes = [3], strides = [1]} : vector<15xi64> to vector<3xi64>
        %294 = math.log2 %from_elements : tensor<2xf16>
        %295 = vector.extract_strided_slice %46 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
        %296 = affine.min affine_map<(d0, d1, d2) -> ((-d0) ceildiv 2 + 32)>(%c15, %c2, %c5)
        %297 = math.atan2 %8, %8 : tensor<2x1xf32>
        %298 = index.floordivs %296, %61
        %299 = math.log2 %11 : tensor<2xf32>
        %300 = affine.min affine_map<(d0, d1) -> ((-d1) mod 16, d1 * -2, (-d1) mod 16)>(%56, %c9)
        %301 = index.sizeof
        %rank_37 = tensor.rank %7 : tensor<2xi32>
        %302 = vector.reduction <maxui>, %78 : vector<15xi1> into i1
        linalg.yield %in_32 : i32
      } -> tensor<8x8x8xi32>
      %267 = arith.divf %cst_0, %cst_3 : f32
      %268 = index.maxs %c13, %c5
      %269 = bufferization.to_memref %9 : memref<2xi16>
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d0 * -3) mod 32 - d0 * 2, ((-d0) floordiv 128) floordiv 4)>(%c12, %c4, %c13, %61)
      %271 = arith.remui %c1223857795_i64, %c1687761739_i64 : i64
      %cst_31 = arith.constant 0x4DF6CFBA : f32
    }
    %84 = vector.create_mask %c2, %56 : vector<2x1xi1>
    memref.store %cst, %alloc_11[%c0, %c0] : memref<2x1xf16>
    %85 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %77, %77, %c1335620276_i64 : vector<15xi64>, vector<15xi64> into i64
    %86 = arith.remf %cst_3, %cst_1 : f32
    %87 = vector.broadcast %false_2 : i1 to vector<1xi1>
    %88 = vector.maskedload %alloc_16[%c0, %c0], %87, %87 : memref<2x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %89 = math.roundeven %from_elements : tensor<2xf16>
    %90 = arith.minf %cst_3, %cst_3 : f32
    %91 = index.casts %c2 : index to i32
    %92 = vector.splat %c1223857795_i64 : vector<2xi64>
    %93 = vector.matrix_multiply %55, %55 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %94 = arith.cmpf ogt, %cst_1, %cst_1 : f32
    %95 = arith.remsi %false, %false_2 : i1
    %96 = bufferization.to_tensor %alloc_12 : memref<2xi16>
    %97 = affine.max affine_map<(d0) -> (d0 + 32)>(%c13)
    %98 = math.floor %3 : tensor<1x1xf16>
    %99 = math.log1p %3 : tensor<1x1xf16>
    %100 = index.casts %c4 : index to i32
    %101 = arith.divsi %c-25750_i16, %c-25750_i16 : i16
    %102 = vector.reduction <mul>, %93 : vector<1xf32> into f32
    %103 = arith.remui %c1963615805_i32, %c695434013_i32 : i32
    %104 = math.fma %11, %14, %14 : tensor<2xf32>
    %c681211873_i64 = arith.constant 681211873 : i64
    %105 = vector.multi_reduction <or>, %84, %88 [0] : vector<2x1xi1> to vector<1xi1>
    %106 = math.absi %collapsed : tensor<2xi16>
    %107 = index.sub %47, %c6
    %108 = vector.maskedload %alloc_16[%c0, %c0], %46, %46 : memref<2x1xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
    %109 = arith.divui %c695434013_i32, %c695434013_i32 : i32
    %110 = arith.muli %c-25750_i16, %c29947_i16 : i16
    %111 = arith.ori %c1687761739_i64, %c1687761739_i64 : i64
    %112 = math.absi %c695434013_i32 : i32
    %113 = math.tanh %13 : tensor<2xf16>
    %114 = vector.extract %87[0] : vector<1xi1>
    %false_20 = index.bool.constant false
    %115 = vector.create_mask %c4, %107 : vector<2x1xi1>
    %116 = index.sizeof
    %117 = vector.broadcast %false : i1 to vector<2xi1>
    vector.transfer_write %117, %alloc_4[%c2, %107] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi1>, memref<1x1xi1>
    %118 = math.fma %3, %3, %3 : tensor<1x1xf16>
    %119 = memref.realloc %alloc_10 : memref<2xf16> to memref<1xf16>
    %120 = scf.while (%arg0 = %83) : (vector<2xf16>) -> vector<2xf16> {
      %alloca_30 = memref.alloca() : memref<2xf32>
      %263 = arith.remui %false, %false_2 : i1
      %264 = arith.mulf %cst, %cst : f16
      %265 = arith.addf %cst_1, %cst_3 : f32
      %266 = arith.remui %c-25750_i16, %c12646_i16 : i16
      %267 = vector.broadcast %107 : index to vector<1xindex>
      %268 = vector.broadcast %c1335620276_i64 : i64 to vector<1xi64>
      vector.scatter %alloc[%c0] [%267], %88, %268 : memref<2xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %269 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %270 = vector.fma %269, %269, %269 : vector<1x1xf32>
      %alloc_31 = memref.alloc() : memref<1x1xi64>
      %271 = vector.broadcast %c1223857795_i64 : i64 to vector<2xi64>
      %272 = vector.gather %alloc_31[%61, %61] [%19], %108, %271 : memref<1x1xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      scf.condition(%false) %83 : vector<2xf16>
    } do {
    ^bb0(%arg0: vector<2xf16>):
      %263 = math.fma %11, %14, %14 : tensor<2xf32>
      %264 = arith.minf %cst_3, %cst_3 : f32
      %265 = index.maxu %116, %c14
      %266 = math.atan2 %cst_0, %cst_3 : f32
      %267 = arith.divf %cst_1, %cst_3 : f32
      %268 = vector.broadcast %false : i1 to vector<2xi1>
      %269 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      %270 = vector.fma %269, %269, %269 : vector<2xf32>
      %271 = arith.muli %c-25750_i16, %c29947_i16 : i16
      %272 = math.powf %3, %3 : tensor<1x1xf16>
      %273 = vector.reduction <mul>, %108 : vector<2xi1> into i1
      %274 = arith.remui %c587105715_i64, %c1687761739_i64 : i64
      %true = index.bool.constant true
      %275 = math.log1p %cst_3 : f32
      %276 = vector.broadcast %c1223857795_i64 : i64 to vector<2x1xi64>
      %277 = vector.gather %12[%60, %44] [%31], %115, %276 : tensor<1x1xi64>, vector<2x1xi32>, vector<2x1xi1>, vector<2x1xi64> into vector<2x1xi64>
      %278 = arith.minf %cst_1, %cst_0 : f32
      %279 = affine.for %arg1 = 0 to 126 iter_args(%arg2 = %11) -> (tensor<2xf32>) {
        affine.yield %arg2 : tensor<2xf32>
      }
      scf.yield %83 : vector<2xf16>
    }
    %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
    %121 = math.log1p %3 : tensor<1x1xf16>
    %122 = vector.broadcast %cst : f16 to vector<1xf16>
    %123 = vector.maskedload %alloc_11[%c1, %c0], %88, %122 : memref<2x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %124 = arith.minf %cst, %cst : f16
    scf.if %false_2 {
      %263 = vector.extract_strided_slice %46 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
      %from_elements_30 = tensor.from_elements %cst, %cst : tensor<2xf16>
      %264 = affine.apply affine_map<(d0, d1) -> (d1 * 16)>(%c15, %c6)
      %265 = math.cos %cst : f16
      %extracted = tensor.extract %11[%c0] : tensor<2xf32>
      %266 = vector.splat %264 : vector<1x1xindex>
      %267 = tensor.empty() : tensor<2xi32>
      %268 = vector.broadcast %c12646_i16 : i16 to vector<i16>
      %269 = vector.transfer_write %268, %15[%47] : vector<i16>, tensor<2xi16>
    }
    %125 = vector.insertelement %false, %88[%47 : index] : vector<1xi1>
    %126 = vector.extract %55[0] : vector<1xf32>
    %127 = math.round %cst_1 : f32
    %128 = arith.minf %cst_3, %cst_3 : f32
    %129 = vector.broadcast %c-25750_i16 : i16 to vector<2x1xi16>
    %130 = math.exp2 %from_elements : tensor<2xf16>
    %131 = vector.splat %c12646_i16 : vector<2x1xi16>
    %132 = index.sizeof
    %133 = arith.negf %cst_1 : f32
    %134 = arith.remf %cst_3, %cst_1 : f32
    %135 = arith.minf %cst, %cst : f16
    %136 = arith.shrsi %false_20, %false : i1
    %137 = math.roundeven %cst_0 : f32
    %138 = math.tanh %13 : tensor<2xf16>
    %139 = vector.multi_reduction <minui>, %46, %false [0] : vector<2xi1> to i1
    %140 = vector.extract_strided_slice %46 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
    %141 = math.atan2 %14, %11 : tensor<2xf32>
    %142 = index.casts %c12646_i16 : i16 to index
    %143 = vector.insert %false, %88 [0] : i1 into vector<1xi1>
    %144 = index.divu %c7, %57
    %145 = math.atan2 %3, %3 : tensor<1x1xf16>
    %cast = tensor.cast %15 : tensor<2xi16> to tensor<?xi16>
    %146 = affine.min affine_map<(d0) -> ((d0 * 3 + d0 * 2 + 4) * 2, d0, d0 * 2 + 4)>(%c13)
    %147 = index.ceildivu %146, %c11
    %148 = arith.muli %c1687761739_i64, %c587105715_i64 : i64
    %149 = affine.load %alloc_13[%c9] : memref<2xi32>
    %150 = tensor.empty(%44) : tensor<2x?xi1>
    %151 = index.casts %c12 : index to i32
    %152 = index.castu %c3 : index to i32
    %153 = vector.broadcast %cst_0 : f32 to vector<2xf32>
    %154 = vector.fma %153, %153, %153 : vector<2xf32>
    %155 = arith.minf %cst_1, %cst_0 : f32
    %156 = arith.muli %c1687761739_i64, %c1223857795_i64 : i64
    %157 = tensor.empty() : tensor<2x1xi16>
    %mapped = linalg.map ins(%6 : tensor<2x1xi16>) outs(%157 : tensor<2x1xi16>)
      (%in: i16) {
        %263 = math.round %11 : tensor<2xf32>
        %264 = index.castu %57 : index to i32
        %265 = math.round %14 : tensor<2xf32>
        %266 = arith.remui %c695434013_i32, %c1963615805_i32 : i32
        %267 = math.rsqrt %14 : tensor<2xf32>
        %268 = math.powf %8, %8 : tensor<2x1xf32>
        %269 = arith.addf %cst_0, %cst_3 : f32
        %270 = math.powf %cst_1, %cst_3 : f32
        %271 = arith.muli %c1905834818_i32, %c1905834818_i32 : i32
        %272 = arith.remf %cst_1, %cst_1 : f32
        %273 = math.atan2 %3, %3 : tensor<1x1xf16>
        %274 = vector.broadcast %cst : f16 to vector<15xf16>
        %275 = vector.maskedload %alloc_11[%c0, %c0], %78, %274 : memref<2x1xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %276 = math.log1p %8 : tensor<2x1xf32>
        %277 = vector.load %alloc_12[%c0] : memref<2xi16>, vector<1x1xi16>
        bufferization.dealloc_tensor %12 : tensor<1x1xi64>
        %278 = arith.shli %c1223857795_i64, %c587105715_i64 : i64
        %279 = math.absi %c1223857795_i64 : i64
        vector.print %88 : vector<1xi1>
        %280 = index.maxu %c10, %61
        %281 = memref.realloc %alloc_8 : memref<2xi32> to memref<2xi32>
        %282 = math.floor %8 : tensor<2x1xf32>
        %from_elements_30 = tensor.from_elements %cst_1, %cst_3 : tensor<2xf32>
        memref.store %cst, %alloc_7[%c1] : memref<2xf16>
        memref.assume_alignment %alloc_10, 8 : memref<2xf16>
        %283 = index.floordivs %146, %c9
        %284 = math.floor %11 : tensor<2xf32>
        %alloca_31 = memref.alloca() : memref<2x1xi32>
        %285 = arith.remui %false_20, %false : i1
        %286 = index.mul %c5, %c15
        memref.assume_alignment %alloc_11, 8 : memref<2x1xf16>
        %287 = arith.remsi %c1687761739_i64, %c587105715_i64 : i64
        %288 = index.maxu %73, %c12
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %158 = math.round %3 : tensor<1x1xf16>
    %159 = vector.broadcast %cst_1 : f32 to vector<8xf32>
    %160 = vector.broadcast %false_20 : i1 to vector<8xi1>
    %161 = vector.maskedload %alloc_5[%c0, %c0], %160, %159 : memref<2x1xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
    %162 = index.sub %c4, %132
    %163 = memref.load %alloc_9[%c0, %c0] : memref<1x1xf32>
    bufferization.dealloc_tensor %13 : tensor<2xf16>
    %164 = vector.matrix_multiply %35, %35 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %165 = index.maxu %56, %47
    %166 = arith.maxsi %c1963615805_i32, %c1905834818_i32 : i32
    scf.execute_region {
      %false_30 = index.bool.constant false
      %263 = math.atan2 %11, %11 : tensor<2xf32>
      %264 = scf.while (%arg0 = %108) : (vector<2xi1>) -> vector<2xi1> {
        %274 = arith.subi %149, %149 : i32
        %275 = math.ceil %from_elements : tensor<2xf16>
        %276 = math.round %8 : tensor<2x1xf32>
        %277 = vector.splat %107 : vector<1x1xindex>
        %278 = math.exp %13 : tensor<2xf16>
        %279 = vector.broadcast %c-25750_i16 : i16 to vector<1x1xi16>
        %280 = index.sizeof
        %281 = arith.shli %c695434013_i32, %149 : i32
        scf.condition(%139) %46 : vector<2xi1>
      } do {
      ^bb0(%arg0: vector<2xi1>):
        %274 = vector.extract_strided_slice %123 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %275 = arith.andi %c29947_i16, %c29947_i16 : i16
        %276 = math.atan %8 : tensor<2x1xf32>
        %277 = arith.subi %false_30, %false : i1
        %278 = index.casts %c1223857795_i64 : i64 to index
        %279 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %280 = vector.fma %279, %279, %153 : vector<2xf32>
        %281 = math.fpowi %14, %4 : tensor<2xf32>, tensor<2xi32>
        %282 = vector.splat %c1963615805_i32 : vector<1x1xi32>
        %283 = vector.extract %108[0] : vector<2xi1>
        %284 = vector.broadcast %cst : f16 to vector<1x1xf16>
        %285 = vector.splat %false_2 : vector<2xi1>
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%c14, %107, %142, %c5)
        %287 = arith.andi %c-25750_i16, %c-25750_i16 : i16
        %288 = vector.insert %55, %75 [0] : vector<1xf32> into vector<2x1xf32>
        %from_elements_32 = tensor.from_elements %c695434013_i32, %c695434013_i32 : tensor<2xi32>
        %289 = math.sqrt %cst_1 : f32
        scf.yield %108 : vector<2xi1>
      }
      %265 = index.casts %c587105715_i64 : i64 to index
      %266 = index.mul %144, %97
      %267 = bufferization.to_tensor %alloc_6 : memref<2x1xi1>
      %268 = vector.extract %164[0] : vector<1xi32>
      scf.index_switch %c14 
      case 1 {
        %274 = arith.shrsi %c695434013_i32, %c1905834818_i32 : i32
        %275 = arith.mulf %cst_1, %cst_1 : f32
        %276 = arith.andi %c695434013_i32, %c695434013_i32 : i32
        %277 = arith.cmpf true, %cst, %cst : f16
        %278 = vector.insert %c1223857795_i64, %79 [1] : i64 into vector<15xi64>
        %279 = math.roundeven %14 : tensor<2xf32>
        memref.assume_alignment %alloc_18, 2 : memref<1x1xi1>
        %280 = arith.divsi %false_30, %139 : i1
        %281 = arith.addf %cst_0, %cst_3 : f32
        %282 = index.casts %c8 : index to i32
        %283 = index.castu %266 : index to i32
        %284 = arith.maxui %139, %false : i1
        %285 = index.divs %56, %63
        %286 = math.roundeven %14 : tensor<2xf32>
        %287 = index.mul %56, %44
        %alloc_32 = memref.alloc() : memref<2x1xi16>
        scf.yield
      }
      case 2 {
        %274 = arith.subi %139, %139 : i1
        %275 = tensor.empty(%c9) : tensor<?xi32>
        %276 = tensor.empty(%116) : tensor<?xi16>
        %277 = math.expm1 %8 : tensor<2x1xf32>
        %278 = affine.min affine_map<(d0, d1, d2) -> (d1 * 2, d1, d1, d1 - d0)>(%97, %c14, %132)
        %279 = arith.remsi %false_20, %false_30 : i1
        %280 = affine.load %alloc_18[%c3, %c14] : memref<1x1xi1>
        %281 = arith.mulf %cst_0, %cst_0 : f32
        %282 = arith.maxf %cst, %cst : f16
        %283 = arith.remf %cst_3, %cst_3 : f32
        %284 = math.fma %11, %11, %11 : tensor<2xf32>
        %285 = arith.minsi %c1905834818_i32, %c1963615805_i32 : i32
        %286 = vector.maskedload %alloc_4[%c0, %c0], %87, %88 : memref<1x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %287 = bufferization.to_tensor %alloc_6 : memref<2x1xi1>
        %288 = arith.ceildivsi %c-25750_i16, %c29947_i16 : i16
        %alloc_32 = memref.alloc() : memref<2xf32>
        %289 = vector.gather %alloc_32[%63] [%19], %46, %153 : memref<2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        scf.yield
      }
      case 3 {
        %274 = math.ctpop %17 : tensor<2xi16>
        %275 = affine.apply affine_map<(d0, d1) -> (d1)>(%c9, %47)
        %276 = index.sizeof
        %277 = arith.xori %c1687761739_i64, %c587105715_i64 : i64
        %278 = vector.extract %87[0] : vector<1xi1>
        %279 = arith.andi %false_2, %139 : i1
        %280 = tensor.empty() : tensor<1x1x1xi32>
        %281 = math.fpowi %expanded, %280 : tensor<1x1x1xf16>, tensor<1x1x1xi32>
        %282 = arith.mulf %cst_3, %cst_3 : f32
        %283 = bufferization.to_tensor %alloc_6 : memref<2x1xi1>
        %284 = math.fpowi %3, %1 : tensor<1x1xf16>, tensor<1x1xi32>
        %285 = arith.subi %c-25750_i16, %c-25750_i16 : i16
        %286 = vector.create_mask %44, %c10 : vector<2x1xi1>
        %287 = math.log2 %13 : tensor<2xf16>
        memref.copy %alloc_9, %alloc_15 : memref<1x1xf32> to memref<1x1xf32>
        %cast_32 = tensor.cast %2 : tensor<2xi64> to tensor<?xi64>
        %288 = index.casts %c9 : index to i32
        scf.yield
      }
      default {
        %274 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %275 = vector.fma %274, %153, %153 : vector<2xf32>
        bufferization.dealloc_tensor %9 : tensor<2xi16>
        %276 = vector.splat %c14 : vector<2x1xindex>
        %277 = index.maxu %c14, %144
        %278 = math.fma %cst, %cst, %cst : f16
        %rank_32 = tensor.rank %5 : tensor<2xi64>
        %279 = vector.maskedload %alloc_17[%c0], %78, %78 : memref<2xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %rank_33 = tensor.rank %12 : tensor<1x1xi64>
        %280 = index.divs %c2, %132
        %281 = vector.broadcast %c7 : index to vector<15xindex>
        %282 = vector.broadcast %149 : i32 to vector<15xi32>
        vector.scatter %alloc_8[%c0] [%281], %279, %282 : memref<2xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %283 = math.copysign %8, %8 : tensor<2x1xf32>
        %284 = vector.extract %78[8] : vector<15xi1>
        %285 = math.powf %from_elements, %from_elements : tensor<2xf16>
        vector.print %88 : vector<1xi1>
        %286 = arith.remf %cst_0, %cst_0 : f32
        %287 = arith.minf %cst, %cst : f16
      }
      %269 = arith.remf %cst, %cst : f16
      %cst_31 = arith.constant 1.000000e+00 : f16
      %270 = vector.transfer_read %13[%57], %cst_31 : tensor<2xf16>, vector<f16>
      %271 = index.sub %c15, %162
      %272 = math.tan %cst_0 : f32
      vector.print %161 : vector<8xf32>
      %273 = arith.subi %c695434013_i32, %149 : i32
      memref.tensor_store %4, %alloc_8 : memref<2xi32>
      scf.if %139 {
        %274 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 16)>(%56, %c2, %56, %c15)
        %275 = math.absi %0 : tensor<1x1xi32>
        %276 = arith.remsi %c1335620276_i64, %c587105715_i64 : i64
        %277 = index.ceildivu %73, %c9
        %278 = vector.broadcast %cst : f16 to vector<f16>
        %279 = vector.transfer_write %278, %3[%c5, %274] : vector<f16>, tensor<1x1xf16>
        %280 = math.exp %3 : tensor<1x1xf16>
        %281 = math.round %11 : tensor<2xf32>
        %282 = arith.negf %cst_31 : f16
      }
      scf.yield
    }
    %167 = math.log2 %from_elements : tensor<2xf16>
    %168 = arith.andi %c1687761739_i64, %c587105715_i64 : i64
    %169 = arith.divsi %c1905834818_i32, %c695434013_i32 : i32
    %170 = arith.minsi %c1687761739_i64, %c1223857795_i64 : i64
    %from_elements_21 = tensor.from_elements %c1335620276_i64, %c1223857795_i64 : tensor<2xi64>
    %171 = arith.remui %c-25750_i16, %c29947_i16 : i16
    memref.assume_alignment %alloc_16, 8 : memref<2x1xi1>
    %172 = vector.broadcast %cst_3 : f32 to vector<2x1xf32>
    %173 = vector.fma %172, %172, %50 : vector<2x1xf32>
    %174 = arith.xori %c-25750_i16, %c-25750_i16 : i16
    %175 = memref.realloc %alloc_17 : memref<2xi1> to memref<8xi1>
    %176 = tensor.empty() : tensor<2xf16>
    %mapped_22 = linalg.map ins(%alloc_10 : memref<2xf16>) outs(%176 : tensor<2xf16>)
      (%in: f16) {
        %263 = index.maxs %c11, %61
        %264 = math.fma %13, %13, %from_elements : tensor<2xf16>
        %265 = arith.minsi %139, %false_20 : i1
        %266 = math.tanh %14 : tensor<2xf32>
        affine.for %arg0 = 0 to 12 {
        }
        %cast_30 = tensor.cast %13 : tensor<2xf16> to tensor<?xf16>
        %267 = math.roundeven %cst_0 : f32
        %268 = arith.subi %false, %false_2 : i1
        %269 = index.maxu %107, %c12
        %270 = bufferization.to_tensor %alloc : memref<2xi64>
        %271 = bufferization.to_tensor %alloc_11 : memref<2x1xf16>
        bufferization.dealloc_tensor %from_elements : tensor<2xf16>
        %272 = math.absi %5 : tensor<2xi64>
        %273 = tensor.empty() : tensor<1x1xf16>
        %274 = linalg.matmul ins(%3, %3 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%273 : tensor<1x1xf16>) -> tensor<1x1xf16>
        scf.execute_region {
          %290 = bufferization.to_tensor %alloc : memref<2xi64>
          %291 = vector.broadcast %cst_3 : f32 to vector<f32>
          %292 = vector.transfer_write %291, %11[%c10] : vector<f32>, tensor<2xf32>
          %293 = vector.reduction <minsi>, %88 : vector<1xi1> into i1
          %294 = vector.reduction <maxsi>, %88 : vector<1xi1> into i1
          %295 = math.fpowi %13, %4 : tensor<2xf16>, tensor<2xi32>
          %296 = arith.remui %false, %false_20 : i1
          %297 = arith.remsi %139, %139 : i1
          %298 = arith.cmpi ult, %c1335620276_i64, %c1223857795_i64 : i64
          %299 = math.cos %3 : tensor<1x1xf16>
          %300 = index.maxs %162, %97
          %301 = vector.broadcast %cst_1 : f32 to vector<2x1xf32>
          %302 = vector.fma %301, %301, %301 : vector<2x1xf32>
          %303 = index.casts %147 : index to i32
          %304 = arith.remf %in, %cst : f16
          %305 = arith.ceildivsi %c29947_i16, %c12646_i16 : i16
          %306 = vector.extract_strided_slice %93 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %307 = tensor.empty() : tensor<2xi64>
          scf.yield
        }
        %275 = math.log1p %in : f16
        %276 = arith.xori %false, %false_20 : i1
        %277 = tensor.empty() : tensor<1xf16>
        %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277, %expanded : tensor<1xf16>, tensor<1x1x1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
        ^bb0(%in_34: f16, %in_35: f16, %out: f16):
          %290 = arith.remf %in, %cst : f16
          %alloca_36 = memref.alloca() : memref<2xi1>
          %collapsed_37 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
          vector.print %115 : vector<2x1xi1>
          %291 = math.round %273 : tensor<1x1xf16>
          %292 = arith.shrui %c29947_i16, %c29947_i16 : i16
          %293 = vector.multi_reduction <minui>, %108, %46 [] : vector<2xi1> to vector<2xi1>
          %294 = vector.extract_strided_slice %35 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %295 = vector.gather %alloc_18[%97, %c14] [%31], %84, %115 : memref<1x1xi1>, vector<2x1xi32>, vector<2x1xi1>, vector<2x1xi1> into vector<2x1xi1>
          %296 = vector.maskedload %alloc_9[%c0, %c0], %117, %154 : memref<1x1xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %collapsed_38 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<1x1x1xf16> into tensor<1x1xf16>
          %297 = vector.matrix_multiply %55, %55 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %298 = math.cos %cst_3 : f32
          %299 = arith.xori %false_2, %false_20 : i1
          %300 = arith.minsi %false_2, %false_20 : i1
          %301 = math.fma %8, %8, %8 : tensor<2x1xf32>
          %302 = index.maxs %63, %c13
          %303 = tensor.empty(%c12, %c5) : tensor<?x?xi1>
          %304 = math.exp %collapsed_38 : tensor<1x1xf16>
          %305 = arith.remf %cst_1, %cst_3 : f32
          %306 = vector.create_mask %97 : vector<2xi1>
          %307 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 128)>(%c7, %269, %107)
          %308 = arith.cmpi ult, %c12646_i16, %c12646_i16 : i16
          %309 = math.fma %in, %in_35, %out : f16
          %310 = arith.shli %false_2, %false_20 : i1
          %311 = affine.apply affine_map<(d0, d1) -> (d1 * 16)>(%c6, %c3)
          %from_elements_39 = tensor.from_elements %cst_1, %cst_0 : tensor<2x1xf32>
          %312 = memref.atomic_rmw mulf %cst_0, %alloc_5[%c0, %c0] : (f32, memref<2x1xf32>) -> f32
          %313 = math.ctpop %c1223857795_i64 : i64
          memref.tensor_store %7, %alloc_8 : memref<2xi32>
          %314 = index.sub %60, %147
          %315 = arith.addf %out, %out : f16
          linalg.yield %in : f16
        } -> tensor<1x1x1xf16>
        %true = index.bool.constant true
        %279 = vector.gather %0[%c2, %44] [%19], %46, %19 : tensor<1x1xi32>, vector<2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %280 = math.exp2 %cst_3 : f32
        %281 = index.ceildivu %165, %63
        %from_elements_31 = tensor.from_elements %139 : tensor<1x1xi1>
        %282 = arith.mulf %in, %in : f16
        %283 = index.sizeof
        %284 = bufferization.to_tensor %alloc_5 : memref<2x1xf32>
        %alloc_32 = memref.alloc() : memref<i64>
        memref.tensor_store %21, %alloc_32 : memref<i64>
        %285 = vector.extract_strided_slice %160 {offsets = [0], sizes = [6], strides = [1]} : vector<8xi1> to vector<6xi1>
        %286 = arith.minsi %c29947_i16, %c12646_i16 : i16
        %287 = vector.broadcast %c29947_i16 : i16 to vector<2x1xi16>
        %288 = tensor.empty() : tensor<2xi32>
        %289 = arith.andi %c1687761739_i64, %c1223857795_i64 : i64
        %cst_33 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_33 : f16
      }
    %177 = math.fma %13, %13, %from_elements : tensor<2xf16>
    %178 = vector.extract_strided_slice %78 {offsets = [0], sizes = [13], strides = [1]} : vector<15xi1> to vector<13xi1>
    %179 = math.fma %cst_1, %cst_3, %cst_3 : f32
    %180 = vector.broadcast %139 : i1 to vector<2xi1>
    %181 = index.ceildivu %c1, %44
    %182 = math.log1p %14 : tensor<2xf32>
    %183 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<1x1x1xf16>) {
    ^bb0(%out: f16):
      %263 = bufferization.to_tensor %alloc_8 : memref<2xi32>
      %264 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 128 - d1, 0)>(%56, %c15, %181, %107)
      %265 = vector.multi_reduction <add>, %46, %139 [0] : vector<2xi1> to i1
      %266 = arith.remsi %139, %false_20 : i1
      %267 = math.copysign %176, %13 : tensor<2xf16>
      %268 = math.atan2 %cst, %cst : f16
      %269 = math.log2 %8 : tensor<2x1xf32>
      %270 = scf.if %false_20 -> (memref<2xi16>) {
        %292 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %293 = memref.realloc %alloc_12 : memref<2xi16> to memref<2xi16>
        %294 = index.sizeof
        %295 = index.casts %c1687761739_i64 : i64 to index
        memref.assume_alignment %alloc_6, 2 : memref<2x1xi1>
        bufferization.dealloc_tensor %2 : tensor<2xi64>
        %296 = arith.divsi %false_2, %265 : i1
        %297 = arith.mulf %cst_3, %cst_1 : f32
        scf.yield %alloc_12 : memref<2xi16>
      } else {
        %292 = arith.remui %c1687761739_i64, %c1687761739_i64 : i64
        %293 = math.round %11 : tensor<2xf32>
        %294 = index.sizeof
        %295 = arith.divsi %false_20, %false : i1
        %296 = arith.subi %c29947_i16, %c29947_i16 : i16
        %297 = vector.gather %7[%c9] [%31], %115, %31 : tensor<2xi32>, vector<2x1xi32>, vector<2x1xi1>, vector<2x1xi32> into vector<2x1xi32>
        bufferization.dealloc_tensor %6 : tensor<2x1xi16>
        %298 = math.round %11 : tensor<2xf32>
        scf.yield %alloc_12 : memref<2xi16>
      }
      %271 = math.tanh %out : f16
      bufferization.dealloc_tensor %13 : tensor<2xf16>
      %272 = bufferization.to_tensor %alloc_4 : memref<1x1xi1>
      %273 = vector.extract %140[0] : vector<1xi1>
      %274 = arith.cmpi ult, %c12646_i16, %c-25750_i16 : i16
      %275 = math.round %out : f16
      %276 = index.ceildivu %c7, %c12
      %277 = vector.shuffle %178, %78 [2, 5, 6, 7, 10, 12, 13, 18, 19, 20, 22, 23, 25, 27] : vector<13xi1>, vector<15xi1>
      %278 = index.divu %144, %165
      %279 = scf.while (%arg0 = %93) : (vector<1xf32>) -> vector<1xf32> {
        %292 = index.castu %c1963615805_i32 : i32 to index
        memref.copy %alloc_12, %270 : memref<2xi16> to memref<2xi16>
        %293 = arith.remui %c12646_i16, %c-25750_i16 : i16
        %294 = arith.muli %265, %false_20 : i1
        %295 = index.casts %c587105715_i64 : i64 to index
        %from_elements_32 = tensor.from_elements %cst_0 : tensor<1x1xf32>
        %296 = arith.addf %cst, %cst : f16
        %from_elements_33 = tensor.from_elements %out, %cst : tensor<2x1xf16>
        scf.condition(%false) %93 : vector<1xf32>
      } do {
      ^bb0(%arg0: vector<1xf32>):
        %292 = arith.shrsi %c1687761739_i64, %c587105715_i64 : i64
        %293 = arith.andi %false_20, %139 : i1
        %294 = vector.maskedload %alloc_17[%c1], %78, %78 : memref<2xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %295 = memref.atomic_rmw mulf %cst_1, %alloc_15[%c0, %c0] : (f32, memref<1x1xf32>) -> f32
        %296 = math.exp %8 : tensor<2x1xf32>
        %297 = vector.broadcast %c12646_i16 : i16 to vector<1x1xi16>
        %298 = math.tanh %3 : tensor<1x1xf16>
        %299 = arith.divsi %265, %false_2 : i1
        %300 = math.atan %cst_3 : f32
        memref.copy %alloc_10, %alloc_7 : memref<2xf16> to memref<2xf16>
        %301 = arith.divf %cst_1, %cst_3 : f32
        %302 = arith.shli %c1223857795_i64, %c1335620276_i64 : i64
        %collapsed_32 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
        %from_elements_33 = tensor.from_elements %c1335620276_i64 : tensor<1x1xi64>
        %303 = arith.remf %cst, %cst : f16
        %304 = memref.atomic_rmw muli %c1963615805_i32, %alloc_14[%c0, %c0] : (i32, memref<1x1xi32>) -> i32
        scf.yield %93 : vector<1xf32>
      }
      %280 = arith.muli %false_20, %false_20 : i1
      %281 = math.atan %11 : tensor<2xf32>
      %282 = arith.subi %false_2, %false : i1
      %collapsed_30 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
      %283 = arith.remf %cst, %out : f16
      %284 = arith.andi %c587105715_i64, %c1335620276_i64 : i64
      %285 = memref.realloc %alloc_13 : memref<2xi32> to memref<15xi32>
      %286 = arith.divsi %false_2, %false : i1
      %287 = arith.maxsi %149, %149 : i32
      %288 = math.roundeven %cst_0 : f32
      %289 = index.floordivs %63, %c15
      %290 = math.tanh %from_elements : tensor<2xf16>
      %false_31 = index.bool.constant false
      %291 = vector.reduction <or>, %78 : vector<15xi1> into i1
      linalg.yield %cst : f16
    } -> tensor<1x1x1xf16>
    %184 = vector.maskedload %alloc_18[%c0, %c0], %140, %140 : memref<1x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %185 = arith.remf %cst_0, %cst_1 : f32
    vector.print %46 : vector<2xi1>
    %186 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %187 = math.fma %cst_3, %cst_3, %cst_3 : f32
    %188 = vector.insert %false_2, %160 [4] : i1 into vector<8xi1>
    %189 = bufferization.to_memref %from_elements_21 : memref<2xi64>
    %190 = arith.subi %false_2, %false_2 : i1
    %191 = arith.remui %c587105715_i64, %c1335620276_i64 : i64
    %192 = math.floor %14 : tensor<2xf32>
    %193 = math.log2 %3 : tensor<1x1xf16>
    %194 = affine.if affine_set<(d0) : ((d0 floordiv 2) ceildiv 2 == 0, -(d0 floordiv 2) + 28 >= 0, (d0 floordiv 2) ceildiv 64 == 0, d0 floordiv 2 == 0)>(%c5) -> memref<2x1xi16> {
      %263 = arith.muli %false_20, %false_20 : i1
      %264 = affine.max affine_map<(d0, d1) -> (d0 floordiv 4, d1 mod 4, (d1 mod 4 + d0 floordiv 4) * 32)>(%63, %c14)
      %265 = index.sub %c7, %147
      %true = index.bool.constant true
      %266 = vector.insertelement %false_20, %108[%47 : index] : vector<2xi1>
      %267 = arith.cmpf uge, %cst_1, %cst_0 : f32
      %268 = memref.realloc %alloc_7 : memref<2xf16> to memref<1xf16>
      %from_elements_30 = tensor.from_elements %139, %false_2 : tensor<2xi1>
      %alloc_31 = memref.alloc() : memref<2x1xi16>
      affine.yield %alloc_31 : memref<2x1xi16>
    } else {
      %263 = math.exp %14 : tensor<2xf32>
      %264 = memref.realloc %alloc_13 : memref<2xi32> to memref<1xi32>
      %265 = index.sizeof
      memref.tensor_store %0, %alloc_14 : memref<1x1xi32>
      %266 = arith.cmpi sle, %139, %139 : i1
      %267 = index.sub %44, %144
      %268 = index.maxu %44, %73
      %269 = arith.shrsi %false, %false_2 : i1
      %alloc_30 = memref.alloc() : memref<2x1xi16>
      affine.yield %alloc_30 : memref<2x1xi16>
    }
    %195 = vector.splat %false_2 : vector<2x1xi1>
    %196 = math.powf %14, %14 : tensor<2xf32>
    %197 = arith.xori %c1905834818_i32, %149 : i32
    %198 = index.floordivs %c15, %146
    %c1596460846_i32 = arith.constant 1596460846 : i32
    %199 = vector.insert %c587105715_i64, %79 [7] : i64 into vector<15xi64>
    %200 = arith.maxf %cst_3, %cst_3 : f32
    %201 = arith.minf %cst_0, %cst_3 : f32
    %202 = math.sqrt %cst : f16
    bufferization.dealloc_tensor %11 : tensor<2xf32>
    %cast_23 = tensor.cast %16 : tensor<2xi16> to tensor<?xi16>
    %from_elements_24 = tensor.from_elements %c1223857795_i64 : tensor<1x1xi64>
    %203 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 1, d1)>(%44, %56, %c14, %c1)
    %204 = affine.min affine_map<(d0) -> (d0 * 2, d0 + 8)>(%c4)
    %rank = tensor.rank %2 : tensor<2xi64>
    %alloc_25 = memref.alloc() : memref<2xf32>
    memref.tensor_store %14, %alloc_25 : memref<2xf32>
    bufferization.dealloc_tensor %4 : tensor<2xi32>
    %205 = math.exp2 %3 : tensor<1x1xf16>
    %206 = affine.max affine_map<(d0, d1, d2) -> (d2 * 2 - 10, ((d2 * 32) mod 128) ceildiv 32, (d2 * 32) mod 128, d2 * 2)>(%c9, %c1, %c5)
    %207 = index.divu %c11, %c1
    %208 = math.round %cst_0 : f32
    %209 = index.mul %107, %56
    %c1290322439_i64 = arith.constant 1290322439 : i64
    %210 = math.log2 %14 : tensor<2xf32>
    %211 = math.round %11 : tensor<2xf32>
    %212 = index.casts %false_20 : i1 to index
    %213 = vector.broadcast %165 : index to vector<8xindex>
    %214 = vector.broadcast %c695434013_i32 : i32 to vector<8xi32>
    vector.scatter %alloc_19[%c0, %c0] [%213], %160, %214 : memref<1x1xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
    %215 = math.floor %8 : tensor<2x1xf32>
    %216 = arith.divsi %c695434013_i32, %c1963615805_i32 : i32
    %from_elements_26 = tensor.from_elements %c12646_i16, %c29947_i16 : tensor<2xi16>
    %217 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c0, %c3, %181)
    %218 = arith.xori %149, %c1963615805_i32 : i32
    %219 = arith.cmpi ule, %c587105715_i64, %c587105715_i64 : i64
    %220 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %159, %159, %cst_3 : vector<8xf32>, vector<8xf32> into f32
    %221 = arith.maxsi %c1335620276_i64, %c587105715_i64 : i64
    %222 = arith.remsi %c1687761739_i64, %c1687761739_i64 : i64
    %223 = arith.maxsi %c1335620276_i64, %c1335620276_i64 : i64
    %224 = arith.muli %false, %false : i1
    %225 = affine.load %alloc_5[%c15, %c1] : memref<2x1xf32>
    %226 = math.expm1 %cst_1 : f32
    memref.tensor_store %from_elements_21, %alloc : memref<2xi64>
    %alloc_27 = memref.alloc() : memref<2x1xf32>
    memref.copy %alloc_5, %alloc_27 : memref<2x1xf32> to memref<2x1xf32>
    %227 = arith.minui %c1905834818_i32, %149 : i32
    %228 = math.roundeven %3 : tensor<1x1xf16>
    %229 = vector.load %alloc_16[%c0, %c0] : memref<2x1xi1>, vector<1x1xi1>
    %230 = math.sqrt %225 : f32
    %231 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 16)>(%c12, %c13, %209, %c0)
    %232 = index.maxu %44, %61
    bufferization.dealloc_tensor %from_elements : tensor<2xf16>
    %233 = arith.minsi %false, %false : i1
    %inserted = tensor.insert %cst into %expanded[%c0, %c0, %c0] : tensor<1x1x1xf16>
    %234 = vector.extract_strided_slice %172 {offsets = [0], sizes = [1], strides = [1]} : vector<2x1xf32> to vector<1x1xf32>
    %235 = math.cos %176 : tensor<2xf16>
    %236 = math.cos %8 : tensor<2x1xf32>
    %237 = math.ctlz %c1963615805_i32 : i32
    %238 = index.sub %c5, %c1
    %239 = arith.remsi %c1687761739_i64, %c1335620276_i64 : i64
    %240 = arith.negf %cst_0 : f32
    %241 = math.atan %225 : f32
    %242 = math.fma %8, %8, %8 : tensor<2x1xf32>
    %243 = vector.shuffle %178, %140 [4, 7, 8, 9, 12, 13] : vector<13xi1>, vector<1xi1>
    %244 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %108, %46, %139 : vector<2xi1>, vector<2xi1> into i1
    %245 = arith.negf %225 : f32
    %246 = math.ctpop %7 : tensor<2xi32>
    %247 = math.log %cst : f16
    %248 = scf.if %false -> (memref<1x1xf16>) {
      %263 = memref.atomic_rmw mulf %cst, %alloc_7[%c1] : (f16, memref<2xf16>) -> f16
      %264 = tensor.empty() : tensor<1xf16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3, %264, %264 : tensor<1x1xf16>, tensor<1xf16>, tensor<1xf16>) outs(%expanded : tensor<1x1x1xf16>) {
      ^bb0(%in: f16, %in_30: f16, %in_31: f16, %out: f16):
        %274 = math.sqrt %14 : tensor<2xf32>
        %275 = bufferization.to_tensor %alloc_17 : memref<2xi1>
        %276 = arith.remf %in_30, %cst : f16
        %277 = vector.splat %c1963615805_i32 : vector<2xi32>
        %278 = arith.maxui %149, %c695434013_i32 : i32
        %alloc_32 = memref.alloc() : memref<1x1xf16>
        memref.copy %64, %alloc_32 : memref<1x1xf16> to memref<1x1xf16>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %173, %186, %50 : vector<2x1xf32>, vector<1x1xf32> into vector<2x1xf32>
        %280 = arith.muli %false_2, %false_20 : i1
        %281 = vector.broadcast %225 : f32 to vector<2xf32>
        %282 = vector.fma %281, %281, %154 : vector<2xf32>
        %283 = math.log %in_31 : f16
        %284 = arith.remf %in_31, %in_30 : f16
        %285 = memref.realloc %alloc_8 : memref<2xi32> to memref<8xi32>
        %286 = arith.remsi %false, %false_20 : i1
        %287 = arith.andi %false_2, %139 : i1
        %288 = arith.minsi %false_2, %false_2 : i1
        %289 = math.fma %cst_0, %225, %cst_0 : f32
        %290 = math.rsqrt %in_30 : f16
        %collapsed_33 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
        %291 = index.sub %c14, %rank
        %292 = vector.matrix_multiply %154, %161 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xf32>, vector<8xf32>) -> vector<4xf32>
        %293 = vector.insert %55, %234 [0] : vector<1xf32> into vector<1x1xf32>
        %294 = arith.subi %c1905834818_i32, %c1905834818_i32 : i32
        %295 = vector.extract_strided_slice %79 {offsets = [12], sizes = [1], strides = [1]} : vector<15xi64> to vector<1xi64>
        %296 = arith.divsi %c587105715_i64, %c1223857795_i64 : i64
        %297 = arith.divui %139, %false_2 : i1
        %298 = arith.cmpi uge, %c1687761739_i64, %c587105715_i64 : i64
        %299 = math.absi %10 : tensor<1x1xi64>
        %300 = index.sub %207, %c6
        %301 = arith.divsi %149, %c1905834818_i32 : i32
        %false_34 = index.bool.constant false
        %302 = vector.multi_reduction <maxf>, %50, %93 [0] : vector<2x1xf32> to vector<1xf32>
        %303 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%60, %162, %97)
        linalg.yield %cst : f16
      } -> tensor<1x1x1xf16>
      %266 = arith.andi %c-25750_i16, %c12646_i16 : i16
      %267 = arith.shli %false, %139 : i1
      %268 = vector.extract %19[0] : vector<2xi32>
      %269 = vector.insert %55, %234 [0] : vector<1xf32> into vector<1x1xf32>
      %270 = math.round %14 : tensor<2xf32>
      %271 = tensor.empty() : tensor<2x1xi1>
      %272 = vector.broadcast %149 : i32 to vector<1x1xi32>
      %273 = vector.gather %271[%212, %c14] [%272], %229, %229 : tensor<2x1xi1>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
      scf.yield %64 : memref<1x1xf16>
    } else {
      %263 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 mod 2, d0 * 8, d0, d3 ceildiv 64 + 128)>(%132, %198, %209, %c1)
      affine.store %c587105715_i64, %alloc[%c10] : memref<2xi64>
      %264 = vector.broadcast %231 : index to vector<15xindex>
      %265 = vector.broadcast %cst : f16 to vector<15xf16>
      vector.scatter %alloc_10[%c1] [%264], %78, %265 : memref<2xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %266 = index.floordivs %73, %107
      %267 = arith.maxsi %false, %false_2 : i1
      %268 = math.copysign %cst_3, %cst_0 : f32
      %269 = index.mul %132, %c5
      %270 = index.sub %c14, %269
      scf.yield %64 : memref<1x1xf16>
    }
    %249 = affine.max affine_map<(d0) -> (-4, -4, 0, 0)>(%c4)
    %250 = arith.andi %c587105715_i64, %c587105715_i64 : i64
    %alloca_28 = memref.alloca() : memref<2xi16>
    %251 = vector.gather %15[%231] [%31], %115, %129 : tensor<2xi16>, vector<2x1xi32>, vector<2x1xi1>, vector<2x1xi16> into vector<2x1xi16>
    %252 = vector.broadcast %c29947_i16 : i16 to vector<2x1xi16>
    %253 = index.floordivs %57, %73
    %254 = arith.divui %c1963615805_i32, %c1905834818_i32 : i32
    %255 = math.fpowi %14, %7 : tensor<2xf32>, tensor<2xi32>
    %256 = arith.shli %c1963615805_i32, %c1905834818_i32 : i32
    %257 = vector.reduction <xor>, %46 : vector<2xi1> into i1
    %258 = tensor.empty(%142) : tensor<?xi16>
    %259 = linalg.copy ins(%cast : tensor<?xi16>) outs(%258 : tensor<?xi16>) -> tensor<?xi16>
    %260 = tensor.empty() : tensor<2xi16>
    %transposed = linalg.transpose ins(%16 : tensor<2xi16>) outs(%260 : tensor<2xi16>) permutation = [0] 
    %alloc_29 = memref.alloc() : memref<i64>
    linalg.reduce ins(%alloc : memref<2xi64>) outs(%alloc_29 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %263 = vector.broadcast %cst_1 : f32 to vector<2x1xf32>
        %264 = vector.fma %263, %172, %173 : vector<2x1xf32>
        %265 = math.rsqrt %8 : tensor<2x1xf32>
        vector.print %263 : vector<2x1xf32>
        %266 = math.fma %14, %14, %11 : tensor<2xf32>
        %267 = affine.apply affine_map<(d0) -> (d0)>(%73)
        %cst_30 = arith.constant 1.91710938E+9 : f32
        %268 = vector.insert %93, %75 [0] : vector<1xf32> into vector<2x1xf32>
        %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<1x1x1xf16>) {
        ^bb0(%out: f16):
          %270 = tensor.empty() : tensor<2xi1>
          %271 = vector.broadcast %149 : i32 to vector<1x1xi32>
          %272 = vector.gather %270[%c6] [%271], %229, %229 : tensor<2xi1>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
          %273 = index.maxs %57, %217
          %274 = affine.load %alloc_10[%c7] : memref<2xf16>
          %275 = arith.maxf %cst, %274 : f16
          %276 = arith.maxsi %c1963615805_i32, %149 : i32
          %277 = index.maxu %c1, %73
          memref.assume_alignment %64, 1 : memref<1x1xf16>
          %278 = arith.subi %c587105715_i64, %c1335620276_i64 : i64
          %279 = math.exp2 %11 : tensor<2xf32>
          %280 = arith.divsi %c587105715_i64, %c587105715_i64 : i64
          %281 = affine.apply affine_map<(d0, d1, d2) -> ((d2 ceildiv 8) floordiv 8 - 2)>(%203, %204, %209)
          %282 = math.sqrt %cst_3 : f32
          %283 = arith.andi %c1687761739_i64, %in : i64
          %284 = math.absf %13 : tensor<2xf16>
          %285 = math.powf %225, %225 : f32
          %286 = vector.broadcast %165 : index to vector<15xindex>
          %287 = vector.broadcast %out : f16 to vector<15xf16>
          vector.scatter %alloc_11[%c1, %c0] [%286], %78, %287 : memref<2x1xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
          %288 = affine.apply affine_map<(d0, d1) -> (d1)>(%c13, %73)
          %289 = math.log2 %8 : tensor<2x1xf32>
          %290 = vector.insert %55, %264 [0] : vector<1xf32> into vector<2x1xf32>
          memref.tensor_store %270, %alloc_17 : memref<2xi1>
          %291 = vector.insert %cst_0, %154 [0] : f32 into vector<2xf32>
          %292 = tensor.empty() : tensor<2xi16>
          %293 = arith.addf %cst_3, %cst_0 : f32
          %294 = arith.remf %225, %225 : f32
          %295 = index.mul %57, %232
          %296 = arith.minsi %c587105715_i64, %c587105715_i64 : i64
          %297 = vector.broadcast %274 : f16 to vector<15xf16>
          %298 = vector.maskedload %248[%c0, %c0], %78, %297 : memref<1x1xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
          %299 = math.absf %8 : tensor<2x1xf32>
          %300 = bufferization.to_tensor %alloc_18 : memref<1x1xi1>
          %301 = index.sizeof
          %c24041_i16 = arith.constant 24041 : i16
          %302 = memref.realloc %alloc_13 : memref<2xi32> to memref<2xi32>
          linalg.yield %274 : f16
        } -> tensor<1x1x1xf16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %261 = scf.parallel (%arg0) = (%253) to (%rank) step (%c5) init (%93) -> vector<1xf32> {
      %263 = arith.addf %cst_1, %225 : f32
      %264 = index.ceildivu %147, %165
      %265 = arith.muli %c695434013_i32, %149 : i32
      memref.assume_alignment %alloc_11, 2 : memref<2x1xf16>
      %266 = math.absf %expanded : tensor<1x1x1xf16>
      %267 = vector.broadcast %c1687761739_i64 : i64 to vector<i64>
      vector.transfer_write %267, %alloc[%203] : vector<i64>, memref<2xi64>
      %268 = math.tan %14 : tensor<2xf32>
      %269 = index.maxs %217, %107
      %270 = arith.ceildivsi %c1687761739_i64, %c587105715_i64 : i64
      %from_elements_30 = tensor.from_elements %cst_1 : tensor<1x1xf32>
      %271 = arith.divf %cst_0, %cst_1 : f32
      %272 = math.floor %3 : tensor<1x1xf16>
      %273 = arith.maxsi %c1335620276_i64, %c1223857795_i64 : i64
      %274 = math.round %3 : tensor<1x1xf16>
      %275 = math.log2 %11 : tensor<2xf32>
      %276 = math.floor %cst_3 : f32
      %277 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      scf.reduce(%277)  : vector<1xf32> {
      ^bb0(%arg1: vector<1xf32>, %arg2: vector<1xf32>):
        %278 = math.atan %13 : tensor<2xf16>
        %279 = arith.andi %false_20, %false_2 : i1
        %280 = vector.multi_reduction <maxui>, %180, %117 [] : vector<2xi1> to vector<2xi1>
        %281 = arith.maxui %false_2, %139 : i1
        %282 = arith.divf %cst_3, %cst_3 : f32
        %cast_31 = tensor.cast %0 : tensor<1x1xi32> to tensor<?x?xi32>
        %283 = arith.muli %c1963615805_i32, %c695434013_i32 : i32
        %cst_32 = arith.constant 2.320000e+04 : f16
        %284 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        scf.reduce.return %284 : vector<1xf32>
      }
      scf.yield
    }
    %262 = affine.vector_load %248[%209, %198] : memref<1x1xf16>, vector<1xf16>
    affine.vector_store %140, %alloc_18[%c0, %c3] : memref<1x1xi1>, vector<1xi1>
    vector.print %19 : vector<2xi32>
    vector.print %31 : vector<2x1xi32>
    vector.print %35 : vector<1xi32>
    vector.print %46 : vector<2xi1>
    vector.print %50 : vector<2x1xf32>
    vector.print %55 : vector<1xf32>
    vector.print %75 : vector<2x1xf32>
    vector.print %77 : vector<15xi64>
    vector.print %78 : vector<15xi1>
    vector.print %79 : vector<15xi64>
    vector.print %80 : vector<8xi64>
    vector.print %83 : vector<2xf16>
    vector.print %84 : vector<2x1xi1>
    vector.print %87 : vector<1xi1>
    vector.print %88 : vector<1xi1>
    vector.print %93 : vector<1xf32>
    vector.print %108 : vector<2xi1>
    vector.print %115 : vector<2x1xi1>
    vector.print %117 : vector<2xi1>
    vector.print %122 : vector<1xf16>
    vector.print %123 : vector<1xf16>
    vector.print %129 : vector<2x1xi16>
    vector.print %140 : vector<1xi1>
    vector.print %153 : vector<2xf32>
    vector.print %154 : vector<2xf32>
    vector.print %159 : vector<8xf32>
    vector.print %160 : vector<8xi1>
    vector.print %161 : vector<8xf32>
    vector.print %164 : vector<1xi32>
    vector.print %172 : vector<2x1xf32>
    vector.print %173 : vector<2x1xf32>
    vector.print %178 : vector<13xi1>
    vector.print %180 : vector<2xi1>
    vector.print %184 : vector<1xi1>
    vector.print %186 : vector<1x1xf32>
    vector.print %229 : vector<1x1xi1>
    vector.print %234 : vector<1x1xf32>
    vector.print %251 : vector<2x1xi16>
    vector.print %252 : vector<2x1xi16>
    vector.print %262 : vector<1xf16>
    vector.print %c1223857795_i64 : i64
    vector.print %cst : f16
    vector.print %c587105715_i64 : i64
    vector.print %c-25750_i16 : i16
    vector.print %c1687761739_i64 : i64
    vector.print %c1905834818_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c1335620276_i64 : i64
    vector.print %c29947_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c1963615805_i32 : i32
    vector.print %c12646_i16 : i16
    vector.print %c695434013_i32 : i32
    vector.print %false : i1
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %false_20 : i1
    vector.print %139 : i1
    vector.print %149 : i32
    vector.print %225 : f32
    return %117 : vector<2xi1>
  }
}
