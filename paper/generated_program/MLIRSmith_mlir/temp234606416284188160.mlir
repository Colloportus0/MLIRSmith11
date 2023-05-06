module {
  func.func nested @func1(%arg0: vector<3x3xi1>) {
    %false = arith.constant false
    %cst = arith.constant 3.705600e+04 : f16
    %cst_0 = arith.constant 1.90253376E+9 : f32
    %cst_1 = arith.constant 4.422400e+04 : f16
    %c1134458198_i64 = arith.constant 1134458198 : i64
    %c38503973_i32 = arith.constant 38503973 : i32
    %cst_2 = arith.constant 0x4DB65C5E : f32
    %false_3 = arith.constant false
    %c23112_i16 = arith.constant 23112 : i16
    %cst_4 = arith.constant 0x4DE6A295 : f32
    %cst_5 = arith.constant 0x4DB2818E : f32
    %false_6 = arith.constant false
    %cst_7 = arith.constant 5.414400e+04 : f16
    %cst_8 = arith.constant 0x4E2BCD61 : f32
    %false_9 = arith.constant false
    %cst_10 = arith.constant 0x4E567DE5 : f32
    %0 = tensor.empty() : tensor<3x3xi16>
    %1 = tensor.empty() : tensor<4x3x4xf16>
    %2 = tensor.empty() : tensor<4x3x4xi1>
    %3 = tensor.empty() : tensor<4x3x4xi1>
    %4 = tensor.empty() : tensor<9x9xf16>
    %5 = tensor.empty() : tensor<3x3xf16>
    %6 = tensor.empty() : tensor<9x7xf16>
    %7 = tensor.empty() : tensor<3x3xi16>
    %8 = tensor.empty() : tensor<3x3xi1>
    %9 = tensor.empty() : tensor<9x9xf16>
    %10 = tensor.empty() : tensor<3x3xf32>
    %11 = tensor.empty() : tensor<3x3xi64>
    %12 = tensor.empty() : tensor<3x3xi16>
    %13 = tensor.empty() : tensor<4x3x4xi1>
    %14 = tensor.empty() : tensor<3x3xf32>
    %15 = tensor.empty() : tensor<9x9xi1>
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
    %alloc = memref.alloc() : memref<9x9xf16>
    %alloc_11 = memref.alloc() : memref<3x3xi16>
    %alloc_12 = memref.alloc() : memref<3x3xi64>
    %alloc_13 = memref.alloc() : memref<3x3xf16>
    %alloc_14 = memref.alloc() : memref<9x7xf32>
    %alloc_15 = memref.alloc() : memref<9x9xi64>
    %alloc_16 = memref.alloc() : memref<9x9xf32>
    %alloc_17 = memref.alloc() : memref<9x9xf16>
    %alloc_18 = memref.alloc() : memref<9x7xi32>
    %alloc_19 = memref.alloc() : memref<3x3xi64>
    %alloc_20 = memref.alloc() : memref<3x3xi1>
    %alloc_21 = memref.alloc() : memref<9x7xi1>
    %alloc_22 = memref.alloc() : memref<3x3xi16>
    %alloc_23 = memref.alloc() : memref<9x7xf16>
    %alloc_24 = memref.alloc() : memref<9x9xi1>
    %alloc_25 = memref.alloc() : memref<9x7xi32>
    %16 = tensor.empty() : tensor<9x7xf16>
    %17 = linalg.copy ins(%6 : tensor<9x7xf16>) outs(%16 : tensor<9x7xf16>) -> tensor<9x7xf16>
    %alloc_26 = memref.alloc() : memref<7x9xi1>
    linalg.transpose ins(%alloc_21 : memref<9x7xi1>) outs(%alloc_26 : memref<7x9xi1>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<7xf16>
    %reduced = linalg.reduce ins(%alloc_23 : memref<9x7xf16>) outs(%18 : tensor<7xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %265 = vector.broadcast %c1134458198_i64 : i64 to vector<9x7x3xi64>
        %266 = vector.broadcast %c1134458198_i64 : i64 to vector<7x3xi64>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %265, %266 {inclusive = false, reduction_dim = 0 : i64} : vector<9x7x3xi64>, vector<7x3xi64>
        %inserted_52 = tensor.insert %c23112_i16 into %7[%c0, %c2] : tensor<3x3xi16>
        %alloc_53 = memref.alloc() : memref<3x3xf32>
        %267 = vector.broadcast %cst_8 : f32 to vector<9x9xf32>
        %268 = vector.broadcast %false : i1 to vector<9x9xi1>
        %269 = vector.broadcast %c38503973_i32 : i32 to vector<9x9xi32>
        %270 = vector.gather %alloc_53[%c11, %c5] [%269], %268, %267 : memref<3x3xf32>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xf32> into vector<9x9xf32>
        %271 = arith.remui %c23112_i16, %c23112_i16 : i16
        %272 = vector.broadcast %init : f16 to vector<f16>
        %273 = vector.insertelement %cst_1, %272[] : vector<f16>
        %274 = math.round %6 : tensor<9x7xf16>
        memref.tensor_store %16, %alloc_23 : memref<9x7xf16>
        %275 = vector.shuffle %270, %270 [0, 2, 3, 6, 7, 8, 11, 14, 16, 17] : vector<9x9xf32>, vector<9x9xf32>
        %cst_54 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_54 : f16
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c10, %c12) to (%c13, %c4) step (%c7, %c14) init (%10) -> tensor<3x3xf32> {
      %265 = affine.load %alloc[%c4, %c3] : memref<9x9xf16>
      %266 = bufferization.to_memref %4 : memref<9x9xf16>
      %267 = memref.load %alloc_23[%c7, %c4] : memref<9x7xf16>
      %268 = arith.negf %cst_7 : f16
      %269 = arith.maxf %cst, %cst_7 : f16
      %270 = vector.broadcast %false_3 : i1 to vector<3x3xi1>
      %271 = vector.broadcast %cst_8 : f32 to vector<3x3xf32>
      %272 = vector.fma %271, %271, %271 : vector<3x3xf32>
      %273 = math.absf %10 : tensor<3x3xf32>
      %cst_50 = arith.constant 1.000000e+00 : f16
      %cst_51 = arith.constant 0.000000e+00 : f16
      %274 = vector.transfer_read %4[%c0, %c1], %cst_51 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<9x9xf16>, vector<3xf16>
      %275 = index.sizeof
      %276 = arith.maxf %cst, %cst_50 : f16
      %cast = tensor.cast %5 : tensor<3x3xf16> to tensor<?x?xf16>
      %277 = index.sizeof
      %278 = arith.shli %false_6, %false_9 : i1
      %alloc_52 = memref.alloc() : memref<9xi64>
      %279 = memref.realloc %alloc_52 : memref<9xi64> to memref<3xi64>
      %280 = vector.bitcast %272 : vector<3x3xf32> to vector<3x3xf32>
      %281 = index.divu %c13, %arg2
      %282 = tensor.empty() : tensor<3x3xf32>
      scf.reduce(%282)  : tensor<3x3xf32> {
      ^bb0(%arg3: tensor<3x3xf32>, %arg4: tensor<3x3xf32>):
        %283 = math.round %arg3 : tensor<3x3xf32>
        %284 = math.log10 %cst_50 : f16
        %285 = math.log2 %9 : tensor<9x9xf16>
        %286 = math.sqrt %9 : tensor<9x9xf16>
        %287 = vector.broadcast %c23112_i16 : i16 to vector<7xi16>
        %288 = vector.insertelement %c23112_i16, %287[%c0 : index] : vector<7xi16>
        %289 = arith.minsi %c1134458198_i64, %c1134458198_i64 : i64
        %290 = vector.broadcast %c23112_i16 : i16 to vector<7x7xi16>
        %291 = vector.outerproduct %287, %287, %290 {kind = #vector.kind<add>} : vector<7xi16>, vector<7xi16>
        %292 = arith.remui %c23112_i16, %c23112_i16 : i16
        %293 = tensor.empty() : tensor<3x3xf32>
        scf.reduce.return %293 : tensor<3x3xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_20[%c9, %c4] : memref<3x3xi1>, vector<3xi1>
    affine.vector_store %20, %alloc_21[%c11, %c8] : memref<9x7xi1>, vector<3xi1>
    %21 = tensor.empty() : tensor<7xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%18, %21 : tensor<7xf16>, tensor<7xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = arith.floordivsi %c23112_i16, %c23112_i16 : i16
    %25 = arith.shli %c38503973_i32, %c38503973_i32 : i32
    %26 = arith.remf %cst_7, %cst : f16
    %27 = math.cttz %8 : tensor<3x3xi1>
    %28 = math.log10 %reduced : tensor<7xf16>
    %29 = memref.atomic_rmw andi %c23112_i16, %alloc_11[%c1, %c2] : (i16, memref<3x3xi16>) -> i16
    %30 = arith.remf %cst_5, %cst_2 : f32
    %inserted = tensor.insert %c23112_i16 into %7[%c0, %c0] : tensor<3x3xi16>
    %31 = memref.alloca_scope  -> (memref<4x3x4xf16>) {
      %265 = math.ipowi %12, %7 : tensor<3x3xi16>
      %alloc_50 = memref.alloc() : memref<4x3xi1>
      %266 = tensor.empty() : tensor<4xi1>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50, %266 : memref<4x3xi1>, tensor<4xi1>) outs(%13 : tensor<4x3x4xi1>) {
      ^bb0(%in: i1, %in_57: i1, %out: i1):
        %294 = affine.apply affine_map<(d0, d1) -> ((d0 - (d1 - 8) + 64) * 64)>(%c7, %c0)
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %in_57 : vector<3xi1>, vector<3xi1> into i1
        %296 = arith.remui %out, %out : i1
        %297 = memref.atomic_rmw mins %c1134458198_i64, %alloc_12[%c2, %c0] : (i64, memref<3x3xi64>) -> i64
        %298 = math.sqrt %cst_0 : f32
        %299 = math.sqrt %16 : tensor<9x7xf16>
        %300 = vector.broadcast %c10 : index to vector<7xindex>
        %301 = vector.broadcast %out : i1 to vector<7xi1>
        %302 = vector.broadcast %c38503973_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_25[%c5, %c5] [%300], %301, %302 : memref<9x7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %303 = math.log1p %cst_5 : f32
        %304 = index.divu %c13, %c3
        %305 = tensor.empty() : tensor<9x7xi32>
        %306 = math.fpowi %16, %305 : tensor<9x7xf16>, tensor<9x7xi32>
        %307 = arith.ori %c23112_i16, %c23112_i16 : i16
        %alloc_58 = memref.alloc() : memref<9x9xi64>
        memref.copy %alloc_15, %alloc_58 : memref<9x9xi64> to memref<9x9xi64>
        %308 = arith.remf %cst_0, %cst_2 : f32
        %309 = math.round %cst_10 : f32
        %310 = vector.broadcast %c0 : index to vector<7xindex>
        %311 = vector.broadcast %false : i1 to vector<7xi1>
        %312 = vector.broadcast %cst_4 : f32 to vector<7xf32>
        vector.scatter %alloc_16[%c3, %c0] [%310], %311, %312 : memref<9x9xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        bufferization.dealloc_tensor %9 : tensor<9x9xf16>
        %313 = arith.maxf %cst_1, %cst_1 : f16
        %314 = math.log10 %9 : tensor<9x9xf16>
        %false_59 = index.bool.constant false
        %315 = arith.cmpi eq, %c38503973_i32, %c38503973_i32 : i32
        %316 = arith.remui %false, %in : i1
        %317 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 + d1)>(%c10, %c3, %c1)
        %318 = vector.insertelement %false_3, %20[%c15 : index] : vector<3xi1>
        %319 = arith.remui %in_57, %in_57 : i1
        %320 = math.sqrt %cst_5 : f32
        %321 = math.tan %22 : tensor<f16>
        %322 = index.sizeof
        %323 = arith.andi %false, %false_6 : i1
        %324 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
        %325 = math.tan %cst_4 : f32
        %326 = math.copysign %10, %14 : tensor<3x3xf32>
        %327 = math.absf %9 : tensor<9x9xf16>
        linalg.yield %false_9 : i1
      } -> tensor<4x3x4xi1>
      %268 = math.log %10 : tensor<3x3xf32>
      %alloca_51 = memref.alloca() : memref<9x9xi64>
      %rank = tensor.rank %14 : tensor<3x3xf32>
      bufferization.dealloc_tensor %16 : tensor<9x7xf16>
      %269 = index.castu %false_9 : i1 to index
      bufferization.dealloc_tensor %8 : tensor<3x3xi1>
      %270 = index.mul %c8, %c9
      %271 = math.round %5 : tensor<3x3xf16>
      memref.assume_alignment %alloc_11, 1 : memref<3x3xi16>
      %alloca_52 = memref.alloca() : memref<9x9xf32>
      %272 = arith.addi %false_6, %false_6 : i1
      %273 = math.tanh %14 : tensor<3x3xf32>
      %274 = vector.broadcast %false : i1 to vector<4x9xi1>
      %275 = vector.broadcast %false_3 : i1 to vector<9xi1>
      %dest_53, %accumulated_value_54 = vector.scan <minui>, %274, %275 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9xi1>, vector<9xi1>
      %276 = memref.load %alloc_19[%c1, %c2] : memref<3x3xi64>
      %277 = index.sizeof
      %278 = arith.addf %cst_2, %cst_5 : f32
      %279 = vector.reduction <or>, %20 : vector<3xi1> into i1
      %280 = arith.xori %c1134458198_i64, %c1134458198_i64 : i64
      %281 = arith.floordivsi %c1134458198_i64, %c1134458198_i64 : i64
      %282 = affine.for %arg1 = 0 to 13 iter_args(%arg2 = %alloc_14) -> (memref<9x7xf32>) {
        affine.yield %alloc_14 : memref<9x7xf32>
      }
      %283 = arith.ceildivsi %false, %false_9 : i1
      %inserted_55 = tensor.insert %c23112_i16 into %0[%c1, %c0] : tensor<3x3xi16>
      %284 = bufferization.clone %alloc_25 : memref<9x7xi32> to memref<9x7xi32>
      %285 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
      %286 = arith.ori %c23112_i16, %c23112_i16 : i16
      %287 = vector.splat %cst_1 : vector<4x3x4xf16>
      %288 = tensor.empty() : tensor<7xi32>
      %289 = math.fpowi %reduced, %288 : tensor<7xf16>, tensor<7xi32>
      %290 = math.copysign %6, %17 : tensor<9x7xf16>
      %291 = vector.broadcast %false_9 : i1 to vector<3x3xi1>
      %292 = vector.outerproduct %20, %20, %291 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
      %293 = index.mul %c4, %c10
      %alloc_56 = memref.alloc() : memref<4x3x4xf16>
      memref.alloca_scope.return %alloc_56 : memref<4x3x4xf16>
    }
    %splat = tensor.splat %false_9 : tensor<4x3x4xi1>
    %32 = arith.minsi %false_3, %false_3 : i1
    %33 = tensor.empty() : tensor<3x3xf16>
    %34 = index.ceildivu %c3, %c13
    %35 = vector.insertelement %false_3, %20[%c15 : index] : vector<3xi1>
    %inserted_27 = tensor.insert %cst_1 into %reduced[%c4] : tensor<7xf16>
    %36 = arith.divsi %false_3, %false : i1
    %37 = tensor.empty() : tensor<3x4xi1>
    %38 = tensor.empty() : tensor<4xi1>
    %39 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%37, %38 : tensor<3x4xi1>, tensor<4xi1>) outs(%13 : tensor<4x3x4xi1>) {
    ^bb0(%in: i1, %in_50: i1, %out: i1):
      %265 = math.cos %reduced : tensor<7xf16>
      %266 = vector.matrix_multiply %20, %20 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      %267 = index.sizeof
      %268 = index.maxs %c11, %c4
      %269 = vector.multi_reduction <and>, %20, %20 [] : vector<3xi1> to vector<3xi1>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %20, %false_6 : vector<3xi1>, vector<3xi1> into i1
      %271 = tensor.empty() : tensor<3x3xf16>
      %mapped_51 = linalg.map ins(%5 : tensor<3x3xf16>) outs(%271 : tensor<3x3xf16>)
        (%in_57: f16) {
          %293 = math.round %21 : tensor<7xf16>
          %294 = index.maxs %c5, %c4
          %295 = math.fpowi %cst, %c38503973_i32 : f16, i32
          %296 = index.divs %c4, %267
          %297 = tensor.empty() : tensor<7xi32>
          %298 = math.fpowi %18, %297 : tensor<7xf16>, tensor<7xi32>
          %299 = arith.maxf %cst_0, %cst_4 : f32
          %300 = affine.max affine_map<(d0) -> (d0 + 4, d0 + 1, d0 * -2 + d0 * 16 + 16 - 4)>(%c2)
          %301 = vector.broadcast %false_3 : i1 to vector<4x3x4xi1>
          %302 = vector.broadcast %c38503973_i32 : i32 to vector<4x3x4xi32>
          %303 = vector.gather %alloc_24[%296, %c11] [%302], %301, %301 : memref<9x9xi1>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xi1> into vector<4x3x4xi1>
          %304 = index.ceildivu %34, %268
          %305 = vector.reduction <mul>, %20 : vector<3xi1> into i1
          %306 = math.rsqrt %5 : tensor<3x3xf16>
          %307 = math.log2 %5 : tensor<3x3xf16>
          %308 = arith.minui %in, %false : i1
          memref.assume_alignment %alloc_19, 2 : memref<3x3xi64>
          %309 = vector.broadcast %out : i1 to vector<3x4xi1>
          %dest_58, %accumulated_value_59 = vector.scan <and>, %301, %309 {inclusive = false, reduction_dim = 0 : i64} : vector<4x3x4xi1>, vector<3x4xi1>
          %310 = arith.minsi %c1134458198_i64, %c1134458198_i64 : i64
          %311 = tensor.empty() : tensor<3x3xi32>
          %312 = math.fpowi %271, %311 : tensor<3x3xf16>, tensor<3x3xi32>
          %313 = vector.broadcast %in_50 : i1 to vector<3x4xi1>
          %314 = vector.multi_reduction <add>, %303, %313 [0] : vector<4x3x4xi1> to vector<3x4xi1>
          %315 = arith.remui %c38503973_i32, %c38503973_i32 : i32
          %316 = arith.shrui %in, %false_3 : i1
          %317 = index.floordivs %c15, %296
          %318 = bufferization.clone %alloc_20 : memref<3x3xi1> to memref<3x3xi1>
          %319 = math.log10 %21 : tensor<7xf16>
          %dest_60, %accumulated_value_61 = vector.scan <or>, %301, %313 {inclusive = true, reduction_dim = 0 : i64} : vector<4x3x4xi1>, vector<3x4xi1>
          %320 = math.log1p %cst : f16
          %cast = tensor.cast %4 : tensor<9x9xf16> to tensor<?x?xf16>
          %321 = vector.splat %c5 : vector<9x9xindex>
          %322 = index.maxs %c3, %c7
          %323 = vector.extract_strided_slice %303 {offsets = [1], sizes = [1], strides = [1]} : vector<4x3x4xi1> to vector<1x3x4xi1>
          %324 = vector.matrix_multiply %20, %20 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
          %325 = vector.reduction <xor>, %324 : vector<1xi1> into i1
          %326 = vector.splat %c1 : vector<9x9xindex>
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %inserted_52 = tensor.insert %false into %2[%c0, %c2, %c2] : tensor<4x3x4xi1>
      %rank = tensor.rank %7 : tensor<3x3xi16>
      %272 = scf.while (%arg1 = %in) : (i1) -> i1 {
        %293 = arith.xori %false, %false_9 : i1
        memref.copy %alloc_19, %alloc_12 : memref<3x3xi64> to memref<3x3xi64>
        %splat_57 = tensor.splat %cst_10 : tensor<3x3xf32>
        %294 = memref.load %alloc_16[%c1, %c7] : memref<9x9xf32>
        %295 = index.floordivs %c6, %267
        %296 = vector.extract_strided_slice %266 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %297 = bufferization.to_memref %15 : memref<9x9xi1>
        %298 = arith.cmpi ne, %c38503973_i32, %c38503973_i32 : i32
        scf.condition(%arg1) %false_9 : i1
      } do {
      ^bb0(%arg1: i1):
        %293 = vector.create_mask %c2, %c6, %c15 : vector<4x3x4xi1>
        %294 = arith.minf %cst_5, %cst_4 : f32
        affine.store %c1134458198_i64, %alloc_19[%c8, %c9] : memref<3x3xi64>
        %295 = tensor.empty() : tensor<3x3xi16>
        bufferization.dealloc_tensor %9 : tensor<9x9xf16>
        %296 = math.cos %23 : tensor<f16>
        %rank_57 = tensor.rank %splat : tensor<4x3x4xi1>
        %extracted_58 = tensor.extract %295[%c2, %c0] : tensor<3x3xi16>
        %297 = math.round %1 : tensor<4x3x4xf16>
        %false_59 = index.bool.constant false
        %298 = arith.divui %in, %in_50 : i1
        %299 = vector.broadcast %arg1 : i1 to vector<3x4xi1>
        %dest_60, %accumulated_value_61 = vector.scan <minui>, %293, %299 {inclusive = false, reduction_dim = 0 : i64} : vector<4x3x4xi1>, vector<3x4xi1>
        %splat_62 = tensor.splat %cst : tensor<9x7xf16>
        %300 = math.round %23 : tensor<f16>
        %301 = arith.maxf %cst, %cst : f16
        %302 = arith.shrui %c23112_i16, %c23112_i16 : i16
        scf.yield %arg1 : i1
      }
      %273 = math.log10 %14 : tensor<3x3xf32>
      %274 = vector.splat %false : vector<9x9xi1>
      %275 = index.maxu %c10, %268
      %276 = affine.apply affine_map<(d0, d1) -> ((d0 - (d1 - 8) + 64) * 64)>(%c14, %275)
      memref.store %c1134458198_i64, %alloc_12[%c2, %c0] : memref<3x3xi64>
      %277 = index.ceildivu %c7, %276
      %278 = bufferization.clone %alloc_20 : memref<3x3xi1> to memref<3x3xi1>
      %279 = arith.ori %c38503973_i32, %c38503973_i32 : i32
      %280 = arith.ori %out, %false_6 : i1
      %281 = math.fpowi %cst_2, %c38503973_i32 : f32, i32
      %282 = index.divu %c15, %c14
      %283 = vector.broadcast %c38503973_i32 : i32 to vector<4x3x4xi32>
      %284 = vector.broadcast %c38503973_i32 : i32 to vector<4x4xi32>
      %dest_53, %accumulated_value_54 = vector.scan <or>, %283, %284 {inclusive = false, reduction_dim = 1 : i64} : vector<4x3x4xi32>, vector<4x4xi32>
      %285 = arith.shrui %c23112_i16, %c23112_i16 : i16
      %inserted_55 = tensor.insert %c23112_i16 into %7[%c1, %c1] : tensor<3x3xi16>
      %286 = vector.splat %cst_5 : vector<9x9xf32>
      %alloc_56 = memref.alloc() : memref<9x9xi1>
      memref.copy %alloc_24, %alloc_56 : memref<9x9xi1> to memref<9x9xi1>
      %287 = vector.extract_strided_slice %266 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %288 = index.maxs %c10, %34
      %289 = vector.extract %20[2] : vector<3xi1>
      %290 = arith.remsi %false_9, %out : i1
      %291 = vector.multi_reduction <mul>, %20, %out [0] : vector<3xi1> to i1
      %292 = math.log2 %cst_0 : f32
      linalg.yield %false_9 : i1
    } -> tensor<4x3x4xi1>
    %40 = arith.maxf %cst_0, %cst_0 : f32
    %41 = arith.remf %cst_7, %cst : f16
    %42 = tensor.empty() : tensor<3x3xf16>
    %43 = arith.minf %cst_7, %cst : f16
    %44 = vector.splat %c23112_i16 : vector<4x3x4xi16>
    %c1959361724_i64 = arith.constant 1959361724 : i64
    %45 = arith.andi %c1134458198_i64, %c1134458198_i64 : i64
    %46 = vector.multi_reduction <maxsi>, %20, %false_3 [0] : vector<3xi1> to i1
    %47 = arith.ori %false_9, %false_9 : i1
    %collapsed = tensor.collapse_shape %33 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
    %true = index.bool.constant true
    %48 = tensor.empty() : tensor<4x3x4xi64>
    vector.print %20 : vector<3xi1>
    %49 = index.divu %c8, %c7
    %50 = arith.andi %false_9, %46 : i1
    %51 = vector.insertelement %false_9, %20[%c7 : index] : vector<3xi1>
    %52 = vector.extract %20[0] : vector<3xi1>
    %53 = arith.minsi %false, %true : i1
    %54 = tensor.empty() : tensor<9x9xi1>
    %mapped = linalg.map ins(%alloc_24, %15, %15 : memref<9x9xi1>, tensor<9x9xi1>, tensor<9x9xi1>) outs(%54 : tensor<9x9xi1>)
      (%in: i1, %in_50: i1, %in_51: i1) {
        %265 = arith.floordivsi %c38503973_i32, %c38503973_i32 : i32
        %266 = arith.floordivsi %in_51, %46 : i1
        %267 = scf.index_switch %c1 -> tensor<9x9xi32> 
        case 1 {
          %extracted_57 = tensor.extract %7[%c2, %c1] : tensor<3x3xi16>
          %290 = vector.broadcast %false_9 : i1 to vector<7x7x7xi1>
          %291 = vector.broadcast %in_51 : i1 to vector<7x7xi1>
          %dest_58, %accumulated_value_59 = vector.scan <xor>, %290, %291 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7x7xi1>, vector<7x7xi1>
          %inserted_60 = tensor.insert %cst_10 into %14[%c0, %c0] : tensor<3x3xf32>
          %292 = math.exp %1 : tensor<4x3x4xf16>
          %293 = index.maxu %34, %c1
          %inserted_61 = tensor.insert %c23112_i16 into %12[%c2, %c2] : tensor<3x3xi16>
          %294 = arith.subi %c23112_i16, %extracted_57 : i16
          %295 = bufferization.clone %alloc : memref<9x9xf16> to memref<9x9xf16>
          %inserted_62 = tensor.insert %cst into %5[%c1, %c1] : tensor<3x3xf16>
          %296 = memref.load %alloc[%c6, %c8] : memref<9x9xf16>
          %297 = math.fpowi %cst_5, %c38503973_i32 : f32, i32
          %298 = arith.xori %true, %false_9 : i1
          %299 = index.divu %c11, %c7
          %300 = tensor.empty() : tensor<3x3xf16>
          %301 = vector.broadcast %true : i1 to vector<i1>
          vector.transfer_write %301, %alloc_26[%293, %293] : vector<i1>, memref<7x9xi1>
          %302 = index.maxs %c6, %c3
          %303 = tensor.empty() : tensor<9x9xi32>
          scf.yield %303 : tensor<9x9xi32>
        }
        default {
          %290 = vector.transpose %20, [0] : vector<3xi1> to vector<3xi1>
          %291 = arith.cmpi slt, %c1134458198_i64, %c1134458198_i64 : i64
          %292 = arith.shrsi %c23112_i16, %c23112_i16 : i16
          %293 = arith.remf %cst_8, %cst_5 : f32
          %294 = index.divs %34, %34
          %295 = vector.reduction <maxsi>, %20 : vector<3xi1> into i1
          %296 = math.floor %5 : tensor<3x3xf16>
          %297 = affine.min affine_map<(d0, d1) -> ((d0 floordiv 2) floordiv 2 - 64)>(%c9, %c15)
          %298 = math.log1p %14 : tensor<3x3xf32>
          %299 = vector.multi_reduction <add>, %20, %20 [] : vector<3xi1> to vector<3xi1>
          %300 = math.ipowi %2, %13 : tensor<4x3x4xi1>
          %301 = math.tan %9 : tensor<9x9xf16>
          %302 = math.round %18 : tensor<7xf16>
          %303 = arith.divui %false_6, %in : i1
          %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %in_50 : vector<3xi1>, vector<3xi1> into i1
          %305 = math.powf %cst, %cst : f16
          %306 = tensor.empty() : tensor<9x9xi32>
          scf.yield %306 : tensor<9x9xi32>
        }
        %268 = vector.multi_reduction <minui>, %20, %false_9 [0] : vector<3xi1> to i1
        %splat_52 = tensor.splat %false_9 : tensor<3x3xi1>
        %269 = arith.addi %in_51, %false_9 : i1
        %270 = arith.remui %in_51, %in : i1
        %271 = arith.ori %false_3, %false_3 : i1
        %272 = vector.broadcast %false : i1 to vector<3x3xi1>
        %273 = vector.outerproduct %20, %20, %272 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
        %274 = bufferization.clone %alloc : memref<9x9xf16> to memref<9x9xf16>
        scf.if %false_6 {
          %290 = arith.ceildivsi %false_3, %in : i1
          %291 = index.ceildivs %c13, %c12
          %inserted_57 = tensor.insert %false_6 into %13[%c2, %c2, %c1] : tensor<4x3x4xi1>
          %292 = bufferization.clone %alloc_16 : memref<9x9xf32> to memref<9x9xf32>
          %293 = tensor.empty() : tensor<3x3xi32>
          %294 = tensor.empty(%c10) : tensor<9x?xi64>
          %295 = vector.load %alloc_17[%c3, %c7] : memref<9x9xf16>, vector<4x3x4xf16>
          %296 = math.ceil %16 : tensor<9x7xf16>
        } else {
          %290 = vector.broadcast %false : i1 to vector<3x3xi1>
          %291 = vector.outerproduct %20, %20, %290 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
          %292 = arith.cmpi sgt, %false_3, %false : i1
          %293 = arith.mulf %cst_8, %cst_4 : f32
          %294 = index.divu %c15, %c12
          %295 = arith.floordivsi %false_3, %false_6 : i1
          %296 = arith.subi %268, %false_9 : i1
          %297 = tensor.empty() : tensor<4x3x4xf32>
          %298 = vector.broadcast %cst_8 : f32 to vector<4x3x4xf32>
          %299 = vector.broadcast %268 : i1 to vector<4x3x4xi1>
          %300 = vector.broadcast %c38503973_i32 : i32 to vector<4x3x4xi32>
          %301 = vector.gather %297[%c4, %c9, %c4] [%300], %299, %298 : tensor<4x3x4xf32>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xf32> into vector<4x3x4xf32>
          %302 = math.ipowi %7, %7 : tensor<3x3xi16>
        }
        %275 = index.divs %c14, %c15
        %276 = arith.negf %cst_4 : f32
        memref.copy %alloc_18, %alloc_25 : memref<9x7xi32> to memref<9x7xi32>
        affine.for %arg1 = 0 to 28 {
        }
        %277 = arith.addi %true, %false_3 : i1
        %splat_53 = tensor.splat %false_9 : tensor<4x3x4xi1>
        %278 = arith.remui %false, %in_51 : i1
        %279 = arith.floordivsi %c38503973_i32, %c38503973_i32 : i32
        %280 = arith.minsi %c23112_i16, %c23112_i16 : i16
        %281 = arith.remui %in_51, %false : i1
        %282 = math.ctlz %7 : tensor<3x3xi16>
        %alloc_54 = memref.alloc() : memref<3x3xf16>
        memref.copy %alloc_13, %alloc_54 : memref<3x3xf16> to memref<3x3xf16>
        %splat_55 = tensor.splat %c23112_i16 : tensor<9x7xi16>
        %283 = math.ctlz %268 : i1
        %284 = arith.andi %268, %46 : i1
        %285 = vector.shuffle %20, %20 [1, 2, 5] : vector<3xi1>, vector<3xi1>
        %286 = arith.xori %in_50, %in_51 : i1
        memref.copy %274, %alloc : memref<9x9xf16> to memref<9x9xf16>
        %287 = arith.minui %false_3, %in_51 : i1
        %288 = math.expm1 %4 : tensor<9x9xf16>
        %289 = index.mul %c15, %c6
        %true_56 = arith.constant true
        linalg.yield %true_56 : i1
      }
    %55 = scf.while (%arg1 = %false) : (i1) -> i1 {
      %265 = bufferization.to_memref %6 : memref<9x7xf16>
      %false_50 = index.bool.constant false
      %266 = vector.broadcast %cst_0 : f32 to vector<9x7xf32>
      %267 = vector.fma %266, %266, %266 : vector<9x7xf32>
      %268 = arith.addi %false_50, %true : i1
      %269 = vector.splat %c5 : vector<9x9xindex>
      %270 = bufferization.to_memref %16 : memref<9x7xf16>
      %271 = affine.max affine_map<(d0, d1, d2) -> (d0 + d2 + 4, d0 + d2 + 4, -(d0 + d0 + d2 + 4))>(%c4, %c11, %c0)
      %272 = vector.shuffle %266, %266 [2, 3, 6] : vector<9x7xf32>, vector<9x7xf32>
      scf.condition(%false_3) %false_3 : i1
    } do {
    ^bb0(%arg1: i1):
      %265 = index.divu %c1, %34
      %266 = math.round %cst_1 : f16
      %267 = affine.max affine_map<(d0, d1, d2) -> (d0 + 64, d2 mod 8)>(%c12, %c2, %265)
      memref.tensor_store %5, %alloc_13 : memref<3x3xf16>
      %268 = vector.reduction <minsi>, %20 : vector<3xi1> into i1
      %from_elements_50 = tensor.from_elements %c38503973_i32, %c38503973_i32, %c38503973_i32, %c38503973_i32, %c38503973_i32, %c38503973_i32, %c38503973_i32, %c38503973_i32, %c38503973_i32 : tensor<3x3xi32>
      %inserted_51 = tensor.insert %cst_4 into %10[%c0, %c2] : tensor<3x3xf32>
      %269 = arith.floordivsi %arg1, %false : i1
      %270 = arith.shrsi %false_6, %false_3 : i1
      %271 = arith.remf %cst_0, %cst_2 : f32
      %272 = math.sqrt %1 : tensor<4x3x4xf16>
      affine.for %arg2 = 0 to 116 {
      }
      %273 = tensor.empty(%c4, %34) : tensor<?x?xi1>
      %274 = arith.addi %false, %false_3 : i1
      %inserted_52 = tensor.insert %cst into %1[%c0, %c0, %c0] : tensor<4x3x4xf16>
      %275 = math.copysign %5, %33 : tensor<3x3xf16>
      scf.yield %true : i1
    }
    %56 = vector.insertelement %false_9, %20[%c4 : index] : vector<3xi1>
    %57 = memref.load %alloc_26[%c5, %c6] : memref<7x9xi1>
    %58 = tensor.empty() : tensor<3x3xi16>
    %mapped_28 = linalg.map ins(%7, %7, %alloc_11 : tensor<3x3xi16>, tensor<3x3xi16>, memref<3x3xi16>) outs(%58 : tensor<3x3xi16>)
      (%in: i16, %in_50: i16, %in_51: i16) {
        %265 = arith.divui %c38503973_i32, %c38503973_i32 : i32
        %266 = index.mul %c11, %c10
        %267 = math.ctlz %true : i1
        %268 = memref.load %alloc_12[%c2, %c1] : memref<3x3xi64>
        %269 = math.exp2 %cst_8 : f32
        scf.if %46 {
          %298 = arith.shrui %46, %false_6 : i1
          %299 = index.ceildivs %c13, %c11
          %300 = arith.addf %cst, %cst : f16
          %301 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
          %302 = arith.andi %c1134458198_i64, %c1134458198_i64 : i64
          %303 = bufferization.to_memref %splat : memref<4x3x4xi1>
          %304 = arith.maxf %cst, %cst : f16
          %305 = arith.remf %cst_0, %cst_2 : f32
        } else {
          memref.tensor_store %12, %alloc_22 : memref<3x3xi16>
          %298 = math.tanh %collapsed : tensor<9xf16>
          %299 = vector.insertelement %false_6, %20[%c2 : index] : vector<3xi1>
          %300 = index.maxs %c9, %c4
          %301 = vector.multi_reduction <add>, %20, %false_3 [0] : vector<3xi1> to i1
          %302 = math.log1p %22 : tensor<f16>
          %303 = arith.xori %in_50, %c23112_i16 : i16
          %304 = math.log1p %cst : f16
        }
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_52 = arith.constant 0 : i64
        %270 = vector.transfer_read %alloc_15[%c1, %266], %c0_i64_52 : memref<9x9xi64>, vector<i64>
        %271 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
        %272 = arith.remui %in_50, %in : i16
        %true_53 = index.bool.constant true
        %273 = math.round %cst : f16
        %274 = affine.max affine_map<(d0) -> (d0 * 5, d0 * -3, -d0, ((d0 * 5) ceildiv 4) * 8)>(%c2)
        %275 = index.ceildivs %c3, %266
        %276 = vector.broadcast %275 : index to vector<3xindex>
        %277 = vector.broadcast %cst : f16 to vector<3xf16>
        vector.scatter %alloc_23[%c8, %c3] [%276], %271, %277 : memref<9x7xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %278 = math.fpowi %cst_1, %c38503973_i32 : f16, i32
        %279 = arith.minf %cst_8, %cst_4 : f32
        %280 = arith.minf %cst_8, %cst_2 : f32
        %281 = scf.while (%arg1 = %true) : (i1) -> i1 {
          %alloc_57 = memref.alloc() : memref<7x9xi1>
          memref.copy %alloc_26, %alloc_57 : memref<7x9xi1> to memref<7x9xi1>
          %298 = tensor.empty() : tensor<3x3xi32>
          %299 = math.fpowi %5, %298 : tensor<3x3xf16>, tensor<3x3xi32>
          %alloca_58 = memref.alloca() : memref<3x3xi32>
          %300 = math.exp %18 : tensor<7xf16>
          %301 = math.log2 %5 : tensor<3x3xf16>
          %302 = arith.addi %false_9, %false_3 : i1
          %303 = arith.andi %in_51, %c23112_i16 : i16
          %304 = math.log10 %cst_8 : f32
          scf.condition(%false_3) %false_3 : i1
        } do {
        ^bb0(%arg1: i1):
          %splat_57 = tensor.splat %c23112_i16 : tensor<9x7xi16>
          %inserted_58 = tensor.insert %cst_1 into %17[%c0, %c4] : tensor<9x7xf16>
          %298 = arith.xori %false_3, %46 : i1
          %299 = arith.minsi %true_53, %46 : i1
          %300 = math.ctlz %0 : tensor<3x3xi16>
          %301 = arith.cmpi sgt, %true_53, %false : i1
          %302 = arith.remsi %in, %in_50 : i16
          %cast = tensor.cast %8 : tensor<3x3xi1> to tensor<?x?xi1>
          %303 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c3, %c4, %34)
          %cast_59 = tensor.cast %48 : tensor<4x3x4xi64> to tensor<?x?x?xi64>
          %304 = math.log1p %cst_8 : f32
          %305 = tensor.empty() : tensor<9x9xf16>
          %306 = arith.shrui %true, %false_3 : i1
          %307 = arith.cmpi ult, %c0_i64, %c0_i64 : i64
          vector.print %271 : vector<3xi1>
          %308 = math.ipowi %true_53, %arg1 : i1
          scf.yield %false_6 : i1
        }
        %282 = vector.broadcast %266 : index to vector<9xindex>
        %283 = vector.broadcast %true : i1 to vector<9xi1>
        %284 = vector.broadcast %in_51 : i16 to vector<9xi16>
        vector.scatter %alloc_11[%c1, %c1] [%282], %283, %284 : memref<3x3xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %285 = vector.broadcast %false_6 : i1 to vector<3x3xi1>
        %286 = vector.outerproduct %271, %271, %285 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
        %alloc_54 = memref.alloc() : memref<4x3x4xf16>
        memref.copy %31, %alloc_54 : memref<4x3x4xf16> to memref<4x3x4xf16>
        %287 = math.exp %9 : tensor<9x9xf16>
        %288 = index.maxs %c15, %34
        %289 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
        %alloc_55 = memref.alloc() : memref<4x3xi64>
        %alloc_56 = memref.alloc() : memref<3x4xi64>
        %290 = tensor.empty() : tensor<4xi64>
        %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_55, %alloc_56, %290 : memref<4x3xi64>, memref<3x4xi64>, tensor<4xi64>) outs(%48 : tensor<4x3x4xi64>) {
        ^bb0(%in_57: i64, %in_58: i64, %in_59: i64, %out: i64):
          %298 = arith.andi %c38503973_i32, %c38503973_i32 : i32
          %299 = vector.broadcast %cst_7 : f16 to vector<9x9xf16>
          %300 = tensor.empty() : tensor<7xi32>
          %301 = math.fpowi %18, %300 : tensor<7xf16>, tensor<7xi32>
          %302 = arith.remui %c38503973_i32, %c38503973_i32 : i32
          %303 = math.cttz %false : i1
          %304 = bufferization.clone %alloc_24 : memref<9x9xi1> to memref<9x9xi1>
          memref.copy %alloc_11, %alloc_22 : memref<3x3xi16> to memref<3x3xi16>
          %305 = arith.remf %cst_7, %cst_7 : f16
          %306 = index.maxu %c4, %c9
          %307 = vector.broadcast %cst : f16 to vector<4xf16>
          %308 = vector.transfer_write %307, %42[%c10, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf16>, tensor<3x3xf16>
          %309 = math.atan2 %9, %9 : tensor<9x9xf16>
          %310 = vector.broadcast %cst_5 : f32 to vector<4x3x4xf32>
          %311 = vector.fma %310, %310, %310 : vector<4x3x4xf32>
          %312 = index.sizeof
          memref.assume_alignment %alloc_15, 2 : memref<9x9xi64>
          %313 = tensor.empty() : tensor<4x3x4xi32>
          %314 = vector.broadcast %c38503973_i32 : i32 to vector<3x3xi32>
          %315 = vector.broadcast %true : i1 to vector<3x3xi1>
          %316 = vector.gather %313[%274, %306, %275] [%314], %315, %314 : tensor<4x3x4xi32>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi32> into vector<3x3xi32>
          %317 = vector.flat_transpose %307 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
          %318 = bufferization.to_memref %2 : memref<4x3x4xi1>
          %319 = arith.negf %cst : f16
          %320 = memref.load %alloc_20[%c0, %c1] : memref<3x3xi1>
          %321 = index.floordivs %c15, %c15
          %322 = math.tan %collapsed : tensor<9xf16>
          memref.assume_alignment %alloc_16, 1 : memref<9x9xf32>
          %323 = bufferization.to_memref %2 : memref<4x3x4xi1>
          %324 = vector.transpose %314, [0, 1] : vector<3x3xi32> to vector<3x3xi32>
          %325 = index.sizeof
          %326 = index.add %266, %306
          %327 = arith.maxf %cst_0, %cst_10 : f32
          %328 = math.sqrt %16 : tensor<9x7xf16>
          %329 = vector.broadcast %cst_4 : f32 to vector<4x3xf32>
          %dest_60, %accumulated_value_61 = vector.scan <add>, %310, %329 {inclusive = false, reduction_dim = 2 : i64} : vector<4x3x4xf32>, vector<4x3xf32>
          bufferization.dealloc_tensor %7 : tensor<3x3xi16>
          %330 = math.cttz %in_57 : i64
          %inserted_62 = tensor.insert %cst_7 into %1[%c2, %c0, %c2] : tensor<4x3x4xf16>
          linalg.yield %in_58 : i64
        } -> tensor<4x3x4xi64>
        %292 = math.log10 %10 : tensor<3x3xf32>
        %293 = vector.transpose %271, [0] : vector<3xi1> to vector<3xi1>
        %294 = affine.max affine_map<(d0) -> ((d0 floordiv 128) ceildiv 2, (d0 floordiv 128) mod 16)>(%c13)
        %295 = arith.xori %true_53, %false_6 : i1
        %296 = math.round %42 : tensor<3x3xf16>
        %297 = arith.shli %false_6, %46 : i1
        bufferization.dealloc_tensor %6 : tensor<9x7xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %59 = memref.load %alloc_26[%c2, %c0] : memref<7x9xi1>
    %alloc_29 = memref.alloc() : memref<4x3xi1>
    %60 = tensor.empty() : tensor<3x4xi1>
    %alloc_30 = memref.alloc() : memref<4x4xi1>
    %61 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29, %60, %alloc_30 : memref<4x3xi1>, tensor<3x4xi1>, memref<4x4xi1>) outs(%splat : tensor<4x3x4xi1>) {
    ^bb0(%in: i1, %in_50: i1, %in_51: i1, %out: i1):
      %true_52 = arith.constant true
      %265 = vector.transfer_read %2[%c6, %c9, %c6], %true_52 : tensor<4x3x4xi1>, vector<4x4xi1>
      memref.assume_alignment %alloc_14, 4 : memref<9x7xf32>
      %266 = arith.cmpi sge, %true_52, %true : i1
      %267 = math.log2 %21 : tensor<7xf16>
      %268 = tensor.empty() : tensor<4x3x4xi16>
      %269 = affine.for %arg1 = 0 to 37 iter_args(%arg2 = %6) -> (tensor<9x7xf16>) {
        affine.yield %16 : tensor<9x7xf16>
      }
      %270 = index.mul %c10, %c13
      %271 = index.sizeof
      %rank = tensor.rank %1 : tensor<4x3x4xf16>
      %extracted_53 = tensor.extract %splat[%c2, %c2, %c0] : tensor<4x3x4xi1>
      %272 = index.maxs %c12, %c13
      %273 = bufferization.clone %alloc_24 : memref<9x9xi1> to memref<9x9xi1>
      %274 = index.divu %34, %272
      %275 = arith.maxf %cst_5, %cst_2 : f32
      %276 = arith.maxf %cst_1, %cst_1 : f16
      %277 = vector.extract %20[0] : vector<3xi1>
      %278 = affine.load %alloc_18[%c9, %c11] : memref<9x7xi32>
      %279 = arith.shrui %true_52, %false_3 : i1
      %280 = arith.maxf %cst_7, %cst_7 : f16
      %281 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
      %282 = vector.extract %20[0] : vector<3xi1>
      %283 = index.maxs %c4, %c0
      affine.store %in_51, %273[%c4, %c4] : memref<9x9xi1>
      %284 = index.mul %34, %c12
      %285 = arith.addf %cst, %cst_1 : f16
      %286 = math.atan2 %cst, %cst_1 : f16
      %287 = math.fpowi %cst_5, %278 : f32, i32
      %288 = index.divu %c6, %c2
      %289 = arith.ori %278, %c38503973_i32 : i32
      %290 = math.ctpop %false_9 : i1
      %291 = arith.divui %c38503973_i32, %278 : i32
      %292 = vector.broadcast %c23112_i16 : i16 to vector<3x7xi16>
      %293 = vector.broadcast %c23112_i16 : i16 to vector<3xi16>
      %dest_54, %accumulated_value_55 = vector.scan <minui>, %292, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xi16>, vector<3xi16>
      linalg.yield %extracted_53 : i1
    } -> tensor<4x3x4xi1>
    %62 = index.mul %c7, %c9
    %63 = index.maxs %c5, %c3
    %64 = math.fma %cst, %cst_7, %cst_1 : f16
    %65 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %false_9 : vector<3xi1>, vector<3xi1> into i1
    %66 = arith.minui %c1134458198_i64, %c1134458198_i64 : i64
    %67 = arith.remsi %false_6, %false_6 : i1
    %68 = arith.andi %false, %false : i1
    %69 = arith.maxf %cst_0, %cst_10 : f32
    %70 = vector.transpose %20, [0] : vector<3xi1> to vector<3xi1>
    %71 = vector.matrix_multiply %20, %20 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
    %72 = vector.bitcast %71 : vector<1xi1> to vector<1xi1>
    %73 = affine.max affine_map<(d0) -> (-(d0 ceildiv 128) + 2)>(%c9)
    %74 = arith.xori %false_9, %false_9 : i1
    %75 = math.round %17 : tensor<9x7xf16>
    %76 = arith.addf %cst_2, %cst_8 : f32
    %77 = affine.if affine_set<(d0, d1, d2) : ((d1 ceildiv 8 + 16) * 64 >= 0, ((d1 ceildiv 8) mod 128 + d1 ceildiv 8) floordiv 64 == 0, d2 + 64 >= 0)>(%c2, %c12, %c8) -> i16 {
      %265 = bufferization.clone %alloc_26 : memref<7x9xi1> to memref<7x9xi1>
      %266 = index.ceildivu %c0, %c1
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %72, %72, %false_6 : vector<1xi1>, vector<1xi1> into i1
      %268 = math.atan2 %cst_5, %cst_10 : f32
      %269 = math.ctlz %48 : tensor<4x3x4xi64>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %20, %false_6 : vector<3xi1>, vector<3xi1> into i1
      %271 = index.maxs %c12, %c0
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %true : vector<3xi1>, vector<3xi1> into i1
      affine.yield %c23112_i16 : i16
    } else {
      %265 = math.log1p %5 : tensor<3x3xf16>
      %266 = index.mul %c6, %c15
      %alloc_50 = memref.alloc() : memref<4xi1>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50 : memref<4xi1>) outs(%3 : tensor<4x3x4xi1>) {
      ^bb0(%in: i1, %out: i1):
        %273 = index.sizeof
        %inserted_51 = tensor.insert %in into %3[%c2, %c0, %c1] : tensor<4x3x4xi1>
        %alloc_52 = memref.alloc() : memref<9x7xf16>
        memref.copy %alloc_23, %alloc_52 : memref<9x7xf16> to memref<9x7xf16>
        %274 = vector.multi_reduction <minui>, %20, %true [0] : vector<3xi1> to i1
        %true_53 = index.bool.constant true
        %275 = index.divu %266, %c15
        %276 = arith.shrui %46, %true : i1
        %277 = tensor.empty() : tensor<3x3xf16>
        %278 = tensor.empty() : tensor<4x3x4xi32>
        %279 = vector.bitcast %71 : vector<1xi1> to vector<1xi1>
        bufferization.dealloc_tensor %12 : tensor<3x3xi16>
        %280 = arith.maxf %cst, %cst_1 : f16
        %281 = vector.splat %c0 : vector<3x3xindex>
        bufferization.dealloc_tensor %reduced : tensor<7xf16>
        %282 = arith.xori %false_6, %false_6 : i1
        %283 = arith.shrsi %c1134458198_i64, %c1134458198_i64 : i64
        %284 = arith.divui %false, %false_9 : i1
        %285 = arith.addf %cst_5, %cst_2 : f32
        %286 = math.round %21 : tensor<7xf16>
        %287 = vector.load %alloc_21[%c3, %c4] : memref<9x7xi1>, vector<9x7xi1>
        %288 = arith.floordivsi %46, %false_3 : i1
        %extracted_54 = tensor.extract %13[%c3, %c2, %c2] : tensor<4x3x4xi1>
        %289 = arith.andi %true, %false_3 : i1
        %290 = math.ipowi %278, %278 : tensor<4x3x4xi32>
        %291 = math.log %10 : tensor<3x3xf32>
        %292 = arith.maxf %cst_1, %cst_7 : f16
        %293 = math.fpowi %cst, %c38503973_i32 : f16, i32
        %294 = math.log10 %cst_8 : f32
        %295 = arith.cmpi eq, %c1134458198_i64, %c1134458198_i64 : i64
        %296 = arith.shrsi %false, %true_53 : i1
        %297 = vector.bitcast %279 : vector<1xi1> to vector<1xi1>
        %298 = math.copysign %cst_1, %cst : f16
        linalg.yield %46 : i1
      } -> tensor<4x3x4xi1>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %72, %72, %false_6 : vector<1xi1>, vector<1xi1> into i1
      %269 = vector.insertelement %46, %72[%c10 : index] : vector<1xi1>
      %270 = arith.maxf %cst, %cst : f16
      %271 = scf.while (%arg1 = %true) : (i1) -> i1 {
        %273 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %rank = tensor.rank %collapsed : tensor<9xf16>
        %274 = arith.remui %c23112_i16, %c23112_i16 : i16
        %275 = index.sizeof
        %276 = vector.broadcast %false_6 : i1 to vector<1x1xi1>
        %277 = vector.outerproduct %273, %273, %276 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
        memref.copy %alloc_11, %alloc_22 : memref<3x3xi16> to memref<3x3xi16>
        %278 = arith.shrsi %false, %false : i1
        %279 = arith.remui %false_6, %true : i1
        scf.condition(%46) %false_3 : i1
      } do {
      ^bb0(%arg1: i1):
        %273 = arith.remf %cst_2, %cst_10 : f32
        %274 = arith.minf %cst, %cst : f16
        %275 = math.sqrt %21 : tensor<7xf16>
        %276 = index.ceildivu %c9, %c4
        %277 = memref.atomic_rmw muli %c1134458198_i64, %alloc_12[%c2, %c2] : (i64, memref<3x3xi64>) -> i64
        %278 = arith.divui %false_6, %arg1 : i1
        %279 = tensor.empty(%c15, %c2) : tensor<?x?xf32>
        %280 = vector.splat %73 : vector<3x3xindex>
        %splat_51 = tensor.splat %false_9 : tensor<9x7xi1>
        %281 = arith.negf %cst_0 : f32
        %282 = bufferization.clone %alloc_14 : memref<9x7xf32> to memref<9x7xf32>
        %283 = vector.insertelement %false_6, %20[%c12 : index] : vector<3xi1>
        %284 = index.floordivs %73, %c2
        %285 = memref.atomic_rmw assign %cst_7, %alloc[%c0, %c1] : (f16, memref<9x9xf16>) -> f16
        %alloca_52 = memref.alloca() : memref<9x9xi64>
        %286 = vector.shuffle %71, %71 [0, 1] : vector<1xi1>, vector<1xi1>
        scf.yield %false_9 : i1
      }
      %272 = index.ceildivu %c6, %c7
      affine.yield %c23112_i16 : i16
    }
    %78 = arith.maxf %cst_5, %cst_2 : f32
    %79 = arith.shrui %false_9, %false_6 : i1
    %80 = vector.broadcast %cst_4 : f32 to vector<9x9xf32>
    %cst_31 = arith.constant 1.000000e+00 : f16
    %cst_32 = arith.constant 0.000000e+00 : f16
    %81 = vector.transfer_read %4[%c5, %c3], %cst_32 : tensor<9x9xf16>, vector<f16>
    %82 = vector.multi_reduction <maxui>, %72, %false_6 [0] : vector<1xi1> to i1
    memref.copy %alloc_18, %alloc_25 : memref<9x7xi32> to memref<9x7xi32>
    memref.alloca_scope  {
      %265 = memref.atomic_rmw addf %cst_31, %alloc_23[%c8, %c5] : (f16, memref<9x7xf16>) -> f16
      %266 = index.floordivs %c5, %c15
      %from_elements_50 = tensor.from_elements %cst_5, %cst_5, %cst_2, %cst_10, %cst_5, %cst_4, %cst_0, %cst_5, %cst_5, %cst_10, %cst_5, %cst_8, %cst_8, %cst_8, %cst_10, %cst_4, %cst_0, %cst_5, %cst_10, %cst_5, %cst_4, %cst_10, %cst_8, %cst_4, %cst_2, %cst_5, %cst_8, %cst_5, %cst_4, %cst_0, %cst_8, %cst_2, %cst_5, %cst_10, %cst_2, %cst_4, %cst_10, %cst_2, %cst_8, %cst_0, %cst_10, %cst_10, %cst_8, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_0, %cst_4, %cst_4, %cst_5, %cst_0, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_8, %cst_2, %cst_2, %cst_5, %cst_8, %cst_8, %cst_5, %cst_0, %cst_10, %cst_2, %cst_2, %cst_8, %cst_8, %cst_2, %cst_4, %cst_10, %cst_8, %cst_2, %cst_8, %cst_5 : tensor<9x9xf32>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %72, %71, %46 : vector<1xi1>, vector<1xi1> into i1
      %268 = vector.load %alloc_17[%c2, %c6] : memref<9x9xf16>, vector<3x3xf16>
      %269 = vector.load %alloc_13[%c2, %c2] : memref<3x3xf16>, vector<3x3xf16>
      %270 = vector.splat %63 : vector<4x3x4xindex>
      %271 = tensor.empty() : tensor<9x9xi32>
      %272 = math.fpowi %9, %271 : tensor<9x9xf16>, tensor<9x9xi32>
      %273 = vector.broadcast %46 : i1 to vector<1x1xi1>
      %274 = vector.outerproduct %72, %71, %273 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
      memref.alloca_scope  {
        %294 = index.ceildivu %c5, %c1
        %295 = math.ipowi %c1134458198_i64, %c1134458198_i64 : i64
        %296 = math.powf %22, %23 : tensor<f16>
        %297 = index.maxu %c4, %266
        %298 = bufferization.to_memref %0 : memref<3x3xi16>
        %299 = math.tan %16 : tensor<9x7xf16>
        %300 = math.log2 %cst_1 : f16
        %301 = arith.negf %cst_10 : f32
        %302 = affine.apply affine_map<(d0, d1, d2) -> (-d1)>(%c5, %266, %266)
        %303 = arith.floordivsi %82, %false_3 : i1
        %304 = bufferization.to_memref %33 : memref<3x3xf16>
        %305 = affine.max affine_map<(d0) -> (0, (d0 + 16) * 128)>(%c10)
        %cst_51 = arith.constant 1.000000e+00 : f16
        %cst_52 = arith.constant 0.000000e+00 : f16
        %306 = vector.transfer_read %16[%c7, %c6], %cst_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<9x7xf16>, vector<3xf16>
        %307 = index.ceildivu %c6, %c14
        %308 = tensor.empty() : tensor<9x9xf16>
        %rank_53 = tensor.rank %0 : tensor<3x3xi16>
        %309 = math.ceil %17 : tensor<9x7xf16>
        memref.tensor_store %58, %alloc_22 : memref<3x3xi16>
        %310 = index.divu %c0, %c2
        %alloca_54 = memref.alloca() : memref<9x9xi16>
        %311 = arith.ceildivsi %82, %82 : i1
        %312 = index.ceildivu %73, %c2
        %313 = arith.mulf %cst_0, %cst_2 : f32
        %314 = math.tan %cst_5 : f32
        %315 = arith.cmpi ugt, %c38503973_i32, %c38503973_i32 : i32
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_55 = arith.constant 0 : i64
        %316 = vector.transfer_read %alloc_15[%305, %312], %c0_i64_55 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<9x9xi64>, vector<7xi64>
        %317 = arith.subi %c23112_i16, %c23112_i16 : i16
        %318 = math.ctpop %13 : tensor<4x3x4xi1>
        memref.assume_alignment %alloc, 1 : memref<9x9xf16>
        %319 = math.round %9 : tensor<9x9xf16>
        %320 = index.maxu %c13, %63
        %321 = arith.subi %true, %82 : i1
      }
      %275 = arith.divui %false_6, %true : i1
      %276 = math.log10 %cst_8 : f32
      %277 = arith.minsi %false_6, %false_3 : i1
      %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %71, %72, %true : vector<1xi1>, vector<1xi1> into i1
      %279 = vector.reduction <maxsi>, %72 : vector<1xi1> into i1
      %280 = math.floor %cst_10 : f32
      bufferization.dealloc_tensor %7 : tensor<3x3xi16>
      %cast = tensor.cast %12 : tensor<3x3xi16> to tensor<?x?xi16>
      %281 = math.powf %4, %9 : tensor<9x9xf16>
      %282 = bufferization.clone %alloc_11 : memref<3x3xi16> to memref<3x3xi16>
      %283 = math.cttz %54 : tensor<9x9xi1>
      bufferization.dealloc_tensor %3 : tensor<4x3x4xi1>
      %284 = arith.andi %82, %false_9 : i1
      %285 = math.cttz %15 : tensor<9x9xi1>
      %286 = arith.minf %cst, %cst_7 : f16
      %287 = math.tan %cst_31 : f16
      %288 = affine.apply affine_map<(d0, d1, d2) -> (-d1)>(%73, %c8, %c14)
      %289 = index.divu %c8, %266
      %290 = scf.while (%arg1 = %alloc_22) : (memref<3x3xi16>) -> memref<3x3xi16> {
        %294 = arith.remf %cst_0, %cst_10 : f32
        %295 = vector.flat_transpose %72 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %296 = affine.load %alloc_17[%c13, %c8] : memref<9x9xf16>
        %297 = bufferization.to_tensor %alloc_21 : memref<9x7xi1>
        %298 = index.maxs %c0, %c0
        %299 = arith.maxsi %false, %false_6 : i1
        %300 = vector.extract %269[2] : vector<3x3xf16>
        %301 = math.floor %5 : tensor<3x3xf16>
        scf.condition(%false_3) %alloc_22 : memref<3x3xi16>
      } do {
      ^bb0(%arg1: memref<3x3xi16>):
        %294 = math.cttz %46 : i1
        %295 = vector.broadcast %false_9 : i1 to vector<1x1xi1>
        %296 = vector.outerproduct %71, %71, %295 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
        %297 = bufferization.to_memref %11 : memref<3x3xi64>
        vector.print %20 : vector<3xi1>
        %298 = arith.shrui %true, %false_9 : i1
        %299 = arith.minf %cst_7, %cst_7 : f16
        %300 = index.divu %289, %c14
        %false_51 = index.bool.constant false
        %301 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %302 = math.round %18 : tensor<7xf16>
        %303 = bufferization.to_memref %1 : memref<4x3x4xf16>
        %304 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * -4, d1 - (d3 + d0))>(%62, %34, %300, %c11)
        %305 = memref.load %282[%c2, %c0] : memref<3x3xi16>
        %306 = math.ceil %10 : tensor<3x3xf32>
        %307 = arith.floordivsi %false_51, %true : i1
        %308 = math.sqrt %10 : tensor<3x3xf32>
        scf.yield %282 : memref<3x3xi16>
      }
      %rank = tensor.rank %14 : tensor<3x3xf32>
      %291 = tensor.empty() : tensor<3x3xi32>
      %292 = math.fpowi %42, %291 : tensor<3x3xf16>, tensor<3x3xi32>
      %293 = math.floor %1 : tensor<4x3x4xf16>
    }
    %83 = memref.atomic_rmw assign %cst, %alloc_23[%c2, %c2] : (f16, memref<9x7xf16>) -> f16
    %84 = math.log1p %23 : tensor<f16>
    %85 = math.log10 %cst_5 : f32
    %extracted = tensor.extract %33[%c0, %c1] : tensor<3x3xf16>
    %alloc_33 = memref.alloc() : memref<9x9xi32>
    %86 = vector.broadcast %c38503973_i32 : i32 to vector<4x3x4xi32>
    %87 = vector.broadcast %false_3 : i1 to vector<4x3x4xi1>
    %88 = vector.gather %alloc_33[%c4, %c9] [%86], %87, %86 : memref<9x9xi32>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xi32> into vector<4x3x4xi32>
    %alloc_34 = memref.alloc() : memref<3x3xi1>
    memref.copy %alloc_20, %alloc_34 : memref<3x3xi1> to memref<3x3xi1>
    %89 = math.log %9 : tensor<9x9xf16>
    %90 = math.absf %cst_5 : f32
    %91 = arith.xori %46, %false : i1
    %92 = arith.minsi %false_9, %false_9 : i1
    %93 = arith.ori %false, %false_6 : i1
    %94 = scf.if %46 -> (i64) {
      %alloc_50 = memref.alloc() : memref<3x4xf16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50, %alloc_50 : memref<3x4xf16>, memref<3x4xf16>) outs(%1 : tensor<4x3x4xf16>) {
      ^bb0(%in: f16, %in_54: f16, %out: f16):
        %272 = arith.shrsi %false, %82 : i1
        %273 = math.exp %16 : tensor<9x7xf16>
        %274 = arith.negf %in_54 : f16
        %275 = vector.matrix_multiply %72, %71 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %276 = arith.andi %false, %false : i1
        %277 = arith.floordivsi %false_3, %false_3 : i1
        %278 = index.sizeof
        %279 = arith.mulf %cst_7, %in_54 : f16
        %280 = math.powf %9, %9 : tensor<9x9xf16>
        memref.assume_alignment %alloc_25, 1 : memref<9x7xi32>
        %281 = index.mul %73, %c8
        %282 = math.log2 %4 : tensor<9x9xf16>
        %true_55 = index.bool.constant true
        %alloca_56 = memref.alloca() : memref<9x7xi1>
        %283 = math.ceil %18 : tensor<7xf16>
        %284 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
        %285 = arith.divui %false, %82 : i1
        %286 = bufferization.clone %alloc_22 : memref<3x3xi16> to memref<3x3xi16>
        %287 = arith.mulf %in, %extracted : f16
        %288 = vector.load %alloc_21[%c5, %c0] : memref<9x7xi1>, vector<9x7xi1>
        %289 = math.sqrt %10 : tensor<3x3xf32>
        %290 = index.ceildivs %62, %281
        %291 = vector.broadcast %extracted : f16 to vector<9xf16>
        vector.transfer_write %291, %alloc_23[%c6, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf16>, memref<9x7xf16>
        memref.assume_alignment %alloc_18, 2 : memref<9x7xi32>
        %292 = index.add %62, %c4
        %293 = vector.bitcast %71 : vector<1xi1> to vector<1xi1>
        %294 = arith.floordivsi %c1134458198_i64, %c1134458198_i64 : i64
        %295 = math.log1p %6 : tensor<9x7xf16>
        %296 = math.log %14 : tensor<3x3xf32>
        %297 = memref.atomic_rmw assign %cst, %alloc_23[%c1, %c5] : (f16, memref<9x7xf16>) -> f16
        %298 = arith.divui %false_3, %false_6 : i1
        %299 = math.log10 %33 : tensor<3x3xf16>
        linalg.yield %out : f16
      } -> tensor<4x3x4xf16>
      %alloc_51 = memref.alloc() : memref<4x3x4xi64>
      memref.tensor_store %48, %alloc_51 : memref<4x3x4xi64>
      %266 = math.ipowi %3, %3 : tensor<4x3x4xi1>
      %267 = math.exp %cst_10 : f32
      %268 = vector.bitcast %87 : vector<4x3x4xi1> to vector<4x3x4xi1>
      %269 = math.log %23 : tensor<f16>
      %270 = vector.broadcast %cst_4 : f32 to vector<9xf32>
      %dest_52, %accumulated_value_53 = vector.scan <maxf>, %80, %270 {inclusive = true, reduction_dim = 1 : i64} : vector<9x9xf32>, vector<9xf32>
      %271 = vector.insertelement %false_9, %71[%c9 : index] : vector<1xi1>
      scf.yield %c1134458198_i64 : i64
    } else {
      %265 = math.sqrt %cst_10 : f32
      %266 = math.floor %cst_4 : f32
      %267 = math.ipowi %15, %54 : tensor<9x9xi1>
      affine.store %cst_1, %alloc_13[%c1, %c0] : memref<3x3xf16>
      %alloc_50 = memref.alloc() : memref<3x3xf32>
      memref.tensor_store %10, %alloc_50 : memref<3x3xf32>
      %268 = scf.while (%arg1 = %false_9) : (i1) -> i1 {
        %272 = memref.load %31[%c2, %c2, %c1] : memref<4x3x4xf16>
        %273 = math.log %cst_4 : f32
        %274 = tensor.empty() : tensor<9x9xf16>
        %275 = linalg.matmul ins(%9, %9 : tensor<9x9xf16>, tensor<9x9xf16>) outs(%274 : tensor<9x9xf16>) -> tensor<9x9xf16>
        %276 = vector.multi_reduction <mul>, %20, %20 [] : vector<3xi1> to vector<3xi1>
        %277 = vector.splat %62 : vector<9x7xindex>
        %278 = arith.ceildivsi %false_6, %true : i1
        bufferization.dealloc_tensor %7 : tensor<3x3xi16>
        %279 = math.copysign %18, %reduced : tensor<7xf16>
        scf.condition(%arg1) %82 : i1
      } do {
      ^bb0(%arg1: i1):
        %272 = arith.minui %c1134458198_i64, %c1134458198_i64 : i64
        %273 = arith.andi %c38503973_i32, %c38503973_i32 : i32
        %274 = arith.subi %82, %82 : i1
        %275 = vector.broadcast %arg1 : i1 to vector<4x4xi1>
        %dest_51, %accumulated_value_52 = vector.scan <maxui>, %87, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<4x3x4xi1>, vector<4x4xi1>
        %276 = math.floor %extracted : f16
        %277 = math.rsqrt %5 : tensor<3x3xf16>
        %278 = index.floordivs %c0, %c15
        %279 = index.maxu %c11, %c13
        %280 = math.sqrt %9 : tensor<9x9xf16>
        %281 = arith.xori %c38503973_i32, %c38503973_i32 : i32
        %282 = vector.insertelement %false, %20[%49 : index] : vector<3xi1>
        %283 = index.divu %c2, %279
        %284 = math.floor %cst : f16
        %285 = math.exp %33 : tensor<3x3xf16>
        %286 = arith.minsi %false, %false : i1
        %alloc_53 = memref.alloc() : memref<4xf32>
        %287 = memref.realloc %alloc_53 : memref<4xf32> to memref<3xf32>
        scf.yield %arg1 : i1
      }
      %269 = math.ctlz %false_9 : i1
      %270 = vector.broadcast %c23112_i16 : i16 to vector<4x3x4xi16>
      %271 = vector.gather %7[%73, %c6] [%86], %87, %270 : tensor<3x3xi16>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xi16> into vector<4x3x4xi16>
      scf.yield %c1134458198_i64 : i64
    }
    %95 = arith.addi %82, %true : i1
    %96 = arith.ori %false_6, %false_6 : i1
    %97 = math.copysign %cst_8, %cst_0 : f32
    %98 = memref.load %alloc_11[%c1, %c0] : memref<3x3xi16>
    %99 = vector.broadcast %cst_4 : f32 to vector<9xf32>
    %100 = vector.multi_reduction <add>, %80, %99 [0] : vector<9x9xf32> to vector<9xf32>
    affine.for %arg1 = 0 to 43 {
    }
    %101 = index.mul %c8, %73
    %102 = vector.broadcast %false_3 : i1 to vector<1x1xi1>
    %103 = vector.outerproduct %72, %72, %102 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
    %104 = arith.shrsi %c38503973_i32, %c38503973_i32 : i32
    %105 = math.round %4 : tensor<9x9xf16>
    %106 = math.floor %collapsed : tensor<9xf16>
    %107 = tensor.empty() : tensor<9x7xf16>
    %from_elements = tensor.from_elements %false, %false_9, %true, %false_6, %false, %false_3, %false_3, %false_3, %46 : tensor<3x3xi1>
    %108 = index.floordivs %c7, %c11
    %inserted_35 = tensor.insert %cst_1 into %1[%c0, %c0, %c0] : tensor<4x3x4xf16>
    %109 = arith.addf %cst_5, %cst_5 : f32
    %110 = index.maxs %c13, %34
    memref.assume_alignment %alloc, 16 : memref<9x9xf16>
    %111 = vector.broadcast %false : i1 to vector<1x1xi1>
    %112 = vector.outerproduct %72, %71, %111 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
    bufferization.dealloc_tensor %1 : tensor<4x3x4xf16>
    %113 = tensor.empty() : tensor<i32>
    %114 = math.fpowi %23, %113 : tensor<f16>, tensor<i32>
    %115 = math.tan %cst_7 : f16
    %116 = index.ceildivu %c6, %c2
    %inserted_36 = tensor.insert %false_9 into %2[%c0, %c1, %c2] : tensor<4x3x4xi1>
    %117 = arith.remui %46, %false_6 : i1
    %118 = scf.while (%arg1 = %cst_7) : (f16) -> f16 {
      %265 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %266 = math.ceil %10 : tensor<3x3xf32>
      %267 = affine.apply affine_map<(d0, d1) -> ((d0 - (d1 - 8) + 64) * 64)>(%c10, %c2)
      %268 = tensor.empty(%c5) : tensor<9x?xi16>
      %269 = arith.ori %c23112_i16, %c23112_i16 : i16
      %270 = arith.floordivsi %82, %82 : i1
      %271 = math.sqrt %reduced : tensor<7xf16>
      %272 = math.log2 %cst : f16
      scf.condition(%false_9) %cst_7 : f16
    } do {
    ^bb0(%arg1: f16):
      %splat_50 = tensor.splat %94 : tensor<4x3x4xi64>
      %265 = vector.bitcast %80 : vector<9x9xf32> to vector<9x9xf32>
      %266 = index.divs %c9, %c2
      %cst_51 = arith.constant 1.000000e+00 : f16
      %cst_52 = arith.constant 0.000000e+00 : f16
      %267 = vector.transfer_read %alloc[%c13, %c1], %cst_52 : memref<9x9xf16>, vector<f16>
      %alloc_53 = memref.alloc() : memref<3x4xi1>
      %268 = tensor.empty() : tensor<4x4xi1>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53, %268 : memref<3x4xi1>, tensor<4x4xi1>) outs(%13 : tensor<4x3x4xi1>) {
      ^bb0(%in: i1, %in_55: i1, %out: i1):
        %279 = index.sizeof
        %280 = vector.broadcast %arg1 : f16 to vector<9x7xf16>
        %281 = vector.broadcast %82 : i1 to vector<9x7xi1>
        %282 = vector.broadcast %c38503973_i32 : i32 to vector<9x7xi32>
        %283 = vector.gather %1[%c2, %49, %c11] [%282], %281, %280 : tensor<4x3x4xf16>, vector<9x7xi32>, vector<9x7xi1>, vector<9x7xf16> into vector<9x7xf16>
        %284 = arith.remui %c23112_i16, %c23112_i16 : i16
        %285 = vector.insertelement %false, %20[%c8 : index] : vector<3xi1>
        %from_elements_56 = tensor.from_elements %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16, %c23112_i16 : tensor<9x9xi16>
        %286 = arith.shrsi %c38503973_i32, %c38503973_i32 : i32
        %287 = vector.reduction <minsi>, %72 : vector<1xi1> into i1
        %288 = arith.maxf %cst_8, %cst_5 : f32
        %289 = arith.maxf %cst_0, %cst_2 : f32
        %290 = vector.broadcast %c38503973_i32 : i32 to vector<9xi32>
        %dest_57, %accumulated_value_58 = vector.scan <minui>, %282, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<9x7xi32>, vector<9xi32>
        %291 = index.maxu %108, %101
        %292 = vector.broadcast %c1134458198_i64 : i64 to vector<i64>
        %293 = vector.transfer_write %292, %11[%c13, %108] : vector<i64>, tensor<3x3xi64>
        %294 = math.rsqrt %10 : tensor<3x3xf32>
        %295 = arith.negf %cst_10 : f32
        %296 = math.powf %cst_0, %cst_8 : f32
        %297 = arith.minf %arg1, %cst_1 : f16
        %dest_59, %accumulated_value_60 = vector.scan <maxf>, %265, %99 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xf32>, vector<9xf32>
        %298 = index.ceildivs %c9, %108
        %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %71, %71, %false : vector<1xi1>, vector<1xi1> into i1
        %300 = math.fpowi %cst_51, %c38503973_i32 : f16, i32
        %301 = arith.divui %c1134458198_i64, %c1134458198_i64 : i64
        %302 = vector.load %alloc_24[%c0, %c3] : memref<9x9xi1>, vector<3x3xi1>
        %303 = bufferization.clone %alloc : memref<9x9xf16> to memref<9x9xf16>
        %304 = arith.ori %false_6, %out : i1
        %305 = vector.insertelement %out, %72[%c3 : index] : vector<1xi1>
        %306 = vector.bitcast %283 : vector<9x7xf16> to vector<9x7xf16>
        %307 = vector.bitcast %306 : vector<9x7xf16> to vector<9x7xf16>
        %308 = arith.ori %82, %in : i1
        %true_61 = index.bool.constant true
        %309 = math.ipowi %out, %false_9 : i1
        %310 = math.log2 %10 : tensor<3x3xf32>
        %311 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c4, %108, %c6, %c2)
        linalg.yield %false_9 : i1
      } -> tensor<4x3x4xi1>
      %270 = math.log10 %18 : tensor<7xf16>
      memref.tensor_store %0, %alloc_11 : memref<3x3xi16>
      %271 = vector.transpose %86, [1, 0, 2] : vector<4x3x4xi32> to vector<3x4x4xi32>
      %272 = arith.minui %c38503973_i32, %c38503973_i32 : i32
      %from_elements_54 = tensor.from_elements %arg1, %extracted, %cst_31, %extracted, %cst, %cst, %extracted, %cst_51, %cst_7, %cst, %extracted, %cst_7, %extracted, %extracted, %extracted, %cst_7, %cst_7, %cst_1, %cst_1, %arg1, %cst_51, %cst_51, %cst_51, %cst, %cst_31, %cst, %arg1, %cst, %cst_1, %cst_51, %cst_1, %cst_31, %extracted, %arg1, %cst_51, %extracted, %extracted, %cst, %cst_51, %extracted, %cst_31, %cst_31, %cst_31, %extracted, %cst, %cst_31, %extracted, %cst_7, %cst_31, %arg1, %cst_51, %cst_1, %cst_1, %cst_51, %cst_1, %arg1, %cst_7, %cst_51, %extracted, %arg1, %cst_31, %cst_31, %cst_1 : tensor<9x7xf16>
      %273 = tensor.empty() : tensor<4x3x4xi1>
      %274 = arith.andi %true, %false_9 : i1
      %275 = arith.minf %cst_1, %extracted : f16
      %276 = arith.remui %82, %false : i1
      %277 = index.floordivs %34, %49
      %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %265, %99, %99 : vector<9x9xf32>, vector<9xf32> into vector<9xf32>
      scf.yield %cst_31 : f16
    }
    %119 = math.copysign %1, %1 : tensor<4x3x4xf16>
    %120 = index.divu %c6, %c8
    %alloc_37 = memref.alloc() : memref<4x3xi1>
    %121 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37 : memref<4x3xi1>) outs(%3 : tensor<4x3x4xi1>) {
    ^bb0(%in: i1, %out: i1):
      %265 = index.maxs %c1, %c13
      %266 = index.divs %c7, %c7
      %267 = arith.maxf %cst_8, %cst_2 : f32
      %268 = arith.addf %cst_10, %cst_4 : f32
      %269 = vector.transpose %86, [0, 2, 1] : vector<4x3x4xi32> to vector<4x4x3xi32>
      %270 = math.tan %4 : tensor<9x9xf16>
      memref.alloca_scope  {
        %294 = index.floordivs %c1, %c11
        %295 = math.atan2 %cst_10, %cst_0 : f32
        %296 = index.floordivs %120, %c8
        %297 = math.log2 %cst_4 : f32
        %298 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %299 = vector.broadcast %c15 : index to vector<4xindex>
        %300 = vector.broadcast %true : i1 to vector<4xi1>
        vector.scatter %alloc_26[%c5, %c2] [%299], %300, %300 : memref<7x9xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        bufferization.dealloc_tensor %9 : tensor<9x9xf16>
        %301 = memref.atomic_rmw maxu %c38503973_i32, %alloc_18[%c2, %c4] : (i32, memref<9x7xi32>) -> i32
        %302 = index.mul %c15, %110
        %303 = math.floor %4 : tensor<9x9xf16>
        %extracted_53 = tensor.extract %42[%c2, %c1] : tensor<3x3xf16>
        %304 = math.copysign %cst, %cst_1 : f16
        %alloca_54 = memref.alloca() : memref<9x7xi1>
        %305 = arith.addf %cst_31, %cst_1 : f16
        %306 = bufferization.clone %alloc_17 : memref<9x9xf16> to memref<9x9xf16>
        %307 = arith.xori %false_6, %false_3 : i1
        %308 = math.ceil %cst_2 : f32
        %309 = arith.ori %c38503973_i32, %c38503973_i32 : i32
        %310 = arith.negf %cst_10 : f32
        %311 = math.sqrt %23 : tensor<f16>
        %312 = math.expm1 %16 : tensor<9x7xf16>
        %313 = vector.shuffle %99, %99 [0, 4, 7, 8, 9, 10, 17] : vector<9xf32>, vector<9xf32>
        %314 = math.tanh %42 : tensor<3x3xf16>
        %splat_55 = tensor.splat %false_3 : tensor<4x3x4xi1>
        %inserted_56 = tensor.insert %cst_1 into %6[%c5, %c5] : tensor<9x7xf16>
        %315 = arith.andi %in, %46 : i1
        %316 = bufferization.to_memref %1 : memref<4x3x4xf16>
        %317 = memref.load %alloc_33[%c0, %c6] : memref<9x9xi32>
        %318 = index.divs %302, %c10
        %319 = arith.negf %cst_0 : f32
        %320 = vector.broadcast %46 : i1 to vector<3x4x3x4xi1>
        %321 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %87, %87, %320 : vector<4x3x4xi1>, vector<4x3x4xi1> into vector<3x4x3x4xi1>
        %322 = math.sqrt %42 : tensor<3x3xf16>
      }
      %271 = math.exp %cst_0 : f32
      %272 = math.exp %cst_4 : f32
      %273 = math.fpowi %cst_1, %c38503973_i32 : f16, i32
      %274 = index.divs %101, %c4
      %275 = arith.minf %cst_5, %cst_0 : f32
      %276 = vector.broadcast %46 : i1 to vector<9x9xi1>
      %277 = bufferization.to_memref %14 : memref<3x3xf32>
      %278 = arith.maxf %cst_31, %extracted : f16
      %279 = arith.shli %c38503973_i32, %c38503973_i32 : i32
      %true_50 = index.bool.constant true
      %280 = arith.minf %cst, %cst_7 : f16
      %281 = memref.atomic_rmw addf %cst_31, %alloc[%c8, %c4] : (f16, memref<9x9xf16>) -> f16
      %282 = math.tan %22 : tensor<f16>
      %283 = arith.andi %82, %false_9 : i1
      %284 = vector.broadcast %101 : index to vector<3xindex>
      %285 = vector.broadcast %cst_1 : f16 to vector<3xf16>
      vector.scatter %alloc_23[%c1, %c2] [%284], %20, %285 : memref<9x7xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      scf.if %out {
        %294 = vector.gather %54[%73, %62] [%86], %87, %87 : tensor<9x9xi1>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xi1> into vector<4x3x4xi1>
        %295 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        bufferization.dealloc_tensor %4 : tensor<9x9xf16>
        %296 = math.log10 %6 : tensor<9x7xf16>
        %297 = math.round %6 : tensor<9x7xf16>
        %298 = arith.andi %out, %false_6 : i1
        %299 = math.floor %1 : tensor<4x3x4xf16>
        %300 = arith.shrui %c38503973_i32, %c38503973_i32 : i32
      } else {
        %294 = math.floor %18 : tensor<7xf16>
        %295 = vector.transpose %20, [0] : vector<3xi1> to vector<3xi1>
        %296 = arith.addf %cst_1, %cst_31 : f16
        %297 = vector.broadcast %82 : i1 to vector<i1>
        %298 = vector.transfer_write %297, %3[%c7, %c13, %63] : vector<i1>, tensor<4x3x4xi1>
        %299 = vector.extract %80[7] : vector<9x9xf32>
        %300 = vector.insertelement %out, %297[] : vector<i1>
        bufferization.dealloc_tensor %10 : tensor<3x3xf32>
        %301 = bufferization.to_memref %13 : memref<4x3x4xi1>
      }
      %286 = vector.multi_reduction <mul>, %99, %cst_5 [0] : vector<9xf32> to f32
      %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 4 - 4, d1 + 64, d0, (d0 floordiv 8) mod 8)>(%101, %265, %49, %101)
      memref.tensor_store %33, %alloc_13 : memref<3x3xf16>
      %288 = index.sizeof
      %289 = index.floordivs %c12, %c10
      %290 = arith.maxf %cst_2, %cst_5 : f32
      %291 = math.floor %18 : tensor<7xf16>
      %292 = vector.broadcast %c38503973_i32 : i32 to vector<4x4xi32>
      %dest_51, %accumulated_value_52 = vector.scan <maxsi>, %88, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<4x3x4xi32>, vector<4x4xi32>
      %293 = vector.bitcast %71 : vector<1xi1> to vector<1xi1>
      linalg.yield %false_3 : i1
    } -> tensor<4x3x4xi1>
    %122 = math.atan2 %reduced, %21 : tensor<7xf16>
    %false_38 = arith.constant false
    %false_39 = arith.constant false
    %123 = vector.transfer_read %2[%c12, %c5, %101], %false_39 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<4x3x4xi1>, vector<3xi1>
    %124 = math.cttz %false_38 : i1
    %125 = math.ceil %14 : tensor<3x3xf32>
    %126 = arith.addf %cst_1, %extracted : f16
    %splat_40 = tensor.splat %cst_0 : tensor<9x9xf32>
    %127 = vector.bitcast %20 : vector<3xi1> to vector<3xi1>
    %128 = memref.atomic_rmw assign %c23112_i16, %alloc_22[%c0, %c2] : (i16, memref<3x3xi16>) -> i16
    %129 = arith.divui %false_9, %false : i1
    %130 = arith.floordivsi %46, %82 : i1
    %131 = math.cttz %false_6 : i1
    %132 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%splat : tensor<4x3x4xi1>) {
    ^bb0(%out: i1):
      %265 = math.sqrt %4 : tensor<9x9xf16>
      %266 = arith.addf %extracted, %cst_31 : f16
      %267 = math.tan %9 : tensor<9x9xf16>
      %268 = math.exp %cst_31 : f16
      %extracted_50 = tensor.extract %0[%c1, %c1] : tensor<3x3xi16>
      %269 = arith.remf %cst_5, %cst_2 : f32
      %splat_51 = tensor.splat %false_38 : tensor<9x9xi1>
      %270 = math.floor %6 : tensor<9x7xf16>
      %271 = math.floor %cst_2 : f32
      %272 = arith.addf %cst_10, %cst_2 : f32
      %273 = bufferization.clone %alloc_26 : memref<7x9xi1> to memref<7x9xi1>
      %274 = index.ceildivu %c10, %c0
      %275 = vector.transpose %99, [0] : vector<9xf32> to vector<9xf32>
      %276 = arith.minui %false_3, %82 : i1
      %277 = vector.insertelement %false, %127[%73 : index] : vector<3xi1>
      %278 = arith.xori %true, %out : i1
      %279 = vector.broadcast %82 : i1 to vector<1x1xi1>
      %280 = vector.outerproduct %72, %71, %279 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
      %281 = vector.splat %94 : vector<4x3x4xi64>
      %extracted_52 = tensor.extract %18[%c4] : tensor<7xf16>
      %282 = math.log10 %14 : tensor<3x3xf32>
      %283 = arith.remui %c1134458198_i64, %94 : i64
      %284 = math.round %collapsed : tensor<9xf16>
      %285 = vector.insertelement %false_6, %127[%c14 : index] : vector<3xi1>
      %286 = arith.shrsi %c38503973_i32, %c38503973_i32 : i32
      %287 = arith.maxf %cst_2, %cst_5 : f32
      %288 = math.atan %4 : tensor<9x9xf16>
      %289 = vector.broadcast %false_38 : i1 to vector<3x3xi1>
      %290 = vector.outerproduct %20, %127, %289 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
      %291 = math.round %extracted_52 : f16
      %292 = arith.subi %false_3, %false_9 : i1
      %293 = memref.atomic_rmw muli %extracted_50, %alloc_22[%c1, %c0] : (i16, memref<3x3xi16>) -> i16
      %collapsed_53 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<4x3x4xi1> into tensor<12x4xi1>
      %294 = math.tan %42 : tensor<3x3xf16>
      linalg.yield %out : i1
    } -> tensor<4x3x4xi1>
    %133 = vector.extract_strided_slice %80 {offsets = [6], sizes = [1], strides = [1]} : vector<9x9xf32> to vector<1x9xf32>
    %134 = index.maxs %101, %c13
    %135 = index.ceildivs %c12, %110
    %136 = affine.max affine_map<(d0, d1) -> (-(d1 ceildiv 64 + 1))>(%116, %c15)
    %137 = math.log %5 : tensor<3x3xf16>
    %138 = math.floor %cst_8 : f32
    %139 = vector.bitcast %133 : vector<1x9xf32> to vector<1x9xf32>
    %140 = arith.xori %46, %false_6 : i1
    %141 = vector.reduction <add>, %72 : vector<1xi1> into i1
    %142 = vector.broadcast %c23112_i16 : i16 to vector<3x3xi16>
    %143 = index.divs %c2, %c14
    %144 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %80, %80, %80 : vector<9x9xf32>, vector<9x9xf32> into vector<9x9xf32>
    %145 = arith.mulf %cst_1, %cst_7 : f16
    %146 = arith.divui %false, %true : i1
    %147 = index.floordivs %135, %101
    %148 = arith.andi %c1134458198_i64, %94 : i64
    %149 = math.floor %collapsed : tensor<9xf16>
    %150 = arith.ori %c1134458198_i64, %94 : i64
    %151 = vector.flat_transpose %99 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
    %152 = tensor.empty() : tensor<3x3xi16>
    %153 = linalg.matmul ins(%0, %7 : tensor<3x3xi16>, tensor<3x3xi16>) outs(%152 : tensor<3x3xi16>) -> tensor<3x3xi16>
    %154 = arith.ori %false_3, %false : i1
    %155 = arith.negf %cst_7 : f16
    %from_elements_41 = tensor.from_elements %true, %false_9, %false_3, %82, %false, %false_6, %false_9, %false_3, %false_3, %false_6, %46, %false_6, %false_9, %false_3, %false_3, %false_3, %true, %false, %false_9, %false_9, %false, %false, %false_3, %46, %false_3, %false_38, %false_38, %false_6, %false, %false_3, %false, %false_38, %false_38, %46, %82, %82, %true, %false_3, %false, %false_3, %false_9, %false_38, %false_3, %46, %true, %false_9, %false, %false_9, %false_6, %false_6, %false, %82, %82, %46, %true, %false_3, %true, %false_9, %false_6, %false, %82, %46, %false_38 : tensor<9x7xi1>
    %156 = math.copysign %21, %21 : tensor<7xf16>
    %157 = math.ceil %cst_10 : f32
    %158 = math.round %107 : tensor<9x7xf16>
    %159 = index.maxs %c5, %135
    %160 = arith.divui %46, %false_6 : i1
    %161 = bufferization.to_memref %15 : memref<9x9xi1>
    %162 = index.divu %116, %c14
    %163 = tensor.empty() : tensor<9x7xi32>
    %164 = math.fpowi %6, %163 : tensor<9x7xf16>, tensor<9x7xi32>
    %165 = math.exp %107 : tensor<9x7xf16>
    %from_elements_42 = tensor.from_elements %94, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %94, %94, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %94, %94, %94, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %94, %94 : tensor<9x7xi64>
    %166 = index.ceildivu %159, %34
    %167 = arith.ori %94, %94 : i64
    %168 = tensor.empty() : tensor<4x3x4xf32>
    %169 = arith.shrsi %false, %false : i1
    %170 = memref.atomic_rmw ori %c38503973_i32, %alloc_25[%c1, %c6] : (i32, memref<9x7xi32>) -> i32
    vector.print %87 : vector<4x3x4xi1>
    %171 = vector.multi_reduction <and>, %20, %false_9 [0] : vector<3xi1> to i1
    %172 = tensor.empty() : tensor<4x3x4xi1>
    %173 = math.ipowi %172, %2 : tensor<4x3x4xi1>
    %174 = arith.minf %cst_2, %cst_5 : f32
    %175 = scf.while (%arg1 = %20) : (vector<3xi1>) -> vector<3xi1> {
      %265 = arith.ori %c1134458198_i64, %94 : i64
      %266 = math.log10 %4 : tensor<9x9xf16>
      %rank = tensor.rank %21 : tensor<7xf16>
      %267 = math.powf %cst_31, %cst_7 : f16
      vector.print %20 : vector<3xi1>
      %268 = vector.broadcast %false_6 : i1 to vector<3x3xi1>
      %269 = vector.outerproduct %127, %20, %268 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
      %270 = vector.splat %c14 : vector<9x7xindex>
      %271 = index.maxu %147, %c6
      scf.condition(%false_3) %127 : vector<3xi1>
    } do {
    ^bb0(%arg1: vector<3xi1>):
      %265 = math.log1p %17 : tensor<9x7xf16>
      %266 = math.fpowi %17, %163 : tensor<9x7xf16>, tensor<9x7xi32>
      %267 = index.floordivs %c11, %c1
      %268 = vector.broadcast %cst_4 : f32 to vector<9x7xf32>
      %269 = vector.fma %268, %268, %268 : vector<9x7xf32>
      %270 = math.ctlz %false_9 : i1
      %271 = arith.shrui %c23112_i16, %c23112_i16 : i16
      %272 = affine.for %arg2 = 0 to 23 iter_args(%arg3 = %9) -> (tensor<9x9xf16>) {
        affine.yield %4 : tensor<9x9xf16>
      }
      %273 = bufferization.to_tensor %alloc_22 : memref<3x3xi16>
      %alloc_50 = memref.alloc() : memref<4x3x4xf32>
      %274 = vector.broadcast %cst_0 : f32 to vector<4x3x4xf32>
      %275 = vector.gather %alloc_50[%159, %c10, %c10] [%86], %87, %274 : memref<4x3x4xf32>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xf32> into vector<4x3x4xf32>
      %276 = index.sizeof
      %277 = vector.multi_reduction <maxf>, %275, %275 [] : vector<4x3x4xf32> to vector<4x3x4xf32>
      %278 = vector.bitcast %99 : vector<9xf32> to vector<9xf32>
      %279 = index.mul %c15, %120
      %extracted_51 = tensor.extract %13[%c2, %c2, %c2] : tensor<4x3x4xi1>
      %280 = vector.splat %cst_5 : vector<9x7xf32>
      %281 = vector.reduction <mul>, %71 : vector<1xi1> into i1
      scf.yield %20 : vector<3xi1>
    }
    %176 = vector.bitcast %139 : vector<1x9xf32> to vector<1x9xi32>
    %177 = arith.xori %94, %94 : i64
    %178 = scf.if %true -> (memref<3x3xi1>) {
      %265 = arith.xori %c23112_i16, %c23112_i16 : i16
      %266 = vector.splat %46 : vector<9x7xi1>
      affine.for %arg1 = 0 to 79 {
      }
      %267 = arith.remf %cst_0, %cst_2 : f32
      %268 = math.expm1 %cst_31 : f16
      %alloc_50 = memref.alloc() : memref<7x9xi1>
      memref.copy %alloc_26, %alloc_50 : memref<7x9xi1> to memref<7x9xi1>
      %269 = bufferization.to_tensor %161 : memref<9x9xi1>
      %270 = math.atan %9 : tensor<9x9xf16>
      scf.yield %alloc_20 : memref<3x3xi1>
    } else {
      %265 = vector.broadcast %cst_5 : f32 to vector<1xf32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %99, %133, %265 : vector<9xf32>, vector<1x9xf32> into vector<1xf32>
      %267 = math.log1p %6 : tensor<9x7xf16>
      %268 = index.ceildivu %c12, %c2
      %269 = arith.andi %true, %82 : i1
      %270 = math.cttz %113 : tensor<i32>
      %271 = vector.broadcast %false_3 : i1 to vector<4x4xi1>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %127, %87, %271 : vector<3xi1>, vector<4x3x4xi1> into vector<4x4xi1>
      %false_50 = index.bool.constant false
      %273 = arith.cmpi ugt, %94, %c1134458198_i64 : i64
      scf.yield %alloc_20 : memref<3x3xi1>
    }
    %179 = vector.insertelement %171, %72[%108 : index] : vector<1xi1>
    %180 = index.maxu %c8, %159
    %181 = math.log10 %107 : tensor<9x7xf16>
    %182 = vector.reduction <or>, %20 : vector<3xi1> into i1
    %183 = vector.insertelement %cst_0, %151[%c12 : index] : vector<9xf32>
    %184 = vector.load %alloc_13[%c2, %c0] : memref<3x3xf16>, vector<9x9xf16>
    %185 = arith.maxf %cst_31, %cst_1 : f16
    %186 = vector.splat %62 : vector<9x9xindex>
    %187 = vector.splat %120 : vector<9x7xindex>
    %188 = math.log1p %16 : tensor<9x7xf16>
    %189 = vector.broadcast %extracted : f16 to vector<f16>
    %190 = vector.transfer_write %189, %collapsed[%c15] : vector<f16>, tensor<9xf16>
    %191 = index.floordivs %c1, %63
    %192 = index.mul %c8, %116
    %193 = vector.outerproduct %99, %99, %80 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
    scf.execute_region {
      %265 = math.log1p %cst_2 : f32
      %266 = vector.extract %151[3] : vector<9xf32>
      %267 = vector.splat %101 : vector<9x7xindex>
      %268 = index.divu %c4, %73
      %269 = vector.broadcast %171 : i1 to vector<3x4xi1>
      %dest_50, %accumulated_value_51 = vector.scan <mul>, %87, %269 {inclusive = true, reduction_dim = 0 : i64} : vector<4x3x4xi1>, vector<3x4xi1>
      %270 = math.log %10 : tensor<3x3xf32>
      %271 = bufferization.clone %alloc_18 : memref<9x7xi32> to memref<9x7xi32>
      %272 = index.sizeof
      %273 = arith.ori %c1134458198_i64, %94 : i64
      %274 = bufferization.to_tensor %alloc_33 : memref<9x9xi32>
      %275 = vector.bitcast %151 : vector<9xf32> to vector<9xf32>
      %dest_52, %accumulated_value_53 = vector.scan <add>, %133, %275 {inclusive = false, reduction_dim = 0 : i64} : vector<1x9xf32>, vector<9xf32>
      %276 = math.log10 %107 : tensor<9x7xf16>
      %277 = arith.remui %false, %false_9 : i1
      %278 = arith.xori %82, %171 : i1
      %279 = math.log1p %cst : f16
      scf.yield
    }
    %194 = index.divs %180, %c14
    %195 = arith.andi %171, %true : i1
    %196 = arith.subi %false_3, %false_3 : i1
    %197 = math.ipowi %94, %94 : i64
    vector.print %176 : vector<1x9xi32>
    %198 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - 128) * 4 - d3, d2, (d2 - 128) * 4)>(%143, %49, %101, %136)
    %199 = math.absf %33 : tensor<3x3xf16>
    %200 = math.round %6 : tensor<9x7xf16>
    %201 = index.maxs %147, %120
    %202 = arith.addf %cst_5, %cst_10 : f32
    %203 = arith.ori %46, %false_38 : i1
    %204 = arith.divui %c1134458198_i64, %94 : i64
    %205 = vector.extract_strided_slice %88 {offsets = [2, 1], sizes = [2, 1], strides = [1, 1]} : vector<4x3x4xi32> to vector<2x1x4xi32>
    %206 = index.ceildivu %c8, %116
    %207 = index.floordivs %62, %c9
    %208 = scf.while (%arg1 = %alloc_19) : (memref<3x3xi64>) -> memref<3x3xi64> {
      %265 = arith.remf %cst, %cst_1 : f16
      %266 = vector.extract_strided_slice %88 {offsets = [0], sizes = [3], strides = [1]} : vector<4x3x4xi32> to vector<3x3x4xi32>
      %267 = arith.andi %c23112_i16, %c23112_i16 : i16
      %268 = bufferization.clone %alloc_14 : memref<9x7xf32> to memref<9x7xf32>
      %false_50 = index.bool.constant false
      %269 = vector.insertelement %true, %20[%147 : index] : vector<3xi1>
      %270 = bufferization.to_memref %from_elements_41 : memref<9x7xi1>
      %271 = math.sqrt %cst_2 : f32
      scf.condition(%false_38) %alloc_12 : memref<3x3xi64>
    } do {
    ^bb0(%arg1: memref<3x3xi64>):
      %265 = vector.broadcast %c38503973_i32 : i32 to vector<3x4x3x4xi32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %88, %88, %265 : vector<4x3x4xi32>, vector<4x3x4xi32> into vector<3x4x3x4xi32>
      %267 = vector.broadcast %82 : i1 to vector<3x4xi1>
      %268 = vector.multi_reduction <or>, %87, %267 [0] : vector<4x3x4xi1> to vector<3x4xi1>
      %269 = arith.andi %c1134458198_i64, %94 : i64
      %270 = vector.broadcast %cst_10 : f32 to vector<1xf32>
      %271 = vector.multi_reduction <add>, %139, %270 [1] : vector<1x9xf32> to vector<1xf32>
      %272 = vector.extract %71[0] : vector<1xi1>
      %273 = vector.matrix_multiply %71, %127 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<1xi1>, vector<3xi1>) -> vector<3xi1>
      %274 = math.tan %reduced : tensor<7xf16>
      %275 = vector.broadcast %c38503973_i32 : i32 to vector<i32>
      vector.transfer_write %275, %alloc_33[%101, %c7] : vector<i32>, memref<9x9xi32>
      %276 = vector.splat %206 : vector<9x7xindex>
      %277 = tensor.empty() : tensor<9xi32>
      %278 = math.fpowi %collapsed, %277 : tensor<9xf16>, tensor<9xi32>
      %279 = arith.shrsi %c23112_i16, %c23112_i16 : i16
      %280 = vector.broadcast %extracted : f16 to vector<4xf16>
      vector.transfer_write %280, %alloc[%c15, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf16>, memref<9x9xf16>
      %inserted_50 = tensor.insert %cst_4 into %14[%c1, %c2] : tensor<3x3xf32>
      %cast = tensor.cast %277 : tensor<9xi32> to tensor<?xi32>
      %281 = vector.broadcast %c38503973_i32 : i32 to vector<1xi32>
      %dest_51, %accumulated_value_52 = vector.scan <mul>, %176, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<1x9xi32>, vector<1xi32>
      %282 = math.ctlz %11 : tensor<3x3xi64>
      scf.yield %arg1 : memref<3x3xi64>
    }
    memref.assume_alignment %alloc_24, 4 : memref<9x9xi1>
    %209 = arith.maxsi %82, %46 : i1
    %210 = math.sqrt %16 : tensor<9x7xf16>
    memref.copy %alloc_20, %178 : memref<3x3xi1> to memref<3x3xi1>
    %211 = index.floordivs %147, %c7
    %212 = arith.maxf %cst_1, %cst_7 : f16
    %213 = index.floordivs %180, %136
    %214 = vector.bitcast %72 : vector<1xi1> to vector<1xi1>
    %215 = bufferization.clone %178 : memref<3x3xi1> to memref<3x3xi1>
    %216 = index.add %120, %c15
    %217 = vector.load %alloc_13[%c2, %c2] : memref<3x3xf16>, vector<3x3xf16>
    %218 = arith.minsi %false, %false_6 : i1
    %219 = arith.addf %cst_5, %cst_0 : f32
    %220 = index.maxs %192, %194
    %alloca = memref.alloca() : memref<9x7xi64>
    %221 = bufferization.to_tensor %215 : memref<3x3xi1>
    %222 = math.floor %18 : tensor<7xf16>
    %223 = arith.shrsi %true, %false_3 : i1
    %224 = math.cttz %c23112_i16 : i16
    %225 = arith.remf %cst_1, %cst_31 : f16
    %226 = arith.addi %c38503973_i32, %c38503973_i32 : i32
    %227 = vector.create_mask %191, %162, %34 : vector<4x3x4xi1>
    %228 = index.floordivs %147, %73
    %229 = tensor.empty(%110, %135) : tensor<4x?x?xi64>
    memref.copy %alloc_17, %alloc : memref<9x9xf16> to memref<9x9xf16>
    %extracted_43 = tensor.extract %2[%c2, %c2, %c0] : tensor<4x3x4xi1>
    %extracted_44 = tensor.extract %1[%c0, %c0, %c3] : tensor<4x3x4xf16>
    %230 = arith.ori %c38503973_i32, %c38503973_i32 : i32
    %231 = math.powf %9, %9 : tensor<9x9xf16>
    %232 = vector.broadcast %c23112_i16 : i16 to vector<3xi16>
    %dest, %accumulated_value = vector.scan <minui>, %142, %232 {inclusive = true, reduction_dim = 0 : i64} : vector<3x3xi16>, vector<3xi16>
    %233 = bufferization.clone %alloc_17 : memref<9x9xf16> to memref<9x9xf16>
    %alloc_45 = memref.alloc() : memref<4x3x4xi1>
    memref.tensor_store %13, %alloc_45 : memref<4x3x4xi1>
    %234 = scf.if %true -> (memref<4x3x4xf32>) {
      %265 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%135, %166, %201, %c8)
      %266 = arith.xori %false_9, %46 : i1
      %267 = math.copysign %collapsed, %collapsed : tensor<9xf16>
      %268 = index.ceildivu %c6, %c9
      %269 = index.add %c3, %c0
      %270 = vector.bitcast %214 : vector<1xi1> to vector<1xi1>
      %271 = vector.bitcast %142 : vector<3x3xi16> to vector<3x3xi16>
      %272 = arith.andi %46, %false : i1
      %alloc_50 = memref.alloc() : memref<4x3x4xf32>
      scf.yield %alloc_50 : memref<4x3x4xf32>
    } else {
      %265 = vector.splat %cst : vector<9x9xf16>
      %cst_50 = arith.constant 1.000000e+00 : f16
      %cst_51 = arith.constant 0.000000e+00 : f16
      %266 = vector.transfer_read %21[%198], %cst_51 : tensor<7xf16>, vector<f16>
      %267 = math.log10 %14 : tensor<3x3xf32>
      %268 = vector.broadcast %162 : index to vector<3xindex>
      %269 = vector.broadcast %extracted_44 : f16 to vector<3xf16>
      vector.scatter %233[%c4, %c4] [%268], %127, %269 : memref<9x9xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %270 = scf.while (%arg1 = %c23112_i16) : (i16) -> i16 {
        %274 = arith.minsi %extracted_43, %extracted_43 : i1
        %275 = math.floor %cst_5 : f32
        %276 = tensor.empty() : tensor<9x9xi32>
        %277 = math.fpowi %9, %276 : tensor<9x9xf16>, tensor<9x9xi32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %278 = vector.transfer_read %12[%213, %198], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x3xi16>, vector<3xi16>
        memref.assume_alignment %161, 16 : memref<9x9xi1>
        %279 = vector.load %alloc_21[%c1, %c1] : memref<9x7xi1>, vector<9x7xi1>
        %280 = math.floor %9 : tensor<9x9xf16>
        %281 = arith.remui %82, %82 : i1
        scf.condition(%false) %c1_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        %274 = arith.shrui %c23112_i16, %arg1 : i16
        vector.print %184 : vector<9x9xf16>
        %275 = math.fpowi %cst_0, %c38503973_i32 : f32, i32
        %276 = index.floordivs %162, %110
        %277 = math.cttz %c38503973_i32 : i32
        %278 = arith.shrsi %94, %94 : i64
        %279 = arith.shrsi %false_9, %false_9 : i1
        %280 = arith.remui %c23112_i16, %arg1 : i16
        %281 = math.sqrt %cst_2 : f32
        %282 = index.divu %c5, %180
        %283 = arith.divui %true, %extracted_43 : i1
        %284 = arith.ori %false_38, %false_6 : i1
        %285 = math.log2 %cst_0 : f32
        %286 = math.round %10 : tensor<3x3xf32>
        %287 = math.absf %5 : tensor<3x3xf16>
        %288 = bufferization.to_memref %48 : memref<4x3x4xi64>
        scf.yield %c23112_i16 : i16
      }
      %271 = vector.broadcast %cst_50 : f16 to vector<9xf16>
      %dest_52, %accumulated_value_53 = vector.scan <add>, %184, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xf16>, vector<9xf16>
      %272 = math.cttz %58 : tensor<3x3xi16>
      %273 = scf.if %82 -> (memref<9x7xi32>) {
        %274 = math.sqrt %4 : tensor<9x9xf16>
        %275 = index.maxs %206, %116
        %276 = arith.maxf %cst_0, %cst_5 : f32
        %277 = arith.xori %false_9, %true : i1
        %278 = vector.matrix_multiply %99, %151 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
        %279 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 128, (d1 floordiv 4) floordiv 16, d2 + (d1 floordiv 4) floordiv 8)>(%136, %49, %c1)
        %280 = arith.subi %false, %false_38 : i1
        %281 = bufferization.to_memref %3 : memref<4x3x4xi1>
        scf.yield %alloc_18 : memref<9x7xi32>
      } else {
        %collapsed_55 = tensor.collapse_shape %6 [[0, 1]] : tensor<9x7xf16> into tensor<63xf16>
        %274 = index.divs %c5, %159
        %275 = index.maxs %147, %c15
        %276 = vector.insertelement %46, %71[%c4 : index] : vector<1xi1>
        %277 = math.round %14 : tensor<3x3xf32>
        %278 = index.add %c8, %206
        %279 = vector.broadcast %extracted : f16 to vector<f16>
        vector.transfer_write %279, %alloc[%207, %180] : vector<f16>, memref<9x9xf16>
        %280 = math.expm1 %cst_7 : f16
        scf.yield %alloc_25 : memref<9x7xi32>
      }
      %alloc_54 = memref.alloc() : memref<4x3x4xf32>
      scf.yield %alloc_54 : memref<4x3x4xf32>
    }
    %235 = arith.subi %false_38, %true : i1
    %236 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 + d1)>(%228, %220, %201)
    %237 = index.sizeof
    %238 = index.mul %c11, %101
    %239 = arith.remui %c23112_i16, %c23112_i16 : i16
    %240 = bufferization.clone %alloc_16 : memref<9x9xf32> to memref<9x9xf32>
    %241 = vector.flat_transpose %127 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %242 = vector.extract %71[0] : vector<1xi1>
    %243 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %139, %133, %80 : vector<1x9xf32>, vector<1x9xf32> into vector<9x9xf32>
    %collapsed_46 = tensor.collapse_shape %10 [[0, 1]] : tensor<3x3xf32> into tensor<9xf32>
    %244 = math.sqrt %6 : tensor<9x7xf16>
    %245 = index.casts %110 : index to i32
    %246 = index.mul %180, %207
    %247 = vector.reduction <mul>, %127 : vector<3xi1> into i1
    %248 = math.atan2 %collapsed, %collapsed : tensor<9xf16>
    %249 = math.log10 %168 : tensor<4x3x4xf32>
    %250 = index.maxu %c15, %228
    %251 = vector.broadcast %true : i1 to vector<3x3xi1>
    %252 = vector.outerproduct %241, %241, %251 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
    %253 = arith.xori %94, %94 : i64
    %254 = scf.if %true -> (memref<9x7xi1>) {
      memref.assume_alignment %233, 16 : memref<9x9xf16>
      %265 = vector.broadcast %cst_4 : f32 to vector<1xf32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %133, %151, %265 : vector<1x9xf32>, vector<9xf32> into vector<1xf32>
      %267 = vector.load %alloc_12[%c1, %c1] : memref<3x3xi64>, vector<3x3xi64>
      affine.for %arg1 = 0 to 108 {
      }
      %268 = arith.shrui %false_9, %46 : i1
      %269 = math.ctlz %113 : tensor<i32>
      %270 = arith.floordivsi %c1134458198_i64, %c1134458198_i64 : i64
      %271 = math.log10 %cst : f16
      scf.yield %alloc_21 : memref<9x7xi1>
    } else {
      %265 = vector.outerproduct %99, %151, %80 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
      %266 = arith.shrsi %c1134458198_i64, %94 : i64
      %267 = arith.remui %false_38, %false_9 : i1
      %268 = vector.extract_strided_slice %99 {offsets = [4], sizes = [3], strides = [1]} : vector<9xf32> to vector<3xf32>
      %269 = vector.insertelement %cst_0, %268[%143 : index] : vector<3xf32>
      %inserted_50 = tensor.insert %extracted_43 into %2[%c0, %c1, %c2] : tensor<4x3x4xi1>
      %270 = math.log10 %extracted_44 : f16
      %271 = math.ceil %1 : tensor<4x3x4xf16>
      scf.yield %alloc_21 : memref<9x7xi1>
    }
    %inserted_47 = tensor.insert %cst_31 into %33[%c0, %c1] : tensor<3x3xf16>
    %255 = tensor.empty() : tensor<3x3xi64>
    %256 = arith.remsi %extracted_43, %extracted_43 : i1
    %splat_48 = tensor.splat %extracted_44 : tensor<9x9xf16>
    %257 = memref.alloca_scope  -> (f16) {
      %265 = vector.bitcast %151 : vector<9xf32> to vector<9xi32>
      %inserted_50 = tensor.insert %c23112_i16 into %12[%c1, %c2] : tensor<3x3xi16>
      %266 = arith.remf %cst_2, %cst_8 : f32
      %267 = arith.addf %cst_7, %cst : f16
      bufferization.dealloc_tensor %3 : tensor<4x3x4xi1>
      %268 = vector.broadcast %c3 : index to vector<4xindex>
      %269 = vector.broadcast %false_38 : i1 to vector<4xi1>
      %270 = vector.broadcast %c38503973_i32 : i32 to vector<4xi32>
      vector.scatter %alloc_25[%c1, %c2] [%268], %269, %270 : memref<9x7xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %271 = math.tanh %collapsed : tensor<9xf16>
      %272 = bufferization.to_memref %from_elements : memref<3x3xi1>
      %273 = math.cttz %221 : tensor<3x3xi1>
      %274 = math.log1p %9 : tensor<9x9xf16>
      %275 = vector.extract %99[7] : vector<9xf32>
      %276 = vector.reduction <maxf>, %151 : vector<9xf32> into f32
      %277 = arith.remf %extracted_44, %extracted_44 : f16
      %278 = arith.shrui %false_6, %true : i1
      %279 = vector.reduction <xor>, %20 : vector<3xi1> into i1
      %280 = index.ceildivu %116, %c14
      %281 = index.divu %180, %c8
      %282 = math.floor %cst_31 : f16
      %from_elements_51 = tensor.from_elements %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %94, %94, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %94, %94, %94, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %94, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64, %c1134458198_i64 : tensor<9x9xi64>
      %283 = math.log10 %5 : tensor<3x3xf16>
      %284 = arith.divui %false_38, %false : i1
      %285 = math.log10 %reduced : tensor<7xf16>
      %286 = index.floordivs %198, %206
      %287 = memref.load %233[%c2, %c2] : memref<9x9xf16>
      %collapsed_52 = tensor.collapse_shape %163 [[0, 1]] : tensor<9x7xi32> into tensor<63xi32>
      scf.if %false_6 {
        %294 = arith.negf %extracted_44 : f16
        %collapsed_55 = tensor.collapse_shape %4 [[0, 1]] : tensor<9x9xf16> into tensor<81xf16>
        %295 = arith.floordivsi %false_6, %46 : i1
        %296 = vector.reduction <xor>, %20 : vector<3xi1> into i1
        memref.copy %272, %215 : memref<3x3xi1> to memref<3x3xi1>
        %297 = arith.negf %cst_31 : f16
        %298 = memref.atomic_rmw mulf %cst_5, %234[%c1, %c0, %c3] : (f32, memref<4x3x4xf32>) -> f32
        %collapsed_56 = tensor.collapse_shape %8 [[0, 1]] : tensor<3x3xi1> into tensor<9xi1>
      }
      %288 = vector.broadcast %c38503973_i32 : i32 to vector<4x4xi32>
      %dest_53, %accumulated_value_54 = vector.scan <maxui>, %86, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<4x3x4xi32>, vector<4x4xi32>
      %289 = vector.extract %88[0, 0] : vector<4x3x4xi32>
      %290 = index.sizeof
      %291 = index.mul %246, %101
      %292 = bufferization.to_memref %9 : memref<9x9xf16>
      %293 = math.round %33 : tensor<3x3xf16>
      memref.alloca_scope.return %extracted : f16
    }
    %258 = index.maxu %194, %c8
    %259 = arith.maxf %cst, %cst_1 : f16
    %260 = tensor.empty() : tensor<9x7xi1>
    %261 = linalg.copy ins(%from_elements_41 : tensor<9x7xi1>) outs(%260 : tensor<9x7xi1>) -> tensor<9x7xi1>
    %262 = tensor.empty() : tensor<7x9xf16>
    %transposed = linalg.transpose ins(%107 : tensor<9x7xf16>) outs(%262 : tensor<7x9xf16>) permutation = [1, 0] 
    %alloc_49 = memref.alloc() : memref<9xi32>
    linalg.reduce ins(%163 : tensor<9x7xi32>) outs(%alloc_49 : memref<9xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %265 = index.maxu %116, %136
        %266 = arith.floordivsi %false_38, %false : i1
        %267 = tensor.empty() : tensor<4x3x4xi32>
        %268 = math.fpowi %1, %267 : tensor<4x3x4xf16>, tensor<4x3x4xi32>
        %269 = vector.splat %c4 : vector<9x7xindex>
        %270 = memref.load %254[%c2, %c3] : memref<9x7xi1>
        %271 = math.floor %5 : tensor<3x3xf16>
        %272 = math.round %21 : tensor<7xf16>
        %273 = math.exp %17 : tensor<9x7xf16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %263 = scf.parallel (%arg1, %arg2) = (%101, %c7) to (%c14, %216) step (%c3, %c7) init (%22) -> tensor<f16> {
      %265 = math.cttz %8 : tensor<3x3xi1>
      %266 = index.floordivs %159, %c5
      %267 = arith.shrui %c23112_i16, %c23112_i16 : i16
      %268 = tensor.empty() : tensor<9x9xf16>
      %269 = tensor.empty() : tensor<9x7xf32>
      %cast = tensor.cast %from_elements : tensor<3x3xi1> to tensor<?x?xi1>
      %270 = math.round %257 : f16
      memref.store %cst_2, %240[%c5, %c6] : memref<9x9xf32>
      %271 = tensor.empty() : tensor<3x3xf16>
      %272 = vector.broadcast %extracted_43 : i1 to vector<3x3xi1>
      %273 = vector.outerproduct %241, %20, %272 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
      %274 = vector.broadcast %false : i1 to vector<1x1xi1>
      %275 = vector.outerproduct %71, %71, %274 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
      %276 = math.log1p %cst_1 : f16
      %277 = math.ctlz %221 : tensor<3x3xi1>
      %rank = tensor.rank %0 : tensor<3x3xi16>
      %278 = memref.realloc %alloc_49 : memref<9xi32> to memref<9xi32>
      %279 = math.sqrt %22 : tensor<f16>
      %280 = tensor.empty() : tensor<f16>
      scf.reduce(%280)  : tensor<f16> {
      ^bb0(%arg3: tensor<f16>, %arg4: tensor<f16>):
        %281 = index.maxu %c10, %198
        %true_50 = index.bool.constant true
        %from_elements_51 = tensor.from_elements %171, %true, %46, %46, %false_38, %false_38, %false_6, %false_3, %false_9, %false_3, %false, %false_3, %false_38, %82, %82, %46, %false_3, %false_6, %extracted_43, %82, %false_6, %false, %false, %false_3, %false_6, %false, %46, %171, %false_38, %true_50, %false_3, %false_38, %false_38, %false, %false_9, %true, %false_6, %false, %false, %false, %82, %false_6, %46, %46, %true_50, %82, %171, %82, %false_6, %false_6, %false_6, %46, %false_6, %false_6, %false_38, %false_6, %extracted_43, %false_6, %true, %false, %false_6, %171, %46 : tensor<9x7xi1>
        %282 = math.log %cst_2 : f32
        %283 = math.log2 %5 : tensor<3x3xf16>
        %284 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %139, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<1x9xf32>, vector<1xf32>
        %285 = arith.xori %true, %true : i1
        %286 = vector.extract %139[0] : vector<1x9xf32>
        %287 = tensor.empty() : tensor<f16>
        scf.reduce.return %287 : tensor<f16>
      }
      scf.yield
    }
    %264 = affine.vector_load %178[%220, %135] : memref<3x3xi1>, vector<4xi1>
    affine.vector_store %264, %alloc_24[%228, %c4] : memref<9x9xi1>, vector<4xi1>
    vector.print %20 : vector<3xi1>
    vector.print %71 : vector<1xi1>
    vector.print %72 : vector<1xi1>
    vector.print %80 : vector<9x9xf32>
    vector.print %86 : vector<4x3x4xi32>
    vector.print %87 : vector<4x3x4xi1>
    vector.print %88 : vector<4x3x4xi32>
    vector.print %99 : vector<9xf32>
    vector.print %127 : vector<3xi1>
    vector.print %133 : vector<1x9xf32>
    vector.print %139 : vector<1x9xf32>
    vector.print %142 : vector<3x3xi16>
    vector.print %151 : vector<9xf32>
    vector.print %176 : vector<1x9xi32>
    vector.print %184 : vector<9x9xf16>
    vector.print %189 : vector<f16>
    vector.print %205 : vector<2x1x4xi32>
    vector.print %214 : vector<1xi1>
    vector.print %217 : vector<3x3xf16>
    vector.print %227 : vector<4x3x4xi1>
    vector.print %241 : vector<3xi1>
    vector.print %264 : vector<4xi1>
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c1134458198_i64 : i64
    vector.print %c38503973_i32 : i32
    vector.print %cst_2 : f32
    vector.print %false_3 : i1
    vector.print %c23112_i16 : i16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f32
    vector.print %false_6 : i1
    vector.print %cst_7 : f16
    vector.print %cst_8 : f32
    vector.print %false_9 : i1
    vector.print %cst_10 : f32
    vector.print %46 : i1
    vector.print %true : i1
    vector.print %cst_31 : f16
    vector.print %82 : i1
    vector.print %extracted : f16
    vector.print %94 : i64
    vector.print %false_38 : i1
    vector.print %171 : i1
    vector.print %extracted_43 : i1
    vector.print %extracted_44 : f16
    vector.print %257 : f16
    return
  }
}
