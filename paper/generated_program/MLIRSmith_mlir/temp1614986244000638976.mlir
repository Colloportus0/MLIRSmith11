module {
  func.func @func1(%arg0: index) -> tensor<3xf16> {
    %c7447_i16 = arith.constant 7447 : i16
    %c1649221030_i32 = arith.constant 1649221030 : i32
    %cst = arith.constant 0x4E26B900 : f32
    %c9243_i16 = arith.constant 9243 : i16
    %cst_0 = arith.constant 1.011200e+04 : f16
    %false = arith.constant false
    %cst_1 = arith.constant 2.05710349E+9 : f32
    %false_2 = arith.constant false
    %cst_3 = arith.constant 1.66927232E+9 : f32
    %cst_4 = arith.constant 0x4DB4C9DB : f32
    %false_5 = arith.constant false
    %cst_6 = arith.constant 3.265600e+04 : f16
    %cst_7 = arith.constant 3.030400e+04 : f16
    %cst_8 = arith.constant 1.710400e+04 : f16
    %cst_9 = arith.constant 4.566400e+04 : f16
    %true = arith.constant true
    %0 = tensor.empty() : tensor<3xf16>
    %1 = tensor.empty() : tensor<3x13xi1>
    %2 = tensor.empty() : tensor<3xi32>
    %3 = tensor.empty() : tensor<3x13xi64>
    %4 = tensor.empty() : tensor<3xi1>
    %5 = tensor.empty() : tensor<3xi32>
    %6 = tensor.empty() : tensor<13xi1>
    %7 = tensor.empty() : tensor<13xf32>
    %8 = tensor.empty() : tensor<7x3x3xf16>
    %9 = tensor.empty() : tensor<13xi1>
    %10 = tensor.empty() : tensor<13xi1>
    %11 = tensor.empty() : tensor<7x3x3xf16>
    %12 = tensor.empty() : tensor<3x13xf32>
    %13 = tensor.empty() : tensor<3xi16>
    %14 = tensor.empty() : tensor<3xi1>
    %15 = tensor.empty() : tensor<3x13xi16>
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
    %alloc = memref.alloc() : memref<3x13xf32>
    %alloc_10 = memref.alloc() : memref<3x13xi64>
    %alloc_11 = memref.alloc() : memref<7x3x3xi64>
    %alloc_12 = memref.alloc() : memref<13xi16>
    %alloc_13 = memref.alloc() : memref<7x3x3xi64>
    %alloc_14 = memref.alloc() : memref<3x13xi64>
    %alloc_15 = memref.alloc() : memref<3xi1>
    %alloc_16 = memref.alloc() : memref<13xi32>
    %alloc_17 = memref.alloc() : memref<3xf16>
    %alloc_18 = memref.alloc() : memref<7x3x3xi32>
    %alloc_19 = memref.alloc() : memref<13xf32>
    %alloc_20 = memref.alloc() : memref<3x13xi1>
    %alloc_21 = memref.alloc() : memref<13xi32>
    %alloc_22 = memref.alloc() : memref<7x3x3xi32>
    %alloc_23 = memref.alloc() : memref<3x13xi16>
    %alloc_24 = memref.alloc() : memref<3xf32>
    %16 = tensor.empty() : tensor<13xi1>
    %17 = linalg.copy ins(%6 : tensor<13xi1>) outs(%16 : tensor<13xi1>) -> tensor<13xi1>
    %18 = tensor.empty() : tensor<3xi32>
    %transposed = linalg.transpose ins(%2 : tensor<3xi32>) outs(%18 : tensor<3xi32>) permutation = [0] 
    %19 = tensor.empty() : tensor<13xi1>
    %reduced = linalg.reduce ins(%1 : tensor<3x13xi1>) outs(%19 : tensor<13xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %extracted_49 = tensor.extract %16[%c1] : tensor<13xi1>
        %251 = arith.shrsi %in, %in : i1
        %252 = math.exp2 %11 : tensor<7x3x3xf16>
        %253 = affine.if affine_set<(d0) : ((-d0 + (-d0) mod 8 + 64) * 2 >= 0, (-d0 + (-d0) mod 8 + 64) * 2 == 0, (-d0 + (-d0) mod 8 + 64) * 2 >= 0)>(%c12) -> f16 {
          %inserted_52 = tensor.insert %c1649221030_i32 into %18[%c1] : tensor<3xi32>
          %c1_i64_53 = arith.constant 1 : i64
          %257 = vector.broadcast %c1_i64_53 : i64 to vector<13xi64>
          vector.print %257 : vector<13xi64>
          %258 = vector.broadcast %cst_7 : f16 to vector<13xf16>
          %259 = vector.broadcast %false_5 : i1 to vector<13xi1>
          %260 = vector.broadcast %c1649221030_i32 : i32 to vector<13xi32>
          %261 = vector.gather %0[%c8] [%260], %259, %258 : tensor<3xf16>, vector<13xi32>, vector<13xi1>, vector<13xf16> into vector<13xf16>
          memref.assume_alignment %alloc_22, 8 : memref<7x3x3xi32>
          %262 = vector.splat %false_2 : vector<7x3x3xi1>
          vector.print %260 : vector<13xi32>
          %263 = math.tan %12 : tensor<3x13xf32>
          memref.copy %alloc_18, %alloc_22 : memref<7x3x3xi32> to memref<7x3x3xi32>
          affine.yield %cst_7 : f16
        } else {
          %alloc_52 = memref.alloc() : memref<13xf16>
          %inserted_53 = tensor.insert %c7447_i16 into %15[%c1, %c1] : tensor<3x13xi16>
          %257 = math.roundeven %cst_4 : f32
          %258 = arith.subi %c1649221030_i32, %c1649221030_i32 : i32
          %259 = math.expm1 %cst_9 : f16
          %false_54 = index.bool.constant false
          %260 = index.add %c10, %c9
          %261 = arith.remf %cst_4, %cst_3 : f32
          affine.yield %cst_9 : f16
        }
        %rank_50 = tensor.rank %5 : tensor<3xi32>
        %254 = math.absi %19 : tensor<13xi1>
        %255 = math.exp %cst_1 : f32
        %256 = math.expm1 %0 : tensor<3xf16>
        %true_51 = arith.constant true
        linalg.yield %true_51 : i1
      }
    %20 = scf.parallel (%arg1, %arg2) = (%c2, %c12) to (%c1, %c11) step (%c9, %c3) init (%3) -> tensor<3x13xi64> {
      %251 = math.exp %0 : tensor<3xf16>
      %252 = vector.create_mask %c14 : vector<13xi1>
      %253 = math.tan %11 : tensor<7x3x3xf16>
      %254 = math.absi %reduced : tensor<13xi1>
      %255 = vector.broadcast %cst_6 : f16 to vector<f16>
      %256 = vector.transfer_write %255, %0[%c9] : vector<f16>, tensor<3xf16>
      %257 = math.expm1 %cst_6 : f16
      %258 = math.copysign %8, %11 : tensor<7x3x3xf16>
      %259 = arith.cmpf true, %cst_7, %cst_0 : f16
      %260 = vector.broadcast %false_5 : i1 to vector<i1>
      %261 = vector.transfer_write %260, %9[%c14] : vector<i1>, tensor<13xi1>
      %262 = affine.if affine_set<(d0) : ((d0 - 1) floordiv 128 + ((d0 - 8) floordiv 64) * 128 == 0)>(%c11) -> f32 {
        %269 = index.mul %c9, %c2
        %270 = vector.extract_strided_slice %252 {offsets = [11], sizes = [2], strides = [1]} : vector<13xi1> to vector<2xi1>
        %271 = math.tan %7 : tensor<13xf32>
        %272 = arith.shrui %false_5, %false : i1
        %273 = math.copysign %cst_0, %cst_8 : f16
        %274 = vector.flat_transpose %270 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %275 = index.add %c4, %c11
        %276 = math.ipowi %3, %3 : tensor<3x13xi64>
        affine.yield %cst : f32
      } else {
        %269 = memref.load %alloc_15[%c1] : memref<3xi1>
        %collapsed_50 = tensor.collapse_shape %15 [[0, 1]] : tensor<3x13xi16> into tensor<39xi16>
        %alloc_51 = memref.alloc() : memref<3x13xi64>
        %extracted_52 = tensor.extract %3[%c2, %c12] : tensor<3x13xi64>
        %270 = index.mul %c3, %c7
        %271 = tensor.empty() : tensor<7x3x3xi32>
        %272 = vector.broadcast %c1649221030_i32 : i32 to vector<3xi32>
        %273 = vector.broadcast %false_2 : i1 to vector<3xi1>
        %274 = vector.gather %271[%c1, %c4, %arg2] [%272], %273, %272 : tensor<7x3x3xi32>, vector<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %275 = arith.floordivsi %c1649221030_i32, %c1649221030_i32 : i32
        %276 = vector.insertelement %c1649221030_i32, %274[%c0 : index] : vector<3xi32>
        affine.yield %cst : f32
      }
      %263 = arith.floordivsi %c9243_i16, %c9243_i16 : i16
      %264 = math.expm1 %11 : tensor<7x3x3xf16>
      %false_49 = index.bool.constant false
      %265 = math.ctpop %17 : tensor<13xi1>
      %266 = vector.splat %cst_3 : vector<13xf32>
      %267 = math.round %7 : tensor<13xf32>
      %268 = tensor.empty() : tensor<3x13xi64>
      scf.reduce(%268)  : tensor<3x13xi64> {
      ^bb0(%arg3: tensor<3x13xi64>, %arg4: tensor<3x13xi64>):
        %269 = arith.mulf %cst_4, %cst_1 : f32
        %270 = arith.minsi %c9243_i16, %c9243_i16 : i16
        %rank_50 = tensor.rank %8 : tensor<7x3x3xf16>
        %271 = math.exp %cst_8 : f16
        %272 = vector.transpose %260, [] : vector<i1> to vector<i1>
        %273 = arith.xori %true, %false_49 : i1
        bufferization.dealloc_tensor %6 : tensor<13xi1>
        %274 = math.cttz %false : i1
        %275 = tensor.empty() : tensor<3x13xi64>
        scf.reduce.return %275 : tensor<3x13xi64>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_21[%c14] : memref<13xi32>, vector<12xi32>
    affine.vector_store %21, %alloc_21[%c8] : memref<13xi32>, vector<12xi32>
    %22 = tensor.empty() : tensor<13xi1>
    %23 = tensor.empty() : tensor<i1>
    %24 = linalg.dot ins(%9, %22 : tensor<13xi1>, tensor<13xi1>) outs(%23 : tensor<i1>) -> tensor<i1>
    %c1_i64 = arith.constant 1 : i64
    memref.store %c1_i64, %alloc_14[%c0, %c11] : memref<3x13xi64>
    %25 = arith.remf %cst_3, %cst_4 : f32
    %26 = math.atan2 %cst_4, %cst_3 : f32
    %alloc_25 = memref.alloc() : memref<3x13xf16>
    %27 = vector.reduction <or>, %21 : vector<12xi32> into i32
    %28 = math.ipowi %transposed, %2 : tensor<3xi32>
    %29 = arith.floordivsi %c1649221030_i32, %c1649221030_i32 : i32
    %alloc_26 = memref.alloc() : memref<3xi16>
    memref.tensor_store %13, %alloc_26 : memref<3xi16>
    %30 = vector.create_mask %c10, %c11 : vector<3x13xi1>
    %31 = arith.xori %true, %false : i1
    %32 = vector.broadcast %c1 : index to vector<13xindex>
    %33 = vector.broadcast %false : i1 to vector<13xi1>
    %34 = vector.broadcast %c1649221030_i32 : i32 to vector<13xi32>
    vector.scatter %alloc_18[%c5, %c2, %c0] [%32], %33, %34 : memref<7x3x3xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
    %35 = math.cttz %17 : tensor<13xi1>
    %36 = arith.minui %c1649221030_i32, %c1649221030_i32 : i32
    %37 = index.ceildivu %c12, %c7
    %alloc_27 = memref.alloc() : memref<7xf16>
    %alloc_28 = memref.alloc() : memref<3x3xf16>
    %38 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27, %alloc_28 : memref<7xf16>, memref<3x3xf16>) outs(%11 : tensor<7x3x3xf16>) {
    ^bb0(%in: f16, %in_49: f16, %out: f16):
      %251 = vector.load %alloc_13[%c6, %c2, %c2] : memref<7x3x3xi64>, vector<13xi64>
      %252 = vector.broadcast %c3 : index to vector<3xindex>
      %253 = vector.broadcast %false : i1 to vector<3xi1>
      vector.scatter %alloc_15[%c1] [%252], %253, %253 : memref<3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %254 = arith.mulf %cst_8, %cst_0 : f16
      %255 = math.powf %cst, %cst : f32
      %256 = bufferization.to_tensor %alloc_18 : memref<7x3x3xi32>
      %257 = vector.transpose %30, [0, 1] : vector<3x13xi1> to vector<3x13xi1>
      %258 = vector.extract %21[8] : vector<12xi32>
      %259 = vector.insertelement %c1649221030_i32, %21[%c0 : index] : vector<12xi32>
      %260 = vector.multi_reduction <add>, %251, %c1_i64 [0] : vector<13xi64> to i64
      %261 = vector.transpose %251, [0] : vector<13xi64> to vector<13xi64>
      %262 = arith.shrsi %false_2, %false_5 : i1
      %263 = math.absi %14 : tensor<3xi1>
      %264 = tensor.empty() : tensor<3x13xi16>
      %265 = arith.addf %cst_3, %cst : f32
      %266 = bufferization.clone %alloc : memref<3x13xf32> to memref<3x13xf32>
      %267 = math.sqrt %cst_9 : f16
      %268 = arith.maxsi %c7447_i16, %c9243_i16 : i16
      %269 = index.maxu %c14, %c12
      %270 = scf.while (%arg1 = %true) : (i1) -> i1 {
        %285 = index.maxu %c6, %c14
        %286 = arith.minsi %c1649221030_i32, %c1649221030_i32 : i32
        %alloca_51 = memref.alloca() : memref<13xf32>
        %287 = arith.negf %cst_7 : f16
        %288 = arith.negf %cst_6 : f16
        %inserted_52 = tensor.insert %260 into %3[%c1, %c11] : tensor<3x13xi64>
        %inserted_53 = tensor.insert %false_5 into %17[%c5] : tensor<13xi1>
        memref.assume_alignment %alloc_11, 4 : memref<7x3x3xi64>
        scf.condition(%true) %true : i1
      } do {
      ^bb0(%arg1: i1):
        %285 = arith.remf %cst_4, %cst_1 : f32
        %286 = bufferization.to_tensor %alloc_11 : memref<7x3x3xi64>
        %287 = vector.broadcast %c1649221030_i32 : i32 to vector<7xi32>
        %288 = vector.broadcast %true : i1 to vector<7xi1>
        %289 = vector.maskedload %alloc_21[%c6], %288, %287 : memref<13xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %290 = arith.floordivsi %c9243_i16, %c9243_i16 : i16
        %291 = math.expm1 %cst_8 : f16
        %292 = arith.shrsi %false_2, %arg1 : i1
        %293 = arith.maxf %cst_7, %in_49 : f16
        %294 = math.exp2 %12 : tensor<3x13xf32>
        %295 = arith.shrui %260, %c1_i64 : i64
        %296 = index.maxu %c7, %c10
        %297 = index.casts %c15 : index to i32
        %298 = vector.transpose %30, [0, 1] : vector<3x13xi1> to vector<3x13xi1>
        bufferization.dealloc_tensor %10 : tensor<13xi1>
        memref.copy %alloc_21, %alloc_16 : memref<13xi32> to memref<13xi32>
        %299 = math.powf %cst_7, %in_49 : f16
        %300 = vector.transpose %21, [0] : vector<12xi32> to vector<12xi32>
        scf.yield %false_5 : i1
      }
      %271 = index.maxu %c5, %c6
      %272 = arith.muli %false_2, %false_2 : i1
      %273 = affine.apply affine_map<(d0, d1) -> (d0 + ((d0 + 16) * 2 + 8) * 32 + 29)>(%c1, %c2)
      %274 = arith.xori %false_5, %false_2 : i1
      %275 = vector.shuffle %251, %251 [2, 3, 4, 5, 6, 8, 10, 11, 12, 15, 17, 19, 20, 21, 23] : vector<13xi64>, vector<13xi64>
      %276 = index.castu %c14 : index to i32
      %277 = arith.maxf %cst_8, %cst_8 : f16
      %278 = tensor.empty() : tensor<3x3xf16>
      %alloc_50 = memref.alloc() : memref<3x7xf16>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %11, %alloc_50 : tensor<3x3xf16>, tensor<7x3x3xf16>, memref<3x7xf16>) outs(%8 : tensor<7x3x3xf16>) {
      ^bb0(%in_51: f16, %in_52: f16, %in_53: f16, %out_54: f16):
        %285 = vector.broadcast %false_2 : i1 to vector<13xi1>
        %286 = vector.broadcast %c1649221030_i32 : i32 to vector<13xi32>
        %287 = vector.gather %1[%c9, %273] [%286], %285, %285 : tensor<3x13xi1>, vector<13xi32>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %288 = index.casts %271 : index to i32
        %289 = bufferization.to_memref %13 : memref<3xi16>
        %290 = affine.min affine_map<(d0) -> (d0)>(%c14)
        %291 = index.ceildivu %271, %c0
        %292 = bufferization.to_memref %6 : memref<13xi1>
        %293 = index.maxs %273, %c0
        %294 = index.ceildivs %290, %290
        %295 = arith.maxui %c9243_i16, %c9243_i16 : i16
        %296 = math.rsqrt %cst : f32
        %297 = math.tan %7 : tensor<13xf32>
        %298 = vector.multi_reduction <minsi>, %251, %260 [0] : vector<13xi64> to i64
        %299 = arith.subi %c7447_i16, %c9243_i16 : i16
        %300 = vector.multi_reduction <maxui>, %285, %false_2 [0] : vector<13xi1> to i1
        %301 = math.absi %transposed : tensor<3xi32>
        %302 = math.ctpop %10 : tensor<13xi1>
        %303 = math.expm1 %in_49 : f16
        %304 = math.exp2 %in_52 : f16
        memref.assume_alignment %alloc_17, 4 : memref<3xf16>
        %305 = arith.negf %in_51 : f16
        %306 = arith.remf %out_54, %out_54 : f16
        %307 = vector.extract_strided_slice %251 {offsets = [3], sizes = [2], strides = [1]} : vector<13xi64> to vector<2xi64>
        %308 = arith.floordivsi %false_2, %false_2 : i1
        %309 = math.atan2 %11, %8 : tensor<7x3x3xf16>
        %310 = math.sqrt %12 : tensor<3x13xf32>
        %311 = math.copysign %cst_6, %cst_7 : f16
        %312 = arith.remf %in_53, %cst_9 : f16
        %313 = bufferization.clone %alloc_22 : memref<7x3x3xi32> to memref<7x3x3xi32>
        %314 = math.roundeven %out : f16
        %315 = vector.flat_transpose %287 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
        %316 = tensor.empty() : tensor<7x3x3xi16>
        %317 = vector.broadcast %c7447_i16 : i16 to vector<3xi16>
        %318 = vector.broadcast %false : i1 to vector<3xi1>
        %319 = vector.broadcast %c1649221030_i32 : i32 to vector<3xi32>
        %320 = vector.gather %316[%c15, %c6, %c6] [%319], %318, %317 : tensor<7x3x3xi16>, vector<3xi32>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %321 = arith.remf %in_51, %in_51 : f16
        linalg.yield %cst_6 : f16
      } -> tensor<7x3x3xf16>
      %280 = arith.maxui %260, %c1_i64 : i64
      %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - 60)>(%c7, %c13, %c9, %c9)
      %282 = arith.xori %c1649221030_i32, %c1649221030_i32 : i32
      %283 = index.add %271, %c7
      %284 = index.casts %c7447_i16 : i16 to index
      linalg.yield %cst_9 : f16
    } -> tensor<7x3x3xf16>
    %alloc_29 = memref.alloc() : memref<3x3xf16>
    %39 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29 : memref<3x3xf16>) outs(%8 : tensor<7x3x3xf16>) {
    ^bb0(%in: f16, %out: f16):
      %251 = affine.if affine_set<(d0, d1, d2, d3) : (d3 ceildiv 2 == 0, d3 ceildiv 2 == 0, d1 + d2 - d1 >= 0)>(%c5, %c11, %c2, %c4) -> memref<13xi32> {
        %276 = math.atan2 %8, %11 : tensor<7x3x3xf16>
        %277 = tensor.empty() : tensor<7x3x3xf32>
        %278 = vector.broadcast %false_5 : i1 to vector<13xi1>
        %279 = vector.insert %278, %30 [2] : vector<13xi1> into vector<3x13xi1>
        %280 = math.roundeven %8 : tensor<7x3x3xf16>
        %281 = math.floor %0 : tensor<3xf16>
        %extracted_55 = tensor.extract %reduced[%c6] : tensor<13xi1>
        %282 = vector.insert %c1649221030_i32, %21 [1] : i32 into vector<12xi32>
        %283 = math.atan2 %7, %7 : tensor<13xf32>
        affine.yield %alloc_16 : memref<13xi32>
      } else {
        %276 = math.roundeven %7 : tensor<13xf32>
        %277 = math.exp2 %11 : tensor<7x3x3xf16>
        %278 = math.absi %c1_i64 : i64
        %279 = arith.minf %in, %out : f16
        %280 = vector.broadcast %cst : f32 to vector<7x3x3xf32>
        %281 = vector.fma %280, %280, %280 : vector<7x3x3xf32>
        %282 = vector.shuffle %30, %30 [0, 1, 2, 4] : vector<3x13xi1>, vector<3x13xi1>
        %283 = vector.broadcast %c1649221030_i32 : i32 to vector<3x13xi32>
        %284 = vector.gather %14[%c1] [%283], %30, %30 : tensor<3xi1>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi1> into vector<3x13xi1>
        %285 = math.sqrt %11 : tensor<7x3x3xf16>
        affine.yield %alloc_21 : memref<13xi32>
      }
      %252 = arith.shli %c7447_i16, %c9243_i16 : i16
      %253 = math.ctpop %3 : tensor<3x13xi64>
      %254 = math.roundeven %cst : f32
      %255 = affine.max affine_map<(d0, d1) -> ((d1 + 32) * 128 - (d0 + d1 - d1), d1)>(%c8, %c15)
      %generated_49 = tensor.generate %c6 {
      ^bb0(%arg1: index):
        %276 = math.sqrt %11 : tensor<7x3x3xf16>
        %277 = math.copysign %cst_3, %cst_3 : f32
        %278 = vector.broadcast %c1_i64 : i64 to vector<3xi64>
        %279 = vector.broadcast %false : i1 to vector<3xi1>
        %280 = vector.maskedload %alloc_13[%c3, %c0, %c2], %279, %278 : memref<7x3x3xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %281 = math.exp %cst_1 : f32
        tensor.yield %c7447_i16 : i16
      } : tensor<?xi16>
      %256 = arith.divui %false, %false_2 : i1
      %257 = arith.ori %c9243_i16, %c9243_i16 : i16
      bufferization.dealloc_tensor %0 : tensor<3xf16>
      %258 = tensor.empty(%c1) : tensor<3x?xi64>
      %259 = index.sub %c3, %c9
      %260 = math.exp %cst_1 : f32
      %261 = math.fpowi %cst, %c1649221030_i32 : f32, i32
      %alloca_50 = memref.alloca() : memref<13xi1>
      %generated_51 = tensor.generate %c6 {
      ^bb0(%arg1: index):
        %276 = arith.andi %false, %false_5 : i1
        %cst_55 = arith.constant 1.87616755E+9 : f32
        %277 = vector.insertelement %c1649221030_i32, %21[%c0 : index] : vector<12xi32>
        %278 = bufferization.clone %alloc_16 : memref<13xi32> to memref<13xi32>
        tensor.yield %cst_8 : f16
      } : tensor<?xf16>
      %262 = math.exp %cst_9 : f16
      %263 = arith.minf %cst_3, %cst : f32
      %264 = vector.flat_transpose %21 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
      %265 = affine.min affine_map<(d0) -> (0)>(%c13)
      %extracted_52 = tensor.extract %3[%c0, %c5] : tensor<3x13xi64>
      %extracted_53 = tensor.extract %15[%c2, %c3] : tensor<3x13xi16>
      %266 = math.sqrt %cst_9 : f16
      %267 = math.exp %8 : tensor<7x3x3xf16>
      %268 = vector.flat_transpose %264 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
      %269 = vector.bitcast %30 : vector<3x13xi1> to vector<3x13xi1>
      %270 = vector.broadcast %true : i1 to vector<i1>
      %271 = vector.transfer_write %270, %10[%c11] : vector<i1>, tensor<13xi1>
      scf.if %false {
        memref.assume_alignment %alloc_21, 1 : memref<13xi32>
        %276 = tensor.empty() : tensor<3xi64>
        %277 = index.mul %c4, %c0
        %278 = math.atan2 %cst_7, %in : f16
        %279 = vector.bitcast %264 : vector<12xi32> to vector<12xf32>
        %280 = arith.maxsi %false_5, %false_5 : i1
        %281 = math.floor %12 : tensor<3x13xf32>
        %282 = arith.maxui %c7447_i16, %c9243_i16 : i16
      } else {
        memref.store %c1649221030_i32, %alloc_21[%c12] : memref<13xi32>
        %276 = math.powf %12, %12 : tensor<3x13xf32>
        %277 = index.sub %c13, %c8
        %inserted_55 = tensor.insert %false into %14[%c0] : tensor<3xi1>
        %278 = index.maxu %c15, %c0
        %279 = bufferization.to_tensor %alloc : memref<3x13xf32>
        %280 = vector.extract %21[8] : vector<12xi32>
        %281 = vector.extract %269[0] : vector<3x13xi1>
      }
      %272 = affine.load %alloc_14[%c11, %c0] : memref<3x13xi64>
      %273 = bufferization.to_tensor %alloc_11 : memref<7x3x3xi64>
      %alloca_54 = memref.alloca() : memref<3xf32>
      %274 = arith.cmpi ult, %272, %extracted_52 : i64
      %275 = vector.extract_strided_slice %269 {offsets = [0], sizes = [1], strides = [1]} : vector<3x13xi1> to vector<1x13xi1>
      linalg.yield %cst_7 : f16
    } -> tensor<7x3x3xf16>
    %40 = vector.flat_transpose %21 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
    %41 = arith.shrui %c1649221030_i32, %c1649221030_i32 : i32
    %42 = vector.splat %c1649221030_i32 : vector<3xi32>
    %43 = arith.negf %cst_7 : f16
    %44 = affine.load %alloc_22[%c9, %c4, %c7] : memref<7x3x3xi32>
    %45 = vector.broadcast %c9 : index to vector<13xindex>
    %46 = vector.broadcast %false_2 : i1 to vector<13xi1>
    %47 = vector.broadcast %cst_8 : f16 to vector<13xf16>
    vector.scatter %alloc_17[%c2] [%45], %46, %47 : memref<3xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
    %48 = index.maxu %c14, %c15
    %49 = arith.maxsi %false, %false_2 : i1
    %50 = index.sub %c1, %c4
    %alloc_30 = memref.alloc() : memref<3x3xf16>
    %51 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %alloc_30 : tensor<3xf16>, memref<3x3xf16>) outs(%11 : tensor<7x3x3xf16>) {
    ^bb0(%in: f16, %in_49: f16, %out: f16):
      %251 = tensor.empty() : tensor<13xi1>
      %mapped_50 = linalg.map ins(%6, %19, %6 : tensor<13xi1>, tensor<13xi1>, tensor<13xi1>) outs(%251 : tensor<13xi1>)
        (%in_53: i1, %in_54: i1, %in_55: i1) {
          %true_56 = index.bool.constant true
          %extracted_57 = tensor.extract %2[%c2] : tensor<3xi32>
          %extracted_58 = tensor.extract %11[%c3, %c1, %c1] : tensor<7x3x3xf16>
          %279 = math.round %out : f16
          %280 = vector.transpose %30, [0, 1] : vector<3x13xi1> to vector<3x13xi1>
          %281 = arith.maxui %false_2, %true : i1
          %282 = math.powf %cst_6, %cst_7 : f16
          %rank_59 = tensor.rank %0 : tensor<3xf16>
          %283 = arith.remui %true_56, %false_5 : i1
          %284 = index.casts %c3 : index to i32
          %285 = affine.apply affine_map<(d0, d1) -> (d0 + ((d0 + 16) * 2 + 8) * 32 + 29)>(%c4, %c11)
          %extracted_60 = tensor.extract %4[%c0] : tensor<3xi1>
          %286 = vector.extract_strided_slice %40 {offsets = [4], sizes = [6], strides = [1]} : vector<12xi32> to vector<6xi32>
          %287 = arith.minui %extracted_60, %in_55 : i1
          %288 = arith.shli %true_56, %in_53 : i1
          %289 = vector.create_mask %c5, %c15, %c15 : vector<7x3x3xi1>
          %290 = index.castu %extracted_57 : i32 to index
          %291 = vector.shuffle %21, %21 [1, 2, 4, 6, 9, 12, 13, 16, 17, 18, 19, 20, 21] : vector<12xi32>, vector<12xi32>
          %extracted_61 = tensor.extract %11[%c5, %c0, %c1] : tensor<7x3x3xf16>
          %292 = arith.xori %c7447_i16, %c9243_i16 : i16
          %293 = index.add %c14, %c2
          %294 = arith.maxsi %44, %44 : i32
          %295 = index.casts %extracted_60 : i1 to index
          %296 = math.atan2 %in_49, %in_49 : f16
          %297 = vector.flat_transpose %40 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
          %298 = math.log %8 : tensor<7x3x3xf16>
          %299 = arith.shrsi %c9243_i16, %c9243_i16 : i16
          %from_elements_62 = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<13xi64>
          %300 = vector.transpose %30, [0, 1] : vector<3x13xi1> to vector<3x13xi1>
          %301 = math.round %cst_4 : f32
          %302 = math.copysign %out, %in_49 : f16
          %alloc_63 = memref.alloc() : memref<3x13xf16>
          %true_64 = arith.constant true
          linalg.yield %true_64 : i1
        }
      %rank_51 = tensor.rank %7 : tensor<13xf32>
      %252 = vector.reduction <xor>, %40 : vector<12xi32> into i32
      vector.print %21 : vector<12xi32>
      %253 = index.floordivs %c11, %c3
      bufferization.dealloc_tensor %15 : tensor<3x13xi16>
      %254 = arith.subi %false_5, %false_5 : i1
      %255 = arith.xori %c9243_i16, %c7447_i16 : i16
      %256 = arith.floordivsi %44, %c1649221030_i32 : i32
      %257 = vector.flat_transpose %40 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
      %258 = arith.xori %c9243_i16, %c7447_i16 : i16
      %259 = affine.max affine_map<(d0) -> (16, -2048, 256, 1024)>(%c9)
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %21, %21, %c1649221030_i32 : vector<12xi32>, vector<12xi32> into i32
      %261 = arith.subi %false, %true : i1
      %262 = bufferization.clone %alloc_21 : memref<13xi32> to memref<13xi32>
      %263 = arith.ceildivsi %false_5, %false_2 : i1
      %264 = math.powf %cst_6, %in : f16
      %265 = memref.load %alloc_12[%c4] : memref<13xi16>
      %inserted_52 = tensor.insert %false_5 into %10[%c11] : tensor<13xi1>
      %266 = math.absi %1 : tensor<3x13xi1>
      %267 = math.rsqrt %12 : tensor<3x13xf32>
      %268 = arith.maxsi %c1649221030_i32, %c1649221030_i32 : i32
      %269 = vector.extract_strided_slice %40 {offsets = [4], sizes = [8], strides = [1]} : vector<12xi32> to vector<8xi32>
      %270 = arith.shrui %false, %true : i1
      %271 = math.copysign %cst_0, %cst_7 : f16
      %272 = math.ipowi %5, %18 : tensor<3xi32>
      %273 = math.rsqrt %8 : tensor<7x3x3xf16>
      %274 = arith.xori %false_2, %false : i1
      %275 = vector.splat %false : vector<13xi1>
      %276 = affine.load %alloc_24[%c0] : memref<3xf32>
      %277 = arith.remsi %c1649221030_i32, %44 : i32
      %278 = math.tan %11 : tensor<7x3x3xf16>
      linalg.yield %cst_9 : f16
    } -> tensor<7x3x3xf16>
    %52 = arith.maxui %c1_i64, %c1_i64 : i64
    %53 = arith.cmpf ule, %cst_4, %cst_1 : f32
    %54 = index.sub %c12, %c0
    %55 = arith.shrui %true, %false_2 : i1
    %56 = vector.create_mask %c15, %54 : vector<3x13xi1>
    %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<7x3x3xf16> into tensor<21x3xf16>
    %57 = arith.shrui %c9243_i16, %c7447_i16 : i16
    %58 = math.copysign %0, %0 : tensor<3xf16>
    %c1780039982_i64 = arith.constant 1780039982 : i64
    %alloc_31 = memref.alloc() : memref<13x3xi16>
    %59 = tensor.empty() : tensor<3x3xi16>
    %60 = linalg.matmul ins(%15, %alloc_31 : tensor<3x13xi16>, memref<13x3xi16>) outs(%59 : tensor<3x3xi16>) -> tensor<3x3xi16>
    %61 = arith.subi %false_2, %false_2 : i1
    %62 = math.powf %11, %8 : tensor<7x3x3xf16>
    %63 = scf.if %true -> (i64) {
      %251 = index.add %c15, %c11
      %252 = math.ceil %cst_8 : f16
      %253 = index.sizeof
      %254 = math.log1p %cst_7 : f16
      %255 = arith.divsi %c1649221030_i32, %44 : i32
      %256 = math.powf %0, %0 : tensor<3xf16>
      %257 = math.ipowi %15, %15 : tensor<3x13xi16>
      %258 = arith.remsi %c9243_i16, %c9243_i16 : i16
      scf.yield %c1_i64 : i64
    } else {
      %251 = arith.ori %c1649221030_i32, %44 : i32
      %252 = arith.minf %cst, %cst_4 : f32
      %253 = arith.shli %c1649221030_i32, %c1649221030_i32 : i32
      %254 = vector.insertelement %44, %21[%c6 : index] : vector<12xi32>
      %extracted_49 = tensor.extract %16[%c7] : tensor<13xi1>
      %255 = vector.extract_strided_slice %21 {offsets = [6], sizes = [1], strides = [1]} : vector<12xi32> to vector<1xi32>
      %from_elements_50 = tensor.from_elements %c9243_i16, %c7447_i16, %c9243_i16 : tensor<3xi16>
      %256 = math.log %cst_0 : f16
      scf.yield %c1_i64 : i64
    }
    %64 = math.exp %11 : tensor<7x3x3xf16>
    %65 = arith.shrui %false_2, %false_5 : i1
    %66 = index.divu %c7, %c7
    %67 = math.expm1 %12 : tensor<3x13xf32>
    %68 = arith.andi %true, %false_5 : i1
    %69 = arith.negf %cst : f32
    %70 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c3, %c1, %50, %c11)
    %71 = math.log2 %cst_6 : f16
    %generated = tensor.generate %c13 {
    ^bb0(%arg1: index):
      %251 = math.powf %7, %7 : tensor<13xf32>
      %252 = math.log2 %collapsed : tensor<21x3xf16>
      %253 = index.ceildivs %c4, %c15
      %254 = index.maxu %253, %c8
      tensor.yield %cst_7 : f16
    } : tensor<?xf16>
    %72 = math.tan %cst : f32
    %73 = math.fma %12, %12, %12 : tensor<3x13xf32>
    %74 = scf.index_switch %c10 -> tensor<3x13xi16> 
    case 1 {
      %251 = arith.maxsi %false_2, %false_2 : i1
      %252 = math.log10 %cst_7 : f16
      %253 = vector.shuffle %21, %21 [0, 2, 6, 9, 15, 16, 17, 18] : vector<12xi32>, vector<12xi32>
      %254 = tensor.empty() : tensor<3x7xf16>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11, %254 : tensor<7x3x3xf16>, tensor<3x7xf16>) outs(%11 : tensor<7x3x3xf16>) {
      ^bb0(%in: f16, %in_49: f16, %out: f16):
        %268 = arith.cmpf ugt, %cst, %cst_4 : f32
        %269 = vector.splat %c4 : vector<7x3x3xindex>
        %extracted_50 = tensor.extract %14[%c2] : tensor<3xi1>
        %270 = arith.subi %c1_i64, %63 : i64
        %271 = math.sqrt %cst_3 : f32
        %272 = arith.shrui %c7447_i16, %c7447_i16 : i16
        %273 = arith.cmpf ueq, %out, %cst_7 : f16
        %274 = vector.load %alloc_10[%c0, %c7] : memref<3x13xi64>, vector<13xi64>
        %275 = vector.load %alloc_13[%c4, %c0, %c0] : memref<7x3x3xi64>, vector<3xi64>
        %276 = arith.maxsi %c9243_i16, %c7447_i16 : i16
        %false_51 = index.bool.constant false
        %277 = arith.mulf %in, %cst_6 : f16
        %278 = math.ipowi %2, %transposed : tensor<3xi32>
        %279 = arith.shrsi %false_5, %extracted_50 : i1
        %extracted_52 = tensor.extract %transposed[%c1] : tensor<3xi32>
        %280 = index.ceildivs %c3, %70
        %true_53 = index.bool.constant true
        %281 = tensor.empty() : tensor<21x3xi32>
        %282 = math.fpowi %collapsed, %281 : tensor<21x3xf16>, tensor<21x3xi32>
        %283 = math.absi %10 : tensor<13xi1>
        %284 = vector.broadcast %c7447_i16 : i16 to vector<13xi16>
        %285 = vector.transfer_write %284, %15[%c10, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi16>, tensor<3x13xi16>
        %286 = math.expm1 %0 : tensor<3xf16>
        %287 = math.absi %reduced : tensor<13xi1>
        %288 = bufferization.to_tensor %alloc_23 : memref<3x13xi16>
        %289 = arith.minui %false_2, %true : i1
        %290 = math.atan2 %cst_0, %in_49 : f16
        %291 = math.log2 %0 : tensor<3xf16>
        %292 = math.copysign %cst_6, %in_49 : f16
        %293 = vector.extract %40[11] : vector<12xi32>
        %294 = bufferization.clone %alloc_19 : memref<13xf32> to memref<13xf32>
        %295 = arith.maxsi %true, %true_53 : i1
        %296 = math.absf %8 : tensor<7x3x3xf16>
        %297 = tensor.empty() : tensor<13xi16>
        linalg.yield %in : f16
      } -> tensor<7x3x3xf16>
      %256 = index.ceildivs %c1, %37
      %257 = scf.while (%arg1 = %alloc_14) : (memref<3x13xi64>) -> memref<3x13xi64> {
        %268 = vector.load %alloc_12[%c9] : memref<13xi16>, vector<7x3x3xi16>
        %269 = arith.maxui %c7447_i16, %c9243_i16 : i16
        %270 = vector.load %alloc_24[%c1] : memref<3xf32>, vector<13xf32>
        %271 = math.absi %true : i1
        %272 = index.maxs %c2, %c14
        %alloc_49 = memref.alloc() : memref<3x13xi64>
        %273 = arith.subi %c7447_i16, %c7447_i16 : i16
        %274 = arith.ceildivsi %c1_i64, %63 : i64
        scf.condition(%false_5) %alloc_14 : memref<3x13xi64>
      } do {
      ^bb0(%arg1: memref<3x13xi64>):
        %268 = vector.shuffle %30, %56 [1, 5] : vector<3x13xi1>, vector<3x13xi1>
        %269 = math.ipowi %4, %4 : tensor<3xi1>
        %270 = vector.load %alloc_11[%c4, %c2, %c2] : memref<7x3x3xi64>, vector<13xi64>
        %271 = math.absi %24 : tensor<i1>
        %272 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 64 + d1 * 32, d1 * 32, d1 + 16, -(d2 - d1 * 32))>(%c1, %c15, %c10, %c0)
        %rank_49 = tensor.rank %12 : tensor<3x13xf32>
        %273 = vector.extract %30[1] : vector<3x13xi1>
        %274 = vector.broadcast %cst_7 : f16 to vector<3x13xf16>
        %275 = vector.insertelement %63, %270[%50 : index] : vector<13xi64>
        %276 = math.atan2 %0, %0 : tensor<3xf16>
        %277 = math.round %cst_9 : f16
        %278 = index.castu %c11 : index to i32
        %279 = vector.create_mask %37, %70, %c8 : vector<7x3x3xi1>
        %280 = vector.shuffle %21, %21 [0, 1, 2, 3, 8, 9, 13, 15, 17, 18, 19, 20, 22, 23] : vector<12xi32>, vector<12xi32>
        %rank_50 = tensor.rank %transposed : tensor<3xi32>
        %281 = arith.shrsi %c1649221030_i32, %c1649221030_i32 : i32
        scf.yield %arg1 : memref<3x13xi64>
      }
      %258 = math.tan %0 : tensor<3xf16>
      %259 = arith.cmpi sle, %c1649221030_i32, %c1649221030_i32 : i32
      %260 = index.casts %54 : index to i32
      %261 = bufferization.to_memref %13 : memref<3xi16>
      %262 = index.ceildivu %c9, %c3
      %263 = math.floor %collapsed : tensor<21x3xf16>
      %264 = arith.floordivsi %c1649221030_i32, %c1649221030_i32 : i32
      %265 = affine.if affine_set<(d0) : ((-d0 + (-d0) mod 8 + 64) * 2 >= 0, (-d0 + (-d0) mod 8 + 64) * 2 == 0, (-d0 + (-d0) mod 8 + 64) * 2 >= 0)>(%c14) -> f16 {
        %268 = affine.load %alloc_11[%c10, %c13, %c6] : memref<7x3x3xi64>
        %269 = affine.min affine_map<(d0) -> (d0, ((d0 floordiv 32) mod 64) floordiv 2)>(%c11)
        %inserted_49 = tensor.insert %cst_7 into %8[%c0, %c0, %c1] : tensor<7x3x3xf16>
        %270 = arith.ceildivsi %c1649221030_i32, %c1649221030_i32 : i32
        %271 = arith.andi %false_5, %false_2 : i1
        %extracted_50 = tensor.extract %11[%c2, %c0, %c1] : tensor<7x3x3xf16>
        %272 = bufferization.clone %alloc_16 : memref<13xi32> to memref<13xi32>
        %273 = vector.splat %44 : vector<3xi32>
        affine.yield %cst_0 : f16
      } else {
        %268 = tensor.empty() : tensor<3xf16>
        %269 = arith.negf %cst_1 : f32
        %270 = arith.remf %cst, %cst_1 : f32
        %271 = math.atan2 %11, %8 : tensor<7x3x3xf16>
        %272 = vector.flat_transpose %40 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
        %273 = affine.load %alloc_13[%c11, %c13, %c14] : memref<7x3x3xi64>
        %274 = math.floor %8 : tensor<7x3x3xf16>
        %extracted_49 = tensor.extract %4[%c2] : tensor<3xi1>
        affine.yield %cst_0 : f16
      }
      %266 = math.roundeven %11 : tensor<7x3x3xf16>
      %267 = math.ctlz %2 : tensor<3xi32>
      scf.yield %15 : tensor<3x13xi16>
    }
    default {
      %251 = vector.broadcast %false_2 : i1 to vector<13xi1>
      %252 = vector.insert %251, %30 [0] : vector<13xi1> into vector<3x13xi1>
      %253 = arith.ceildivsi %false, %true : i1
      %254 = vector.create_mask %48, %37 : vector<3x13xi1>
      %255 = arith.maxsi %false_5, %true : i1
      memref.assume_alignment %alloc_11, 1 : memref<7x3x3xi64>
      memref.assume_alignment %alloc_18, 2 : memref<7x3x3xi32>
      %256 = math.atan2 %collapsed, %collapsed : tensor<21x3xf16>
      %257 = arith.remsi %c9243_i16, %c9243_i16 : i16
      memref.assume_alignment %alloc_17, 2 : memref<3xf16>
      %258 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 - 1))>(%c6, %c8, %c6)
      %259 = index.maxu %50, %c13
      %260 = arith.maxui %false_5, %false_2 : i1
      %261 = arith.ori %c1649221030_i32, %c1649221030_i32 : i32
      %262 = math.fpowi %cst_9, %44 : f16, i32
      memref.assume_alignment %alloc_21, 4 : memref<13xi32>
      %263 = arith.maxui %c1_i64, %63 : i64
      scf.yield %15 : tensor<3x13xi16>
    }
    %75 = vector.broadcast %cst_6 : f16 to vector<3xf16>
    %76 = arith.minf %cst_8, %cst_0 : f16
    %77 = bufferization.to_tensor %alloc_22 : memref<7x3x3xi32>
    vector.print %21 : vector<12xi32>
    %78 = math.absi %18 : tensor<3xi32>
    %79 = arith.muli %c1649221030_i32, %c1649221030_i32 : i32
    %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<3x13xf32> into tensor<3x13x1xf32>
    %80 = index.sub %c2, %c1
    %81 = tensor.empty() : tensor<3xi64>
    %82 = memref.alloca_scope  -> (memref<3x13xi1>) {
      %251 = arith.maxsi %false, %false_5 : i1
      %252 = math.ipowi %3, %3 : tensor<3x13xi64>
      memref.assume_alignment %alloc_12, 8 : memref<13xi16>
      %253 = index.ceildivu %80, %c10
      %254 = arith.ceildivsi %true, %true : i1
      %255 = math.atan2 %12, %12 : tensor<3x13xf32>
      %256 = vector.broadcast %cst_3 : f32 to vector<3xf32>
      %257 = vector.fma %256, %256, %256 : vector<3xf32>
      %258 = index.castu %false : i1 to index
      %alloc_49 = memref.alloc() : memref<13x1x3xf32>
      %259 = tensor.empty() : tensor<1x13xf32>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49, %alloc, %259 : memref<13x1x3xf32>, memref<3x13xf32>, tensor<1x13xf32>) outs(%expanded : tensor<3x13x1xf32>) {
      ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
        %278 = math.cttz %4 : tensor<3xi1>
        %279 = vector.insert %cst_0, %75 [2] : f16 into vector<3xf16>
        %280 = index.floordivs %54, %54
        %281 = vector.transpose %75, [0] : vector<3xf16> to vector<3xf16>
        %282 = vector.multi_reduction <add>, %257, %in_55 [0] : vector<3xf32> to f32
        %283 = arith.subi %44, %c1649221030_i32 : i32
        %284 = bufferization.to_tensor %alloc_19 : memref<13xf32>
        %285 = vector.broadcast %282 : f32 to vector<3xf32>
        %286 = vector.fma %285, %285, %256 : vector<3xf32>
        %287 = vector.broadcast %false_5 : i1 to vector<i1>
        %288 = vector.transfer_write %287, %4[%c13] : vector<i1>, tensor<3xi1>
        %289 = arith.remui %true, %false : i1
        %290 = index.castu %c11 : index to i32
        %291 = vector.broadcast %false_2 : i1 to vector<3xi1>
        %292 = vector.maskedload %alloc_20[%c1, %c6], %291, %291 : memref<3x13xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %293 = arith.remsi %44, %c1649221030_i32 : i32
        %294 = arith.maxf %cst_1, %in_54 : f32
        %295 = vector.insertelement %cst_1, %286[%253 : index] : vector<3xf32>
        %296 = arith.maxsi %c1649221030_i32, %c1649221030_i32 : i32
        %297 = arith.remf %out, %cst_3 : f32
        %298 = vector.extract_strided_slice %75 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf16> to vector<1xf16>
        %299 = math.log1p %cst_6 : f16
        %300 = arith.minsi %c7447_i16, %c9243_i16 : i16
        %301 = arith.divui %false_5, %true : i1
        %302 = math.ctlz %false_2 : i1
        %303 = math.tan %collapsed : tensor<21x3xf16>
        %304 = vector.broadcast %c7447_i16 : i16 to vector<i16>
        %305 = vector.transfer_write %304, %13[%c1] : vector<i16>, tensor<3xi16>
        memref.store %c1_i64, %alloc_13[%c1, %c2, %c0] : memref<7x3x3xi64>
        %306 = math.floor %12 : tensor<3x13xf32>
        bufferization.dealloc_tensor %12 : tensor<3x13xf32>
        %307 = index.maxs %c11, %c8
        %308 = arith.divsi %c9243_i16, %c7447_i16 : i16
        %309 = arith.shrui %c1649221030_i32, %44 : i32
        %310 = memref.load %alloc_24[%c0] : memref<3xf32>
        %311 = math.roundeven %8 : tensor<7x3x3xf16>
        linalg.yield %in : f32
      } -> tensor<3x13x1xf32>
      %261 = index.maxu %c5, %c8
      %262 = vector.flat_transpose %75 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
      %263 = math.roundeven %cst_3 : f32
      %264 = memref.load %alloc_11[%c1, %c1, %c2] : memref<7x3x3xi64>
      %265 = vector.broadcast %44 : i32 to vector<i32>
      vector.transfer_write %265, %alloc_22[%c14, %37, %261] : vector<i32>, memref<7x3x3xi32>
      memref.assume_alignment %alloc_21, 16 : memref<13xi32>
      %266 = math.sqrt %cst_7 : f16
      %from_elements_50 = tensor.from_elements %c1_i64, %63, %c1_i64, %63, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %63, %63, %c1_i64, %63, %c1_i64, %63, %63, %c1_i64, %c1_i64, %63, %c1_i64, %c1_i64, %63, %63, %63, %c1_i64, %c1_i64, %63, %c1_i64, %c1_i64, %63, %c1_i64, %63, %c1_i64, %c1_i64, %c1_i64, %63, %63, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %63, %c1_i64, %63, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %63, %63, %63, %c1_i64, %63 : tensor<7x3x3xi64>
      %267 = math.expm1 %7 : tensor<13xf32>
      %268 = vector.insert %cst_1, %257 [2] : f32 into vector<3xf32>
      %269 = math.sqrt %7 : tensor<13xf32>
      %generated_51 = tensor.generate %c15 {
      ^bb0(%arg1: index, %arg2: index):
        %278 = affine.max affine_map<(d0) -> (d0, (-d0) ceildiv 128)>(%258)
        %alloc_54 = memref.alloc() : memref<13xf32>
        %279 = math.exp %8 : tensor<7x3x3xf16>
        %280 = math.tan %7 : tensor<13xf32>
        tensor.yield %cst : f32
      } : tensor<?x13xf32>
      %extracted_52 = tensor.extract %22[%c0] : tensor<13xi1>
      %270 = arith.shrui %c1649221030_i32, %44 : i32
      %271 = math.tanh %8 : tensor<7x3x3xf16>
      %272 = math.ctlz %6 : tensor<13xi1>
      %273 = arith.muli %c1649221030_i32, %44 : i32
      %rank_53 = tensor.rank %23 : tensor<i1>
      vector.print %21 : vector<12xi32>
      %274 = bufferization.to_memref %11 : memref<7x3x3xf16>
      %275 = vector.load %alloc_10[%c0, %c6] : memref<3x13xi64>, vector<3x13xi64>
      %276 = affine.min affine_map<(d0, d1, d2) -> (d1, -(d2 + 64), d2 + 64, d2 mod 32)>(%rank_53, %c6, %c14)
      %277 = vector.insertelement %cst_7, %75[%c8 : index] : vector<3xf16>
      memref.alloca_scope.return %alloc_20 : memref<3x13xi1>
    }
    %83 = index.castu %c0 : index to i32
    %84 = index.castu %c9 : index to i32
    bufferization.dealloc_tensor %13 : tensor<3xi16>
    scf.if %false {
      memref.assume_alignment %alloc, 2 : memref<3x13xf32>
      %251 = index.casts %false_2 : i1 to index
      %252 = index.sub %c11, %c10
      %253 = vector.broadcast %cst_4 : f32 to vector<3x13xf32>
      %254 = vector.fma %253, %253, %253 : vector<3x13xf32>
      %255 = vector.insertelement %44, %21[%c2 : index] : vector<12xi32>
      %256 = math.ipowi %2, %5 : tensor<3xi32>
      %257 = bufferization.clone %alloc_14 : memref<3x13xi64> to memref<3x13xi64>
      %collapsed_49 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<21x3xf16> into tensor<63xf16>
    } else {
      %251 = arith.xori %true, %false_2 : i1
      %252 = affine.load %alloc_15[%c11] : memref<3xi1>
      %253 = arith.minf %cst_1, %cst_3 : f32
      %254 = arith.ori %c1_i64, %c1_i64 : i64
      %255 = index.castu %c1_i64 : i64 to index
      %256 = arith.ori %false_2, %252 : i1
      %257 = math.tan %cst_8 : f16
      %258 = math.copysign %cst_8, %cst_9 : f16
    }
    %85 = math.expm1 %7 : tensor<13xf32>
    %inserted = tensor.insert %true into %16[%c12] : tensor<13xi1>
    %alloc_32 = memref.alloc() : memref<7x3x3xi1>
    %86 = vector.broadcast %cst_8 : f16 to vector<7x3x3xf16>
    %87 = bufferization.to_memref %13 : memref<3xi16>
    %88 = index.castu %63 : i64 to index
    %89 = vector.broadcast %cst_4 : f32 to vector<f32>
    vector.transfer_write %89, %alloc_24[%54] : vector<f32>, memref<3xf32>
    bufferization.dealloc_tensor %8 : tensor<7x3x3xf16>
    memref.assume_alignment %alloc_24, 4 : memref<3xf32>
    %90 = vector.transpose %56, [1, 0] : vector<3x13xi1> to vector<13x3xi1>
    %91 = affine.max affine_map<(d0) -> ((d0 + 64) ceildiv 2, -d0)>(%88)
    %false_33 = index.bool.constant false
    %92 = math.powf %cst_4, %cst_3 : f32
    %93 = arith.ori %c9243_i16, %c7447_i16 : i16
    bufferization.dealloc_tensor %collapsed : tensor<21x3xf16>
    %extracted = tensor.extract %4[%c0] : tensor<3xi1>
    %94 = scf.while (%arg1 = %false_2) : (i1) -> i1 {
      %251 = index.castu %false : i1 to index
      %alloc_49 = memref.alloc() : memref<13xi64>
      %252 = arith.maxui %c7447_i16, %c7447_i16 : i16
      %extracted_50 = tensor.extract %reduced[%c7] : tensor<13xi1>
      bufferization.dealloc_tensor %3 : tensor<3x13xi64>
      %253 = tensor.empty(%c6) : tensor<7x3x?xi16>
      %254 = affine.if affine_set<(d0) : (((d0 mod 128) ceildiv 2 + 16) * 8 == 0, d0 mod 128 >= 0, d0 - 1 == 0)>(%c0) -> memref<3xi16> {
        %256 = bufferization.to_memref %4 : memref<3xi1>
        %257 = bufferization.clone %alloc_21 : memref<13xi32> to memref<13xi32>
        %258 = math.log1p %11 : tensor<7x3x3xf16>
        %259 = memref.load %257[%c4] : memref<13xi32>
        %260 = math.sqrt %7 : tensor<13xf32>
        %261 = math.log10 %11 : tensor<7x3x3xf16>
        bufferization.dealloc_tensor %3 : tensor<3x13xi64>
        %262 = index.maxs %37, %c12
        affine.yield %87 : memref<3xi16>
      } else {
        %256 = arith.remsi %arg1, %false_5 : i1
        memref.assume_alignment %87, 2 : memref<3xi16>
        %257 = bufferization.to_memref %10 : memref<13xi1>
        %258 = arith.mulf %cst, %cst_1 : f32
        bufferization.dealloc_tensor %6 : tensor<13xi1>
        %false_51 = arith.constant false
        %false_52 = arith.constant false
        %259 = vector.transfer_read %14[%c6], %false_52 : tensor<3xi1>, vector<i1>
        bufferization.dealloc_tensor %12 : tensor<3x13xf32>
        %260 = arith.xori %c7447_i16, %c9243_i16 : i16
        affine.yield %87 : memref<3xi16>
      }
      %255 = arith.shrui %c9243_i16, %c7447_i16 : i16
      scf.condition(%false) %false : i1
    } do {
    ^bb0(%arg1: i1):
      %251 = scf.while (%arg2 = %cst_7) : (f16) -> f16 {
        %264 = math.log2 %12 : tensor<3x13xf32>
        %265 = index.add %37, %c5
        %266 = tensor.empty(%c11, %c7, %50) : tensor<?x?x?xi16>
        %267 = vector.shuffle %56, %30 [2, 4, 5] : vector<3x13xi1>, vector<3x13xi1>
        %268 = vector.multi_reduction <maxsi>, %40, %44 [0] : vector<12xi32> to i32
        %rank_50 = tensor.rank %reduced : tensor<13xi1>
        %269 = tensor.empty() : tensor<3x13xi32>
        %270 = math.fpowi %12, %269 : tensor<3x13xf32>, tensor<3x13xi32>
        bufferization.dealloc_tensor %16 : tensor<13xi1>
        scf.condition(%false_33) %cst_9 : f16
      } do {
      ^bb0(%arg2: f16):
        %264 = vector.create_mask %c5, %48, %c7 : vector<7x3x3xi1>
        %265 = index.add %70, %48
        %266 = index.castu %true : i1 to index
        %267 = math.sqrt %cst_8 : f16
        %268 = math.floor %0 : tensor<3xf16>
        %269 = arith.shli %false, %false_2 : i1
        %270 = arith.ceildivsi %false_33, %arg1 : i1
        %271 = vector.extract_strided_slice %40 {offsets = [1], sizes = [10], strides = [1]} : vector<12xi32> to vector<10xi32>
        %272 = math.fma %arg2, %cst_7, %cst_9 : f16
        vector.print %56 : vector<3x13xi1>
        %alloc_50 = memref.alloc() : memref<13xf16>
        %false_51 = arith.constant false
        %273 = vector.transfer_read %16[%91], %false_51 : tensor<13xi1>, vector<i1>
        %274 = arith.muli %c1649221030_i32, %44 : i32
        %275 = index.maxu %c9, %c0
        %276 = index.divs %50, %c9
        bufferization.dealloc_tensor %12 : tensor<3x13xf32>
        scf.yield %cst_8 : f16
      }
      %252 = math.copysign %cst_3, %cst_4 : f32
      %253 = tensor.empty() : tensor<3x13xf16>
      %254 = index.floordivs %c0, %c6
      %255 = index.castu %c2 : index to i32
      %256 = arith.maxui %63, %63 : i64
      %257 = bufferization.clone %alloc_17 : memref<3xf16> to memref<3xf16>
      memref.copy %alloc_11, %alloc_13 : memref<7x3x3xi64> to memref<7x3x3xi64>
      %258 = arith.shli %true, %arg1 : i1
      %259 = vector.load %alloc[%c1, %c3] : memref<3x13xf32>, vector<13xf32>
      vector.print %75 : vector<3xf16>
      %260 = arith.cmpi sge, %false, %arg1 : i1
      %261 = vector.flat_transpose %40 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
      %262 = index.divs %c10, %c14
      %alloca_49 = memref.alloca() : memref<13xf16>
      %263 = math.tan %8 : tensor<7x3x3xf16>
      scf.yield %false_5 : i1
    }
    %false_34 = index.bool.constant false
    bufferization.dealloc_tensor %16 : tensor<13xi1>
    %95 = affine.if affine_set<(d0) : ((-d0 + (-d0) mod 8 + 64) * 2 >= 0, (-d0 + (-d0) mod 8 + 64) * 2 == 0, (-d0 + (-d0) mod 8 + 64) * 2 >= 0)>(%c3) -> i32 {
      %251 = vector.extract_strided_slice %40 {offsets = [3], sizes = [6], strides = [1]} : vector<12xi32> to vector<6xi32>
      %252 = vector.transpose %89, [] : vector<f32> to vector<f32>
      %253 = vector.splat %c7 : vector<3xindex>
      %254 = vector.load %alloc_10[%c2, %c3] : memref<3x13xi64>, vector<7x3x3xi64>
      %255 = bufferization.to_tensor %82 : memref<3x13xi1>
      %256 = tensor.empty() : tensor<13xf32>
      %257 = vector.broadcast %cst_3 : f32 to vector<7x3x3xf32>
      %258 = vector.fma %257, %257, %257 : vector<7x3x3xf32>
      %259 = vector.broadcast %44 : i32 to vector<3xi32>
      %260 = vector.broadcast %false_5 : i1 to vector<3xi1>
      %261 = vector.maskedload %alloc_21[%c6], %260, %259 : memref<13xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
      affine.yield %c1649221030_i32 : i32
    } else {
      %251 = arith.shrsi %false_34, %extracted : i1
      %252 = arith.divsi %false_2, %false_34 : i1
      %253 = affine.load %82[%c7, %c4] : memref<3x13xi1>
      %254 = math.copysign %expanded, %expanded : tensor<3x13x1xf32>
      %255 = arith.maxf %cst_6, %cst_9 : f16
      %256 = math.atan2 %expanded, %expanded : tensor<3x13x1xf32>
      %257 = math.atan2 %11, %8 : tensor<7x3x3xf16>
      scf.execute_region {
        %258 = math.sqrt %7 : tensor<13xf32>
        %259 = math.atan2 %cst_3, %cst_4 : f32
        %260 = math.ipowi %19, %9 : tensor<13xi1>
        %261 = arith.ori %false_33, %true : i1
        %262 = vector.broadcast %true : i1 to vector<13xi1>
        %263 = vector.insert %262, %30 [0] : vector<13xi1> into vector<3x13xi1>
        %264 = vector.reduction <maxf>, %75 : vector<3xf16> into f16
        %265 = math.atan2 %cst_4, %cst_3 : f32
        %266 = arith.remui %c1_i64, %63 : i64
        bufferization.dealloc_tensor %12 : tensor<3x13xf32>
        %267 = index.castu %extracted : i1 to index
        %268 = affine.max affine_map<(d0, d1, d2) -> (d0 * 2, d2 mod 128, d2, (-(d2 mod 128)) mod 128)>(%48, %c6, %c2)
        %269 = bufferization.clone %alloc_14 : memref<3x13xi64> to memref<3x13xi64>
        %270 = index.add %c10, %c11
        %271 = math.fma %7, %7, %7 : tensor<13xf32>
        vector.print %262 : vector<13xi1>
        %272 = math.round %0 : tensor<3xf16>
        scf.yield
      }
      affine.yield %c1649221030_i32 : i32
    }
    %96 = arith.maxsi %c1649221030_i32, %44 : i32
    %97 = index.sub %c15, %37
    %98 = bufferization.clone %alloc_23 : memref<3x13xi16> to memref<3x13xi16>
    %99 = arith.floordivsi %63, %63 : i64
    %100 = index.ceildivu %c5, %c10
    %101 = index.sub %50, %97
    %102 = arith.cmpf ole, %cst_6, %cst_8 : f16
    %103 = bufferization.clone %alloc_11 : memref<7x3x3xi64> to memref<7x3x3xi64>
    %104 = arith.minf %cst_0, %cst_9 : f16
    %105 = arith.maxsi %extracted, %false_33 : i1
    %106 = arith.subi %44, %c1649221030_i32 : i32
    %107 = vector.create_mask %c7 : vector<3xi1>
    %108 = math.fpowi %cst_9, %44 : f16, i32
    %109 = vector.multi_reduction <and>, %107, %107 [] : vector<3xi1> to vector<3xi1>
    %extracted_35 = tensor.extract %14[%c2] : tensor<3xi1>
    bufferization.dealloc_tensor %11 : tensor<7x3x3xf16>
    %110 = tensor.empty() : tensor<3x13xi64>
    %111 = index.ceildivu %37, %37
    %112 = vector.maskedload %alloc_20[%c0, %c0], %107, %107 : memref<3x13xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
    %113 = arith.cmpf ogt, %cst_9, %cst_9 : f16
    %114 = math.round %cst_4 : f32
    %115 = arith.maxui %extracted, %extracted : i1
    %116 = math.log10 %0 : tensor<3xf16>
    %117 = arith.shli %false_2, %false_33 : i1
    %118 = bufferization.clone %alloc_13 : memref<7x3x3xi64> to memref<7x3x3xi64>
    %119 = vector.splat %c1649221030_i32 : vector<3x13xi32>
    %120 = math.ctlz %6 : tensor<13xi1>
    %121 = index.sub %c11, %101
    %122 = arith.subi %c7447_i16, %c7447_i16 : i16
    %generated_36 = tensor.generate %c15, %c4, %100 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %251 = arith.shrsi %false_33, %extracted : i1
      %252 = tensor.empty() : tensor<13xi16>
      %253 = index.floordivs %c10, %c5
      %254 = vector.extract_strided_slice %107 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      tensor.yield %cst_0 : f16
    } : tensor<?x?x?xf16>
    %123 = arith.divsi %c7447_i16, %c7447_i16 : i16
    %124 = arith.shrsi %true, %extracted_35 : i1
    %125 = tensor.empty(%101) : tensor<?xf32>
    %126 = index.sub %c7, %c4
    %127 = math.ipowi %extracted_35, %true : i1
    %128 = arith.divf %cst_6, %cst_6 : f16
    %129 = arith.mulf %cst_9, %cst_6 : f16
    %generated_37 = tensor.generate %50 {
    ^bb0(%arg1: index):
      %251 = arith.cmpf uno, %cst_1, %cst_4 : f32
      %252 = arith.andi %false_33, %false_33 : i1
      %253 = math.expm1 %cst_0 : f16
      %254 = scf.while (%arg2 = %alloc_17) : (memref<3xf16>) -> memref<3xf16> {
        %255 = arith.remsi %44, %c1649221030_i32 : i32
        %256 = vector.broadcast %extracted : i1 to vector<3x13xi1>
        %257 = arith.maxui %c7447_i16, %c7447_i16 : i16
        %258 = vector.insertelement %extracted, %107[%91 : index] : vector<3xi1>
        %259 = arith.muli %false_5, %false_2 : i1
        %260 = math.atan2 %11, %11 : tensor<7x3x3xf16>
        %261 = math.ctlz %false_5 : i1
        %262 = arith.shrui %extracted, %false_34 : i1
        scf.condition(%extracted_35) %alloc_17 : memref<3xf16>
      } do {
      ^bb0(%arg2: memref<3xf16>):
        %255 = arith.mulf %cst_1, %cst_3 : f32
        %256 = arith.maxui %false_34, %false_34 : i1
        %257 = math.sqrt %11 : tensor<7x3x3xf16>
        %258 = arith.remf %cst_6, %cst_7 : f16
        %259 = vector.insert %44, %40 [6] : i32 into vector<12xi32>
        bufferization.dealloc_tensor %6 : tensor<13xi1>
        %alloca_49 = memref.alloca() : memref<13xi1>
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 16)>(%c13, %97, %121, %c13)
        %261 = bufferization.clone %alloc_22 : memref<7x3x3xi32> to memref<7x3x3xi32>
        %262 = math.rsqrt %cst_7 : f16
        %263 = vector.load %alloc_15[%c2] : memref<3xi1>, vector<3x13xi1>
        %264 = index.sizeof
        %265 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 64) ceildiv 128)>(%c12, %c2)
        %alloc_50 = memref.alloc() : memref<3xf32>
        %266 = vector.reduction <maxui>, %40 : vector<12xi32> into i32
        %267 = arith.minui %c1_i64, %63 : i64
        scf.yield %alloc_17 : memref<3xf16>
      }
      tensor.yield %c9243_i16 : i16
    } : tensor<?xi16>
    %130 = index.ceildivs %c7, %101
    %131 = index.ceildivs %37, %c12
    %132 = vector.flat_transpose %112 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %133 = index.ceildivs %88, %c11
    %134 = math.log1p %cst_7 : f16
    %135 = scf.while (%arg1 = %alloc_16) : (memref<13xi32>) -> memref<13xi32> {
      %251 = arith.andi %false_34, %false_33 : i1
      %252 = math.powf %cst_9, %cst_0 : f16
      %253 = tensor.empty() : tensor<3x7xf16>
      %alloc_49 = memref.alloc() : memref<3x3x7xf16>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%253, %alloc_49 : tensor<3x7xf16>, memref<3x3x7xf16>) outs(%11 : tensor<7x3x3xf16>) {
      ^bb0(%in: f16, %in_52: f16, %out: f16):
        %261 = arith.maxsi %false, %false_5 : i1
        %rank_53 = tensor.rank %24 : tensor<i1>
        %262 = math.tan %cst_1 : f32
        %263 = index.maxu %c0, %50
        vector.print %107 : vector<3xi1>
        %264 = tensor.empty() : tensor<13xi64>
        %265 = vector.broadcast %63 : i64 to vector<3xi64>
        %266 = vector.broadcast %44 : i32 to vector<3xi32>
        %267 = vector.gather %264[%c8] [%266], %132, %265 : tensor<13xi64>, vector<3xi32>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %268 = arith.shrsi %44, %c1649221030_i32 : i32
        %269 = arith.andi %false_33, %true : i1
        %270 = arith.minsi %63, %c1_i64 : i64
        %alloc_54 = memref.alloc() : memref<13xi64>
        %expanded_55 = tensor.expand_shape %6 [[0, 1]] : tensor<13xi1> into tensor<13x1xi1>
        %271 = math.ctpop %2 : tensor<3xi32>
        %272 = vector.insert %true, %112 [2] : i1 into vector<3xi1>
        %273 = math.log %12 : tensor<3x13xf32>
        %274 = arith.floordivsi %extracted_35, %extracted : i1
        %275 = math.atan2 %expanded, %expanded : tensor<3x13x1xf32>
        %276 = vector.flat_transpose %112 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %277 = math.log10 %out : f16
        %278 = vector.load %arg1[%c3] : memref<13xi32>, vector<3x13xi32>
        %279 = math.log10 %in_52 : f16
        %280 = index.add %111, %c6
        %281 = tensor.empty() : tensor<3x13xi64>
        %282 = vector.broadcast %c1649221030_i32 : i32 to vector<13xi32>
        %283 = vector.broadcast %extracted : i1 to vector<13xi1>
        %284 = vector.gather %77[%c1, %131, %c6] [%282], %283, %282 : tensor<7x3x3xi32>, vector<13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %285 = math.roundeven %cst_6 : f16
        %286 = arith.mulf %cst_0, %cst_9 : f16
        %true_56 = index.bool.constant true
        %287 = index.maxs %54, %c2
        %extracted_57 = tensor.extract %59[%c1, %c0] : tensor<3x3xi16>
        %288 = memref.load %arg1[%c0] : memref<13xi32>
        %alloca_58 = memref.alloca() : memref<7x3x3xi64>
        %289 = index.casts %c13 : index to i32
        %290 = math.tan %12 : tensor<3x13xf32>
        linalg.yield %cst_0 : f16
      } -> tensor<7x3x3xf16>
      %255 = tensor.empty() : tensor<13xi64>
      %256 = vector.broadcast %c1_i64 : i64 to vector<3x13xi64>
      %257 = vector.broadcast %c1649221030_i32 : i32 to vector<3x13xi32>
      %258 = vector.gather %255[%c2] [%257], %30, %256 : tensor<13xi64>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi64> into vector<3x13xi64>
      %inserted_50 = tensor.insert %extracted_35 into %1[%c2, %c11] : tensor<3x13xi1>
      %259 = math.ctlz %16 : tensor<13xi1>
      %alloc_51 = memref.alloc() : memref<13xf32>
      memref.copy %alloc_19, %alloc_51 : memref<13xf32> to memref<13xf32>
      %260 = bufferization.to_memref %9 : memref<13xi1>
      scf.condition(%false_2) %alloc_21 : memref<13xi32>
    } do {
    ^bb0(%arg1: memref<13xi32>):
      %251 = arith.minf %cst_8, %cst_9 : f16
      %252 = math.absi %2 : tensor<3xi32>
      %rank_49 = tensor.rank %14 : tensor<3xi1>
      %253 = vector.extract %30[2] : vector<3x13xi1>
      %254 = index.casts %true : i1 to index
      %255 = arith.minsi %false, %false_34 : i1
      %256 = vector.broadcast %c1_i64 : i64 to vector<3xi64>
      %257 = vector.broadcast %44 : i32 to vector<3xi32>
      %258 = vector.gather %alloc_13[%c13, %c12, %88] [%257], %112, %256 : memref<7x3x3xi64>, vector<3xi32>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %259 = scf.execute_region -> index {
        bufferization.dealloc_tensor %17 : tensor<13xi1>
        %269 = math.fpowi %cst_8, %44 : f16, i32
        %270 = arith.muli %44, %44 : i32
        %271 = affine.load %alloc_10[%c14, %c8] : memref<3x13xi64>
        %cast = tensor.cast %18 : tensor<3xi32> to tensor<?xi32>
        %272 = memref.load %alloc_23[%c2, %c8] : memref<3x13xi16>
        %273 = arith.cmpf ogt, %cst_4, %cst_4 : f32
        %274 = arith.minui %false_2, %false_34 : i1
        %275 = arith.shrui %extracted, %false_5 : i1
        bufferization.dealloc_tensor %59 : tensor<3x3xi16>
        bufferization.dealloc_tensor %cast : tensor<?xi32>
        %276 = arith.maxf %cst_4, %cst : f32
        %277 = vector.shuffle %256, %256 [2, 4, 5] : vector<3xi64>, vector<3xi64>
        %278 = arith.maxui %c9243_i16, %c7447_i16 : i16
        memref.assume_alignment %alloc_17, 4 : memref<3xf16>
        %279 = arith.floordivsi %false_33, %extracted_35 : i1
        scf.yield %254 : index
      }
      %260 = bufferization.clone %82 : memref<3x13xi1> to memref<3x13xi1>
      %261 = math.absf %11 : tensor<7x3x3xf16>
      %262 = vector.broadcast %cst_8 : f16 to vector<7x3xf16>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %75, %86, %262 : vector<3xf16>, vector<7x3x3xf16> into vector<7x3xf16>
      %264 = arith.shrui %c7447_i16, %c9243_i16 : i16
      %265 = math.sqrt %11 : tensor<7x3x3xf16>
      %266 = tensor.empty() : tensor<13xi32>
      %267 = math.fpowi %7, %266 : tensor<13xf32>, tensor<13xi32>
      %268 = affine.load %alloc_12[%c1] : memref<13xi16>
      %alloc_50 = memref.alloc() : memref<21x3xf16>
      memref.tensor_store %collapsed, %alloc_50 : memref<21x3xf16>
      scf.yield %alloc_16 : memref<13xi32>
    }
    %136 = index.maxu %c12, %c5
    %137 = math.round %cst_1 : f32
    %138 = index.ceildivu %54, %50
    %139 = vector.create_mask %133, %c11 : vector<3x13xi1>
    %generated_38 = tensor.generate %126 {
    ^bb0(%arg1: index):
      %251 = math.log10 %7 : tensor<13xf32>
      %252 = arith.xori %false_33, %false_34 : i1
      %253 = arith.shrui %44, %44 : i32
      %254 = vector.shuffle %21, %21 [2, 3, 8, 10, 13, 18, 19, 23] : vector<12xi32>, vector<12xi32>
      tensor.yield %c1649221030_i32 : i32
    } : tensor<?xi32>
    %140 = vector.transpose %86, [0, 1, 2] : vector<7x3x3xf16> to vector<7x3x3xf16>
    %141 = vector.multi_reduction <and>, %30, %true [0, 1] : vector<3x13xi1> to i1
    %142 = vector.load %alloc_23[%c0, %c2] : memref<3x13xi16>, vector<7x3x3xi16>
    %143 = arith.maxsi %63, %c1_i64 : i64
    %144 = index.divs %54, %131
    %145 = arith.divui %141, %false_2 : i1
    %146 = math.cttz %24 : tensor<i1>
    %147 = tensor.empty() : tensor<3xi16>
    %mapped = linalg.map ins(%87, %13, %13 : memref<3xi16>, tensor<3xi16>, tensor<3xi16>) outs(%147 : tensor<3xi16>)
      (%in: i16, %in_49: i16, %in_50: i16) {
        %251 = affine.load %87[%c12] : memref<3xi16>
        %generated_51 = tensor.generate %c11 {
        ^bb0(%arg1: index):
          %280 = arith.addf %cst_0, %cst_9 : f16
          %281 = math.exp %0 : tensor<3xf16>
          %282 = vector.broadcast %cst_4 : f32 to vector<7x3x3xf32>
          %283 = vector.fma %282, %282, %282 : vector<7x3x3xf32>
          %284 = index.maxs %126, %126
          tensor.yield %c1649221030_i32 : i32
        } : tensor<?xi32>
        bufferization.dealloc_tensor %18 : tensor<3xi32>
        %252 = arith.shrui %extracted_35, %false_5 : i1
        %253 = index.maxu %c2, %c6
        %254 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64)>(%136, %97, %54, %88)
        %255 = bufferization.clone %alloc_21 : memref<13xi32> to memref<13xi32>
        %256 = math.absf %11 : tensor<7x3x3xf16>
        %257 = bufferization.to_memref %generated_37 : memref<?xi16>
        %258 = bufferization.to_memref %23 : memref<i1>
        %259 = math.log %8 : tensor<7x3x3xf16>
        %260 = vector.broadcast %false_2 : i1 to vector<12xi1>
        %261 = vector.maskedload %alloc_20[%c1, %c7], %260, %260 : memref<3x13xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %262 = arith.cmpf uno, %cst_6, %cst_9 : f16
        %263 = index.maxu %c14, %130
        %264 = arith.maxui %63, %c1_i64 : i64
        %265 = math.atan2 %cst_8, %cst_7 : f16
        %266 = vector.splat %48 : vector<13xindex>
        memref.store %63, %alloc_11[%c2, %c0, %c1] : memref<7x3x3xi64>
        %267 = math.fma %11, %11, %8 : tensor<7x3x3xf16>
        %268 = index.maxu %c11, %c6
        %269 = arith.shrui %c1_i64, %c1_i64 : i64
        %true_52 = index.bool.constant true
        %270 = math.ctlz %c9243_i16 : i16
        %271 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 mod 2))>(%54, %c10, %c6)
        %272 = vector.splat %c1649221030_i32 : vector<7x3x3xi32>
        %273 = index.maxu %48, %c15
        %274 = bufferization.clone %alloc_13 : memref<7x3x3xi64> to memref<7x3x3xi64>
        %275 = arith.cmpf one, %cst_0, %cst_0 : f16
        %276 = index.casts %c8 : index to i32
        %277 = arith.cmpf one, %cst_4, %cst : f32
        %278 = bufferization.to_tensor %alloc_22 : memref<7x3x3xi32>
        %279 = math.powf %cst, %cst_4 : f32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %148 = arith.remsi %c1649221030_i32, %c1649221030_i32 : i32
    %149 = bufferization.clone %alloc_10 : memref<3x13xi64> to memref<3x13xi64>
    %150 = bufferization.clone %alloc_14 : memref<3x13xi64> to memref<3x13xi64>
    %151 = math.atan2 %cst_7, %cst_8 : f16
    %152 = arith.addi %false, %true : i1
    %153 = index.maxs %66, %c9
    %154 = arith.minsi %c1_i64, %63 : i64
    %155 = scf.execute_region -> memref<13xi16> {
      %251 = arith.maxui %c1649221030_i32, %c1649221030_i32 : i32
      %252 = tensor.empty() : tensor<3x13xf32>
      %253 = vector.reduction <xor>, %40 : vector<12xi32> into i32
      %254 = math.tan %7 : tensor<13xf32>
      %255 = arith.remui %true, %141 : i1
      %256 = arith.negf %cst_4 : f32
      %257 = memref.load %alloc_22[%c0, %c0, %c2] : memref<7x3x3xi32>
      %258 = arith.maxsi %c1649221030_i32, %44 : i32
      %259 = arith.muli %true, %extracted : i1
      %extracted_49 = tensor.extract %generated_38[%c0] : tensor<?xi32>
      %260 = index.maxu %153, %37
      %261 = math.sqrt %cst_1 : f32
      %inserted_50 = tensor.insert %c1_i64 into %3[%c0, %c3] : tensor<3x13xi64>
      %262 = vector.broadcast %63 : i64 to vector<3x13xi64>
      %263 = vector.broadcast %c1649221030_i32 : i32 to vector<3x13xi32>
      %264 = vector.gather %81[%c5] [%263], %30, %262 : tensor<3xi64>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi64> into vector<3x13xi64>
      %265 = vector.create_mask %54 : vector<3xi1>
      %266 = math.log2 %8 : tensor<7x3x3xf16>
      scf.yield %alloc_12 : memref<13xi16>
    }
    %inserted_39 = tensor.insert %c1649221030_i32 into %generated_38[%c0] : tensor<?xi32>
    %156 = vector.extract_strided_slice %21 {offsets = [3], sizes = [2], strides = [1]} : vector<12xi32> to vector<2xi32>
    %157 = arith.mulf %cst_0, %cst_8 : f16
    %158 = arith.andi %c1649221030_i32, %44 : i32
    %159 = vector.transpose %156, [0] : vector<2xi32> to vector<2xi32>
    %160 = vector.broadcast %cst_3 : f32 to vector<3x13xf32>
    %161 = vector.fma %160, %160, %160 : vector<3x13xf32>
    %162 = index.castu %70 : index to i32
    %extracted_40 = tensor.extract %5[%c1] : tensor<3xi32>
    %163 = math.fma %cst_7, %cst_0, %cst_0 : f16
    %164 = vector.multi_reduction <minui>, %107, %false_2 [0] : vector<3xi1> to i1
    %extracted_41 = tensor.extract %13[%c1] : tensor<3xi16>
    %165 = arith.divui %false, %false_33 : i1
    %166 = math.ctlz %1 : tensor<3x13xi1>
    %167 = math.ctlz %13 : tensor<3xi16>
    %168 = arith.floordivsi %extracted_41, %c7447_i16 : i16
    %169 = vector.extract_strided_slice %21 {offsets = [8], sizes = [4], strides = [1]} : vector<12xi32> to vector<4xi32>
    %170 = index.add %c10, %153
    %171 = scf.execute_region -> vector<13xi1> {
      %251 = index.maxu %c1, %100
      %252 = arith.ori %false, %false : i1
      %253 = math.ceil %cst_1 : f32
      %254 = index.ceildivu %48, %c14
      %255 = math.sqrt %collapsed : tensor<21x3xf16>
      %256 = index.add %88, %c0
      %257 = math.log2 %11 : tensor<7x3x3xf16>
      %extracted_49 = tensor.extract %12[%c2, %c7] : tensor<3x13xf32>
      %258 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 2) * 2, d0, d2, d2 * -16)>(%131, %254, %c8)
      %259 = arith.muli %false_33, %141 : i1
      %260 = arith.minsi %164, %false_34 : i1
      %261 = vector.extract_strided_slice %132 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      %262 = math.ipowi %extracted_41, %extracted_41 : i16
      %263 = vector.load %98[%c1, %c0] : memref<3x13xi16>, vector<7x3x3xi16>
      %264 = tensor.empty() : tensor<3x13xi16>
      %mapped_50 = linalg.map ins(%15 : tensor<3x13xi16>) outs(%264 : tensor<3x13xi16>)
        (%in: i16) {
          %267 = math.copysign %8, %8 : tensor<7x3x3xf16>
          %alloc_51 = memref.alloc() : memref<3x13xf16>
          %268 = vector.broadcast %cst : f32 to vector<13xf32>
          %269 = vector.insert %268, %161 [1] : vector<13xf32> into vector<3x13xf32>
          vector.print %161 : vector<3x13xf32>
          %270 = arith.minui %false, %false_2 : i1
          %271 = vector.reduction <minui>, %169 : vector<4xi32> into i32
          %272 = index.maxu %c13, %37
          %273 = math.sqrt %0 : tensor<3xf16>
          %274 = math.log10 %cst_1 : f32
          %275 = bufferization.to_tensor %87 : memref<3xi16>
          %276 = arith.muli %false, %141 : i1
          %277 = index.casts %170 : index to i32
          %278 = arith.shli %c9243_i16, %in : i16
          %279 = arith.xori %44, %extracted_40 : i32
          %280 = math.atan2 %11, %8 : tensor<7x3x3xf16>
          %281 = arith.ceildivsi %164, %164 : i1
          %282 = arith.ori %false_2, %141 : i1
          %283 = bufferization.to_memref %17 : memref<13xi1>
          %284 = vector.insertelement %cst_6, %75[%97 : index] : vector<3xf16>
          %285 = vector.broadcast %cst : f32 to vector<3x13xf32>
          %286 = vector.fma %285, %285, %161 : vector<3x13xf32>
          %287 = math.absi %true : i1
          %288 = vector.broadcast %extracted_35 : i1 to vector<i1>
          %289 = vector.transfer_write %288, %6[%50] : vector<i1>, tensor<13xi1>
          %290 = vector.insertelement %extracted_40, %156[%48 : index] : vector<2xi32>
          %291 = math.log10 %7 : tensor<13xf32>
          %292 = arith.subi %c1649221030_i32, %44 : i32
          %293 = memref.atomic_rmw addi %extracted_41, %alloc_23[%c0, %c4] : (i16, memref<3x13xi16>) -> i16
          %294 = math.log1p %cst_1 : f32
          %295 = math.exp %cst_8 : f16
          %splat = tensor.splat %extracted_49 : tensor<7x3x3xf32>
          %296 = math.log1p %12 : tensor<3x13xf32>
          %297 = memref.atomic_rmw andi %c9243_i16, %alloc_12[%c8] : (i16, memref<13xi16>) -> i16
          %alloc_52 = memref.alloc() : memref<7x3x3xi32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %265 = arith.minf %cst_7, %cst_6 : f16
      %266 = vector.broadcast %164 : i1 to vector<13xi1>
      scf.yield %266 : vector<13xi1>
    }
    %172 = vector.flat_transpose %156 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
    %173 = math.ipowi %4, %14 : tensor<3xi1>
    scf.execute_region {
      %251 = arith.floordivsi %false_33, %false_33 : i1
      %252 = math.log %12 : tensor<3x13xf32>
      %253 = vector.transpose %86, [0, 1, 2] : vector<7x3x3xf16> to vector<7x3x3xf16>
      %254 = arith.shrui %false_33, %false_2 : i1
      %255 = math.fpowi %cst_8, %44 : f16, i32
      %256 = math.cttz %true : i1
      %alloc_49 = memref.alloc() : memref<1x3xf32>
      %alloc_50 = memref.alloc() : memref<1x13xf32>
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49, %alloc_50, %alloc_19 : memref<1x3xf32>, memref<1x13xf32>, memref<13xf32>) outs(%expanded : tensor<3x13x1xf32>) {
      ^bb0(%in: f32, %in_52: f32, %in_53: f32, %out: f32):
        %266 = arith.subi %44, %extracted_40 : i32
        %267 = arith.negf %in_52 : f32
        %268 = bufferization.clone %alloc_21 : memref<13xi32> to memref<13xi32>
        %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - d1, d0)>(%66, %c5, %153, %133)
        %270 = math.ctlz %23 : tensor<i1>
        %271 = index.castu %c7447_i16 : i16 to index
        %272 = affine.load %82[%c6, %c2] : memref<3x13xi1>
        %inserted_54 = tensor.insert %false_5 into %19[%c4] : tensor<13xi1>
        %273 = arith.floordivsi %c7447_i16, %extracted_41 : i16
        %274 = arith.andi %false_33, %false_5 : i1
        %275 = vector.splat %c13 : vector<13xindex>
        %276 = vector.flat_transpose %172 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %alloca_55 = memref.alloca() : memref<3xi32>
        %277 = arith.negf %in_52 : f32
        %278 = math.ctlz %1 : tensor<3x13xi1>
        %279 = arith.maxf %cst_1, %in_53 : f32
        %280 = index.divs %97, %c6
        %281 = bufferization.to_tensor %82 : memref<3x13xi1>
        bufferization.dealloc_tensor %3 : tensor<3x13xi64>
        %282 = math.log %cst_1 : f32
        %283 = index.sub %111, %c7
        %284 = arith.minsi %c1_i64, %63 : i64
        %285 = arith.remui %c1649221030_i32, %44 : i32
        %286 = memref.load %alloc_16[%c7] : memref<13xi32>
        %287 = arith.maxsi %272, %false_33 : i1
        %288 = vector.insert %c1649221030_i32, %169 [2] : i32 into vector<4xi32>
        %289 = bufferization.clone %alloc_21 : memref<13xi32> to memref<13xi32>
        %290 = index.divu %c4, %c4
        %291 = arith.negf %in_53 : f32
        %292 = math.powf %cst_0, %cst_8 : f16
        %293 = memref.realloc %alloc_21 : memref<13xi32> to memref<13xi32>
        %294 = arith.andi %141, %false_33 : i1
        linalg.yield %in : f32
      } -> tensor<3x13x1xf32>
      %258 = vector.broadcast %extracted_40 : i32 to vector<i32>
      vector.transfer_write %258, %alloc_16[%c5] : vector<i32>, memref<13xi32>
      %generated_51 = tensor.generate %66 {
      ^bb0(%arg1: index, %arg2: index):
        %266 = arith.remui %164, %true : i1
        %267 = vector.transpose %160, [0, 1] : vector<3x13xf32> to vector<3x13xf32>
        %268 = math.sqrt %cst_3 : f32
        %269 = vector.insert %extracted_40, %156 [0] : i32 into vector<2xi32>
        tensor.yield %cst_1 : f32
      } : tensor<?x13xf32>
      %259 = arith.andi %extracted, %false_5 : i1
      %260 = arith.remsi %c1649221030_i32, %44 : i32
      %261 = arith.maxui %false_34, %false_2 : i1
      %262 = vector.extract_strided_slice %156 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi32> to vector<2xi32>
      %263 = arith.maxsi %c9243_i16, %extracted_41 : i16
      %264 = math.expm1 %cst_4 : f32
      %265 = arith.maxsi %extracted_41, %c9243_i16 : i16
      scf.yield
    }
    %174 = vector.transpose %172, [0] : vector<2xi32> to vector<2xi32>
    %175 = vector.splat %extracted_35 : vector<3x13xi1>
    %176 = math.absf %8 : tensor<7x3x3xf16>
    %177 = index.casts %70 : index to i32
    %178 = math.rsqrt %11 : tensor<7x3x3xf16>
    %179 = arith.floordivsi %false_2, %164 : i1
    vector.print %30 : vector<3x13xi1>
    %180 = arith.mulf %cst_3, %cst : f32
    %181 = math.copysign %8, %11 : tensor<7x3x3xf16>
    %182 = arith.shrui %true, %164 : i1
    %183 = vector.broadcast %extracted_41 : i16 to vector<13xi16>
    %184 = vector.broadcast %extracted_35 : i1 to vector<13xi1>
    %185 = vector.broadcast %c1649221030_i32 : i32 to vector<13xi32>
    %186 = vector.gather %15[%37, %c8] [%185], %184, %183 : tensor<3x13xi16>, vector<13xi32>, vector<13xi1>, vector<13xi16> into vector<13xi16>
    memref.copy %alloc_11, %103 : memref<7x3x3xi64> to memref<7x3x3xi64>
    %187 = math.log1p %cst_6 : f16
    memref.tensor_store %147, %87 : memref<3xi16>
    %188 = arith.cmpf ogt, %cst_4, %cst_1 : f32
    %189 = math.ctpop %81 : tensor<3xi64>
    %190 = math.absf %cst_9 : f16
    %191 = arith.maxsi %c1_i64, %63 : i64
    %192 = arith.negf %cst_7 : f16
    %193 = vector.reduction <and>, %186 : vector<13xi16> into i16
    %194 = vector.shuffle %142, %142 [0, 11, 13] : vector<7x3x3xi16>, vector<7x3x3xi16>
    %alloc_42 = memref.alloc() : memref<13xi32>
    scf.index_switch %66 
    case 1 {
      %251 = math.cttz %13 : tensor<3xi16>
      %252 = math.log10 %expanded : tensor<3x13x1xf32>
      %253 = memref.alloca_scope  -> (memref<3xf32>) {
        %264 = math.exp %11 : tensor<7x3x3xf16>
        %265 = vector.extract_strided_slice %112 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
        vector.print %161 : vector<3x13xf32>
        %266 = math.rsqrt %cst_0 : f16
        %267 = math.exp %cst_1 : f32
        %268 = vector.bitcast %21 : vector<12xi32> to vector<12xi32>
        %269 = index.divs %80, %130
        %270 = vector.transpose %86, [0, 1, 2] : vector<7x3x3xf16> to vector<7x3x3xf16>
        %271 = vector.load %87[%c2] : memref<3xi16>, vector<3xi16>
        %272 = math.tan %cst_8 : f16
        %273 = math.ctlz %1 : tensor<3x13xi1>
        %274 = index.floordivs %c13, %121
        %275 = index.castu %97 : index to i32
        %276 = bufferization.clone %149 : memref<3x13xi64> to memref<3x13xi64>
        %277 = index.ceildivs %37, %c14
        %278 = math.copysign %7, %7 : tensor<13xf32>
        %279 = memref.atomic_rmw ori %c7447_i16, %155[%c1] : (i16, memref<13xi16>) -> i16
        %280 = math.log %11 : tensor<7x3x3xf16>
        %281 = vector.transpose %75, [0] : vector<3xf16> to vector<3xf16>
        %splat = tensor.splat %44 : tensor<13xi32>
        %282 = bufferization.to_memref %8 : memref<7x3x3xf16>
        %283 = vector.load %alloc[%c0, %c2] : memref<3x13xf32>, vector<7x3x3xf32>
        %284 = math.ctlz %17 : tensor<13xi1>
        %285 = index.add %131, %91
        %286 = math.absi %4 : tensor<3xi1>
        %287 = math.absi %c7447_i16 : i16
        %288 = vector.load %alloc_17[%c2] : memref<3xf16>, vector<7x3x3xf16>
        %289 = arith.minf %cst_7, %cst_0 : f16
        %290 = math.fpowi %cst_7, %extracted_40 : f16, i32
        %291 = index.maxs %c11, %121
        %292 = memref.realloc %155 : memref<13xi16> to memref<12xi16>
        %293 = arith.ceildivsi %false_5, %false_2 : i1
        memref.alloca_scope.return %alloc_24 : memref<3xf32>
      }
      %254 = arith.ceildivsi %164, %false_33 : i1
      %inserted_49 = tensor.insert %false_34 into %22[%c8] : tensor<13xi1>
      memref.store %c1_i64, %103[%c5, %c0, %c0] : memref<7x3x3xi64>
      %255 = arith.shrui %164, %false_33 : i1
      %256 = math.tan %cst_1 : f32
      %257 = math.tan %12 : tensor<3x13xf32>
      %extracted_50 = tensor.extract %7[%c4] : tensor<13xf32>
      %258 = affine.load %87[%c12] : memref<3xi16>
      %259 = index.casts %c6 : index to i32
      %260 = memref.atomic_rmw muli %63, %149[%c0, %c10] : (i64, memref<3x13xi64>) -> i64
      %261 = arith.muli %false_2, %false_5 : i1
      %262 = arith.remf %cst_6, %cst_8 : f16
      %263 = arith.andi %44, %extracted_40 : i32
      scf.yield
    }
    default {
      %251 = scf.execute_region -> tensor<3x13xi32> {
        %268 = vector.extract_strided_slice %160 {offsets = [0], sizes = [3], strides = [1]} : vector<3x13xf32> to vector<3x13xf32>
        %269 = index.castu %c3 : index to i32
        %270 = math.tanh %8 : tensor<7x3x3xf16>
        %271 = math.rsqrt %expanded : tensor<3x13x1xf32>
        %272 = tensor.empty() : tensor<13x12xi64>
        %273 = tensor.empty() : tensor<3x12xi64>
        %274 = linalg.matmul ins(%110, %272 : tensor<3x13xi64>, tensor<13x12xi64>) outs(%273 : tensor<3x12xi64>) -> tensor<3x12xi64>
        %275 = vector.insert %c9243_i16, %186 [8] : i16 into vector<13xi16>
        %276 = vector.insert %false_5, %112 [2] : i1 into vector<3xi1>
        %277 = arith.andi %extracted, %false_34 : i1
        %278 = arith.shrui %44, %44 : i32
        %279 = index.casts %126 : index to i32
        %280 = arith.addf %cst_1, %cst_3 : f32
        %281 = vector.load %118[%c5, %c1, %c2] : memref<7x3x3xi64>, vector<13xi64>
        %282 = vector.create_mask %130, %c15 : vector<3x13xi1>
        %283 = vector.transpose %172, [0] : vector<2xi32> to vector<2xi32>
        %284 = index.casts %c8 : index to i32
        %285 = vector.shuffle %139, %30 [1, 3, 4] : vector<3x13xi1>, vector<3x13xi1>
        %286 = tensor.empty() : tensor<3x13xi32>
        scf.yield %286 : tensor<3x13xi32>
      }
      %252 = arith.remsi %c1_i64, %63 : i64
      %253 = vector.matrix_multiply %172, %40 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<2xi32>, vector<12xi32>) -> vector<6xi32>
      %alloc_49 = memref.alloc() : memref<13xi1>
      %254 = vector.broadcast %c1649221030_i32 : i32 to vector<3xi32>
      %255 = vector.gather %alloc_49[%138] [%254], %107, %132 : memref<13xi1>, vector<3xi32>, vector<3xi1>, vector<3xi1> into vector<3xi1>
      %256 = math.round %7 : tensor<13xf32>
      %257 = tensor.empty() : tensor<13xi32>
      %258 = math.fpowi %7, %257 : tensor<13xf32>, tensor<13xi32>
      %259 = arith.maxf %cst_8, %cst_9 : f16
      %260 = arith.subi %c7447_i16, %extracted_41 : i16
      %261 = index.divu %126, %c10
      %262 = math.powf %cst_9, %cst_7 : f16
      %263 = affine.if affine_set<(d0, d1, d2, d3) : (d3 ceildiv 2 == 0, d3 ceildiv 2 == 0, d1 + d2 - d1 >= 0)>(%c11, %c1, %c3, %c0) -> memref<13xi64> {
        %268 = arith.andi %true, %141 : i1
        %269 = math.rsqrt %expanded : tensor<3x13x1xf32>
        %270 = tensor.empty() : tensor<7x3x3xi1>
        %271 = vector.gather %270[%c8, %c6, %c12] [%185], %184, %184 : tensor<7x3x3xi1>, vector<13xi32>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %272 = index.ceildivu %144, %c7
        %273 = vector.shuffle %21, %254 [1, 4, 5, 6, 9] : vector<12xi32>, vector<3xi32>
        %alloca_50 = memref.alloca() : memref<3xi64>
        %274 = arith.xori %false_33, %extracted_35 : i1
        %275 = vector.splat %c15 : vector<3x13xindex>
        %alloc_51 = memref.alloc() : memref<13xi64>
        affine.yield %alloc_51 : memref<13xi64>
      } else {
        %268 = math.exp %collapsed : tensor<21x3xf16>
        %269 = arith.maxui %true, %false_33 : i1
        %270 = index.ceildivu %c15, %111
        %271 = arith.remsi %c1649221030_i32, %c1649221030_i32 : i32
        %from_elements_50 = tensor.from_elements %cst_7, %cst_7, %cst_8, %cst_9, %cst_9, %cst_0, %cst_6, %cst_7, %cst_7, %cst_9, %cst_9, %cst_6, %cst_9 : tensor<13xf16>
        %272 = math.absi %transposed : tensor<3xi32>
        %273 = vector.splat %true : vector<3x13xi1>
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0 + 8, -d0, d2, (d0 - d0 ceildiv 8) mod 8)>(%170, %c13, %136)
        %alloc_51 = memref.alloc() : memref<13xi64>
        affine.yield %alloc_51 : memref<13xi64>
      }
      %264 = arith.remsi %c1649221030_i32, %extracted_40 : i32
      %265 = math.atan2 %cst_1, %cst_4 : f32
      scf.if %false_34 {
        %268 = bufferization.to_tensor %87 : memref<3xi16>
        %269 = bufferization.to_tensor %alloc : memref<3x13xf32>
        %270 = arith.shrsi %164, %false_33 : i1
        %271 = vector.extract_strided_slice %142 {offsets = [1], sizes = [2], strides = [1]} : vector<7x3x3xi16> to vector<2x3x3xi16>
        %272 = vector.create_mask %261 : vector<13xi1>
        %273 = affine.min affine_map<(d0, d1) -> (d1 + d0 - 32 + d0 - 32 - 2)>(%c11, %c12)
        %274 = bufferization.to_tensor %alloc_21 : memref<13xi32>
        %275 = bufferization.to_memref %13 : memref<3xi16>
      } else {
        %268 = affine.load %alloc_15[%c6] : memref<3xi1>
        %269 = arith.cmpf true, %cst_0, %cst_8 : f16
        %270 = memref.atomic_rmw mulf %cst_6, %alloc_17[%c2] : (f16, memref<3xf16>) -> f16
        %271 = index.maxu %48, %54
        %272 = bufferization.to_tensor %alloc_21 : memref<13xi32>
        %273 = math.roundeven %12 : tensor<3x13xf32>
        %274 = math.atan2 %11, %11 : tensor<7x3x3xf16>
        %275 = vector.broadcast %131 : index to vector<12xindex>
        %276 = vector.broadcast %false_34 : i1 to vector<12xi1>
        %277 = vector.broadcast %c9243_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_23[%c2, %c9] [%275], %276, %277 : memref<3x13xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
      }
      %266 = affine.if affine_set<(d0) : ((-d0 + (-d0) mod 8 + 64) * 2 >= 0, (-d0 + (-d0) mod 8 + 64) * 2 == 0, (-d0 + (-d0) mod 8 + 64) * 2 >= 0)>(%c8) -> f32 {
        %268 = vector.load %alloc_23[%c0, %c3] : memref<3x13xi16>, vector<7x3x3xi16>
        %269 = index.ceildivs %80, %101
        %270 = math.exp2 %11 : tensor<7x3x3xf16>
        %271 = arith.ceildivsi %false_5, %141 : i1
        %272 = math.fma %cst_9, %cst_8, %cst_9 : f16
        %273 = affine.min affine_map<(d0) -> ((d0 + d0 ceildiv 128) floordiv 8 + d0 + d0 ceildiv 128, d0 + d0 ceildiv 128 - (d0 + d0 ceildiv 128) floordiv 8 - (d0 + d0 ceildiv 128))>(%153)
        %274 = math.expm1 %cst_7 : f16
        %275 = index.divs %37, %c5
        affine.yield %cst : f32
      } else {
        %268 = math.atan %7 : tensor<13xf32>
        %269 = math.expm1 %8 : tensor<7x3x3xf16>
        %270 = arith.subi %extracted, %extracted : i1
        %271 = index.sub %88, %88
        %272 = math.round %8 : tensor<7x3x3xf16>
        %273 = math.sqrt %12 : tensor<3x13xf32>
        %274 = arith.remui %c1649221030_i32, %extracted_40 : i32
        %275 = vector.broadcast %c7447_i16 : i16 to vector<7xi16>
        %276 = vector.broadcast %false : i1 to vector<7xi1>
        %277 = vector.maskedload %155[%c4], %276, %275 : memref<13xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        affine.yield %cst : f32
      }
      %267 = vector.bitcast %86 : vector<7x3x3xf16> to vector<7x3x3xf16>
    }
    memref.assume_alignment %149, 16 : memref<3x13xi64>
    %195 = math.ipowi %141, %true : i1
    %196 = arith.shrsi %false_5, %false_34 : i1
    %197 = bufferization.clone %alloc_17 : memref<3xf16> to memref<3xf16>
    %198 = affine.apply affine_map<(d0, d1) -> (d0 + ((d0 + 16) * 2 + 8) * 32 + 29)>(%c10, %97)
    %199 = arith.maxf %cst_9, %cst_0 : f16
    %200 = affine.if affine_set<(d0, d1, d2, d3) : (((d1 mod 4) ceildiv 128) floordiv 64 + (d1 mod 4) ceildiv 128 >= 0, -d0 >= 0)>(%c10, %c9, %c9, %c8) -> memref<7x3x3xf16> {
      %251 = tensor.empty() : tensor<7x3x3xf32>
      %252 = vector.load %197[%c0] : memref<3xf16>, vector<7x3x3xf16>
      memref.copy %alloc_18, %alloc_22 : memref<7x3x3xi32> to memref<7x3x3xi32>
      %253 = math.log %12 : tensor<3x13xf32>
      %254 = arith.ceildivsi %44, %extracted_40 : i32
      %alloca_49 = memref.alloca() : memref<3xi32>
      %255 = bufferization.clone %alloc_11 : memref<7x3x3xi64> to memref<7x3x3xi64>
      %256 = vector.insertelement %c1649221030_i32, %169[%c11 : index] : vector<4xi32>
      %alloc_50 = memref.alloc() : memref<7x3x3xf16>
      affine.yield %alloc_50 : memref<7x3x3xf16>
    } else {
      %251 = index.ceildivu %136, %c6
      memref.alloca_scope  {
        %258 = math.fma %cst_9, %cst_8, %cst_7 : f16
        %259 = arith.addf %cst_9, %cst_8 : f16
        %260 = arith.remsi %false_2, %extracted : i1
        %261 = math.ipowi %141, %false_33 : i1
        %262 = arith.remf %cst_4, %cst_1 : f32
        %263 = math.sqrt %0 : tensor<3xf16>
        %264 = math.exp %0 : tensor<3xf16>
        %265 = index.add %c6, %54
        %266 = math.log %cst_9 : f16
        %267 = vector.insert %184, %30 [0] : vector<13xi1> into vector<3x13xi1>
        bufferization.dealloc_tensor %14 : tensor<3xi1>
        %268 = math.expm1 %cst_9 : f16
        %269 = vector.load %150[%c1, %c4] : memref<3x13xi64>, vector<3x13xi64>
        %270 = math.copysign %12, %12 : tensor<3x13xf32>
        %271 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 8, d0 * 2)>(%131, %121, %100, %111)
        %272 = tensor.empty() : tensor<3xi16>
        %273 = vector.insertelement %extracted_40, %169[%70 : index] : vector<4xi32>
        %274 = vector.load %103[%c1, %c1, %c0] : memref<7x3x3xi64>, vector<3xi64>
        %275 = arith.shrsi %c9243_i16, %extracted_41 : i16
        %alloca_50 = memref.alloca() : memref<3x13xf32>
        %276 = arith.remsi %141, %false_5 : i1
        %277 = arith.maxsi %141, %extracted : i1
        %278 = arith.maxsi %c9243_i16, %c9243_i16 : i16
        %279 = bufferization.to_tensor %alloc_20 : memref<3x13xi1>
        %280 = vector.insert %false, %107 [0] : i1 into vector<3xi1>
        %281 = vector.flat_transpose %75 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %282 = index.casts %100 : index to i32
        %alloca_51 = memref.alloca() : memref<3x13xi64>
        %283 = arith.shli %44, %44 : i32
        %284 = bufferization.to_tensor %87 : memref<3xi16>
        %285 = arith.shrui %false_33, %extracted : i1
        %286 = arith.xori %c9243_i16, %extracted_41 : i16
      }
      %252 = arith.remsi %false_5, %false_34 : i1
      %253 = math.fma %cst_4, %cst_1, %cst_3 : f32
      %254 = math.atan2 %12, %12 : tensor<3x13xf32>
      %255 = index.ceildivu %70, %54
      %256 = math.absi %14 : tensor<3xi1>
      %257 = vector.extract_strided_slice %184 {offsets = [6], sizes = [2], strides = [1]} : vector<13xi1> to vector<2xi1>
      %alloc_49 = memref.alloc() : memref<7x3x3xf16>
      affine.yield %alloc_49 : memref<7x3x3xf16>
    }
    %201 = arith.xori %164, %false_34 : i1
    %202 = math.log10 %cst_6 : f16
    %extracted_43 = tensor.extract %14[%c2] : tensor<3xi1>
    %203 = vector.extract_strided_slice %75 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf16> to vector<2xf16>
    %204 = math.copysign %7, %7 : tensor<13xf32>
    %205 = vector.extract_strided_slice %161 {offsets = [0], sizes = [2], strides = [1]} : vector<3x13xf32> to vector<2x13xf32>
    %206 = math.rsqrt %8 : tensor<7x3x3xf16>
    %207 = vector.transpose %56, [0, 1] : vector<3x13xi1> to vector<3x13xi1>
    %208 = index.casts %false : i1 to index
    %209 = affine.if affine_set<(d0) : (((d0 mod 128) ceildiv 2 + 16) * 8 == 0, d0 mod 128 >= 0, d0 - 1 == 0)>(%c7) -> memref<3xi64> {
      %251 = vector.create_mask %c4 : vector<3xi1>
      %252 = scf.while (%arg1 = %c7447_i16) : (i16) -> i16 {
        %259 = math.ctpop %1 : tensor<3x13xi1>
        %260 = bufferization.to_memref %8 : memref<7x3x3xf16>
        %261 = math.roundeven %11 : tensor<7x3x3xf16>
        %262 = vector.gather %1[%c5, %48] [%185], %184, %184 : tensor<3x13xi1>, vector<13xi32>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %263 = arith.xori %false, %false : i1
        %264 = memref.realloc %alloc_17 : memref<3xf16> to memref<7xf16>
        %265 = math.fma %7, %7, %7 : tensor<13xf32>
        %266 = tensor.empty() : tensor<13xi32>
        scf.condition(%141) %c9243_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        %259 = arith.remf %cst_3, %cst_3 : f32
        %260 = arith.xori %c1649221030_i32, %extracted_40 : i32
        %261 = vector.multi_reduction <minf>, %203, %cst_0 [0] : vector<2xf16> to f16
        %262 = arith.remsi %extracted_43, %false_5 : i1
        %263 = math.tan %cst : f32
        %264 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 - 1))>(%c14, %37, %153)
        %265 = math.roundeven %11 : tensor<7x3x3xf16>
        %266 = math.log10 %cst_0 : f16
        %267 = math.copysign %cst_3, %cst_1 : f32
        %268 = bufferization.clone %alloc_15 : memref<3xi1> to memref<3xi1>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %172, %172, %44 : vector<2xi32>, vector<2xi32> into i32
        %270 = vector.insert %184, %30 [0] : vector<13xi1> into vector<3x13xi1>
        %from_elements_50 = tensor.from_elements %c9243_i16, %extracted_41, %c9243_i16, %extracted_41, %c9243_i16, %c7447_i16, %arg1, %arg1, %c9243_i16, %extracted_41, %c7447_i16, %arg1, %c7447_i16, %extracted_41, %c9243_i16, %c7447_i16, %arg1, %c9243_i16, %arg1, %extracted_41, %c9243_i16, %c9243_i16, %c9243_i16, %c7447_i16, %extracted_41, %c7447_i16, %extracted_41, %arg1, %c9243_i16, %c9243_i16, %c7447_i16, %extracted_41, %arg1, %c7447_i16, %arg1, %extracted_41, %c7447_i16, %c7447_i16, %c7447_i16, %c7447_i16, %extracted_41, %c9243_i16, %arg1, %c7447_i16, %c9243_i16, %arg1, %extracted_41, %c9243_i16, %c9243_i16, %arg1, %arg1, %c7447_i16, %c7447_i16, %c9243_i16, %c7447_i16, %arg1, %c9243_i16, %arg1, %c7447_i16, %c7447_i16, %c7447_i16, %c7447_i16, %c9243_i16 : tensor<7x3x3xi16>
        %271 = arith.maxsi %extracted_40, %c1649221030_i32 : i32
        %272 = vector.create_mask %c13, %170 : vector<3x13xi1>
        %273 = index.casts %c9 : index to i32
        scf.yield %c7447_i16 : i16
      }
      %253 = vector.extract_strided_slice %160 {offsets = [1], sizes = [1], strides = [1]} : vector<3x13xf32> to vector<1x13xf32>
      %254 = arith.negf %cst : f32
      %255 = index.castu %true : i1 to index
      %256 = arith.divsi %141, %extracted_35 : i1
      %257 = math.log1p %7 : tensor<13xf32>
      %258 = arith.muli %extracted_35, %extracted_43 : i1
      %alloc_49 = memref.alloc() : memref<3xi64>
      affine.yield %alloc_49 : memref<3xi64>
    } else {
      %251 = scf.while (%arg1 = %139) : (vector<3x13xi1>) -> vector<3x13xi1> {
        %260 = math.roundeven %cst_4 : f32
        %inserted_50 = tensor.insert %false_33 into %10[%c8] : tensor<13xi1>
        %261 = bufferization.to_tensor %alloc_23 : memref<3x13xi16>
        %262 = math.tan %8 : tensor<7x3x3xf16>
        %263 = math.ctlz %transposed : tensor<3xi32>
        memref.assume_alignment %alloc_22, 16 : memref<7x3x3xi32>
        %splat = tensor.splat %63 : tensor<7x3x3xi64>
        %264 = vector.broadcast %c1_i64 : i64 to vector<7x3x3xi64>
        %265 = vector.broadcast %false : i1 to vector<7x3x3xi1>
        %266 = vector.broadcast %c1649221030_i32 : i32 to vector<7x3x3xi32>
        %267 = vector.gather %alloc_11[%111, %153, %c11] [%266], %265, %264 : memref<7x3x3xi64>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xi64> into vector<7x3x3xi64>
        scf.condition(%extracted) %139 : vector<3x13xi1>
      } do {
      ^bb0(%arg1: vector<3x13xi1>):
        %260 = math.roundeven %0 : tensor<3xf16>
        %261 = vector.flat_transpose %107 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %262 = arith.remf %cst_7, %cst_9 : f16
        %263 = arith.shrui %c7447_i16, %c9243_i16 : i16
        %264 = vector.extract_strided_slice %139 {offsets = [1], sizes = [1], strides = [1]} : vector<3x13xi1> to vector<1x13xi1>
        %265 = arith.xori %extracted, %extracted_35 : i1
        %266 = math.fpowi %11, %77 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        %267 = vector.load %150[%c2, %c6] : memref<3x13xi64>, vector<3x13xi64>
        %268 = tensor.empty() : tensor<3x13x1xi32>
        %269 = math.fpowi %expanded, %268 : tensor<3x13x1xf32>, tensor<3x13x1xi32>
        %270 = arith.shrui %c1649221030_i32, %extracted_40 : i32
        %271 = arith.remf %cst, %cst_1 : f32
        %272 = arith.remui %63, %63 : i64
        memref.assume_alignment %alloc_16, 8 : memref<13xi32>
        %273 = math.tan %cst_3 : f32
        %274 = arith.remf %cst, %cst : f32
        %275 = math.log %cst_1 : f32
        scf.yield %139 : vector<3x13xi1>
      }
      %252 = tensor.empty() : tensor<3xf32>
      %253 = affine.if affine_set<(d0, d1, d2) : (d2 mod 32 - 64 == 0, d0 >= 0)>(%c13, %c9, %c5) -> memref<3x13xf16> {
        %260 = affine.load %197[%c8] : memref<3xf16>
        %261 = arith.remf %cst_0, %cst_7 : f16
        memref.assume_alignment %alloc_23, 4 : memref<3x13xi16>
        %collapsed_50 = tensor.collapse_shape %77 [[0, 1], [2]] : tensor<7x3x3xi32> into tensor<21x3xi32>
        %262 = vector.broadcast %c7447_i16 : i16 to vector<12xi16>
        %263 = vector.broadcast %extracted_35 : i1 to vector<12xi1>
        %264 = vector.maskedload %98[%c0, %c1], %263, %262 : memref<3x13xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %from_elements_51 = tensor.from_elements %cst_7, %cst_0, %cst_8, %cst_6, %cst_7, %cst_0, %cst_8, %cst_6, %cst_6, %cst_8, %cst_0, %cst_9, %cst_6, %cst_7, %cst_8, %cst_9, %260, %cst_9, %cst_8, %cst_9, %cst_9, %cst_0, %cst_8, %cst_7, %cst_8, %260, %cst_9, %260, %cst_7, %cst_8, %cst_6, %cst_7, %cst_8, %cst_0, %cst_7, %cst_9, %cst_6, %cst_6, %cst_9, %cst_7, %260, %cst_9, %cst_9, %cst_8, %cst_9, %cst_6, %260, %cst_8, %260, %cst_0, %cst_6, %cst_6, %cst_8, %cst_9, %cst_6, %cst_0, %cst_9, %cst_7, %cst_7, %cst_7, %260, %cst_8, %cst_7 : tensor<7x3x3xf16>
        %265 = math.absf %8 : tensor<7x3x3xf16>
        %266 = index.ceildivu %208, %70
        %alloc_52 = memref.alloc() : memref<3x13xf16>
        affine.yield %alloc_52 : memref<3x13xf16>
      } else {
        %260 = arith.ori %c9243_i16, %c9243_i16 : i16
        %261 = arith.maxsi %false, %false_34 : i1
        %262 = vector.flat_transpose %40 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
        %263 = bufferization.to_memref %16 : memref<13xi1>
        %264 = bufferization.to_memref %reduced : memref<13xi1>
        %265 = index.casts %66 : index to i32
        %alloc_50 = memref.alloc() : memref<3x13xi1>
        %266 = index.ceildivu %198, %c11
        %alloc_51 = memref.alloc() : memref<3x13xf16>
        affine.yield %alloc_51 : memref<3x13xf16>
      }
      %254 = arith.shrui %c1_i64, %c1_i64 : i64
      %255 = index.casts %138 : index to i32
      %256 = vector.load %118[%c2, %c2, %c2] : memref<7x3x3xi64>, vector<3x13xi64>
      %257 = vector.broadcast %cst : f32 to vector<3x13xf32>
      %258 = vector.fma %257, %257, %161 : vector<3x13xf32>
      %259 = arith.floordivsi %c7447_i16, %c7447_i16 : i16
      %alloc_49 = memref.alloc() : memref<3xi64>
      affine.yield %alloc_49 : memref<3xi64>
    }
    %210 = arith.remui %true, %164 : i1
    %211 = index.maxs %126, %126
    %from_elements = tensor.from_elements %c1649221030_i32, %44, %extracted_40, %44, %c1649221030_i32, %extracted_40, %44, %c1649221030_i32, %extracted_40, %c1649221030_i32, %c1649221030_i32, %c1649221030_i32, %extracted_40, %c1649221030_i32, %44, %extracted_40, %extracted_40, %extracted_40, %extracted_40, %extracted_40, %extracted_40, %44, %44, %c1649221030_i32, %extracted_40, %44, %c1649221030_i32, %extracted_40, %c1649221030_i32, %44, %c1649221030_i32, %c1649221030_i32, %44, %44, %extracted_40, %extracted_40, %extracted_40, %44, %44 : tensor<3x13xi32>
    %212 = math.floor %cst_4 : f32
    %213 = math.atan2 %7, %7 : tensor<13xf32>
    %214 = math.absi %5 : tensor<3xi32>
    %215 = math.powf %0, %0 : tensor<3xf16>
    %216 = math.tanh %8 : tensor<7x3x3xf16>
    %217 = math.log10 %7 : tensor<13xf32>
    %218 = math.log1p %expanded : tensor<3x13x1xf32>
    %rank = tensor.rank %8 : tensor<7x3x3xf16>
    %219 = arith.maxf %cst_3, %cst : f32
    %220 = math.exp %12 : tensor<3x13xf32>
    vector.print %75 : vector<3xf16>
    %221 = arith.maxui %false, %false_5 : i1
    %222 = bufferization.clone %alloc_16 : memref<13xi32> to memref<13xi32>
    %223 = arith.remsi %141, %false_5 : i1
    %false_44 = index.bool.constant false
    %224 = arith.remui %false_44, %extracted_35 : i1
    %from_elements_45 = tensor.from_elements %63, %c1_i64, %c1_i64, %c1_i64, %63, %63, %63, %c1_i64, %63, %c1_i64, %63, %c1_i64, %63 : tensor<13xi64>
    %c804167783_i32 = arith.constant 804167783 : i32
    %225 = index.maxu %208, %c11
    %226 = arith.xori %63, %c1_i64 : i64
    %227 = math.log2 %expanded : tensor<3x13x1xf32>
    %228 = math.atan2 %11, %11 : tensor<7x3x3xf16>
    %229 = bufferization.to_memref %reduced : memref<13xi1>
    %230 = math.ctlz %false_2 : i1
    %231 = arith.shrui %false_2, %false_5 : i1
    %232 = affine.load %150[%c12, %c15] : memref<3x13xi64>
    %233 = arith.subi %extracted_35, %false_34 : i1
    %234 = bufferization.to_tensor %155 : memref<13xi16>
    %235 = math.ipowi %9, %9 : tensor<13xi1>
    %236 = vector.insert %75, %86 [6, 0] : vector<3xf16> into vector<7x3x3xf16>
    %237 = index.casts %c4 : index to i32
    %238 = math.expm1 %8 : tensor<7x3x3xf16>
    %239 = arith.minui %extracted_35, %false_34 : i1
    %240 = index.add %c9, %208
    %241 = affine.min affine_map<(d0) -> (d0 * -64, ((-d0) ceildiv 16) mod 64)>(%100)
    %242 = arith.ceildivsi %c1_i64, %63 : i64
    %243 = math.exp %collapsed : tensor<21x3xf16>
    %alloc_46 = memref.alloc() : memref<3x13xi16>
    %244 = math.exp2 %cst_9 : f16
    %alloca = memref.alloca() : memref<3xi16>
    %245 = arith.shrsi %false, %false_5 : i1
    %246 = bufferization.to_memref %110 : memref<3x13xi64>
    %247 = tensor.empty() : tensor<13xi1>
    %248 = linalg.copy ins(%9 : tensor<13xi1>) outs(%247 : tensor<13xi1>) -> tensor<13xi1>
    %alloc_47 = memref.alloc() : memref<13xi32>
    linalg.transpose ins(%222 : memref<13xi32>) outs(%alloc_47 : memref<13xi32>) permutation = [0] 
    %alloc_48 = memref.alloc() : memref<f32>
    linalg.reduce ins(%12 : tensor<3x13xf32>) outs(%alloc_48 : memref<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %251 = math.round %cst_1 : f32
        affine.for %arg1 = 0 to 29 {
        }
        %252 = math.ipowi %c1649221030_i32, %c1649221030_i32 : i32
        %253 = arith.floordivsi %c1_i64, %232 : i64
        %254 = vector.flat_transpose %203 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %255 = arith.andi %false, %164 : i1
        %256 = math.fpowi %8, %77 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        %257 = bufferization.clone %alloc_12 : memref<13xi16> to memref<13xi16>
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    %249 = scf.parallel (%arg1) = (%225) to (%c9) step (%c13) init (%extracted_43) -> i1 {
      %rank_49 = tensor.rank %9 : tensor<13xi1>
      %251 = vector.broadcast %88 : index to vector<7xindex>
      %252 = vector.broadcast %false : i1 to vector<7xi1>
      %253 = vector.broadcast %c1_i64 : i64 to vector<7xi64>
      vector.scatter %alloc_14[%c0, %c12] [%251], %252, %253 : memref<3x13xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      bufferization.dealloc_tensor %17 : tensor<13xi1>
      %254 = arith.subi %true, %164 : i1
      %extracted_50 = tensor.extract %16[%c10] : tensor<13xi1>
      %255 = arith.andi %c9243_i16, %c7447_i16 : i16
      %256 = vector.reduction <mul>, %169 : vector<4xi32> into i32
      %257 = arith.shrui %extracted_35, %extracted_43 : i1
      %258 = math.round %collapsed : tensor<21x3xf16>
      %259 = arith.floordivsi %c1_i64, %63 : i64
      %260 = math.ipowi %3, %3 : tensor<3x13xi64>
      %261 = math.round %7 : tensor<13xf32>
      %262 = vector.extract_strided_slice %139 {offsets = [1], sizes = [1], strides = [1]} : vector<3x13xi1> to vector<1x13xi1>
      %263 = math.log10 %cst_7 : f16
      %264 = math.floor %8 : tensor<7x3x3xf16>
      %265 = tensor.empty() : tensor<3x13xi1>
      %mapped_51 = linalg.map ins(%1 : tensor<3x13xi1>) outs(%265 : tensor<3x13xi1>)
        (%in: i1) {
          %266 = index.casts %c1_i64 : i64 to index
          %267 = math.sqrt %11 : tensor<7x3x3xf16>
          %268 = vector.load %alloc_22[%c2, %c1, %c0] : memref<7x3x3xi32>, vector<3xi32>
          %269 = tensor.empty() : tensor<21x3xi32>
          %270 = math.fpowi %collapsed, %269 : tensor<21x3xf16>, tensor<21x3xi32>
          %271 = math.powf %expanded, %expanded : tensor<3x13x1xf32>
          %272 = vector.broadcast %cst_3 : f32 to vector<3xf32>
          %273 = vector.fma %272, %272, %272 : vector<3xf32>
          %274 = vector.broadcast %cst_8 : f16 to vector<7x3xf16>
          %275 = vector.multi_reduction <minf>, %86, %274 [2] : vector<7x3x3xf16> to vector<7x3xf16>
          %276 = math.powf %cst_6, %cst_6 : f16
          %277 = vector.create_mask %66, %144 : vector<3x13xi1>
          %278 = index.ceildivs %198, %c6
          %279 = arith.maxsi %extracted_40, %44 : i32
          bufferization.dealloc_tensor %14 : tensor<3xi1>
          %280 = index.maxs %100, %130
          %281 = index.casts %extracted_35 : i1 to index
          %282 = math.powf %cst_9, %cst_6 : f16
          %283 = index.add %208, %c6
          %284 = math.cttz %3 : tensor<3x13xi64>
          %285 = arith.maxsi %63, %c1_i64 : i64
          %alloc_53 = memref.alloc() : memref<13xf16>
          %286 = vector.broadcast %cst_7 : f16 to vector<3x13xf16>
          %287 = vector.broadcast %c1649221030_i32 : i32 to vector<3x13xi32>
          %288 = vector.gather %alloc_53[%281] [%287], %30, %286 : memref<13xf16>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xf16> into vector<3x13xf16>
          vector.print %40 : vector<12xi32>
          %289 = arith.ori %in, %in : i1
          memref.copy %98, %alloc_23 : memref<3x13xi16> to memref<3x13xi16>
          %290 = arith.maxui %extracted_35, %false_44 : i1
          %291 = arith.cmpf ule, %cst_4, %cst_1 : f32
          %292 = bufferization.to_memref %24 : memref<i1>
          %alloca_54 = memref.alloca() : memref<3xi32>
          %293 = math.log1p %cst_1 : f32
          %294 = math.absi %c7447_i16 : i16
          %295 = arith.negf %cst_4 : f32
          %296 = arith.shrui %extracted_43, %false_2 : i1
          memref.store %63, %103[%c4, %c0, %c2] : memref<7x3x3xi64>
          bufferization.dealloc_tensor %5 : tensor<3xi32>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %false_52 = arith.constant false
      scf.reduce(%false_52)  : i1 {
      ^bb0(%arg2: i1, %arg3: i1):
        %266 = vector.broadcast %136 : index to vector<3xindex>
        %267 = vector.broadcast %63 : i64 to vector<3xi64>
        vector.scatter %alloc_10[%c0, %c0] [%266], %132, %267 : memref<3x13xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %268 = vector.insertelement %extracted_40, %172[%rank : index] : vector<2xi32>
        %269 = arith.maxui %141, %arg2 : i1
        %270 = math.fpowi %cst_0, %extracted_40 : f16, i32
        %271 = vector.load %alloc_23[%c1, %c2] : memref<3x13xi16>, vector<3x13xi16>
        %272 = vector.broadcast %100 : index to vector<12xindex>
        %273 = vector.broadcast %false_2 : i1 to vector<12xi1>
        vector.scatter %82[%c2, %c2] [%272], %273, %273 : memref<3x13xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %274 = math.round %cst_4 : f32
        %275 = vector.extract_strided_slice %203 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
        %true_53 = arith.constant true
        scf.reduce.return %true_53 : i1
      }
      scf.yield
    }
    %250 = affine.vector_load %155[%153] : memref<13xi16>, vector<3xi16>
    affine.vector_store %250, %98[%66, %138] : memref<3x13xi16>, vector<3xi16>
    vector.print %21 : vector<12xi32>
    vector.print %30 : vector<3x13xi1>
    vector.print %40 : vector<12xi32>
    vector.print %56 : vector<3x13xi1>
    vector.print %75 : vector<3xf16>
    vector.print %86 : vector<7x3x3xf16>
    vector.print %89 : vector<f32>
    vector.print %107 : vector<3xi1>
    vector.print %112 : vector<3xi1>
    vector.print %132 : vector<3xi1>
    vector.print %139 : vector<3x13xi1>
    vector.print %142 : vector<7x3x3xi16>
    vector.print %156 : vector<2xi32>
    vector.print %160 : vector<3x13xf32>
    vector.print %161 : vector<3x13xf32>
    vector.print %169 : vector<4xi32>
    vector.print %172 : vector<2xi32>
    vector.print %183 : vector<13xi16>
    vector.print %184 : vector<13xi1>
    vector.print %185 : vector<13xi32>
    vector.print %186 : vector<13xi16>
    vector.print %203 : vector<2xf16>
    vector.print %205 : vector<2x13xf32>
    vector.print %250 : vector<3xi16>
    vector.print %c7447_i16 : i16
    vector.print %c1649221030_i32 : i32
    vector.print %cst : f32
    vector.print %c9243_i16 : i16
    vector.print %cst_0 : f16
    vector.print %false : i1
    vector.print %cst_1 : f32
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %false_5 : i1
    vector.print %cst_6 : f16
    vector.print %cst_7 : f16
    vector.print %cst_8 : f16
    vector.print %cst_9 : f16
    vector.print %true : i1
    vector.print %c1_i64 : i64
    vector.print %44 : i32
    vector.print %63 : i64
    vector.print %false_33 : i1
    vector.print %extracted : i1
    vector.print %false_34 : i1
    vector.print %extracted_35 : i1
    vector.print %141 : i1
    vector.print %extracted_40 : i32
    vector.print %164 : i1
    vector.print %extracted_41 : i16
    vector.print %extracted_43 : i1
    vector.print %false_44 : i1
    vector.print %232 : i64
    return %0 : tensor<3xf16>
  }
}
