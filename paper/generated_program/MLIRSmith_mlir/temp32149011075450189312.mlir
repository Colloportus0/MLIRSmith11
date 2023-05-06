module {
  func.func @func1(%arg0: f32, %arg1: f16) -> index {
    %c890259428_i32 = arith.constant 890259428 : i32
    %c236460801_i64 = arith.constant 236460801 : i64
    %c1235670247_i32 = arith.constant 1235670247 : i32
    %cst = arith.constant 1.670400e+04 : f16
    %cst_0 = arith.constant 0x4D2B662F : f32
    %c-32597_i16 = arith.constant -32597 : i16
    %c6184_i16 = arith.constant 6184 : i16
    %c-8896_i16 = arith.constant -8896 : i16
    %cst_1 = arith.constant 7.512000e+03 : f16
    %cst_2 = arith.constant 0x4E319513 : f32
    %cst_3 = arith.constant 4.675200e+04 : f16
    %c1344093326_i64 = arith.constant 1344093326 : i64
    %cst_4 = arith.constant 2.05973568E+9 : f32
    %cst_5 = arith.constant 5.532800e+04 : f16
    %cst_6 = arith.constant 3.753600e+04 : f16
    %c-27751_i16 = arith.constant -27751 : i16
    %0 = tensor.empty() : tensor<14x14xi16>
    %1 = tensor.empty() : tensor<14x14xi32>
    %2 = tensor.empty() : tensor<4x14x4xi64>
    %3 = tensor.empty() : tensor<4x14x4xf32>
    %4 = tensor.empty() : tensor<14x14xf32>
    %5 = tensor.empty() : tensor<14x14xi1>
    %6 = tensor.empty() : tensor<14x14xi64>
    %7 = tensor.empty() : tensor<14x14xi1>
    %8 = tensor.empty() : tensor<14xf32>
    %9 = tensor.empty() : tensor<14x14xi1>
    %10 = tensor.empty() : tensor<4x14x4xi32>
    %11 = tensor.empty() : tensor<14x14xi64>
    %12 = tensor.empty() : tensor<14x14xi32>
    %13 = tensor.empty() : tensor<14x14xf16>
    %14 = tensor.empty() : tensor<4x14x4xf16>
    %15 = tensor.empty() : tensor<14x14xi1>
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
    %alloc = memref.alloc() : memref<14xf16>
    %alloc_7 = memref.alloc() : memref<4x14x4xf16>
    %alloc_8 = memref.alloc() : memref<14x14xi32>
    %alloc_9 = memref.alloc() : memref<4x14x4xi32>
    %alloc_10 = memref.alloc() : memref<14x14xi16>
    %alloc_11 = memref.alloc() : memref<4x14x4xf32>
    %alloc_12 = memref.alloc() : memref<4x14x4xi16>
    %alloc_13 = memref.alloc() : memref<14x14xi32>
    %alloc_14 = memref.alloc() : memref<4x14x4xf16>
    %alloc_15 = memref.alloc() : memref<14x14xf16>
    %alloc_16 = memref.alloc() : memref<14xf16>
    %alloc_17 = memref.alloc() : memref<14x14xi64>
    %alloc_18 = memref.alloc() : memref<14xi1>
    %alloc_19 = memref.alloc() : memref<14x14xi64>
    %alloc_20 = memref.alloc() : memref<4x14x4xi16>
    %alloc_21 = memref.alloc() : memref<14xf16>
    %16 = tensor.empty() : tensor<14x14xi1>
    %17 = linalg.copy ins(%5 : tensor<14x14xi1>) outs(%16 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %alloc_22 = memref.alloc() : memref<14x14xi64>
    linalg.transpose ins(%6 : tensor<14x14xi64>) outs(%alloc_22 : memref<14x14xi64>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%3 : tensor<4x14x4xf32>) outs(%18 : tensor<f32>) dimensions = [0, 1, 2] 
      (%in: f32, %init: f32) {
        %273 = vector.broadcast %cst_1 : f16 to vector<14xf16>
        %274 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %275 = vector.fma %274, %274, %274 : vector<14xf32>
        %276 = math.roundeven %cst_0 : f32
        %277 = math.ceil %4 : tensor<14x14xf32>
        %true_46 = index.bool.constant true
        %278 = scf.execute_region -> f16 {
          %281 = math.exp %8 : tensor<14xf32>
          memref.copy %alloc, %alloc_21 : memref<14xf16> to memref<14xf16>
          %282 = index.ceildivs %c5, %c4
          %283 = math.rsqrt %14 : tensor<4x14x4xf16>
          %284 = math.tan %cst_1 : f16
          %285 = index.ceildivu %c14, %c10
          %286 = bufferization.to_tensor %alloc_10 : memref<14x14xi16>
          %287 = affine.max affine_map<(d0, d1) -> (-(d0 - (d1 + d0) - (d0 + d1) * 2) + (d0 + d1) * 2, (d0 - (d1 + d0)) floordiv 16, d1 + d0, -(d0 - (d1 + d0) - (d0 + d1) * 2) + (d0 + d1) * 2)>(%c11, %c12)
          %288 = arith.ceildivsi %true_46, %true_46 : i1
          %289 = math.atan %3 : tensor<4x14x4xf32>
          %290 = arith.maxui %c236460801_i64, %c1344093326_i64 : i64
          %291 = math.copysign %cst_6, %cst_1 : f16
          %292 = arith.remf %in, %cst_2 : f32
          %293 = bufferization.to_tensor %alloc : memref<14xf16>
          bufferization.dealloc_tensor %15 : tensor<14x14xi1>
          %294 = memref.realloc %alloc : memref<14xf16> to memref<14xf16>
          scf.yield %cst_5 : f16
        }
        %279 = math.exp2 %4 : tensor<14x14xf32>
        %true_47 = index.bool.constant true
        %280 = arith.shli %c6184_i16, %c-27751_i16 : i16
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %19 = scf.parallel (%arg2) = (%c3) to (%c13) step (%c8) init (%9) -> tensor<14x14xi1> {
      %273 = math.log2 %4 : tensor<14x14xf32>
      %274 = tensor.empty() : tensor<4x14x4xf32>
      %alloc_46 = memref.alloc() : memref<14xi1>
      %false_47 = arith.constant false
      %275 = vector.broadcast %false_47 : i1 to vector<14x14xi1>
      vector.print %275 : vector<14x14xi1>
      %splat_48 = tensor.splat %cst_5 : tensor<4x14x4xf16>
      %expanded_49 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
      %276 = math.expm1 %reduced : tensor<f32>
      %277 = math.fpowi %cst_4, %c1235670247_i32 : f32, i32
      memref.assume_alignment %alloc_19, 2 : memref<14x14xi64>
      %278 = math.atan %cst_5 : f16
      %279 = math.expm1 %splat_48 : tensor<4x14x4xf16>
      %280 = arith.maxui %c1344093326_i64, %c236460801_i64 : i64
      %rank = tensor.rank %13 : tensor<14x14xf16>
      %281 = index.divs %arg2, %c5
      %282 = affine.load %alloc_16[%c13] : memref<14xf16>
      %283 = math.ipowi %17, %9 : tensor<14x14xi1>
      %284 = tensor.empty() : tensor<14x14xi1>
      scf.reduce(%284)  : tensor<14x14xi1> {
      ^bb0(%arg3: tensor<14x14xi1>, %arg4: tensor<14x14xi1>):
        %285 = affine.max affine_map<(d0, d1, d2) -> ((d2 - 32) ceildiv 32, d0 floordiv 32 - (d2 - 32) + 64)>(%c10, %c7, %c11)
        vector.print %275 : vector<14x14xi1>
        %286 = arith.remsi %c1235670247_i32, %c1235670247_i32 : i32
        %287 = math.tanh %cst_5 : f16
        %288 = math.ctpop %c-27751_i16 : i16
        %289 = arith.shrui %c890259428_i32, %c1235670247_i32 : i32
        %290 = vector.bitcast %275 : vector<14x14xi1> to vector<14x14xi1>
        bufferization.dealloc_tensor %0 : tensor<14x14xi16>
        %291 = tensor.empty() : tensor<14x14xi1>
        scf.reduce.return %291 : tensor<14x14xi1>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_9[%c2, %c3, %c6] : memref<4x14x4xi32>, vector<13xi32>
    affine.vector_store %20, %alloc_13[%c10, %c7] : memref<14x14xi32>, vector<13xi32>
    %alloc_23 = memref.alloc() : memref<14xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%alloc, %alloc_23 : memref<14xf16>, memref<14xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %c0_i64 = arith.constant 0 : i64
    %23 = vector.transfer_read %11[%c12, %c12], %c0_i64 : tensor<14x14xi64>, vector<14xi64>
    %c141074350_i32 = arith.constant 141074350 : i32
    %24 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2)>(%c8, %c12, %c8, %c14)
    %25 = math.round %4 : tensor<14x14xf32>
    %true = arith.constant true
    %inserted = tensor.insert %true into %17[%c1, %c11] : tensor<14x14xi1>
    %alloc_24 = memref.alloc() : memref<14x14xi1>
    memref.tensor_store %17, %alloc_24 : memref<14x14xi1>
    %26 = affine.max affine_map<(d0) -> (((d0 mod 4) ceildiv 128) ceildiv 2, d0 ceildiv 64, d0, (d0 mod 4) * -2 - 2)>(%c3)
    %27 = index.ceildivs %c8, %c0
    %28 = math.expm1 %13 : tensor<14x14xf16>
    %29 = index.ceildivs %c4, %26
    %30 = arith.addi %c1235670247_i32, %c1235670247_i32 : i32
    %31 = math.rsqrt %4 : tensor<14x14xf32>
    %32 = index.divs %c14, %c0
    %33 = math.log2 %4 : tensor<14x14xf32>
    %34 = tensor.empty() : tensor<14x14xi1>
    %35 = linalg.matmul ins(%15, %17 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%34 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %36 = tensor.empty() : tensor<14x14xi1>
    %37 = linalg.matmul ins(%7, %5 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%36 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %38 = math.fpowi %cst_2, %c1235670247_i32 : f32, i32
    bufferization.dealloc_tensor %7 : tensor<14x14xi1>
    %39 = math.expm1 %cst : f16
    %false = arith.constant false
    %false_25 = arith.constant false
    %40 = vector.transfer_read %9[%c9, %c4], %false_25 : tensor<14x14xi1>, vector<i1>
    %41 = arith.cmpi ne, %c236460801_i64, %c0_i64 : i64
    %from_elements = tensor.from_elements %cst_4, %cst_0, %cst_2, %cst_0, %cst_0, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_0, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_0, %cst_4, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_4, %cst_0, %cst_0, %cst_2, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_4, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4, %cst_0, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_4, %cst_2, %cst_0, %cst_0, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_0, %cst_0, %cst_4, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_0, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_4, %cst_4, %cst_0, %cst_0, %cst_2, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_4, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_4, %cst_0, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_2, %cst_2, %cst_4, %cst_0, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<14x14xf32>
    %42 = vector.broadcast %cst_1 : f16 to vector<10x4xf16>
    %43 = vector.broadcast %cst_6 : f16 to vector<4xf16>
    %dest, %accumulated_value = vector.scan <minf>, %42, %43 {inclusive = true, reduction_dim = 0 : i64} : vector<10x4xf16>, vector<4xf16>
    %44 = arith.minui %c6184_i16, %c-8896_i16 : i16
    %alloc_26 = memref.alloc() : memref<14xf32>
    %45 = vector.broadcast %cst_4 : f32 to vector<14x14xf32>
    %46 = vector.broadcast %true : i1 to vector<14x14xi1>
    %47 = vector.broadcast %c1235670247_i32 : i32 to vector<14x14xi32>
    %48 = vector.gather %alloc_26[%c4] [%47], %46, %45 : memref<14xf32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf32> into vector<14x14xf32>
    %49 = arith.addi %c-8896_i16, %c6184_i16 : i16
    %50 = math.fma %21, %22, %21 : tensor<f16>
    %51 = arith.floordivsi %c890259428_i32, %c1235670247_i32 : i32
    %alloc_27 = memref.alloc() : memref<14x4xf32>
    %52 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27 : memref<14x4xf32>) outs(%3 : tensor<4x14x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %273 = math.round %cst_5 : f16
      memref.assume_alignment %alloc_11, 4 : memref<4x14x4xf32>
      %274 = arith.negf %cst_4 : f32
      %275 = vector.reduction <add>, %20 : vector<13xi32> into i32
      %inserted_46 = tensor.insert %cst_1 into %22[] : tensor<f16>
      %276 = math.fpowi %in, %c890259428_i32 : f32, i32
      %277 = arith.shrsi %c6184_i16, %c-27751_i16 : i16
      %rank = tensor.rank %reduced : tensor<f32>
      %278 = index.sub %c14, %c0
      %279 = arith.remui %c-27751_i16, %c-8896_i16 : i16
      %280 = vector.broadcast %out : f32 to vector<4xf32>
      %281 = vector.broadcast %true : i1 to vector<4xi1>
      %282 = vector.maskedload %alloc_26[%c10], %281, %280 : memref<14xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %283 = vector.create_mask %32, %c11, %rank : vector<4x14x4xi1>
      %284 = vector.insertelement %cst_0, %282[%c6 : index] : vector<4xf32>
      %collapsed_47 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<4x14x4xf16> into tensor<56x4xf16>
      %285 = tensor.empty() : tensor<14x14xi16>
      %mapped = linalg.map ins(%alloc_10, %alloc_10 : memref<14x14xi16>, memref<14x14xi16>) outs(%285 : tensor<14x14xi16>)
        (%in_48: i16, %in_49: i16) {
          %301 = arith.remui %in_49, %in_48 : i16
          %302 = math.log10 %cst_4 : f32
          %303 = tensor.empty() : tensor<14x14xi1>
          %304 = linalg.matmul ins(%16, %7 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%303 : tensor<14x14xi1>) -> tensor<14x14xi1>
          %305 = index.add %c11, %27
          %306 = math.expm1 %from_elements : tensor<14x14xf32>
          %307 = math.fpowi %14, %10 : tensor<4x14x4xf16>, tensor<4x14x4xi32>
          %308 = memref.atomic_rmw andi %c-27751_i16, %alloc_20[%c0, %c9, %c3] : (i16, memref<4x14x4xi16>) -> i16
          %309 = arith.maxui %in_49, %in_49 : i16
          %310 = tensor.empty() : tensor<14x14xf16>
          %311 = math.fpowi %4, %12 : tensor<14x14xf32>, tensor<14x14xi32>
          %312 = affine.apply affine_map<(d0, d1) -> (-d1)>(%26, %c10)
          %313 = arith.remsi %c1235670247_i32, %c890259428_i32 : i32
          %314 = math.exp %cst_2 : f32
          %315 = arith.mulf %cst_0, %cst_2 : f32
          %collapsed_50 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<4x14x4xf32> into tensor<56x4xf32>
          %316 = arith.negf %cst_1 : f16
          %317 = index.ceildivs %c5, %c6
          %318 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d0 - 2)>(%c15, %c13, %c14)
          %319 = arith.remui %true, %true : i1
          %320 = vector.multi_reduction <xor>, %20, %c890259428_i32 [0] : vector<13xi32> to i32
          memref.assume_alignment %alloc_12, 2 : memref<4x14x4xi16>
          %321 = math.roundeven %cst : f16
          %322 = arith.shrui %in_49, %in_48 : i16
          %323 = arith.ceildivsi %c236460801_i64, %c1344093326_i64 : i64
          %324 = bufferization.to_tensor %alloc_17 : memref<14x14xi64>
          %325 = math.log2 %14 : tensor<4x14x4xf16>
          %326 = index.castu %c7 : index to i32
          %327 = math.tan %collapsed_47 : tensor<56x4xf16>
          %328 = vector.broadcast %out : f32 to vector<4x14x4xf32>
          %329 = vector.fma %328, %328, %328 : vector<4x14x4xf32>
          %330 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
          %331 = vector.fma %330, %48, %45 : vector<14x14xf32>
          %332 = math.fpowi %from_elements, %12 : tensor<14x14xf32>, tensor<14x14xi32>
          %333 = index.sizeof
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %286 = vector.broadcast %cst_3 : f16 to vector<14xf16>
      vector.transfer_write %286, %alloc_14[%24, %rank, %27] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xf16>, memref<4x14x4xf16>
      %287 = index.divs %c9, %24
      %288 = arith.remui %true, %true : i1
      %289 = index.maxu %287, %c7
      %290 = arith.mulf %cst_3, %cst_1 : f16
      %291 = math.round %cst_2 : f32
      %292 = math.sqrt %13 : tensor<14x14xf16>
      %293 = math.copysign %cst_3, %cst_1 : f16
      %294 = arith.mulf %in, %cst_4 : f32
      vector.print %48 : vector<14x14xf32>
      %295 = vector.insertelement %out, %280[%c11 : index] : vector<4xf32>
      %296 = math.ctpop %10 : tensor<4x14x4xi32>
      %297 = memref.realloc %alloc_23 : memref<14xf16> to memref<10xf16>
      %298 = arith.addi %c-27751_i16, %c-32597_i16 : i16
      scf.index_switch %24 
      case 1 {
        %301 = arith.minsi %true, %true : i1
        %302 = arith.maxui %false, %false : i1
        %303 = math.exp %cst_1 : f16
        %304 = math.round %4 : tensor<14x14xf32>
        %305 = vector.matrix_multiply %282, %280 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %306 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %48, %45, %48 : vector<14x14xf32>, vector<14x14xf32> into vector<14x14xf32>
        %307 = bufferization.to_memref %1 : memref<14x14xi32>
        %308 = math.log1p %cst_2 : f32
        %309 = math.fpowi %out, %c890259428_i32 : f32, i32
        %310 = arith.ceildivsi %c0_i64, %c1344093326_i64 : i64
        %311 = vector.broadcast %c890259428_i32 : i32 to vector<4xi32>
        %312 = vector.transfer_write %311, %10[%rank, %c0, %rank] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xi32>, tensor<4x14x4xi32>
        %313 = arith.negf %out : f32
        %314 = vector.broadcast %c1235670247_i32 : i32 to vector<14xi32>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %47, %314 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
        %315 = math.ipowi %5, %7 : tensor<14x14xi1>
        %316 = index.floordivs %c1, %c1
        %317 = index.floordivs %c8, %c12
        scf.yield
      }
      case 2 {
        %301 = index.maxu %27, %c1
        %302 = vector.broadcast %cst_4 : f32 to vector<14xf32>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %45, %302 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
        %303 = affine.max affine_map<(d0) -> (0)>(%c4)
        %304 = index.sizeof
        %305 = arith.shrui %c6184_i16, %c-32597_i16 : i16
        %alloca_50 = memref.alloca() : memref<14x14xi1>
        %306 = tensor.empty() : tensor<56x4xi32>
        %307 = math.fpowi %collapsed_47, %306 : tensor<56x4xf16>, tensor<56x4xi32>
        %308 = arith.maxsi %c236460801_i64, %c0_i64 : i64
        %309 = math.log10 %14 : tensor<4x14x4xf16>
        %310 = arith.minui %false, %false : i1
        %311 = math.atan %14 : tensor<4x14x4xf16>
        %312 = index.ceildivs %287, %c5
        %313 = arith.shrui %false, %false : i1
        %314 = arith.remsi %c-27751_i16, %c-27751_i16 : i16
        %315 = math.sqrt %3 : tensor<4x14x4xf32>
        %316 = vector.extract_strided_slice %283 {offsets = [0], sizes = [4], strides = [1]} : vector<4x14x4xi1> to vector<4x14x4xi1>
        scf.yield
      }
      case 3 {
        %301 = vector.broadcast %c1235670247_i32 : i32 to vector<i32>
        vector.transfer_write %301, %alloc_13[%c15, %c8] : vector<i32>, memref<14x14xi32>
        %302 = tensor.empty() : tensor<i32>
        %303 = math.fpowi %21, %302 : tensor<f16>, tensor<i32>
        %304 = index.divs %c4, %c3
        %305 = vector.broadcast %out : f32 to vector<14xf32>
        %306 = vector.fma %305, %305, %305 : vector<14xf32>
        %307 = vector.flat_transpose %281 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %308 = math.fma %13, %13, %13 : tensor<14x14xf16>
        %rank_48 = tensor.rank %21 : tensor<f16>
        %309 = vector.multi_reduction <minsi>, %281, %307 [] : vector<4xi1> to vector<4xi1>
        %c33 = arith.constant 33 : index
        %inserted_49 = tensor.insert %cst_1 into %collapsed_47[%c33, %c2] : tensor<56x4xf16>
        %310 = arith.maxsi %c1235670247_i32, %c1235670247_i32 : i32
        %311 = math.cttz %2 : tensor<4x14x4xi64>
        %312 = math.ceil %cst_0 : f32
        %from_elements_50 = tensor.from_elements %false, %false, %true, %true, %true, %false, %false, %false, %true, %true, %false, %true, %true, %true, %true, %true, %true, %true, %false, %false, %true, %true, %true, %false, %false, %false, %true, %false, %false, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %false, %true, %false, %true, %true, %false, %true, %false, %false, %false, %true, %true, %false, %true, %false, %true, %false, %true, %true, %true, %false, %true, %false, %true, %true, %true, %true, %true, %false, %true, %false, %true, %true, %false, %false, %true, %false, %false, %true, %false, %false, %true, %true, %true, %true, %false, %true, %true, %false, %true, %true, %false, %true, %true, %false, %false, %true, %true, %true, %false, %true, %true, %false, %true, %false, %true, %true, %false, %true, %true, %true, %true, %false, %false, %false, %false, %false, %true, %true, %true, %false, %false, %false, %true, %true, %false, %true, %true, %true, %false, %true, %true, %true, %false, %false, %false, %false, %false, %true, %true, %true, %false, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true, %true, %false, %true, %false, %false, %false, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %false, %false, %false, %true, %false, %false, %false, %false, %true, %true, %true, %false, %true, %false, %false, %true, %true, %true, %true, %false, %false, %false, %false, %false, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true, %false, %true, %false, %true, %true, %true, %true, %true, %false, %false, %true, %true, %true, %true, %false, %true, %false, %false, %true, %true, %true, %false : tensor<4x14x4xi1>
        %expanded_51 = tensor.expand_shape %from_elements [[0], [1, 2]] : tensor<14x14xf32> into tensor<14x14x1xf32>
        %313 = tensor.empty() : tensor<14x14xi32>
        %314 = linalg.matmul ins(%1, %12 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%313 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %315 = index.add %26, %c14
        scf.yield
      }
      case 4 {
        %301 = math.floor %cst_6 : f16
        memref.assume_alignment %alloc_17, 2 : memref<14x14xi64>
        %302 = arith.negf %cst_4 : f32
        %303 = vector.shuffle %283, %283 [1, 2] : vector<4x14x4xi1>, vector<4x14x4xi1>
        %304 = math.ipowi %15, %5 : tensor<14x14xi1>
        %305 = vector.broadcast %cst_2 : f32 to vector<4x14x4xf32>
        %306 = vector.fma %305, %305, %305 : vector<4x14x4xf32>
        %307 = index.divu %c11, %26
        %308 = index.ceildivu %c7, %c11
        %309 = vector.broadcast %out : f32 to vector<4x4xf32>
        %310 = vector.outerproduct %280, %282, %309 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %311 = index.add %rank, %26
        %expanded_48 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<4x14x4xf16> into tensor<4x14x4x1xf16>
        %312 = arith.remf %in, %out : f32
        %313 = index.divs %32, %c11
        %extracted = tensor.extract %6[%c2, %c10] : tensor<14x14xi64>
        %314 = tensor.empty() : tensor<14x14xi1>
        %315 = linalg.matmul ins(%7, %15 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%314 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %316 = index.ceildivu %c9, %c2
        scf.yield
      }
      default {
        %301 = math.fma %4, %from_elements, %4 : tensor<14x14xf32>
        %alloca_48 = memref.alloca() : memref<14xi32>
        %302 = arith.remui %c890259428_i32, %c1235670247_i32 : i32
        %303 = vector.broadcast %in : f32 to vector<14x14xf32>
        %304 = vector.fma %303, %45, %48 : vector<14x14xf32>
        %alloc_49 = memref.alloc() : memref<14x14xf16>
        %305 = vector.multi_reduction <minf>, %282, %282 [] : vector<4xf32> to vector<4xf32>
        %306 = affine.max affine_map<(d0, d1) -> ((d1 floordiv 128) floordiv 8 + ((((d1 floordiv 128) floordiv 8) floordiv 32) ceildiv 64) floordiv 16 + 8)>(%c11, %c5)
        %splat_50 = tensor.splat %out : tensor<14xf32>
        %307 = math.atan %cst_1 : f16
        %308 = vector.broadcast %cst_5 : f16 to vector<14xf16>
        %309 = vector.transfer_write %308, %13[%rank, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xf16>, tensor<14x14xf16>
        %310 = index.sizeof
        %311 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %312 = vector.fma %311, %311, %311 : vector<14xf32>
        %313 = memref.realloc %alloc : memref<14xf16> to memref<13xf16>
        %314 = math.fma %21, %22, %22 : tensor<f16>
        %315 = math.log1p %cst_4 : f32
        %316 = arith.minui %c890259428_i32, %c890259428_i32 : i32
      }
      %299 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 2) floordiv 2, (d3 ceildiv 2) ceildiv 16 - (d3 + 8), d2)>(%c13, %278, %c15, %c0)
      %300 = arith.remf %cst, %cst_6 : f16
      linalg.yield %cst_4 : f32
    } -> tensor<4x14x4xf32>
    %53 = vector.multi_reduction <mul>, %45, %cst_2 [0, 1] : vector<14x14xf32> to f32
    memref.alloca_scope  {
      %273 = arith.floordivsi %c0_i64, %c236460801_i64 : i64
      %from_elements_46 = tensor.from_elements %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c6184_i16 : tensor<4x14x4xi16>
      %274 = math.tan %4 : tensor<14x14xf32>
      %275 = arith.maxsi %c1344093326_i64, %c0_i64 : i64
      %from_elements_47 = tensor.from_elements %c-32597_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-8896_i16, %c-32597_i16 : tensor<14xi16>
      %276 = index.add %c14, %c14
      %277 = index.maxs %c13, %c2
      %278 = math.expm1 %14 : tensor<4x14x4xf16>
      %279 = arith.maxsi %c236460801_i64, %c0_i64 : i64
      %280 = index.maxu %c0, %c13
      %281 = tensor.empty() : tensor<14xi32>
      %282 = math.fpowi %8, %281 : tensor<14xf32>, tensor<14xi32>
      %283 = vector.broadcast %c5 : index to vector<13xindex>
      %284 = vector.broadcast %true : i1 to vector<13xi1>
      %285 = vector.broadcast %cst_2 : f32 to vector<13xf32>
      vector.scatter %alloc_26[%c1] [%283], %284, %285 : memref<14xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
      %286 = index.ceildivu %c5, %c15
      %287 = affine.load %alloc_10[%c3, %c7] : memref<14x14xi16>
      %288 = math.ipowi %2, %2 : tensor<4x14x4xi64>
      %289 = arith.maxsi %c0_i64, %c0_i64 : i64
      %c1510721952_i32 = arith.constant 1510721952 : i32
      %290 = memref.realloc %alloc_26 : memref<14xf32> to memref<13xf32>
      %291 = vector.insertelement %c1235670247_i32, %20[%c12 : index] : vector<13xi32>
      %292 = arith.remsi %c890259428_i32, %c1235670247_i32 : i32
      %293 = arith.addi %c-8896_i16, %c-8896_i16 : i16
      %294 = scf.execute_region -> tensor<4x14x4xf16> {
        %305 = vector.broadcast %c6184_i16 : i16 to vector<14x14xi16>
        %306 = vector.gather %alloc_20[%c2, %c12, %c10] [%47], %46, %305 : memref<4x14x4xi16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi16> into vector<14x14xi16>
        %307 = bufferization.clone %alloc_19 : memref<14x14xi64> to memref<14x14xi64>
        %308 = arith.maxui %c-27751_i16, %c-27751_i16 : i16
        %309 = math.log10 %4 : tensor<14x14xf32>
        %310 = math.rsqrt %cst : f16
        %311 = math.round %53 : f32
        %312 = vector.shuffle %46, %46 [2, 3, 4, 5, 6, 7, 8, 10, 12, 13, 19, 20, 21, 23, 24, 26, 27] : vector<14x14xi1>, vector<14x14xi1>
        %313 = arith.shrui %287, %c6184_i16 : i16
        %314 = math.fpowi %cst, %c1235670247_i32 : f16, i32
        %315 = index.sizeof
        %316 = math.exp %cst_3 : f16
        %317 = index.floordivs %c9, %c11
        %alloc_49 = memref.alloc() : memref<4x14x4xi16>
        %318 = vector.create_mask %c9, %c12 : vector<14x14xi1>
        %319 = math.round %cst_5 : f16
        %c-29576_i16 = arith.constant -29576 : i16
        scf.yield %14 : tensor<4x14x4xf16>
      }
      %295 = index.maxu %c4, %26
      %296 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 33, -(d2 + 32))>(%c3, %277, %26, %c4)
      %297 = index.sizeof
      %splat_48 = tensor.splat %cst_2 : tensor<14x14xf32>
      %298 = tensor.empty() : tensor<14x14xf32>
      %299 = linalg.matmul ins(%splat_48, %4 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%298 : tensor<14x14xf32>) -> tensor<14x14xf32>
      %300 = math.absf %3 : tensor<4x14x4xf32>
      %301 = vector.transpose %45, [0, 1] : vector<14x14xf32> to vector<14x14xf32>
      %302 = math.expm1 %reduced : tensor<f32>
      %303 = index.maxs %c8, %c15
      %304 = affine.apply affine_map<(d0) -> (d0 + 4)>(%c9)
    }
    %54 = tensor.empty() : tensor<14x14xi1>
    %55 = linalg.matmul ins(%7, %17 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%54 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %56 = index.divu %c7, %c4
    %57 = index.sub %c7, %c11
    %58 = math.sqrt %from_elements : tensor<14x14xf32>
    %59 = arith.divui %c6184_i16, %c-27751_i16 : i16
    %60 = vector.broadcast %true : i1 to vector<14xi1>
    %61 = vector.maskedload %alloc_18[%c6], %60, %60 : memref<14xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
    %62 = index.casts %false : i1 to index
    %63 = vector.insertelement %c1235670247_i32, %20[%c3 : index] : vector<13xi32>
    %64 = vector.create_mask %c2 : vector<14xi1>
    %65 = arith.shrui %false, %false : i1
    %66 = math.log2 %13 : tensor<14x14xf16>
    %67 = tensor.empty() : tensor<14x14xi1>
    %68 = linalg.matmul ins(%15, %9 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%67 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %inserted_28 = tensor.insert %53 into %18[] : tensor<f32>
    %69 = bufferization.to_tensor %alloc_8 : memref<14x14xi32>
    %70 = tensor.empty() : tensor<4x14x4xi32>
    %71 = vector.bitcast %47 : vector<14x14xi32> to vector<14x14xi32>
    %72 = vector.multi_reduction <minui>, %61, %60 [] : vector<14xi1> to vector<14xi1>
    %inserted_29 = tensor.insert %c1235670247_i32 into %10[%c3, %c9, %c0] : tensor<4x14x4xi32>
    %73 = memref.load %alloc_26[%c11] : memref<14xf32>
    %74 = math.tan %22 : tensor<f16>
    %75 = vector.broadcast %cst_2 : f32 to vector<4x14x4xf32>
    %76 = vector.fma %75, %75, %75 : vector<4x14x4xf32>
    %77 = arith.negf %cst : f16
    %78 = vector.outerproduct %60, %61, %46 {kind = #vector.kind<minsi>} : vector<14xi1>, vector<14xi1>
    %79 = bufferization.to_tensor %alloc_17 : memref<14x14xi64>
    %80 = index.castu %26 : index to i32
    %81 = arith.maxui %c1235670247_i32, %c1235670247_i32 : i32
    %82 = index.add %62, %c13
    %83 = arith.xori %c236460801_i64, %c1344093326_i64 : i64
    scf.index_switch %82 
    case 1 {
      %273 = arith.remui %c6184_i16, %c-8896_i16 : i16
      bufferization.dealloc_tensor %7 : tensor<14x14xi1>
      %274 = vector.create_mask %32, %c4, %82 : vector<4x14x4xi1>
      %275 = arith.remui %c-32597_i16, %c6184_i16 : i16
      %276 = math.absi %9 : tensor<14x14xi1>
      %277 = arith.remui %true, %false : i1
      %278 = vector.extract_strided_slice %46 {offsets = [4], sizes = [7], strides = [1]} : vector<14x14xi1> to vector<7x14xi1>
      %279 = arith.maxf %cst_4, %53 : f32
      %280 = tensor.empty() : tensor<i32>
      %281 = math.fpowi %22, %280 : tensor<f16>, tensor<i32>
      %282 = vector.broadcast %cst_3 : f16 to vector<14xf16>
      %283 = vector.maskedload %alloc_16[%c5], %61, %282 : memref<14xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      %284 = vector.broadcast %53 : f32 to vector<14xf32>
      %285 = vector.fma %284, %284, %284 : vector<14xf32>
      %286 = index.divu %c13, %c4
      %287 = tensor.empty() : tensor<14x14xi1>
      %288 = linalg.matmul ins(%15, %5 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%287 : tensor<14x14xi1>) -> tensor<14x14xi1>
      %289 = memref.realloc %alloc_16 : memref<14xf16> to memref<10xf16>
      %290 = math.exp %14 : tensor<4x14x4xf16>
      %291 = arith.remui %c0_i64, %c236460801_i64 : i64
      scf.yield
    }
    default {
      %rank = tensor.rank %8 : tensor<14xf32>
      memref.assume_alignment %alloc_7, 2 : memref<4x14x4xf16>
      %273 = vector.outerproduct %60, %60, %46 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
      %274 = scf.while (%arg2 = %alloc_12) : (memref<4x14x4xi16>) -> memref<4x14x4xi16> {
        %286 = arith.muli %c890259428_i32, %c1235670247_i32 : i32
        %287 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %288 = vector.multi_reduction <minf>, %76, %287 [0, 2] : vector<4x14x4xf32> to vector<14xf32>
        %289 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 floordiv 64)>(%82, %24, %c1, %c11)
        %290 = arith.minf %cst_5, %cst_3 : f16
        %291 = arith.subi %true, %false : i1
        %292 = math.absf %cst_3 : f16
        %293 = arith.muli %c6184_i16, %c-32597_i16 : i16
        %294 = arith.divf %cst_3, %cst_3 : f16
        scf.condition(%true) %alloc_12 : memref<4x14x4xi16>
      } do {
      ^bb0(%arg2: memref<4x14x4xi16>):
        %286 = arith.xori %true, %false : i1
        %alloca_48 = memref.alloca() : memref<14x14xf32>
        %287 = math.roundeven %14 : tensor<4x14x4xf16>
        %alloc_49 = memref.alloc() : memref<14xi16>
        %288 = vector.broadcast %c6184_i16 : i16 to vector<14x14xi16>
        %289 = vector.gather %alloc_49[%c3] [%71], %46, %288 : memref<14xi16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi16> into vector<14x14xi16>
        %290 = affine.load %alloc_21[%c11] : memref<14xf16>
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %c1235670247_i32 : vector<13xi32>, vector<13xi32> into i32
        %292 = memref.atomic_rmw assign %290, %alloc_14[%c2, %c0, %c3] : (f16, memref<4x14x4xf16>) -> f16
        %293 = math.exp %3 : tensor<4x14x4xf32>
        %294 = arith.remui %c890259428_i32, %c890259428_i32 : i32
        %295 = arith.minui %c-27751_i16, %c6184_i16 : i16
        %296 = arith.remui %c-8896_i16, %c6184_i16 : i16
        bufferization.dealloc_tensor %12 : tensor<14x14xi32>
        %297 = arith.divf %290, %cst_5 : f16
        %298 = math.ceil %3 : tensor<4x14x4xf32>
        %299 = math.floor %from_elements : tensor<14x14xf32>
        %300 = vector.outerproduct %60, %61, %46 {kind = #vector.kind<minui>} : vector<14xi1>, vector<14xi1>
        scf.yield %alloc_12 : memref<4x14x4xi16>
      }
      %275 = index.add %c12, %c1
      %276 = tensor.empty() : tensor<i32>
      %277 = math.fpowi %22, %276 : tensor<f16>, tensor<i32>
      %278 = arith.negf %cst_5 : f16
      %279 = arith.shrui %c1344093326_i64, %c0_i64 : i64
      %inserted_46 = tensor.insert %false into %15[%c4, %c5] : tensor<14x14xi1>
      %280 = scf.if %false -> (memref<14x14xi16>) {
        %286 = vector.insertelement %c1235670247_i32, %20[%32 : index] : vector<13xi32>
        %287 = math.cttz %1 : tensor<14x14xi32>
        %288 = math.ipowi %6, %6 : tensor<14x14xi64>
        %289 = math.exp2 %18 : tensor<f32>
        %rank_48 = tensor.rank %11 : tensor<14x14xi64>
        %true_49 = index.bool.constant true
        %alloc_50 = memref.alloc() : memref<14x14xi64>
        %290 = arith.shrsi %c890259428_i32, %c890259428_i32 : i32
        scf.yield %alloc_10 : memref<14x14xi16>
      } else {
        %286 = tensor.empty() : tensor<14xi32>
        %287 = arith.remf %53, %cst_4 : f32
        %288 = math.round %from_elements : tensor<14x14xf32>
        %289 = math.exp2 %cst : f16
        %290 = arith.remsi %c-32597_i16, %c-27751_i16 : i16
        %collapsed_48 = tensor.collapse_shape %4 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %291 = math.roundeven %22 : tensor<f16>
        %292 = math.atan %cst_5 : f16
        scf.yield %alloc_10 : memref<14x14xi16>
      }
      %281 = bufferization.to_tensor %alloc_22 : memref<14x14xi64>
      %282 = vector.broadcast %cst_0 : f32 to vector<14x4x4xf32>
      %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %48, %76, %282 : vector<14x14xf32>, vector<4x14x4xf32> into vector<14x4x4xf32>
      %284 = index.ceildivu %275, %c6
      %285 = index.sizeof
      %rank_47 = tensor.rank %13 : tensor<14x14xf16>
      memref.assume_alignment %alloc_26, 1 : memref<14xf32>
    }
    %alloca = memref.alloca() : memref<4x14x4xi1>
    scf.execute_region {
      %273 = math.exp %from_elements : tensor<14x14xf32>
      memref.assume_alignment %alloc_19, 16 : memref<14x14xi64>
      %274 = index.divs %26, %c12
      %275 = arith.minf %53, %cst_0 : f32
      %276 = vector.multi_reduction <minsi>, %64, %true [0] : vector<14xi1> to i1
      %277 = affine.max affine_map<(d0, d1) -> ((d0 + d1) ceildiv 8, d0 + d1, (d0 + d1) ceildiv 8)>(%82, %c2)
      %278 = vector.outerproduct %60, %64, %46 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
      %279 = vector.broadcast %c3 : index to vector<4xindex>
      %280 = vector.broadcast %true : i1 to vector<4xi1>
      %281 = vector.broadcast %c1235670247_i32 : i32 to vector<4xi32>
      vector.scatter %alloc_13[%c3, %c3] [%279], %280, %281 : memref<14x14xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %282 = math.exp %14 : tensor<4x14x4xf16>
      %283 = math.ipowi %9, %16 : tensor<14x14xi1>
      %from_elements_46 = tensor.from_elements %cst, %cst, %cst_3, %cst_1, %cst_3, %cst_3, %cst_5, %cst, %cst_3, %cst_3, %cst_5, %cst_6, %cst_3, %cst_1 : tensor<14xf16>
      %284 = bufferization.clone %alloc_22 : memref<14x14xi64> to memref<14x14xi64>
      %285 = math.atan %4 : tensor<14x14xf32>
      %286 = arith.remf %cst_0, %53 : f32
      %287 = arith.maxsi %276, %true : i1
      %288 = math.fma %53, %53, %cst_0 : f32
      scf.yield
    }
    %84 = index.sub %82, %56
    %85 = arith.shrsi %c0_i64, %c1344093326_i64 : i64
    %86 = arith.maxui %false, %true : i1
    %87 = math.atan %reduced : tensor<f32>
    %88 = index.divs %c15, %29
    %89 = math.rsqrt %13 : tensor<14x14xf16>
    %90 = tensor.empty() : tensor<14x14xi1>
    %91 = linalg.matmul ins(%5, %54 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%90 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %92 = math.rsqrt %8 : tensor<14xf32>
    %93 = affine.if affine_set<(d0, d1, d2, d3) : (d3 == 0, d2 + d0 == 0)>(%c7, %c15, %c11, %c2) -> i1 {
      %inserted_46 = tensor.insert %true into %17[%c5, %c5] : tensor<14x14xi1>
      %273 = scf.if %true -> (memref<14x14xi32>) {
        %278 = tensor.empty() : tensor<14x14xi1>
        %279 = math.fpowi %4, %12 : tensor<14x14xf32>, tensor<14x14xi32>
        %280 = bufferization.to_tensor %alloc_18 : memref<14xi1>
        vector.print %45 : vector<14x14xf32>
        %281 = index.divu %c12, %c3
        %282 = math.log10 %from_elements : tensor<14x14xf32>
        %283 = tensor.empty() : tensor<14x14xi1>
        %284 = linalg.matmul ins(%90, %15 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%283 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %285 = arith.addi %c890259428_i32, %c890259428_i32 : i32
        scf.yield %alloc_13 : memref<14x14xi32>
      } else {
        %278 = affine.apply affine_map<(d0) -> (d0 * 257)>(%c10)
        %279 = bufferization.to_tensor %alloc : memref<14xf16>
        %280 = vector.outerproduct %64, %61, %46 {kind = #vector.kind<minsi>} : vector<14xi1>, vector<14xi1>
        %281 = arith.remui %true, %false : i1
        %282 = arith.shrui %c-8896_i16, %c-8896_i16 : i16
        %283 = arith.remsi %c6184_i16, %c-8896_i16 : i16
        %284 = math.log10 %reduced : tensor<f32>
        %285 = index.sizeof
        scf.yield %alloc_13 : memref<14x14xi32>
      }
      memref.assume_alignment %alloc_10, 1 : memref<14x14xi16>
      %274 = index.ceildivu %56, %88
      %true_47 = index.bool.constant true
      %275 = index.castu %true_47 : i1 to index
      %276 = arith.remui %false, %true_47 : i1
      %277 = arith.xori %c0_i64, %c236460801_i64 : i64
      affine.yield %true_47 : i1
    } else {
      %273 = arith.minui %true, %false : i1
      %274 = index.divs %c3, %32
      scf.if %false {
        %279 = index.add %24, %c3
        %280 = math.copysign %4, %4 : tensor<14x14xf32>
        %281 = math.ctpop %17 : tensor<14x14xi1>
        %282 = arith.shli %c1344093326_i64, %c0_i64 : i64
        %283 = index.ceildivs %56, %c15
        %284 = math.round %reduced : tensor<f32>
        %285 = vector.create_mask %c12, %84, %84 : vector<4x14x4xi1>
        %286 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        %287 = vector.fma %286, %48, %45 : vector<14x14xf32>
      } else {
        %279 = vector.matrix_multiply %20, %20 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi32>, vector<13xi32>) -> vector<1xi32>
        %280 = arith.shrui %c6184_i16, %c-8896_i16 : i16
        %281 = math.ceil %reduced : tensor<f32>
        %282 = index.ceildivs %c1, %c13
        %283 = vector.insertelement %c890259428_i32, %279[%c1 : index] : vector<1xi32>
        %284 = math.tan %cst_0 : f32
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %47, %47, %71 : vector<14x14xi32>, vector<14x14xi32> into vector<14x14xi32>
        %collapsed_46 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x14xf16> into tensor<196xf16>
      }
      %275 = arith.maxui %c-8896_i16, %c6184_i16 : i16
      %276 = arith.minf %cst_1, %cst_1 : f16
      bufferization.dealloc_tensor %15 : tensor<14x14xi1>
      %277 = arith.addi %c1344093326_i64, %c236460801_i64 : i64
      %278 = arith.shrsi %c1344093326_i64, %c236460801_i64 : i64
      affine.yield %false : i1
    }
    %94 = vector.broadcast %c890259428_i32 : i32 to vector<13x13xi32>
    %95 = vector.outerproduct %20, %20, %94 {kind = #vector.kind<xor>} : vector<13xi32>, vector<13xi32>
    bufferization.dealloc_tensor %9 : tensor<14x14xi1>
    %96 = math.fma %reduced, %18, %reduced : tensor<f32>
    %97 = math.atan %reduced : tensor<f32>
    %98 = arith.minui %true, %true : i1
    %99 = scf.while (%arg2 = %c-27751_i16) : (i16) -> i16 {
      %273 = math.tanh %cst : f16
      %274 = vector.broadcast %29 : index to vector<10xindex>
      %275 = vector.broadcast %false : i1 to vector<10xi1>
      %276 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      vector.scatter %alloc_26[%c3] [%274], %275, %276 : memref<14xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %277 = index.ceildivs %56, %62
      %alloca_46 = memref.alloca() : memref<14x14xi64>
      %278 = arith.maxui %c890259428_i32, %c1235670247_i32 : i32
      %279 = arith.remf %53, %cst_4 : f32
      %280 = arith.mulf %cst_3, %cst_1 : f16
      %281 = index.castu %false : i1 to index
      scf.condition(%false) %c-32597_i16 : i16
    } do {
    ^bb0(%arg2: i16):
      %273 = vector.broadcast %c890259428_i32 : i32 to vector<14xi32>
      %dest_46, %accumulated_value_47 = vector.scan <maxui>, %47, %273 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
      %274 = vector.matrix_multiply %64, %61 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %275 = arith.remui %false, %true : i1
      %276 = scf.index_switch %c7 -> memref<4x14x4xf32> 
      case 1 {
        %286 = math.ceil %cst_5 : f16
        %287 = math.atan %13 : tensor<14x14xf16>
        %288 = arith.shrui %c-8896_i16, %c-32597_i16 : i16
        %289 = math.log %from_elements : tensor<14x14xf32>
        %290 = math.tan %3 : tensor<4x14x4xf32>
        %291 = index.sizeof
        %true_51 = index.bool.constant true
        %292 = math.ceil %cst_4 : f32
        %293 = math.expm1 %cst_4 : f32
        %294 = vector.broadcast %53 : f32 to vector<14xf32>
        %dest_52, %accumulated_value_53 = vector.scan <maxf>, %48, %294 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %295 = index.divu %24, %c2
        %296 = math.tan %21 : tensor<f16>
        %inserted_54 = tensor.insert %53 into %4[%c2, %c3] : tensor<14x14xf32>
        %297 = tensor.empty() : tensor<14x14xi1>
        %298 = linalg.matmul ins(%9, %5 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%297 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %299 = tensor.empty(%291, %88) : tensor<?x?xf16>
        %300 = bufferization.clone %alloc_7 : memref<4x14x4xf16> to memref<4x14x4xf16>
        scf.yield %alloc_11 : memref<4x14x4xf32>
      }
      default {
        %286 = affine.max affine_map<(d0, d1, d2) -> ((d0 ceildiv 4) floordiv 64 + d0 ceildiv 4 - 2)>(%c7, %c6, %c8)
        %287 = vector.matrix_multiply %20, %20 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi32>, vector<13xi32>) -> vector<1xi32>
        %288 = index.sizeof
        %289 = arith.xori %c6184_i16, %c-32597_i16 : i16
        %from_elements_51 = tensor.from_elements %53, %cst_2, %cst_4, %53, %cst_0, %cst_4, %53, %cst_0, %cst_0, %53, %cst_2, %53, %53, %cst_2 : tensor<14xf32>
        %290 = arith.addi %c-8896_i16, %c-8896_i16 : i16
        %291 = math.roundeven %reduced : tensor<f32>
        %292 = arith.minui %c1235670247_i32, %c890259428_i32 : i32
        %false_52 = index.bool.constant false
        %293 = index.maxu %32, %c15
        %rank = tensor.rank %54 : tensor<14x14xi1>
        %294 = arith.remf %cst, %cst : f16
        %295 = index.divs %88, %c7
        %296 = arith.maxf %cst_6, %cst_5 : f16
        %297 = math.exp %8 : tensor<14xf32>
        %298 = vector.bitcast %47 : vector<14x14xi32> to vector<14x14xf32>
        scf.yield %alloc_11 : memref<4x14x4xf32>
      }
      %collapsed_48 = tensor.collapse_shape %7 [[0, 1]] : tensor<14x14xi1> into tensor<196xi1>
      %277 = vector.broadcast %cst_2 : f32 to vector<14x4x4xf32>
      %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %48, %76, %277 : vector<14x14xf32>, vector<4x14x4xf32> into vector<14x4x4xf32>
      %279 = math.log %22 : tensor<f16>
      %collapsed_49 = tensor.collapse_shape %6 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %280 = tensor.empty() : tensor<14xf16>
      %mapped = linalg.map ins(%alloc_16, %alloc_23, %alloc_23 : memref<14xf16>, memref<14xf16>, memref<14xf16>) outs(%280 : tensor<14xf16>)
        (%in: f16, %in_51: f16, %in_52: f16) {
          %286 = arith.negf %cst_5 : f16
          %287 = arith.minsi %false, %true : i1
          %288 = math.log2 %21 : tensor<f16>
          %289 = arith.maxsi %c-8896_i16, %c-8896_i16 : i16
          %290 = vector.create_mask %c0, %32, %88 : vector<4x14x4xi1>
          %291 = index.sizeof
          %292 = math.roundeven %reduced : tensor<f32>
          memref.copy %alloc_7, %alloc_14 : memref<4x14x4xf16> to memref<4x14x4xf16>
          %293 = vector.create_mask %c5, %62, %c12 : vector<4x14x4xi1>
          %294 = vector.insertelement %true, %274[%c1 : index] : vector<1xi1>
          %295 = arith.remui %c6184_i16, %c-32597_i16 : i16
          %296 = vector.broadcast %c890259428_i32 : i32 to vector<10xi32>
          vector.transfer_write %296, %alloc_8[%88, %88] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi32>, memref<14x14xi32>
          %expanded_53 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<14x14xf32> into tensor<14x14x1xf32>
          %297 = vector.broadcast %c1235670247_i32 : i32 to vector<10x10xi32>
          %298 = vector.outerproduct %296, %296, %297 {kind = #vector.kind<xor>} : vector<10xi32>, vector<10xi32>
          %299 = math.exp %8 : tensor<14xf32>
          %300 = index.maxu %c15, %32
          %alloc_54 = memref.alloc() : memref<14x14xf32>
          %301 = vector.gather %alloc_54[%84, %c3] [%71], %46, %45 : memref<14x14xf32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf32> into vector<14x14xf32>
          %collapsed_55 = tensor.collapse_shape %9 [[0, 1]] : tensor<14x14xi1> into tensor<196xi1>
          %302 = vector.gather %1[%c12, %291] [%47], %46, %47 : tensor<14x14xi32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi32> into vector<14x14xi32>
          %303 = index.castu %c0 : index to i32
          vector.print %45 : vector<14x14xf32>
          %304 = arith.maxui %arg2, %c6184_i16 : i16
          %305 = vector.broadcast %cst_4 : f32 to vector<14xf32>
          %306 = vector.insert %305, %45 [9] : vector<14xf32> into vector<14x14xf32>
          %307 = index.maxs %24, %26
          %c0_i16 = arith.constant 0 : i16
          %308 = vector.transfer_read %alloc_10[%291, %c11], %c0_i16 : memref<14x14xi16>, vector<i16>
          %309 = arith.maxui %c-8896_i16, %c-27751_i16 : i16
          %310 = vector.broadcast %c890259428_i32 : i32 to vector<14xi32>
          %311 = vector.insert %310, %302 [8] : vector<14xi32> into vector<14x14xi32>
          %312 = index.maxu %291, %57
          memref.tensor_store %280, %alloc : memref<14xf16>
          %313 = vector.create_mask %c10 : vector<14xi1>
          vector.print %48 : vector<14x14xf32>
          %314 = index.ceildivu %c6, %c3
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %281 = math.roundeven %from_elements : tensor<14x14xf32>
      %282 = arith.shrsi %c-32597_i16, %c-32597_i16 : i16
      %283 = math.ceil %3 : tensor<4x14x4xf32>
      %284 = index.maxu %26, %82
      %285 = arith.remsi %c6184_i16, %c6184_i16 : i16
      memref.assume_alignment %alloc_23, 8 : memref<14xf16>
      %inserted_50 = tensor.insert %true into %15[%c7, %c2] : tensor<14x14xi1>
      scf.yield %c-8896_i16 : i16
    }
    %splat = tensor.splat %cst_4 : tensor<14x14xf32>
    %100 = bufferization.to_tensor %alloc : memref<14xf16>
    %101 = vector.matrix_multiply %60, %64 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
    %102 = index.sub %c0, %c6
    %103 = arith.remf %cst_6, %cst_5 : f16
    %104 = arith.minui %c1344093326_i64, %c0_i64 : i64
    %105 = tensor.empty() : tensor<4x4xf16>
    %106 = tensor.empty() : tensor<14x4xf16>
    %107 = tensor.empty() : tensor<4x14xf16>
    %108 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%105, %106, %107 : tensor<4x4xf16>, tensor<14x4xf16>, tensor<4x14xf16>) outs(%14 : tensor<4x14x4xf16>) {
    ^bb0(%in: f16, %in_46: f16, %in_47: f16, %out: f16):
      %273 = index.maxu %56, %24
      %274 = arith.shrsi %c1235670247_i32, %c890259428_i32 : i32
      vector.print %20 : vector<13xi32>
      %275 = math.floor %reduced : tensor<f32>
      %276 = index.divs %62, %29
      %277 = arith.mulf %cst, %cst_1 : f16
      %278 = affine.load %alloc_11[%c15, %c15, %c15] : memref<4x14x4xf32>
      %279 = arith.divui %c-8896_i16, %c-32597_i16 : i16
      %280 = affine.for %arg2 = 0 to 18 iter_args(%arg3 = %c12) -> (index) {
        affine.yield %c10 : index
      }
      %281 = vector.matrix_multiply %60, %61 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
      %282 = arith.minui %c1344093326_i64, %c236460801_i64 : i64
      %283 = index.divu %26, %c4
      %284 = arith.remf %cst, %in_46 : f16
      %285 = math.log10 %cst_4 : f32
      %true_48 = arith.constant true
      %286 = vector.transfer_read %34[%c7, %102], %true_48 : tensor<14x14xi1>, vector<i1>
      %287 = vector.outerproduct %60, %61, %46 {kind = #vector.kind<xor>} : vector<14xi1>, vector<14xi1>
      %288 = math.log1p %18 : tensor<f32>
      %289 = math.roundeven %100 : tensor<14xf16>
      %290 = vector.broadcast %cst_4 : f32 to vector<14x14xf32>
      %291 = vector.fma %290, %45, %48 : vector<14x14xf32>
      %292 = arith.remsi %c-32597_i16, %c-27751_i16 : i16
      %293 = affine.max affine_map<(d0) -> ((d0 + 4) mod 128, (d0 + 4) mod 128)>(%c10)
      %294 = index.maxs %c9, %c8
      %295 = vector.broadcast %cst_4 : f32 to vector<14x4x4xf32>
      %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %45, %76, %295 : vector<14x14xf32>, vector<4x14x4xf32> into vector<14x4x4xf32>
      %297 = vector.create_mask %32, %c6 : vector<14x14xi1>
      %298 = arith.mulf %cst_2, %cst_0 : f32
      %alloca_49 = memref.alloca() : memref<14xi64>
      %299 = index.castu %c15 : index to i32
      memref.tensor_store %1, %alloc_8 : memref<14x14xi32>
      %300 = vector.broadcast %true : i1 to vector<4x14x4xi1>
      %301 = vector.broadcast %c1235670247_i32 : i32 to vector<4x14x4xi32>
      %302 = vector.gather %8[%84] [%301], %300, %76 : tensor<14xf32>, vector<4x14x4xi32>, vector<4x14x4xi1>, vector<4x14x4xf32> into vector<4x14x4xf32>
      %303 = arith.remsi %c-8896_i16, %c6184_i16 : i16
      %expanded_50 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<4x14x4xi64> into tensor<4x14x4x1xi64>
      %304 = arith.maxui %c890259428_i32, %c1235670247_i32 : i32
      linalg.yield %cst_5 : f16
    } -> tensor<4x14x4xf16>
    %109 = index.castu %57 : index to i32
    bufferization.dealloc_tensor %from_elements : tensor<14x14xf32>
    %110 = math.exp %8 : tensor<14xf32>
    memref.copy %alloc_21, %alloc : memref<14xf16> to memref<14xf16>
    %111 = arith.divui %c-27751_i16, %c-27751_i16 : i16
    %112 = index.ceildivs %c10, %27
    %113 = tensor.empty() : tensor<14x14xi64>
    %114 = linalg.matmul ins(%79, %79 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%113 : tensor<14x14xi64>) -> tensor<14x14xi64>
    %115 = arith.maxui %c236460801_i64, %c0_i64 : i64
    %116 = arith.mulf %cst_2, %53 : f32
    scf.if %true {
      %273 = scf.if %true -> (memref<4x14x4xf32>) {
        %280 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%82, %62, %c0)
        %281 = tensor.empty() : tensor<14x14xi1>
        %282 = linalg.matmul ins(%16, %54 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%281 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %splat_47 = tensor.splat %cst_4 : tensor<14x14xf32>
        %283 = arith.maxsi %c1344093326_i64, %c236460801_i64 : i64
        %284 = index.ceildivs %c9, %c5
        %285 = vector.create_mask %84, %c9 : vector<14x14xi1>
        %286 = arith.maxf %53, %cst_4 : f32
        %287 = arith.muli %c1235670247_i32, %c1235670247_i32 : i32
        scf.yield %alloc_11 : memref<4x14x4xf32>
      } else {
        %280 = math.exp %reduced : tensor<f32>
        %281 = math.expm1 %3 : tensor<4x14x4xf32>
        %282 = arith.subi %c6184_i16, %c-8896_i16 : i16
        %283 = index.divu %56, %c15
        %284 = vector.bitcast %46 : vector<14x14xi1> to vector<14x14xi1>
        %285 = vector.broadcast %cst_2 : f32 to vector<14x4x4xf32>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %48, %76, %285 : vector<14x14xf32>, vector<4x14x4xf32> into vector<14x4x4xf32>
        %287 = arith.shrsi %c6184_i16, %c-27751_i16 : i16
        %288 = math.ceil %14 : tensor<4x14x4xf16>
        scf.yield %alloc_11 : memref<4x14x4xf32>
      }
      %274 = arith.remsi %c-32597_i16, %c-32597_i16 : i16
      %275 = arith.shrsi %c1235670247_i32, %c1235670247_i32 : i32
      %collapsed_46 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
      %276 = index.add %c8, %c2
      %277 = index.divs %c11, %29
      %278 = vector.insertelement %c1235670247_i32, %20[%32 : index] : vector<13xi32>
      %279 = index.divu %c14, %c12
    } else {
      %273 = index.ceildivu %c6, %c9
      %274 = bufferization.to_tensor %alloc_19 : memref<14x14xi64>
      %275 = arith.maxui %c1235670247_i32, %c890259428_i32 : i32
      %276 = arith.mulf %cst_6, %cst_3 : f16
      %277 = vector.broadcast %c236460801_i64 : i64 to vector<14x14xi64>
      %278 = vector.gather %274[%c12, %c14] [%71], %46, %277 : tensor<14x14xi64>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi64> into vector<14x14xi64>
      %279 = index.divs %84, %c9
      %280 = vector.create_mask %57, %29 : vector<14x14xi1>
      %281 = math.ipowi %c236460801_i64, %c1344093326_i64 : i64
    }
    %117 = index.divs %82, %26
    %118 = arith.addi %c6184_i16, %c-27751_i16 : i16
    %119 = math.log10 %13 : tensor<14x14xf16>
    %120 = scf.execute_region -> vector<4x14x4xf32> {
      %273 = math.fpowi %splat, %1 : tensor<14x14xf32>, tensor<14x14xi32>
      %274 = vector.flat_transpose %20 {columns = 13 : i32, rows = 1 : i32} : vector<13xi32> -> vector<13xi32>
      %275 = vector.create_mask %c9, %82 : vector<14x14xi1>
      %276 = bufferization.to_tensor %alloc : memref<14xf16>
      %277 = arith.shrui %false, %true : i1
      %278 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d0 - 2)>(%24, %27, %84)
      %279 = affine.apply affine_map<(d0) -> (d0 + 4)>(%102)
      %generated = tensor.generate %c0, %c9 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %289 = vector.create_mask %88, %278, %112 : vector<4x14x4xi1>
        %290 = arith.mulf %cst_1, %cst : f16
        memref.assume_alignment %alloc_8, 8 : memref<14x14xi32>
        %291 = index.floordivs %arg3, %c5
        tensor.yield %cst_1 : f16
      } : tensor<?x?x4xf16>
      %280 = math.log2 %cst : f16
      %281 = math.tan %8 : tensor<14xf32>
      %282 = math.ipowi %113, %113 : tensor<14x14xi64>
      %283 = vector.broadcast %88 : index to vector<4xindex>
      %284 = vector.broadcast %false : i1 to vector<4xi1>
      %285 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      vector.scatter %alloc_11[%c3, %c10, %c1] [%283], %284, %285 : memref<4x14x4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %286 = math.round %8 : tensor<14xf32>
      %collapsed_46 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x14xf16> into tensor<196xf16>
      %287 = math.exp %cst_5 : f16
      %288 = affine.for %arg2 = 0 to 46 iter_args(%arg3 = %alloc_8) -> (memref<14x14xi32>) {
        affine.yield %arg3 : memref<14x14xi32>
      }
      scf.yield %76 : vector<4x14x4xf32>
    }
    %alloca_30 = memref.alloca() : memref<14xi64>
    %121 = math.ipowi %12, %1 : tensor<14x14xi32>
    %122 = arith.maxf %cst_1, %cst_6 : f16
    %123 = vector.extract %47[9] : vector<14x14xi32>
    %124 = math.expm1 %13 : tensor<14x14xf16>
    %125 = math.log1p %13 : tensor<14x14xf16>
    %126 = math.log10 %53 : f32
    %127 = vector.insertelement %true, %60[%c10 : index] : vector<14xi1>
    %128 = arith.muli %c1235670247_i32, %c1235670247_i32 : i32
    %129 = vector.multi_reduction <minsi>, %64, %64 [] : vector<14xi1> to vector<14xi1>
    bufferization.dealloc_tensor %8 : tensor<14xf32>
    %130 = bufferization.to_memref %100 : memref<14xf16>
    %true_31 = index.bool.constant true
    %131 = arith.maxui %c-8896_i16, %c6184_i16 : i16
    %132 = vector.broadcast %cst : f16 to vector<14xf16>
    %133 = vector.maskedload %alloc_16[%c8], %61, %132 : memref<14xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
    %134 = index.sizeof
    %alloca_32 = memref.alloca() : memref<4x14x4xf16>
    %135 = math.ceil %100 : tensor<14xf16>
    %136 = index.sizeof
    %137 = math.ceil %3 : tensor<4x14x4xf32>
    %138 = affine.max affine_map<(d0, d1) -> (d0 + 1, (d0 - 16) * 32)>(%136, %c15)
    %139 = arith.shrsi %c-27751_i16, %c-27751_i16 : i16
    %140 = math.fpowi %cst_4, %c890259428_i32 : f32, i32
    %141 = vector.broadcast %53 : f32 to vector<4xf32>
    %142 = vector.broadcast %true_31 : i1 to vector<4xi1>
    %143 = vector.maskedload %alloc_26[%c6], %142, %141 : memref<14xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
    %144 = arith.divui %c-27751_i16, %c-8896_i16 : i16
    %145 = math.absi %6 : tensor<14x14xi64>
    %splat_33 = tensor.splat %c6184_i16 : tensor<14x14xi16>
    %146 = math.atan %13 : tensor<14x14xf16>
    %147 = arith.maxsi %c-32597_i16, %c-8896_i16 : i16
    %148 = math.log10 %4 : tensor<14x14xf32>
    memref.assume_alignment %alloc_14, 2 : memref<4x14x4xf16>
    %149 = affine.max affine_map<(d0, d1, d2) -> (d1 + d0, d0)>(%82, %62, %57)
    %150 = bufferization.to_tensor %alloc_26 : memref<14xf32>
    %151 = math.exp2 %from_elements : tensor<14x14xf32>
    %152 = vector.reduction <mul>, %64 : vector<14xi1> into i1
    %153 = memref.atomic_rmw minf %cst_1, %alloc_15[%c2, %c11] : (f16, memref<14x14xf16>) -> f16
    %154 = math.round %splat : tensor<14x14xf32>
    %155 = arith.shrui %c-32597_i16, %c-27751_i16 : i16
    %156 = vector.create_mask %57, %24 : vector<14x14xi1>
    %157 = math.roundeven %13 : tensor<14x14xf16>
    %158 = arith.divsi %c0_i64, %c0_i64 : i64
    %159 = tensor.empty() : tensor<14x14xi32>
    %160 = linalg.matmul ins(%12, %12 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%159 : tensor<14x14xi32>) -> tensor<14x14xi32>
    %161 = vector.multi_reduction <maxf>, %132, %132 [] : vector<14xf16> to vector<14xf16>
    %162 = math.roundeven %100 : tensor<14xf16>
    %163 = index.ceildivu %56, %c12
    %false_34 = index.bool.constant false
    %164 = affine.load %alloc_18[%c7] : memref<14xi1>
    %165 = memref.atomic_rmw muli %c-27751_i16, %alloc_12[%c0, %c12, %c1] : (i16, memref<4x14x4xi16>) -> i16
    %166 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %64, %64, %true : vector<14xi1>, vector<14xi1> into i1
    %167 = arith.remf %cst_4, %cst_2 : f32
    %168 = vector.gather %alloc_9[%134, %c12, %27] [%71], %46, %71 : memref<4x14x4xi32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi32> into vector<14x14xi32>
    %169 = arith.floordivsi %c1344093326_i64, %c0_i64 : i64
    %inserted_35 = tensor.insert %cst_3 into %13[%c6, %c8] : tensor<14x14xf16>
    %170 = tensor.empty() : tensor<i32>
    %171 = math.fpowi %21, %170 : tensor<f16>, tensor<i32>
    %172 = math.roundeven %100 : tensor<14xf16>
    %173 = arith.subi %c890259428_i32, %c890259428_i32 : i32
    %174 = vector.insertelement %cst_2, %143[%138 : index] : vector<4xf32>
    %175 = arith.remf %53, %53 : f32
    scf.execute_region {
      %273 = index.sub %163, %117
      %274 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 4) floordiv 16 - 4, -(d1 ceildiv 4 - 64))>(%c8, %26, %112)
      %275 = math.log %reduced : tensor<f32>
      %276 = tensor.empty(%c9) : tensor<?x14xi64>
      %277 = index.floordivs %c1, %57
      %278 = vector.bitcast %76 : vector<4x14x4xf32> to vector<4x14x4xf32>
      %splat_46 = tensor.splat %c6184_i16 : tensor<14x14xi16>
      %279 = index.floordivs %57, %c14
      %280 = index.sizeof
      %281 = arith.remf %cst_1, %cst : f16
      %282 = arith.minf %cst_6, %cst_6 : f16
      %283 = math.log2 %4 : tensor<14x14xf32>
      %284 = affine.max affine_map<(d0, d1, d2) -> (d1 + 16)>(%112, %117, %273)
      %285 = math.sqrt %21 : tensor<f16>
      %286 = index.floordivs %c9, %279
      %cst_47 = arith.constant 1.52268774E+9 : f32
      scf.yield
    }
    memref.assume_alignment %alloc_12, 1 : memref<4x14x4xi16>
    %176 = index.ceildivs %c12, %c9
    %177 = index.maxu %c6, %56
    %178 = arith.maxui %c1235670247_i32, %c1235670247_i32 : i32
    %179 = index.add %c10, %c0
    %180 = math.round %8 : tensor<14xf32>
    %181 = index.floordivs %177, %24
    %182 = scf.index_switch %c10 -> memref<14x14xi32> 
    case 1 {
      vector.print %75 : vector<4x14x4xf32>
      %273 = index.ceildivs %c5, %c4
      %274 = math.cos %4 : tensor<14x14xf32>
      %275 = affine.load %alloc_17[%c13, %c13] : memref<14x14xi64>
      %276 = vector.broadcast %177 : index to vector<4xindex>
      %277 = vector.broadcast %275 : i64 to vector<4xi64>
      vector.scatter %alloc_19[%c8, %c3] [%276], %142, %277 : memref<14x14xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %278 = math.log1p %13 : tensor<14x14xf16>
      %279 = arith.floordivsi %c890259428_i32, %c1235670247_i32 : i32
      %280 = math.exp %cst_1 : f16
      %281 = arith.mulf %cst_6, %cst_6 : f16
      %282 = index.maxu %134, %27
      bufferization.dealloc_tensor %21 : tensor<f16>
      %283 = arith.shrui %false, %false : i1
      %284 = vector.multi_reduction <or>, %71, %123 [0] : vector<14x14xi32> to vector<14xi32>
      %285 = arith.maxsi %c6184_i16, %c6184_i16 : i16
      %286 = index.floordivs %c11, %c6
      %287 = arith.negf %cst_1 : f16
      scf.yield %alloc_8 : memref<14x14xi32>
    }
    case 2 {
      %273 = tensor.empty() : tensor<14x14xi1>
      %274 = linalg.matmul ins(%16, %15 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%273 : tensor<14x14xi1>) -> tensor<14x14xi1>
      %275 = tensor.empty(%26) : tensor<?xi16>
      %276 = bufferization.clone %alloc_8 : memref<14x14xi32> to memref<14x14xi32>
      %277 = vector.insertelement %cst_0, %141[%c2 : index] : vector<4xf32>
      %278 = math.floor %cst_1 : f16
      %279 = math.round %cst_2 : f32
      %280 = index.sizeof
      %281 = math.round %cst_1 : f16
      %282 = math.tanh %reduced : tensor<f32>
      %283 = index.add %82, %c13
      %alloca_46 = memref.alloca() : memref<4x14x4xf16>
      %284 = math.exp %cst : f16
      %285 = math.round %cst_4 : f32
      %286 = affine.if affine_set<(d0, d1) : (0 >= 0)>(%c4, %c10) -> f16 {
        %289 = math.log10 %4 : tensor<14x14xf32>
        %splat_47 = tensor.splat %cst_5 : tensor<4x14x4xf16>
        %290 = arith.negf %cst : f16
        %291 = arith.remui %c-27751_i16, %c-8896_i16 : i16
        %292 = arith.remsi %c1235670247_i32, %c890259428_i32 : i32
        %rank = tensor.rank %14 : tensor<4x14x4xf16>
        %293 = vector.outerproduct %61, %64, %156 {kind = #vector.kind<minsi>} : vector<14xi1>, vector<14xi1>
        %294 = index.sizeof
        affine.yield %cst_1 : f16
      } else {
        %289 = arith.maxui %c1344093326_i64, %c236460801_i64 : i64
        %290 = vector.flat_transpose %123 {columns = 7 : i32, rows = 2 : i32} : vector<14xi32> -> vector<14xi32>
        %291 = vector.reduction <maxsi>, %123 : vector<14xi32> into i32
        %292 = vector.broadcast %cst_3 : f16 to vector<10xf16>
        %293 = vector.broadcast %164 : i1 to vector<10xi1>
        %294 = vector.maskedload %alloc_16[%c9], %293, %292 : memref<14xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %295 = math.round %100 : tensor<14xf16>
        %from_elements_47 = tensor.from_elements %cst_1, %cst_6, %cst_5, %cst_6, %cst_5, %cst_1, %cst_1, %cst, %cst, %cst_3, %cst_1, %cst_5, %cst_6, %cst, %cst_1, %cst_1, %cst, %cst_3, %cst_5, %cst_3, %cst_3, %cst, %cst_1, %cst, %cst_5, %cst_3, %cst_1, %cst_5, %cst_5, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_6, %cst_3, %cst_3, %cst_3, %cst_5, %cst, %cst_5, %cst_6, %cst_6, %cst_6, %cst_3, %cst_3, %cst_6, %cst_6, %cst, %cst_6, %cst, %cst_6, %cst_3, %cst, %cst_1, %cst_5, %cst_6, %cst_6, %cst_5, %cst_6, %cst_6, %cst, %cst, %cst, %cst_1, %cst, %cst_3, %cst_1, %cst_6, %cst_5, %cst_6, %cst_3, %cst_3, %cst_6, %cst_5, %cst, %cst, %cst_3, %cst_5, %cst, %cst_1, %cst, %cst_1, %cst_3, %cst_6, %cst, %cst_1, %cst, %cst_6, %cst_3, %cst_1, %cst, %cst_1, %cst_3, %cst_3, %cst_6, %cst_1, %cst_5, %cst, %cst, %cst_5, %cst_3, %cst_3, %cst_3, %cst, %cst_1, %cst_5, %cst_3, %cst_1, %cst_3, %cst_6, %cst_6, %cst_5, %cst_1, %cst_3, %cst_1, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_3, %cst_6, %cst, %cst_5, %cst, %cst_6, %cst, %cst, %cst_1, %cst_5, %cst_5, %cst, %cst, %cst_1, %cst_3, %cst_3, %cst, %cst_5, %cst_1, %cst_3, %cst_1, %cst_5, %cst_3, %cst_5, %cst_1, %cst, %cst_3, %cst_3, %cst, %cst_5, %cst_5, %cst_5, %cst, %cst_3, %cst_5, %cst_1, %cst_5, %cst_1, %cst, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst, %cst_3, %cst_1, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_6, %cst, %cst_6, %cst, %cst : tensor<14x14xf16>
        %cst_48 = arith.constant 1.000000e+00 : f16
        %296 = vector.transfer_read %13[%c10, %c1], %cst_48 : tensor<14x14xf16>, vector<f16>
        %297 = index.floordivs %280, %c9
        affine.yield %cst_5 : f16
      }
      %287 = math.log2 %53 : f32
      %288 = arith.divui %164, %false_34 : i1
      scf.yield %alloc_13 : memref<14x14xi32>
    }
    case 3 {
      %273 = arith.muli %c-8896_i16, %c-8896_i16 : i16
      %274 = index.maxu %c3, %134
      %275 = math.cttz %1 : tensor<14x14xi32>
      %276 = scf.while (%arg2 = %c-8896_i16) : (i16) -> i16 {
        %289 = arith.remsi %c-27751_i16, %c6184_i16 : i16
        %290 = arith.mulf %cst_1, %cst : f16
        %291 = arith.remsi %c-27751_i16, %c-32597_i16 : i16
        %292 = math.log %from_elements : tensor<14x14xf32>
        %293 = math.fpowi %from_elements, %159 : tensor<14x14xf32>, tensor<14x14xi32>
        %294 = vector.multi_reduction <and>, %123, %123 [] : vector<14xi32> to vector<14xi32>
        %295 = math.round %cst_5 : f16
        %296 = index.floordivs %56, %c1
        scf.condition(%true) %c-27751_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %true_47 = index.bool.constant true
        %289 = arith.negf %cst : f16
        %290 = math.cttz %7 : tensor<14x14xi1>
        %291 = math.tan %3 : tensor<4x14x4xf32>
        %292 = arith.minui %c-8896_i16, %c-32597_i16 : i16
        %293 = arith.maxsi %c890259428_i32, %c890259428_i32 : i32
        %294 = math.log10 %4 : tensor<14x14xf32>
        %295 = math.fpowi %4, %12 : tensor<14x14xf32>, tensor<14x14xi32>
        %296 = arith.xori %c890259428_i32, %c1235670247_i32 : i32
        %297 = arith.remui %c6184_i16, %arg2 : i16
        %collapsed_48 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<4x14x4xf32> into tensor<56x4xf32>
        %true_49 = index.bool.constant true
        %298 = arith.subi %true_49, %false_34 : i1
        %299 = math.exp %13 : tensor<14x14xf16>
        %300 = math.atan %4 : tensor<14x14xf32>
        %alloc_50 = memref.alloc() : memref<4x14x4xi64>
        memref.tensor_store %2, %alloc_50 : memref<4x14x4xi64>
        scf.yield %c6184_i16 : i16
      }
      %277 = arith.mulf %cst_6, %cst_6 : f16
      %278 = math.absf %cst_6 : f16
      %279 = math.ceil %cst_3 : f16
      %280 = math.tan %4 : tensor<14x14xf32>
      %281 = math.roundeven %cst_1 : f16
      %282 = affine.apply affine_map<(d0, d1) -> (d1 + 8)>(%c0, %136)
      %283 = index.floordivs %26, %56
      %284 = arith.shrsi %c-32597_i16, %c-8896_i16 : i16
      %285 = math.absi %164 : i1
      %286 = vector.broadcast %cst_2 : f32 to vector<14xf32>
      %287 = vector.fma %286, %286, %286 : vector<14xf32>
      %288 = vector.transpose %64, [0] : vector<14xi1> to vector<14xi1>
      %alloca_46 = memref.alloca() : memref<4x14x4xi32>
      scf.yield %alloc_8 : memref<14x14xi32>
    }
    case 4 {
      %273 = vector.shuffle %132, %133 [1, 3, 11, 13, 17, 18, 19, 22, 23] : vector<14xf16>, vector<14xf16>
      %274 = math.log10 %cst_4 : f32
      %275 = math.fma %splat, %4, %from_elements : tensor<14x14xf32>
      %276 = scf.while (%arg2 = %c1235670247_i32) : (i32) -> i32 {
        %288 = vector.extract_strided_slice %45 {offsets = [10], sizes = [4], strides = [1]} : vector<14x14xf32> to vector<4x14xf32>
        %289 = math.log2 %cst_6 : f16
        %290 = math.round %13 : tensor<14x14xf16>
        %291 = memref.realloc %130 : memref<14xf16> to memref<10xf16>
        %292 = vector.broadcast %c0_i64 : i64 to vector<14x14xi64>
        %293 = vector.transfer_write %292, %2[%c8, %c1, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x14xi64>, tensor<4x14x4xi64>
        %from_elements_51 = tensor.from_elements %c890259428_i32, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %arg2, %arg2, %arg2, %arg2, %arg2, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %arg2, %arg2, %c1235670247_i32, %arg2, %arg2, %c1235670247_i32, %c890259428_i32, %arg2, %c890259428_i32, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %arg2, %c1235670247_i32, %arg2, %c890259428_i32, %arg2, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %c890259428_i32, %arg2, %c1235670247_i32, %c1235670247_i32, %arg2, %c890259428_i32, %arg2, %arg2, %arg2, %c890259428_i32, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %arg2, %arg2, %c890259428_i32, %c1235670247_i32, %arg2, %arg2, %c1235670247_i32, %c1235670247_i32, %arg2, %c1235670247_i32, %c890259428_i32, %arg2, %arg2, %c1235670247_i32, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %arg2, %c1235670247_i32, %arg2, %c1235670247_i32, %c1235670247_i32, %arg2, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %arg2, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %arg2, %c1235670247_i32, %arg2, %arg2, %c890259428_i32, %arg2, %arg2, %arg2, %arg2, %arg2, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %c1235670247_i32, %arg2, %c890259428_i32, %c1235670247_i32, %c1235670247_i32, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %arg2, %arg2, %c1235670247_i32, %arg2, %arg2, %arg2, %c890259428_i32, %arg2, %c1235670247_i32, %arg2, %c1235670247_i32, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %c890259428_i32, %arg2, %arg2, %arg2, %c890259428_i32, %c890259428_i32, %arg2, %arg2, %c890259428_i32, %c1235670247_i32, %arg2, %c1235670247_i32, %arg2, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %arg2, %c1235670247_i32, %arg2, %c1235670247_i32, %arg2, %arg2, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %arg2, %arg2, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %arg2, %arg2, %arg2, %arg2, %c1235670247_i32, %arg2, %c890259428_i32, %c1235670247_i32, %arg2, %c1235670247_i32, %arg2, %arg2, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %arg2, %c1235670247_i32, %arg2, %c1235670247_i32, %c1235670247_i32, %arg2, %c1235670247_i32, %arg2, %arg2, %arg2, %c1235670247_i32, %c1235670247_i32, %c1235670247_i32, %arg2, %c890259428_i32, %c890259428_i32, %c890259428_i32, %arg2, %c1235670247_i32, %c890259428_i32, %arg2, %c1235670247_i32, %arg2, %c1235670247_i32, %arg2, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %arg2, %c890259428_i32, %c890259428_i32, %arg2, %arg2, %c1235670247_i32, %arg2, %c890259428_i32, %arg2, %c890259428_i32, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32 : tensor<4x14x4xi32>
        %inserted_52 = tensor.insert %true_31 into %15[%c11, %c11] : tensor<14x14xi1>
        %294 = affine.apply affine_map<(d0, d1) -> (-d1)>(%c3, %c9)
        scf.condition(%false_34) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %288 = vector.reduction <add>, %60 : vector<14xi1> into i1
        %289 = arith.maxsi %false, %false : i1
        %290 = affine.max affine_map<(d0, d1, d2) -> (d0 ceildiv 64, d1 + d2 - (d1 * 32) ceildiv 128, d0 ceildiv 64, d0)>(%134, %c11, %112)
        %291 = arith.minsi %false, %true_31 : i1
        %from_elements_51 = tensor.from_elements %c-8896_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c6184_i16 : tensor<4x14x4xi16>
        memref.assume_alignment %alloc_16, 4 : memref<14xf16>
        %292 = index.sizeof
        %alloc_52 = memref.alloc() : memref<14xf16>
        %293 = arith.addi %false, %true : i1
        %294 = arith.maxui %c1235670247_i32, %c1235670247_i32 : i32
        %dest_53, %accumulated_value_54 = vector.scan <xor>, %47, %123 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
        %295 = math.round %reduced : tensor<f32>
        %alloca_55 = memref.alloca() : memref<14x14xi1>
        %296 = index.divu %163, %c0
        %297 = index.divu %c2, %c5
        %false_56 = index.bool.constant false
        scf.yield %c1235670247_i32 : i32
      }
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %156, %64 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
      %277 = tensor.empty() : tensor<14xi16>
      %278 = vector.broadcast %c-8896_i16 : i16 to vector<14xi16>
      %279 = vector.gather %277[%32] [%123], %64, %278 : tensor<14xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %280 = math.roundeven %4 : tensor<14x14xf32>
      %281 = vector.broadcast %164 : i1 to vector<1x1xi1>
      %282 = vector.outerproduct %101, %101, %281 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
      %dest_48, %accumulated_value_49 = vector.scan <add>, %47, %123 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
      memref.store %c-27751_i16, %alloc_10[%c6, %c9] : memref<14x14xi16>
      %283 = index.maxs %29, %c8
      %284 = index.castu %c-32597_i16 : i16 to index
      %285 = index.floordivs %177, %179
      %286 = vector.broadcast %c6184_i16 : i16 to vector<4x14xi16>
      vector.transfer_write %286, %alloc_12[%149, %27, %62] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x14xi16>, memref<4x14x4xi16>
      %alloca_50 = memref.alloca() : memref<14xi1>
      %287 = math.round %cst_0 : f32
      scf.yield %alloc_13 : memref<14x14xi32>
    }
    default {
      %273 = arith.mulf %cst_6, %cst_1 : f16
      %274 = vector.broadcast %c1235670247_i32 : i32 to vector<i32>
      %275 = vector.transfer_write %274, %1[%88, %117] : vector<i32>, tensor<14x14xi32>
      %276 = index.castu %c-32597_i16 : i16 to index
      %collapsed_46 = tensor.collapse_shape %17 [[0, 1]] : tensor<14x14xi1> into tensor<196xi1>
      %277 = scf.if %false_34 -> (i1) {
        %expanded_48 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<14x14xf16> into tensor<14x14x1xf16>
        %290 = tensor.empty() : tensor<14x14xi16>
        %291 = linalg.matmul ins(%0, %splat_33 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%290 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %292 = index.add %179, %26
        %293 = index.ceildivs %57, %c8
        %294 = math.atan %3 : tensor<4x14x4xf32>
        %295 = arith.mulf %cst, %cst : f16
        %296 = index.sizeof
        %297 = vector.reduction <maxsi>, %60 : vector<14xi1> into i1
        scf.yield %164 : i1
      } else {
        %cst_48 = arith.constant 6.888000e+03 : f16
        %290 = index.sub %24, %84
        %291 = arith.shrsi %164, %false_34 : i1
        %rank = tensor.rank %11 : tensor<14x14xi64>
        %292 = math.round %cst_5 : f16
        bufferization.dealloc_tensor %6 : tensor<14x14xi64>
        %293 = arith.negf %cst_2 : f32
        %alloc_49 = memref.alloc() : memref<14xi16>
        %294 = vector.broadcast %c6184_i16 : i16 to vector<14xi16>
        %295 = vector.gather %alloc_49[%136] [%123], %61, %294 : memref<14xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        scf.yield %false : i1
      }
      %278 = math.roundeven %reduced : tensor<f32>
      %279 = tensor.empty() : tensor<14x14xi64>
      %280 = linalg.matmul ins(%11, %79 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%279 : tensor<14x14xi64>) -> tensor<14x14xi64>
      %281 = tensor.empty() : tensor<14x14xi16>
      %282 = linalg.matmul ins(%splat_33, %0 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%281 : tensor<14x14xi16>) -> tensor<14x14xi16>
      %inserted_47 = tensor.insert %true_31 into %17[%c4, %c8] : tensor<14x14xi1>
      %283 = index.castu %c7 : index to i32
      %284 = math.absf %cst_1 : f16
      %285 = arith.subi %164, %164 : i1
      %286 = bufferization.to_tensor %alloc_14 : memref<4x14x4xf16>
      %287 = bufferization.clone %alloc_22 : memref<14x14xi64> to memref<14x14xi64>
      %288 = arith.remui %c-8896_i16, %c-8896_i16 : i16
      %289 = math.ipowi %279, %113 : tensor<14x14xi64>
      scf.yield %alloc_13 : memref<14x14xi32>
    }
    %183 = scf.execute_region -> index {
      %273 = math.tan %cst_6 : f16
      %274 = vector.multi_reduction <minf>, %75, %76 [] : vector<4x14x4xf32> to vector<4x14x4xf32>
      %275 = vector.flat_transpose %132 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
      %276 = math.absi %c890259428_i32 : i32
      %277 = tensor.empty() : tensor<14x14xi32>
      %278 = linalg.matmul ins(%69, %1 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%277 : tensor<14x14xi32>) -> tensor<14x14xi32>
      %279 = index.add %c3, %c10
      %280 = scf.while (%arg2 = %false) : (i1) -> i1 {
        %288 = memref.atomic_rmw andi %c890259428_i32, %alloc_13[%c3, %c5] : (i32, memref<14x14xi32>) -> i32
        %289 = vector.insert %arg2, %142 [1] : i1 into vector<4xi1>
        %290 = vector.reduction <minui>, %20 : vector<13xi32> into i32
        %291 = index.castu %c1235670247_i32 : i32 to index
        %292 = math.atan %13 : tensor<14x14xf16>
        %293 = arith.shrsi %arg2, %true : i1
        %294 = vector.insertelement %arg2, %142[%26 : index] : vector<4xi1>
        %expanded_47 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<14x14xi16> into tensor<14x14x1xi16>
        scf.condition(%164) %false : i1
      } do {
      ^bb0(%arg2: i1):
        %288 = math.fpowi %cst_4, %c1235670247_i32 : f32, i32
        %289 = vector.broadcast %164 : i1 to vector<i1>
        %290 = vector.transfer_write %289, %36[%c6, %56] : vector<i1>, tensor<14x14xi1>
        %291 = vector.shuffle %143, %141 [2, 7] : vector<4xf32>, vector<4xf32>
        %292 = arith.remui %164, %arg2 : i1
        memref.store %c1235670247_i32, %alloc_8[%c0, %c4] : memref<14x14xi32>
        %293 = math.ceil %reduced : tensor<f32>
        %294 = vector.insertelement %cst_6, %133[%c9 : index] : vector<14xf16>
        %splat_47 = tensor.splat %cst_4 : tensor<14x14xf32>
        %cst_48 = arith.constant 5.984000e+04 : f16
        %295 = math.ctpop %159 : tensor<14x14xi32>
        %296 = math.atan %8 : tensor<14xf32>
        %297 = vector.broadcast %53 : f32 to vector<14x14xf32>
        %298 = vector.fma %297, %297, %48 : vector<14x14xf32>
        %299 = tensor.empty() : tensor<14xi64>
        %300 = vector.broadcast %c0_i64 : i64 to vector<14x14xi64>
        %301 = vector.gather %299[%c14] [%168], %46, %300 : tensor<14xi64>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi64> into vector<14x14xi64>
        %302 = arith.shrsi %c1344093326_i64, %c1344093326_i64 : i64
        vector.print %275 : vector<14xf16>
        %from_elements_49 = tensor.from_elements %c-8896_i16, %c-8896_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c6184_i16 : tensor<14x14xi16>
        scf.yield %arg2 : i1
      }
      %281 = math.exp %3 : tensor<4x14x4xf32>
      %282 = arith.addi %c-27751_i16, %c6184_i16 : i16
      %283 = memref.atomic_rmw mulf %cst_6, %130[%c3] : (f16, memref<14xf16>) -> f16
      %alloc_46 = memref.alloc() : memref<4x14x4xf32>
      %284 = math.log2 %cst : f16
      %285 = math.expm1 %cst_3 : f16
      affine.store %c1344093326_i64, %alloc_19[%c10, %c6] : memref<14x14xi64>
      %286 = index.ceildivs %62, %279
      %287 = math.log10 %18 : tensor<f32>
      scf.yield %c13 : index
    }
    %inserted_36 = tensor.insert %c1235670247_i32 into %159[%c0, %c3] : tensor<14x14xi32>
    %184 = vector.reduction <maxf>, %133 : vector<14xf16> into f16
    %185 = math.ctpop %7 : tensor<14x14xi1>
    %186 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %141, %143, %cst_0 : vector<4xf32>, vector<4xf32> into f32
    %187 = vector.extract_strided_slice %47 {offsets = [0], sizes = [12], strides = [1]} : vector<14x14xi32> to vector<12x14xi32>
    %188 = math.expm1 %reduced : tensor<f32>
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<14x14xi1> into tensor<196xi1>
    %189 = vector.create_mask %181 : vector<14xi1>
    %190 = index.sizeof
    %191 = bufferization.clone %130 : memref<14xf16> to memref<14xf16>
    %true_37 = arith.constant true
    %192 = math.exp %100 : tensor<14xf16>
    memref.tensor_store %113, %alloc_17 : memref<14x14xi64>
    scf.index_switch %84 
    case 1 {
      %273 = math.expm1 %13 : tensor<14x14xf16>
      %274 = arith.divui %c-32597_i16, %c-32597_i16 : i16
      %275 = math.fma %cst_6, %cst_6, %cst : f16
      %276 = tensor.empty(%183) : tensor<?xi64>
      %277 = math.fpowi %cst_4, %c1235670247_i32 : f32, i32
      %278 = index.divs %138, %c11
      %279 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 16)>(%c2, %88, %c11)
      %inserted_46 = tensor.insert %c1344093326_i64 into %79[%c8, %c9] : tensor<14x14xi64>
      %280 = bufferization.clone %alloc_16 : memref<14xf16> to memref<14xf16>
      %281 = vector.create_mask %88, %177, %176 : vector<4x14x4xi1>
      %alloc_47 = memref.alloc() : memref<14x14xi1>
      memref.tensor_store %16, %alloc_47 : memref<14x14xi1>
      %rank = tensor.rank %10 : tensor<4x14x4xi32>
      %282 = arith.cmpf uge, %cst, %cst_6 : f16
      %283 = arith.remui %c890259428_i32, %c1235670247_i32 : i32
      %284 = arith.remsi %true, %false_34 : i1
      %285 = scf.index_switch %32 -> vector<14x14xf32> 
      case 1 {
        %286 = arith.minui %c6184_i16, %c-8896_i16 : i16
        %287 = vector.broadcast %cst_3 : f16 to vector<f16>
        vector.transfer_write %287, %alloc[%163] : vector<f16>, memref<14xf16>
        %cst_48 = arith.constant 1.000000e+00 : f16
        %288 = vector.transfer_read %alloc_21[%149], %cst_48 : memref<14xf16>, vector<f16>
        %289 = math.expm1 %cst_4 : f32
        %290 = arith.remsi %c890259428_i32, %c1235670247_i32 : i32
        %291 = math.round %13 : tensor<14x14xf16>
        %inserted_49 = tensor.insert %53 into %8[%c1] : tensor<14xf32>
        %292 = index.castu %c8 : index to i32
        %293 = arith.divsi %c0_i64, %c1344093326_i64 : i64
        %294 = index.ceildivs %26, %c2
        bufferization.dealloc_tensor %9 : tensor<14x14xi1>
        %295 = math.ipowi %67, %15 : tensor<14x14xi1>
        %296 = vector.create_mask %102, %88 : vector<14x14xi1>
        %297 = vector.matrix_multiply %64, %60 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
        %298 = vector.broadcast %cst_4 : f32 to vector<14xf32>
        %299 = vector.fma %298, %298, %298 : vector<14xf32>
        %300 = arith.cmpi eq, %c6184_i16, %c-8896_i16 : i16
        scf.yield %45 : vector<14x14xf32>
      }
      default {
        %286 = vector.broadcast %cst_4 : f32 to vector<4x14xf32>
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %76, %286 {inclusive = false, reduction_dim = 2 : i64} : vector<4x14x4xf32>, vector<4x14xf32>
        memref.assume_alignment %alloc, 2 : memref<14xf16>
        %287 = math.atan %22 : tensor<f16>
        memref.assume_alignment %alloc_7, 4 : memref<4x14x4xf16>
        %288 = vector.matrix_multiply %101, %142 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
        %289 = math.fpowi %18, %170 : tensor<f32>, tensor<i32>
        %290 = index.castu %true : i1 to index
        %291 = arith.remui %c-32597_i16, %c-27751_i16 : i16
        %292 = vector.matrix_multiply %143, %141 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %293 = arith.minui %164, %true : i1
        %294 = index.sizeof
        %295 = math.atan %cst_0 : f32
        %296 = math.log2 %8 : tensor<14xf32>
        %297 = vector.flat_transpose %142 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %298 = math.exp2 %22 : tensor<f16>
        %299 = index.sub %149, %c12
        scf.yield %45 : vector<14x14xf32>
      }
      scf.yield
    }
    case 2 {
      %273 = math.log10 %cst : f16
      %274 = bufferization.to_tensor %alloc_21 : memref<14xf16>
      %275 = affine.max affine_map<(d0, d1, d2) -> (-d2 + 8, -d2, d0 + d2 + d0 + 32 + 32)>(%149, %177, %179)
      %276 = index.divu %c4, %32
      %277 = scf.index_switch %183 -> vector<14xi1> 
      case 1 {
        %290 = math.fpowi %18, %170 : tensor<f32>, tensor<i32>
        %291 = vector.gather %alloc_11[%276, %136, %c6] [%47], %156, %45 : memref<4x14x4xf32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf32> into vector<14x14xf32>
        %c786571851_i64 = arith.constant 786571851 : i64
        %292 = arith.minsi %c-27751_i16, %c6184_i16 : i16
        %293 = arith.shrsi %false_34, %true_31 : i1
        bufferization.dealloc_tensor %1 : tensor<14x14xi32>
        %294 = math.rsqrt %18 : tensor<f32>
        %295 = vector.outerproduct %123, %123, %168 {kind = #vector.kind<maxui>} : vector<14xi32>, vector<14xi32>
        memref.store %c236460801_i64, %alloc_22[%c1, %c2] : memref<14x14xi64>
        %296 = math.atan %14 : tensor<4x14x4xf16>
        memref.assume_alignment %alloc_20, 1 : memref<4x14x4xi16>
        %297 = vector.multi_reduction <add>, %143, %141 [] : vector<4xf32> to vector<4xf32>
        %splat_47 = tensor.splat %cst_3 : tensor<14x14xf16>
        %298 = index.ceildivu %275, %276
        %299 = vector.broadcast %53 : f32 to vector<14x4xf32>
        %300 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %141, %75, %299 : vector<4xf32>, vector<4x14x4xf32> into vector<14x4xf32>
        %301 = index.ceildivu %138, %29
        scf.yield %61 : vector<14xi1>
      }
      case 2 {
        %290 = affine.apply affine_map<(d0) -> (d0)>(%c2)
        %291 = math.log %274 : tensor<14xf16>
        %292 = index.sizeof
        %293 = index.maxu %181, %290
        %294 = vector.matrix_multiply %132, %133 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
        %295 = arith.remui %c236460801_i64, %c236460801_i64 : i64
        %296 = arith.remui %c6184_i16, %c-32597_i16 : i16
        %rank = tensor.rank %16 : tensor<14x14xi1>
        %297 = math.ipowi %70, %70 : tensor<4x14x4xi32>
        %298 = index.divu %c1, %57
        %299 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %300 = vector.outerproduct %133, %132, %299 {kind = #vector.kind<minf>} : vector<14xf16>, vector<14xf16>
        %301 = vector.broadcast %29 : index to vector<10xindex>
        %302 = vector.broadcast %164 : i1 to vector<10xi1>
        %303 = vector.broadcast %cst_5 : f16 to vector<10xf16>
        vector.scatter %130[%c11] [%301], %302, %303 : memref<14xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %304 = bufferization.to_tensor %alloc_14 : memref<4x14x4xf16>
        %305 = vector.splat %false : vector<4x14x4xi1>
        %306 = index.divu %c3, %177
        %307 = math.rsqrt %4 : tensor<14x14xf32>
        scf.yield %64 : vector<14xi1>
      }
      case 3 {
        %290 = index.casts %true : i1 to index
        %291 = math.fpowi %cst_6, %c890259428_i32 : f16, i32
        %292 = arith.subi %c236460801_i64, %c236460801_i64 : i64
        %dest_47, %accumulated_value_48 = vector.scan <minui>, %187, %123 {inclusive = true, reduction_dim = 0 : i64} : vector<12x14xi32>, vector<14xi32>
        %293 = arith.minui %164, %false_34 : i1
        %294 = math.tanh %21 : tensor<f16>
        %295 = vector.multi_reduction <xor>, %142, %true [0] : vector<4xi1> to i1
        %296 = index.floordivs %c2, %c2
        %297 = vector.create_mask %62 : vector<14xi1>
        %298 = math.roundeven %8 : tensor<14xf32>
        %299 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %dest_49, %accumulated_value_50 = vector.scan <add>, %48, %299 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %300 = arith.remui %c6184_i16, %c6184_i16 : i16
        %301 = math.log1p %14 : tensor<4x14x4xf16>
        %302 = vector.insertelement %false_34, %61[%c12 : index] : vector<14xi1>
        %303 = index.castu %136 : index to i32
        %304 = vector.broadcast %cst_6 : f16 to vector<f16>
        vector.transfer_write %304, %alloc_21[%24] : vector<f16>, memref<14xf16>
        scf.yield %60 : vector<14xi1>
      }
      default {
        memref.copy %alloc_20, %alloc_12 : memref<4x14x4xi16> to memref<4x14x4xi16>
        %290 = vector.broadcast %c236460801_i64 : i64 to vector<14x14xi64>
        %291 = vector.matrix_multiply %141, %143 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %292 = arith.subi %c236460801_i64, %c0_i64 : i64
        %293 = math.cttz %170 : tensor<i32>
        %294 = math.exp %21 : tensor<f16>
        %295 = arith.mulf %53, %cst_0 : f32
        %296 = math.log2 %cst_4 : f32
        %297 = index.floordivs %117, %88
        %298 = arith.divsi %c-32597_i16, %c-32597_i16 : i16
        %299 = math.expm1 %cst_3 : f16
        %300 = math.fpowi %cst_6, %c890259428_i32 : f16, i32
        %301 = math.log10 %14 : tensor<4x14x4xf16>
        %302 = bufferization.to_memref %14 : memref<4x14x4xf16>
        %303 = math.fma %100, %274, %100 : tensor<14xf16>
        %alloca_47 = memref.alloca() : memref<14x14xi32>
        scf.yield %189 : vector<14xi1>
      }
      %extracted = tensor.extract %15[%c3, %c13] : tensor<14x14xi1>
      %278 = arith.divui %c-27751_i16, %c-27751_i16 : i16
      %279 = vector.bitcast %48 : vector<14x14xf32> to vector<14x14xf32>
      %280 = math.log2 %100 : tensor<14xf16>
      %281 = tensor.empty() : tensor<14xi64>
      %282 = vector.broadcast %c236460801_i64 : i64 to vector<4x14x4xi64>
      %283 = vector.broadcast %true : i1 to vector<4x14x4xi1>
      %284 = vector.broadcast %c1235670247_i32 : i32 to vector<4x14x4xi32>
      %285 = vector.gather %281[%190] [%284], %283, %282 : tensor<14xi64>, vector<4x14x4xi32>, vector<4x14x4xi1>, vector<4x14x4xi64> into vector<4x14x4xi64>
      %286 = memref.atomic_rmw mulf %53, %alloc_26[%c0] : (f32, memref<14xf32>) -> f32
      %287 = math.log %cst_3 : f16
      %false_46 = index.bool.constant false
      %288 = math.log2 %8 : tensor<14xf32>
      %c13622_i16 = arith.constant 13622 : i16
      %289 = math.log10 %cst_6 : f16
      scf.yield
    }
    case 3 {
      %273 = math.ceil %cst_4 : f32
      %274 = vector.multi_reduction <mul>, %187, %187 [] : vector<12x14xi32> to vector<12x14xi32>
      %275 = vector.insertelement %cst_3, %133[%c14 : index] : vector<14xf16>
      %276 = vector.broadcast %c1344093326_i64 : i64 to vector<10xi64>
      vector.transfer_write %276, %alloc_17[%179, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi64>, memref<14x14xi64>
      %277 = math.absi %true_31 : i1
      %278 = math.ceil %cst_4 : f32
      %279 = affine.max affine_map<(d0, d1, d2) -> ((d1 ceildiv 128) floordiv 2 - (d1 - 1), d0, (d1 ceildiv 128) floordiv 2)>(%26, %32, %163)
      %280 = scf.while (%arg2 = %cst_3) : (f16) -> f16 {
        %291 = math.ipowi %54, %17 : tensor<14x14xi1>
        %292 = arith.maxf %cst_6, %cst_3 : f16
        %293 = index.maxs %88, %c13
        %294 = arith.minf %cst_0, %cst_4 : f32
        %295 = math.fma %reduced, %18, %reduced : tensor<f32>
        %extracted = tensor.extract %13[%c13, %c4] : tensor<14x14xf16>
        %296 = index.divu %138, %88
        %297 = arith.ori %c-8896_i16, %c-27751_i16 : i16
        scf.condition(%true_31) %cst_3 : f16
      } do {
      ^bb0(%arg2: f16):
        %291 = vector.broadcast %cst_5 : f16 to vector<14x14xf16>
        %292 = vector.outerproduct %132, %133, %291 {kind = #vector.kind<minf>} : vector<14xf16>, vector<14xf16>
        %collapsed_46 = tensor.collapse_shape %69 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
        %293 = tensor.empty() : tensor<14x14xi1>
        %294 = linalg.matmul ins(%9, %67 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%293 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %295 = math.round %reduced : tensor<f32>
        %296 = math.exp %4 : tensor<14x14xf32>
        %297 = arith.mulf %cst, %cst : f16
        %298 = index.ceildivu %24, %c11
        %inserted_47 = tensor.insert %53 into %3[%c0, %c9, %c0] : tensor<4x14x4xf32>
        %299 = arith.muli %false, %164 : i1
        %300 = vector.gather %8[%149] [%71], %46, %48 : tensor<14xf32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf32> into vector<14x14xf32>
        %301 = arith.shrsi %c1235670247_i32, %c890259428_i32 : i32
        %302 = math.roundeven %4 : tensor<14x14xf32>
        %303 = memref.realloc %alloc_26 : memref<14xf32> to memref<14xf32>
        %collapsed_48 = tensor.collapse_shape %splat [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %304 = arith.addi %c-8896_i16, %c-8896_i16 : i16
        %305 = index.sizeof
        scf.yield %cst_6 : f16
      }
      %281 = memref.atomic_rmw mins %c890259428_i32, %alloc_8[%c13, %c6] : (i32, memref<14x14xi32>) -> i32
      %282 = vector.create_mask %c0, %56 : vector<14x14xi1>
      %283 = math.ceil %14 : tensor<4x14x4xf16>
      %284 = vector.broadcast %c1344093326_i64 : i64 to vector<13xi64>
      %285 = vector.transfer_write %284, %2[%c15, %56, %134] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<13xi64>, tensor<4x14x4xi64>
      %286 = index.maxu %c0, %149
      %287 = math.ceil %13 : tensor<14x14xf16>
      %288 = memref.realloc %130 : memref<14xf16> to memref<4xf16>
      %289 = vector.broadcast %cst_2 : f32 to vector<14xf32>
      %290 = vector.gather %splat[%102, %138] [%123], %64, %289 : tensor<14x14xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      scf.yield
    }
    case 4 {
      %273 = affine.load %alloc_17[%c9, %c5] : memref<14x14xi64>
      %274 = vector.broadcast %cst_2 : f32 to vector<14xf32>
      %275 = vector.fma %274, %274, %274 : vector<14xf32>
      %expanded_46 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<14x14xi32> into tensor<14x14x1xi32>
      %276 = vector.broadcast %c890259428_i32 : i32 to vector<10xi32>
      %277 = vector.broadcast %true : i1 to vector<10xi1>
      %278 = vector.maskedload %alloc_13[%c4, %c1], %277, %276 : memref<14x14xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
      %279 = index.ceildivs %c1, %57
      %280 = index.maxs %29, %c7
      %281 = index.ceildivs %c11, %c3
      %282 = vector.broadcast %c890259428_i32 : i32 to vector<10x10xi32>
      %283 = vector.outerproduct %276, %276, %282 {kind = #vector.kind<maxsi>} : vector<10xi32>, vector<10xi32>
      %284 = math.ipowi %170, %170 : tensor<i32>
      %285 = vector.extract_strided_slice %46 {offsets = [1], sizes = [9], strides = [1]} : vector<14x14xi1> to vector<9x14xi1>
      %286 = math.log1p %100 : tensor<14xf16>
      %287 = bufferization.to_tensor %alloc_20 : memref<4x14x4xi16>
      %288 = math.absf %13 : tensor<14x14xf16>
      %289 = index.divs %c14, %190
      %290 = scf.while (%arg2 = %cst_2) : (f32) -> f32 {
        %292 = arith.remsi %164, %false_34 : i1
        %293 = index.divs %57, %117
        %294 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 64, d3 - d0)>(%289, %177, %289, %179)
        %dest_47, %accumulated_value_48 = vector.scan <or>, %47, %123 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
        %inserted_49 = tensor.insert %273 into %11[%c4, %c4] : tensor<14x14xi64>
        %295 = index.ceildivu %281, %c4
        %296 = arith.maxui %true, %164 : i1
        %297 = arith.divui %273, %c1344093326_i64 : i64
        scf.condition(%164) %cst_4 : f32
      } do {
      ^bb0(%arg2: f32):
        %dest_47, %accumulated_value_48 = vector.scan <mul>, %71, %123 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
        %292 = arith.muli %273, %c0_i64 : i64
        %293 = memref.realloc %alloc_23 : memref<14xf16> to memref<13xf16>
        %c311266946_i64 = arith.constant 311266946 : i64
        %294 = math.absf %4 : tensor<14x14xf32>
        %295 = arith.maxsi %164, %true_31 : i1
        %296 = index.divu %138, %c12
        %from_elements_49 = tensor.from_elements %cst_5, %cst_6, %cst, %cst_3, %cst_1, %cst_3, %cst_1, %cst_5, %cst_3, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_6, %cst, %cst_3, %cst, %cst, %cst, %cst_5, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst, %cst_5, %cst_6, %cst_1, %cst_6, %cst_5, %cst_1, %cst, %cst_3, %cst_3, %cst_1, %cst_6, %cst_5, %cst_3, %cst, %cst_6, %cst, %cst_5, %cst_1, %cst, %cst_6, %cst_6, %cst_3, %cst_5, %cst, %cst_5, %cst_1, %cst, %cst_3, %cst_1, %cst_6, %cst_5, %cst_3, %cst_6, %cst_5, %cst, %cst_6, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_3, %cst, %cst_1, %cst_3, %cst_6, %cst, %cst_1, %cst_6, %cst_3, %cst_1, %cst_1, %cst_5, %cst_3, %cst, %cst, %cst_6, %cst, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_6, %cst_6, %cst_5, %cst_6, %cst_6, %cst_3, %cst_1, %cst_3, %cst_1, %cst, %cst, %cst_1, %cst_3, %cst_6, %cst_1, %cst, %cst_3, %cst_1, %cst, %cst_1, %cst_1, %cst_6, %cst_6, %cst_3, %cst_6, %cst_5, %cst_6, %cst_6, %cst, %cst_1, %cst_5, %cst_5, %cst_5, %cst_3, %cst_6, %cst_1, %cst_6, %cst_6, %cst_6, %cst, %cst_1, %cst, %cst_3, %cst_6, %cst_3, %cst_3, %cst_6, %cst_3, %cst_3, %cst_5, %cst_3, %cst_6, %cst_3, %cst_6, %cst_6, %cst_6, %cst_6, %cst_6, %cst_5, %cst_3, %cst, %cst_6, %cst_6, %cst_3, %cst, %cst, %cst_1, %cst_6, %cst_3, %cst_6, %cst_1, %cst_1, %cst, %cst_5, %cst, %cst_5, %cst_1, %cst, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst, %cst_5, %cst_6, %cst_3, %cst_6, %cst, %cst_6, %cst_6, %cst_5, %cst_6, %cst_1, %cst_5, %cst_6, %cst, %cst_1, %cst_5, %cst_5, %cst_3, %cst_6, %cst_3, %cst_5, %cst_3, %cst, %cst_6, %cst_5, %cst_3, %cst_5, %cst_5, %cst_3, %cst_6, %cst_3, %cst_1, %cst_6, %cst, %cst_1, %cst_5, %cst, %cst_1, %cst_5, %cst, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst : tensor<4x14x4xf16>
        %297 = index.ceildivs %c8, %84
        %298 = affine.load %130[%c1] : memref<14xf16>
        %299 = vector.broadcast %62 : index to vector<10xindex>
        %300 = vector.broadcast %c0_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_22[%c4, %c8] [%299], %277, %300 : memref<14x14xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %301 = math.ceil %splat : tensor<14x14xf32>
        %302 = math.atan %cst_3 : f16
        %303 = math.log1p %cst_1 : f16
        %304 = math.rsqrt %cst_3 : f16
        %305 = math.log10 %14 : tensor<4x14x4xf16>
        scf.yield %cst_2 : f32
      }
      %291 = index.ceildivu %56, %117
      scf.yield
    }
    default {
      %273 = arith.muli %false, %false_34 : i1
      %274 = arith.minui %c-27751_i16, %c-27751_i16 : i16
      scf.if %true_31 {
        %287 = vector.broadcast %cst_4 : f32 to vector<14x14xf32>
        %288 = vector.fma %287, %45, %287 : vector<14x14xf32>
        %289 = vector.create_mask %32, %24 : vector<14x14xi1>
        %alloc_47 = memref.alloc() : memref<14x14xi1>
        memref.tensor_store %15, %alloc_47 : memref<14x14xi1>
        %290 = arith.shrsi %c-27751_i16, %c6184_i16 : i16
        %291 = math.expm1 %cst : f16
        %292 = arith.divui %164, %false_34 : i1
        %293 = index.add %c4, %136
        %294 = index.sub %c2, %c11
      }
      %275 = arith.ceildivsi %true, %164 : i1
      %276 = index.castu %136 : index to i32
      %277 = arith.negf %cst_2 : f32
      %278 = arith.addi %true, %164 : i1
      %279 = affine.max affine_map<(d0) -> ((d0 * 2) mod 32, ((d0 * 2) mod 32) floordiv 2 - 32, ((d0 * 2) mod 32) floordiv 2)>(%c15)
      %280 = bufferization.clone %alloc_7 : memref<4x14x4xf16> to memref<4x14x4xf16>
      %281 = arith.shrui %c0_i64, %c236460801_i64 : i64
      %282 = index.ceildivs %134, %c1
      %283 = math.exp2 %8 : tensor<14xf32>
      %284 = index.divs %c15, %c1
      %inserted_46 = tensor.insert %true into %17[%c5, %c13] : tensor<14x14xi1>
      %285 = arith.remui %c236460801_i64, %c0_i64 : i64
      %286 = math.atan %reduced : tensor<f32>
    }
    %193 = index.maxs %c13, %82
    %194 = affine.load %alloc_10[%c6, %c6] : memref<14x14xi16>
    %195 = arith.divui %false, %true_31 : i1
    %196 = index.maxs %177, %c2
    %197 = vector.reduction <minsi>, %64 : vector<14xi1> into i1
    %198 = bufferization.to_tensor %alloc_13 : memref<14x14xi32>
    %199 = tensor.empty() : tensor<14x14xi1>
    %200 = linalg.matmul ins(%7, %15 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%199 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %201 = math.tan %cst_6 : f16
    %202 = index.ceildivs %c3, %196
    %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<14x14xi1> into tensor<14x14x1xi1>
    %203 = math.atan %reduced : tensor<f32>
    %204 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %101, %101, %true_31 : vector<1xi1>, vector<1xi1> into i1
    %205 = vector.load %alloc_11[%c3, %c8, %c1] : memref<4x14x4xf32>, vector<14xf32>
    %206 = math.expm1 %53 : f32
    %207 = tensor.empty(%c8) : tensor<?xf16>
    %208 = math.expm1 %3 : tensor<4x14x4xf32>
    %209 = arith.maxsi %c0_i64, %c236460801_i64 : i64
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_38 = arith.constant 0 : i32
    %210 = vector.transfer_read %69[%c10, %136], %c0_i32_38 : tensor<14x14xi32>, vector<i32>
    %211 = scf.while (%arg2 = %71) : (vector<14x14xi32>) -> vector<14x14xi32> {
      %273 = vector.broadcast %164 : i1 to vector<10xi1>
      %274 = vector.transfer_write %273, %9[%32, %27] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi1>, tensor<14x14xi1>
      %275 = arith.shrsi %true, %164 : i1
      %276 = index.maxs %c11, %62
      %277 = index.ceildivu %c15, %163
      %278 = math.cttz %expanded : tensor<14x14x1xi1>
      %279 = scf.if %true_31 -> (f32) {
        %281 = bufferization.to_tensor %alloc_18 : memref<14xi1>
        %282 = vector.multi_reduction <minsi>, %156, %164 [0, 1] : vector<14x14xi1> to i1
        %283 = index.ceildivs %c15, %c1
        %284 = vector.multi_reduction <minf>, %143, %cst_4 [0] : vector<4xf32> to f32
        %285 = tensor.empty() : tensor<14x14xi32>
        %286 = linalg.matmul ins(%1, %1 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%285 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %287 = math.log1p %cst_0 : f32
        %288 = arith.addi %true, %282 : i1
        %splat_49 = tensor.splat %c-8896_i16 : tensor<14x14xi16>
        scf.yield %53 : f32
      } else {
        %281 = vector.multi_reduction <add>, %205, %205 [] : vector<14xf32> to vector<14xf32>
        %282 = math.absi %7 : tensor<14x14xi1>
        %283 = affine.load %alloc_16[%c12] : memref<14xf16>
        memref.assume_alignment %alloc_14, 8 : memref<4x14x4xf16>
        %284 = tensor.empty() : tensor<14x14xi32>
        %285 = linalg.matmul ins(%198, %159 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%284 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %alloca_49 = memref.alloca() : memref<4x14x4xf16>
        %286 = arith.shrsi %c890259428_i32, %c1235670247_i32 : i32
        %287 = affine.max affine_map<(d0, d1) -> (d1 - (d1 - (d0 + d1 + d1)), (d1 - (d0 + d1 + d1)) mod 2)>(%24, %177)
        scf.yield %cst_0 : f32
      }
      %from_elements_46 = tensor.from_elements %cst_0, %53, %cst_2, %53, %cst_2, %53, %cst_2, %cst_4, %cst_4, %cst_2, %cst_0, %53, %cst_4, %cst_2, %cst_0, %279, %cst_0, %cst_0, %53, %279, %53, %53, %279, %53, %279, %cst_2, %cst_0, %cst_2, %279, %cst_4, %cst_0, %cst_4, %cst_0, %53, %cst_2, %cst_4, %53, %cst_4, %cst_0, %279, %53, %cst_2, %cst_2, %cst_4, %279, %cst_2, %cst_4, %cst_2, %cst_2, %279, %cst_2, %53, %cst_0, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %53, %cst_0, %cst_0, %cst_4, %cst_4, %53, %cst_0, %279, %cst_0, %cst_4, %53, %cst_0, %cst_0, %cst_0, %cst_0, %279, %279, %53, %cst_4, %cst_0, %279, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %279, %cst_0, %53, %279, %cst_4, %279, %cst_0, %cst_0, %53, %279, %cst_2, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %279, %53, %cst_4, %53, %53, %cst_2, %cst_2, %cst_0, %cst_0, %53, %53, %279, %cst_0, %cst_4, %cst_4, %53, %cst_0, %cst_4, %cst_4, %53, %279, %53, %cst_0, %cst_2, %cst_0, %cst_4, %cst_4, %53, %cst_2, %cst_0, %279, %53, %cst_0, %cst_4, %279, %279, %cst_0, %cst_0, %cst_0, %cst_0, %cst_4, %279, %cst_2, %cst_2, %53, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %279, %279, %279, %279, %cst_0, %cst_4, %cst_2, %cst_0, %cst_2, %53, %cst_2, %cst_2, %53, %cst_0, %cst_2, %cst_4, %279, %cst_0, %53, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %279, %53, %279, %279, %279, %cst_4, %cst_0, %53, %cst_0, %cst_2, %cst_4, %cst_4, %cst_0, %cst_4, %279, %cst_2, %53, %279, %cst_2, %cst_0, %cst_4, %279, %cst_4, %cst_0, %279, %279, %279, %53, %cst_0, %cst_2, %cst_4, %cst_4, %cst_4, %53, %279, %cst_2, %cst_4, %53, %cst_4, %cst_4, %cst_0, %cst_4, %53, %53, %53, %cst_4, %53 : tensor<4x14x4xf32>
      %false_47 = arith.constant false
      %false_48 = arith.constant false
      %280 = vector.transfer_read %36[%c7, %56], %false_48 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi1>, vector<13xi1>
      scf.condition(%164) %47 : vector<14x14xi32>
    } do {
    ^bb0(%arg2: vector<14x14xi32>):
      %273 = arith.ori %c0_i64, %c1344093326_i64 : i64
      %274 = memref.realloc %130 : memref<14xf16> to memref<14xf16>
      %from_elements_46 = tensor.from_elements %c-8896_i16, %c-8896_i16, %c6184_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %194, %c-8896_i16, %194, %194, %c-8896_i16, %194, %c-8896_i16, %c-27751_i16, %c6184_i16, %194, %c6184_i16, %c6184_i16, %c-8896_i16, %c-27751_i16, %194, %c6184_i16, %c-32597_i16, %194, %c-27751_i16, %c-8896_i16, %c-8896_i16, %c-8896_i16, %c6184_i16, %194, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %c-27751_i16, %194, %c6184_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %194, %194, %c-27751_i16, %c-8896_i16, %c6184_i16, %194, %c-8896_i16, %194, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %194, %c6184_i16, %194, %194, %c-32597_i16, %c-8896_i16, %194, %c-8896_i16, %c-32597_i16, %c-32597_i16, %c-32597_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c6184_i16, %194, %c-32597_i16, %c-8896_i16, %c-8896_i16, %c-27751_i16, %c-27751_i16, %c-27751_i16, %c-8896_i16, %c-27751_i16, %c6184_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-8896_i16, %194, %c-32597_i16, %194, %c-8896_i16, %c-32597_i16, %194, %c-32597_i16, %c6184_i16, %c6184_i16, %c-32597_i16, %c-27751_i16, %c-32597_i16, %c6184_i16, %c-32597_i16, %c6184_i16, %c-8896_i16, %194, %c-27751_i16, %194, %194, %c6184_i16, %c6184_i16, %194, %c-32597_i16, %c6184_i16, %c-27751_i16, %c-27751_i16, %194, %c6184_i16, %194, %c-27751_i16, %194, %c-8896_i16, %c6184_i16, %c-27751_i16, %c-32597_i16, %194, %c-32597_i16, %c-8896_i16, %c-27751_i16, %194, %c6184_i16, %194, %c6184_i16, %c-32597_i16, %194, %c-32597_i16, %c-32597_i16, %c6184_i16, %194, %c-8896_i16, %c6184_i16, %194, %c-8896_i16, %194, %194, %c6184_i16, %c-32597_i16, %c6184_i16, %194, %c-27751_i16, %c-32597_i16, %c-32597_i16, %194, %c-32597_i16, %c-32597_i16, %194, %c-27751_i16, %c-8896_i16, %c6184_i16, %194, %c6184_i16, %c-27751_i16, %c-8896_i16, %c-32597_i16, %c-27751_i16, %194, %c-32597_i16, %c-27751_i16, %c6184_i16, %c-32597_i16, %c-8896_i16, %c6184_i16, %c6184_i16, %194, %c6184_i16 : tensor<14x14xi16>
      %275 = tensor.empty() : tensor<14xf16>
      %mapped = linalg.map ins(%alloc_16 : memref<14xf16>) outs(%275 : tensor<14xf16>)
        (%in: f16) {
          vector.print %133 : vector<14xf16>
          %287 = vector.broadcast %cst_0 : f32 to vector<14x4xf32>
          %dest_49, %accumulated_value_50 = vector.scan <minf>, %75, %287 {inclusive = true, reduction_dim = 0 : i64} : vector<4x14x4xf32>, vector<14x4xf32>
          %288 = math.round %13 : tensor<14x14xf16>
          %289 = arith.muli %false_34, %false_34 : i1
          %290 = vector.transpose %156, [0, 1] : vector<14x14xi1> to vector<14x14xi1>
          %false_51 = arith.constant false
          %291 = affine.max affine_map<(d0, d1, d2, d3) -> (((d3 - d2) ceildiv 64) mod 8 - ((d3 - d2) mod 128 - d1) ceildiv 8 - d3)>(%56, %c1, %26, %c10)
          %alloc_52 = memref.alloc() : memref<4x14x4xi32>
          %292 = index.maxs %183, %193
          %293 = math.round %splat : tensor<14x14xf32>
          vector.print %156 : vector<14x14xi1>
          %294 = index.divu %138, %84
          %295 = math.log2 %cst_0 : f32
          %296 = index.ceildivu %88, %c3
          %297 = math.fma %18, %18, %reduced : tensor<f32>
          %alloc_53 = memref.alloc() : memref<14x14xi1>
          %298 = vector.gather %alloc_53[%136, %29] [%123], %64, %60 : memref<14x14xi1>, vector<14xi32>, vector<14xi1>, vector<14xi1> into vector<14xi1>
          %299 = memref.realloc %alloc_16 : memref<14xf16> to memref<13xf16>
          %300 = math.round %4 : tensor<14x14xf32>
          %301 = math.exp %150 : tensor<14xf32>
          %302 = index.divu %84, %179
          %rank = tensor.rank %15 : tensor<14x14xi1>
          %303 = vector.splat %82 : vector<14x14xindex>
          %304 = affine.max affine_map<(d0) -> (0)>(%84)
          %305 = math.expm1 %14 : tensor<4x14x4xf16>
          memref.store %cst_5, %alloc_7[%c1, %c3, %c0] : memref<4x14x4xf16>
          %306 = vector.matrix_multiply %64, %60 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
          %rank_54 = tensor.rank %10 : tensor<4x14x4xi32>
          %307 = index.divu %c11, %27
          %308 = arith.divsi %c-32597_i16, %c-32597_i16 : i16
          memref.copy %130, %alloc : memref<14xf16> to memref<14xf16>
          %309 = math.atan %53 : f32
          %310 = index.divu %88, %rank
          %cst_55 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_55 : f16
        }
      %alloca_47 = memref.alloca() : memref<14xf16>
      %276 = arith.minf %cst_3, %cst_5 : f16
      %277 = math.absf %cst_1 : f16
      %278 = index.sub %196, %29
      %279 = math.exp %13 : tensor<14x14xf16>
      %inserted_48 = tensor.insert %cst_5 into %14[%c1, %c10, %c0] : tensor<4x14x4xf16>
      %280 = arith.minui %c-27751_i16, %c-32597_i16 : i16
      %281 = math.log2 %100 : tensor<14xf16>
      %282 = scf.index_switch %88 -> tensor<4x14x4xf32> 
      case 1 {
        %287 = memref.atomic_rmw maxs %c1344093326_i64, %alloc_17[%c10, %c9] : (i64, memref<14x14xi64>) -> i64
        memref.assume_alignment %alloc_9, 2 : memref<4x14x4xi32>
        %288 = arith.muli %c-27751_i16, %194 : i16
        memref.store %cst_6, %191[%c7] : memref<14xf16>
        %289 = arith.shrui %194, %c-32597_i16 : i16
        %290 = memref.realloc %alloc_21 : memref<14xf16> to memref<14xf16>
        %291 = arith.remsi %c6184_i16, %c-32597_i16 : i16
        %292 = vector.create_mask %c12, %c15 : vector<14x14xi1>
        %293 = memref.atomic_rmw addf %cst_4, %alloc_11[%c2, %c10, %c3] : (f32, memref<4x14x4xf32>) -> f32
        %294 = math.ipowi %1, %1 : tensor<14x14xi32>
        %295 = arith.andi %true_31, %true_31 : i1
        %296 = bufferization.to_tensor %alloc_21 : memref<14xf16>
        %297 = index.add %82, %102
        %298 = math.round %3 : tensor<4x14x4xf32>
        %299 = math.ctpop %159 : tensor<14x14xi32>
        %300 = arith.divui %true, %true : i1
        scf.yield %3 : tensor<4x14x4xf32>
      }
      case 2 {
        %287 = affine.max affine_map<(d0, d1, d2) -> ((d2 - d0) mod 64, (d2 - d0) * 32 + 1)>(%c0, %c3, %c11)
        %from_elements_49 = tensor.from_elements %c0_i32, %c890259428_i32, %c1235670247_i32, %c0_i32, %c890259428_i32, %c890259428_i32, %c0_i32, %c1235670247_i32, %c0_i32, %c890259428_i32, %c0_i32, %c1235670247_i32, %c0_i32, %c0_i32 : tensor<14xi32>
        %288 = index.castu %c8 : index to i32
        vector.print %187 : vector<12x14xi32>
        %289 = math.fma %cst_6, %cst, %cst_6 : f16
        %290 = math.roundeven %8 : tensor<14xf32>
        %291 = index.sub %c11, %c11
        %292 = math.ipowi %34, %15 : tensor<14x14xi1>
        %293 = vector.bitcast %71 : vector<14x14xi32> to vector<14x14xi32>
        %294 = index.floordivs %c5, %c15
        %295 = math.ipowi %170, %170 : tensor<i32>
        %296 = math.fpowi %275, %from_elements_49 : tensor<14xf16>, tensor<14xi32>
        %297 = index.castu %27 : index to i32
        %298 = math.round %cst_6 : f16
        %299 = arith.mulf %cst_0, %cst_4 : f32
        %collapsed_50 = tensor.collapse_shape %79 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
        scf.yield %3 : tensor<4x14x4xf32>
      }
      default {
        %287 = vector.outerproduct %205, %205, %48 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
        %288 = bufferization.clone %alloc_23 : memref<14xf16> to memref<14xf16>
        %289 = math.ceil %14 : tensor<4x14x4xf16>
        %290 = arith.minsi %c-27751_i16, %c6184_i16 : i16
        %291 = math.exp %cst_4 : f32
        %292 = index.divu %c4, %c6
        bufferization.dealloc_tensor %3 : tensor<4x14x4xf32>
        %true_49 = index.bool.constant true
        %293 = math.expm1 %13 : tensor<14x14xf16>
        %false_50 = index.bool.constant false
        %294 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 floordiv 4) ceildiv 4, d0 floordiv 4)>(%c6, %62, %c12, %c0)
        %295 = math.log1p %53 : f32
        %296 = arith.shrsi %c-32597_i16, %c6184_i16 : i16
        %297 = index.ceildivu %c8, %136
        %298 = math.log %cst_2 : f32
        %299 = vector.broadcast %cst_5 : f16 to vector<4xf16>
        %300 = vector.maskedload %alloc_16[%c12], %142, %299 : memref<14xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        scf.yield %3 : tensor<4x14x4xf32>
      }
      %283 = tensor.empty() : tensor<4x14x4xi16>
      %284 = math.sqrt %53 : f32
      %285 = tensor.empty() : tensor<14x14xi16>
      %286 = linalg.matmul ins(%0, %from_elements_46 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%285 : tensor<14x14xi16>) -> tensor<14x14xi16>
      scf.yield %47 : vector<14x14xi32>
    }
    %false_39 = index.bool.constant false
    %from_elements_40 = tensor.from_elements %c890259428_i32, %c0_i32, %c1235670247_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %c890259428_i32, %c0_i32, %c0_i32, %c890259428_i32, %c1235670247_i32, %c0_i32, %c890259428_i32 : tensor<14xi32>
    %alloca_41 = memref.alloca() : memref<14xi64>
    %212 = math.log2 %21 : tensor<f16>
    %213 = math.roundeven %cst : f16
    %214 = vector.matrix_multiply %133, %133 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
    %215 = vector.insertelement %c890259428_i32, %20[%c4 : index] : vector<13xi32>
    %216 = arith.andi %c890259428_i32, %c890259428_i32 : i32
    %217 = math.tan %from_elements : tensor<14x14xf32>
    %218 = tensor.empty() : tensor<14x14xi1>
    %219 = linalg.matmul ins(%9, %199 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%218 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %220 = arith.subi %c1344093326_i64, %c1344093326_i64 : i64
    %from_elements_42 = tensor.from_elements %c236460801_i64, %c1344093326_i64, %c236460801_i64, %c236460801_i64, %c1344093326_i64, %c1344093326_i64, %c0_i64, %c236460801_i64, %c0_i64, %c1344093326_i64, %c236460801_i64, %c236460801_i64, %c0_i64, %c1344093326_i64 : tensor<14xi64>
    %221 = affine.load %alloc_13[%c15, %c7] : memref<14x14xi32>
    %222 = arith.divui %c6184_i16, %c6184_i16 : i16
    %223 = math.atan %3 : tensor<4x14x4xf32>
    %224 = math.log1p %cst_0 : f32
    %225 = vector.matrix_multiply %60, %101 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<1xi1>) -> vector<14xi1>
    %226 = index.divu %176, %62
    %227 = arith.mulf %cst_3, %cst : f16
    %228 = arith.minui %false_34, %false_39 : i1
    bufferization.dealloc_tensor %198 : tensor<14x14xi32>
    %229 = index.add %c10, %29
    %230 = math.absf %cst_0 : f32
    %231 = math.round %reduced : tensor<f32>
    %232 = math.roundeven %21 : tensor<f16>
    %233 = index.maxs %179, %176
    %234 = tensor.empty() : tensor<14x14xf32>
    %235 = linalg.matmul ins(%4, %splat : tensor<14x14xf32>, tensor<14x14xf32>) outs(%234 : tensor<14x14xf32>) -> tensor<14x14xf32>
    %236 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 - 64) - (-(d3 - 64) + (-(d3 - 64)) floordiv 8) + d1 mod 64, -(d3 - 64) - (-(d3 - 64) + (-(d3 - 64)) floordiv 8) + d1 mod 64)>(%29, %112, %c14, %112)
    %237 = math.sqrt %21 : tensor<f16>
    %c0_i32_43 = arith.constant 0 : i32
    %238 = vector.transfer_read %12[%181, %84], %c0_i32_43 : tensor<14x14xi32>, vector<i32>
    %239 = index.castu %c1 : index to i32
    %240 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 32, d0 mod 32, d1 + 15, 8)>(%c14, %c1, %c1)
    %241 = vector.maskedload %alloc_21[%c6], %225, %133 : memref<14xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
    %242 = math.roundeven %3 : tensor<4x14x4xf32>
    %243 = arith.xori %false, %false_39 : i1
    %244 = arith.maxui %c-32597_i16, %c-32597_i16 : i16
    %245 = vector.load %alloc_16[%c13] : memref<14xf16>, vector<4x14x4xf16>
    %246 = math.round %13 : tensor<14x14xf16>
    %from_elements_44 = tensor.from_elements %c0_i32, %c0_i32_43, %221, %221, %c1235670247_i32, %c0_i32_43, %c0_i32_43, %c890259428_i32, %c0_i32, %c1235670247_i32, %c0_i32_43, %c1235670247_i32, %221, %c0_i32_43, %c0_i32_43, %c890259428_i32, %c0_i32, %c0_i32_43, %c890259428_i32, %c0_i32_43, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %c0_i32, %c0_i32, %221, %c0_i32, %c0_i32_43, %221, %c0_i32_43, %221, %c1235670247_i32, %221, %c1235670247_i32, %221, %c0_i32, %c890259428_i32, %c0_i32, %c890259428_i32, %c1235670247_i32, %c0_i32_43, %c890259428_i32, %c0_i32_43, %c0_i32_43, %221, %221, %c1235670247_i32, %c890259428_i32, %c0_i32_43, %c0_i32_43, %c0_i32, %221, %c0_i32_43, %c0_i32_43, %c1235670247_i32, %c890259428_i32, %c0_i32_43, %c890259428_i32, %c0_i32, %c890259428_i32, %c0_i32_43, %c0_i32_43, %c890259428_i32, %c0_i32_43, %c0_i32, %c1235670247_i32, %c1235670247_i32, %c1235670247_i32, %c0_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %c0_i32_43, %c1235670247_i32, %c1235670247_i32, %c0_i32, %c1235670247_i32, %221, %c890259428_i32, %c890259428_i32, %c0_i32_43, %c0_i32, %c0_i32_43, %221, %c890259428_i32, %221, %221, %c0_i32_43, %c0_i32, %c1235670247_i32, %221, %c0_i32_43, %c0_i32, %221, %c0_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c1235670247_i32, %c0_i32, %c1235670247_i32, %c0_i32_43, %c0_i32_43, %c890259428_i32, %c0_i32_43, %c0_i32, %c890259428_i32, %c0_i32, %c0_i32_43, %c0_i32, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %c1235670247_i32, %c0_i32, %c1235670247_i32, %c890259428_i32, %c1235670247_i32, %c0_i32_43, %221, %221, %c890259428_i32, %221, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32_43, %221, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %221, %c0_i32, %c1235670247_i32, %c0_i32_43, %c0_i32, %c0_i32, %c0_i32, %c0_i32_43, %c0_i32, %221, %c0_i32_43, %c890259428_i32, %c0_i32, %c0_i32, %c1235670247_i32, %c1235670247_i32, %c0_i32, %c0_i32, %c890259428_i32, %c0_i32, %221, %c0_i32, %c0_i32_43, %c0_i32_43, %c890259428_i32, %221, %c1235670247_i32, %221, %c890259428_i32, %c0_i32, %c1235670247_i32, %c0_i32, %221, %c0_i32_43, %c0_i32_43, %221, %c0_i32_43, %c890259428_i32, %221, %c890259428_i32, %c0_i32, %c1235670247_i32, %c890259428_i32, %c0_i32_43, %c0_i32_43, %c0_i32, %c1235670247_i32, %c0_i32, %c890259428_i32, %c890259428_i32, %c0_i32, %c1235670247_i32, %c890259428_i32, %221, %c890259428_i32, %c890259428_i32, %c890259428_i32, %c0_i32, %c0_i32_43, %c0_i32_43 : tensor<14x14xi32>
    %247 = math.ceil %cst_1 : f16
    %248 = math.cttz %true : i1
    %249 = vector.matrix_multiply %101, %142 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
    %250 = arith.remf %cst_0, %53 : f32
    %251 = math.log2 %4 : tensor<14x14xf32>
    %252 = vector.multi_reduction <or>, %123, %123 [] : vector<14xi32> to vector<14xi32>
    %253 = math.tan %from_elements : tensor<14x14xf32>
    %254 = vector.broadcast %53 : f32 to vector<14x14xf32>
    %255 = vector.fma %254, %48, %45 : vector<14x14xf32>
    %256 = vector.multi_reduction <or>, %47, %71 [] : vector<14x14xi32> to vector<14x14xi32>
    %257 = index.divu %176, %202
    %258 = arith.ceildivsi %c890259428_i32, %c1235670247_i32 : i32
    %259 = scf.execute_region -> i32 {
      %273 = arith.minsi %c6184_i16, %c-27751_i16 : i16
      %274 = arith.remui %c0_i32_43, %c0_i32 : i32
      %275 = arith.maxui %c-32597_i16, %c-27751_i16 : i16
      %276 = math.expm1 %53 : f32
      %277 = vector.broadcast %cst_4 : f32 to vector<4x14x4xf32>
      %278 = vector.fma %277, %277, %76 : vector<4x14x4xf32>
      bufferization.dealloc_tensor %34 : tensor<14x14xi1>
      %279 = index.casts %c14 : index to i32
      %280 = arith.addi %c0_i32_43, %c0_i32 : i32
      %281 = math.log1p %reduced : tensor<f32>
      %rank = tensor.rank %12 : tensor<14x14xi32>
      %282 = bufferization.to_tensor %alloc_22 : memref<14x14xi64>
      %283 = arith.ceildivsi %false, %true_31 : i1
      %284 = arith.mulf %cst, %cst : f16
      %285 = vector.create_mask %233, %c11 : vector<14x14xi1>
      %286 = arith.mulf %cst_1, %cst_3 : f16
      %from_elements_46 = tensor.from_elements %true, %false, %false, %true, %false_34, %164, %false_39, %164, %false_39, %true, %true, %true_31, %true_31, %true_31, %false_34, %false, %true, %false, %true_31, %true, %false_34, %true_31, %false_39, %164, %164, %false_34, %false_39, %false_39, %false, %true, %true_31, %false_34, %false_39, %false_34, %false, %true, %true, %false, %false, %false, %true_31, %true, %true_31, %false_39, %false_34, %164, %true_31, %false, %false_34, %true_31, %false_34, %false_34, %false_39, %true, %true, %false_39, %164, %true, %false_39, %false, %false_39, %false_39, %false, %false_34, %true, %true_31, %164, %false_39, %true_31, %false_39, %false, %164, %false_39, %false_34, %false, %false_39, %false_39, %164, %false_39, %false_34, %164, %false, %false_39, %true, %false_39, %false_34, %164, %true_31, %164, %true, %true, %true, %false_39, %true_31, %true, %164, %false_34, %false, %164, %false_39, %true, %164, %false_34, %164, %false, %false_34, %false_39, %false_39, %true, %false_34, %false_34, %false, %false_34, %164, %false, %false_39, %false_34, %164, %false_34, %true, %false_39, %true, %false_39, %164, %false, %164, %false, %164, %false_34, %false_34, %false_39, %false_34, %false, %false_34, %false_39, %false_39, %false, %false_34, %false_39, %164, %false_39, %false_39, %false_39, %164, %164, %true, %true, %true, %true_31, %true_31, %false, %false_34, %true_31, %false_39, %164, %false, %164, %false_34, %true_31, %true_31, %false_39, %false, %false, %true, %false_34, %164, %false_34, %true, %164, %true, %true_31, %true_31, %false_34, %164, %false_34, %false, %164, %false_34, %false_34, %164, %true_31, %164, %false, %true, %false_39, %false_34, %false_34, %false, %false_39, %true, %false, %false, %false, %true, %false_39, %false_39, %true_31, %false, %false, %false_39, %false_34, %false, %true, %false_34, %164, %164, %false_39, %164, %false_34, %false, %true, %false_34, %false_39, %true, %true_31, %true, %true_31, %true_31, %false, %false_39, %false_39, %false_34, %true, %true_31 : tensor<4x14x4xi1>
      scf.yield %c0_i32_43 : i32
    }
    %260 = math.log %4 : tensor<14x14xf32>
    %261 = arith.maxui %259, %259 : i32
    %262 = math.exp2 %cst_4 : f32
    %263 = scf.while (%arg2 = %true_31) : (i1) -> i1 {
      %273 = arith.minui %false, %false_34 : i1
      %c1_i64 = arith.constant 1 : i64
      %c0_i64_46 = arith.constant 0 : i64
      %274 = vector.transfer_read %alloc_22[%57, %226], %c0_i64_46 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<14x14xi64>, vector<14xi64>
      %275 = index.divs %c8, %138
      %276 = vector.broadcast %164 : i1 to vector<4x4xi1>
      %277 = vector.outerproduct %249, %142, %276 {kind = #vector.kind<add>} : vector<4xi1>, vector<4xi1>
      %278 = affine.apply affine_map<(d0, d1) -> (d1)>(%177, %196)
      %279 = arith.remui %221, %c890259428_i32 : i32
      %280 = vector.bitcast %143 : vector<4xf32> to vector<4xf32>
      %281 = arith.minui %c890259428_i32, %c1235670247_i32 : i32
      scf.condition(%true) %arg2 : i1
    } do {
    ^bb0(%arg2: i1):
      %273 = scf.if %164 -> (f32) {
        %288 = math.rsqrt %8 : tensor<14xf32>
        %289 = index.floordivs %c13, %26
        %collapsed_48 = tensor.collapse_shape %9 [[0, 1]] : tensor<14x14xi1> into tensor<196xi1>
        %collapsed_49 = tensor.collapse_shape %from_elements_44 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
        %290 = affine.min affine_map<(d0) -> (d0 + 64, ((d0 floordiv 32) * -3) floordiv 32, d0 floordiv 32)>(%c12)
        %291 = math.log2 %13 : tensor<14x14xf16>
        %cst_50 = arith.constant 1.000000e+00 : f16
        %cst_51 = arith.constant 0.000000e+00 : f16
        %292 = vector.transfer_read %alloc[%176], %cst_51 : memref<14xf16>, vector<f16>
        %293 = index.divs %84, %56
        scf.yield %53 : f32
      } else {
        %288 = math.log1p %53 : f32
        %289 = math.ipowi %2, %2 : tensor<4x14x4xi64>
        %290 = vector.insertelement %cst_0, %141[%226 : index] : vector<4xf32>
        %291 = math.ceil %cst_5 : f16
        %292 = math.log %cst_5 : f16
        %from_elements_48 = tensor.from_elements %cst_1, %cst_6, %cst_3, %cst, %cst_1, %cst_5, %cst_5, %cst_1, %cst_3, %cst_3, %cst_1, %cst_5, %cst_5, %cst_3, %cst_3, %cst_3, %cst_1, %cst_5, %cst_1, %cst_5, %cst, %cst_3, %cst_6, %cst_5, %cst_3, %cst_1, %cst_1, %cst_5, %cst, %cst_6, %cst_5, %cst_5, %cst_6, %cst_1, %cst_5, %cst_6, %cst, %cst_3, %cst_3, %cst_6, %cst_6, %cst_3, %cst_5, %cst, %cst_3, %cst_6, %cst_3, %cst_6, %cst_1, %cst_3, %cst_3, %cst_5, %cst_6, %cst_6, %cst_1, %cst_5, %cst_5, %cst_1, %cst_3, %cst_5, %cst_1, %cst_5, %cst, %cst_1, %cst, %cst_1, %cst_6, %cst_6, %cst_6, %cst_1, %cst, %cst, %cst_6, %cst_3, %cst_1, %cst, %cst_3, %cst_1, %cst_3, %cst, %cst_6, %cst, %cst_6, %cst_5, %cst_1, %cst_1, %cst, %cst_1, %cst_3, %cst_1, %cst, %cst_1, %cst_3, %cst_6, %cst_6, %cst_3, %cst, %cst_6, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_3, %cst_6, %cst_1, %cst_6, %cst_1, %cst_1, %cst_3, %cst, %cst_3, %cst_3, %cst_1, %cst_5, %cst, %cst_6, %cst_5, %cst_6, %cst_3, %cst_3, %cst, %cst, %cst_5, %cst, %cst_3, %cst_6, %cst_3, %cst_3, %cst, %cst, %cst_6, %cst, %cst_1, %cst_6, %cst_5, %cst, %cst_3, %cst_5, %cst_6, %cst_5, %cst, %cst_5, %cst_3, %cst_3, %cst_1, %cst_5, %cst_1, %cst_1, %cst_6, %cst_3, %cst_3, %cst_6, %cst, %cst_6, %cst_5, %cst_5, %cst, %cst_6, %cst_6, %cst_3, %cst, %cst_5, %cst_5, %cst, %cst_5, %cst_5, %cst_3, %cst_6, %cst_5, %cst_5, %cst_3, %cst_1, %cst_5, %cst_6, %cst_5, %cst_6, %cst, %cst_3, %cst_6, %cst_5, %cst_3, %cst_6, %cst_3, %cst_1, %cst_3, %cst_6, %cst, %cst_1, %cst_5, %cst_6, %cst, %cst_5, %cst_3, %cst, %cst : tensor<14x14xf16>
        %293 = arith.floordivsi %true_31, %true : i1
        %294 = math.tan %150 : tensor<14xf32>
        scf.yield %53 : f32
      }
      %274 = arith.minui %c6184_i16, %c-32597_i16 : i16
      %275 = math.log1p %cst_0 : f32
      %276 = arith.maxui %c1235670247_i32, %259 : i32
      %277 = math.cttz %9 : tensor<14x14xi1>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32_46 = arith.constant 0 : i32
      %278 = vector.transfer_read %159[%193, %190], %c0_i32_46 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi32>, vector<10xi32>
      %279 = scf.index_switch %c0 -> memref<4x14x4xf16> 
      case 1 {
        %288 = math.fpowi %cst_5, %c0_i32 : f16, i32
        %289 = index.ceildivs %179, %62
        %290 = vector.broadcast %273 : f32 to vector<14x14xf32>
        %291 = vector.fma %290, %290, %45 : vector<14x14xf32>
        %292 = bufferization.to_memref %from_elements_42 : memref<14xi64>
        %collapsed_48 = tensor.collapse_shape %4 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %293 = arith.mulf %cst_1, %cst_1 : f16
        %294 = math.atan %cst : f16
        %295 = math.atan %273 : f32
        memref.store %cst, %191[%c5] : memref<14xf16>
        %296 = arith.minui %true, %true_31 : i1
        %297 = arith.addi %c-27751_i16, %c-32597_i16 : i16
        %298 = memref.realloc %292 : memref<14xi64> to memref<13xi64>
        %collapsed_49 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<4x14x4xi32> into tensor<56x4xi32>
        %299 = arith.shrui %221, %c890259428_i32 : i32
        %300 = math.absf %cst_3 : f16
        %301 = tensor.empty() : tensor<14x14xi32>
        %302 = linalg.matmul ins(%1, %159 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%301 : tensor<14x14xi32>) -> tensor<14x14xi32>
        scf.yield %alloc_7 : memref<4x14x4xf16>
      }
      case 2 {
        %288 = vector.insertelement %false_39, %101[%c8 : index] : vector<1xi1>
        %289 = affine.max affine_map<(d0, d1) -> (d0, d0 floordiv 16, d1 + 2)>(%57, %226)
        %290 = math.ceil %8 : tensor<14xf32>
        %291 = math.tan %reduced : tensor<f32>
        %292 = arith.shrsi %false, %arg2 : i1
        %293 = index.add %181, %240
        %294 = vector.broadcast %164 : i1 to vector<4x14x4xi1>
        %295 = vector.broadcast %259 : i32 to vector<4x14x4xi32>
        %296 = vector.gather %alloc_15[%226, %c9] [%295], %294, %245 : memref<14x14xf16>, vector<4x14x4xi32>, vector<4x14x4xi1>, vector<4x14x4xf16> into vector<4x14x4xf16>
        %297 = arith.remsi %arg2, %arg2 : i1
        %298 = arith.remsi %c1344093326_i64, %c1344093326_i64 : i64
        %299 = index.ceildivs %c6, %289
        %300 = vector.matrix_multiply %60, %101 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<1xi1>) -> vector<14xi1>
        %splat_48 = tensor.splat %c890259428_i32 : tensor<14x14xi32>
        %301 = index.maxs %c0, %c7
        %inserted_49 = tensor.insert %c0_i32 into %198[%c13, %c3] : tensor<14x14xi32>
        %302 = arith.muli %false, %arg2 : i1
        %303 = math.exp %13 : tensor<14x14xf16>
        scf.yield %alloc_14 : memref<4x14x4xf16>
      }
      case 3 {
        %288 = math.log2 %3 : tensor<4x14x4xf32>
        %289 = math.log10 %splat : tensor<14x14xf32>
        %from_elements_48 = tensor.from_elements %53, %cst_2, %cst_4, %cst_0, %cst_2, %cst_0, %cst_2, %53, %cst_2, %cst_0, %53, %cst_4, %cst_2, %53, %cst_2, %53, %53, %cst_0, %273, %53, %cst_4, %cst_0, %cst_2, %53, %cst_2, %cst_4, %273, %53, %273, %273, %273, %cst_4, %cst_4, %cst_2, %cst_2, %53, %273, %cst_2, %cst_2, %cst_4, %cst_0, %cst_4, %53, %273, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %273, %273, %53, %273, %53, %cst_0, %273, %cst_2, %273, %cst_4, %273, %53, %cst_4, %cst_2, %273, %53, %cst_0, %273, %cst_2, %273, %53, %cst_2, %cst_2, %53, %273, %cst_4, %cst_4, %273, %273, %cst_2, %cst_4, %273, %cst_0, %cst_4, %cst_4, %cst_4, %cst_0, %cst_2, %53, %cst_4, %cst_2, %cst_2, %273, %273, %53, %cst_4, %53, %53, %cst_4, %53, %273, %cst_4, %53, %cst_2, %cst_2, %cst_4, %53, %cst_2, %53, %273, %cst_4, %cst_4, %273, %53, %273, %cst_0, %cst_2, %53, %cst_2, %cst_2, %53, %cst_4, %cst_4, %53, %cst_2, %cst_4, %273, %cst_4, %cst_0, %273, %cst_0, %53, %273, %53, %53, %273, %cst_4, %cst_4, %cst_4, %273, %273, %cst_4, %cst_2, %273, %cst_2, %273, %cst_0, %53, %cst_0, %cst_4, %273, %53, %cst_2, %cst_0, %53, %cst_4, %cst_0, %cst_0, %cst_2, %273, %273, %cst_0, %cst_4, %273, %cst_4, %53, %273, %273, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_0, %cst_0, %273, %cst_2, %cst_2, %53, %cst_0, %cst_0, %53, %cst_2, %cst_4, %cst_2, %53, %53, %cst_2, %cst_0, %273, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4 : tensor<14x14xf32>
        %290 = math.fpowi %18, %170 : tensor<f32>, tensor<i32>
        %291 = arith.subi %c0_i32, %259 : i32
        %false_49 = arith.constant false
        %splat_50 = tensor.splat %cst_6 : tensor<14x14xf16>
        %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 4, d1 + d0, d1 + d0, d3)>(%32, %196, %c1, %226)
        %293 = arith.ori %false_34, %false : i1
        %294 = math.log1p %reduced : tensor<f32>
        %295 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %296 = vector.outerproduct %132, %132, %295 {kind = #vector.kind<add>} : vector<14xf16>, vector<14xf16>
        %297 = arith.negf %cst_0 : f32
        %298 = index.divu %c5, %c5
        vector.print %214 : vector<1xf16>
        %299 = index.maxu %c0, %202
        %300 = math.log2 %3 : tensor<4x14x4xf32>
        scf.yield %alloc_7 : memref<4x14x4xf16>
      }
      default {
        %alloc_48 = memref.alloc() : memref<4x14x4xi32>
        memref.copy %alloc_9, %alloc_48 : memref<4x14x4xi32> to memref<4x14x4xi32>
        %inserted_49 = tensor.insert %c236460801_i64 into %11[%c12, %c1] : tensor<14x14xi64>
        %expanded_50 = tensor.expand_shape %from_elements_42 [[0, 1]] : tensor<14xi64> into tensor<14x1xi64>
        %rank = tensor.rank %10 : tensor<4x14x4xi32>
        %288 = math.round %cst : f16
        %289 = vector.extract_strided_slice %141 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        %290 = vector.broadcast %cst_6 : f16 to vector<4xf16>
        %291 = vector.maskedload %alloc_15[%c1, %c0], %249, %290 : memref<14x14xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %292 = vector.create_mask %236, %c2, %82 : vector<4x14x4xi1>
        %293 = arith.maxf %cst_4, %cst_0 : f32
        %294 = arith.subi %c236460801_i64, %c236460801_i64 : i64
        %295 = index.divu %190, %c15
        %296 = math.log10 %cst_1 : f16
        %297 = bufferization.to_tensor %alloc_19 : memref<14x14xi64>
        %298 = affine.max affine_map<(d0, d1) -> ((d1 + 1) * 2, (d1 + 1) * 2)>(%c13, %138)
        %299 = index.add %138, %c5
        %300 = vector.broadcast %cst_2 : f32 to vector<f32>
        %301 = vector.transfer_write %300, %splat[%c5, %202] : vector<f32>, tensor<14x14xf32>
        scf.yield %alloc_14 : memref<4x14x4xf16>
      }
      %280 = vector.insertelement %cst_6, %241[%c4 : index] : vector<14xf16>
      %281 = index.divu %177, %236
      %282 = memref.alloca_scope  -> (i32) {
        %288 = tensor.empty() : tensor<14x14xf32>
        %289 = linalg.matmul ins(%4, %splat : tensor<14x14xf32>, tensor<14x14xf32>) outs(%288 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %290 = affine.load %alloc_18[%c9] : memref<14xi1>
        %291 = math.log2 %53 : f32
        %292 = index.ceildivs %136, %c9
        %293 = math.fpowi %234, %1 : tensor<14x14xf32>, tensor<14x14xi32>
        %294 = index.sub %149, %24
        %295 = arith.remui %false_34, %false_34 : i1
        %rank = tensor.rank %234 : tensor<14x14xf32>
        %296 = arith.maxsi %true, %164 : i1
        %alloc_48 = memref.alloc() : memref<14x14xi64>
        %alloc_49 = memref.alloc() : memref<14xi1>
        memref.copy %alloc_18, %alloc_49 : memref<14xi1> to memref<14xi1>
        %alloc_50 = memref.alloc() : memref<14x14xi1>
        memref.tensor_store %7, %alloc_50 : memref<14x14xi1>
        %297 = arith.subi %c236460801_i64, %c0_i64 : i64
        %alloc_51 = memref.alloc() : memref<14x14xf16>
        %298 = vector.transpose %255, [1, 0] : vector<14x14xf32> to vector<14x14xf32>
        %299 = math.atan %13 : tensor<14x14xf16>
        %300 = arith.ori %false, %290 : i1
        %301 = index.divu %88, %82
        memref.copy %alloc_12, %alloc_20 : memref<4x14x4xi16> to memref<4x14x4xi16>
        %collapsed_52 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %302 = vector.extract_strided_slice %168 {offsets = [8], sizes = [1], strides = [1]} : vector<14x14xi32> to vector<1x14xi32>
        %303 = bufferization.to_tensor %alloc_21 : memref<14xf16>
        %304 = math.fpowi %8, %from_elements_40 : tensor<14xf32>, tensor<14xi32>
        %305 = math.atan2 %4, %288 : tensor<14x14xf32>
        %306 = arith.maxui %c0_i32_43, %259 : i32
        %alloca_53 = memref.alloca() : memref<14x14xi32>
        %307 = math.roundeven %collapsed_52 : tensor<196xf32>
        %308 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %309 = vector.gather %13[%c13, %c5] [%47], %46, %308 : tensor<14x14xf16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf16> into vector<14x14xf16>
        %310 = bufferization.to_tensor %alloc_9 : memref<4x14x4xi32>
        %311 = math.expm1 %4 : tensor<14x14xf32>
        %alloc_54 = memref.alloc() : memref<14xf32>
        %312 = math.exp2 %cst_6 : f16
        memref.alloca_scope.return %259 : i32
      }
      %283 = vector.bitcast %101 : vector<1xi1> to vector<1xi1>
      %284 = math.exp %cst_4 : f32
      %285 = vector.gather %100[%26] [%123], %225, %132 : tensor<14xf16>, vector<14xi32>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      memref.assume_alignment %alloc_21, 16 : memref<14xf16>
      %alloc_47 = memref.alloc() : memref<14x14xi16>
      %286 = vector.broadcast %c1235670247_i32 : i32 to vector<i32>
      %287 = vector.transfer_write %286, %10[%c14, %138, %32] : vector<i32>, tensor<4x14x4xi32>
      scf.yield %false : i1
    }
    %264 = index.maxs %229, %112
    %265 = vector.broadcast %cst_2 : f32 to vector<14xf32>
    %266 = vector.fma %265, %265, %265 : vector<14xf32>
    %267 = tensor.empty() : tensor<14x14xi16>
    %268 = linalg.copy ins(%0 : tensor<14x14xi16>) outs(%267 : tensor<14x14xi16>) -> tensor<14x14xi16>
    %269 = tensor.empty() : tensor<14x14xi1>
    %transposed = linalg.transpose ins(%15 : tensor<14x14xi1>) outs(%269 : tensor<14x14xi1>) permutation = [1, 0] 
    %270 = tensor.empty() : tensor<14xi32>
    %reduced_45 = linalg.reduce ins(%198 : tensor<14x14xi32>) outs(%270 : tensor<14xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %alloca_46 = memref.alloca() : memref<4x14x4xi16>
        %273 = index.floordivs %134, %190
        %274 = index.ceildivs %c10, %c5
        %275 = math.absf %3 : tensor<4x14x4xf32>
        %276 = arith.divui %c0_i32_43, %c890259428_i32 : i32
        %277 = arith.maxui %true, %false_34 : i1
        %278 = math.exp %13 : tensor<14x14xf16>
        %279 = math.roundeven %234 : tensor<14x14xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %271 = scf.parallel (%arg2, %arg3) = (%82, %88) to (%c0, %c7) step (%c3, %c13) init (%48) -> vector<14x14xf32> {
      %273 = vector.splat %c10 : vector<14x14xindex>
      %274 = arith.remsi %c236460801_i64, %c1344093326_i64 : i64
      vector.print %45 : vector<14x14xf32>
      %275 = scf.if %false_39 -> (i64) {
        %287 = math.log %4 : tensor<14x14xf32>
        %288 = arith.subi %false_39, %164 : i1
        %289 = arith.divui %164, %true_31 : i1
        %290 = math.expm1 %4 : tensor<14x14xf32>
        %291 = math.log1p %22 : tensor<f16>
        %292 = math.tanh %4 : tensor<14x14xf32>
        %293 = math.expm1 %4 : tensor<14x14xf32>
        %294 = vector.insertelement %cst_4, %266[%c8 : index] : vector<14xf32>
        scf.yield %c1344093326_i64 : i64
      } else {
        %287 = vector.multi_reduction <maxf>, %45, %205 [0] : vector<14x14xf32> to vector<14xf32>
        %288 = tensor.empty() : tensor<14x14xi1>
        %289 = linalg.matmul ins(%16, %transposed : tensor<14x14xi1>, tensor<14x14xi1>) outs(%288 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %290 = index.add %62, %c9
        %291 = index.maxu %c2, %c10
        %292 = arith.minsi %c1235670247_i32, %c1235670247_i32 : i32
        %293 = arith.subi %false_34, %false_34 : i1
        %c0_i32_49 = arith.constant 0 : i32
        %c0_i32_50 = arith.constant 0 : i32
        %294 = vector.transfer_read %10[%290, %56, %c6], %c0_i32_50 : tensor<4x14x4xi32>, vector<i32>
        %collapsed_51 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<14x14x1xi1> into tensor<196x1xi1>
        scf.yield %c0_i64 : i64
      }
      %276 = vector.matrix_multiply %101, %64 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xi1>, vector<14xi1>) -> vector<14xi1>
      %dest_46, %accumulated_value_47 = vector.scan <minf>, %48, %265 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
      %277 = math.tan %4 : tensor<14x14xf32>
      %278 = vector.multi_reduction <minf>, %214, %cst_5 [0] : vector<1xf16> to f16
      %279 = index.add %134, %c3
      %280 = math.cttz %170 : tensor<i32>
      %281 = arith.shrui %c-32597_i16, %c6184_i16 : i16
      %282 = arith.maxui %true, %true_31 : i1
      %283 = bufferization.clone %alloc_23 : memref<14xf16> to memref<14xf16>
      %from_elements_48 = tensor.from_elements %259, %259, %259, %c0_i32, %c1235670247_i32, %c1235670247_i32, %c890259428_i32, %c0_i32_43, %c0_i32_43, %c890259428_i32, %259, %c1235670247_i32, %259, %c0_i32_43 : tensor<14xi32>
      %284 = affine.for %arg4 = 0 to 63 iter_args(%arg5 = %8) -> (tensor<14xf32>) {
        affine.yield %8 : tensor<14xf32>
      }
      %285 = index.castu %c236460801_i64 : i64 to index
      %286 = vector.broadcast %cst_4 : f32 to vector<14x14xf32>
      scf.reduce(%286)  : vector<14x14xf32> {
      ^bb0(%arg4: vector<14x14xf32>, %arg5: vector<14x14xf32>):
        %287 = arith.shrsi %c1344093326_i64, %c236460801_i64 : i64
        %288 = math.ipowi %c6184_i16, %c-32597_i16 : i16
        %289 = vector.broadcast %cst_5 : f16 to vector<14x14xf16>
        %290 = vector.outerproduct %133, %133, %289 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
        %291 = math.fpowi %18, %170 : tensor<f32>, tensor<i32>
        %292 = math.atan %8 : tensor<14xf32>
        %293 = math.tan %13 : tensor<14x14xf16>
        %294 = bufferization.clone %alloc_9 : memref<4x14x4xi32> to memref<4x14x4xi32>
        %295 = arith.maxui %c890259428_i32, %c890259428_i32 : i32
        %296 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        scf.reduce.return %296 : vector<14x14xf32>
      }
      scf.yield
    }
    %272 = affine.vector_load %alloc_10[%c1, %c14] : memref<14x14xi16>, vector<4xi16>
    affine.vector_store %20, %alloc_8[%c5, %c6] : memref<14x14xi32>, vector<13xi32>
    vector.print %20 : vector<13xi32>
    vector.print %45 : vector<14x14xf32>
    vector.print %46 : vector<14x14xi1>
    vector.print %47 : vector<14x14xi32>
    vector.print %48 : vector<14x14xf32>
    vector.print %60 : vector<14xi1>
    vector.print %61 : vector<14xi1>
    vector.print %64 : vector<14xi1>
    vector.print %71 : vector<14x14xi32>
    vector.print %75 : vector<4x14x4xf32>
    vector.print %76 : vector<4x14x4xf32>
    vector.print %101 : vector<1xi1>
    vector.print %123 : vector<14xi32>
    vector.print %132 : vector<14xf16>
    vector.print %133 : vector<14xf16>
    vector.print %141 : vector<4xf32>
    vector.print %142 : vector<4xi1>
    vector.print %143 : vector<4xf32>
    vector.print %156 : vector<14x14xi1>
    vector.print %168 : vector<14x14xi32>
    vector.print %187 : vector<12x14xi32>
    vector.print %189 : vector<14xi1>
    vector.print %205 : vector<14xf32>
    vector.print %214 : vector<1xf16>
    vector.print %225 : vector<14xi1>
    vector.print %241 : vector<14xf16>
    vector.print %245 : vector<4x14x4xf16>
    vector.print %249 : vector<4xi1>
    vector.print %254 : vector<14x14xf32>
    vector.print %255 : vector<14x14xf32>
    vector.print %265 : vector<14xf32>
    vector.print %266 : vector<14xf32>
    vector.print %272 : vector<4xi16>
    vector.print %c890259428_i32 : i32
    vector.print %c236460801_i64 : i64
    vector.print %c1235670247_i32 : i32
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c-32597_i16 : i16
    vector.print %c6184_i16 : i16
    vector.print %c-8896_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c1344093326_i64 : i64
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %cst_6 : f16
    vector.print %c-27751_i16 : i16
    vector.print %c0_i64 : i64
    vector.print %true : i1
    vector.print %false : i1
    vector.print %53 : f32
    vector.print %true_31 : i1
    vector.print %false_34 : i1
    vector.print %164 : i1
    vector.print %194 : i16
    vector.print %c0_i32 : i32
    vector.print %false_39 : i1
    vector.print %221 : i32
    vector.print %c0_i32_43 : i32
    vector.print %259 : i32
    return %136 : index
  }
}
