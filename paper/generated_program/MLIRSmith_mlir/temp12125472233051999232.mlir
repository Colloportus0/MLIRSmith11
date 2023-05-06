module {
  func.func @func1(%arg0: tensor<4xi64>, %arg1: vector<12x7x4xf16>) -> memref<4xi16> {
    %cst = arith.constant 9.650000e+02 : f16
    %cst_0 = arith.constant 1.234000e+03 : f16
    %true = arith.constant true
    %c2083202933_i32 = arith.constant 2083202933 : i32
    %c325626252_i32 = arith.constant 325626252 : i32
    %c266860443_i64 = arith.constant 266860443 : i64
    %cst_1 = arith.constant 5.862400e+04 : f16
    %cst_2 = arith.constant 4.054400e+04 : f16
    %cst_3 = arith.constant 5.640160e+08 : f32
    %c647584757_i32 = arith.constant 647584757 : i32
    %c-14955_i16 = arith.constant -14955 : i16
    %cst_4 = arith.constant 0x4E3FB4D4 : f32
    %cst_5 = arith.constant 3.033600e+04 : f16
    %true_6 = arith.constant true
    %c1477813002_i32 = arith.constant 1477813002 : i32
    %cst_7 = arith.constant 4.230400e+04 : f16
    %0 = tensor.empty() : tensor<12x4xi64>
    %1 = tensor.empty() : tensor<2x12x2xf32>
    %2 = tensor.empty() : tensor<12x7x4xi16>
    %3 = tensor.empty() : tensor<12x4xi16>
    %4 = tensor.empty() : tensor<12x7x4xi64>
    %5 = tensor.empty() : tensor<4xf32>
    %6 = tensor.empty() : tensor<4xi16>
    %7 = tensor.empty() : tensor<2x12x2xf32>
    %8 = tensor.empty() : tensor<2x12x2xi16>
    %9 = tensor.empty() : tensor<12x4xf32>
    %10 = tensor.empty() : tensor<12x7x4xf32>
    %11 = tensor.empty() : tensor<4xi64>
    %12 = tensor.empty() : tensor<4xi64>
    %13 = tensor.empty() : tensor<12x7x4xi16>
    %14 = tensor.empty() : tensor<12x7x4xi16>
    %15 = tensor.empty() : tensor<12x7x4xf16>
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
    %alloc = memref.alloc() : memref<2x12x2xi32>
    %alloc_8 = memref.alloc() : memref<12x7x4xi64>
    %alloc_9 = memref.alloc() : memref<12x4xf32>
    %alloc_10 = memref.alloc() : memref<2x12x2xf32>
    %alloc_11 = memref.alloc() : memref<12x4xi16>
    %alloc_12 = memref.alloc() : memref<12x4xi64>
    %alloc_13 = memref.alloc() : memref<12x7x4xf16>
    %alloc_14 = memref.alloc() : memref<4xi1>
    %alloc_15 = memref.alloc() : memref<2x12x2xi1>
    %alloc_16 = memref.alloc() : memref<2x12x2xi16>
    %alloc_17 = memref.alloc() : memref<12x4xf32>
    %alloc_18 = memref.alloc() : memref<12x7x4xi64>
    %alloc_19 = memref.alloc() : memref<12x4xi32>
    %alloc_20 = memref.alloc() : memref<12x4xi64>
    %alloc_21 = memref.alloc() : memref<12x4xi16>
    %alloc_22 = memref.alloc() : memref<2x12x2xi16>
    %16 = tensor.empty() : tensor<12x7x4xf32>
    %17 = linalg.copy ins(%10 : tensor<12x7x4xf32>) outs(%16 : tensor<12x7x4xf32>) -> tensor<12x7x4xf32>
    %alloc_23 = memref.alloc() : memref<4x12x7xf32>
    linalg.transpose ins(%10 : tensor<12x7x4xf32>) outs(%alloc_23 : memref<4x12x7xf32>) permutation = [2, 0, 1] 
    %alloc_24 = memref.alloc() : memref<12x4xi64>
    linalg.reduce ins(%4 : tensor<12x7x4xi64>) outs(%alloc_24 : memref<12x4xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %258 = arith.shli %c1477813002_i32, %c1477813002_i32 : i32
        %259 = math.log2 %9 : tensor<12x4xf32>
        %260 = arith.addf %cst_3, %cst_4 : f32
        %261 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        %262 = vector.insert %cst_7, %261 [0] : f16 into vector<1xf16>
        %263 = arith.shrsi %c-14955_i16, %c-14955_i16 : i16
        %264 = arith.shrsi %c325626252_i32, %c647584757_i32 : i32
        %265 = vector.create_mask %c4, %c15, %c2 : vector<12x7x4xi1>
        %266 = scf.while (%arg2 = %true_6) : (i1) -> i1 {
          %267 = affine.max affine_map<(d0) -> (d0 mod 2)>(%c4)
          %268 = math.tanh %15 : tensor<12x7x4xf16>
          %alloc_53 = memref.alloc() : memref<4xi1>
          memref.copy %alloc_14, %alloc_53 : memref<4xi1> to memref<4xi1>
          %269 = bufferization.clone %alloc_16 : memref<2x12x2xi16> to memref<2x12x2xi16>
          %270 = vector.broadcast %true : i1 to vector<7x4x7x4xi1>
          %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %265, %265, %270 : vector<12x7x4xi1>, vector<12x7x4xi1> into vector<7x4x7x4xi1>
          %272 = vector.multi_reduction <mul>, %261, %cst [0] : vector<1xf16> to f16
          %273 = arith.cmpf ult, %cst_0, %cst_7 : f16
          %274 = index.maxs %267, %c3
          scf.condition(%arg2) %arg2 : i1
        } do {
        ^bb0(%arg2: i1):
          %267 = index.sub %c6, %c13
          %268 = math.log %cst_7 : f16
          %269 = index.sub %c2, %c9
          %270 = vector.broadcast %cst_7 : f16 to vector<1x1xf16>
          %271 = vector.outerproduct %261, %261, %270 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
          %272 = arith.minsi %true_6, %arg2 : i1
          %273 = bufferization.clone %alloc : memref<2x12x2xi32> to memref<2x12x2xi32>
          memref.assume_alignment %alloc_13, 2 : memref<12x7x4xf16>
          memref.store %cst_3, %alloc_17[%c2, %c1] : memref<12x4xf32>
          %274 = vector.broadcast %arg2 : i1 to vector<7x4xi1>
          %275 = vector.insert %274, %265 [8] : vector<7x4xi1> into vector<12x7x4xi1>
          %276 = math.expm1 %cst_3 : f32
          %277 = index.castu %true : i1 to index
          %278 = math.round %1 : tensor<2x12x2xf32>
          %279 = index.ceildivs %c2, %c14
          %280 = math.ctlz %2 : tensor<12x7x4xi16>
          %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d0 floordiv 32, d1)>(%c1, %c11, %c13, %c14)
          %282 = math.tan %cst_3 : f32
          scf.yield %true_6 : i1
        }
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg2, %arg3) = (%c2, %c5) to (%c5, %c3) step (%c10, %c12) {
      %alloc_53 = memref.alloc() : memref<12xi64>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53 : memref<12xi64>) outs(%4 : tensor<12x7x4xi64>) {
      ^bb0(%in: i64, %out: i64):
        %273 = vector.broadcast %c1477813002_i32 : i32 to vector<2xi32>
        %274 = vector.broadcast %true_6 : i1 to vector<2xi1>
        %275 = vector.maskedload %alloc_19[%c7, %c1], %274, %273 : memref<12x4xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %276 = index.maxs %c13, %c6
        %277 = vector.broadcast %cst : f16 to vector<4xf16>
        %278 = arith.maxui %out, %c266860443_i64 : i64
        %279 = index.ceildivu %c3, %c3
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_58 = arith.constant 0 : i16
        %280 = vector.transfer_read %2[%arg3, %c6, %c12], %c0_i16_58 : tensor<12x7x4xi16>, vector<i16>
        %true_59 = arith.constant true
        %281 = math.absi %6 : tensor<4xi16>
        %282 = arith.divsi %c325626252_i32, %c2083202933_i32 : i32
        %splat_60 = tensor.splat %cst_4 : tensor<12x7x4xf32>
        %283 = index.add %c14, %279
        %284 = math.powf %16, %splat_60 : tensor<12x7x4xf32>
        affine.store %cst_3, %alloc_9[%c15, %c5] : memref<12x4xf32>
        %285 = vector.create_mask %c13, %c15, %c2 : vector<12x7x4xi1>
        %286 = arith.cmpf ult, %cst_7, %cst_0 : f16
        %287 = index.castu %c10 : index to i32
        %288 = affine.min affine_map<(d0, d1) -> (d1 * 32)>(%c5, %c5)
        %289 = math.absi %2 : tensor<12x7x4xi16>
        %collapsed_61 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<12x7x4xi16> into tensor<84x4xi16>
        %290 = arith.minui %c1477813002_i32, %c325626252_i32 : i32
        %collapsed_62 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x4xi64> into tensor<84x4xi64>
        %291 = math.ceil %9 : tensor<12x4xf32>
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %274, %274, %true_6 : vector<2xi1>, vector<2xi1> into i1
        %293 = index.ceildivs %c14, %288
        %294 = vector.broadcast %cst : f16 to vector<4xf16>
        %295 = arith.andi %c325626252_i32, %c647584757_i32 : i32
        %296 = vector.broadcast %c266860443_i64 : i64 to vector<4xi64>
        %297 = vector.broadcast %true : i1 to vector<4xi1>
        %298 = vector.maskedload %alloc_8[%c10, %c6, %c2], %297, %296 : memref<12x7x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %299 = vector.multi_reduction <add>, %273, %273 [] : vector<2xi32> to vector<2xi32>
        %300 = index.sub %283, %c2
        %extracted_63 = tensor.extract %3[%c8, %c2] : tensor<12x4xi16>
        %301 = arith.shrsi %true, %true : i1
        %302 = vector.broadcast %arg2 : index to vector<7xindex>
        %303 = vector.broadcast %true_6 : i1 to vector<7xi1>
        %304 = vector.broadcast %cst_5 : f16 to vector<7xf16>
        vector.scatter %alloc_13[%c8, %c2, %c0] [%302], %303, %304 : memref<12x7x4xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        linalg.yield %out : i64
      } -> tensor<12x7x4xi64>
      memref.assume_alignment %alloc_10, 2 : memref<2x12x2xf32>
      %259 = arith.minsi %c2083202933_i32, %c647584757_i32 : i32
      %260 = arith.divsi %c266860443_i64, %c266860443_i64 : i64
      %261 = index.ceildivs %c12, %arg3
      %262 = affine.apply affine_map<(d0) -> ((d0 - 32) ceildiv 4 + 1)>(%c6)
      %263 = math.powf %15, %15 : tensor<12x7x4xf16>
      %alloc_54 = memref.alloc() : memref<12x4xi32>
      %generated_55 = tensor.generate %c12, %c15 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        %273 = index.castu %c2083202933_i32 : i32 to index
        %274 = math.tan %cst_4 : f32
        %275 = arith.addf %cst_3, %cst_4 : f32
        %276 = math.atan2 %15, %15 : tensor<12x7x4xf16>
        tensor.yield %c-14955_i16 : i16
      } : tensor<?x?x4xi16>
      %alloc_56 = memref.alloc() : memref<4x7xi16>
      %264 = tensor.empty() : tensor<12x7xi16>
      %265 = linalg.matmul ins(%3, %alloc_56 : tensor<12x4xi16>, memref<4x7xi16>) outs(%264 : tensor<12x7xi16>) -> tensor<12x7xi16>
      %splat_57 = tensor.splat %c647584757_i32 : tensor<12x7x4xi32>
      %266 = math.log %7 : tensor<2x12x2xf32>
      %267 = arith.divsi %c266860443_i64, %c266860443_i64 : i64
      %268 = vector.broadcast %c647584757_i32 : i32 to vector<2xi32>
      %269 = vector.broadcast %true_6 : i1 to vector<2xi1>
      %270 = vector.maskedload %alloc_19[%c7, %c1], %269, %268 : memref<12x4xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
      %271 = math.sqrt %17 : tensor<12x7x4xf32>
      %272 = math.log2 %cst_1 : f16
      scf.yield
    }
    %18 = affine.vector_load %alloc_15[%c11, %c15, %c5] : memref<2x12x2xi1>, vector<4xi1>
    affine.vector_store %18, %alloc_15[%c14, %c2, %c1] : memref<2x12x2xi1>, vector<4xi1>
    %alloc_25 = memref.alloc() : memref<4xf32>
    %19 = tensor.empty() : tensor<f32>
    %20 = linalg.dot ins(%5, %alloc_25 : tensor<4xf32>, memref<4xf32>) outs(%19 : tensor<f32>) -> tensor<f32>
    %21 = vector.broadcast %cst_3 : f32 to vector<12x4xf32>
    %22 = vector.broadcast %c266860443_i64 : i64 to vector<12xi64>
    %23 = vector.broadcast %true : i1 to vector<12xi1>
    %24 = vector.maskedload %alloc_24[%c5, %c0], %23, %22 : memref<12x4xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
    %25 = vector.broadcast %c266860443_i64 : i64 to vector<2xi64>
    %26 = vector.broadcast %true : i1 to vector<2xi1>
    %27 = vector.maskedload %alloc_20[%c3, %c1], %26, %25 : memref<12x4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %28 = arith.minsi %c325626252_i32, %c325626252_i32 : i32
    %29 = math.copysign %19, %19 : tensor<f32>
    %30 = arith.addf %cst_5, %cst_2 : f16
    %31 = index.divu %c12, %c7
    %32 = memref.atomic_rmw maxs %c-14955_i16, %alloc_21[%c5, %c1] : (i16, memref<12x4xi16>) -> i16
    %generated = tensor.generate %c3 {
    ^bb0(%arg2: index, %arg3: index):
      %258 = index.sub %c4, %c2
      %259 = index.castu %c2083202933_i32 : i32 to index
      %260 = math.log1p %cst_1 : f16
      %261 = index.sizeof
      tensor.yield %c266860443_i64 : i64
    } : tensor<?x4xi64>
    %33 = index.castu %c647584757_i32 : i32 to index
    %34 = tensor.empty() : tensor<12x7x4xi64>
    %mapped = linalg.map ins(%alloc_8, %alloc_18, %4 : memref<12x7x4xi64>, memref<12x7x4xi64>, tensor<12x7x4xi64>) outs(%34 : tensor<12x7x4xi64>)
      (%in: i64, %in_53: i64, %in_54: i64) {
        %258 = vector.extract_strided_slice %18 {offsets = [0], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
        %259 = bufferization.to_memref %13 : memref<12x7x4xi16>
        %260 = memref.atomic_rmw addi %c266860443_i64, %alloc_12[%c1, %c3] : (i64, memref<12x4xi64>) -> i64
        %261 = vector.reduction <xor>, %22 : vector<12xi64> into i64
        %262 = arith.maxui %c-14955_i16, %c-14955_i16 : i16
        %263 = math.cttz %c325626252_i32 : i32
        %collapsed_55 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<12x7x4xf16> into tensor<84x4xf16>
        %264 = arith.negf %cst_0 : f16
        %265 = vector.broadcast %cst_0 : f16 to vector<12x4xf16>
        %rank_56 = tensor.rank %11 : tensor<4xi64>
        %alloc_57 = memref.alloc() : memref<12x7x4xf16>
        memref.copy %alloc_13, %alloc_57 : memref<12x7x4xf16> to memref<12x7x4xf16>
        %266 = arith.remsi %c-14955_i16, %c-14955_i16 : i16
        %267 = affine.load %alloc_19[%c13, %c2] : memref<12x4xi32>
        %268 = vector.maskedload %alloc_24[%c2, %c3], %23, %22 : memref<12x4xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %269 = scf.if %true -> (memref<12x7x4xi64>) {
          %284 = arith.shli %267, %c2083202933_i32 : i32
          %285 = vector.reduction <maxsi>, %22 : vector<12xi64> into i64
          %286 = vector.broadcast %cst_4 : f32 to vector<7xf32>
          %287 = vector.broadcast %true_6 : i1 to vector<7xi1>
          %288 = vector.maskedload %alloc_23[%c0, %c3, %c0], %287, %286 : memref<4x12x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
          %289 = index.floordivs %c0, %c15
          %290 = arith.xori %in_53, %in : i64
          %291 = index.sub %c2, %c10
          %292 = math.log %cst_7 : f16
          %293 = math.powf %cst_2, %cst_2 : f16
          scf.yield %alloc_8 : memref<12x7x4xi64>
        } else {
          %284 = math.cttz %6 : tensor<4xi16>
          %285 = arith.cmpi slt, %in_54, %c266860443_i64 : i64
          %286 = math.powf %cst_7, %cst_1 : f16
          %287 = math.expm1 %20 : tensor<f32>
          %288 = vector.load %alloc_24[%c8, %c0] : memref<12x4xi64>, vector<4xi64>
          %289 = arith.ceildivsi %c325626252_i32, %c325626252_i32 : i32
          %290 = vector.create_mask %c7, %c15, %rank_56 : vector<2x12x2xi1>
          %291 = tensor.empty(%c1, %c0) : tensor<?x?xi64>
          scf.yield %alloc_18 : memref<12x7x4xi64>
        }
        %270 = math.expm1 %cst_3 : f32
        %c3832_i16 = arith.constant 3832 : i16
        %cast_58 = tensor.cast %9 : tensor<12x4xf32> to tensor<?x?xf32>
        %271 = memref.atomic_rmw muli %c-14955_i16, %alloc_16[%c1, %c6, %c1] : (i16, memref<2x12x2xi16>) -> i16
        %272 = math.log10 %1 : tensor<2x12x2xf32>
        %273 = index.maxs %33, %c2
        %274 = math.log2 %15 : tensor<12x7x4xf16>
        %275 = vector.maskedload %alloc_14[%c0], %26, %26 : memref<4xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %276 = vector.insert %true_6, %258 [1] : i1 into vector<3xi1>
        %277 = arith.addf %cst_1, %cst : f16
        %278 = vector.extract %23[8] : vector<12xi1>
        %generated_59 = tensor.generate %c8 {
        ^bb0(%arg2: index, %arg3: index):
          %284 = bufferization.clone %259 : memref<12x7x4xi16> to memref<12x7x4xi16>
          %285 = index.add %c12, %c6
          %alloc_62 = memref.alloc() : memref<4xi1>
          memref.copy %alloc_14, %alloc_62 : memref<4xi1> to memref<4xi1>
          %286 = index.ceildivu %c5, %c0
          tensor.yield %cst_4 : f32
        } : tensor<?x4xf32>
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - d3, d3 - 4, d2 * 2)>(%c8, %c14, %c1, %c12)
        %extracted_60 = tensor.extract %12[%c1] : tensor<4xi64>
        %280 = vector.broadcast %c13 : index to vector<2xindex>
        %281 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        vector.scatter %alloc_25[%c2] [%280], %26, %281 : memref<4xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %282 = arith.cmpf true, %cst_7, %cst_5 : f16
        %283 = memref.atomic_rmw assign %cst_3, %alloc_23[%c1, %c6, %c0] : (f32, memref<4x12x7xf32>) -> f32
        %c0_i64_61 = arith.constant 0 : i64
        linalg.yield %c0_i64_61 : i64
      }
    %35 = arith.shrsi %true_6, %true : i1
    %36 = index.sizeof
    %37 = vector.broadcast %cst_4 : f32 to vector<12x7x4xf32>
    %38 = vector.fma %37, %37, %37 : vector<12x7x4xf32>
    %39 = arith.shli %true_6, %true_6 : i1
    vector.print %26 : vector<2xi1>
    %40 = arith.minui %c2083202933_i32, %c325626252_i32 : i32
    %41 = arith.xori %c2083202933_i32, %c647584757_i32 : i32
    %c1346907109_i64 = arith.constant 1346907109 : i64
    %42 = memref.realloc %alloc_14 : memref<4xi1> to memref<7xi1>
    %43 = vector.insert %c266860443_i64, %22 [10] : i64 into vector<12xi64>
    %expanded = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<12x7x4xf16> into tensor<12x7x4x1xf16>
    %44 = index.ceildivs %c1, %c2
    %45 = math.cttz %11 : tensor<4xi64>
    %46 = arith.minsi %c647584757_i32, %c2083202933_i32 : i32
    %splat = tensor.splat %cst_0 : tensor<2x12x2xf16>
    %47 = arith.ceildivsi %true, %true : i1
    %48 = tensor.empty() : tensor<12x7x4xf16>
    %mapped_26 = linalg.map ins(%15 : tensor<12x7x4xf16>) outs(%48 : tensor<12x7x4xf16>)
      (%in: f16) {
        %258 = index.casts %c1 : index to i32
        %259 = bufferization.clone %alloc_15 : memref<2x12x2xi1> to memref<2x12x2xi1>
        %260 = tensor.empty() : tensor<2x12x2xi1>
        %mapped_53 = linalg.map ins(%259, %alloc_15, %259 : memref<2x12x2xi1>, memref<2x12x2xi1>, memref<2x12x2xi1>) outs(%260 : tensor<2x12x2xi1>)
          (%in_57: i1, %in_58: i1, %in_59: i1) {
            %288 = bufferization.clone %alloc_24 : memref<12x4xi64> to memref<12x4xi64>
            %alloca_60 = memref.alloca() : memref<2x12x2xi16>
            %289 = index.sub %44, %31
            %290 = arith.minui %c647584757_i32, %c647584757_i32 : i32
            %extracted_61 = tensor.extract %10[%c7, %c0, %c3] : tensor<12x7x4xf32>
            %291 = arith.addf %cst_1, %cst_2 : f16
            %c1738734897_i64 = arith.constant 1738734897 : i64
            %292 = index.sizeof
            %293 = index.floordivs %33, %292
            %294 = index.sub %33, %c7
            %295 = index.ceildivs %c0, %c1
            %296 = math.sqrt %1 : tensor<2x12x2xf32>
            %297 = math.rsqrt %7 : tensor<2x12x2xf32>
            %298 = bufferization.clone %alloc_14 : memref<4xi1> to memref<4xi1>
            %299 = math.powf %48, %15 : tensor<12x7x4xf16>
            %300 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
            %301 = arith.shrsi %in_57, %in_57 : i1
            %302 = vector.insertelement %in_59, %18[%33 : index] : vector<4xi1>
            %303 = math.exp2 %cst_7 : f16
            %304 = vector.insertelement %in_59, %26[%c7 : index] : vector<2xi1>
            %305 = vector.load %alloc_10[%c0, %c1, %c0] : memref<2x12x2xf32>, vector<12x7x4xf32>
            %306 = arith.remui %true_6, %true : i1
            %307 = index.floordivs %c2, %c7
            %collapsed_62 = tensor.collapse_shape %9 [[0, 1]] : tensor<12x4xf32> into tensor<48xf32>
            %308 = math.ipowi %11, %11 : tensor<4xi64>
            %309 = index.maxs %c15, %c13
            %310 = tensor.empty(%c14, %c2, %44) : tensor<?x?x?xi64>
            bufferization.dealloc_tensor %17 : tensor<12x7x4xf32>
            %311 = math.absi %14 : tensor<12x7x4xi16>
            %312 = index.castu %c325626252_i32 : i32 to index
            %collapsed_63 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<12x7x4xf32> into tensor<84x4xf32>
            %313 = math.tan %17 : tensor<12x7x4xf32>
            %false_64 = arith.constant false
            linalg.yield %false_64 : i1
          }
        %261 = index.casts %31 : index to i32
        %262 = vector.matrix_multiply %18, %26 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<2xi1>) -> vector<2xi1>
        %263 = math.sqrt %48 : tensor<12x7x4xf16>
        %264 = math.sqrt %7 : tensor<2x12x2xf32>
        %265 = arith.shli %c1477813002_i32, %c647584757_i32 : i32
        %266 = vector.matrix_multiply %22, %24 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
        %267 = vector.broadcast %c14 : index to vector<12xindex>
        %268 = vector.broadcast %cst_3 : f32 to vector<12xf32>
        vector.scatter %alloc_10[%c1, %c4, %c0] [%267], %23, %268 : memref<2x12x2xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
        %269 = math.tanh %in : f16
        %collapsed_54 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x4xi64> into tensor<84x4xi64>
        %270 = math.expm1 %1 : tensor<2x12x2xf32>
        %271 = vector.matrix_multiply %266, %22 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi64>, vector<12xi64>) -> vector<12xi64>
        %272 = math.log10 %9 : tensor<12x4xf32>
        %273 = math.sqrt %1 : tensor<2x12x2xf32>
        %274 = arith.maxui %c266860443_i64, %c266860443_i64 : i64
        %275 = index.ceildivs %c2, %44
        %276 = arith.minsi %c325626252_i32, %c325626252_i32 : i32
        %277 = affine.load %alloc_13[%c2, %c7, %c11] : memref<12x7x4xf16>
        %278 = math.expm1 %cst_2 : f16
        %279 = index.divs %31, %c0
        %rank_55 = tensor.rank %12 : tensor<4xi64>
        %280 = arith.shrui %c325626252_i32, %c647584757_i32 : i32
        %281 = math.sqrt %1 : tensor<2x12x2xf32>
        %282 = math.expm1 %cst : f16
        memref.assume_alignment %alloc_12, 2 : memref<12x4xi64>
        %283 = arith.andi %c1477813002_i32, %c647584757_i32 : i32
        %284 = arith.maxui %c325626252_i32, %c325626252_i32 : i32
        %285 = index.divs %c3, %275
        %286 = index.divs %c8, %c10
        %287 = arith.addf %cst_3, %cst_3 : f32
        %cst_56 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_56 : f16
      }
    %generated_27 = tensor.generate %c3, %c13, %c6 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %258 = bufferization.to_memref %3 : memref<12x4xi16>
      %259 = arith.cmpf one, %cst_1, %cst_0 : f16
      %collapsed_53 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<12x7x4xi16> into tensor<84x4xi16>
      %260 = math.absf %17 : tensor<12x7x4xf32>
      tensor.yield %true : i1
    } : tensor<?x?x?xi1>
    %49 = index.maxu %c13, %c2
    %50 = vector.extract %21[7] : vector<12x4xf32>
    %51 = index.divs %c6, %c15
    %52 = math.expm1 %1 : tensor<2x12x2xf32>
    %53 = arith.maxf %cst_0, %cst_0 : f16
    %54 = arith.maxui %c647584757_i32, %c1477813002_i32 : i32
    %55 = math.tanh %7 : tensor<2x12x2xf32>
    %56 = index.divs %c15, %c4
    %57 = index.ceildivu %c14, %c3
    %58 = arith.cmpf ult, %cst, %cst_2 : f16
    %59 = tensor.empty() : tensor<2x12x2xi32>
    %60 = math.fpowi %1, %59 : tensor<2x12x2xf32>, tensor<2x12x2xi32>
    %61 = math.rsqrt %cst_4 : f32
    %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<12x4xi64> into tensor<48xi64>
    %62 = index.ceildivs %c15, %c7
    %63 = math.atan %cst_1 : f16
    %64 = tensor.empty() : tensor<2x12x2xf32>
    %mapped_28 = linalg.map ins(%1, %alloc_10 : tensor<2x12x2xf32>, memref<2x12x2xf32>) outs(%64 : tensor<2x12x2xf32>)
      (%in: f32, %in_53: f32) {
        %258 = math.log2 %48 : tensor<12x7x4xf16>
        %259 = tensor.empty() : tensor<4xf16>
        %alloca_54 = memref.alloca() : memref<12x7x4xi64>
        %260 = bufferization.clone %alloc_9 : memref<12x4xf32> to memref<12x4xf32>
        %261 = tensor.empty() : tensor<4x2xf32>
        %262 = tensor.empty() : tensor<12x2xf32>
        %263 = linalg.matmul ins(%9, %261 : tensor<12x4xf32>, tensor<4x2xf32>) outs(%262 : tensor<12x2xf32>) -> tensor<12x2xf32>
        %264 = index.sub %44, %49
        %265 = vector.matrix_multiply %27, %22 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<2xi64>, vector<12xi64>) -> vector<6xi64>
        %266 = vector.broadcast %true : i1 to vector<4xi1>
        %267 = vector.multi_reduction <add>, %37, %50 [0, 1] : vector<12x7x4xf32> to vector<4xf32>
        %268 = bufferization.clone %alloc_23 : memref<4x12x7xf32> to memref<4x12x7xf32>
        %269 = tensor.empty() : tensor<i32>
        %270 = math.fpowi %19, %269 : tensor<f32>, tensor<i32>
        %271 = vector.broadcast %c-14955_i16 : i16 to vector<7xi16>
        %272 = vector.broadcast %true_6 : i1 to vector<7xi1>
        %273 = vector.maskedload %alloc_21[%c5, %c3], %272, %271 : memref<12x4xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %274 = arith.andi %c266860443_i64, %c266860443_i64 : i64
        %275 = arith.remf %in, %in_53 : f32
        %276 = arith.cmpf one, %cst_2, %cst_0 : f16
        %277 = math.tanh %9 : tensor<12x4xf32>
        %278 = scf.while (%arg2 = %23) : (vector<12xi1>) -> vector<12xi1> {
          %290 = arith.negf %cst_3 : f32
          %291 = index.floordivs %c2, %36
          %292 = math.tanh %259 : tensor<4xf16>
          %293 = affine.max affine_map<(d0) -> ((-d0) ceildiv 16 + d0 * 2 + 128, 0)>(%264)
          affine.store %in, %260[%c3, %c2] : memref<12x4xf32>
          %294 = arith.subi %c325626252_i32, %c647584757_i32 : i32
          %295 = tensor.empty() : tensor<12x7x4xf16>
          %296 = vector.maskedload %alloc_16[%c1, %c9, %c1], %272, %273 : memref<2x12x2xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          scf.condition(%true) %23 : vector<12xi1>
        } do {
        ^bb0(%arg2: vector<12xi1>):
          %290 = math.ctpop %c266860443_i64 : i64
          %extracted_60 = tensor.extract %2[%c3, %c5, %c2] : tensor<12x7x4xi16>
          %291 = math.floor %9 : tensor<12x4xf32>
          %292 = affine.max affine_map<(d0) -> ((d0 ceildiv 2) ceildiv 32 + 1)>(%c3)
          %293 = math.powf %259, %259 : tensor<4xf16>
          %alloc_61 = memref.alloc() : memref<2x12x2xi64>
          %294 = arith.remui %true, %true_6 : i1
          %295 = math.log2 %19 : tensor<f32>
          memref.store %c2083202933_i32, %alloc[%c1, %c10, %c1] : memref<2x12x2xi32>
          %296 = index.maxu %56, %51
          affine.store %cst_3, %alloc_10[%c15, %c2, %c12] : memref<2x12x2xf32>
          %297 = index.ceildivu %c10, %c13
          %298 = arith.minui %true, %true : i1
          %299 = affine.max affine_map<(d0, d1) -> ((d1 floordiv 128) mod 4, d1 floordiv 128 - d1, d1 floordiv 128 - d1)>(%c0, %56)
          %300 = arith.minui %extracted_60, %extracted_60 : i16
          %301 = index.casts %c10 : index to i32
          scf.yield %23 : vector<12xi1>
        }
        %279 = affine.load %260[%c7, %c13] : memref<12x4xf32>
        memref.assume_alignment %alloc, 8 : memref<2x12x2xi32>
        %280 = math.sqrt %cst_5 : f16
        %281 = index.floordivs %c15, %c3
        %282 = math.cos %5 : tensor<4xf32>
        %283 = math.fma %48, %48, %15 : tensor<12x7x4xf16>
        %collapsed_55 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<12x7x4xf32> into tensor<84x4xf32>
        %284 = arith.minui %c-14955_i16, %c-14955_i16 : i16
        %285 = index.maxs %c7, %49
        %286 = arith.minsi %c-14955_i16, %c-14955_i16 : i16
        %287 = math.powf %splat, %splat : tensor<2x12x2xf16>
        %288 = index.castu %true_6 : i1 to index
        %dest_56, %accumulated_value_57 = vector.scan <maxf>, %21, %50 {inclusive = true, reduction_dim = 0 : i64} : vector<12x4xf32>, vector<4xf32>
        %289 = math.powf %16, %17 : tensor<12x7x4xf32>
        %collapsed_58 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x4xi64> into tensor<84x4xi64>
        %cst_59 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_59 : f32
      }
    memref.assume_alignment %alloc_21, 8 : memref<12x4xi16>
    %65 = math.powf %64, %64 : tensor<2x12x2xf32>
    %66 = math.log2 %16 : tensor<12x7x4xf32>
    %c21641_i16 = arith.constant 21641 : i16
    %rank = tensor.rank %8 : tensor<2x12x2xi16>
    %67 = memref.alloca_scope  -> (memref<2x12x2xf16>) {
      %258 = math.sqrt %15 : tensor<12x7x4xf16>
      %259 = vector.broadcast %c1477813002_i32 : i32 to vector<12x7x4xi32>
      %c9090_i16 = arith.constant 9090 : i16
      %260 = vector.matrix_multiply %25, %22 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<2xi64>, vector<12xi64>) -> vector<6xi64>
      %generated_53 = tensor.generate %c9 {
      ^bb0(%arg2: index):
        %283 = index.maxs %c8, %c14
        %284 = bufferization.clone %alloc_25 : memref<4xf32> to memref<4xf32>
        %285 = index.sub %56, %c13
        %286 = arith.minsi %true, %true_6 : i1
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      %generated_54 = tensor.generate %c3 {
      ^bb0(%arg2: index):
        %283 = vector.broadcast %cst_0 : f16 to vector<2x12x2xf16>
        %284 = math.tanh %cst_3 : f32
        %alloca_61 = memref.alloca() : memref<12x4xf16>
        %285 = vector.splat %c11 : vector<4xindex>
        tensor.yield %true : i1
      } : tensor<?xi1>
      %alloc_55 = memref.alloc() : memref<4xi64>
      memref.tensor_store %11, %alloc_55 : memref<4xi64>
      %261 = vector.matrix_multiply %18, %23 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<4xi1>, vector<12xi1>) -> vector<3xi1>
      %262 = arith.addf %cst_3, %cst_4 : f32
      %generated_56 = tensor.generate %c5, %31 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %cast_61 = tensor.cast %7 : tensor<2x12x2xf32> to tensor<?x?x?xf32>
        %283 = math.sqrt %cst_4 : f32
        %284 = arith.maxui %c1477813002_i32, %c647584757_i32 : i32
        %285 = arith.ceildivsi %c1477813002_i32, %c2083202933_i32 : i32
        tensor.yield %c-14955_i16 : i16
      } : tensor<?x?x2xi16>
      %263 = tensor.empty() : tensor<2x12x2xi16>
      %264 = index.casts %rank : index to i32
      %265 = arith.shli %c2083202933_i32, %c325626252_i32 : i32
      %266 = arith.ceildivsi %true_6, %true : i1
      %267 = math.absf %9 : tensor<12x4xf32>
      %rank_57 = tensor.rank %7 : tensor<2x12x2xf32>
      %268 = math.ceil %16 : tensor<12x7x4xf32>
      %269 = math.tanh %1 : tensor<2x12x2xf32>
      %splat_58 = tensor.splat %true : tensor<2x12x2xi1>
      %270 = bufferization.to_memref %expanded : memref<12x7x4x1xf16>
      %generated_59 = tensor.generate %57, %44 {
      ^bb0(%arg2: index, %arg3: index):
        %283 = arith.shrsi %c325626252_i32, %c1477813002_i32 : i32
        %284 = math.log2 %splat : tensor<2x12x2xf16>
        %cast_61 = tensor.cast %9 : tensor<12x4xf32> to tensor<?x?xf32>
        %285 = vector.create_mask %c3, %c3 : vector<12x4xi1>
        tensor.yield %c325626252_i32 : i32
      } : tensor<?x?xi32>
      %271 = memref.atomic_rmw maxf %cst_4, %alloc_23[%c1, %c3, %c1] : (f32, memref<4x12x7xf32>) -> f32
      %272 = arith.addf %cst_0, %cst_1 : f16
      %273 = arith.minf %cst_3, %cst_4 : f32
      %274 = index.floordivs %c7, %c13
      %275 = math.expm1 %64 : tensor<2x12x2xf32>
      %276 = tensor.empty() : tensor<4xf32>
      %277 = arith.shrui %true_6, %true : i1
      %278 = arith.divui %c1477813002_i32, %c1477813002_i32 : i32
      %279 = math.ipowi %true_6, %true : i1
      %280 = vector.broadcast %33 : index to vector<12xindex>
      %281 = vector.broadcast %cst_4 : f32 to vector<12xf32>
      vector.scatter %alloc_10[%c1, %c11, %c1] [%280], %23, %281 : memref<2x12x2xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %282 = math.log2 %cst_0 : f16
      %alloc_60 = memref.alloc() : memref<2x12x2xf16>
      memref.alloca_scope.return %alloc_60 : memref<2x12x2xf16>
    }
    %68 = math.log %cst_7 : f16
    vector.print %24 : vector<12xi64>
    %69 = vector.shuffle %24, %24 [0, 3, 4, 6, 7, 8, 10, 11, 14, 18, 20, 21, 22] : vector<12xi64>, vector<12xi64>
    %70 = arith.ceildivsi %c1477813002_i32, %c1477813002_i32 : i32
    %71 = arith.shli %c1477813002_i32, %c325626252_i32 : i32
    %72 = math.cos %10 : tensor<12x7x4xf32>
    %73 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, ((d3 - 1) * 2) floordiv 4, -d1, ((d3 - 1) * 2 - d0) * 128)>(%31, %rank, %c2, %c13)
    %74 = math.copysign %19, %20 : tensor<f32>
    %75 = math.ctlz %2 : tensor<12x7x4xi16>
    %generated_29 = tensor.generate %c1 {
    ^bb0(%arg2: index, %arg3: index):
      %258 = arith.ori %c-14955_i16, %c-14955_i16 : i16
      %259 = math.ctpop %true_6 : i1
      %alloc_53 = memref.alloc() : memref<12x4xi32>
      memref.copy %alloc_19, %alloc_53 : memref<12x4xi32> to memref<12x4xi32>
      %cast_54 = tensor.cast %2 : tensor<12x7x4xi16> to tensor<?x?x?xi16>
      tensor.yield %true : i1
    } : tensor<?x4xi1>
    %76 = math.round %5 : tensor<4xf32>
    %77 = index.sizeof
    %78 = vector.broadcast %36 : index to vector<2xindex>
    vector.scatter %alloc_18[%c6, %c4, %c1] [%78], %26, %27 : memref<12x7x4xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
    %79 = index.sub %36, %33
    %80 = tensor.empty(%c8) : tensor<?xf32>
    %81 = arith.shrsi %true, %true : i1
    %82 = affine.load %alloc_22[%c4, %c1, %c5] : memref<2x12x2xi16>
    %83 = index.floordivs %31, %c9
    %84 = math.tan %9 : tensor<12x4xf32>
    %85 = arith.andi %c2083202933_i32, %c647584757_i32 : i32
    %86 = arith.shrsi %c266860443_i64, %c266860443_i64 : i64
    %generated_30 = tensor.generate %c1, %c1 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %258 = vector.broadcast %49 : index to vector<4xindex>
      vector.scatter %alloc_9[%c5, %c1] [%258], %18, %50 : memref<12x4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<12x7x4xi16>) {
      ^bb0(%out: i16):
        %261 = arith.xori %c-14955_i16, %out : i16
        %262 = index.floordivs %36, %arg3
        memref.store %c266860443_i64, %alloc_24[%c2, %c3] : memref<12x4xi64>
        %263 = vector.broadcast %out : i16 to vector<12x7x4xi16>
        %264 = arith.minui %c1477813002_i32, %c647584757_i32 : i32
        %265 = arith.shrui %out, %out : i16
        %266 = index.ceildivs %c4, %c5
        %alloc_54 = memref.alloc() : memref<f32>
        memref.tensor_store %20, %alloc_54 : memref<f32>
        %267 = math.sqrt %15 : tensor<12x7x4xf16>
        %268 = math.sqrt %9 : tensor<12x4xf32>
        %269 = vector.broadcast %c2083202933_i32 : i32 to vector<12x4xi32>
        %270 = math.ceil %7 : tensor<2x12x2xf32>
        %271 = bufferization.clone %alloc_22 : memref<2x12x2xi16> to memref<2x12x2xi16>
        %272 = bufferization.to_tensor %alloc_20 : memref<12x4xi64>
        %273 = vector.broadcast %56 : index to vector<7xindex>
        %274 = vector.broadcast %true_6 : i1 to vector<7xi1>
        %275 = vector.broadcast %cst_7 : f16 to vector<7xf16>
        vector.scatter %alloc_13[%c3, %c6, %c1] [%273], %274, %275 : memref<12x7x4xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %276 = affine.load %alloc_12[%c12, %c0] : memref<12x4xi64>
        %277 = vector.flat_transpose %25 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %278 = vector.broadcast %266 : index to vector<4xindex>
        vector.scatter %alloc_10[%c0, %c9, %c0] [%278], %18, %50 : memref<2x12x2xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        memref.assume_alignment %alloc_11, 16 : memref<12x4xi16>
        %279 = arith.maxui %c266860443_i64, %c266860443_i64 : i64
        %280 = tensor.empty() : tensor<4xf16>
        %281 = vector.broadcast %cst_7 : f16 to vector<12x4xf16>
        %282 = vector.broadcast %true : i1 to vector<12x4xi1>
        %283 = vector.gather %280[%arg4] [%269], %282, %281 : tensor<4xf16>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xf16> into vector<12x4xf16>
        %284 = math.cttz %c325626252_i32 : i32
        %alloca_55 = memref.alloca() : memref<2x12x2xi16>
        %285 = arith.shli %c647584757_i32, %c647584757_i32 : i32
        %286 = math.absi %82 : i16
        %from_elements = tensor.from_elements %c266860443_i64, %c266860443_i64, %c266860443_i64, %c266860443_i64, %c266860443_i64, %276, %c266860443_i64, %c266860443_i64, %c266860443_i64, %276, %c266860443_i64, %276, %276, %c266860443_i64, %c266860443_i64, %c266860443_i64, %c266860443_i64, %276, %c266860443_i64, %276, %c266860443_i64, %276, %c266860443_i64, %c266860443_i64, %c266860443_i64, %276, %276, %276, %276, %c266860443_i64, %c266860443_i64, %c266860443_i64, %276, %c266860443_i64, %c266860443_i64, %276, %c266860443_i64, %276, %276, %c266860443_i64, %276, %276, %c266860443_i64, %c266860443_i64, %276, %276, %276, %276 : tensor<2x12x2xi64>
        %287 = index.ceildivs %31, %c3
        %288 = arith.remui %true, %true : i1
        %289 = arith.andi %c325626252_i32, %c325626252_i32 : i32
        %290 = math.sqrt %cst_5 : f16
        %291 = index.sizeof
        %292 = bufferization.clone %alloc_15 : memref<2x12x2xi1> to memref<2x12x2xi1>
        linalg.yield %c-14955_i16 : i16
      } -> tensor<12x7x4xi16>
      %splat_53 = tensor.splat %cst_4 : tensor<12x7x4xf32>
      %260 = arith.mulf %cst_5, %cst_5 : f16
      tensor.yield %c2083202933_i32 : i32
    } : tensor<?x?x2xi32>
    %87 = math.absi %c647584757_i32 : i32
    %88 = math.log %48 : tensor<12x7x4xf16>
    %89 = index.casts %79 : index to i32
    %90 = index.ceildivu %c14, %62
    %91 = vector.reduction <mul>, %50 : vector<4xf32> into f32
    %92 = tensor.empty(%56) : tensor<2x?x2xf32>
    %93 = math.round %16 : tensor<12x7x4xf32>
    %94 = affine.max affine_map<(d0) -> (d0 + 66)>(%77)
    %95 = arith.andi %c325626252_i32, %c647584757_i32 : i32
    %96 = bufferization.clone %alloc_11 : memref<12x4xi16> to memref<12x4xi16>
    %97 = arith.subi %c2083202933_i32, %c2083202933_i32 : i32
    %98 = math.cttz %true : i1
    %collapsed_31 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<12x7x4xf32> into tensor<84x4xf32>
    %99 = arith.andi %c-14955_i16, %c-14955_i16 : i16
    %100 = vector.matrix_multiply %22, %22 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
    %101 = arith.addf %cst_3, %cst_3 : f32
    %inserted = tensor.insert %c-14955_i16 into %13[%c0, %c2, %c3] : tensor<12x7x4xi16>
    %102 = vector.broadcast %cst_3 : f32 to vector<2x12x2xf32>
    %103 = vector.fma %102, %102, %102 : vector<2x12x2xf32>
    %104 = math.cttz %59 : tensor<2x12x2xi32>
    %generated_32 = tensor.generate %c9, %c3 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %258 = arith.addf %cst_1, %cst : f16
      %259 = vector.multi_reduction <minf>, %38, %37 [] : vector<12x7x4xf32> to vector<12x7x4xf32>
      memref.store %true, %alloc_14[%c3] : memref<4xi1>
      %260 = math.log2 %splat : tensor<2x12x2xf16>
      tensor.yield %c325626252_i32 : i32
    } : tensor<?x?x4xi32>
    scf.index_switch %c0 
    case 1 {
      affine.store %cst_3, %alloc_9[%c4, %c2] : memref<12x4xf32>
      %258 = math.atan %15 : tensor<12x7x4xf16>
      affine.for %arg2 = 0 to 45 {
      }
      %259 = vector.broadcast %cst_3 : f32 to vector<12x2xf32>
      %260 = vector.insert %259, %102 [0] : vector<12x2xf32> into vector<2x12x2xf32>
      %261 = arith.minf %cst_4, %cst_3 : f32
      %262 = math.ceil %collapsed_31 : tensor<84x4xf32>
      %263 = tensor.empty(%c6) : tensor<?xi64>
      %264 = tensor.empty() : tensor<2x12x2xf32>
      %mapped_53 = linalg.map ins(%7, %7, %1 : tensor<2x12x2xf32>, tensor<2x12x2xf32>, tensor<2x12x2xf32>) outs(%264 : tensor<2x12x2xf32>)
        (%in: f32, %in_57: f32, %in_58: f32) {
          %270 = bufferization.clone %alloc_13 : memref<12x7x4xf16> to memref<12x7x4xf16>
          %271 = vector.matrix_multiply %24, %25 {lhs_columns = 2 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<2xi64>) -> vector<6xi64>
          %alloca_59 = memref.alloca() : memref<12x4xi64>
          memref.store %c266860443_i64, %alloc_12[%c5, %c3] : memref<12x4xi64>
          %272 = bufferization.to_tensor %alloc_17 : memref<12x4xf32>
          %273 = bufferization.clone %alloc_23 : memref<4x12x7xf32> to memref<4x12x7xf32>
          %274 = index.maxu %49, %c1
          %275 = vector.broadcast %cst_4 : f32 to vector<12xf32>
          %276 = vector.maskedload %273[%c3, %c8, %c6], %23, %275 : memref<4x12x7xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
          %277 = index.ceildivu %36, %49
          %278 = math.expm1 %19 : tensor<f32>
          %279 = math.cttz %14 : tensor<12x7x4xi16>
          %280 = vector.broadcast %in_58 : f32 to vector<7xf32>
          %281 = vector.broadcast %true_6 : i1 to vector<7xi1>
          %282 = vector.maskedload %alloc_23[%c0, %c9, %c0], %281, %280 : memref<4x12x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
          %283 = index.add %83, %77
          %284 = index.sizeof
          %285 = arith.ceildivsi %c1477813002_i32, %c1477813002_i32 : i32
          %286 = bufferization.clone %alloc_8 : memref<12x7x4xi64> to memref<12x7x4xi64>
          %287 = arith.maxsi %82, %82 : i16
          memref.store %true, %alloc_14[%c0] : memref<4xi1>
          %288 = arith.shrsi %c325626252_i32, %c2083202933_i32 : i32
          %from_elements = tensor.from_elements %in_57, %in_58, %cst_3, %cst_3, %in_57, %in, %in_58, %in, %cst_4, %cst_4, %in_58, %cst_4, %cst_3, %in_58, %cst_3, %cst_4, %in_58, %cst_3, %cst_3, %cst_3, %in_58, %cst_4, %in_58, %in_57, %cst_3, %cst_3, %cst_4, %in, %cst_3, %cst_4, %cst_3, %cst_3, %in, %in_57, %in_58, %in_58, %cst_4, %in, %in, %in, %in, %in, %cst_4, %cst_4, %cst_4, %in_58, %in_58, %cst_4, %cst_3, %cst_4, %in, %in_58, %cst_3, %in_58, %in, %cst_3, %in, %in_58, %in, %in, %in_57, %in_58, %in, %in, %in_58, %in_57, %cst_4, %in, %in_57, %cst_4, %in_58, %in_57, %in_57, %cst_3, %in_58, %in_58, %cst_3, %cst_3, %in_58, %in_57, %in, %cst_4, %cst_3, %in_57, %in, %in_57, %cst_4, %cst_4, %in, %cst_3, %in, %in, %in, %in, %cst_3, %cst_3, %in_57, %in_58, %cst_4, %in_58, %in_57, %cst_4, %cst_4, %in_58, %in_58, %in_57, %cst_4, %in, %cst_4, %in_57, %cst_3, %in, %in_58, %in, %in_57, %cst_3, %in, %in_58, %cst_4, %cst_4, %cst_4, %in_57, %in_58, %cst_4, %cst_4, %cst_4, %cst_3, %cst_3, %cst_3, %cst_3, %in_58, %in_58, %cst_3, %cst_4, %in, %in_58, %in, %in_58, %cst_4, %cst_4, %cst_4, %in, %cst_3, %in_57, %in, %in_58, %in, %cst_3, %in_57, %cst_3, %in_58, %in, %cst_3, %in_58, %cst_4, %in, %cst_3, %in, %cst_4, %in_58, %in, %in_57, %in_58, %in, %cst_4, %cst_3, %in, %in_57, %in_57, %cst_3, %in_58, %cst_3, %cst_3, %in, %in, %cst_4, %cst_4, %in_57, %in_58, %in, %in, %in, %in_57, %in, %in_57, %in_57, %cst_3, %in_58, %in, %in, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %in_58, %cst_3, %in, %in_58, %in_57, %in_58, %in_58, %in_58, %in, %in, %in_58, %in_58, %in_58, %in_58, %in_57, %cst_4, %in_58, %in_58, %in_58, %in_57, %in, %cst_3, %in, %in_57, %in_58, %cst_4, %in_57, %in, %cst_3, %cst_3, %in_58, %cst_3, %cst_4, %in_57, %in_58, %in_58, %in_57, %cst_4, %cst_3, %in_58, %in_58, %cst_4, %in_57, %in, %in, %cst_3, %in_58, %cst_3, %cst_3, %in, %in_57, %in_58, %cst_4, %cst_3, %cst_4, %cst_4, %in, %in_57, %in_58, %in, %in_58, %cst_4, %cst_4, %cst_3, %in_57, %in_58, %in_58, %in_57, %cst_4, %cst_3, %in_57, %in_58, %cst_3, %in_58, %in_58, %cst_3, %in_58, %in_57, %cst_4, %cst_3, %cst_4, %cst_3, %in_58, %in, %in_57, %in, %cst_4, %in, %in_58, %in, %in_57, %in_57, %in_58, %in_58, %in_58, %cst_3, %cst_3, %cst_4, %cst_4, %in, %in_58, %cst_3, %cst_3, %cst_3, %in_57, %cst_3, %cst_3, %in, %cst_4, %in_58, %cst_3, %in_57, %in, %cst_4, %in_57, %in_58, %in, %in_57, %in, %in_57, %in, %in_58, %cst_3, %cst_3, %in_57, %in, %cst_3, %cst_3, %cst_3, %cst_4, %in_58, %in_58, %in, %in_57, %cst_4, %in, %in_58, %in_58, %cst_3, %cst_3, %in_57 : tensor<12x7x4xf32>
          %289 = index.ceildivu %c6, %c6
          %290 = index.add %rank, %56
          %291 = vector.broadcast %cst_2 : f16 to vector<2x12x2xf16>
          %292 = index.divs %c11, %56
          %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %100, %100, %c266860443_i64 : vector<1xi64>, vector<1xi64> into i64
          %splat_60 = tensor.splat %cst_3 : tensor<2x12x2xf32>
          %294 = affine.load %alloc_24[%c9, %c14] : memref<12x4xi64>
          %295 = math.ceil %17 : tensor<12x7x4xf32>
          %296 = arith.addf %cst_7, %cst_5 : f16
          %297 = math.log %collapsed_31 : tensor<84x4xf32>
          %298 = arith.addf %cst_4, %in_58 : f32
          %299 = memref.atomic_rmw andi %82, %96[%c1, %c0] : (i16, memref<12x4xi16>) -> i16
          %cst_61 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_61 : f32
        }
      %extracted_54 = tensor.extract %1[%c0, %c10, %c1] : tensor<2x12x2xf32>
      %collapsed_55 = tensor.collapse_shape %0 [[0, 1]] : tensor<12x4xi64> into tensor<48xi64>
      %265 = affine.load %alloc_24[%c12, %c9] : memref<12x4xi64>
      %266 = math.expm1 %cst : f16
      %267 = math.log1p %cst_0 : f16
      %268 = arith.shli %82, %c-14955_i16 : i16
      %269 = affine.load %alloc_22[%c3, %c13, %c0] : memref<2x12x2xi16>
      %expanded_56 = tensor.expand_shape %expanded [[0], [1], [2], [3, 4]] : tensor<12x7x4x1xf16> into tensor<12x7x4x1x1xf16>
      scf.yield
    }
    case 2 {
      memref.copy %alloc_16, %alloc_22 : memref<2x12x2xi16> to memref<2x12x2xi16>
      %258 = math.log10 %16 : tensor<12x7x4xf32>
      %259 = scf.if %true -> (i32) {
        %272 = arith.shrsi %82, %c-14955_i16 : i16
        %273 = index.add %c3, %c12
        %extracted_57 = tensor.extract %generated_32[%c0, %c0, %c0] : tensor<?x?x4xi32>
        %274 = math.powf %cst_1, %cst_5 : f16
        %275 = arith.maxsi %true_6, %true : i1
        %alloca_58 = memref.alloca() : memref<4xi16>
        affine.store %cst_2, %alloc_13[%c7, %c12, %c15] : memref<12x7x4xf16>
        affine.store %c266860443_i64, %alloc_18[%c3, %c1, %c5] : memref<12x7x4xi64>
        scf.yield %c647584757_i32 : i32
      } else {
        %272 = arith.addf %cst_2, %cst_0 : f16
        memref.copy %alloc_18, %alloc_8 : memref<12x7x4xi64> to memref<12x7x4xi64>
        %273 = tensor.empty() : tensor<4xf32>
        memref.copy %alloc_22, %alloc_16 : memref<2x12x2xi16> to memref<2x12x2xi16>
        %274 = arith.subi %true_6, %true_6 : i1
        %275 = vector.broadcast %true_6 : i1 to vector<12x4xi1>
        %276 = vector.broadcast %c647584757_i32 : i32 to vector<12x4xi32>
        %277 = vector.gather %64[%90, %90, %c12] [%276], %275, %21 : tensor<2x12x2xf32>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xf32> into vector<12x4xf32>
        %278 = arith.shli %82, %82 : i16
        %cst_57 = arith.constant 1.000000e+00 : f32
        %cst_58 = arith.constant 0.000000e+00 : f32
        %279 = vector.transfer_read %1[%c0, %c15, %90], %cst_58 : tensor<2x12x2xf32>, vector<f32>
        scf.yield %c647584757_i32 : i32
      }
      %260 = math.rsqrt %cst : f16
      %261 = vector.broadcast %cst_4 : f32 to vector<12x2xf32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %103, %261 {inclusive = true, reduction_dim = 0 : i64} : vector<2x12x2xf32>, vector<12x2xf32>
      %262 = tensor.empty() : tensor<12x4xi64>
      %mapped_55 = linalg.map ins(%0 : tensor<12x4xi64>) outs(%262 : tensor<12x4xi64>)
        (%in: i64) {
          %272 = math.log %cst : f16
          %273 = index.sub %90, %c13
          %alloc_57 = memref.alloc() : memref<4x4xi64>
          %274 = tensor.empty() : tensor<12x4xi64>
          %275 = linalg.matmul ins(%262, %alloc_57 : tensor<12x4xi64>, memref<4x4xi64>) outs(%274 : tensor<12x4xi64>) -> tensor<12x4xi64>
          %276 = affine.load %96[%c0, %c12] : memref<12x4xi16>
          %277 = arith.maxui %true_6, %true : i1
          memref.copy %alloc_22, %alloc_16 : memref<2x12x2xi16> to memref<2x12x2xi16>
          %278 = math.log %1 : tensor<2x12x2xf32>
          %279 = math.atan %9 : tensor<12x4xf32>
          %280 = math.absi %4 : tensor<12x7x4xi64>
          %281 = arith.minui %c647584757_i32, %259 : i32
          %282 = affine.apply affine_map<(d0) -> ((d0 - 32) ceildiv 4 + 1)>(%31)
          %283 = arith.minui %c266860443_i64, %in : i64
          %284 = vector.broadcast %cst_3 : f32 to vector<12xf32>
          %dest_58, %accumulated_value_59 = vector.scan <minf>, %21, %284 {inclusive = false, reduction_dim = 1 : i64} : vector<12x4xf32>, vector<12xf32>
          %285 = vector.broadcast %cst_2 : f16 to vector<12x7x4xf16>
          %286 = arith.minsi %276, %c-14955_i16 : i16
          %alloc_60 = memref.alloc() : memref<4x12xf32>
          %287 = tensor.empty() : tensor<84x12xf32>
          %288 = linalg.matmul ins(%collapsed_31, %alloc_60 : tensor<84x4xf32>, memref<4x12xf32>) outs(%287 : tensor<84x12xf32>) -> tensor<84x12xf32>
          %289 = arith.minui %in, %in : i64
          %alloc_61 = memref.alloc() : memref<2x12x2xf32>
          memref.copy %alloc_10, %alloc_61 : memref<2x12x2xf32> to memref<2x12x2xf32>
          %alloc_62 = memref.alloc() : memref<12x7x4xi1>
          %290 = vector.broadcast %c1477813002_i32 : i32 to vector<4xi32>
          %291 = vector.gather %alloc_62[%c15, %c5, %56] [%290], %18, %18 : memref<12x7x4xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
          %292 = vector.reduction <minf>, %50 : vector<4xf32> into f32
          %293 = index.sub %c1, %31
          %294 = arith.shli %true_6, %true_6 : i1
          %295 = arith.negf %cst : f16
          %296 = arith.ceildivsi %true, %true_6 : i1
          %297 = vector.insert %true, %26 [1] : i1 into vector<2xi1>
          %298 = arith.remui %c266860443_i64, %c266860443_i64 : i64
          %299 = affine.max affine_map<(d0, d1, d2) -> (d1 floordiv 64 + d0 - 4)>(%62, %c2, %c15)
          %300 = index.divs %299, %c9
          %301 = bufferization.clone %alloc_62 : memref<12x7x4xi1> to memref<12x7x4xi1>
          %302 = vector.extract_strided_slice %291 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
          %collapsed_63 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<2x12x2xf32> into tensor<24x2xf32>
          %303 = arith.minsi %c2083202933_i32, %c2083202933_i32 : i32
          %c0_i64_64 = arith.constant 0 : i64
          linalg.yield %c0_i64_64 : i64
        }
      %263 = arith.shrsi %c325626252_i32, %c2083202933_i32 : i32
      scf.if %true {
        %272 = index.maxs %31, %c11
        %273 = index.maxs %83, %c10
        %274 = arith.cmpf ole, %cst_0, %cst_2 : f16
        memref.assume_alignment %alloc_14, 4 : memref<4xi1>
        %275 = index.divs %c14, %51
        %276 = index.add %c2, %c8
        %cst_57 = arith.constant 1.06961702E+9 : f32
        %277 = arith.addf %cst_7, %cst_0 : f16
      } else {
        %272 = index.divs %51, %90
        %273 = bufferization.clone %alloc_23 : memref<4x12x7xf32> to memref<4x12x7xf32>
        %274 = vector.broadcast %cst_4 : f32 to vector<12xf32>
        %dest_57, %accumulated_value_58 = vector.scan <maxf>, %21, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<12x4xf32>, vector<12xf32>
        %275 = index.ceildivu %c0, %c8
        %276 = arith.shli %c-14955_i16, %82 : i16
        %alloc_59 = memref.alloc() : memref<4xi32>
        %277 = vector.load %alloc_9[%c11, %c2] : memref<12x4xf32>, vector<2x12x2xf32>
        %278 = arith.remsi %true_6, %true_6 : i1
      }
      %264 = memref.realloc %alloc_25 : memref<4xf32> to memref<2xf32>
      %265 = arith.shli %c-14955_i16, %82 : i16
      %266 = vector.broadcast %c2083202933_i32 : i32 to vector<2xi32>
      %267 = vector.maskedload %alloc_19[%c1, %c2], %26, %266 : memref<12x4xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
      memref.copy %alloc_16, %alloc_22 : memref<2x12x2xi16> to memref<2x12x2xi16>
      %268 = math.cttz %59 : tensor<2x12x2xi32>
      %alloca_56 = memref.alloca() : memref<2x12x2xf16>
      %269 = math.sqrt %expanded : tensor<12x7x4x1xf16>
      %270 = vector.broadcast %cst_2 : f16 to vector<12xf16>
      %271 = vector.maskedload %alloc_13[%c10, %c4, %c2], %23, %270 : memref<12x7x4xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
      scf.yield
    }
    default {
      %258 = math.log %19 : tensor<f32>
      %259 = index.ceildivs %79, %94
      %260 = vector.broadcast %cst_4 : f32 to vector<2x12x2xf32>
      %261 = vector.fma %260, %103, %102 : vector<2x12x2xf32>
      bufferization.dealloc_tensor %13 : tensor<12x7x4xi16>
      %collapsed_53 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<12x7x4xi16> into tensor<84x4xi16>
      %alloc_54 = memref.alloc() : memref<12x4xf16>
      %262 = math.round %9 : tensor<12x4xf32>
      %263 = math.round %expanded : tensor<12x7x4x1xf16>
      %264 = math.fma %1, %1, %64 : tensor<2x12x2xf32>
      %265 = index.mul %c0, %259
      %266 = index.casts %51 : index to i32
      %267 = scf.while (%arg2 = %37) : (vector<12x7x4xf32>) -> vector<12x7x4xf32> {
        %alloca_55 = memref.alloca() : memref<12x7x4xi16>
        %272 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d0)>(%c5, %33, %c4)
        %273 = arith.maxsi %c266860443_i64, %c266860443_i64 : i64
        %274 = arith.cmpi ule, %true_6, %true : i1
        %275 = vector.extract_strided_slice %27 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
        %276 = index.maxu %c12, %79
        %277 = arith.minui %82, %c-14955_i16 : i16
        %278 = arith.minf %cst_0, %cst_1 : f16
        scf.condition(%true) %38 : vector<12x7x4xf32>
      } do {
      ^bb0(%arg2: vector<12x7x4xf32>):
        %extracted_55 = tensor.extract %5[%c0] : tensor<4xf32>
        %272 = vector.matrix_multiply %26, %23 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<2xi1>, vector<12xi1>) -> vector<6xi1>
        %273 = math.sqrt %1 : tensor<2x12x2xf32>
        %274 = affine.max affine_map<(d0) -> (0, d0)>(%c8)
        %275 = math.round %9 : tensor<12x4xf32>
        %276 = arith.ori %true_6, %true : i1
        %alloca_56 = memref.alloca() : memref<12x4xi64>
        %277 = memref.atomic_rmw assign %c266860443_i64, %alloc_8[%c0, %c2, %c2] : (i64, memref<12x7x4xi64>) -> i64
        %278 = affine.max affine_map<(d0) -> (((d0 - 112) floordiv 128) floordiv 128 - (d0 + 16))>(%rank)
        %279 = math.tanh %cst_3 : f32
        %splat_57 = tensor.splat %cst_4 : tensor<2x12x2xf32>
        %280 = index.divu %77, %c1
        %281 = arith.minsi %c647584757_i32, %c2083202933_i32 : i32
        %282 = arith.ceildivsi %c1477813002_i32, %c1477813002_i32 : i32
        %283 = math.log2 %collapsed_31 : tensor<84x4xf32>
        %284 = arith.andi %c1477813002_i32, %c647584757_i32 : i32
        scf.yield %37 : vector<12x7x4xf32>
      }
      %268 = math.tan %15 : tensor<12x7x4xf16>
      %269 = vector.broadcast %c647584757_i32 : i32 to vector<12x7x4xi32>
      %270 = vector.create_mask %c5, %c6, %79 : vector<2x12x2xi1>
      %271 = arith.minsi %true_6, %true_6 : i1
    }
    %105 = arith.andi %c266860443_i64, %c266860443_i64 : i64
    %generated_33 = tensor.generate %79, %c1 {
    ^bb0(%arg2: index, %arg3: index):
      %258 = index.mul %c3, %c9
      %259 = arith.maxui %c1477813002_i32, %c647584757_i32 : i32
      %260 = index.add %73, %c1
      %261 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %102, %261 {inclusive = false, reduction_dim = 1 : i64} : vector<2x12x2xf32>, vector<2x2xf32>
      tensor.yield %cst_4 : f32
    } : tensor<?x?xf32>
    %106 = arith.divsi %82, %82 : i16
    %107 = vector.extract_strided_slice %38 {offsets = [4], sizes = [5], strides = [1]} : vector<12x7x4xf32> to vector<5x7x4xf32>
    %extracted = tensor.extract %2[%c0, %c4, %c0] : tensor<12x7x4xi16>
    %108 = vector.broadcast %73 : index to vector<2xindex>
    vector.scatter %alloc_20[%c8, %c0] [%108], %26, %27 : memref<12x4xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
    %109 = arith.shrsi %c266860443_i64, %c266860443_i64 : i64
    affine.store %82, %alloc_11[%c8, %c10] : memref<12x4xi16>
    bufferization.dealloc_tensor %2 : tensor<12x7x4xi16>
    vector.print %103 : vector<2x12x2xf32>
    %110 = index.maxs %c10, %49
    %111 = math.sqrt %collapsed_31 : tensor<84x4xf32>
    %112 = tensor.empty(%77, %49) : tensor<?x?xi1>
    %113 = math.powf %20, %19 : tensor<f32>
    %114 = math.absi %c325626252_i32 : i32
    %115 = vector.insertelement %c266860443_i64, %27[%73 : index] : vector<2xi64>
    %116 = math.cttz %8 : tensor<2x12x2xi16>
    %117 = math.exp2 %cst_5 : f16
    %alloca = memref.alloca() : memref<2x12x2xf16>
    %118 = arith.minsi %c1477813002_i32, %c1477813002_i32 : i32
    %119 = tensor.empty(%33) : tensor<12x?xf32>
    %120 = index.sub %110, %49
    affine.store %82, %alloc_16[%c5, %c10, %c5] : memref<2x12x2xi16>
    %121 = math.log2 %cst_2 : f16
    %alloca_34 = memref.alloca() : memref<12x4xi64>
    %122 = arith.shrsi %c-14955_i16, %extracted : i16
    %123 = arith.addf %cst, %cst_1 : f16
    %124 = affine.min affine_map<(d0) -> (0, d0, 0)>(%110)
    %125 = math.cttz %3 : tensor<12x4xi16>
    %126 = memref.atomic_rmw assign %cst_3, %alloc_17[%c3, %c1] : (f32, memref<12x4xf32>) -> f32
    %127 = arith.ceildivsi %c647584757_i32, %c2083202933_i32 : i32
    %128 = math.cttz %14 : tensor<12x7x4xi16>
    %129 = math.sqrt %15 : tensor<12x7x4xf16>
    %generated_35 = tensor.generate %33 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %258 = math.round %10 : tensor<12x7x4xf32>
      %259 = math.expm1 %10 : tensor<12x7x4xf32>
      %260 = index.divs %c8, %c3
      %261 = index.floordivs %44, %110
      tensor.yield %true_6 : i1
    } : tensor<?x7x4xi1>
    %130 = math.ipowi %extracted, %c-14955_i16 : i16
    %131 = vector.extract %24[2] : vector<12xi64>
    %132 = vector.extract %27[1] : vector<2xi64>
    %133 = arith.maxui %c266860443_i64, %c266860443_i64 : i64
    %134 = math.expm1 %5 : tensor<4xf32>
    %135 = index.floordivs %c11, %c7
    %136 = math.tan %1 : tensor<2x12x2xf32>
    %137 = bufferization.clone %alloc_17 : memref<12x4xf32> to memref<12x4xf32>
    %138 = memref.atomic_rmw muli %c266860443_i64, %alloc_20[%c8, %c0] : (i64, memref<12x4xi64>) -> i64
    %false = index.bool.constant false
    %139 = bufferization.clone %alloc_23 : memref<4x12x7xf32> to memref<4x12x7xf32>
    %140 = index.castu %c1477813002_i32 : i32 to index
    %141 = vector.broadcast %cst_3 : f32 to vector<12x7x4xf32>
    %142 = vector.fma %141, %141, %141 : vector<12x7x4xf32>
    %143 = index.ceildivu %c1, %57
    %144 = math.log2 %10 : tensor<12x7x4xf32>
    %145 = bufferization.clone %alloc_22 : memref<2x12x2xi16> to memref<2x12x2xi16>
    %146 = bufferization.to_tensor %145 : memref<2x12x2xi16>
    %splat_36 = tensor.splat %c325626252_i32 : tensor<12x4xi32>
    %147 = tensor.empty() : tensor<12x4xf16>
    %148 = vector.broadcast %cst_5 : f16 to vector<12x4xf16>
    %149 = vector.broadcast %true_6 : i1 to vector<12x4xi1>
    %150 = vector.broadcast %c647584757_i32 : i32 to vector<12x4xi32>
    %151 = vector.gather %147[%120, %rank] [%150], %149, %148 : tensor<12x4xf16>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xf16> into vector<12x4xf16>
    %152 = affine.max affine_map<(d0, d1, d2) -> (d1, -(d1 floordiv 64), d2 + d0, d2 + 128)>(%c1, %143, %73)
    %153 = vector.flat_transpose %50 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    vector.print %142 : vector<12x7x4xf32>
    %true_37 = index.bool.constant true
    %154 = math.log2 %cst_3 : f32
    %155 = tensor.empty() : tensor<4xi64>
    %mapped_38 = linalg.map ins(%12, %12 : tensor<4xi64>, tensor<4xi64>) outs(%155 : tensor<4xi64>)
      (%in: i64, %in_53: i64) {
        %258 = arith.divsi %true_37, %true_6 : i1
        %259 = arith.maxui %c-14955_i16, %c-14955_i16 : i16
        %rank_54 = tensor.rank %15 : tensor<12x7x4xf16>
        %260 = vector.load %96[%c10, %c3] : memref<12x4xi16>, vector<12x7x4xi16>
        %261 = math.copysign %collapsed_31, %collapsed_31 : tensor<84x4xf32>
        memref.copy %alloc_23, %139 : memref<4x12x7xf32> to memref<4x12x7xf32>
        %262 = arith.minui %true, %false : i1
        %alloca_55 = memref.alloca() : memref<12x4xi64>
        %expanded_56 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<12x7x4xi16> into tensor<12x7x4x1xi16>
        memref.copy %alloc_8, %alloc_18 : memref<12x7x4xi64> to memref<12x7x4xi64>
        %263 = vector.multi_reduction <and>, %100, %100 [] : vector<1xi64> to vector<1xi64>
        %false_57 = index.bool.constant false
        %264 = index.maxs %31, %c11
        %265 = math.fma %9, %9, %9 : tensor<12x4xf32>
        %266 = scf.if %false_57 -> (memref<2x12x2xi32>) {
          %284 = affine.load %alloc_19[%c11, %c2] : memref<12x4xi32>
          %collapsed_59 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<12x7x4xi16> into tensor<84x4xi16>
          %285 = memref.realloc %alloc_25 : memref<4xf32> to memref<2xf32>
          %286 = math.round %1 : tensor<2x12x2xf32>
          %287 = index.ceildivu %49, %c12
          %288 = arith.remui %true_37, %false : i1
          %289 = math.cttz %in : i64
          %290 = arith.divsi %c647584757_i32, %c2083202933_i32 : i32
          scf.yield %alloc : memref<2x12x2xi32>
        } else {
          %284 = index.castu %c647584757_i32 : i32 to index
          %285 = index.floordivs %c14, %284
          %286 = index.sizeof
          %287 = vector.load %alloc_24[%c4, %c3] : memref<12x4xi64>, vector<12x7x4xi64>
          %288 = math.expm1 %147 : tensor<12x4xf16>
          %289 = index.floordivs %rank_54, %62
          %290 = vector.load %alloc_13[%c4, %c5, %c3] : memref<12x7x4xf16>, vector<12x4xf16>
          %291 = arith.minui %c1477813002_i32, %c1477813002_i32 : i32
          scf.yield %alloc : memref<2x12x2xi32>
        }
        %267 = arith.maxf %cst, %cst_7 : f16
        memref.copy %96, %alloc_21 : memref<12x4xi16> to memref<12x4xi16>
        %268 = math.powf %17, %16 : tensor<12x7x4xf32>
        %269 = arith.andi %c-14955_i16, %extracted : i16
        %generated_58 = tensor.generate %140, %49 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          memref.store %cst_4, %137[%c11, %c0] : memref<12x4xf32>
          %284 = math.floor %64 : tensor<2x12x2xf32>
          %285 = math.log %cst : f16
          affine.store %in, %alloc_20[%c15, %c3] : memref<12x4xi64>
          tensor.yield %cst_1 : f16
        } : tensor<?x?x2xf16>
        %270 = arith.andi %c2083202933_i32, %c1477813002_i32 : i32
        %271 = index.maxs %57, %c9
        %272 = arith.remui %c266860443_i64, %c266860443_i64 : i64
        %273 = math.log %cst_5 : f16
        %274 = arith.andi %true, %true : i1
        %275 = vector.extract_strided_slice %153 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %276 = arith.divf %cst_7, %cst_7 : f16
        %277 = arith.muli %c647584757_i32, %c647584757_i32 : i32
        %278 = vector.broadcast %in : i64 to vector<7xi64>
        %279 = vector.broadcast %false : i1 to vector<7xi1>
        %280 = vector.maskedload %alloc_20[%c10, %c2], %279, %278 : memref<12x4xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %281 = arith.ceildivsi %false, %true_6 : i1
        %282 = arith.minui %c1477813002_i32, %c1477813002_i32 : i32
        %283 = math.tan %cst_3 : f32
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %156 = math.log %cst_4 : f32
    %157 = arith.cmpf false, %cst_0, %cst_0 : f16
    %158 = vector.broadcast %152 : index to vector<4xindex>
    %159 = vector.broadcast %c-14955_i16 : i16 to vector<4xi16>
    vector.scatter %alloc_11[%c7, %c2] [%158], %18, %159 : memref<12x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
    %160 = arith.andi %c266860443_i64, %c266860443_i64 : i64
    %161 = math.cttz %c325626252_i32 : i32
    %162 = math.ceil %cst_2 : f16
    %cst_39 = arith.constant 4.777600e+04 : f16
    %163 = vector.broadcast %82 : i16 to vector<4xi16>
    %164 = vector.maskedload %alloc_11[%c11, %c0], %18, %163 : memref<12x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %165 = math.log2 %19 : tensor<f32>
    %166 = affine.apply affine_map<(d0, d1) -> (-(d0 * 16 - 16))>(%90, %c3)
    %collapsed_40 = tensor.collapse_shape %0 [[0, 1]] : tensor<12x4xi64> into tensor<48xi64>
    %alloc_41 = memref.alloc() : memref<4x7xf16>
    %167 = tensor.empty() : tensor<12x7xf16>
    %168 = linalg.matmul ins(%147, %alloc_41 : tensor<12x4xf16>, memref<4x7xf16>) outs(%167 : tensor<12x7xf16>) -> tensor<12x7xf16>
    %169 = arith.minui %82, %extracted : i16
    %170 = vector.broadcast %c266860443_i64 : i64 to vector<i64>
    %171 = vector.transfer_write %170, %collapsed_40[%51] : vector<i64>, tensor<48xi64>
    %c1621822581_i64 = arith.constant 1621822581 : i64
    %172 = arith.shrsi %c-14955_i16, %extracted : i16
    %extracted_42 = tensor.extract %9[%c4, %c1] : tensor<12x4xf32>
    %173 = math.cttz %0 : tensor<12x4xi64>
    %cast = tensor.cast %expanded : tensor<12x7x4x1xf16> to tensor<?x?x?x?xf16>
    vector.print %142 : vector<12x7x4xf32>
    %174 = vector.broadcast %c2083202933_i32 : i32 to vector<4xi32>
    %dest, %accumulated_value = vector.scan <add>, %150, %174 {inclusive = true, reduction_dim = 0 : i64} : vector<12x4xi32>, vector<4xi32>
    %175 = index.casts %c5 : index to i32
    memref.assume_alignment %alloc_17, 1 : memref<12x4xf32>
    %c704_i16 = arith.constant 704 : i16
    %176 = scf.execute_region -> i16 {
      %258 = arith.addf %cst_2, %cst : f16
      %259 = math.atan %extracted_42 : f32
      scf.if %false {
        %274 = index.divs %c6, %c11
        affine.store %82, %96[%c15, %c14] : memref<12x4xi16>
        %collapsed_55 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<12x7x4xf32> into tensor<84x4xf32>
        %275 = index.sub %90, %120
        %276 = math.tanh %cst_3 : f32
        %277 = arith.addf %cst_7, %cst_5 : f16
        %278 = math.ceil %9 : tensor<12x4xf32>
        %279 = index.ceildivs %135, %c9
      } else {
        %274 = index.sub %143, %c5
        %275 = vector.load %alloc_13[%c6, %c1, %c3] : memref<12x7x4xf16>, vector<2x12x2xf16>
        %276 = math.exp2 %cst : f16
        %277 = vector.matrix_multiply %164, %164 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %278 = memref.realloc %alloc_25 : memref<4xf32> to memref<12xf32>
        %cast_55 = tensor.cast %11 : tensor<4xi64> to tensor<?xi64>
        %279 = vector.broadcast %cst_4 : f32 to vector<7xf32>
        %280 = vector.broadcast %false : i1 to vector<7xi1>
        %281 = vector.maskedload %alloc_9[%c6, %c2], %280, %279 : memref<12x4xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %282 = index.ceildivu %c2, %c12
      }
      %260 = tensor.empty() : tensor<84x4xf32>
      %mapped_53 = linalg.map ins(%collapsed_31, %collapsed_31 : tensor<84x4xf32>, tensor<84x4xf32>) outs(%260 : tensor<84x4xf32>)
        (%in: f32, %in_55: f32) {
          %274 = arith.divsi %c2083202933_i32, %c647584757_i32 : i32
          %275 = arith.addf %cst_0, %cst_1 : f16
          %276 = vector.reduction <minf>, %50 : vector<4xf32> into f32
          %c447500667_i32 = arith.constant 447500667 : i32
          vector.print %149 : vector<12x4xi1>
          %277 = affine.load %alloc_9[%c6, %c12] : memref<12x4xf32>
          %278 = vector.broadcast %277 : f32 to vector<2xf32>
          %279 = vector.multi_reduction <mul>, %102, %278 [1, 2] : vector<2x12x2xf32> to vector<2xf32>
          %280 = vector.insertelement %c266860443_i64, %25[%33 : index] : vector<2xi64>
          %281 = index.sub %166, %152
          %282 = index.castu %c2 : index to i32
          %283 = arith.shli %c-14955_i16, %c-14955_i16 : i16
          %284 = vector.broadcast %c266860443_i64 : i64 to vector<4xi64>
          %285 = vector.maskedload %alloc_24[%c0, %c3], %18, %284 : memref<12x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %286 = tensor.empty() : tensor<12x4xi32>
          memref.assume_alignment %alloc_10, 8 : memref<2x12x2xf32>
          %alloca_56 = memref.alloca() : memref<12x4xi1>
          %287 = vector.broadcast %c647584757_i32 : i32 to vector<12xi32>
          %dest_57, %accumulated_value_58 = vector.scan <minui>, %150, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<12x4xi32>, vector<12xi32>
          %288 = vector.extract_strided_slice %21 {offsets = [5], sizes = [6], strides = [1]} : vector<12x4xf32> to vector<6x4xf32>
          affine.store %extracted, %alloc_16[%c14, %c10, %c3] : memref<2x12x2xi16>
          %289 = math.floor %cst_7 : f16
          %from_elements = tensor.from_elements %extracted_42, %in_55, %in_55, %in_55, %in, %in_55, %in, %in, %277, %extracted_42, %extracted_42, %in, %in, %cst_3, %extracted_42, %cst_3, %in_55, %extracted_42, %cst_3, %in, %extracted_42, %extracted_42, %cst_3, %cst_3, %cst_3, %cst_3, %extracted_42, %in_55, %in, %277, %extracted_42, %extracted_42, %in_55, %in, %in_55, %extracted_42, %in_55, %cst_3, %cst_4, %cst_4, %extracted_42, %277, %extracted_42, %in_55, %cst_3, %cst_3, %cst_3, %in, %cst_4, %extracted_42, %277, %cst_3, %cst_3, %cst_3, %in_55, %cst_4, %cst_4, %cst_3, %in_55, %cst_4, %277, %in, %cst_4, %in, %in, %in_55, %cst_3, %in, %in, %cst_4, %extracted_42, %cst_4, %277, %extracted_42, %cst_3, %in, %in, %cst_4, %extracted_42, %in, %cst_3, %extracted_42, %277, %cst_3, %cst_4, %277, %277, %cst_3, %in_55, %in_55, %277, %extracted_42, %in_55, %cst_4, %cst_4, %in_55, %cst_4, %extracted_42, %277, %extracted_42, %in, %extracted_42, %277, %cst_3, %in_55, %cst_4, %extracted_42, %cst_3, %cst_4, %extracted_42, %extracted_42, %cst_3, %277, %cst_4, %extracted_42, %in_55, %cst_4, %in, %in_55, %in_55, %cst_4, %in_55, %in, %extracted_42, %extracted_42, %extracted_42, %in, %in, %in, %cst_3, %cst_4, %cst_3, %extracted_42, %cst_3, %cst_4, %in, %extracted_42, %extracted_42, %cst_3, %cst_3, %277, %in, %277, %in, %cst_3, %in_55, %in_55, %277, %cst_4, %cst_4, %277, %in_55, %extracted_42, %in, %277, %extracted_42, %in_55, %cst_4, %in_55, %277, %cst_3, %277, %in_55, %in_55, %cst_4, %in_55, %cst_4, %extracted_42, %cst_4, %in_55, %in, %in_55, %cst_3, %cst_4, %extracted_42, %in_55, %in, %in_55, %cst_3, %in_55, %in_55, %cst_4, %cst_3, %extracted_42, %cst_4, %in, %277, %in, %277, %extracted_42, %277, %277, %in_55, %in, %in, %in, %cst_3, %cst_3, %in_55, %in, %277, %cst_3, %cst_4, %cst_4, %in_55, %cst_3, %in, %cst_4, %in_55, %extracted_42, %cst_4, %277, %in_55, %cst_4, %in_55, %277, %277, %in_55, %extracted_42, %in_55, %277, %extracted_42, %277, %extracted_42, %cst_4, %extracted_42, %in, %in_55, %277, %in, %extracted_42, %extracted_42, %extracted_42, %extracted_42, %cst_3, %extracted_42, %cst_3, %cst_3, %cst_4, %extracted_42, %in, %cst_3, %in, %extracted_42, %in, %in_55, %in_55, %277, %cst_3, %in, %extracted_42, %in, %in, %cst_3, %in_55, %cst_3, %in_55, %cst_3, %cst_3, %277, %in, %cst_3, %cst_4, %cst_4, %cst_4, %in_55, %in_55, %cst_3, %in, %in, %in_55, %cst_3, %in_55, %in, %277, %in_55, %in, %277, %in, %277, %cst_4, %in_55, %in, %277, %in, %cst_3, %cst_3, %cst_3, %277, %extracted_42, %in, %277, %in, %cst_4, %cst_3, %extracted_42, %cst_4, %cst_4, %in, %in, %extracted_42, %cst_4, %cst_4, %277, %in, %in, %in, %cst_3, %in, %in, %in, %in, %cst_4, %cst_4, %cst_3, %in_55, %cst_3, %in, %in_55, %in_55, %in, %in_55, %extracted_42, %extracted_42, %cst_4, %277, %277, %in_55, %in, %in, %cst_3, %extracted_42, %cst_4, %cst_4, %277, %in : tensor<12x7x4xf32>
          %290 = arith.negf %in_55 : f32
          %291 = vector.multi_reduction <maxsi>, %284, %c266860443_i64 [0] : vector<4xi64> to i64
          bufferization.dealloc_tensor %16 : tensor<12x7x4xf32>
          %292 = index.divs %c12, %44
          %293 = index.floordivs %73, %c7
          %294 = math.log %15 : tensor<12x7x4xf16>
          %295 = math.expm1 %expanded : tensor<12x7x4x1xf16>
          %296 = math.expm1 %10 : tensor<12x7x4xf32>
          %297 = math.log %64 : tensor<2x12x2xf32>
          %298 = vector.broadcast %in_55 : f32 to vector<12xf32>
          %299 = vector.maskedload %137[%c11, %c0], %23, %298 : memref<12x4xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
          %300 = arith.maxui %c2083202933_i32, %c647584757_i32 : i32
          %301 = math.absi %4 : tensor<12x7x4xi64>
          %cst_59 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_59 : f32
        }
      %261 = arith.cmpf ule, %cst_5, %cst_1 : f16
      %262 = vector.broadcast %extracted_42 : f32 to vector<5x7xf32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %107, %153, %262 : vector<5x7x4xf32>, vector<4xf32> into vector<5x7xf32>
      %264 = math.ctlz %155 : tensor<4xi64>
      %265 = bufferization.clone %alloc_18 : memref<12x7x4xi64> to memref<12x7x4xi64>
      %266 = tensor.empty(%c14, %166, %c3) : tensor<?x?x?xi32>
      %267 = math.sqrt %9 : tensor<12x4xf32>
      %268 = arith.divsi %true_37, %true : i1
      %269 = tensor.empty() : tensor<12x4xi32>
      %mapped_54 = linalg.map ins(%splat_36, %alloc_19, %alloc_19 : tensor<12x4xi32>, memref<12x4xi32>, memref<12x4xi32>) outs(%269 : tensor<12x4xi32>)
        (%in: i32, %in_55: i32, %in_56: i32) {
          %274 = index.casts %82 : i16 to index
          %275 = vector.broadcast %in_56 : i32 to vector<12x4xi32>
          %276 = math.cttz %true_37 : i1
          %277 = vector.extract_strided_slice %38 {offsets = [10], sizes = [1], strides = [1]} : vector<12x7x4xf32> to vector<1x7x4xf32>
          %278 = index.maxs %c13, %rank
          %279 = arith.divf %extracted_42, %cst_4 : f32
          %280 = index.divs %44, %c1
          %281 = vector.insertelement %c266860443_i64, %24[%135 : index] : vector<12xi64>
          %282 = arith.divf %cst_0, %cst_0 : f16
          %283 = arith.addf %extracted_42, %extracted_42 : f32
          %284 = math.tanh %9 : tensor<12x4xf32>
          %285 = index.divs %c10, %135
          %286 = bufferization.clone %alloc_25 : memref<4xf32> to memref<4xf32>
          %287 = arith.remui %c1477813002_i32, %c1477813002_i32 : i32
          %alloca_57 = memref.alloca() : memref<12x7x4xi32>
          %288 = index.castu %c10 : index to i32
          %alloc_58 = memref.alloc() : memref<12x7x4xf16>
          %289 = arith.shrui %82, %82 : i16
          %290 = memref.atomic_rmw mulf %cst_4, %286[%c1] : (f32, memref<4xf32>) -> f32
          %291 = vector.multi_reduction <add>, %103, %extracted_42 [0, 1, 2] : vector<2x12x2xf32> to f32
          %alloca_59 = memref.alloca() : memref<12x7x4xi1>
          %292 = arith.shli %extracted, %extracted : i16
          %293 = index.sub %77, %c0
          %294 = arith.minsi %c647584757_i32, %c647584757_i32 : i32
          %expanded_60 = tensor.expand_shape %48 [[0], [1], [2, 3]] : tensor<12x7x4xf16> into tensor<12x7x4x1xf16>
          %295 = math.ipowi %c266860443_i64, %c266860443_i64 : i64
          %296 = index.sub %31, %c8
          %297 = vector.broadcast %cst_5 : f16 to vector<4xf16>
          memref.store %false, %alloc_14[%c1] : memref<4xi1>
          %298 = index.ceildivu %31, %c2
          %299 = arith.addf %cst_3, %extracted_42 : f32
          %cst_61 = arith.constant 1.6035849E+9 : f32
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %270 = memref.atomic_rmw assign %cst, %67[%c1, %c3, %c0] : (f16, memref<2x12x2xf16>) -> f16
      %271 = math.log2 %15 : tensor<12x7x4xf16>
      %272 = math.ceil %19 : tensor<f32>
      %273 = arith.ceildivsi %extracted, %extracted : i16
      scf.yield %extracted : i16
    }
    %cast_43 = tensor.cast %16 : tensor<12x7x4xf32> to tensor<?x?x?xf32>
    %177 = math.cttz %3 : tensor<12x4xi16>
    %178 = arith.shrui %false, %true : i1
    %179 = index.mul %c3, %83
    %180 = arith.ori %true, %false : i1
    %181 = index.mul %56, %135
    %182 = math.round %cst_0 : f16
    %collapsed_44 = tensor.collapse_shape %59 [[0, 1], [2]] : tensor<2x12x2xi32> into tensor<24x2xi32>
    %false_45 = index.bool.constant false
    %183 = math.exp2 %cst_7 : f16
    %cst_46 = arith.constant 1.910400e+04 : f16
    %184 = vector.broadcast %cst : f16 to vector<12xf16>
    %185 = vector.maskedload %67[%c1, %c6, %c0], %23, %184 : memref<2x12x2xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
    %186 = bufferization.clone %alloc_9 : memref<12x4xf32> to memref<12x4xf32>
    %187 = math.round %9 : tensor<12x4xf32>
    %188 = vector.broadcast %extracted_42 : f32 to vector<4xf32>
    %189 = vector.fma %188, %188, %50 : vector<4xf32>
    %190 = arith.addf %cst_3, %cst_3 : f32
    %191 = math.floor %1 : tensor<2x12x2xf32>
    %cst_47 = arith.constant 4.528000e+04 : f16
    %192 = tensor.empty() : tensor<12x4xf32>
    %193 = math.tan %9 : tensor<12x4xf32>
    %194 = index.ceildivs %c11, %166
    %195 = arith.remui %c1477813002_i32, %c1477813002_i32 : i32
    %196 = index.sub %135, %135
    %197 = tensor.empty() : tensor<4x12xf32>
    %198 = tensor.empty() : tensor<12x12xf32>
    %199 = linalg.matmul ins(%192, %197 : tensor<12x4xf32>, tensor<4x12xf32>) outs(%198 : tensor<12x12xf32>) -> tensor<12x12xf32>
    %200 = arith.maxui %extracted, %extracted : i16
    %201 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
    %202 = arith.maxui %true_37, %false_45 : i1
    %203 = math.sqrt %9 : tensor<12x4xf32>
    %204 = vector.reduction <maxsi>, %27 : vector<2xi64> into i64
    %205 = vector.extract %149[6] : vector<12x4xi1>
    %206 = tensor.empty() : tensor<2x12x2xf16>
    %mapped_48 = linalg.map ins(%67, %67, %67 : memref<2x12x2xf16>, memref<2x12x2xf16>, memref<2x12x2xf16>) outs(%206 : tensor<2x12x2xf16>)
      (%in: f16, %in_53: f16, %in_54: f16) {
        %258 = scf.while (%arg2 = %alloc_22) : (memref<2x12x2xi16>) -> memref<2x12x2xi16> {
          %284 = vector.broadcast %in_54 : f16 to vector<2x12x2xf16>
          %285 = vector.broadcast %extracted : i16 to vector<4xi16>
          %286 = memref.realloc %alloc_14 : memref<4xi1> to memref<2xi1>
          %287 = index.sub %194, %33
          %288 = bufferization.clone %alloc_25 : memref<4xf32> to memref<4xf32>
          %289 = arith.floordivsi %c-14955_i16, %extracted : i16
          %290 = math.log %in : f16
          %291 = vector.broadcast %c12 : index to vector<12xindex>
          %292 = vector.broadcast %extracted_42 : f32 to vector<12xf32>
          vector.scatter %139[%c1, %c4, %c2] [%291], %23, %292 : memref<4x12x7xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
          scf.condition(%true_37) %alloc_22 : memref<2x12x2xi16>
        } do {
        ^bb0(%arg2: memref<2x12x2xi16>):
          %alloca_60 = memref.alloca() : memref<2x12x2xf32>
          %splat_61 = tensor.splat %true : tensor<12x4xi1>
          memref.copy %96, %alloc_21 : memref<12x4xi16> to memref<12x4xi16>
          %284 = arith.remf %extracted_42, %extracted_42 : f32
          %285 = vector.broadcast %cst_3 : f32 to vector<7x4xf32>
          %286 = vector.insert %285, %38 [5] : vector<7x4xf32> into vector<12x7x4xf32>
          %287 = vector.create_mask %166, %120, %152 : vector<2x12x2xi1>
          %288 = index.casts %c14 : index to i32
          bufferization.dealloc_tensor %13 : tensor<12x7x4xi16>
          bufferization.dealloc_tensor %13 : tensor<12x7x4xi16>
          memref.assume_alignment %alloc_10, 2 : memref<2x12x2xf32>
          %289 = vector.extract_strided_slice %189 {offsets = [0], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
          %290 = math.cos %9 : tensor<12x4xf32>
          %291 = index.floordivs %c1, %140
          %292 = arith.minui %c647584757_i32, %c647584757_i32 : i32
          %293 = arith.maxui %extracted, %176 : i16
          %294 = vector.broadcast %176 : i16 to vector<12x4xi16>
          %295 = vector.transfer_write %294, %8[%51, %33, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x4xi16>, tensor<2x12x2xi16>
          scf.yield %alloc_16 : memref<2x12x2xi16>
        }
        %259 = vector.insertelement %false, %26[%56 : index] : vector<2xi1>
        %260 = math.cttz %13 : tensor<12x7x4xi16>
        %alloca_55 = memref.alloca() : memref<12x7x4xi64>
        %261 = arith.cmpf ole, %cst_5, %cst_2 : f16
        %262 = memref.atomic_rmw muli %176, %145[%c1, %c6, %c1] : (i16, memref<2x12x2xi16>) -> i16
        %263 = arith.addf %cst, %in_53 : f16
        %264 = index.castu %c1477813002_i32 : i32 to index
        %265 = arith.minf %in, %cst : f16
        %266 = index.mul %c3, %73
        %267 = index.castu %c325626252_i32 : i32 to index
        %268 = math.floor %in_53 : f16
        %269 = index.sub %181, %56
        %270 = math.floor %cst_2 : f16
        %271 = math.cttz %c1477813002_i32 : i32
        %collapsed_56 = tensor.collapse_shape %3 [[0, 1]] : tensor<12x4xi16> into tensor<48xi16>
        %272 = arith.shrui %true, %false_45 : i1
        %273 = index.sizeof
        %274 = index.divs %77, %c0
        %275 = arith.xori %c647584757_i32, %c1477813002_i32 : i32
        %276 = arith.addf %cst_3, %cst_4 : f32
        %277 = affine.load %alloc_14[%c8] : memref<4xi1>
        memref.copy %alloc_17, %alloc_9 : memref<12x4xf32> to memref<12x4xf32>
        %generated_57 = tensor.generate %143, %140 {
        ^bb0(%arg2: index, %arg3: index):
          %284 = arith.andi %c647584757_i32, %c1477813002_i32 : i32
          %285 = bufferization.clone %alloc_8 : memref<12x7x4xi64> to memref<12x7x4xi64>
          %collapsed_60 = tensor.collapse_shape %generated_27 [[0, 1], [2]] : tensor<?x?x?xi1> into tensor<?x?xi1>
          %286 = affine.max affine_map<(d0, d1) -> (0, d1 * 8, d1 * 8)>(%124, %166)
          tensor.yield %c-14955_i16 : i16
        } : tensor<?x?xi16>
        %278 = arith.andi %extracted, %176 : i16
        %279 = affine.load %alloc_20[%c14, %c10] : memref<12x4xi64>
        %280 = math.cttz %34 : tensor<12x7x4xi64>
        %281 = vector.create_mask %266, %77 : vector<12x4xi1>
        %282 = vector.broadcast %true_37 : i1 to vector<12x7x4xi1>
        %283 = scf.while (%arg2 = %139) : (memref<4x12x7xf32>) -> memref<4x12x7xf32> {
          %284 = arith.cmpf ueq, %cst_5, %cst_7 : f16
          %285 = arith.cmpi ugt, %true_6, %false : i1
          %286 = arith.shrsi %c-14955_i16, %c-14955_i16 : i16
          %287 = math.sqrt %7 : tensor<2x12x2xf32>
          %288 = memref.atomic_rmw maxu %c266860443_i64, %alloc_12[%c11, %c1] : (i64, memref<12x4xi64>) -> i64
          %289 = arith.shrsi %true_6, %false : i1
          %290 = arith.muli %true_37, %false_45 : i1
          %alloc_60 = memref.alloc() : memref<12x4xi1>
          scf.condition(%true_37) %alloc_23 : memref<4x12x7xf32>
        } do {
        ^bb0(%arg2: memref<4x12x7xf32>):
          %284 = bufferization.to_memref %2 : memref<12x7x4xi16>
          %cst_60 = arith.constant 1.97953946E+9 : f32
          %285 = arith.cmpf oge, %in, %cst_0 : f16
          %286 = math.exp %10 : tensor<12x7x4xf32>
          %287 = index.ceildivu %c11, %79
          %288 = bufferization.to_tensor %alloc_18 : memref<12x7x4xi64>
          %289 = math.floor %7 : tensor<2x12x2xf32>
          %290 = index.divs %51, %166
          %291 = math.cttz %155 : tensor<4xi64>
          %292 = arith.andi %true_37, %true_6 : i1
          %293 = arith.cmpf ule, %cst_7, %in_53 : f16
          %294 = math.fma %48, %15, %48 : tensor<12x7x4xf16>
          %295 = index.maxs %83, %c6
          %296 = index.floordivs %c1, %295
          %297 = arith.shrui %277, %false_45 : i1
          %298 = vector.extract_strided_slice %205 {offsets = [0], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
          scf.yield %139 : memref<4x12x7xf32>
        }
        %cast_58 = tensor.cast %12 : tensor<4xi64> to tensor<?xi64>
        bufferization.dealloc_tensor %19 : tensor<f32>
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    %207 = tensor.empty(%90) : tensor<?xi32>
    %208 = affine.max affine_map<(d0, d1, d2) -> ((d1 * 16) floordiv 32)>(%124, %rank, %152)
    %209 = bufferization.clone %alloc_18 : memref<12x7x4xi64> to memref<12x7x4xi64>
    %210 = math.log %cst_3 : f32
    %211 = vector.extract_strided_slice %163 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
    %212 = index.ceildivu %73, %c6
    %213 = index.floordivs %c12, %c13
    %214 = vector.broadcast %44 : index to vector<12xindex>
    %215 = vector.broadcast %extracted_42 : f32 to vector<12xf32>
    vector.scatter %alloc_25[%c3] [%214], %23, %215 : memref<4xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    bufferization.dealloc_tensor %14 : tensor<12x7x4xi16>
    %216 = affine.load %alloc_23[%c11, %c7, %c9] : memref<4x12x7xf32>
    %217 = math.sqrt %10 : tensor<12x7x4xf32>
    %218 = tensor.empty() : tensor<4xf32>
    %219 = index.castu %82 : i16 to index
    %splat_49 = tensor.splat %true : tensor<2x12x2xi1>
    %220 = index.floordivs %213, %c1
    %221 = math.log2 %1 : tensor<2x12x2xf32>
    %222 = index.floordivs %c4, %49
    %223 = arith.minsi %true, %false_45 : i1
    %224 = arith.andi %c647584757_i32, %c325626252_i32 : i32
    %225 = math.rsqrt %extracted_42 : f32
    %226 = index.maxu %208, %c2
    %227 = math.powf %cst_4, %cst_4 : f32
    %228 = vector.broadcast %c14 : index to vector<12xindex>
    %229 = vector.broadcast %extracted : i16 to vector<12xi16>
    vector.scatter %alloc_21[%c5, %c3] [%228], %23, %229 : memref<12x4xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
    %230 = index.add %44, %31
    %c0_i64 = arith.constant 0 : i64
    %231 = vector.transfer_read %155[%c15], %c0_i64 : tensor<4xi64>, vector<i64>
    %232 = vector.broadcast %181 : index to vector<4xindex>
    vector.scatter %alloc_22[%c0, %c11, %c0] [%232], %18, %163 : memref<2x12x2xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
    %233 = arith.andi %82, %82 : i16
    memref.copy %alloc_11, %96 : memref<12x4xi16> to memref<12x4xi16>
    %234 = arith.shrsi %c266860443_i64, %c0_i64 : i64
    %235 = affine.if affine_set<(d0) : (d0 == 0, d0 * 32 >= 0)>(%c15) -> f32 {
      %258 = affine.min affine_map<(d0, d1) -> (d1, d0)>(%79, %120)
      %259 = index.sub %73, %c0
      %260 = affine.max affine_map<(d0, d1) -> ((d0 + 4) * 8, (d0 + 4) * 8)>(%73, %73)
      %261 = index.maxs %166, %259
      %262 = index.ceildivs %c9, %c5
      %263 = index.sizeof
      %alloca_53 = memref.alloca() : memref<4xf32>
      %264 = arith.maxui %c1477813002_i32, %c647584757_i32 : i32
      affine.yield %cst_3 : f32
    } else {
      %258 = index.maxs %196, %124
      %259 = tensor.empty(%51) : tensor<?xi16>
      %260 = index.ceildivs %49, %c10
      %261 = math.log %1 : tensor<2x12x2xf32>
      %262 = arith.ori %c2083202933_i32, %c2083202933_i32 : i32
      %263 = math.log10 %64 : tensor<2x12x2xf32>
      %264 = arith.remui %176, %82 : i16
      %265 = index.casts %true : i1 to index
      affine.yield %cst_4 : f32
    }
    %236 = vector.broadcast %extracted_42 : f32 to vector<2x12xf32>
    %237 = vector.multi_reduction <add>, %103, %236 [2] : vector<2x12x2xf32> to vector<2x12xf32>
    %alloc_50 = memref.alloc() : memref<4x12xf16>
    %238 = tensor.empty() : tensor<12x12xf16>
    %239 = linalg.matmul ins(%147, %alloc_50 : tensor<12x4xf16>, memref<4x12xf16>) outs(%238 : tensor<12x12xf16>) -> tensor<12x12xf16>
    %240 = bufferization.clone %alloc_24 : memref<12x4xi64> to memref<12x4xi64>
    %241 = arith.shli %true, %false_45 : i1
    %242 = vector.insertelement %176, %211[%196 : index] : vector<2xi16>
    %243 = scf.while (%arg2 = %236) : (vector<2x12xf32>) -> vector<2x12xf32> {
      memref.store %c266860443_i64, %alloc_18[%c11, %c0, %c2] : memref<12x7x4xi64>
      %258 = vector.broadcast %c14 : index to vector<7xindex>
      %259 = vector.broadcast %true_6 : i1 to vector<7xi1>
      %260 = vector.broadcast %cst_4 : f32 to vector<7xf32>
      vector.scatter %alloc_9[%c2, %c0] [%258], %259, %260 : memref<12x4xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      %261 = scf.if %true -> (memref<12x4xf16>) {
        %alloca_54 = memref.alloca() : memref<12x4xi32>
        %267 = math.expm1 %1 : tensor<2x12x2xf32>
        %268 = arith.remui %false, %true_37 : i1
        %269 = index.sizeof
        %270 = index.ceildivu %c14, %56
        %271 = arith.andi %true_6, %true_6 : i1
        %272 = vector.broadcast %c13 : index to vector<4xindex>
        vector.scatter %alloc_14[%c2] [%272], %18, %18 : memref<4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %273 = bufferization.clone %alloc_11 : memref<12x4xi16> to memref<12x4xi16>
        %alloc_55 = memref.alloc() : memref<12x4xf16>
        scf.yield %alloc_55 : memref<12x4xf16>
      } else {
        %267 = tensor.empty() : tensor<2x2xi32>
        %268 = tensor.empty() : tensor<24x2xi32>
        %269 = linalg.matmul ins(%collapsed_44, %267 : tensor<24x2xi32>, tensor<2x2xi32>) outs(%268 : tensor<24x2xi32>) -> tensor<24x2xi32>
        %cast_54 = tensor.cast %14 : tensor<12x7x4xi16> to tensor<?x?x?xi16>
        %270 = math.ctpop %268 : tensor<24x2xi32>
        %271 = index.sizeof
        %272 = vector.maskedload %alloc_20[%c11, %c3], %26, %25 : memref<12x4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %273 = arith.addf %extracted_42, %216 : f32
        %274 = tensor.empty(%79, %79) : tensor<?x?x2xi32>
        %from_elements = tensor.from_elements %176, %176, %82, %176, %176, %176, %82, %82, %c-14955_i16, %c-14955_i16, %82, %extracted, %extracted, %extracted, %82, %c-14955_i16, %c-14955_i16, %176, %extracted, %176, %c-14955_i16, %extracted, %extracted, %c-14955_i16, %176, %c-14955_i16, %176, %176, %extracted, %82, %176, %176, %82, %c-14955_i16, %82, %c-14955_i16, %82, %176, %extracted, %extracted, %176, %82, %c-14955_i16, %c-14955_i16, %extracted, %82, %176, %c-14955_i16, %extracted, %176, %c-14955_i16, %82, %82, %82, %176, %c-14955_i16, %82, %82, %extracted, %176, %176, %82, %c-14955_i16, %extracted, %82, %extracted, %c-14955_i16, %176, %176, %82, %176, %c-14955_i16, %176, %82, %c-14955_i16, %82, %c-14955_i16, %extracted, %176, %extracted, %extracted, %extracted, %176, %c-14955_i16, %82, %c-14955_i16, %c-14955_i16, %c-14955_i16, %176, %82, %82, %extracted, %82, %82, %82, %82, %c-14955_i16, %82, %82, %extracted, %c-14955_i16, %176, %c-14955_i16, %176, %82, %extracted, %176, %c-14955_i16, %82, %c-14955_i16, %extracted, %82, %extracted, %extracted, %c-14955_i16, %extracted, %c-14955_i16, %c-14955_i16, %extracted, %176, %c-14955_i16, %extracted, %82, %176, %82, %c-14955_i16, %extracted, %82, %c-14955_i16, %176, %82, %82, %c-14955_i16, %82, %82, %82, %82, %82, %176, %82, %82, %176, %176, %176, %c-14955_i16, %176, %c-14955_i16, %extracted, %extracted, %extracted, %176, %82, %c-14955_i16, %176, %c-14955_i16, %176, %82, %c-14955_i16, %extracted, %176, %82, %c-14955_i16, %176, %extracted, %extracted, %82, %82, %extracted, %82, %c-14955_i16, %82, %extracted, %82, %176, %82, %extracted, %extracted, %82, %extracted, %176, %c-14955_i16, %extracted, %extracted, %extracted, %extracted, %82, %82, %176, %extracted, %extracted, %82, %176, %176, %82, %176, %extracted, %c-14955_i16, %82, %82, %extracted, %extracted, %c-14955_i16, %c-14955_i16, %extracted, %82, %extracted, %82, %extracted, %82, %extracted, %176, %82, %c-14955_i16, %extracted, %extracted, %extracted, %c-14955_i16, %82, %82, %176, %c-14955_i16, %82, %176, %82, %176, %82, %176, %extracted, %82, %extracted, %82, %c-14955_i16, %extracted, %extracted, %82, %82, %extracted, %extracted, %176, %extracted, %176, %82, %extracted, %extracted, %c-14955_i16, %extracted, %c-14955_i16, %176, %c-14955_i16, %82, %extracted, %extracted, %extracted, %extracted, %c-14955_i16, %176, %176, %82, %82, %c-14955_i16, %c-14955_i16, %176, %extracted, %176, %176, %c-14955_i16, %c-14955_i16, %82, %176, %176, %176, %extracted, %176, %c-14955_i16, %176, %extracted, %c-14955_i16, %82, %176, %c-14955_i16, %82, %176, %176, %176, %c-14955_i16, %82, %82, %extracted, %extracted, %82, %c-14955_i16, %extracted, %c-14955_i16, %extracted, %176, %82, %176, %extracted, %c-14955_i16, %c-14955_i16, %c-14955_i16, %c-14955_i16, %c-14955_i16, %extracted, %82, %c-14955_i16, %extracted, %82, %82, %82, %extracted, %extracted, %extracted, %176, %extracted, %176, %c-14955_i16, %c-14955_i16, %82, %extracted, %82, %c-14955_i16, %82, %82, %82, %c-14955_i16, %c-14955_i16, %c-14955_i16, %extracted, %82, %extracted, %c-14955_i16, %176, %extracted, %176, %176 : tensor<12x7x4xi16>
        %alloc_55 = memref.alloc() : memref<12x4xf16>
        scf.yield %alloc_55 : memref<12x4xf16>
      }
      %262 = vector.broadcast %c3 : index to vector<2xindex>
      %263 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      vector.scatter %alloc_23[%c0, %c3, %c5] [%262], %26, %263 : memref<4x12x7xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %cast_53 = tensor.cast %13 : tensor<12x7x4xi16> to tensor<?x?x?xi16>
      %264 = bufferization.to_memref %218 : memref<4xf32>
      %265 = vector.extract %148[0] : vector<12x4xf16>
      %266 = arith.addf %cst_3, %cst_3 : f32
      scf.condition(%false_45) %236 : vector<2x12xf32>
    } do {
    ^bb0(%arg2: vector<2x12xf32>):
      %258 = affine.for %arg3 = 0 to 75 iter_args(%arg4 = %120) -> (index) {
        affine.yield %73 : index
      }
      %259 = vector.multi_reduction <maxsi>, %211, %c-14955_i16 [0] : vector<2xi16> to i16
      %260 = arith.maxui %false_45, %false : i1
      memref.store %c266860443_i64, %alloc_24[%c7, %c1] : memref<12x4xi64>
      %261 = vector.extract_strided_slice %23 {offsets = [7], sizes = [5], strides = [1]} : vector<12xi1> to vector<5xi1>
      %extracted_53 = tensor.extract %10[%c4, %c3, %c1] : tensor<12x7x4xf32>
      %262 = vector.load %alloc_15[%c0, %c9, %c0] : memref<2x12x2xi1>, vector<2x12x2xi1>
      %263 = arith.shrsi %true_37, %true_6 : i1
      %264 = math.powf %collapsed_31, %collapsed_31 : tensor<84x4xf32>
      scf.if %true_37 {
        %269 = index.mul %140, %143
        %false_56 = arith.constant false
        %270 = arith.ori %c0_i64, %c266860443_i64 : i64
        %271 = arith.shrui %c325626252_i32, %c325626252_i32 : i32
        %272 = arith.minsi %c325626252_i32, %c325626252_i32 : i32
        %273 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c10, %c14, %36, %230)
        %274 = math.powf %19, %19 : tensor<f32>
        %275 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 16)>(%213, %77, %273)
      } else {
        %269 = math.expm1 %cst_4 : f32
        %270 = index.ceildivu %212, %140
        %271 = index.sub %79, %c7
        %272 = vector.extract_strided_slice %236 {offsets = [0], sizes = [1], strides = [1]} : vector<2x12xf32> to vector<1x12xf32>
        %273 = arith.minsi %false, %true : i1
        %274 = math.exp2 %15 : tensor<12x7x4xf16>
        %275 = arith.remui %c-14955_i16, %c-14955_i16 : i16
        %276 = arith.shli %82, %extracted : i16
      }
      %265 = index.maxu %135, %124
      %266 = index.sizeof
      %generated_54 = tensor.generate %219, %c2, %c12 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %269 = math.ceil %15 : tensor<12x7x4xf16>
        %270 = math.exp %9 : tensor<12x4xf32>
        %271 = index.maxs %c1, %44
        %272 = arith.cmpf uge, %cst_5, %cst_7 : f16
        tensor.yield %false_45 : i1
      } : tensor<?x?x?xi1>
      %267 = vector.create_mask %196, %33, %c14 : vector<12x7x4xi1>
      %268 = index.ceildivu %33, %rank
      %extracted_55 = tensor.extract %collapsed[%c5] : tensor<48xi64>
      scf.yield %236 : vector<2x12xf32>
    }
    memref.store %cst_7, %67[%c1, %c4, %c0] : memref<2x12x2xf16>
    scf.index_switch %90 
    case 1 {
      %258 = vector.matrix_multiply %211, %211 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
      memref.store %c-14955_i16, %96[%c6, %c0] : memref<12x4xi16>
      %alloca_53 = memref.alloca() : memref<12x4xi1>
      %259 = vector.broadcast %true : i1 to vector<2x2xi1>
      %260 = vector.outerproduct %26, %26, %259 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
      %generated_54 = tensor.generate %94 {
      ^bb0(%arg2: index, %arg3: index):
        %273 = math.absi %11 : tensor<4xi64>
        %cst_57 = arith.constant 1.038400e+04 : f16
        %274 = math.round %192 : tensor<12x4xf32>
        %275 = index.mul %143, %140
        tensor.yield %c647584757_i32 : i32
      } : tensor<?x4xi32>
      %261 = index.ceildivu %c10, %94
      %262 = math.atan %147 : tensor<12x4xf16>
      %263 = arith.shrui %c325626252_i32, %c325626252_i32 : i32
      %cst_55 = arith.constant 1.000000e+00 : f32
      %cst_56 = arith.constant 0.000000e+00 : f32
      %264 = vector.transfer_read %1[%c8, %51, %222], %cst_56 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<2x12x2xf32>, vector<7xf32>
      %265 = arith.cmpf ule, %cst_4, %cst_55 : f32
      %266 = vector.broadcast %230 : index to vector<7xindex>
      %267 = vector.broadcast %true_6 : i1 to vector<7xi1>
      %268 = vector.broadcast %176 : i16 to vector<7xi16>
      vector.scatter %alloc_16[%c0, %c9, %c1] [%266], %267, %268 : memref<2x12x2xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      %269 = arith.ceildivsi %extracted, %extracted : i16
      %c-6823_i16 = arith.constant -6823 : i16
      %270 = index.sub %c3, %62
      %271 = math.atan2 %cst_3, %216 : f32
      %272 = affine.min affine_map<(d0, d1, d2, d3) -> (((d3 - 64) floordiv 128) mod 128, d0 - ((d3 - 64) floordiv 128) mod 128, (d3 - 64) floordiv 128)>(%c3, %79, %c1, %124)
      scf.yield
    }
    default {
      %alloc_53 = memref.alloc() : memref<2x12x2xi32>
      memref.copy %alloc, %alloc_53 : memref<2x12x2xi32> to memref<2x12x2xi32>
      %collapsed_54 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x4xi64> into tensor<84x4xi64>
      %258 = affine.max affine_map<(d0, d1) -> (-(d1 - d0), -d0 + 16)>(%c10, %c1)
      %259 = arith.addf %cst_2, %cst_7 : f16
      %260 = arith.floordivsi %82, %c-14955_i16 : i16
      %261 = index.divs %c10, %c4
      %generated_55 = tensor.generate %258, %230 {
      ^bb0(%arg2: index, %arg3: index):
        %268 = tensor.empty() : tensor<12x7x4xi32>
        %269 = math.fpowi %48, %268 : tensor<12x7x4xf16>, tensor<12x7x4xi32>
        %270 = index.add %83, %77
        bufferization.dealloc_tensor %9 : tensor<12x4xf32>
        %271 = index.divs %94, %31
        tensor.yield %c0_i64 : i64
      } : tensor<?x?xi64>
      affine.store %c266860443_i64, %alloc_18[%c2, %c3, %c3] : memref<12x7x4xi64>
      %262 = math.round %extracted_42 : f32
      %extracted_56 = tensor.extract %59[%c1, %c2, %c1] : tensor<2x12x2xi32>
      %collapsed_57 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<12x7x4xi16> into tensor<84x4xi16>
      %263 = bufferization.clone %186 : memref<12x4xf32> to memref<12x4xf32>
      %264 = index.divu %51, %124
      %265 = index.floordivs %c3, %258
      %266 = scf.index_switch %264 -> vector<12x7x4xi1> 
      case 1 {
        %268 = bufferization.clone %alloc_12 : memref<12x4xi64> to memref<12x4xi64>
        %269 = math.powf %9, %9 : tensor<12x4xf32>
        %270 = math.log %167 : tensor<12x7xf16>
        %271 = vector.insertelement %cst_0, %185[%c1 : index] : vector<12xf16>
        %272 = vector.matrix_multiply %205, %205 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %273 = vector.broadcast %216 : f32 to vector<4xf32>
        %274 = vector.fma %273, %189, %153 : vector<4xf32>
        %true_58 = arith.constant true
        %275 = vector.create_mask %c10, %140, %79 : vector<2x12x2xi1>
        %276 = affine.load %96[%c15, %c3] : memref<12x4xi16>
        %alloc_59 = memref.alloc() : memref<2x12x2xi64>
        %cst_60 = arith.constant 1.04478176E+9 : f32
        %277 = math.atan %collapsed_31 : tensor<84x4xf32>
        %alloc_61 = memref.alloc() : memref<4xi16>
        %278 = vector.broadcast %c-14955_i16 : i16 to vector<12x7x4xi16>
        %279 = vector.broadcast %true_6 : i1 to vector<12x7x4xi1>
        %280 = vector.broadcast %c2083202933_i32 : i32 to vector<12x7x4xi32>
        %281 = vector.gather %alloc_61[%140] [%280], %279, %278 : memref<4xi16>, vector<12x7x4xi32>, vector<12x7x4xi1>, vector<12x7x4xi16> into vector<12x7x4xi16>
        vector.print %107 : vector<5x7x4xf32>
        %282 = tensor.empty() : tensor<12x4xi1>
        %283 = math.atan %cst_4 : f32
        scf.yield %279 : vector<12x7x4xi1>
      }
      case 2 {
        %268 = arith.shrui %extracted, %176 : i16
        %269 = vector.reduction <minsi>, %23 : vector<12xi1> into i1
        memref.copy %145, %alloc_16 : memref<2x12x2xi16> to memref<2x12x2xi16>
        %270 = math.sqrt %147 : tensor<12x4xf16>
        %271 = index.maxs %c10, %rank
        %272 = index.divs %c12, %166
        %273 = math.powf %10, %10 : tensor<12x7x4xf32>
        %274 = arith.muli %true_37, %true : i1
        %275 = vector.broadcast %cst_1 : f16 to vector<12x7x4xf16>
        %276 = math.ctlz %splat_49 : tensor<2x12x2xi1>
        %277 = vector.insertelement %82, %211[%c0 : index] : vector<2xi16>
        vector.print %27 : vector<2xi64>
        %278 = math.ctlz %155 : tensor<4xi64>
        %279 = math.expm1 %5 : tensor<4xf32>
        %alloca_58 = memref.alloca() : memref<2x12x2xi16>
        memref.store %extracted, %alloc_16[%c0, %c10, %c0] : memref<2x12x2xi16>
        %280 = vector.broadcast %true : i1 to vector<12x7x4xi1>
        scf.yield %280 : vector<12x7x4xi1>
      }
      case 3 {
        %268 = index.floordivs %135, %57
        %alloca_58 = memref.alloca() : memref<2x12x2xi1>
        %269 = index.maxs %c0, %c7
        %270 = math.ceil %9 : tensor<12x4xf32>
        %271 = arith.addf %extracted_42, %cst_4 : f32
        %272 = memref.load %alloc_16[%c1, %c9, %c0] : memref<2x12x2xi16>
        %273 = math.round %9 : tensor<12x4xf32>
        %274 = index.add %265, %213
        %275 = math.sqrt %cst_4 : f32
        %cst_59 = arith.constant 4.467200e+04 : f16
        %276 = arith.minui %176, %extracted : i16
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 16)>(%196, %c7, %219)
        %278 = arith.cmpf false, %cst_3, %cst_3 : f32
        %279 = vector.insertelement %c0_i64, %100[%33 : index] : vector<1xi64>
        %280 = math.fma %9, %9, %9 : tensor<12x4xf32>
        %281 = math.tan %15 : tensor<12x7x4xf16>
        %282 = vector.broadcast %false : i1 to vector<12x7x4xi1>
        scf.yield %282 : vector<12x7x4xi1>
      }
      case 4 {
        %268 = arith.cmpf false, %cst, %cst_5 : f16
        %269 = math.powf %extracted_42, %cst_3 : f32
        %270 = math.ceil %206 : tensor<2x12x2xf16>
        %271 = arith.maxui %82, %c-14955_i16 : i16
        %272 = math.ctlz %6 : tensor<4xi16>
        %273 = index.ceildivs %c0, %166
        %274 = vector.broadcast %cst_4 : f32 to vector<5x7xf32>
        %dest_58, %accumulated_value_59 = vector.scan <minf>, %107, %274 {inclusive = true, reduction_dim = 2 : i64} : vector<5x7x4xf32>, vector<5x7xf32>
        %275 = arith.shrui %false_45, %true_37 : i1
        %276 = arith.cmpf oeq, %cst_2, %cst : f16
        %277 = math.log1p %10 : tensor<12x7x4xf32>
        %278 = vector.broadcast %cst_2 : f16 to vector<2x12x2xf16>
        %279 = arith.shrui %extracted, %176 : i16
        affine.store %true_6, %alloc_15[%c13, %c2, %c9] : memref<2x12x2xi1>
        %280 = index.ceildivu %94, %212
        %281 = math.cttz %c1477813002_i32 : i32
        %282 = vector.broadcast %cst_3 : f32 to vector<2xf32>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %236, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
        %283 = vector.broadcast %true : i1 to vector<12x7x4xi1>
        scf.yield %283 : vector<12x7x4xi1>
      }
      default {
        %268 = vector.multi_reduction <mul>, %102, %103 [] : vector<2x12x2xf32> to vector<2x12x2xf32>
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3)>(%49, %261, %179, %62)
        %alloc_58 = memref.alloc() : memref<12x7x4xi16>
        %270 = vector.broadcast %c-14955_i16 : i16 to vector<12x7x4xi16>
        %271 = vector.broadcast %false : i1 to vector<12x7x4xi1>
        %272 = vector.broadcast %extracted_56 : i32 to vector<12x7x4xi32>
        %273 = vector.gather %alloc_58[%36, %152, %264] [%272], %271, %270 : memref<12x7x4xi16>, vector<12x7x4xi32>, vector<12x7x4xi1>, vector<12x7x4xi16> into vector<12x7x4xi16>
        %274 = bufferization.clone %209 : memref<12x7x4xi64> to memref<12x7x4xi64>
        %275 = arith.shli %true_37, %true_37 : i1
        %276 = arith.addf %216, %extracted_42 : f32
        %277 = arith.xori %false, %true_37 : i1
        %278 = math.round %7 : tensor<2x12x2xf32>
        %279 = vector.extract %188[3] : vector<4xf32>
        %280 = memref.atomic_rmw addf %extracted_42, %alloc_23[%c3, %c5, %c4] : (f32, memref<4x12x7xf32>) -> f32
        %281 = vector.load %alloc[%c0, %c4, %c0] : memref<2x12x2xi32>, vector<12x7x4xi32>
        %282 = tensor.empty() : tensor<12x7x4xf16>
        %283 = arith.xori %c325626252_i32, %c325626252_i32 : i32
        memref.assume_alignment %alloc_8, 1 : memref<12x7x4xi64>
        memref.assume_alignment %alloc_20, 8 : memref<12x4xi64>
        %284 = arith.shli %c647584757_i32, %c647584757_i32 : i32
        scf.yield %271 : vector<12x7x4xi1>
      }
      %267 = vector.extract %164[2] : vector<4xi16>
    }
    %244 = vector.broadcast %82 : i16 to vector<12x4xi16>
    %245 = vector.gather %3[%c10, %90] [%150], %149, %244 : tensor<12x4xi16>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xi16> into vector<12x4xi16>
    %246 = index.casts %143 : index to i32
    vector.print %50 : vector<4xf32>
    %alloc_51 = memref.alloc() : memref<4xi16>
    %247 = vector.gather %alloc_51[%c10] [%150], %149, %244 : memref<4xi16>, vector<12x4xi32>, vector<12x4xi1>, vector<12x4xi16> into vector<12x4xi16>
    %248 = math.exp2 %7 : tensor<2x12x2xf32>
    %expanded_52 = tensor.expand_shape %192 [[0], [1, 2]] : tensor<12x4xf32> into tensor<12x4x1xf32>
    %249 = math.ceil %10 : tensor<12x7x4xf32>
    %250 = vector.broadcast %179 : index to vector<12xindex>
    vector.scatter %alloc_12[%c3, %c2] [%250], %23, %22 : memref<12x4xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
    %251 = scf.while (%arg2 = %24) : (vector<12xi64>) -> vector<12xi64> {
      %258 = arith.floordivsi %c0_i64, %c0_i64 : i64
      affine.store %extracted, %alloc_21[%c1, %c2] : memref<12x4xi16>
      %259 = vector.maskedload %alloc_24[%c9, %c1], %26, %25 : memref<12x4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %260 = bufferization.to_tensor %alloc_22 : memref<2x12x2xi16>
      %261 = index.sizeof
      %alloc_53 = memref.alloc() : memref<2x12x2xf16>
      %262 = vector.matrix_multiply %23, %205 {lhs_columns = 4 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<4xi1>) -> vector<3xi1>
      %cst_54 = arith.constant 7.975760e+08 : f32
      scf.condition(%true_37) %22 : vector<12xi64>
    } do {
    ^bb0(%arg2: vector<12xi64>):
      %258 = math.exp2 %cst_4 : f32
      %259 = vector.create_mask %c14, %110, %c9 : vector<2x12x2xi1>
      %260 = bufferization.clone %alloc_17 : memref<12x4xf32> to memref<12x4xf32>
      %261 = bufferization.to_memref %expanded : memref<12x7x4x1xf16>
      %262 = arith.xori %true_6, %false_45 : i1
      %263 = arith.addf %cst_1, %cst : f16
      %264 = index.maxs %213, %213
      %265 = arith.minui %c1477813002_i32, %c1477813002_i32 : i32
      %266 = arith.minsi %c-14955_i16, %extracted : i16
      memref.alloca_scope  {
        %271 = bufferization.to_memref %generated : memref<?x4xi64>
        %272 = index.divs %222, %79
        %collapsed_55 = tensor.collapse_shape %3 [[0, 1]] : tensor<12x4xi16> into tensor<48xi16>
        %273 = math.round %9 : tensor<12x4xf32>
        %274 = math.tanh %5 : tensor<4xf32>
        %275 = arith.mulf %cst_4, %cst_4 : f32
        %276 = affine.max affine_map<(d0) -> (d0, d0)>(%220)
        %277 = vector.broadcast %cst_4 : f32 to vector<12x7xf32>
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %38, %277 {inclusive = true, reduction_dim = 2 : i64} : vector<12x7x4xf32>, vector<12x7xf32>
        %278 = math.expm1 %64 : tensor<2x12x2xf32>
        %cast_58 = tensor.cast %0 : tensor<12x4xi64> to tensor<?x?xi64>
        %alloca_59 = memref.alloca() : memref<12x4xi16>
        %279 = math.powf %17, %10 : tensor<12x7x4xf32>
        %280 = affine.apply affine_map<(d0) -> ((d0 - 32) ceildiv 4 + 1)>(%c3)
        %281 = arith.shrui %true_6, %true_37 : i1
        %282 = math.sqrt %16 : tensor<12x7x4xf32>
        %expanded_60 = tensor.expand_shape %155 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        %283 = vector.insertelement %true_6, %26[%c2 : index] : vector<2xi1>
        %alloca_61 = memref.alloca() : memref<2x12x2xi1>
        %284 = vector.broadcast %extracted_42 : f32 to vector<2xf32>
        %dest_62, %accumulated_value_63 = vector.scan <mul>, %236, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
        %285 = index.ceildivu %c12, %36
        %286 = memref.atomic_rmw addi %c266860443_i64, %alloc_18[%c11, %c5, %c1] : (i64, memref<12x7x4xi64>) -> i64
        %extracted_64 = tensor.extract %splat_49[%c0, %c4, %c1] : tensor<2x12x2xi1>
        %287 = index.maxu %c10, %219
        %288 = arith.maxui %82, %c-14955_i16 : i16
        %extracted_65 = tensor.extract %generated_30[%c0, %c0, %c1] : tensor<?x?x2xi32>
        %alloc_66 = memref.alloc() : memref<1x4xi64>
        %289 = tensor.empty() : tensor<4x4xi64>
        %290 = linalg.matmul ins(%expanded_60, %alloc_66 : tensor<4x1xi64>, memref<1x4xi64>) outs(%289 : tensor<4x4xi64>) -> tensor<4x4xi64>
        %291 = arith.remui %176, %82 : i16
        affine.store %216, %alloc_10[%c6, %c9, %c3] : memref<2x12x2xf32>
        %292 = arith.remui %extracted, %176 : i16
        %293 = math.ceil %167 : tensor<12x7xf16>
        %294 = arith.addf %cst_3, %cst_4 : f32
        %295 = vector.multi_reduction <maxui>, %244, %244 [] : vector<12x4xi16> to vector<12x4xi16>
      }
      %cast_53 = tensor.cast %3 : tensor<12x4xi16> to tensor<?x?xi16>
      %267 = math.log %cst_1 : f16
      %generated_54 = tensor.generate %226 {
      ^bb0(%arg3: index, %arg4: index):
        %271 = vector.load %alloc_10[%c1, %c0, %c1] : memref<2x12x2xf32>, vector<2x12x2xf32>
        %272 = math.cttz %0 : tensor<12x4xi64>
        %c27770_i16 = arith.constant 27770 : i16
        %273 = vector.broadcast %51 : index to vector<2xindex>
        vector.scatter %alloc_51[%c1] [%273], %26, %211 : memref<4xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        tensor.yield %extracted : i16
      } : tensor<?x4xi16>
      %268 = vector.load %alloc_14[%c1] : memref<4xi1>, vector<12x7x4xi1>
      %269 = vector.extract %247[10] : vector<12x4xi16>
      %270 = arith.addf %cst_5, %cst_2 : f16
      scf.yield %22 : vector<12xi64>
    }
    %252 = tensor.empty() : tensor<48xi64>
    %253 = linalg.copy ins(%collapsed : tensor<48xi64>) outs(%252 : tensor<48xi64>) -> tensor<48xi64>
    %254 = tensor.empty() : tensor<4x12x7xi16>
    %transposed = linalg.transpose ins(%13 : tensor<12x7x4xi16>) outs(%254 : tensor<4x12x7xi16>) permutation = [2, 0, 1] 
    %255 = tensor.empty() : tensor<12x4xi16>
    %reduced = linalg.reduce ins(%2 : tensor<12x7x4xi16>) outs(%255 : tensor<12x4xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %c1212189841_i64 = arith.constant 1212189841 : i64
        %258 = arith.maxui %extracted, %c-14955_i16 : i16
        %259 = vector.broadcast %in : i16 to vector<2x12x2xi16>
        %260 = vector.broadcast %false : i1 to vector<2x12x2xi1>
        %261 = vector.broadcast %c325626252_i32 : i32 to vector<2x12x2xi32>
        %262 = vector.gather %alloc_16[%c9, %c14, %c2] [%261], %260, %259 : memref<2x12x2xi16>, vector<2x12x2xi32>, vector<2x12x2xi1>, vector<2x12x2xi16> into vector<2x12x2xi16>
        %263 = math.log %cst_7 : f16
        %264 = tensor.empty() : tensor<4x12x7xf32>
        %mapped_53 = linalg.map ins(%alloc_23, %alloc_23 : memref<4x12x7xf32>, memref<4x12x7xf32>) outs(%264 : tensor<4x12x7xf32>)
          (%in_54: f32, %in_55: f32) {
            memref.assume_alignment %alloc_9, 16 : memref<12x4xf32>
            %268 = math.floor %cst_3 : f32
            %cast_56 = tensor.cast %167 : tensor<12x7xf16> to tensor<?x?xf16>
            %alloca_57 = memref.alloca() : memref<12x7x4xi32>
            %269 = math.powf %19, %19 : tensor<f32>
            %270 = index.floordivs %152, %152
            %271 = tensor.empty() : tensor<4xi64>
            %272 = bufferization.to_memref %11 : memref<4xi64>
            %c-2271_i16 = arith.constant -2271 : i16
            %273 = math.log %cst : f16
            %274 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%270, %57, %194)
            %275 = math.exp2 %147 : tensor<12x4xf16>
            %276 = math.log2 %cst_5 : f16
            %277 = math.ceil %198 : tensor<12x12xf32>
            %278 = math.ctlz %4 : tensor<12x7x4xi64>
            %279 = index.sizeof
            %280 = affine.load %272[%c13] : memref<4xi64>
            %281 = vector.broadcast %init : i16 to vector<12x2xi16>
            %dest_58, %accumulated_value_59 = vector.scan <maxui>, %262, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12x2xi16>, vector<12x2xi16>
            %282 = arith.maxui %c647584757_i32, %c2083202933_i32 : i32
            %alloc_60 = memref.alloc() : memref<12x7x4xf16>
            %283 = affine.load %186[%c12, %c11] : memref<12x4xf32>
            %c1030761251_i64 = arith.constant 1030761251 : i64
            %284 = arith.andi %c325626252_i32, %c1477813002_i32 : i32
            %285 = vector.matrix_multiply %26, %201 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<1xi1>) -> vector<2xi1>
            affine.store %c1477813002_i32, %alloc[%c9, %c4, %c5] : memref<2x12x2xi32>
            %286 = index.divs %c11, %83
            %287 = math.log2 %cst_4 : f32
            %288 = arith.minsi %c2083202933_i32, %c1477813002_i32 : i32
            %alloc_61 = memref.alloc() : memref<4xi32>
            %289 = vector.broadcast %c2083202933_i32 : i32 to vector<12x7x4xi32>
            %290 = vector.broadcast %true_6 : i1 to vector<12x7x4xi1>
            %291 = vector.gather %alloc_61[%c9] [%289], %290, %289 : memref<4xi32>, vector<12x7x4xi32>, vector<12x7x4xi1>, vector<12x7x4xi32> into vector<12x7x4xi32>
            %292 = index.sub %270, %c2
            %293 = index.divs %270, %120
            %294 = math.atan %cst_5 : f16
            %cst_62 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_62 : f32
          }
        %265 = index.ceildivs %c2, %c12
        %266 = bufferization.clone %alloc_51 : memref<4xi16> to memref<4xi16>
        %267 = affine.apply affine_map<(d0, d1) -> (0)>(%90, %31)
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %256 = scf.parallel (%arg2) = (%c5) to (%79) step (%c2) init (%34) -> tensor<12x7x4xi64> {
      memref.alloca_scope  {
        %269 = vector.reduction <maxsi>, %27 : vector<2xi64> into i64
        %270 = arith.andi %c266860443_i64, %c266860443_i64 : i64
        %271 = arith.addf %extracted_42, %216 : f32
        %272 = memref.load %186[%c7, %c1] : memref<12x4xf32>
        %273 = index.maxu %140, %c1
        %alloca_58 = memref.alloca() : memref<4xf16>
        %274 = math.ceil %5 : tensor<4xf32>
        %275 = arith.ceildivsi %c2083202933_i32, %c325626252_i32 : i32
        %276 = tensor.empty() : tensor<2x12x2xi1>
        %277 = index.add %c0, %273
        %278 = bufferization.to_memref %4 : memref<12x7x4xi64>
        %279 = arith.shrsi %c647584757_i32, %c1477813002_i32 : i32
        %280 = index.castu %c2083202933_i32 : i32 to index
        %281 = math.cttz %12 : tensor<4xi64>
        %true_59 = index.bool.constant true
        bufferization.dealloc_tensor %15 : tensor<12x7x4xf16>
        %282 = arith.divsi %true_6, %true_37 : i1
        %283 = vector.extract_strided_slice %50 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %284 = index.floordivs %152, %c0
        %285 = arith.divf %extracted_42, %cst_4 : f32
        %286 = vector.broadcast %c2 : index to vector<2xindex>
        vector.scatter %alloc_22[%c0, %c5, %c1] [%286], %26, %211 : memref<2x12x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %287 = bufferization.clone %240 : memref<12x4xi64> to memref<12x4xi64>
        %288 = index.maxs %c11, %36
        %cst_60 = arith.constant 1.000000e+00 : f32
        %cst_61 = arith.constant 0.000000e+00 : f32
        %289 = vector.transfer_read %9[%140, %c8], %cst_61 : tensor<12x4xf32>, vector<f32>
        %290 = arith.shrui %82, %c-14955_i16 : i16
        %291 = math.exp2 %expanded : tensor<12x7x4x1xf16>
        %292 = affine.load %287[%c13, %c12] : memref<12x4xi64>
        %293 = arith.muli %c647584757_i32, %c325626252_i32 : i32
        %cast_62 = tensor.cast %2 : tensor<12x7x4xi16> to tensor<?x?x?xi16>
        %294 = vector.multi_reduction <mul>, %184, %cst_0 [0] : vector<12xf16> to f16
        %295 = index.divs %56, %c5
        %296 = math.tan %expanded_52 : tensor<12x4x1xf32>
      }
      %258 = arith.andi %c647584757_i32, %c2083202933_i32 : i32
      %259 = arith.shrui %c1477813002_i32, %c2083202933_i32 : i32
      %false_53 = arith.constant false
      %260 = vector.load %alloc_24[%c1, %c2] : memref<12x4xi64>, vector<2x12x2xi64>
      %extracted_54 = tensor.extract %5[%c2] : tensor<4xf32>
      %splat_55 = tensor.splat %c2083202933_i32 : tensor<2x12x2xi32>
      %splat_56 = tensor.splat %cst : tensor<12x4xf16>
      %alloc_57 = memref.alloc() : memref<2x12x2xi64>
      %261 = arith.maxui %extracted, %c-14955_i16 : i16
      %262 = memref.realloc %alloc_25 : memref<4xf32> to memref<4xf32>
      %263 = bufferization.clone %alloc_23 : memref<4x12x7xf32> to memref<4x12x7xf32>
      %264 = math.round %10 : tensor<12x7x4xf32>
      %265 = arith.maxui %c2083202933_i32, %c2083202933_i32 : i32
      %266 = arith.minui %false, %false : i1
      %267 = bufferization.clone %alloc_18 : memref<12x7x4xi64> to memref<12x7x4xi64>
      %268 = tensor.empty() : tensor<12x7x4xi64>
      scf.reduce(%268)  : tensor<12x7x4xi64> {
      ^bb0(%arg3: tensor<12x7x4xi64>, %arg4: tensor<12x7x4xi64>):
        %269 = math.tanh %19 : tensor<f32>
        %270 = vector.load %alloc_19[%c9, %c1] : memref<12x4xi32>, vector<12x4xi32>
        %271 = math.atan2 %19, %20 : tensor<f32>
        %272 = arith.shrsi %c1477813002_i32, %c2083202933_i32 : i32
        %273 = affine.load %alloc_51[%c14] : memref<4xi16>
        %274 = arith.minui %false_45, %true : i1
        %275 = math.rsqrt %19 : tensor<f32>
        %276 = vector.extract %163[3] : vector<4xi16>
        %277 = tensor.empty() : tensor<12x7x4xi64>
        scf.reduce.return %277 : tensor<12x7x4xi64>
      }
      scf.yield
    }
    %257 = affine.vector_load %alloc_12[%c1, %c15] : memref<12x4xi64>, vector<12xi64>
    affine.vector_store %205, %alloc_14[%c15] : memref<4xi1>, vector<4xi1>
    vector.print %18 : vector<4xi1>
    vector.print %21 : vector<12x4xf32>
    vector.print %22 : vector<12xi64>
    vector.print %23 : vector<12xi1>
    vector.print %24 : vector<12xi64>
    vector.print %25 : vector<2xi64>
    vector.print %26 : vector<2xi1>
    vector.print %27 : vector<2xi64>
    vector.print %37 : vector<12x7x4xf32>
    vector.print %38 : vector<12x7x4xf32>
    vector.print %50 : vector<4xf32>
    vector.print %100 : vector<1xi64>
    vector.print %102 : vector<2x12x2xf32>
    vector.print %103 : vector<2x12x2xf32>
    vector.print %107 : vector<5x7x4xf32>
    vector.print %141 : vector<12x7x4xf32>
    vector.print %142 : vector<12x7x4xf32>
    vector.print %148 : vector<12x4xf16>
    vector.print %149 : vector<12x4xi1>
    vector.print %150 : vector<12x4xi32>
    vector.print %151 : vector<12x4xf16>
    vector.print %153 : vector<4xf32>
    vector.print %163 : vector<4xi16>
    vector.print %164 : vector<4xi16>
    vector.print %170 : vector<i64>
    vector.print %184 : vector<12xf16>
    vector.print %185 : vector<12xf16>
    vector.print %188 : vector<4xf32>
    vector.print %189 : vector<4xf32>
    vector.print %201 : vector<1xi1>
    vector.print %205 : vector<4xi1>
    vector.print %211 : vector<2xi16>
    vector.print %236 : vector<2x12xf32>
    vector.print %244 : vector<12x4xi16>
    vector.print %245 : vector<12x4xi16>
    vector.print %247 : vector<12x4xi16>
    vector.print %257 : vector<12xi64>
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %true : i1
    vector.print %c2083202933_i32 : i32
    vector.print %c325626252_i32 : i32
    vector.print %c266860443_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c647584757_i32 : i32
    vector.print %c-14955_i16 : i16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %true_6 : i1
    vector.print %c1477813002_i32 : i32
    vector.print %cst_7 : f16
    vector.print %82 : i16
    vector.print %extracted : i16
    vector.print %false : i1
    vector.print %true_37 : i1
    vector.print %extracted_42 : f32
    vector.print %176 : i16
    vector.print %false_45 : i1
    vector.print %216 : f32
    vector.print %c0_i64 : i64
    return %alloc_51 : memref<4xi16>
  }
}
