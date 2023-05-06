module {
  func.func @func1(%arg0: i1, %arg1: tensor<3xf16>) -> tensor<3xf16> {
    %c973700124_i32 = arith.constant 973700124 : i32
    %c941654629_i64 = arith.constant 941654629 : i64
    %c507067065_i64 = arith.constant 507067065 : i64
    %c1449638243_i64 = arith.constant 1449638243 : i64
    %cst = arith.constant 1.76338854E+9 : f32
    %c1080549060_i64 = arith.constant 1080549060 : i64
    %false = arith.constant false
    %c56743069_i32 = arith.constant 56743069 : i32
    %cst_0 = arith.constant 0x4B68B36C : f32
    %c719041058_i32 = arith.constant 719041058 : i32
    %c904662618_i64 = arith.constant 904662618 : i64
    %c-778_i16 = arith.constant -778 : i16
    %cst_1 = arith.constant 5.936000e+04 : f16
    %cst_2 = arith.constant 1.32448563E+9 : f32
    %c548648815_i64 = arith.constant 548648815 : i64
    %cst_3 = arith.constant 1.23356352E+9 : f32
    %0 = tensor.empty() : tensor<1x1xf32>
    %1 = tensor.empty() : tensor<3xi1>
    %2 = tensor.empty() : tensor<11x10x1xi32>
    %3 = tensor.empty() : tensor<11x10x1xf32>
    %4 = tensor.empty() : tensor<3xf16>
    %5 = tensor.empty() : tensor<11x10x1xi32>
    %6 = tensor.empty() : tensor<11x10x1xi32>
    %7 = tensor.empty() : tensor<1x1xi16>
    %8 = tensor.empty() : tensor<11x10x1xi64>
    %9 = tensor.empty() : tensor<1x10x10xi64>
    %10 = tensor.empty() : tensor<3xf32>
    %11 = tensor.empty() : tensor<11x10x1xi1>
    %12 = tensor.empty() : tensor<3xi64>
    %13 = tensor.empty() : tensor<3xi32>
    %14 = tensor.empty() : tensor<11x10x1xi16>
    %15 = tensor.empty() : tensor<1x10x10xi32>
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
    %alloc = memref.alloc() : memref<3xi32>
    %alloc_4 = memref.alloc() : memref<1x1xi64>
    %alloc_5 = memref.alloc() : memref<1x1xf16>
    %alloc_6 = memref.alloc() : memref<1x10x10xi32>
    %alloc_7 = memref.alloc() : memref<3xf16>
    %alloc_8 = memref.alloc() : memref<1x1xf16>
    %alloc_9 = memref.alloc() : memref<3xi1>
    %alloc_10 = memref.alloc() : memref<11x10x1xi16>
    %alloc_11 = memref.alloc() : memref<11x10x1xf32>
    %alloc_12 = memref.alloc() : memref<3xf32>
    %alloc_13 = memref.alloc() : memref<1x1xi1>
    %alloc_14 = memref.alloc() : memref<11x10x1xi64>
    %alloc_15 = memref.alloc() : memref<1x10x10xi1>
    %alloc_16 = memref.alloc() : memref<11x10x1xi1>
    %alloc_17 = memref.alloc() : memref<1x10x10xf16>
    %alloc_18 = memref.alloc() : memref<1x1xf16>
    %16 = tensor.empty() : tensor<11x10x1xi32>
    %17 = linalg.copy ins(%5 : tensor<11x10x1xi32>) outs(%16 : tensor<11x10x1xi32>) -> tensor<11x10x1xi32>
    %alloc_19 = memref.alloc() : memref<1x11x10xi1>
    linalg.transpose ins(%11 : tensor<11x10x1xi1>) outs(%alloc_19 : memref<1x11x10xi1>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<10xi1>
    %reduced = linalg.reduce ins(%11 : tensor<11x10x1xi1>) outs(%18 : tensor<10xi1>) dimensions = [0, 2] 
      (%in: i1, %init: i1) {
        %267 = index.ceildivs %c12, %c15
        scf.execute_region {
          %275 = index.casts %c7 : index to i32
          %276 = vector.broadcast %init : i1 to vector<1xi1>
          %277 = vector.extract_strided_slice %276 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
          %278 = arith.andi %false, %false : i1
          %279 = arith.maxf %cst_3, %cst_2 : f32
          %280 = vector.broadcast %false : i1 to vector<1x1xi1>
          %281 = vector.outerproduct %276, %276, %280 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
          %282 = arith.xori %c56743069_i32, %c56743069_i32 : i32
          %c1_i32_38 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %283 = vector.transfer_read %alloc[%c15], %c0_i32 : memref<3xi32>, vector<i32>
          %from_elements_39 = tensor.from_elements %cst_1, %cst_1, %cst_1 : tensor<3xf16>
          %284 = vector.insert %false, %277 [0] : i1 into vector<1xi1>
          %285 = index.divu %c7, %c3
          %286 = bufferization.to_tensor %alloc_11 : memref<11x10x1xf32>
          %287 = index.divu %285, %c10
          %288 = math.log1p %10 : tensor<3xf32>
          %289 = vector.extract %277[0] : vector<1xi1>
          %290 = index.ceildivs %c2, %c9
          %291 = arith.cmpi ule, %c56743069_i32, %c56743069_i32 : i32
          scf.yield
        }
        %268 = vector.broadcast %cst : f32 to vector<1xf32>
        %269 = vector.bitcast %268 : vector<1xf32> to vector<1xf32>
        %270 = memref.load %alloc[%c1] : memref<3xi32>
        %271 = math.ctlz %6 : tensor<11x10x1xi32>
        %272 = affine.for %arg2 = 0 to 49 iter_args(%arg3 = %c1) -> (index) {
          affine.yield %c7 : index
        }
        %273 = math.absf %0 : tensor<1x1xf32>
        %274 = affine.if affine_set<(d0) : (0 == 0, 0 == 0)>(%c8) -> memref<3xf32> {
          %275 = math.exp %10 : tensor<3xf32>
          %276 = math.copysign %cst_3, %cst_3 : f32
          %277 = vector.reduction <add>, %268 : vector<1xf32> into f32
          %from_elements_38 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16 : tensor<3xi16>
          %278 = math.ctpop %c904662618_i64 : i64
          %279 = vector.broadcast %in : i1 to vector<11xi1>
          %280 = vector.maskedload %alloc_19[%c0, %c5, %c2], %279, %279 : memref<1x11x10xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
          %281 = arith.maxui %c973700124_i32, %c973700124_i32 : i32
          %282 = math.ipowi %5, %6 : tensor<11x10x1xi32>
          affine.yield %alloc_12 : memref<3xf32>
        } else {
          %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %269, %269, %cst : vector<1xf32>, vector<1xf32> into f32
          %276 = math.log %10 : tensor<3xf32>
          vector.print %269 : vector<1xf32>
          %277 = math.log2 %4 : tensor<3xf16>
          %278 = affine.apply affine_map<(d0, d1) -> (8)>(%c0, %c6)
          %279 = vector.matrix_multiply %269, %268 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %cst_38 = arith.constant 1.43467891E+9 : f32
          %280 = math.ceil %4 : tensor<3xf16>
          affine.yield %alloc_12 : memref<3xf32>
        }
        %true_37 = arith.constant true
        linalg.yield %true_37 : i1
      }
    scf.parallel (%arg2) = (%c5) to (%c2) step (%c3) {
      %267 = arith.floordivsi %c-778_i16, %c-778_i16 : i16
      %268 = arith.remui %c719041058_i32, %c56743069_i32 : i32
      %269 = index.castu %c9 : index to i32
      %270 = affine.if affine_set<(d0, d1, d2) : (d2 == 0, 0 >= 0, -(d0 floordiv 4) == 0)>(%c7, %c8, %c14) -> i32 {
        memref.store %cst_0, %alloc_12[%c2] : memref<3xf32>
        %283 = math.ceil %cst_2 : f32
        %284 = vector.broadcast %c56743069_i32 : i32 to vector<10xi32>
        %285 = vector.broadcast %c56743069_i32 : i32 to vector<10x10xi32>
        %286 = vector.outerproduct %284, %284, %285 {kind = #vector.kind<add>} : vector<10xi32>, vector<10xi32>
        %from_elements_38 = tensor.from_elements %cst_1, %cst_1, %cst_1 : tensor<3xf16>
        %287 = math.log1p %10 : tensor<3xf32>
        %expanded_39 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<1x10x10xi32> into tensor<1x10x10x1xi32>
        %288 = index.maxu %c11, %c3
        %289 = bufferization.to_tensor %alloc_9 : memref<3xi1>
        affine.yield %c973700124_i32 : i32
      } else {
        %283 = arith.minf %cst_2, %cst : f32
        memref.assume_alignment %alloc_10, 4 : memref<11x10x1xi16>
        %284 = math.roundeven %3 : tensor<11x10x1xf32>
        %285 = math.powf %3, %3 : tensor<11x10x1xf32>
        %286 = index.ceildivs %c8, %c3
        %287 = arith.shrsi %c941654629_i64, %c1449638243_i64 : i64
        %288 = arith.maxsi %c941654629_i64, %c1080549060_i64 : i64
        %289 = index.casts %c6 : index to i32
        affine.yield %c56743069_i32 : i32
      }
      %from_elements_37 = tensor.from_elements %cst_1 : tensor<1x1xf16>
      %271 = arith.minf %cst_3, %cst_2 : f32
      %272 = index.maxs %c10, %c15
      %273 = math.ceil %cst_3 : f32
      %274 = arith.divf %cst_0, %cst_2 : f32
      %275 = math.ctpop %c-778_i16 : i16
      %276 = arith.floordivsi %c507067065_i64, %c904662618_i64 : i64
      %277 = index.divu %c12, %c7
      %278 = vector.broadcast %c1449638243_i64 : i64 to vector<11x1xi64>
      %279 = vector.transfer_write %278, %8[%c0, %c2, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<11x1xi64>, tensor<11x10x1xi64>
      %280 = bufferization.to_memref %12 : memref<3xi64>
      %281 = vector.broadcast %false : i1 to vector<10xi1>
      %282 = vector.maskedload %alloc_19[%c0, %c3, %c6], %281, %281 : memref<1x11x10xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %rank = tensor.rank %13 : tensor<3xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_7[%c7] : memref<3xf16>, vector<11xf16>
    affine.vector_store %19, %alloc_17[%c8, %c14, %c1] : memref<1x10x10xf16>, vector<11xf16>
    %20 = tensor.empty() : tensor<3xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%13, %20 : tensor<3xi32>, tensor<3xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst_1 : vector<11xf16>, vector<11xf16> into f16
    %24 = affine.if affine_set<(d0) : (d0 mod 8 >= 0, 0 == 0, d0 mod 16 >= 0, 0 >= 0)>(%c1) -> memref<1x10x10xf32> {
      %267 = index.ceildivs %c14, %c13
      %268 = index.ceildivs %c8, %c9
      memref.assume_alignment %alloc_5, 2 : memref<1x1xf16>
      %269 = arith.addi %c941654629_i64, %c904662618_i64 : i64
      %270 = arith.divf %cst_2, %cst_3 : f32
      %271 = vector.matrix_multiply %19, %19 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf16>, vector<11xf16>) -> vector<1xf16>
      %272 = arith.divf %cst_1, %cst_1 : f16
      %273 = math.round %4 : tensor<3xf16>
      %alloc_37 = memref.alloc() : memref<1x10x10xf32>
      affine.yield %alloc_37 : memref<1x10x10xf32>
    } else {
      %267 = vector.insert %cst_1, %19 [2] : f16 into vector<11xf16>
      %268 = vector.create_mask %c11, %c15 : vector<1x1xi1>
      %269 = arith.divf %cst_2, %cst_3 : f32
      %270 = math.log1p %cst_3 : f32
      %271 = index.maxu %c14, %c9
      %272 = index.ceildivs %c8, %c12
      %273 = index.casts %false : i1 to index
      %274 = tensor.empty() : tensor<1x1xf32>
      %275 = linalg.matmul ins(%0, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%274 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %alloc_37 = memref.alloc() : memref<1x10x10xf32>
      affine.yield %alloc_37 : memref<1x10x10xf32>
    }
    %25 = math.log10 %cst_0 : f32
    %26 = arith.muli %c507067065_i64, %c507067065_i64 : i64
    %27 = index.maxu %c15, %c11
    %collapsed = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<1x10x10xi32> into tensor<10x10xi32>
    %28 = arith.remf %cst_0, %cst : f32
    %29 = index.maxs %c6, %27
    %30 = index.ceildivs %c15, %c0
    %31 = math.log2 %0 : tensor<1x1xf32>
    %alloc_20 = memref.alloc() : memref<1x11xi64>
    %32 = tensor.empty() : tensor<11x1xi64>
    %33 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20, %32 : memref<1x11xi64>, tensor<11x1xi64>) outs(%8 : tensor<11x10x1xi64>) {
    ^bb0(%in: i64, %in_37: i64, %out: i64):
      memref.store %c1080549060_i64, %alloc_14[%c2, %c3, %c0] : memref<11x10x1xi64>
      %267 = arith.shli %c1449638243_i64, %c941654629_i64 : i64
      %268 = math.ctlz %in_37 : i64
      %269 = math.ceil %4 : tensor<3xf16>
      %alloc_38 = memref.alloc() : memref<11x10x1xi64>
      memref.copy %alloc_14, %alloc_38 : memref<11x10x1xi64> to memref<11x10x1xi64>
      %270 = vector.shuffle %19, %19 [3, 4, 5, 6, 7, 8, 10, 13, 15, 18, 19, 20] : vector<11xf16>, vector<11xf16>
      %271 = arith.remsi %c904662618_i64, %c941654629_i64 : i64
      %272 = vector.broadcast %c14 : index to vector<10xindex>
      %273 = vector.broadcast %false : i1 to vector<10xi1>
      %274 = vector.broadcast %c904662618_i64 : i64 to vector<10xi64>
      vector.scatter %alloc_4[%c0, %c0] [%272], %273, %274 : memref<1x1xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
      %275 = index.ceildivs %c3, %c1
      %276 = math.cttz %collapsed : tensor<10x10xi32>
      %277 = math.log10 %0 : tensor<1x1xf32>
      %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c4, %c2, %c7, %c8)
      memref.assume_alignment %alloc_16, 16 : memref<11x10x1xi1>
      %279 = math.log10 %0 : tensor<1x1xf32>
      %280 = arith.remf %cst_0, %cst_2 : f32
      memref.assume_alignment %alloc_15, 16 : memref<1x10x10xi1>
      %281 = vector.multi_reduction <maxf>, %19, %cst_1 [0] : vector<11xf16> to f16
      %alloc_39 = memref.alloc() : memref<10xi32>
      %282 = tensor.empty() : tensor<11x1xi32>
      %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_39, %282 : memref<10xi32>, tensor<11x1xi32>) outs(%16 : tensor<11x10x1xi32>) {
      ^bb0(%in_43: i32, %in_44: i32, %out_45: i32):
        %299 = math.ctpop %7 : tensor<1x1xi16>
        %300 = math.round %10 : tensor<3xf32>
        %301 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 64)>(%30, %c14, %c1)
        %302 = arith.addi %c507067065_i64, %in_37 : i64
        %303 = index.divu %c2, %c13
        %304 = arith.remf %cst_1, %cst_1 : f16
        %305 = arith.divf %cst, %cst_3 : f32
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %281 : vector<11xf16>, vector<11xf16> into f16
        %307 = index.ceildivs %27, %c9
        %308 = vector.broadcast %cst_0 : f32 to vector<11x11xf32>
        %309 = vector.broadcast %cst_2 : f32 to vector<11xf32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %308, %309 {inclusive = false, reduction_dim = 1 : i64} : vector<11x11xf32>, vector<11xf32>
        %310 = math.absf %3 : tensor<11x10x1xf32>
        %311 = math.atan2 %cst, %cst_2 : f32
        vector.print %19 : vector<11xf16>
        %312 = index.divs %30, %c9
        %splat_48 = tensor.splat %out_45 : tensor<11x10x1xi32>
        %expanded_49 = tensor.expand_shape %splat_48 [[0], [1], [2, 3]] : tensor<11x10x1xi32> into tensor<11x10x1x1xi32>
        %313 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %281 : vector<11xf16>, vector<11xf16> into f16
        %314 = index.ceildivs %29, %27
        %315 = memref.load %alloc_18[%c0, %c0] : memref<1x1xf16>
        %316 = index.castu %303 : index to i32
        %317 = arith.shrui %in_37, %c904662618_i64 : i64
        %318 = arith.xori %in_37, %in_37 : i64
        %319 = math.exp %3 : tensor<11x10x1xf32>
        memref.assume_alignment %alloc_19, 8 : memref<1x11x10xi1>
        %320 = arith.maxsi %out, %c548648815_i64 : i64
        %321 = math.log10 %281 : f16
        %322 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 16, d3 + (d2 * 8) ceildiv 64, d1 - 16, d1)>(%c1, %c9, %303, %c9)
        %323 = arith.maxf %cst_3, %cst : f32
        %324 = arith.remsi %c973700124_i32, %c56743069_i32 : i32
        %325 = arith.ori %c1080549060_i64, %c1449638243_i64 : i64
        %326 = math.round %cst_0 : f32
        %327 = math.expm1 %4 : tensor<3xf16>
        linalg.yield %out_45 : i32
      } -> tensor<11x10x1xi32>
      %284 = affine.if affine_set<(d0, d1) : (d0 * 64 == 0, (d0 + 4) mod 128 >= 0, d1 - d0 == 0, 0 == 0)>(%c6, %c15) -> i16 {
        %299 = arith.maxsi %c-778_i16, %c-778_i16 : i16
        %300 = math.ceil %0 : tensor<1x1xf32>
        %301 = math.cos %10 : tensor<3xf32>
        %302 = index.sub %c9, %c12
        %303 = vector.insertelement %cst_1, %19[%c8 : index] : vector<11xf16>
        %304 = bufferization.clone %alloc_13 : memref<1x1xi1> to memref<1x1xi1>
        %305 = math.roundeven %3 : tensor<11x10x1xf32>
        %306 = vector.create_mask %c9, %c2 : vector<1x1xi1>
        affine.yield %c-778_i16 : i16
      } else {
        %collapsed_43 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<11x10x1xf32> into tensor<110x1xf32>
        %299 = math.ceil %4 : tensor<3xf16>
        %300 = math.log2 %cst : f32
        %extracted_44 = tensor.extract %11[%c2, %c3, %c0] : tensor<11x10x1xi1>
        %301 = arith.minui %out, %in : i64
        %302 = math.rsqrt %cst_2 : f32
        vector.print %19 : vector<11xf16>
        %303 = memref.atomic_rmw maxf %281, %alloc_8[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
        affine.yield %c-778_i16 : i16
      }
      %285 = arith.remsi %in_37, %c904662618_i64 : i64
      %286 = math.absi %6 : tensor<11x10x1xi32>
      %287 = index.casts %c1 : index to i32
      %288 = vector.insertelement %cst_1, %19[%27 : index] : vector<11xf16>
      %289 = vector.insertelement %cst_1, %19[%c4 : index] : vector<11xf16>
      %290 = index.casts %c2 : index to i32
      scf.execute_region {
        %299 = arith.minui %in_37, %in_37 : i64
        %300 = vector.broadcast %281 : f16 to vector<11x11xf16>
        %301 = vector.outerproduct %19, %19, %300 {kind = #vector.kind<minf>} : vector<11xf16>, vector<11xf16>
        %302 = arith.shli %c-778_i16, %c-778_i16 : i16
        %303 = vector.shuffle %19, %19 [1, 2, 3, 6, 9, 10, 11, 15, 16, 18, 19, 20, 21] : vector<11xf16>, vector<11xf16>
        %304 = math.floor %cst_2 : f32
        %false_43 = arith.constant false
        %false_44 = arith.constant false
        %305 = vector.transfer_read %1[%c4], %false_44 : tensor<3xi1>, vector<i1>
        %306 = arith.shrsi %c904662618_i64, %in : i64
        %307 = arith.remsi %c56743069_i32, %c719041058_i32 : i32
        %308 = math.ipowi %18, %reduced : tensor<10xi1>
        %309 = math.atan %cst_0 : f32
        %310 = math.cos %cst : f32
        %311 = math.exp %0 : tensor<1x1xf32>
        %312 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
        %313 = vector.outerproduct %19, %19, %312 {kind = #vector.kind<maxf>} : vector<11xf16>, vector<11xf16>
        %314 = math.copysign %cst_2, %cst_2 : f32
        %315 = math.exp %4 : tensor<3xf16>
        %316 = vector.broadcast %in : i64 to vector<11x10x1xi64>
        %317 = vector.broadcast %false_43 : i1 to vector<11x10x1xi1>
        %318 = vector.broadcast %c719041058_i32 : i32 to vector<11x10x1xi32>
        %319 = vector.gather %alloc_4[%27, %c5] [%318], %317, %316 : memref<1x1xi64>, vector<11x10x1xi32>, vector<11x10x1xi1>, vector<11x10x1xi64> into vector<11x10x1xi64>
        scf.yield
      }
      %291 = math.cos %281 : f16
      %292 = vector.reduction <add>, %19 : vector<11xf16> into f16
      %293 = vector.broadcast %c12 : index to vector<1xindex>
      %294 = vector.broadcast %false : i1 to vector<1xi1>
      %295 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      vector.scatter %alloc_12[%c1] [%293], %294, %295 : memref<3xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %296 = math.exp %3 : tensor<11x10x1xf32>
      %297 = vector.broadcast %c-778_i16 : i16 to vector<11x10xi16>
      %298 = vector.broadcast %c-778_i16 : i16 to vector<11xi16>
      %dest_40, %accumulated_value_41 = vector.scan <xor>, %297, %298 {inclusive = false, reduction_dim = 1 : i64} : vector<11x10xi16>, vector<11xi16>
      %extracted_42 = tensor.extract %16[%c3, %c2, %c0] : tensor<11x10x1xi32>
      linalg.yield %c507067065_i64 : i64
    } -> tensor<11x10x1xi64>
    %34 = scf.execute_region -> tensor<1x10x10xf16> {
      %267 = math.round %3 : tensor<11x10x1xf32>
      %268 = arith.floordivsi %c973700124_i32, %c56743069_i32 : i32
      %269 = vector.insert %cst_1, %19 [2] : f16 into vector<11xf16>
      %270 = arith.maxui %c-778_i16, %c-778_i16 : i16
      %271 = memref.load %alloc_19[%c0, %c4, %c0] : memref<1x11x10xi1>
      %272 = arith.minsi %c548648815_i64, %c904662618_i64 : i64
      bufferization.dealloc_tensor %10 : tensor<3xf32>
      %273 = vector.transpose %19, [0] : vector<11xf16> to vector<11xf16>
      %from_elements_37 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16 : tensor<3xi16>
      %274 = math.floor %4 : tensor<3xf16>
      %275 = math.ipowi %15, %15 : tensor<1x10x10xi32>
      %expanded_38 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<11x10x1xi64> into tensor<11x10x1x1xi64>
      %276 = arith.addf %cst_0, %cst_0 : f32
      %true_39 = arith.constant true
      %277 = vector.flat_transpose %19 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
      %278 = arith.muli %c941654629_i64, %c1080549060_i64 : i64
      %279 = tensor.empty() : tensor<1x10x10xf16>
      scf.yield %279 : tensor<1x10x10xf16>
    }
    %35 = tensor.empty() : tensor<1x1xf32>
    %36 = linalg.matmul ins(%0, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%35 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %37 = math.round %3 : tensor<11x10x1xf32>
    %38 = math.log2 %3 : tensor<11x10x1xf32>
    %39 = memref.load %alloc_4[%c0, %c0] : memref<1x1xi64>
    %40 = arith.cmpi ule, %c-778_i16, %c-778_i16 : i16
    %41 = index.sub %c11, %c8
    %42 = arith.remui %c973700124_i32, %c973700124_i32 : i32
    memref.assume_alignment %alloc_19, 2 : memref<1x11x10xi1>
    memref.assume_alignment %alloc_9, 4 : memref<3xi1>
    %43 = math.ctpop %13 : tensor<3xi32>
    affine.store %c-778_i16, %alloc_10[%c8, %c3, %c13] : memref<11x10x1xi16>
    %44 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst_1 : vector<11xf16>, vector<11xf16> into f16
    %45 = memref.load %alloc_6[%c0, %c7, %c6] : memref<1x10x10xi32>
    %46 = index.maxs %c9, %c14
    %47 = vector.bitcast %19 : vector<11xf16> to vector<11xi16>
    %48 = index.divu %c14, %c13
    %49 = vector.bitcast %19 : vector<11xf16> to vector<11xf16>
    %50 = math.ceil %cst_3 : f32
    memref.assume_alignment %alloc_10, 4 : memref<11x10x1xi16>
    %51 = arith.divsi %c941654629_i64, %c1449638243_i64 : i64
    %52 = scf.while (%arg2 = %alloc) : (memref<3xi32>) -> memref<3xi32> {
      %267 = affine.for %arg3 = 0 to 125 iter_args(%arg4 = %12) -> (tensor<3xi64>) {
        affine.yield %12 : tensor<3xi64>
      }
      %268 = vector.insertelement %c-778_i16, %47[%c2 : index] : vector<11xi16>
      %269 = math.ctpop %16 : tensor<11x10x1xi32>
      %270 = arith.maxf %cst_0, %cst : f32
      %271 = math.rsqrt %cst : f32
      %272 = index.maxu %c12, %c1
      %273 = tensor.empty() : tensor<10x10xi32>
      %274 = linalg.matmul ins(%collapsed, %collapsed : tensor<10x10xi32>, tensor<10x10xi32>) outs(%273 : tensor<10x10xi32>) -> tensor<10x10xi32>
      %275 = vector.broadcast %c973700124_i32 : i32 to vector<1xi32>
      %276 = vector.broadcast %false : i1 to vector<1xi1>
      %277 = vector.maskedload %alloc_6[%c0, %c6, %c9], %276, %275 : memref<1x10x10xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      scf.condition(%false) %arg2 : memref<3xi32>
    } do {
    ^bb0(%arg2: memref<3xi32>):
      %267 = arith.xori %c1080549060_i64, %c548648815_i64 : i64
      %268 = math.ceil %10 : tensor<3xf32>
      %269 = vector.bitcast %47 : vector<11xi16> to vector<11xi16>
      %from_elements_37 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<1x10x10xi1>
      %270 = math.log10 %4 : tensor<3xf16>
      %271 = arith.xori %c548648815_i64, %c904662618_i64 : i64
      %272 = arith.shrui %c-778_i16, %c-778_i16 : i16
      %273 = memref.load %alloc[%c1] : memref<3xi32>
      %274 = math.cttz %5 : tensor<11x10x1xi32>
      %275 = tensor.empty() : tensor<1x1xi32>
      %276 = math.fpowi %0, %275 : tensor<1x1xf32>, tensor<1x1xi32>
      %277 = math.ctpop %c1080549060_i64 : i64
      %278 = math.powf %3, %3 : tensor<11x10x1xf32>
      %279 = arith.cmpf true, %cst, %cst_0 : f32
      %280 = math.rsqrt %4 : tensor<3xf16>
      %281 = bufferization.clone %alloc_15 : memref<1x10x10xi1> to memref<1x10x10xi1>
      %282 = bufferization.to_memref %1 : memref<3xi1>
      scf.yield %alloc : memref<3xi32>
    }
    %53 = bufferization.clone %alloc_13 : memref<1x1xi1> to memref<1x1xi1>
    scf.index_switch %27 
    case 1 {
      memref.copy %alloc_18, %alloc_5 : memref<1x1xf16> to memref<1x1xf16>
      %267 = math.sqrt %4 : tensor<3xf16>
      %268 = vector.insertelement %cst_1, %19[%c14 : index] : vector<11xf16>
      %alloc_37 = memref.alloc() : memref<1x10x10xf16>
      memref.copy %alloc_17, %alloc_37 : memref<1x10x10xf16> to memref<1x10x10xf16>
      %269 = bufferization.to_tensor %alloc_11 : memref<11x10x1xf32>
      %generated_38 = tensor.generate %c10 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %283 = index.casts %c56743069_i32 : i32 to index
        %284 = math.ceil %0 : tensor<1x1xf32>
        %285 = index.maxs %30, %c4
        %286 = arith.shrui %c1080549060_i64, %c507067065_i64 : i64
        tensor.yield %c56743069_i32 : i32
      } : tensor<?x10x10xi32>
      %270 = arith.maxsi %c507067065_i64, %c548648815_i64 : i64
      %extracted_39 = tensor.extract %4[%c0] : tensor<3xf16>
      %271 = vector.broadcast %41 : index to vector<10xindex>
      %272 = vector.broadcast %false : i1 to vector<10xi1>
      %273 = vector.broadcast %extracted_39 : f16 to vector<10xf16>
      vector.scatter %alloc_8[%c0, %c0] [%271], %272, %273 : memref<1x1xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      %274 = math.atan2 %10, %10 : tensor<3xf32>
      %275 = arith.shrui %c719041058_i32, %c973700124_i32 : i32
      %276 = arith.ori %c-778_i16, %c-778_i16 : i16
      %collapsed_40 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<11x10x1xi32> into tensor<110x1xi32>
      %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %49, %19, %extracted_39 : vector<11xf16>, vector<11xf16> into f16
      %278 = vector.broadcast %cst_3 : f32 to vector<3xf32>
      %279 = vector.broadcast %false : i1 to vector<3xi1>
      %280 = vector.broadcast %c973700124_i32 : i32 to vector<3xi32>
      %281 = vector.gather %alloc_12[%c12] [%280], %279, %278 : memref<3xf32>, vector<3xi32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %282 = math.floor %269 : tensor<11x10x1xf32>
      scf.yield
    }
    case 2 {
      %267 = vector.broadcast %c941654629_i64 : i64 to vector<3x11xi64>
      %268 = vector.broadcast %c904662618_i64 : i64 to vector<11xi64>
      %dest_37, %accumulated_value_38 = vector.scan <mul>, %267, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<3x11xi64>, vector<11xi64>
      %269 = index.divu %c14, %29
      %270 = math.ceil %10 : tensor<3xf32>
      %271 = index.maxu %c8, %c6
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %49, %cst_1 : vector<11xf16>, vector<11xf16> into f16
      %273 = math.tanh %cst_3 : f32
      vector.print %47 : vector<11xi16>
      vector.print %19 : vector<11xf16>
      %274 = arith.ori %c904662618_i64, %c1449638243_i64 : i64
      %275 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
      %276 = vector.outerproduct %19, %19, %275 {kind = #vector.kind<maxf>} : vector<11xf16>, vector<11xf16>
      affine.for %arg2 = 0 to 90 {
      }
      %277 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
      %278 = vector.outerproduct %49, %19, %277 {kind = #vector.kind<maxf>} : vector<11xf16>, vector<11xf16>
      %279 = arith.andi %c1080549060_i64, %c548648815_i64 : i64
      %280 = math.cos %cst_1 : f16
      %281 = arith.minf %cst_1, %cst_1 : f16
      %282 = math.cos %34 : tensor<1x10x10xf16>
      scf.yield
    }
    case 3 {
      %267 = scf.execute_region -> memref<1x1xi1> {
        %280 = index.divu %c4, %48
        %281 = vector.insertelement %cst_1, %49[%c4 : index] : vector<11xf16>
        %282 = vector.broadcast %false : i1 to vector<3xi1>
        %283 = vector.maskedload %53[%c0, %c0], %282, %282 : memref<1x1xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %284 = math.cos %3 : tensor<11x10x1xf32>
        %285 = arith.xori %c507067065_i64, %c1080549060_i64 : i64
        %286 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
        %287 = vector.outerproduct %19, %19, %286 {kind = #vector.kind<add>} : vector<11xf16>, vector<11xf16>
        %288 = arith.shli %false, %false : i1
        memref.assume_alignment %alloc_4, 4 : memref<1x1xi64>
        %289 = index.casts %c9 : index to i32
        %290 = arith.maxf %cst_0, %cst_2 : f32
        %expanded_40 = tensor.expand_shape %10 [[0, 1]] : tensor<3xf32> into tensor<3x1xf32>
        %291 = vector.shuffle %47, %47 [0, 2, 3, 5, 6, 9, 10, 12, 13, 14, 16, 19, 21] : vector<11xi16>, vector<11xi16>
        %extracted_41 = tensor.extract %6[%c2, %c9, %c0] : tensor<11x10x1xi32>
        %292 = arith.maxui %c1080549060_i64, %c1449638243_i64 : i64
        %293 = math.absi %13 : tensor<3xi32>
        %294 = arith.mulf %cst_3, %cst_0 : f32
        scf.yield %53 : memref<1x1xi1>
      }
      %268 = math.cos %34 : tensor<1x10x10xf16>
      %splat_37 = tensor.splat %cst_0 : tensor<11x10x1xf32>
      %269 = vector.matrix_multiply %47, %47 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
      %270 = tensor.empty(%c8, %c5) : tensor<1x?x?xi1>
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %269, %269, %c-778_i16 : vector<1xi16>, vector<1xi16> into i16
      %272 = math.cos %10 : tensor<3xf32>
      %273 = vector.load %alloc_9[%c2] : memref<3xi1>, vector<1x10x10xi1>
      %274 = index.mul %c13, %c11
      %from_elements_38 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16 : tensor<3xi16>
      %275 = arith.shli %c-778_i16, %c-778_i16 : i16
      %276 = arith.divf %cst_1, %cst_1 : f16
      %277 = math.log2 %splat_37 : tensor<11x10x1xf32>
      %278 = bufferization.clone %alloc_12 : memref<3xf32> to memref<3xf32>
      %splat_39 = tensor.splat %c941654629_i64 : tensor<1x1xi64>
      %279 = vector.load %alloc_17[%c0, %c7, %c3] : memref<1x10x10xf16>, vector<1x1xf16>
      scf.yield
    }
    case 4 {
      %267 = math.copysign %10, %10 : tensor<3xf32>
      %268 = vector.create_mask %30, %c12, %c15 : vector<1x10x10xi1>
      %269 = vector.transpose %268, [2, 0, 1] : vector<1x10x10xi1> to vector<10x1x10xi1>
      %270 = vector.load %alloc_4[%c0, %c0] : memref<1x1xi64>, vector<11x10x1xi64>
      %from_elements_37 = tensor.from_elements %c941654629_i64, %c941654629_i64, %c1080549060_i64, %c1080549060_i64, %c904662618_i64, %c1080549060_i64, %c1449638243_i64, %c941654629_i64, %c548648815_i64, %c548648815_i64, %c1449638243_i64, %c904662618_i64, %c941654629_i64, %c507067065_i64, %c507067065_i64, %c507067065_i64, %c941654629_i64, %c507067065_i64, %c904662618_i64, %c507067065_i64, %c1080549060_i64, %c1080549060_i64, %c941654629_i64, %c904662618_i64, %c941654629_i64, %c1080549060_i64, %c941654629_i64, %c1449638243_i64, %c1080549060_i64, %c941654629_i64, %c941654629_i64, %c904662618_i64, %c941654629_i64, %c507067065_i64, %c904662618_i64, %c1080549060_i64, %c507067065_i64, %c548648815_i64, %c904662618_i64, %c904662618_i64, %c941654629_i64, %c1449638243_i64, %c941654629_i64, %c548648815_i64, %c1449638243_i64, %c1080549060_i64, %c507067065_i64, %c548648815_i64, %c548648815_i64, %c904662618_i64, %c1080549060_i64, %c941654629_i64, %c904662618_i64, %c1080549060_i64, %c548648815_i64, %c1449638243_i64, %c904662618_i64, %c941654629_i64, %c548648815_i64, %c1449638243_i64, %c941654629_i64, %c1080549060_i64, %c548648815_i64, %c507067065_i64, %c548648815_i64, %c1449638243_i64, %c507067065_i64, %c904662618_i64, %c1449638243_i64, %c548648815_i64, %c904662618_i64, %c904662618_i64, %c507067065_i64, %c1449638243_i64, %c507067065_i64, %c548648815_i64, %c941654629_i64, %c1449638243_i64, %c548648815_i64, %c941654629_i64, %c1080549060_i64, %c1449638243_i64, %c1080549060_i64, %c1080549060_i64, %c548648815_i64, %c904662618_i64, %c1080549060_i64, %c548648815_i64, %c1080549060_i64, %c1080549060_i64, %c507067065_i64, %c904662618_i64, %c1080549060_i64, %c507067065_i64, %c941654629_i64, %c507067065_i64, %c1080549060_i64, %c507067065_i64, %c904662618_i64, %c1080549060_i64 : tensor<1x10x10xi64>
      %271 = index.maxu %c14, %29
      %272 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 32 >= 0, d1 >= 0, d0 >= 0, d1 floordiv 4 + 32 >= 0)>(%c13, %c13, %c13, %c11) -> memref<11x10x1xi1> {
        %280 = index.divu %27, %c1
        %281 = arith.shrui %c1080549060_i64, %c904662618_i64 : i64
        %282 = arith.minf %cst_2, %cst_2 : f32
        %283 = arith.floordivsi %c507067065_i64, %c941654629_i64 : i64
        %284 = math.log2 %35 : tensor<1x1xf32>
        %collapsed_41 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<11x10x1xi32> into tensor<110x1xi32>
        %285 = math.copysign %34, %34 : tensor<1x10x10xf16>
        vector.print %268 : vector<1x10x10xi1>
        affine.yield %alloc_16 : memref<11x10x1xi1>
      } else {
        %280 = math.exp %cst_1 : f16
        %281 = vector.insertelement %c-778_i16, %47[%29 : index] : vector<11xi16>
        %282 = index.casts %c719041058_i32 : i32 to index
        %283 = index.ceildivs %282, %41
        %284 = math.round %35 : tensor<1x1xf32>
        %alloc_41 = memref.alloc() : memref<1x10x10xi1>
        %285 = index.castu %c941654629_i64 : i64 to index
        %286 = arith.divf %cst_2, %cst : f32
        affine.yield %alloc_16 : memref<11x10x1xi1>
      }
      %expanded_38 = tensor.expand_shape %18 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
      %273 = scf.while (%arg2 = %c1080549060_i64) : (i64) -> i64 {
        %280 = arith.maxf %cst, %cst_2 : f32
        %281 = index.castu %c719041058_i32 : i32 to index
        %282 = memref.atomic_rmw maxf %cst, %alloc_12[%c1] : (f32, memref<3xf32>) -> f32
        %283 = arith.mulf %cst_1, %cst_1 : f16
        %284 = math.roundeven %3 : tensor<11x10x1xf32>
        %285 = vector.multi_reduction <or>, %47, %c-778_i16 [0] : vector<11xi16> to i16
        %286 = math.atan2 %34, %34 : tensor<1x10x10xf16>
        %287 = math.round %3 : tensor<11x10x1xf32>
        scf.condition(%false) %c1449638243_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %280 = arith.shrsi %c1080549060_i64, %c904662618_i64 : i64
        %281 = math.rsqrt %cst_0 : f32
        %282 = arith.maxf %cst_0, %cst_0 : f32
        %283 = memref.load %alloc_15[%c0, %c5, %c8] : memref<1x10x10xi1>
        %alloc_41 = memref.alloc() : memref<11x10x1xi1>
        %284 = arith.remf %cst_0, %cst : f32
        %285 = vector.broadcast %false : i1 to vector<1x10xi1>
        %dest_42, %accumulated_value_43 = vector.scan <minui>, %268, %285 {inclusive = true, reduction_dim = 2 : i64} : vector<1x10x10xi1>, vector<1x10xi1>
        affine.store %c548648815_i64, %alloc_14[%c0, %c13, %c10] : memref<11x10x1xi64>
        %286 = math.ceil %cst_3 : f32
        %from_elements_44 = tensor.from_elements %c1080549060_i64, %c507067065_i64, %c904662618_i64, %c507067065_i64, %c941654629_i64, %c904662618_i64, %c904662618_i64, %c548648815_i64, %c941654629_i64, %arg2, %c1449638243_i64, %c1449638243_i64, %c941654629_i64, %c904662618_i64, %c548648815_i64, %c941654629_i64, %c904662618_i64, %arg2, %c1080549060_i64, %c941654629_i64, %c941654629_i64, %arg2, %c548648815_i64, %c941654629_i64, %arg2, %c1080549060_i64, %arg2, %c548648815_i64, %arg2, %c548648815_i64, %c1449638243_i64, %c904662618_i64, %c941654629_i64, %c904662618_i64, %c507067065_i64, %arg2, %arg2, %arg2, %c1449638243_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c1449638243_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c1080549060_i64, %c548648815_i64, %c548648815_i64, %c904662618_i64, %c548648815_i64, %c1449638243_i64, %c507067065_i64, %c548648815_i64, %c507067065_i64, %c941654629_i64, %c904662618_i64, %c548648815_i64, %c1449638243_i64, %c507067065_i64, %c904662618_i64, %c1080549060_i64, %arg2, %c548648815_i64, %c548648815_i64, %c1080549060_i64, %arg2, %c904662618_i64, %c1449638243_i64, %arg2, %arg2, %c1080549060_i64, %arg2, %c507067065_i64, %c1449638243_i64, %c904662618_i64, %c1449638243_i64, %c904662618_i64, %c904662618_i64, %arg2, %c904662618_i64, %c1080549060_i64, %c548648815_i64, %c548648815_i64, %c548648815_i64, %c1449638243_i64, %c1080549060_i64, %arg2, %c507067065_i64, %c1449638243_i64, %c904662618_i64, %c941654629_i64, %c1080549060_i64, %arg2, %c1080549060_i64, %arg2, %c1449638243_i64, %c1449638243_i64, %c1449638243_i64, %c1080549060_i64, %arg2, %c548648815_i64, %c904662618_i64, %c941654629_i64, %c507067065_i64, %c904662618_i64, %c941654629_i64, %arg2, %c507067065_i64, %c1449638243_i64 : tensor<11x10x1xi64>
        %287 = arith.ori %c56743069_i32, %c973700124_i32 : i32
        %288 = memref.realloc %alloc_12 : memref<3xf32> to memref<3xf32>
        %289 = index.maxu %30, %c7
        %290 = math.log2 %cst_3 : f32
        %291 = math.log2 %3 : tensor<11x10x1xf32>
        %292 = math.cttz %c719041058_i32 : i32
        scf.yield %arg2 : i64
      }
      %274 = math.ctlz %1 : tensor<3xi1>
      %275 = arith.ceildivsi %c1080549060_i64, %c904662618_i64 : i64
      %276 = arith.minsi %c1080549060_i64, %c904662618_i64 : i64
      %expanded_39 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<11x10x1xi32> into tensor<11x10x1x1xi32>
      %extracted_40 = tensor.extract %12[%c1] : tensor<3xi64>
      %277 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
      %278 = vector.outerproduct %19, %19, %277 {kind = #vector.kind<minf>} : vector<11xf16>, vector<11xf16>
      %279 = math.exp %34 : tensor<1x10x10xf16>
      scf.yield
    }
    default {
      %267 = index.ceildivs %c13, %c3
      memref.alloca_scope  {
        %281 = vector.extract %47[8] : vector<11xi16>
        %282 = vector.broadcast %c719041058_i32 : i32 to vector<i32>
        %283 = vector.transfer_write %282, %13[%41] : vector<i32>, tensor<3xi32>
        %284 = math.ceil %10 : tensor<3xf32>
        %285 = vector.create_mask %c6, %267, %c8 : vector<11x10x1xi1>
        memref.copy %alloc_13, %53 : memref<1x1xi1> to memref<1x1xi1>
        %286 = math.rsqrt %4 : tensor<3xf16>
        %287 = arith.remf %cst_2, %cst_3 : f32
        %288 = arith.maxf %cst_1, %cst_1 : f16
        %289 = math.log10 %cst_3 : f32
        %290 = index.casts %c12 : index to i32
        memref.store %c-778_i16, %alloc_10[%c9, %c3, %c0] : memref<11x10x1xi16>
        %291 = index.sub %c11, %c11
        %292 = math.cos %3 : tensor<11x10x1xf32>
        %293 = arith.muli %c507067065_i64, %c507067065_i64 : i64
        %294 = index.ceildivs %c13, %267
        %295 = vector.splat %29 : vector<1x10x10xindex>
        %296 = vector.flat_transpose %49 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
        %297 = arith.maxf %cst_1, %cst_1 : f16
        %298 = math.cos %4 : tensor<3xf16>
        %299 = math.log2 %0 : tensor<1x1xf32>
        %300 = vector.reduction <add>, %47 : vector<11xi16> into i16
        affine.store %cst_1, %alloc_7[%c11] : memref<3xf16>
        %301 = vector.create_mask %c8, %30, %c1 : vector<11x10x1xi1>
        memref.copy %alloc_18, %alloc_5 : memref<1x1xf16> to memref<1x1xf16>
        %302 = math.cos %3 : tensor<11x10x1xf32>
        %303 = index.maxs %c6, %c6
        %304 = bufferization.clone %alloc_7 : memref<3xf16> to memref<3xf16>
        %305 = vector.load %alloc_12[%c0] : memref<3xf32>, vector<11x10x1xf32>
        %306 = vector.transpose %282, [] : vector<i32> to vector<i32>
        %307 = vector.bitcast %301 : vector<11x10x1xi1> to vector<11x10x1xi1>
        memref.store %c904662618_i64, %alloc_14[%c10, %c4, %c0] : memref<11x10x1xi64>
        %308 = index.ceildivs %41, %29
      }
      %268 = vector.load %alloc_8[%c0, %c0] : memref<1x1xf16>, vector<1x10x10xf16>
      %269 = memref.realloc %alloc : memref<3xi32> to memref<1xi32>
      %270 = index.divu %27, %48
      %271 = math.round %35 : tensor<1x1xf32>
      %272 = math.atan %cst_2 : f32
      %273 = arith.divsi %c904662618_i64, %c1080549060_i64 : i64
      memref.assume_alignment %alloc_4, 1 : memref<1x1xi64>
      %274 = arith.shrui %c507067065_i64, %c941654629_i64 : i64
      %275 = tensor.empty() : tensor<1x10x10xf16>
      %mapped_37 = linalg.map ins(%34 : tensor<1x10x10xf16>) outs(%275 : tensor<1x10x10xf16>)
        (%in: f16) {
          %false_38 = arith.constant false
          %281 = arith.minf %in, %cst_1 : f16
          %282 = vector.bitcast %47 : vector<11xi16> to vector<11xi16>
          %283 = vector.splat %c904662618_i64 : vector<1x10x10xi64>
          %284 = vector.insertelement %c-778_i16, %47[%c8 : index] : vector<11xi16>
          memref.assume_alignment %alloc_13, 1 : memref<1x1xi1>
          %285 = arith.ori %c56743069_i32, %c56743069_i32 : i32
          %286 = vector.load %alloc_17[%c0, %c4, %c0] : memref<1x10x10xf16>, vector<1x10x10xf16>
          %287 = arith.shrui %c1080549060_i64, %c904662618_i64 : i64
          %288 = math.tanh %cst : f32
          %289 = arith.floordivsi %c-778_i16, %c-778_i16 : i16
          memref.assume_alignment %alloc_14, 4 : memref<11x10x1xi64>
          %290 = math.log1p %275 : tensor<1x10x10xf16>
          %291 = math.copysign %275, %34 : tensor<1x10x10xf16>
          %292 = arith.muli %c1080549060_i64, %c1080549060_i64 : i64
          %collapsed_39 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<11x10x1xi32> into tensor<110x1xi32>
          %293 = index.divu %c10, %48
          %294 = arith.mulf %in, %cst_1 : f16
          %295 = vector.multi_reduction <add>, %282, %47 [] : vector<11xi16> to vector<11xi16>
          %c1_i32_40 = arith.constant 1 : i32
          %296 = vector.transfer_read %alloc[%c6], %c1_i32_40 : memref<3xi32>, vector<i32>
          %297 = arith.maxsi %c56743069_i32, %c56743069_i32 : i32
          %298 = arith.maxf %in, %cst_1 : f16
          %splat_41 = tensor.splat %c56743069_i32 : tensor<11x10x1xi32>
          %splat_42 = tensor.splat %c1_i32_40 : tensor<3xi32>
          %299 = math.log2 %3 : tensor<11x10x1xf32>
          %extracted_43 = tensor.extract %9[%c0, %c6, %c5] : tensor<1x10x10xi64>
          %300 = index.casts %30 : index to i32
          %301 = math.exp %35 : tensor<1x1xf32>
          %302 = math.absf %4 : tensor<3xf16>
          %303 = vector.create_mask %46, %c4, %46 : vector<11x10x1xi1>
          %304 = index.casts %27 : index to i32
          %305 = index.castu %c548648815_i64 : i64 to index
          %cst_44 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_44 : f16
        }
      %276 = math.ipowi %8, %8 : tensor<11x10x1xi64>
      %277 = memref.realloc %alloc_7 : memref<3xf16> to memref<11xf16>
      %278 = index.divu %48, %c1
      %279 = bufferization.to_tensor %alloc_14 : memref<11x10x1xi64>
      %280 = math.sqrt %35 : tensor<1x1xf32>
    }
    %54 = arith.minsi %false, %false : i1
    %55 = vector.create_mask %41, %c13, %46 : vector<11x10x1xi1>
    %56 = vector.broadcast %false : i1 to vector<1xi1>
    %57 = vector.maskedload %alloc_19[%c0, %c6, %c1], %56, %56 : memref<1x11x10xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %58 = math.exp2 %10 : tensor<3xf32>
    %59 = math.tanh %cst : f32
    affine.for %arg2 = 0 to 53 {
    }
    affine.for %arg2 = 0 to 42 {
    }
    %60 = math.floor %35 : tensor<1x1xf32>
    %61 = scf.if %false -> (f32) {
      %267 = math.ctpop %12 : tensor<3xi64>
      %268 = math.sqrt %34 : tensor<1x10x10xf16>
      %269 = index.maxs %c0, %c6
      %270 = arith.maxf %cst_0, %cst_0 : f32
      %271 = math.floor %cst_3 : f32
      %272 = math.atan2 %cst_0, %cst_0 : f32
      %273 = math.ctpop %13 : tensor<3xi32>
      %274 = arith.divsi %c56743069_i32, %c719041058_i32 : i32
      scf.yield %cst : f32
    } else {
      %267 = arith.maxui %c719041058_i32, %c719041058_i32 : i32
      memref.store %c56743069_i32, %alloc[%c2] : memref<3xi32>
      %268 = vector.broadcast %cst_0 : f32 to vector<f32>
      %269 = vector.transfer_write %268, %35[%c14, %27] : vector<f32>, tensor<1x1xf32>
      %generated_37 = tensor.generate %c4 {
      ^bb0(%arg2: index, %arg3: index):
        %274 = math.log2 %3 : tensor<11x10x1xf32>
        %275 = vector.multi_reduction <xor>, %57, %56 [] : vector<1xi1> to vector<1xi1>
        %276 = math.cttz %6 : tensor<11x10x1xi32>
        %277 = index.maxu %arg2, %c14
        tensor.yield %false : i1
      } : tensor<?x1xi1>
      %270 = math.log %cst_2 : f32
      %271 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 ceildiv 8 - 1) mod 16 - d2)>(%c5, %30, %c4, %48)
      %272 = math.atan2 %35, %0 : tensor<1x1xf32>
      %273 = arith.muli %false, %false : i1
      scf.yield %cst_2 : f32
    }
    %62 = arith.mulf %cst_3, %cst_2 : f32
    %63 = math.rsqrt %0 : tensor<1x1xf32>
    %64 = index.ceildivs %c9, %c15
    %65 = math.exp2 %cst_3 : f32
    %alloc_21 = memref.alloc() : memref<3xf32>
    scf.if %false {
      %267 = math.round %3 : tensor<11x10x1xf32>
      %268 = index.divu %c12, %48
      %269 = tensor.empty() : tensor<11x10x1xi32>
      %mapped_37 = linalg.map ins(%5, %5, %6 : tensor<11x10x1xi32>, tensor<11x10x1xi32>, tensor<11x10x1xi32>) outs(%269 : tensor<11x10x1xi32>)
        (%in: i32, %in_38: i32, %in_39: i32) {
          %274 = math.log10 %cst_3 : f32
          %275 = arith.remf %cst, %cst_2 : f32
          %276 = index.ceildivs %c12, %46
          %277 = math.copysign %cst_2, %cst : f32
          %278 = vector.broadcast %false : i1 to vector<10x1x10x1xi1>
          %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %55, %55, %278 : vector<11x10x1xi1>, vector<11x10x1xi1> into vector<10x1x10x1xi1>
          %from_elements_40 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16 : tensor<1x10x10xi16>
          %280 = index.divs %c1, %c0
          %281 = index.ceildivs %268, %29
          %282 = math.copysign %3, %3 : tensor<11x10x1xf32>
          %283 = arith.xori %c941654629_i64, %c548648815_i64 : i64
          %284 = arith.negf %61 : f32
          bufferization.dealloc_tensor %7 : tensor<1x1xi16>
          %285 = vector.broadcast %c3 : index to vector<11xindex>
          %286 = vector.broadcast %false : i1 to vector<11xi1>
          vector.scatter %alloc_13[%c0, %c0] [%285], %286, %286 : memref<1x1xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
          %287 = arith.andi %c56743069_i32, %in : i32
          %288 = arith.cmpi ule, %c1080549060_i64, %c904662618_i64 : i64
          %expanded_41 = tensor.expand_shape %20 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
          %289 = memref.load %alloc_14[%c8, %c6, %c0] : memref<11x10x1xi64>
          %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - d2 * 64 + d2 * 2, d0 floordiv 64 - d2)>(%276, %c15, %281, %c1)
          %291 = arith.ceildivsi %c507067065_i64, %c1080549060_i64 : i64
          %292 = math.log2 %cst_0 : f32
          %293 = arith.divf %cst_1, %cst_1 : f16
          %294 = arith.shli %c548648815_i64, %c1080549060_i64 : i64
          %295 = arith.shli %c56743069_i32, %c973700124_i32 : i32
          %296 = vector.transpose %19, [0] : vector<11xf16> to vector<11xf16>
          %297 = math.copysign %10, %10 : tensor<3xf32>
          %298 = index.add %276, %c1
          %299 = math.ceil %0 : tensor<1x1xf32>
          %false_42 = arith.constant false
          %false_43 = arith.constant false
          %300 = vector.transfer_read %1[%290], %false_43 : tensor<3xi1>, vector<i1>
          %301 = vector.broadcast %false : i1 to vector<10x1xi1>
          %302 = vector.insert %301, %55 [2] : vector<10x1xi1> into vector<11x10x1xi1>
          %303 = math.round %4 : tensor<3xf16>
          %true_44 = arith.constant true
          %304 = arith.negf %cst : f32
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %270 = vector.extract_strided_slice %49 {offsets = [0], sizes = [4], strides = [1]} : vector<11xf16> to vector<4xf16>
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %56, %56, %false : vector<1xi1>, vector<1xi1> into i1
      affine.for %arg2 = 0 to 67 {
      }
      %272 = scf.while (%arg2 = %alloc_6) : (memref<1x10x10xi32>) -> memref<1x10x10xi32> {
        %274 = arith.remf %cst_3, %cst_0 : f32
        %275 = bufferization.to_memref %2 : memref<11x10x1xi32>
        %alloc_38 = memref.alloc() : memref<1x1xi16>
        %276 = arith.ori %c507067065_i64, %c548648815_i64 : i64
        %277 = arith.remf %cst_0, %cst_0 : f32
        %278 = bufferization.to_memref %2 : memref<11x10x1xi32>
        %279 = math.log %0 : tensor<1x1xf32>
        %280 = math.ceil %4 : tensor<3xf16>
        scf.condition(%false) %arg2 : memref<1x10x10xi32>
      } do {
      ^bb0(%arg2: memref<1x10x10xi32>):
        %274 = arith.divf %61, %cst_0 : f32
        %275 = math.expm1 %10 : tensor<3xf32>
        %276 = arith.mulf %61, %cst_0 : f32
        %277 = vector.broadcast %false : i1 to vector<1x1xi1>
        %278 = vector.outerproduct %56, %56, %277 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
        %alloca = memref.alloca() : memref<1x1xi16>
        %279 = math.ceil %4 : tensor<3xf16>
        %280 = arith.ori %c1449638243_i64, %c1449638243_i64 : i64
        %281 = arith.shli %c719041058_i32, %c56743069_i32 : i32
        %282 = index.maxs %46, %46
        %283 = arith.cmpi eq, %c973700124_i32, %c973700124_i32 : i32
        %284 = vector.broadcast %c11 : index to vector<3xindex>
        %285 = vector.broadcast %false : i1 to vector<3xi1>
        vector.scatter %alloc_13[%c0, %c0] [%284], %285, %285 : memref<1x1xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %286 = vector.bitcast %47 : vector<11xi16> to vector<11xi16>
        %287 = index.sub %41, %64
        %288 = arith.mulf %cst_3, %cst_3 : f32
        %289 = math.cos %10 : tensor<3xf32>
        %extracted_38 = tensor.extract %3[%c2, %c5, %c0] : tensor<11x10x1xf32>
        scf.yield %arg2 : memref<1x10x10xi32>
      }
      %273 = arith.maxf %cst_3, %cst_3 : f32
    }
    %66 = vector.insertelement %cst_1, %19[%c9 : index] : vector<11xf16>
    %67 = vector.broadcast %c7 : index to vector<1xindex>
    vector.scatter %alloc_13[%c0, %c0] [%67], %57, %57 : memref<1x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    %68 = tensor.empty() : tensor<1x1xf32>
    %69 = linalg.matmul ins(%0, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%68 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %70 = vector.broadcast %c56743069_i32 : i32 to vector<11x10xi32>
    %71 = vector.transfer_write %70, %2[%c11, %c1, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<11x10xi32>, tensor<11x10x1xi32>
    %72 = arith.divsi %c56743069_i32, %c973700124_i32 : i32
    %73 = arith.xori %c1080549060_i64, %c507067065_i64 : i64
    %74 = math.exp2 %35 : tensor<1x1xf32>
    memref.store %false, %alloc_19[%c0, %c4, %c9] : memref<1x11x10xi1>
    %c286418326_i64 = arith.constant 286418326 : i64
    %75 = vector.transpose %47, [0] : vector<11xi16> to vector<11xi16>
    %76 = arith.divf %cst, %cst : f32
    %77 = tensor.empty() : tensor<i32>
    %mapped = linalg.map ins(%22 : tensor<i32>) outs(%77 : tensor<i32>)
      (%in: i32) {
        %267 = memref.realloc %alloc : memref<3xi32> to memref<1xi32>
        %268 = arith.andi %c548648815_i64, %c904662618_i64 : i64
        %269 = index.add %41, %c15
        %270 = vector.bitcast %57 : vector<1xi1> to vector<1xi1>
        %271 = arith.remsi %c548648815_i64, %c1080549060_i64 : i64
        %272 = index.divu %c3, %c3
        %273 = arith.addi %c-778_i16, %c-778_i16 : i16
        %274 = bufferization.clone %alloc_7 : memref<3xf16> to memref<3xf16>
        %275 = math.exp2 %10 : tensor<3xf32>
        %276 = tensor.empty() : tensor<3xi32>
        %mapped_37 = linalg.map ins(%13, %13 : tensor<3xi32>, tensor<3xi32>) outs(%276 : tensor<3xi32>)
          (%in_43: i32, %in_44: i32) {
            %extracted_45 = tensor.extract %10[%c2] : tensor<3xf32>
            %296 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
            %297 = vector.outerproduct %19, %19, %296 {kind = #vector.kind<mul>} : vector<11xf16>, vector<11xf16>
            %298 = math.log10 %35 : tensor<1x1xf32>
            %299 = vector.bitcast %56 : vector<1xi1> to vector<1xi1>
            %300 = arith.divf %61, %extracted_45 : f32
            %301 = math.round %68 : tensor<1x1xf32>
            %inserted_46 = tensor.insert %c-778_i16 into %14[%c10, %c6, %c0] : tensor<11x10x1xi16>
            %302 = arith.remui %in_44, %in_43 : i32
            %303 = arith.remf %cst, %extracted_45 : f32
            %304 = arith.divsi %false, %false : i1
            %305 = arith.maxsi %c1449638243_i64, %c507067065_i64 : i64
            %expanded_47 = tensor.expand_shape %276 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
            %306 = arith.maxsi %c56743069_i32, %in_43 : i32
            %rank = tensor.rank %7 : tensor<1x1xi16>
            %307 = arith.maxf %cst_3, %extracted_45 : f32
            %308 = arith.ori %c1449638243_i64, %c548648815_i64 : i64
            %309 = math.powf %extracted_45, %cst_0 : f32
            %310 = vector.extract %47[4] : vector<11xi16>
            %311 = vector.broadcast %c-778_i16 : i16 to vector<11x11xi16>
            %312 = vector.outerproduct %47, %47, %311 {kind = #vector.kind<and>} : vector<11xi16>, vector<11xi16>
            %collapsed_48 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<11x10x1xi32> into tensor<110x1xi32>
            %313 = arith.maxf %extracted_45, %cst_0 : f32
            %314 = arith.ori %c1449638243_i64, %c941654629_i64 : i64
            %315 = math.roundeven %4 : tensor<3xf16>
            %316 = arith.maxui %in_43, %in_44 : i32
            %317 = arith.divf %cst_0, %cst_2 : f32
            %expanded_49 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<1x10x10xi64> into tensor<1x10x10x1xi64>
            %318 = arith.andi %c973700124_i32, %c719041058_i32 : i32
            %319 = arith.remsi %c1449638243_i64, %c1449638243_i64 : i64
            %320 = bufferization.to_tensor %alloc_12 : memref<3xf32>
            %321 = vector.load %53[%c0, %c0] : memref<1x1xi1>, vector<11x10x1xi1>
            %322 = math.cos %4 : tensor<3xf16>
            %323 = index.casts %c1080549060_i64 : i64 to index
            %c1_i32_50 = arith.constant 1 : i32
            linalg.yield %c1_i32_50 : i32
          }
        scf.execute_region {
          %collapsed_43 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<11x10x1xi32> into tensor<110x1xi32>
          %cst_44 = arith.constant 1.000000e+00 : f32
          %cst_45 = arith.constant 0.000000e+00 : f32
          %296 = vector.transfer_read %35[%46, %272], %cst_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x1xf32>, vector<1xf32>
          %297 = vector.bitcast %270 : vector<1xi1> to vector<1xi1>
          memref.assume_alignment %alloc_12, 1 : memref<3xf32>
          %from_elements_46 = tensor.from_elements %cst_2, %cst_44, %61, %cst_3, %61, %cst_0, %cst_44, %cst_0, %61, %61, %cst_0, %cst, %cst, %cst_0, %cst, %cst_44, %cst_44, %cst_3, %cst_44, %cst_0, %cst_3, %cst_3, %cst_44, %cst_3, %cst_44, %cst_2, %cst, %cst_44, %cst, %cst_3, %cst_44, %61, %cst_3, %cst, %cst, %61, %61, %cst_44, %cst_44, %cst_3, %61, %cst_0, %cst_2, %cst, %cst, %cst_44, %cst_3, %cst, %cst_0, %cst_3, %cst, %cst_3, %cst_44, %cst_0, %cst_44, %cst_3, %cst_2, %cst_44, %cst_2, %cst_0, %cst, %61, %cst_3, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_44, %cst_44, %cst_2, %61, %cst_2, %cst_3, %cst_0, %61, %61, %cst_2, %cst_2, %cst, %61, %cst_0, %cst_2, %cst_3, %cst_44, %cst_2, %61, %cst_2, %cst_3, %cst_2, %cst_44, %cst_2, %cst_2, %61, %cst_44, %cst_3, %61, %61, %cst_0, %61, %cst_2, %cst_2, %cst_0, %cst_0, %cst_3, %cst_0, %cst_2, %cst_44, %61, %61 : tensor<11x10x1xf32>
          %298 = arith.floordivsi %c-778_i16, %c-778_i16 : i16
          %299 = index.divu %c12, %64
          %inserted_47 = tensor.insert %61 into %3[%c3, %c0, %c0] : tensor<11x10x1xf32>
          %300 = arith.xori %c-778_i16, %c-778_i16 : i16
          %301 = vector.broadcast %false : i1 to vector<10x1xi1>
          %302 = vector.insert %301, %55 [2] : vector<10x1xi1> into vector<11x10x1xi1>
          %303 = math.ctlz %77 : tensor<i32>
          %304 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 64)>(%c14, %64, %c14)
          memref.assume_alignment %alloc_15, 16 : memref<1x10x10xi1>
          %305 = vector.broadcast %false : i1 to vector<i1>
          %306 = vector.transfer_write %305, %1[%29] : vector<i1>, tensor<3xi1>
          %307 = math.log2 %cst_1 : f16
          %308 = vector.insertelement %false, %56[%c0 : index] : vector<1xi1>
          scf.yield
        }
        %277 = vector.create_mask %c14, %30, %48 : vector<1x10x10xi1>
        %278 = index.ceildivs %27, %c12
        %false_38 = arith.constant false
        %false_39 = arith.constant false
        %279 = vector.transfer_read %alloc_16[%c15, %27, %c9], %false_39 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : memref<11x10x1xi1>, vector<10x11xi1>
        %280 = math.ceil %cst_2 : f32
        %281 = vector.insert %cst_1, %49 [4] : f16 into vector<11xf16>
        %282 = math.cos %cst : f32
        %283 = affine.load %alloc_4[%c12, %c12] : memref<1x1xi64>
        %284 = arith.mulf %cst_2, %cst_2 : f32
        %285 = index.castu %30 : index to i32
        %286 = vector.insertelement %false_38, %56[%46 : index] : vector<1xi1>
        %287 = math.rsqrt %4 : tensor<3xf16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_40 = arith.constant 0 : i32
        %288 = vector.transfer_read %276[%c4], %c0_i32_40 : tensor<3xi32>, vector<i32>
        %289 = arith.andi %c1080549060_i64, %c507067065_i64 : i64
        %290 = math.ctpop %15 : tensor<1x10x10xi32>
        %291 = vector.extract %277[0] : vector<1x10x10xi1>
        %292 = arith.divsi %c1449638243_i64, %c548648815_i64 : i64
        %293 = arith.remf %61, %cst_3 : f32
        %294 = math.expm1 %35 : tensor<1x1xf32>
        affine.store %c-778_i16, %alloc_10[%c1, %c4, %c3] : memref<11x10x1xi16>
        %295 = math.atan2 %cst_2, %61 : f32
        %false_41 = index.bool.constant false
        %c1_i32_42 = arith.constant 1 : i32
        linalg.yield %c1_i32_42 : i32
      }
    %78 = vector.transpose %49, [0] : vector<11xf16> to vector<11xf16>
    %79 = arith.remf %cst_2, %cst_3 : f32
    %80 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %49, %49, %cst_1 : vector<11xf16>, vector<11xf16> into f16
    %81 = math.rsqrt %3 : tensor<11x10x1xf32>
    %82 = arith.divui %c904662618_i64, %c1449638243_i64 : i64
    %83 = math.log10 %4 : tensor<3xf16>
    %84 = memref.realloc %alloc_9 : memref<3xi1> to memref<10xi1>
    %85 = math.ipowi %8, %8 : tensor<11x10x1xi64>
    %86 = tensor.empty() : tensor<10xi32>
    %87 = tensor.empty() : tensor<10x1x11xi32>
    %88 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%86, %87 : tensor<10xi32>, tensor<10x1x11xi32>) outs(%2 : tensor<11x10x1xi32>) {
    ^bb0(%in: i32, %in_37: i32, %out: i32):
      %267 = tensor.empty() : tensor<1x1xi32>
      %268 = math.fpowi %35, %267 : tensor<1x1xf32>, tensor<1x1xi32>
      %splat_38 = tensor.splat %61 : tensor<11x10x1xf32>
      %269 = math.log1p %0 : tensor<1x1xf32>
      %270 = arith.divf %cst_3, %cst_3 : f32
      %271 = arith.divsi %out, %c56743069_i32 : i32
      %272 = tensor.empty() : tensor<10xi32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272 : tensor<10xi32>) outs(%2 : tensor<11x10x1xi32>) {
      ^bb0(%in_41: i32, %out_42: i32):
        %297 = math.roundeven %4 : tensor<3xf16>
        %298 = vector.broadcast %in_41 : i32 to vector<10x10xi32>
        %299 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %70, %70, %298 : vector<11x10xi32>, vector<11x10xi32> into vector<10x10xi32>
        %300 = arith.addi %c548648815_i64, %c1080549060_i64 : i64
        %301 = vector.insertelement %cst_1, %19[%c8 : index] : vector<11xf16>
        %302 = memref.load %alloc_5[%c0, %c0] : memref<1x1xf16>
        %303 = math.ipowi %c719041058_i32, %c719041058_i32 : i32
        %304 = math.ceil %splat_38 : tensor<11x10x1xf32>
        %expanded_43 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<11x10x1xi1> into tensor<11x10x1x1xi1>
        bufferization.dealloc_tensor %reduced : tensor<10xi1>
        %305 = bufferization.to_tensor %alloc_7 : memref<3xf16>
        %306 = math.log10 %cst : f32
        %307 = vector.create_mask %c3 : vector<3xi1>
        %308 = math.log10 %cst_0 : f32
        %309 = memref.realloc %alloc_7 : memref<3xf16> to memref<1xf16>
        %310 = vector.create_mask %c1 : vector<3xi1>
        %311 = arith.subi %c719041058_i32, %c719041058_i32 : i32
        %312 = arith.cmpf ugt, %cst_3, %cst_2 : f32
        %313 = vector.broadcast %cst_1 : f16 to vector<f16>
        %314 = vector.transfer_write %313, %305[%41] : vector<f16>, tensor<3xf16>
        %alloc_44 = memref.alloc() : memref<1x1xi16>
        %315 = vector.broadcast %c-778_i16 : i16 to vector<1x10x10xi16>
        %316 = vector.broadcast %false : i1 to vector<1x10x10xi1>
        %317 = vector.broadcast %out_42 : i32 to vector<1x10x10xi32>
        %318 = vector.gather %alloc_44[%c11, %c7] [%317], %316, %315 : memref<1x1xi16>, vector<1x10x10xi32>, vector<1x10x10xi1>, vector<1x10x10xi16> into vector<1x10x10xi16>
        %splat_45 = tensor.splat %cst_3 : tensor<3xf32>
        %319 = arith.andi %c507067065_i64, %c548648815_i64 : i64
        %320 = vector.shuffle %57, %57 [0] : vector<1xi1>, vector<1xi1>
        %321 = bufferization.clone %alloc_7 : memref<3xf16> to memref<3xf16>
        %322 = arith.minf %cst_1, %cst_1 : f16
        %323 = math.roundeven %34 : tensor<1x10x10xf16>
        %324 = affine.apply affine_map<(d0) -> (-d0)>(%c9)
        %from_elements_46 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<11x10x1xf16>
        %325 = bufferization.to_memref %0 : memref<1x1xf32>
        %326 = vector.broadcast %in : i32 to vector<10xi32>
        %327 = vector.insert %326, %70 [5] : vector<10xi32> into vector<11x10xi32>
        %328 = arith.divui %c1449638243_i64, %c548648815_i64 : i64
        %329 = vector.bitcast %49 : vector<11xf16> to vector<11xf16>
        %330 = arith.shli %out_42, %in_41 : i32
        linalg.yield %in_41 : i32
      } -> tensor<11x10x1xi32>
      %274 = math.ceil %35 : tensor<1x1xf32>
      %collapsed_39 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<11x10x1xf32> into tensor<110x1xf32>
      %275 = vector.load %alloc_12[%c0] : memref<3xf32>, vector<3xf32>
      %276 = arith.divf %61, %cst_3 : f32
      %277 = memref.load %alloc_16[%c10, %c7, %c0] : memref<11x10x1xi1>
      %278 = vector.multi_reduction <maxf>, %275, %cst_0 [0] : vector<3xf32> to f32
      %splat_40 = tensor.splat %c719041058_i32 : tensor<3xi32>
      %279 = arith.minf %278, %cst_0 : f32
      %280 = math.log2 %34 : tensor<1x10x10xf16>
      %281 = arith.remf %61, %278 : f32
      %282 = arith.muli %c-778_i16, %c-778_i16 : i16
      %283 = index.add %c11, %c15
      %284 = scf.execute_region -> index {
        %297 = arith.remui %c719041058_i32, %out : i32
        %298 = math.floor %10 : tensor<3xf32>
        %rank = tensor.rank %collapsed_39 : tensor<110x1xf32>
        %299 = affine.apply affine_map<(d0, d1) -> ((d0 + 16) mod 64)>(%rank, %c6)
        %300 = vector.extract_strided_slice %56 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %301 = tensor.empty() : tensor<1x1xi16>
        %302 = linalg.matmul ins(%7, %7 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%301 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %303 = vector.matrix_multiply %47, %47 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
        %304 = arith.divf %cst_2, %cst_2 : f32
        %305 = index.sub %rank, %41
        %306 = arith.minsi %false, %false : i1
        %307 = vector.load %53[%c0, %c0] : memref<1x1xi1>, vector<3xi1>
        %alloc_41 = memref.alloc() : memref<11x10x1xf32>
        memref.copy %alloc_11, %alloc_41 : memref<11x10x1xf32> to memref<11x10x1xf32>
        %308 = index.ceildivs %c2, %c13
        vector.print %70 : vector<11x10xi32>
        %309 = arith.cmpf one, %cst_0, %61 : f32
        %310 = math.copysign %cst_0, %cst : f32
        scf.yield %c9 : index
      }
      %285 = math.log2 %cst_1 : f16
      %c1728751155_i32 = arith.constant 1728751155 : i32
      %286 = math.powf %68, %68 : tensor<1x1xf32>
      %287 = math.log10 %0 : tensor<1x1xf32>
      %288 = memref.realloc %alloc_9 : memref<3xi1> to memref<10xi1>
      %289 = math.atan2 %4, %4 : tensor<3xf16>
      %290 = bufferization.clone %alloc_11 : memref<11x10x1xf32> to memref<11x10x1xf32>
      %291 = math.ceil %cst_3 : f32
      %292 = arith.addi %false, %false : i1
      %293 = vector.insert %false, %56 [0] : i1 into vector<1xi1>
      %294 = math.log1p %35 : tensor<1x1xf32>
      %295 = arith.cmpf ult, %cst_2, %cst : f32
      %296 = arith.shli %c1449638243_i64, %c1449638243_i64 : i64
      linalg.yield %in_37 : i32
    } -> tensor<11x10x1xi32>
    %89 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
    %90 = vector.outerproduct %49, %49, %89 {kind = #vector.kind<add>} : vector<11xf16>, vector<11xf16>
    %inserted = tensor.insert %false into %1[%c1] : tensor<3xi1>
    %91 = arith.ceildivsi %false, %false : i1
    %92 = index.castu %c11 : index to i32
    %93 = vector.broadcast %27 : index to vector<3xindex>
    %94 = vector.broadcast %false : i1 to vector<3xi1>
    vector.scatter %alloc_15[%c0, %c7, %c5] [%93], %94, %94 : memref<1x10x10xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    %95 = arith.maxf %cst_3, %61 : f32
    %96 = affine.min affine_map<(d0, d1, d2) -> (-d1 - d2 mod 32, -d1 - 1, -d1 - d2 mod 32)>(%c13, %c0, %c14)
    %97 = affine.apply affine_map<(d0) -> (-d0)>(%41)
    %98 = math.powf %68, %35 : tensor<1x1xf32>
    %99 = math.rsqrt %68 : tensor<1x1xf32>
    %100 = arith.shli %c56743069_i32, %c719041058_i32 : i32
    %101 = arith.shrui %c548648815_i64, %c1449638243_i64 : i64
    %102 = math.log1p %0 : tensor<1x1xf32>
    %103 = arith.shli %c1080549060_i64, %c904662618_i64 : i64
    %104 = math.atan %61 : f32
    %105 = vector.broadcast %c973700124_i32 : i32 to vector<11x10x1xi32>
    %106 = vector.gather %15[%c12, %c12, %c10] [%105], %55, %105 : tensor<1x10x10xi32>, vector<11x10x1xi32>, vector<11x10x1xi1>, vector<11x10x1xi32> into vector<11x10x1xi32>
    %splat = tensor.splat %c904662618_i64 : tensor<3xi64>
    %107 = bufferization.to_memref %9 : memref<1x10x10xi64>
    %108 = arith.maxf %61, %cst_3 : f32
    %109 = math.copysign %3, %3 : tensor<11x10x1xf32>
    %110 = index.ceildivu %c11, %48
    %111 = tensor.empty() : tensor<1x1xf32>
    %112 = linalg.matmul ins(%35, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%111 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %113 = vector.broadcast %c56743069_i32 : i32 to vector<10xi32>
    %dest, %accumulated_value = vector.scan <and>, %70, %113 {inclusive = false, reduction_dim = 0 : i64} : vector<11x10xi32>, vector<10xi32>
    %114 = arith.andi %c973700124_i32, %c719041058_i32 : i32
    %alloc_22 = memref.alloc() : memref<3xi32>
    memref.copy %alloc, %alloc_22 : memref<3xi32> to memref<3xi32>
    %115 = vector.load %alloc_17[%c0, %c6, %c8] : memref<1x10x10xf16>, vector<11x10x1xf16>
    %116 = arith.shli %c548648815_i64, %c941654629_i64 : i64
    %117 = math.ctpop %1 : tensor<3xi1>
    %118 = scf.execute_region -> tensor<1x10x10xf32> {
      %expanded_37 = tensor.expand_shape %splat [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
      %alloc_38 = memref.alloc() : memref<1x10x10xi64>
      memref.copy %107, %alloc_38 : memref<1x10x10xi64> to memref<1x10x10xi64>
      %267 = memref.realloc %alloc_7 : memref<3xf16> to memref<11xf16>
      %268 = math.expm1 %35 : tensor<1x1xf32>
      %269 = bufferization.to_tensor %53 : memref<1x1xi1>
      %from_elements_39 = tensor.from_elements %c507067065_i64, %c507067065_i64, %c941654629_i64, %c1449638243_i64, %c507067065_i64, %c904662618_i64, %c904662618_i64, %c904662618_i64, %c1080549060_i64, %c941654629_i64, %c507067065_i64, %c904662618_i64, %c548648815_i64, %c904662618_i64, %c941654629_i64, %c904662618_i64, %c1449638243_i64, %c941654629_i64, %c548648815_i64, %c507067065_i64, %c904662618_i64, %c941654629_i64, %c548648815_i64, %c941654629_i64, %c548648815_i64, %c507067065_i64, %c1080549060_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c1080549060_i64, %c941654629_i64, %c1080549060_i64, %c548648815_i64, %c548648815_i64, %c1449638243_i64, %c941654629_i64, %c507067065_i64, %c1449638243_i64, %c1449638243_i64, %c1449638243_i64, %c1080549060_i64, %c941654629_i64, %c904662618_i64, %c1080549060_i64, %c941654629_i64, %c904662618_i64, %c941654629_i64, %c904662618_i64, %c904662618_i64, %c904662618_i64, %c1449638243_i64, %c904662618_i64, %c1449638243_i64, %c1080549060_i64, %c548648815_i64, %c507067065_i64, %c507067065_i64, %c548648815_i64, %c904662618_i64, %c904662618_i64, %c941654629_i64, %c1449638243_i64, %c1449638243_i64, %c1449638243_i64, %c1449638243_i64, %c1449638243_i64, %c507067065_i64, %c941654629_i64, %c941654629_i64, %c1449638243_i64, %c904662618_i64, %c1080549060_i64, %c941654629_i64, %c904662618_i64, %c1449638243_i64, %c941654629_i64, %c1080549060_i64, %c1080549060_i64, %c941654629_i64, %c941654629_i64, %c507067065_i64, %c548648815_i64, %c904662618_i64, %c507067065_i64, %c1449638243_i64, %c507067065_i64, %c548648815_i64, %c941654629_i64, %c941654629_i64, %c507067065_i64, %c548648815_i64, %c1080549060_i64, %c1080549060_i64, %c548648815_i64, %c507067065_i64, %c941654629_i64, %c941654629_i64, %c548648815_i64, %c1449638243_i64 : tensor<1x10x10xi64>
      %270 = math.tan %cst_3 : f32
      %expanded_40 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<1x1xi16> into tensor<1x1x1xi16>
      %271 = math.powf %0, %0 : tensor<1x1xf32>
      %272 = arith.andi %c1449638243_i64, %c904662618_i64 : i64
      %273 = arith.shrsi %c904662618_i64, %c507067065_i64 : i64
      %274 = math.log10 %10 : tensor<3xf32>
      %275 = index.divu %c9, %c3
      %276 = math.cos %4 : tensor<3xf16>
      %277 = vector.flat_transpose %57 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %from_elements_41 = tensor.from_elements %false : tensor<1x1xi1>
      %278 = tensor.empty() : tensor<1x10x10xf32>
      scf.yield %278 : tensor<1x10x10xf32>
    }
    %119 = arith.divsi %c56743069_i32, %c973700124_i32 : i32
    %120 = scf.while (%arg2 = %alloc_11) : (memref<11x10x1xf32>) -> memref<11x10x1xf32> {
      %267 = arith.ori %c941654629_i64, %c548648815_i64 : i64
      %268 = vector.broadcast %false : i1 to vector<10xi1>
      %269 = vector.maskedload %alloc_16[%c4, %c4, %c0], %268, %268 : memref<11x10x1xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %270 = vector.broadcast %cst_1 : f16 to vector<10x1xf16>
      %271 = vector.insert %270, %115 [1] : vector<10x1xf16> into vector<11x10x1xf16>
      %272 = math.copysign %118, %118 : tensor<1x10x10xf32>
      %273 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 64)>(%c9, %c0, %c10)
      %274 = index.castu %c548648815_i64 : i64 to index
      %rank = tensor.rank %1 : tensor<3xi1>
      %275 = math.copysign %cst_2, %61 : f32
      scf.condition(%false) %alloc_11 : memref<11x10x1xf32>
    } do {
    ^bb0(%arg2: memref<11x10x1xf32>):
      memref.assume_alignment %alloc, 4 : memref<3xi32>
      %267 = math.atan %cst_3 : f32
      %268 = math.log %118 : tensor<1x10x10xf32>
      %269 = math.floor %4 : tensor<3xf16>
      vector.print %106 : vector<11x10x1xi32>
      %270 = math.ctpop %18 : tensor<10xi1>
      vector.print %19 : vector<11xf16>
      %271 = arith.addf %cst_1, %cst_1 : f16
      affine.store %cst, %alloc_12[%c12] : memref<3xf32>
      %272 = vector.extract_strided_slice %56 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %273 = math.log10 %cst : f32
      %274 = arith.maxsi %c719041058_i32, %c973700124_i32 : i32
      %275 = arith.maxf %61, %cst_2 : f32
      %276 = vector.load %alloc_8[%c0, %c0] : memref<1x1xf16>, vector<1x1xf16>
      %277 = math.log1p %4 : tensor<3xf16>
      %278 = arith.ori %c-778_i16, %c-778_i16 : i16
      scf.yield %arg2 : memref<11x10x1xf32>
    }
    memref.store %false, %53[%c0, %c0] : memref<1x1xi1>
    %121 = memref.alloca_scope  -> (memref<1x1xi64>) {
      %collapsed_37 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<11x10x1xi1> into tensor<110x1xi1>
      %267 = memref.load %alloc_9[%c1] : memref<3xi1>
      %268 = arith.remsi %c904662618_i64, %c1080549060_i64 : i64
      %expanded_38 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<11x10x1xi32> into tensor<11x10x1x1xi32>
      %269 = vector.broadcast %c10 : index to vector<1xindex>
      %270 = vector.broadcast %cst_1 : f16 to vector<1xf16>
      vector.scatter %alloc_5[%c0, %c0] [%269], %56, %270 : memref<1x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
      %271 = memref.load %alloc_19[%c0, %c8, %c3] : memref<1x11x10xi1>
      memref.assume_alignment %alloc_14, 8 : memref<11x10x1xi64>
      %rank = tensor.rank %expanded_38 : tensor<11x10x1x1xi32>
      %272 = vector.multi_reduction <and>, %105, %c719041058_i32 [0, 1, 2] : vector<11x10x1xi32> to i32
      %273 = arith.remf %cst_0, %cst : f32
      scf.if %false {
        %291 = arith.minf %61, %cst_0 : f32
        memref.assume_alignment %alloc_5, 16 : memref<1x1xf16>
        %292 = vector.bitcast %70 : vector<11x10xi32> to vector<11x10xi32>
        %293 = index.add %c3, %c2
        %294 = math.log2 %4 : tensor<3xf16>
        %295 = index.ceildivs %c8, %41
        %296 = vector.broadcast %false : i1 to vector<10xi1>
        %297 = vector.maskedload %alloc_16[%c3, %c7, %c0], %296, %296 : memref<11x10x1xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %true_40 = arith.constant true
        %298 = vector.transfer_read %collapsed_37[%c5, %27], %true_40 : tensor<110x1xi1>, vector<11xi1>
      } else {
        %291 = index.divu %c7, %96
        %292 = math.exp2 %3 : tensor<11x10x1xf32>
        %293 = arith.minui %false, %false : i1
        %294 = index.divs %c2, %29
        %295 = math.exp %0 : tensor<1x1xf32>
        %296 = index.ceildivs %c10, %c11
        %297 = arith.maxsi %c548648815_i64, %c507067065_i64 : i64
        %298 = math.roundeven %4 : tensor<3xf16>
      }
      %274 = arith.minf %cst_3, %61 : f32
      bufferization.dealloc_tensor %11 : tensor<11x10x1xi1>
      %275 = arith.mulf %cst_2, %cst : f32
      %276 = scf.execute_region -> vector<1x1xi32> {
        %cst_40 = arith.constant 1.000000e+00 : f32
        %cst_41 = arith.constant 0.000000e+00 : f32
        %291 = vector.transfer_read %0[%c4, %c8], %cst_41 : tensor<1x1xf32>, vector<f32>
        %292 = arith.shli %c941654629_i64, %c1449638243_i64 : i64
        %293 = arith.divf %cst_2, %cst_3 : f32
        %294 = math.powf %0, %0 : tensor<1x1xf32>
        %295 = vector.broadcast %false : i1 to vector<11x10xi1>
        %dest_42, %accumulated_value_43 = vector.scan <minui>, %55, %295 {inclusive = false, reduction_dim = 2 : i64} : vector<11x10x1xi1>, vector<11x10xi1>
        %296 = arith.remf %cst_0, %cst_3 : f32
        %297 = tensor.empty() : tensor<1x1xf32>
        %298 = linalg.matmul ins(%0, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%297 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %299 = vector.create_mask %29 : vector<3xi1>
        %300 = index.divu %c5, %27
        %301 = arith.addi %c56743069_i32, %c56743069_i32 : i32
        %302 = math.rsqrt %35 : tensor<1x1xf32>
        %collapsed_44 = tensor.collapse_shape %118 [[0, 1], [2]] : tensor<1x10x10xf32> into tensor<10x10xf32>
        %303 = math.log10 %4 : tensor<3xf16>
        %true_45 = arith.constant true
        %304 = vector.transfer_read %alloc_15[%c13, %110, %97], %true_45 : memref<1x10x10xi1>, vector<3xi1>
        %305 = math.powf %118, %118 : tensor<1x10x10xf32>
        %306 = index.maxs %c1, %c10
        %307 = vector.broadcast %c719041058_i32 : i32 to vector<1x1xi32>
        scf.yield %307 : vector<1x1xi32>
      }
      %277 = scf.index_switch %97 -> memref<11x10x1xf32> 
      case 1 {
        %extracted_40 = tensor.extract %splat[%c1] : tensor<3xi64>
        %291 = math.ceil %cst : f32
        %292 = index.maxu %c10, %c11
        vector.print %106 : vector<11x10x1xi32>
        %293 = vector.insertelement %c-778_i16, %47[%c7 : index] : vector<11xi16>
        %294 = arith.divf %cst_3, %cst_3 : f32
        memref.store %false, %alloc_19[%c0, %c8, %c4] : memref<1x11x10xi1>
        %295 = math.round %cst_2 : f32
        %296 = arith.divui %c904662618_i64, %c507067065_i64 : i64
        %297 = arith.divf %cst_1, %cst_1 : f16
        %298 = arith.maxui %c-778_i16, %c-778_i16 : i16
        %299 = memref.realloc %alloc : memref<3xi32> to memref<3xi32>
        affine.store %c904662618_i64, %alloc_4[%c2, %c15] : memref<1x1xi64>
        %300 = memref.realloc %alloc : memref<3xi32> to memref<1xi32>
        %301 = math.atan2 %118, %118 : tensor<1x10x10xf32>
        %302 = index.maxs %c1, %c11
        scf.yield %alloc_11 : memref<11x10x1xf32>
      }
      case 2 {
        %291 = arith.maxsi %c941654629_i64, %c1449638243_i64 : i64
        %292 = arith.ori %c719041058_i32, %272 : i32
        %293 = arith.remf %cst_0, %61 : f32
        %294 = arith.minf %cst_1, %cst_1 : f16
        %splat_40 = tensor.splat %c548648815_i64 : tensor<1x10x10xi64>
        %295 = math.round %cst_0 : f32
        %296 = arith.remf %cst_3, %cst_3 : f32
        %297 = tensor.empty() : tensor<1x1xf32>
        %298 = linalg.matmul ins(%35, %35 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%297 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %299 = vector.bitcast %70 : vector<11x10xi32> to vector<11x10xi32>
        %300 = arith.maxf %cst_1, %cst_1 : f16
        %expanded_41 = tensor.expand_shape %12 [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
        %301 = vector.broadcast %c973700124_i32 : i32 to vector<10xi32>
        %dest_42, %accumulated_value_43 = vector.scan <maxsi>, %299, %301 {inclusive = false, reduction_dim = 0 : i64} : vector<11x10xi32>, vector<10xi32>
        %302 = math.expm1 %4 : tensor<3xf16>
        %303 = math.cos %297 : tensor<1x1xf32>
        %304 = vector.transpose %49, [0] : vector<11xf16> to vector<11xf16>
        %305 = index.divu %c6, %c8
        scf.yield %alloc_11 : memref<11x10x1xf32>
      }
      case 3 {
        %291 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
        %292 = vector.broadcast %false : i1 to vector<1x1xi1>
        %293 = vector.broadcast %c56743069_i32 : i32 to vector<1x1xi32>
        %294 = vector.gather %3[%48, %29, %rank] [%293], %292, %291 : tensor<11x10x1xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
        %295 = math.ceil %34 : tensor<1x10x10xf16>
        vector.print %19 : vector<11xf16>
        %296 = arith.shli %c941654629_i64, %c1449638243_i64 : i64
        %297 = math.roundeven %10 : tensor<3xf32>
        %298 = arith.maxui %272, %c56743069_i32 : i32
        %299 = math.cos %cst_2 : f32
        %300 = vector.matrix_multiply %57, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %301 = math.ceil %111 : tensor<1x1xf32>
        %302 = vector.insertelement %cst_1, %49[%c12 : index] : vector<11xf16>
        %303 = index.divu %c2, %c4
        %304 = arith.cmpf une, %61, %cst : f32
        %305 = math.powf %4, %4 : tensor<3xf16>
        %alloc_40 = memref.alloc() : memref<11x10x1xf16>
        %306 = vector.broadcast %cst_1 : f16 to vector<3xf16>
        %307 = vector.broadcast %false : i1 to vector<3xi1>
        %308 = vector.broadcast %c719041058_i32 : i32 to vector<3xi32>
        %309 = vector.gather %alloc_40[%48, %c9, %c6] [%308], %307, %306 : memref<11x10x1xf16>, vector<3xi32>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %310 = math.ctpop %c1080549060_i64 : i64
        %311 = index.casts %c941654629_i64 : i64 to index
        scf.yield %alloc_11 : memref<11x10x1xf32>
      }
      default {
        %291 = arith.maxf %cst, %cst_3 : f32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_40 = arith.constant 0 : i16
        %292 = vector.transfer_read %7[%c12, %27], %c0_i16_40 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x1xi16>, vector<1xi16>
        %293 = vector.splat %c548648815_i64 : vector<1x1xi64>
        memref.copy %alloc_5, %alloc_8 : memref<1x1xf16> to memref<1x1xf16>
        %294 = arith.andi %false, %false : i1
        %295 = math.exp %4 : tensor<3xf16>
        %296 = arith.divf %cst_1, %cst_1 : f16
        %expanded_41 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<11x10x1xi32> into tensor<11x10x1x1xi32>
        %297 = arith.mulf %cst_2, %cst : f32
        %298 = vector.broadcast %29 : index to vector<10xindex>
        %299 = vector.broadcast %false : i1 to vector<10xi1>
        vector.scatter %53[%c0, %c0] [%298], %299, %299 : memref<1x1xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %300 = index.casts %c507067065_i64 : i64 to index
        %301 = vector.broadcast %c904662618_i64 : i64 to vector<i64>
        %302 = vector.transfer_write %301, %12[%c4] : vector<i64>, tensor<3xi64>
        %303 = vector.extract_strided_slice %47 {offsets = [3], sizes = [1], strides = [1]} : vector<11xi16> to vector<1xi16>
        %304 = math.roundeven %118 : tensor<1x10x10xf32>
        %305 = index.maxs %110, %c13
        %true_42 = index.bool.constant true
        scf.yield %alloc_11 : memref<11x10x1xf32>
      }
      %278 = arith.shrui %272, %c56743069_i32 : i32
      %279 = math.ceil %cst_1 : f16
      %alloc_39 = memref.alloc() : memref<1x10x10xf16>
      memref.copy %alloc_17, %alloc_39 : memref<1x10x10xf16> to memref<1x10x10xf16>
      %280 = math.exp2 %68 : tensor<1x1xf32>
      %281 = arith.maxui %c1449638243_i64, %c1449638243_i64 : i64
      %282 = bufferization.clone %alloc_7 : memref<3xf16> to memref<3xf16>
      %283 = arith.divsi %c1449638243_i64, %c1080549060_i64 : i64
      vector.print %106 : vector<11x10x1xi32>
      %284 = arith.maxui %c1449638243_i64, %c548648815_i64 : i64
      %285 = index.ceildivs %27, %29
      %286 = arith.floordivsi %c1080549060_i64, %c548648815_i64 : i64
      %287 = arith.maxsi %c941654629_i64, %c904662618_i64 : i64
      %288 = index.ceildivs %29, %48
      memref.assume_alignment %alloc_19, 16 : memref<1x11x10xi1>
      %289 = index.sub %96, %c15
      %290 = bufferization.to_tensor %alloc_7 : memref<3xf16>
      memref.alloca_scope.return %alloc_4 : memref<1x1xi64>
    }
    %122 = arith.maxf %cst_1, %cst_1 : f16
    %alloc_23 = memref.alloc() : memref<i32>
    memref.tensor_store %22, %alloc_23 : memref<i32>
    %generated = tensor.generate %110, %c12 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %267 = vector.load %alloc_4[%c0, %c0] : memref<1x1xi64>, vector<1x10x10xi64>
      memref.assume_alignment %alloc_5, 1 : memref<1x1xf16>
      %268 = arith.shli %c1449638243_i64, %c507067065_i64 : i64
      %269 = math.exp %10 : tensor<3xf32>
      tensor.yield %c56743069_i32 : i32
    } : tensor<?x?x10xi32>
    %123 = math.ctpop %5 : tensor<11x10x1xi32>
    %124 = arith.shrsi %false, %false : i1
    %125 = arith.minf %cst_2, %61 : f32
    %126 = bufferization.to_tensor %alloc_18 : memref<1x1xf16>
    %127 = index.divs %48, %96
    %128 = memref.load %alloc_9[%c0] : memref<3xi1>
    %129 = vector.bitcast %19 : vector<11xf16> to vector<11xf16>
    %130 = arith.shrui %c-778_i16, %c-778_i16 : i16
    %131 = index.sub %30, %29
    %132 = tensor.empty() : tensor<1x1xi32>
    %133 = math.fpowi %0, %132 : tensor<1x1xf32>, tensor<1x1xi32>
    %inserted_24 = tensor.insert %c56743069_i32 into %21[] : tensor<i32>
    %134 = memref.load %alloc_7[%c2] : memref<3xf16>
    %135 = vector.create_mask %41, %64, %c4 : vector<1x10x10xi1>
    %136 = index.divs %c8, %c2
    %137 = math.log10 %cst_2 : f32
    %138 = math.round %0 : tensor<1x1xf32>
    vector.print %105 : vector<11x10x1xi32>
    %139 = arith.remf %cst_2, %cst : f32
    %140 = math.floor %cst_1 : f16
    %141 = vector.flat_transpose %49 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
    %142 = vector.transpose %115, [2, 1, 0] : vector<11x10x1xf16> to vector<1x10x11xf16>
    %143 = affine.if affine_set<(d0) : (d0 mod 8 >= 0, 0 == 0, d0 mod 16 >= 0, 0 >= 0)>(%c3) -> memref<1x1xf32> {
      %267 = arith.maxui %false, %false : i1
      %268 = math.rsqrt %111 : tensor<1x1xf32>
      %269 = arith.remsi %c56743069_i32, %c56743069_i32 : i32
      %270 = vector.bitcast %115 : vector<11x10x1xf16> to vector<11x10x1xf16>
      %271 = math.log2 %cst_0 : f32
      %272 = tensor.empty() : tensor<1x1xf32>
      %273 = linalg.matmul ins(%111, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%272 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %splat_37 = tensor.splat %cst_0 : tensor<3xf32>
      %274 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 16) * 2, d2 + 16)>(%c5, %c5, %46)
      %alloc_38 = memref.alloc() : memref<1x1xf32>
      affine.yield %alloc_38 : memref<1x1xf32>
    } else {
      %267 = arith.ceildivsi %c973700124_i32, %c719041058_i32 : i32
      %268 = memref.load %alloc_4[%c0, %c0] : memref<1x1xi64>
      %269 = vector.load %alloc_10[%c2, %c8, %c0] : memref<11x10x1xi16>, vector<11x10x1xi16>
      memref.store %c941654629_i64, %121[%c0, %c0] : memref<1x1xi64>
      %270 = affine.if affine_set<(d0) : (0 == 0, 0 == 0)>(%c0) -> i64 {
        %273 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
        %274 = vector.outerproduct %129, %49, %273 {kind = #vector.kind<minf>} : vector<11xf16>, vector<11xf16>
        %275 = math.absi %17 : tensor<11x10x1xi32>
        %276 = math.round %cst_1 : f16
        %277 = vector.insertelement %false, %56[%41 : index] : vector<1xi1>
        %278 = math.round %34 : tensor<1x10x10xf16>
        %false_38 = arith.constant false
        %279 = math.cos %10 : tensor<3xf32>
        %280 = arith.andi %false, %false : i1
        affine.yield %c941654629_i64 : i64
      } else {
        affine.store %cst_1, %alloc_17[%c7, %c3, %c8] : memref<1x10x10xf16>
        %extracted_38 = tensor.extract %3[%c6, %c2, %c0] : tensor<11x10x1xf32>
        %cst_39 = arith.constant 0x4DC47EE9 : f32
        %273 = math.log10 %10 : tensor<3xf32>
        %274 = arith.maxsi %c1449638243_i64, %c1449638243_i64 : i64
        %275 = math.powf %3, %3 : tensor<11x10x1xf32>
        %false_40 = index.bool.constant false
        %276 = math.roundeven %0 : tensor<1x1xf32>
        affine.yield %c548648815_i64 : i64
      }
      %rank = tensor.rank %16 : tensor<11x10x1xi32>
      %271 = math.expm1 %118 : tensor<1x10x10xf32>
      %272 = math.absf %126 : tensor<1x1xf16>
      %alloc_37 = memref.alloc() : memref<1x1xf32>
      affine.yield %alloc_37 : memref<1x1xf32>
    }
    %144 = vector.broadcast %61 : f32 to vector<1x10x10xf32>
    %145 = vector.fma %144, %144, %144 : vector<1x10x10xf32>
    %146 = math.copysign %126, %126 : tensor<1x1xf16>
    vector.print %106 : vector<11x10x1xi32>
    %147 = math.powf %10, %10 : tensor<3xf32>
    %c1_i32 = arith.constant 1 : i32
    %148 = vector.transfer_read %132[%c10, %27], %c1_i32 : tensor<1x1xi32>, vector<i32>
    %149 = arith.muli %c56743069_i32, %c719041058_i32 : i32
    %150 = vector.splat %97 : vector<3xindex>
    %151 = scf.while (%arg2 = %135) : (vector<1x10x10xi1>) -> vector<1x10x10xi1> {
      %267 = arith.cmpi ult, %c904662618_i64, %c507067065_i64 : i64
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_37 = arith.constant 0 : i32
      %268 = vector.transfer_read %2[%c9, %c10, %27], %c0_i32_37 : tensor<11x10x1xi32>, vector<i32>
      %269 = math.atan %cst : f32
      affine.store %cst_1, %alloc_7[%c10] : memref<3xf16>
      %270 = arith.minui %c1080549060_i64, %c507067065_i64 : i64
      %271 = vector.broadcast %cst : f32 to vector<1x10xf32>
      %dest_38, %accumulated_value_39 = vector.scan <minf>, %145, %271 {inclusive = true, reduction_dim = 2 : i64} : vector<1x10x10xf32>, vector<1x10xf32>
      %272 = bufferization.clone %53 : memref<1x1xi1> to memref<1x1xi1>
      scf.execute_region {
        %273 = arith.remsi %c1_i32, %c973700124_i32 : i32
        %rank = tensor.rank %10 : tensor<3xf32>
        %274 = math.exp %68 : tensor<1x1xf32>
        %275 = arith.minf %cst, %61 : f32
        %276 = arith.maxsi %c719041058_i32, %c973700124_i32 : i32
        %277 = arith.ori %c1_i32, %c56743069_i32 : i32
        %278 = math.sqrt %10 : tensor<3xf32>
        %279 = vector.extract %47[2] : vector<11xi16>
        %expanded_40 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<11x10x1xi1> into tensor<11x10x1x1xi1>
        %280 = vector.insertelement %false, %56[%c7 : index] : vector<1xi1>
        %281 = arith.muli %c-778_i16, %c-778_i16 : i16
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %141, %141, %cst_1 : vector<11xf16>, vector<11xf16> into f16
        %collapsed_41 = tensor.collapse_shape %0 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %283 = memref.load %alloc_12[%c2] : memref<3xf32>
        memref.assume_alignment %alloc_19, 1 : memref<1x11x10xi1>
        %284 = math.cos %4 : tensor<3xf16>
        scf.yield
      }
      scf.condition(%false) %135 : vector<1x10x10xi1>
    } do {
    ^bb0(%arg2: vector<1x10x10xi1>):
      %267 = arith.ceildivsi %c719041058_i32, %c56743069_i32 : i32
      affine.for %arg3 = 0 to 74 {
      }
      %from_elements_37 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16 : tensor<11x10x1xi16>
      %generated_38 = tensor.generate %127 {
      ^bb0(%arg3: index):
        %278 = arith.minf %cst_1, %cst_1 : f16
        %279 = math.log2 %126 : tensor<1x1xf16>
        %280 = math.atan2 %cst_3, %61 : f32
        %281 = vector.insertelement %cst_1, %49[%c9 : index] : vector<11xf16>
        tensor.yield %false : i1
      } : tensor<?xi1>
      %268 = arith.floordivsi %c904662618_i64, %c941654629_i64 : i64
      memref.alloca_scope  {
        %278 = vector.matrix_multiply %56, %56 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %279 = math.log10 %cst_2 : f32
        %280 = math.ctpop %9 : tensor<1x10x10xi64>
        %281 = arith.minf %cst_1, %cst_1 : f16
        %cast = tensor.cast %3 : tensor<11x10x1xf32> to tensor<?x?x?xf32>
        %cst_39 = arith.constant 1.000000e+00 : f16
        %cst_40 = arith.constant 0.000000e+00 : f16
        %282 = vector.transfer_read %4[%29], %cst_40 : tensor<3xf16>, vector<f16>
        %283 = arith.minsi %c719041058_i32, %c973700124_i32 : i32
        %284 = vector.insertelement %c-778_i16, %47[%64 : index] : vector<11xi16>
        %285 = math.floor %cst_0 : f32
        %286 = math.floor %0 : tensor<1x1xf32>
        %expanded_41 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<11x10x1xi32> into tensor<11x10x1x1xi32>
        %287 = vector.insertelement %cst_1, %19[%110 : index] : vector<11xf16>
        %288 = math.copysign %10, %10 : tensor<3xf32>
        %289 = math.absf %4 : tensor<3xf16>
        %extracted_42 = tensor.extract %2[%c8, %c8, %c0] : tensor<11x10x1xi32>
        %290 = vector.broadcast %false : i1 to vector<10x1xi1>
        %291 = vector.multi_reduction <xor>, %55, %290 [0] : vector<11x10x1xi1> to vector<10x1xi1>
        %292 = index.sub %46, %c8
        %293 = arith.maxsi %false, %false : i1
        %294 = vector.insert %c-778_i16, %47 [0] : i16 into vector<11xi16>
        %295 = index.divu %c13, %c8
        %296 = arith.maxsi %c548648815_i64, %c1449638243_i64 : i64
        %297 = arith.addi %c1080549060_i64, %c507067065_i64 : i64
        %298 = index.divu %c10, %c4
        %299 = math.absf %cst_1 : f16
        vector.print %105 : vector<11x10x1xi32>
        %300 = math.ctlz %reduced : tensor<10xi1>
        %301 = arith.shli %c1449638243_i64, %c904662618_i64 : i64
        %302 = math.cos %35 : tensor<1x1xf32>
        %303 = math.ctpop %extracted_42 : i32
        %304 = memref.realloc %alloc : memref<3xi32> to memref<10xi32>
        vector.print %70 : vector<11x10xi32>
        %splat_43 = tensor.splat %c973700124_i32 : tensor<11x10x1xi32>
      }
      %269 = affine.if affine_set<(d0, d1) : (d1 >= 0, d1 ceildiv 128 + 2 == 0, 0 >= 0, d1 ceildiv 128 == 0)>(%c14, %c1) -> i64 {
        memref.assume_alignment %121, 4 : memref<1x1xi64>
        %278 = arith.remsi %c973700124_i32, %c719041058_i32 : i32
        %279 = index.mul %c11, %131
        %280 = vector.multi_reduction <xor>, %56, %false [0] : vector<1xi1> to i1
        %inserted_39 = tensor.insert %false into %11[%c9, %c1, %c0] : tensor<11x10x1xi1>
        %281 = arith.addi %c548648815_i64, %c904662618_i64 : i64
        %282 = math.log1p %4 : tensor<3xf16>
        %expanded_40 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<11x10x1xi16> into tensor<11x10x1x1xi16>
        affine.yield %c941654629_i64 : i64
      } else {
        %278 = bufferization.to_tensor %alloc_18 : memref<1x1xf16>
        %279 = math.ctpop %22 : tensor<i32>
        %280 = index.maxu %131, %c9
        %281 = arith.maxf %cst_3, %cst_0 : f32
        %282 = memref.load %alloc_11[%c4, %c8, %c0] : memref<11x10x1xf32>
        %extracted_39 = tensor.extract %6[%c0, %c8, %c0] : tensor<11x10x1xi32>
        %283 = vector.multi_reduction <minsi>, %56, %57 [] : vector<1xi1> to vector<1xi1>
        %284 = math.ctpop %11 : tensor<11x10x1xi1>
        affine.yield %c904662618_i64 : i64
      }
      affine.store %cst_1, %alloc_17[%c4, %c14, %c2] : memref<1x10x10xf16>
      %c-5812_i16 = arith.constant -5812 : i16
      %270 = arith.remsi %c507067065_i64, %c941654629_i64 : i64
      %271 = tensor.empty() : tensor<3xi64>
      %272 = vector.create_mask %c5, %c4, %c8 : vector<1x10x10xi1>
      %273 = vector.broadcast %cst_1 : f16 to vector<1xf16>
      %274 = vector.maskedload %alloc_18[%c0, %c0], %56, %273 : memref<1x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      %275 = index.ceildivs %c0, %c10
      %276 = math.copysign %4, %4 : tensor<3xf16>
      %277 = math.log %34 : tensor<1x10x10xf16>
      scf.yield %272 : vector<1x10x10xi1>
    }
    %152 = math.log10 %10 : tensor<3xf32>
    %153 = vector.matrix_multiply %57, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %expanded = tensor.expand_shape %132 [[0], [1, 2]] : tensor<1x1xi32> into tensor<1x1x1xi32>
    %154 = arith.maxsi %c56743069_i32, %c973700124_i32 : i32
    %155 = math.absf %111 : tensor<1x1xf32>
    %156 = arith.minsi %false, %false : i1
    %157 = arith.cmpi sge, %c56743069_i32, %c719041058_i32 : i32
    %158 = arith.ori %c973700124_i32, %c973700124_i32 : i32
    %159 = arith.shrsi %c904662618_i64, %c548648815_i64 : i64
    %160 = math.floor %4 : tensor<3xf16>
    %161 = arith.minf %cst_2, %61 : f32
    %162 = arith.maxsi %c1449638243_i64, %c1080549060_i64 : i64
    %163 = memref.realloc %alloc_9 : memref<3xi1> to memref<3xi1>
    %164 = bufferization.to_tensor %53 : memref<1x1xi1>
    %165 = bufferization.clone %alloc_17 : memref<1x10x10xf16> to memref<1x10x10xf16>
    %166 = math.ctlz %c1_i32 : i32
    %167 = vector.broadcast %c973700124_i32 : i32 to vector<1x1xi32>
    %168 = vector.broadcast %false : i1 to vector<1x1xi1>
    %169 = vector.gather %132[%48, %c5] [%167], %168, %167 : tensor<1x1xi32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi32> into vector<1x1xi32>
    %170 = vector.create_mask %46 : vector<3xi1>
    %171 = vector.matrix_multiply %47, %47 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
    %172 = index.casts %c1449638243_i64 : i64 to index
    %173 = vector.maskedload %53[%c0, %c0], %170, %170 : memref<1x1xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    memref.store %cst_1, %alloc_18[%c0, %c0] : memref<1x1xf16>
    %174 = arith.maxf %cst_0, %cst_3 : f32
    %175 = math.exp2 %cst_3 : f32
    %from_elements = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16 : tensor<11x10x1xi16>
    %176 = math.cttz %2 : tensor<11x10x1xi32>
    %177 = math.ceil %118 : tensor<1x10x10xf32>
    %alloc_25 = memref.alloc() : memref<3xi16>
    %178 = vector.broadcast %c-778_i16 : i16 to vector<1x1xi16>
    %179 = vector.gather %alloc_25[%c4] [%167], %168, %178 : memref<3xi16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi16> into vector<1x1xi16>
    %180 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 floordiv 128)>(%c0, %c15, %c11, %c11)
    %181 = math.round %3 : tensor<11x10x1xf32>
    %182 = index.ceildivu %46, %127
    %183 = arith.divf %cst_1, %cst_1 : f16
    %184 = math.tanh %cst_0 : f32
    %185 = arith.remf %cst_1, %cst_1 : f16
    vector.print %141 : vector<11xf16>
    %186 = math.floor %cst : f32
    %187 = index.divs %180, %48
    %from_elements_26 = tensor.from_elements %61, %cst, %cst, %cst_2, %cst_2, %cst_0, %61, %cst_2, %cst_0, %cst_0, %cst, %61, %cst, %cst_0, %cst, %cst_3, %cst, %cst, %cst_2, %cst_0, %cst_2, %61, %cst_2, %cst, %cst_0, %61, %61, %cst_2, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_0, %cst_3, %cst, %cst_3, %cst_3, %61, %61, %cst, %cst, %cst, %cst_2, %cst_3, %cst_2, %cst_3, %61, %cst_0, %cst_2, %61, %cst_2, %61, %61, %61, %61, %cst_0, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst_0, %61, %cst_0, %cst_2, %cst, %cst_3, %61, %cst, %cst_3, %cst_3, %61, %cst, %cst_3, %cst, %cst_2, %cst_0, %61, %cst_0, %61, %cst_2, %61, %cst_3, %cst_2, %61, %cst_2, %cst_0, %cst_0, %cst_3, %cst_0, %cst_0, %cst_2, %cst, %cst_3, %cst_3, %cst_0, %cst, %cst_3, %cst_2, %cst_0, %cst_3, %cst_0, %61, %cst_2, %cst_0, %cst_3, %cst, %cst_0 : tensor<11x10x1xf32>
    %188 = vector.broadcast %false : i1 to vector<10x10xi1>
    %189 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %153, %135, %188 : vector<1xi1>, vector<1x10x10xi1> into vector<10x10xi1>
    %190 = vector.insertelement %cst_1, %129[%136 : index] : vector<11xf16>
    %splat_27 = tensor.splat %c56743069_i32 : tensor<11x10x1xi32>
    vector.print %173 : vector<3xi1>
    %191 = arith.andi %c904662618_i64, %c1080549060_i64 : i64
    %192 = math.roundeven %cst_2 : f32
    %193 = index.ceildivs %c1, %c2
    %194 = arith.cmpf ole, %cst, %cst_2 : f32
    %195 = bufferization.clone %alloc_7 : memref<3xf16> to memref<3xf16>
    %196 = math.ceil %34 : tensor<1x10x10xf16>
    %197 = vector.flat_transpose %173 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %198 = scf.while (%arg2 = %168) : (vector<1x1xi1>) -> vector<1x1xi1> {
      %267 = memref.load %alloc_15[%c0, %c2, %c7] : memref<1x10x10xi1>
      %268 = vector.broadcast %false : i1 to vector<3x3xi1>
      %269 = vector.outerproduct %173, %173, %268 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
      memref.assume_alignment %alloc_18, 8 : memref<1x1xf16>
      %270 = vector.insertelement %false, %153[%29 : index] : vector<1xi1>
      %271 = tensor.empty() : tensor<11x10x1xi1>
      %mapped_37 = linalg.map ins(%11 : tensor<11x10x1xi1>) outs(%271 : tensor<11x10x1xi1>)
        (%in: i1) {
          %275 = math.log2 %cst_1 : f16
          %276 = math.ctpop %12 : tensor<3xi64>
          %false_38 = index.bool.constant false
          %277 = vector.insertelement %false_38, %153[%131 : index] : vector<1xi1>
          memref.copy %121, %alloc_4 : memref<1x1xi64> to memref<1x1xi64>
          %278 = vector.insert %cst_1, %129 [3] : f16 into vector<11xf16>
          %279 = math.absi %expanded : tensor<1x1x1xi32>
          %280 = math.log10 %35 : tensor<1x1xf32>
          %281 = math.log10 %126 : tensor<1x1xf16>
          %282 = math.copysign %68, %0 : tensor<1x1xf32>
          %283 = arith.remf %cst_0, %cst_0 : f32
          %284 = arith.cmpf ole, %61, %cst_2 : f32
          %285 = bufferization.to_tensor %alloc_15 : memref<1x10x10xi1>
          %286 = vector.outerproduct %153, %56, %168 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
          %287 = bufferization.to_tensor %alloc_17 : memref<1x10x10xf16>
          %alloc_39 = memref.alloc() : memref<11x10x1xi1>
          %from_elements_40 = tensor.from_elements %c507067065_i64, %c548648815_i64, %c941654629_i64, %c904662618_i64, %c1449638243_i64, %c904662618_i64, %c941654629_i64, %c507067065_i64, %c941654629_i64, %c507067065_i64, %c507067065_i64, %c1080549060_i64, %c1449638243_i64, %c1449638243_i64, %c1080549060_i64, %c548648815_i64, %c507067065_i64, %c941654629_i64, %c1080549060_i64, %c1449638243_i64, %c1080549060_i64, %c1449638243_i64, %c904662618_i64, %c1080549060_i64, %c1080549060_i64, %c941654629_i64, %c507067065_i64, %c507067065_i64, %c941654629_i64, %c904662618_i64, %c904662618_i64, %c548648815_i64, %c548648815_i64, %c507067065_i64, %c1449638243_i64, %c941654629_i64, %c1080549060_i64, %c507067065_i64, %c548648815_i64, %c941654629_i64, %c548648815_i64, %c941654629_i64, %c904662618_i64, %c904662618_i64, %c1449638243_i64, %c548648815_i64, %c507067065_i64, %c507067065_i64, %c548648815_i64, %c1080549060_i64, %c507067065_i64, %c1080549060_i64, %c548648815_i64, %c904662618_i64, %c548648815_i64, %c1449638243_i64, %c1449638243_i64, %c904662618_i64, %c548648815_i64, %c941654629_i64, %c1080549060_i64, %c1080549060_i64, %c548648815_i64, %c1449638243_i64, %c548648815_i64, %c1080549060_i64, %c507067065_i64, %c548648815_i64, %c548648815_i64, %c1080549060_i64, %c1080549060_i64, %c941654629_i64, %c904662618_i64, %c904662618_i64, %c1080549060_i64, %c507067065_i64, %c1449638243_i64, %c1449638243_i64, %c1080549060_i64, %c507067065_i64, %c1080549060_i64, %c1449638243_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c1080549060_i64, %c548648815_i64, %c1449638243_i64, %c941654629_i64, %c548648815_i64, %c941654629_i64, %c904662618_i64, %c941654629_i64, %c904662618_i64, %c1449638243_i64, %c507067065_i64, %c507067065_i64, %c1449638243_i64, %c1449638243_i64, %c548648815_i64 : tensor<1x10x10xi64>
          %288 = vector.extract_strided_slice %167 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xi32> to vector<1x1xi32>
          %289 = vector.broadcast %false : i1 to vector<10xi1>
          %290 = vector.insert %289, %135 [0, 6] : vector<10xi1> into vector<1x10x10xi1>
          %291 = vector.broadcast %127 : index to vector<3xindex>
          vector.scatter %alloc_19[%c0, %c2, %c6] [%291], %173, %173 : memref<1x11x10xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
          %292 = math.atan2 %10, %10 : tensor<3xf32>
          %293 = vector.transpose %55, [0, 1, 2] : vector<11x10x1xi1> to vector<11x10x1xi1>
          %294 = math.powf %118, %118 : tensor<1x10x10xf32>
          %295 = math.log %4 : tensor<3xf16>
          %296 = index.maxs %c9, %97
          %collapsed_41 = tensor.collapse_shape %126 [[0, 1]] : tensor<1x1xf16> into tensor<1xf16>
          %splat_42 = tensor.splat %cst_3 : tensor<11x10x1xf32>
          %expanded_43 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<1x1x1xi32> into tensor<1x1x1x1xi32>
          %297 = index.maxs %c5, %96
          %298 = math.log2 %3 : tensor<11x10x1xf32>
          %299 = arith.divsi %c1_i32, %c1_i32 : i32
          %300 = arith.shrsi %c1449638243_i64, %c1449638243_i64 : i64
          %true_44 = arith.constant true
          linalg.yield %true_44 : i1
        }
      %272 = vector.transpose %144, [1, 2, 0] : vector<1x10x10xf32> to vector<10x10x1xf32>
      %273 = arith.divsi %c56743069_i32, %c719041058_i32 : i32
      %274 = math.exp2 %from_elements_26 : tensor<11x10x1xf32>
      scf.condition(%false) %168 : vector<1x1xi1>
    } do {
    ^bb0(%arg2: vector<1x1xi1>):
      %267 = vector.broadcast %false : i1 to vector<10x1xi1>
      %268 = vector.insert %267, %55 [0] : vector<10x1xi1> into vector<11x10x1xi1>
      %269 = arith.addi %c1080549060_i64, %c507067065_i64 : i64
      memref.store %61, %alloc_12[%c2] : memref<3xf32>
      %270 = vector.matrix_multiply %19, %129 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf16>, vector<11xf16>) -> vector<1xf16>
      %271 = index.ceildivs %c11, %c3
      %272 = arith.remf %cst, %cst_2 : f32
      %273 = arith.andi %c1_i32, %c56743069_i32 : i32
      scf.execute_region {
        %282 = tensor.empty() : tensor<1x1xi16>
        %283 = linalg.matmul ins(%7, %7 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%282 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %284 = index.divs %180, %c12
        %285 = vector.broadcast %c9 : index to vector<11xindex>
        %286 = vector.broadcast %false : i1 to vector<11xi1>
        %287 = vector.broadcast %c973700124_i32 : i32 to vector<11xi32>
        vector.scatter %alloc_6[%c0, %c3, %c6] [%285], %286, %287 : memref<1x10x10xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %288 = math.cos %68 : tensor<1x1xf32>
        %289 = vector.broadcast %cst_1 : f16 to vector<10x1xf16>
        %290 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %115, %49, %289 : vector<11x10x1xf16>, vector<11xf16> into vector<10x1xf16>
        %291 = tensor.empty(%96) : tensor<11x10x?xi32>
        %292 = vector.insert %c-778_i16, %171 [0] : i16 into vector<1xi16>
        %293 = math.copysign %126, %126 : tensor<1x1xf16>
        %true_38 = arith.constant true
        %false_39 = arith.constant false
        %294 = vector.transfer_read %alloc_15[%182, %c6, %c7], %false_39 : memref<1x10x10xi1>, vector<i1>
        %295 = bufferization.clone %alloc_15 : memref<1x10x10xi1> to memref<1x10x10xi1>
        %296 = math.absf %111 : tensor<1x1xf32>
        %297 = vector.insert %c-778_i16, %171 [0] : i16 into vector<1xi16>
        %298 = math.log2 %10 : tensor<3xf32>
        %299 = arith.cmpi sgt, %c56743069_i32, %c719041058_i32 : i32
        %300 = index.maxu %c13, %41
        %301 = math.ceil %118 : tensor<1x10x10xf32>
        scf.yield
      }
      %274 = tensor.empty() : tensor<10x1x11xi64>
      %275 = tensor.empty() : tensor<10xi64>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%274, %alloc_14, %275 : tensor<10x1x11xi64>, memref<11x10x1xi64>, tensor<10xi64>) outs(%8 : tensor<11x10x1xi64>) {
      ^bb0(%in: i64, %in_38: i64, %in_39: i64, %out: i64):
        vector.print %49 : vector<11xf16>
        %282 = arith.xori %c56743069_i32, %c56743069_i32 : i32
        %283 = math.rsqrt %cst : f32
        %284 = arith.muli %in_39, %in : i64
        %285 = vector.broadcast %false : i1 to vector<3x3xi1>
        %286 = vector.outerproduct %173, %173, %285 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
        %287 = vector.matrix_multiply %270, %129 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 11 : i32} : (vector<1xf16>, vector<11xf16>) -> vector<11xf16>
        %288 = vector.broadcast %c-778_i16 : i16 to vector<11x10x1xi16>
        %289 = vector.gather %alloc_25[%c11] [%105], %55, %288 : memref<3xi16>, vector<11x10x1xi32>, vector<11x10x1xi1>, vector<11x10x1xi16> into vector<11x10x1xi16>
        %290 = arith.mulf %61, %61 : f32
        %splat_40 = tensor.splat %c1449638243_i64 : tensor<11x10x1xi64>
        %291 = arith.shli %in_39, %in : i64
        %292 = affine.load %alloc_19[%c0, %c0, %c15] : memref<1x11x10xi1>
        %293 = math.absi %8 : tensor<11x10x1xi64>
        %294 = arith.shrui %c1_i32, %c973700124_i32 : i32
        %295 = arith.cmpf une, %cst_3, %cst_3 : f32
        %296 = math.sqrt %118 : tensor<1x10x10xf32>
        %297 = vector.broadcast %292 : i1 to vector<11x10xi1>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %56, %55, %297 : vector<1xi1>, vector<11x10x1xi1> into vector<11x10xi1>
        %299 = arith.minf %cst_1, %cst_1 : f16
        %300 = arith.muli %c1080549060_i64, %in_38 : i64
        %301 = arith.floordivsi %in, %c507067065_i64 : i64
        %302 = vector.splat %c-778_i16 : vector<1x10x10xi16>
        %303 = math.log %4 : tensor<3xf16>
        %304 = math.rsqrt %10 : tensor<3xf32>
        %305 = arith.divf %cst, %cst : f32
        %306 = arith.maxui %c719041058_i32, %c719041058_i32 : i32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %307 = vector.transfer_read %7[%182, %c1], %c0_i16 : tensor<1x1xi16>, vector<i16>
        %308 = affine.load %alloc_9[%c11] : memref<3xi1>
        %309 = index.castu %out : i64 to index
        %310 = vector.create_mask %c0, %c11, %271 : vector<1x10x10xi1>
        %311 = arith.remsi %c548648815_i64, %c1080549060_i64 : i64
        %312 = math.log1p %from_elements_26 : tensor<11x10x1xf32>
        %313 = math.exp %cst_1 : f16
        %expanded_41 = tensor.expand_shape %20 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
        linalg.yield %out : i64
      } -> tensor<11x10x1xi64>
      %277 = scf.while (%arg3 = %267) : (vector<10x1xi1>) -> vector<10x1xi1> {
        %282 = arith.minf %cst_2, %cst_0 : f32
        %283 = math.ctpop %17 : tensor<11x10x1xi32>
        %284 = arith.divsi %c941654629_i64, %c941654629_i64 : i64
        %285 = bufferization.to_memref %111 : memref<1x1xf32>
        %286 = arith.maxf %61, %cst_3 : f32
        %287 = math.tanh %cst_2 : f32
        %288 = vector.splat %193 : vector<1x1xindex>
        %289 = index.ceildivs %c10, %29
        scf.condition(%false) %267 : vector<10x1xi1>
      } do {
      ^bb0(%arg3: vector<10x1xi1>):
        %282 = arith.negf %cst_0 : f32
        %283 = math.exp %cst_0 : f32
        %284 = math.absi %12 : tensor<3xi64>
        %extracted_38 = tensor.extract %splat_27[%c10, %c8, %c0] : tensor<11x10x1xi32>
        %cst_39 = arith.constant 1.000000e+00 : f16
        %cst_40 = arith.constant 0.000000e+00 : f16
        %285 = vector.transfer_read %alloc_17[%41, %c8, %172], %cst_40 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : memref<1x10x10xf16>, vector<3x3xf16>
        %286 = vector.broadcast %136 : index to vector<3xindex>
        %287 = vector.broadcast %cst_1 : f16 to vector<3xf16>
        vector.scatter %alloc_5[%c0, %c0] [%286], %197, %287 : memref<1x1xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %c0_i32 = arith.constant 0 : i32
        %288 = vector.transfer_read %17[%271, %c0, %46], %c0_i32 : tensor<11x10x1xi32>, vector<i32>
        %289 = math.log1p %68 : tensor<1x1xf32>
        %290 = vector.shuffle %56, %57 [0] : vector<1xi1>, vector<1xi1>
        %291 = memref.realloc %alloc_12 : memref<3xf32> to memref<3xf32>
        %292 = bufferization.to_tensor %alloc_7 : memref<3xf16>
        %293 = arith.mulf %cst_3, %cst_2 : f32
        %294 = tensor.empty() : tensor<1x1xf32>
        %295 = linalg.matmul ins(%111, %111 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%294 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %296 = math.round %34 : tensor<1x10x10xf16>
        %297 = vector.splat %96 : vector<1x1xindex>
        %298 = arith.shli %c548648815_i64, %c941654629_i64 : i64
        scf.yield %267 : vector<10x1xi1>
      }
      %extracted_37 = tensor.extract %12[%c1] : tensor<3xi64>
      %278 = math.cos %118 : tensor<1x10x10xf32>
      %279 = arith.minf %cst_2, %cst : f32
      %rank = tensor.rank %expanded : tensor<1x1x1xi32>
      %280 = affine.load %alloc[%c5] : memref<3xi32>
      %281 = arith.remsi %280, %280 : i32
      scf.yield %168 : vector<1x1xi1>
    }
    %199 = math.log10 %0 : tensor<1x1xf32>
    %200 = math.copysign %cst, %61 : f32
    %201 = arith.cmpf ule, %cst_3, %cst_3 : f32
    %202 = bufferization.clone %alloc_6 : memref<1x10x10xi32> to memref<1x10x10xi32>
    %203 = vector.create_mask %c15 : vector<3xi1>
    %204 = arith.remf %61, %cst_2 : f32
    %205 = math.copysign %0, %0 : tensor<1x1xf32>
    %206 = math.log %126 : tensor<1x1xf16>
    %207 = math.round %0 : tensor<1x1xf32>
    %208 = affine.if affine_set<(d0, d1) : (-(d1 floordiv 128) >= 0, (d0 + 17) floordiv 16 == 0, d0 + 1 == 0, d1 floordiv 128 - (d0 + 1) == 0)>(%c4, %c10) -> memref<1x10x10xi64> {
      %267 = vector.broadcast %false : i1 to vector<3x3xi1>
      %268 = vector.outerproduct %197, %197, %267 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
      %269 = affine.if affine_set<(d0, d1, d2) : (-14 == 0, -128 == 0, (d1 + 16) ceildiv 32 >= 0, d1 == 0)>(%c2, %c15, %c9) -> memref<3xi64> {
        %276 = arith.mulf %cst_3, %cst : f32
        vector.print %141 : vector<11xf16>
        %277 = arith.maxf %cst_2, %cst_0 : f32
        vector.print %167 : vector<1x1xi32>
        %278 = math.log10 %cst_0 : f32
        %279 = arith.floordivsi %c507067065_i64, %c548648815_i64 : i64
        %280 = vector.broadcast %c11 : index to vector<11xindex>
        %281 = vector.broadcast %false : i1 to vector<11xi1>
        %282 = vector.broadcast %c1449638243_i64 : i64 to vector<11xi64>
        vector.scatter %alloc_4[%c0, %c0] [%280], %281, %282 : memref<1x1xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %283 = arith.maxf %cst_1, %cst_1 : f16
        %alloc_37 = memref.alloc() : memref<3xi64>
        affine.yield %alloc_37 : memref<3xi64>
      } else {
        %276 = vector.broadcast %c719041058_i32 : i32 to vector<10x1xi32>
        %dest_37, %accumulated_value_38 = vector.scan <xor>, %106, %276 {inclusive = false, reduction_dim = 0 : i64} : vector<11x10x1xi32>, vector<10x1xi32>
        %277 = index.divs %c7, %c9
        %278 = arith.maxf %cst_1, %cst_1 : f16
        %from_elements_39 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<1x10x10xi1>
        %279 = arith.cmpf ugt, %cst_3, %cst_2 : f32
        %280 = vector.create_mask %c10, %c15, %c11 : vector<11x10x1xi1>
        %281 = math.round %from_elements_26 : tensor<11x10x1xf32>
        %282 = arith.minf %cst_0, %cst_2 : f32
        %alloc_40 = memref.alloc() : memref<3xi64>
        affine.yield %alloc_40 : memref<3xi64>
      }
      %270 = math.log10 %68 : tensor<1x1xf32>
      %271 = vector.insertelement %false, %170[%182 : index] : vector<3xi1>
      %272 = math.roundeven %cst_1 : f16
      %273 = memref.load %alloc_13[%c0, %c0] : memref<1x1xi1>
      %274 = scf.if %false -> (i32) {
        %276 = math.exp %4 : tensor<3xf16>
        %277 = vector.insert %cst_1, %49 [6] : f16 into vector<11xf16>
        %inserted_37 = tensor.insert %c1_i32 into %17[%c9, %c9, %c0] : tensor<11x10x1xi32>
        %278 = math.rsqrt %cst_3 : f32
        %279 = arith.minf %cst_1, %cst_1 : f16
        %280 = arith.maxui %c719041058_i32, %c56743069_i32 : i32
        %281 = memref.load %alloc_16[%c8, %c4, %c0] : memref<11x10x1xi1>
        %c1_i32_38 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %282 = vector.transfer_read %20[%48], %c0_i32 : tensor<3xi32>, vector<i32>
        scf.yield %c973700124_i32 : i32
      } else {
        %276 = math.fpowi %61, %c56743069_i32 : f32, i32
        %277 = index.ceildivs %131, %136
        %from_elements_37 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16 : tensor<1x10x10xi16>
        %cst_38 = arith.constant 1.000000e+00 : f32
        %cst_39 = arith.constant 0.000000e+00 : f32
        %278 = vector.transfer_read %3[%41, %c13, %41], %cst_39 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<11x10x1xf32>, vector<10xf32>
        %279 = arith.remsi %c719041058_i32, %c56743069_i32 : i32
        %280 = arith.minui %c1449638243_i64, %c1449638243_i64 : i64
        %281 = index.ceildivs %187, %172
        %282 = tensor.empty() : tensor<1x1xf32>
        %283 = linalg.matmul ins(%35, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%282 : tensor<1x1xf32>) -> tensor<1x1xf32>
        scf.yield %c1_i32 : i32
      }
      %275 = affine.if affine_set<(d0, d1) : (d0 * 64 == 0, (d0 + 4) mod 128 >= 0, d1 - d0 == 0, 0 == 0)>(%c5, %c12) -> f16 {
        %276 = arith.muli %c719041058_i32, %c719041058_i32 : i32
        %277 = arith.maxsi %c973700124_i32, %c1_i32 : i32
        %collapsed_37 = tensor.collapse_shape %132 [[0, 1]] : tensor<1x1xi32> into tensor<1xi32>
        %278 = math.cos %4 : tensor<3xf16>
        %279 = arith.xori %c507067065_i64, %c548648815_i64 : i64
        %280 = tensor.empty() : tensor<1x1xi16>
        %281 = linalg.matmul ins(%7, %7 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%280 : tensor<1x1xi16>) -> tensor<1x1xi16>
        affine.store %cst_1, %alloc_18[%c10, %c2] : memref<1x1xf16>
        %282 = math.ceil %4 : tensor<3xf16>
        affine.yield %cst_1 : f16
      } else {
        %276 = arith.remf %cst_1, %cst_1 : f16
        %277 = vector.bitcast %168 : vector<1x1xi1> to vector<1x1xi1>
        %278 = arith.floordivsi %c507067065_i64, %c941654629_i64 : i64
        %279 = arith.remsi %c941654629_i64, %c507067065_i64 : i64
        %280 = arith.shrui %c548648815_i64, %c1080549060_i64 : i64
        %281 = tensor.empty() : tensor<1x1xi16>
        %inserted_37 = tensor.insert %274 into %5[%c10, %c7, %c0] : tensor<11x10x1xi32>
        %282 = arith.divf %cst_3, %cst_2 : f32
        affine.yield %cst_1 : f16
      }
      affine.yield %107 : memref<1x10x10xi64>
    } else {
      %267 = tensor.empty() : tensor<1x1xf32>
      %268 = linalg.matmul ins(%0, %35 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%267 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %269 = arith.remf %cst_1, %cst_1 : f16
      %270 = arith.cmpf ult, %cst_2, %cst_3 : f32
      %extracted_37 = tensor.extract %from_elements[%c8, %c2, %c0] : tensor<11x10x1xi16>
      scf.index_switch %182 
      case 1 {
        %275 = arith.minsi %c904662618_i64, %c904662618_i64 : i64
        %276 = vector.broadcast %c719041058_i32 : i32 to vector<10x10x1xi32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %70, %106, %276 : vector<11x10xi32>, vector<11x10x1xi32> into vector<10x10x1xi32>
        %278 = tensor.empty() : tensor<1x1xf32>
        %279 = linalg.matmul ins(%35, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%278 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %280 = math.exp %118 : tensor<1x10x10xf32>
        %281 = arith.floordivsi %c507067065_i64, %c507067065_i64 : i64
        %282 = arith.andi %c1_i32, %c56743069_i32 : i32
        %283 = arith.cmpf olt, %cst_3, %cst_2 : f32
        %284 = arith.remf %cst_2, %cst_2 : f32
        %285 = index.ceildivs %c4, %48
        %286 = math.log %10 : tensor<3xf32>
        %extracted_38 = tensor.extract %17[%c8, %c6, %c0] : tensor<11x10x1xi32>
        memref.store %cst_1, %alloc_17[%c0, %c7, %c4] : memref<1x10x10xf16>
        %287 = index.divu %172, %c15
        %288 = index.ceildivs %46, %97
        %cst_39 = arith.constant 1.000000e+00 : f32
        %cst_40 = arith.constant 0.000000e+00 : f32
        %289 = vector.transfer_read %111[%c11, %97], %cst_40 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x1xf32>, vector<1xf32>
        %c1_i32_41 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %290 = vector.transfer_read %15[%c0, %288, %c2], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<1x10x10xi32>, vector<1xi32>
        scf.yield
      }
      case 2 {
        %275 = memref.realloc %alloc_12 : memref<3xf32> to memref<11xf32>
        %276 = math.floor %cst_3 : f32
        %277 = math.powf %cst_0, %cst_2 : f32
        %278 = math.cos %3 : tensor<11x10x1xf32>
        %279 = index.divu %110, %64
        %280 = tensor.empty() : tensor<1x1xf32>
        %281 = linalg.matmul ins(%0, %267 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%280 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %282 = index.divs %41, %c10
        %283 = arith.minui %c904662618_i64, %c507067065_i64 : i64
        %284 = index.divu %64, %c14
        %285 = arith.mulf %cst_0, %cst : f32
        %286 = index.divu %193, %27
        %287 = index.maxu %193, %c15
        %rank = tensor.rank %12 : tensor<3xi64>
        %288 = math.sqrt %35 : tensor<1x1xf32>
        %289 = index.divu %c5, %48
        %290 = bufferization.clone %107 : memref<1x10x10xi64> to memref<1x10x10xi64>
        scf.yield
      }
      default {
        memref.copy %alloc_6, %202 : memref<1x10x10xi32> to memref<1x10x10xi32>
        %275 = math.log10 %cst : f32
        %276 = math.floor %61 : f32
        %c1_i32_38 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %277 = vector.transfer_read %2[%c4, %c7, %c14], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<11x10x1xi32>, vector<11x11xi32>
        %278 = vector.load %alloc_10[%c5, %c8, %c0] : memref<11x10x1xi16>, vector<11x10x1xi16>
        %splat_39 = tensor.splat %c941654629_i64 : tensor<3xi64>
        %279 = arith.maxui %c973700124_i32, %c719041058_i32 : i32
        vector.print %168 : vector<1x1xi1>
        %expanded_40 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<11x10x1xi32> into tensor<11x10x1x1xi32>
        %280 = memref.atomic_rmw mulf %cst_1, %alloc_17[%c0, %c1, %c7] : (f16, memref<1x10x10xf16>) -> f16
        %281 = vector.extract_strided_slice %19 {offsets = [2], sizes = [5], strides = [1]} : vector<11xf16> to vector<5xf16>
        %282 = memref.load %alloc_12[%c0] : memref<3xf32>
        %283 = memref.load %alloc_6[%c0, %c4, %c0] : memref<1x10x10xi32>
        %284 = bufferization.to_memref %13 : memref<3xi32>
        %285 = arith.maxsi %false, %false : i1
        %286 = vector.broadcast %c973700124_i32 : i32 to vector<1x11x10xi32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %169, %105, %286 : vector<1x1xi32>, vector<11x10x1xi32> into vector<1x11x10xi32>
      }
      %271 = math.log %cst_0 : f32
      %272 = vector.broadcast %c973700124_i32 : i32 to vector<1xi32>
      %273 = vector.insert %272, %169 [0] : vector<1xi32> into vector<1x1xi32>
      %274 = arith.muli %c904662618_i64, %c904662618_i64 : i64
      affine.yield %107 : memref<1x10x10xi64>
    }
    %209 = math.exp2 %cst_1 : f16
    %210 = math.copysign %4, %4 : tensor<3xf16>
    %211 = vector.load %alloc_14[%c7, %c4, %c0] : memref<11x10x1xi64>, vector<1x1xi64>
    %212 = index.divu %136, %180
    %true = index.bool.constant true
    affine.store %cst_1, %alloc_18[%c15, %c6] : memref<1x1xf16>
    %213 = arith.divsi %c973700124_i32, %c719041058_i32 : i32
    %214 = vector.load %alloc_9[%c2] : memref<3xi1>, vector<3xi1>
    memref.store %c941654629_i64, %alloc_14[%c2, %c7, %c0] : memref<11x10x1xi64>
    %215 = math.log1p %34 : tensor<1x10x10xf16>
    %216 = math.roundeven %126 : tensor<1x1xf16>
    %217 = arith.divf %cst_3, %cst_2 : f32
    %expanded_28 = tensor.expand_shape %splat [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
    %alloc_29 = memref.alloc() : memref<1xf16>
    %218 = tensor.empty() : tensor<10xf16>
    %219 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29, %218 : memref<1xf16>, tensor<10xf16>) outs(%34 : tensor<1x10x10xf16>) {
    ^bb0(%in: f16, %in_37: f16, %out: f16):
      %267 = arith.maxui %c1080549060_i64, %c548648815_i64 : i64
      %268 = vector.shuffle %55, %55 [2, 4, 5, 7, 8, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21] : vector<11x10x1xi1>, vector<11x10x1xi1>
      %269 = vector.matrix_multiply %141, %141 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf16>, vector<11xf16>) -> vector<1xf16>
      %270 = arith.shrui %c1449638243_i64, %c904662618_i64 : i64
      %271 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 ceildiv 8 - 1) mod 16 - d2)>(%c11, %c7, %127, %c0)
      %272 = math.log %cst_2 : f32
      %273 = arith.maxui %c904662618_i64, %c548648815_i64 : i64
      %274 = arith.remsi %true, %false : i1
      vector.print %214 : vector<3xi1>
      %275 = vector.outerproduct %56, %56, %168 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
      %276 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d2 >= 0)>(%c15, %c4, %c1, %c3) -> memref<1x1xi1> {
        %298 = vector.broadcast %true : i1 to vector<11xi1>
        %299 = vector.maskedload %alloc_17[%c0, %c4, %c6], %298, %19 : memref<1x10x10xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %rank = tensor.rank %expanded_28 : tensor<3x1xi64>
        %300 = arith.minsi %c719041058_i32, %c973700124_i32 : i32
        %301 = arith.remsi %c548648815_i64, %c507067065_i64 : i64
        %302 = arith.ori %c904662618_i64, %c1080549060_i64 : i64
        %303 = vector.create_mask %136, %27, %29 : vector<11x10x1xi1>
        %304 = index.maxu %187, %180
        %305 = tensor.empty() : tensor<1x1xf16>
        affine.yield %alloc_13 : memref<1x1xi1>
      } else {
        %298 = vector.create_mask %96 : vector<3xi1>
        %299 = arith.ori %true, %true : i1
        %from_elements_39 = tensor.from_elements %cst_1, %in_37, %in : tensor<3xf16>
        %300 = math.cos %34 : tensor<1x10x10xf16>
        %301 = arith.maxui %c1449638243_i64, %c941654629_i64 : i64
        %rank = tensor.rank %2 : tensor<11x10x1xi32>
        %302 = arith.mulf %cst_0, %cst_2 : f32
        %303 = vector.broadcast %in_37 : f16 to vector<11x11xf16>
        %304 = vector.outerproduct %129, %49, %303 {kind = #vector.kind<minf>} : vector<11xf16>, vector<11xf16>
        affine.yield %53 : memref<1x1xi1>
      }
      %277 = math.atan2 %118, %118 : tensor<1x10x10xf32>
      %278 = math.ipowi %18, %18 : tensor<10xi1>
      %279 = index.ceildivs %64, %29
      %280 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d2 >= 0)>(%c0, %c3, %c6, %c1) -> memref<1x10x10xi64> {
        %298 = math.atan %cst : f32
        %c1_i32_39 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %299 = vector.transfer_read %splat_27[%c5, %c6, %c6], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<11x10x1xi32>, vector<10x1xi32>
        %300 = vector.insert %true, %203 [1] : i1 into vector<3xi1>
        %301 = tensor.empty() : tensor<1x1xi1>
        %302 = vector.load %alloc_13[%c0, %c0] : memref<1x1xi1>, vector<1x1xi1>
        %c874150837_i32 = arith.constant 874150837 : i32
        %303 = arith.shli %c904662618_i64, %c904662618_i64 : i64
        %304 = math.absi %7 : tensor<1x1xi16>
        affine.yield %107 : memref<1x10x10xi64>
      } else {
        %298 = bufferization.clone %alloc_17 : memref<1x10x10xf16> to memref<1x10x10xf16>
        %299 = vector.create_mask %c5, %187, %c6 : vector<11x10x1xi1>
        %300 = vector.create_mask %64, %c2, %c14 : vector<11x10x1xi1>
        %301 = math.rsqrt %126 : tensor<1x1xf16>
        %302 = math.powf %cst_3, %cst_3 : f32
        %303 = arith.minsi %c-778_i16, %c-778_i16 : i16
        %304 = arith.shli %c-778_i16, %c-778_i16 : i16
        %extracted_39 = tensor.extract %164[%c0, %c0] : tensor<1x1xi1>
        affine.yield %107 : memref<1x10x10xi64>
      }
      %281 = vector.insertelement %cst_1, %141[%136 : index] : vector<11xf16>
      %282 = arith.negf %in_37 : f16
      %collapsed_38 = tensor.collapse_shape %expanded_28 [[0, 1]] : tensor<3x1xi64> into tensor<3xi64>
      %283 = vector.broadcast %out : f16 to vector<1x10x10xf16>
      %284 = vector.broadcast %c56743069_i32 : i32 to vector<1x10x10xi32>
      %285 = vector.gather %126[%172, %46] [%284], %135, %283 : tensor<1x1xf16>, vector<1x10x10xi32>, vector<1x10x10xi1>, vector<1x10x10xf16> into vector<1x10x10xf16>
      %286 = index.castu %c5 : index to i32
      %287 = math.rsqrt %cst_3 : f32
      %288 = arith.divsi %c-778_i16, %c-778_i16 : i16
      %289 = math.cos %cst_3 : f32
      %290 = arith.mulf %61, %cst_3 : f32
      %291 = bufferization.to_tensor %alloc_15 : memref<1x10x10xi1>
      %292 = index.maxu %182, %c1
      %293 = math.log10 %3 : tensor<11x10x1xf32>
      %294 = arith.shrui %c1_i32, %c56743069_i32 : i32
      %295 = arith.xori %c904662618_i64, %c904662618_i64 : i64
      memref.assume_alignment %alloc_10, 4 : memref<11x10x1xi16>
      %296 = math.floor %cst_0 : f32
      %297 = index.divs %136, %c6
      linalg.yield %out : f16
    } -> tensor<1x10x10xf16>
    %220 = arith.shrsi %c-778_i16, %c-778_i16 : i16
    %221 = arith.remf %cst_2, %cst : f32
    vector.print %135 : vector<1x10x10xi1>
    %222 = math.atan2 %cst_1, %cst_1 : f16
    %extracted = tensor.extract %2[%c10, %c9, %c0] : tensor<11x10x1xi32>
    memref.assume_alignment %alloc_4, 1 : memref<1x1xi64>
    %223 = arith.maxf %61, %cst : f32
    %224 = bufferization.to_memref %1 : memref<3xi1>
    %225 = vector.shuffle %171, %47 [0, 6, 7, 8, 9, 10, 11] : vector<1xi16>, vector<11xi16>
    %226 = math.cttz %c1080549060_i64 : i64
    %227 = math.powf %from_elements_26, %3 : tensor<11x10x1xf32>
    %228 = arith.shrui %c1_i32, %c973700124_i32 : i32
    %229 = arith.floordivsi %extracted, %c719041058_i32 : i32
    %230 = vector.broadcast %187 : index to vector<11xindex>
    %231 = vector.broadcast %true : i1 to vector<11xi1>
    vector.scatter %alloc_5[%c0, %c0] [%230], %231, %19 : memref<1x1xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
    %232 = scf.while (%arg2 = %alloc_18) : (memref<1x1xf16>) -> memref<1x1xf16> {
      %generated_37 = tensor.generate %c11, %136 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %271 = math.floor %4 : tensor<3xf16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_40 = arith.constant 0 : i32
        %272 = vector.transfer_read %collapsed[%131, %c1], %c0_i32_40 : tensor<10x10xi32>, vector<i32>
        %273 = arith.remf %cst_3, %cst_0 : f32
        %274 = tensor.empty() : tensor<1x1xi16>
        %275 = linalg.matmul ins(%7, %7 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%274 : tensor<1x1xi16>) -> tensor<1x1xi16>
        tensor.yield %c-778_i16 : i16
      } : tensor<?x?x10xi16>
      %267 = arith.remui %c1_i32, %c56743069_i32 : i32
      %268 = arith.maxf %61, %cst : f32
      scf.if %false {
        %271 = arith.maxsi %c941654629_i64, %c1449638243_i64 : i64
        vector.print %203 : vector<3xi1>
        %272 = math.sqrt %10 : tensor<3xf32>
        %273 = math.cos %34 : tensor<1x10x10xf16>
        %274 = arith.remui %c1080549060_i64, %c904662618_i64 : i64
        %rank = tensor.rank %3 : tensor<11x10x1xf32>
        %275 = arith.maxsi %c548648815_i64, %c1449638243_i64 : i64
        %276 = vector.extract_strided_slice %56 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      } else {
        %271 = vector.create_mask %29, %c10 : vector<1x1xi1>
        %272 = math.ceil %61 : f32
        %273 = arith.mulf %61, %cst_3 : f32
        affine.store %c1_i32, %202[%c3, %c1, %c14] : memref<1x10x10xi32>
        %274 = arith.floordivsi %c-778_i16, %c-778_i16 : i16
        %275 = math.tanh %126 : tensor<1x1xf16>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %271, %56, %57 : vector<1x1xi1>, vector<1xi1> into vector<1xi1>
        %rank = tensor.rank %generated : tensor<?x?x10xi32>
      }
      %269 = index.sub %182, %c4
      %collapsed_38 = tensor.collapse_shape %35 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
      %collapsed_39 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<1x10x10xi64> into tensor<10x10xi64>
      %270 = math.roundeven %cst_3 : f32
      scf.condition(%true) %arg2 : memref<1x1xf16>
    } do {
    ^bb0(%arg2: memref<1x1xf16>):
      affine.for %arg3 = 0 to 69 {
      }
      %267 = index.divu %c11, %c15
      %268 = math.ctpop %17 : tensor<11x10x1xi32>
      %269 = arith.shrsi %extracted, %c973700124_i32 : i32
      %from_elements_37 = tensor.from_elements %61, %cst_0, %61, %cst_0, %cst_2, %cst_0, %cst_3, %cst_0, %cst_0, %61, %cst_2, %cst_2, %cst_2, %61, %61, %cst_0, %cst_3, %cst_2, %cst, %cst_0, %cst, %cst_3, %cst_0, %cst_3, %cst_2, %cst, %cst_3, %cst, %cst, %61, %cst_2, %61, %61, %cst, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_3, %cst_0, %cst_2, %cst_2, %cst_0, %cst, %cst_3, %cst_0, %61, %61, %cst_3, %61, %cst_3, %61, %61, %cst, %cst_0, %cst, %cst, %cst_3, %cst_3, %cst_2, %61, %61, %cst_2, %61, %cst_2, %61, %cst_0, %cst, %cst_2, %cst_0, %cst_0, %cst_3, %cst, %61, %61, %cst_2, %cst_3, %cst_0, %cst_3, %cst, %61, %cst, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %61, %61, %cst_3, %cst, %cst_2, %cst_3, %cst, %cst_0, %61, %cst_0, %cst_2, %61, %61, %cst_2, %61, %cst_0, %61, %cst_3, %cst, %cst_2 : tensor<11x10x1xf32>
      %270 = math.rsqrt %118 : tensor<1x10x10xf32>
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %173, %203, %true : vector<3xi1>, vector<3xi1> into i1
      %272 = vector.broadcast %c3 : index to vector<1xindex>
      vector.scatter %alloc_25[%c0] [%272], %56, %171 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %273 = math.expm1 %3 : tensor<11x10x1xf32>
      %rank = tensor.rank %0 : tensor<1x1xf32>
      %274 = memref.load %202[%c0, %c4, %c5] : memref<1x10x10xi32>
      %275 = tensor.empty() : tensor<1x10x10xi16>
      %276 = tensor.empty() : tensor<10xf32>
      %alloc_38 = memref.alloc() : memref<1x11x10xf32>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %from_elements_37, %alloc_38 : tensor<10xf32>, tensor<11x10x1xf32>, memref<1x11x10xf32>) outs(%from_elements_26 : tensor<11x10x1xf32>) {
      ^bb0(%in: f32, %in_39: f32, %in_40: f32, %out: f32):
        %splat_41 = tensor.splat %61 : tensor<3xf32>
        %280 = arith.ori %c1449638243_i64, %c548648815_i64 : i64
        %281 = vector.splat %131 : vector<1x1xindex>
        %282 = math.roundeven %3 : tensor<11x10x1xf32>
        %283 = math.atan2 %68, %35 : tensor<1x1xf32>
        %284 = arith.maxf %cst_0, %cst_0 : f32
        %expanded_42 = tensor.expand_shape %10 [[0, 1]] : tensor<3xf32> into tensor<3x1xf32>
        %285 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
        %286 = vector.outerproduct %141, %19, %285 {kind = #vector.kind<mul>} : vector<11xf16>, vector<11xf16>
        %287 = vector.extract %135[0] : vector<1x10x10xi1>
        %288 = bufferization.to_memref %77 : memref<i32>
        %289 = vector.insertelement %c-778_i16, %171[%97 : index] : vector<1xi16>
        %290 = vector.create_mask %c15, %c6, %187 : vector<1x10x10xi1>
        %291 = index.ceildivu %c4, %c4
        %292 = math.roundeven %cst_3 : f32
        %293 = vector.broadcast %c507067065_i64 : i64 to vector<11xi64>
        %294 = vector.transfer_write %293, %expanded_28[%41, %291] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi64>, tensor<3x1xi64>
        %splat_43 = tensor.splat %c1_i32 : tensor<3xi32>
        memref.store %c941654629_i64, %alloc_14[%c4, %c5, %c0] : memref<11x10x1xi64>
        %295 = arith.shli %c904662618_i64, %c507067065_i64 : i64
        %296 = arith.andi %c1449638243_i64, %c1080549060_i64 : i64
        %297 = vector.insertelement %c-778_i16, %47[%c3 : index] : vector<11xi16>
        %298 = math.log2 %cst_2 : f32
        %299 = vector.broadcast %false : i1 to vector<11xi1>
        %300 = vector.maskedload %224[%c2], %299, %299 : memref<3xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
        %301 = vector.bitcast %197 : vector<3xi1> to vector<3xi1>
        %302 = index.ceildivs %46, %c10
        bufferization.dealloc_tensor %20 : tensor<3xi32>
        %303 = memref.realloc %alloc_12 : memref<3xf32> to memref<3xf32>
        %304 = math.expm1 %126 : tensor<1x1xf16>
        %305 = affine.load %alloc_8[%c15, %c10] : memref<1x1xf16>
        %splat_44 = tensor.splat %in : tensor<1x1xf32>
        %306 = bufferization.to_memref %164 : memref<1x1xi1>
        %from_elements_45 = tensor.from_elements %c548648815_i64, %c941654629_i64, %c941654629_i64, %c1080549060_i64, %c548648815_i64, %c548648815_i64, %c548648815_i64, %c1080549060_i64, %c548648815_i64, %c548648815_i64, %c904662618_i64, %c904662618_i64, %c1449638243_i64, %c507067065_i64, %c507067065_i64, %c548648815_i64, %c941654629_i64, %c1449638243_i64, %c904662618_i64, %c507067065_i64, %c941654629_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c548648815_i64, %c548648815_i64, %c904662618_i64, %c1080549060_i64, %c507067065_i64, %c548648815_i64, %c941654629_i64, %c941654629_i64, %c1449638243_i64, %c904662618_i64, %c548648815_i64, %c1080549060_i64, %c1449638243_i64, %c548648815_i64, %c1080549060_i64, %c548648815_i64, %c507067065_i64, %c941654629_i64, %c1080549060_i64, %c1449638243_i64, %c1449638243_i64, %c904662618_i64, %c1449638243_i64, %c1080549060_i64, %c1449638243_i64, %c548648815_i64, %c1449638243_i64, %c507067065_i64, %c1449638243_i64, %c1449638243_i64, %c1080549060_i64, %c904662618_i64, %c1449638243_i64, %c941654629_i64, %c548648815_i64, %c548648815_i64, %c941654629_i64, %c941654629_i64, %c507067065_i64, %c904662618_i64, %c904662618_i64, %c548648815_i64, %c904662618_i64, %c941654629_i64, %c548648815_i64, %c1449638243_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c904662618_i64, %c1449638243_i64, %c904662618_i64, %c1080549060_i64, %c1449638243_i64, %c941654629_i64, %c904662618_i64, %c1449638243_i64, %c904662618_i64, %c548648815_i64, %c507067065_i64, %c1080549060_i64, %c1449638243_i64, %c904662618_i64, %c1449638243_i64, %c548648815_i64, %c904662618_i64, %c548648815_i64, %c548648815_i64, %c941654629_i64, %c1080549060_i64, %c1080549060_i64, %c548648815_i64, %c1449638243_i64, %c548648815_i64, %c548648815_i64, %c904662618_i64 : tensor<1x10x10xi64>
        %307 = index.ceildivs %27, %c13
        linalg.yield %cst_0 : f32
      } -> tensor<11x10x1xf32>
      memref.copy %alloc_8, %arg2 : memref<1x1xf16> to memref<1x1xf16>
      %278 = arith.maxf %cst, %61 : f32
      %279 = math.rsqrt %cst_1 : f16
      scf.yield %alloc_8 : memref<1x1xf16>
    }
    %expanded_30 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<11x10x1xi64> into tensor<11x10x1x1xi64>
    %233 = math.fpowi %cst_3, %extracted : f32, i32
    %234 = index.castu %true : i1 to index
    %235 = affine.if affine_set<(d0, d1, d2) : (-14 == 0, -128 == 0, (d1 + 16) ceildiv 32 >= 0, d1 == 0)>(%c7, %c6, %c9) -> memref<3xi64> {
      %267 = arith.maxf %cst_3, %cst : f32
      %268 = arith.minf %61, %cst_0 : f32
      vector.print %169 : vector<1x1xi32>
      %269 = math.rsqrt %10 : tensor<3xf32>
      %270 = arith.shrui %c1_i32, %c719041058_i32 : i32
      %271 = math.floor %3 : tensor<11x10x1xf32>
      %272 = vector.insertelement %c-778_i16, %47[%182 : index] : vector<11xi16>
      vector.print %49 : vector<11xf16>
      %alloc_37 = memref.alloc() : memref<3xi64>
      affine.yield %alloc_37 : memref<3xi64>
    } else {
      %from_elements_37 = tensor.from_elements %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16, %c-778_i16 : tensor<1x10x10xi16>
      %267 = index.casts %172 : index to i32
      %268 = math.expm1 %118 : tensor<1x10x10xf32>
      %269 = vector.bitcast %55 : vector<11x10x1xi1> to vector<11x10x1xi1>
      %270 = math.exp %126 : tensor<1x1xf16>
      %271 = vector.transpose %214, [0] : vector<3xi1> to vector<3xi1>
      %272 = math.ipowi %77, %21 : tensor<i32>
      %273 = arith.cmpi ult, %c548648815_i64, %c507067065_i64 : i64
      %alloc_38 = memref.alloc() : memref<3xi64>
      affine.yield %alloc_38 : memref<3xi64>
    }
    %236 = vector.broadcast %false : i1 to vector<i1>
    %237 = vector.transfer_write %236, %reduced[%96] : vector<i1>, tensor<10xi1>
    %238 = tensor.empty() : tensor<1x1xi16>
    %mapped_31 = linalg.map ins(%7, %7 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%238 : tensor<1x1xi16>)
      (%in: i16, %in_37: i16) {
        %267 = arith.remf %cst_3, %cst : f32
        %268 = arith.shrui %c1_i32, %c973700124_i32 : i32
        %269 = arith.ori %c719041058_i32, %c973700124_i32 : i32
        %inserted_38 = tensor.insert %c1_i32 into %16[%c10, %c6, %c0] : tensor<11x10x1xi32>
        %270 = vector.broadcast %61 : f32 to vector<f32>
        %271 = vector.transfer_write %270, %10[%c0] : vector<f32>, tensor<3xf32>
        %272 = arith.maxsi %true, %false : i1
        %273 = arith.andi %in_37, %in : i16
        %274 = arith.cmpf ord, %cst_0, %cst : f32
        %275 = bufferization.to_memref %132 : memref<1x1xi32>
        %276 = math.cos %cst_1 : f16
        %277 = arith.mulf %cst_0, %cst : f32
        %278 = arith.maxui %c904662618_i64, %c904662618_i64 : i64
        %279 = math.round %0 : tensor<1x1xf32>
        %false_39 = index.bool.constant false
        %280 = index.maxs %c3, %c2
        %extracted_40 = tensor.extract %132[%c0, %c0] : tensor<1x1xi32>
        %281 = vector.bitcast %129 : vector<11xf16> to vector<11xf16>
        %282 = arith.remf %cst_3, %cst_3 : f32
        %283 = tensor.empty() : tensor<1x1xi16>
        %284 = linalg.matmul ins(%238, %238 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%283 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %285 = math.rsqrt %3 : tensor<11x10x1xf32>
        %286 = arith.minui %in_37, %c-778_i16 : i16
        %287 = math.ceil %0 : tensor<1x1xf32>
        %288 = math.exp %0 : tensor<1x1xf32>
        %289 = arith.shrui %c941654629_i64, %c1080549060_i64 : i64
        memref.copy %alloc_4, %121 : memref<1x1xi64> to memref<1x1xi64>
        %290 = math.roundeven %10 : tensor<3xf32>
        %291 = math.log2 %61 : f32
        %splat_41 = tensor.splat %c904662618_i64 : tensor<3xi64>
        %292 = math.sqrt %10 : tensor<3xf32>
        %293 = arith.shli %c973700124_i32, %c1_i32 : i32
        %collapsed_42 = tensor.collapse_shape %expanded_28 [[0, 1]] : tensor<3x1xi64> into tensor<3xi64>
        %294 = arith.shli %c-778_i16, %c-778_i16 : i16
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %expanded_32 = tensor.expand_shape %expanded_28 [[0], [1, 2]] : tensor<3x1xi64> into tensor<3x1x1xi64>
    %239 = vector.extract_strided_slice %141 {offsets = [5], sizes = [3], strides = [1]} : vector<11xf16> to vector<3xf16>
    %240 = memref.realloc %alloc_9 : memref<3xi1> to memref<1xi1>
    %241 = bufferization.clone %224 : memref<3xi1> to memref<3xi1>
    %242 = math.ctpop %14 : tensor<11x10x1xi16>
    %243 = index.maxu %110, %172
    %244 = bufferization.to_tensor %241 : memref<3xi1>
    %245 = arith.cmpf ult, %61, %cst_3 : f32
    %246 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %247 = vector.gather %from_elements_26[%46, %127, %c3] [%167], %168, %246 : tensor<11x10x1xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
    %248 = index.maxs %c6, %193
    %249 = math.atan2 %0, %0 : tensor<1x1xf32>
    %250 = arith.shrui %c904662618_i64, %c1449638243_i64 : i64
    %251 = arith.shrui %false, %false : i1
    %252 = affine.for %arg2 = 0 to 117 iter_args(%arg3 = %c5) -> (index) {
      affine.yield %c11 : index
    }
    %253 = arith.maxui %false, %true : i1
    %254 = math.ceil %3 : tensor<11x10x1xf32>
    %cst_33 = arith.constant 1.000000e+00 : f32
    %255 = vector.transfer_read %111[%64, %c13], %cst_33 : tensor<1x1xf32>, vector<f32>
    %256 = vector.bitcast %168 : vector<1x1xi1> to vector<1x1xi1>
    %cst_34 = arith.constant 4.953600e+04 : f16
    %257 = index.sub %97, %29
    %258 = vector.broadcast %c7 : index to vector<11xindex>
    %259 = vector.broadcast %false : i1 to vector<11xi1>
    vector.scatter %alloc_9[%c2] [%258], %259, %259 : memref<3xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
    %260 = scf.while (%arg2 = %107) : (memref<1x10x10xi64>) -> memref<1x10x10xi64> {
      %267 = arith.andi %c1_i32, %c719041058_i32 : i32
      %268 = vector.broadcast %182 : index to vector<1xindex>
      vector.scatter %53[%c0, %c0] [%268], %57, %57 : memref<1x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
      %269 = vector.flat_transpose %203 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %270 = vector.matrix_multiply %197, %57 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<1xi1>) -> vector<3xi1>
      memref.store %true, %alloc_19[%c0, %c7, %c3] : memref<1x11x10xi1>
      %alloc_37 = memref.alloc() : memref<1x10x10xf32>
      %271 = arith.cmpi eq, %c904662618_i64, %c1080549060_i64 : i64
      %272 = math.absi %7 : tensor<1x1xi16>
      scf.condition(%false) %arg2 : memref<1x10x10xi64>
    } do {
    ^bb0(%arg2: memref<1x10x10xi64>):
      %267 = tensor.empty(%97, %29) : tensor<?x10x?xf32>
      %268 = vector.transpose %57, [0] : vector<1xi1> to vector<1xi1>
      %269 = affine.if affine_set<(d0, d1) : (-(d1 floordiv 128) >= 0, (d0 + 17) floordiv 16 == 0, d0 + 1 == 0, d1 floordiv 128 - (d0 + 1) == 0)>(%c14, %c14) -> memref<1x1xf32> {
        %280 = arith.floordivsi %c904662618_i64, %c507067065_i64 : i64
        %281 = arith.muli %true, %false : i1
        %282 = math.roundeven %0 : tensor<1x1xf32>
        %283 = memref.load %alloc_18[%c0, %c0] : memref<1x1xf16>
        %284 = math.cos %10 : tensor<3xf32>
        %285 = index.ceildivs %30, %27
        %286 = vector.broadcast %false : i1 to vector<10xi1>
        %287 = vector.multi_reduction <and>, %135, %286 [0, 1] : vector<1x10x10xi1> to vector<10xi1>
        %288 = math.log1p %4 : tensor<3xf16>
        %alloc_39 = memref.alloc() : memref<1x1xf32>
        affine.yield %alloc_39 : memref<1x1xf32>
      } else {
        %280 = index.casts %c-778_i16 : i16 to index
        %281 = memref.load %241[%c1] : memref<3xi1>
        %collapsed_39 = tensor.collapse_shape %68 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %282 = arith.maxui %c548648815_i64, %c904662618_i64 : i64
        %283 = vector.broadcast %cst_1 : f16 to vector<11x11xf16>
        %284 = vector.outerproduct %49, %19, %283 {kind = #vector.kind<add>} : vector<11xf16>, vector<11xf16>
        vector.print %246 : vector<1x1xf32>
        %285 = vector.broadcast %cst_33 : f32 to vector<1xf32>
        %286 = vector.insert %285, %246 [0] : vector<1xf32> into vector<1x1xf32>
        %287 = index.ceildivs %131, %c8
        %alloc_40 = memref.alloc() : memref<1x1xf32>
        affine.yield %alloc_40 : memref<1x1xf32>
      }
      %270 = vector.splat %c9 : vector<11x10x1xindex>
      %expanded_37 = tensor.expand_shape %244 [[0, 1]] : tensor<3xi1> into tensor<3x1xi1>
      memref.store %false, %alloc_13[%c0, %c0] : memref<1x1xi1>
      %271 = index.maxu %c7, %234
      %272 = arith.minf %61, %cst : f32
      %extracted_38 = tensor.extract %68[%c0, %c0] : tensor<1x1xf32>
      %273 = math.fma %0, %68, %68 : tensor<1x1xf32>
      %274 = vector.broadcast %c2 : index to vector<1xindex>
      vector.scatter %alloc_25[%c1] [%274], %153, %171 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %275 = arith.floordivsi %c973700124_i32, %c719041058_i32 : i32
      %276 = arith.shrui %c56743069_i32, %c56743069_i32 : i32
      %277 = vector.load %alloc_16[%c1, %c2, %c0] : memref<11x10x1xi1>, vector<1x10x10xi1>
      %278 = math.cos %4 : tensor<3xf16>
      %279 = math.expm1 %cst : f32
      scf.yield %107 : memref<1x10x10xi64>
    }
    %expanded_35 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<1x10x10xi32> into tensor<1x10x10x1xi32>
    %261 = arith.muli %true, %true : i1
    %262 = tensor.empty() : tensor<1x1xi32>
    %263 = linalg.copy ins(%132 : tensor<1x1xi32>) outs(%262 : tensor<1x1xi32>) -> tensor<1x1xi32>
    %264 = tensor.empty() : tensor<3xi1>
    %transposed = linalg.transpose ins(%224 : memref<3xi1>) outs(%264 : tensor<3xi1>) permutation = [0] 
    %alloc_36 = memref.alloc() : memref<f16>
    linalg.reduce ins(%alloc_18 : memref<1x1xf16>) outs(%alloc_36 : memref<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %267 = vector.broadcast %init : f16 to vector<11x11xf16>
        %268 = vector.outerproduct %129, %49, %267 {kind = #vector.kind<mul>} : vector<11xf16>, vector<11xf16>
        %269 = affine.load %107[%c7, %c5, %c10] : memref<1x10x10xi64>
        %270 = arith.minsi %c507067065_i64, %c548648815_i64 : i64
        %271 = arith.divf %in, %init : f16
        affine.store %c1080549060_i64, %121[%c15, %c9] : memref<1x1xi64>
        %272 = vector.broadcast %182 : index to vector<1xindex>
        vector.scatter %alloc_25[%c0] [%272], %57, %171 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %from_elements_37 = tensor.from_elements %61 : tensor<1x1xf32>
        %273 = arith.minf %cst_1, %init : f16
        %cst_38 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_38 : f16
      }
    %265 = scf.parallel (%arg2) = (%c12) to (%46) step (%c2) init (%244) -> tensor<3xi1> {
      %267 = arith.shli %c941654629_i64, %c1080549060_i64 : i64
      %268 = math.exp %cst_1 : f16
      memref.assume_alignment %alloc_11, 1 : memref<11x10x1xf32>
      %269 = arith.minsi %c1_i32, %extracted : i32
      %270 = vector.load %alloc_7[%c1] : memref<3xf16>, vector<3xf16>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %247, %145, %145 : vector<1x1xf32>, vector<1x10x10xf32> into vector<1x10x10xf32>
      %272 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d2 >= 0)>(%c13, %c15, %c12, %c15) -> f32 {
        memref.copy %alloc_8, %alloc_18 : memref<1x1xf16> to memref<1x1xf16>
        %284 = math.rsqrt %cst_1 : f16
        %285 = math.cttz %6 : tensor<11x10x1xi32>
        %extracted_38 = tensor.extract %12[%c1] : tensor<3xi64>
        %286 = arith.minf %cst, %cst_2 : f32
        %287 = vector.insertelement %false, %236[] : vector<i1>
        %288 = arith.cmpf true, %cst_0, %cst : f32
        %289 = math.log1p %cst_33 : f32
        affine.yield %cst_0 : f32
      } else {
        %284 = arith.divsi %c1449638243_i64, %c941654629_i64 : i64
        %285 = vector.gather %263[%27, %172] [%105], %55, %105 : tensor<1x1xi32>, vector<11x10x1xi32>, vector<11x10x1xi1>, vector<11x10x1xi32> into vector<11x10x1xi32>
        %splat_38 = tensor.splat %cst : tensor<11x10x1xf32>
        %286 = math.rsqrt %cst_33 : f32
        %287 = vector.create_mask %29 : vector<3xi1>
        %288 = affine.apply affine_map<(d0, d1) -> (0)>(%c8, %29)
        %289 = math.cos %from_elements_26 : tensor<11x10x1xf32>
        %290 = index.casts %46 : index to i32
        affine.yield %cst_3 : f32
      }
      %273 = scf.index_switch %131 -> memref<3xi32> 
      case 1 {
        %284 = arith.ori %c1080549060_i64, %c941654629_i64 : i64
        %285 = math.fpowi %126, %263 : tensor<1x1xf16>, tensor<1x1xi32>
        %cst_38 = arith.constant 1.99323814E+9 : f32
        %286 = vector.broadcast %61 : f32 to vector<10x10x1xf32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %145, %247, %286 : vector<1x10x10xf32>, vector<1x1xf32> into vector<10x10x1xf32>
        %288 = vector.insertelement %false, %236[] : vector<i1>
        %289 = arith.floordivsi %c1080549060_i64, %c904662618_i64 : i64
        %290 = math.rsqrt %0 : tensor<1x1xf32>
        %291 = math.copysign %cst_33, %61 : f32
        %292 = math.rsqrt %68 : tensor<1x1xf32>
        %293 = arith.ori %c548648815_i64, %c507067065_i64 : i64
        %294 = vector.transpose %247, [0, 1] : vector<1x1xf32> to vector<1x1xf32>
        %295 = math.round %4 : tensor<3xf16>
        %296 = index.castu %131 : index to i32
        %297 = arith.remui %c941654629_i64, %c1449638243_i64 : i64
        %298 = arith.maxf %cst_1, %cst_1 : f16
        %299 = index.sub %180, %127
        scf.yield %alloc : memref<3xi32>
      }
      case 2 {
        %expanded_38 = tensor.expand_shape %264 [[0, 1]] : tensor<3xi1> into tensor<3x1xi1>
        %284 = index.ceildivu %c1, %c10
        %285 = math.exp2 %0 : tensor<1x1xf32>
        %286 = vector.broadcast %c548648815_i64 : i64 to vector<3xi64>
        %287 = math.tanh %118 : tensor<1x10x10xf32>
        %288 = vector.extract %179[0] : vector<1x1xi16>
        %splat_39 = tensor.splat %cst_33 : tensor<3xf32>
        %289 = math.roundeven %111 : tensor<1x1xf32>
        %290 = math.ceil %126 : tensor<1x1xf16>
        %291 = memref.realloc %alloc : memref<3xi32> to memref<1xi32>
        %292 = arith.maxf %cst_1, %cst_1 : f16
        %293 = index.ceildivs %172, %arg2
        %294 = arith.shli %c941654629_i64, %c507067065_i64 : i64
        %295 = math.absi %1 : tensor<3xi1>
        %296 = arith.maxf %cst_2, %cst_2 : f32
        %297 = arith.divf %cst, %cst : f32
        scf.yield %alloc : memref<3xi32>
      }
      case 3 {
        %284 = vector.extract_strided_slice %145 {offsets = [0], sizes = [1], strides = [1]} : vector<1x10x10xf32> to vector<1x10x10xf32>
        %285 = arith.ori %c973700124_i32, %c973700124_i32 : i32
        %286 = arith.minui %c1449638243_i64, %c548648815_i64 : i64
        %287 = math.roundeven %68 : tensor<1x1xf32>
        %288 = math.log10 %4 : tensor<3xf16>
        %289 = affine.apply affine_map<(d0, d1) -> (0)>(%c8, %172)
        %290 = tensor.empty(%c15) : tensor<?x1xi16>
        %alloc_38 = memref.alloc() : memref<11x10x1xf32>
        memref.copy %alloc_11, %alloc_38 : memref<11x10x1xf32> to memref<11x10x1xf32>
        %291 = bufferization.to_memref %12 : memref<3xi64>
        %c1_i64 = arith.constant 1 : i64
        %292 = vector.transfer_read %alloc_14[%c10, %c8, %arg2], %c1_i64 : memref<11x10x1xi64>, vector<1x10xi64>
        memref.copy %165, %alloc_17 : memref<1x10x10xf16> to memref<1x10x10xf16>
        %splat_39 = tensor.splat %c548648815_i64 : tensor<3xi64>
        %293 = memref.load %121[%c0, %c0] : memref<1x1xi64>
        %294 = vector.gather %263[%180, %110] [%167], %256, %167 : tensor<1x1xi32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi32> into vector<1x1xi32>
        %from_elements_40 = tensor.from_elements %cst_1, %cst_1, %cst_1 : tensor<3xf16>
        %295 = arith.mulf %cst, %cst_0 : f32
        scf.yield %alloc : memref<3xi32>
      }
      case 4 {
        %284 = arith.minf %cst, %cst_33 : f32
        %collapsed_38 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<11x10x1xi32> into tensor<110x1xi32>
        %285 = arith.shli %extracted, %extracted : i32
        %286 = math.log2 %4 : tensor<3xf16>
        %287 = vector.outerproduct %153, %57, %256 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
        %288 = math.log2 %34 : tensor<1x10x10xf16>
        %289 = vector.load %alloc_5[%c0, %c0] : memref<1x1xf16>, vector<1x10x10xf16>
        %290 = math.cos %cst_33 : f32
        %291 = math.floor %3 : tensor<11x10x1xf32>
        %292 = arith.divf %cst_2, %61 : f32
        %293 = arith.xori %c507067065_i64, %c507067065_i64 : i64
        %294 = vector.broadcast %cst : f32 to vector<f32>
        %295 = vector.transfer_write %294, %from_elements_26[%c9, %c1, %97] : vector<f32>, tensor<11x10x1xf32>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %153, %168, %153 : vector<1xi1>, vector<1x1xi1> into vector<1xi1>
        %297 = vector.bitcast %178 : vector<1x1xi16> to vector<1x1xf16>
        %298 = math.cos %cst_33 : f32
        %299 = math.ceil %cst_3 : f32
        scf.yield %alloc : memref<3xi32>
      }
      default {
        %284 = affine.apply affine_map<(d0) -> (0)>(%243)
        %285 = arith.maxsi %c973700124_i32, %c56743069_i32 : i32
        %286 = math.sqrt %cst_0 : f32
        %287 = arith.maxf %61, %61 : f32
        vector.print %171 : vector<1xi16>
        %288 = arith.minf %61, %cst_33 : f32
        memref.assume_alignment %53, 4 : memref<1x1xi1>
        %289 = math.log10 %cst_0 : f32
        %290 = vector.reduction <maxf>, %49 : vector<11xf16> into f16
        %291 = arith.shli %c973700124_i32, %c56743069_i32 : i32
        %inserted_38 = tensor.insert %cst_3 into %111[%c0, %c0] : tensor<1x1xf32>
        %292 = memref.load %alloc_36[] : memref<f16>
        %293 = vector.bitcast %178 : vector<1x1xi16> to vector<1x1xf16>
        %294 = index.maxs %46, %257
        %295 = arith.shrui %c548648815_i64, %c1449638243_i64 : i64
        %296 = index.add %212, %64
        scf.yield %alloc : memref<3xi32>
      }
      %alloc_37 = memref.alloc() : memref<1x11x10xi1>
      memref.copy %alloc_19, %alloc_37 : memref<1x11x10xi1> to memref<1x11x10xi1>
      %274 = arith.xori %c1080549060_i64, %c941654629_i64 : i64
      %275 = math.log2 %cst_3 : f32
      %276 = vector.insertelement %cst_1, %129[%257 : index] : vector<11xf16>
      %277 = math.log10 %0 : tensor<1x1xf32>
      %278 = arith.mulf %cst, %cst_3 : f32
      %279 = arith.minf %cst, %cst : f32
      %280 = vector.broadcast %c14 : index to vector<10xindex>
      %281 = vector.broadcast %true : i1 to vector<10xi1>
      %282 = vector.broadcast %cst_1 : f16 to vector<10xf16>
      vector.scatter %alloc_8[%c0, %c0] [%280], %281, %282 : memref<1x1xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      %283 = tensor.empty() : tensor<3xi1>
      scf.reduce(%283)  : tensor<3xi1> {
      ^bb0(%arg3: tensor<3xi1>, %arg4: tensor<3xi1>):
        %284 = math.tan %cst_0 : f32
        %285 = arith.remui %c719041058_i32, %c719041058_i32 : i32
        %splat_38 = tensor.splat %c-778_i16 : tensor<1x10x10xi16>
        %286 = arith.shrui %true, %true : i1
        %collapsed_39 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<11x10x1xi1> into tensor<110x1xi1>
        %287 = arith.mulf %cst_2, %cst_33 : f32
        %288 = arith.minf %cst_2, %cst_2 : f32
        %289 = arith.minf %cst_1, %cst_1 : f16
        %290 = tensor.empty() : tensor<3xi1>
        scf.reduce.return %290 : tensor<3xi1>
      }
      scf.yield
    }
    %266 = affine.vector_load %alloc_10[%30, %127, %c2] : memref<11x10x1xi16>, vector<3xi16>
    affine.vector_store %19, %alloc_36[] : memref<f16>, vector<11xf16>
    vector.print %19 : vector<11xf16>
    vector.print %47 : vector<11xi16>
    vector.print %49 : vector<11xf16>
    vector.print %55 : vector<11x10x1xi1>
    vector.print %56 : vector<1xi1>
    vector.print %57 : vector<1xi1>
    vector.print %70 : vector<11x10xi32>
    vector.print %105 : vector<11x10x1xi32>
    vector.print %106 : vector<11x10x1xi32>
    vector.print %115 : vector<11x10x1xf16>
    vector.print %129 : vector<11xf16>
    vector.print %135 : vector<1x10x10xi1>
    vector.print %141 : vector<11xf16>
    vector.print %144 : vector<1x10x10xf32>
    vector.print %145 : vector<1x10x10xf32>
    vector.print %153 : vector<1xi1>
    vector.print %167 : vector<1x1xi32>
    vector.print %168 : vector<1x1xi1>
    vector.print %169 : vector<1x1xi32>
    vector.print %170 : vector<3xi1>
    vector.print %171 : vector<1xi16>
    vector.print %173 : vector<3xi1>
    vector.print %178 : vector<1x1xi16>
    vector.print %179 : vector<1x1xi16>
    vector.print %197 : vector<3xi1>
    vector.print %203 : vector<3xi1>
    vector.print %211 : vector<1x1xi64>
    vector.print %214 : vector<3xi1>
    vector.print %236 : vector<i1>
    vector.print %239 : vector<3xf16>
    vector.print %246 : vector<1x1xf32>
    vector.print %247 : vector<1x1xf32>
    vector.print %256 : vector<1x1xi1>
    vector.print %266 : vector<3xi16>
    vector.print %c973700124_i32 : i32
    vector.print %c941654629_i64 : i64
    vector.print %c507067065_i64 : i64
    vector.print %c1449638243_i64 : i64
    vector.print %cst : f32
    vector.print %c1080549060_i64 : i64
    vector.print %false : i1
    vector.print %c56743069_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c719041058_i32 : i32
    vector.print %c904662618_i64 : i64
    vector.print %c-778_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c548648815_i64 : i64
    vector.print %cst_3 : f32
    vector.print %61 : f32
    vector.print %c1_i32 : i32
    vector.print %true : i1
    vector.print %extracted : i32
    vector.print %cst_33 : f32
    return %4 : tensor<3xf16>
  }
}
