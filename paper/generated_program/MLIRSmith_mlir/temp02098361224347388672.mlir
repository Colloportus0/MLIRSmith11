module {
  func.func @func1() {
    %cst = arith.constant 6.211200e+04 : f16
    %c1695615139_i64 = arith.constant 1695615139 : i64
    %c248055758_i64 = arith.constant 248055758 : i64
    %c1873068333_i64 = arith.constant 1873068333 : i64
    %c1657413137_i32 = arith.constant 1657413137 : i32
    %c1761041060_i32 = arith.constant 1761041060 : i32
    %c215688997_i64 = arith.constant 215688997 : i64
    %true = arith.constant true
    %c435704414_i64 = arith.constant 435704414 : i64
    %true_0 = arith.constant true
    %false = arith.constant false
    %c7543_i16 = arith.constant 7543 : i16
    %c210743414_i32 = arith.constant 210743414 : i32
    %cst_1 = arith.constant 6.348800e+04 : f16
    %cst_2 = arith.constant 4.201600e+04 : f16
    %cst_3 = arith.constant 1.45432781E+9 : f32
    %0 = tensor.empty() : tensor<6xf32>
    %1 = tensor.empty() : tensor<4x6x16xf32>
    %2 = tensor.empty() : tensor<4x16xf32>
    %3 = tensor.empty() : tensor<4x6x16xi64>
    %4 = tensor.empty() : tensor<6x4xi1>
    %5 = tensor.empty() : tensor<6x4xi64>
    %6 = tensor.empty() : tensor<4x16xf16>
    %7 = tensor.empty() : tensor<4x6x16xi32>
    %8 = tensor.empty() : tensor<4x6x16xf16>
    %9 = tensor.empty() : tensor<6xf16>
    %10 = tensor.empty() : tensor<6x4xi32>
    %11 = tensor.empty() : tensor<4x16xf16>
    %12 = tensor.empty() : tensor<6xi16>
    %13 = tensor.empty() : tensor<4x16xi32>
    %14 = tensor.empty() : tensor<4x16xf32>
    %15 = tensor.empty() : tensor<6x4xi1>
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
    %alloc = memref.alloc() : memref<4x16xf32>
    %alloc_4 = memref.alloc() : memref<4x16xf32>
    %alloc_5 = memref.alloc() : memref<4x6x16xf16>
    %alloc_6 = memref.alloc() : memref<4x16xi32>
    %alloc_7 = memref.alloc() : memref<6xi16>
    %alloc_8 = memref.alloc() : memref<4x6x16xi32>
    %alloc_9 = memref.alloc() : memref<6xf32>
    %alloc_10 = memref.alloc() : memref<6x4xi32>
    %alloc_11 = memref.alloc() : memref<4x16xi1>
    %alloc_12 = memref.alloc() : memref<4x6x16xi1>
    %alloc_13 = memref.alloc() : memref<6xi32>
    %alloc_14 = memref.alloc() : memref<6x4xf16>
    %alloc_15 = memref.alloc() : memref<4x16xi64>
    %alloc_16 = memref.alloc() : memref<6xi1>
    %alloc_17 = memref.alloc() : memref<4x16xf32>
    %alloc_18 = memref.alloc() : memref<4x6x16xf32>
    %16 = tensor.empty() : tensor<6x4xi64>
    %17 = linalg.copy ins(%5 : tensor<6x4xi64>) outs(%16 : tensor<6x4xi64>) -> tensor<6x4xi64>
    %alloc_19 = memref.alloc() : memref<4x6xi1>
    linalg.transpose ins(%4 : tensor<6x4xi1>) outs(%alloc_19 : memref<4x6xi1>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<16xf16>
    %reduced = linalg.reduce ins(%6 : tensor<4x16xf16>) outs(%18 : tensor<16xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %249 = arith.addf %init, %cst_1 : f16
        %250 = arith.addf %cst_2, %cst_2 : f16
        %251 = memref.alloca_scope  -> (f32) {
          %258 = index.casts %c4 : index to i32
          %cast = tensor.cast %7 : tensor<4x6x16xi32> to tensor<?x?x?xi32>
          %259 = arith.cmpf oge, %in, %cst_1 : f16
          %260 = arith.andi %false, %true : i1
          %261 = index.ceildivs %c1, %c14
          %262 = vector.broadcast %c7543_i16 : i16 to vector<4x16xi16>
          %263 = vector.broadcast %cst_3 : f32 to vector<4x16xf32>
          %264 = vector.fma %263, %263, %263 : vector<4x16xf32>
          %265 = index.maxu %c3, %c5
          %266 = arith.maxui %c1761041060_i32, %c1761041060_i32 : i32
          %267 = vector.broadcast %c13 : index to vector<4xindex>
          %268 = vector.broadcast %true_0 : i1 to vector<4xi1>
          %269 = vector.broadcast %in : f16 to vector<4xf16>
          vector.scatter %alloc_14[%c1, %c3] [%267], %268, %269 : memref<6x4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %270 = vector.broadcast %cst_3 : f32 to vector<16xf32>
          %271 = vector.broadcast %true_0 : i1 to vector<16xi1>
          %272 = vector.maskedload %alloc_17[%c1, %c7], %271, %270 : memref<4x16xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
          %273 = arith.floordivsi %true_0, %true : i1
          %alloc_41 = memref.alloc() : memref<16x16xf32>
          %274 = tensor.empty() : tensor<4x16xf32>
          %275 = linalg.matmul ins(%2, %alloc_41 : tensor<4x16xf32>, memref<16x16xf32>) outs(%274 : tensor<4x16xf32>) -> tensor<4x16xf32>
          %276 = arith.maxf %cst_3, %cst_3 : f32
          memref.store %cst_3, %alloc[%c2, %c15] : memref<4x16xf32>
          %277 = math.ctlz %17 : tensor<6x4xi64>
          %278 = arith.divf %cst_3, %cst_3 : f32
          %279 = math.fma %8, %8, %8 : tensor<4x6x16xf16>
          %280 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%c1, %c0, %265)
          %281 = math.ctlz %false : i1
          %282 = arith.subi %c210743414_i32, %c1761041060_i32 : i32
          %283 = arith.divsi %c1873068333_i64, %c1695615139_i64 : i64
          %284 = affine.apply affine_map<(d0, d1, d2) -> (d1 * -128 - 1)>(%c3, %c7, %c11)
          %extracted_42 = tensor.extract %5[%c2, %c1] : tensor<6x4xi64>
          %285 = math.sqrt %14 : tensor<4x16xf32>
          %286 = math.floor %14 : tensor<4x16xf32>
          %287 = vector.create_mask %c10, %c6 : vector<6x4xi1>
          %288 = vector.insert %cst_3, %270 [14] : f32 into vector<16xf32>
          %false_43 = index.bool.constant false
          %289 = math.tan %11 : tensor<4x16xf16>
          %290 = arith.shrui %false_43, %true : i1
          %291 = vector.multi_reduction <maxui>, %271, %true_0 [0] : vector<16xi1> to i1
          %292 = math.exp %274 : tensor<4x16xf32>
          memref.alloca_scope.return %cst_3 : f32
        }
        %252 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        %253 = vector.broadcast %cst : f16 to vector<1xf16>
        %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %252, %253, %cst : vector<1xf16>, vector<1xf16> into f16
        %255 = arith.negf %cst_1 : f16
        %256 = index.ceildivu %c9, %c10
        vector.print %252 : vector<1xf16>
        %257 = math.log10 %cst_2 : f16
        %cst_40 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_40 : f16
      }
    scf.parallel (%arg0, %arg1) = (%c4, %c2) to (%c11, %c2) step (%c12, %c15) {
      %249 = math.exp %14 : tensor<4x16xf32>
      %250 = arith.remsi %c210743414_i32, %c210743414_i32 : i32
      %251 = affine.max affine_map<(d0) -> (d0, d0 floordiv 8 + 16)>(%c0)
      memref.tensor_store %7, %alloc_8 : memref<4x6x16xi32>
      %252 = arith.divsi %c1695615139_i64, %c1873068333_i64 : i64
      %253 = affine.if affine_set<(d0, d1) : (d1 floordiv 4 == 0, (d1 - 4) * 2 == 0, (d1 - 4) * 2 == 0)>(%c2, %c9) -> memref<6x4xi16> {
        %264 = arith.floordivsi %c1873068333_i64, %c1873068333_i64 : i64
        %265 = arith.minf %cst_3, %cst_3 : f32
        %266 = math.fma %reduced, %reduced, %reduced : tensor<16xf16>
        %267 = math.ipowi %13, %13 : tensor<4x16xi32>
        %268 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        %269 = vector.insert %cst_3, %268 [0] : f32 into vector<1xf32>
        %270 = vector.reduction <mul>, %268 : vector<1xf32> into f32
        %271 = math.roundeven %14 : tensor<4x16xf32>
        %collapsed_42 = tensor.collapse_shape %13 [[0, 1]] : tensor<4x16xi32> into tensor<64xi32>
        %alloc_43 = memref.alloc() : memref<6x4xi16>
        affine.yield %alloc_43 : memref<6x4xi16>
      } else {
        %264 = vector.broadcast %true : i1 to vector<16xi1>
        %265 = vector.reduction <add>, %264 : vector<16xi1> into i1
        affine.store %c215688997_i64, %alloc_15[%c3, %c8] : memref<4x16xi64>
        %266 = arith.remui %c215688997_i64, %c1873068333_i64 : i64
        %267 = arith.subi %false, %true_0 : i1
        %268 = index.casts %c215688997_i64 : i64 to index
        %rank_42 = tensor.rank %2 : tensor<4x16xf32>
        %alloca_43 = memref.alloca() : memref<4x6x16xi32>
        %expanded_44 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<6x4xi1> into tensor<6x4x1xi1>
        %alloc_45 = memref.alloc() : memref<6x4xi16>
        affine.yield %alloc_45 : memref<6x4xi16>
      }
      %254 = arith.maxui %c7543_i16, %c7543_i16 : i16
      %255 = arith.floordivsi %true_0, %true : i1
      %256 = memref.load %alloc_15[%c3, %c4] : memref<4x16xi64>
      %alloc_40 = memref.alloc() : memref<4x6x16xf32>
      memref.copy %alloc_18, %alloc_40 : memref<4x6x16xf32> to memref<4x6x16xf32>
      %257 = math.floor %cst_3 : f32
      %258 = vector.broadcast %false : i1 to vector<4x16xi1>
      %259 = vector.broadcast %c210743414_i32 : i32 to vector<4x16xi32>
      %260 = vector.gather %alloc_12[%c4, %c1, %c4] [%259], %258, %258 : memref<4x6x16xi1>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi1> into vector<4x16xi1>
      %261 = arith.maxui %true, %true : i1
      %262 = arith.maxui %c248055758_i64, %c1695615139_i64 : i64
      %from_elements_41 = tensor.from_elements %cst_2, %cst, %cst_1, %cst, %cst_2, %cst_1 : tensor<6xf16>
      %263 = arith.maxui %c210743414_i32, %c1657413137_i32 : i32
      scf.yield
    }
    %19 = affine.vector_load %alloc_18[%c4, %c8, %c4] : memref<4x6x16xf32>, vector<4xf32>
    affine.vector_store %19, %alloc_4[%c10, %c12] : memref<4x16xf32>, vector<4xf32>
    %alloc_20 = memref.alloc() : memref<6xf32>
    %20 = tensor.empty() : tensor<f32>
    %21 = linalg.dot ins(%alloc_9, %alloc_20 : memref<6xf32>, memref<6xf32>) outs(%20 : tensor<f32>) -> tensor<f32>
    %22 = math.ceil %1 : tensor<4x6x16xf32>
    %23 = scf.execute_region -> memref<4x6x16xi1> {
      %249 = arith.divsi %true_0, %true_0 : i1
      %250 = affine.for %arg0 = 0 to 115 iter_args(%arg1 = %c248055758_i64) -> (i64) {
        affine.yield %c215688997_i64 : i64
      }
      %251 = math.log %1 : tensor<4x6x16xf32>
      %252 = arith.subi %false, %false : i1
      %253 = math.cos %9 : tensor<6xf16>
      %254 = memref.alloca_scope  -> (i1) {
        %264 = arith.cmpi eq, %true_0, %true : i1
        %265 = vector.broadcast %cst_3 : f32 to vector<4x6x16xf32>
        %266 = vector.fma %265, %265, %265 : vector<4x6x16xf32>
        %267 = vector.extract_strided_slice %19 {offsets = [0], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
        %collapsed_43 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<4x6x16xi32> into tensor<24x16xi32>
        %alloc_44 = memref.alloc() : memref<4x16xi1>
        memref.copy %alloc_11, %alloc_44 : memref<4x16xi1> to memref<4x16xi1>
        %268 = memref.realloc %alloc_20 : memref<6xf32> to memref<4xf32>
        %269 = index.sub %c4, %c6
        %270 = vector.splat %cst_2 : vector<6x4xf16>
        memref.assume_alignment %alloc_14, 8 : memref<6x4xf16>
        %271 = arith.xori %c1761041060_i32, %c1761041060_i32 : i32
        %272 = bufferization.clone %alloc_16 : memref<6xi1> to memref<6xi1>
        %273 = math.ipowi %true_0, %true : i1
        %274 = vector.insert %cst_3, %19 [1] : f32 into vector<4xf32>
        %275 = vector.insertelement %cst_3, %19[%c1 : index] : vector<4xf32>
        %276 = index.sub %c9, %c5
        %rank_45 = tensor.rank %11 : tensor<4x16xf16>
        %277 = vector.insertelement %cst_3, %19[%269 : index] : vector<4xf32>
        %278 = arith.mulf %cst, %cst_2 : f16
        %279 = vector.broadcast %cst_3 : f32 to vector<6x16x6x16xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %266, %265, %279 : vector<4x6x16xf32>, vector<4x6x16xf32> into vector<6x16x6x16xf32>
        %281 = arith.maxui %c1657413137_i32, %c1657413137_i32 : i32
        %282 = affine.apply affine_map<(d0, d1) -> (d0 + d1 * 512)>(%c0, %276)
        %rank_46 = tensor.rank %13 : tensor<4x16xi32>
        %283 = vector.insertelement %cst_3, %267[%c4 : index] : vector<3xf32>
        memref.assume_alignment %272, 8 : memref<6xi1>
        %284 = arith.minf %cst, %cst_1 : f16
        %285 = math.ctlz %3 : tensor<4x6x16xi64>
        %286 = arith.minf %cst, %cst_1 : f16
        %287 = math.expm1 %20 : tensor<f32>
        %288 = arith.minf %cst_1, %cst : f16
        %alloca_47 = memref.alloca() : memref<4x16xi32>
        %289 = math.ceil %2 : tensor<4x16xf32>
        %290 = vector.extract %267[1] : vector<3xf32>
        memref.alloca_scope.return %true_0 : i1
      }
      %cst_40 = arith.constant 1.000000e+00 : f32
      %255 = vector.transfer_read %14[%c0, %c5], %cst_40 : tensor<4x16xf32>, vector<f32>
      %256 = arith.subi %c1695615139_i64, %c248055758_i64 : i64
      %cst_41 = arith.constant 1.000000e+00 : f32
      %257 = vector.transfer_read %alloc_17[%c7, %c7], %cst_41 : memref<4x16xf32>, vector<6xf32>
      %258 = math.exp2 %8 : tensor<4x6x16xf16>
      %259 = arith.addf %cst_40, %cst_40 : f32
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst_40 : vector<4xf32>, vector<4xf32> into f32
      %261 = math.log2 %0 : tensor<6xf32>
      %collapsed_42 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<4x6x16xi32> into tensor<24x16xi32>
      %262 = index.ceildivu %c0, %c8
      %263 = math.exp %11 : tensor<4x16xf16>
      scf.yield %alloc_12 : memref<4x6x16xi1>
    }
    %24 = bufferization.to_tensor %alloc_16 : memref<6xi1>
    %25 = arith.maxf %cst, %cst_2 : f16
    %26 = vector.insert %cst_3, %19 [2] : f32 into vector<4xf32>
    %27 = arith.minsi %c210743414_i32, %c1657413137_i32 : i32
    %28 = vector.insert %cst_3, %19 [0] : f32 into vector<4xf32>
    %29 = math.absf %cst_2 : f16
    %alloc_21 = memref.alloc() : memref<4x16xi32>
    affine.store %cst_3, %alloc_17[%c5, %c13] : memref<4x16xf32>
    %30 = index.add %c10, %c3
    %alloc_22 = memref.alloc() : memref<6x4xf32>
    %31 = memref.realloc %alloc_9 : memref<6xf32> to memref<4xf32>
    %32 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
    %33 = vector.outerproduct %19, %19, %32 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
    %34 = arith.ceildivsi %c1695615139_i64, %c435704414_i64 : i64
    %35 = math.ceil %9 : tensor<6xf16>
    %36 = arith.addf %cst_3, %cst_3 : f32
    %37 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<4x16xi32>) outs(%7 : tensor<4x6x16xi32>) {
    ^bb0(%in: i32, %out: i32):
      %generated_40 = tensor.generate %c13, %30 {
      ^bb0(%arg0: index, %arg1: index):
        %282 = bufferization.clone %alloc_7 : memref<6xi16> to memref<6xi16>
        %283 = math.powf %11, %11 : tensor<4x16xf16>
        %284 = math.ipowi %out, %c1761041060_i32 : i32
        %285 = vector.broadcast %out : i32 to vector<6xi32>
        %286 = vector.broadcast %true : i1 to vector<6xi1>
        %287 = vector.gather %alloc_8[%c9, %arg1, %c11] [%285], %286, %285 : memref<4x6x16xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        tensor.yield %out : i32
      } : tensor<?x?xi32>
      %249 = arith.minf %cst_1, %cst_2 : f16
      %250 = memref.alloca_scope  -> (memref<4x6x16xi16>) {
        %282 = math.round %1 : tensor<4x6x16xf32>
        %283 = arith.remui %c7543_i16, %c7543_i16 : i16
        %284 = vector.broadcast %c1761041060_i32 : i32 to vector<6xi32>
        %285 = vector.broadcast %true : i1 to vector<6xi1>
        %286 = vector.maskedload %alloc_8[%c2, %c0, %c10], %285, %284 : memref<4x6x16xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %287 = index.divu %c6, %c5
        %alloc_43 = memref.alloc() : memref<6x4xf16>
        %288 = vector.broadcast %cst_3 : f32 to vector<6x4xf32>
        %289 = vector.fma %288, %288, %288 : vector<6x4xf32>
        %290 = vector.extract %285[1] : vector<6xi1>
        %291 = arith.remf %cst_2, %cst_2 : f16
        %292 = math.rsqrt %11 : tensor<4x16xf16>
        %293 = arith.addi %c1761041060_i32, %c210743414_i32 : i32
        %294 = arith.remui %c215688997_i64, %c435704414_i64 : i64
        %295 = math.ctlz %4 : tensor<6x4xi1>
        %alloc_44 = memref.alloc() : memref<6x4xi1>
        memref.tensor_store %4, %alloc_44 : memref<6x4xi1>
        %296 = index.ceildivs %c1, %c1
        %extracted_45 = tensor.extract %10[%c0, %c0] : tensor<6x4xi32>
        %297 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %288, %289, %297 : vector<6x4xf32>, vector<6x4xf32> into vector<4x4xf32>
        %299 = index.ceildivu %296, %c5
        %alloc_46 = memref.alloc() : memref<4x16xf32>
        %300 = memref.load %alloc_9[%c3] : memref<6xf32>
        %301 = memref.realloc %alloc_13 : memref<6xi32> to memref<4xi32>
        %302 = math.ctlz %c210743414_i32 : i32
        %303 = math.log10 %11 : tensor<4x16xf16>
        %from_elements_47 = tensor.from_elements %c248055758_i64, %c435704414_i64, %c435704414_i64, %c435704414_i64, %c1873068333_i64, %c1695615139_i64, %c435704414_i64, %c248055758_i64, %c1873068333_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c1695615139_i64, %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c1873068333_i64, %c215688997_i64, %c248055758_i64, %c215688997_i64, %c248055758_i64, %c435704414_i64, %c1873068333_i64, %c1873068333_i64, %c248055758_i64, %c1695615139_i64, %c435704414_i64, %c1873068333_i64, %c1873068333_i64, %c1695615139_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c1873068333_i64, %c215688997_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c435704414_i64, %c248055758_i64, %c435704414_i64, %c215688997_i64, %c215688997_i64, %c1873068333_i64, %c248055758_i64, %c215688997_i64, %c1873068333_i64, %c435704414_i64, %c248055758_i64, %c1695615139_i64, %c215688997_i64, %c215688997_i64, %c1873068333_i64, %c215688997_i64, %c215688997_i64, %c1873068333_i64, %c248055758_i64, %c215688997_i64, %c435704414_i64, %c1873068333_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c1873068333_i64, %c248055758_i64, %c1873068333_i64, %c1695615139_i64, %c248055758_i64, %c248055758_i64, %c248055758_i64, %c435704414_i64, %c215688997_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c248055758_i64, %c215688997_i64, %c215688997_i64, %c248055758_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c248055758_i64, %c1695615139_i64, %c435704414_i64, %c1695615139_i64, %c1873068333_i64, %c1873068333_i64, %c248055758_i64, %c435704414_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c248055758_i64, %c248055758_i64, %c248055758_i64, %c1695615139_i64, %c435704414_i64, %c248055758_i64, %c1695615139_i64, %c435704414_i64, %c1873068333_i64, %c248055758_i64, %c1695615139_i64, %c1873068333_i64, %c1873068333_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c435704414_i64, %c248055758_i64, %c435704414_i64, %c248055758_i64, %c435704414_i64, %c215688997_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c248055758_i64, %c248055758_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c1695615139_i64, %c1695615139_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c215688997_i64, %c1695615139_i64, %c248055758_i64, %c435704414_i64, %c215688997_i64, %c1873068333_i64, %c248055758_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c1873068333_i64, %c1695615139_i64, %c248055758_i64, %c435704414_i64, %c1873068333_i64, %c1695615139_i64, %c435704414_i64, %c435704414_i64, %c215688997_i64, %c435704414_i64, %c248055758_i64, %c215688997_i64, %c435704414_i64, %c1873068333_i64, %c1695615139_i64, %c248055758_i64, %c248055758_i64, %c215688997_i64, %c215688997_i64, %c1695615139_i64, %c1873068333_i64, %c1695615139_i64, %c435704414_i64, %c215688997_i64, %c248055758_i64, %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c1873068333_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c1873068333_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c1873068333_i64, %c215688997_i64, %c435704414_i64, %c435704414_i64, %c248055758_i64, %c215688997_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c1695615139_i64, %c1695615139_i64, %c435704414_i64, %c215688997_i64, %c1873068333_i64, %c1695615139_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c248055758_i64, %c215688997_i64, %c215688997_i64, %c1695615139_i64, %c248055758_i64, %c1873068333_i64, %c435704414_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c435704414_i64, %c215688997_i64, %c1695615139_i64, %c1873068333_i64, %c1873068333_i64, %c215688997_i64, %c1873068333_i64, %c215688997_i64, %c248055758_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c1873068333_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c248055758_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c1873068333_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c1873068333_i64, %c248055758_i64, %c215688997_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c248055758_i64, %c215688997_i64, %c215688997_i64, %c1695615139_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c1695615139_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c435704414_i64, %c435704414_i64, %c435704414_i64, %c435704414_i64, %c435704414_i64, %c248055758_i64, %c248055758_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c435704414_i64, %c215688997_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c1873068333_i64, %c1695615139_i64, %c215688997_i64, %c435704414_i64, %c435704414_i64, %c215688997_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c248055758_i64, %c435704414_i64, %c1873068333_i64, %c1695615139_i64, %c248055758_i64, %c248055758_i64, %c248055758_i64, %c248055758_i64, %c1873068333_i64, %c435704414_i64, %c215688997_i64, %c1873068333_i64, %c435704414_i64, %c435704414_i64, %c1873068333_i64, %c248055758_i64, %c435704414_i64, %c1873068333_i64, %c1695615139_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c1695615139_i64, %c215688997_i64, %c435704414_i64, %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c435704414_i64, %c1695615139_i64, %c1873068333_i64, %c1873068333_i64, %c248055758_i64, %c1873068333_i64, %c435704414_i64, %c435704414_i64, %c1873068333_i64, %c1873068333_i64, %c215688997_i64, %c1695615139_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c248055758_i64, %c1873068333_i64, %c215688997_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c248055758_i64, %c215688997_i64, %c248055758_i64, %c248055758_i64, %c248055758_i64, %c1873068333_i64, %c435704414_i64, %c1873068333_i64, %c215688997_i64, %c1873068333_i64, %c248055758_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64 : tensor<4x6x16xi64>
        %304 = vector.maskedload %alloc_13[%c1], %285, %284 : memref<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %305 = arith.remf %cst, %cst : f16
        %306 = math.atan2 %14, %14 : tensor<4x16xf32>
        %307 = arith.remsi %c248055758_i64, %c435704414_i64 : i64
        %308 = vector.insertelement %extracted_45, %284[%c5 : index] : vector<6xi32>
        %dest, %accumulated_value = vector.scan <maxf>, %288, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<6x4xf32>, vector<4xf32>
        %309 = arith.divsi %c1657413137_i32, %c1761041060_i32 : i32
        %310 = math.floor %6 : tensor<4x16xf16>
        affine.store %cst_3, %alloc_4[%c1, %c0] : memref<4x16xf32>
        %alloc_48 = memref.alloc() : memref<4x6x16xi16>
        memref.alloca_scope.return %alloc_48 : memref<4x6x16xi16>
      }
      %251 = math.atan2 %21, %20 : tensor<f32>
      %252 = vector.multi_reduction <maxf>, %19, %19 [] : vector<4xf32> to vector<4xf32>
      %253 = math.cttz %c215688997_i64 : i64
      %254 = vector.matrix_multiply %19, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %255 = index.casts %c2 : index to i32
      %256 = vector.shuffle %254, %19 [0, 2, 3] : vector<1xf32>, vector<4xf32>
      %generated_41 = tensor.generate %c12 {
      ^bb0(%arg0: index):
        %282 = vector.insert %cst_3, %19 [1] : f32 into vector<4xf32>
        %283 = arith.ceildivsi %true_0, %false : i1
        %284 = arith.subi %c210743414_i32, %in : i32
        %285 = index.divs %c12, %c0
        tensor.yield %cst_3 : f32
      } : tensor<?xf32>
      %257 = arith.muli %true, %true : i1
      %258 = math.log %20 : tensor<f32>
      %259 = bufferization.to_memref %2 : memref<4x16xf32>
      %260 = vector.broadcast %c1657413137_i32 : i32 to vector<4xi32>
      %261 = vector.broadcast %false : i1 to vector<4xi1>
      %262 = vector.maskedload %alloc_13[%c4], %261, %260 : memref<6xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %263 = arith.shli %true, %true_0 : i1
      %264 = vector.shuffle %261, %261 [1, 2, 3, 4, 5, 6, 7] : vector<4xi1>, vector<4xi1>
      %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %262, %262, %c1761041060_i32 : vector<4xi32>, vector<4xi32> into i32
      %266 = arith.minsi %false, %true_0 : i1
      %267 = index.add %c4, %c14
      %268 = arith.remf %cst_2, %cst_1 : f16
      %269 = math.tan %14 : tensor<4x16xf32>
      %270 = index.sub %267, %c13
      %271 = tensor.empty() : tensor<6x4xi16>
      %272 = vector.broadcast %true_0 : i1 to vector<4x6x16xi1>
      %273 = vector.broadcast %c210743414_i32 : i32 to vector<4x6x16xi32>
      %274 = vector.gather %alloc_11[%c15, %c14] [%273], %272, %272 : memref<4x16xi1>, vector<4x6x16xi32>, vector<4x6x16xi1>, vector<4x6x16xi1> into vector<4x6x16xi1>
      %275 = arith.andi %c1657413137_i32, %out : i32
      %276 = index.maxu %c5, %c6
      %277 = math.cttz %c1695615139_i64 : i64
      %expanded_42 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<4x16xf32> into tensor<4x16x1xf32>
      %278 = arith.minf %cst, %cst_1 : f16
      %279 = scf.execute_region -> memref<4x16xi64> {
        %282 = vector.extract %273[3] : vector<4x6x16xi32>
        %283 = arith.divsi %true_0, %true_0 : i1
        %284 = bufferization.clone %alloc_9 : memref<6xf32> to memref<6xf32>
        %inserted_43 = tensor.insert %true into %4[%c2, %c1] : tensor<6x4xi1>
        %285 = index.castu %c6 : index to i32
        %286 = arith.maxsi %true_0, %true_0 : i1
        %287 = vector.load %alloc_16[%c2] : memref<6xi1>, vector<4x16xi1>
        %288 = arith.addi %c1873068333_i64, %c1873068333_i64 : i64
        %289 = vector.shuffle %274, %274 [0, 4, 5] : vector<4x6x16xi1>, vector<4x6x16xi1>
        %290 = arith.floordivsi %c215688997_i64, %c435704414_i64 : i64
        %291 = bufferization.to_memref %24 : memref<6xi1>
        %292 = arith.remf %cst, %cst_1 : f16
        memref.assume_alignment %alloc, 4 : memref<4x16xf32>
        %293 = vector.transpose %287, [1, 0] : vector<4x16xi1> to vector<16x4xi1>
        %294 = arith.cmpi ne, %true_0, %true : i1
        %inserted_44 = tensor.insert %c1873068333_i64 into %3[%c3, %c1, %c9] : tensor<4x6x16xi64>
        scf.yield %alloc_15 : memref<4x16xi64>
      }
      %280 = vector.reduction <xor>, %261 : vector<4xi1> into i1
      %281 = bufferization.clone %alloc_17 : memref<4x16xf32> to memref<4x16xf32>
      linalg.yield %c210743414_i32 : i32
    } -> tensor<4x6x16xi32>
    %38 = vector.reduction <add>, %19 : vector<4xf32> into f32
    %39 = vector.extract_strided_slice %19 {offsets = [0], sizes = [4], strides = [1]} : vector<4xf32> to vector<4xf32>
    %40 = math.exp %9 : tensor<6xf16>
    %41 = math.roundeven %6 : tensor<4x16xf16>
    %42 = math.sqrt %9 : tensor<6xf16>
    %43 = arith.maxsi %c210743414_i32, %c1657413137_i32 : i32
    %44 = math.cttz %c7543_i16 : i16
    %generated = tensor.generate %c1, %c13 {
    ^bb0(%arg0: index, %arg1: index):
      %249 = vector.shuffle %39, %19 [5] : vector<4xf32>, vector<4xf32>
      %250 = affine.apply affine_map<(d0) -> (d0 mod 4)>(%arg1)
      %251 = arith.remf %cst_1, %cst_1 : f16
      %252 = arith.remf %cst_2, %cst_1 : f16
      tensor.yield %c7543_i16 : i16
    } : tensor<?x?xi16>
    %45 = vector.bitcast %19 : vector<4xf32> to vector<4xf32>
    %46 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 + 8) mod 16 - 64)>(%c0, %c9, %c8, %c4)
    %47 = bufferization.clone %alloc_9 : memref<6xf32> to memref<6xf32>
    %48 = vector.reduction <minf>, %19 : vector<4xf32> into f32
    %49 = vector.bitcast %19 : vector<4xf32> to vector<4xf32>
    %50 = math.log %cst_1 : f16
    %51 = vector.broadcast %c8 : index to vector<6xindex>
    %52 = vector.broadcast %true : i1 to vector<6xi1>
    %53 = vector.broadcast %c1657413137_i32 : i32 to vector<6xi32>
    vector.scatter %alloc_8[%c1, %c3, %c13] [%51], %52, %53 : memref<4x6x16xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
    vector.print %49 : vector<4xf32>
    %54 = math.ctlz %5 : tensor<6x4xi64>
    %55 = affine.if affine_set<(d0, d1) : (-d1 >= 0, d1 >= 0, -d1 >= 0, -((-d1) mod 2) >= 0)>(%c13, %c8) -> memref<6x4xf32> {
      %inserted_40 = tensor.insert %cst_3 into %1[%c2, %c2, %c10] : tensor<4x6x16xf32>
      %249 = arith.remui %c7543_i16, %c7543_i16 : i16
      %250 = vector.reduction <maxf>, %19 : vector<4xf32> into f32
      %251 = math.powf %0, %0 : tensor<6xf32>
      %alloc_41 = memref.alloc() : memref<6xi32>
      %252 = arith.cmpi ugt, %c7543_i16, %c7543_i16 : i16
      %253 = arith.minf %cst, %cst_1 : f16
      %generated_42 = tensor.generate %c9, %c8 {
      ^bb0(%arg0: index, %arg1: index):
        %254 = math.ctlz %16 : tensor<6x4xi64>
        %255 = vector.load %alloc_14[%c1, %c1] : memref<6x4xf16>, vector<4x16xf16>
        %256 = math.ctlz %4 : tensor<6x4xi1>
        %257 = arith.ori %true_0, %false : i1
        tensor.yield %c435704414_i64 : i64
      } : tensor<?x?xi64>
      %alloc_43 = memref.alloc() : memref<6x4xf32>
      affine.yield %alloc_43 : memref<6x4xf32>
    } else {
      %249 = math.atan %21 : tensor<f32>
      %250 = arith.remui %false, %true_0 : i1
      %251 = arith.subi %c435704414_i64, %c1873068333_i64 : i64
      %252 = arith.minsi %c7543_i16, %c7543_i16 : i16
      %253 = index.divs %c2, %c15
      vector.print %45 : vector<4xf32>
      %254 = index.maxu %c8, %c10
      %alloc_40 = memref.alloc() : memref<4x16xi16>
      %alloc_41 = memref.alloc() : memref<6x4xf32>
      affine.yield %alloc_41 : memref<6x4xf32>
    }
    %56 = math.floor %1 : tensor<4x6x16xf32>
    %57 = affine.max affine_map<(d0) -> (d0 mod 32 + d0 + d0 mod 32 + d0 + d0 mod 32, d0 mod 32)>(%c5)
    %58 = arith.minf %cst_1, %cst : f16
    %59 = index.ceildivs %c8, %c13
    %60 = math.log2 %11 : tensor<4x16xf16>
    %61 = math.absf %14 : tensor<4x16xf32>
    %62 = arith.addi %c7543_i16, %c7543_i16 : i16
    scf.execute_region {
      %rank_40 = tensor.rank %15 : tensor<6x4xi1>
      %249 = math.atan2 %0, %0 : tensor<6xf32>
      vector.print %49 : vector<4xf32>
      %250 = vector.multi_reduction <add>, %39, %49 [] : vector<4xf32> to vector<4xf32>
      %251 = math.log %2 : tensor<4x16xf32>
      %252 = math.ceil %cst_1 : f16
      %253 = math.absi %4 : tensor<6x4xi1>
      %254 = arith.minf %cst_2, %cst : f16
      %255 = arith.negf %cst : f16
      %extracted_41 = tensor.extract %13[%c0, %c12] : tensor<4x16xi32>
      %generated_42 = tensor.generate %c1 {
      ^bb0(%arg0: index, %arg1: index):
        %261 = vector.broadcast %true : i1 to vector<6xi1>
        %262 = vector.broadcast %c210743414_i32 : i32 to vector<6xi32>
        %263 = vector.gather %alloc_12[%c0, %arg0, %c6] [%262], %261, %261 : memref<4x6x16xi1>, vector<6xi32>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %264 = vector.bitcast %39 : vector<4xf32> to vector<4xf32>
        %265 = index.maxs %arg1, %c3
        %266 = arith.divf %cst, %cst : f16
        tensor.yield %cst_2 : f16
      } : tensor<?x16xf16>
      %256 = bufferization.to_tensor %alloc_16 : memref<6xi1>
      %257 = arith.remf %cst_1, %cst_2 : f16
      %258 = vector.transpose %49, [0] : vector<4xf32> to vector<4xf32>
      %259 = bufferization.to_memref %13 : memref<4x16xi32>
      %260 = math.log10 %9 : tensor<6xf16>
      scf.yield
    }
    %63 = arith.divf %cst_1, %cst_2 : f16
    %64 = math.log2 %2 : tensor<4x16xf32>
    %65 = vector.extract %19[0] : vector<4xf32>
    %66 = arith.maxui %c1761041060_i32, %c1761041060_i32 : i32
    %67 = vector.insertelement %cst_3, %39[%c8 : index] : vector<4xf32>
    %68 = vector.transpose %45, [0] : vector<4xf32> to vector<4xf32>
    %69 = arith.ori %c210743414_i32, %c1761041060_i32 : i32
    %70 = arith.mulf %cst, %cst_1 : f16
    %71 = math.log %8 : tensor<4x6x16xf16>
    %72 = index.sub %c4, %c14
    %73 = math.exp %cst_3 : f32
    %74 = tensor.empty(%c6) : tensor<?xf16>
    %75 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
    %76 = vector.outerproduct %49, %19, %75 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
    memref.alloca_scope  {
      %249 = math.absf %20 : tensor<f32>
      %250 = affine.if affine_set<(d0, d1) : (d0 == 0, d0 >= 0, d1 == 0, d0 + 16 >= 0)>(%c14, %c11) -> f16 {
        %false_40 = arith.constant false
        %281 = math.log2 %reduced : tensor<16xf16>
        %282 = arith.mulf %cst_2, %cst_1 : f16
        %283 = arith.addi %c435704414_i64, %c435704414_i64 : i64
        %284 = arith.ceildivsi %c1873068333_i64, %c435704414_i64 : i64
        %285 = math.log2 %18 : tensor<16xf16>
        %alloc_41 = memref.alloc() : memref<6x4xf16>
        memref.copy %alloc_14, %alloc_41 : memref<6x4xf16> to memref<6x4xf16>
        %286 = vector.extract %45[1] : vector<4xf32>
        affine.yield %cst_1 : f16
      } else {
        vector.print %49 : vector<4xf32>
        %281 = arith.shrui %c1657413137_i32, %c210743414_i32 : i32
        %282 = bufferization.to_memref %4 : memref<6x4xi1>
        %283 = arith.floordivsi %c1657413137_i32, %c210743414_i32 : i32
        %cast = tensor.cast %14 : tensor<4x16xf32> to tensor<?x?xf32>
        %alloc_40 = memref.alloc() : memref<4x16xi64>
        memref.copy %alloc_15, %alloc_40 : memref<4x16xi64> to memref<4x16xi64>
        bufferization.dealloc_tensor %14 : tensor<4x16xf32>
        %284 = arith.shrsi %true, %true : i1
        affine.yield %cst_2 : f16
      }
      %251 = math.absi %c1873068333_i64 : i64
      %252 = vector.extract %49[3] : vector<4xf32>
      %253 = arith.subi %c435704414_i64, %c215688997_i64 : i64
      memref.alloca_scope  {
        %281 = math.floor %20 : tensor<f32>
        %282 = arith.maxsi %c215688997_i64, %c435704414_i64 : i64
        %283 = math.floor %9 : tensor<6xf16>
        %284 = arith.floordivsi %c215688997_i64, %c248055758_i64 : i64
        %alloc_40 = memref.alloc() : memref<4x16xi1>
        memref.copy %alloc_11, %alloc_40 : memref<4x16xi1> to memref<4x16xi1>
        memref.store %cst, %alloc_5[%c3, %c5, %c9] : memref<4x6x16xf16>
        %285 = vector.transpose %49, [0] : vector<4xf32> to vector<4xf32>
        %286 = vector.load %alloc[%c3, %c2] : memref<4x16xf32>, vector<4x16xf32>
        %287 = arith.mulf %cst_1, %cst_1 : f16
        %288 = arith.andi %c1873068333_i64, %c215688997_i64 : i64
        %289 = affine.load %alloc_20[%c13] : memref<6xf32>
        %290 = vector.reduction <add>, %19 : vector<4xf32> into f32
        %291 = index.casts %c11 : index to i32
        %expanded_41 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<4x16xf32> into tensor<4x16x1xf32>
        %cast = tensor.cast %21 : tensor<f32> to tensor<f32>
        %292 = arith.addi %c435704414_i64, %c215688997_i64 : i64
        %293 = vector.broadcast %289 : f32 to vector<6xf32>
        %294 = vector.fma %293, %293, %293 : vector<6xf32>
        %295 = index.maxu %c6, %30
        %296 = math.ctpop %4 : tensor<6x4xi1>
        %297 = arith.remf %cst_1, %cst_1 : f16
        bufferization.dealloc_tensor %24 : tensor<6xi1>
        memref.store %c1657413137_i32, %alloc_6[%c0, %c0] : memref<4x16xi32>
        %298 = arith.remui %c210743414_i32, %c210743414_i32 : i32
        %alloc_42 = memref.alloc() : memref<6xi64>
        %extracted_43 = tensor.extract %9[%c2] : tensor<6xf16>
        %299 = math.rsqrt %6 : tensor<4x16xf16>
        %300 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        %301 = vector.broadcast %false : i1 to vector<4xi1>
        %302 = vector.maskedload %alloc_14[%c4, %c1], %301, %300 : memref<6x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %303 = arith.minsi %c248055758_i64, %c435704414_i64 : i64
        %304 = math.sqrt %expanded_41 : tensor<4x16x1xf32>
        %305 = vector.broadcast %true : i1 to vector<4x16xi1>
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %301, %301, %false : vector<4xi1>, vector<4xi1> into i1
        %cst_44 = arith.constant 1.000000e+00 : f32
        %307 = vector.transfer_read %alloc_9[%c15], %cst_44 : memref<6xf32>, vector<f32>
      }
      %254 = math.cos %0 : tensor<6xf32>
      %255 = math.log %14 : tensor<4x16xf32>
      %256 = memref.load %23[%c1, %c3, %c3] : memref<4x6x16xi1>
      %257 = bufferization.to_tensor %alloc_9 : memref<6xf32>
      %258 = vector.insert %cst_3, %39 [3] : f32 into vector<4xf32>
      %259 = arith.floordivsi %true, %false : i1
      affine.store %true, %alloc_11[%c14, %c9] : memref<4x16xi1>
      %260 = bufferization.clone %alloc : memref<4x16xf32> to memref<4x16xf32>
      %261 = math.roundeven %reduced : tensor<16xf16>
      %262 = arith.floordivsi %c1695615139_i64, %c248055758_i64 : i64
      %263 = vector.shuffle %49, %49 [3, 4, 7] : vector<4xf32>, vector<4xf32>
      %264 = memref.atomic_rmw assign %c1657413137_i32, %alloc_8[%c2, %c3, %c5] : (i32, memref<4x6x16xi32>) -> i32
      %265 = arith.divf %cst_3, %cst_3 : f32
      %266 = index.castu %false : i1 to index
      %267 = scf.while (%arg0 = %c435704414_i64) : (i64) -> i64 {
        %281 = vector.multi_reduction <minf>, %39, %cst_3 [0] : vector<4xf32> to f32
        %cst_40 = arith.constant 1.000000e+00 : f16
        %cst_41 = arith.constant 0.000000e+00 : f16
        %282 = vector.transfer_read %18[%c15], %cst_41 : tensor<16xf16>, vector<f16>
        %283 = arith.ori %c1695615139_i64, %arg0 : i64
        %cst_42 = arith.constant 1.000000e+00 : f32
        %284 = vector.transfer_read %14[%c5, %c13], %cst_42 : tensor<4x16xf32>, vector<f32>
        %285 = math.log10 %21 : tensor<f32>
        bufferization.dealloc_tensor %8 : tensor<4x6x16xf16>
        %286 = math.sqrt %2 : tensor<4x16xf32>
        %287 = vector.broadcast %c1761041060_i32 : i32 to vector<6xi32>
        %288 = vector.broadcast %true : i1 to vector<6xi1>
        %289 = vector.maskedload %alloc_6[%c3, %c0], %288, %287 : memref<4x16xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        scf.condition(%true_0) %c1695615139_i64 : i64
      } do {
      ^bb0(%arg0: i64):
        %extracted_40 = tensor.extract %10[%c2, %c1] : tensor<6x4xi32>
        %281 = index.divs %c3, %c8
        %282 = math.rsqrt %0 : tensor<6xf32>
        %283 = index.divs %c11, %30
        %284 = index.ceildivs %72, %c2
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%46, %c12, %c0, %59)
        %286 = index.maxu %30, %c3
        %287 = vector.broadcast %cst_3 : f32 to vector<4x6x16xf32>
        %288 = vector.fma %287, %287, %287 : vector<4x6x16xf32>
        %289 = vector.insert %cst_3, %49 [1] : f32 into vector<4xf32>
        %alloc_41 = memref.alloc() : memref<4x6x16xi64>
        memref.copy %260, %alloc_17 : memref<4x16xf32> to memref<4x16xf32>
        %290 = vector.create_mask %72, %c2 : vector<4x16xi1>
        %291 = vector.broadcast %cst_3 : f32 to vector<4x6x16xf32>
        %292 = vector.fma %291, %287, %287 : vector<4x6x16xf32>
        bufferization.dealloc_tensor %21 : tensor<f32>
        %293 = arith.divsi %c215688997_i64, %c248055758_i64 : i64
        %294 = affine.apply affine_map<(d0, d1) -> (-d0)>(%c3, %c2)
        scf.yield %c1695615139_i64 : i64
      }
      %268 = vector.broadcast %c1657413137_i32 : i32 to vector<6xi32>
      %269 = vector.broadcast %true_0 : i1 to vector<6xi1>
      %270 = vector.maskedload %alloc_13[%c0], %269, %268 : memref<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %271 = vector.transpose %268, [0] : vector<6xi32> to vector<6xi32>
      %272 = math.fma %0, %0, %0 : tensor<6xf32>
      %273 = arith.remf %cst_1, %cst : f16
      %274 = index.maxs %c6, %c8
      %275 = memref.alloca_scope  -> (f32) {
        %281 = math.rsqrt %257 : tensor<6xf32>
        %282 = arith.xori %c1761041060_i32, %c210743414_i32 : i32
        memref.copy %alloc_12, %23 : memref<4x6x16xi1> to memref<4x6x16xi1>
        %283 = math.absf %20 : tensor<f32>
        %284 = arith.ceildivsi %c210743414_i32, %c1657413137_i32 : i32
        %285 = arith.addf %cst_1, %cst_2 : f16
        %286 = math.atan2 %14, %2 : tensor<4x16xf32>
        %287 = math.powf %1, %1 : tensor<4x6x16xf32>
        %288 = index.ceildivu %c2, %59
        %289 = index.ceildivu %c8, %c14
        %290 = vector.load %260[%c3, %c7] : memref<4x16xf32>, vector<4x6x16xf32>
        %291 = vector.extract %269[4] : vector<6xi1>
        %292 = math.ceil %2 : tensor<4x16xf32>
        %293 = arith.remui %c210743414_i32, %c1657413137_i32 : i32
        %294 = index.sizeof
        memref.store %cst_3, %alloc_20[%c0] : memref<6xf32>
        %295 = math.floor %11 : tensor<4x16xf16>
        memref.assume_alignment %alloc_4, 8 : memref<4x16xf32>
        %296 = math.sqrt %6 : tensor<4x16xf16>
        %rank_40 = tensor.rank %5 : tensor<6x4xi64>
        %297 = arith.remui %c248055758_i64, %c248055758_i64 : i64
        %298 = arith.negf %cst : f16
        %299 = arith.ceildivsi %c1657413137_i32, %c1657413137_i32 : i32
        %300 = memref.load %alloc_10[%c1, %c1] : memref<6x4xi32>
        %301 = arith.cmpi sge, %c215688997_i64, %c435704414_i64 : i64
        %302 = vector.bitcast %270 : vector<6xi32> to vector<6xi32>
        %303 = math.rsqrt %1 : tensor<4x6x16xf32>
        %304 = arith.maxsi %c1873068333_i64, %c1695615139_i64 : i64
        %alloc_41 = memref.alloc() : memref<6x4xi1>
        %305 = vector.broadcast %true : i1 to vector<6x4xi1>
        %306 = vector.broadcast %c210743414_i32 : i32 to vector<6x4xi32>
        %307 = vector.gather %alloc_41[%c10, %72] [%306], %305, %305 : memref<6x4xi1>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xi1> into vector<6x4xi1>
        %308 = arith.maxsi %c1873068333_i64, %c248055758_i64 : i64
        memref.assume_alignment %alloc_18, 1 : memref<4x6x16xf32>
        %309 = vector.load %alloc_18[%c3, %c3, %c13] : memref<4x6x16xf32>, vector<4x6x16xf32>
        memref.alloca_scope.return %cst_3 : f32
      }
      %276 = math.floor %11 : tensor<4x16xf16>
      %277 = affine.if affine_set<(d0, d1) : ((d0 - 65) mod 16 >= 0, d0 == 0)>(%c5, %c7) -> memref<6x4xi64> {
        %281 = arith.mulf %cst_2, %cst_2 : f16
        %282 = math.exp2 %2 : tensor<4x16xf32>
        %c1145704639_i64 = arith.constant 1145704639 : i64
        %283 = arith.cmpi sle, %c1761041060_i32, %c1657413137_i32 : i32
        %284 = index.divs %46, %c13
        %285 = arith.divf %275, %cst_3 : f32
        %286 = math.roundeven %14 : tensor<4x16xf32>
        %287 = arith.cmpi ugt, %c1695615139_i64, %c248055758_i64 : i64
        %alloc_40 = memref.alloc() : memref<6x4xi64>
        affine.yield %alloc_40 : memref<6x4xi64>
      } else {
        %281 = math.absf %cst_2 : f16
        %282 = arith.subi %c248055758_i64, %c1695615139_i64 : i64
        %cst_40 = arith.constant 1.000000e+00 : f32
        %283 = vector.transfer_read %alloc[%c5, %c2], %cst_40 : memref<4x16xf32>, vector<4xf32>
        %284 = vector.matrix_multiply %49, %45 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %285 = index.divs %266, %c3
        %286 = index.sub %c14, %285
        %alloc_41 = memref.alloc() : memref<6xi32>
        %287 = vector.create_mask %c0, %c13 : vector<6x4xi1>
        %alloc_42 = memref.alloc() : memref<6x4xi64>
        affine.yield %alloc_42 : memref<6x4xi64>
      }
      %278 = arith.shrsi %c435704414_i64, %c215688997_i64 : i64
      %279 = bufferization.to_tensor %alloc_9 : memref<6xf32>
      %280 = arith.ceildivsi %true, %false : i1
    }
    %77 = arith.ori %true_0, %false : i1
    %78 = math.ceil %0 : tensor<6xf32>
    memref.store %true_0, %23[%c0, %c0, %c12] : memref<4x6x16xi1>
    %79 = arith.ori %true_0, %false : i1
    %80 = math.exp %9 : tensor<6xf16>
    %81 = math.ceil %0 : tensor<6xf32>
    %expanded = tensor.expand_shape %0 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
    %82 = math.ctpop %10 : tensor<6x4xi32>
    %83 = math.ctlz %c1761041060_i32 : i32
    %84 = arith.mulf %cst_1, %cst_1 : f16
    %85 = arith.xori %c248055758_i64, %c1873068333_i64 : i64
    %86 = index.divs %c5, %c2
    affine.store %true_0, %alloc_12[%c1, %c10, %c14] : memref<4x6x16xi1>
    %87 = arith.remf %cst, %cst : f16
    %88 = math.exp2 %6 : tensor<4x16xf16>
    %89 = memref.realloc %alloc_16 : memref<6xi1> to memref<6xi1>
    %90 = math.fma %0, %0, %0 : tensor<6xf32>
    %91 = index.mul %30, %86
    %92 = math.rsqrt %8 : tensor<4x6x16xf16>
    %alloc_23 = memref.alloc() : memref<6xi32>
    %93 = arith.remsi %true, %true_0 : i1
    %94 = vector.extract %39[0] : vector<4xf32>
    %95 = arith.minf %cst_3, %cst_3 : f32
    %96 = math.cos %18 : tensor<16xf16>
    %97 = arith.ceildivsi %c7543_i16, %c7543_i16 : i16
    %98 = math.expm1 %9 : tensor<6xf16>
    %99 = arith.mulf %cst_2, %cst_1 : f16
    %100 = math.atan2 %cst_2, %cst : f16
    %101 = math.fma %6, %6, %11 : tensor<4x16xf16>
    %102 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %39, %49, %cst_3 : vector<4xf32>, vector<4xf32> into f32
    %103 = vector.extract %49[2] : vector<4xf32>
    %rank = tensor.rank %7 : tensor<4x6x16xi32>
    %104 = affine.apply affine_map<(d0, d1) -> (-d0)>(%c11, %c11)
    %105 = arith.maxui %true, %false : i1
    %106 = math.exp %14 : tensor<4x16xf32>
    memref.store %c210743414_i32, %alloc_8[%c0, %c3, %c7] : memref<4x6x16xi32>
    %107 = vector.broadcast %104 : index to vector<16xindex>
    %108 = vector.broadcast %false : i1 to vector<16xi1>
    %109 = vector.broadcast %cst_3 : f32 to vector<16xf32>
    vector.scatter %alloc_20[%c5] [%107], %108, %109 : memref<6xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
    %110 = math.powf %2, %2 : tensor<4x16xf32>
    %111 = math.cttz %c7543_i16 : i16
    %112 = tensor.empty() : tensor<4x6x16xf16>
    %mapped = linalg.map ins(%8 : tensor<4x6x16xf16>) outs(%112 : tensor<4x6x16xf16>)
      (%in: f16) {
        memref.store %cst_3, %alloc_4[%c3, %c3] : memref<4x16xf32>
        %249 = tensor.empty() : tensor<6x4xi32>
        %250 = math.atan2 %9, %9 : tensor<6xf16>
        %alloc_40 = memref.alloc() : memref<6x4xi16>
        %251 = arith.shrsi %c7543_i16, %c7543_i16 : i16
        %252 = arith.addf %cst_2, %in : f16
        %253 = vector.load %alloc_11[%c0, %c10] : memref<4x16xi1>, vector<4x16xi1>
        %254 = vector.transpose %19, [0] : vector<4xf32> to vector<4xf32>
        %rank_41 = tensor.rank %14 : tensor<4x16xf32>
        %cst_42 = arith.constant 1.000000e+00 : f16
        %255 = vector.transfer_read %alloc_5[%46, %c8, %rank_41], %cst_42 : memref<4x6x16xf16>, vector<f16>
        %256 = index.ceildivu %91, %c1
        %257 = memref.realloc %alloc_13 : memref<6xi32> to memref<4xi32>
        %258 = arith.floordivsi %true_0, %true : i1
        %259 = arith.remf %in, %in : f16
        %260 = arith.cmpi ult, %c1761041060_i32, %c1761041060_i32 : i32
        %261 = memref.load %alloc[%c1, %c12] : memref<4x16xf32>
        %false_43 = arith.constant false
        %262 = arith.maxsi %c7543_i16, %c7543_i16 : i16
        %263 = vector.insert %cst_3, %39 [1] : f32 into vector<4xf32>
        %264 = math.cos %9 : tensor<6xf16>
        %265 = bufferization.to_tensor %alloc : memref<4x16xf32>
        %266 = memref.alloca_scope  -> (memref<4x6x16xi64>) {
          %cast = tensor.cast %10 : tensor<6x4xi32> to tensor<?x?xi32>
          %276 = arith.remf %cst, %cst_1 : f16
          %277 = math.log2 %265 : tensor<4x16xf32>
          %278 = vector.broadcast %false : i1 to vector<4xi1>
          %279 = vector.maskedload %alloc_12[%c2, %c2, %c12], %278, %278 : memref<4x6x16xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
          %280 = vector.broadcast %cst_3 : f32 to vector<16xf32>
          %281 = vector.broadcast %true : i1 to vector<16xi1>
          %282 = vector.maskedload %alloc_18[%c3, %c4, %c14], %281, %280 : memref<4x6x16xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
          %283 = vector.extract %279[1] : vector<4xi1>
          %284 = arith.remui %c1695615139_i64, %c248055758_i64 : i64
          %285 = arith.maxsi %c1695615139_i64, %c215688997_i64 : i64
          %286 = index.maxs %c15, %c0
          %287 = math.exp %2 : tensor<4x16xf32>
          %288 = math.fma %11, %6, %11 : tensor<4x16xf16>
          %289 = arith.mulf %cst, %in : f16
          %290 = math.floor %cst_42 : f16
          %291 = arith.cmpf ult, %cst_3, %cst_3 : f32
          %292 = bufferization.to_memref %1 : memref<4x6x16xf32>
          %false_46 = index.bool.constant false
          %293 = math.roundeven %expanded : tensor<6x1xf32>
          %alloca_47 = memref.alloca() : memref<6x4xi64>
          %294 = bufferization.clone %23 : memref<4x6x16xi1> to memref<4x6x16xi1>
          %295 = math.cos %cst : f16
          %296 = math.cos %1 : tensor<4x6x16xf32>
          %inserted_48 = tensor.insert %cst_1 into %9[%c5] : tensor<6xf16>
          %297 = index.ceildivs %c12, %59
          %298 = index.maxs %c1, %30
          %299 = memref.atomic_rmw assign %in, %alloc_14[%c1, %c0] : (f16, memref<6x4xf16>) -> f16
          %300 = arith.addf %cst_42, %cst_2 : f16
          %301 = index.castu %256 : index to i32
          %302 = arith.mulf %cst_3, %cst_3 : f32
          %303 = arith.remui %c1695615139_i64, %c1695615139_i64 : i64
          %alloca_49 = memref.alloca() : memref<6x4xi32>
          %304 = arith.addf %cst_1, %cst_1 : f16
          %305 = vector.multi_reduction <minf>, %39, %45 [] : vector<4xf32> to vector<4xf32>
          %alloc_50 = memref.alloc() : memref<4x6x16xi64>
          memref.alloca_scope.return %alloc_50 : memref<4x6x16xi64>
        }
        %267 = affine.if affine_set<(d0, d1) : (d1 floordiv 4 == 0, (d1 - 4) * 2 == 0, (d1 - 4) * 2 == 0)>(%c14, %c8) -> memref<4x16xi32> {
          %extracted_46 = tensor.extract %1[%c3, %c3, %c4] : tensor<4x6x16xf32>
          %276 = math.rsqrt %cst_2 : f16
          %277 = math.floor %9 : tensor<6xf16>
          %278 = math.powf %2, %14 : tensor<4x16xf32>
          %279 = math.powf %8, %8 : tensor<4x6x16xf16>
          %cast = tensor.cast %3 : tensor<4x6x16xi64> to tensor<?x?x?xi64>
          %280 = math.cttz %c1657413137_i32 : i32
          %281 = vector.matrix_multiply %39, %45 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
          affine.yield %alloc_6 : memref<4x16xi32>
        } else {
          %276 = vector.broadcast %c1873068333_i64 : i64 to vector<4xi64>
          %277 = vector.broadcast %true : i1 to vector<4xi1>
          %278 = vector.maskedload %266[%c2, %c1, %c4], %277, %276 : memref<4x6x16xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %279 = vector.broadcast %cst_3 : f32 to vector<6x4xf32>
          %280 = vector.broadcast %true_0 : i1 to vector<6x4xi1>
          %281 = vector.broadcast %c210743414_i32 : i32 to vector<6x4xi32>
          %282 = vector.gather %alloc_9[%86] [%281], %280, %279 : memref<6xf32>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xf32> into vector<6x4xf32>
          %283 = index.casts %104 : index to i32
          %284 = math.sqrt %0 : tensor<6xf32>
          %285 = math.roundeven %cst_1 : f16
          %286 = math.ceil %expanded : tensor<6x1xf32>
          affine.store %c215688997_i64, %266[%c3, %c10, %c15] : memref<4x6x16xi64>
          %287 = vector.bitcast %19 : vector<4xf32> to vector<4xf32>
          affine.yield %alloc_6 : memref<4x16xi32>
        }
        %268 = vector.multi_reduction <add>, %39, %cst_3 [0] : vector<4xf32> to f32
        %269 = bufferization.clone %alloc_6 : memref<4x16xi32> to memref<4x16xi32>
        %270 = arith.ceildivsi %c7543_i16, %c7543_i16 : i16
        %271 = bufferization.to_tensor %alloc_12 : memref<4x6x16xi1>
        %272 = arith.remf %268, %268 : f32
        %273 = vector.broadcast %268 : f32 to vector<4x6x16xf32>
        %274 = vector.fma %273, %273, %273 : vector<4x6x16xf32>
        %inserted_44 = tensor.insert %c7543_i16 into %12[%c3] : tensor<6xi16>
        memref.alloca_scope  {
          %276 = vector.transpose %39, [0] : vector<4xf32> to vector<4xf32>
          %inserted_46 = tensor.insert %cst_1 into %8[%c0, %c4, %c12] : tensor<4x6x16xf16>
          %277 = math.powf %112, %112 : tensor<4x6x16xf16>
          %collapsed_47 = tensor.collapse_shape %13 [[0, 1]] : tensor<4x16xi32> into tensor<64xi32>
          %278 = arith.ori %c248055758_i64, %c435704414_i64 : i64
          %279 = arith.remsi %c210743414_i32, %c210743414_i32 : i32
          %alloc_48 = memref.alloc() : memref<4x16xi16>
          %280 = math.powf %11, %6 : tensor<4x16xf16>
          %281 = arith.ori %c1761041060_i32, %c1761041060_i32 : i32
          %282 = arith.remf %cst_1, %cst_1 : f16
          memref.assume_alignment %alloc_16, 1 : memref<6xi1>
          %alloc_49 = memref.alloc() : memref<6x4xi64>
          %283 = vector.broadcast %c248055758_i64 : i64 to vector<4x16xi64>
          %284 = vector.broadcast %c1761041060_i32 : i32 to vector<4x16xi32>
          %285 = vector.gather %alloc_49[%72, %c14] [%284], %253, %283 : memref<6x4xi64>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi64> into vector<4x16xi64>
          %286 = arith.ori %c210743414_i32, %c210743414_i32 : i32
          %c31 = arith.constant 31 : index
          %inserted_50 = tensor.insert %c210743414_i32 into %collapsed_47[%c31] : tensor<64xi32>
          %287 = bufferization.clone %alloc_18 : memref<4x6x16xf32> to memref<4x6x16xf32>
          %288 = arith.remf %in, %cst_42 : f16
          %289 = tensor.empty(%c10) : tensor<?xi64>
          %290 = vector.load %alloc_15[%c0, %c14] : memref<4x16xi64>, vector<4x6x16xi64>
          %291 = arith.ori %true, %true : i1
          %292 = math.ctpop %10 : tensor<6x4xi32>
          %293 = bufferization.to_tensor %alloc_7 : memref<6xi16>
          %294 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d0 ceildiv 128 - 66, d0 ceildiv 128 - 2)>(%c11, %c13, %c8, %c10)
          %295 = arith.addf %cst_1, %cst_42 : f16
          %296 = index.mul %c4, %c2
          %297 = arith.xori %c210743414_i32, %c1657413137_i32 : i32
          %c0_i32_51 = arith.constant 0 : i32
          %298 = vector.transfer_read %alloc_6[%30, %c1], %c0_i32_51 : memref<4x16xi32>, vector<6xi32>
          %299 = math.cttz %12 : tensor<6xi16>
          %300 = vector.matrix_multiply %49, %49 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
          %301 = math.atan2 %1, %1 : tensor<4x6x16xf32>
          %alloca_52 = memref.alloca() : memref<6x4xi64>
          %extracted_53 = tensor.extract %7[%c2, %c3, %c8] : tensor<4x6x16xi32>
          %302 = arith.muli %false, %true : i1
        }
        %275 = math.powf %9, %9 : tensor<6xf16>
        %cst_45 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_45 : f16
      }
    %113 = index.ceildivs %30, %c12
    %114 = scf.index_switch %86 -> index 
    case 1 {
      %249 = arith.cmpi uge, %c7543_i16, %c7543_i16 : i16
      %250 = vector.broadcast %c7543_i16 : i16 to vector<4x4xi16>
      %251 = vector.broadcast %c7543_i16 : i16 to vector<4xi16>
      %dest, %accumulated_value = vector.scan <maxui>, %250, %251 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi16>, vector<4xi16>
      %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %45, %45, %cst_3 : vector<4xf32>, vector<4xf32> into f32
      %253 = arith.cmpf ole, %cst_3, %cst_3 : f32
      %254 = arith.shrsi %true, %true : i1
      %255 = math.rsqrt %expanded : tensor<6x1xf32>
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %49, %45, %cst_3 : vector<4xf32>, vector<4xf32> into f32
      %257 = bufferization.clone %alloc_7 : memref<6xi16> to memref<6xi16>
      %258 = arith.divsi %c210743414_i32, %c1657413137_i32 : i32
      %259 = math.cos %9 : tensor<6xf16>
      %inserted_40 = tensor.insert %cst_1 into %8[%c3, %c0, %c5] : tensor<4x6x16xf16>
      affine.store %cst_3, %alloc_18[%c11, %c12, %c4] : memref<4x6x16xf32>
      memref.store %true, %alloc_16[%c2] : memref<6xi1>
      %260 = vector.broadcast %true_0 : i1 to vector<4x16xi1>
      %261 = vector.broadcast %false : i1 to vector<16xi1>
      %dest_41, %accumulated_value_42 = vector.scan <maxui>, %260, %261 {inclusive = false, reduction_dim = 0 : i64} : vector<4x16xi1>, vector<16xi1>
      %262 = bufferization.to_tensor %alloc_9 : memref<6xf32>
      %263 = math.cos %11 : tensor<4x16xf16>
      scf.yield %c7 : index
    }
    case 2 {
      %249 = arith.addi %c7543_i16, %c7543_i16 : i16
      %250 = index.mul %c5, %c4
      affine.store %c7543_i16, %alloc_7[%c0] : memref<6xi16>
      %true_40 = index.bool.constant true
      %rank_41 = tensor.rank %0 : tensor<6xf32>
      %251 = vector.insertelement %cst_3, %19[%c12 : index] : vector<4xf32>
      bufferization.dealloc_tensor %0 : tensor<6xf32>
      %252 = memref.load %23[%c0, %c1, %c9] : memref<4x6x16xi1>
      scf.execute_region {
        %259 = index.divs %c7, %c14
        %260 = math.log %6 : tensor<4x16xf16>
        %261 = index.castu %true_40 : i1 to index
        %262 = arith.divf %cst, %cst_1 : f16
        %263 = vector.transpose %39, [0] : vector<4xf32> to vector<4xf32>
        %extracted_43 = tensor.extract %expanded[%c2, %c0] : tensor<6x1xf32>
        %264 = arith.subi %true, %true_0 : i1
        %265 = arith.remsi %c248055758_i64, %c1873068333_i64 : i64
        %inserted_44 = tensor.insert %c1873068333_i64 into %16[%c3, %c0] : tensor<6x4xi64>
        vector.print %45 : vector<4xf32>
        %266 = index.castu %c248055758_i64 : i64 to index
        %267 = arith.cmpf ueq, %cst_2, %cst : f16
        %268 = arith.cmpi slt, %c210743414_i32, %c1761041060_i32 : i32
        %269 = arith.remf %cst_1, %cst : f16
        %270 = index.divs %c15, %rank
        %271 = vector.load %alloc_14[%c1, %c2] : memref<6x4xf16>, vector<6x4xf16>
        scf.yield
      }
      %253 = vector.broadcast %cst_3 : f32 to vector<6x4xf32>
      %254 = vector.fma %253, %253, %253 : vector<6x4xf32>
      bufferization.dealloc_tensor %4 : tensor<6x4xi1>
      %alloc_42 = memref.alloc() : memref<6xi32>
      %255 = arith.addi %true_0, %true_40 : i1
      %256 = vector.insertelement %cst_3, %39[%c5 : index] : vector<4xf32>
      %257 = index.ceildivs %c11, %rank
      %258 = math.powf %18, %18 : tensor<16xf16>
      scf.yield %46 : index
    }
    default {
      %249 = math.floor %11 : tensor<4x16xf16>
      %250 = vector.load %alloc_6[%c2, %c15] : memref<4x16xi32>, vector<6xi32>
      %251 = arith.mulf %cst_3, %cst_3 : f32
      affine.store %c1657413137_i32, %alloc_8[%c14, %c9, %c15] : memref<4x6x16xi32>
      %252 = bufferization.clone %alloc_12 : memref<4x6x16xi1> to memref<4x6x16xi1>
      %253 = memref.atomic_rmw maxf %cst_3, %47[%c1] : (f32, memref<6xf32>) -> f32
      %extracted_40 = tensor.extract %3[%c0, %c1, %c13] : tensor<4x6x16xi64>
      %254 = arith.minsi %c215688997_i64, %c248055758_i64 : i64
      %255 = math.exp %cst_2 : f16
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %49, %39, %cst_3 : vector<4xf32>, vector<4xf32> into f32
      %257 = arith.subi %c1695615139_i64, %c1873068333_i64 : i64
      %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %39, %cst_3 : vector<4xf32>, vector<4xf32> into f32
      %259 = vector.insert %cst_3, %19 [2] : f32 into vector<4xf32>
      %260 = arith.addf %cst_3, %cst_3 : f32
      %261 = arith.divf %cst_2, %cst : f16
      %262 = math.powf %2, %2 : tensor<4x16xf32>
      scf.yield %57 : index
    }
    %115 = memref.realloc %alloc_7 : memref<6xi16> to memref<4xi16>
    %116 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + 2) mod 4)>(%c11, %c10, %c6)
    %117 = vector.broadcast %c15 : index to vector<4xindex>
    %118 = vector.broadcast %true : i1 to vector<4xi1>
    vector.scatter %alloc_17[%c2, %c1] [%117], %118, %19 : memref<4x16xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %cst_24 = arith.constant 1.00771763E+9 : f32
    %119 = index.mul %c12, %c13
    %alloc_25 = memref.alloc() : memref<4x6x16xi64>
    %120 = vector.insertelement %cst_3, %49[%rank : index] : vector<4xf32>
    %121 = arith.divsi %c248055758_i64, %c1695615139_i64 : i64
    %122 = arith.ceildivsi %false, %true_0 : i1
    %123 = arith.divf %cst, %cst : f16
    %124 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
    %125 = vector.outerproduct %19, %49, %124 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
    %126 = math.cos %18 : tensor<16xf16>
    %127 = index.ceildivu %c15, %113
    affine.store %cst_3, %alloc_20[%c8] : memref<6xf32>
    %128 = bufferization.clone %alloc_12 : memref<4x6x16xi1> to memref<4x6x16xi1>
    %129 = math.roundeven %11 : tensor<4x16xf16>
    %130 = arith.remsi %c215688997_i64, %c435704414_i64 : i64
    %inserted = tensor.insert %cst_2 into %18[%c7] : tensor<16xf16>
    %131 = vector.multi_reduction <mul>, %39, %19 [] : vector<4xf32> to vector<4xf32>
    %132 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + 2) mod 4)>(%c11, %c15, %57)
    %133 = bufferization.clone %alloc_18 : memref<4x6x16xf32> to memref<4x6x16xf32>
    %alloc_26 = memref.alloc() : memref<6x4xf16>
    memref.copy %alloc_14, %alloc_26 : memref<6x4xf16> to memref<6x4xf16>
    %134 = bufferization.clone %alloc_13 : memref<6xi32> to memref<6xi32>
    %135 = memref.realloc %47 : memref<6xf32> to memref<4xf32>
    %136 = math.log10 %cst_3 : f32
    %inserted_27 = tensor.insert %c215688997_i64 into %5[%c2, %c2] : tensor<6x4xi64>
    %137 = math.ceil %1 : tensor<4x6x16xf32>
    %138 = math.cos %11 : tensor<4x16xf16>
    %139 = math.log2 %11 : tensor<4x16xf16>
    %140 = arith.addf %cst_2, %cst_1 : f16
    %141 = bufferization.clone %alloc_10 : memref<6x4xi32> to memref<6x4xi32>
    %142 = arith.floordivsi %c1657413137_i32, %c1657413137_i32 : i32
    %143 = vector.bitcast %39 : vector<4xf32> to vector<4xf32>
    %144 = arith.mulf %cst, %cst_1 : f16
    %145 = math.log2 %cst : f16
    %extracted = tensor.extract %11[%c3, %c13] : tensor<4x16xf16>
    %expanded_28 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<4x16xi32> into tensor<4x16x1xi32>
    %146 = arith.ori %c1761041060_i32, %c1657413137_i32 : i32
    %147 = index.castu %c13 : index to i32
    %alloc_29 = memref.alloc() : memref<6xf16>
    memref.tensor_store %9, %alloc_29 : memref<6xf16>
    %rank_30 = tensor.rank %6 : tensor<4x16xf16>
    %148 = tensor.empty() : tensor<4x6x16xf16>
    %149 = affine.if affine_set<(d0, d1) : (-d1 >= 0, d1 >= 0, -d1 >= 0, -((-d1) mod 2) >= 0)>(%c11, %c4) -> i16 {
      %249 = index.divs %116, %c14
      %250 = arith.remf %cst_1, %extracted : f16
      %251 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%249, %59, %c12)
      %252 = arith.cmpf one, %cst_3, %cst_3 : f32
      %inserted_40 = tensor.insert %c1761041060_i32 into %7[%c2, %c5, %c2] : tensor<4x6x16xi32>
      %253 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
      %254 = vector.outerproduct %19, %45, %253 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
      %255 = arith.ori %c1657413137_i32, %c1657413137_i32 : i32
      %256 = tensor.empty() : tensor<4x16xi1>
      %257 = vector.broadcast %true : i1 to vector<4x6x16xi1>
      %258 = vector.broadcast %c1657413137_i32 : i32 to vector<4x6x16xi32>
      %259 = vector.gather %256[%rank, %rank] [%258], %257, %257 : tensor<4x16xi1>, vector<4x6x16xi32>, vector<4x6x16xi1>, vector<4x6x16xi1> into vector<4x6x16xi1>
      affine.yield %c7543_i16 : i16
    } else {
      %249 = arith.shrsi %c1695615139_i64, %c1873068333_i64 : i64
      %250 = arith.ceildivsi %false, %true : i1
      %251 = vector.broadcast %c210743414_i32 : i32 to vector<4x16xi32>
      %252 = vector.broadcast %false : i1 to vector<4x16xi1>
      %253 = vector.gather %alloc_6[%c9, %127] [%251], %252, %251 : memref<4x16xi32>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi32> into vector<4x16xi32>
      %254 = arith.divf %extracted, %cst_1 : f16
      %alloca_40 = memref.alloca() : memref<4x6x16xf16>
      %255 = vector.extract %253[0] : vector<4x16xi32>
      affine.store %false, %alloc_19[%c3, %c9] : memref<4x6xi1>
      %256 = bufferization.to_memref %18 : memref<16xf16>
      affine.yield %c7543_i16 : i16
    }
    %150 = arith.ceildivsi %false, %true : i1
    %151 = vector.broadcast %c7543_i16 : i16 to vector<4x16xi16>
    %152 = vector.broadcast %false : i1 to vector<4x16xi1>
    %153 = vector.broadcast %c1657413137_i32 : i32 to vector<4x16xi32>
    %154 = vector.gather %alloc_7[%c6] [%153], %152, %151 : memref<6xi16>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi16> into vector<4x16xi16>
    %155 = vector.transpose %19, [0] : vector<4xf32> to vector<4xf32>
    %156 = arith.subi %c1761041060_i32, %c210743414_i32 : i32
    %157 = arith.minui %c215688997_i64, %c1695615139_i64 : i64
    memref.tensor_store %0, %alloc_9 : memref<6xf32>
    %158 = bufferization.to_tensor %alloc_10 : memref<6x4xi32>
    bufferization.dealloc_tensor %12 : tensor<6xi16>
    %159 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 4, d2 - (d1 + d0))>(%c14, %c4, %104, %72)
    memref.assume_alignment %alloc_8, 16 : memref<4x6x16xi32>
    %from_elements = tensor.from_elements %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_2, %cst_2, %extracted, %cst_2, %cst_1, %extracted, %extracted, %cst, %cst_1, %cst_2, %extracted, %cst_2, %cst_1, %cst_2, %extracted, %cst_2, %cst_2, %cst_2 : tensor<6x4xf16>
    %160 = vector.broadcast %false : i1 to vector<6xi1>
    %161 = vector.maskedload %alloc_19[%c0, %c5], %160, %160 : memref<4x6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
    affine.for %arg0 = 0 to 123 {
    }
    %162 = math.atan2 %cst_1, %cst_1 : f16
    %163 = arith.ceildivsi %c215688997_i64, %c1873068333_i64 : i64
    %164 = index.ceildivs %rank_30, %159
    %165 = arith.subi %c1761041060_i32, %c1657413137_i32 : i32
    %166 = arith.remsi %c435704414_i64, %c1695615139_i64 : i64
    %167 = vector.insert %cst_3, %19 [0] : f32 into vector<4xf32>
    %168 = arith.floordivsi %c1873068333_i64, %c248055758_i64 : i64
    %169 = memref.realloc %47 : memref<6xf32> to memref<4xf32>
    %170 = math.log2 %cst_1 : f16
    memref.store %cst_1, %alloc_14[%c3, %c2] : memref<6x4xf16>
    %extracted_31 = tensor.extract %7[%c0, %c1, %c10] : tensor<4x6x16xi32>
    %171 = arith.ori %c7543_i16, %c7543_i16 : i16
    %172 = arith.maxsi %true, %false : i1
    memref.assume_alignment %alloc_13, 2 : memref<6xi32>
    %173 = math.powf %cst_3, %cst_3 : f32
    %174 = vector.bitcast %160 : vector<6xi1> to vector<6xi1>
    %175 = arith.remf %cst_3, %cst_3 : f32
    %176 = arith.remsi %c1761041060_i32, %c1657413137_i32 : i32
    affine.store %c210743414_i32, %134[%c6] : memref<6xi32>
    %177 = vector.matrix_multiply %39, %45 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %178 = arith.minf %cst_3, %cst_3 : f32
    %179 = math.cttz %16 : tensor<6x4xi64>
    %180 = memref.load %alloc_11[%c3, %c1] : memref<4x16xi1>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %181 = vector.transfer_read %10[%c8, %c13], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x4xi32>, vector<4xi32>
    %182 = math.ceil %14 : tensor<4x16xf32>
    %183 = vector.broadcast %true_0 : i1 to vector<16x16xi1>
    %184 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %152, %152, %183 : vector<4x16xi1>, vector<4x16xi1> into vector<16x16xi1>
    %185 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %49, %39, %cst_3 : vector<4xf32>, vector<4xf32> into f32
    %186 = math.log2 %21 : tensor<f32>
    %187 = math.log10 %cst_2 : f16
    %188 = affine.load %alloc_4[%c15, %c6] : memref<4x16xf32>
    %189 = arith.remf %cst_2, %cst_2 : f16
    %190 = arith.shrui %c1695615139_i64, %c215688997_i64 : i64
    bufferization.dealloc_tensor %7 : tensor<4x6x16xi32>
    %collapsed = tensor.collapse_shape %2 [[0, 1]] : tensor<4x16xf32> into tensor<64xf32>
    %expanded_32 = tensor.expand_shape %12 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
    %191 = index.ceildivs %30, %91
    %192 = arith.ori %c435704414_i64, %c1695615139_i64 : i64
    %193 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
    %194 = vector.outerproduct %49, %39, %193 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
    vector.print %151 : vector<4x16xi16>
    %195 = arith.cmpf ueq, %extracted, %extracted : f16
    %196 = vector.load %alloc_5[%c1, %c3, %c3] : memref<4x6x16xf16>, vector<6x4xf16>
    %rank_33 = tensor.rank %24 : tensor<6xi1>
    scf.index_switch %c13 
    case 1 {
      %249 = math.ceil %1 : tensor<4x6x16xf32>
      %250 = index.ceildivu %30, %127
      %251 = math.powf %9, %9 : tensor<6xf16>
      %252 = arith.negf %cst_1 : f16
      %253 = index.castu %false : i1 to index
      %254 = math.ctpop %158 : tensor<6x4xi32>
      %255 = arith.addf %cst, %cst_2 : f16
      %256 = arith.divf %cst, %cst_1 : f16
      %257 = vector.transpose %196, [0, 1] : vector<6x4xf16> to vector<6x4xf16>
      %258 = vector.gather %7[%116, %59, %rank_30] [%153], %152, %153 : tensor<4x6x16xi32>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi32> into vector<4x16xi32>
      %259 = bufferization.clone %alloc_12 : memref<4x6x16xi1> to memref<4x6x16xi1>
      %260 = arith.negf %cst : f16
      %261 = arith.maxf %cst_2, %cst_1 : f16
      %262 = arith.divsi %true_0, %true_0 : i1
      %263 = vector.reduction <mul>, %160 : vector<6xi1> into i1
      %264 = arith.ceildivsi %c1873068333_i64, %c1873068333_i64 : i64
      scf.yield
    }
    default {
      %249 = math.powf %from_elements, %from_elements : tensor<6x4xf16>
      %250 = math.cos %9 : tensor<6xf16>
      %251 = math.ipowi %13, %13 : tensor<4x16xi32>
      %252 = vector.broadcast %c7543_i16 : i16 to vector<4xi16>
      %253 = vector.multi_reduction <maxui>, %154, %252 [1] : vector<4x16xi16> to vector<4xi16>
      bufferization.dealloc_tensor %2 : tensor<4x16xf32>
      %254 = index.divs %86, %159
      %255 = arith.minf %cst_3, %188 : f32
      %256 = arith.maxsi %c1657413137_i32, %c1_i32 : i32
      %257 = arith.maxsi %c1657413137_i32, %extracted_31 : i32
      %cst_40 = arith.constant 1.000000e+00 : f16
      %258 = vector.transfer_read %alloc_5[%rank_30, %191, %c2], %cst_40 : memref<4x6x16xf16>, vector<16xf16>
      %259 = math.log2 %112 : tensor<4x6x16xf16>
      memref.assume_alignment %alloc_16, 1 : memref<6xi1>
      %260 = index.ceildivu %c14, %c2
      %261 = tensor.empty() : tensor<6x16xi32>
      %262 = linalg.matmul ins(%10, %13 : tensor<6x4xi32>, tensor<4x16xi32>) outs(%261 : tensor<6x16xi32>) -> tensor<6x16xi32>
      %263 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %264 = math.cos %cst_3 : f32
    }
    %expanded_34 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x4xi32> into tensor<6x4x1xi32>
    affine.store %cst_3, %alloc[%c13, %c14] : memref<4x16xf32>
    memref.tensor_store %2, %alloc_4 : memref<4x16xf32>
    %197 = arith.ceildivsi %c248055758_i64, %c215688997_i64 : i64
    %collapsed_35 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x16xf16> into tensor<64xf16>
    %198 = index.ceildivs %c7, %c12
    %199 = vector.reduction <xor>, %161 : vector<6xi1> into i1
    %200 = vector.load %alloc_19[%c3, %c1] : memref<4x6xi1>, vector<6xi1>
    %201 = math.sqrt %cst_3 : f32
    %202 = arith.subi %c215688997_i64, %c1695615139_i64 : i64
    %203 = index.ceildivs %113, %164
    %alloca = memref.alloca() : memref<4x6x16xf16>
    %204 = arith.maxsi %c215688997_i64, %c1873068333_i64 : i64
    %205 = math.fma %14, %2, %2 : tensor<4x16xf32>
    %206 = arith.subi %extracted_31, %c210743414_i32 : i32
    %207 = arith.ceildivsi %c210743414_i32, %extracted_31 : i32
    %208 = memref.alloca_scope  -> (memref<4x6x16xi16>) {
      bufferization.dealloc_tensor %9 : tensor<6xf16>
      %249 = math.rsqrt %expanded : tensor<6x1xf32>
      %250 = index.ceildivu %46, %c2
      scf.execute_region {
        %279 = math.log %18 : tensor<16xf16>
        %280 = vector.broadcast %c1761041060_i32 : i32 to vector<16xi32>
        %281 = vector.broadcast %false : i1 to vector<16xi1>
        %282 = vector.maskedload %alloc_8[%c1, %c3, %c2], %281, %280 : memref<4x6x16xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %c1_i32_44 = arith.constant 1 : i32
        %c0_i32_45 = arith.constant 0 : i32
        %283 = vector.transfer_read %7[%119, %127, %159], %c0_i32_45 : tensor<4x6x16xi32>, vector<i32>
        %284 = bufferization.to_memref %12 : memref<6xi16>
        %inserted_46 = tensor.insert %c7543_i16 into %generated[%c0, %c0] : tensor<?x?xi16>
        %285 = arith.cmpf uge, %188, %cst_3 : f32
        affine.store %188, %alloc_4[%c0, %c12] : memref<4x16xf32>
        %extracted_47 = tensor.extract %158[%c4, %c1] : tensor<6x4xi32>
        %286 = memref.realloc %alloc_20 : memref<6xf32> to memref<16xf32>
        %false_48 = arith.constant false
        %false_49 = arith.constant false
        %287 = vector.transfer_read %4[%c0, %203], %false_49 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x4xi1>, vector<16xi1>
        %288 = arith.divf %cst, %cst_1 : f16
        %289 = tensor.empty() : tensor<4x6x16xi1>
        %290 = vector.broadcast %true : i1 to vector<4x6x16xi1>
        %291 = vector.broadcast %c1761041060_i32 : i32 to vector<4x6x16xi32>
        %292 = vector.gather %289[%86, %c1, %c4] [%291], %290, %290 : tensor<4x6x16xi1>, vector<4x6x16xi32>, vector<4x6x16xi1>, vector<4x6x16xi1> into vector<4x6x16xi1>
        %293 = arith.cmpi slt, %c1761041060_i32, %extracted_47 : i32
        %294 = math.atan2 %8, %8 : tensor<4x6x16xf16>
        %295 = index.castu %false : i1 to index
        %296 = index.ceildivu %198, %c0
        scf.yield
      }
      %251 = vector.shuffle %196, %196 [0, 3, 4, 5, 6, 7, 9] : vector<6x4xf16>, vector<6x4xf16>
      %cst_40 = arith.constant 1.000000e+00 : f32
      %252 = vector.transfer_read %alloc_18[%rank, %c6, %c5], %cst_40 : memref<4x6x16xf32>, vector<f32>
      %253 = index.ceildivu %rank_33, %198
      %254 = math.powf %188, %188 : f32
      %255 = vector.insert %188, %19 [0] : f32 into vector<4xf32>
      %256 = arith.maxui %c215688997_i64, %c215688997_i64 : i64
      bufferization.dealloc_tensor %10 : tensor<6x4xi32>
      %257 = vector.broadcast %false : i1 to vector<6x4xi1>
      %258 = vector.broadcast %c210743414_i32 : i32 to vector<6x4xi32>
      %259 = vector.gather %alloc_5[%c5, %c10, %132] [%258], %257, %196 : memref<4x6x16xf16>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xf16> into vector<6x4xf16>
      %260 = math.ceil %112 : tensor<4x6x16xf16>
      %261 = math.log2 %collapsed : tensor<64xf32>
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %174, %174, %true_0 : vector<6xi1>, vector<6xi1> into i1
      %263 = arith.minf %cst, %cst : f16
      scf.execute_region {
        %279 = vector.broadcast %extracted_31 : i32 to vector<16x6xi32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %153, %258, %279 : vector<4x16xi32>, vector<6x4xi32> into vector<16x6xi32>
        %alloc_44 = memref.alloc() : memref<6x4xi1>
        %281 = arith.remf %extracted, %cst : f16
        %282 = math.cos %1 : tensor<4x6x16xf32>
        %283 = arith.floordivsi %c215688997_i64, %c1873068333_i64 : i64
        %284 = math.sqrt %cst_1 : f16
        %285 = math.floor %6 : tensor<4x16xf16>
        %286 = arith.remui %c248055758_i64, %c1873068333_i64 : i64
        %287 = arith.minsi %c7543_i16, %c7543_i16 : i16
        %288 = vector.insertelement %cst_3, %49[%104 : index] : vector<4xf32>
        %289 = tensor.empty(%c13) : tensor<?x6x16xf16>
        %290 = math.log10 %extracted : f16
        %291 = arith.cmpf uno, %188, %cst_3 : f32
        %292 = bufferization.to_tensor %alloc_9 : memref<6xf32>
        %293 = vector.broadcast %true : i1 to vector<4xi1>
        %294 = vector.insert %293, %257 [1] : vector<4xi1> into vector<6x4xi1>
        bufferization.dealloc_tensor %6 : tensor<4x16xf16>
        scf.yield
      }
      %264 = math.floor %0 : tensor<6xf32>
      %265 = math.log2 %1 : tensor<4x6x16xf32>
      %266 = math.floor %expanded : tensor<6x1xf32>
      %alloca_41 = memref.alloca() : memref<4x6x16xi1>
      %267 = math.ceil %112 : tensor<4x6x16xf16>
      %268 = arith.remsi %c1695615139_i64, %c1695615139_i64 : i64
      %269 = vector.load %alloc_19[%c2, %c3] : memref<4x6xi1>, vector<4x6x16xi1>
      %270 = arith.subi %true, %true_0 : i1
      bufferization.dealloc_tensor %158 : tensor<6x4xi32>
      %alloc_42 = memref.alloc() : memref<4x16xi16>
      %271 = vector.broadcast %c7543_i16 : i16 to vector<6x4xi16>
      %272 = vector.gather %alloc_42[%191, %c0] [%258], %257, %271 : memref<4x16xi16>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xi16> into vector<6x4xi16>
      %273 = arith.ceildivsi %c210743414_i32, %c1761041060_i32 : i32
      %274 = vector.broadcast %true_0 : i1 to vector<4xi1>
      %275 = vector.maskedload %alloc_12[%c2, %c2, %c13], %274, %274 : memref<4x6x16xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %276 = arith.addi %c435704414_i64, %c215688997_i64 : i64
      %277 = vector.reduction <or>, %200 : vector<6xi1> into i1
      %278 = math.log2 %11 : tensor<4x16xf16>
      %alloc_43 = memref.alloc() : memref<4x6x16xi16>
      memref.alloca_scope.return %alloc_43 : memref<4x6x16xi16>
    }
    %209 = index.castu %c210743414_i32 : i32 to index
    %210 = vector.load %alloc_20[%c4] : memref<6xf32>, vector<6x4xf32>
    %211 = affine.if affine_set<(d0) : (d0 + 2 >= 0, ((-(d0 * 4 + 8)) mod 128) * 32 + d0 == 0, -(d0 floordiv 64) + (d0 + 2) * 64 >= 0, d0 >= 0)>(%c4) -> memref<6x4xi16> {
      %249 = math.rsqrt %20 : tensor<f32>
      %250 = bufferization.clone %alloc_15 : memref<4x16xi64> to memref<4x16xi64>
      %251 = arith.minf %extracted, %cst : f16
      %252 = arith.cmpi ult, %c1873068333_i64, %c248055758_i64 : i64
      %253 = math.powf %9, %9 : tensor<6xf16>
      %254 = memref.realloc %alloc_9 : memref<6xf32> to memref<4xf32>
      %255 = arith.divsi %c1_i32, %c210743414_i32 : i32
      %alloc_40 = memref.alloc() : memref<6x4xi64>
      %alloc_41 = memref.alloc() : memref<6x4xi16>
      affine.yield %alloc_41 : memref<6x4xi16>
    } else {
      memref.store %false, %128[%c0, %c2, %c3] : memref<4x6x16xi1>
      %249 = index.maxs %c12, %rank
      %250 = math.log %1 : tensor<4x6x16xf32>
      %251 = vector.broadcast %cst_3 : f32 to vector<6xf32>
      %252 = vector.fma %251, %251, %251 : vector<6xf32>
      %253 = arith.mulf %cst_1, %cst : f16
      %254 = index.ceildivs %rank_30, %c13
      %255 = arith.ori %extracted_31, %c1761041060_i32 : i32
      %256 = math.atan2 %8, %112 : tensor<4x6x16xf16>
      %alloc_40 = memref.alloc() : memref<6x4xi16>
      affine.yield %alloc_40 : memref<6x4xi16>
    }
    %212 = math.log %0 : tensor<6xf32>
    %213 = vector.extract %153[2] : vector<4x16xi32>
    %214 = math.floor %11 : tensor<4x16xf16>
    %215 = vector.reduction <xor>, %200 : vector<6xi1> into i1
    %inserted_36 = tensor.insert %c1761041060_i32 into %13[%c0, %c0] : tensor<4x16xi32>
    %216 = math.ctlz %extracted_31 : i32
    %217 = vector.shuffle %154, %151 [0, 2, 3, 5, 7] : vector<4x16xi16>, vector<4x16xi16>
    %218 = math.cttz %13 : tensor<4x16xi32>
    %219 = index.castu %rank : index to i32
    %220 = affine.apply affine_map<(d0) -> (d0 mod 64 + d0 + 32)>(%86)
    scf.execute_region {
      %c17 = arith.constant 17 : index
      %extracted_40 = tensor.extract %collapsed[%c17] : tensor<64xf32>
      %249 = math.roundeven %9 : tensor<6xf16>
      %250 = scf.execute_region -> tensor<4x16xi1> {
        %264 = math.exp2 %11 : tensor<4x16xf16>
        %265 = arith.divsi %c215688997_i64, %c1695615139_i64 : i64
        %266 = vector.insertelement %c1761041060_i32, %213[%c10 : index] : vector<16xi32>
        %alloca_43 = memref.alloca() : memref<4x16xf32>
        %267 = vector.insert %cst_3, %19 [1] : f32 into vector<4xf32>
        %false_44 = index.bool.constant false
        %268 = vector.insert %false_44, %200 [0] : i1 into vector<6xi1>
        %269 = math.ceil %14 : tensor<4x16xf32>
        %270 = math.atan2 %cst_1, %extracted : f16
        %271 = vector.bitcast %174 : vector<6xi1> to vector<6xi1>
        %c0_i32_45 = arith.constant 0 : i32
        %272 = vector.transfer_read %alloc_10[%rank_30, %220], %c0_i32_45 : memref<6x4xi32>, vector<4xi32>
        %273 = vector.extract %151[2] : vector<4x16xi16>
        %274 = math.cttz %c7543_i16 : i16
        %inserted_46 = tensor.insert %c1695615139_i64 into %5[%c0, %c0] : tensor<6x4xi64>
        memref.tensor_store %12, %alloc_7 : memref<6xi16>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %160, %160, %true_0 : vector<6xi1>, vector<6xi1> into i1
        %276 = tensor.empty() : tensor<4x16xi1>
        scf.yield %276 : tensor<4x16xi1>
      }
      %251 = vector.transpose %210, [1, 0] : vector<6x4xf32> to vector<4x6xf32>
      %252 = arith.divsi %c435704414_i64, %c1695615139_i64 : i64
      %generated_41 = tensor.generate %72 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %264 = bufferization.clone %128 : memref<4x6x16xi1> to memref<4x6x16xi1>
        %alloc_43 = memref.alloc() : memref<4x16xi64>
        %265 = math.powf %1, %1 : tensor<4x6x16xf32>
        %266 = math.sqrt %from_elements : tensor<6x4xf16>
        tensor.yield %c248055758_i64 : i64
      } : tensor<?x6x16xi64>
      %253 = math.tanh %from_elements : tensor<6x4xf16>
      %254 = bufferization.to_memref %expanded_34 : memref<6x4x1xi32>
      memref.alloca_scope  {
        %264 = arith.divsi %c215688997_i64, %c248055758_i64 : i64
        %265 = arith.maxsi %c215688997_i64, %c248055758_i64 : i64
        %266 = math.ceil %14 : tensor<4x16xf32>
        bufferization.dealloc_tensor %8 : tensor<4x6x16xf16>
        %267 = math.log2 %1 : tensor<4x6x16xf32>
        %268 = arith.ori %false, %false : i1
        %269 = math.rsqrt %6 : tensor<4x16xf16>
        %270 = bufferization.to_memref %2 : memref<4x16xf32>
        %271 = vector.extract_strided_slice %153 {offsets = [0], sizes = [4], strides = [1]} : vector<4x16xi32> to vector<4x16xi32>
        %272 = arith.minsi %c248055758_i64, %c1695615139_i64 : i64
        %273 = math.ctlz %c1_i32 : i32
        memref.assume_alignment %alloc, 2 : memref<4x16xf32>
        %inserted_43 = tensor.insert %c7543_i16 into %12[%c0] : tensor<6xi16>
        %274 = math.roundeven %cst_2 : f16
        %275 = arith.shrui %c210743414_i32, %extracted_31 : i32
        %276 = arith.shrsi %true_0, %false : i1
        %extracted_44 = tensor.extract %10[%c1, %c1] : tensor<6x4xi32>
        %277 = arith.divf %cst_3, %extracted_40 : f32
        %278 = arith.remf %cst, %extracted : f16
        %279 = arith.shrsi %c1695615139_i64, %c215688997_i64 : i64
        memref.store %true, %alloc_12[%c3, %c0, %c12] : memref<4x6x16xi1>
        %280 = math.rsqrt %cst : f16
        %281 = arith.ori %c1695615139_i64, %c1873068333_i64 : i64
        %282 = arith.addf %cst_3, %cst_3 : f32
        %283 = vector.insertelement %cst_3, %19[%86 : index] : vector<4xf32>
        %284 = vector.reduction <maxf>, %39 : vector<4xf32> into f32
        bufferization.dealloc_tensor %11 : tensor<4x16xf16>
        %extracted_45 = tensor.extract %6[%c3, %c5] : tensor<4x16xf16>
        %285 = arith.subi %c210743414_i32, %extracted_44 : i32
        %286 = vector.extract %45[2] : vector<4xf32>
        %287 = index.casts %132 : index to i32
        %288 = math.tan %8 : tensor<4x6x16xf16>
      }
      %255 = vector.extract_strided_slice %200 {offsets = [1], sizes = [4], strides = [1]} : vector<6xi1> to vector<4xi1>
      %256 = tensor.empty() : tensor<6xi32>
      %257 = vector.broadcast %c210743414_i32 : i32 to vector<6xi32>
      %258 = vector.gather %256[%c12] [%257], %161, %257 : tensor<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %259 = arith.divf %extracted_40, %cst_3 : f32
      %true_42 = index.bool.constant true
      %260 = vector.broadcast %extracted_40 : f32 to vector<6x4xf32>
      %261 = vector.fma %260, %210, %260 : vector<6x4xf32>
      %262 = index.sub %72, %rank_33
      %263 = index.divs %c8, %c8
      scf.yield
    }
    %221 = index.divs %c15, %119
    %222 = math.fpowi %6, %13 : tensor<4x16xf16>, tensor<4x16xi32>
    %223 = index.sub %c9, %104
    memref.alloca_scope  {
      %249 = index.mul %c2, %72
      %extracted_40 = tensor.extract %5[%c3, %c3] : tensor<6x4xi64>
      %c1_i16 = arith.constant 1 : i16
      %250 = vector.transfer_read %expanded_32[%c3, %116], %c1_i16 : tensor<6x1xi16>, vector<6xi16>
      %251 = math.expm1 %1 : tensor<4x6x16xf32>
      bufferization.dealloc_tensor %expanded : tensor<6x1xf32>
      %252 = index.sub %c8, %116
      %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %143, %cst_3 : vector<4xf32>, vector<4xf32> into f32
      memref.assume_alignment %133, 8 : memref<4x6x16xf32>
      %254 = math.atan2 %cst_2, %cst_1 : f16
      %255 = math.log %9 : tensor<6xf16>
      %256 = arith.addi %c215688997_i64, %c1695615139_i64 : i64
      %257 = vector.bitcast %45 : vector<4xf32> to vector<4xi32>
      %258 = arith.remf %cst_2, %cst_1 : f16
      %259 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 + 8) mod 16 - 64)>(%c6, %c4, %c10, %104)
      %260 = arith.remf %cst_2, %cst : f16
      memref.tensor_store %12, %alloc_7 : memref<6xi16>
      %261 = index.casts %rank_30 : index to i32
      %262 = arith.addf %cst_1, %cst_1 : f16
      %generated_41 = tensor.generate %c10 {
      ^bb0(%arg0: index):
        %274 = vector.insert %false, %174 [1] : i1 into vector<6xi1>
        %275 = math.powf %8, %112 : tensor<4x6x16xf16>
        %276 = math.expm1 %6 : tensor<4x16xf16>
        %277 = arith.addi %c248055758_i64, %c1873068333_i64 : i64
        tensor.yield %cst_3 : f32
      } : tensor<?xf32>
      %263 = math.ceil %8 : tensor<4x6x16xf16>
      %264 = index.castu %86 : index to i32
      %265 = math.log2 %14 : tensor<4x16xf32>
      %266 = arith.divsi %extracted_40, %c1873068333_i64 : i64
      memref.tensor_store %7, %alloc_8 : memref<4x6x16xi32>
      %267 = math.ctlz %true : i1
      %268 = bufferization.to_tensor %alloc_15 : memref<4x16xi64>
      %269 = index.divs %c6, %c5
      %270 = vector.transpose %49, [0] : vector<4xf32> to vector<4xf32>
      %271 = arith.divsi %false, %false : i1
      %272 = arith.addf %188, %188 : f32
      %273 = arith.minsi %c248055758_i64, %c248055758_i64 : i64
      vector.print %151 : vector<4x16xi16>
    }
    %224 = math.log2 %2 : tensor<4x16xf32>
    %225 = arith.remf %cst_3, %cst_3 : f32
    %226 = index.floordivs %c4, %30
    %227 = math.ceil %6 : tensor<4x16xf16>
    memref.alloca_scope  {
      %249 = vector.load %alloc_13[%c4] : memref<6xi32>, vector<4x16xi32>
      %inserted_40 = tensor.insert %c1657413137_i32 into %7[%c0, %c1, %c11] : tensor<4x6x16xi32>
      %250 = arith.floordivsi %c248055758_i64, %c435704414_i64 : i64
      %251 = math.powf %cst, %cst : f16
      %252 = arith.addf %cst_1, %cst : f16
      %253 = arith.divsi %c1_i32, %extracted_31 : i32
      %254 = vector.insertelement %188, %49[%c1 : index] : vector<4xf32>
      %expanded_41 = tensor.expand_shape %12 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
      scf.index_switch %221 
      case 1 {
        %true_45 = index.bool.constant true
        %276 = math.atan2 %cst_3, %cst_3 : f32
        %277 = arith.maxf %extracted, %cst_2 : f16
        %alloca_46 = memref.alloca() : memref<4x6x16xf32>
        affine.store %true_45, %alloc_16[%c7] : memref<6xi1>
        %278 = index.maxu %104, %221
        %279 = math.tan %11 : tensor<4x16xf16>
        %280 = arith.addf %cst_3, %cst_3 : f32
        %alloc_47 = memref.alloc() : memref<4x16xi1>
        %281 = tensor.empty() : tensor<6x16xi1>
        %282 = linalg.matmul ins(%4, %alloc_47 : tensor<6x4xi1>, memref<4x16xi1>) outs(%281 : tensor<6x16xi1>) -> tensor<6x16xi1>
        %283 = arith.ceildivsi %c1873068333_i64, %c215688997_i64 : i64
        memref.copy %alloc_20, %alloc_9 : memref<6xf32> to memref<6xf32>
        %284 = math.roundeven %112 : tensor<4x6x16xf16>
        %285 = vector.transpose %153, [1, 0] : vector<4x16xi32> to vector<16x4xi32>
        memref.assume_alignment %133, 16 : memref<4x6x16xf32>
        %286 = math.log2 %9 : tensor<6xf16>
        %287 = math.ctlz %false : i1
        scf.yield
      }
      case 2 {
        %276 = math.cos %20 : tensor<f32>
        %277 = vector.transpose %154, [0, 1] : vector<4x16xi16> to vector<4x16xi16>
        %278 = memref.atomic_rmw mins %c1_i32, %alloc_10[%c1, %c0] : (i32, memref<6x4xi32>) -> i32
        %279 = vector.transpose %39, [0] : vector<4xf32> to vector<4xf32>
        %c1791525571_i64 = arith.constant 1791525571 : i64
        %280 = memref.realloc %134 : memref<6xi32> to memref<4xi32>
        %281 = vector.transpose %154, [1, 0] : vector<4x16xi16> to vector<16x4xi16>
        %282 = math.rsqrt %cst_3 : f32
        %cst_45 = arith.constant 1.000000e+00 : f32
        %283 = vector.transfer_read %alloc_17[%209, %c6], %cst_45 : memref<4x16xf32>, vector<f32>
        %284 = arith.cmpi sgt, %c210743414_i32, %c1761041060_i32 : i32
        %extracted_46 = tensor.extract %15[%c3, %c0] : tensor<6x4xi1>
        %285 = arith.maxui %c248055758_i64, %c248055758_i64 : i64
        %c1_i32_47 = arith.constant 1 : i32
        %286 = vector.transfer_read %134[%c15], %c1_i32_47 : memref<6xi32>, vector<i32>
        %287 = vector.broadcast %188 : f32 to vector<4x4xf32>
        %288 = vector.outerproduct %45, %39, %287 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %289 = math.log2 %collapsed_35 : tensor<64xf16>
        %290 = arith.minf %cst_3, %cst_45 : f32
        scf.yield
      }
      case 3 {
        %276 = vector.extract %174[4] : vector<6xi1>
        %277 = arith.divsi %c248055758_i64, %c1695615139_i64 : i64
        %278 = vector.gather %13[%159, %127] [%153], %152, %249 : tensor<4x16xi32>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi32> into vector<4x16xi32>
        %279 = vector.load %alloc_4[%c0, %c3] : memref<4x16xf32>, vector<6x4xf32>
        %280 = vector.broadcast %188 : f32 to vector<4x6x16xf32>
        %281 = vector.fma %280, %280, %280 : vector<4x6x16xf32>
        %282 = index.casts %c9 : index to i32
        %283 = memref.realloc %alloc_13 : memref<6xi32> to memref<6xi32>
        %284 = math.ctlz %12 : tensor<6xi16>
        %285 = vector.broadcast %188 : f32 to vector<6xf32>
        %286 = vector.fma %285, %285, %285 : vector<6xf32>
        memref.assume_alignment %alloc_11, 4 : memref<4x16xi1>
        %287 = arith.divf %188, %188 : f32
        %288 = arith.muli %c1_i32, %extracted_31 : i32
        %289 = math.cttz %expanded_34 : tensor<6x4x1xi32>
        %290 = arith.ori %false, %false : i1
        %291 = vector.extract_strided_slice %213 {offsets = [9], sizes = [6], strides = [1]} : vector<16xi32> to vector<6xi32>
        %292 = vector.broadcast %188 : f32 to vector<6x4xf32>
        %293 = vector.fma %292, %292, %292 : vector<6x4xf32>
        scf.yield
      }
      default {
        %276 = tensor.empty() : tensor<4x4xi64>
        %277 = tensor.empty() : tensor<6x4xi64>
        %278 = linalg.matmul ins(%5, %276 : tensor<6x4xi64>, tensor<4x4xi64>) outs(%277 : tensor<6x4xi64>) -> tensor<6x4xi64>
        %279 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
        %280 = vector.outerproduct %39, %143, %279 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %281 = vector.load %alloc_17[%c0, %c15] : memref<4x16xf32>, vector<6x4xf32>
        %282 = math.floor %cst_2 : f16
        %283 = memref.realloc %alloc_16 : memref<6xi1> to memref<16xi1>
        %284 = arith.remui %false, %false : i1
        %285 = math.cttz %4 : tensor<6x4xi1>
        %286 = arith.ori %true_0, %true : i1
        %287 = arith.cmpi slt, %c215688997_i64, %c1695615139_i64 : i64
        %288 = index.casts %198 : index to i32
        %289 = math.exp2 %6 : tensor<4x16xf16>
        %290 = arith.ori %c248055758_i64, %c1695615139_i64 : i64
        %291 = arith.remui %c1657413137_i32, %c1761041060_i32 : i32
        %292 = arith.shrui %false, %true_0 : i1
        %293 = arith.remf %cst_2, %cst : f16
        %294 = math.log %cst_2 : f16
      }
      %255 = vector.broadcast %cst_3 : f32 to vector<6xf32>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %143, %210, %255 : vector<4xf32>, vector<6x4xf32> into vector<6xf32>
      %257 = vector.insertelement %cst_3, %39[%rank_30 : index] : vector<4xf32>
      %cast = tensor.cast %from_elements : tensor<6x4xf16> to tensor<?x?xf16>
      %expanded_42 = tensor.expand_shape %12 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
      %258 = memref.load %alloc_8[%c2, %c0, %c0] : memref<4x6x16xi32>
      %259 = math.cttz %expanded_34 : tensor<6x4x1xi32>
      %260 = memref.realloc %alloc_13 : memref<6xi32> to memref<16xi32>
      %261 = math.rsqrt %reduced : tensor<16xf16>
      %262 = arith.maxsi %c435704414_i64, %c435704414_i64 : i64
      %263 = memref.realloc %alloc_9 : memref<6xf32> to memref<6xf32>
      %264 = arith.divsi %c1_i32, %c1_i32 : i32
      %265 = affine.if affine_set<(d0, d1, d2) : (d0 floordiv 32 >= 0, (d2 + d0) mod 128 == 0, d0 + d2 ceildiv 32 >= 0)>(%c5, %c4, %c1) -> f32 {
        affine.store %c1761041060_i32, %alloc_13[%c8] : memref<6xi32>
        %cst_45 = arith.constant 1.000000e+00 : f32
        %cst_46 = arith.constant 0.000000e+00 : f32
        %276 = vector.transfer_read %alloc_9[%46], %cst_46 : memref<6xf32>, vector<f32>
        %277 = vector.load %141[%c3, %c1] : memref<6x4xi32>, vector<4x16xi32>
        %278 = index.floordivs %91, %159
        %279 = vector.bitcast %177 : vector<1xf32> to vector<1xf32>
        %false_47 = arith.constant false
        %false_48 = arith.constant false
        %280 = vector.transfer_read %24[%c4], %false_48 : tensor<6xi1>, vector<i1>
        %281 = math.exp %reduced : tensor<16xf16>
        %282 = math.log2 %cst_1 : f16
        affine.yield %cst_45 : f32
      } else {
        %276 = arith.subi %c210743414_i32, %c1761041060_i32 : i32
        %277 = index.mul %c0, %223
        %278 = arith.mulf %cst, %cst_1 : f16
        affine.store %true, %alloc_16[%c4] : memref<6xi1>
        %279 = math.log10 %8 : tensor<4x6x16xf16>
        %cast_45 = tensor.cast %expanded_28 : tensor<4x16x1xi32> to tensor<?x?x?xi32>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d1 + 1), d1 + 1)>(%119, %c2, %c3, %c1)
        %281 = arith.remf %extracted, %cst_1 : f16
        affine.yield %cst_3 : f32
      }
      %inserted_43 = tensor.insert %cst_3 into %0[%c0] : tensor<6xf32>
      %alloc_44 = memref.alloc() : memref<6x4xf32>
      %266 = vector.multi_reduction <maxui>, %153, %213 [0] : vector<4x16xi32> to vector<16xi32>
      %267 = math.rsqrt %18 : tensor<16xf16>
      %268 = affine.apply affine_map<(d0, d1, d2) -> (d1 * -128 - 1)>(%226, %132, %209)
      %269 = math.roundeven %from_elements : tensor<6x4xf16>
      %270 = math.powf %cst_2, %cst : f16
      %271 = arith.maxsi %c1761041060_i32, %c210743414_i32 : i32
      %272 = arith.divf %cst_3, %cst_3 : f32
      %273 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
      %274 = vector.outerproduct %49, %143, %273 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
      %275 = index.mul %c13, %rank_33
    }
    %228 = vector.multi_reduction <and>, %161, %false [0] : vector<6xi1> to i1
    %229 = vector.insertelement %c1761041060_i32, %213[%30 : index] : vector<16xi32>
    %230 = vector.create_mask %c4, %c11 : vector<6x4xi1>
    %231 = arith.shrui %true_0, %228 : i1
    %232 = vector.gather %alloc_16[%rank_33] [%153], %152, %152 : memref<6xi1>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi1> into vector<4x16xi1>
    %233 = tensor.empty(%191, %203) : tensor<4x?x?xi32>
    %alloc_37 = memref.alloc() : memref<6x4xi16>
    %234 = arith.subi %c1761041060_i32, %extracted_31 : i32
    %235 = bufferization.clone %alloc_9 : memref<6xf32> to memref<6xf32>
    %236 = index.mul %rank_33, %c4
    %237 = index.ceildivs %86, %c5
    %238 = tensor.empty() : tensor<4x16xf32>
    %mapped_38 = linalg.map ins(%alloc_4 : memref<4x16xf32>) outs(%238 : tensor<4x16xf32>)
      (%in: f32) {
        %inserted_40 = tensor.insert %c7543_i16 into %12[%c3] : tensor<6xi16>
        %249 = scf.while (%arg0 = %47) : (memref<6xf32>) -> memref<6xf32> {
          %279 = index.divs %c11, %rank_30
          %280 = arith.ceildivsi %c7543_i16, %c7543_i16 : i16
          %281 = vector.extract %196[2] : vector<6x4xf16>
          %extracted_45 = tensor.extract %9[%c2] : tensor<6xf16>
          %282 = vector.bitcast %232 : vector<4x16xi1> to vector<4x16xi1>
          %283 = math.cttz %7 : tensor<4x6x16xi32>
          %284 = arith.ceildivsi %c215688997_i64, %c435704414_i64 : i64
          %285 = arith.remf %cst_3, %188 : f32
          scf.condition(%true_0) %alloc_20 : memref<6xf32>
        } do {
        ^bb0(%arg0: memref<6xf32>):
          %279 = math.ceil %2 : tensor<4x16xf32>
          %280 = arith.shrsi %c1657413137_i32, %c1761041060_i32 : i32
          %281 = vector.insertelement %228, %161[%237 : index] : vector<6xi1>
          %282 = memref.atomic_rmw minf %188, %alloc_20[%c4] : (f32, memref<6xf32>) -> f32
          %283 = vector.extract %160[1] : vector<6xi1>
          %extracted_45 = tensor.extract %12[%c0] : tensor<6xi16>
          %alloca_46 = memref.alloca() : memref<6x4xf16>
          %284 = vector.broadcast %in : f32 to vector<6xf32>
          %285 = vector.maskedload %alloc_9[%c1], %161, %284 : memref<6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
          %286 = arith.maxsi %c7543_i16, %c7543_i16 : i16
          %true_47 = index.bool.constant true
          %287 = vector.shuffle %210, %210 [2, 3, 4, 5, 7, 8] : vector<6x4xf32>, vector<6x4xf32>
          %288 = arith.divsi %extracted_45, %extracted_45 : i16
          vector.print %196 : vector<6x4xf16>
          %289 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 + d3 mod 4) mod 2)>(%127, %203, %86, %164)
          %290 = arith.divsi %c1695615139_i64, %c215688997_i64 : i64
          %291 = arith.remf %cst_2, %extracted : f16
          scf.yield %235 : memref<6xf32>
        }
        %250 = memref.load %23[%c0, %c3, %c0] : memref<4x6x16xi1>
        %251 = math.floor %20 : tensor<f32>
        %252 = arith.mulf %cst_3, %in : f32
        %253 = index.maxs %c0, %220
        %extracted_41 = tensor.extract %7[%c1, %c2, %c10] : tensor<4x6x16xi32>
        %254 = math.log %extracted : f16
        %255 = memref.alloca_scope  -> (i64) {
          %279 = arith.mulf %in, %cst_3 : f32
          %280 = vector.extract %210[4] : vector<6x4xf32>
          %281 = arith.maxsi %c215688997_i64, %c435704414_i64 : i64
          %282 = vector.broadcast %c7543_i16 : i16 to vector<16xi16>
          %283 = vector.broadcast %true_0 : i1 to vector<16xi1>
          %284 = vector.maskedload %208[%c3, %c5, %c4], %283, %282 : memref<4x6x16xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
          %285 = vector.bitcast %280 : vector<4xf32> to vector<4xi32>
          %286 = vector.broadcast %188 : f32 to vector<4x6x16xf32>
          %287 = vector.fma %286, %286, %286 : vector<4x6x16xf32>
          %288 = math.log10 %cst_1 : f16
          %289 = arith.divf %cst_1, %cst_1 : f16
          %290 = arith.cmpf uno, %cst_3, %cst_3 : f32
          %291 = vector.broadcast %c7543_i16 : i16 to vector<6xi16>
          %292 = vector.broadcast %extracted_41 : i32 to vector<6xi32>
          %293 = vector.gather %208[%104, %c7, %c2] [%292], %161, %291 : memref<4x6x16xi16>, vector<6xi32>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %inserted_45 = tensor.insert %cst into %6[%c2, %c10] : tensor<4x16xf16>
          %294 = math.cos %11 : tensor<4x16xf16>
          %295 = bufferization.to_memref %14 : memref<4x16xf32>
          %296 = arith.ori %c248055758_i64, %c1695615139_i64 : i64
          %297 = math.absf %9 : tensor<6xf16>
          %298 = index.casts %30 : index to i32
          %299 = math.log2 %in : f32
          %300 = memref.realloc %134 : memref<6xi32> to memref<16xi32>
          %301 = arith.cmpf true, %cst_3, %188 : f32
          %302 = math.ipowi %extracted_41, %c1761041060_i32 : i32
          %303 = math.log2 %2 : tensor<4x16xf32>
          %304 = vector.transpose %232, [0, 1] : vector<4x16xi1> to vector<4x16xi1>
          memref.assume_alignment %23, 1 : memref<4x6x16xi1>
          %305 = vector.transpose %284, [0] : vector<16xi16> to vector<16xi16>
          %306 = arith.divf %extracted, %cst : f16
          %307 = math.floor %from_elements : tensor<6x4xf16>
          %inserted_46 = tensor.insert %c210743414_i32 into %expanded_28[%c1, %c4, %c0] : tensor<4x16x1xi32>
          %alloc_47 = memref.alloc() : memref<4x6x16xi64>
          memref.tensor_store %3, %alloc_47 : memref<4x6x16xi64>
          %308 = arith.shrui %extracted_41, %c1761041060_i32 : i32
          %309 = arith.minsi %228, %true_0 : i1
          %310 = arith.divf %cst_1, %extracted : f16
          %311 = arith.maxsi %c7543_i16, %c7543_i16 : i16
          memref.alloca_scope.return %c435704414_i64 : i64
        }
        %256 = arith.ceildivsi %true, %false : i1
        %257 = memref.atomic_rmw assign %cst_2, %alloc_14[%c3, %c2] : (f16, memref<6x4xf16>) -> f16
        %extracted_42 = tensor.extract %6[%c2, %c9] : tensor<4x16xf16>
        %258 = arith.subi %c1657413137_i32, %extracted_41 : i32
        %259 = affine.if affine_set<(d0, d1) : (d1 floordiv 4 == 0, (d1 - 4) * 2 == 0, (d1 - 4) * 2 == 0)>(%c3, %c7) -> i16 {
          %279 = arith.divsi %228, %228 : i1
          %inserted_45 = tensor.insert %true into %24[%c5] : tensor<6xi1>
          %alloca_46 = memref.alloca() : memref<6xi1>
          %280 = math.absf %14 : tensor<4x16xf32>
          %281 = arith.minf %in, %188 : f32
          %282 = vector.multi_reduction <maxf>, %49, %39 [] : vector<4xf32> to vector<4xf32>
          %rank_47 = tensor.rank %expanded_34 : tensor<6x4x1xi32>
          %283 = arith.addf %in, %cst_3 : f32
          affine.yield %c7543_i16 : i16
        } else {
          %279 = vector.broadcast %c7543_i16 : i16 to vector<16xi16>
          %280 = vector.insert %279, %154 [2] : vector<16xi16> into vector<4x16xi16>
          %c0_i32_45 = arith.constant 0 : i32
          %281 = vector.transfer_read %10[%221, %253], %c0_i32_45 : tensor<6x4xi32>, vector<i32>
          %282 = index.casts %203 : index to i32
          memref.assume_alignment %alloc_17, 1 : memref<4x16xf32>
          %283 = bufferization.clone %alloc_6 : memref<4x16xi32> to memref<4x16xi32>
          %284 = arith.cmpi ugt, %true_0, %false : i1
          %285 = arith.remui %c1657413137_i32, %c0_i32_45 : i32
          affine.store %228, %alloc_16[%c7] : memref<6xi1>
          affine.yield %c7543_i16 : i16
        }
        %260 = tensor.empty() : tensor<6x4xf32>
        %261 = vector.broadcast %188 : f32 to vector<6xf32>
        %262 = vector.broadcast %c1761041060_i32 : i32 to vector<6xi32>
        %263 = vector.gather %260[%c11, %236] [%262], %161, %261 : tensor<6x4xf32>, vector<6xi32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %inserted_43 = tensor.insert %cst_1 into %18[%c4] : tensor<16xf16>
        %264 = vector.create_mask %72 : vector<6xi1>
        %265 = arith.remsi %true_0, %true : i1
        %266 = arith.negf %extracted_42 : f16
        %267 = tensor.empty() : tensor<16x4xi32>
        %268 = tensor.empty() : tensor<4x4xi32>
        %269 = linalg.matmul ins(%13, %267 : tensor<4x16xi32>, tensor<16x4xi32>) outs(%268 : tensor<4x4xi32>) -> tensor<4x4xi32>
        %270 = math.fma %9, %9, %9 : tensor<6xf16>
        %271 = index.casts %c10 : index to i32
        memref.store %in, %alloc_17[%c2, %c6] : memref<4x16xf32>
        %272 = arith.shrui %true_0, %false : i1
        bufferization.dealloc_tensor %1 : tensor<4x6x16xf32>
        %273 = arith.ori %extracted_41, %c1657413137_i32 : i32
        %274 = math.log1p %extracted_42 : f16
        affine.store %extracted, %alloc_14[%c3, %c12] : memref<6x4xf16>
        %275 = tensor.empty(%253) : tensor<?xi32>
        %276 = arith.divf %extracted, %cst : f16
        %277 = math.absf %cst_2 : f16
        %278 = arith.muli %extracted_31, %c210743414_i32 : i32
        %cst_44 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_44 : f32
      }
    %239 = arith.addi %228, %true : i1
    %240 = affine.apply affine_map<(d0, d1) -> (-d0)>(%c1, %c8)
    %241 = tensor.empty() : tensor<4x6x16xi1>
    %242 = index.maxu %116, %c1
    %243 = index.castu %228 : i1 to index
    %244 = tensor.empty() : tensor<6xf16>
    %245 = linalg.copy ins(%9 : tensor<6xf16>) outs(%244 : tensor<6xf16>) -> tensor<6xf16>
    %246 = tensor.empty() : tensor<16x4xf32>
    %transposed = linalg.transpose ins(%238 : tensor<4x16xf32>) outs(%246 : tensor<16x4xf32>) permutation = [1, 0] 
    %247 = tensor.empty() : tensor<i32>
    %reduced_39 = linalg.reduce ins(%134 : memref<6xi32>) outs(%247 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %249 = math.floor %8 : tensor<4x6x16xf16>
        %250 = vector.multi_reduction <minsi>, %160, %true_0 [0] : vector<6xi1> to i1
        %251 = affine.if affine_set<(d0) : (d0 + 2 >= 0, ((-(d0 * 4 + 8)) mod 128) * 32 + d0 == 0, -(d0 floordiv 64) + (d0 + 2) * 64 >= 0, d0 >= 0)>(%c14) -> i16 {
          %c0_i32_41 = arith.constant 0 : i32
          %261 = vector.transfer_read %alloc_6[%c12, %221], %c0_i32_41 : memref<4x16xi32>, vector<16xi32>
          %262 = math.rsqrt %188 : f32
          %alloc_42 = memref.alloc() : memref<4x6x16xi16>
          memref.copy %208, %alloc_42 : memref<4x6x16xi16> to memref<4x6x16xi16>
          %263 = vector.broadcast %242 : index to vector<6xindex>
          %264 = vector.broadcast %c1761041060_i32 : i32 to vector<6xi32>
          vector.scatter %alloc_10[%c3, %c0] [%263], %174, %264 : memref<6x4xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
          %265 = index.ceildivs %164, %113
          %266 = math.expm1 %from_elements : tensor<6x4xf16>
          %267 = bufferization.to_tensor %alloc_9 : memref<6xf32>
          %268 = math.exp %18 : tensor<16xf16>
          affine.yield %c7543_i16 : i16
        } else {
          %261 = vector.bitcast %153 : vector<4x16xi32> to vector<4x16xi32>
          %c1_i32_41 = arith.constant 1 : i32
          %c0_i32_42 = arith.constant 0 : i32
          %262 = vector.transfer_read %expanded_34[%c4, %86, %57], %c0_i32_42 : tensor<6x4x1xi32>, vector<i32>
          %cast = tensor.cast %246 : tensor<16x4xf32> to tensor<?x?xf32>
          %expanded_43 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<4x6x16xi64> into tensor<4x6x16x1xi64>
          %263 = vector.insertelement %cst_3, %39[%c11 : index] : vector<4xf32>
          %264 = vector.broadcast %188 : f32 to vector<6xf32>
          %265 = vector.maskedload %alloc_17[%c0, %c1], %160, %264 : memref<4x16xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
          affine.store %true, %128[%c7, %c13, %c6] : memref<4x6x16xi1>
          %266 = math.log2 %transposed : tensor<16x4xf32>
          affine.yield %c7543_i16 : i16
        }
        %252 = vector.broadcast %init : i32 to vector<4xi32>
        %253 = vector.broadcast %true_0 : i1 to vector<4xi1>
        %254 = vector.maskedload %alloc_13[%c0], %253, %252 : memref<6xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %255 = math.tanh %245 : tensor<6xf16>
        %256 = tensor.empty() : tensor<16x4xf16>
        %257 = tensor.empty() : tensor<4x4xf16>
        %258 = linalg.matmul ins(%6, %256 : tensor<4x16xf16>, tensor<16x4xf16>) outs(%257 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %259 = arith.maxui %228, %true : i1
        %260 = arith.remf %cst_2, %cst_2 : f16
        %c1_i32_40 = arith.constant 1 : i32
        linalg.yield %c1_i32_40 : i32
      }
    scf.parallel (%arg0) = (%132) to (%c10) step (%c3) {
      %249 = arith.mulf %extracted, %cst_1 : f16
      %250 = vector.reduction <minf>, %49 : vector<4xf32> into f32
      %251 = math.cttz %12 : tensor<6xi16>
      %252 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6 : tensor<4x16xf16>) outs(%8 : tensor<4x6x16xf16>) {
      ^bb0(%in: f16, %out: f16):
        affine.store %c1657413137_i32, %alloc_13[%c8] : memref<6xi32>
        %267 = tensor.empty() : tensor<4x16xi64>
        %268 = vector.broadcast %c1695615139_i64 : i64 to vector<6xi64>
        %269 = vector.broadcast %c1761041060_i32 : i32 to vector<6xi32>
        %270 = vector.gather %267[%rank, %104] [%269], %174, %268 : tensor<4x16xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %271 = vector.gather %alloc_7[%c11] [%153], %232, %151 : memref<6xi16>, vector<4x16xi32>, vector<4x16xi1>, vector<4x16xi16> into vector<4x16xi16>
        %272 = index.add %164, %30
        %273 = math.exp %extracted : f16
        %274 = arith.floordivsi %c210743414_i32, %c1657413137_i32 : i32
        %275 = bufferization.clone %alloc_16 : memref<6xi1> to memref<6xi1>
        %276 = arith.subi %c248055758_i64, %c435704414_i64 : i64
        %277 = math.atan2 %244, %245 : tensor<6xf16>
        %278 = math.absf %2 : tensor<4x16xf32>
        affine.store %cst_3, %alloc_4[%c0, %c12] : memref<4x16xf32>
        %false_41 = index.bool.constant false
        %279 = math.ctpop %c1695615139_i64 : i64
        %280 = index.maxu %c11, %c2
        %281 = index.mul %rank_33, %arg0
        %282 = index.sub %c12, %240
        %283 = math.atan2 %cst, %out : f16
        %alloc_42 = memref.alloc() : memref<6x4xi64>
        %alloc_43 = memref.alloc() : memref<6xf16>
        memref.tensor_store %244, %alloc_43 : memref<6xf16>
        bufferization.dealloc_tensor %112 : tensor<4x6x16xf16>
        %from_elements_44 = tensor.from_elements %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c248055758_i64, %c1695615139_i64, %c1873068333_i64, %c248055758_i64, %c248055758_i64, %c435704414_i64, %c1873068333_i64, %c248055758_i64, %c1873068333_i64, %c1695615139_i64, %c1695615139_i64, %c248055758_i64, %c215688997_i64, %c435704414_i64, %c435704414_i64, %c435704414_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c248055758_i64, %c1695615139_i64, %c1695615139_i64, %c248055758_i64, %c248055758_i64, %c435704414_i64, %c215688997_i64, %c215688997_i64, %c215688997_i64, %c248055758_i64, %c435704414_i64, %c1695615139_i64, %c1695615139_i64, %c1695615139_i64, %c435704414_i64, %c1873068333_i64, %c435704414_i64, %c435704414_i64, %c1695615139_i64, %c1873068333_i64, %c248055758_i64, %c215688997_i64, %c1873068333_i64, %c1695615139_i64, %c1695615139_i64, %c435704414_i64, %c1695615139_i64, %c1695615139_i64, %c248055758_i64, %c215688997_i64, %c1695615139_i64, %c215688997_i64, %c215688997_i64, %c215688997_i64, %c435704414_i64, %c1695615139_i64, %c215688997_i64, %c248055758_i64, %c248055758_i64, %c1873068333_i64, %c435704414_i64 : tensor<4x16xi64>
        %284 = index.ceildivu %c3, %282
        %285 = memref.realloc %alloc_20 : memref<6xf32> to memref<4xf32>
        %286 = vector.bitcast %153 : vector<4x16xi32> to vector<4x16xi32>
        %287 = arith.cmpi sgt, %true_0, %true : i1
        %288 = math.ipowi %c1_i32, %extracted_31 : i32
        %289 = arith.remf %cst_2, %extracted : f16
        %290 = arith.negf %cst_3 : f32
        %291 = math.roundeven %9 : tensor<6xf16>
        %expanded_45 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<4x16xf32> into tensor<4x16x1xf32>
        %292 = tensor.empty() : tensor<6x4xi16>
        %293 = vector.broadcast %c7543_i16 : i16 to vector<6x4xi16>
        %294 = vector.broadcast %c1761041060_i32 : i32 to vector<6x4xi32>
        %295 = vector.gather %292[%272, %164] [%294], %230, %293 : tensor<6x4xi16>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xi16> into vector<6x4xi16>
        %296 = affine.max affine_map<(d0) -> ((d0 * 2 + d0 ceildiv 32) floordiv 64)>(%91)
        linalg.yield %extracted : f16
      } -> tensor<4x6x16xf16>
      %alloc_40 = memref.alloc() : memref<4x16xf16>
      memref.tensor_store %6, %alloc_40 : memref<4x16xf16>
      %253 = math.log2 %11 : tensor<4x16xf16>
      %254 = bufferization.to_memref %244 : memref<6xf16>
      %255 = vector.broadcast %true_0 : i1 to vector<4xi1>
      %256 = vector.insert %255, %230 [3] : vector<4xi1> into vector<6x4xi1>
      %257 = arith.maxsi %c1873068333_i64, %c215688997_i64 : i64
      %258 = vector.reduction <minf>, %45 : vector<4xf32> into f32
      %259 = arith.remf %cst_1, %cst : f16
      %260 = math.exp %cst : f16
      %261 = tensor.empty() : tensor<6xi32>
      %262 = vector.broadcast %c1657413137_i32 : i32 to vector<6x4xi32>
      %263 = vector.gather %261[%91] [%262], %230, %262 : tensor<6xi32>, vector<6x4xi32>, vector<6x4xi1>, vector<6x4xi32> into vector<6x4xi32>
      %264 = scf.index_switch %164 -> i64 
      case 1 {
        %267 = math.powf %6, %11 : tensor<4x16xf16>
        %from_elements_41 = tensor.from_elements %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16, %c7543_i16 : tensor<4x6x16xi16>
        %268 = vector.broadcast %cst_3 : f32 to vector<6xf32>
        %dest, %accumulated_value = vector.scan <add>, %210, %268 {inclusive = false, reduction_dim = 1 : i64} : vector<6x4xf32>, vector<6xf32>
        %269 = arith.xori %false, %true : i1
        %270 = arith.ori %true_0, %228 : i1
        %271 = arith.maxui %c1695615139_i64, %c1873068333_i64 : i64
        %272 = math.powf %collapsed_35, %collapsed_35 : tensor<64xf16>
        %273 = vector.broadcast %c14 : index to vector<6xindex>
        %274 = vector.broadcast %cst_3 : f32 to vector<6xf32>
        vector.scatter %alloc_9[%c0] [%273], %200, %274 : memref<6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %275 = arith.divf %cst_3, %188 : f32
        %276 = bufferization.to_tensor %208 : memref<4x6x16xi16>
        %collapsed_42 = tensor.collapse_shape %from_elements_41 [[0, 1], [2]] : tensor<4x6x16xi16> into tensor<24x16xi16>
        %false_43 = arith.constant false
        %277 = vector.splat %203 : vector<4x6x16xindex>
        %278 = vector.flat_transpose %255 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %279 = vector.insert %255, %230 [0] : vector<4xi1> into vector<6x4xi1>
        %280 = math.cos %14 : tensor<4x16xf32>
        scf.yield %c1873068333_i64 : i64
      }
      default {
        %267 = index.sub %c0, %119
        %268 = math.ctlz %7 : tensor<4x6x16xi32>
        %269 = arith.maxui %c1_i32, %c1761041060_i32 : i32
        %rank_41 = tensor.rank %14 : tensor<4x16xf32>
        %270 = math.floor %cst : f16
        %271 = math.cos %0 : tensor<6xf32>
        %272 = index.mul %240, %c12
        %expanded_42 = tensor.expand_shape %24 [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
        %273 = vector.shuffle %143, %45 [4] : vector<4xf32>, vector<4xf32>
        %274 = memref.load %alloc_11[%c3, %c7] : memref<4x16xi1>
        %275 = math.cos %from_elements : tensor<6x4xf16>
        %276 = arith.divsi %true_0, %false : i1
        %277 = bufferization.to_memref %21 : memref<f32>
        %278 = index.mul %c2, %226
        %from_elements_43 = tensor.from_elements %extracted_31, %c1_i32, %c1_i32, %c210743414_i32, %c210743414_i32, %c1761041060_i32, %c1657413137_i32, %c1761041060_i32, %c1657413137_i32, %extracted_31, %c1761041060_i32, %c1_i32, %c1761041060_i32, %extracted_31, %c1657413137_i32, %c210743414_i32, %c1761041060_i32, %c210743414_i32, %c1_i32, %c1657413137_i32, %c210743414_i32, %extracted_31, %c1_i32, %c1_i32, %c1_i32, %c1761041060_i32, %c1_i32, %c1657413137_i32, %c1_i32, %c1657413137_i32, %c210743414_i32, %extracted_31, %c1_i32, %extracted_31, %extracted_31, %c210743414_i32, %c210743414_i32, %c210743414_i32, %c1761041060_i32, %c1761041060_i32, %c1_i32, %c1_i32, %c1657413137_i32, %c210743414_i32, %c210743414_i32, %c1_i32, %extracted_31, %c1657413137_i32, %c1657413137_i32, %c210743414_i32, %extracted_31, %c1_i32, %c210743414_i32, %extracted_31, %c1761041060_i32, %c1761041060_i32, %extracted_31, %c1_i32, %c1657413137_i32, %c1657413137_i32, %c210743414_i32, %c1_i32, %c1657413137_i32, %c1657413137_i32 : tensor<4x16xi32>
        %279 = vector.broadcast %cst_3 : f32 to vector<6xf32>
        %280 = vector.fma %279, %279, %279 : vector<6xf32>
        scf.yield %c215688997_i64 : i64
      }
      %265 = bufferization.to_memref %expanded : memref<6x1xf32>
      %266 = arith.subi %false, %true_0 : i1
      scf.yield
    }
    %248 = affine.vector_load %alloc_18[%236, %c15, %164] : memref<4x6x16xf32>, vector<4xf32>
    affine.vector_store %39, %133[%240, %243, %237] : memref<4x6x16xf32>, vector<4xf32>
    vector.print %19 : vector<4xf32>
    vector.print %39 : vector<4xf32>
    vector.print %45 : vector<4xf32>
    vector.print %49 : vector<4xf32>
    vector.print %143 : vector<4xf32>
    vector.print %151 : vector<4x16xi16>
    vector.print %152 : vector<4x16xi1>
    vector.print %153 : vector<4x16xi32>
    vector.print %154 : vector<4x16xi16>
    vector.print %160 : vector<6xi1>
    vector.print %161 : vector<6xi1>
    vector.print %174 : vector<6xi1>
    vector.print %177 : vector<1xf32>
    vector.print %196 : vector<6x4xf16>
    vector.print %200 : vector<6xi1>
    vector.print %210 : vector<6x4xf32>
    vector.print %213 : vector<16xi32>
    vector.print %230 : vector<6x4xi1>
    vector.print %232 : vector<4x16xi1>
    vector.print %248 : vector<4xf32>
    vector.print %cst : f16
    vector.print %c1695615139_i64 : i64
    vector.print %c248055758_i64 : i64
    vector.print %c1873068333_i64 : i64
    vector.print %c1657413137_i32 : i32
    vector.print %c1761041060_i32 : i32
    vector.print %c215688997_i64 : i64
    vector.print %true : i1
    vector.print %c435704414_i64 : i64
    vector.print %true_0 : i1
    vector.print %false : i1
    vector.print %c7543_i16 : i16
    vector.print %c210743414_i32 : i32
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %extracted : f16
    vector.print %extracted_31 : i32
    vector.print %c1_i32 : i32
    vector.print %188 : f32
    vector.print %228 : i1
    return
  }
}
