module {
  func.func @func1(%arg0: i64) {
    %true = arith.constant true
    %c-424_i16 = arith.constant -424 : i16
    %c-5339_i16 = arith.constant -5339 : i16
    %c2006163504_i64 = arith.constant 2006163504 : i64
    %cst = arith.constant 6.648000e+03 : f16
    %c17954_i16 = arith.constant 17954 : i16
    %c400634096_i64 = arith.constant 400634096 : i64
    %true_0 = arith.constant true
    %c12152_i16 = arith.constant 12152 : i16
    %false = arith.constant false
    %false_1 = arith.constant false
    %c1463441060_i32 = arith.constant 1463441060 : i32
    %cst_2 = arith.constant 1.18194227E+9 : f32
    %cst_3 = arith.constant 1.060000e+04 : f16
    %cst_4 = arith.constant 0x4E0889BF : f32
    %c27473_i16 = arith.constant 27473 : i16
    %0 = tensor.empty() : tensor<7xi32>
    %1 = tensor.empty() : tensor<6x7x6xf32>
    %2 = tensor.empty() : tensor<6xi16>
    %3 = tensor.empty() : tensor<6xf32>
    %4 = tensor.empty() : tensor<6xi1>
    %5 = tensor.empty() : tensor<6xf16>
    %6 = tensor.empty() : tensor<6xf32>
    %7 = tensor.empty() : tensor<6xi64>
    %8 = tensor.empty() : tensor<6xf16>
    %9 = tensor.empty() : tensor<6x7x6xi64>
    %10 = tensor.empty() : tensor<6xi64>
    %11 = tensor.empty() : tensor<6x7x6xi16>
    %12 = tensor.empty() : tensor<7xi1>
    %13 = tensor.empty() : tensor<6x7x6xi64>
    %14 = tensor.empty() : tensor<7xi16>
    %15 = tensor.empty() : tensor<6xi64>
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
    %alloc = memref.alloc() : memref<7xi32>
    %alloc_5 = memref.alloc() : memref<7xi32>
    %alloc_6 = memref.alloc() : memref<6x7x6xf32>
    %alloc_7 = memref.alloc() : memref<6x7x6xi32>
    %alloc_8 = memref.alloc() : memref<7xi32>
    %alloc_9 = memref.alloc() : memref<6x7x6xi64>
    %alloc_10 = memref.alloc() : memref<7xi32>
    %alloc_11 = memref.alloc() : memref<6xi16>
    %alloc_12 = memref.alloc() : memref<6xi16>
    %alloc_13 = memref.alloc() : memref<7xi32>
    %alloc_14 = memref.alloc() : memref<6x7x6xf32>
    %alloc_15 = memref.alloc() : memref<6xi1>
    %alloc_16 = memref.alloc() : memref<6x7x6xi64>
    %alloc_17 = memref.alloc() : memref<7xf32>
    %alloc_18 = memref.alloc() : memref<7xi16>
    %alloc_19 = memref.alloc() : memref<6x7x6xi64>
    %16 = tensor.empty() : tensor<6xi64>
    %17 = linalg.copy ins(%10 : tensor<6xi64>) outs(%16 : tensor<6xi64>) -> tensor<6xi64>
    %alloc_20 = memref.alloc() : memref<6xi1>
    linalg.transpose ins(%4 : tensor<6xi1>) outs(%alloc_20 : memref<6xi1>) permutation = [0] 
    %18 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%2 : tensor<6xi16>) outs(%18 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %from_elements_51 = tensor.from_elements %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2 : tensor<6x7x6xf32>
        %254 = vector.broadcast %cst_2 : f32 to vector<f32>
        %255 = vector.transfer_write %254, %3[%c8] : vector<f32>, tensor<6xf32>
        %256 = index.floordivs %c12, %c0
        %257 = arith.remsi %c-5339_i16, %c-424_i16 : i16
        affine.for %arg1 = 0 to 27 {
        }
        %258 = arith.shrsi %init, %init : i16
        memref.assume_alignment %alloc, 8 : memref<7xi32>
        %259 = arith.minsi %false, %false : i1
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c6, %c7) to (%c7, %c15) step (%c8, %c13) init (%14) -> tensor<7xi16> {
      %254 = affine.if affine_set<(d0, d1, d2, d3) : (0 >= 0, d3 == 0)>(%c15, %c0, %c0, %c8) -> i64 {
        %272 = vector.broadcast %c-5339_i16 : i16 to vector<6xi16>
        %273 = vector.broadcast %c-424_i16 : i16 to vector<6x6xi16>
        %274 = vector.outerproduct %272, %272, %273 {kind = #vector.kind<minsi>} : vector<6xi16>, vector<6xi16>
        %275 = tensor.empty() : tensor<6xi16>
        memref.assume_alignment %alloc_11, 4 : memref<6xi16>
        %276 = memref.load %alloc_20[%c0] : memref<6xi1>
        %277 = vector.broadcast %c27473_i16 : i16 to vector<1xi16>
        %278 = vector.insert %c17954_i16, %277 [0] : i16 into vector<1xi16>
        %279 = index.floordivs %c7, %arg2
        %280 = math.fma %3, %3, %6 : tensor<6xf32>
        %rank_51 = tensor.rank %3 : tensor<6xf32>
        affine.yield %c400634096_i64 : i64
      } else {
        %alloc_51 = memref.alloc() : memref<6x7x6xi16>
        %272 = vector.broadcast %false : i1 to vector<i1>
        %273 = vector.insertelement %false, %272[] : vector<i1>
        %274 = vector.broadcast %true_0 : i1 to vector<7xi1>
        %275 = vector.reduction <mul>, %274 : vector<7xi1> into i1
        %276 = arith.remf %cst_4, %cst_4 : f32
        %277 = vector.broadcast %c12152_i16 : i16 to vector<5xi16>
        %278 = vector.broadcast %c-5339_i16 : i16 to vector<5x5xi16>
        %279 = vector.outerproduct %277, %277, %278 {kind = #vector.kind<and>} : vector<5xi16>, vector<5xi16>
        %280 = arith.cmpf oeq, %cst_3, %cst : f16
        memref.store %cst_2, %alloc_17[%c1] : memref<7xf32>
        %281 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        %282 = vector.insert %cst_2, %281 [0] : f32 into vector<1xf32>
        affine.yield %c400634096_i64 : i64
      }
      memref.copy %alloc_12, %alloc_11 : memref<6xi16> to memref<6xi16>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15, %7 : tensor<6xi64>, tensor<6xi64>) outs(%13 : tensor<6x7x6xi64>) {
      ^bb0(%in: i64, %in_51: i64, %out: i64):
        %272 = math.round %cst : f16
        %273 = memref.atomic_rmw andi %in_51, %alloc_9[%c5, %c4, %c5] : (i64, memref<6x7x6xi64>) -> i64
        %274 = arith.remsi %c1463441060_i32, %c1463441060_i32 : i32
        %275 = math.fpowi %cst, %c1463441060_i32 : f16, i32
        %alloc_52 = memref.alloc() : memref<7xf32>
        memref.copy %alloc_17, %alloc_52 : memref<7xf32> to memref<7xf32>
        %276 = math.atan %cst_2 : f32
        %expanded_53 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<6x7x6xi16> into tensor<6x7x6x1xi16>
        %277 = vector.broadcast %cst_4 : f32 to vector<6x7x6xf32>
        %278 = vector.broadcast %cst_2 : f32 to vector<6xf32>
        %279 = vector.fma %278, %278, %278 : vector<6xf32>
        %280 = arith.remf %cst, %cst : f16
        %281 = vector.broadcast %c27473_i16 : i16 to vector<5xi16>
        %282 = vector.broadcast %true_0 : i1 to vector<5xi1>
        %283 = vector.maskedload %alloc_12[%c5], %282, %281 : memref<6xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %284 = math.absf %6 : tensor<6xf32>
        %collapsed_54 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x7x6xf32> into tensor<42x6xf32>
        %285 = memref.atomic_rmw minu %c1463441060_i32, %alloc_10[%c3] : (i32, memref<7xi32>) -> i32
        %286 = vector.extract_strided_slice %279 {offsets = [0], sizes = [3], strides = [1]} : vector<6xf32> to vector<3xf32>
        %287 = math.round %8 : tensor<6xf16>
        %288 = vector.reduction <minf>, %279 : vector<6xf32> into f32
        %289 = math.ipowi %4, %4 : tensor<6xi1>
        %alloca_55 = memref.alloca() : memref<6xi32>
        %290 = arith.remf %cst_2, %cst_4 : f32
        %291 = affine.max affine_map<(d0, d1) -> (d1 * 64 - 64, -(d0 + 32), d0 - 4, -(d0 + 32))>(%c1, %c10)
        %alloc_56 = memref.alloc() : memref<6x7x6xf32>
        %292 = math.log2 %cst_2 : f32
        %293 = bufferization.to_tensor %alloc_19 : memref<6x7x6xi64>
        %294 = vector.broadcast %c1463441060_i32 : i32 to vector<6xi32>
        %295 = vector.broadcast %false_1 : i1 to vector<6xi1>
        %296 = vector.maskedload %alloc_13[%c2], %295, %294 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %297 = arith.muli %c400634096_i64, %c2006163504_i64 : i64
        %298 = arith.cmpi sle, %c-5339_i16, %c27473_i16 : i16
        %299 = vector.transpose %295, [0] : vector<6xi1> to vector<6xi1>
        %300 = math.atan %8 : tensor<6xf16>
        %301 = arith.floordivsi %c400634096_i64, %c400634096_i64 : i64
        %302 = arith.subi %false_1, %false : i1
        %303 = math.ceil %6 : tensor<6xf32>
        %304 = vector.broadcast %cst : f16 to vector<f16>
        %305 = vector.transfer_write %304, %5[%c7] : vector<f16>, tensor<6xf16>
        linalg.yield %c400634096_i64 : i64
      } -> tensor<6x7x6xi64>
      %256 = affine.if affine_set<(d0, d1, d2) : ((d2 + 16) ceildiv 128 == 0, d0 + 4 == 0)>(%c4, %c4, %c7) -> f16 {
        %expanded_51 = tensor.expand_shape %3 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        %272 = math.log10 %cst_3 : f16
        %273 = vector.broadcast %c400634096_i64 : i64 to vector<7xi64>
        %274 = vector.broadcast %false : i1 to vector<7xi1>
        %275 = vector.maskedload %alloc_19[%c2, %c2, %c2], %274, %273 : memref<6x7x6xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        memref.store %c400634096_i64, %alloc_19[%c0, %c2, %c5] : memref<6x7x6xi64>
        %false_52 = index.bool.constant false
        %alloc_53 = memref.alloc() : memref<1x6xf32>
        %276 = tensor.empty() : tensor<6x6xf32>
        %277 = linalg.matmul ins(%expanded_51, %alloc_53 : tensor<6x1xf32>, memref<1x6xf32>) outs(%276 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %278 = index.castu %c10 : index to i32
        %279 = index.floordivs %c14, %c14
        affine.yield %cst : f16
      } else {
        %alloc_51 = memref.alloc() : memref<7xf16>
        %272 = index.add %arg1, %c4
        %273 = vector.broadcast %cst_2 : f32 to vector<6x7x6xf32>
        vector.print %273 : vector<6x7x6xf32>
        %from_elements_52 = tensor.from_elements %c2006163504_i64, %c2006163504_i64, %c2006163504_i64, %c400634096_i64, %c400634096_i64, %c400634096_i64 : tensor<6xi64>
        %274 = arith.minui %false, %true : i1
        %275 = arith.minui %c27473_i16, %c-5339_i16 : i16
        %276 = arith.minsi %c2006163504_i64, %c2006163504_i64 : i64
        %277 = vector.splat %c8 : vector<6xindex>
        affine.yield %cst_3 : f16
      }
      %257 = arith.subi %c12152_i16, %c12152_i16 : i16
      %258 = index.floordivs %c9, %arg1
      %259 = arith.remsi %false_1, %true_0 : i1
      %260 = index.floordivs %arg2, %c3
      %261 = arith.muli %c17954_i16, %c27473_i16 : i16
      %262 = index.maxu %c6, %c7
      %263 = arith.minui %false_1, %true : i1
      %264 = vector.broadcast %cst_2 : f32 to vector<6x7x6xf32>
      %265 = vector.transpose %264, [0, 2, 1] : vector<6x7x6xf32> to vector<6x6x7xf32>
      %266 = affine.if affine_set<(d0, d1, d2) : (d1 - 16 == 0, (d2 - (d2 - 1) mod 2) floordiv 16 == 0, d0 == 0)>(%c9, %c15, %c9) -> f32 {
        %272 = vector.load %alloc_9[%c3, %c0, %c4] : memref<6x7x6xi64>, vector<7xi64>
        %273 = vector.load %alloc_10[%c6] : memref<7xi32>, vector<7xi32>
        %274 = math.ceil %5 : tensor<6xf16>
        vector.print %264 : vector<6x7x6xf32>
        %275 = math.sqrt %8 : tensor<6xf16>
        %276 = arith.shli %true, %true : i1
        %true_51 = index.bool.constant true
        %277 = math.log %1 : tensor<6x7x6xf32>
        affine.yield %cst_2 : f32
      } else {
        %272 = arith.xori %c400634096_i64, %c400634096_i64 : i64
        %273 = arith.floordivsi %c400634096_i64, %c400634096_i64 : i64
        %274 = arith.maxf %cst_4, %cst_4 : f32
        %275 = arith.shrui %c12152_i16, %c-424_i16 : i16
        %276 = arith.cmpf ugt, %cst_4, %cst_2 : f32
        %277 = arith.subi %false, %false_1 : i1
        %278 = math.fma %3, %6, %3 : tensor<6xf32>
        %inserted_51 = tensor.insert %cst_2 into %3[%c3] : tensor<6xf32>
        affine.yield %cst_4 : f32
      }
      %267 = tensor.empty() : tensor<7x6xi16>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %11, %alloc_12 : tensor<7x6xi16>, tensor<6x7x6xi16>, memref<6xi16>) outs(%11 : tensor<6x7x6xi16>) {
      ^bb0(%in: i16, %in_51: i16, %in_52: i16, %out: i16):
        %272 = arith.maxui %c-5339_i16, %c-424_i16 : i16
        %273 = tensor.empty() : tensor<6xi32>
        %274 = math.fpowi %6, %273 : tensor<6xf32>, tensor<6xi32>
        %275 = math.ceil %1 : tensor<6x7x6xf32>
        %splat_53 = tensor.splat %c27473_i16 : tensor<6xi16>
        %276 = math.round %8 : tensor<6xf16>
        %277 = index.ceildivs %260, %c8
        %278 = math.atan %cst : f16
        %279 = math.ctlz %7 : tensor<6xi64>
        %280 = math.floor %cst_4 : f32
        %281 = vector.broadcast %cst_4 : f32 to vector<7x6xf32>
        %dest, %accumulated_value = vector.scan <add>, %264, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<6x7x6xf32>, vector<7x6xf32>
        %282 = math.log10 %cst_2 : f32
        %283 = math.ctlz %c2006163504_i64 : i64
        %284 = memref.atomic_rmw assign %c1463441060_i32, %alloc_8[%c6] : (i32, memref<7xi32>) -> i32
        %expanded_54 = tensor.expand_shape %10 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %splat_55 = tensor.splat %c17954_i16 : tensor<6x7x6xi16>
        %285 = vector.shuffle %264, %264 [1, 2, 3, 4, 9, 10, 11] : vector<6x7x6xf32>, vector<6x7x6xf32>
        %extracted = tensor.extract %12[%c4] : tensor<7xi1>
        vector.print %264 : vector<6x7x6xf32>
        %286 = math.fma %cst_2, %cst_4, %cst_2 : f32
        %287 = vector.broadcast %cst_2 : f32 to vector<6x7x6xf32>
        %288 = vector.fma %287, %287, %287 : vector<6x7x6xf32>
        %289 = arith.ceildivsi %in_52, %c-424_i16 : i16
        %290 = tensor.empty() : tensor<6xi1>
        affine.store %c1463441060_i32, %alloc_7[%c5, %c7, %c2] : memref<6x7x6xi32>
        %291 = vector.extract %288[5] : vector<6x7x6xf32>
        %292 = arith.remsi %c12152_i16, %c12152_i16 : i16
        %from_elements_56 = tensor.from_elements %false_1, %false, %true, %false_1, %true, %false_1, %extracted, %true_0, %false_1, %true, %false, %true, %false_1, %true, %true_0, %extracted, %extracted, %false_1, %false, %true, %false, %false, %false, %extracted, %false, %false_1, %false_1, %extracted, %true_0, %true_0, %true, %true_0, %true_0, %extracted, %true, %true, %false_1, %false, %false_1, %true_0, %extracted, %true_0, %true_0, %true_0, %false, %false_1, %true, %extracted, %extracted, %false, %extracted, %true_0, %false, %true_0, %extracted, %extracted, %false, %false_1, %true_0, %extracted, %true, %false_1, %true_0, %true, %extracted, %extracted, %extracted, %false_1, %false_1, %extracted, %false, %false, %false, %false, %true_0, %true, %true_0, %false_1, %false_1, %false, %extracted, %extracted, %extracted, %false, %true_0, %extracted, %true_0, %true, %extracted, %true, %true, %true, %false, %false_1, %true_0, %extracted, %false_1, %true_0, %false, %true, %true_0, %extracted, %true_0, %true, %false_1, %false, %extracted, %false_1, %false, %extracted, %extracted, %false, %false, %true_0, %extracted, %true, %true_0, %true_0, %true_0, %false, %true_0, %false_1, %false, %true_0, %true_0, %false_1, %true, %true_0, %true, %false, %false, %false, %false_1, %false, %false, %false, %false_1, %true_0, %true, %true_0, %false_1, %true_0, %true_0, %extracted, %true, %extracted, %true, %extracted, %false, %false_1, %false_1, %false, %extracted, %true, %extracted, %false_1, %true_0, %extracted, %false, %extracted, %false, %true, %false, %true_0, %true_0, %false_1, %true, %true_0, %extracted, %true_0, %false, %true, %true_0, %true_0, %false_1, %true_0, %false_1, %true_0, %true, %false, %false, %false_1, %true_0, %true, %true_0, %false_1, %false, %true, %false_1, %extracted, %false_1, %extracted, %extracted, %false_1, %false, %false, %false_1, %false_1, %false, %false_1, %extracted, %true, %false_1, %false, %false_1, %extracted, %true, %false, %false_1, %false_1, %false_1, %false_1, %true_0, %extracted, %false, %true, %false, %true_0, %false, %false, %extracted, %extracted, %true_0, %true, %true_0, %extracted, %true_0, %extracted, %true, %extracted, %false, %false, %true_0, %true, %true, %extracted, %true_0, %true_0, %true_0, %true_0, %extracted, %extracted, %extracted, %false, %false_1, %extracted, %extracted, %extracted, %extracted, %extracted, %true_0, %extracted : tensor<6x7x6xi1>
        %293 = math.log10 %5 : tensor<6xf16>
        %alloca_57 = memref.alloca() : memref<7xi16>
        %294 = index.maxs %c14, %258
        %295 = memref.atomic_rmw assign %c1463441060_i32, %alloc_7[%c1, %c4, %c2] : (i32, memref<6x7x6xi32>) -> i32
        %296 = index.floordivs %c6, %c7
        %alloc_58 = memref.alloc() : memref<1x7xi64>
        %297 = tensor.empty() : tensor<6x7xi64>
        %298 = linalg.matmul ins(%expanded_54, %alloc_58 : tensor<6x1xi64>, memref<1x7xi64>) outs(%297 : tensor<6x7xi64>) -> tensor<6x7xi64>
        linalg.yield %c-424_i16 : i16
      } -> tensor<6x7x6xi16>
      %269 = math.roundeven %cst_2 : f32
      %270 = math.fma %cst, %cst_3, %cst : f16
      %271 = tensor.empty() : tensor<7xi16>
      scf.reduce(%271)  : tensor<7xi16> {
      ^bb0(%arg3: tensor<7xi16>, %arg4: tensor<7xi16>):
        %272 = arith.shli %c1463441060_i32, %c1463441060_i32 : i32
        %false_51 = index.bool.constant false
        %273 = index.ceildivu %262, %262
        %274 = math.log1p %8 : tensor<6xf16>
        %275 = math.rsqrt %cst : f16
        %276 = affine.load %alloc_11[%c7] : memref<6xi16>
        %277 = arith.cmpf olt, %cst, %cst_3 : f16
        %278 = arith.shrsi %true_0, %false : i1
        %279 = tensor.empty() : tensor<7xi16>
        scf.reduce.return %279 : tensor<7xi16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_5[%c6] : memref<7xi32>, vector<5xi32>
    affine.vector_store %20, %alloc_8[%c3] : memref<7xi32>, vector<5xi32>
    %21 = tensor.empty() : tensor<6xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%16, %21 : tensor<6xi64>, tensor<6xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = math.sqrt %cst_4 : f32
    %25 = arith.remsi %true, %true : i1
    %26 = arith.addi %false_1, %true : i1
    %27 = math.round %cst_4 : f32
    %splat = tensor.splat %c400634096_i64 : tensor<6xi64>
    %28 = arith.remsi %c400634096_i64, %c2006163504_i64 : i64
    %29 = vector.broadcast %c5 : index to vector<6xindex>
    %30 = vector.broadcast %true : i1 to vector<6xi1>
    %31 = vector.broadcast %c1463441060_i32 : i32 to vector<6xi32>
    vector.scatter %alloc_7[%c4, %c4, %c0] [%29], %30, %31 : memref<6x7x6xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
    %32 = arith.remui %c-424_i16, %c-424_i16 : i16
    %33 = tensor.empty(%c5) : tensor<?xi32>
    %34 = vector.broadcast %c1463441060_i32 : i32 to vector<5x5xi32>
    %35 = vector.outerproduct %20, %20, %34 {kind = #vector.kind<xor>} : vector<5xi32>, vector<5xi32>
    %36 = vector.broadcast %c1463441060_i32 : i32 to vector<5x5xi32>
    %37 = vector.outerproduct %20, %20, %36 {kind = #vector.kind<xor>} : vector<5xi32>, vector<5xi32>
    %38 = arith.mulf %cst_4, %cst_4 : f32
    %39 = scf.if %true_0 -> (memref<6x7x6xi1>) {
      memref.store %cst_2, %alloc_17[%c3] : memref<7xf32>
      %254 = arith.shrui %false, %true_0 : i1
      %255 = vector.broadcast %c400634096_i64 : i64 to vector<i64>
      %256 = vector.transfer_write %255, %7[%c11] : vector<i64>, tensor<6xi64>
      %splat_51 = tensor.splat %false_1 : tensor<7xi1>
      %257 = vector.load %alloc_5[%c3] : memref<7xi32>, vector<6xi32>
      %258 = vector.load %alloc_13[%c3] : memref<7xi32>, vector<6xi32>
      %259 = vector.broadcast %c1463441060_i32 : i32 to vector<5x5xi32>
      %260 = vector.outerproduct %20, %20, %259 {kind = #vector.kind<mul>} : vector<5xi32>, vector<5xi32>
      %261 = arith.minui %false, %false : i1
      %alloc_52 = memref.alloc() : memref<6x7x6xi1>
      scf.yield %alloc_52 : memref<6x7x6xi1>
    } else {
      %254 = math.log1p %5 : tensor<6xf16>
      %255 = arith.shrsi %c27473_i16, %c27473_i16 : i16
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<6x7x6xi16>) {
      ^bb0(%out: i16):
        %262 = vector.transpose %20, [0] : vector<5xi32> to vector<5xi32>
        %true_52 = index.bool.constant true
        %263 = arith.remui %false, %true : i1
        %264 = vector.matrix_multiply %20, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi32>, vector<5xi32>) -> vector<1xi32>
        %265 = arith.cmpi ule, %c27473_i16, %c17954_i16 : i16
        %266 = math.log %cst_3 : f16
        %267 = vector.broadcast %true_0 : i1 to vector<7xi1>
        %268 = arith.divsi %c-424_i16, %c-5339_i16 : i16
        %269 = math.log1p %3 : tensor<6xf32>
        %270 = index.maxu %c3, %c1
        %271 = math.cos %5 : tensor<6xf16>
        %272 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - (d2 - d0), d3 - (d2 - d0) + 16, d3 - (d2 - d0) + 16)>(%c15, %c13, %c6, %c8)
        %alloc_53 = memref.alloc() : memref<7xi32>
        %273 = arith.divsi %c-5339_i16, %c12152_i16 : i16
        %274 = arith.remf %cst_4, %cst_2 : f32
        %275 = arith.maxf %cst_4, %cst_2 : f32
        %alloc_54 = memref.alloc() : memref<6x7x6xi32>
        %276 = arith.shrsi %false_1, %false_1 : i1
        %277 = vector.broadcast %false_1 : i1 to vector<i1>
        %278 = vector.transfer_write %277, %4[%c12] : vector<i1>, tensor<6xi1>
        %279 = vector.broadcast %true_0 : i1 to vector<6xi1>
        %280 = vector.maskedload %alloc_15[%c2], %279, %279 : memref<6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %281 = index.divs %c0, %272
        %alloc_55 = memref.alloc() : memref<5x5xi16>
        %alloc_56 = memref.alloc() : memref<5x7xi16>
        %282 = tensor.empty() : tensor<5x7xi16>
        %283 = linalg.matmul ins(%alloc_55, %alloc_56 : memref<5x5xi16>, memref<5x7xi16>) outs(%282 : tensor<5x7xi16>) -> tensor<5x7xi16>
        %284 = math.ctpop %true_52 : i1
        %inserted_57 = tensor.insert %c2006163504_i64 into %9[%c1, %c5, %c0] : tensor<6x7x6xi64>
        %285 = math.copysign %3, %6 : tensor<6xf32>
        %286 = arith.divsi %c17954_i16, %out : i16
        %287 = arith.maxf %cst, %cst_3 : f16
        %288 = vector.broadcast %true_52 : i1 to vector<7x7xi1>
        %289 = vector.outerproduct %267, %267, %288 {kind = #vector.kind<mul>} : vector<7xi1>, vector<7xi1>
        %290 = arith.shrsi %false, %true_52 : i1
        %291 = math.log1p %cst_4 : f32
        %292 = affine.max affine_map<(d0) -> (0, 0, -d0)>(%c12)
        %293 = arith.floordivsi %c-5339_i16, %c17954_i16 : i16
        linalg.yield %c12152_i16 : i16
      } -> tensor<6x7x6xi16>
      %257 = memref.atomic_rmw maxs %c12152_i16, %alloc_18[%c2] : (i16, memref<7xi16>) -> i16
      %258 = affine.for %arg1 = 0 to 126 iter_args(%arg2 = %c12152_i16) -> (i16) {
        affine.yield %c17954_i16 : i16
      }
      %259 = math.fma %8, %8, %8 : tensor<6xf16>
      %260 = index.sub %c7, %c15
      %261 = math.ctpop %splat : tensor<6xi64>
      %alloc_51 = memref.alloc() : memref<6x7x6xi1>
      scf.yield %alloc_51 : memref<6x7x6xi1>
    }
    %40 = math.round %5 : tensor<6xf16>
    %41 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 32 + d2 + d1, d2, d3 mod 32, d2)>(%c12, %c0, %c5, %c9)
    %alloc_21 = memref.alloc() : memref<6x6xf32>
    %alloc_22 = memref.alloc() : memref<6x7xf32>
    %42 = tensor.empty() : tensor<6x7xf32>
    %43 = linalg.matmul ins(%alloc_21, %alloc_22 : memref<6x6xf32>, memref<6x7xf32>) outs(%42 : tensor<6x7xf32>) -> tensor<6x7xf32>
    %44 = arith.remf %cst_2, %cst_4 : f32
    %45 = vector.shuffle %20, %20 [0, 1, 2, 5, 7, 8, 9] : vector<5xi32>, vector<5xi32>
    %46 = arith.ceildivsi %false, %true : i1
    affine.store %c2006163504_i64, %alloc_16[%c6, %c14, %c4] : memref<6x7x6xi64>
    %47 = arith.floordivsi %c27473_i16, %c27473_i16 : i16
    %48 = arith.muli %c-5339_i16, %c12152_i16 : i16
    memref.assume_alignment %alloc_9, 16 : memref<6x7x6xi64>
    %49 = arith.floordivsi %c2006163504_i64, %c400634096_i64 : i64
    memref.assume_alignment %alloc_15, 16 : memref<6xi1>
    %from_elements = tensor.from_elements %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst : tensor<7xf16>
    memref.assume_alignment %alloc, 8 : memref<7xi32>
    %50 = vector.shuffle %20, %20 [0, 1, 6, 7, 8, 9] : vector<5xi32>, vector<5xi32>
    memref.copy %alloc_15, %alloc_20 : memref<6xi1> to memref<6xi1>
    %splat_23 = tensor.splat %cst_3 : tensor<6xf16>
    %51 = tensor.empty() : tensor<7x5xf32>
    %52 = tensor.empty() : tensor<6x5xf32>
    %53 = linalg.matmul ins(%42, %51 : tensor<6x7xf32>, tensor<7x5xf32>) outs(%52 : tensor<6x5xf32>) -> tensor<6x5xf32>
    %54 = arith.shrsi %c1463441060_i32, %c1463441060_i32 : i32
    %55 = vector.broadcast %c1 : index to vector<7xindex>
    %56 = vector.broadcast %true : i1 to vector<7xi1>
    vector.scatter %alloc_15[%c5] [%55], %56, %56 : memref<6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %57 = arith.shrsi %true_0, %false : i1
    %58 = tensor.empty() : tensor<7x6xi64>
    %59 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16, %58, %58 : tensor<6xi64>, tensor<7x6xi64>, tensor<7x6xi64>) outs(%13 : tensor<6x7x6xi64>) {
    ^bb0(%in: i64, %in_51: i64, %in_52: i64, %out: i64):
      %alloc_53 = memref.alloc() : memref<7xf16>
      %254 = math.cos %8 : tensor<6xf16>
      %collapsed_54 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
      %255 = arith.mulf %cst_2, %cst_4 : f32
      %256 = arith.minui %in_52, %in_52 : i64
      %257 = scf.if %true_0 -> (memref<6xf32>) {
        %280 = math.cos %1 : tensor<6x7x6xf32>
        %281 = vector.shuffle %20, %20 [1, 2, 3, 5, 6, 7, 8] : vector<5xi32>, vector<5xi32>
        %282 = tensor.empty() : tensor<6xf16>
        bufferization.dealloc_tensor %13 : tensor<6x7x6xi64>
        %283 = arith.shli %in_52, %in_51 : i64
        %284 = tensor.empty() : tensor<5x7xf32>
        %285 = tensor.empty() : tensor<6x7xf32>
        %286 = linalg.matmul ins(%52, %284 : tensor<6x5xf32>, tensor<5x7xf32>) outs(%285 : tensor<6x7xf32>) -> tensor<6x7xf32>
        %287 = vector.insertelement %c1463441060_i32, %20[%c10 : index] : vector<5xi32>
        %288 = index.maxu %c4, %c4
        %alloc_56 = memref.alloc() : memref<6xf32>
        scf.yield %alloc_56 : memref<6xf32>
      } else {
        %alloca_56 = memref.alloca() : memref<6xi1>
        %280 = math.ctpop %4 : tensor<6xi1>
        %281 = index.ceildivs %41, %41
        %282 = arith.muli %true_0, %false : i1
        %283 = arith.remf %cst_3, %cst : f16
        %284 = vector.splat %c0 : vector<6xindex>
        memref.copy %alloc_14, %alloc_6 : memref<6x7x6xf32> to memref<6x7x6xf32>
        %285 = arith.mulf %cst, %cst : f16
        %alloc_57 = memref.alloc() : memref<6xf32>
        scf.yield %alloc_57 : memref<6xf32>
      }
      %258 = vector.reduction <or>, %20 : vector<5xi32> into i32
      %259 = arith.shrsi %c-424_i16, %c17954_i16 : i16
      vector.print %20 : vector<5xi32>
      memref.store %in, %alloc_16[%c0, %c2, %c3] : memref<6x7x6xi64>
      %260 = arith.shrui %false, %true : i1
      %261 = vector.shuffle %20, %20 [2, 4, 5, 6, 7, 8, 9] : vector<5xi32>, vector<5xi32>
      %262 = arith.remsi %c2006163504_i64, %c2006163504_i64 : i64
      %263 = arith.muli %in_51, %in : i64
      %264 = math.exp2 %3 : tensor<6xf32>
      %265 = affine.if affine_set<(d0, d1, d2) : (-(-d0 + d2 - 8) - 128 == 0, d0 >= 0, -(-d0 + d2 - 8) - 128 == 0)>(%c8, %c1, %c8) -> memref<6xi32> {
        %280 = math.ctpop %4 : tensor<6xi1>
        %alloc_56 = memref.alloc() : memref<6xi64>
        memref.tensor_store %15, %alloc_56 : memref<6xi64>
        %281 = vector.broadcast %c1463441060_i32 : i32 to vector<6xi32>
        %282 = vector.broadcast %true_0 : i1 to vector<6xi1>
        %283 = vector.maskedload %alloc_5[%c4], %282, %281 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %284 = bufferization.to_tensor %alloc_15 : memref<6xi1>
        %285 = arith.xori %in, %in_51 : i64
        %286 = math.tanh %5 : tensor<6xf16>
        %287 = affine.max affine_map<(d0) -> (d0 * 2 + 16, d0 + (d0 ceildiv 128) floordiv 128)>(%c1)
        %288 = math.log2 %42 : tensor<6x7xf32>
        %alloc_57 = memref.alloc() : memref<6xi32>
        affine.yield %alloc_57 : memref<6xi32>
      } else {
        %280 = math.cos %5 : tensor<6xf16>
        %collapsed_56 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x7x6xf32> into tensor<42x6xf32>
        %281 = arith.subi %c-5339_i16, %c-424_i16 : i16
        vector.print %20 : vector<5xi32>
        %282 = vector.broadcast %c12 : index to vector<7xindex>
        %283 = vector.broadcast %false_1 : i1 to vector<7xi1>
        %284 = vector.broadcast %in : i64 to vector<7xi64>
        vector.scatter %alloc_16[%c2, %c5, %c5] [%282], %283, %284 : memref<6x7x6xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %285 = affine.max affine_map<(d0, d1, d2, d3) -> (-1)>(%c0, %c13, %c14, %c15)
        %286 = vector.transpose %20, [0] : vector<5xi32> to vector<5xi32>
        %287 = math.copysign %8, %5 : tensor<6xf16>
        %alloc_57 = memref.alloc() : memref<6xi32>
        affine.yield %alloc_57 : memref<6xi32>
      }
      %266 = math.round %8 : tensor<6xf16>
      %267 = math.tanh %cst_2 : f32
      memref.store %c-5339_i16, %alloc_12[%c4] : memref<6xi16>
      memref.store %true_0, %alloc_20[%c3] : memref<6xi1>
      %268 = vector.splat %c3 : vector<7xindex>
      %alloc_55 = memref.alloc() : memref<6x6xi16>
      %269 = tensor.empty() : tensor<42x6xi16>
      %270 = linalg.matmul ins(%collapsed_54, %alloc_55 : tensor<42x6xi16>, memref<6x6xi16>) outs(%269 : tensor<42x6xi16>) -> tensor<42x6xi16>
      scf.if %false {
        %280 = vector.broadcast %cst_4 : f32 to vector<f32>
        vector.transfer_write %280, %alloc_14[%c6, %c5, %c4] : vector<f32>, memref<6x7x6xf32>
        %281 = arith.shrsi %true_0, %true_0 : i1
        %282 = vector.broadcast %c2006163504_i64 : i64 to vector<i64>
        %283 = vector.transfer_write %282, %17[%c8] : vector<i64>, tensor<6xi64>
        %284 = affine.max affine_map<(d0, d1, d2) -> (d0, d1 + d0, d1)>(%c2, %c12, %c9)
        %285 = arith.negf %cst_2 : f32
        %true_56 = index.bool.constant true
        %286 = vector.splat %false : vector<6xi1>
        %287 = bufferization.clone %alloc_13 : memref<7xi32> to memref<7xi32>
      }
      %271 = affine.max affine_map<(d0, d1) -> ((-((d1 + d0) mod 32)) floordiv 64, d1 + d0 - 63, d1)>(%c15, %c10)
      %272 = vector.shuffle %20, %20 [0, 3, 7] : vector<5xi32>, vector<5xi32>
      %273 = vector.splat %false_1 : vector<6x7x6xi1>
      %274 = arith.remf %cst, %cst : f16
      %275 = arith.mulf %cst_4, %cst_4 : f32
      %276 = arith.shli %c-5339_i16, %c-424_i16 : i16
      %277 = vector.splat %c2 : vector<6x7x6xindex>
      %278 = arith.mulf %cst_4, %cst_2 : f32
      %279 = arith.divui %c27473_i16, %c-5339_i16 : i16
      linalg.yield %c400634096_i64 : i64
    } -> tensor<6x7x6xi64>
    %60 = index.ceildivs %c5, %c5
    %61 = vector.splat %c2006163504_i64 : vector<7xi64>
    bufferization.dealloc_tensor %5 : tensor<6xf16>
    %62 = arith.negf %cst : f16
    %63 = vector.splat %c2006163504_i64 : vector<6xi64>
    bufferization.dealloc_tensor %splat_23 : tensor<6xf16>
    %64 = vector.bitcast %20 : vector<5xi32> to vector<5xf32>
    %65 = math.roundeven %3 : tensor<6xf32>
    %66 = math.expm1 %cst_3 : f16
    affine.store %cst_4, %alloc_6[%c5, %c0, %c6] : memref<6x7x6xf32>
    %alloc_24 = memref.alloc() : memref<6xi32>
    %67 = vector.broadcast %c1463441060_i32 : i32 to vector<6xi32>
    %68 = vector.broadcast %true : i1 to vector<6xi1>
    %69 = vector.gather %alloc_24[%c11] [%67], %68, %67 : memref<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %expanded = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<6x7x6xi16> into tensor<6x7x6x1xi16>
    %70 = math.log10 %6 : tensor<6xf32>
    %71 = arith.divsi %c-424_i16, %c-424_i16 : i16
    %72 = math.log2 %cst_3 : f16
    %73 = math.log %cst_3 : f16
    %74 = math.ipowi %false_1, %true_0 : i1
    %75 = arith.addf %cst_4, %cst_2 : f32
    %76 = arith.addf %cst_3, %cst : f16
    memref.copy %alloc_11, %alloc_12 : memref<6xi16> to memref<6xi16>
    %false_25 = index.bool.constant false
    %77 = arith.muli %c2006163504_i64, %c2006163504_i64 : i64
    %splat_26 = tensor.splat %cst_4 : tensor<6xf32>
    %inserted = tensor.insert %c1463441060_i32 into %0[%c2] : tensor<7xi32>
    %alloc_27 = memref.alloc() : memref<6x7x6xi1>
    memref.copy %39, %alloc_27 : memref<6x7x6xi1> to memref<6x7x6xi1>
    %78 = tensor.empty() : tensor<6xi32>
    %79 = math.fpowi %splat_26, %78 : tensor<6xf32>, tensor<6xi32>
    %80 = math.ipowi %c17954_i16, %c-5339_i16 : i16
    %81 = vector.insertelement %cst_4, %64[%c15 : index] : vector<5xf32>
    %82 = memref.realloc %alloc_17 : memref<7xf32> to memref<5xf32>
    %83 = tensor.empty() : tensor<7x6xi16>
    %84 = tensor.empty() : tensor<6x7xi16>
    %85 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%83, %84, %14 : tensor<7x6xi16>, tensor<6x7xi16>, tensor<7xi16>) outs(%11 : tensor<6x7x6xi16>) {
    ^bb0(%in: i16, %in_51: i16, %in_52: i16, %out: i16):
      %254 = math.fpowi %cst_4, %c1463441060_i32 : f32, i32
      %collapsed_53 = tensor.collapse_shape %52 [[0, 1]] : tensor<6x5xf32> into tensor<30xf32>
      %255 = vector.broadcast %cst_2 : f32 to vector<6xf32>
      %256 = vector.fma %255, %255, %255 : vector<6xf32>
      %257 = arith.addi %in, %c-424_i16 : i16
      %splat_54 = tensor.splat %cst_4 : tensor<6x7x6xf32>
      %258 = index.floordivs %c5, %c6
      %259 = affine.max affine_map<(d0, d1, d2) -> (d0 * 32, d0 * 32 + 64, -d0)>(%c15, %c14, %c12)
      vector.print %20 : vector<5xi32>
      %260 = math.copysign %collapsed_53, %collapsed_53 : tensor<30xf32>
      %collapsed_55 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
      vector.print %255 : vector<6xf32>
      %261 = math.ceil %6 : tensor<6xf32>
      %splat_56 = tensor.splat %c27473_i16 : tensor<6x7x6xi16>
      %extracted = tensor.extract %4[%c5] : tensor<6xi1>
      %262 = vector.load %alloc_7[%c2, %c0, %c2] : memref<6x7x6xi32>, vector<6xi32>
      %263 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 128 - 16 >= 0, d2 - 128 == 0, d2 mod 16 == 0, d2 ceildiv 8 - 3 == 0)>(%c7, %c1, %c7) -> memref<6xi1> {
        %278 = arith.subi %out, %out : i16
        %279 = arith.subi %c12152_i16, %in_51 : i16
        %280 = arith.minui %c-424_i16, %c27473_i16 : i16
        %from_elements_60 = tensor.from_elements %c2006163504_i64, %c400634096_i64, %c2006163504_i64, %c2006163504_i64, %c400634096_i64, %c400634096_i64, %c400634096_i64 : tensor<7xi64>
        %281 = arith.minui %false_1, %false : i1
        %from_elements_61 = tensor.from_elements %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2 : tensor<6xf32>
        %alloc_62 = memref.alloc() : memref<6x6xi16>
        %282 = tensor.empty() : tensor<42x6xi16>
        %283 = linalg.matmul ins(%collapsed_55, %alloc_62 : tensor<42x6xi16>, memref<6x6xi16>) outs(%282 : tensor<42x6xi16>) -> tensor<42x6xi16>
        %284 = math.ctpop %c-424_i16 : i16
        affine.yield %alloc_15 : memref<6xi1>
      } else {
        %278 = math.atan2 %6, %6 : tensor<6xf32>
        %279 = arith.subi %c-424_i16, %c17954_i16 : i16
        %280 = index.maxs %258, %c10
        %281 = affine.load %alloc_8[%c0] : memref<7xi32>
        %282 = math.log %3 : tensor<6xf32>
        %283 = index.floordivs %c1, %c14
        %284 = math.sqrt %5 : tensor<6xf16>
        %285 = arith.shrui %c1463441060_i32, %c1463441060_i32 : i32
        affine.yield %alloc_15 : memref<6xi1>
      }
      %264 = vector.splat %cst_2 : vector<7xf32>
      %265 = math.log10 %52 : tensor<6x5xf32>
      %266 = arith.ceildivsi %out, %c17954_i16 : i16
      %267 = arith.ceildivsi %c-424_i16, %c17954_i16 : i16
      %268 = math.ceil %splat_26 : tensor<6xf32>
      %false_57 = index.bool.constant false
      %269 = scf.while (%arg1 = %c1463441060_i32) : (i32) -> i32 {
        %278 = arith.cmpi ule, %c-424_i16, %c27473_i16 : i16
        %279 = arith.floordivsi %c27473_i16, %in_51 : i16
        %280 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        %281 = math.log10 %cst_4 : f32
        %282 = arith.shli %c1463441060_i32, %c1463441060_i32 : i32
        %283 = math.ceil %cst_2 : f32
        %284 = math.floor %from_elements : tensor<7xf16>
        %285 = vector.broadcast %false_1 : i1 to vector<6xi1>
        scf.condition(%true_0) %arg1 : i32
      } do {
      ^bb0(%arg1: i32):
        %rank_60 = tensor.rank %6 : tensor<6xf32>
        %278 = arith.xori %false_25, %true : i1
        %279 = math.round %1 : tensor<6x7x6xf32>
        %alloc_61 = memref.alloc() : memref<7xf16>
        %alloc_62 = memref.alloc() : memref<7xi16>
        memref.copy %alloc_18, %alloc_62 : memref<7xi16> to memref<7xi16>
        %280 = arith.subi %in_51, %in_52 : i16
        memref.store %arg1, %alloc_13[%c0] : memref<7xi32>
        %281 = math.log2 %6 : tensor<6xf32>
        %282 = arith.subi %true_0, %true : i1
        %283 = bufferization.to_tensor %39 : memref<6x7x6xi1>
        %284 = vector.splat %259 : vector<6x7x6xindex>
        %285 = math.copysign %42, %42 : tensor<6x7xf32>
        %286 = vector.insertelement %cst_2, %255[%c9 : index] : vector<6xf32>
        %287 = arith.shli %c27473_i16, %c17954_i16 : i16
        %288 = arith.shrsi %c17954_i16, %in_51 : i16
        %289 = vector.broadcast %c400634096_i64 : i64 to vector<6xi64>
        %290 = vector.maskedload %alloc_9[%c3, %c1, %c2], %68, %289 : memref<6x7x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        scf.yield %arg1 : i32
      }
      %expanded_58 = tensor.expand_shape %from_elements [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
      %270 = affine.max affine_map<(d0, d1, d2) -> (d2 mod 32, -4, 0)>(%c1, %c10, %c4)
      %271 = vector.splat %c10 : vector<7xindex>
      %272 = vector.broadcast %in_52 : i16 to vector<6xi16>
      %273 = vector.gather %alloc_11[%c11] [%262], %68, %272 : memref<6xi16>, vector<6xi32>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %274 = math.atan2 %1, %1 : tensor<6x7x6xf32>
      %275 = vector.transpose %262, [0] : vector<6xi32> to vector<6xi32>
      %splat_59 = tensor.splat %c27473_i16 : tensor<6xi16>
      %276 = bufferization.to_memref %collapsed_55 : memref<42x6xi16>
      %277 = vector.broadcast %c-5339_i16 : i16 to vector<6x7x6xi16>
      linalg.yield %c-5339_i16 : i16
    } -> tensor<6x7x6xi16>
    %86 = affine.max affine_map<(d0) -> ((d0 + 16) floordiv 64, d0, (d0 floordiv 32 - 4) mod 128, d0 + 16)>(%c9)
    %87 = vector.broadcast %c2006163504_i64 : i64 to vector<6xi64>
    %88 = index.divs %c3, %c10
    %inserted_28 = tensor.insert %c400634096_i64 into %10[%c5] : tensor<6xi64>
    %89 = arith.cmpf ugt, %cst_3, %cst : f16
    %collapsed = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
    %90 = arith.muli %false, %true_0 : i1
    %91 = arith.ceildivsi %c2006163504_i64, %c2006163504_i64 : i64
    %92 = arith.addi %true_0, %true : i1
    %93 = index.ceildivs %c12, %c3
    %94 = arith.subi %c400634096_i64, %c400634096_i64 : i64
    %95 = arith.muli %false_25, %true : i1
    memref.store %c1463441060_i32, %alloc_7[%c4, %c1, %c1] : memref<6x7x6xi32>
    %96 = arith.remf %cst, %cst_3 : f16
    %97 = math.log10 %splat_26 : tensor<6xf32>
    %98 = arith.subi %true, %true : i1
    %cast = tensor.cast %17 : tensor<6xi64> to tensor<?xi64>
    %99 = math.round %6 : tensor<6xf32>
    %cast_29 = tensor.cast %42 : tensor<6x7xf32> to tensor<?x?xf32>
    %100 = arith.xori %false_1, %true_0 : i1
    %101 = vector.reduction <and>, %68 : vector<6xi1> into i1
    %102 = arith.remf %cst_3, %cst_3 : f16
    %103 = vector.splat %c1463441060_i32 : vector<7xi32>
    %104 = arith.remui %c17954_i16, %c-424_i16 : i16
    memref.store %c1463441060_i32, %alloc_24[%c4] : memref<6xi32>
    %105 = vector.broadcast %c1463441060_i32 : i32 to vector<5x5xi32>
    %106 = vector.outerproduct %20, %20, %105 {kind = #vector.kind<minsi>} : vector<5xi32>, vector<5xi32>
    %107 = arith.ceildivsi %c-5339_i16, %c27473_i16 : i16
    %108 = arith.shli %c27473_i16, %c27473_i16 : i16
    %109 = vector.broadcast %cst_4 : f32 to vector<6xf32>
    %110 = vector.fma %109, %109, %109 : vector<6xf32>
    %111 = vector.multi_reduction <minsi>, %69, %69 [] : vector<6xi32> to vector<6xi32>
    %112 = vector.shuffle %109, %64 [1, 2, 4, 6, 7, 10] : vector<6xf32>, vector<5xf32>
    %inserted_30 = tensor.insert %c1463441060_i32 into %0[%c4] : tensor<7xi32>
    affine.store %c2006163504_i64, %alloc_16[%c7, %c5, %c5] : memref<6x7x6xi64>
    %113 = arith.divsi %c1463441060_i32, %c1463441060_i32 : i32
    %114 = tensor.empty() : tensor<7xi32>
    %mapped = linalg.map ins(%alloc_10, %0 : memref<7xi32>, tensor<7xi32>) outs(%114 : tensor<7xi32>)
      (%in: i32, %in_51: i32) {
        %254 = arith.shrui %in_51, %in_51 : i32
        %255 = math.log2 %6 : tensor<6xf32>
        %256 = memref.alloca_scope  -> (f16) {
          %282 = arith.shrsi %false_25, %false_25 : i1
          %283 = vector.shuffle %64, %64 [0, 3, 5, 7, 8, 9] : vector<5xf32>, vector<5xf32>
          %284 = bufferization.to_memref %13 : memref<6x7x6xi64>
          %285 = arith.minui %c-424_i16, %c-5339_i16 : i16
          %false_58 = index.bool.constant false
          %alloca_59 = memref.alloca() : memref<6x7x6xf16>
          %286 = index.add %c10, %60
          %287 = vector.broadcast %true_0 : i1 to vector<7xi1>
          %288 = math.floor %52 : tensor<6x5xf32>
          %true_60 = index.bool.constant true
          %289 = arith.divsi %c12152_i16, %c12152_i16 : i16
          %290 = vector.broadcast %cst : f16 to vector<f16>
          %291 = vector.transfer_write %290, %5[%c9] : vector<f16>, tensor<6xf16>
          memref.store %c17954_i16, %alloc_18[%c3] : memref<7xi16>
          %292 = index.maxs %41, %c12
          affine.store %false_25, %alloc_20[%c8] : memref<6xi1>
          %293 = vector.broadcast %c-5339_i16 : i16 to vector<6xi16>
          %294 = index.sub %88, %c7
          %295 = arith.mulf %cst_2, %cst_2 : f32
          %296 = arith.remsi %c12152_i16, %c27473_i16 : i16
          %cst_61 = arith.constant 1.61603149E+9 : f32
          %297 = arith.minui %in_51, %c1463441060_i32 : i32
          %298 = math.fma %cst, %cst_3, %cst_3 : f16
          %splat_62 = tensor.splat %c-424_i16 : tensor<7xi16>
          %299 = math.copysign %5, %8 : tensor<6xf16>
          %300 = math.log1p %6 : tensor<6xf32>
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_63 = arith.constant 0 : i16
          %301 = vector.transfer_read %2[%86], %c0_i16_63 : tensor<6xi16>, vector<i16>
          %302 = tensor.empty() : tensor<5x5xf32>
          %303 = tensor.empty() : tensor<6x5xf32>
          %304 = linalg.matmul ins(%52, %302 : tensor<6x5xf32>, tensor<5x5xf32>) outs(%303 : tensor<6x5xf32>) -> tensor<6x5xf32>
          %305 = arith.cmpf ult, %cst_3, %cst : f16
          %306 = vector.transpose %69, [0] : vector<6xi32> to vector<6xi32>
          %307 = arith.minui %false_25, %false_25 : i1
          vector.print %87 : vector<6xi64>
          %308 = vector.extract %87[2] : vector<6xi64>
          memref.alloca_scope.return %cst_3 : f16
        }
        %257 = vector.insertelement %cst_4, %64[%c10 : index] : vector<5xf32>
        %258 = arith.minui %c400634096_i64, %c400634096_i64 : i64
        %259 = index.castu %false_25 : i1 to index
        %260 = arith.divsi %c400634096_i64, %c2006163504_i64 : i64
        %261 = bufferization.to_tensor %alloc_5 : memref<7xi32>
        %262 = affine.if affine_set<(d0, d1, d2) : (d1 - (d2 mod 8 + 16) == 0)>(%c15, %c8, %c7) -> memref<6xi64> {
          %282 = memref.atomic_rmw addi %c-5339_i16, %alloc_18[%c2] : (i16, memref<7xi16>) -> i16
          %283 = vector.broadcast %c-424_i16 : i16 to vector<6xi16>
          %284 = vector.maskedload %alloc_18[%c2], %68, %283 : memref<7xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %285 = index.maxu %41, %60
          %286 = vector.extract_strided_slice %68 {offsets = [3], sizes = [2], strides = [1]} : vector<6xi1> to vector<2xi1>
          %287 = index.maxs %c4, %c5
          %288 = arith.floordivsi %c2006163504_i64, %c400634096_i64 : i64
          %289 = arith.addf %256, %256 : f16
          %290 = arith.negf %cst_4 : f32
          %alloc_58 = memref.alloc() : memref<6xi64>
          affine.yield %alloc_58 : memref<6xi64>
        } else {
          affine.store %in_51, %alloc_13[%c9] : memref<7xi32>
          %282 = arith.muli %true_0, %false_1 : i1
          %283 = vector.broadcast %c-5339_i16 : i16 to vector<7xi16>
          %284 = vector.broadcast %true : i1 to vector<7xi1>
          %285 = vector.maskedload %alloc_18[%c5], %284, %283 : memref<7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          %286 = vector.broadcast %cst_4 : f32 to vector<6xf32>
          %287 = vector.fma %286, %109, %110 : vector<6xf32>
          %288 = math.log %8 : tensor<6xf16>
          %alloc_58 = memref.alloc() : memref<6xi32>
          affine.store %true, %alloc_15[%c8] : memref<6xi1>
          %289 = index.maxu %c4, %60
          %alloc_59 = memref.alloc() : memref<6xi64>
          affine.yield %alloc_59 : memref<6xi64>
        }
        %263 = affine.if affine_set<(d0, d1, d2) : (d0 >= 0, d1 - 96 >= 0, d2 - 64 == 0)>(%c13, %c0, %c13) -> memref<6x7x6xf32> {
          %282 = math.ipowi %c12152_i16, %c17954_i16 : i16
          %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d1 - 1) mod 2, d1 + 1)>(%c10, %60, %c12, %c2)
          %284 = arith.cmpi sgt, %false, %false : i1
          %285 = vector.extract %68[3] : vector<6xi1>
          %286 = arith.addf %cst_4, %cst_2 : f32
          %287 = vector.extract_strided_slice %64 {offsets = [3], sizes = [2], strides = [1]} : vector<5xf32> to vector<2xf32>
          %288 = vector.broadcast %in : i32 to vector<7xi32>
          %289 = vector.broadcast %false_25 : i1 to vector<7xi1>
          %290 = vector.maskedload %alloc[%c4], %289, %288 : memref<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
          %291 = vector.broadcast %cst_3 : f16 to vector<f16>
          %292 = vector.transfer_write %291, %5[%c3] : vector<f16>, tensor<6xf16>
          affine.yield %alloc_14 : memref<6x7x6xf32>
        } else {
          %alloca_58 = memref.alloca() : memref<6x7x6xf16>
          %282 = math.log %8 : tensor<6xf16>
          vector.print %109 : vector<6xf32>
          %283 = bufferization.to_memref %12 : memref<7xi1>
          %284 = affine.apply affine_map<(d0, d1) -> (-(d1 * 32 - 16))>(%c6, %93)
          %285 = memref.realloc %alloc_11 : memref<6xi16> to memref<6xi16>
          %alloc_59 = memref.alloc() : memref<7x7xf32>
          %286 = tensor.empty() : tensor<6x7xf32>
          %287 = linalg.matmul ins(%42, %alloc_59 : tensor<6x7xf32>, memref<7x7xf32>) outs(%286 : tensor<6x7xf32>) -> tensor<6x7xf32>
          %288 = arith.mulf %cst_2, %cst_2 : f32
          affine.yield %alloc_6 : memref<6x7x6xf32>
        }
        %264 = index.divs %c1, %259
        %265 = math.log %from_elements : tensor<7xf16>
        %266 = arith.maxf %cst_3, %cst : f16
        %267 = arith.negf %cst_2 : f32
        %268 = arith.maxf %256, %cst : f16
        %cst_52 = arith.constant 4.748800e+04 : f16
        %269 = scf.index_switch %c14 -> f32 
        case 1 {
          %282 = math.roundeven %256 : f16
          %283 = math.fpowi %5, %78 : tensor<6xf16>, tensor<6xi32>
          %284 = math.fpowi %256, %in : f16, i32
          %285 = math.floor %splat_23 : tensor<6xf16>
          %286 = index.sub %264, %c3
          %c1_i64_58 = arith.constant 1 : i64
          %c0_i64 = arith.constant 0 : i64
          %287 = vector.transfer_read %7[%c6], %c0_i64 : tensor<6xi64>, vector<i64>
          %288 = vector.extract_strided_slice %67 {offsets = [3], sizes = [1], strides = [1]} : vector<6xi32> to vector<1xi32>
          %289 = vector.broadcast %in_51 : i32 to vector<5x6xi32>
          %dest_59, %accumulated_value_60 = vector.scan <mul>, %289, %67 {inclusive = false, reduction_dim = 0 : i64} : vector<5x6xi32>, vector<6xi32>
          %290 = arith.minui %c400634096_i64, %c1_i64_58 : i64
          %291 = math.floor %8 : tensor<6xf16>
          %292 = arith.remsi %false_25, %true_0 : i1
          %c316845640_i64 = arith.constant 316845640 : i64
          %true_61 = arith.constant true
          %false_62 = arith.constant false
          %293 = vector.transfer_read %4[%c9], %false_62 : tensor<6xi1>, vector<i1>
          %294 = index.floordivs %88, %259
          %295 = vector.broadcast %c27473_i16 : i16 to vector<5x6xi16>
          %296 = vector.broadcast %c17954_i16 : i16 to vector<6xi16>
          %dest_63, %accumulated_value_64 = vector.scan <maxui>, %295, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<5x6xi16>, vector<6xi16>
          %297 = arith.cmpf ugt, %cst, %256 : f16
          scf.yield %cst_2 : f32
        }
        case 2 {
          %282 = vector.broadcast %c-424_i16 : i16 to vector<7xi16>
          %283 = vector.broadcast %true_0 : i1 to vector<7xi1>
          %284 = vector.maskedload %alloc_11[%c2], %283, %282 : memref<6xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          %285 = tensor.empty() : tensor<6xi1>
          %286 = arith.mulf %256, %cst : f16
          memref.store %in, %alloc_10[%c0] : memref<7xi32>
          %287 = vector.multi_reduction <mul>, %109, %109 [] : vector<6xf32> to vector<6xf32>
          %288 = index.ceildivs %c11, %c9
          %289 = arith.negf %256 : f16
          %290 = math.roundeven %splat_26 : tensor<6xf32>
          %291 = bufferization.to_tensor %alloc_20 : memref<6xi1>
          %292 = index.maxs %93, %93
          %293 = arith.remsi %in_51, %in : i32
          %alloc_58 = memref.alloc() : memref<6x6xi16>
          %294 = tensor.empty() : tensor<42x6xi16>
          %295 = linalg.matmul ins(%collapsed, %alloc_58 : tensor<42x6xi16>, memref<6x6xi16>) outs(%294 : tensor<42x6xi16>) -> tensor<42x6xi16>
          %296 = bufferization.to_memref %5 : memref<6xf16>
          %297 = index.divu %86, %c1
          %298 = index.ceildivs %c2, %c7
          %299 = vector.splat %in : vector<7xi32>
          scf.yield %cst_2 : f32
        }
        case 3 {
          %282 = math.absf %from_elements : tensor<7xf16>
          %283 = vector.broadcast %true : i1 to vector<5xi1>
          %284 = vector.maskedload %alloc_5[%c1], %283, %20 : memref<7xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
          %285 = arith.addf %cst_2, %cst_2 : f32
          %286 = index.divu %86, %41
          %287 = vector.broadcast %41 : index to vector<6xindex>
          %288 = vector.broadcast %c27473_i16 : i16 to vector<6xi16>
          vector.scatter %alloc_18[%c0] [%287], %68, %288 : memref<7xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
          %289 = math.log10 %cst : f16
          %290 = tensor.empty() : tensor<6xi1>
          %291 = arith.divsi %c2006163504_i64, %c400634096_i64 : i64
          %292 = index.maxs %c13, %88
          %293 = index.maxu %292, %c6
          %alloc_58 = memref.alloc() : memref<7x5xf32>
          %294 = tensor.empty() : tensor<6x5xf32>
          %295 = linalg.matmul ins(%42, %alloc_58 : tensor<6x7xf32>, memref<7x5xf32>) outs(%294 : tensor<6x5xf32>) -> tensor<6x5xf32>
          %296 = vector.splat %c9 : vector<6xindex>
          memref.copy %alloc_13, %alloc_8 : memref<7xi32> to memref<7xi32>
          %297 = arith.remf %256, %cst : f16
          %298 = bufferization.clone %alloc_6 : memref<6x7x6xf32> to memref<6x7x6xf32>
          %299 = index.maxu %c9, %c4
          scf.yield %cst_2 : f32
        }
        case 4 {
          %282 = arith.floordivsi %false, %false_25 : i1
          %283 = math.floor %cst_2 : f32
          %284 = tensor.empty() : tensor<6x7x6xi32>
          %285 = math.fpowi %1, %284 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
          %286 = math.ipowi %c17954_i16, %c12152_i16 : i16
          %splat_58 = tensor.splat %cst_3 : tensor<7xf16>
          %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d3)>(%c4, %c2, %c2, %86)
          %cst_59 = arith.constant 1.000000e+00 : f16
          %288 = vector.transfer_read %8[%c9], %cst_59 : tensor<6xf16>, vector<f16>
          %alloc_60 = memref.alloc() : memref<6x7x6xi32>
          %289 = vector.transpose %67, [0] : vector<6xi32> to vector<6xi32>
          %290 = math.log2 %cst_2 : f32
          %291 = arith.addf %cst, %cst : f16
          %292 = math.absf %splat_26 : tensor<6xf32>
          %false_61 = index.bool.constant false
          %293 = index.floordivs %c1, %c10
          %294 = arith.xori %c27473_i16, %c12152_i16 : i16
          %295 = math.exp2 %8 : tensor<6xf16>
          scf.yield %cst_4 : f32
        }
        default {
          %282 = arith.subi %true_0, %false_1 : i1
          %283 = vector.reduction <mul>, %110 : vector<6xf32> into f32
          %284 = index.floordivs %c1, %93
          %alloca_58 = memref.alloca() : memref<6x7x6xf32>
          memref.store %c400634096_i64, %alloc_16[%c4, %c2, %c0] : memref<6x7x6xi64>
          %285 = memref.atomic_rmw addi %c17954_i16, %alloc_18[%c5] : (i16, memref<7xi16>) -> i16
          %286 = math.round %cst_3 : f16
          %287 = math.roundeven %cst_2 : f32
          %288 = arith.minui %false_1, %false_25 : i1
          memref.assume_alignment %alloc_9, 4 : memref<6x7x6xi64>
          %rank_59 = tensor.rank %17 : tensor<6xi64>
          %289 = math.tan %6 : tensor<6xf32>
          %290 = tensor.empty() : tensor<5x6xf32>
          %291 = tensor.empty() : tensor<6x6xf32>
          %292 = linalg.matmul ins(%52, %290 : tensor<6x5xf32>, tensor<5x6xf32>) outs(%291 : tensor<6x6xf32>) -> tensor<6x6xf32>
          affine.store %c400634096_i64, %alloc_16[%c4, %c13, %c12] : memref<6x7x6xi64>
          %293 = arith.minui %c2006163504_i64, %c2006163504_i64 : i64
          memref.assume_alignment %alloc_6, 16 : memref<6x7x6xf32>
          scf.yield %cst_4 : f32
        }
        %270 = vector.broadcast %false_1 : i1 to vector<5x7xi1>
        %271 = vector.broadcast %true_0 : i1 to vector<7xi1>
        %dest, %accumulated_value = vector.scan <minsi>, %270, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<5x7xi1>, vector<7xi1>
        %272 = arith.floordivsi %c2006163504_i64, %c2006163504_i64 : i64
        %273 = math.absf %3 : tensor<6xf32>
        %alloca_53 = memref.alloca() : memref<6x7x6xi16>
        %274 = vector.shuffle %67, %67 [2, 5, 8, 9, 11] : vector<6xi32>, vector<6xi32>
        %275 = math.roundeven %cst_3 : f16
        %from_elements_54 = tensor.from_elements %cst_3, %256, %cst_3, %cst_3, %256, %256, %cst : tensor<7xf16>
        %276 = arith.xori %c1463441060_i32, %in_51 : i32
        %277 = tensor.empty() : tensor<7xi16>
        %mapped_55 = linalg.map ins(%14, %alloc_18 : tensor<7xi16>, memref<7xi16>) outs(%277 : tensor<7xi16>)
          (%in_58: i16, %in_59: i16) {
            %282 = index.divs %c0, %259
            %283 = arith.divsi %c12152_i16, %c12152_i16 : i16
            %284 = arith.shli %c2006163504_i64, %c2006163504_i64 : i64
            %285 = vector.broadcast %false_25 : i1 to vector<5xi1>
            %286 = vector.maskedload %alloc_5[%c2], %285, %20 : memref<7xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
            affine.store %in_51, %alloc_5[%c12] : memref<7xi32>
            %false_60 = index.bool.constant false
            %287 = math.sqrt %1 : tensor<6x7x6xf32>
            affine.store %c12152_i16, %alloc_18[%c10] : memref<7xi16>
            %288 = bufferization.to_tensor %alloc_11 : memref<6xi16>
            %289 = arith.addf %cst_2, %cst_4 : f32
            vector.print %87 : vector<6xi64>
            %290 = arith.negf %256 : f16
            %291 = arith.shrsi %in_59, %in_59 : i16
            %expanded_61 = tensor.expand_shape %6 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
            %292 = arith.divf %cst_3, %256 : f16
            %293 = index.ceildivu %c13, %c12
            %294 = affine.max affine_map<(d0, d1, d2) -> (d2, ((-(d2 ceildiv 32)) floordiv 32) ceildiv 64 + d2 ceildiv 32)>(%c6, %c3, %c9)
            %295 = vector.reduction <or>, %20 : vector<5xi32> into i32
            %296 = math.absf %splat_26 : tensor<6xf32>
            %expanded_62 = tensor.expand_shape %10 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
            %297 = arith.remf %cst_4, %cst_4 : f32
            %298 = vector.splat %c1 : vector<6x7x6xindex>
            %c1_i64_63 = arith.constant 1 : i64
            %299 = vector.transfer_read %expanded_62[%c3, %c14], %c1_i64_63 : tensor<6x1xi64>, vector<6xi64>
            %300 = vector.maskedload %alloc_17[%c6], %285, %64 : memref<7xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
            %301 = math.fma %splat_26, %6, %splat_26 : tensor<6xf32>
            %302 = math.atan %3 : tensor<6xf32>
            %303 = math.cos %cst : f16
            %304 = arith.cmpi sle, %c2006163504_i64, %c1_i64_63 : i64
            %alloc_64 = memref.alloc() : memref<7xf32>
            memref.copy %alloc_17, %alloc_64 : memref<7xf32> to memref<7xf32>
            %305 = affine.min affine_map<(d0) -> (d0 * 128 + d0 + 4 - (d0 + 4), d0 * 128)>(%c10)
            %306 = index.add %c9, %294
            %307 = vector.broadcast %c27473_i16 : i16 to vector<7xi16>
            %308 = vector.broadcast %false_60 : i1 to vector<7xi1>
            %309 = vector.maskedload %alloc_12[%c5], %308, %307 : memref<6xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %true_56 = index.bool.constant true
        %278 = vector.load %alloc_17[%c1] : memref<7xf32>, vector<6x7x6xf32>
        %279 = vector.extract %67[4] : vector<6xi32>
        %280 = vector.insert %cst_4, %64 [1] : f32 into vector<5xf32>
        %281 = math.fpowi %6, %78 : tensor<6xf32>, tensor<6xi32>
        %inserted_57 = tensor.insert %c-5339_i16 into %expanded[%c4, %c5, %c3, %c0] : tensor<6x7x6x1xi16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %115 = affine.if affine_set<(d0, d1, d2) : (d2 ceildiv 32 == 0)>(%c5, %c6, %c10) -> i32 {
      %254 = math.cos %1 : tensor<6x7x6xf32>
      %255 = vector.insert %c1463441060_i32, %69 [3] : i32 into vector<6xi32>
      bufferization.dealloc_tensor %16 : tensor<6xi64>
      %256 = math.tan %cst_2 : f32
      %257 = affine.max affine_map<(d0) -> (d0 - 128, d0 * -4)>(%c1)
      %258 = arith.divui %c27473_i16, %c17954_i16 : i16
      %259 = arith.addf %cst_4, %cst_4 : f32
      %260 = index.maxs %c14, %c10
      affine.yield %c1463441060_i32 : i32
    } else {
      %from_elements_51 = tensor.from_elements %true_0, %false_25, %false_25, %false_1, %true, %true_0, %true, %true_0, %false_25, %true_0, %true, %true_0, %false_1, %true, %false_25, %true, %false_25, %false_25, %false_25, %true_0, %true_0, %true_0, %true_0, %true, %true_0, %false_25, %false_1, %false, %true_0, %false_25, %true, %false, %true, %false_25, %false_25, %false_25, %true_0, %false_25, %false, %false_1, %false, %false_25, %false, %false, %false_1, %false, %false, %true, %false_25, %false_1, %false, %true, %false_1, %false, %false, %false_25, %false_1, %false_1, %true_0, %true, %true_0, %false, %true_0, %false_25, %true, %true, %false_1, %true, %false, %false, %false, %false_25, %false_25, %true, %true, %false, %true_0, %false_1, %true, %false_25, %false_1, %true, %true_0, %false, %true_0, %false_1, %false, %true_0, %true_0, %false, %false_25, %false_1, %true_0, %true_0, %true_0, %true_0, %true, %true, %true_0, %false_25, %true_0, %false_25, %false_1, %false_1, %false_25, %false_25, %true, %true, %false, %true, %false, %true_0, %true, %true_0, %false_1, %false_1, %true, %true_0, %false_25, %false_25, %false_1, %false_25, %true_0, %false, %false, %false, %true_0, %false, %false_25, %false_1, %true_0, %true, %false_25, %false_25, %false_25, %false_25, %true_0, %true_0, %true_0, %true, %false_1, %false, %false_1, %true, %false_1, %true_0, %false_25, %false_25, %false_25, %true, %false_1, %true_0, %true_0, %false_1, %true_0, %false_25, %true, %false_25, %false, %false, %true_0, %true, %false_25, %false_25, %false, %false_25, %false, %false_1, %false_1, %false_1, %true_0, %false_25, %false_25, %false, %false_25, %true_0, %false_1, %false_1, %true, %false_1, %true, %true_0, %true_0, %false_25, %true, %false_1, %false, %false_25, %false, %false_25, %false_25, %false_1, %false_1, %false, %true_0, %false, %true_0, %false_1, %false, %false, %false_1, %true, %true_0, %true, %true, %true_0, %false_25, %true_0, %true_0, %false_1, %true_0, %true, %true, %true, %false_25, %false_25, %false_1, %true, %false_25, %false_25, %true, %false_25, %false_1, %false, %true_0, %true, %true_0, %false_1, %false, %false_25, %false_25, %false_1, %true_0, %true, %false_25, %false, %true_0, %true_0, %false_25, %false, %false_1, %false, %true_0, %true, %true_0, %false_1, %false_1, %false_25, %true_0, %false_1, %true_0, %false_25 : tensor<6x7x6xi1>
      %254 = arith.ceildivsi %c12152_i16, %c12152_i16 : i16
      scf.index_switch %41 
      case 1 {
        %258 = memref.atomic_rmw maxs %c400634096_i64, %alloc_19[%c1, %c6, %c1] : (i64, memref<6x7x6xi64>) -> i64
        %259 = bufferization.to_memref %13 : memref<6x7x6xi64>
        %rank_52 = tensor.rank %7 : tensor<6xi64>
        %260 = arith.subi %c2006163504_i64, %c400634096_i64 : i64
        %splat_53 = tensor.splat %true : tensor<6xi1>
        %261 = math.sqrt %52 : tensor<6x5xf32>
        %262 = arith.shrui %c12152_i16, %c-5339_i16 : i16
        %263 = vector.load %259[%c0, %c2, %c3] : memref<6x7x6xi64>, vector<6xi64>
        %264 = arith.shli %false_1, %false : i1
        %265 = math.floor %1 : tensor<6x7x6xf32>
        %266 = math.ctpop %10 : tensor<6xi64>
        %267 = vector.broadcast %c6 : index to vector<6xindex>
        %268 = vector.broadcast %c17954_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_18[%c2] [%267], %68, %268 : memref<7xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %269 = index.ceildivs %60, %86
        %270 = math.absf %52 : tensor<6x5xf32>
        memref.store %cst_4, %alloc_17[%c2] : memref<7xf32>
        %271 = math.absi %0 : tensor<7xi32>
        scf.yield
      }
      case 2 {
        %258 = index.castu %c1463441060_i32 : i32 to index
        %259 = math.log2 %42 : tensor<6x7xf32>
        %260 = arith.floordivsi %false_1, %false_25 : i1
        %261 = arith.floordivsi %true_0, %false : i1
        affine.store %c-5339_i16, %alloc_12[%c6] : memref<6xi16>
        %262 = math.log2 %42 : tensor<6x7xf32>
        %263 = arith.minui %true, %true_0 : i1
        %264 = vector.shuffle %87, %87 [0, 1, 2, 3, 6, 7, 8, 10] : vector<6xi64>, vector<6xi64>
        %265 = arith.mulf %cst_3, %cst_3 : f16
        %266 = vector.splat %86 : vector<6x7x6xindex>
        %267 = vector.transpose %67, [0] : vector<6xi32> to vector<6xi32>
        %268 = arith.muli %c27473_i16, %c12152_i16 : i16
        %269 = index.castu %false_25 : i1 to index
        %270 = math.log1p %cst_4 : f32
        %collapsed_52 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
        %271 = math.ipowi %15, %7 : tensor<6xi64>
        scf.yield
      }
      default {
        %258 = vector.insertelement %cst_4, %64[%c1 : index] : vector<5xf32>
        %alloca_52 = memref.alloca() : memref<6x7x6xi16>
        %259 = arith.negf %cst_3 : f16
        %cast_53 = tensor.cast %21 : tensor<6xi64> to tensor<?xi64>
        %260 = vector.broadcast %c1463441060_i32 : i32 to vector<6x6xi32>
        %261 = vector.outerproduct %67, %69, %260 {kind = #vector.kind<xor>} : vector<6xi32>, vector<6xi32>
        %inserted_54 = tensor.insert %cst_2 into %6[%c5] : tensor<6xf32>
        %262 = vector.broadcast %cst : f16 to vector<f16>
        %263 = vector.transfer_write %262, %5[%60] : vector<f16>, tensor<6xf16>
        %264 = arith.cmpi ne, %false, %false : i1
        %265 = math.floor %1 : tensor<6x7x6xf32>
        %266 = arith.remf %cst, %cst : f16
        %267 = index.floordivs %c6, %c14
        %alloc_55 = memref.alloc() : memref<7xi16>
        memref.copy %alloc_18, %alloc_55 : memref<7xi16> to memref<7xi16>
        %268 = math.roundeven %3 : tensor<6xf32>
        %269 = index.divs %60, %c0
        %270 = arith.subi %true_0, %false_25 : i1
        %271 = arith.xori %c-424_i16, %c27473_i16 : i16
      }
      %255 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 16, d1 * 4)>(%c7, %c9, %c0, %c3)
      memref.assume_alignment %alloc_5, 2 : memref<7xi32>
      %256 = math.log2 %8 : tensor<6xf16>
      %c0_i64 = arith.constant 0 : i64
      %257 = vector.transfer_read %10[%c11], %c0_i64 : tensor<6xi64>, vector<i64>
      scf.if %false_25 {
        %258 = arith.ceildivsi %c0_i64, %c400634096_i64 : i64
        %259 = arith.remf %cst, %cst : f16
        %260 = arith.xori %c2006163504_i64, %c400634096_i64 : i64
        %261 = affine.max affine_map<(d0, d1) -> ((-(d0 - d1)) mod 128, -(d0 - d1), d0 - d1, d0 - d1)>(%c3, %c12)
        %262 = memref.atomic_rmw maxu %c12152_i16, %alloc_18[%c6] : (i16, memref<7xi16>) -> i16
        %263 = math.fpowi %3, %78 : tensor<6xf32>, tensor<6xi32>
        %264 = index.add %c3, %c13
        %true_52 = index.bool.constant true
      }
      affine.yield %c1463441060_i32 : i32
    }
    %cast_31 = tensor.cast %21 : tensor<6xi64> to tensor<?xi64>
    %116 = index.divs %c2, %41
    %117 = vector.broadcast %cst : f16 to vector<7xf16>
    %118 = vector.broadcast %true_0 : i1 to vector<7xi1>
    %119 = vector.broadcast %c1463441060_i32 : i32 to vector<7xi32>
    %120 = vector.gather %8[%c14] [%119], %118, %117 : tensor<6xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %121 = vector.broadcast %false_25 : i1 to vector<6x6xi1>
    %122 = vector.outerproduct %68, %68, %121 {kind = #vector.kind<minsi>} : vector<6xi1>, vector<6xi1>
    %123 = affine.apply affine_map<(d0, d1, d2) -> (d1 - d0 mod 8)>(%60, %c1, %86)
    %124 = vector.load %alloc_12[%c4] : memref<6xi16>, vector<7xi16>
    %125 = arith.minui %false_25, %true_0 : i1
    %126 = arith.floordivsi %c12152_i16, %c27473_i16 : i16
    %127 = affine.load %alloc_6[%c13, %c12, %c8] : memref<6x7x6xf32>
    %alloca = memref.alloca() : memref<6xi1>
    memref.store %c1463441060_i32, %alloc_13[%c3] : memref<7xi32>
    memref.store %false_25, %alloc_15[%c5] : memref<6xi1>
    scf.index_switch %c8 
    case 1 {
      %254 = bufferization.to_tensor %39 : memref<6x7x6xi1>
      %255 = math.fma %3, %3, %splat_26 : tensor<6xf32>
      %256 = arith.shrsi %c-424_i16, %c-424_i16 : i16
      %splat_51 = tensor.splat %c400634096_i64 : tensor<7xi64>
      %257 = vector.broadcast %c1463441060_i32 : i32 to vector<7x7xi32>
      %258 = vector.outerproduct %119, %119, %257 {kind = #vector.kind<maxui>} : vector<7xi32>, vector<7xi32>
      %259 = vector.extract_strided_slice %69 {offsets = [2], sizes = [1], strides = [1]} : vector<6xi32> to vector<1xi32>
      %260 = math.absf %6 : tensor<6xf32>
      %alloc_52 = memref.alloc() : memref<6xi1>
      %261 = math.fma %3, %splat_26, %6 : tensor<6xf32>
      %262 = math.ctlz %0 : tensor<7xi32>
      %alloc_53 = memref.alloc() : memref<7x6xf32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53, %42, %42 : memref<7x6xf32>, tensor<6x7xf32>, tensor<6x7xf32>) outs(%1 : tensor<6x7x6xf32>) {
      ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
        %268 = math.log2 %8 : tensor<6xf16>
        vector.print %87 : vector<6xi64>
        %false_56 = index.bool.constant false
        bufferization.dealloc_tensor %10 : tensor<6xi64>
        %269 = affine.max affine_map<(d0, d1, d2) -> (-(d2 + d0 + 128), d0 mod 8, d1)>(%c2, %c13, %c13)
        %270 = index.add %c11, %88
        %271 = arith.divsi %c12152_i16, %c27473_i16 : i16
        %272 = vector.transpose %64, [0] : vector<5xf32> to vector<5xf32>
        %expanded_57 = tensor.expand_shape %from_elements [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
        %273 = vector.reduction <maxui>, %20 : vector<5xi32> into i32
        %274 = vector.load %alloc_12[%c3] : memref<6xi16>, vector<6xi16>
        affine.store %c1463441060_i32, %alloc_8[%c11] : memref<7xi32>
        %275 = vector.broadcast %cst_4 : f32 to vector<6x6xf32>
        %276 = vector.outerproduct %110, %110, %275 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
        %277 = math.floor %in : f32
        %splat_58 = tensor.splat %false_1 : tensor<6xi1>
        %inserted_59 = tensor.insert %false into %12[%c5] : tensor<7xi1>
        %278 = vector.broadcast %in : f32 to vector<f32>
        %279 = vector.transfer_write %278, %6[%60] : vector<f32>, tensor<6xf32>
        memref.assume_alignment %alloc_6, 2 : memref<6x7x6xf32>
        %alloc_60 = memref.alloc() : memref<6xf16>
        %280 = math.roundeven %3 : tensor<6xf32>
        %281 = math.roundeven %1 : tensor<6x7x6xf32>
        %282 = index.sub %c2, %c13
        %alloc_61 = memref.alloc() : memref<6xi16>
        %283 = index.maxs %86, %c0
        %284 = math.log %1 : tensor<6x7x6xf32>
        memref.store %c1463441060_i32, %alloc_24[%c4] : memref<6xi32>
        %285 = memref.load %alloc_5[%c6] : memref<7xi32>
        %286 = vector.broadcast %c27473_i16 : i16 to vector<i16>
        vector.transfer_write %286, %alloc_18[%123] : vector<i16>, memref<7xi16>
        %287 = vector.splat %c12 : vector<7xindex>
        %288 = math.ctpop %21 : tensor<6xi64>
        %289 = arith.subi %true_0, %false_1 : i1
        %290 = arith.cmpi sle, %c27473_i16, %c27473_i16 : i16
        linalg.yield %cst_4 : f32
      } -> tensor<6x7x6xf32>
      %264 = vector.maskedload %alloc_16[%c4, %c0, %c5], %68, %87 : memref<6x7x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %265 = index.floordivs %c1, %123
      memref.assume_alignment %alloc, 8 : memref<7xi32>
      %266 = vector.insert %c2006163504_i64, %87 [5] : i64 into vector<6xi64>
      %267 = arith.floordivsi %c400634096_i64, %c2006163504_i64 : i64
      scf.yield
    }
    case 2 {
      %254 = math.atan2 %from_elements, %from_elements : tensor<7xf16>
      %alloc_51 = memref.alloc() : memref<6x6xi16>
      %255 = tensor.empty() : tensor<42x6xi16>
      %256 = linalg.matmul ins(%collapsed, %alloc_51 : tensor<42x6xi16>, memref<6x6xi16>) outs(%255 : tensor<42x6xi16>) -> tensor<42x6xi16>
      %257 = arith.maxf %cst_2, %cst_2 : f32
      %258 = vector.broadcast %c2006163504_i64 : i64 to vector<6xi64>
      %259 = memref.realloc %alloc_24 : memref<6xi32> to memref<5xi32>
      %260 = arith.negf %cst_4 : f32
      %261 = math.log %cst_3 : f16
      %262 = arith.ceildivsi %c-5339_i16, %c17954_i16 : i16
      %263 = tensor.empty() : tensor<6xi16>
      %264 = index.ceildivs %c10, %c10
      %alloca_52 = memref.alloca() : memref<7xi64>
      %265 = index.maxs %c3, %c13
      %266 = vector.create_mask %c3 : vector<6xi1>
      %267 = math.atan2 %8, %8 : tensor<6xf16>
      %268 = tensor.empty() : tensor<7x5xf32>
      %269 = tensor.empty() : tensor<6x5xf32>
      %270 = linalg.matmul ins(%42, %268 : tensor<6x7xf32>, tensor<7x5xf32>) outs(%269 : tensor<6x5xf32>) -> tensor<6x5xf32>
      %271 = vector.transpose %68, [0] : vector<6xi1> to vector<6xi1>
      scf.yield
    }
    case 3 {
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_51 = arith.constant 0 : i64
      %254 = vector.transfer_read %13[%c11, %c7, %c6], %c0_i64_51 : tensor<6x7x6xi64>, vector<i64>
      %255 = arith.shli %c0_i64, %c400634096_i64 : i64
      %256 = math.roundeven %52 : tensor<6x5xf32>
      %collapsed_52 = tensor.collapse_shape %cast_29 [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
      %257 = vector.reduction <xor>, %20 : vector<5xi32> into i32
      %258 = vector.insertelement %c1463441060_i32, %67[%c5 : index] : vector<6xi32>
      %259 = arith.shrui %false, %true_0 : i1
      %inserted_53 = tensor.insert %cst into %5[%c2] : tensor<6xf16>
      %260 = arith.maxui %c2006163504_i64, %c2006163504_i64 : i64
      %261 = vector.create_mask %c11 : vector<6xi1>
      %262 = arith.cmpi sgt, %c27473_i16, %c-5339_i16 : i16
      memref.alloca_scope  {
        memref.assume_alignment %39, 8 : memref<6x7x6xi1>
        %266 = arith.xori %c1463441060_i32, %c1463441060_i32 : i32
        %267 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2, d0 floordiv 2, d2 - 48)>(%c1, %c9, %c13, %41)
        %268 = arith.andi %c-5339_i16, %c-5339_i16 : i16
        %269 = math.ctlz %7 : tensor<6xi64>
        %270 = memref.atomic_rmw addi %c400634096_i64, %alloc_16[%c3, %c2, %c4] : (i64, memref<6x7x6xi64>) -> i64
        %rank_55 = tensor.rank %0 : tensor<7xi32>
        %271 = math.round %splat_26 : tensor<6xf32>
        %272 = vector.extract_strided_slice %67 {offsets = [4], sizes = [1], strides = [1]} : vector<6xi32> to vector<1xi32>
        memref.store %cst_4, %alloc_14[%c1, %c3, %c4] : memref<6x7x6xf32>
        %273 = arith.muli %false_25, %false_25 : i1
        %274 = index.ceildivs %c15, %c8
        %275 = index.divs %274, %c11
        %276 = math.floor %splat_23 : tensor<6xf16>
        vector.print %67 : vector<6xi32>
        %true_56 = index.bool.constant true
        %277 = vector.extract %68[3] : vector<6xi1>
        %278 = index.sizeof
        %279 = math.cos %3 : tensor<6xf32>
        %alloc_57 = memref.alloc() : memref<6xi16>
        %280 = math.log %8 : tensor<6xf16>
        %281 = math.cos %8 : tensor<6xf16>
        %282 = memref.atomic_rmw muli %c1463441060_i32, %alloc_5[%c2] : (i32, memref<7xi32>) -> i32
        affine.store %cst_4, %alloc_6[%c5, %c1, %c2] : memref<6x7x6xf32>
        %283 = vector.transpose %120, [0] : vector<7xf16> to vector<7xf16>
        %284 = math.ceil %cst_2 : f32
        %285 = vector.broadcast %c1463441060_i32 : i32 to vector<6x7x6xi32>
        %286 = vector.broadcast %false_1 : i1 to vector<6x7x6xi1>
        %287 = vector.gather %alloc_13[%c11] [%285], %286, %285 : memref<7xi32>, vector<6x7x6xi32>, vector<6x7x6xi1>, vector<6x7x6xi32> into vector<6x7x6xi32>
        %288 = index.add %c5, %c0
        %289 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 32)>(%c2, %116, %c2)
        %expanded_58 = tensor.expand_shape %6 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        %from_elements_59 = tensor.from_elements %c-5339_i16, %c-424_i16, %c-424_i16, %c-5339_i16, %c27473_i16, %c-424_i16, %c27473_i16 : tensor<7xi16>
        %290 = affine.min affine_map<(d0) -> (d0 floordiv 2, d0, d0 floordiv 4 - ((d0 floordiv 2) floordiv 2 - 16) - ((d0 floordiv 2) floordiv 2 - 16), d0 floordiv 2)>(%c12)
      }
      %alloca_54 = memref.alloca() : memref<6x7x6xi16>
      %263 = vector.broadcast %c17954_i16 : i16 to vector<6xi16>
      %264 = index.maxs %c13, %116
      %265 = arith.minui %false_1, %false : i1
      scf.yield
    }
    case 4 {
      %254 = affine.min affine_map<(d0, d1) -> (d1 floordiv 128, (d1 floordiv 128) * 8, (d1 floordiv 128) * 128, -d0)>(%60, %c12)
      %255 = arith.mulf %cst_3, %cst : f16
      memref.assume_alignment %alloc_12, 1 : memref<6xi16>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<6x7x6xf32>) outs(%1 : tensor<6x7x6xf32>) {
      ^bb0(%in: f32, %out: f32):
        %269 = math.copysign %8, %8 : tensor<6xf16>
        %270 = index.castu %c14 : index to i32
        %271 = arith.addf %out, %cst_4 : f32
        %272 = math.fma %127, %127, %cst_4 : f32
        %273 = bufferization.to_memref %2 : memref<6xi16>
        %alloc_53 = memref.alloc() : memref<7xi32>
        %274 = vector.broadcast %false_25 : i1 to vector<5xi1>
        %275 = vector.maskedload %alloc_7[%c3, %c3, %c3], %274, %20 : memref<6x7x6xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        %276 = math.log10 %5 : tensor<6xf16>
        %false_54 = index.bool.constant false
        %277 = vector.maskedload %alloc[%c2], %68, %67 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %rank_55 = tensor.rank %16 : tensor<6xi64>
        %278 = math.fpowi %cst_2, %c1463441060_i32 : f32, i32
        %279 = affine.max affine_map<(d0, d1, d2) -> (-d0, d1 + d0 + d0)>(%c5, %c4, %c5)
        memref.store %false, %39[%c5, %c5, %c5] : memref<6x7x6xi1>
        %alloc_56 = memref.alloc() : memref<7xi32>
        %280 = vector.broadcast %cst_4 : f32 to vector<6xf32>
        %281 = math.sqrt %5 : tensor<6xf16>
        %282 = math.log2 %52 : tensor<6x5xf32>
        %283 = vector.splat %true_0 : vector<6x7x6xi1>
        %alloca_57 = memref.alloca() : memref<6xi1>
        %284 = tensor.empty() : tensor<6x7x6xi32>
        %285 = math.fpowi %1, %284 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
        %286 = tensor.empty() : tensor<5x7xf32>
        %287 = tensor.empty() : tensor<6x7xf32>
        %288 = linalg.matmul ins(%52, %286 : tensor<6x5xf32>, tensor<5x7xf32>) outs(%287 : tensor<6x7xf32>) -> tensor<6x7xf32>
        %289 = math.ipowi %14, %14 : tensor<7xi16>
        %290 = arith.shli %c-5339_i16, %c12152_i16 : i16
        %291 = math.roundeven %from_elements : tensor<7xf16>
        %292 = tensor.empty(%c7) : tensor<?xi32>
        %293 = vector.extract_strided_slice %119 {offsets = [3], sizes = [1], strides = [1]} : vector<7xi32> to vector<1xi32>
        %294 = math.exp2 %cst_2 : f32
        %295 = arith.shrsi %c27473_i16, %c-5339_i16 : i16
        %true_58 = index.bool.constant true
        %296 = math.log %287 : tensor<6x7xf32>
        %297 = arith.addi %true_58, %true : i1
        linalg.yield %in : f32
      } -> tensor<6x7x6xf32>
      %257 = tensor.empty() : tensor<6x7x6xi32>
      %258 = math.fpowi %1, %257 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
      %259 = vector.maskedload %alloc_10[%c1], %68, %67 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %260 = index.maxs %c9, %c3
      %261 = vector.extract_strided_slice %68 {offsets = [2], sizes = [4], strides = [1]} : vector<6xi1> to vector<4xi1>
      %262 = math.cos %3 : tensor<6xf32>
      %263 = math.exp2 %6 : tensor<6xf32>
      %alloc_51 = memref.alloc() : memref<6x7xi64>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51 : memref<6x7xi64>) outs(%9 : tensor<6x7x6xi64>) {
      ^bb0(%in: i64, %out: i64):
        %269 = index.floordivs %c5, %c1
        %splat_53 = tensor.splat %false_25 : tensor<6xi1>
        %270 = affine.load %alloc_12[%c1] : memref<6xi16>
        %271 = vector.broadcast %127 : f32 to vector<6x6xf32>
        %272 = vector.outerproduct %110, %110, %271 {kind = #vector.kind<minf>} : vector<6xf32>, vector<6xf32>
        %273 = arith.divsi %in, %out : i64
        %alloc_54 = memref.alloc() : memref<7xi1>
        %274 = vector.create_mask %c4 : vector<7xi1>
        %275 = vector.extract %87[2] : vector<6xi64>
        %276 = vector.reduction <or>, %67 : vector<6xi32> into i32
        %277 = vector.broadcast %cst : f16 to vector<6x7xf16>
        %dest, %accumulated_value = vector.scan <add>, %277, %120 {inclusive = true, reduction_dim = 0 : i64} : vector<6x7xf16>, vector<7xf16>
        %278 = vector.broadcast %c400634096_i64 : i64 to vector<7xi64>
        %279 = vector.maskedload %alloc_19[%c3, %c2, %c5], %118, %278 : memref<6x7x6xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %280 = vector.broadcast %cst : f16 to vector<5x7xf16>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %280, %117 {inclusive = false, reduction_dim = 0 : i64} : vector<5x7xf16>, vector<7xf16>
        memref.store %cst_4, %alloc_6[%c1, %c3, %c4] : memref<6x7x6xf32>
        %alloc_57 = memref.alloc() : memref<6x7xi16>
        %281 = tensor.empty() : tensor<42x7xi16>
        %282 = linalg.matmul ins(%collapsed, %alloc_57 : tensor<42x6xi16>, memref<6x7xi16>) outs(%281 : tensor<42x7xi16>) -> tensor<42x7xi16>
        %true_58 = index.bool.constant true
        %rank_59 = tensor.rank %13 : tensor<6x7x6xi64>
        %283 = arith.subi %false_25, %true_0 : i1
        %284 = arith.remf %cst, %cst : f16
        %285 = tensor.empty() : tensor<5x6xf32>
        %286 = tensor.empty() : tensor<6x6xf32>
        %287 = linalg.matmul ins(%52, %285 : tensor<6x5xf32>, tensor<5x6xf32>) outs(%286 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %288 = arith.negf %127 : f32
        %splat_60 = tensor.splat %270 : tensor<6xi16>
        %289 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
        %290 = vector.broadcast %cst_2 : f32 to vector<7xf32>
        %dest_61, %accumulated_value_62 = vector.scan <add>, %289, %290 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xf32>, vector<7xf32>
        %291 = math.fma %cst_4, %127, %cst_4 : f32
        %292 = math.atan2 %cst_4, %127 : f32
        %293 = arith.remf %cst_3, %cst_3 : f16
        %294 = arith.divsi %true_58, %true_58 : i1
        %295 = math.ceil %6 : tensor<6xf32>
        %296 = index.maxu %116, %c6
        %297 = index.maxs %123, %c7
        %298 = arith.remf %cst_3, %cst : f16
        %299 = vector.transpose %110, [0] : vector<6xf32> to vector<6xf32>
        %300 = index.ceildivs %c5, %c7
        linalg.yield %c400634096_i64 : i64
      } -> tensor<6x7x6xi64>
      %265 = vector.extract %124[6] : vector<7xi16>
      %266 = vector.load %alloc_12[%c4] : memref<6xi16>, vector<6xi16>
      %267 = math.log1p %8 : tensor<6xf16>
      %268 = math.log2 %6 : tensor<6xf32>
      %alloc_52 = memref.alloc() : memref<7xi1>
      scf.yield
    }
    default {
      %254 = arith.negf %cst_2 : f32
      %255 = vector.broadcast %127 : f32 to vector<5x5xf32>
      %256 = vector.outerproduct %64, %64, %255 {kind = #vector.kind<add>} : vector<5xf32>, vector<5xf32>
      %257 = arith.muli %c400634096_i64, %c400634096_i64 : i64
      %false_51 = index.bool.constant false
      affine.for %arg1 = 0 to 84 {
      }
      %258 = affine.if affine_set<(d0, d1) : (-d1 - (d0 * 8 + 32) + 64 == 0, d0 + (d0 * 8) floordiv 16 + 2 == 0)>(%c7, %c7) -> i1 {
        %splat_53 = tensor.splat %cst_4 : tensor<7xf32>
        %270 = bufferization.clone %alloc_8 : memref<7xi32> to memref<7xi32>
        %271 = vector.insertelement %c1463441060_i32, %67[%c12 : index] : vector<6xi32>
        %272 = arith.remsi %c27473_i16, %c12152_i16 : i16
        %273 = math.atan2 %cst_4, %cst_2 : f32
        %274 = index.castu %c-424_i16 : i16 to index
        %alloc_54 = memref.alloc() : memref<6xi64>
        %275 = affine.apply affine_map<(d0, d1) -> (d0 + 16)>(%c8, %c5)
        affine.yield %false : i1
      } else {
        %alloc_53 = memref.alloc() : memref<6xi32>
        memref.copy %alloc_24, %alloc_53 : memref<6xi32> to memref<6xi32>
        %270 = vector.transpose %64, [0] : vector<5xf32> to vector<5xf32>
        %271 = index.maxu %c8, %c14
        %272 = arith.divui %c12152_i16, %c17954_i16 : i16
        %rank_54 = tensor.rank %9 : tensor<6x7x6xi64>
        %273 = arith.divf %cst_2, %127 : f32
        %274 = vector.broadcast %false_1 : i1 to vector<i1>
        vector.transfer_write %274, %alloc_20[%c12] : vector<i1>, memref<6xi1>
        %275 = arith.mulf %127, %cst_4 : f32
        affine.yield %false_51 : i1
      }
      %259 = math.roundeven %6 : tensor<6xf32>
      %260 = memref.realloc %alloc_12 : memref<6xi16> to memref<5xi16>
      %extracted = tensor.extract %8[%c4] : tensor<6xf16>
      %261 = vector.broadcast %cst : f16 to vector<7x7xf16>
      %262 = vector.outerproduct %120, %117, %261 {kind = #vector.kind<add>} : vector<7xf16>, vector<7xf16>
      %263 = arith.cmpf ogt, %127, %cst_2 : f32
      %inserted_52 = tensor.insert %cst into %from_elements[%c1] : tensor<7xf16>
      %264 = tensor.empty() : tensor<5x5xf32>
      %265 = tensor.empty() : tensor<6x5xf32>
      %266 = linalg.matmul ins(%52, %264 : tensor<6x5xf32>, tensor<5x5xf32>) outs(%265 : tensor<6x5xf32>) -> tensor<6x5xf32>
      %267 = math.log1p %splat_23 : tensor<6xf16>
      %268 = index.maxs %c3, %116
      %269 = arith.remsi %c2006163504_i64, %c2006163504_i64 : i64
    }
    %128 = vector.transpose %109, [0] : vector<6xf32> to vector<6xf32>
    %129 = arith.maxui %c1463441060_i32, %c1463441060_i32 : i32
    %130 = memref.alloca_scope  -> (memref<6x7x6xf32>) {
      %254 = arith.addf %cst_4, %cst_4 : f32
      %255 = index.castu %true : i1 to index
      scf.if %true_0 {
        memref.assume_alignment %alloc_15, 4 : memref<6xi1>
        %279 = arith.shrsi %false_25, %true : i1
        %280 = index.add %c15, %c5
        %281 = vector.insertelement %c1463441060_i32, %69[%c3 : index] : vector<6xi32>
        %282 = arith.andi %c17954_i16, %c12152_i16 : i16
        %283 = vector.broadcast %c400634096_i64 : i64 to vector<7xi64>
        %284 = math.absf %from_elements : tensor<7xf16>
        %285 = arith.muli %true_0, %true : i1
      }
      %256 = vector.broadcast %cst_4 : f32 to vector<7xf32>
      %257 = index.ceildivu %c14, %c6
      memref.store %c1463441060_i32, %alloc[%c1] : memref<7xi32>
      %258 = scf.index_switch %86 -> i64 
      case 1 {
        %279 = index.maxs %c10, %60
        %alloc_55 = memref.alloc() : memref<6xf16>
        %280 = memref.realloc %alloc_24 : memref<6xi32> to memref<7xi32>
        %281 = arith.addf %127, %127 : f32
        %282 = arith.shrsi %c2006163504_i64, %c400634096_i64 : i64
        %283 = arith.addf %127, %cst_2 : f32
        %284 = arith.remf %cst, %cst : f16
        %285 = vector.insertelement %cst_2, %109[%c13 : index] : vector<6xf32>
        %286 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c14, %c9, %60, %c3)
        %287 = arith.subi %c400634096_i64, %c2006163504_i64 : i64
        %288 = vector.maskedload %alloc_14[%c1, %c0, %c2], %68, %110 : memref<6x7x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %289 = math.absi %c1463441060_i32 : i32
        %290 = vector.transpose %119, [0] : vector<7xi32> to vector<7xi32>
        affine.store %cst_2, %alloc_6[%c12, %c4, %c2] : memref<6x7x6xf32>
        %291 = math.exp %splat_26 : tensor<6xf32>
        %292 = math.log %8 : tensor<6xf16>
        scf.yield %c2006163504_i64 : i64
      }
      case 2 {
        bufferization.dealloc_tensor %18 : tensor<i16>
        %279 = vector.reduction <add>, %109 : vector<6xf32> into f32
        %280 = math.round %8 : tensor<6xf16>
        %281 = index.maxu %c6, %c1
        affine.store %c12152_i16, %alloc_18[%c15] : memref<7xi16>
        %alloc_55 = memref.alloc() : memref<6xi32>
        memref.copy %alloc_24, %alloc_55 : memref<6xi32> to memref<6xi32>
        %282 = arith.muli %c12152_i16, %c12152_i16 : i16
        %283 = arith.muli %c17954_i16, %c12152_i16 : i16
        %alloca_56 = memref.alloca() : memref<6xi1>
        %284 = arith.addi %c27473_i16, %c-5339_i16 : i16
        %285 = arith.remui %c-5339_i16, %c-5339_i16 : i16
        affine.store %c2006163504_i64, %alloc_9[%c12, %c7, %c4] : memref<6x7x6xi64>
        %286 = math.ctlz %2 : tensor<6xi16>
        %287 = index.maxs %93, %c15
        %alloca_57 = memref.alloca() : memref<7xi64>
        %288 = arith.minui %c-5339_i16, %c-424_i16 : i16
        scf.yield %c400634096_i64 : i64
      }
      case 3 {
        %279 = index.castu %c-424_i16 : i16 to index
        %280 = vector.create_mask %c13 : vector<7xi1>
        %281 = arith.minui %true, %false : i1
        %282 = arith.muli %c17954_i16, %c-5339_i16 : i16
        bufferization.dealloc_tensor %cast_31 : tensor<?xi64>
        %283 = memref.atomic_rmw addi %c2006163504_i64, %alloc_19[%c0, %c1, %c2] : (i64, memref<6x7x6xi64>) -> i64
        %284 = math.fpowi %cst_2, %c1463441060_i32 : f32, i32
        %extracted = tensor.extract %17[%c1] : tensor<6xi64>
        %285 = vector.reduction <maxsi>, %69 : vector<6xi32> into i32
        %286 = math.round %from_elements : tensor<7xf16>
        %287 = arith.minui %c-5339_i16, %c27473_i16 : i16
        %288 = arith.mulf %127, %cst_4 : f32
        %289 = arith.addi %c1463441060_i32, %c1463441060_i32 : i32
        memref.assume_alignment %alloc_16, 1 : memref<6x7x6xi64>
        %290 = arith.mulf %cst_2, %cst_4 : f32
        %291 = arith.ceildivsi %c400634096_i64, %c2006163504_i64 : i64
        scf.yield %extracted : i64
      }
      default {
        %279 = math.atan %6 : tensor<6xf32>
        %280 = arith.subi %c1463441060_i32, %c1463441060_i32 : i32
        %281 = arith.cmpi sgt, %true, %false : i1
        %282 = math.log2 %3 : tensor<6xf32>
        %283 = arith.muli %false, %true_0 : i1
        %284 = index.maxs %c11, %c7
        memref.assume_alignment %alloc_10, 1 : memref<7xi32>
        %285 = index.ceildivu %c10, %c14
        %false_55 = arith.constant false
        %286 = vector.transfer_read %12[%c9], %false_55 : tensor<7xi1>, vector<i1>
        %287 = arith.addi %true_0, %false_25 : i1
        %288 = vector.extract %256[4] : vector<7xf32>
        %expanded_56 = tensor.expand_shape %7 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %289 = math.fpowi %8, %78 : tensor<6xf16>, tensor<6xi32>
        memref.assume_alignment %39, 4 : memref<6x7x6xi1>
        %290 = arith.remf %cst_4, %cst_4 : f32
        %from_elements_57 = tensor.from_elements %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32 : tensor<7xi32>
        scf.yield %c400634096_i64 : i64
      }
      %259 = math.exp2 %5 : tensor<6xf16>
      %260 = arith.remsi %c1463441060_i32, %c1463441060_i32 : i32
      %261 = arith.shrsi %true_0, %true_0 : i1
      %262 = math.roundeven %3 : tensor<6xf32>
      %263 = math.atan %6 : tensor<6xf32>
      %264 = vector.extract_strided_slice %109 {offsets = [1], sizes = [4], strides = [1]} : vector<6xf32> to vector<4xf32>
      %265 = math.log10 %127 : f32
      %266 = vector.transpose %264, [0] : vector<4xf32> to vector<4xf32>
      %collapsed_51 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x7x6xf32> into tensor<42x6xf32>
      %inserted_52 = tensor.insert %true into %12[%c4] : tensor<7xi1>
      %267 = math.ctlz %14 : tensor<7xi16>
      memref.alloca_scope  {
        %expanded_55 = tensor.expand_shape %15 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %279 = affine.min affine_map<(d0) -> (0, ((d0 + 8) floordiv 64) floordiv 16 - (d0 - (d0 + 8) floordiv 64), ((d0 - (d0 + 8) floordiv 64) ceildiv 32) mod 128)>(%c15)
        memref.assume_alignment %alloc_19, 2 : memref<6x7x6xi64>
        %alloca_56 = memref.alloca() : memref<6x7x6xi32>
        %280 = arith.andi %c2006163504_i64, %c400634096_i64 : i64
        %281 = arith.andi %c17954_i16, %c-424_i16 : i16
        %282 = arith.ceildivsi %true, %false_25 : i1
        memref.assume_alignment %alloc_5, 4 : memref<7xi32>
        %283 = arith.divsi %c2006163504_i64, %c2006163504_i64 : i64
        %284 = vector.flat_transpose %264 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %285 = math.log2 %42 : tensor<6x7xf32>
        %286 = arith.ceildivsi %c1463441060_i32, %c1463441060_i32 : i32
        %287 = math.fpowi %3, %78 : tensor<6xf32>, tensor<6xi32>
        %288 = index.ceildivu %255, %c12
        %289 = math.exp2 %6 : tensor<6xf32>
        %290 = math.absf %6 : tensor<6xf32>
        %291 = vector.load %alloc_8[%c3] : memref<7xi32>, vector<6xi32>
        %292 = vector.reduction <minsi>, %124 : vector<7xi16> into i16
        vector.print %117 : vector<7xf16>
        %293 = vector.broadcast %c12152_i16 : i16 to vector<6xi16>
        %294 = math.ipowi %c2006163504_i64, %c2006163504_i64 : i64
        %295 = affine.apply affine_map<(d0, d1) -> (d1)>(%c2, %c5)
        %296 = bufferization.to_memref %12 : memref<7xi1>
        %297 = vector.broadcast %cst : f16 to vector<f16>
        %298 = vector.transfer_write %297, %5[%c2] : vector<f16>, tensor<6xf16>
        %299 = math.floor %52 : tensor<6x5xf32>
        %300 = arith.ceildivsi %true_0, %true : i1
        %301 = math.ctlz %17 : tensor<6xi64>
        %302 = vector.extract_strided_slice %69 {offsets = [4], sizes = [2], strides = [1]} : vector<6xi32> to vector<2xi32>
        %303 = arith.shrsi %true, %true_0 : i1
        %304 = arith.remui %false_25, %true_0 : i1
        %305 = math.fma %cst_3, %cst_3, %cst : f16
        %306 = math.ceil %cst : f16
      }
      %268 = arith.cmpf uge, %cst_3, %cst : f16
      %269 = vector.extract %264[2] : vector<4xf32>
      %270 = index.maxs %41, %c15
      %alloca_53 = memref.alloca() : memref<6xi32>
      %271 = math.rsqrt %8 : tensor<6xf16>
      %inserted_54 = tensor.insert %c-424_i16 into %reduced[] : tensor<i16>
      memref.store %c1463441060_i32, %alloc_24[%c0] : memref<6xi32>
      %272 = math.exp2 %cst_3 : f16
      %273 = arith.subi %c400634096_i64, %c2006163504_i64 : i64
      %274 = math.fma %cst, %cst, %cst_3 : f16
      %275 = math.absf %8 : tensor<6xf16>
      %276 = arith.negf %cst_4 : f32
      %277 = vector.broadcast %cst_2 : f32 to vector<6x7x6xf32>
      %278 = vector.fma %277, %277, %277 : vector<6x7x6xf32>
      memref.alloca_scope.return %alloc_14 : memref<6x7x6xf32>
    }
    %alloc_32 = memref.alloc() : memref<6xf32>
    %131 = math.log %cst_4 : f32
    %132 = vector.splat %c13 : vector<6xindex>
    %splat_33 = tensor.splat %false : tensor<6xi1>
    %133 = affine.max affine_map<(d0, d1) -> ((d0 + d0 ceildiv 128) ceildiv 2, (d0 + d0 ceildiv 128) floordiv 4 + 32, (d0 ceildiv 2) * 16)>(%88, %c2)
    %134 = math.log %1 : tensor<6x7x6xf32>
    %135 = arith.shrsi %false, %true_0 : i1
    %expanded_34 = tensor.expand_shape %12 [[0, 1]] : tensor<7xi1> into tensor<7x1xi1>
    %136 = arith.cmpi uge, %false, %false_1 : i1
    %137 = vector.broadcast %c1463441060_i32 : i32 to vector<7x7xi32>
    %138 = vector.outerproduct %119, %119, %137 {kind = #vector.kind<maxui>} : vector<7xi32>, vector<7xi32>
    %139 = math.log1p %1 : tensor<6x7x6xf32>
    %140 = arith.remsi %c2006163504_i64, %c400634096_i64 : i64
    %141 = arith.subi %false, %false : i1
    %142 = affine.apply affine_map<(d0) -> ((d0 floordiv 128) mod 2 + 4)>(%c12)
    %143 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 * 2 - d0) ceildiv 64, d3, (d3 floordiv 8) mod 2, d0)>(%133, %93, %c9, %142)
    %collapsed_35 = tensor.collapse_shape %42 [[0, 1]] : tensor<6x7xf32> into tensor<42xf32>
    %144 = vector.multi_reduction <add>, %20, %c1463441060_i32 [0] : vector<5xi32> to i32
    affine.store %144, %alloc_24[%c8] : memref<6xi32>
    %145 = arith.xori %c1463441060_i32, %144 : i32
    %146 = math.exp %127 : f32
    %147 = arith.cmpi ule, %false_1, %false_1 : i1
    %148 = vector.extract %68[2] : vector<6xi1>
    %149 = math.ctlz %splat_33 : tensor<6xi1>
    %150 = math.floor %from_elements : tensor<7xf16>
    %151 = math.exp2 %3 : tensor<6xf32>
    %152 = tensor.empty() : tensor<6x5xi32>
    %153 = math.fpowi %52, %152 : tensor<6x5xf32>, tensor<6x5xi32>
    %154 = scf.if %false_1 -> (memref<6x7x6xi1>) {
      %254 = vector.splat %60 : vector<6xindex>
      %255 = arith.negf %cst_2 : f32
      %256 = vector.broadcast %c9 : index to vector<6xindex>
      vector.scatter %alloc_19[%c3, %c6, %c3] [%256], %68, %87 : memref<6x7x6xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
      %257 = index.divs %c3, %142
      %258 = index.add %c3, %123
      %259 = arith.negf %127 : f32
      %260 = math.ceil %cst : f16
      %261 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %262 = vector.outerproduct %120, %120, %261 {kind = #vector.kind<minf>} : vector<7xf16>, vector<7xf16>
      scf.yield %39 : memref<6x7x6xi1>
    } else {
      %254 = vector.maskedload %alloc_15[%c2], %68, %68 : memref<6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
      %255 = arith.addf %cst, %cst_3 : f16
      %alloca_51 = memref.alloca() : memref<6xf16>
      %alloc_52 = memref.alloc() : memref<5x7xf32>
      %256 = tensor.empty() : tensor<6x7xf32>
      %257 = linalg.matmul ins(%52, %alloc_52 : tensor<6x5xf32>, memref<5x7xf32>) outs(%256 : tensor<6x7xf32>) -> tensor<6x7xf32>
      %258 = arith.minui %c12152_i16, %c-5339_i16 : i16
      %259 = arith.cmpi uge, %c27473_i16, %c-424_i16 : i16
      %260 = vector.maskedload %alloc_19[%c0, %c6, %c5], %254, %87 : memref<6x7x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %261 = math.round %6 : tensor<6xf32>
      scf.yield %39 : memref<6x7x6xi1>
    }
    %c1_i64 = arith.constant 1 : i64
    %155 = vector.transfer_read %16[%c0], %c1_i64 : tensor<6xi64>, vector<i64>
    %156 = affine.apply affine_map<(d0) -> (-(d0 floordiv 8))>(%c7)
    %157 = index.ceildivs %c4, %c8
    memref.assume_alignment %alloc_16, 16 : memref<6x7x6xi64>
    %158 = affine.if affine_set<(d0, d1, d2) : (d1 - (d2 mod 8 + 16) == 0)>(%c4, %c5, %c13) -> i16 {
      %alloc_51 = memref.alloc() : memref<6xf32>
      %254 = math.log1p %3 : tensor<6xf32>
      %extracted = tensor.extract %17[%c4] : tensor<6xi64>
      %255 = vector.broadcast %false_1 : i1 to vector<6xi1>
      %256 = arith.cmpf ule, %cst_4, %cst_2 : f32
      %257 = memref.atomic_rmw addi %c1463441060_i32, %alloc_24[%c0] : (i32, memref<6xi32>) -> i32
      %258 = bufferization.clone %39 : memref<6x7x6xi1> to memref<6x7x6xi1>
      %from_elements_52 = tensor.from_elements %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %144, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %144, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %144, %c1463441060_i32, %144, %144, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %144, %c1463441060_i32, %144, %144, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %144, %144, %c1463441060_i32, %144, %144, %144, %c1463441060_i32, %c1463441060_i32, %144, %c1463441060_i32 : tensor<6x7x6xi32>
      affine.yield %c-5339_i16 : i16
    } else {
      %254 = math.log2 %8 : tensor<6xf16>
      %cast_51 = tensor.cast %9 : tensor<6x7x6xi64> to tensor<?x?x?xi64>
      %255 = bufferization.clone %154 : memref<6x7x6xi1> to memref<6x7x6xi1>
      %256 = arith.ceildivsi %false, %false : i1
      %257 = bufferization.to_tensor %alloc : memref<7xi32>
      %cst_52 = arith.constant 1.000000e+00 : f32
      %258 = vector.transfer_read %alloc_14[%c15, %c12, %c9], %cst_52 : memref<6x7x6xf32>, vector<6x6xf32>
      %259 = tensor.empty() : tensor<7xi32>
      %mapped_53 = linalg.map ins(%alloc_5, %alloc_5, %0 : memref<7xi32>, memref<7xi32>, tensor<7xi32>) outs(%259 : tensor<7xi32>)
        (%in: i32, %in_54: i32, %in_55: i32) {
          %261 = arith.subi %c400634096_i64, %c1_i64 : i64
          %alloca_56 = memref.alloca() : memref<7xf16>
          %262 = vector.splat %c1463441060_i32 : vector<6x7x6xi32>
          %false_57 = index.bool.constant false
          %263 = index.add %c4, %86
          %264 = math.log2 %collapsed_35 : tensor<42xf32>
          %265 = math.absf %8 : tensor<6xf16>
          %266 = index.floordivs %c10, %c7
          %267 = bufferization.to_tensor %alloc_15 : memref<6xi1>
          %268 = vector.insertelement %c400634096_i64, %87[%c0 : index] : vector<6xi64>
          %true_58 = index.bool.constant true
          %269 = vector.broadcast %c0 : index to vector<7xindex>
          %270 = vector.broadcast %c400634096_i64 : i64 to vector<7xi64>
          vector.scatter %alloc_9[%c3, %c1, %c0] [%269], %118, %270 : memref<6x7x6xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
          %271 = index.divs %266, %41
          %272 = math.absi %false_57 : i1
          %273 = affine.load %alloc_7[%c5, %c4, %c14] : memref<6x7x6xi32>
          %274 = arith.remsi %true_58, %false_25 : i1
          %275 = math.ctpop %16 : tensor<6xi64>
          %276 = arith.shrsi %false_57, %true : i1
          %277 = vector.broadcast %c27473_i16 : i16 to vector<6x7x6xi16>
          %inserted_59 = tensor.insert %in_54 into %257[%c2] : tensor<7xi32>
          %278 = math.roundeven %3 : tensor<6xf32>
          %c1_i32 = arith.constant 1 : i32
          %c0_i32_60 = arith.constant 0 : i32
          %279 = vector.transfer_read %alloc_8[%133], %c0_i32_60 : memref<7xi32>, vector<i32>
          %from_elements_61 = tensor.from_elements %c-5339_i16, %c27473_i16, %c-424_i16, %c27473_i16, %c12152_i16, %c-5339_i16 : tensor<6xi16>
          %280 = index.castu %c3 : index to i32
          %281 = vector.load %alloc[%c4] : memref<7xi32>, vector<6x7x6xi32>
          %282 = arith.remf %cst_3, %cst_3 : f16
          %283 = vector.broadcast %false_57 : i1 to vector<6x6xi1>
          %284 = vector.outerproduct %68, %68, %283 {kind = #vector.kind<minui>} : vector<6xi1>, vector<6xi1>
          %collapsed_62 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
          %285 = vector.maskedload %alloc[%c1], %68, %69 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
          %286 = arith.addf %cst_2, %127 : f32
          %alloca_63 = memref.alloca() : memref<6xf16>
          %287 = arith.negf %cst_2 : f32
          %c1_i32_64 = arith.constant 1 : i32
          linalg.yield %c1_i32_64 : i32
        }
      %260 = math.ceil %splat_26 : tensor<6xf32>
      affine.yield %c-424_i16 : i16
    }
    %159 = math.ceil %6 : tensor<6xf32>
    %160 = math.tanh %52 : tensor<6x5xf32>
    %161 = math.ipowi %c12152_i16, %c12152_i16 : i16
    %162 = scf.while (%arg1 = %alloc_12) : (memref<6xi16>) -> memref<6xi16> {
      %254 = vector.broadcast %116 : index to vector<5xindex>
      %255 = vector.broadcast %true_0 : i1 to vector<5xi1>
      %256 = vector.broadcast %c-424_i16 : i16 to vector<5xi16>
      vector.scatter %arg1[%c5] [%254], %255, %256 : memref<6xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
      %257 = vector.broadcast %c1463441060_i32 : i32 to vector<5x5xi32>
      %258 = vector.outerproduct %20, %20, %257 {kind = #vector.kind<minsi>} : vector<5xi32>, vector<5xi32>
      %alloc_51 = memref.alloc() : memref<6xf32>
      %inserted_52 = tensor.insert %c2006163504_i64 into %17[%c0] : tensor<6xi64>
      %259 = index.ceildivu %60, %93
      %260 = index.divu %c8, %c15
      %261 = math.ctlz %c1463441060_i32 : i32
      %262 = arith.cmpf une, %cst, %cst_3 : f16
      scf.condition(%true_0) %alloc_12 : memref<6xi16>
    } do {
    ^bb0(%arg1: memref<6xi16>):
      %254 = vector.extract %20[1] : vector<5xi32>
      %255 = math.ctpop %23 : tensor<i64>
      %256 = math.rsqrt %127 : f32
      %257 = scf.index_switch %41 -> tensor<6xi1> 
      case 1 {
        %272 = vector.multi_reduction <add>, %67, %144 [0] : vector<6xi32> to i32
        %273 = math.atan %cst_3 : f16
        %274 = index.divs %c3, %c10
        %275 = arith.minui %c400634096_i64, %c2006163504_i64 : i64
        %276 = vector.broadcast %false_1 : i1 to vector<7xi1>
        %277 = math.ctlz %4 : tensor<6xi1>
        %collapsed_52 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<6x7x6xi64> into tensor<42x6xi64>
        %false_53 = index.bool.constant false
        %alloc_54 = memref.alloc() : memref<7xi32>
        %278 = math.ipowi %expanded_34, %expanded_34 : tensor<7x1xi1>
        %279 = math.ctpop %9 : tensor<6x7x6xi64>
        %280 = arith.shli %c1_i64, %c2006163504_i64 : i64
        %inserted_55 = tensor.insert %c400634096_i64 into %16[%c0] : tensor<6xi64>
        %281 = vector.extract_strided_slice %120 {offsets = [3], sizes = [1], strides = [1]} : vector<7xf16> to vector<1xf16>
        %282 = vector.maskedload %alloc_13[%c6], %68, %67 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %283 = math.floor %127 : f32
        scf.yield %4 : tensor<6xi1>
      }
      case 2 {
        %272 = arith.negf %127 : f32
        %273 = math.roundeven %6 : tensor<6xf32>
        %274 = math.log %42 : tensor<6x7xf32>
        %275 = vector.extract_strided_slice %118 {offsets = [1], sizes = [6], strides = [1]} : vector<7xi1> to vector<6xi1>
        %276 = arith.negf %127 : f32
        %277 = vector.transpose %118, [0] : vector<7xi1> to vector<7xi1>
        %278 = vector.load %alloc_24[%c4] : memref<6xi32>, vector<6xi32>
        %279 = math.floor %5 : tensor<6xf16>
        %280 = index.divs %c1, %c12
        %281 = vector.reduction <xor>, %69 : vector<6xi32> into i32
        %inserted_52 = tensor.insert %c1_i64 into %13[%c3, %c2, %c5] : tensor<6x7x6xi64>
        %282 = math.ctpop %9 : tensor<6x7x6xi64>
        %283 = vector.insertelement %c1463441060_i32, %69[%133 : index] : vector<6xi32>
        %284 = arith.remui %c1463441060_i32, %c1463441060_i32 : i32
        %collapsed_53 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
        %285 = arith.shli %false_25, %false : i1
        scf.yield %splat_33 : tensor<6xi1>
      }
      case 3 {
        %alloc_52 = memref.alloc() : memref<7xi64>
        %false_53 = index.bool.constant false
        %272 = arith.minui %false, %false_1 : i1
        %273 = arith.shli %c17954_i16, %c-5339_i16 : i16
        %274 = memref.realloc %alloc_20 : memref<6xi1> to memref<7xi1>
        affine.store %cst_2, %alloc_6[%c14, %c10, %c11] : memref<6x7x6xf32>
        %extracted = tensor.extract %3[%c1] : tensor<6xf32>
        %splat_54 = tensor.splat %c1463441060_i32 : tensor<6x7x6xi32>
        %275 = math.fpowi %6, %78 : tensor<6xf32>, tensor<6xi32>
        vector.print %120 : vector<7xf16>
        %alloc_55 = memref.alloc() : memref<5x7xf32>
        %276 = tensor.empty() : tensor<6x7xf32>
        %277 = linalg.matmul ins(%52, %alloc_55 : tensor<6x5xf32>, memref<5x7xf32>) outs(%276 : tensor<6x7xf32>) -> tensor<6x7xf32>
        %expanded_56 = tensor.expand_shape %276 [[0], [1, 2]] : tensor<6x7xf32> into tensor<6x7x1xf32>
        %278 = vector.reduction <mul>, %67 : vector<6xi32> into i32
        %splat_57 = tensor.splat %c1_i64 : tensor<6x7x6xi64>
        %279 = vector.insertelement %c1463441060_i32, %69[%123 : index] : vector<6xi32>
        %inserted_58 = tensor.insert %false_1 into %4[%c0] : tensor<6xi1>
        scf.yield %4 : tensor<6xi1>
      }
      default {
        %272 = math.ctlz %false : i1
        %alloc_52 = memref.alloc() : memref<7x5xf32>
        %273 = tensor.empty() : tensor<6x5xf32>
        %274 = linalg.matmul ins(%42, %alloc_52 : tensor<6x7xf32>, memref<7x5xf32>) outs(%273 : tensor<6x5xf32>) -> tensor<6x5xf32>
        %275 = vector.broadcast %c17954_i16 : i16 to vector<6xi16>
        %276 = vector.extract %275[1] : vector<6xi16>
        %277 = index.floordivs %116, %156
        %278 = index.sub %142, %c3
        %279 = affine.min affine_map<(d0, d1) -> (d0 * 32 - 32)>(%c6, %133)
        %280 = arith.divsi %c17954_i16, %c-5339_i16 : i16
        %extracted = tensor.extract %273[%c3, %c4] : tensor<6x5xf32>
        %281 = arith.maxf %127, %cst_4 : f32
        %inserted_53 = tensor.insert %c1_i64 into %9[%c4, %c0, %c2] : tensor<6x7x6xi64>
        memref.copy %alloc_20, %alloc_15 : memref<6xi1> to memref<6xi1>
        %282 = arith.subi %144, %c1463441060_i32 : i32
        %inserted_54 = tensor.insert %c2006163504_i64 into %13[%c0, %c5, %c4] : tensor<6x7x6xi64>
        %rank_55 = tensor.rank %8 : tensor<6xf16>
        %283 = arith.mulf %extracted, %cst_4 : f32
        scf.yield %4 : tensor<6xi1>
      }
      memref.assume_alignment %alloc_13, 4 : memref<7xi32>
      %258 = arith.floordivsi %false, %false : i1
      %259 = affine.if affine_set<(d0, d1, d2) : (d0 >= 0, d1 - 96 >= 0, d2 - 64 == 0)>(%c7, %c14, %c2) -> i16 {
        %272 = vector.broadcast %c-424_i16 : i16 to vector<5xi16>
        %273 = vector.broadcast %false : i1 to vector<5xi1>
        %274 = vector.maskedload %alloc_12[%c1], %273, %272 : memref<6xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %275 = arith.remf %cst_3, %cst : f16
        %276 = vector.broadcast %c2006163504_i64 : i64 to vector<i64>
        %277 = vector.transfer_write %276, %16[%c5] : vector<i64>, tensor<6xi64>
        %278 = arith.subi %c-5339_i16, %c-5339_i16 : i16
        memref.store %c-424_i16, %alloc_18[%c1] : memref<7xi16>
        %279 = vector.transpose %117, [0] : vector<7xf16> to vector<7xf16>
        %from_elements_52 = tensor.from_elements %cst, %cst_3, %cst_3, %cst_3, %cst, %cst : tensor<6xf16>
        %280 = affine.max affine_map<(d0, d1) -> (-(d0 + d1) + 1, 0, d0 + d1 + 8)>(%157, %116)
        affine.yield %c-424_i16 : i16
      } else {
        %272 = arith.minui %c-5339_i16, %c-424_i16 : i16
        %from_elements_52 = tensor.from_elements %c17954_i16, %c-5339_i16, %c27473_i16, %c17954_i16, %c-424_i16, %c27473_i16 : tensor<6xi16>
        %273 = vector.broadcast %c-424_i16 : i16 to vector<6xi16>
        %274 = vector.transfer_write %273, %expanded[%c6, %c9, %c15, %c3] {permutation_map = affine_map<(d0, d1, d2, d3) -> (d0)>} : vector<6xi16>, tensor<6x7x6x1xi16>
        %275 = bufferization.to_tensor %alloc_18 : memref<7xi16>
        %276 = arith.divsi %144, %c1463441060_i32 : i32
        %277 = tensor.empty() : tensor<6x7x6xi32>
        %278 = math.fpowi %1, %277 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
        vector.print %68 : vector<6xi1>
        %279 = math.tan %8 : tensor<6xf16>
        affine.yield %c-5339_i16 : i16
      }
      %260 = math.roundeven %42 : tensor<6x7xf32>
      %261 = tensor.empty() : tensor<5x6xi32>
      %262 = tensor.empty() : tensor<6x6xi32>
      %263 = linalg.matmul ins(%152, %261 : tensor<6x5xi32>, tensor<5x6xi32>) outs(%262 : tensor<6x6xi32>) -> tensor<6x6xi32>
      %264 = arith.andi %c400634096_i64, %c400634096_i64 : i64
      %265 = index.maxs %c2, %c5
      %266 = arith.shrui %false_1, %false_25 : i1
      %267 = vector.broadcast %true : i1 to vector<i1>
      %268 = vector.transfer_write %267, %4[%93] : vector<i1>, tensor<6xi1>
      %true_51 = index.bool.constant true
      %269 = vector.broadcast %cst_2 : f32 to vector<7xf32>
      %270 = vector.fma %269, %269, %269 : vector<7xf32>
      %271 = arith.shrui %c400634096_i64, %c2006163504_i64 : i64
      scf.yield %alloc_11 : memref<6xi16>
    }
    %163 = math.log10 %3 : tensor<6xf32>
    %164 = arith.mulf %127, %cst_4 : f32
    memref.assume_alignment %alloc_24, 2 : memref<6xi32>
    %165 = vector.extract_strided_slice %119 {offsets = [4], sizes = [2], strides = [1]} : vector<7xi32> to vector<2xi32>
    %166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16, %splat : tensor<6xi64>, tensor<6xi64>) outs(%9 : tensor<6x7x6xi64>) {
    ^bb0(%in: i64, %in_51: i64, %out: i64):
      %254 = arith.subi %c-5339_i16, %c27473_i16 : i16
      %255 = arith.subi %c27473_i16, %c12152_i16 : i16
      %256 = arith.minf %cst_4, %127 : f32
      %257 = scf.execute_region -> index {
        %284 = arith.muli %true, %true : i1
        %285 = vector.broadcast %c1_i64 : i64 to vector<6x6xi64>
        %286 = vector.outerproduct %87, %87, %285 {kind = #vector.kind<mul>} : vector<6xi64>, vector<6xi64>
        %287 = arith.ceildivsi %true, %true : i1
        %288 = math.absf %52 : tensor<6x5xf32>
        %289 = vector.insert %127, %110 [4] : f32 into vector<6xf32>
        %290 = math.roundeven %5 : tensor<6xf16>
        %from_elements_55 = tensor.from_elements %c1463441060_i32, %c1463441060_i32, %c1463441060_i32, %144, %144, %c1463441060_i32, %144 : tensor<7xi32>
        %291 = math.copysign %splat_23, %5 : tensor<6xf16>
        %292 = vector.splat %60 : vector<6xindex>
        %293 = math.ctpop %true : i1
        %294 = arith.subi %true_0, %true_0 : i1
        %295 = arith.andi %false_25, %false_1 : i1
        %296 = index.add %41, %93
        %297 = index.floordivs %c0, %142
        %298 = arith.shrsi %c400634096_i64, %c2006163504_i64 : i64
        %299 = arith.minui %144, %144 : i32
        scf.yield %c11 : index
      }
      %258 = vector.transpose %110, [0] : vector<6xf32> to vector<6xf32>
      %259 = arith.floordivsi %c1_i64, %out : i64
      %260 = memref.load %39[%c3, %c6, %c3] : memref<6x7x6xi1>
      %261 = memref.atomic_rmw maxu %c1463441060_i32, %alloc_8[%c6] : (i32, memref<7xi32>) -> i32
      %262 = math.tan %from_elements : tensor<7xf16>
      %rank_52 = tensor.rank %114 : tensor<7xi32>
      %263 = arith.remf %cst_3, %cst : f16
      %264 = vector.broadcast %c17954_i16 : i16 to vector<5xi16>
      %265 = vector.broadcast %false : i1 to vector<5xi1>
      %266 = vector.maskedload %alloc_12[%c1], %265, %264 : memref<6xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %false_53 = index.bool.constant false
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<6x7x6xi16>) {
      ^bb0(%out_55: i16):
        %alloc_56 = memref.alloc() : memref<6xf16>
        memref.tensor_store %8, %alloc_56 : memref<6xf16>
        %284 = vector.insertelement %cst_2, %64[%c12 : index] : vector<5xf32>
        %alloc_57 = memref.alloc() : memref<6xf32>
        %285 = index.maxu %c7, %60
        %286 = affine.min affine_map<(d0) -> (0, (-(d0 ceildiv 2 - d0)) mod 128, d0 ceildiv 2 - d0 - d0)>(%c2)
        %collapsed_58 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x7x6xf32> into tensor<42x6xf32>
        %287 = math.copysign %collapsed_58, %collapsed_58 : tensor<42x6xf32>
        %288 = arith.ori %out_55, %c-424_i16 : i16
        %289 = affine.max affine_map<(d0, d1) -> (d1 * 1024, d1 mod 8 - 16, d1 * -1024, (d1 mod 8) floordiv 8 - (d1 * 32 - d0) + 6)>(%rank_52, %143)
        %290 = arith.ceildivsi %false_53, %false_53 : i1
        %extracted = tensor.extract %3[%c1] : tensor<6xf32>
        memref.assume_alignment %alloc_13, 16 : memref<7xi32>
        %291 = math.log10 %collapsed_58 : tensor<42x6xf32>
        %292 = index.castu %289 : index to i32
        %293 = arith.shrsi %c1_i64, %c1_i64 : i64
        %294 = math.fpowi %extracted, %c1463441060_i32 : f32, i32
        vector.print %68 : vector<6xi1>
        %295 = tensor.empty() : tensor<42x7xf32>
        %296 = linalg.matmul ins(%collapsed_58, %42 : tensor<42x6xf32>, tensor<6x7xf32>) outs(%295 : tensor<42x7xf32>) -> tensor<42x7xf32>
        %297 = math.log10 %collapsed_35 : tensor<42xf32>
        %298 = math.log %1 : tensor<6x7x6xf32>
        %299 = vector.load %alloc_11[%c5] : memref<6xi16>, vector<6x7x6xi16>
        %expanded_59 = tensor.expand_shape %16 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %300 = arith.remsi %c1463441060_i32, %144 : i32
        %301 = arith.minui %out_55, %c27473_i16 : i16
        %302 = math.roundeven %cst_2 : f32
        %303 = index.add %c8, %c6
        %304 = math.fma %cst_4, %cst_4, %cst_4 : f32
        %305 = index.add %c15, %285
        %306 = index.ceildivs %305, %60
        %307 = index.add %41, %142
        %308 = index.castu %289 : index to i32
        %309 = arith.floordivsi %c12152_i16, %c-5339_i16 : i16
        linalg.yield %out_55 : i16
      } -> tensor<6x7x6xi16>
      %268 = math.atan %8 : tensor<6xf16>
      %269 = arith.mulf %cst_3, %cst : f16
      %270 = math.ctlz %c2006163504_i64 : i64
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<6x7x6xi16>) {
      ^bb0(%out_55: i16):
        %284 = affine.max affine_map<(d0, d1) -> (d0, d1 - d0 + 30)>(%41, %257)
        %285 = bufferization.clone %alloc_20 : memref<6xi1> to memref<6xi1>
        %286 = math.round %1 : tensor<6x7x6xf32>
        %287 = vector.load %alloc_8[%c6] : memref<7xi32>, vector<7xi32>
        %288 = math.exp2 %3 : tensor<6xf32>
        %289 = arith.andi %false_25, %false : i1
        %290 = math.floor %cst_4 : f32
        %291 = vector.create_mask %c3, %c15, %41 : vector<6x7x6xi1>
        %true_56 = index.bool.constant true
        %292 = math.log %5 : tensor<6xf16>
        %293 = arith.shrsi %c400634096_i64, %c400634096_i64 : i64
        %from_elements_57 = tensor.from_elements %127, %cst_4, %cst_2, %cst_2, %127, %127 : tensor<6xf32>
        %294 = math.exp2 %5 : tensor<6xf16>
        %295 = vector.transpose %110, [0] : vector<6xf32> to vector<6xf32>
        %296 = arith.addf %cst, %cst_3 : f16
        %297 = arith.remsi %144, %144 : i32
        %298 = math.ctpop %152 : tensor<6x5xi32>
        %299 = math.ctlz %9 : tensor<6x7x6xi64>
        %300 = bufferization.to_tensor %alloc_10 : memref<7xi32>
        %true_58 = arith.constant true
        %301 = vector.transfer_read %154[%41, %142, %257], %true_58 : memref<6x7x6xi1>, vector<7xi1>
        %alloc_59 = memref.alloc() : memref<7x6xf32>
        %302 = tensor.empty() : tensor<6x6xf32>
        %303 = linalg.matmul ins(%42, %alloc_59 : tensor<6x7xf32>, memref<7x6xf32>) outs(%302 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %304 = math.fpowi %cst_3, %c1463441060_i32 : f16, i32
        %305 = vector.shuffle %118, %118 [2, 4, 6, 9, 10, 11] : vector<7xi1>, vector<7xi1>
        %306 = vector.insertelement %false_53, %265[%116 : index] : vector<5xi1>
        %307 = math.round %cst_2 : f32
        %308 = vector.transpose %68, [0] : vector<6xi1> to vector<6xi1>
        %309 = arith.cmpi sle, %c-5339_i16, %c12152_i16 : i16
        vector.print %265 : vector<5xi1>
        %310 = index.floordivs %86, %c2
        %311 = arith.muli %true_56, %false : i1
        %collapsed_60 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<6x7x6xi64> into tensor<42x6xi64>
        %312 = arith.ceildivsi %c1463441060_i32, %c1463441060_i32 : i32
        linalg.yield %c12152_i16 : i16
      } -> tensor<6x7x6xi16>
      %272 = vector.broadcast %false_1 : i1 to vector<6x7x6xi1>
      %273 = arith.muli %false_53, %false_1 : i1
      %274 = index.maxu %143, %c12
      %275 = bufferization.to_memref %collapsed : memref<42x6xi16>
      vector.print %87 : vector<6xi64>
      scf.if %false_1 {
        %284 = vector.insert %c1463441060_i32, %67 [1] : i32 into vector<6xi32>
        vector.print %118 : vector<7xi1>
        %285 = vector.extract %118[3] : vector<7xi1>
        %286 = affine.max affine_map<(d0) -> (d0 mod 16 - 128, d0 floordiv 8, d0 - (d0 floordiv 8 - 17))>(%143)
        %287 = arith.minui %c12152_i16, %c12152_i16 : i16
        %288 = index.floordivs %c11, %86
        %collapsed_55 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x7x6xf32> into tensor<42x6xf32>
        %false_56 = index.bool.constant false
      }
      %276 = vector.splat %143 : vector<6xindex>
      %277 = affine.load %alloc_14[%c6, %c5, %c10] : memref<6x7x6xf32>
      %278 = vector.reduction <mul>, %67 : vector<6xi32> into i32
      %279 = vector.broadcast %c1463441060_i32 : i32 to vector<2x2xi32>
      %280 = vector.outerproduct %165, %165, %279 {kind = #vector.kind<minsi>} : vector<2xi32>, vector<2xi32>
      %281 = vector.insertelement %c1463441060_i32, %67[%c4 : index] : vector<6xi32>
      %282 = math.atan %277 : f32
      %false_54 = index.bool.constant false
      %283 = arith.divsi %c-424_i16, %c-5339_i16 : i16
      linalg.yield %c400634096_i64 : i64
    } -> tensor<6x7x6xi64>
    %167 = scf.index_switch %143 -> vector<7xi32> 
    case 1 {
      %254 = math.fma %3, %3, %6 : tensor<6xf32>
      %255 = vector.broadcast %c27473_i16 : i16 to vector<i16>
      %256 = vector.transfer_write %255, %expanded[%88, %143, %41, %c3] : vector<i16>, tensor<6x7x6x1xi16>
      %257 = vector.broadcast %cst : f16 to vector<7x7x6xf16>
      %258 = vector.broadcast %cst_3 : f16 to vector<7x6xf16>
      %dest, %accumulated_value = vector.scan <add>, %257, %258 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x6xf16>, vector<7x6xf16>
      %259 = index.maxs %c12, %c0
      %260 = memref.load %alloc_6[%c0, %c6, %c2] : memref<6x7x6xf32>
      %261 = math.fma %52, %52, %52 : tensor<6x5xf32>
      %262 = bufferization.to_memref %splat_23 : memref<6xf16>
      %263 = arith.andi %false_1, %false : i1
      %264 = vector.insertelement %c1463441060_i32, %165[%c8 : index] : vector<2xi32>
      %265 = arith.xori %c400634096_i64, %c1_i64 : i64
      %266 = memref.load %alloc_7[%c2, %c4, %c3] : memref<6x7x6xi32>
      %267 = math.log %splat_26 : tensor<6xf32>
      %268 = affine.if affine_set<(d0, d1, d2) : ((d2 + 16) ceildiv 128 == 0, d0 + 4 == 0)>(%c1, %c2, %c3) -> i16 {
        %272 = arith.xori %c-5339_i16, %c-5339_i16 : i16
        %273 = vector.broadcast %144 : i32 to vector<7xi32>
        %274 = index.divu %c5, %c4
        %275 = math.log1p %1 : tensor<6x7x6xf32>
        %276 = index.add %c15, %143
        %277 = arith.subi %true_0, %false : i1
        %278 = math.fpowi %cst, %144 : f16, i32
        %279 = index.divs %276, %c7
        affine.yield %c-424_i16 : i16
      } else {
        %272 = vector.transpose %120, [0] : vector<7xf16> to vector<7xf16>
        %273 = bufferization.clone %alloc_24 : memref<6xi32> to memref<6xi32>
        %274 = index.castu %157 : index to i32
        %275 = vector.extract %20[3] : vector<5xi32>
        %276 = math.cos %1 : tensor<6x7x6xf32>
        %277 = arith.xori %c2006163504_i64, %c1_i64 : i64
        affine.store %c1463441060_i32, %alloc_7[%c6, %c13, %c8] : memref<6x7x6xi32>
        %alloc_52 = memref.alloc() : memref<6x7x6xi64>
        affine.yield %c12152_i16 : i16
      }
      %269 = arith.ceildivsi %c12152_i16, %c12152_i16 : i16
      %270 = vector.load %130[%c3, %c2, %c2] : memref<6x7x6xf32>, vector<6xf32>
      %alloc_51 = memref.alloc() : memref<6x7xi64>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51 : memref<6x7xi64>) outs(%9 : tensor<6x7x6xi64>) {
      ^bb0(%in: i64, %out: i64):
        %272 = bufferization.to_tensor %alloc_20 : memref<6xi1>
        %273 = math.log10 %1 : tensor<6x7x6xf32>
        vector.print %119 : vector<7xi32>
        %274 = math.ctpop %21 : tensor<6xi64>
        %275 = arith.shli %true, %false_1 : i1
        %splat_52 = tensor.splat %c-424_i16 : tensor<7xi16>
        %276 = vector.reduction <minf>, %109 : vector<6xf32> into f32
        %277 = tensor.empty() : tensor<1x6xi1>
        %278 = tensor.empty() : tensor<7x6xi1>
        %279 = linalg.matmul ins(%expanded_34, %277 : tensor<7x1xi1>, tensor<1x6xi1>) outs(%278 : tensor<7x6xi1>) -> tensor<7x6xi1>
        %280 = arith.ceildivsi %c2006163504_i64, %c2006163504_i64 : i64
        %281 = index.add %c10, %143
        %from_elements_53 = tensor.from_elements %c12152_i16, %c-424_i16, %c12152_i16, %c17954_i16, %c-424_i16, %c27473_i16, %c-424_i16 : tensor<7xi16>
        %282 = math.absf %1 : tensor<6x7x6xf32>
        %283 = arith.addf %cst_2, %cst_4 : f32
        %alloc_54 = memref.alloc() : memref<5x6xi32>
        %284 = tensor.empty() : tensor<6x6xi32>
        %285 = linalg.matmul ins(%152, %alloc_54 : tensor<6x5xi32>, memref<5x6xi32>) outs(%284 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %286 = index.divs %156, %c14
        memref.assume_alignment %alloc_14, 8 : memref<6x7x6xf32>
        memref.store %cst_4, %alloc_14[%c0, %c5, %c2] : memref<6x7x6xf32>
        %287 = math.ctlz %0 : tensor<7xi32>
        %288 = bufferization.to_tensor %alloc_5 : memref<7xi32>
        %289 = math.exp2 %cst_3 : f16
        %290 = vector.create_mask %123 : vector<6xi1>
        %291 = arith.mulf %127, %cst_2 : f32
        %292 = arith.minui %c2006163504_i64, %c2006163504_i64 : i64
        %293 = memref.atomic_rmw minu %out, %alloc_16[%c2, %c3, %c3] : (i64, memref<6x7x6xi64>) -> i64
        %294 = math.roundeven %from_elements : tensor<7xf16>
        %295 = vector.splat %c27473_i16 : vector<6x7x6xi16>
        %extracted = tensor.extract %1[%c5, %c1, %c2] : tensor<6x7x6xf32>
        %296 = arith.xori %in, %c2006163504_i64 : i64
        %297 = arith.cmpf ogt, %cst_4, %127 : f32
        memref.assume_alignment %alloc_9, 1 : memref<6x7x6xi64>
        %298 = arith.cmpf ogt, %cst_4, %extracted : f32
        %299 = vector.broadcast %88 : index to vector<5xindex>
        %300 = vector.broadcast %false_25 : i1 to vector<5xi1>
        %301 = vector.broadcast %c27473_i16 : i16 to vector<5xi16>
        vector.scatter %alloc_12[%c0] [%299], %300, %301 : memref<6xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        linalg.yield %out : i64
      } -> tensor<6x7x6xi64>
      scf.yield %119 : vector<7xi32>
    }
    default {
      %254 = math.ctpop %12 : tensor<7xi1>
      %from_elements_51 = tensor.from_elements %127, %cst_4, %cst_2, %127, %127, %127 : tensor<6xf32>
      %255 = arith.addf %cst_3, %cst : f16
      %collapsed_52 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<6x7x6xi64> into tensor<42x6xi64>
      %256 = index.maxu %143, %142
      %257 = arith.xori %c400634096_i64, %c400634096_i64 : i64
      %258 = arith.cmpf uno, %cst, %cst_3 : f16
      %259 = math.log10 %splat_26 : tensor<6xf32>
      %260 = tensor.empty() : tensor<6xi16>
      %mapped_53 = linalg.map ins(%2, %alloc_11, %2 : tensor<6xi16>, memref<6xi16>, tensor<6xi16>) outs(%260 : tensor<6xi16>)
        (%in: i16, %in_55: i16, %in_56: i16) {
          %268 = vector.maskedload %alloc_20[%c5], %118, %118 : memref<6xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %inserted_57 = tensor.insert %cst_3 into %8[%c2] : tensor<6xf16>
          memref.store %true, %alloc_15[%c1] : memref<6xi1>
          %269 = arith.addf %cst_3, %cst : f16
          %expanded_58 = tensor.expand_shape %114 [[0, 1]] : tensor<7xi32> into tensor<7x1xi32>
          %270 = math.ctpop %false_25 : i1
          %271 = memref.atomic_rmw mulf %127, %130[%c4, %c5, %c0] : (f32, memref<6x7x6xf32>) -> f32
          %272 = index.sub %c15, %c6
          %273 = memref.load %alloc_24[%c1] : memref<6xi32>
          %274 = math.tanh %8 : tensor<6xf16>
          %extracted = tensor.extract %splat[%c5] : tensor<6xi64>
          %275 = arith.shli %in_55, %c12152_i16 : i16
          %276 = index.maxu %156, %133
          affine.store %c12152_i16, %alloc_18[%c7] : memref<7xi16>
          %277 = index.floordivs %c7, %c10
          memref.assume_alignment %130, 8 : memref<6x7x6xf32>
          %278 = arith.subi %in_56, %in_55 : i16
          %279 = index.maxs %277, %c2
          %splat_59 = tensor.splat %extracted : tensor<7xi64>
          %280 = index.divs %c5, %156
          %cast_60 = tensor.cast %from_elements : tensor<7xf16> to tensor<?xf16>
          %281 = math.fma %6, %6, %6 : tensor<6xf32>
          %282 = math.log %1 : tensor<6x7x6xf32>
          %283 = math.log10 %127 : f32
          %284 = arith.maxsi %in_55, %in_56 : i16
          %285 = math.log10 %cst_2 : f32
          %286 = vector.broadcast %false : i1 to vector<6x5xi1>
          %287 = vector.broadcast %true_0 : i1 to vector<5xi1>
          %dest, %accumulated_value = vector.scan <maxsi>, %286, %287 {inclusive = false, reduction_dim = 0 : i64} : vector<6x5xi1>, vector<5xi1>
          %288 = vector.broadcast %false_1 : i1 to vector<6x6xi1>
          %289 = vector.outerproduct %68, %68, %288 {kind = #vector.kind<minui>} : vector<6xi1>, vector<6xi1>
          %290 = arith.addi %c12152_i16, %c-5339_i16 : i16
          %291 = arith.andi %c400634096_i64, %extracted : i64
          %from_elements_61 = tensor.from_elements %144, %144, %144, %144, %144, %144, %144 : tensor<7xi32>
          %292 = math.floor %cst_3 : f16
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %261 = index.maxu %142, %c15
      %alloc_54 = memref.alloc() : memref<1x7xi1>
      %262 = tensor.empty() : tensor<7x7xi1>
      %263 = linalg.matmul ins(%expanded_34, %alloc_54 : tensor<7x1xi1>, memref<1x7xi1>) outs(%262 : tensor<7x7xi1>) -> tensor<7x7xi1>
      affine.store %c1463441060_i32, %alloc[%c7] : memref<7xi32>
      %264 = arith.shli %true_0, %false_1 : i1
      %265 = scf.while (%arg1 = %c12152_i16) : (i16) -> i16 {
        %alloc_55 = memref.alloc() : memref<6xi1>
        %268 = arith.negf %cst_3 : f16
        %269 = math.atan %8 : tensor<6xf16>
        %270 = arith.remui %true, %false_25 : i1
        %271 = memref.atomic_rmw addi %144, %alloc_5[%c5] : (i32, memref<7xi32>) -> i32
        %272 = index.ceildivs %123, %c14
        %273 = arith.shrui %true, %false_25 : i1
        %274 = index.castu %c400634096_i64 : i64 to index
        scf.condition(%true_0) %c-424_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        %268 = index.maxs %41, %c15
        %269 = arith.addf %cst_4, %cst_2 : f32
        %270 = vector.insertelement %144, %20[%157 : index] : vector<5xi32>
        %271 = index.sub %c12, %c4
        %272 = arith.negf %cst_4 : f32
        %273 = vector.broadcast %false_25 : i1 to vector<5x6xi1>
        %274 = vector.broadcast %false_25 : i1 to vector<5xi1>
        %dest, %accumulated_value = vector.scan <and>, %273, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<5x6xi1>, vector<5xi1>
        %275 = vector.insertelement %c1463441060_i32, %20[%156 : index] : vector<5xi32>
        %276 = arith.mulf %cst_3, %cst : f16
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_55 = arith.constant 0 : i32
        %277 = vector.transfer_read %0[%c9], %c0_i32_55 : tensor<7xi32>, vector<i32>
        %278 = math.atan2 %splat_23, %splat_23 : tensor<6xf16>
        %279 = vector.broadcast %arg1 : i16 to vector<7x6x6xi16>
        %280 = vector.broadcast %c17954_i16 : i16 to vector<7x6xi16>
        %dest_56, %accumulated_value_57 = vector.scan <and>, %279, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<7x6x6xi16>, vector<7x6xi16>
        %281 = affine.max affine_map<(d0) -> (d0 floordiv 32 + 2, (d0 - (d0 + 64) * 32 - d0) * 4, -(d0 - (d0 + 64) * 32 - d0), d0 - (d0 - (d0 + 64) * 32 - d0) * 4 - 128)>(%142)
        %282 = arith.cmpf false, %cst_4, %127 : f32
        %283 = vector.insertelement %false, %68[%c9 : index] : vector<6xi1>
        %284 = index.sizeof
        %285 = arith.xori %144, %c1_i32 : i32
        scf.yield %c-5339_i16 : i16
      }
      %266 = math.log10 %cst_2 : f32
      %267 = math.floor %from_elements_51 : tensor<6xf32>
      scf.yield %119 : vector<7xi32>
    }
    %168 = math.floor %cst : f16
    %169 = tensor.empty(%143) : tensor<?xf32>
    %170 = math.fpowi %127, %c1463441060_i32 : f32, i32
    %171 = arith.maxf %cst_4, %cst_4 : f32
    %alloca_36 = memref.alloca() : memref<6xi1>
    scf.index_switch %143 
    case 1 {
      %254 = arith.shrui %c27473_i16, %c27473_i16 : i16
      %255 = math.roundeven %cst_4 : f32
      %256 = vector.load %39[%c4, %c5, %c3] : memref<6x7x6xi1>, vector<6x7x6xi1>
      %257 = math.atan2 %42, %42 : tensor<6x7xf32>
      %258 = index.floordivs %c2, %157
      %259 = affine.if affine_set<(d0) : (0 >= 0, d0 + 1 == 0)>(%c13) -> i64 {
        %266 = arith.divf %cst_3, %cst : f16
        bufferization.dealloc_tensor %17 : tensor<6xi64>
        %267 = math.atan2 %cst_3, %cst_3 : f16
        %268 = vector.reduction <mul>, %124 : vector<7xi16> into i16
        %269 = arith.maxsi %true, %true : i1
        %270 = tensor.empty() : tensor<5x5xf32>
        %271 = tensor.empty() : tensor<6x5xf32>
        %272 = linalg.matmul ins(%52, %270 : tensor<6x5xf32>, tensor<5x5xf32>) outs(%271 : tensor<6x5xf32>) -> tensor<6x5xf32>
        %273 = math.ctlz %false : i1
        %274 = vector.broadcast %cst_2 : f32 to vector<6xf32>
        %275 = vector.fma %274, %109, %274 : vector<6xf32>
        affine.yield %c1_i64 : i64
      } else {
        %266 = vector.gather %78[%123] [%119], %118, %119 : tensor<6xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %alloc_54 = memref.alloc() : memref<5x5xi32>
        %267 = tensor.empty() : tensor<6x5xi32>
        %268 = linalg.matmul ins(%152, %alloc_54 : tensor<6x5xi32>, memref<5x5xi32>) outs(%267 : tensor<6x5xi32>) -> tensor<6x5xi32>
        %269 = vector.broadcast %cst : f16 to vector<7x7xf16>
        %270 = vector.outerproduct %117, %117, %269 {kind = #vector.kind<mul>} : vector<7xf16>, vector<7xf16>
        %271 = math.fma %1, %1, %1 : tensor<6x7x6xf32>
        %272 = index.maxu %156, %142
        %273 = math.log1p %1 : tensor<6x7x6xf32>
        %274 = math.log %3 : tensor<6xf32>
        %275 = math.ctpop %0 : tensor<7xi32>
        affine.yield %c1_i64 : i64
      }
      %true_51 = index.bool.constant true
      %260 = math.absf %127 : f32
      %261 = math.atan2 %127, %127 : f32
      %262 = math.tanh %cst : f16
      %263 = arith.addf %cst_2, %cst_2 : f32
      memref.store %144, %alloc_5[%c0] : memref<7xi32>
      %264 = arith.shrsi %false, %false : i1
      %expanded_52 = tensor.expand_shape %114 [[0, 1]] : tensor<7xi32> into tensor<7x1xi32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6, %1 : tensor<6xf32>, tensor<6x7x6xf32>) outs(%1 : tensor<6x7x6xf32>) {
      ^bb0(%in: f32, %in_54: f32, %out: f32):
        %266 = math.round %cst : f16
        %267 = vector.reduction <minui>, %67 : vector<6xi32> into i32
        memref.assume_alignment %alloc_14, 2 : memref<6x7x6xf32>
        %268 = math.ctlz %15 : tensor<6xi64>
        %269 = arith.shrsi %true_0, %false_25 : i1
        %270 = index.maxs %c6, %c2
        %271 = arith.subi %c2006163504_i64, %c1_i64 : i64
        %272 = arith.ceildivsi %c17954_i16, %c-424_i16 : i16
        %273 = index.castu %133 : index to i32
        %274 = vector.transpose %20, [0] : vector<5xi32> to vector<5xi32>
        %275 = vector.extract %110[3] : vector<6xf32>
        %276 = math.log10 %5 : tensor<6xf16>
        %277 = index.floordivs %c15, %41
        %collapsed_55 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<42x6xi16> into tensor<252xi16>
        %collapsed_56 = tensor.collapse_shape %expanded_52 [[0, 1]] : tensor<7x1xi32> into tensor<7xi32>
        %278 = vector.flat_transpose %119 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %279 = bufferization.to_memref %cast_31 : memref<?xi64>
        %inserted_57 = tensor.insert %false_25 into %12[%c4] : tensor<7xi1>
        affine.store %144, %alloc_13[%c11] : memref<7xi32>
        %280 = math.floor %8 : tensor<6xf16>
        %alloca_58 = memref.alloca() : memref<6xi64>
        %281 = arith.cmpf one, %in, %in : f32
        %282 = math.ctpop %22 : tensor<i64>
        %283 = math.atan %splat_26 : tensor<6xf32>
        %284 = index.divs %c9, %c9
        %285 = vector.broadcast %c1_i64 : i64 to vector<i64>
        %286 = vector.transfer_write %285, %9[%116, %116, %c0] : vector<i64>, tensor<6x7x6xi64>
        %287 = vector.broadcast %false_1 : i1 to vector<5xi1>
        %288 = vector.maskedload %alloc_17[%c6], %287, %64 : memref<7xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %289 = index.ceildivs %c11, %93
        %290 = memref.atomic_rmw maxf %in, %alloc_6[%c3, %c6, %c0] : (f32, memref<6x7x6xf32>) -> f32
        %291 = math.log2 %splat_23 : tensor<6xf16>
        %292 = vector.insertelement %c1463441060_i32, %20[%123 : index] : vector<5xi32>
        %293 = index.floordivs %c6, %41
        linalg.yield %in_54 : f32
      } -> tensor<6x7x6xf32>
      %rank_53 = tensor.rank %10 : tensor<6xi64>
      scf.yield
    }
    case 2 {
      affine.store %127, %alloc_14[%c9, %c15, %c9] : memref<6x7x6xf32>
      %254 = math.log10 %splat_26 : tensor<6xf32>
      %255 = arith.remsi %c-424_i16, %c-5339_i16 : i16
      memref.store %c-5339_i16, %alloc_11[%c4] : memref<6xi16>
      %256 = math.log10 %6 : tensor<6xf32>
      %257 = math.absf %5 : tensor<6xf16>
      %258 = index.ceildivs %c13, %c3
      memref.alloca_scope  {
        %265 = affine.max affine_map<(d0) -> ((d0 + d0 mod 4) floordiv 8, -(d0 mod 4) - 12, d0 + d0 mod 4 + 2, (d0 + 2) ceildiv 4)>(%c2)
        %266 = index.ceildivs %258, %c15
        %cst_52 = arith.constant 1.000000e+00 : f16
        %267 = vector.transfer_read %from_elements[%c3], %cst_52 : tensor<7xf16>, vector<f16>
        %splat_53 = tensor.splat %144 : tensor<6x7x6xi32>
        %268 = index.add %c15, %93
        %269 = vector.maskedload %alloc_5[%c2], %68, %67 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %270 = bufferization.to_memref %18 : memref<i16>
        %271 = arith.cmpi ugt, %c400634096_i64, %c2006163504_i64 : i64
        %272 = math.tanh %cst : f16
        %273 = index.sub %116, %116
        %274 = bufferization.clone %alloc_7 : memref<6x7x6xi32> to memref<6x7x6xi32>
        %from_elements_54 = tensor.from_elements %c27473_i16, %c12152_i16, %c-5339_i16, %c-424_i16, %c17954_i16, %c-424_i16, %c12152_i16 : tensor<7xi16>
        %inserted_55 = tensor.insert %cst_52 into %splat_23[%c1] : tensor<6xf16>
        %275 = math.roundeven %127 : f32
        %276 = index.ceildivs %c11, %c11
        %277 = vector.broadcast %144 : i32 to vector<i32>
        vector.transfer_write %277, %alloc_8[%c13] : vector<i32>, memref<7xi32>
        %278 = vector.broadcast %c1463441060_i32 : i32 to vector<2x2xi32>
        %279 = vector.outerproduct %165, %165, %278 {kind = #vector.kind<xor>} : vector<2xi32>, vector<2xi32>
        vector.print %118 : vector<7xi1>
        %c0_i16 = arith.constant 0 : i16
        %280 = vector.transfer_read %14[%123], %c0_i16 : tensor<7xi16>, vector<i16>
        %281 = index.maxu %c14, %123
        %282 = index.castu %c2006163504_i64 : i64 to index
        %283 = index.maxs %258, %86
        %284 = vector.broadcast %c1463441060_i32 : i32 to vector<6x6xi32>
        %285 = vector.outerproduct %69, %69, %284 {kind = #vector.kind<minui>} : vector<6xi32>, vector<6xi32>
        %286 = vector.create_mask %c7, %266, %116 : vector<6x7x6xi1>
        %287 = arith.ceildivsi %c0_i16, %c27473_i16 : i16
        %288 = math.log %1 : tensor<6x7x6xf32>
        %289 = arith.cmpi ule, %false, %false_1 : i1
        %290 = index.maxs %282, %c6
        %291 = vector.broadcast %c0_i16 : i16 to vector<6xi16>
        %292 = arith.xori %false_25, %true_0 : i1
        %293 = vector.splat %false_25 : vector<7xi1>
        %alloc_56 = memref.alloc() : memref<7xf16>
      }
      %259 = tensor.empty() : tensor<7xi32>
      %mapped_51 = linalg.map ins(%0, %alloc_13, %alloc_10 : tensor<7xi32>, memref<7xi32>, memref<7xi32>) outs(%259 : tensor<7xi32>)
        (%in: i32, %in_52: i32, %in_53: i32) {
          %265 = arith.maxf %cst_4, %127 : f32
          %266 = vector.extract %67[2] : vector<6xi32>
          affine.store %in_53, %alloc_5[%c2] : memref<7xi32>
          %267 = arith.floordivsi %c17954_i16, %c-424_i16 : i16
          %inserted_54 = tensor.insert %cst into %5[%c3] : tensor<6xf16>
          %268 = affine.max affine_map<(d0, d1, d2) -> (-(d2 - 128), d0 - ((d0 ceildiv 128) * 8 + 2) + d0 ceildiv 128 - 128, (-(d2 - 128)) floordiv 16 - 128)>(%156, %116, %c6)
          %269 = math.atan %3 : tensor<6xf32>
          %270 = math.log2 %1 : tensor<6x7x6xf32>
          %271 = math.tan %splat_26 : tensor<6xf32>
          %272 = arith.minui %c1463441060_i32, %in_53 : i32
          %273 = arith.xori %c-424_i16, %c-424_i16 : i16
          %274 = vector.broadcast %true_0 : i1 to vector<i1>
          vector.transfer_write %274, %alloc_15[%c10] : vector<i1>, memref<6xi1>
          %275 = arith.xori %144, %in_52 : i32
          %alloc_55 = memref.alloc() : memref<6x7x6xi16>
          %276 = tensor.empty() : tensor<6x7xi32>
          %277 = math.fpowi %42, %276 : tensor<6x7xf32>, tensor<6x7xi32>
          %278 = arith.maxf %cst, %cst_3 : f16
          %279 = vector.broadcast %false : i1 to vector<6xi1>
          %splat_56 = tensor.splat %c1_i64 : tensor<6x7x6xi64>
          %280 = vector.reduction <mul>, %109 : vector<6xf32> into f32
          %281 = vector.extract_strided_slice %109 {offsets = [0], sizes = [6], strides = [1]} : vector<6xf32> to vector<6xf32>
          %282 = arith.remf %cst, %cst : f16
          %283 = index.sub %c2, %41
          memref.store %true, %154[%c3, %c4, %c1] : memref<6x7x6xi1>
          memref.store %127, %alloc_14[%c5, %c4, %c3] : memref<6x7x6xf32>
          %284 = math.fma %42, %42, %42 : tensor<6x7xf32>
          %285 = bufferization.to_memref %cast_29 : memref<?x?xf32>
          %286 = arith.subi %in_53, %in : i32
          %287 = math.round %cst_3 : f16
          %288 = vector.insert %cst_3, %117 [6] : f16 into vector<7xf16>
          %extracted = tensor.extract %22[] : tensor<i64>
          %289 = math.atan2 %1, %1 : tensor<6x7x6xf32>
          %290 = math.roundeven %cst : f16
          %c0_i32_57 = arith.constant 0 : i32
          linalg.yield %c0_i32_57 : i32
        }
      %260 = vector.broadcast %cst_2 : f32 to vector<6xf32>
      affine.store %c1463441060_i32, %alloc_10[%c7] : memref<7xi32>
      %261 = arith.maxui %true, %true_0 : i1
      %262 = arith.maxf %127, %127 : f32
      %263 = arith.negf %cst_4 : f32
      affine.store %144, %alloc_24[%c2] : memref<6xi32>
      %264 = vector.splat %c7 : vector<6x7x6xindex>
      scf.yield
    }
    case 3 {
      %254 = arith.cmpi sge, %c27473_i16, %c12152_i16 : i16
      %255 = vector.broadcast %cst_3 : f16 to vector<f16>
      %256 = vector.transfer_write %255, %splat_23[%c5] : vector<f16>, tensor<6xf16>
      %257 = arith.shli %c1_i64, %c2006163504_i64 : i64
      %258 = arith.shrsi %c1_i64, %c2006163504_i64 : i64
      %inserted_51 = tensor.insert %c400634096_i64 into %10[%c0] : tensor<6xi64>
      %259 = math.roundeven %cst_2 : f32
      %260 = vector.insertelement %true_0, %68[%60 : index] : vector<6xi1>
      %261 = vector.load %130[%c4, %c6, %c4] : memref<6x7x6xf32>, vector<6x7x6xf32>
      %alloc_52 = memref.alloc() : memref<6x7x6xi1>
      %262 = math.ctpop %13 : tensor<6x7x6xi64>
      %263 = math.atan %5 : tensor<6xf16>
      memref.tensor_store %78, %alloc_24 : memref<6xi32>
      %expanded_53 = tensor.expand_shape %12 [[0, 1]] : tensor<7xi1> into tensor<7x1xi1>
      %from_elements_54 = tensor.from_elements %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3 : tensor<6x7x6xf16>
      %264 = math.log2 %3 : tensor<6xf32>
      %alloc_55 = memref.alloc() : memref<7xf16>
      scf.yield
    }
    case 4 {
      %254 = vector.broadcast %cst_3 : f16 to vector<7xf16>
      %extracted = tensor.extract %cast_29[%c0, %c0] : tensor<?x?xf32>
      %255 = vector.splat %88 : vector<6x7x6xindex>
      %256 = vector.transpose %117, [0] : vector<7xf16> to vector<7xf16>
      %257 = math.tanh %cst_3 : f16
      %258 = memref.alloca_scope  -> (i1) {
        %269 = index.ceildivs %c11, %c13
        %270 = vector.broadcast %cst_2 : f32 to vector<6x7x6xf32>
        %271 = vector.fma %270, %270, %270 : vector<6x7x6xf32>
        %272 = arith.maxf %cst_2, %extracted : f32
        %273 = arith.minui %true_0, %false_1 : i1
        %274 = arith.ceildivsi %c12152_i16, %c12152_i16 : i16
        %275 = arith.shrsi %true, %true : i1
        %276 = vector.insertelement %cst_3, %254[%60 : index] : vector<7xf16>
        %277 = index.sub %86, %c0
        %278 = arith.negf %cst_4 : f32
        %279 = math.log1p %127 : f32
        %280 = arith.ceildivsi %true, %true : i1
        %281 = arith.addf %extracted, %cst_2 : f32
        %282 = arith.subi %144, %c1463441060_i32 : i32
        %283 = arith.cmpi ult, %c12152_i16, %c27473_i16 : i16
        %from_elements_52 = tensor.from_elements %cst_2, %extracted, %cst_2, %127, %cst_2, %cst_2, %cst_2 : tensor<7xf32>
        %284 = math.log10 %3 : tensor<6xf32>
        %285 = vector.gather %alloc_24[%c5] [%119], %118, %119 : memref<6xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %alloca_53 = memref.alloca() : memref<6x7x6xf16>
        %286 = index.ceildivs %c3, %157
        %287 = arith.minf %cst_3, %cst_3 : f16
        %288 = memref.realloc %alloc_8 : memref<7xi32> to memref<5xi32>
        %289 = index.divs %157, %88
        %290 = vector.bitcast %119 : vector<7xi32> to vector<7xi32>
        %291 = index.maxs %286, %41
        %292 = arith.muli %c400634096_i64, %c1_i64 : i64
        %293 = math.exp2 %cst_3 : f16
        %294 = vector.broadcast %extracted : f32 to vector<6x6xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %271, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<6x7x6xf32>, vector<6x6xf32>
        %295 = arith.andi %c27473_i16, %c-5339_i16 : i16
        vector.print %165 : vector<2xi32>
        %296 = vector.extract_strided_slice %69 {offsets = [2], sizes = [4], strides = [1]} : vector<6xi32> to vector<4xi32>
        %297 = vector.broadcast %cst_3 : f16 to vector<f16>
        %298 = vector.transfer_write %297, %8[%c5] : vector<f16>, tensor<6xf16>
        %299 = bufferization.to_tensor %alloc_16 : memref<6x7x6xi64>
        memref.alloca_scope.return %true : i1
      }
      %259 = math.rsqrt %cst_4 : f32
      %260 = affine.if affine_set<(d0, d1, d2) : (d2 ceildiv 32 == 0)>(%c12, %c13, %c7) -> i64 {
        memref.copy %alloc_9, %alloc_16 : memref<6x7x6xi64> to memref<6x7x6xi64>
        %269 = math.absf %42 : tensor<6x7xf32>
        %270 = index.sub %157, %60
        %271 = vector.broadcast %true_0 : i1 to vector<6x7x6xi1>
        %272 = arith.xori %c-424_i16, %c-424_i16 : i16
        %273 = math.exp %1 : tensor<6x7x6xf32>
        %274 = index.maxs %c10, %c9
        %275 = arith.cmpf true, %cst_2, %127 : f32
        affine.yield %c1_i64 : i64
      } else {
        %269 = arith.minf %cst, %cst : f16
        %cst_52 = arith.constant 1.000000e+00 : f32
        %270 = vector.transfer_read %alloc_6[%93, %157, %133], %cst_52 : memref<6x7x6xf32>, vector<f32>
        %271 = math.absf %5 : tensor<6xf16>
        %extracted_53 = tensor.extract %17[%c0] : tensor<6xi64>
        %272 = vector.reduction <minui>, %20 : vector<5xi32> into i32
        %273 = vector.maskedload %154[%c3, %c2, %c2], %68, %68 : memref<6x7x6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %274 = math.log10 %8 : tensor<6xf16>
        %275 = arith.mulf %cst_52, %extracted : f32
        affine.yield %c400634096_i64 : i64
      }
      %261 = scf.while (%arg1 = %254) : (vector<7xf16>) -> vector<7xf16> {
        %269 = vector.broadcast %156 : index to vector<6xindex>
        vector.scatter %alloc_6[%c5, %c1, %c2] [%269], %68, %110 : memref<6x7x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %270 = arith.minui %144, %c1463441060_i32 : i32
        memref.copy %alloc_15, %alloc_20 : memref<6xi1> to memref<6xi1>
        %271 = vector.extract %20[0] : vector<5xi32>
        %c1_i64_52 = arith.constant 1 : i64
        %272 = vector.transfer_read %10[%c8], %c1_i64_52 : tensor<6xi64>, vector<i64>
        memref.copy %alloc_16, %alloc_19 : memref<6x7x6xi64> to memref<6x7x6xi64>
        %273 = index.castu %c1463441060_i32 : i32 to index
        %274 = arith.minsi %c-424_i16, %c17954_i16 : i16
        scf.condition(%true) %120 : vector<7xf16>
      } do {
      ^bb0(%arg1: vector<7xf16>):
        %269 = bufferization.to_memref %expanded : memref<6x7x6x1xi16>
        %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - (d2 + 16) - 63)>(%93, %157, %c7, %c0)
        %271 = arith.remsi %c-5339_i16, %c-5339_i16 : i16
        %272 = math.ipowi %true_0, %true : i1
        %273 = arith.addf %127, %127 : f32
        %false_52 = arith.constant false
        %274 = vector.transfer_read %alloc_15[%c8], %false_52 : memref<6xi1>, vector<i1>
        %275 = arith.cmpf ult, %127, %127 : f32
        %276 = vector.maskedload %alloc_15[%c5], %118, %118 : memref<6xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %277 = vector.splat %60 : vector<6xindex>
        %278 = tensor.empty() : tensor<5x6xi32>
        %279 = tensor.empty() : tensor<6x6xi32>
        %280 = linalg.matmul ins(%152, %278 : tensor<6x5xi32>, tensor<5x6xi32>) outs(%279 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %alloc_53 = memref.alloc() : memref<6xi64>
        %281 = math.tan %cst_4 : f32
        %282 = arith.subi %false_52, %false_1 : i1
        %283 = index.sub %c11, %86
        %284 = arith.shrsi %false_25, %258 : i1
        %285 = vector.reduction <add>, %109 : vector<6xf32> into f32
        scf.yield %120 : vector<7xf16>
      }
      %splat_51 = tensor.splat %c12152_i16 : tensor<6x7x6xi16>
      %262 = vector.insert %cst_3, %120 [2] : f16 into vector<7xf16>
      %263 = math.exp2 %1 : tensor<6x7x6xf32>
      %264 = vector.broadcast %c-5339_i16 : i16 to vector<i16>
      %265 = vector.transfer_write %264, %2[%c14] : vector<i16>, tensor<6xi16>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat_26, %6 : tensor<6xf32>, tensor<6xf32>) outs(%1 : tensor<6x7x6xf32>) {
      ^bb0(%in: f32, %in_52: f32, %out: f32):
        %269 = math.roundeven %splat_26 : tensor<6xf32>
        %270 = index.maxs %c12, %88
        %271 = vector.splat %cst_3 : vector<6xf16>
        %272 = math.floor %127 : f32
        %273 = index.maxu %c0, %c2
        %274 = vector.transpose %117, [0] : vector<7xf16> to vector<7xf16>
        %275 = arith.divsi %c-424_i16, %c-5339_i16 : i16
        %276 = vector.broadcast %c1463441060_i32 : i32 to vector<i32>
        vector.transfer_write %276, %alloc_8[%c13] : vector<i32>, memref<7xi32>
        %277 = math.log2 %splat_23 : tensor<6xf16>
        affine.store %144, %alloc_24[%c13] : memref<6xi32>
        %278 = math.roundeven %3 : tensor<6xf32>
        memref.store %258, %39[%c0, %c2, %c2] : memref<6x7x6xi1>
        %279 = arith.shli %c17954_i16, %c12152_i16 : i16
        %280 = tensor.empty() : tensor<6x7x6xi32>
        %281 = math.fpowi %1, %280 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
        %splat_53 = tensor.splat %c27473_i16 : tensor<6xi16>
        %282 = vector.broadcast %cst : f16 to vector<f16>
        %283 = vector.transfer_write %282, %8[%c11] : vector<f16>, tensor<6xf16>
        %284 = math.ipowi %expanded_34, %expanded_34 : tensor<7x1xi1>
        %285 = arith.divsi %false_1, %true_0 : i1
        %286 = bufferization.to_memref %2 : memref<6xi16>
        %287 = vector.transpose %276, [] : vector<i32> to vector<i32>
        %288 = vector.broadcast %c17954_i16 : i16 to vector<6xi16>
        %289 = index.ceildivs %41, %93
        %290 = arith.floordivsi %false_25, %258 : i1
        %291 = index.ceildivs %c0, %c7
        affine.store %c1_i64, %alloc_9[%c0, %c15, %c15] : memref<6x7x6xi64>
        %292 = vector.bitcast %165 : vector<2xi32> to vector<2xi32>
        %c156335039_i64 = arith.constant 156335039 : i64
        %293 = vector.load %alloc_17[%c4] : memref<7xf32>, vector<7xf32>
        %294 = vector.transpose %293, [0] : vector<7xf32> to vector<7xf32>
        %295 = math.log %8 : tensor<6xf16>
        %296 = index.divs %86, %c2
        %297 = arith.xori %false_25, %258 : i1
        linalg.yield %127 : f32
      } -> tensor<6x7x6xf32>
      %267 = index.ceildivs %c11, %142
      %268 = math.fma %1, %1, %1 : tensor<6x7x6xf32>
      scf.yield
    }
    default {
      %254 = math.exp2 %5 : tensor<6xf16>
      %255 = math.absf %splat_26 : tensor<6xf32>
      %256 = index.floordivs %123, %c13
      %splat_51 = tensor.splat %c17954_i16 : tensor<6xi16>
      %257 = arith.shrui %c1463441060_i32, %c1463441060_i32 : i32
      affine.for %arg1 = 0 to 64 {
      }
      %258 = index.floordivs %c6, %157
      %c1_i64_52 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %259 = vector.transfer_read %13[%86, %c14, %133], %c0_i64 : tensor<6x7x6xi64>, vector<i64>
      %260 = bufferization.clone %alloc_19 : memref<6x7x6xi64> to memref<6x7x6xi64>
      %261 = arith.shrsi %144, %144 : i32
      %262 = arith.maxui %false, %true_0 : i1
      %collapsed_53 = tensor.collapse_shape %cast_29 [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
      %263 = vector.insertelement %c27473_i16, %124[%156 : index] : vector<7xi16>
      %264 = math.log %127 : f32
      %265 = arith.mulf %cst_3, %cst : f16
      %266 = math.tanh %5 : tensor<6xf16>
    }
    %172 = bufferization.to_tensor %130 : memref<6x7x6xf32>
    %173 = index.maxs %c14, %116
    %174 = math.absf %splat_26 : tensor<6xf32>
    memref.store %144, %alloc_8[%c6] : memref<7xi32>
    %175 = arith.mulf %cst_3, %cst_3 : f16
    %176 = math.ipowi %false, %false : i1
    %177 = arith.ceildivsi %c1_i64, %c400634096_i64 : i64
    %178 = affine.max affine_map<(d0) -> ((d0 + d0 mod 16) mod 2 - 8, (d0 + d0 mod 16) mod 2, 0, 0)>(%156)
    %179 = math.log2 %42 : tensor<6x7xf32>
    %180 = arith.remsi %c-5339_i16, %c12152_i16 : i16
    %181 = index.floordivs %c2, %c14
    %182 = index.floordivs %c0, %c9
    %183 = index.castu %c-424_i16 : i16 to index
    %184 = index.ceildivs %143, %60
    %185 = math.log10 %127 : f32
    memref.assume_alignment %alloc_10, 8 : memref<7xi32>
    %186 = index.divs %c1, %123
    %187 = index.divu %c11, %c2
    %188 = arith.remui %c400634096_i64, %c1_i64 : i64
    %189 = vector.broadcast %186 : index to vector<5xindex>
    %190 = vector.broadcast %false_25 : i1 to vector<5xi1>
    vector.scatter %154[%c4, %c5, %c5] [%189], %190, %190 : memref<6x7x6xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
    %191 = arith.negf %cst_3 : f16
    %192 = vector.insert %c-5339_i16, %124 [3] : i16 into vector<7xi16>
    %193 = arith.ceildivsi %c2006163504_i64, %c2006163504_i64 : i64
    %194 = math.cos %splat_26 : tensor<6xf32>
    %collapsed_37 = tensor.collapse_shape %expanded [[0, 1], [2, 3]] : tensor<6x7x6x1xi16> into tensor<42x6xi16>
    %195 = vector.gather %8[%60] [%119], %118, %117 : tensor<6xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %196 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<6x7x6xi64>) outs(%13 : tensor<6x7x6xi64>) {
    ^bb0(%in: i64, %out: i64):
      %254 = vector.broadcast %false : i1 to vector<6x7x6xi1>
      %255 = index.floordivs %156, %187
      %256 = arith.maxf %127, %cst_4 : f32
      %257 = vector.extract %165[1] : vector<2xi32>
      affine.store %false_1, %alloc_15[%c8] : memref<6xi1>
      %258 = arith.remsi %true, %false : i1
      %259 = arith.shli %c2006163504_i64, %c400634096_i64 : i64
      %260 = arith.divsi %c12152_i16, %c-5339_i16 : i16
      %collapsed_51 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x7x6xf32> into tensor<42x6xf32>
      %261 = vector.broadcast %144 : i32 to vector<6x7x6xi32>
      %262 = vector.gather %alloc_7[%c6, %183, %c8] [%261], %254, %261 : memref<6x7x6xi32>, vector<6x7x6xi32>, vector<6x7x6xi1>, vector<6x7x6xi32> into vector<6x7x6xi32>
      %alloc_52 = memref.alloc() : memref<6xi32>
      %263 = tensor.empty() : tensor<6x7x6xf32>
      %mapped_53 = linalg.map ins(%alloc_6, %alloc_6 : memref<6x7x6xf32>, memref<6x7x6xf32>) outs(%263 : tensor<6x7x6xf32>)
        (%in_58: f32, %in_59: f32) {
          %278 = math.ipowi %splat, %15 : tensor<6xi64>
          memref.assume_alignment %154, 8 : memref<6x7x6xi1>
          %rank_60 = tensor.rank %152 : tensor<6x5xi32>
          %279 = math.exp2 %cst : f16
          %280 = math.fpowi %cst_2, %144 : f32, i32
          %true_61 = index.bool.constant true
          %281 = vector.reduction <mul>, %195 : vector<7xf16> into f16
          %splat_62 = tensor.splat %false_1 : tensor<6xi1>
          %282 = affine.load %alloc_24[%c14] : memref<6xi32>
          %283 = math.fpowi %127, %c1463441060_i32 : f32, i32
          %284 = math.expm1 %collapsed_35 : tensor<42xf32>
          %285 = vector.insertelement %in_59, %109[%93 : index] : vector<6xf32>
          %286 = math.round %in_59 : f32
          %287 = vector.maskedload %alloc_15[%c2], %68, %68 : memref<6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
          %288 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d0 - d3) - ((d3 + 32) * 4 - 32), d3 + 1, d3 + 5)>(%156, %184, %186, %c5)
          %289 = index.divs %c7, %c13
          %290 = math.absf %in_59 : f32
          memref.assume_alignment %alloc_18, 8 : memref<7xi16>
          %extracted = tensor.extract %42[%c2, %c2] : tensor<6x7xf32>
          %291 = tensor.empty() : tensor<7xi16>
          %292 = arith.maxf %cst_3, %cst_3 : f16
          %293 = vector.broadcast %in_59 : f32 to vector<6xf32>
          %294 = arith.cmpf ugt, %cst_3, %cst_3 : f16
          %295 = arith.shrsi %c400634096_i64, %out : i64
          %296 = index.ceildivs %116, %c6
          %alloc_63 = memref.alloc() : memref<5x6xf32>
          %297 = tensor.empty() : tensor<6x6xf32>
          %298 = linalg.matmul ins(%52, %alloc_63 : tensor<6x5xf32>, memref<5x6xf32>) outs(%297 : tensor<6x6xf32>) -> tensor<6x6xf32>
          %299 = math.fma %263, %1, %263 : tensor<6x7x6xf32>
          %300 = index.add %c1, %c13
          %301 = vector.broadcast %c1463441060_i32 : i32 to vector<6x7xi32>
          %dest, %accumulated_value = vector.scan <xor>, %262, %301 {inclusive = true, reduction_dim = 2 : i64} : vector<6x7x6xi32>, vector<6x7xi32>
          %302 = math.exp %cst_2 : f32
          %303 = math.log %collapsed_35 : tensor<42xf32>
          %304 = vector.broadcast %false : i1 to vector<5xi1>
          %305 = vector.maskedload %alloc_7[%c2, %c2, %c2], %304, %20 : memref<6x7x6xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
          %cst_64 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_64 : f32
        }
      %264 = arith.shli %true_0, %true : i1
      %cast_54 = tensor.cast %4 : tensor<6xi1> to tensor<?xi1>
      %265 = vector.gather %2[%60] [%119], %118, %124 : tensor<6xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %266 = vector.broadcast %c2006163504_i64 : i64 to vector<7xi64>
      %267 = math.floor %splat_26 : tensor<6xf32>
      %splat_55 = tensor.splat %in : tensor<6x7x6xi64>
      %268 = arith.maxf %cst, %cst_3 : f16
      %269 = vector.broadcast %c17954_i16 : i16 to vector<6xi16>
      %270 = vector.load %alloc_9[%c0, %c0, %c4] : memref<6x7x6xi64>, vector<7xi64>
      %271 = math.log2 %52 : tensor<6x5xf32>
      %272 = index.maxs %88, %143
      affine.store %c1463441060_i32, %alloc_5[%c3] : memref<7xi32>
      memref.copy %alloc_9, %alloc_16 : memref<6x7x6xi64> to memref<6x7x6xi64>
      %splat_56 = tensor.splat %c12152_i16 : tensor<6xi16>
      %273 = math.roundeven %3 : tensor<6xf32>
      %cst_57 = arith.constant 5.942400e+04 : f16
      %274 = math.floor %1 : tensor<6x7x6xf32>
      %275 = math.absf %263 : tensor<6x7x6xf32>
      %276 = arith.subi %c1_i64, %c1_i64 : i64
      %277 = vector.broadcast %out : i64 to vector<6xi64>
      linalg.yield %c2006163504_i64 : i64
    } -> tensor<6x7x6xi64>
    %197 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%133, %c7, %142, %157)
    %collapsed_38 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<42x6xi16> into tensor<252xi16>
    %198 = arith.xori %c1463441060_i32, %c1463441060_i32 : i32
    %199 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<6x7x6xi64>) {
    ^bb0(%out: i64):
      %254 = affine.if affine_set<(d0, d1, d2) : (-(-d0 + d2 - 8) - 128 == 0, d0 >= 0, -(-d0 + d2 - 8) - 128 == 0)>(%c6, %c2, %c7) -> i16 {
        %283 = vector.broadcast %false_25 : i1 to vector<i1>
        %284 = vector.transfer_write %283, %4[%187] : vector<i1>, tensor<6xi1>
        %285 = vector.load %alloc_19[%c3, %c4, %c4] : memref<6x7x6xi64>, vector<6x7x6xi64>
        %286 = math.fma %52, %52, %52 : tensor<6x5xf32>
        %287 = arith.divsi %true_0, %false_1 : i1
        %288 = math.ipowi %false_1, %false_25 : i1
        %alloc_56 = memref.alloc() : memref<6xf32>
        %289 = math.fpowi %cst_3, %c1463441060_i32 : f16, i32
        %290 = memref.atomic_rmw assign %c-424_i16, %alloc_12[%c2] : (i16, memref<6xi16>) -> i16
        affine.yield %c27473_i16 : i16
      } else {
        %283 = vector.maskedload %alloc_13[%c4], %68, %67 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %284 = math.roundeven %1 : tensor<6x7x6xf32>
        %285 = math.copysign %collapsed_35, %collapsed_35 : tensor<42xf32>
        %286 = arith.shli %c-424_i16, %c12152_i16 : i16
        %287 = arith.cmpi uge, %c2006163504_i64, %c2006163504_i64 : i64
        %288 = vector.multi_reduction <maxf>, %195, %cst_3 [0] : vector<7xf16> to f16
        %289 = tensor.empty() : tensor<7x6xf32>
        %290 = tensor.empty() : tensor<6x6xf32>
        %291 = linalg.matmul ins(%42, %289 : tensor<6x7xf32>, tensor<7x6xf32>) outs(%290 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %292 = memref.atomic_rmw minu %c400634096_i64, %alloc_19[%c0, %c3, %c1] : (i64, memref<6x7x6xi64>) -> i64
        affine.yield %c-424_i16 : i16
      }
      %255 = math.ctpop %expanded_34 : tensor<7x1xi1>
      %256 = index.floordivs %c9, %187
      %splat_51 = tensor.splat %127 : tensor<6xf32>
      %257 = bufferization.clone %alloc_14 : memref<6x7x6xf32> to memref<6x7x6xf32>
      %258 = arith.floordivsi %144, %c1463441060_i32 : i32
      vector.print %109 : vector<6xf32>
      %259 = bufferization.to_tensor %alloc_12 : memref<6xi16>
      %260 = arith.maxf %cst, %cst : f16
      %261 = math.floor %cst : f16
      %from_elements_52 = tensor.from_elements %c-5339_i16, %c17954_i16, %c12152_i16, %c12152_i16, %c12152_i16, %c17954_i16 : tensor<6xi16>
      %alloc_53 = memref.alloc() : memref<6xf32>
      memref.tensor_store %splat_51, %alloc_53 : memref<6xf32>
      %262 = math.ipowi %21, %splat : tensor<6xi64>
      %263 = math.log10 %1 : tensor<6x7x6xf32>
      %264 = math.log2 %52 : tensor<6x5xf32>
      %265 = arith.addf %cst, %cst : f16
      %266 = bufferization.clone %alloc_16 : memref<6x7x6xi64> to memref<6x7x6xi64>
      %267 = arith.subi %false, %false : i1
      %268 = math.log10 %3 : tensor<6xf32>
      %269 = math.cos %42 : tensor<6x7xf32>
      %false_54 = arith.constant false
      %270 = vector.transfer_read %4[%143], %false_54 : tensor<6xi1>, vector<i1>
      %271 = arith.floordivsi %false_54, %false : i1
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_55 = arith.constant 0 : i16
      %272 = vector.transfer_read %expanded[%c15, %c2, %123, %c11], %c0_i16_55 : tensor<6x7x6x1xi16>, vector<i16>
      %273 = vector.broadcast %cst : f16 to vector<7x7xf16>
      %274 = vector.outerproduct %195, %117, %273 {kind = #vector.kind<add>} : vector<7xf16>, vector<7xf16>
      %275 = math.tan %3 : tensor<6xf32>
      %276 = arith.negf %cst_4 : f32
      %277 = math.tanh %5 : tensor<6xf16>
      %278 = arith.andi %c-424_i16, %c0_i16 : i16
      %279 = arith.maxf %cst_2, %cst_2 : f32
      %280 = math.fma %cst_4, %cst_2, %127 : f32
      %281 = math.exp %6 : tensor<6xf32>
      %282 = vector.extract %68[2] : vector<6xi1>
      linalg.yield %c2006163504_i64 : i64
    } -> tensor<6x7x6xi64>
    %splat_39 = tensor.splat %false_1 : tensor<6xi1>
    %200 = vector.splat %181 : vector<6x7x6xindex>
    %201 = vector.extract %109[2] : vector<6xf32>
    scf.index_switch %60 
    case 1 {
      %254 = math.fpowi %splat_26, %78 : tensor<6xf32>, tensor<6xi32>
      %alloc_51 = memref.alloc() : memref<7xi16>
      %255 = arith.minui %144, %c1463441060_i32 : i32
      %256 = arith.shrsi %true_0, %false_1 : i1
      %257 = scf.while (%arg1 = %165) : (vector<2xi32>) -> vector<2xi32> {
        %267 = affine.apply affine_map<(d0, d1) -> (d0 + 16)>(%157, %c7)
        %268 = vector.splat %186 : vector<6xindex>
        %269 = index.ceildivs %c2, %c11
        %270 = math.atan2 %52, %52 : tensor<6x5xf32>
        %271 = tensor.empty() : tensor<6x7x6xi32>
        %272 = math.fpowi %1, %271 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
        %273 = bufferization.to_memref %15 : memref<6xi64>
        %274 = math.tanh %5 : tensor<6xf16>
        %275 = bufferization.clone %alloc_17 : memref<7xf32> to memref<7xf32>
        scf.condition(%false_1) %165 : vector<2xi32>
      } do {
      ^bb0(%arg1: vector<2xi32>):
        %267 = math.ctpop %23 : tensor<i64>
        %268 = vector.transpose %68, [0] : vector<6xi1> to vector<6xi1>
        %269 = vector.extract_strided_slice %20 {offsets = [1], sizes = [3], strides = [1]} : vector<5xi32> to vector<3xi32>
        %270 = index.divu %c13, %116
        %271 = memref.atomic_rmw mulf %127, %130[%c0, %c4, %c3] : (f32, memref<6x7x6xf32>) -> f32
        %272 = index.floordivs %182, %270
        %273 = math.log1p %splat_23 : tensor<6xf16>
        %274 = vector.insertelement %cst, %120[%93 : index] : vector<7xf16>
        %275 = arith.minui %true, %false : i1
        %276 = vector.shuffle %165, %165 [0, 1, 2, 3] : vector<2xi32>, vector<2xi32>
        %277 = vector.broadcast %false_1 : i1 to vector<6x7x6xi1>
        %splat_54 = tensor.splat %c-424_i16 : tensor<6xi16>
        %278 = math.log10 %6 : tensor<6xf32>
        %279 = index.ceildivs %c4, %197
        %280 = vector.shuffle %20, %67 [0, 1, 2, 4, 5, 6, 7, 9] : vector<5xi32>, vector<6xi32>
        %281 = math.log2 %3 : tensor<6xf32>
        scf.yield %165 : vector<2xi32>
      }
      %258 = math.absf %cst_4 : f32
      %259 = math.log1p %42 : tensor<6x7xf32>
      %260 = arith.remf %127, %127 : f32
      %261 = math.cos %172 : tensor<6x7x6xf32>
      %rank_52 = tensor.rank %10 : tensor<6xi64>
      %262 = math.log %5 : tensor<6xf16>
      %263 = scf.if %true -> (i32) {
        %267 = index.sub %93, %123
        %268 = math.log %splat_23 : tensor<6xf16>
        %269 = vector.extract %165[1] : vector<2xi32>
        %270 = index.maxu %186, %143
        %true_54 = arith.constant true
        %271 = vector.broadcast %c-424_i16 : i16 to vector<i16>
        %272 = vector.transfer_write %271, %collapsed_38[%88] : vector<i16>, tensor<252xi16>
        memref.copy %alloc_5, %alloc_13 : memref<7xi32> to memref<7xi32>
        %273 = vector.broadcast %127 : f32 to vector<7xf32>
        %274 = vector.maskedload %alloc_17[%c1], %118, %273 : memref<7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        scf.yield %144 : i32
      } else {
        %267 = arith.ceildivsi %c2006163504_i64, %c2006163504_i64 : i64
        %alloca_54 = memref.alloca() : memref<6xi64>
        %268 = arith.mulf %127, %cst_2 : f32
        memref.assume_alignment %alloc_7, 2 : memref<6x7x6xi32>
        %269 = arith.cmpi ult, %c-424_i16, %c27473_i16 : i16
        %270 = arith.shrui %false_25, %true_0 : i1
        %alloca_55 = memref.alloca() : memref<7xi64>
        %271 = index.divs %143, %182
        scf.yield %144 : i32
      }
      %264 = math.rsqrt %1 : tensor<6x7x6xf32>
      %265 = math.log2 %1 : tensor<6x7x6xf32>
      %alloca_53 = memref.alloca() : memref<6xi1>
      %266 = tensor.empty() : tensor<6xi16>
      scf.yield
    }
    case 2 {
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %254 = vector.transfer_read %6[%187], %cst_52 : tensor<6xf32>, vector<f32>
      %255 = vector.reduction <minsi>, %20 : vector<5xi32> into i32
      %256 = math.ceil %8 : tensor<6xf16>
      %alloc_53 = memref.alloc() : memref<1x6xi1>
      %257 = tensor.empty() : tensor<7x6xi1>
      %258 = linalg.matmul ins(%expanded_34, %alloc_53 : tensor<7x1xi1>, memref<1x6xi1>) outs(%257 : tensor<7x6xi1>) -> tensor<7x6xi1>
      %true_54 = index.bool.constant true
      %259 = math.log %from_elements : tensor<7xf16>
      %260 = bufferization.to_memref %8 : memref<6xf16>
      %261 = vector.insert %false_1, %68 [1] : i1 into vector<6xi1>
      %262 = vector.broadcast %c2 : index to vector<5xindex>
      %263 = vector.broadcast %true_54 : i1 to vector<5xi1>
      %264 = vector.broadcast %c12152_i16 : i16 to vector<5xi16>
      vector.scatter %alloc_11[%c4] [%262], %263, %264 : memref<6xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
      %265 = arith.shrsi %c1_i64, %c400634096_i64 : i64
      %266 = vector.maskedload %alloc_6[%c2, %c1, %c2], %68, %110 : memref<6x7x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %267 = arith.maxui %c-424_i16, %c27473_i16 : i16
      %268 = index.floordivs %c3, %116
      vector.print %109 : vector<6xf32>
      %269 = math.floor %cst : f16
      %270 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 128 - 16 >= 0, d2 - 128 == 0, d2 mod 16 == 0, d2 ceildiv 8 - 3 == 0)>(%c4, %c6, %c13) -> f32 {
        %271 = math.tanh %5 : tensor<6xf16>
        affine.store %127, %130[%c9, %c8, %c6] : memref<6x7x6xf32>
        %272 = math.floor %splat_23 : tensor<6xf16>
        %273 = index.floordivs %c15, %143
        %274 = arith.remsi %false_25, %false : i1
        %275 = arith.negf %cst_4 : f32
        %alloc_55 = memref.alloc() : memref<6xf32>
        %276 = vector.transpose %110, [0] : vector<6xf32> to vector<6xf32>
        affine.yield %cst_51 : f32
      } else {
        %271 = affine.max affine_map<(d0, d1, d2) -> (-d0, (d0 + 4) mod 16)>(%88, %182, %c10)
        %272 = math.fma %172, %172, %172 : tensor<6x7x6xf32>
        %273 = math.atan %cst : f16
        %274 = arith.ceildivsi %c17954_i16, %c-424_i16 : i16
        %275 = math.ceil %127 : f32
        %276 = math.absf %cst : f16
        %277 = math.cos %splat_26 : tensor<6xf32>
        %278 = arith.minui %false_1, %true_54 : i1
        affine.yield %cst_51 : f32
      }
      scf.yield
    }
    case 3 {
      %254 = vector.extract_strided_slice %118 {offsets = [4], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
      %255 = math.copysign %cst, %cst : f16
      %256 = index.floordivs %173, %187
      %false_51 = index.bool.constant false
      %257 = arith.minf %cst_2, %cst_2 : f32
      %258 = math.exp2 %cst_4 : f32
      %inserted_52 = tensor.insert %true into %12[%c2] : tensor<7xi1>
      %259 = math.fpowi %cst_4, %144 : f32, i32
      %true_53 = index.bool.constant true
      %260 = arith.divf %cst, %cst_3 : f16
      %261 = affine.load %130[%c9, %c1, %c10] : memref<6x7x6xf32>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<6x7x6xf32>) {
      ^bb0(%out: f32):
        %266 = arith.muli %true_0, %false_1 : i1
        %267 = math.fpowi %52, %152 : tensor<6x5xf32>, tensor<6x5xi32>
        %268 = math.log10 %6 : tensor<6xf32>
        %269 = affine.min affine_map<(d0, d1) -> (d1, -d0)>(%c13, %181)
        vector.print %87 : vector<6xi64>
        %270 = math.tan %3 : tensor<6xf32>
        %271 = arith.maxui %c12152_i16, %c27473_i16 : i16
        %272 = arith.divf %cst_2, %261 : f32
        %273 = math.ctpop %expanded : tensor<6x7x6x1xi16>
        %274 = index.add %c8, %123
        %275 = math.atan %3 : tensor<6xf32>
        memref.copy %alloc_20, %alloc_15 : memref<6xi1> to memref<6xi1>
        %276 = arith.negf %cst_3 : f16
        %277 = arith.floordivsi %c1_i64, %c400634096_i64 : i64
        %278 = math.ctlz %c1_i64 : i64
        %279 = arith.negf %cst_3 : f16
        %280 = arith.divsi %c-5339_i16, %c17954_i16 : i16
        %281 = arith.xori %c1_i64, %c400634096_i64 : i64
        %282 = math.copysign %127, %out : f32
        %283 = arith.remf %127, %261 : f32
        %inserted_55 = tensor.insert %false into %expanded_34[%c4, %c0] : tensor<7x1xi1>
        %splat_56 = tensor.splat %cst : tensor<6xf16>
        %284 = math.log10 %42 : tensor<6x7xf32>
        %285 = vector.extract_strided_slice %120 {offsets = [4], sizes = [2], strides = [1]} : vector<7xf16> to vector<2xf16>
        %286 = arith.shrsi %false_25, %true : i1
        %287 = arith.shrsi %false_1, %true : i1
        %288 = index.castu %184 : index to i32
        affine.store %c-424_i16, %alloc_11[%c14] : memref<6xi16>
        %289 = index.floordivs %c11, %c15
        %290 = math.fpowi %6, %78 : tensor<6xf32>, tensor<6xi32>
        %false_57 = index.bool.constant false
        %291 = vector.load %alloc_19[%c4, %c5, %c1] : memref<6x7x6xi64>, vector<7xi64>
        linalg.yield %127 : f32
      } -> tensor<6x7x6xf32>
      %alloc_54 = memref.alloc() : memref<7x1xi1>
      memref.tensor_store %expanded_34, %alloc_54 : memref<7x1xi1>
      %263 = math.exp %cst : f16
      %264 = vector.shuffle %117, %195 [1, 4, 8, 9, 10, 12] : vector<7xf16>, vector<7xf16>
      %265 = math.log %6 : tensor<6xf32>
      scf.yield
    }
    case 4 {
      %extracted = tensor.extract %5[%c5] : tensor<6xf16>
      %254 = bufferization.clone %alloc_14 : memref<6x7x6xf32> to memref<6x7x6xf32>
      %255 = arith.xori %c27473_i16, %c17954_i16 : i16
      memref.copy %254, %130 : memref<6x7x6xf32> to memref<6x7x6xf32>
      %256 = math.log2 %cst_4 : f32
      %257 = math.expm1 %cst_3 : f16
      %258 = arith.shrsi %144, %c1463441060_i32 : i32
      %rank_51 = tensor.rank %5 : tensor<6xf16>
      %259 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %260 = vector.outerproduct %120, %120, %259 {kind = #vector.kind<mul>} : vector<7xf16>, vector<7xf16>
      %extracted_52 = tensor.extract %8[%c0] : tensor<6xf16>
      %261 = arith.shrsi %c1463441060_i32, %c1463441060_i32 : i32
      %262 = math.log10 %52 : tensor<6x5xf32>
      %263 = index.divs %156, %181
      %c341936239_i32 = arith.constant 341936239 : i32
      %264 = vector.multi_reduction <mul>, %64, %64 [] : vector<5xf32> to vector<5xf32>
      %265 = arith.muli %c2006163504_i64, %c2006163504_i64 : i64
      scf.yield
    }
    default {
      %254 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 32)>(%178, %156, %c12)
      %255 = vector.transpose %124, [0] : vector<7xi16> to vector<7xi16>
      %256 = arith.mulf %cst_3, %cst_3 : f16
      %257 = arith.shli %c17954_i16, %c-424_i16 : i16
      %258 = math.ctpop %reduced : tensor<i16>
      %from_elements_51 = tensor.from_elements %c-5339_i16, %c27473_i16, %c17954_i16, %c17954_i16, %c-424_i16, %c-5339_i16 : tensor<6xi16>
      %259 = vector.extract %119[0] : vector<7xi32>
      scf.if %false_1 {
        %266 = math.log10 %8 : tensor<6xf16>
        %267 = math.copysign %6, %3 : tensor<6xf32>
        %collapsed_55 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x7x6xi16> into tensor<42x6xi16>
        %expanded_56 = tensor.expand_shape %14 [[0, 1]] : tensor<7xi16> into tensor<7x1xi16>
        %268 = arith.shrui %c400634096_i64, %c1_i64 : i64
        %269 = math.exp2 %1 : tensor<6x7x6xf32>
        %270 = math.sqrt %8 : tensor<6xf16>
        %271 = arith.cmpi sge, %c27473_i16, %c27473_i16 : i16
      }
      %alloc_52 = memref.alloc() : memref<7xi32>
      %cast_53 = tensor.cast %15 : tensor<6xi64> to tensor<?xi64>
      %260 = tensor.empty() : tensor<6xf32>
      %mapped_54 = linalg.map ins(%3, %splat_26 : tensor<6xf32>, tensor<6xf32>) outs(%260 : tensor<6xf32>)
        (%in: f32, %in_55: f32) {
          %266 = vector.broadcast %c27473_i16 : i16 to vector<6x7x6xi16>
          %267 = math.tan %172 : tensor<6x7x6xf32>
          %268 = arith.minui %c1_i64, %c1_i64 : i64
          %269 = vector.extract %64[0] : vector<5xf32>
          %270 = math.copysign %127, %127 : f32
          %alloc_56 = memref.alloc() : memref<6x7x6xi32>
          %271 = math.floor %260 : tensor<6xf32>
          affine.store %c-424_i16, %alloc_18[%c0] : memref<7xi16>
          %272 = arith.xori %c1463441060_i32, %144 : i32
          %273 = math.round %8 : tensor<6xf16>
          %274 = index.divs %182, %88
          %alloc_57 = memref.alloc() : memref<6xf32>
          %275 = vector.shuffle %67, %69 [0, 1, 3, 5, 6, 8, 9, 10, 11] : vector<6xi32>, vector<6xi32>
          %276 = arith.subi %c1_i64, %c1_i64 : i64
          %277 = math.rsqrt %1 : tensor<6x7x6xf32>
          %278 = arith.cmpf uge, %cst_2, %cst_4 : f32
          %279 = vector.shuffle %120, %117 [0, 4, 5, 7, 9, 10, 12] : vector<7xf16>, vector<7xf16>
          %280 = math.ipowi %11, %11 : tensor<6x7x6xi16>
          %281 = bufferization.clone %alloc_9 : memref<6x7x6xi64> to memref<6x7x6xi64>
          %282 = arith.maxf %127, %in_55 : f32
          %283 = math.round %splat_23 : tensor<6xf16>
          %rank_58 = tensor.rank %splat_33 : tensor<6xi1>
          %284 = arith.mulf %cst_3, %cst : f16
          %285 = memref.atomic_rmw maxf %cst_2, %130[%c2, %c1, %c5] : (f32, memref<6x7x6xf32>) -> f32
          %286 = index.ceildivs %rank_58, %186
          %287 = arith.floordivsi %c2006163504_i64, %c400634096_i64 : i64
          %288 = arith.remsi %false_1, %false_1 : i1
          %true_59 = index.bool.constant true
          %289 = index.divs %c4, %93
          %from_elements_60 = tensor.from_elements %in, %in_55, %cst_4, %127, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %in_55, %cst_4, %in_55, %in_55, %in_55, %in_55, %127, %127, %in, %127, %in, %in, %cst_2, %in, %127, %in, %in, %cst_2, %in_55, %in, %in, %in, %cst_2, %in_55, %in, %in, %in, %in, %127, %cst_2, %cst_2, %cst_4, %127, %in, %127, %cst_2, %cst_2, %cst_2, %127, %cst_2, %cst_4, %in_55, %in, %in_55, %127, %in, %127, %in, %in_55, %in, %in, %cst_2, %127, %in, %127, %in_55, %127, %cst_4, %in_55, %in, %in, %in_55, %127, %in, %cst_2, %cst_4, %in, %in_55, %in_55, %in_55, %in, %in, %127, %127, %127, %in, %in, %in_55, %cst_4, %in, %127, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %in_55, %in, %in_55, %in_55, %in, %cst_2, %cst_2, %in_55, %127, %cst_4, %cst_4, %cst_4, %in, %cst_2, %in_55, %in, %in_55, %cst_2, %in_55, %cst_2, %127, %cst_2, %in, %127, %127, %127, %127, %cst_4, %cst_4, %in_55, %cst_2, %in_55, %in, %in_55, %in_55, %cst_4, %127, %cst_2, %127, %cst_4, %in, %127, %cst_2, %in, %127, %cst_2, %in, %cst_2, %127, %in_55, %in_55, %in, %cst_4, %127, %cst_4, %cst_4, %cst_2, %cst_2, %127, %cst_4, %in_55, %cst_2, %in_55, %cst_4, %in, %127, %in_55, %cst_4, %in, %127, %in, %in_55, %127, %in, %127, %cst_4, %in, %cst_2, %cst_2, %127, %127, %127, %127, %cst_4, %cst_4, %127, %cst_2, %in_55, %127, %127, %cst_2, %in, %cst_2, %cst_4, %cst_4, %in_55, %cst_2, %in, %127, %127, %cst_2, %127, %cst_4, %in, %in, %cst_4, %cst_4, %in, %in_55, %in_55, %in, %in, %in, %127, %cst_2, %in_55, %127, %cst_4, %in_55, %in, %127, %cst_4, %in, %127, %in_55, %cst_4, %in, %127, %in_55, %cst_2, %127, %in, %127, %in_55, %cst_4, %cst_2, %in, %127, %127, %in_55, %cst_4, %in, %in, %127, %in, %cst_2, %in_55, %cst_4, %in, %127, %cst_2, %cst_2, %127, %127, %127, %cst_4 : tensor<6x7x6xf32>
          %290 = arith.remf %127, %in_55 : f32
          %291 = arith.addf %in, %in : f32
          %cst_61 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_61 : f32
        }
      %261 = arith.minui %false_25, %true : i1
      %262 = vector.create_mask %181, %c6, %c9 : vector<6x7x6xi1>
      %263 = math.exp2 %from_elements : tensor<7xf16>
      %264 = arith.remsi %c17954_i16, %c27473_i16 : i16
      %265 = vector.broadcast %false_25 : i1 to vector<6xi1>
    }
    affine.for %arg1 = 0 to 13 {
    }
    %from_elements_40 = tensor.from_elements %127, %cst_2, %127, %cst_2, %cst_4, %cst_4 : tensor<6xf32>
    %202 = index.divs %93, %184
    %203 = math.log1p %3 : tensor<6xf32>
    %204 = index.divs %c5, %c4
    %205 = math.log %from_elements_40 : tensor<6xf32>
    %206 = math.floor %42 : tensor<6x7xf32>
    affine.store %c1463441060_i32, %alloc_5[%c10] : memref<7xi32>
    memref.tensor_store %splat_33, %alloc_20 : memref<6xi1>
    %207 = math.atan %3 : tensor<6xf32>
    %splat_41 = tensor.splat %c17954_i16 : tensor<6xi16>
    %208 = index.divs %c9, %c7
    %209 = arith.negf %cst_2 : f32
    %210 = bufferization.to_tensor %alloc_15 : memref<6xi1>
    %211 = arith.remsi %c2006163504_i64, %c400634096_i64 : i64
    %212 = math.ctlz %78 : tensor<6xi32>
    %from_elements_42 = tensor.from_elements %cst_2, %cst_4, %cst_4, %127, %cst_4, %cst_4, %cst_2 : tensor<7xf32>
    %213 = math.rsqrt %splat_26 : tensor<6xf32>
    %214 = arith.floordivsi %true, %true_0 : i1
    %215 = arith.negf %cst_4 : f32
    %216 = vector.broadcast %c-5339_i16 : i16 to vector<6xi16>
    %217 = vector.maskedload %alloc_12[%c5], %68, %216 : memref<6xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
    %218 = index.ceildivs %c6, %133
    %219 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %195, %195, %cst : vector<7xf16>, vector<7xf16> into f16
    memref.store %false, %39[%c3, %c0, %c1] : memref<6x7x6xi1>
    %220 = index.ceildivu %c0, %60
    %221 = vector.transpose %110, [0] : vector<6xf32> to vector<6xf32>
    %c0_i32 = arith.constant 0 : i32
    %222 = vector.transfer_read %152[%c7, %184], %c0_i32 : tensor<6x5xi32>, vector<i32>
    %223 = arith.subi %false, %false_1 : i1
    %224 = arith.addf %cst_4, %127 : f32
    %225 = arith.remsi %c0_i32, %c0_i32 : i32
    %226 = math.tan %cst_4 : f32
    %227 = vector.broadcast %false_25 : i1 to vector<7x7xi1>
    %228 = vector.outerproduct %118, %118, %227 {kind = #vector.kind<or>} : vector<7xi1>, vector<7xi1>
    %229 = arith.xori %true, %true_0 : i1
    %230 = arith.shli %c400634096_i64, %c1_i64 : i64
    %231 = vector.broadcast %144 : i32 to vector<6xi32>
    %232 = math.round %cst_4 : f32
    %233 = index.maxu %c5, %c13
    %rank = tensor.rank %78 : tensor<6xi32>
    %234 = vector.broadcast %208 : index to vector<6xindex>
    vector.scatter %alloc_8[%c2] [%234], %68, %67 : memref<7xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
    %from_elements_43 = tensor.from_elements %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst : tensor<6x7x6xf16>
    %235 = vector.maskedload %alloc_24[%c3], %68, %69 : memref<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %236 = math.tanh %collapsed_35 : tensor<42xf32>
    %cast_44 = tensor.cast %collapsed_38 : tensor<252xi16> to tensor<?xi16>
    %237 = tensor.empty() : tensor<7xf32>
    %mapped_45 = linalg.map ins(%alloc_17 : memref<7xf32>) outs(%237 : tensor<7xf32>)
      (%in: f32) {
        %254 = vector.gather %210[%41] [%119], %118, %118 : tensor<6xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %255 = arith.subi %c400634096_i64, %c1_i64 : i64
        %alloc_51 = memref.alloc() : memref<5x7xf32>
        %256 = tensor.empty() : tensor<6x7xf32>
        %257 = linalg.matmul ins(%52, %alloc_51 : tensor<6x5xf32>, memref<5x7xf32>) outs(%256 : tensor<6x7xf32>) -> tensor<6x7xf32>
        %258 = math.log1p %6 : tensor<6xf32>
        %259 = vector.insertelement %127, %109[%rank : index] : vector<6xf32>
        %260 = tensor.empty() : tensor<6x7x6xi32>
        %261 = math.fpowi %1, %260 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
        %262 = math.rsqrt %splat_26 : tensor<6xf32>
        %263 = arith.remsi %false_1, %false_1 : i1
        %264 = scf.while (%arg1 = %alloc_8) : (memref<7xi32>) -> memref<7xi32> {
          %285 = arith.floordivsi %c1_i64, %c400634096_i64 : i64
          %286 = vector.broadcast %178 : index to vector<6xindex>
          vector.scatter %alloc[%c2] [%286], %68, %69 : memref<7xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
          %287 = vector.gather %154[%88, %173, %41] [%119], %254, %254 : memref<6x7x6xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %288 = math.cos %5 : tensor<6xf16>
          %289 = math.roundeven %from_elements : tensor<7xf16>
          %290 = memref.atomic_rmw maxf %in, %alloc_14[%c2, %c0, %c2] : (f32, memref<6x7x6xf32>) -> f32
          %291 = vector.maskedload %alloc_10[%c1], %68, %231 : memref<7xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
          %292 = arith.remsi %c-424_i16, %c27473_i16 : i16
          scf.condition(%true_0) %alloc_5 : memref<7xi32>
        } do {
        ^bb0(%arg1: memref<7xi32>):
          %285 = index.castu %true : i1 to index
          memref.assume_alignment %alloc_16, 4 : memref<6x7x6xi64>
          %286 = math.floor %3 : tensor<6xf32>
          %287 = vector.shuffle %67, %231 [5, 6, 7, 10, 11] : vector<6xi32>, vector<6xi32>
          %288 = index.castu %c2006163504_i64 : i64 to index
          %289 = vector.transpose %69, [0] : vector<6xi32> to vector<6xi32>
          %290 = vector.reduction <or>, %69 : vector<6xi32> into i32
          %291 = vector.broadcast %c9 : index to vector<6xindex>
          vector.scatter %alloc_11[%c4] [%291], %68, %216 : memref<6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
          %292 = arith.cmpf false, %cst, %cst : f16
          %293 = memref.load %alloc_13[%c5] : memref<7xi32>
          %294 = arith.floordivsi %c1463441060_i32, %c0_i32 : i32
          %295 = vector.broadcast %c1_i64 : i64 to vector<7xi64>
          %296 = vector.gather %21[%204] [%119], %254, %295 : tensor<6xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
          %297 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 128 + d1, d1 floordiv 64, d1 ceildiv 128 + d1, d3 + 64)>(%182, %c7, %60, %c15)
          %298 = bufferization.to_tensor %alloc_10 : memref<7xi32>
          %299 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 - 4) * 4)>(%184, %116, %c9, %c6)
          %300 = vector.splat %c14 : vector<6xindex>
          scf.yield %alloc_8 : memref<7xi32>
        }
        %265 = index.divu %123, %183
        affine.store %true, %alloc_20[%c5] : memref<6xi1>
        affine.store %144, %alloc_13[%c0] : memref<7xi32>
        %266 = scf.execute_region -> index {
          %alloc_55 = memref.alloc() : memref<6x7x6xi16>
          %285 = index.sub %204, %187
          %286 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 2 + d0) mod 64, ((d1 + 1) ceildiv 64) ceildiv 8)>(%c5, %265, %c1)
          %287 = arith.mulf %127, %cst_2 : f32
          %288 = math.log10 %cst_3 : f16
          %289 = vector.broadcast %cst_3 : f16 to vector<7x5xf16>
          %290 = vector.transfer_write %289, %from_elements_43[%c8, %c7, %93] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x5xf16>, tensor<6x7x6xf16>
          %291 = arith.ceildivsi %c1463441060_i32, %c1463441060_i32 : i32
          %292 = arith.shrsi %c17954_i16, %c-424_i16 : i16
          memref.store %true_0, %154[%c0, %c1, %c4] : memref<6x7x6xi1>
          %293 = vector.multi_reduction <maxui>, %216, %216 [] : vector<6xi16> to vector<6xi16>
          %294 = vector.extract %117[5] : vector<7xf16>
          %295 = vector.broadcast %in : f32 to vector<6xf32>
          %296 = vector.fma %295, %110, %295 : vector<6xf32>
          %297 = vector.load %alloc[%c4] : memref<7xi32>, vector<6x7x6xi32>
          %298 = arith.minui %c1463441060_i32, %c1463441060_i32 : i32
          %splat_56 = tensor.splat %c-424_i16 : tensor<7xi16>
          %splat_57 = tensor.splat %c-5339_i16 : tensor<6x7x6xi16>
          scf.yield %156 : index
        }
        %inserted_52 = tensor.insert %c2006163504_i64 into %10[%c1] : tensor<6xi64>
        %267 = index.maxs %173, %143
        %true_53 = index.bool.constant true
        %268 = math.sqrt %collapsed_35 : tensor<42xf32>
        %269 = math.round %5 : tensor<6xf16>
        %270 = arith.xori %false, %false : i1
        %271 = arith.cmpf ogt, %cst_4, %127 : f32
        %272 = tensor.empty() : tensor<6xf16>
        %273 = vector.shuffle %231, %69 [0, 1, 5, 6, 7, 9, 10] : vector<6xi32>, vector<6xi32>
        %274 = arith.xori %c400634096_i64, %c400634096_i64 : i64
        %275 = math.cos %52 : tensor<6x5xf32>
        %276 = vector.broadcast %127 : f32 to vector<7xf32>
        %277 = vector.maskedload %alloc_6[%c4, %c1, %c0], %254, %276 : memref<6x7x6xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %278 = index.divu %133, %c14
        %279 = bufferization.to_memref %15 : memref<6xi64>
        %280 = math.fpowi %8, %78 : tensor<6xf16>, tensor<6xi32>
        %281 = arith.cmpi sgt, %c12152_i16, %c27473_i16 : i16
        %extracted = tensor.extract %3[%c1] : tensor<6xf32>
        %282 = arith.addf %cst_3, %cst : f16
        %283 = vector.broadcast %127 : f32 to vector<6x7x6xf32>
        %284 = vector.fma %283, %283, %283 : vector<6x7x6xf32>
        %cst_54 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_54 : f32
      }
    %inserted_46 = tensor.insert %cst_2 into %splat_26[%c2] : tensor<6xf32>
    %238 = vector.broadcast %cst_3 : f16 to vector<6xf16>
    %239 = index.add %156, %218
    %240 = arith.cmpi ne, %false, %false : i1
    %241 = vector.extract %68[3] : vector<6xi1>
    %242 = vector.matrix_multiply %238, %238 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
    %243 = index.casts %false_25 : i1 to index
    %244 = tensor.empty() : tensor<6x7x6xi32>
    %245 = math.fpowi %1, %244 : tensor<6x7x6xf32>, tensor<6x7x6xi32>
    %alloc_47 = memref.alloc() : memref<6xi16>
    %246 = math.ipowi %7, %10 : tensor<6xi64>
    %alloc_48 = memref.alloc() : memref<6xf16>
    %247 = index.divs %86, %197
    %248 = tensor.empty() : tensor<7xf16>
    %249 = linalg.copy ins(%from_elements : tensor<7xf16>) outs(%248 : tensor<7xf16>) -> tensor<7xf16>
    %250 = tensor.empty() : tensor<6x42xi16>
    %transposed = linalg.transpose ins(%collapsed_37 : tensor<42x6xi16>) outs(%250 : tensor<6x42xi16>) permutation = [1, 0] 
    %251 = tensor.empty() : tensor<6xf32>
    %reduced_49 = linalg.reduce ins(%172 : tensor<6x7x6xf32>) outs(%251 : tensor<6xf32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %254 = index.maxs %133, %181
        %255 = arith.addf %in, %127 : f32
        %256 = affine.if affine_set<(d0, d1, d2, d3) : (d0 floordiv 64 >= 0, d0 == 0)>(%c8, %c13, %c11, %c14) -> f32 {
          %262 = affine.max affine_map<(d0, d1) -> (((d1 + d0 floordiv 4) ceildiv 8) floordiv 16)>(%133, %116)
          %263 = math.copysign %248, %from_elements : tensor<7xf16>
          %extracted = tensor.extract %11[%c0, %c2, %c5] : tensor<6x7x6xi16>
          %264 = tensor.empty() : tensor<6xi64>
          %265 = math.cttz %21 : tensor<6xi64>
          %266 = math.sqrt %1 : tensor<6x7x6xf32>
          %267 = vector.extract_strided_slice %235 {offsets = [2], sizes = [4], strides = [1]} : vector<6xi32> to vector<4xi32>
          %268 = index.divs %c8, %142
          affine.yield %in : f32
        } else {
          %splat_52 = tensor.splat %false : tensor<6xi1>
          %262 = vector.maskedload %alloc_18[%c4], %118, %124 : memref<7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          %alloca_53 = memref.alloca() : memref<6x7x6xf32>
          %alloc_54 = memref.alloc() : memref<7xi32>
          %263 = arith.cmpf false, %init, %in : f32
          %264 = math.copysign %3, %from_elements_40 : tensor<6xf32>
          %collapsed_55 = tensor.collapse_shape %expanded [[0, 1], [2], [3]] : tensor<6x7x6x1xi16> into tensor<42x6x1xi16>
          %265 = arith.divf %cst_4, %in : f32
          affine.yield %cst_4 : f32
        }
        %257 = vector.splat %c14 : vector<6xindex>
        %258 = arith.minf %cst_3, %cst : f16
        %259 = math.log10 %6 : tensor<6xf32>
        %260 = vector.extract %117[1] : vector<7xf16>
        %261 = affine.load %alloc_12[%c10] : memref<6xi16>
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %252 = scf.parallel (%arg1, %arg2) = (%178, %187) to (%c1, %182) step (%c7, %c5) init (%transposed) -> tensor<6x42xi16> {
      %cast_51 = tensor.cast %210 : tensor<6xi1> to tensor<?xi1>
      %254 = index.add %arg2, %86
      %255 = index.maxu %rank, %c0
      %256 = math.log %from_elements_40 : tensor<6xf32>
      %257 = bufferization.to_tensor %alloc_16 : memref<6x7x6xi64>
      %258 = memref.atomic_rmw minf %127, %alloc_14[%c0, %c4, %c2] : (f32, memref<6x7x6xf32>) -> f32
      %259 = math.fma %8, %5, %5 : tensor<6xf16>
      %260 = arith.remui %true, %false : i1
      %261 = index.ceildivs %186, %202
      %262 = math.expm1 %cst_3 : f16
      %263 = math.ipowi %10, %15 : tensor<6xi64>
      %264 = math.log2 %from_elements_43 : tensor<6x7x6xf16>
      %265 = arith.andi %c1_i64, %c2006163504_i64 : i64
      %266 = tensor.empty() : tensor<5x5xi32>
      %267 = tensor.empty() : tensor<6x5xi32>
      %268 = linalg.matmul ins(%152, %266 : tensor<6x5xi32>, tensor<5x5xi32>) outs(%267 : tensor<6x5xi32>) -> tensor<6x5xi32>
      %269 = vector.create_mask %218 : vector<6xi1>
      %270 = math.ctlz %0 : tensor<7xi32>
      %271 = tensor.empty() : tensor<6x42xi16>
      scf.reduce(%271)  : tensor<6x42xi16> {
      ^bb0(%arg3: tensor<6x42xi16>, %arg4: tensor<6x42xi16>):
        %272 = vector.broadcast %c1_i64 : i64 to vector<6x6xi64>
        %273 = vector.outerproduct %87, %87, %272 {kind = #vector.kind<or>} : vector<6xi64>, vector<6xi64>
        %alloc_52 = memref.alloc() : memref<7xf32>
        %alloc_53 = memref.alloc() : memref<7xi1>
        memref.tensor_store %12, %alloc_53 : memref<7xi1>
        %274 = vector.transpose %235, [0] : vector<6xi32> to vector<6xi32>
        %275 = math.fpowi %from_elements_40, %78 : tensor<6xf32>, tensor<6xi32>
        %276 = math.tan %cst_3 : f16
        %277 = vector.splat %c12152_i16 : vector<6x7x6xi16>
        %278 = vector.multi_reduction <maxf>, %117, %195 [] : vector<7xf16> to vector<7xf16>
        %279 = tensor.empty() : tensor<6x42xi16>
        scf.reduce.return %279 : tensor<6x42xi16>
      }
      scf.yield
    }
    %253 = affine.vector_load %alloc_9[%208, %88, %233] : memref<6x7x6xi64>, vector<6xi64>
    %alloc_50 = memref.alloc() : memref<6x7x6xf16>
    affine.vector_store %195, %alloc_50[%208, %187, %c11] : memref<6x7x6xf16>, vector<7xf16>
    vector.print %20 : vector<5xi32>
    vector.print %64 : vector<5xf32>
    vector.print %67 : vector<6xi32>
    vector.print %68 : vector<6xi1>
    vector.print %69 : vector<6xi32>
    vector.print %87 : vector<6xi64>
    vector.print %109 : vector<6xf32>
    vector.print %110 : vector<6xf32>
    vector.print %117 : vector<7xf16>
    vector.print %118 : vector<7xi1>
    vector.print %119 : vector<7xi32>
    vector.print %120 : vector<7xf16>
    vector.print %124 : vector<7xi16>
    vector.print %165 : vector<2xi32>
    vector.print %195 : vector<7xf16>
    vector.print %216 : vector<6xi16>
    vector.print %217 : vector<6xi16>
    vector.print %231 : vector<6xi32>
    vector.print %235 : vector<6xi32>
    vector.print %238 : vector<6xf16>
    vector.print %242 : vector<1xf16>
    vector.print %253 : vector<6xi64>
    vector.print %true : i1
    vector.print %c-424_i16 : i16
    vector.print %c-5339_i16 : i16
    vector.print %c2006163504_i64 : i64
    vector.print %cst : f16
    vector.print %c17954_i16 : i16
    vector.print %c400634096_i64 : i64
    vector.print %true_0 : i1
    vector.print %c12152_i16 : i16
    vector.print %false : i1
    vector.print %false_1 : i1
    vector.print %c1463441060_i32 : i32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c27473_i16 : i16
    vector.print %false_25 : i1
    vector.print %127 : f32
    vector.print %144 : i32
    vector.print %c1_i64 : i64
    vector.print %c0_i32 : i32
    return
  }
}
