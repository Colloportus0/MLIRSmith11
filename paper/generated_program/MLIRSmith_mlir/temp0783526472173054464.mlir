module {
  func.func @func1(%arg0: vector<10xi1>, %arg1: index, %arg2: index) {
    %c-4321_i16 = arith.constant -4321 : i16
    %c1749512412_i64 = arith.constant 1749512412 : i64
    %c20035_i16 = arith.constant 20035 : i16
    %c1329909866_i64 = arith.constant 1329909866 : i64
    %true = arith.constant true
    %cst = arith.constant 1.66920832E+9 : f32
    %c1051325167_i32 = arith.constant 1051325167 : i32
    %c1570006231_i32 = arith.constant 1570006231 : i32
    %c69732229_i32 = arith.constant 69732229 : i32
    %true_0 = arith.constant true
    %cst_1 = arith.constant 3.523200e+04 : f16
    %c541138043_i64 = arith.constant 541138043 : i64
    %false = arith.constant false
    %c494598180_i64 = arith.constant 494598180 : i64
    %c1237412335_i32 = arith.constant 1237412335 : i32
    %c1513705051_i32 = arith.constant 1513705051 : i32
    %0 = tensor.empty() : tensor<3x3xi64>
    %1 = tensor.empty() : tensor<15x8xi64>
    %2 = tensor.empty() : tensor<15x8xf32>
    %3 = tensor.empty() : tensor<3x3xi32>
    %4 = tensor.empty() : tensor<10xf16>
    %5 = tensor.empty() : tensor<15xf32>
    %6 = tensor.empty() : tensor<3x3xi16>
    %7 = tensor.empty() : tensor<15xi1>
    %8 = tensor.empty() : tensor<10xf32>
    %9 = tensor.empty() : tensor<3x3xi16>
    %10 = tensor.empty() : tensor<10xi1>
    %11 = tensor.empty() : tensor<15xi32>
    %12 = tensor.empty() : tensor<15x8xi1>
    %13 = tensor.empty() : tensor<3x3xi64>
    %14 = tensor.empty() : tensor<15xf32>
    %15 = tensor.empty() : tensor<3x3xf16>
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
    %alloc = memref.alloc() : memref<10xf32>
    %alloc_2 = memref.alloc() : memref<10xi1>
    %alloc_3 = memref.alloc() : memref<3x3xf16>
    %alloc_4 = memref.alloc() : memref<3x3xi64>
    %alloc_5 = memref.alloc() : memref<15xf16>
    %alloc_6 = memref.alloc() : memref<15x8xi1>
    %alloc_7 = memref.alloc() : memref<15xf16>
    %alloc_8 = memref.alloc() : memref<3x3xf16>
    %alloc_9 = memref.alloc() : memref<3x3xi16>
    %alloc_10 = memref.alloc() : memref<15x8xi64>
    %alloc_11 = memref.alloc() : memref<3x3xi16>
    %alloc_12 = memref.alloc() : memref<10xi32>
    %alloc_13 = memref.alloc() : memref<3x3xi1>
    %alloc_14 = memref.alloc() : memref<15x8xi32>
    %alloc_15 = memref.alloc() : memref<10xf32>
    %alloc_16 = memref.alloc() : memref<3x3xf32>
    %16 = tensor.empty() : tensor<3x3xi32>
    %17 = linalg.copy ins(%3 : tensor<3x3xi32>) outs(%16 : tensor<3x3xi32>) -> tensor<3x3xi32>
    %18 = tensor.empty() : tensor<3x3xi16>
    %transposed = linalg.transpose ins(%9 : tensor<3x3xi16>) outs(%18 : tensor<3x3xi16>) permutation = [1, 0] 
    %alloc_17 = memref.alloc() : memref<f32>
    linalg.reduce ins(%8 : tensor<10xf32>) outs(%alloc_17 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %269 = memref.load %alloc_12[%c5] : memref<10xi32>
        %c0_i16 = arith.constant 0 : i16
        %270 = vector.transfer_read %18[%c15, %c2], %c0_i16 : tensor<3x3xi16>, vector<i16>
        %271 = arith.minsi %c20035_i16, %c-4321_i16 : i16
        %272 = vector.broadcast %init : f32 to vector<8xf32>
        %273 = vector.broadcast %false : i1 to vector<8xi1>
        %274 = vector.maskedload %alloc_16[%c2, %c0], %273, %272 : memref<3x3xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %275 = arith.minsi %c1513705051_i32, %c1570006231_i32 : i32
        %276 = memref.realloc %alloc_2 : memref<10xi1> to memref<10xi1>
        %extracted_39 = tensor.extract %9[%c1, %c0] : tensor<3x3xi16>
        %277 = arith.shrsi %c1329909866_i64, %c1329909866_i64 : i64
        %cst_40 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_40 : f32
      }
    scf.parallel (%arg3) = (%c10) to (%c10) step (%c1) {
      %alloc_39 = memref.alloc() : memref<3x3xf16>
      %c0_i32_40 = arith.constant 0 : i32
      %269 = vector.transfer_read %11[%c12], %c0_i32_40 : tensor<15xi32>, vector<i32>
      %270 = vector.broadcast %c1513705051_i32 : i32 to vector<i32>
      %271 = vector.insertelement %c0_i32_40, %270[] : vector<i32>
      %272 = arith.shli %c1513705051_i32, %c1237412335_i32 : i32
      %273 = affine.for %arg4 = 0 to 94 iter_args(%arg5 = %9) -> (tensor<3x3xi16>) {
        affine.yield %9 : tensor<3x3xi16>
      }
      %274 = math.powf %cst_1, %cst_1 : f16
      %275 = index.casts %true_0 : i1 to index
      %276 = arith.addi %c541138043_i64, %c1749512412_i64 : i64
      %277 = index.castu %false : i1 to index
      %278 = vector.broadcast %true : i1 to vector<15xi1>
      %279 = vector.maskedload %alloc_2[%c5], %278, %278 : memref<10xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      %280 = index.castu %false : i1 to index
      %281 = affine.apply affine_map<(d0, d1) -> (d0 mod 16)>(%277, %c10)
      %282 = math.round %2 : tensor<15x8xf32>
      %283 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 64) ceildiv 16 + 32)>(%arg3, %277)
      %284 = arith.muli %c1237412335_i32, %c1570006231_i32 : i32
      %285 = arith.remsi %c1513705051_i32, %c0_i32_40 : i32
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c2] : memref<10xf32>, vector<8xf32>
    affine.vector_store %19, %alloc_17[] : memref<f32>, vector<8xf32>
    %alloc_18 = memref.alloc() : memref<10xi1>
    %20 = tensor.empty() : tensor<i1>
    %21 = linalg.dot ins(%10, %alloc_18 : tensor<10xi1>, memref<10xi1>) outs(%20 : tensor<i1>) -> tensor<i1>
    %22 = vector.broadcast %c1237412335_i32 : i32 to vector<i32>
    %23 = vector.transfer_write %22, %11[%c8] : vector<i32>, tensor<15xi32>
    %24 = index.sub %c8, %c5
    scf.index_switch %c12 
    case 1 {
      %269 = memref.load %alloc_4[%c0, %c1] : memref<3x3xi64>
      %270 = vector.multi_reduction <minf>, %19, %cst [0] : vector<8xf32> to f32
      %271 = math.atan %cst : f32
      %272 = index.ceildivs %24, %c14
      %273 = affine.if affine_set<(d0) : (-d0 - (d0 - 1) ceildiv 4 == 0, d0 + 16 >= 0)>(%c12) -> i64 {
        %288 = arith.minsi %false, %false : i1
        %289 = bufferization.clone %alloc_17 : memref<f32> to memref<f32>
        memref.copy %alloc_2, %alloc_18 : memref<10xi1> to memref<10xi1>
        %290 = arith.muli %c1237412335_i32, %c69732229_i32 : i32
        %291 = index.casts %c1749512412_i64 : i64 to index
        %292 = affine.apply affine_map<(d0, d1) -> (d0 mod 16)>(%c8, %c14)
        %293 = math.expm1 %15 : tensor<3x3xf16>
        %294 = math.tan %4 : tensor<10xf16>
        affine.yield %c494598180_i64 : i64
      } else {
        %288 = math.ceil %cst : f32
        %splat_40 = tensor.splat %c1749512412_i64 : tensor<15xi64>
        %289 = index.sub %c2, %c9
        %290 = tensor.empty() : tensor<15x8xi32>
        %291 = math.fpowi %2, %290 : tensor<15x8xf32>, tensor<15x8xi32>
        memref.store %cst_1, %alloc_7[%c9] : memref<15xf16>
        %292 = math.rsqrt %2 : tensor<15x8xf32>
        %293 = memref.realloc %alloc_18 : memref<10xi1> to memref<8xi1>
        %294 = math.cttz %c1329909866_i64 : i64
        affine.yield %c1749512412_i64 : i64
      }
      %274 = bufferization.clone %alloc_5 : memref<15xf16> to memref<15xf16>
      %275 = arith.minf %cst, %270 : f32
      %cst_39 = arith.constant 1.000000e+00 : f32
      %276 = vector.transfer_read %8[%c9], %cst_39 : tensor<10xf32>, vector<f32>
      %277 = affine.apply affine_map<(d0) -> (((d0 + 4) floordiv 32) ceildiv 4)>(%c2)
      %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64)>(%c8, %c6, %277, %c11)
      %279 = math.powf %cst_1, %cst_1 : f16
      %280 = arith.negf %270 : f32
      %281 = index.maxs %c13, %c1
      %282 = index.ceildivs %c2, %c13
      %283 = tensor.empty() : tensor<8x8x8xi64>
      %284 = tensor.empty() : tensor<8x8xi64>
      %285 = tensor.empty() : tensor<8xi64>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%284, %285 : tensor<8x8xi64>, tensor<8xi64>) outs(%283 : tensor<8x8x8xi64>) {
      ^bb0(%in: i64, %in_40: i64, %out: i64):
        %288 = math.ctlz %1 : tensor<15x8xi64>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %270 : vector<8xf32>, vector<8xf32> into f32
        %290 = bufferization.to_tensor %alloc_2 : memref<10xi1>
        %expanded_41 = tensor.expand_shape %10 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %291 = vector.broadcast %cst_39 : f32 to vector<10xf32>
        %292 = vector.fma %291, %291, %291 : vector<10xf32>
        %293 = math.ceil %14 : tensor<15xf32>
        %294 = math.tanh %8 : tensor<10xf32>
        %295 = arith.andi %c1513705051_i32, %c1051325167_i32 : i32
        %296 = bufferization.to_tensor %alloc_11 : memref<3x3xi16>
        %297 = index.add %c2, %c14
        %298 = index.ceildivs %281, %c4
        %299 = arith.muli %c1749512412_i64, %out : i64
        %300 = vector.broadcast %270 : f32 to vector<10xf32>
        %301 = vector.fma %300, %300, %300 : vector<10xf32>
        %302 = bufferization.to_memref %8 : memref<10xf32>
        %303 = index.sub %c8, %281
        %304 = arith.remf %270, %cst : f32
        %305 = index.castu %c2 : index to i32
        %306 = math.sqrt %2 : tensor<15x8xf32>
        %307 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
        %308 = index.casts %c6 : index to i32
        %309 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %291, %292, %270 : vector<10xf32>, vector<10xf32> into f32
        %310 = math.atan2 %2, %2 : tensor<15x8xf32>
        %311 = arith.divsi %c1749512412_i64, %c1749512412_i64 : i64
        %312 = bufferization.clone %alloc_14 : memref<15x8xi32> to memref<15x8xi32>
        %splat_42 = tensor.splat %c494598180_i64 : tensor<10xi64>
        %313 = vector.splat %c1237412335_i32 : vector<10xi32>
        %314 = math.fma %4, %4, %4 : tensor<10xf16>
        %315 = arith.remsi %false, %true : i1
        %316 = memref.load %312[%c4, %c2] : memref<15x8xi32>
        %317 = memref.load %alloc_18[%c2] : memref<10xi1>
        %318 = arith.cmpi ule, %true_0, %true_0 : i1
        %319 = math.log %4 : tensor<10xf16>
        linalg.yield %c541138043_i64 : i64
      } -> tensor<8x8x8xi64>
      %287 = math.ceil %14 : tensor<15xf32>
      scf.yield
    }
    case 2 {
      %269 = bufferization.clone %alloc_5 : memref<15xf16> to memref<15xf16>
      %270 = vector.broadcast %cst : f32 to vector<10xf32>
      %271 = vector.broadcast %false : i1 to vector<10xi1>
      %272 = vector.maskedload %alloc_15[%c1], %271, %270 : memref<10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %273 = vector.broadcast %cst_1 : f16 to vector<3x3x3xf16>
      %274 = vector.broadcast %cst_1 : f16 to vector<3x3xf16>
      %dest, %accumulated_value = vector.scan <add>, %273, %274 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3x3xf16>, vector<3x3xf16>
      %275 = index.castu %c494598180_i64 : i64 to index
      affine.store %true, %alloc_2[%c8] : memref<10xi1>
      %276 = index.maxu %c1, %c3
      %277 = index.ceildivs %c10, %c4
      %278 = math.exp %14 : tensor<15xf32>
      %279 = index.floordivs %c15, %c8
      %280 = tensor.empty() : tensor<3x3xi64>
      %281 = linalg.matmul ins(%13, %0 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%280 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %282 = vector.create_mask %276 : vector<15xi1>
      %283 = math.rsqrt %8 : tensor<10xf32>
      %c1_i64 = arith.constant 1 : i64
      %284 = vector.transfer_read %13[%c11, %c5], %c1_i64 : tensor<3x3xi64>, vector<i64>
      %285 = arith.maxsi %c1570006231_i32, %c1570006231_i32 : i32
      %286 = vector.broadcast %c69732229_i32 : i32 to vector<3xi32>
      %287 = vector.broadcast %false : i1 to vector<3xi1>
      %288 = vector.maskedload %alloc_12[%c9], %287, %286 : memref<10xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
      %289 = math.exp %15 : tensor<3x3xf16>
      scf.yield
    }
    case 3 {
      %269 = bufferization.to_tensor %alloc_3 : memref<3x3xf16>
      %270 = arith.ori %c1051325167_i32, %c69732229_i32 : i32
      %271 = arith.shrui %true_0, %false : i1
      %272 = index.divs %c2, %c9
      %273 = vector.broadcast %c12 : index to vector<10xindex>
      %274 = vector.broadcast %true : i1 to vector<10xi1>
      %275 = vector.broadcast %cst : f32 to vector<10xf32>
      vector.scatter %alloc_16[%c1, %c2] [%273], %274, %275 : memref<3x3xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %276 = index.ceildivs %c1, %c14
      %true_39 = index.bool.constant true
      %277 = arith.shli %false, %true_39 : i1
      %278 = math.atan2 %8, %8 : tensor<10xf32>
      %279 = tensor.empty() : tensor<8x8x8xi64>
      %280 = tensor.empty() : tensor<8x8xi64>
      %281 = tensor.empty() : tensor<8xi64>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280, %280, %281 : tensor<8x8xi64>, tensor<8x8xi64>, tensor<8xi64>) outs(%279 : tensor<8x8x8xi64>) {
      ^bb0(%in: i64, %in_40: i64, %in_41: i64, %out: i64):
        %286 = math.sqrt %4 : tensor<10xf16>
        %287 = arith.addi %c1237412335_i32, %c1237412335_i32 : i32
        %288 = vector.broadcast %cst : f32 to vector<15xf32>
        %289 = vector.fma %288, %288, %288 : vector<15xf32>
        %290 = math.absi %12 : tensor<15x8xi1>
        %extracted_42 = tensor.extract %269[%c1, %c0] : tensor<3x3xf16>
        %291 = bufferization.to_tensor %alloc : memref<10xf32>
        %292 = index.maxu %c2, %c2
        %293 = vector.multi_reduction <mul>, %19, %19 [] : vector<8xf32> to vector<8xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %289, %289, %cst : vector<15xf32>, vector<15xf32> into f32
        affine.store %cst, %alloc[%c9] : memref<10xf32>
        %295 = math.sqrt %5 : tensor<15xf32>
        %296 = index.ceildivs %c15, %c5
        %297 = arith.shrui %c541138043_i64, %c494598180_i64 : i64
        %298 = index.ceildivs %c12, %c5
        %299 = index.sizeof
        %300 = index.add %c5, %c9
        %301 = vector.reduction <add>, %289 : vector<15xf32> into f32
        %302 = vector.multi_reduction <maxf>, %289, %289 [] : vector<15xf32> to vector<15xf32>
        %303 = vector.create_mask %c0 : vector<15xi1>
        %304 = math.floor %5 : tensor<15xf32>
        %305 = memref.realloc %alloc_5 : memref<15xf16> to memref<15xf16>
        %306 = vector.splat %c1 : vector<15xindex>
        %307 = math.roundeven %2 : tensor<15x8xf32>
        %308 = affine.apply affine_map<(d0, d1) -> (d0)>(%272, %c10)
        %309 = arith.shrsi %c1749512412_i64, %out : i64
        %expanded_43 = tensor.expand_shape %8 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
        %310 = arith.minui %out, %c1329909866_i64 : i64
        %311 = arith.cmpi ult, %c1051325167_i32, %c1513705051_i32 : i32
        %312 = vector.broadcast %true : i1 to vector<15xi1>
        %313 = vector.broadcast %c1051325167_i32 : i32 to vector<3xi32>
        %314 = vector.broadcast %true : i1 to vector<3xi1>
        %315 = vector.maskedload %alloc_12[%c4], %314, %313 : memref<10xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %316 = math.exp %4 : tensor<10xf16>
        %317 = vector.insertelement %cst, %288[%c2 : index] : vector<15xf32>
        linalg.yield %in_41 : i64
      } -> tensor<8x8x8xi64>
      scf.index_switch %c4 
      case 1 {
        %286 = arith.negf %cst_1 : f16
        %287 = vector.reduction <add>, %19 : vector<8xf32> into f32
        %288 = bufferization.to_tensor %alloc_8 : memref<3x3xf16>
        %cast = tensor.cast %16 : tensor<3x3xi32> to tensor<?x?xi32>
        %289 = index.add %272, %c14
        %290 = index.ceildivs %c8, %c15
        %291 = index.ceildivs %c8, %c12
        %292 = index.add %276, %276
        %293 = math.roundeven %14 : tensor<15xf32>
        %rank_40 = tensor.rank %18 : tensor<3x3xi16>
        %294 = index.add %c0, %c4
        %295 = index.maxu %c5, %c6
        %296 = vector.reduction <add>, %19 : vector<8xf32> into f32
        %297 = arith.floordivsi %c1749512412_i64, %c1329909866_i64 : i64
        %298 = index.add %c14, %c2
        %299 = math.tan %15 : tensor<3x3xf16>
        scf.yield
      }
      case 2 {
        %286 = math.tan %269 : tensor<3x3xf16>
        %287 = index.castu %c1749512412_i64 : i64 to index
        %288 = bufferization.clone %alloc_4 : memref<3x3xi64> to memref<3x3xi64>
        %289 = arith.maxf %cst_1, %cst_1 : f16
        %true_40 = arith.constant true
        %290 = index.divs %c8, %276
        %291 = vector.broadcast %cst_1 : f16 to vector<10xf16>
        %292 = vector.broadcast %true : i1 to vector<10xi1>
        %293 = vector.maskedload %alloc_5[%c11], %292, %291 : memref<15xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %splat_41 = tensor.splat %c1051325167_i32 : tensor<3x3xi32>
        %294 = arith.cmpf ult, %cst_1, %cst_1 : f16
        %295 = vector.broadcast %cst : f32 to vector<15xf32>
        %296 = vector.broadcast %false : i1 to vector<15xi1>
        %297 = vector.maskedload %alloc_15[%c9], %296, %295 : memref<10xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %298 = vector.flat_transpose %295 {columns = 5 : i32, rows = 3 : i32} : vector<15xf32> -> vector<15xf32>
        %false_42 = index.bool.constant false
        %299 = vector.create_mask %c7, %c3 : vector<3x3xi1>
        %300 = arith.shrui %c494598180_i64, %c1329909866_i64 : i64
        %301 = index.maxs %c14, %c7
        %302 = index.castu %false : i1 to index
        scf.yield
      }
      default {
        %286 = arith.cmpi ule, %c1513705051_i32, %c1237412335_i32 : i32
        %c0_i64_40 = arith.constant 0 : i64
        %c0_i64_41 = arith.constant 0 : i64
        %287 = vector.transfer_read %13[%c14, %c11], %c0_i64_41 : tensor<3x3xi64>, vector<i64>
        %288 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
        %289 = index.add %c8, %c0
        %290 = bufferization.clone %alloc_12 : memref<10xi32> to memref<10xi32>
        %rank_42 = tensor.rank %21 : tensor<i1>
        %291 = math.tan %2 : tensor<15x8xf32>
        %292 = arith.remf %cst, %cst : f32
        %293 = math.cos %4 : tensor<10xf16>
        %294 = vector.broadcast %false : i1 to vector<8xi1>
        %295 = vector.maskedload %alloc_18[%c7], %294, %294 : memref<10xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %296 = tensor.empty() : tensor<15x8xi32>
        %297 = math.fpowi %2, %296 : tensor<15x8xf32>, tensor<15x8xi32>
        %298 = index.ceildivu %c8, %c11
        %299 = index.maxs %276, %c5
        %300 = bufferization.to_memref %5 : memref<15xf32>
        %collapsed_43 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x3xi16> into tensor<9xi16>
        %301 = tensor.empty() : tensor<3x3xf16>
        %302 = linalg.matmul ins(%269, %15 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%301 : tensor<3x3xf16>) -> tensor<3x3xf16>
      }
      %283 = arith.maxui %false, %false : i1
      %generated = tensor.generate %c4, %c4 {
      ^bb0(%arg3: index, %arg4: index):
        %286 = index.castu %true : i1 to index
        %287 = math.roundeven %269 : tensor<3x3xf16>
        %288 = vector.transpose %22, [] : vector<i32> to vector<i32>
        %289 = tensor.empty() : tensor<8x15xi64>
        %290 = tensor.empty() : tensor<15x15xi64>
        %291 = linalg.matmul ins(%1, %289 : tensor<15x8xi64>, tensor<8x15xi64>) outs(%290 : tensor<15x15xi64>) -> tensor<15x15xi64>
        tensor.yield %cst : f32
      } : tensor<?x?xf32>
      %284 = bufferization.clone %alloc_14 : memref<15x8xi32> to memref<15x8xi32>
      %285 = math.round %14 : tensor<15xf32>
      scf.if %true_39 {
        %286 = vector.reduction <add>, %19 : vector<8xf32> into f32
        %inserted_40 = tensor.insert %c494598180_i64 into %0[%c2, %c1] : tensor<3x3xi64>
        %287 = index.ceildivu %c15, %24
        %288 = arith.remsi %c1749512412_i64, %c541138043_i64 : i64
        %289 = vector.multi_reduction <mul>, %19, %cst [0] : vector<8xf32> to f32
        %290 = math.rsqrt %4 : tensor<10xf16>
        %291 = math.floor %289 : f32
        %292 = math.absi %6 : tensor<3x3xi16>
      }
      scf.yield
    }
    case 4 {
      %269 = arith.minsi %c1329909866_i64, %c1749512412_i64 : i64
      %270 = scf.if %false -> (memref<10xf32>) {
        %283 = arith.cmpi sgt, %c1051325167_i32, %c1051325167_i32 : i32
        %284 = math.tanh %8 : tensor<10xf32>
        %285 = bufferization.to_memref %5 : memref<15xf32>
        %286 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 2 - d0)>(%c3, %c8, %c9, %c0)
        %287 = math.ipowi %c1329909866_i64, %c541138043_i64 : i64
        %288 = index.add %c6, %c5
        %rank_40 = tensor.rank %1 : tensor<15x8xi64>
        %289 = math.ceil %8 : tensor<10xf32>
        scf.yield %alloc : memref<10xf32>
      } else {
        %283 = vector.broadcast %cst : f32 to vector<f32>
        %284 = vector.transfer_write %283, %5[%c5] : vector<f32>, tensor<15xf32>
        %285 = math.fma %5, %5, %14 : tensor<15xf32>
        %286 = index.sub %c13, %c7
        %287 = memref.load %alloc_9[%c2, %c1] : memref<3x3xi16>
        %288 = arith.remf %cst, %cst : f32
        %289 = vector.extract %19[0] : vector<8xf32>
        %290 = index.divs %c4, %c0
        %291 = bufferization.to_tensor %alloc_2 : memref<10xi1>
        scf.yield %alloc : memref<10xf32>
      }
      %271 = math.floor %14 : tensor<15xf32>
      %272 = index.ceildivs %c14, %c12
      %273 = arith.shli %c20035_i16, %c-4321_i16 : i16
      %extracted_39 = tensor.extract %2[%c4, %c6] : tensor<15x8xf32>
      %274 = arith.mulf %cst, %extracted_39 : f32
      affine.store %true_0, %alloc_18[%c12] : memref<10xi1>
      %275 = arith.minsi %c1329909866_i64, %c541138043_i64 : i64
      %276 = vector.insert %cst, %19 [3] : f32 into vector<8xf32>
      %277 = math.ipowi %true_0, %false : i1
      %278 = arith.negf %cst_1 : f16
      %279 = index.maxu %c14, %c11
      %280 = math.tanh %8 : tensor<10xf32>
      %281 = index.castu %true : i1 to index
      %282 = math.sqrt %8 : tensor<10xf32>
      scf.yield
    }
    default {
      %269 = arith.ori %c20035_i16, %c-4321_i16 : i16
      %270 = math.floor %4 : tensor<10xf16>
      %271 = math.fpowi %15, %3 : tensor<3x3xf16>, tensor<3x3xi32>
      %272 = math.round %2 : tensor<15x8xf32>
      %273 = math.tanh %5 : tensor<15xf32>
      %274 = arith.shli %true, %false : i1
      %275 = vector.create_mask %c3 : vector<15xi1>
      scf.execute_region {
        %282 = arith.xori %c1570006231_i32, %c1570006231_i32 : i32
        memref.store %c1570006231_i32, %alloc_14[%c1, %c5] : memref<15x8xi32>
        %283 = bufferization.clone %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
        %284 = math.sqrt %2 : tensor<15x8xf32>
        %285 = tensor.empty() : tensor<8x10xi1>
        %286 = tensor.empty() : tensor<15x10xi1>
        %287 = linalg.matmul ins(%12, %285 : tensor<15x8xi1>, tensor<8x10xi1>) outs(%286 : tensor<15x10xi1>) -> tensor<15x10xi1>
        %288 = memref.load %alloc_12[%c4] : memref<10xi32>
        %289 = arith.remf %cst_1, %cst_1 : f16
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 2 - d0)>(%c0, %c3, %c14, %c10)
        %291 = arith.remf %cst, %cst : f32
        %292 = index.castu %c14 : index to i32
        %293 = math.powf %14, %5 : tensor<15xf32>
        %294 = bufferization.to_memref %6 : memref<3x3xi16>
        %295 = index.floordivs %24, %290
        %296 = vector.broadcast %cst : f32 to vector<15xf32>
        %297 = vector.fma %296, %296, %296 : vector<15xf32>
        %298 = vector.extract %297[4] : vector<15xf32>
        %299 = vector.extract %19[3] : vector<8xf32>
        scf.yield
      }
      %276 = vector.insertelement %false, %275[%c15 : index] : vector<15xi1>
      %rank_39 = tensor.rank %9 : tensor<3x3xi16>
      affine.for %arg3 = 0 to 64 {
      }
      %277 = math.ipowi %13, %13 : tensor<3x3xi64>
      %278 = math.ipowi %c1749512412_i64, %c494598180_i64 : i64
      %279 = index.maxu %c8, %24
      %280 = arith.maxsi %c69732229_i32, %c69732229_i32 : i32
      %281 = math.ipowi %c20035_i16, %c-4321_i16 : i16
    }
    %alloc_19 = memref.alloc() : memref<15x8xf32>
    scf.index_switch %c15 
    case 1 {
      %269 = arith.ceildivsi %c1749512412_i64, %c1749512412_i64 : i64
      %270 = vector.broadcast %cst : f32 to vector<10xf32>
      %271 = vector.fma %270, %270, %270 : vector<10xf32>
      %272 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %272, %alloc_8[%c8, %c14] : vector<f16>, memref<3x3xf16>
      %273 = math.cttz %16 : tensor<3x3xi32>
      %274 = index.ceildivu %c15, %c11
      %275 = index.ceildivs %c15, %c0
      bufferization.dealloc_tensor %5 : tensor<15xf32>
      %276 = arith.addi %c1051325167_i32, %c1570006231_i32 : i32
      %277 = math.ipowi %transposed, %9 : tensor<3x3xi16>
      %278 = bufferization.to_tensor %alloc_14 : memref<15x8xi32>
      %279 = tensor.empty() : tensor<8x8x8xi64>
      %280 = tensor.empty() : tensor<8xi64>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280 : tensor<8xi64>) outs(%279 : tensor<8x8x8xi64>) {
      ^bb0(%in: i64, %out: i64):
        %289 = math.rsqrt %14 : tensor<15xf32>
        %290 = vector.broadcast %c1570006231_i32 : i32 to vector<15xi32>
        %291 = vector.broadcast %false : i1 to vector<15xi1>
        %292 = vector.maskedload %alloc_14[%c12, %c1], %291, %290 : memref<15x8xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %293 = index.ceildivu %c15, %c7
        %294 = vector.splat %c0 : vector<15xindex>
        %295 = math.sqrt %4 : tensor<10xf16>
        %296 = index.ceildivs %c4, %c14
        %297 = bufferization.to_memref %12 : memref<15x8xi1>
        %298 = math.atan2 %cst_1, %cst_1 : f16
        %299 = arith.remsi %c20035_i16, %c-4321_i16 : i16
        %300 = arith.mulf %cst_1, %cst_1 : f16
        memref.store %false, %297[%c4, %c4] : memref<15x8xi1>
        %301 = vector.splat %274 : vector<10xindex>
        %302 = arith.remf %cst_1, %cst_1 : f16
        %303 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64)>(%24, %274, %c11, %c2)
        %304 = index.mul %c6, %274
        %305 = arith.cmpf ogt, %cst, %cst : f32
        %306 = arith.xori %c1749512412_i64, %in : i64
        %307 = bufferization.clone %alloc_4 : memref<3x3xi64> to memref<3x3xi64>
        %308 = math.sqrt %2 : tensor<15x8xf32>
        %309 = arith.mulf %cst, %cst : f32
        %splat_41 = tensor.splat %c1329909866_i64 : tensor<15x8xi64>
        %310 = arith.mulf %cst_1, %cst_1 : f16
        %311 = index.casts %c9 : index to i32
        %312 = arith.floordivsi %c1237412335_i32, %c1570006231_i32 : i32
        %313 = index.sub %296, %c6
        %314 = arith.addi %true, %true : i1
        %315 = tensor.empty() : tensor<3x3xi32>
        %316 = linalg.matmul ins(%17, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%315 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %317 = vector.insertelement %true_0, %291[%c14 : index] : vector<15xi1>
        %alloca = memref.alloca() : memref<15x8xi1>
        %318 = arith.maxsi %c494598180_i64, %c541138043_i64 : i64
        memref.store %cst, %alloc_17[] : memref<f32>
        %319 = index.mul %313, %c12
        linalg.yield %out : i64
      } -> tensor<8x8x8xi64>
      %282 = math.ceil %2 : tensor<15x8xf32>
      %283 = vector.extract %271[5] : vector<10xf32>
      %284 = vector.broadcast %c1237412335_i32 : i32 to vector<3x8x8xi32>
      %285 = vector.broadcast %c1051325167_i32 : i32 to vector<3x8xi32>
      %dest, %accumulated_value = vector.scan <or>, %284, %285 {inclusive = false, reduction_dim = 1 : i64} : vector<3x8x8xi32>, vector<3x8xi32>
      %286 = index.casts %c15 : index to i32
      %287 = vector.broadcast %false : i1 to vector<8x3xi1>
      %288 = vector.broadcast %true : i1 to vector<8xi1>
      %dest_39, %accumulated_value_40 = vector.scan <xor>, %287, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<8x3xi1>, vector<8xi1>
      scf.yield
    }
    case 2 {
      %269 = math.log %5 : tensor<15xf32>
      %false_39 = arith.constant false
      %270 = vector.transfer_read %alloc_6[%c4, %c7], %false_39 : memref<15x8xi1>, vector<i1>
      %cst_40 = arith.constant 1.000000e+00 : f32
      %271 = vector.transfer_read %14[%c11], %cst_40 : tensor<15xf32>, vector<f32>
      %272 = index.maxu %c12, %c5
      %273 = index.casts %272 : index to i32
      %274 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
      %275 = arith.shrsi %true, %true : i1
      %splat_41 = tensor.splat %c69732229_i32 : tensor<10xi32>
      %276 = index.sub %c11, %c5
      %277 = vector.extract %19[2] : vector<8xf32>
      %278 = scf.execute_region -> f32 {
        %283 = math.tanh %15 : tensor<3x3xf16>
        %284 = vector.extract %19[6] : vector<8xf32>
        %285 = math.powf %14, %14 : tensor<15xf32>
        %286 = arith.cmpf ogt, %cst_40, %cst : f32
        %287 = math.sqrt %8 : tensor<10xf32>
        %288 = index.mul %c6, %c3
        %289 = arith.maxui %c1749512412_i64, %c541138043_i64 : i64
        %290 = index.castu %c5 : index to i32
        %291 = arith.ceildivsi %true_0, %false_39 : i1
        %292 = bufferization.to_tensor %alloc_17 : memref<f32>
        %293 = memref.atomic_rmw minf %cst, %alloc_15[%c3] : (f32, memref<10xf32>) -> f32
        %294 = vector.reduction <maxf>, %19 : vector<8xf32> into f32
        %295 = math.tanh %8 : tensor<10xf32>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst_40 : vector<8xf32>, vector<8xf32> into f32
        %297 = memref.realloc %alloc_18 : memref<10xi1> to memref<8xi1>
        %298 = math.log2 %cst_40 : f32
        scf.yield %cst_40 : f32
      }
      %279 = index.castu %true_0 : i1 to index
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %278 : vector<8xf32>, vector<8xf32> into f32
      %281 = index.castu %c4 : index to i32
      scf.index_switch %c1 
      case 1 {
        %283 = math.round %4 : tensor<10xf16>
        %284 = index.casts %c20035_i16 : i16 to index
        %285 = memref.load %alloc_11[%c1, %c1] : memref<3x3xi16>
        %286 = index.ceildivs %c0, %c10
        %287 = arith.cmpi slt, %c494598180_i64, %c541138043_i64 : i64
        %288 = index.castu %c10 : index to i32
        %289 = vector.broadcast %false : i1 to vector<8x8x8xi1>
        %290 = vector.broadcast %true : i1 to vector<8x8xi1>
        %dest, %accumulated_value = vector.scan <maxsi>, %289, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8x8xi1>, vector<8x8xi1>
        %291 = math.ctlz %9 : tensor<3x3xi16>
        %292 = math.roundeven %cst : f32
        %293 = affine.apply affine_map<(d0, d1) -> ((d0 ceildiv 2) * 4)>(%24, %286)
        affine.store %cst_40, %alloc_16[%c2, %c13] : memref<3x3xf32>
        %294 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %295 = math.tanh %278 : f32
        %296 = arith.ceildivsi %c69732229_i32, %c69732229_i32 : i32
        %297 = vector.insert %278, %294 [0] : f32 into vector<1xf32>
        %298 = vector.broadcast %c1570006231_i32 : i32 to vector<i32>
        %299 = vector.transfer_write %298, %11[%272] : vector<i32>, tensor<15xi32>
        scf.yield
      }
      case 2 {
        %283 = index.castu %c494598180_i64 : i64 to index
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst_40 : vector<8xf32>, vector<8xf32> into f32
        %285 = arith.minsi %c1749512412_i64, %c541138043_i64 : i64
        %286 = arith.addi %c1513705051_i32, %c1051325167_i32 : i32
        %cst_42 = arith.constant 1.000000e+00 : f32
        %287 = vector.transfer_read %8[%c6], %cst_42 : tensor<10xf32>, vector<f32>
        %alloc_43 = memref.alloc() : memref<15x8xi64>
        memref.copy %alloc_10, %alloc_43 : memref<15x8xi64> to memref<15x8xi64>
        %288 = math.tanh %14 : tensor<15xf32>
        %289 = arith.ori %c1051325167_i32, %c1570006231_i32 : i32
        %290 = index.ceildivs %c3, %c13
        %291 = arith.negf %cst_40 : f32
        affine.store %c541138043_i64, %alloc_4[%c3, %c4] : memref<3x3xi64>
        %292 = index.add %290, %c13
        %rank_44 = tensor.rank %1 : tensor<15x8xi64>
        %293 = vector.broadcast %cst_42 : f32 to vector<10xf32>
        %294 = vector.broadcast %true : i1 to vector<10xi1>
        %295 = vector.maskedload %alloc_17[], %294, %293 : memref<f32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %expanded_45 = tensor.expand_shape %14 [[0, 1]] : tensor<15xf32> into tensor<15x1xf32>
        %296 = arith.remf %cst_1, %cst_1 : f16
        scf.yield
      }
      default {
        %283 = math.round %cst : f32
        %cst_42 = arith.constant 1.000000e+00 : f32
        %cst_43 = arith.constant 0.000000e+00 : f32
        %284 = vector.transfer_read %2[%c9, %c14], %cst_43 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<15x8xf32>, vector<3xf32>
        %285 = index.sub %c12, %c13
        %286 = vector.broadcast %cst_1 : f16 to vector<15x8xf16>
        %287 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %dest, %accumulated_value = vector.scan <mul>, %286, %287 {inclusive = true, reduction_dim = 0 : i64} : vector<15x8xf16>, vector<8xf16>
        %288 = math.atan2 %15, %15 : tensor<3x3xf16>
        %289 = math.copysign %cst_42, %278 : f32
        %290 = index.floordivs %276, %c3
        %splat_44 = tensor.splat %c1051325167_i32 : tensor<3x3xi32>
        %291 = vector.shuffle %19, %19 [4, 6, 7, 10, 11, 15] : vector<8xf32>, vector<8xf32>
        %292 = memref.atomic_rmw addi %c1051325167_i32, %alloc_12[%c9] : (i32, memref<10xi32>) -> i32
        %293 = arith.cmpi slt, %false, %false_39 : i1
        vector.print %22 : vector<i32>
        %294 = vector.broadcast %c4 : index to vector<10xindex>
        %295 = vector.broadcast %true_0 : i1 to vector<10xi1>
        %296 = vector.broadcast %278 : f32 to vector<10xf32>
        vector.scatter %alloc_17[] [%294], %295, %296 : memref<f32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %297 = index.add %c6, %c2
        %298 = arith.ceildivsi %c1329909866_i64, %c541138043_i64 : i64
        %collapsed_45 = tensor.collapse_shape %15 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
      }
      %282 = math.roundeven %cst_40 : f32
      scf.yield
    }
    case 3 {
      %269 = math.tanh %8 : tensor<10xf32>
      %270 = arith.minui %c1570006231_i32, %c1570006231_i32 : i32
      %271 = arith.minf %cst_1, %cst_1 : f16
      %272 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 16, (d2 * 8 - 16) * -8, d2 * 8)>(%c7, %c10, %c3)
      %273 = scf.index_switch %c2 -> i16 
      case 1 {
        %285 = memref.atomic_rmw maxf %cst, %alloc_17[] : (f32, memref<f32>) -> f32
        %286 = index.casts %c9 : index to i32
        %cst_39 = arith.constant 1.000000e+00 : f32
        %cst_40 = arith.constant 0.000000e+00 : f32
        %287 = vector.transfer_read %5[%c8], %cst_40 : tensor<15xf32>, vector<f32>
        %288 = arith.addi %c1237412335_i32, %c69732229_i32 : i32
        %false_41 = index.bool.constant false
        %289 = vector.broadcast %c1570006231_i32 : i32 to vector<15xi32>
        %290 = vector.transfer_write %289, %16[%c11, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi32>, tensor<3x3xi32>
        %291 = arith.ori %false, %false : i1
        %292 = index.add %c11, %c1
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %289, %289, %c1237412335_i32 : vector<15xi32>, vector<15xi32> into i32
        %294 = math.roundeven %cst_1 : f16
        %extracted_42 = tensor.extract %20[] : tensor<i1>
        %295 = math.rsqrt %cst : f32
        affine.store %c494598180_i64, %alloc_4[%c1, %c4] : memref<3x3xi64>
        %296 = vector.broadcast %c20035_i16 : i16 to vector<8x10xi16>
        %297 = vector.broadcast %c20035_i16 : i16 to vector<10xi16>
        %dest, %accumulated_value = vector.scan <xor>, %296, %297 {inclusive = false, reduction_dim = 0 : i64} : vector<8x10xi16>, vector<10xi16>
        %298 = math.fpowi %cst_1, %c1570006231_i32 : f16, i32
        %299 = index.maxs %c14, %c12
        scf.yield %c20035_i16 : i16
      }
      case 2 {
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %286 = math.sqrt %2 : tensor<15x8xf32>
        %287 = vector.multi_reduction <add>, %19, %19 [] : vector<8xf32> to vector<8xf32>
        %288 = arith.ori %true, %false : i1
        %289 = bufferization.to_tensor %alloc_4 : memref<3x3xi64>
        %290 = index.ceildivs %c3, %c2
        %extracted_39 = tensor.extract %10[%c9] : tensor<10xi1>
        %291 = index.ceildivu %24, %c4
        %292 = index.maxu %c15, %c7
        %293 = vector.broadcast %c1237412335_i32 : i32 to vector<8x8xi32>
        %294 = vector.broadcast %c69732229_i32 : i32 to vector<8xi32>
        %dest, %accumulated_value = vector.scan <maxsi>, %293, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<8x8xi32>, vector<8xi32>
        %false_40 = arith.constant false
        %false_41 = arith.constant false
        %295 = vector.transfer_read %12[%272, %c4], %false_41 : tensor<15x8xi1>, vector<i1>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %297 = arith.floordivsi %c69732229_i32, %c69732229_i32 : i32
        %298 = index.add %c2, %c0
        %299 = math.atan2 %2, %2 : tensor<15x8xf32>
        %300 = vector.broadcast %cst : f32 to vector<8x8xf32>
        %301 = vector.outerproduct %19, %19, %300 {kind = #vector.kind<add>} : vector<8xf32>, vector<8xf32>
        scf.yield %c20035_i16 : i16
      }
      default {
        %285 = math.atan %14 : tensor<15xf32>
        %286 = tensor.empty() : tensor<3x3xi64>
        %287 = linalg.matmul ins(%0, %0 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%286 : tensor<3x3xi64>) -> tensor<3x3xi64>
        %288 = vector.broadcast %cst : f32 to vector<10xf32>
        %289 = vector.fma %288, %288, %288 : vector<10xf32>
        %290 = arith.minsi %c1051325167_i32, %c1570006231_i32 : i32
        %291 = math.ipowi %c1513705051_i32, %c69732229_i32 : i32
        %292 = vector.broadcast %c20035_i16 : i16 to vector<10xi16>
        %293 = vector.broadcast %false : i1 to vector<10xi1>
        %294 = vector.maskedload %alloc_9[%c0, %c0], %293, %292 : memref<3x3xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %295 = vector.bitcast %19 : vector<8xf32> to vector<8xf32>
        %296 = arith.mulf %cst, %cst : f32
        %297 = vector.broadcast %cst : f32 to vector<15xf32>
        %298 = vector.fma %297, %297, %297 : vector<15xf32>
        %299 = math.ipowi %286, %0 : tensor<3x3xi64>
        %300 = affine.apply affine_map<(d0, d1) -> (d0 + 68)>(%c14, %c1)
        %301 = arith.ori %c494598180_i64, %c1329909866_i64 : i64
        %302 = index.ceildivs %c0, %c12
        %303 = index.casts %c1051325167_i32 : i32 to index
        %304 = math.powf %8, %8 : tensor<10xf32>
        %305 = arith.maxsi %c1329909866_i64, %c1749512412_i64 : i64
        scf.yield %c-4321_i16 : i16
      }
      %274 = math.ipowi %9, %6 : tensor<3x3xi16>
      %275 = math.rsqrt %4 : tensor<10xf16>
      %c1_i64 = arith.constant 1 : i64
      %276 = vector.transfer_read %0[%c14, %c2], %c1_i64 : tensor<3x3xi64>, vector<10xi64>
      %277 = arith.minui %c1237412335_i32, %c69732229_i32 : i32
      %278 = memref.load %alloc_9[%c0, %c0] : memref<3x3xi16>
      %279 = index.ceildivs %c8, %c9
      %280 = arith.remui %false, %false : i1
      %281 = math.floor %2 : tensor<15x8xf32>
      %282 = vector.create_mask %c1, %c8 : vector<3x3xi1>
      %283 = bufferization.to_memref %10 : memref<10xi1>
      %284 = scf.index_switch %c3 -> vector<3x3xf32> 
      case 1 {
        %285 = vector.broadcast %true : i1 to vector<3xi1>
        %286 = vector.multi_reduction <or>, %282, %285 [0] : vector<3x3xi1> to vector<3xi1>
        %287 = index.ceildivs %24, %c8
        %288 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %289 = index.casts %c15 : index to i32
        %290 = math.copysign %5, %14 : tensor<15xf32>
        %291 = math.floor %15 : tensor<3x3xf16>
        %292 = arith.maxui %c1570006231_i32, %c1237412335_i32 : i32
        %293 = index.sub %24, %c15
        %294 = arith.minsi %c541138043_i64, %c1_i64 : i64
        %295 = memref.load %alloc_2[%c0] : memref<10xi1>
        %296 = arith.ceildivsi %true_0, %false : i1
        %297 = math.cttz %9 : tensor<3x3xi16>
        %298 = vector.insertelement %cst, %288[%c8 : index] : vector<1xf32>
        %299 = vector.multi_reduction <mul>, %288, %288 [] : vector<1xf32> to vector<1xf32>
        %300 = index.sub %279, %c1
        %splat_39 = tensor.splat %cst_1 : tensor<15x8xf16>
        %301 = vector.broadcast %cst : f32 to vector<3x3xf32>
        scf.yield %301 : vector<3x3xf32>
      }
      case 2 {
        memref.copy %alloc_18, %283 : memref<10xi1> to memref<10xi1>
        %285 = arith.muli %true, %true : i1
        %286 = memref.realloc %alloc_2 : memref<10xi1> to memref<3xi1>
        %287 = arith.maxui %false, %false : i1
        %288 = index.ceildivs %c11, %c4
        %289 = math.tan %14 : tensor<15xf32>
        affine.store %cst, %alloc_15[%c7] : memref<10xf32>
        %290 = math.log1p %8 : tensor<10xf32>
        %291 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %292 = bufferization.to_tensor %alloc : memref<10xf32>
        %293 = index.casts %c5 : index to i32
        %294 = memref.load %alloc_11[%c1, %c1] : memref<3x3xi16>
        %295 = math.log10 %14 : tensor<15xf32>
        %296 = vector.broadcast %cst : f32 to vector<1x1xf32>
        %297 = vector.outerproduct %291, %291, %296 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %298 = index.casts %c1_i64 : i64 to index
        %299 = arith.addi %c1_i64, %c541138043_i64 : i64
        %300 = vector.broadcast %cst : f32 to vector<3x3xf32>
        scf.yield %300 : vector<3x3xf32>
      }
      case 3 {
        affine.store %c20035_i16, %alloc_9[%c7, %c10] : memref<3x3xi16>
        %285 = arith.remsi %true, %true : i1
        %286 = math.fma %2, %2, %2 : tensor<15x8xf32>
        %287 = arith.shli %false, %true_0 : i1
        %288 = arith.remf %cst_1, %cst_1 : f16
        %289 = arith.cmpi uge, %c1051325167_i32, %c1570006231_i32 : i32
        %290 = index.mul %c11, %c7
        %291 = math.ceil %cst : f32
        %292 = math.copysign %cst_1, %cst_1 : f16
        %293 = math.fpowi %5, %11 : tensor<15xf32>, tensor<15xi32>
        %collapsed_39 = tensor.collapse_shape %transposed [[0, 1]] : tensor<3x3xi16> into tensor<9xi16>
        %c-29116_i16 = arith.constant -29116 : i16
        %294 = vector.insert %cst, %19 [6] : f32 into vector<8xf32>
        %295 = tensor.empty() : tensor<15x8xi32>
        %296 = math.fpowi %2, %295 : tensor<15x8xf32>, tensor<15x8xi32>
        %297 = math.log10 %cst : f32
        %298 = math.round %5 : tensor<15xf32>
        %299 = vector.broadcast %cst : f32 to vector<3x3xf32>
        scf.yield %299 : vector<3x3xf32>
      }
      default {
        %285 = math.tan %15 : tensor<3x3xf16>
        %286 = index.mul %c5, %c4
        %287 = arith.muli %c1237412335_i32, %c69732229_i32 : i32
        %288 = arith.muli %false, %false : i1
        %false_39 = index.bool.constant false
        %289 = arith.ceildivsi %false, %false_39 : i1
        %cst_40 = arith.constant 1.000000e+00 : f32
        %cst_41 = arith.constant 0.000000e+00 : f32
        %290 = vector.transfer_read %2[%286, %c3], %cst_41 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<15x8xf32>, vector<3xf32>
        %291 = math.tanh %cst_40 : f32
        %292 = arith.ori %c1570006231_i32, %c1237412335_i32 : i32
        %293 = index.maxu %279, %c12
        %294 = arith.muli %c69732229_i32, %c1513705051_i32 : i32
        %inserted_42 = tensor.insert %c1051325167_i32 into %3[%c2, %c1] : tensor<3x3xi32>
        %295 = math.log %8 : tensor<10xf32>
        %296 = arith.remf %cst, %cst : f32
        bufferization.dealloc_tensor %transposed : tensor<3x3xi16>
        %297 = math.tanh %8 : tensor<10xf32>
        %298 = vector.broadcast %cst_40 : f32 to vector<3x3xf32>
        scf.yield %298 : vector<3x3xf32>
      }
      scf.yield
    }
    case 4 {
      %269 = vector.broadcast %false : i1 to vector<3x10xi1>
      %270 = vector.broadcast %true : i1 to vector<10xi1>
      %dest, %accumulated_value = vector.scan <add>, %269, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<3x10xi1>, vector<10xi1>
      %271 = index.ceildivs %c13, %c13
      %272 = math.absi %11 : tensor<15xi32>
      %273 = math.absi %13 : tensor<3x3xi64>
      %c0_i32_39 = arith.constant 0 : i32
      %274 = vector.transfer_read %11[%c0], %c0_i32_39 : tensor<15xi32>, vector<i32>
      %275 = math.absi %3 : tensor<3x3xi32>
      %276 = scf.index_switch %c10 -> index 
      case 1 {
        %284 = math.floor %cst_1 : f16
        %collapsed_41 = tensor.collapse_shape %1 [[0, 1]] : tensor<15x8xi64> into tensor<120xi64>
        %285 = index.ceildivu %c12, %c5
        %286 = index.maxu %c12, %c5
        %287 = index.sub %c5, %c1
        %288 = index.sub %287, %c14
        %289 = math.atan %14 : tensor<15xf32>
        %splat_42 = tensor.splat %c1749512412_i64 : tensor<10xi64>
        %290 = bufferization.clone %alloc_11 : memref<3x3xi16> to memref<3x3xi16>
        %291 = arith.addi %c1237412335_i32, %c1513705051_i32 : i32
        %292 = math.ceil %15 : tensor<3x3xf16>
        %alloc_43 = memref.alloc() : memref<15x8xf32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %294 = arith.shrui %false, %false : i1
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %296 = math.tan %14 : tensor<15xf32>
        scf.yield %c14 : index
      }
      case 2 {
        %284 = affine.apply affine_map<(d0) -> ((d0 * -2) mod 4)>(%24)
        %285 = vector.create_mask %c3, %24 : vector<15x8xi1>
        %286 = affine.apply affine_map<(d0) -> ((d0 * -2) mod 4)>(%c15)
        memref.tensor_store %8, %alloc : memref<10xf32>
        %287 = math.ipowi %13, %0 : tensor<3x3xi64>
        %rank_41 = tensor.rank %20 : tensor<i1>
        %288 = memref.load %alloc_6[%c3, %c0] : memref<15x8xi1>
        %289 = bufferization.to_tensor %alloc_5 : memref<15xf16>
        %290 = arith.remf %cst_1, %cst_1 : f16
        %291 = math.fma %15, %15, %15 : tensor<3x3xf16>
        %292 = math.roundeven %8 : tensor<10xf32>
        %293 = index.mul %c12, %rank_41
        %294 = arith.mulf %cst_1, %cst_1 : f16
        %cst_42 = arith.constant 1.000000e+00 : f16
        %cst_43 = arith.constant 0.000000e+00 : f16
        %295 = vector.transfer_read %15[%c5, %c6], %cst_43 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x3xf16>, vector<3xf16>
        %296 = arith.remf %cst, %cst : f32
        %297 = arith.remsi %true_0, %false : i1
        scf.yield %c15 : index
      }
      default {
        %284 = bufferization.to_tensor %alloc_15 : memref<10xf32>
        %285 = math.sqrt %5 : tensor<15xf32>
        %cst_41 = arith.constant 1.000000e+00 : f32
        %286 = vector.transfer_read %alloc_16[%c14, %c2], %cst_41 : memref<3x3xf32>, vector<10xf32>
        %alloc_42 = memref.alloc() : memref<f32>
        memref.copy %alloc_17, %alloc_42 : memref<f32> to memref<f32>
        %287 = math.tan %2 : tensor<15x8xf32>
        %288 = arith.maxsi %c1329909866_i64, %c494598180_i64 : i64
        %289 = math.round %8 : tensor<10xf32>
        %290 = index.sub %c9, %c2
        %291 = vector.bitcast %19 : vector<8xf32> to vector<8xf32>
        %292 = vector.splat %c9 : vector<3x3xindex>
        %293 = bufferization.to_memref %6 : memref<3x3xi16>
        %294 = arith.minsi %c20035_i16, %c-4321_i16 : i16
        %295 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
        %296 = index.maxu %c3, %c6
        %297 = vector.flat_transpose %291 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %298 = index.floordivs %c1, %c0
        scf.yield %c15 : index
      }
      %277 = arith.shli %c1237412335_i32, %c1237412335_i32 : i32
      %278 = math.sqrt %15 : tensor<3x3xf16>
      %rank_40 = tensor.rank %12 : tensor<15x8xi1>
      %279 = arith.minui %c1051325167_i32, %c1513705051_i32 : i32
      affine.store %true, %alloc_2[%c6] : memref<10xi1>
      %280 = math.roundeven %15 : tensor<3x3xf16>
      %281 = arith.ori %true, %true_0 : i1
      %282 = math.log2 %15 : tensor<3x3xf16>
      %283 = arith.ceildivsi %c1513705051_i32, %c1051325167_i32 : i32
      scf.yield
    }
    default {
      %269 = math.fma %cst_1, %cst_1, %cst_1 : f16
      %inserted_39 = tensor.insert %c-4321_i16 into %6[%c1, %c2] : tensor<3x3xi16>
      %270 = math.log %8 : tensor<10xf32>
      %271 = memref.load %alloc_2[%c2] : memref<10xi1>
      %272 = scf.index_switch %c1 -> i32 
      case 1 {
        %rank_40 = tensor.rank %12 : tensor<15x8xi1>
        %284 = memref.realloc %alloc_12 : memref<10xi32> to memref<10xi32>
        %285 = tensor.empty() : tensor<3x3xf16>
        %286 = linalg.matmul ins(%15, %15 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%285 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %287 = math.round %8 : tensor<10xf32>
        %288 = tensor.empty() : tensor<3x3xf16>
        %289 = linalg.matmul ins(%285, %15 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%288 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %290 = math.roundeven %14 : tensor<15xf32>
        %291 = vector.create_mask %c10 : vector<10xi1>
        %292 = vector.create_mask %c3 : vector<10xi1>
        %inserted_41 = tensor.insert %c541138043_i64 into %1[%c14, %c3] : tensor<15x8xi64>
        %293 = vector.matrix_multiply %292, %291 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %294 = math.rsqrt %8 : tensor<10xf32>
        %rank_42 = tensor.rank %285 : tensor<3x3xf16>
        vector.print %293 : vector<1xi1>
        %295 = arith.minsi %true_0, %false : i1
        affine.store %c-4321_i16, %alloc_9[%c2, %c6] : memref<3x3xi16>
        %296 = arith.remf %cst_1, %cst_1 : f16
        scf.yield %c1237412335_i32 : i32
      }
      case 2 {
        %284 = arith.maxui %c1513705051_i32, %c1513705051_i32 : i32
        %splat_40 = tensor.splat %c1513705051_i32 : tensor<15x8xi32>
        %285 = vector.create_mask %c10 : vector<15xi1>
        %286 = math.round %cst : f32
        %cast = tensor.cast %2 : tensor<15x8xf32> to tensor<?x?xf32>
        %287 = memref.realloc %alloc_2 : memref<10xi1> to memref<10xi1>
        %288 = arith.ceildivsi %c1237412335_i32, %c1513705051_i32 : i32
        %289 = index.maxu %c6, %c14
        %290 = math.tan %15 : tensor<3x3xf16>
        %291 = math.round %14 : tensor<15xf32>
        %292 = vector.broadcast %cst_1 : f16 to vector<f16>
        %293 = vector.transfer_write %292, %4[%c10] : vector<f16>, tensor<10xf16>
        %rank_41 = tensor.rank %10 : tensor<10xi1>
        %true_42 = index.bool.constant true
        %294 = vector.broadcast %cst : f32 to vector<15x15xf32>
        %295 = vector.broadcast %cst : f32 to vector<15xf32>
        %dest, %accumulated_value = vector.scan <add>, %294, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<15x15xf32>, vector<15xf32>
        %296 = index.ceildivs %24, %c14
        %297 = index.ceildivs %c0, %c7
        scf.yield %c1570006231_i32 : i32
      }
      default {
        %284 = math.atan2 %14, %5 : tensor<15xf32>
        %285 = math.log %15 : tensor<3x3xf16>
        %286 = bufferization.to_memref %9 : memref<3x3xi16>
        %287 = tensor.empty() : tensor<10xi32>
        %288 = math.fpowi %4, %287 : tensor<10xf16>, tensor<10xi32>
        %289 = index.ceildivs %c4, %c12
        %290 = arith.maxsi %c20035_i16, %c20035_i16 : i16
        vector.print %19 : vector<8xf32>
        %291 = index.ceildivu %c9, %c0
        %292 = arith.maxsi %c1237412335_i32, %c69732229_i32 : i32
        %293 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %294 = math.log10 %8 : tensor<10xf32>
        %295 = index.casts %c541138043_i64 : i64 to index
        vector.print %19 : vector<8xf32>
        %296 = arith.maxsi %c1749512412_i64, %c541138043_i64 : i64
        %297 = arith.minui %c1570006231_i32, %c1513705051_i32 : i32
        %298 = math.roundeven %2 : tensor<15x8xf32>
        scf.yield %c1513705051_i32 : i32
      }
      %273 = arith.remf %cst_1, %cst_1 : f16
      %274 = vector.reduction <minf>, %19 : vector<8xf32> into f32
      %275 = arith.cmpi ule, %c1051325167_i32, %c1237412335_i32 : i32
      %276 = vector.transpose %22, [] : vector<i32> to vector<i32>
      %277 = arith.addi %c1051325167_i32, %c1237412335_i32 : i32
      %278 = vector.extract %19[7] : vector<8xf32>
      %279 = math.floor %8 : tensor<10xf32>
      %280 = vector.broadcast %cst : f32 to vector<10xf32>
      %281 = vector.fma %280, %280, %280 : vector<10xf32>
      %282 = scf.index_switch %c15 -> tensor<3x3xf16> 
      case 1 {
        %284 = index.ceildivs %c5, %c0
        %285 = math.log %4 : tensor<10xf16>
        %286 = arith.xori %c-4321_i16, %c20035_i16 : i16
        %287 = index.maxs %c12, %c6
        %288 = index.castu %c5 : index to i32
        memref.store %cst_1, %alloc_8[%c1, %c1] : memref<3x3xf16>
        %289 = arith.remsi %c1051325167_i32, %c1570006231_i32 : i32
        %290 = arith.shrsi %c1237412335_i32, %c69732229_i32 : i32
        %291 = math.sqrt %2 : tensor<15x8xf32>
        vector.print %22 : vector<i32>
        %292 = vector.insert %cst, %280 [7] : f32 into vector<10xf32>
        %inserted_40 = tensor.insert %c494598180_i64 into %13[%c1, %c0] : tensor<3x3xi64>
        %293 = math.roundeven %15 : tensor<3x3xf16>
        %294 = vector.broadcast %cst : f32 to vector<10xf32>
        %295 = vector.fma %294, %280, %280 : vector<10xf32>
        %296 = math.log %4 : tensor<10xf16>
        %297 = tensor.empty() : tensor<3x3xi32>
        %298 = linalg.matmul ins(%17, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%297 : tensor<3x3xi32>) -> tensor<3x3xi32>
        scf.yield %15 : tensor<3x3xf16>
      }
      default {
        %284 = vector.insertelement %cst, %280[%c13 : index] : vector<10xf32>
        %285 = arith.negf %cst : f32
        %286 = index.maxu %c12, %c5
        %287 = vector.bitcast %281 : vector<10xf32> to vector<10xi32>
        %288 = arith.minui %c69732229_i32, %c1237412335_i32 : i32
        %alloc_40 = memref.alloc() : memref<15xi32>
        memref.tensor_store %11, %alloc_40 : memref<15xi32>
        %289 = arith.cmpf ole, %cst, %cst : f32
        %290 = math.sqrt %14 : tensor<15xf32>
        bufferization.dealloc_tensor %0 : tensor<3x3xi64>
        %291 = math.log %8 : tensor<10xf32>
        %292 = vector.create_mask %c15 : vector<10xi1>
        %293 = tensor.empty() : tensor<8x8xi64>
        %294 = tensor.empty() : tensor<15x8xi64>
        %295 = linalg.matmul ins(%1, %293 : tensor<15x8xi64>, tensor<8x8xi64>) outs(%294 : tensor<15x8xi64>) -> tensor<15x8xi64>
        %296 = math.roundeven %cst : f32
        %297 = bufferization.clone %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
        %298 = index.ceildivs %c5, %c13
        %alloc_41 = memref.alloc() : memref<3x3xi1>
        memref.copy %alloc_13, %alloc_41 : memref<3x3xi1> to memref<3x3xi1>
        scf.yield %15 : tensor<3x3xf16>
      }
      affine.store %cst, %alloc_17[] : memref<f32>
      %283 = index.ceildivs %c2, %c8
    }
    %25 = arith.mulf %cst, %cst : f32
    %26 = vector.transpose %19, [0] : vector<8xf32> to vector<8xf32>
    %27 = scf.index_switch %c0 -> memref<15x8xf16> 
    case 1 {
      %269 = index.ceildivu %c13, %c9
      %270 = math.ceil %5 : tensor<15xf32>
      %271 = arith.minsi %true, %true_0 : i1
      %272 = vector.extract_strided_slice %19 {offsets = [5], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
      %splat_39 = tensor.splat %c1749512412_i64 : tensor<15x8xi64>
      %273 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %274 = vector.fma %273, %273, %273 : vector<3x3xf32>
      %275 = math.round %cst_1 : f16
      %276 = index.castu %c15 : index to i32
      %cst_40 = arith.constant 1.000000e+00 : f32
      %cst_41 = arith.constant 0.000000e+00 : f32
      %277 = vector.transfer_read %alloc[%c3], %cst_41 : memref<10xf32>, vector<f32>
      %278 = arith.divsi %c1749512412_i64, %c494598180_i64 : i64
      %279 = index.ceildivu %c5, %c2
      %280 = math.fpowi %cst_1, %c1570006231_i32 : f16, i32
      %281 = math.fma %5, %14, %14 : tensor<15xf32>
      %282 = arith.floordivsi %c1570006231_i32, %c1237412335_i32 : i32
      %283 = vector.multi_reduction <mul>, %273, %cst [0, 1] : vector<3x3xf32> to f32
      scf.if %true_0 {
        %284 = math.ipowi %c1329909866_i64, %c494598180_i64 : i64
        %285 = arith.remf %cst_1, %cst_1 : f16
        %286 = index.sub %c11, %c7
        %287 = bufferization.to_memref %0 : memref<3x3xi64>
        %288 = arith.addi %c69732229_i32, %c1237412335_i32 : i32
        %289 = vector.bitcast %274 : vector<3x3xf32> to vector<3x3xf32>
        %290 = arith.remf %283, %cst_40 : f32
        %291 = math.fpowi %cst, %c1513705051_i32 : f32, i32
      } else {
        %284 = bufferization.to_memref %0 : memref<3x3xi64>
        %285 = math.fma %15, %15, %15 : tensor<3x3xf16>
        %286 = math.atan2 %cst_1, %cst_1 : f16
        %c0_i64_43 = arith.constant 0 : i64
        %c0_i64_44 = arith.constant 0 : i64
        %287 = vector.transfer_read %13[%269, %c6], %c0_i64_44 : tensor<3x3xi64>, vector<i64>
        %288 = memref.load %alloc_7[%c7] : memref<15xf16>
        bufferization.dealloc_tensor %2 : tensor<15x8xf32>
        %289 = math.cttz %11 : tensor<15xi32>
        %290 = arith.remf %283, %283 : f32
      }
      %alloc_42 = memref.alloc() : memref<15x8xf16>
      scf.yield %alloc_42 : memref<15x8xf16>
    }
    case 2 {
      %269 = math.round %2 : tensor<15x8xf32>
      %270 = arith.addi %c-4321_i16, %c-4321_i16 : i16
      %271 = arith.shli %c541138043_i64, %c1749512412_i64 : i64
      %272 = math.ipowi %0, %0 : tensor<3x3xi64>
      %273 = vector.extract_strided_slice %19 {offsets = [6], sizes = [2], strides = [1]} : vector<8xf32> to vector<2xf32>
      %274 = vector.matrix_multiply %273, %273 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
      %275 = memref.atomic_rmw addf %cst, %alloc_16[%c1, %c0] : (f32, memref<3x3xf32>) -> f32
      %276 = affine.apply affine_map<(d0, d1) -> (d0)>(%c2, %c0)
      %277 = tensor.empty() : tensor<3x3xi32>
      %278 = linalg.matmul ins(%3, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%277 : tensor<3x3xi32>) -> tensor<3x3xi32>
      %279 = index.ceildivs %c0, %c4
      %280 = vector.reduction <add>, %274 : vector<1xf32> into f32
      %281 = arith.xori %c20035_i16, %c-4321_i16 : i16
      %282 = vector.reduction <minf>, %274 : vector<1xf32> into f32
      %283 = bufferization.clone %alloc_7 : memref<15xf16> to memref<15xf16>
      %alloc_39 = memref.alloc() : memref<3x3xi64>
      memref.copy %alloc_4, %alloc_39 : memref<3x3xi64> to memref<3x3xi64>
      %284 = bufferization.to_memref %18 : memref<3x3xi16>
      %alloc_40 = memref.alloc() : memref<15x8xf16>
      scf.yield %alloc_40 : memref<15x8xf16>
    }
    default {
      %269 = index.ceildivs %c1, %c7
      %270 = vector.insertelement %c1237412335_i32, %22[] : vector<i32>
      %271 = math.sqrt %8 : tensor<10xf32>
      %272 = vector.extract %19[5] : vector<8xf32>
      %273 = vector.splat %c10 : vector<10xindex>
      %alloc_39 = memref.alloc() : memref<3x3xf32>
      memref.copy %alloc_16, %alloc_39 : memref<3x3xf32> to memref<3x3xf32>
      %274 = arith.remf %cst_1, %cst_1 : f16
      %275 = arith.divsi %c1749512412_i64, %c1329909866_i64 : i64
      %276 = affine.load %alloc_16[%c3, %c3] : memref<3x3xf32>
      %277 = arith.ceildivsi %true, %true : i1
      %278 = math.absi %3 : tensor<3x3xi32>
      %279 = arith.minf %cst, %cst : f32
      %280 = math.cos %cst_1 : f16
      %extracted_40 = tensor.extract %11[%c10] : tensor<15xi32>
      %281 = index.maxu %c6, %c10
      %282 = index.mul %c11, %c0
      %alloc_41 = memref.alloc() : memref<15x8xf16>
      scf.yield %alloc_41 : memref<15x8xf16>
    }
    %28 = tensor.empty() : tensor<3x3xi32>
    %29 = linalg.matmul ins(%17, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%28 : tensor<3x3xi32>) -> tensor<3x3xi32>
    %30 = math.sqrt %8 : tensor<10xf32>
    %31 = arith.minsi %c1051325167_i32, %c1570006231_i32 : i32
    %splat = tensor.splat %cst_1 : tensor<15x8xf16>
    %32 = bufferization.clone %alloc_10 : memref<15x8xi64> to memref<15x8xi64>
    %33 = arith.floordivsi %c1749512412_i64, %c1749512412_i64 : i64
    %34 = index.castu %c14 : index to i32
    %35 = index.sizeof
    %36 = math.fma %2, %2, %2 : tensor<15x8xf32>
    %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<15x8xi64> into tensor<120xi64>
    %37 = arith.minf %cst, %cst : f32
    %38 = arith.divsi %c1051325167_i32, %c1513705051_i32 : i32
    %39 = tensor.empty() : tensor<8x8x8xi64>
    %alloc_20 = memref.alloc() : memref<8x8xi64>
    %40 = tensor.empty() : tensor<8xi64>
    %41 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20, %40, %39 : memref<8x8xi64>, tensor<8xi64>, tensor<8x8x8xi64>) outs(%39 : tensor<8x8x8xi64>) {
    ^bb0(%in: i64, %in_39: i64, %in_40: i64, %out: i64):
      %269 = memref.load %alloc_3[%c2, %c0] : memref<3x3xf16>
      %270 = memref.realloc %alloc_18 : memref<10xi1> to memref<8xi1>
      %271 = index.ceildivs %c5, %c4
      scf.if %false {
        %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %302 = vector.insert %cst, %19 [2] : f32 into vector<8xf32>
        %303 = vector.insert %cst, %19 [4] : f32 into vector<8xf32>
        %304 = vector.broadcast %cst : f32 to vector<8x8xf32>
        %305 = vector.outerproduct %19, %19, %304 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
        %306 = index.ceildivs %c0, %c6
        %307 = arith.cmpi sgt, %false, %false : i1
        %308 = index.maxu %c5, %271
        %309 = arith.minui %c1329909866_i64, %in : i64
      }
      %272 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
      %273 = arith.negf %cst : f32
      %274 = vector.insert %cst, %19 [4] : f32 into vector<8xf32>
      affine.store %true, %alloc_18[%c10] : memref<10xi1>
      %275 = tensor.empty() : tensor<8x8x8xi64>
      %276 = tensor.empty() : tensor<8x8xi64>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %276 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%275 : tensor<8x8x8xi64>) {
      ^bb0(%in_42: i64, %in_43: i64, %out_44: i64):
        %301 = index.casts %c1570006231_i32 : i32 to index
        %302 = math.powf %8, %8 : tensor<10xf32>
        %303 = arith.addi %c1570006231_i32, %c69732229_i32 : i32
        %304 = vector.create_mask %c9 : vector<15xi1>
        %305 = math.ipowi %c69732229_i32, %c1237412335_i32 : i32
        %306 = vector.extract_strided_slice %304 {offsets = [13], sizes = [2], strides = [1]} : vector<15xi1> to vector<2xi1>
        %307 = vector.broadcast %c541138043_i64 : i64 to vector<15x8xi64>
        %308 = index.maxs %35, %c14
        %309 = vector.multi_reduction <maxsi>, %307, %307 [] : vector<15x8xi64> to vector<15x8xi64>
        %310 = math.fpowi %5, %11 : tensor<15xf32>, tensor<15xi32>
        %311 = bufferization.to_memref %5 : memref<15xf32>
        %312 = index.ceildivs %c12, %301
        %313 = index.ceildivu %c15, %308
        %314 = index.sub %c11, %c5
        %315 = vector.broadcast %in_43 : i64 to vector<8x8xi64>
        %316 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %307, %307, %315 : vector<15x8xi64>, vector<15x8xi64> into vector<8x8xi64>
        affine.store %cst_1, %alloc_3[%c4, %c12] : memref<3x3xf16>
        %alloc_45 = memref.alloc() : memref<15x8xf32>
        memref.tensor_store %2, %alloc_45 : memref<15x8xf32>
        %317 = math.roundeven %14 : tensor<15xf32>
        %318 = vector.broadcast %in_43 : i64 to vector<15xi64>
        %dest, %accumulated_value = vector.scan <mul>, %307, %318 {inclusive = false, reduction_dim = 1 : i64} : vector<15x8xi64>, vector<15xi64>
        %319 = arith.ceildivsi %c541138043_i64, %c1329909866_i64 : i64
        %320 = math.ipowi %13, %13 : tensor<3x3xi64>
        %321 = vector.broadcast %in_43 : i64 to vector<3xi64>
        vector.transfer_write %321, %alloc_10[%314, %301] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, memref<15x8xi64>
        %322 = bufferization.to_tensor %alloc_15 : memref<10xf32>
        %323 = tensor.empty() : tensor<15x8xi32>
        %324 = math.fpowi %2, %323 : tensor<15x8xf32>, tensor<15x8xi32>
        %325 = index.divs %301, %c2
        %splat_46 = tensor.splat %in_43 : tensor<3x3xi64>
        %326 = math.atan2 %cst_1, %cst_1 : f16
        %327 = tensor.empty() : tensor<8x15xi32>
        %328 = tensor.empty() : tensor<15x15xi32>
        %329 = linalg.matmul ins(%323, %327 : tensor<15x8xi32>, tensor<8x15xi32>) outs(%328 : tensor<15x15xi32>) -> tensor<15x15xi32>
        memref.store %c1051325167_i32, %alloc_14[%c2, %c1] : memref<15x8xi32>
        %330 = index.add %c14, %c8
        %331 = index.castu %c2 : index to i32
        %332 = memref.realloc %alloc : memref<10xf32> to memref<15xf32>
        linalg.yield %c494598180_i64 : i64
      } -> tensor<8x8x8xi64>
      %278 = math.fma %5, %5, %14 : tensor<15xf32>
      %279 = vector.broadcast %cst : f32 to vector<15xf32>
      %280 = vector.fma %279, %279, %279 : vector<15xf32>
      %281 = index.ceildivu %c7, %c15
      %282 = arith.cmpi sgt, %c541138043_i64, %in : i64
      %283 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %284 = vector.fma %283, %283, %283 : vector<3x3xf32>
      %285 = math.fma %5, %14, %5 : tensor<15xf32>
      affine.store %c1749512412_i64, %alloc_4[%c13, %c7] : memref<3x3xi64>
      %286 = math.powf %15, %15 : tensor<3x3xf16>
      %true_41 = arith.constant true
      %287 = math.ipowi %c1237412335_i32, %c1237412335_i32 : i32
      %288 = math.absi %c20035_i16 : i16
      %289 = vector.broadcast %c1749512412_i64 : i64 to vector<i64>
      vector.transfer_write %289, %alloc_4[%c12, %c8] : vector<i64>, memref<3x3xi64>
      %290 = vector.create_mask %c3, %c13 : vector<15x8xi1>
      %291 = arith.shrsi %true_0, %false : i1
      %292 = vector.bitcast %279 : vector<15xf32> to vector<15xf32>
      memref.copy %alloc_10, %32 : memref<15x8xi64> to memref<15x8xi64>
      %293 = tensor.empty() : tensor<10xi32>
      %294 = math.fpowi %4, %293 : tensor<10xf16>, tensor<10xi32>
      %295 = vector.broadcast %c-4321_i16 : i16 to vector<10xi16>
      %296 = vector.insert %cst, %292 [9] : f32 into vector<15xf32>
      %297 = math.log10 %cst_1 : f16
      %298 = math.fma %cst, %cst, %cst : f32
      %299 = index.castu %in_40 : i64 to index
      %300 = index.add %35, %c0
      linalg.yield %in_40 : i64
    } -> tensor<8x8x8xi64>
    %42 = math.round %15 : tensor<3x3xf16>
    %43 = index.floordivs %c3, %c7
    %44 = math.log %4 : tensor<10xf16>
    affine.for %arg3 = 0 to 15 {
    }
    %45 = math.sqrt %14 : tensor<15xf32>
    %46 = index.divs %c0, %c4
    %47 = arith.divsi %c69732229_i32, %c1513705051_i32 : i32
    %48 = arith.ceildivsi %c69732229_i32, %c1051325167_i32 : i32
    %49 = math.absi %transposed : tensor<3x3xi16>
    %50 = scf.index_switch %24 -> index 
    case 1 {
      %269 = arith.cmpi sge, %true, %false : i1
      %270 = arith.ori %c1513705051_i32, %c1051325167_i32 : i32
      scf.index_switch %24 
      case 1 {
        %286 = math.roundeven %4 : tensor<10xf16>
        %287 = memref.load %alloc_8[%c1, %c0] : memref<3x3xf16>
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %289 = arith.minui %true_0, %false : i1
        %290 = arith.remsi %c1051325167_i32, %c1051325167_i32 : i32
        %291 = arith.minf %cst_1, %cst_1 : f16
        %292 = vector.multi_reduction <maxf>, %19, %cst [0] : vector<8xf32> to f32
        %293 = vector.reduction <mul>, %19 : vector<8xf32> into f32
        %294 = bufferization.clone %alloc_15 : memref<10xf32> to memref<10xf32>
        %295 = vector.multi_reduction <mul>, %19, %292 [0] : vector<8xf32> to f32
        %296 = index.ceildivs %c14, %c15
        %297 = arith.floordivsi %c1329909866_i64, %c541138043_i64 : i64
        %298 = arith.maxsi %false, %true_0 : i1
        %false_41 = arith.constant false
        %299 = vector.transfer_read %alloc_18[%35], %false_41 : memref<10xi1>, vector<i1>
        %alloc_42 = memref.alloc() : memref<8x10xi1>
        %300 = tensor.empty() : tensor<15x10xi1>
        %301 = linalg.matmul ins(%12, %alloc_42 : tensor<15x8xi1>, memref<8x10xi1>) outs(%300 : tensor<15x10xi1>) -> tensor<15x10xi1>
        %302 = math.roundeven %4 : tensor<10xf16>
        scf.yield
      }
      case 2 {
        %286 = arith.addf %cst, %cst : f32
        %287 = tensor.empty() : tensor<10xi32>
        %288 = math.fpowi %8, %287 : tensor<10xf32>, tensor<10xi32>
        %289 = bufferization.clone %alloc_17 : memref<f32> to memref<f32>
        %290 = vector.broadcast %cst : f32 to vector<15xf32>
        %291 = vector.fma %290, %290, %290 : vector<15xf32>
        %292 = vector.extract_strided_slice %290 {offsets = [7], sizes = [6], strides = [1]} : vector<15xf32> to vector<6xf32>
        %293 = math.fma %splat, %splat, %splat : tensor<15x8xf16>
        %294 = arith.remf %cst, %cst : f32
        %295 = index.add %c15, %43
        %296 = math.log1p %8 : tensor<10xf32>
        %297 = index.maxu %c10, %c5
        memref.store %cst, %alloc_16[%c0, %c1] : memref<3x3xf32>
        %298 = arith.addi %c1749512412_i64, %c541138043_i64 : i64
        memref.copy %289, %alloc_17 : memref<f32> to memref<f32>
        %299 = index.maxs %c7, %c4
        %300 = index.add %c3, %24
        %extracted_41 = tensor.extract %11[%c8] : tensor<15xi32>
        scf.yield
      }
      default {
        %286 = arith.subi %c-4321_i16, %c20035_i16 : i16
        %287 = index.add %c4, %c15
        %288 = arith.remui %c20035_i16, %c20035_i16 : i16
        %expanded_41 = tensor.expand_shape %4 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        %289 = index.add %c6, %c0
        %290 = arith.minui %c1237412335_i32, %c1051325167_i32 : i32
        %291 = index.maxu %c7, %c7
        %292 = math.log1p %5 : tensor<15xf32>
        %293 = index.sub %c13, %43
        %294 = index.mul %c9, %c1
        %295 = index.casts %c1329909866_i64 : i64 to index
        %296 = vector.broadcast %cst : f32 to vector<8x8xf32>
        %297 = vector.outerproduct %19, %19, %296 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
        %298 = math.cos %cst_1 : f16
        %299 = vector.bitcast %19 : vector<8xf32> to vector<8xf32>
        %300 = math.tan %14 : tensor<15xf32>
        %301 = index.castu %c9 : index to i32
      }
      %271 = tensor.empty() : tensor<3x3xf16>
      %mapped_39 = linalg.map ins(%15, %alloc_3 : tensor<3x3xf16>, memref<3x3xf16>) outs(%271 : tensor<3x3xf16>)
        (%in: f16, %in_41: f16) {
          %286 = math.cttz %10 : tensor<10xi1>
          %287 = vector.extract_strided_slice %19 {offsets = [3], sizes = [4], strides = [1]} : vector<8xf32> to vector<4xf32>
          %288 = tensor.empty() : tensor<3x3xi64>
          %289 = linalg.matmul ins(%0, %0 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%288 : tensor<3x3xi64>) -> tensor<3x3xi64>
          %290 = math.tan %cst_1 : f16
          %291 = vector.multi_reduction <maxf>, %287, %287 [] : vector<4xf32> to vector<4xf32>
          %292 = arith.addi %false, %false : i1
          %293 = index.castu %c1329909866_i64 : i64 to index
          %294 = index.sizeof
          %295 = index.maxu %293, %c14
          %296 = vector.reduction <mul>, %287 : vector<4xf32> into f32
          memref.assume_alignment %alloc_8, 1 : memref<3x3xf16>
          %297 = arith.floordivsi %c1749512412_i64, %c1329909866_i64 : i64
          %cst_42 = arith.constant 1.000000e+00 : f32
          %cst_43 = arith.constant 0.000000e+00 : f32
          %298 = vector.transfer_read %8[%35], %cst_43 : tensor<10xf32>, vector<f32>
          %299 = arith.remf %cst, %cst_42 : f32
          %300 = index.ceildivs %c6, %35
          %301 = index.add %c0, %43
          %302 = vector.broadcast %c-4321_i16 : i16 to vector<15xi16>
          %303 = arith.minf %in_41, %in_41 : f16
          %304 = index.castu %35 : index to i32
          %305 = arith.shrsi %c1513705051_i32, %c1570006231_i32 : i32
          %306 = index.maxu %c11, %c2
          %c-4855_i16 = arith.constant -4855 : i16
          %307 = math.tanh %14 : tensor<15xf32>
          %308 = math.ipowi %21, %21 : tensor<i1>
          %309 = math.fma %cst_1, %in_41, %in_41 : f16
          %310 = arith.cmpi sge, %c541138043_i64, %c541138043_i64 : i64
          %311 = math.powf %14, %14 : tensor<15xf32>
          %312 = arith.divf %cst, %cst_42 : f32
          %313 = arith.addi %c69732229_i32, %c1570006231_i32 : i32
          %314 = math.log10 %15 : tensor<3x3xf16>
          %315 = arith.cmpi slt, %c-4321_i16, %c20035_i16 : i16
          %316 = arith.ceildivsi %c1237412335_i32, %c1570006231_i32 : i32
          %cst_44 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_44 : f16
        }
      %272 = vector.broadcast %c1051325167_i32 : i32 to vector<15x8xi32>
      %273 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %274 = vector.fma %273, %273, %273 : vector<3x3xf32>
      %275 = bufferization.to_tensor %alloc_8 : memref<3x3xf16>
      %276 = index.divs %c11, %c11
      %277 = math.atan %8 : tensor<10xf32>
      %278 = arith.maxsi %c1329909866_i64, %c494598180_i64 : i64
      %279 = tensor.empty() : tensor<8x8x8xi64>
      %alloc_40 = memref.alloc() : memref<8x8xi64>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40 : memref<8x8xi64>) outs(%279 : tensor<8x8x8xi64>) {
      ^bb0(%in: i64, %out: i64):
        %286 = arith.minf %cst_1, %cst_1 : f16
        %287 = arith.shrui %c1237412335_i32, %c1570006231_i32 : i32
        %288 = math.fpowi %15, %16 : tensor<3x3xf16>, tensor<3x3xi32>
        %289 = math.sqrt %5 : tensor<15xf32>
        %290 = vector.broadcast %in : i64 to vector<i64>
        %291 = vector.transfer_write %290, %1[%c14, %c11] : vector<i64>, tensor<15x8xi64>
        %292 = math.cos %cst_1 : f16
        %293 = vector.broadcast %out : i64 to vector<15xi64>
        %294 = vector.broadcast %true_0 : i1 to vector<15xi1>
        %295 = vector.maskedload %alloc_10[%c2, %c4], %294, %293 : memref<15x8xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %296 = arith.minui %true, %false : i1
        %297 = vector.broadcast %c-4321_i16 : i16 to vector<8xi16>
        %298 = vector.broadcast %true_0 : i1 to vector<8xi1>
        %299 = vector.maskedload %alloc_11[%c1, %c0], %298, %297 : memref<3x3xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %300 = arith.muli %c-4321_i16, %c20035_i16 : i16
        %301 = vector.create_mask %c5, %c13 : vector<3x3xi1>
        %302 = bufferization.to_tensor %alloc_13 : memref<3x3xi1>
        %303 = tensor.empty() : tensor<10xi32>
        %304 = math.fpowi %8, %303 : tensor<10xf32>, tensor<10xi32>
        %305 = vector.transpose %274, [0, 1] : vector<3x3xf32> to vector<3x3xf32>
        %306 = arith.addi %c1329909866_i64, %c541138043_i64 : i64
        %307 = arith.shli %in, %c494598180_i64 : i64
        %308 = math.roundeven %14 : tensor<15xf32>
        %309 = arith.minsi %c-4321_i16, %c20035_i16 : i16
        %310 = math.tanh %14 : tensor<15xf32>
        %from_elements = tensor.from_elements %true_0, %false, %true_0, %false, %true_0, %true_0, %true_0, %true, %false, %false : tensor<10xi1>
        %311 = index.ceildivs %c8, %c7
        %312 = vector.broadcast %c-4321_i16 : i16 to vector<8x8xi16>
        %313 = vector.outerproduct %297, %299, %312 {kind = #vector.kind<minui>} : vector<8xi16>, vector<8xi16>
        %314 = index.add %c10, %c12
        %315 = bufferization.clone %32 : memref<15x8xi64> to memref<15x8xi64>
        %316 = index.castu %c1051325167_i32 : i32 to index
        %317 = vector.bitcast %293 : vector<15xi64> to vector<15xi64>
        %318 = memref.atomic_rmw addi %c1513705051_i32, %alloc_12[%c4] : (i32, memref<10xi32>) -> i32
        %319 = index.maxu %35, %c3
        %320 = math.tanh %5 : tensor<15xf32>
        %321 = math.fma %15, %15, %15 : tensor<3x3xf16>
        %322 = math.round %8 : tensor<10xf32>
        %323 = index.add %c4, %c2
        linalg.yield %c494598180_i64 : i64
      } -> tensor<8x8x8xi64>
      memref.alloca_scope  {
        %286 = index.castu %c1749512412_i64 : i64 to index
        memref.assume_alignment %alloc_4, 1 : memref<3x3xi64>
        %287 = index.castu %46 : index to i32
        %288 = vector.transpose %273, [0, 1] : vector<3x3xf32> to vector<3x3xf32>
        %289 = index.floordivs %c3, %c14
        %290 = bufferization.to_memref %7 : memref<15xi1>
        %291 = math.copysign %15, %15 : tensor<3x3xf16>
        %292 = arith.remf %cst_1, %cst_1 : f16
        %293 = arith.ori %c-4321_i16, %c-4321_i16 : i16
        %294 = index.ceildivs %286, %c0
        %295 = arith.ori %true, %true : i1
        %296 = vector.broadcast %false : i1 to vector<15xi1>
        %297 = vector.maskedload %alloc_6[%c10, %c7], %296, %296 : memref<15x8xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %298 = vector.broadcast %c-4321_i16 : i16 to vector<3x3xi16>
        %299 = vector.extract %298[2] : vector<3x3xi16>
        %300 = vector.reduction <mul>, %19 : vector<8xf32> into f32
        %301 = index.ceildivs %286, %43
        %302 = math.absi %c1570006231_i32 : i32
        %303 = arith.addi %true_0, %true_0 : i1
        %rank_41 = tensor.rank %275 : tensor<3x3xf16>
        %304 = math.absi %c541138043_i64 : i64
        %305 = index.divs %286, %43
        %306 = math.tan %275 : tensor<3x3xf16>
        %307 = math.fpowi %15, %3 : tensor<3x3xf16>, tensor<3x3xi32>
        %308 = arith.shrui %c20035_i16, %c-4321_i16 : i16
        %309 = vector.insert %c20035_i16, %299 [0] : i16 into vector<3xi16>
        %310 = math.atan %8 : tensor<10xf32>
        %311 = math.rsqrt %14 : tensor<15xf32>
        %312 = vector.broadcast %cst : f32 to vector<3xf32>
        %dest, %accumulated_value = vector.scan <add>, %273, %312 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xf32>, vector<3xf32>
        %313 = arith.minf %cst, %cst : f32
        %314 = vector.reduction <add>, %19 : vector<8xf32> into f32
        %315 = memref.realloc %alloc_18 : memref<10xi1> to memref<15xi1>
        %316 = vector.broadcast %cst : f32 to vector<3xf32>
        %317 = vector.multi_reduction <mul>, %273, %316 [1] : vector<3x3xf32> to vector<3xf32>
      }
      %281 = vector.broadcast %cst : f32 to vector<10xf32>
      %282 = vector.fma %281, %281, %281 : vector<10xf32>
      %283 = math.powf %15, %275 : tensor<3x3xf16>
      %284 = vector.reduction <add>, %281 : vector<10xf32> into f32
      %285 = vector.extract %282[4] : vector<10xf32>
      scf.yield %c3 : index
    }
    default {
      %alloca = memref.alloca() : memref<3x3xi16>
      %269 = arith.ceildivsi %false, %true : i1
      %270 = affine.if affine_set<(d0) : (-d0 - (d0 - 1) ceildiv 4 == 0, d0 + 16 >= 0)>(%c4) -> memref<15x8xi16> {
        %283 = arith.ori %c1749512412_i64, %c541138043_i64 : i64
        %284 = arith.ori %c1051325167_i32, %c1237412335_i32 : i32
        %splat_40 = tensor.splat %c1513705051_i32 : tensor<3x3xi32>
        %285 = index.add %c12, %c15
        %286 = index.sizeof
        %287 = arith.remui %c1329909866_i64, %c1329909866_i64 : i64
        %splat_41 = tensor.splat %c1513705051_i32 : tensor<10xi32>
        %288 = index.maxu %c3, %286
        %alloc_42 = memref.alloc() : memref<15x8xi16>
        affine.yield %alloc_42 : memref<15x8xi16>
      } else {
        %283 = math.atan2 %2, %2 : tensor<15x8xf32>
        %284 = vector.bitcast %19 : vector<8xf32> to vector<8xf32>
        %285 = arith.floordivsi %c1051325167_i32, %c1570006231_i32 : i32
        %286 = index.ceildivu %35, %c14
        %287 = vector.matrix_multiply %19, %284 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %288 = arith.shrui %c1513705051_i32, %c1051325167_i32 : i32
        %289 = affine.load %alloc_7[%c2] : memref<15xf16>
        %290 = math.ipowi %17, %3 : tensor<3x3xi32>
        %alloc_40 = memref.alloc() : memref<15x8xi16>
        affine.yield %alloc_40 : memref<15x8xi16>
      }
      scf.execute_region {
        %283 = affine.apply affine_map<(d0) -> ((d0 * 4) mod 128)>(%c7)
        %284 = math.rsqrt %splat : tensor<15x8xf16>
        %285 = index.divu %283, %24
        %286 = vector.reduction <minf>, %19 : vector<8xf32> into f32
        %287 = index.add %46, %43
        %288 = index.mul %c11, %c0
        %true_40 = arith.constant true
        %false_41 = arith.constant false
        %289 = vector.transfer_read %7[%c2], %false_41 : tensor<15xi1>, vector<i1>
        %290 = arith.shrsi %c1749512412_i64, %c494598180_i64 : i64
        %291 = bufferization.to_memref %11 : memref<15xi32>
        %292 = math.rsqrt %5 : tensor<15xf32>
        %293 = index.floordivs %24, %24
        %294 = arith.remui %true_0, %true : i1
        %295 = arith.shli %c494598180_i64, %c541138043_i64 : i64
        %296 = math.sqrt %2 : tensor<15x8xf32>
        affine.store %true_0, %alloc_18[%c2] : memref<10xi1>
        %297 = math.powf %15, %15 : tensor<3x3xf16>
        scf.yield
      }
      %271 = arith.muli %c1237412335_i32, %c69732229_i32 : i32
      %272 = arith.minsi %c1749512412_i64, %c541138043_i64 : i64
      %273 = vector.broadcast %false : i1 to vector<10x8x15xi1>
      %274 = vector.broadcast %true : i1 to vector<10x15xi1>
      %dest, %accumulated_value = vector.scan <maxui>, %273, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<10x8x15xi1>, vector<10x15xi1>
      %inserted_39 = tensor.insert %c-4321_i16 into %9[%c1, %c2] : tensor<3x3xi16>
      %275 = arith.cmpf one, %cst_1, %cst_1 : f16
      %276 = math.powf %4, %4 : tensor<10xf16>
      %277 = index.sizeof
      %278 = arith.maxui %true, %true : i1
      %279 = vector.insertelement %cst, %19[%24 : index] : vector<8xf32>
      %280 = arith.remui %c20035_i16, %c20035_i16 : i16
      %281 = arith.floordivsi %c1570006231_i32, %c1570006231_i32 : i32
      %282 = arith.minui %c1513705051_i32, %c1570006231_i32 : i32
      scf.yield %35 : index
    }
    %51 = index.maxu %c9, %c0
    %52 = bufferization.clone %alloc_14 : memref<15x8xi32> to memref<15x8xi32>
    %53 = memref.atomic_rmw andi %c494598180_i64, %alloc_4[%c2, %c1] : (i64, memref<3x3xi64>) -> i64
    %54 = index.sub %c2, %43
    %55 = vector.reduction <maxf>, %19 : vector<8xf32> into f32
    %56 = arith.minsi %c541138043_i64, %c1749512412_i64 : i64
    %57 = arith.floordivsi %c1570006231_i32, %c69732229_i32 : i32
    %58 = vector.broadcast %true : i1 to vector<3xi1>
    %59 = vector.maskedload %alloc_18[%c3], %58, %58 : memref<10xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    memref.store %false, %alloc_18[%c6] : memref<10xi1>
    %60 = math.ipowi %6, %6 : tensor<3x3xi16>
    %61 = math.ceil %4 : tensor<10xf16>
    %62 = index.divs %c3, %c13
    %63 = vector.broadcast %true_0 : i1 to vector<3x3xi1>
    %64 = vector.outerproduct %58, %58, %63 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
    %65 = index.add %c13, %c10
    %66 = index.ceildivs %c11, %c1
    %67 = math.tanh %5 : tensor<15xf32>
    %68 = arith.floordivsi %c1749512412_i64, %c541138043_i64 : i64
    %69 = arith.minui %c494598180_i64, %c494598180_i64 : i64
    %false_21 = index.bool.constant false
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %70 = vector.transfer_read %3[%51, %62], %c0_i32 : tensor<3x3xi32>, vector<i32>
    %71 = index.casts %true : i1 to index
    %72 = index.divs %c8, %46
    memref.copy %alloc_3, %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
    %73 = math.round %4 : tensor<10xf16>
    %74 = tensor.empty() : tensor<8x10xi64>
    %75 = tensor.empty() : tensor<15x10xi64>
    %76 = linalg.matmul ins(%1, %74 : tensor<15x8xi64>, tensor<8x10xi64>) outs(%75 : tensor<15x10xi64>) -> tensor<15x10xi64>
    %77 = bufferization.to_memref %17 : memref<3x3xi32>
    bufferization.dealloc_tensor %20 : tensor<i1>
    %78 = index.sub %66, %c7
    %79 = arith.ceildivsi %c494598180_i64, %c1329909866_i64 : i64
    %80 = index.sub %c15, %c1
    %81 = arith.mulf %cst_1, %cst_1 : f16
    %82 = math.fpowi %5, %11 : tensor<15xf32>, tensor<15xi32>
    %83 = affine.if affine_set<(d0) : (-d0 == 0)>(%c1) -> i64 {
      %269 = arith.ori %c69732229_i32, %c69732229_i32 : i32
      %270 = index.maxs %c5, %c5
      %271 = memref.load %alloc_5[%c4] : memref<15xf16>
      %272 = bufferization.clone %alloc_6 : memref<15x8xi1> to memref<15x8xi1>
      %273 = index.add %78, %c4
      %274 = bufferization.to_memref %20 : memref<i1>
      %275 = math.ceil %cst : f32
      %276 = arith.addi %c494598180_i64, %c541138043_i64 : i64
      affine.yield %c1749512412_i64 : i64
    } else {
      %269 = memref.realloc %alloc_5 : memref<15xf16> to memref<10xf16>
      %270 = index.maxu %65, %c5
      %271 = math.fpowi %15, %28 : tensor<3x3xf16>, tensor<3x3xi32>
      %272 = index.maxu %62, %c6
      %273 = math.sqrt %8 : tensor<10xf32>
      %274 = math.round %4 : tensor<10xf16>
      %275 = vector.insert %true, %59 [1] : i1 into vector<3xi1>
      %276 = arith.ori %c1_i32, %c1570006231_i32 : i32
      affine.yield %c494598180_i64 : i64
    }
    %84 = index.ceildivu %c2, %54
    %85 = arith.remf %cst_1, %cst_1 : f16
    %86 = math.tanh %splat : tensor<15x8xf16>
    %87 = vector.multi_reduction <add>, %58, %58 [] : vector<3xi1> to vector<3xi1>
    %88 = bufferization.to_tensor %alloc_6 : memref<15x8xi1>
    %89 = math.copysign %5, %5 : tensor<15xf32>
    %90 = math.rsqrt %8 : tensor<10xf32>
    memref.assume_alignment %alloc_7, 8 : memref<15xf16>
    %91 = tensor.empty() : tensor<3x3xi32>
    %92 = linalg.matmul ins(%16, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%91 : tensor<3x3xi32>) -> tensor<3x3xi32>
    %93 = math.ceil %2 : tensor<15x8xf32>
    %94 = arith.ori %c1329909866_i64, %c1749512412_i64 : i64
    %95 = math.roundeven %5 : tensor<15xf32>
    %96 = math.tan %8 : tensor<10xf32>
    %97 = index.sub %c7, %35
    %98 = math.ipowi %c69732229_i32, %c1570006231_i32 : i32
    %99 = math.tanh %8 : tensor<10xf32>
    memref.copy %alloc_18, %alloc_2 : memref<10xi1> to memref<10xi1>
    %rank = tensor.rank %7 : tensor<15xi1>
    %100 = math.log1p %splat : tensor<15x8xf16>
    %101 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %58, %59, %true : vector<3xi1>, vector<3xi1> into i1
    %c1_i32_22 = arith.constant 1 : i32
    %102 = vector.transfer_read %91[%c1, %c1], %c1_i32_22 : tensor<3x3xi32>, vector<i32>
    %103 = index.ceildivs %66, %84
    %expanded = tensor.expand_shape %18 [[0], [1, 2]] : tensor<3x3xi16> into tensor<3x3x1xi16>
    %104 = arith.remsi %c20035_i16, %c-4321_i16 : i16
    %105 = index.floordivs %c13, %c12
    %106 = vector.splat %c1749512412_i64 : vector<15xi64>
    %107 = scf.index_switch %105 -> i64 
    case 1 {
      %269 = math.round %8 : tensor<10xf32>
      %270 = vector.insert %cst, %19 [4] : f32 into vector<8xf32>
      %271 = vector.broadcast %true : i1 to vector<15xi1>
      %272 = index.maxu %103, %c11
      %cst_39 = arith.constant 1.000000e+00 : f16
      %273 = vector.transfer_read %alloc_8[%c2, %c0], %cst_39 : memref<3x3xf16>, vector<f16>
      %274 = vector.broadcast %35 : index to vector<10xindex>
      %275 = vector.broadcast %true_0 : i1 to vector<10xi1>
      %276 = vector.broadcast %c1329909866_i64 : i64 to vector<10xi64>
      vector.scatter %alloc_4[%c0, %c0] [%274], %275, %276 : memref<3x3xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
      %277 = index.maxu %71, %105
      vector.print %58 : vector<3xi1>
      %extracted_40 = tensor.extract %4[%c8] : tensor<10xf16>
      %278 = index.maxs %84, %c0
      %279 = math.log1p %15 : tensor<3x3xf16>
      %280 = vector.extract %19[3] : vector<8xf32>
      %281 = index.ceildivs %278, %c1
      %282 = math.round %extracted_40 : f16
      scf.index_switch %c11 
      case 1 {
        %284 = math.ipowi %c69732229_i32, %c1_i32_22 : i32
        %285 = arith.minui %true, %false_21 : i1
        %286 = index.castu %c1_i32 : i32 to index
        %287 = arith.shrsi %c1513705051_i32, %c1237412335_i32 : i32
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %271, %271, %false : vector<15xi1>, vector<15xi1> into i1
        %289 = index.maxu %c14, %c1
        %290 = math.fpowi %extracted_40, %c1_i32 : f16, i32
        %291 = math.fma %8, %8, %8 : tensor<10xf32>
        %292 = vector.broadcast %103 : index to vector<8xindex>
        %293 = vector.broadcast %false_21 : i1 to vector<8xi1>
        %294 = vector.broadcast %extracted_40 : f16 to vector<8xf16>
        vector.scatter %alloc_3[%c0, %c0] [%292], %293, %294 : memref<3x3xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %295 = arith.mulf %cst, %cst : f32
        %296 = memref.load %alloc_18[%c5] : memref<10xi1>
        bufferization.dealloc_tensor %5 : tensor<15xf32>
        %297 = vector.broadcast %false : i1 to vector<15xi1>
        %298 = math.ipowi %c1_i32_22, %c1051325167_i32 : i32
        %299 = vector.extract %271[13] : vector<15xi1>
        %300 = arith.muli %c541138043_i64, %c541138043_i64 : i64
        scf.yield
      }
      case 2 {
        %284 = math.tanh %8 : tensor<10xf32>
        %285 = arith.addi %c1329909866_i64, %c494598180_i64 : i64
        %286 = arith.ori %c1749512412_i64, %c1329909866_i64 : i64
        %287 = vector.splat %c2 : vector<15xindex>
        %288 = math.fma %cst, %cst, %cst : f32
        %289 = memref.atomic_rmw mulf %cst, %alloc_17[] : (f32, memref<f32>) -> f32
        %290 = index.castu %c4 : index to i32
        %291 = vector.insertelement %cst, %19[%80 : index] : vector<8xf32>
        %292 = arith.shrui %c1_i32_22, %c69732229_i32 : i32
        %293 = math.exp %4 : tensor<10xf16>
        %294 = index.add %43, %103
        %295 = math.ctpop %91 : tensor<3x3xi32>
        %296 = index.casts %272 : index to i32
        %297 = math.sqrt %14 : tensor<15xf32>
        %298 = arith.minsi %c69732229_i32, %c69732229_i32 : i32
        %299 = arith.floordivsi %c1329909866_i64, %c1749512412_i64 : i64
        scf.yield
      }
      case 3 {
        %284 = memref.atomic_rmw maxu %c1051325167_i32, %77[%c1, %c2] : (i32, memref<3x3xi32>) -> i32
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %59, %59, %true : vector<3xi1>, vector<3xi1> into i1
        %286 = vector.reduction <add>, %59 : vector<3xi1> into i1
        %287 = arith.cmpi ugt, %c1749512412_i64, %c1749512412_i64 : i64
        %288 = bufferization.clone %alloc_13 : memref<3x3xi1> to memref<3x3xi1>
        %289 = math.ceil %splat : tensor<15x8xf16>
        %290 = index.casts %true_0 : i1 to index
        %c1576193129_i32 = arith.constant 1576193129 : i32
        %291 = arith.floordivsi %c541138043_i64, %c541138043_i64 : i64
        %292 = arith.remui %c1051325167_i32, %c1570006231_i32 : i32
        %293 = math.sqrt %cst_39 : f16
        %294 = arith.minf %cst_39, %extracted_40 : f16
        %295 = vector.reduction <minui>, %58 : vector<3xi1> into i1
        %296 = memref.atomic_rmw minf %extracted_40, %alloc_5[%c6] : (f16, memref<15xf16>) -> f16
        %297 = math.round %4 : tensor<10xf16>
        %298 = vector.insert %cst, %19 [4] : f32 into vector<8xf32>
        scf.yield
      }
      default {
        %inserted_41 = tensor.insert %cst into %8[%c0] : tensor<10xf32>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %271, %271, %false_21 : vector<15xi1>, vector<15xi1> into i1
        %285 = math.powf %extracted_40, %extracted_40 : f16
        %splat_42 = tensor.splat %c-4321_i16 : tensor<15x8xi16>
        %286 = memref.realloc %alloc_2 : memref<10xi1> to memref<10xi1>
        %287 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * -64)>(%c8, %72, %c6, %278)
        %288 = vector.broadcast %c1513705051_i32 : i32 to vector<8x8x8xi32>
        %289 = vector.broadcast %c1237412335_i32 : i32 to vector<8x8xi32>
        %dest, %accumulated_value = vector.scan <and>, %288, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<8x8x8xi32>, vector<8x8xi32>
        %290 = vector.broadcast %true : i1 to vector<3x3xi1>
        %291 = vector.outerproduct %59, %58, %290 {kind = #vector.kind<or>} : vector<3xi1>, vector<3xi1>
        %292 = vector.broadcast %c1_i32_22 : i32 to vector<15xi32>
        %293 = vector.maskedload %alloc_12[%c4], %271, %292 : memref<10xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %294 = arith.remsi %false_21, %true_0 : i1
        %295 = bufferization.to_memref %14 : memref<15xf32>
        %alloc_43 = memref.alloc() : memref<15xf32>
        memref.copy %295, %alloc_43 : memref<15xf32> to memref<15xf32>
        %296 = bufferization.clone %alloc_16 : memref<3x3xf32> to memref<3x3xf32>
        %inserted_44 = tensor.insert %c1_i32 into %3[%c2, %c2] : tensor<3x3xi32>
        %297 = math.tan %14 : tensor<15xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %58, %59, %true : vector<3xi1>, vector<3xi1> into i1
      }
      %283 = index.maxu %c12, %278
      scf.yield %c494598180_i64 : i64
    }
    case 2 {
      %true_39 = index.bool.constant true
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<3x3x1xi16>) {
      ^bb0(%out: i16):
        %283 = math.log1p %cst : f32
        %284 = arith.addi %c69732229_i32, %c1237412335_i32 : i32
        %285 = math.absi %91 : tensor<3x3xi32>
        %286 = arith.ori %c1329909866_i64, %c1749512412_i64 : i64
        %cast = tensor.cast %3 : tensor<3x3xi32> to tensor<?x?xi32>
        %287 = arith.ceildivsi %true_39, %true : i1
        %288 = math.absi %c1513705051_i32 : i32
        %289 = index.ceildivs %c14, %51
        %290 = tensor.empty() : tensor<15x8xi32>
        %291 = math.fpowi %splat, %290 : tensor<15x8xf16>, tensor<15x8xi32>
        %292 = bufferization.to_tensor %alloc_18 : memref<10xi1>
        vector.print %19 : vector<8xf32>
        %293 = math.tanh %14 : tensor<15xf32>
        %294 = vector.extract %58[2] : vector<3xi1>
        %295 = index.sub %c13, %c10
        %296 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 mod 32 - (d1 mod 32 - 32))>(%c6, %c0, %35, %c7)
        %297 = vector.broadcast %cst : f32 to vector<15x8xf32>
        %298 = vector.fma %297, %297, %297 : vector<15x8xf32>
        %299 = arith.divf %cst, %cst : f32
        %300 = tensor.empty() : tensor<3x3xf16>
        %301 = linalg.matmul ins(%15, %15 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%300 : tensor<3x3xf16>) -> tensor<3x3xf16>
        %302 = math.sqrt %8 : tensor<10xf32>
        %303 = math.absi %28 : tensor<3x3xi32>
        %304 = memref.atomic_rmw mins %c1_i32_22, %52[%c5, %c5] : (i32, memref<15x8xi32>) -> i32
        %305 = arith.minf %cst, %cst : f32
        %306 = index.ceildivs %43, %105
        %307 = vector.broadcast %cst : f32 to vector<15xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %297, %307 {inclusive = false, reduction_dim = 1 : i64} : vector<15x8xf32>, vector<15xf32>
        %308 = index.floordivs %c5, %65
        %309 = math.rsqrt %4 : tensor<10xf16>
        %310 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
        %311 = math.cos %cst_1 : f16
        %312 = arith.remui %c1_i32, %c69732229_i32 : i32
        %313 = vector.broadcast %c1_i32_22 : i32 to vector<3x3xi32>
        %314 = vector.matrix_multiply %59, %59 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
        %315 = math.log %15 : tensor<3x3xf16>
        linalg.yield %c20035_i16 : i16
      } -> tensor<3x3x1xi16>
      %270 = math.round %15 : tensor<3x3xf16>
      %alloc_40 = memref.alloc() : memref<1x3xi16>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40 : memref<1x3xi16>) outs(%expanded : tensor<3x3x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %splat_42 = tensor.splat %c1329909866_i64 : tensor<15x8xi64>
        %283 = arith.minsi %true_39, %false_21 : i1
        %284 = arith.minsi %out, %in : i16
        %285 = vector.splat %105 : vector<3x3xindex>
        %286 = math.sqrt %cst : f32
        %splat_43 = tensor.splat %c1329909866_i64 : tensor<15xi64>
        %287 = math.ctlz %c1237412335_i32 : i32
        %288 = index.add %c3, %c7
        %289 = arith.divf %cst, %cst : f32
        %290 = math.atan2 %splat, %splat : tensor<15x8xf16>
        %291 = vector.reduction <maxf>, %19 : vector<8xf32> into f32
        %292 = arith.maxsi %c20035_i16, %c-4321_i16 : i16
        %293 = arith.muli %c-4321_i16, %out : i16
        %294 = arith.muli %c1237412335_i32, %c1051325167_i32 : i32
        %295 = math.log %4 : tensor<10xf16>
        %296 = index.mul %c9, %c11
        %297 = bufferization.to_tensor %alloc_18 : memref<10xi1>
        %298 = math.tanh %15 : tensor<3x3xf16>
        %299 = arith.maxsi %c69732229_i32, %c69732229_i32 : i32
        %300 = bufferization.to_memref %transposed : memref<3x3xi16>
        %301 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %302 = vector.broadcast %true_39 : i1 to vector<8xi1>
        %303 = vector.maskedload %alloc_8[%c0, %c1], %302, %301 : memref<3x3xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %304 = arith.remsi %c541138043_i64, %c494598180_i64 : i64
        %305 = math.tan %2 : tensor<15x8xf32>
        %306 = index.maxs %78, %c4
        %307 = arith.divsi %c1237412335_i32, %c1513705051_i32 : i32
        %308 = arith.addi %c20035_i16, %out : i16
        %309 = bufferization.to_memref %12 : memref<15x8xi1>
        %310 = index.casts %true_39 : i1 to index
        %311 = arith.floordivsi %c1749512412_i64, %c1749512412_i64 : i64
        %312 = bufferization.clone %32 : memref<15x8xi64> to memref<15x8xi64>
        %313 = index.ceildivs %62, %c15
        %314 = vector.multi_reduction <xor>, %302, %true_39 [0] : vector<8xi1> to i1
        linalg.yield %c-4321_i16 : i16
      } -> tensor<3x3x1xi16>
      %272 = vector.bitcast %58 : vector<3xi1> to vector<3xi1>
      %273 = arith.ori %c1513705051_i32, %c1051325167_i32 : i32
      %274 = math.log %2 : tensor<15x8xf32>
      %275 = index.maxu %24, %c11
      %276 = vector.reduction <and>, %272 : vector<3xi1> into i1
      %277 = memref.realloc %alloc_2 : memref<10xi1> to memref<15xi1>
      %278 = index.sub %c6, %54
      %279 = arith.mulf %cst_1, %cst_1 : f16
      %280 = arith.floordivsi %c1570006231_i32, %c69732229_i32 : i32
      %false_41 = index.bool.constant false
      %281 = bufferization.to_tensor %alloc_8 : memref<3x3xf16>
      %282 = vector.insertelement %true_0, %59[%54 : index] : vector<3xi1>
      scf.yield %c1329909866_i64 : i64
    }
    case 3 {
      %269 = arith.remf %cst, %cst : f32
      %270 = index.add %54, %c10
      %271 = vector.insert %false, %59 [2] : i1 into vector<3xi1>
      %272 = arith.minsi %c1_i32_22, %c1_i32 : i32
      %273 = bufferization.clone %alloc_12 : memref<10xi32> to memref<10xi32>
      %274 = math.sqrt %14 : tensor<15xf32>
      %275 = vector.broadcast %cst : f32 to vector<8x15xf32>
      %276 = vector.broadcast %cst : f32 to vector<15xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %275, %276 {inclusive = true, reduction_dim = 0 : i64} : vector<8x15xf32>, vector<15xf32>
      %277 = affine.if affine_set<(d0) : (d0 + 32 >= 0, -(d0 + 32) == 0, (d0 mod 8) floordiv 16 + 128 >= 0)>(%c4) -> memref<10xi16> {
        %286 = bufferization.to_tensor %alloc_9 : memref<3x3xi16>
        %287 = arith.cmpi slt, %c20035_i16, %c-4321_i16 : i16
        %288 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %289 = vector.fma %288, %288, %288 : vector<3x3xf32>
        %290 = arith.ori %c1237412335_i32, %c1570006231_i32 : i32
        %false_39 = index.bool.constant false
        %291 = vector.broadcast %cst_1 : f16 to vector<15xf16>
        vector.print %22 : vector<i32>
        %cast = tensor.cast %7 : tensor<15xi1> to tensor<?xi1>
        %alloc_40 = memref.alloc() : memref<10xi16>
        affine.yield %alloc_40 : memref<10xi16>
      } else {
        %286 = vector.broadcast %c494598180_i64 : i64 to vector<15xi64>
        %287 = math.round %cst : f32
        %288 = math.tanh %14 : tensor<15xf32>
        %289 = math.log %4 : tensor<10xf16>
        %290 = arith.addi %c1513705051_i32, %c69732229_i32 : i32
        %291 = arith.maxsi %c1329909866_i64, %c1329909866_i64 : i64
        bufferization.dealloc_tensor %expanded : tensor<3x3x1xi16>
        %292 = math.fpowi %15, %28 : tensor<3x3xf16>, tensor<3x3xi32>
        %alloc_39 = memref.alloc() : memref<10xi16>
        affine.yield %alloc_39 : memref<10xi16>
      }
      %278 = index.mul %35, %54
      memref.store %cst, %alloc_17[] : memref<f32>
      %279 = math.expm1 %2 : tensor<15x8xf32>
      %280 = math.rsqrt %2 : tensor<15x8xf32>
      %281 = tensor.empty() : tensor<3x3xi32>
      %282 = linalg.matmul ins(%16, %17 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%281 : tensor<3x3xi32>) -> tensor<3x3xi32>
      %283 = vector.create_mask %c12 : vector<15xi1>
      %284 = index.maxs %43, %rank
      %285 = arith.shrsi %c1237412335_i32, %c1051325167_i32 : i32
      scf.yield %c1329909866_i64 : i64
    }
    case 4 {
      %alloc_39 = memref.alloc() : memref<3x3xi64>
      %269 = affine.apply affine_map<(d0, d1) -> (d0)>(%84, %c7)
      %270 = index.casts %c12 : index to i32
      %271 = bufferization.to_tensor %alloc_14 : memref<15x8xi32>
      scf.if %true_0 {
        %285 = arith.addi %c20035_i16, %c20035_i16 : i16
        %286 = vector.create_mask %rank, %c12 : vector<15x8xi1>
        %287 = vector.create_mask %105 : vector<10xi1>
        %288 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c15, %c12, %35)
        %289 = arith.maxf %cst_1, %cst_1 : f16
        %290 = math.absi %0 : tensor<3x3xi64>
        %291 = index.ceildivs %97, %105
        %292 = math.tanh %4 : tensor<10xf16>
      } else {
        %285 = vector.insert %true, %59 [1] : i1 into vector<3xi1>
        %286 = math.copysign %5, %5 : tensor<15xf32>
        %287 = vector.broadcast %true_0 : i1 to vector<8xi1>
        %288 = vector.maskedload %alloc[%c2], %287, %19 : memref<10xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %289 = arith.shli %c-4321_i16, %c20035_i16 : i16
        %290 = vector.reduction <maxsi>, %287 : vector<8xi1> into i1
        %291 = math.tanh %8 : tensor<10xf32>
        %292 = arith.xori %false_21, %false : i1
        %293 = math.cos %14 : tensor<15xf32>
      }
      %272 = vector.broadcast %62 : index to vector<15xindex>
      %273 = vector.broadcast %false_21 : i1 to vector<15xi1>
      %274 = vector.broadcast %cst_1 : f16 to vector<15xf16>
      vector.scatter %alloc_3[%c1, %c0] [%272], %273, %274 : memref<3x3xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %275 = arith.remsi %true_0, %false_21 : i1
      %276 = index.ceildivu %c14, %62
      %277 = vector.extract_strided_slice %58 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi1> to vector<3xi1>
      %278 = vector.splat %c1513705051_i32 : vector<15xi32>
      %279 = vector.extract_strided_slice %59 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi1> to vector<3xi1>
      %280 = bufferization.to_memref %3 : memref<3x3xi32>
      %281 = vector.extract_strided_slice %279 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      %282 = math.atan %15 : tensor<3x3xf16>
      %cst_40 = arith.constant 1.000000e+00 : f16
      %cst_41 = arith.constant 0.000000e+00 : f16
      %283 = vector.transfer_read %alloc_8[%c11, %97], %cst_41 : memref<3x3xf16>, vector<f16>
      %284 = math.rsqrt %4 : tensor<10xf16>
      scf.yield %c494598180_i64 : i64
    }
    default {
      %269 = math.sqrt %8 : tensor<10xf32>
      %270 = memref.atomic_rmw addf %cst, %alloc_16[%c0, %c0] : (f32, memref<3x3xf32>) -> f32
      %271 = arith.remsi %c-4321_i16, %c20035_i16 : i16
      %272 = math.tanh %15 : tensor<3x3xf16>
      %273 = bufferization.clone %alloc_12 : memref<10xi32> to memref<10xi32>
      %274 = arith.remsi %c541138043_i64, %c541138043_i64 : i64
      %275 = arith.shrui %c-4321_i16, %c20035_i16 : i16
      %276 = arith.remf %cst, %cst : f32
      %277 = vector.insertelement %true, %58[%97 : index] : vector<3xi1>
      %rank_39 = tensor.rank %0 : tensor<3x3xi64>
      %278 = math.fpowi %15, %3 : tensor<3x3xf16>, tensor<3x3xi32>
      %279 = index.sub %84, %66
      scf.index_switch %c11 
      case 1 {
        %alloca = memref.alloca() : memref<3x3xi1>
        %283 = arith.shli %false_21, %false : i1
        %284 = math.tanh %splat : tensor<15x8xf16>
        %rank_40 = tensor.rank %9 : tensor<3x3xi16>
        %285 = index.casts %true_0 : i1 to index
        %286 = tensor.empty() : tensor<15x8xi32>
        %287 = math.fpowi %2, %286 : tensor<15x8xf32>, tensor<15x8xi32>
        %288 = bufferization.to_tensor %alloc_8 : memref<3x3xf16>
        %expanded_41 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<15x8xi1> into tensor<15x8x1xi1>
        %289 = index.mul %279, %24
        %290 = math.rsqrt %4 : tensor<10xf16>
        %291 = arith.negf %cst_1 : f16
        %292 = index.castu %c1237412335_i32 : i32 to index
        %293 = memref.atomic_rmw mins %c1513705051_i32, %52[%c2, %c1] : (i32, memref<15x8xi32>) -> i32
        %294 = arith.mulf %cst_1, %cst_1 : f16
        %295 = math.round %2 : tensor<15x8xf32>
        %296 = math.atan2 %288, %288 : tensor<3x3xf16>
        scf.yield
      }
      default {
        %extracted_40 = tensor.extract %14[%c3] : tensor<15xf32>
        %283 = index.add %105, %rank_39
        %284 = math.log %extracted_40 : f32
        %285 = arith.minui %c-4321_i16, %c-4321_i16 : i16
        %286 = index.castu %c494598180_i64 : i64 to index
        %287 = vector.splat %c12 : vector<3x3xindex>
        %288 = math.log %5 : tensor<15xf32>
        %289 = math.roundeven %extracted_40 : f32
        %290 = arith.ori %c-4321_i16, %c20035_i16 : i16
        %291 = math.round %15 : tensor<3x3xf16>
        affine.store %cst_1, %alloc_5[%c9] : memref<15xf16>
        %292 = arith.divf %extracted_40, %extracted_40 : f32
        %293 = arith.ori %true, %true_0 : i1
        %294 = arith.shrsi %c1749512412_i64, %c1749512412_i64 : i64
        %295 = math.sqrt %14 : tensor<15xf32>
        %296 = vector.extract_strided_slice %58 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      }
      %280 = vector.multi_reduction <mul>, %19, %19 [] : vector<8xf32> to vector<8xf32>
      %281 = math.atan %14 : tensor<15xf32>
      %282 = arith.mulf %cst_1, %cst_1 : f16
      scf.yield %c1749512412_i64 : i64
    }
    %108 = vector.insertelement %true_0, %59[%c1 : index] : vector<3xi1>
    %109 = bufferization.to_memref %12 : memref<15x8xi1>
    %110 = math.rsqrt %2 : tensor<15x8xf32>
    %111 = vector.insert %true, %58 [1] : i1 into vector<3xi1>
    scf.if %true_0 {
      %extracted_39 = tensor.extract %11[%c9] : tensor<15xi32>
      %269 = index.sub %c0, %46
      %alloc_40 = memref.alloc() : memref<3x1xi16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %alloc_40, %18 : memref<3x1xi16>, memref<3x1xi16>, tensor<3x3xi16>) outs(%expanded : tensor<3x3x1xi16>) {
      ^bb0(%in: i16, %in_41: i16, %in_42: i16, %out: i16):
        %278 = bufferization.to_tensor %alloc_14 : memref<15x8xi32>
        %279 = arith.addi %out, %c-4321_i16 : i16
        %280 = math.floor %cst : f32
        %281 = math.fma %8, %8, %8 : tensor<10xf32>
        %282 = math.ipowi %18, %9 : tensor<3x3xi16>
        %283 = math.tanh %splat : tensor<15x8xf16>
        %284 = tensor.empty() : tensor<3x3xi16>
        %285 = linalg.matmul ins(%18, %18 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%284 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %286 = index.maxu %c1, %c7
        %287 = index.ceildivu %46, %c10
        %288 = vector.extract %58[1] : vector<3xi1>
        %289 = memref.atomic_rmw minu %c1749512412_i64, %alloc_10[%c6, %c5] : (i64, memref<15x8xi64>) -> i64
        %290 = math.ceil %5 : tensor<15xf32>
        %291 = bufferization.to_memref %11 : memref<15xi32>
        %292 = vector.extract_strided_slice %59 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
        %splat_43 = tensor.splat %in : tensor<15xi16>
        %293 = bufferization.to_tensor %alloc_15 : memref<10xf32>
        %294 = vector.broadcast %false_21 : i1 to vector<2x2xi1>
        %295 = vector.outerproduct %292, %292, %294 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
        %296 = vector.broadcast %cst : f32 to vector<10xf32>
        %297 = vector.fma %296, %296, %296 : vector<10xf32>
        %298 = index.maxu %35, %286
        %299 = arith.floordivsi %true_0, %false : i1
        %300 = math.fpowi %5, %11 : tensor<15xf32>, tensor<15xi32>
        %301 = vector.insert %true, %59 [1] : i1 into vector<3xi1>
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %297, %296, %cst : vector<10xf32>, vector<10xf32> into f32
        %303 = arith.divsi %true, %true : i1
        %304 = math.tanh %8 : tensor<10xf32>
        %305 = math.roundeven %2 : tensor<15x8xf32>
        %306 = math.round %5 : tensor<15xf32>
        %307 = math.absi %transposed : tensor<3x3xi16>
        %308 = index.mul %46, %35
        %309 = math.tanh %15 : tensor<3x3xf16>
        %310 = math.tan %8 : tensor<10xf32>
        %311 = index.casts %105 : index to i32
        linalg.yield %out : i16
      } -> tensor<3x3x1xi16>
      %271 = math.roundeven %15 : tensor<3x3xf16>
      %272 = math.ceil %5 : tensor<15xf32>
      %273 = vector.broadcast %c1749512412_i64 : i64 to vector<10xi64>
      %274 = vector.broadcast %false_21 : i1 to vector<10xi1>
      %275 = vector.maskedload %alloc_4[%c0, %c0], %274, %273 : memref<3x3xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
      %276 = math.atan %8 : tensor<10xf32>
      %277 = bufferization.clone %alloc_9 : memref<3x3xi16> to memref<3x3xi16>
    } else {
      %269 = tensor.empty() : tensor<3x1xi16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269 : tensor<3x1xi16>) outs(%expanded : tensor<3x3x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %278 = math.sqrt %cst : f32
        %279 = vector.bitcast %58 : vector<3xi1> to vector<3xi1>
        %280 = vector.broadcast %c1_i32_22 : i32 to vector<i32>
        vector.transfer_write %280, %77[%c7, %c13] : vector<i32>, memref<3x3xi32>
        %281 = arith.floordivsi %c1570006231_i32, %c1_i32_22 : i32
        %282 = math.log %14 : tensor<15xf32>
        %283 = arith.ceildivsi %c494598180_i64, %c1749512412_i64 : i64
        %284 = arith.maxsi %c-4321_i16, %out : i16
        %285 = math.log %4 : tensor<10xf16>
        %286 = math.log2 %8 : tensor<10xf32>
        %287 = math.absi %7 : tensor<15xi1>
        %288 = math.tanh %2 : tensor<15x8xf32>
        %inserted_39 = tensor.insert %cst into %2[%c14, %c5] : tensor<15x8xf32>
        %289 = arith.floordivsi %false, %false : i1
        %290 = math.roundeven %4 : tensor<10xf16>
        %291 = math.fma %2, %2, %2 : tensor<15x8xf32>
        %292 = vector.broadcast %true_0 : i1 to vector<3x3xi1>
        %293 = vector.outerproduct %279, %279, %292 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
        %294 = math.ipowi %c1513705051_i32, %c1570006231_i32 : i32
        %rank_40 = tensor.rank %12 : tensor<15x8xi1>
        %295 = bufferization.to_memref %91 : memref<3x3xi32>
        %296 = math.log2 %2 : tensor<15x8xf32>
        %297 = tensor.empty() : tensor<15x8xi32>
        %298 = math.fpowi %2, %297 : tensor<15x8xf32>, tensor<15x8xi32>
        %299 = vector.broadcast %c13 : index to vector<10xindex>
        %300 = vector.broadcast %true : i1 to vector<10xi1>
        %301 = vector.broadcast %cst_1 : f16 to vector<10xf16>
        vector.scatter %alloc_8[%c1, %c2] [%299], %300, %301 : memref<3x3xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %302 = vector.extract %279[2] : vector<3xi1>
        %303 = index.sub %72, %c1
        affine.store %cst, %alloc_16[%c6, %c15] : memref<3x3xf32>
        %304 = vector.insert %false_21, %58 [2] : i1 into vector<3xi1>
        %305 = vector.broadcast %c15 : index to vector<8xindex>
        %306 = vector.broadcast %true_0 : i1 to vector<8xi1>
        %307 = vector.broadcast %c1329909866_i64 : i64 to vector<8xi64>
        vector.scatter %alloc_10[%c3, %c5] [%305], %306, %307 : memref<15x8xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %308 = index.maxu %c4, %rank
        %309 = bufferization.to_memref %5 : memref<15xf32>
        %310 = math.log %4 : tensor<10xf16>
        %311 = math.ipowi %1, %1 : tensor<15x8xi64>
        %312 = math.rsqrt %2 : tensor<15x8xf32>
        linalg.yield %c20035_i16 : i16
      } -> tensor<3x3x1xi16>
      %271 = bufferization.to_tensor %alloc : memref<10xf32>
      scf.index_switch %97 
      case 1 {
        %278 = memref.realloc %alloc_7 : memref<15xf16> to memref<8xf16>
        %279 = math.roundeven %14 : tensor<15xf32>
        %280 = math.roundeven %8 : tensor<10xf32>
        %281 = index.castu %c1_i32_22 : i32 to index
        %282 = index.castu %c69732229_i32 : i32 to index
        %expanded_39 = tensor.expand_shape %88 [[0], [1, 2]] : tensor<15x8xi1> into tensor<15x8x1xi1>
        %283 = arith.remf %cst, %cst : f32
        %284 = math.rsqrt %5 : tensor<15xf32>
        %285 = math.sqrt %cst : f32
        %286 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 2 - d0)>(%97, %282, %80, %rank)
        %287 = arith.floordivsi %c1051325167_i32, %c69732229_i32 : i32
        %288 = arith.muli %c1_i32, %c69732229_i32 : i32
        %splat_40 = tensor.splat %cst : tensor<15x8xf32>
        %289 = affine.load %alloc_11[%c1, %c8] : memref<3x3xi16>
        %290 = index.sizeof
        %291 = math.log %4 : tensor<10xf16>
        scf.yield
      }
      case 2 {
        affine.store %cst, %alloc_16[%c12, %c8] : memref<3x3xf32>
        %278 = index.ceildivs %c6, %c8
        %279 = math.log %4 : tensor<10xf16>
        %280 = arith.muli %true_0, %false : i1
        %alloc_39 = memref.alloc() : memref<8x8xf32>
        %281 = tensor.empty() : tensor<15x8xf32>
        %282 = linalg.matmul ins(%2, %alloc_39 : tensor<15x8xf32>, memref<8x8xf32>) outs(%281 : tensor<15x8xf32>) -> tensor<15x8xf32>
        %283 = math.expm1 %2 : tensor<15x8xf32>
        %284 = arith.shli %c1749512412_i64, %c494598180_i64 : i64
        %285 = memref.load %alloc_15[%c0] : memref<10xf32>
        %286 = arith.minsi %c1_i32, %c1570006231_i32 : i32
        %287 = vector.bitcast %58 : vector<3xi1> to vector<3xi1>
        affine.store %c-4321_i16, %alloc_9[%c14, %c7] : memref<3x3xi16>
        %288 = memref.realloc %alloc_18 : memref<10xi1> to memref<8xi1>
        %289 = vector.broadcast %c1_i32 : i32 to vector<i32>
        vector.transfer_write %289, %77[%c2, %72] : vector<i32>, memref<3x3xi32>
        %290 = arith.minf %cst, %cst : f32
        %291 = bufferization.to_tensor %alloc_6 : memref<15x8xi1>
        bufferization.dealloc_tensor %3 : tensor<3x3xi32>
        scf.yield
      }
      case 3 {
        %278 = arith.addi %c69732229_i32, %c1051325167_i32 : i32
        %279 = vector.create_mask %c9 : vector<10xi1>
        %280 = vector.broadcast %false_21 : i1 to vector<10x10xi1>
        %281 = vector.outerproduct %279, %279, %280 {kind = #vector.kind<and>} : vector<10xi1>, vector<10xi1>
        %282 = bufferization.to_tensor %52 : memref<15x8xi32>
        memref.store %cst_1, %alloc_3[%c1, %c2] : memref<3x3xf16>
        %283 = tensor.empty() : tensor<3x3xi32>
        %284 = linalg.matmul ins(%16, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%283 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %285 = vector.extract %279[8] : vector<10xi1>
        %286 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c6, %c6, %35)
        %287 = math.ceil %2 : tensor<15x8xf32>
        %288 = vector.reduction <add>, %58 : vector<3xi1> into i1
        %289 = arith.maxsi %c-4321_i16, %c20035_i16 : i16
        %290 = arith.floordivsi %c1237412335_i32, %c1_i32_22 : i32
        %291 = index.floordivs %84, %78
        %292 = vector.insert %true_0, %279 [2] : i1 into vector<10xi1>
        %293 = memref.atomic_rmw assign %c1329909866_i64, %32[%c6, %c5] : (i64, memref<15x8xi64>) -> i64
        %294 = tensor.empty() : tensor<10xi32>
        %295 = math.fpowi %271, %294 : tensor<10xf32>, tensor<10xi32>
        scf.yield
      }
      default {
        %278 = index.castu %46 : index to i32
        %279 = math.tanh %8 : tensor<10xf32>
        %280 = arith.muli %c541138043_i64, %c541138043_i64 : i64
        %281 = math.tanh %cst_1 : f16
        %cast = tensor.cast %10 : tensor<10xi1> to tensor<?xi1>
        %282 = vector.multi_reduction <mul>, %58, %58 [] : vector<3xi1> to vector<3xi1>
        affine.store %false_21, %109[%c7, %c0] : memref<15x8xi1>
        %283 = bufferization.to_memref %10 : memref<10xi1>
        %284 = vector.create_mask %c2, %71 : vector<3x3xi1>
        %285 = math.ceil %271 : tensor<10xf32>
        %286 = math.log %cst : f32
        %287 = bufferization.clone %283 : memref<10xi1> to memref<10xi1>
        %288 = arith.shrui %true_0, %false_21 : i1
        %289 = index.ceildivs %c14, %c0
        %290 = bufferization.clone %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
        %291 = bufferization.to_memref %10 : memref<10xi1>
      }
      %272 = vector.broadcast %false_21 : i1 to vector<3x3xi1>
      %273 = vector.outerproduct %58, %58, %272 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
      %274 = index.castu %rank : index to i32
      %275 = math.ceil %5 : tensor<15xf32>
      %276 = index.sizeof
      %277 = math.expm1 %14 : tensor<15xf32>
    }
    %112 = math.ceil %5 : tensor<15xf32>
    %113 = math.tanh %cst_1 : f16
    %114 = scf.index_switch %71 -> vector<15xi1> 
    case 1 {
      %269 = vector.broadcast %c1329909866_i64 : i64 to vector<3xi64>
      vector.transfer_write %269, %alloc_4[%c15, %46] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, memref<3x3xi64>
      %c1_i32_39 = arith.constant 1 : i32
      %270 = vector.transfer_read %11[%c12], %c1_i32_39 : tensor<15xi32>, vector<i32>
      %271 = vector.broadcast %false_21 : i1 to vector<3x3xi1>
      %272 = vector.outerproduct %58, %59, %271 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
      %273 = math.exp %5 : tensor<15xf32>
      %274 = arith.ceildivsi %true_0, %false_21 : i1
      %275 = math.floor %14 : tensor<15xf32>
      %276 = arith.cmpi ugt, %true_0, %false : i1
      %277 = index.divs %c6, %c11
      %278 = vector.reduction <maxsi>, %59 : vector<3xi1> into i1
      %279 = math.fma %cst, %cst, %cst : f32
      %280 = bufferization.to_tensor %77 : memref<3x3xi32>
      %281 = vector.broadcast %cst : f32 to vector<f32>
      %282 = vector.transfer_write %281, %5[%c10] : vector<f32>, tensor<15xf32>
      %283 = math.log10 %4 : tensor<10xf16>
      %rank_40 = tensor.rank %13 : tensor<3x3xi64>
      %284 = arith.addi %c494598180_i64, %c541138043_i64 : i64
      %285 = index.sub %c0, %84
      %286 = vector.broadcast %false_21 : i1 to vector<15xi1>
      scf.yield %286 : vector<15xi1>
    }
    default {
      %alloc_39 = memref.alloc() : memref<10x10xi64>
      %269 = tensor.empty() : tensor<15x10xi64>
      %270 = linalg.matmul ins(%75, %alloc_39 : tensor<15x10xi64>, memref<10x10xi64>) outs(%269 : tensor<15x10xi64>) -> tensor<15x10xi64>
      %271 = vector.multi_reduction <xor>, %58, %58 [] : vector<3xi1> to vector<3xi1>
      %272 = index.maxu %c6, %c8
      %273 = tensor.empty() : tensor<8x15xi1>
      %274 = tensor.empty() : tensor<15x15xi1>
      %275 = linalg.matmul ins(%88, %273 : tensor<15x8xi1>, tensor<8x15xi1>) outs(%274 : tensor<15x15xi1>) -> tensor<15x15xi1>
      %276 = arith.subi %c-4321_i16, %c-4321_i16 : i16
      %277 = arith.ori %true_0, %true_0 : i1
      %278 = tensor.empty() : tensor<3x3xi64>
      %279 = linalg.matmul ins(%13, %0 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%278 : tensor<3x3xi64>) -> tensor<3x3xi64>
      %280 = math.ceil %8 : tensor<10xf32>
      %281 = bufferization.to_tensor %alloc_16 : memref<3x3xf32>
      affine.store %false_21, %alloc_6[%c3, %c1] : memref<15x8xi1>
      %282 = arith.floordivsi %c1749512412_i64, %c494598180_i64 : i64
      %283 = affine.if affine_set<(d0) : (d0 == 0)>(%c6) -> f16 {
        %290 = arith.maxsi %c1570006231_i32, %c1051325167_i32 : i32
        %cast = tensor.cast %13 : tensor<3x3xi64> to tensor<?x?xi64>
        %291 = math.copysign %4, %4 : tensor<10xf16>
        %292 = math.round %8 : tensor<10xf32>
        %293 = index.castu %66 : index to i32
        %294 = math.sqrt %15 : tensor<3x3xf16>
        %295 = vector.extract_strided_slice %19 {offsets = [5], sizes = [2], strides = [1]} : vector<8xf32> to vector<2xf32>
        %296 = math.round %281 : tensor<3x3xf32>
        affine.yield %cst_1 : f16
      } else {
        %290 = math.sqrt %cst : f32
        %291 = arith.addi %c1051325167_i32, %c1513705051_i32 : i32
        bufferization.dealloc_tensor %1 : tensor<15x8xi64>
        %292 = vector.multi_reduction <add>, %19, %19 [] : vector<8xf32> to vector<8xf32>
        %293 = vector.insertelement %c1237412335_i32, %22[] : vector<i32>
        %294 = index.floordivs %c15, %65
        %295 = vector.reduction <mul>, %19 : vector<8xf32> into f32
        %296 = arith.mulf %cst, %cst : f32
        affine.yield %cst_1 : f16
      }
      %284 = vector.broadcast %false_21 : i1 to vector<3x3xi1>
      %285 = vector.outerproduct %59, %58, %284 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
      %286 = index.ceildivu %c12, %c7
      %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %58, %59, %false : vector<3xi1>, vector<3xi1> into i1
      %288 = index.floordivs %c0, %46
      %289 = vector.broadcast %true_0 : i1 to vector<15xi1>
      scf.yield %289 : vector<15xi1>
    }
    %115 = index.ceildivs %c6, %97
    %116 = bufferization.to_memref %7 : memref<15xi1>
    %117 = vector.flat_transpose %59 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %118 = arith.remf %cst, %cst : f32
    %119 = affine.for %arg3 = 0 to 17 iter_args(%arg4 = %35) -> (index) {
      affine.yield %c3 : index
    }
    %120 = vector.insert %false, %59 [2] : i1 into vector<3xi1>
    %121 = index.sub %84, %71
    %122 = index.floordivs %c0, %c4
    %123 = vector.transpose %22, [] : vector<i32> to vector<i32>
    %124 = math.round %8 : tensor<10xf32>
    %125 = math.ipowi %expanded, %expanded : tensor<3x3x1xi16>
    %126 = arith.shrsi %c1329909866_i64, %c494598180_i64 : i64
    vector.print %58 : vector<3xi1>
    %127 = index.sub %84, %51
    %128 = math.ctlz %12 : tensor<15x8xi1>
    %129 = vector.broadcast %true : i1 to vector<10xi1>
    %130 = vector.maskedload %alloc_13[%c1, %c0], %129, %129 : memref<3x3xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
    %131 = index.maxu %24, %122
    affine.store %false_21, %alloc_6[%c13, %c9] : memref<15x8xi1>
    %132 = math.round %splat : tensor<15x8xf16>
    %133 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<3x3x1xi16>) {
    ^bb0(%out: i16):
      %269 = arith.ori %c1_i32_22, %c1513705051_i32 : i32
      %splat_39 = tensor.splat %c494598180_i64 : tensor<15x8xi64>
      %270 = vector.broadcast %c494598180_i64 : i64 to vector<i64>
      vector.transfer_write %270, %alloc_10[%105, %97] : vector<i64>, memref<15x8xi64>
      %271 = index.sub %c15, %80
      %272 = vector.broadcast %out : i16 to vector<8xi16>
      %273 = vector.broadcast %false : i1 to vector<8xi1>
      %274 = vector.maskedload %alloc_11[%c0, %c0], %273, %272 : memref<3x3xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %275 = bufferization.to_memref %4 : memref<10xf16>
      %276 = index.add %c10, %71
      %277 = index.maxs %127, %121
      %inserted_40 = tensor.insert %true_0 into %20[] : tensor<i1>
      %278 = index.maxu %c8, %c8
      %279 = memref.realloc %alloc_5 : memref<15xf16> to memref<15xf16>
      %280 = arith.maxsi %c541138043_i64, %c1749512412_i64 : i64
      %281 = math.tanh %4 : tensor<10xf16>
      %282 = tensor.empty() : tensor<15x8xi1>
      %mapped_41 = linalg.map ins(%alloc_6, %12, %88 : memref<15x8xi1>, tensor<15x8xi1>, tensor<15x8xi1>) outs(%282 : tensor<15x8xi1>)
        (%in: i1, %in_44: i1, %in_45: i1) {
          %303 = arith.andi %false_21, %true : i1
          %304 = vector.bitcast %129 : vector<10xi1> to vector<10xi1>
          %305 = memref.realloc %alloc_18 : memref<10xi1> to memref<3xi1>
          %306 = memref.load %alloc_2[%c2] : memref<10xi1>
          %307 = index.mul %78, %c11
          %308 = math.atan %15 : tensor<3x3xf16>
          %309 = arith.remf %cst_1, %cst_1 : f16
          %310 = vector.extract %130[2] : vector<10xi1>
          %311 = vector.splat %cst_1 : vector<10xf16>
          %312 = math.roundeven %14 : tensor<15xf32>
          %313 = arith.addf %cst_1, %cst_1 : f16
          %314 = bufferization.to_tensor %alloc : memref<10xf32>
          %collapsed_46 = tensor.collapse_shape %splat [[0, 1]] : tensor<15x8xf16> into tensor<120xf16>
          %315 = vector.matrix_multiply %130, %304 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
          %316 = math.cos %4 : tensor<10xf16>
          %317 = arith.remsi %c1_i32_22, %c1513705051_i32 : i32
          %318 = tensor.empty() : tensor<10xi32>
          %319 = math.fpowi %314, %318 : tensor<10xf32>, tensor<10xi32>
          %320 = vector.multi_reduction <maxsi>, %58, %117 [] : vector<3xi1> to vector<3xi1>
          %321 = vector.broadcast %c1051325167_i32 : i32 to vector<10xi32>
          %322 = arith.cmpi sle, %false_21, %false : i1
          %cast = tensor.cast %17 : tensor<3x3xi32> to tensor<?x?xi32>
          %323 = index.divs %c5, %rank
          %324 = tensor.empty() : tensor<15xi1>
          %325 = vector.reduction <xor>, %117 : vector<3xi1> into i1
          %326 = math.atan %4 : tensor<10xf16>
          %327 = index.add %65, %97
          %328 = vector.broadcast %in_45 : i1 to vector<8xi1>
          %329 = vector.transfer_write %328, %282[%271, %78] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi1>, tensor<15x8xi1>
          %330 = arith.remf %cst_1, %cst_1 : f16
          %331 = tensor.empty() : tensor<15x8xi32>
          %332 = math.fpowi %2, %331 : tensor<15x8xf32>, tensor<15x8xi32>
          %333 = math.ipowi %true_0, %true : i1
          %334 = arith.maxsi %out, %c-4321_i16 : i16
          affine.store %c20035_i16, %alloc_11[%c3, %c14] : memref<3x3xi16>
          %false_47 = arith.constant false
          linalg.yield %false_47 : i1
        }
      %283 = memref.atomic_rmw maxu %out, %alloc_11[%c2, %c0] : (i16, memref<3x3xi16>) -> i16
      %284 = vector.broadcast %c1237412335_i32 : i32 to vector<15x8x10xi32>
      %285 = vector.broadcast %c1_i32 : i32 to vector<15x8xi32>
      %dest, %accumulated_value = vector.scan <maxui>, %284, %285 {inclusive = false, reduction_dim = 2 : i64} : vector<15x8x10xi32>, vector<15x8xi32>
      %286 = index.castu %115 : index to i32
      %true_42 = arith.constant true
      %false_43 = arith.constant false
      %287 = vector.transfer_read %116[%127], %false_43 : memref<15xi1>, vector<i1>
      %288 = index.maxs %54, %271
      %289 = arith.mulf %cst, %cst : f32
      %290 = vector.extract %272[0] : vector<8xi16>
      %291 = math.exp %splat : tensor<15x8xf16>
      %292 = vector.broadcast %cst : f32 to vector<10xf32>
      %293 = vector.fma %292, %292, %292 : vector<10xf32>
      %294 = affine.min affine_map<(d0, d1) -> ((((d0 + d1) floordiv 32) mod 64) * 16, -((d0 + d1) floordiv 32), d1, d1 mod 32)>(%c11, %c0)
      %295 = index.divs %54, %103
      %296 = arith.mulf %cst, %cst : f32
      %297 = math.roundeven %14 : tensor<15xf32>
      %298 = memref.realloc %alloc_12 : memref<10xi32> to memref<15xi32>
      %299 = arith.shrui %true, %false : i1
      %300 = vector.multi_reduction <maxsi>, %58, %117 [] : vector<3xi1> to vector<3xi1>
      %301 = vector.extract_strided_slice %274 {offsets = [4], sizes = [2], strides = [1]} : vector<8xi16> to vector<2xi16>
      %302 = memref.atomic_rmw maxu %c1237412335_i32, %52[%c9, %c0] : (i32, memref<15x8xi32>) -> i32
      linalg.yield %out : i16
    } -> tensor<3x3x1xi16>
    %134 = vector.broadcast %cst : f32 to vector<8x8xf32>
    %135 = vector.outerproduct %19, %19, %134 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
    %136 = affine.if affine_set<(d0) : ((d0 * 64 - d0 floordiv 64) ceildiv 4 >= 0, -((d0 ceildiv 2) floordiv 2 + 128) == 0)>(%c1) -> i16 {
      %269 = vector.broadcast %cst_1 : f16 to vector<f16>
      %270 = vector.transfer_write %269, %15[%66, %97] : vector<f16>, tensor<3x3xf16>
      %271 = arith.divf %cst, %cst : f32
      %272 = vector.broadcast %c1237412335_i32 : i32 to vector<i32>
      vector.transfer_write %272, %alloc_12[%c1] : vector<i32>, memref<10xi32>
      %273 = bufferization.clone %alloc_4 : memref<3x3xi64> to memref<3x3xi64>
      %274 = index.castu %46 : index to i32
      %275 = math.copysign %14, %14 : tensor<15xf32>
      %276 = math.round %2 : tensor<15x8xf32>
      %277 = math.ceil %2 : tensor<15x8xf32>
      affine.yield %c-4321_i16 : i16
    } else {
      %269 = math.fma %5, %5, %14 : tensor<15xf32>
      %270 = math.atan2 %8, %8 : tensor<10xf32>
      %271 = vector.broadcast %cst : f32 to vector<8x8xf32>
      %272 = vector.outerproduct %19, %19, %271 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
      %273 = vector.bitcast %130 : vector<10xi1> to vector<10xi1>
      %274 = scf.while (%arg3 = %true) : (i1) -> i1 {
        %277 = index.add %c11, %43
        %278 = index.maxu %115, %277
        %279 = arith.addi %arg3, %true_0 : i1
        %alloc_40 = memref.alloc() : memref<15x8xf16>
        memref.tensor_store %splat, %alloc_40 : memref<15x8xf16>
        %280 = vector.insertelement %arg3, %58[%105 : index] : vector<3xi1>
        %cst_41 = arith.constant 1.000000e+00 : f32
        %281 = vector.transfer_read %5[%121], %cst_41 : tensor<15xf32>, vector<f32>
        %282 = arith.cmpf ueq, %cst_41, %cst : f32
        %283 = affine.load %109[%c12, %c8] : memref<15x8xi1>
        scf.condition(%false) %283 : i1
      } do {
      ^bb0(%arg3: i1):
        %splat_40 = tensor.splat %false_21 : tensor<3x3xi1>
        %277 = arith.cmpi eq, %c1_i32, %c1051325167_i32 : i32
        %rank_41 = tensor.rank %14 : tensor<15xf32>
        %278 = arith.ceildivsi %c-4321_i16, %c-4321_i16 : i16
        %279 = vector.broadcast %c20035_i16 : i16 to vector<8xi16>
        %280 = vector.broadcast %false_21 : i1 to vector<8xi1>
        %281 = vector.maskedload %alloc_9[%c1, %c0], %280, %279 : memref<3x3xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %282 = index.divs %122, %46
        %collapsed_42 = tensor.collapse_shape %16 [[0, 1]] : tensor<3x3xi32> into tensor<9xi32>
        %283 = vector.create_mask %c6 : vector<10xi1>
        %284 = vector.maskedload %alloc_13[%c2, %c1], %130, %129 : memref<3x3xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %285 = arith.subi %arg3, %true : i1
        %286 = vector.multi_reduction <maxui>, %284, %283 [] : vector<10xi1> to vector<10xi1>
        %287 = vector.multi_reduction <and>, %283, %283 [] : vector<10xi1> to vector<10xi1>
        %288 = vector.insert %true_0, %283 [5] : i1 into vector<10xi1>
        %289 = math.tanh %8 : tensor<10xf32>
        %290 = arith.floordivsi %false, %true_0 : i1
        %291 = arith.maxui %c1_i32, %c1_i32 : i32
        scf.yield %true : i1
      }
      %inserted_39 = tensor.insert %cst into %2[%c14, %c0] : tensor<15x8xf32>
      %275 = math.roundeven %splat : tensor<15x8xf16>
      %276 = math.tanh %5 : tensor<15xf32>
      affine.yield %c20035_i16 : i16
    }
    %137 = vector.insertelement %true, %117[%54 : index] : vector<3xi1>
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_23 = arith.constant 0 : i64
    %138 = vector.transfer_read %13[%c11, %c13], %c0_i64_23 : tensor<3x3xi64>, vector<i64>
    %139 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 16) ceildiv 4)>(%43, %c2, %24, %c6)
    %140 = memref.realloc %alloc_12 : memref<10xi32> to memref<15xi32>
    affine.store %c1570006231_i32, %alloc_12[%c14] : memref<10xi32>
    scf.if %true_0 {
      %269 = arith.remui %c-4321_i16, %c-4321_i16 : i16
      %270 = arith.muli %c494598180_i64, %c494598180_i64 : i64
      %271 = index.floordivs %51, %c7
      %272 = bufferization.to_memref %14 : memref<15xf32>
      %273 = memref.load %alloc_2[%c1] : memref<10xi1>
      %rank_39 = tensor.rank %1 : tensor<15x8xi64>
      %274 = math.fma %14, %5, %5 : tensor<15xf32>
      %275 = math.round %14 : tensor<15xf32>
    } else {
      %269 = vector.multi_reduction <maxsi>, %129, %false [0] : vector<10xi1> to i1
      %270 = index.maxs %51, %78
      %271 = math.rsqrt %4 : tensor<10xf16>
      %272 = vector.matrix_multiply %58, %117 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %273 = vector.insertelement %false, %129[%c9 : index] : vector<10xi1>
      %274 = index.ceildivu %c5, %121
      affine.store %true_0, %alloc_18[%c15] : memref<10xi1>
      %275 = vector.create_mask %c15, %72 : vector<15x8xi1>
    }
    %141 = vector.broadcast %c13 : index to vector<15xindex>
    %142 = vector.broadcast %false : i1 to vector<15xi1>
    %143 = vector.broadcast %c-4321_i16 : i16 to vector<15xi16>
    vector.scatter %alloc_11[%c2, %c2] [%141], %142, %143 : memref<3x3xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
    %144 = math.ctpop %13 : tensor<3x3xi64>
    %145 = math.copysign %14, %14 : tensor<15xf32>
    %146 = math.atan2 %15, %15 : tensor<3x3xf16>
    %147 = index.casts %c69732229_i32 : i32 to index
    %148 = arith.muli %true, %true_0 : i1
    %149 = bufferization.to_tensor %77 : memref<3x3xi32>
    %inserted = tensor.insert %true_0 into %7[%c11] : tensor<15xi1>
    %150 = index.add %84, %54
    %151 = scf.index_switch %139 -> vector<3x3xi64> 
    case 1 {
      %269 = math.atan %cst_1 : f16
      %270 = arith.minsi %c1329909866_i64, %c494598180_i64 : i64
      %271 = arith.cmpi slt, %c541138043_i64, %c1749512412_i64 : i64
      %272 = arith.muli %c1329909866_i64, %c1329909866_i64 : i64
      %273 = index.floordivs %c12, %c9
      %274 = index.ceildivu %c15, %127
      %275 = math.log %5 : tensor<15xf32>
      %276 = math.roundeven %15 : tensor<3x3xf16>
      %277 = math.exp %15 : tensor<3x3xf16>
      %278 = index.floordivs %80, %97
      %alloc_39 = memref.alloc() : memref<15xi32>
      memref.tensor_store %11, %alloc_39 : memref<15xi32>
      %279 = math.atan2 %5, %14 : tensor<15xf32>
      %280 = arith.minf %cst_1, %cst_1 : f16
      %281 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
      %282 = math.roundeven %15 : tensor<3x3xf16>
      %283 = vector.insertelement %cst, %19[%c6 : index] : vector<8xf32>
      %284 = vector.broadcast %c541138043_i64 : i64 to vector<3x3xi64>
      scf.yield %284 : vector<3x3xi64>
    }
    case 2 {
      %269 = math.sqrt %splat : tensor<15x8xf16>
      %270 = math.floor %5 : tensor<15xf32>
      %271 = index.ceildivu %122, %122
      %272 = arith.maxsi %c494598180_i64, %c494598180_i64 : i64
      %273 = index.add %46, %271
      %274 = arith.shrsi %c1237412335_i32, %c1_i32_22 : i32
      memref.copy %alloc, %alloc_15 : memref<10xf32> to memref<10xf32>
      memref.alloca_scope  {
        %283 = vector.extract_strided_slice %58 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        %284 = tensor.empty() : tensor<3x3xi32>
        %285 = linalg.matmul ins(%3, %3 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%284 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %alloc_39 = memref.alloc() : memref<3x3xi32>
        memref.copy %77, %alloc_39 : memref<3x3xi32> to memref<3x3xi32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %286 = vector.transfer_read %9[%46, %c7], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x3xi16>, vector<8xi16>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %59, %117, %false_21 : vector<3xi1>, vector<3xi1> into i1
        %288 = bufferization.clone %alloc_4 : memref<3x3xi64> to memref<3x3xi64>
        %289 = index.maxu %c8, %c10
        %290 = math.tanh %cst_1 : f16
        %291 = arith.addi %c494598180_i64, %c0_i64 : i64
        %292 = index.ceildivs %c13, %71
        %293 = arith.addi %c1_i16, %c-4321_i16 : i16
        %294 = vector.insert %cst, %19 [4] : f32 into vector<8xf32>
        %295 = arith.ceildivsi %c494598180_i64, %c494598180_i64 : i64
        %296 = vector.extract %59[1] : vector<3xi1>
        %297 = memref.atomic_rmw andi %c1513705051_i32, %52[%c8, %c4] : (i32, memref<15x8xi32>) -> i32
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst : vector<8xf32>, vector<8xf32> into f32
        %299 = math.round %2 : tensor<15x8xf32>
        %300 = bufferization.to_tensor %alloc_14 : memref<15x8xi32>
        %301 = arith.minsi %c1329909866_i64, %c0_i64 : i64
        %c1_i16_40 = arith.constant 1 : i16
        %c0_i16_41 = arith.constant 0 : i16
        %302 = vector.transfer_read %6[%54, %c13], %c0_i16_41 : tensor<3x3xi16>, vector<i16>
        %303 = index.sub %139, %84
        %false_42 = index.bool.constant false
        %304 = math.round %8 : tensor<10xf32>
        %305 = math.round %14 : tensor<15xf32>
        %306 = arith.cmpf oeq, %cst, %cst : f32
        %307 = math.floor %8 : tensor<10xf32>
        %rank_43 = tensor.rank %10 : tensor<10xi1>
        %308 = vector.extract %59[1] : vector<3xi1>
        %309 = arith.floordivsi %c1_i32, %c1513705051_i32 : i32
        %310 = vector.insert %true, %129 [6] : i1 into vector<10xi1>
        %c1_i16_44 = arith.constant 1 : i16
        %c0_i16_45 = arith.constant 0 : i16
        %311 = vector.transfer_read %18[%65, %103], %c0_i16_45 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x3xi16>, vector<15xi16>
        %312 = arith.minsi %false_42, %false_42 : i1
      }
      %275 = math.log10 %cst : f32
      %276 = index.ceildivu %c7, %c9
      %277 = index.ceildivu %65, %c15
      %278 = arith.ceildivsi %false_21, %true : i1
      %c-22974_i16 = arith.constant -22974 : i16
      %279 = index.ceildivu %150, %97
      %280 = arith.divsi %true, %false_21 : i1
      %281 = affine.if affine_set<(d0) : (-d0 == 0)>(%c10) -> i16 {
        %283 = math.fma %15, %15, %15 : tensor<3x3xf16>
        %284 = math.round %4 : tensor<10xf16>
        %285 = math.round %8 : tensor<10xf32>
        %286 = math.round %2 : tensor<15x8xf32>
        %287 = math.fma %2, %2, %2 : tensor<15x8xf32>
        %288 = vector.broadcast %cst_1 : f16 to vector<10xf16>
        %289 = vector.transfer_write %288, %15[%24, %147] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf16>, tensor<3x3xf16>
        %290 = vector.multi_reduction <or>, %129, %true_0 [0] : vector<10xi1> to i1
        %291 = math.round %14 : tensor<15xf32>
        affine.yield %c20035_i16 : i16
      } else {
        affine.store %c541138043_i64, %32[%c13, %c10] : memref<15x8xi64>
        %283 = arith.remui %c1237412335_i32, %c1570006231_i32 : i32
        %284 = math.log %5 : tensor<15xf32>
        %285 = math.fma %14, %14, %5 : tensor<15xf32>
        %286 = vector.broadcast %cst : f32 to vector<10xf32>
        %287 = vector.fma %286, %286, %286 : vector<10xf32>
        %288 = arith.shrsi %c0_i64, %c1329909866_i64 : i64
        %289 = arith.remf %cst, %cst : f32
        %290 = math.log1p %2 : tensor<15x8xf32>
        affine.yield %c-4321_i16 : i16
      }
      %282 = vector.broadcast %c541138043_i64 : i64 to vector<3x3xi64>
      scf.yield %282 : vector<3x3xi64>
    }
    case 3 {
      %269 = bufferization.clone %52 : memref<15x8xi32> to memref<15x8xi32>
      %270 = vector.extract %59[2] : vector<3xi1>
      %271 = vector.reduction <or>, %59 : vector<3xi1> into i1
      %272 = index.casts %c0_i64 : i64 to index
      %273 = math.fma %8, %8, %8 : tensor<10xf32>
      %274 = arith.cmpf une, %cst_1, %cst_1 : f16
      %275 = memref.atomic_rmw minu %c69732229_i32, %alloc_12[%c7] : (i32, memref<10xi32>) -> i32
      %276 = arith.maxsi %c1051325167_i32, %c1513705051_i32 : i32
      affine.for %arg3 = 0 to 66 {
      }
      %277 = arith.ori %c1329909866_i64, %c494598180_i64 : i64
      %278 = math.sqrt %14 : tensor<15xf32>
      %279 = index.maxu %139, %c10
      %280 = vector.maskedload %alloc_2[%c8], %117, %117 : memref<10xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
      %281 = affine.if affine_set<(d0) : (-d0 == 0)>(%c15) -> i32 {
        %from_elements = tensor.from_elements %c-4321_i16, %c-4321_i16, %c-4321_i16, %c-4321_i16, %c-4321_i16, %c-4321_i16, %c20035_i16, %c-4321_i16, %c20035_i16 : tensor<3x3xi16>
        %285 = vector.create_mask %62, %c4 : vector<15x8xi1>
        memref.assume_alignment %alloc_18, 4 : memref<10xi1>
        %286 = vector.broadcast %cst : f32 to vector<10xf32>
        %287 = vector.fma %286, %286, %286 : vector<10xf32>
        %288 = memref.realloc %alloc : memref<10xf32> to memref<15xf32>
        %289 = arith.addi %c1237412335_i32, %c1570006231_i32 : i32
        %c0_i64_39 = arith.constant 0 : i64
        %290 = vector.transfer_read %13[%78, %c13], %c0_i64_39 : tensor<3x3xi64>, vector<10xi64>
        %291 = math.ctlz %75 : tensor<15x10xi64>
        affine.yield %c1_i32_22 : i32
      } else {
        %285 = arith.addi %c1570006231_i32, %c69732229_i32 : i32
        %286 = math.floor %4 : tensor<10xf16>
        %287 = vector.broadcast %cst : f32 to vector<f32>
        %288 = vector.transfer_write %287, %14[%62] : vector<f32>, tensor<15xf32>
        %289 = vector.multi_reduction <maxsi>, %130, %false_21 [0] : vector<10xi1> to i1
        %290 = arith.minui %false, %289 : i1
        %true_39 = arith.constant true
        %291 = vector.transfer_read %10[%62], %true_39 : tensor<10xi1>, vector<i1>
        %292 = arith.minsi %c1570006231_i32, %c1570006231_i32 : i32
        %293 = index.floordivs %122, %c15
        affine.yield %c1237412335_i32 : i32
      }
      %282 = bufferization.clone %alloc_18 : memref<10xi1> to memref<10xi1>
      %283 = vector.multi_reduction <mul>, %19, %19 [] : vector<8xf32> to vector<8xf32>
      %284 = vector.broadcast %c1749512412_i64 : i64 to vector<3x3xi64>
      scf.yield %284 : vector<3x3xi64>
    }
    default {
      %269 = index.divs %c12, %c3
      %270 = vector.matrix_multiply %59, %130 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 10 : i32} : (vector<3xi1>, vector<10xi1>) -> vector<30xi1>
      %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 mod 32 - (d1 mod 32 - 32))>(%54, %139, %c14, %35)
      %272 = index.maxs %66, %rank
      %cst_39 = arith.constant 1.000000e+00 : f32
      %cst_40 = arith.constant 0.000000e+00 : f32
      %273 = vector.transfer_read %2[%c6, %72], %cst_40 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<15x8xf32>, vector<8xf32>
      %274 = tensor.empty() : tensor<3x3xf16>
      %275 = linalg.matmul ins(%15, %15 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%274 : tensor<3x3xf16>) -> tensor<3x3xf16>
      %276 = scf.while (%arg3 = %cst_1) : (f16) -> f16 {
        %286 = math.roundeven %15 : tensor<3x3xf16>
        %287 = math.round %arg3 : f16
        %288 = math.ceil %4 : tensor<10xf16>
        %289 = arith.minsi %c20035_i16, %c20035_i16 : i16
        %cst_43 = arith.constant 1.000000e+00 : f16
        %cst_44 = arith.constant 0.000000e+00 : f16
        %290 = vector.transfer_read %15[%271, %c8], %cst_44 : tensor<3x3xf16>, vector<f16>
        %291 = math.absi %88 : tensor<15x8xi1>
        %292 = index.sizeof
        %293 = memref.atomic_rmw muli %c541138043_i64, %alloc_10[%c12, %c3] : (i64, memref<15x8xi64>) -> i64
        scf.condition(%false_21) %cst_1 : f16
      } do {
      ^bb0(%arg3: f16):
        %286 = index.ceildivs %78, %54
        %rank_43 = tensor.rank %21 : tensor<i1>
        %287 = index.castu %72 : index to i32
        %c0_i32_44 = arith.constant 0 : i32
        %c0_i32_45 = arith.constant 0 : i32
        %288 = vector.transfer_read %3[%286, %139], %c0_i32_45 : tensor<3x3xi32>, vector<i32>
        %289 = vector.broadcast %cst : f32 to vector<10xf32>
        %290 = vector.fma %289, %289, %289 : vector<10xf32>
        %291 = arith.negf %cst : f32
        %292 = vector.extract %290[5] : vector<10xf32>
        %293 = math.round %8 : tensor<10xf32>
        bufferization.dealloc_tensor %splat : tensor<15x8xf16>
        %294 = arith.shli %c1749512412_i64, %c541138043_i64 : i64
        %295 = arith.minsi %c1_i32, %c1051325167_i32 : i32
        memref.copy %alloc_7, %alloc_5 : memref<15xf16> to memref<15xf16>
        %false_46 = index.bool.constant false
        %extracted_47 = tensor.extract %15[%c1, %c1] : tensor<3x3xf16>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst_39 : vector<8xf32>, vector<8xf32> into f32
        %297 = vector.broadcast %c0_i64 : i64 to vector<8xi64>
        %298 = vector.broadcast %false_46 : i1 to vector<8xi1>
        %299 = vector.maskedload %alloc_4[%c1, %c0], %298, %297 : memref<3x3xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        scf.yield %extracted_47 : f16
      }
      %277 = vector.splat %65 : vector<10xindex>
      %278 = arith.minsi %c0_i64, %c0_i64 : i64
      %false_41 = arith.constant false
      %false_42 = arith.constant false
      %279 = vector.transfer_read %7[%43], %false_42 : tensor<15xi1>, vector<i1>
      bufferization.dealloc_tensor %0 : tensor<3x3xi64>
      %280 = math.log %cst : f32
      %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 2 - d0)>(%c5, %150, %97, %115)
      %282 = index.sub %c9, %97
      %283 = arith.mulf %cst, %cst : f32
      %284 = index.floordivs %271, %35
      %285 = vector.broadcast %c1749512412_i64 : i64 to vector<3x3xi64>
      scf.yield %285 : vector<3x3xi64>
    }
    scf.index_switch %35 
    case 1 {
      %generated = tensor.generate %c14 {
      ^bb0(%arg3: index):
        %283 = memref.atomic_rmw assign %cst_1, %alloc_7[%c9] : (f16, memref<15xf16>) -> f16
        %284 = math.rsqrt %4 : tensor<10xf16>
        %285 = math.ipowi %c-4321_i16, %c20035_i16 : i16
        %286 = affine.min affine_map<(d0, d1) -> ((-d0 + -d0 - 64) * 128, (-d0) floordiv 32 - 2)>(%62, %97)
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      %269 = index.sub %84, %147
      %270 = math.ipowi %7, %7 : tensor<15xi1>
      %271 = math.sqrt %14 : tensor<15xf32>
      %272 = arith.muli %c-4321_i16, %c20035_i16 : i16
      %false_39 = index.bool.constant false
      %273 = bufferization.clone %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
      %274 = bufferization.to_memref %6 : memref<3x3xi16>
      %275 = vector.extract_strided_slice %19 {offsets = [3], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
      %276 = affine.if affine_set<(d0) : ((d0 * 64 - d0 floordiv 64) ceildiv 4 >= 0, -((d0 ceildiv 2) floordiv 2 + 128) == 0)>(%c4) -> memref<15xi16> {
        affine.store %c-4321_i16, %274[%c1, %c9] : memref<3x3xi16>
        %283 = math.ipowi %12, %88 : tensor<15x8xi1>
        %284 = index.casts %c1570006231_i32 : i32 to index
        %inserted_41 = tensor.insert %cst_1 into %15[%c0, %c2] : tensor<3x3xf16>
        %285 = memref.atomic_rmw minf %cst_1, %273[%c0, %c2] : (f16, memref<3x3xf16>) -> f16
        %286 = index.add %c11, %269
        %c1_i32_42 = arith.constant 1 : i32
        %287 = vector.transfer_read %52[%286, %139], %c1_i32_42 : memref<15x8xi32>, vector<3xi32>
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64)>(%97, %121, %269, %rank)
        %alloc_43 = memref.alloc() : memref<15xi16>
        affine.yield %alloc_43 : memref<15xi16>
      } else {
        %283 = math.ipowi %11, %11 : tensor<15xi32>
        %284 = vector.insert %false_21, %117 [0] : i1 into vector<3xi1>
        %285 = arith.shrsi %c1749512412_i64, %c1749512412_i64 : i64
        %286 = arith.minui %false, %false : i1
        %287 = arith.maxf %cst_1, %cst_1 : f16
        %288 = vector.broadcast %c1051325167_i32 : i32 to vector<15xi32>
        %289 = vector.extract %59[2] : vector<3xi1>
        %290 = math.fpowi %15, %28 : tensor<3x3xf16>, tensor<3x3xi32>
        %alloc_41 = memref.alloc() : memref<15xi16>
        affine.yield %alloc_41 : memref<15xi16>
      }
      %277 = vector.broadcast %cst : f32 to vector<15x8xf32>
      %278 = vector.fma %277, %277, %277 : vector<15x8xf32>
      %279 = arith.ori %c0_i64, %c494598180_i64 : i64
      %280 = arith.xori %false_21, %false_21 : i1
      %281 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %281, %116[%269] : vector<i1>, memref<15xi1>
      %282 = bufferization.clone %alloc_5 : memref<15xf16> to memref<15xf16>
      %false_40 = index.bool.constant false
      scf.yield
    }
    default {
      %269 = vector.flat_transpose %58 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %270 = math.roundeven %splat : tensor<15x8xf16>
      %271 = arith.ceildivsi %c1_i32_22, %c69732229_i32 : i32
      %272 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 64) ceildiv 16 + 32)>(%147, %121)
      %273 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %274 = vector.fma %273, %273, %273 : vector<3x3xf32>
      %275 = index.ceildivs %43, %105
      %276 = bufferization.to_memref %2 : memref<15x8xf32>
      %277 = bufferization.to_memref %0 : memref<3x3xi64>
      %278 = math.fpowi %15, %17 : tensor<3x3xf16>, tensor<3x3xi32>
      %279 = arith.minf %cst_1, %cst_1 : f16
      %280 = vector.shuffle %269, %59 [0, 5] : vector<3xi1>, vector<3xi1>
      %281 = vector.extract %19[1] : vector<8xf32>
      %282 = tensor.empty() : tensor<10xi32>
      %283 = math.fpowi %8, %282 : tensor<10xf32>, tensor<10xi32>
      %284 = index.divu %103, %c10
      %285 = tensor.empty() : tensor<15x8xi32>
      %286 = math.fpowi %2, %285 : tensor<15x8xf32>, tensor<15x8xi32>
      %287 = math.round %15 : tensor<3x3xf16>
    }
    %152 = vector.create_mask %43, %c3 : vector<3x3xi1>
    %153 = vector.multi_reduction <and>, %58, %true_0 [0] : vector<3xi1> to i1
    %154 = vector.broadcast %cst : f32 to vector<15xf32>
    vector.transfer_write %154, %alloc_16[%c11, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf32>, memref<3x3xf32>
    %155 = memref.load %alloc_7[%c9] : memref<15xf16>
    %156 = arith.minsi %true, %false_21 : i1
    affine.store %153, %alloc_6[%c12, %c2] : memref<15x8xi1>
    %157 = arith.remsi %true, %true_0 : i1
    %158 = arith.remf %cst_1, %cst_1 : f16
    %159 = bufferization.to_memref %91 : memref<3x3xi32>
    %false_24 = arith.constant false
    %160 = vector.transfer_read %12[%c6, %c3], %false_24 : tensor<15x8xi1>, vector<i1>
    %161 = index.ceildivs %78, %54
    %162 = math.tanh %5 : tensor<15xf32>
    %rank_25 = tensor.rank %1 : tensor<15x8xi64>
    %163 = math.powf %4, %4 : tensor<10xf16>
    %164 = vector.reduction <mul>, %154 : vector<15xf32> into f32
    %165 = vector.create_mask %147 : vector<10xi1>
    %166 = index.add %103, %c8
    %167 = index.mul %72, %c15
    %168 = scf.execute_region -> i16 {
      %269 = vector.extract_strided_slice %165 {offsets = [4], sizes = [4], strides = [1]} : vector<10xi1> to vector<4xi1>
      %270 = arith.shrsi %c1237412335_i32, %c1_i32 : i32
      memref.store %false_24, %alloc_13[%c0, %c2] : memref<3x3xi1>
      %extracted_39 = tensor.extract %0[%c2, %c2] : tensor<3x3xi64>
      %271 = index.floordivs %71, %c3
      %272 = vector.create_mask %121 : vector<10xi1>
      %273 = index.ceildivu %131, %c14
      %274 = affine.apply affine_map<(d0, d1) -> (d0 + 68)>(%43, %c12)
      %275 = bufferization.to_memref %1 : memref<15x8xi64>
      %276 = vector.matrix_multiply %129, %272 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
      %277 = index.maxu %54, %c4
      %278 = math.ceil %2 : tensor<15x8xf32>
      %279 = scf.index_switch %103 -> i32 
      case 1 {
        %283 = arith.cmpi ule, %c-4321_i16, %c-4321_i16 : i16
        %284 = memref.load %275[%c8, %c4] : memref<15x8xi64>
        %true_41 = arith.constant true
        %285 = vector.transfer_read %10[%24], %true_41 : tensor<10xi1>, vector<i1>
        %rank_42 = tensor.rank %1 : tensor<15x8xi64>
        %286 = tensor.empty() : tensor<15x8xi32>
        %287 = math.fpowi %splat, %286 : tensor<15x8xf16>, tensor<15x8xi32>
        %288 = index.ceildivu %c3, %122
        %289 = index.mul %127, %71
        %290 = index.castu %c8 : index to i32
        %291 = math.ctpop %true_41 : i1
        %292 = bufferization.clone %alloc_13 : memref<3x3xi1> to memref<3x3xi1>
        memref.store %true_41, %alloc_18[%c8] : memref<10xi1>
        %293 = arith.divsi %c69732229_i32, %c1_i32_22 : i32
        %294 = arith.ceildivsi %c69732229_i32, %c1237412335_i32 : i32
        %295 = math.powf %14, %5 : tensor<15xf32>
        %296 = index.add %105, %97
        %297 = index.add %289, %84
        scf.yield %c1570006231_i32 : i32
      }
      default {
        %283 = affine.load %alloc_13[%c13, %c13] : memref<3x3xi1>
        %284 = memref.realloc %116 : memref<15xi1> to memref<15xi1>
        %285 = tensor.empty() : tensor<15x8xi32>
        %286 = math.fpowi %2, %285 : tensor<15x8xf32>, tensor<15x8xi32>
        %287 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
        %cst_41 = arith.constant 1.000000e+00 : f16
        %cst_42 = arith.constant 0.000000e+00 : f16
        %288 = vector.transfer_read %alloc_8[%166, %c10], %cst_42 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<3x3xf16>, vector<15xf16>
        %289 = vector.outerproduct %117, %59, %152 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
        affine.store %false, %116[%c4] : memref<15xi1>
        %290 = index.add %43, %80
        %false_43 = arith.constant false
        %false_44 = arith.constant false
        %291 = vector.transfer_read %7[%277], %false_44 : tensor<15xi1>, vector<i1>
        %292 = arith.cmpi sle, %c-4321_i16, %c20035_i16 : i16
        %293 = vector.reduction <minsi>, %58 : vector<3xi1> into i1
        %294 = arith.mulf %cst_1, %cst_41 : f16
        %295 = index.sub %c11, %c15
        %296 = vector.splat %103 : vector<15xindex>
        %297 = arith.shrui %c1570006231_i32, %c1_i32_22 : i32
        bufferization.dealloc_tensor %7 : tensor<15xi1>
        scf.yield %c1570006231_i32 : i32
      }
      %cst_40 = arith.constant 1.000000e+00 : f32
      %280 = vector.transfer_read %alloc_16[%62, %166], %cst_40 : memref<3x3xf32>, vector<f32>
      %281 = math.rsqrt %15 : tensor<3x3xf16>
      %282 = vector.bitcast %59 : vector<3xi1> to vector<3xi1>
      scf.yield %c-4321_i16 : i16
    }
    %169 = affine.apply affine_map<(d0) -> (((d0 + 4) floordiv 32) ceildiv 4)>(%105)
    %170 = arith.minsi %c1570006231_i32, %c1_i32_22 : i32
    %171 = arith.divsi %c0_i64, %c494598180_i64 : i64
    %172 = arith.minui %c20035_i16, %168 : i16
    %173 = math.absi %11 : tensor<15xi32>
    %174 = index.ceildivs %84, %c5
    %175 = math.tanh %14 : tensor<15xf32>
    %extracted = tensor.extract %15[%c0, %c2] : tensor<3x3xf16>
    %176 = math.log %14 : tensor<15xf32>
    %177 = bufferization.to_memref %12 : memref<15x8xi1>
    %178 = arith.floordivsi %false_24, %false_21 : i1
    %179 = arith.ori %c1_i32_22, %c1513705051_i32 : i32
    %180 = arith.remsi %c1570006231_i32, %c1_i32 : i32
    %181 = vector.insert %false, %129 [3] : i1 into vector<10xi1>
    %182 = arith.addi %c1329909866_i64, %c541138043_i64 : i64
    %183 = math.ipowi %c69732229_i32, %c1051325167_i32 : i32
    %true_26 = index.bool.constant true
    %184 = index.castu %c13 : index to i32
    %185 = arith.addi %c1237412335_i32, %c1513705051_i32 : i32
    %186 = index.casts %43 : index to i32
    %187 = tensor.empty() : tensor<3x3xi64>
    %mapped = linalg.map ins(%0, %0, %0 : tensor<3x3xi64>, tensor<3x3xi64>, tensor<3x3xi64>) outs(%187 : tensor<3x3xi64>)
      (%in: i64, %in_39: i64, %in_40: i64) {
        %269 = vector.extract %117[0] : vector<3xi1>
        %270 = math.round %8 : tensor<10xf32>
        %271 = math.atan2 %15, %15 : tensor<3x3xf16>
        %272 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %273 = vector.fma %272, %272, %272 : vector<3x3xf32>
        %274 = math.round %extracted : f16
        %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64)>(%161, %c8, %139, %66)
        %276 = arith.addi %false, %true_26 : i1
        memref.assume_alignment %159, 8 : memref<3x3xi32>
        %277 = index.ceildivs %84, %51
        %278 = arith.minf %cst_1, %extracted : f16
        %279 = vector.reduction <maxf>, %154 : vector<15xf32> into f32
        %280 = index.sub %275, %c2
        %splat_41 = tensor.splat %168 : tensor<3x3xi16>
        %false_42 = index.bool.constant false
        %281 = vector.reduction <maxf>, %154 : vector<15xf32> into f32
        %282 = vector.broadcast %cst : f32 to vector<3xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %273, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xf32>, vector<3xf32>
        %283 = arith.muli %false_42, %false_42 : i1
        affine.store %cst, %alloc_17[] : memref<f32>
        %284 = vector.insertelement %false, %117[%105 : index] : vector<3xi1>
        %285 = math.round %extracted : f16
        %286 = math.round %4 : tensor<10xf16>
        %287 = vector.broadcast %127 : index to vector<10xindex>
        %288 = vector.broadcast %cst : f32 to vector<10xf32>
        vector.scatter %alloc_15[%c8] [%287], %165, %288 : memref<10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %289 = arith.ori %false_21, %false_21 : i1
        %290 = arith.divsi %in_40, %c1749512412_i64 : i64
        %291 = bufferization.to_tensor %109 : memref<15x8xi1>
        %292 = math.exp %8 : tensor<10xf32>
        %293 = vector.multi_reduction <maxf>, %19, %cst [0] : vector<8xf32> to f32
        %294 = math.tanh %cst : f32
        %295 = arith.muli %c541138043_i64, %in_40 : i64
        %296 = memref.load %109[%c0, %c7] : memref<15x8xi1>
        %297 = math.log1p %2 : tensor<15x8xf32>
        %298 = vector.broadcast %c1329909866_i64 : i64 to vector<15xi64>
        %c0_i64_43 = arith.constant 0 : i64
        linalg.yield %c0_i64_43 : i64
      }
    %188 = memref.atomic_rmw maxu %c1_i32_22, %alloc_12[%c3] : (i32, memref<10xi32>) -> i32
    %189 = index.castu %97 : index to i32
    %190 = vector.splat %139 : vector<15x8xindex>
    %inserted_27 = tensor.insert %c541138043_i64 into %13[%c0, %c2] : tensor<3x3xi64>
    %191 = math.rsqrt %14 : tensor<15xf32>
    %192 = index.castu %c1237412335_i32 : i32 to index
    %193 = math.absi %true : i1
    %194 = math.tanh %cst : f32
    %195 = vector.bitcast %165 : vector<10xi1> to vector<10xi1>
    %196 = arith.ceildivsi %c494598180_i64, %c0_i64 : i64
    %alloc_28 = memref.alloc() : memref<8x8xf32>
    %197 = tensor.empty() : tensor<15x8xf32>
    %198 = linalg.matmul ins(%2, %alloc_28 : tensor<15x8xf32>, memref<8x8xf32>) outs(%197 : tensor<15x8xf32>) -> tensor<15x8xf32>
    %199 = index.mul %c4, %71
    %200 = vector.create_mask %161 : vector<10xi1>
    %201 = math.rsqrt %15 : tensor<3x3xf16>
    %202 = arith.ceildivsi %c1329909866_i64, %c494598180_i64 : i64
    %203 = index.sub %c6, %c4
    %204 = index.maxu %65, %72
    %205 = math.ipowi %13, %0 : tensor<3x3xi64>
    %206 = vector.broadcast %cst : f32 to vector<15x8xf32>
    %207 = vector.fma %206, %206, %206 : vector<15x8xf32>
    %208 = vector.multi_reduction <minsi>, %58, %true_26 [0] : vector<3xi1> to i1
    %expanded_29 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<3x3xi32> into tensor<3x3x1xi32>
    %209 = index.maxu %203, %204
    %210 = index.castu %false_21 : i1 to index
    %211 = tensor.empty() : tensor<8x8xf32>
    %212 = tensor.empty() : tensor<15x8xf32>
    %213 = linalg.matmul ins(%2, %211 : tensor<15x8xf32>, tensor<8x8xf32>) outs(%212 : tensor<15x8xf32>) -> tensor<15x8xf32>
    %214 = arith.shrsi %false, %false : i1
    %215 = index.sub %167, %c2
    %216 = vector.broadcast %false : i1 to vector<15x8xi1>
    %217 = math.absi %c1_i32_22 : i32
    %218 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %154, %207, %19 : vector<15xf32>, vector<15x8xf32> into vector<8xf32>
    %219 = arith.maxsi %168, %c20035_i16 : i16
    %220 = math.roundeven %14 : tensor<15xf32>
    %221 = math.atan %15 : tensor<3x3xf16>
    %222 = index.ceildivs %c3, %c5
    %223 = arith.ori %c20035_i16, %c20035_i16 : i16
    %224 = vector.broadcast %153 : i1 to vector<10x10xi1>
    %225 = vector.outerproduct %200, %130, %224 {kind = #vector.kind<or>} : vector<10xi1>, vector<10xi1>
    %226 = bufferization.to_tensor %alloc_11 : memref<3x3xi16>
    %227 = tensor.empty() : tensor<10xi32>
    %228 = math.fpowi %4, %227 : tensor<10xf16>, tensor<10xi32>
    %inserted_30 = tensor.insert %c20035_i16 into %9[%c1, %c0] : tensor<3x3xi16>
    %229 = arith.ori %168, %168 : i16
    %230 = vector.broadcast %cst : f32 to vector<10xf32>
    %231 = vector.fma %230, %230, %230 : vector<10xf32>
    %232 = bufferization.to_memref %7 : memref<15xi1>
    memref.store %false, %alloc_13[%c1, %c2] : memref<3x3xi1>
    %233 = memref.realloc %alloc_18 : memref<10xi1> to memref<8xi1>
    %234 = vector.create_mask %71 : vector<10xi1>
    %true_31 = index.bool.constant true
    %235 = index.maxu %rank_25, %54
    %cst_32 = arith.constant 1.000000e+00 : f16
    %236 = vector.transfer_read %4[%97], %cst_32 : tensor<10xf16>, vector<f16>
    %237 = vector.reduction <minsi>, %117 : vector<3xi1> into i1
    %238 = vector.broadcast %c-4321_i16 : i16 to vector<15xi16>
    %239 = vector.broadcast %true_0 : i1 to vector<15xi1>
    %240 = vector.maskedload %alloc_11[%c1, %c1], %239, %238 : memref<3x3xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
    %241 = math.sqrt %15 : tensor<3x3xf16>
    %242 = scf.while (%arg3 = %206) : (vector<15x8xf32>) -> vector<15x8xf32> {
      %269 = index.sub %122, %c7
      %270 = memref.atomic_rmw assign %cst_1, %alloc_7[%c11] : (f16, memref<15xf16>) -> f16
      %271 = arith.shli %true, %true : i1
      %alloca = memref.alloca() : memref<15xf16>
      %272 = math.tanh %8 : tensor<10xf32>
      %273 = arith.shrsi %c541138043_i64, %c1749512412_i64 : i64
      %274 = math.atan2 %4, %4 : tensor<10xf16>
      %275 = vector.multi_reduction <mul>, %59, %208 [0] : vector<3xi1> to i1
      scf.condition(%false_24) %206 : vector<15x8xf32>
    } do {
    ^bb0(%arg3: vector<15x8xf32>):
      %269 = affine.load %alloc_6[%c12, %c13] : memref<15x8xi1>
      %270 = vector.matrix_multiply %234, %165 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
      %271 = index.add %c2, %66
      %272 = math.copysign %2, %2 : tensor<15x8xf32>
      %273 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
      %rank_39 = tensor.rank %21 : tensor<i1>
      %274 = tensor.empty() : tensor<i1>
      %mapped_40 = linalg.map ins(%21, %20, %20 : tensor<i1>, tensor<i1>, tensor<i1>) outs(%274 : tensor<i1>)
        (%in: i1, %in_42: i1, %in_43: i1) {
          %282 = vector.splat %c4 : vector<15x8xindex>
          %283 = bufferization.to_tensor %alloc_9 : memref<3x3xi16>
          bufferization.dealloc_tensor %5 : tensor<15xf32>
          %284 = bufferization.to_tensor %177 : memref<15x8xi1>
          %285 = arith.floordivsi %c0_i64, %c1749512412_i64 : i64
          %286 = arith.addi %c1329909866_i64, %c494598180_i64 : i64
          %287 = index.sizeof
          %288 = arith.ori %true, %in_42 : i1
          %289 = index.maxs %c3, %150
          %290 = vector.bitcast %206 : vector<15x8xf32> to vector<15x8xf32>
          %c0_i16 = arith.constant 0 : i16
          %291 = vector.transfer_read %6[%127, %c12], %c0_i16 : tensor<3x3xi16>, vector<15xi16>
          %292 = arith.minsi %153, %true_26 : i1
          vector.print %58 : vector<3xi1>
          %293 = bufferization.clone %alloc_16 : memref<3x3xf32> to memref<3x3xf32>
          %294 = bufferization.to_memref %75 : memref<15x10xi64>
          %295 = bufferization.to_tensor %alloc_10 : memref<15x8xi64>
          %296 = arith.minsi %true_0, %true_31 : i1
          %alloca_44 = memref.alloca() : memref<15xi64>
          %297 = math.atan2 %cst_32, %cst_1 : f16
          %298 = arith.remf %cst, %cst : f32
          %true_45 = index.bool.constant true
          %299 = math.cos %197 : tensor<15x8xf32>
          %300 = arith.minsi %c1051325167_i32, %c1513705051_i32 : i32
          %301 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 16) ceildiv 4)>(%210, %271, %c1, %80)
          %302 = arith.floordivsi %c541138043_i64, %c541138043_i64 : i64
          %303 = arith.minui %c1329909866_i64, %c0_i64 : i64
          %304 = memref.load %232[%c9] : memref<15xi1>
          %305 = bufferization.clone %alloc_16 : memref<3x3xf32> to memref<3x3xf32>
          %306 = tensor.empty() : tensor<3x3xi64>
          %307 = linalg.matmul ins(%187, %0 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%306 : tensor<3x3xi64>) -> tensor<3x3xi64>
          %308 = arith.shrsi %true, %true : i1
          %false_46 = index.bool.constant false
          %309 = arith.remsi %true_45, %208 : i1
          %true_47 = arith.constant true
          linalg.yield %true_47 : i1
        }
      %275 = arith.divf %cst_32, %extracted : f16
      %276 = vector.broadcast %153 : i1 to vector<15xi1>
      %277 = tensor.empty() : tensor<3x3x1xi16>
      %mapped_41 = linalg.map ins(%expanded, %expanded : tensor<3x3x1xi16>, tensor<3x3x1xi16>) outs(%277 : tensor<3x3x1xi16>)
        (%in: i16, %in_42: i16) {
          %282 = vector.create_mask %78, %c10 : vector<15x8xi1>
          %283 = memref.load %alloc_17[] : memref<f32>
          %alloc_43 = memref.alloc() : memref<10x10xi64>
          %284 = tensor.empty() : tensor<15x10xi64>
          %285 = linalg.matmul ins(%75, %alloc_43 : tensor<15x10xi64>, memref<10x10xi64>) outs(%284 : tensor<15x10xi64>) -> tensor<15x10xi64>
          %true_44 = arith.constant true
          %286 = vector.transfer_read %7[%rank], %true_44 : tensor<15xi1>, vector<i1>
          %287 = index.casts %c1570006231_i32 : i32 to index
          %288 = vector.create_mask %131 : vector<10xi1>
          %289 = index.mul %c7, %209
          %290 = arith.shrsi %c1329909866_i64, %c0_i64 : i64
          %291 = memref.load %alloc_13[%c1, %c1] : memref<3x3xi1>
          %292 = math.log %2 : tensor<15x8xf32>
          %cast = tensor.cast %3 : tensor<3x3xi32> to tensor<?x?xi32>
          %293 = arith.floordivsi %c1749512412_i64, %c541138043_i64 : i64
          vector.print %117 : vector<3xi1>
          memref.tensor_store %226, %alloc_9 : memref<3x3xi16>
          %294 = math.tan %14 : tensor<15xf32>
          %alloca_45 = memref.alloca() : memref<15x8xi16>
          %295 = index.casts %210 : index to i32
          %296 = math.ceil %212 : tensor<15x8xf32>
          %inserted_46 = tensor.insert %c1329909866_i64 into %13[%c0, %c0] : tensor<3x3xi64>
          %297 = arith.floordivsi %true_31, %153 : i1
          %298 = vector.extract %231[7] : vector<10xf32>
          %299 = memref.atomic_rmw maxs %c1051325167_i32, %alloc_14[%c5, %c1] : (i32, memref<15x8xi32>) -> i32
          %300 = math.ceil %2 : tensor<15x8xf32>
          %301 = index.add %24, %150
          %302 = arith.ori %c20035_i16, %in_42 : i16
          %303 = index.divs %51, %222
          %304 = arith.ori %c1051325167_i32, %c1513705051_i32 : i32
          %305 = vector.bitcast %152 : vector<3x3xi1> to vector<3x3xi1>
          %306 = bufferization.to_memref %2 : memref<15x8xf32>
          %307 = tensor.empty() : tensor<15x8xi32>
          %308 = math.fpowi %197, %307 : tensor<15x8xf32>, tensor<15x8xi32>
          %309 = index.mul %rank_25, %166
          %310 = index.ceildivu %215, %209
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %278 = bufferization.clone %alloc_16 : memref<3x3xf32> to memref<3x3xf32>
      %279 = arith.cmpf uge, %extracted, %cst_32 : f16
      %alloca = memref.alloca() : memref<10xi1>
      %280 = arith.remui %c1329909866_i64, %c1329909866_i64 : i64
      affine.store %cst_1, %alloc_5[%c7] : memref<15xf16>
      %281 = index.castu %24 : index to i32
      scf.yield %207 : vector<15x8xf32>
    }
    %alloc_33 = memref.alloc() : memref<10xf16>
    memref.tensor_store %4, %alloc_33 : memref<10xf16>
    %243 = math.floor %cst : f32
    %244 = math.fpowi %14, %11 : tensor<15xf32>, tensor<15xi32>
    %245 = bufferization.to_tensor %52 : memref<15x8xi32>
    %246 = math.fpowi %4, %227 : tensor<10xf16>, tensor<10xi32>
    %247 = arith.floordivsi %c1513705051_i32, %c1237412335_i32 : i32
    %248 = index.ceildivs %62, %78
    %249 = arith.remf %cst_32, %cst_1 : f16
    %250 = vector.broadcast %cst : f32 to vector<10x10xf32>
    %251 = vector.outerproduct %231, %231, %250 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
    scf.if %false {
      %269 = arith.mulf %extracted, %cst_32 : f16
      %270 = math.log2 %5 : tensor<15xf32>
      %271 = arith.cmpi slt, %true_31, %false_24 : i1
      %272 = vector.broadcast %cst : f32 to vector<3xf32>
      %273 = vector.maskedload %alloc_16[%c2, %c1], %58, %272 : memref<3x3xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %274 = memref.load %alloc_7[%c9] : memref<15xf16>
      %275 = index.floordivs %51, %166
      %c1_i32_39 = arith.constant 1 : i32
      %276 = vector.transfer_read %3[%c15, %65], %c1_i32_39 : tensor<3x3xi32>, vector<10xi32>
      %277 = math.fma %5, %5, %5 : tensor<15xf32>
    }
    %252 = affine.apply affine_map<(d0) -> ((d0 * 4) mod 128)>(%248)
    memref.store %c0_i64, %32[%c11, %c4] : memref<15x8xi64>
    %rank_34 = tensor.rank %12 : tensor<15x8xi1>
    %253 = arith.ceildivsi %true_31, %true_31 : i1
    %alloc_35 = memref.alloc() : memref<3x1xi16>
    %alloc_36 = memref.alloc() : memref<1x3xi16>
    %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_35, %alloc_36 : memref<3x1xi16>, memref<1x3xi16>) outs(%expanded : tensor<3x3x1xi16>) {
    ^bb0(%in: i16, %in_39: i16, %out: i16):
      %c1_i16 = arith.constant 1 : i16
      %269 = vector.transfer_read %9[%c3, %51], %c1_i16 : tensor<3x3xi16>, vector<i16>
      %270 = arith.minui %208, %true_0 : i1
      %271 = memref.atomic_rmw maxf %cst_32, %alloc_3[%c0, %c0] : (f16, memref<3x3xf16>) -> f16
      %alloc_40 = memref.alloc() : memref<10xi1>
      %272 = vector.reduction <or>, %238 : vector<15xi16> into i16
      %273 = math.atan2 %5, %5 : tensor<15xf32>
      %274 = index.castu %c10 : index to i32
      %275 = arith.mulf %cst_32, %extracted : f16
      scf.index_switch %166 
      case 1 {
        %295 = math.atan %2 : tensor<15x8xf32>
        vector.print %195 : vector<10xi1>
        affine.store %true, %232[%c14] : memref<15xi1>
        %296 = math.round %2 : tensor<15x8xf32>
        %297 = math.round %2 : tensor<15x8xf32>
        %298 = index.castu %c0_i64 : i64 to index
        %299 = vector.splat %c1570006231_i32 : vector<15xi32>
        %300 = memref.realloc %alloc : memref<10xf32> to memref<15xf32>
        %301 = vector.broadcast %cst : f32 to vector<10xf32>
        %302 = vector.fma %301, %230, %230 : vector<10xf32>
        %inserted_45 = tensor.insert %true into %10[%c1] : tensor<10xi1>
        %303 = memref.atomic_rmw assign %cst, %alloc_15[%c3] : (f32, memref<10xf32>) -> f32
        %304 = math.ipowi %false_24, %153 : i1
        %305 = math.tan %cst_1 : f16
        %306 = math.atan %8 : tensor<10xf32>
        %307 = index.divs %210, %c2
        %308 = arith.minui %c1_i16, %in : i16
        scf.yield
      }
      default {
        %295 = vector.broadcast %c1 : index to vector<3xindex>
        %296 = vector.broadcast %c69732229_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_14[%c12, %c5] [%295], %58, %296 : memref<15x8xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %297 = memref.load %77[%c1, %c2] : memref<3x3xi32>
        %298 = math.fma %15, %15, %15 : tensor<3x3xf16>
        %299 = math.powf %212, %197 : tensor<15x8xf32>
        %300 = arith.floordivsi %false_24, %false_21 : i1
        %301 = memref.realloc %alloc_7 : memref<15xf16> to memref<3xf16>
        %302 = index.add %c10, %rank
        %alloc_45 = memref.alloc() : memref<8x15xf32>
        %303 = tensor.empty() : tensor<15x15xf32>
        %304 = linalg.matmul ins(%197, %alloc_45 : tensor<15x8xf32>, memref<8x15xf32>) outs(%303 : tensor<15x15xf32>) -> tensor<15x15xf32>
        %305 = index.mul %c9, %c9
        %306 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 64) ceildiv 16 + 32)>(%150, %121)
        %307 = math.fma %2, %197, %2 : tensor<15x8xf32>
        %308 = math.round %8 : tensor<10xf32>
        %309 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 16) ceildiv 4)>(%174, %305, %c1, %c6)
        %310 = arith.ori %c494598180_i64, %c494598180_i64 : i64
        %311 = index.floordivs %c11, %131
        %312 = arith.cmpi eq, %c494598180_i64, %c1749512412_i64 : i64
      }
      %276 = bufferization.clone %alloc_3 : memref<3x3xf16> to memref<3x3xf16>
      %dest, %accumulated_value = vector.scan <minsi>, %216, %239 {inclusive = false, reduction_dim = 1 : i64} : vector<15x8xi1>, vector<15xi1>
      %rank_41 = tensor.rank %1 : tensor<15x8xi64>
      %277 = index.floordivs %204, %c3
      %278 = index.casts %c1749512412_i64 : i64 to index
      %279 = arith.remsi %c0_i64, %c1329909866_i64 : i64
      %280 = math.tanh %15 : tensor<3x3xf16>
      %281 = index.castu %51 : index to i32
      %282 = vector.broadcast %c1237412335_i32 : i32 to vector<15x8xi32>
      %283 = index.sub %215, %35
      %284 = index.add %127, %97
      %285 = math.cttz %c0_i64 : i64
      %286 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 64) ceildiv 16 + 32)>(%65, %283)
      %287 = vector.broadcast %208 : i1 to vector<i1>
      %288 = vector.transfer_write %287, %10[%210] : vector<i1>, tensor<10xi1>
      %289 = math.tanh %212 : tensor<15x8xf32>
      %290 = vector.multi_reduction <mul>, %59, %208 [0] : vector<3xi1> to i1
      %true_42 = arith.constant true
      %291 = vector.transfer_read %alloc_18[%161], %true_42 : memref<10xi1>, vector<i1>
      %292 = math.fpowi %cst_32, %c69732229_i32 : f16, i32
      memref.store %c1513705051_i32, %alloc_14[%c11, %c2] : memref<15x8xi32>
      %collapsed_43 = tensor.collapse_shape %91 [[0, 1]] : tensor<3x3xi32> into tensor<9xi32>
      %collapsed_44 = tensor.collapse_shape %6 [[0, 1]] : tensor<3x3xi16> into tensor<9xi16>
      %293 = scf.index_switch %127 -> index 
      case 1 {
        %295 = arith.minui %c-4321_i16, %in_39 : i16
        %296 = math.sqrt %extracted : f16
        %297 = arith.remf %cst_32, %cst_1 : f16
        %cst_45 = arith.constant 1.000000e+00 : f16
        %298 = vector.transfer_read %276[%204, %215], %cst_45 : memref<3x3xf16>, vector<15xf16>
        %299 = math.sqrt %15 : tensor<3x3xf16>
        %300 = math.atan2 %15, %15 : tensor<3x3xf16>
        %301 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %117, %152, %117 : vector<3xi1>, vector<3x3xi1> into vector<3xi1>
        %false_46 = index.bool.constant false
        %302 = vector.extract %230[9] : vector<10xf32>
        %303 = vector.reduction <maxui>, %130 : vector<10xi1> into i1
        %304 = math.sqrt %cst_1 : f16
        %305 = math.sqrt %5 : tensor<15xf32>
        %306 = index.castu %248 : index to i32
        %307 = math.rsqrt %212 : tensor<15x8xf32>
        %308 = affine.min affine_map<(d0) -> (0, d0 ceildiv 8, d0)>(%167)
        %309 = arith.cmpf ord, %cst_45, %cst_32 : f16
        scf.yield %167 : index
      }
      default {
        %295 = vector.broadcast %cst : f32 to vector<3xf32>
        %296 = vector.maskedload %alloc_17[], %117, %295 : memref<f32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %cst_45 = arith.constant 1.000000e+00 : f32
        %cst_46 = arith.constant 0.000000e+00 : f32
        %297 = vector.transfer_read %212[%rank_34, %71], %cst_46 : tensor<15x8xf32>, vector<f32>
        %298 = index.mul %43, %51
        %299 = math.ctlz %3 : tensor<3x3xi32>
        %inserted_47 = tensor.insert %cst_1 into %15[%c0, %c1] : tensor<3x3xf16>
        %300 = vector.maskedload %alloc_17[], %165, %230 : memref<f32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %301 = arith.floordivsi %in_39, %c20035_i16 : i16
        vector.print %58 : vector<3xi1>
        %302 = index.casts %in : i16 to index
        %303 = arith.ori %168, %in_39 : i16
        %304 = bufferization.to_tensor %alloc_12 : memref<10xi32>
        %305 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 16) ceildiv 4)>(%210, %209, %62, %105)
        %306 = index.maxu %84, %161
        memref.assume_alignment %276, 2 : memref<3x3xf16>
        affine.store %cst_1, %alloc_5[%c14] : memref<15xf16>
        vector.print %287 : vector<i1>
        scf.yield %51 : index
      }
      %294 = vector.insert %cst, %231 [0] : f32 into vector<10xf32>
      linalg.yield %in_39 : i16
    } -> tensor<3x3x1xi16>
    %255 = affine.apply affine_map<(d0) -> ((d0 * -2) mod 4)>(%65)
    %256 = arith.divsi %c494598180_i64, %c541138043_i64 : i64
    %257 = index.maxu %c14, %122
    %258 = affine.if affine_set<(d0, d1) : (d1 + d0 + d1 + d0 - d0 >= 0)>(%c11, %c4) -> memref<15x8xf16> {
      %269 = vector.insert %208, %239 [10] : i1 into vector<15xi1>
      %270 = index.maxs %210, %167
      %alloc_39 = memref.alloc() : memref<15x8xf32>
      %271 = memref.realloc %alloc_7 : memref<15xf16> to memref<15xf16>
      %alloc_40 = memref.alloc() : memref<15x8xf32>
      memref.tensor_store %212, %alloc_40 : memref<15x8xf32>
      %272 = arith.remf %cst_32, %cst_32 : f16
      %c0_i32_41 = arith.constant 0 : i32
      %273 = vector.transfer_read %91[%c15, %c1], %c0_i32_41 : tensor<3x3xi32>, vector<i32>
      %274 = math.rsqrt %15 : tensor<3x3xf16>
      %alloc_42 = memref.alloc() : memref<15x8xf16>
      affine.yield %alloc_42 : memref<15x8xf16>
    } else {
      %269 = math.sqrt %cst : f32
      %rank_39 = tensor.rank %13 : tensor<3x3xi64>
      %270 = index.ceildivs %103, %c10
      %271 = math.atan %4 : tensor<10xf16>
      %272 = scf.index_switch %127 -> vector<3x3xi64> 
      case 1 {
        %274 = math.fma %cst_32, %cst_32, %cst_1 : f16
        %275 = math.absi %245 : tensor<15x8xi32>
        %276 = math.log1p %8 : tensor<10xf32>
        %277 = index.sub %84, %46
        %278 = arith.minui %true_26, %true_31 : i1
        %279 = math.ctpop %18 : tensor<3x3xi16>
        %280 = index.castu %78 : index to i32
        %false_43 = index.bool.constant false
        %true_44 = arith.constant true
        %281 = vector.transfer_read %alloc_6[%257, %80], %true_44 : memref<15x8xi1>, vector<i1>
        %282 = vector.multi_reduction <add>, %207, %cst [0, 1] : vector<15x8xf32> to f32
        %283 = math.ipowi %13, %13 : tensor<3x3xi64>
        %284 = math.atan2 %14, %14 : tensor<15xf32>
        %285 = arith.maxsi %168, %c20035_i16 : i16
        %286 = vector.broadcast %282 : f32 to vector<10xf32>
        %287 = vector.fma %286, %230, %230 : vector<10xf32>
        %extracted_45 = tensor.extract %75[%c9, %c9] : tensor<15x10xi64>
        %dest, %accumulated_value = vector.scan <maxf>, %206, %154 {inclusive = false, reduction_dim = 1 : i64} : vector<15x8xf32>, vector<15xf32>
        %288 = vector.broadcast %c494598180_i64 : i64 to vector<3x3xi64>
        scf.yield %288 : vector<3x3xi64>
      }
      case 2 {
        %274 = arith.ori %c494598180_i64, %c494598180_i64 : i64
        %275 = arith.ori %c1513705051_i32, %c1513705051_i32 : i32
        %276 = math.cttz %c541138043_i64 : i64
        %277 = math.roundeven %cst_32 : f16
        %278 = arith.minsi %false_21, %true_26 : i1
        %279 = arith.cmpi eq, %false_21, %true_31 : i1
        %280 = arith.minf %cst_32, %cst_32 : f16
        %281 = index.maxs %122, %c11
        %282 = index.add %65, %c9
        %283 = index.casts %false_21 : i1 to index
        %284 = bufferization.to_memref %expanded : memref<3x3x1xi16>
        %285 = math.fpowi %15, %28 : tensor<3x3xf16>, tensor<3x3xi32>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %165, %129, %true_31 : vector<10xi1>, vector<10xi1> into i1
        %287 = index.sizeof
        vector.print %206 : vector<15x8xf32>
        %288 = memref.load %alloc_6[%c7, %c0] : memref<15x8xi1>
        %289 = vector.broadcast %c1749512412_i64 : i64 to vector<3x3xi64>
        scf.yield %289 : vector<3x3xi64>
      }
      case 3 {
        %274 = vector.broadcast %false : i1 to vector<8xi1>
        %275 = vector.maskedload %alloc_15[%c5], %274, %19 : memref<10xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %276 = memref.load %232[%c1] : memref<15xi1>
        %277 = arith.divsi %c1237412335_i32, %c1570006231_i32 : i32
        %278 = bufferization.to_memref %15 : memref<3x3xf16>
        %279 = index.mul %204, %62
        %280 = index.floordivs %122, %215
        %281 = index.ceildivs %169, %255
        %282 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %283 = vector.fma %282, %282, %282 : vector<3x3xf32>
        %284 = math.copysign %cst_32, %extracted : f16
        %285 = index.add %72, %169
        memref.copy %alloc_2, %alloc_18 : memref<10xi1> to memref<10xi1>
        %286 = arith.shrsi %c-4321_i16, %168 : i16
        %287 = bufferization.clone %alloc_9 : memref<3x3xi16> to memref<3x3xi16>
        %288 = vector.shuffle %234, %130 [1, 2, 3, 4, 5, 6, 7, 12, 13, 15, 17] : vector<10xi1>, vector<10xi1>
        %289 = memref.atomic_rmw maxf %cst_32, %278[%c1, %c1] : (f16, memref<3x3xf16>) -> f16
        %290 = arith.shrsi %c-4321_i16, %168 : i16
        %291 = vector.broadcast %c0_i64 : i64 to vector<3x3xi64>
        scf.yield %291 : vector<3x3xi64>
      }
      default {
        %274 = arith.floordivsi %c541138043_i64, %c494598180_i64 : i64
        %275 = math.tanh %2 : tensor<15x8xf32>
        %alloca = memref.alloca() : memref<3x3xi32>
        %276 = vector.extract_strided_slice %195 {offsets = [4], sizes = [4], strides = [1]} : vector<10xi1> to vector<4xi1>
        %277 = arith.addi %c1237412335_i32, %c69732229_i32 : i32
        %278 = vector.broadcast %false_24 : i1 to vector<8xi1>
        %dest, %accumulated_value = vector.scan <xor>, %216, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<15x8xi1>, vector<8xi1>
        %rank_43 = tensor.rank %splat : tensor<15x8xf16>
        %inserted_44 = tensor.insert %cst into %8[%c8] : tensor<10xf32>
        %279 = math.tanh %15 : tensor<3x3xf16>
        %c-752_i16 = arith.constant -752 : i16
        %280 = math.absi %c1570006231_i32 : i32
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %207, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<15x8xf32>, vector<8xf32>
        %cst_47 = arith.constant 1.000000e+00 : f16
        %281 = vector.transfer_read %4[%210], %cst_47 : tensor<10xf16>, vector<f16>
        %282 = math.ctlz %7 : tensor<15xi1>
        %283 = vector.maskedload %alloc_17[], %239, %154 : memref<f32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %284 = index.add %c1, %252
        %285 = vector.broadcast %c541138043_i64 : i64 to vector<3x3xi64>
        scf.yield %285 : vector<3x3xi64>
      }
      %true_40 = arith.constant true
      %splat_41 = tensor.splat %c-4321_i16 : tensor<15xi16>
      %273 = bufferization.to_tensor %alloc : memref<10xf32>
      %alloc_42 = memref.alloc() : memref<15x8xf16>
      affine.yield %alloc_42 : memref<15x8xf16>
    }
    memref.copy %177, %alloc_6 : memref<15x8xi1> to memref<15x8xi1>
    %259 = vector.insertelement %true_0, %165[%127 : index] : vector<10xi1>
    bufferization.dealloc_tensor %10 : tensor<10xi1>
    %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_29 : tensor<3x3x1xi32>) {
    ^bb0(%out: i32):
      %269 = math.tanh %212 : tensor<15x8xf32>
      %270 = arith.ori %false_21, %false_21 : i1
      %271 = arith.floordivsi %c1749512412_i64, %c494598180_i64 : i64
      %272 = index.maxs %c6, %127
      %273 = vector.reduction <minui>, %130 : vector<10xi1> into i1
      %274 = arith.minsi %c1749512412_i64, %c541138043_i64 : i64
      %275 = arith.cmpi sgt, %false_24, %false_24 : i1
      %276 = arith.shrui %c494598180_i64, %c541138043_i64 : i64
      %277 = index.sub %rank, %35
      %extracted_39 = tensor.extract %16[%c0, %c0] : tensor<3x3xi32>
      bufferization.dealloc_tensor %21 : tensor<i1>
      %278 = math.fma %2, %2, %197 : tensor<15x8xf32>
      %279 = math.log10 %cst_1 : f16
      %280 = tensor.empty() : tensor<3x3xf16>
      %mapped_40 = linalg.map ins(%15 : tensor<3x3xf16>) outs(%280 : tensor<3x3xf16>)
        (%in: f16) {
          %298 = index.maxs %222, %204
          %299 = memref.load %alloc[%c8] : memref<10xf32>
          %300 = math.tan %splat : tensor<15x8xf16>
          %301 = index.mul %121, %72
          %302 = bufferization.clone %alloc : memref<10xf32> to memref<10xf32>
          %303 = arith.minsi %true_31, %true_26 : i1
          %304 = vector.multi_reduction <maxui>, %200, %165 [] : vector<10xi1> to vector<10xi1>
          %305 = affine.apply affine_map<(d0) -> ((d0 * 4) mod 128)>(%c8)
          affine.store %c1051325167_i32, %52[%c9, %c13] : memref<15x8xi32>
          %306 = math.rsqrt %280 : tensor<3x3xf16>
          %307 = index.sub %235, %167
          %308 = arith.ceildivsi %out, %c1_i32 : i32
          %309 = index.maxu %71, %c8
          %310 = arith.minsi %c0_i64, %c1749512412_i64 : i64
          %311 = bufferization.to_memref %2 : memref<15x8xf32>
          %312 = index.sub %c7, %c2
          %alloc_41 = memref.alloc() : memref<15x8xf16>
          memref.tensor_store %splat, %alloc_41 : memref<15x8xf16>
          %313 = affine.apply affine_map<(d0, d1) -> (d0)>(%215, %121)
          %splat_42 = tensor.splat %c494598180_i64 : tensor<10xi64>
          %314 = math.rsqrt %4 : tensor<10xf16>
          %315 = bufferization.to_memref %15 : memref<3x3xf16>
          %316 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 64) ceildiv 16 + 32)>(%199, %84)
          %317 = memref.realloc %alloc_2 : memref<10xi1> to memref<15xi1>
          %318 = vector.broadcast %cst : f32 to vector<10x10xf32>
          %319 = vector.outerproduct %231, %230, %318 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
          %splat_43 = tensor.splat %208 : tensor<15xi1>
          %320 = arith.ori %c494598180_i64, %c1329909866_i64 : i64
          %321 = index.castu %c0_i64 : i64 to index
          %322 = vector.create_mask %255, %c14 : vector<3x3xi1>
          %323 = math.tanh %2 : tensor<15x8xf32>
          %324 = math.copysign %5, %14 : tensor<15xf32>
          %325 = math.absi %c69732229_i32 : i32
          %326 = index.add %248, %235
          %cst_44 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_44 : f16
        }
      %281 = arith.maxsi %c1570006231_i32, %extracted_39 : i32
      %282 = math.tanh %2 : tensor<15x8xf32>
      %283 = vector.insert %cst, %154 [6] : f32 into vector<15xf32>
      %284 = memref.atomic_rmw addf %cst_1, %alloc_7[%c6] : (f16, memref<15xf16>) -> f16
      %285 = vector.create_mask %161 : vector<15xi1>
      %286 = math.ctlz %c1237412335_i32 : i32
      %287 = math.floor %cst : f32
      %288 = index.casts %c1329909866_i64 : i64 to index
      %289 = math.roundeven %14 : tensor<15xf32>
      %290 = scf.if %true_31 -> (f32) {
        %298 = memref.realloc %alloc_5 : memref<15xf16> to memref<10xf16>
        %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %239, %239, %false_21 : vector<15xi1>, vector<15xi1> into i1
        %false_41 = index.bool.constant false
        %300 = arith.muli %c-4321_i16, %c-4321_i16 : i16
        %301 = arith.floordivsi %c1237412335_i32, %extracted_39 : i32
        %302 = arith.remf %cst, %cst : f32
        %303 = vector.maskedload %alloc_13[%c2, %c1], %59, %117 : memref<3x3xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %304 = math.fpowi %15, %91 : tensor<3x3xf16>, tensor<3x3xi32>
        scf.yield %cst : f32
      } else {
        %298 = arith.remf %cst, %cst : f32
        %inserted_41 = tensor.insert %cst into %14[%c12] : tensor<15xf32>
        %299 = memref.atomic_rmw addf %cst, %alloc_15[%c6] : (f32, memref<10xf32>) -> f32
        %300 = index.sub %161, %131
        %301 = vector.splat %false : vector<15xi1>
        affine.store %c0_i64, %32[%c12, %c10] : memref<15x8xi64>
        %302 = arith.shrui %c541138043_i64, %c1329909866_i64 : i64
        %303 = math.tan %cst_32 : f16
        scf.yield %cst : f32
      }
      %291 = index.floordivs %248, %215
      %292 = arith.addi %c1_i32, %c1_i32 : i32
      %293 = index.ceildivu %103, %c9
      %294 = arith.divsi %true_0, %153 : i1
      %295 = index.castu %c1513705051_i32 : i32 to index
      %296 = memref.atomic_rmw addi %c-4321_i16, %alloc_11[%c1, %c0] : (i16, memref<3x3xi16>) -> i16
      %297 = arith.cmpi sle, %true_26, %153 : i1
      memref.assume_alignment %alloc_6, 16 : memref<15x8xi1>
      linalg.yield %c69732229_i32 : i32
    } -> tensor<3x3x1xi32>
    %261 = arith.muli %true_26, %true_0 : i1
    %262 = bufferization.to_memref %16 : memref<3x3xi32>
    %263 = math.tan %cst : f32
    %264 = math.ctlz %13 : tensor<3x3xi64>
    %265 = tensor.empty() : tensor<10xf16>
    %266 = linalg.copy ins(%4 : tensor<10xf16>) outs(%265 : tensor<10xf16>) -> tensor<10xf16>
    %267 = tensor.empty() : tensor<3x3xf16>
    %transposed_37 = linalg.transpose ins(%15 : tensor<3x3xf16>) outs(%267 : tensor<3x3xf16>) permutation = [1, 0] 
    %alloc_38 = memref.alloc() : memref<f32>
    linalg.reduce ins(%14 : tensor<15xf32>) outs(%alloc_38 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %269 = arith.minsi %c1237412335_i32, %c1513705051_i32 : i32
        %alloc_39 = memref.alloc() : memref<8x3xi64>
        %270 = tensor.empty() : tensor<15x3xi64>
        %271 = linalg.matmul ins(%1, %alloc_39 : tensor<15x8xi64>, memref<8x3xi64>) outs(%270 : tensor<15x3xi64>) -> tensor<15x3xi64>
        %272 = memref.realloc %116 : memref<15xi1> to memref<10xi1>
        %from_elements = tensor.from_elements %false_24, %false, %208, %153, %true_31, %false_21, %true_26, %true_26, %153, %false_24 : tensor<10xi1>
        %273 = arith.negf %init : f32
        %274 = math.tanh %14 : tensor<15xf32>
        %275 = math.fpowi %cst_1, %c1237412335_i32 : f16, i32
        %276 = index.ceildivs %43, %72
        %cst_40 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_40 : f32
      }
    scf.parallel (%arg3) = (%199) to (%131) step (%c13) {
      %269 = arith.remf %extracted, %cst_1 : f16
      %270 = arith.divf %cst, %cst : f32
      %271 = arith.minui %true_31, %false_24 : i1
      vector.print %130 : vector<10xi1>
      %272 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %273 = vector.fma %272, %272, %272 : vector<3x3xf32>
      %274 = math.log %8 : tensor<10xf32>
      %275 = math.roundeven %8 : tensor<10xf32>
      %276 = arith.ceildivsi %c1329909866_i64, %c0_i64 : i64
      %277 = math.tanh %4 : tensor<10xf16>
      %278 = math.round %14 : tensor<15xf32>
      %279 = index.castu %115 : index to i32
      %280 = math.round %266 : tensor<10xf16>
      bufferization.dealloc_tensor %12 : tensor<15x8xi1>
      %281 = arith.divsi %c494598180_i64, %c541138043_i64 : i64
      %282 = math.ctlz %28 : tensor<3x3xi32>
      %283 = scf.index_switch %122 -> index 
      case 1 {
        %284 = math.round %8 : tensor<10xf32>
        %285 = math.fpowi %2, %245 : tensor<15x8xf32>, tensor<15x8xi32>
        %286 = vector.maskedload %alloc_18[%c9], %234, %200 : memref<10xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %287 = bufferization.to_tensor %262 : memref<3x3xi32>
        %288 = math.ceil %2 : tensor<15x8xf32>
        %289 = vector.extract %273[0] : vector<3x3xf32>
        memref.assume_alignment %alloc_12, 4 : memref<10xi32>
        affine.store %c1_i32, %alloc_14[%c15, %c5] : memref<15x8xi32>
        %290 = arith.cmpi ugt, %c1329909866_i64, %c1749512412_i64 : i64
        %291 = arith.minsi %c1_i32_22, %c69732229_i32 : i32
        %292 = arith.maxsi %c69732229_i32, %c1_i32_22 : i32
        %293 = index.castu %c1329909866_i64 : i64 to index
        %294 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %295 = vector.broadcast %true_26 : i1 to vector<8xi1>
        %296 = vector.maskedload %alloc_8[%c0, %c2], %295, %294 : memref<3x3xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %297 = arith.floordivsi %c1_i32, %c69732229_i32 : i32
        %298 = vector.broadcast %c1237412335_i32 : i32 to vector<10xi32>
        %299 = vector.gather %alloc_13[%131, %46] [%298], %234, %234 : memref<3x3xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %300 = arith.remf %cst_1, %extracted : f16
        scf.yield %c5 : index
      }
      case 2 {
        %284 = arith.divsi %c1570006231_i32, %c1_i32_22 : i32
        %285 = vector.create_mask %c7 : vector<10xi1>
        %286 = math.tanh %197 : tensor<15x8xf32>
        %287 = math.log1p %extracted : f16
        %288 = vector.create_mask %209, %78 : vector<3x3xi1>
        %289 = vector.multi_reduction <or>, %195, %true [0] : vector<10xi1> to i1
        %290 = math.exp %transposed_37 : tensor<3x3xf16>
        %291 = index.mul %c0, %210
        %292 = arith.negf %cst : f32
        %293 = index.castu %c1513705051_i32 : i32 to index
        %294 = vector.broadcast %168 : i16 to vector<10xi16>
        %295 = vector.maskedload %alloc_9[%c0, %c0], %285, %294 : memref<3x3xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %dest, %accumulated_value = vector.scan <minf>, %206, %154 {inclusive = true, reduction_dim = 1 : i64} : vector<15x8xf32>, vector<15xf32>
        %296 = math.fma %extracted, %extracted, %cst_1 : f16
        %splat_39 = tensor.splat %c1749512412_i64 : tensor<10xi64>
        %297 = math.ipowi %c1329909866_i64, %c0_i64 : i64
        %298 = arith.mulf %cst, %cst : f32
        scf.yield %255 : index
      }
      case 3 {
        %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * -64)>(%c7, %65, %248, %72)
        %285 = math.tanh %cst_1 : f16
        %286 = arith.cmpf ogt, %cst, %cst : f32
        %287 = vector.insertelement %true, %59[%235 : index] : vector<3xi1>
        %288 = arith.mulf %cst_1, %extracted : f16
        %289 = vector.insert %true_31, %129 [7] : i1 into vector<10xi1>
        affine.store %c1513705051_i32, %52[%c8, %c11] : memref<15x8xi32>
        %290 = arith.floordivsi %168, %168 : i16
        %291 = arith.mulf %cst_32, %extracted : f16
        %292 = arith.addi %c1237412335_i32, %c1051325167_i32 : i32
        %293 = math.atan2 %14, %5 : tensor<15xf32>
        %294 = index.ceildivu %78, %215
        %295 = index.mul %248, %46
        %296 = math.roundeven %splat : tensor<15x8xf16>
        %297 = arith.muli %c541138043_i64, %c541138043_i64 : i64
        %298 = vector.extract %216[1] : vector<15x8xi1>
        scf.yield %46 : index
      }
      default {
        %284 = arith.floordivsi %false, %false_21 : i1
        %285 = index.maxu %222, %235
        %286 = vector.multi_reduction <or>, %129, %true_26 [0] : vector<10xi1> to i1
        affine.store %cst_32, %alloc_7[%c4] : memref<15xf16>
        %287 = index.mul %c4, %255
        %288 = math.tanh %5 : tensor<15xf32>
        %289 = arith.ceildivsi %c1513705051_i32, %c1_i32_22 : i32
        %290 = index.ceildivu %54, %210
        %291 = vector.broadcast %168 : i16 to vector<15x8xi16>
        bufferization.dealloc_tensor %8 : tensor<10xf32>
        %292 = bufferization.to_tensor %alloc_17 : memref<f32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %207, %154, %19 : vector<15x8xf32>, vector<15xf32> into vector<8xf32>
        %294 = index.divs %51, %c7
        %295 = arith.floordivsi %c0_i64, %c1749512412_i64 : i64
        %alloca = memref.alloca() : memref<15x8xf16>
        %296 = vector.matrix_multiply %230, %154 {lhs_columns = 5 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<10xf32>, vector<15xf32>) -> vector<6xf32>
        scf.yield %43 : index
      }
      scf.yield
    }
    %268 = affine.vector_load %alloc_38[] : memref<f32>, vector<10xf32>
    affine.vector_store %200, %alloc_18[%c5] : memref<10xi1>, vector<10xi1>
    vector.print %19 : vector<8xf32>
    vector.print %22 : vector<i32>
    vector.print %58 : vector<3xi1>
    vector.print %59 : vector<3xi1>
    vector.print %117 : vector<3xi1>
    vector.print %129 : vector<10xi1>
    vector.print %130 : vector<10xi1>
    vector.print %152 : vector<3x3xi1>
    vector.print %154 : vector<15xf32>
    vector.print %165 : vector<10xi1>
    vector.print %195 : vector<10xi1>
    vector.print %200 : vector<10xi1>
    vector.print %206 : vector<15x8xf32>
    vector.print %207 : vector<15x8xf32>
    vector.print %216 : vector<15x8xi1>
    vector.print %230 : vector<10xf32>
    vector.print %231 : vector<10xf32>
    vector.print %234 : vector<10xi1>
    vector.print %238 : vector<15xi16>
    vector.print %239 : vector<15xi1>
    vector.print %240 : vector<15xi16>
    vector.print %268 : vector<10xf32>
    vector.print %c-4321_i16 : i16
    vector.print %c1749512412_i64 : i64
    vector.print %c20035_i16 : i16
    vector.print %c1329909866_i64 : i64
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %c1051325167_i32 : i32
    vector.print %c1570006231_i32 : i32
    vector.print %c69732229_i32 : i32
    vector.print %true_0 : i1
    vector.print %cst_1 : f16
    vector.print %c541138043_i64 : i64
    vector.print %false : i1
    vector.print %c494598180_i64 : i64
    vector.print %c1237412335_i32 : i32
    vector.print %c1513705051_i32 : i32
    vector.print %false_21 : i1
    vector.print %c1_i32 : i32
    vector.print %c1_i32_22 : i32
    vector.print %c0_i64 : i64
    vector.print %153 : i1
    vector.print %false_24 : i1
    vector.print %168 : i16
    vector.print %extracted : f16
    vector.print %true_26 : i1
    vector.print %208 : i1
    vector.print %true_31 : i1
    vector.print %cst_32 : f16
    return
  }
}
