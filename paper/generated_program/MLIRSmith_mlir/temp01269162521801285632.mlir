module {
  func.func @func1(%arg0: memref<15xi1>) -> index {
    %false = arith.constant false
    %c487023468_i64 = arith.constant 487023468 : i64
    %false_0 = arith.constant false
    %cst = arith.constant 5.273600e+04 : f16
    %cst_1 = arith.constant 4.428800e+04 : f16
    %cst_2 = arith.constant 3.824000e+04 : f16
    %c28871_i16 = arith.constant 28871 : i16
    %c199_i16 = arith.constant 199 : i16
    %cst_3 = arith.constant 4.425600e+04 : f16
    %c1109316681_i64 = arith.constant 1109316681 : i64
    %true = arith.constant true
    %cst_4 = arith.constant 0x4E697239 : f32
    %c-6183_i16 = arith.constant -6183 : i16
    %c1237570205_i64 = arith.constant 1237570205 : i64
    %c24519_i16 = arith.constant 24519 : i16
    %cst_5 = arith.constant 6.307200e+04 : f16
    %0 = tensor.empty() : tensor<15xi1>
    %1 = tensor.empty() : tensor<15xf16>
    %2 = tensor.empty() : tensor<15xi32>
    %3 = tensor.empty() : tensor<12x7x12xi1>
    %4 = tensor.empty() : tensor<12x7x12xi32>
    %5 = tensor.empty() : tensor<15xf16>
    %6 = tensor.empty() : tensor<15xi64>
    %7 = tensor.empty() : tensor<15xi64>
    %8 = tensor.empty() : tensor<12x7x12xf16>
    %9 = tensor.empty() : tensor<15xi16>
    %10 = tensor.empty() : tensor<15xi32>
    %11 = tensor.empty() : tensor<15xi64>
    %12 = tensor.empty() : tensor<15xf16>
    %13 = tensor.empty() : tensor<15xf16>
    %14 = tensor.empty() : tensor<15xi64>
    %15 = tensor.empty() : tensor<15xi16>
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
    %alloc = memref.alloc() : memref<15xf16>
    %alloc_6 = memref.alloc() : memref<15xf32>
    %alloc_7 = memref.alloc() : memref<12x7x12xf16>
    %alloc_8 = memref.alloc() : memref<12x7x12xi64>
    %alloc_9 = memref.alloc() : memref<12x7x12xf16>
    %alloc_10 = memref.alloc() : memref<15xi64>
    %alloc_11 = memref.alloc() : memref<12x7x12xf16>
    %alloc_12 = memref.alloc() : memref<12x7x12xi1>
    %alloc_13 = memref.alloc() : memref<15xi1>
    %alloc_14 = memref.alloc() : memref<15xi16>
    %alloc_15 = memref.alloc() : memref<15xi64>
    %alloc_16 = memref.alloc() : memref<15xi1>
    %alloc_17 = memref.alloc() : memref<15xi32>
    %alloc_18 = memref.alloc() : memref<15xi1>
    %alloc_19 = memref.alloc() : memref<15xi64>
    %alloc_20 = memref.alloc() : memref<15xi16>
    %16 = tensor.empty() : tensor<15xi32>
    %17 = linalg.copy ins(%2 : tensor<15xi32>) outs(%16 : tensor<15xi32>) -> tensor<15xi32>
    %18 = tensor.empty() : tensor<15xi1>
    %transposed = linalg.transpose ins(%alloc_16 : memref<15xi1>) outs(%18 : tensor<15xi1>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<12x12xi32>
    linalg.reduce ins(%4 : tensor<12x7x12xi32>) outs(%alloc_21 : memref<12x12xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %254 = arith.divf %cst_3, %cst_1 : f16
        %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
        %255 = bufferization.to_memref %1 : memref<15xf16>
        %256 = vector.broadcast %c1237570205_i64 : i64 to vector<12xi64>
        %257 = vector.broadcast %c1109316681_i64 : i64 to vector<12x12xi64>
        %258 = vector.outerproduct %256, %256, %257 {kind = #vector.kind<minsi>} : vector<12xi64>, vector<12xi64>
        %259 = arith.maxf %cst_1, %cst_5 : f16
        %260 = math.absf %12 : tensor<15xf16>
        %261 = math.roundeven %12 : tensor<15xf16>
        %262 = arith.cmpf ugt, %cst_3, %cst : f16
        %c0_i32_60 = arith.constant 0 : i32
        linalg.yield %c0_i32_60 : i32
      }
    scf.parallel (%arg1, %arg2) = (%c8, %c14) to (%c11, %c3) step (%c1, %c2) {
      %254 = arith.maxf %cst_1, %cst_3 : f16
      %255 = arith.mulf %cst_1, %cst_1 : f16
      memref.copy %alloc_18, %alloc_13 : memref<15xi1> to memref<15xi1>
      %256 = arith.subi %false, %false_0 : i1
      scf.if %true {
        %268 = affine.max affine_map<(d0, d1, d2) -> ((d1 * 16 - 15) * 32 + d1 * 16)>(%c13, %c5, %c3)
        %269 = arith.floordivsi %c199_i16, %c-6183_i16 : i16
        %270 = index.divs %c11, %c15
        %271 = vector.broadcast %cst_2 : f16 to vector<7xf16>
        %272 = vector.insertelement %cst_3, %271[%c4 : index] : vector<7xf16>
        %273 = arith.divsi %false, %false_0 : i1
        %274 = vector.multi_reduction <add>, %271, %271 [] : vector<7xf16> to vector<7xf16>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %271, %271, %cst_2 : vector<7xf16>, vector<7xf16> into f16
        %276 = math.cttz %c28871_i16 : i16
      }
      %257 = math.absi %14 : tensor<15xi64>
      %258 = math.absf %5 : tensor<15xf16>
      %c1_i32 = arith.constant 1 : i32
      %259 = vector.broadcast %c1_i32 : i32 to vector<15xi32>
      %260 = vector.broadcast %false : i1 to vector<15xi1>
      %261 = vector.maskedload %alloc_17[%c4], %260, %259 : memref<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %262 = arith.cmpf false, %cst_4, %cst_4 : f32
      %263 = arith.shrsi %c28871_i16, %c24519_i16 : i16
      %264 = math.exp2 %cst_5 : f16
      %265 = math.expm1 %cst_5 : f16
      %266 = tensor.empty(%c12) : tensor<?xf32>
      memref.copy %alloc_10, %alloc_15 : memref<15xi64> to memref<15xi64>
      %267 = vector.splat %c11 : vector<12x7x12xindex>
      %collapsed_59 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<12x7x12xf16> into tensor<84x12xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c2, %c15, %c9] : memref<12x7x12xi64>, vector<12xi64>
    affine.vector_store %19, %alloc_19[%c2] : memref<15xi64>, vector<12xi64>
    %alloc_22 = memref.alloc() : memref<15xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%alloc_19, %alloc_22 : memref<15xi64>, memref<15xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = math.ipowi %11, %6 : tensor<15xi64>
    %23 = math.floor %cst_1 : f16
    %24 = math.atan2 %1, %5 : tensor<15xf16>
    %25 = index.floordivs %c7, %c12
    %26 = index.divu %c2, %c0
    %27 = tensor.empty() : tensor<15xi32>
    %cst_23 = arith.constant 3.166400e+04 : f16
    %28 = scf.while (%arg1 = %alloc_13) : (memref<15xi1>) -> memref<15xi1> {
      %254 = arith.remf %cst_5, %cst_2 : f16
      %255 = vector.extract %19[3] : vector<12xi64>
      %splat = tensor.splat %c199_i16 : tensor<15xi16>
      %256 = vector.broadcast %c9 : index to vector<7xindex>
      %257 = vector.broadcast %false_0 : i1 to vector<7xi1>
      vector.scatter %alloc_13[%c4] [%256], %257, %257 : memref<15xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      %258 = arith.remui %c1109316681_i64, %c1109316681_i64 : i64
      %c2075284932_i32 = arith.constant 2075284932 : i32
      %259 = vector.broadcast %c0 : index to vector<15xindex>
      %260 = vector.broadcast %false : i1 to vector<15xi1>
      vector.scatter %arg1[%c0] [%259], %260, %260 : memref<15xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %alloca_59 = memref.alloca() : memref<12x7x12xf16>
      scf.condition(%true) %alloc_13 : memref<15xi1>
    } do {
    ^bb0(%arg1: memref<15xi1>):
      %254 = math.atan2 %cst_4, %cst_4 : f32
      %255 = vector.broadcast %false_0 : i1 to vector<7xi1>
      %256 = vector.maskedload %alloc_13[%c9], %255, %255 : memref<15xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      affine.store %c199_i16, %alloc_20[%c15] : memref<15xi16>
      %257 = math.round %13 : tensor<15xf16>
      %258 = vector.broadcast %cst : f16 to vector<15xf16>
      %cst_59 = arith.constant 0x4E14FC28 : f32
      %259 = vector.extract_strided_slice %19 {offsets = [9], sizes = [1], strides = [1]} : vector<12xi64> to vector<1xi64>
      %260 = math.roundeven %8 : tensor<12x7x12xf16>
      %c1_i32 = arith.constant 1 : i32
      %261 = vector.broadcast %c1_i32 : i32 to vector<15xi32>
      %262 = vector.transfer_write %261, %4[%25, %c1, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<15xi32>, tensor<12x7x12xi32>
      %alloca_60 = memref.alloca() : memref<15xf32>
      %263 = math.copysign %1, %5 : tensor<15xf16>
      %264 = vector.broadcast %false_0 : i1 to vector<15xi1>
      %265 = vector.maskedload %alloc_16[%c10], %264, %264 : memref<15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      %266 = math.rsqrt %5 : tensor<15xf16>
      %267 = math.absi %9 : tensor<15xi16>
      %alloca_61 = memref.alloca() : memref<15xf32>
      bufferization.dealloc_tensor %6 : tensor<15xi64>
      scf.yield %arg1 : memref<15xi1>
    }
    %29 = vector.insertelement %c1109316681_i64, %19[%c7 : index] : vector<12xi64>
    %30 = arith.remf %cst_4, %cst_4 : f32
    %31 = memref.realloc %alloc_6 : memref<15xf32> to memref<15xf32>
    %32 = vector.broadcast %cst_1 : f16 to vector<f16>
    %33 = vector.transfer_write %32, %1[%25] : vector<f16>, tensor<15xf16>
    %34 = arith.remui %c1109316681_i64, %c1109316681_i64 : i64
    %35 = index.sizeof
    %36 = index.add %c3, %c0
    %37 = math.log1p %cst_5 : f16
    %38 = memref.realloc %alloc_22 : memref<15xi64> to memref<12xi64>
    %39 = vector.broadcast %c487023468_i64 : i64 to vector<12x12xi64>
    %40 = vector.outerproduct %19, %19, %39 {kind = #vector.kind<or>} : vector<12xi64>, vector<12xi64>
    %41 = vector.multi_reduction <mul>, %19, %c1109316681_i64 [0] : vector<12xi64> to i64
    %42 = math.absf %1 : tensor<15xf16>
    %43 = arith.remf %cst_2, %cst_1 : f16
    %44 = math.ctlz %7 : tensor<15xi64>
    %45 = arith.floordivsi %41, %c1237570205_i64 : i64
    %46 = math.log1p %13 : tensor<15xf16>
    %47 = math.exp %1 : tensor<15xf16>
    %48 = arith.maxf %cst_3, %cst_1 : f16
    %49 = vector.bitcast %19 : vector<12xi64> to vector<12xi64>
    %50 = tensor.empty() : tensor<15xi64>
    %51 = index.divu %c12, %c2
    %52 = vector.load %alloc_11[%c10, %c0, %c3] : memref<12x7x12xf16>, vector<15xf16>
    %53 = index.ceildivu %c11, %c3
    %54 = vector.broadcast %true : i1 to vector<15xi1>
    %c0_i32 = arith.constant 0 : i32
    %55 = vector.broadcast %c0_i32 : i32 to vector<15xi32>
    %56 = vector.gather %8[%c14, %c0, %c2] [%55], %54, %52 : tensor<12x7x12xf16>, vector<15xi32>, vector<15xi1>, vector<15xf16> into vector<15xf16>
    %57 = arith.minf %cst_5, %cst_2 : f16
    %generated = tensor.generate %c9 {
    ^bb0(%arg1: index):
      %254 = math.ceil %13 : tensor<15xf16>
      %255 = index.casts %c12 : index to i32
      %256 = tensor.empty() : tensor<12x7x12xf16>
      %mapped_59 = linalg.map ins(%alloc_7 : memref<12x7x12xf16>) outs(%256 : tensor<12x7x12xf16>)
        (%in: f16) {
          %cst_60 = arith.constant 1.000000e+00 : f16
          %cst_61 = arith.constant 0.000000e+00 : f16
          %258 = vector.transfer_read %8[%c1, %c7, %c10], %cst_61 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<12x7x12xf16>, vector<12x15xf16>
          %259 = arith.remf %cst, %cst_1 : f16
          %260 = vector.extract %54[1] : vector<15xi1>
          %261 = arith.divui %c-6183_i16, %c24519_i16 : i16
          %262 = arith.remui %c28871_i16, %c-6183_i16 : i16
          %263 = memref.load %alloc_7[%c9, %c4, %c10] : memref<12x7x12xf16>
          %264 = vector.bitcast %54 : vector<15xi1> to vector<15xi1>
          %265 = math.cttz %4 : tensor<12x7x12xi32>
          %266 = arith.xori %c487023468_i64, %c1237570205_i64 : i64
          %267 = index.casts %c1237570205_i64 : i64 to index
          %268 = bufferization.to_memref %20 : memref<i64>
          %269 = vector.multi_reduction <mul>, %52, %cst [0] : vector<15xf16> to f16
          %270 = vector.broadcast %c0_i32 : i32 to vector<15x15xi32>
          %271 = vector.outerproduct %55, %55, %270 {kind = #vector.kind<add>} : vector<15xi32>, vector<15xi32>
          %272 = arith.cmpf oge, %cst_4, %cst_4 : f32
          %c1804044403_i64 = arith.constant 1804044403 : i64
          %273 = math.copysign %cst, %cst_2 : f16
          %274 = math.floor %cst : f16
          %275 = affine.max affine_map<(d0) -> (d0 + d0 mod 128, -d0, (d0 floordiv 16) mod 128, d0 mod 128 + d0 mod 16)>(%53)
          %276 = math.log10 %256 : tensor<12x7x12xf16>
          %277 = arith.remui %c487023468_i64, %c1109316681_i64 : i64
          %278 = tensor.empty(%c15) : tensor<?xi16>
          %279 = vector.broadcast %false : i1 to vector<7xi1>
          %280 = vector.maskedload %alloc_18[%c13], %279, %279 : memref<15xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %alloca_62 = memref.alloca() : memref<15xi32>
          %281 = affine.min affine_map<(d0) -> (0)>(%c7)
          affine.store %false_0, %alloc_18[%c9] : memref<15xi1>
          %282 = arith.remui %c1237570205_i64, %c1109316681_i64 : i64
          %283 = index.floordivs %267, %51
          %284 = arith.addf %cst_4, %cst_4 : f32
          memref.tensor_store %15, %alloc_14 : memref<15xi16>
          %285 = math.expm1 %269 : f16
          %286 = math.absi %6 : tensor<15xi64>
          %287 = vector.broadcast %c-6183_i16 : i16 to vector<12x7x12xi16>
          %cst_63 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_63 : f16
        }
      %257 = math.rsqrt %12 : tensor<15xf16>
      tensor.yield %c0_i32 : i32
    } : tensor<?xi32>
    %inserted = tensor.insert %cst_2 into %1[%c0] : tensor<15xf16>
    %58 = math.rsqrt %8 : tensor<12x7x12xf16>
    %59 = arith.xori %c199_i16, %c199_i16 : i16
    %60 = math.cttz %c0_i32 : i32
    %61 = arith.cmpf oeq, %cst, %cst_2 : f16
    %62 = tensor.empty() : tensor<15xi16>
    %mapped = linalg.map ins(%15 : tensor<15xi16>) outs(%62 : tensor<15xi16>)
      (%in: i16) {
        %254 = math.atan %cst_1 : f16
        memref.store %cst, %alloc_11[%c0, %c6, %c5] : memref<12x7x12xf16>
        %255 = math.round %cst_1 : f16
        %256 = arith.maxf %cst_4, %cst_4 : f32
        %257 = math.round %5 : tensor<15xf16>
        %258 = affine.for %arg1 = 0 to 52 iter_args(%arg2 = %alloc_9) -> (memref<12x7x12xf16>) {
          affine.yield %alloc_9 : memref<12x7x12xf16>
        }
        %259 = arith.maxf %cst_1, %cst_3 : f16
        %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<12x7x12xi32>) {
        ^bb0(%out: i32):
          %288 = math.tan %5 : tensor<15xf16>
          %289 = math.log %1 : tensor<15xf16>
          %290 = tensor.empty(%c12) : tensor<12x7x?xi32>
          memref.copy %alloc_22, %alloc_10 : memref<15xi64> to memref<15xi64>
          %291 = arith.minf %cst_5, %cst_5 : f16
          %292 = tensor.empty() : tensor<12x7xf16>
          %293 = tensor.empty() : tensor<7x7xf16>
          %294 = tensor.empty() : tensor<12x7xf16>
          %295 = linalg.matmul ins(%292, %293 : tensor<12x7xf16>, tensor<7x7xf16>) outs(%294 : tensor<12x7xf16>) -> tensor<12x7xf16>
          %296 = math.copysign %294, %294 : tensor<12x7xf16>
          %297 = math.round %8 : tensor<12x7x12xf16>
          %298 = math.log1p %12 : tensor<15xf16>
          %alloca_61 = memref.alloca() : memref<15xf32>
          %299 = math.log10 %8 : tensor<12x7x12xf16>
          %300 = vector.load %alloc_6[%c4] : memref<15xf32>, vector<15xf32>
          %301 = arith.remui %c-6183_i16, %c24519_i16 : i16
          %expanded_62 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<12x7x12xi1> into tensor<12x7x12x1xi1>
          %302 = math.round %1 : tensor<15xf16>
          %303 = vector.bitcast %49 : vector<12xi64> to vector<12xi64>
          %304 = math.fma %cst_1, %cst_2, %cst_5 : f16
          %expanded_63 = tensor.expand_shape %7 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
          %305 = math.log1p %8 : tensor<12x7x12xf16>
          %306 = index.floordivs %c15, %26
          %307 = math.cttz %2 : tensor<15xi32>
          %splat = tensor.splat %cst : tensor<15xf16>
          %308 = math.absi %6 : tensor<15xi64>
          %309 = vector.insertelement %cst_1, %56[%25 : index] : vector<15xf16>
          %310 = math.floor %cst_2 : f16
          %311 = arith.remf %cst_4, %cst_4 : f32
          %312 = vector.matrix_multiply %52, %56 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf16>, vector<15xf16>) -> vector<1xf16>
          %alloc_64 = memref.alloc() : memref<15xi64>
          %alloca_65 = memref.alloca() : memref<15xi32>
          %313 = vector.transpose %312, [0] : vector<1xf16> to vector<1xf16>
          %314 = bufferization.to_tensor %alloc_8 : memref<12x7x12xi64>
          %315 = vector.broadcast %c1237570205_i64 : i64 to vector<12x12xi64>
          %316 = vector.outerproduct %49, %19, %315 {kind = #vector.kind<minui>} : vector<12xi64>, vector<12xi64>
          linalg.yield %out : i32
        } -> tensor<12x7x12xi32>
        memref.alloca_scope  {
          %288 = math.round %cst : f16
          memref.tensor_store %6, %alloc_10 : memref<15xi64>
          %289 = index.floordivs %c13, %c3
          %inserted_61 = tensor.insert %c1109316681_i64 into %7[%c10] : tensor<15xi64>
          %290 = vector.load %alloc_12[%c6, %c1, %c4] : memref<12x7x12xi1>, vector<12x7x12xi1>
          %291 = math.round %cst_1 : f16
          %292 = arith.muli %false_0, %false_0 : i1
          %293 = arith.minf %cst_4, %cst_4 : f32
          %294 = vector.broadcast %false_0 : i1 to vector<7x12xi1>
          %295 = vector.insert %294, %290 [2] : vector<7x12xi1> into vector<12x7x12xi1>
          %296 = arith.cmpf true, %cst_4, %cst_4 : f32
          %alloca_62 = memref.alloca() : memref<15xf16>
          memref.store %false, %alloc_18[%c14] : memref<15xi1>
          %splat = tensor.splat %41 : tensor<12x7x12xi64>
          %297 = math.copysign %cst_2, %cst_1 : f16
          %298 = index.add %c7, %35
          %299 = arith.floordivsi %41, %c487023468_i64 : i64
          %300 = math.roundeven %8 : tensor<12x7x12xf16>
          %301 = math.absf %8 : tensor<12x7x12xf16>
          %302 = math.log1p %cst : f16
          %303 = math.log1p %5 : tensor<15xf16>
          %304 = vector.transpose %19, [0] : vector<12xi64> to vector<12xi64>
          memref.store %c1237570205_i64, %alloc_19[%c6] : memref<15xi64>
          %305 = math.log10 %cst_5 : f16
          %306 = arith.remsi %true, %false_0 : i1
          %307 = math.log %5 : tensor<15xf16>
          %308 = math.log %8 : tensor<12x7x12xf16>
          %cst_63 = arith.constant 1.000000e+00 : f16
          %309 = vector.transfer_read %12[%53], %cst_63 : tensor<15xf16>, vector<f16>
          %310 = math.absf %5 : tensor<15xf16>
          %311 = arith.divui %c487023468_i64, %c1109316681_i64 : i64
          %alloc_64 = memref.alloc() : memref<15xi16>
          %312 = math.log %13 : tensor<15xf16>
          %313 = bufferization.to_tensor %alloc_11 : memref<12x7x12xf16>
        }
        %261 = arith.remf %cst_5, %cst_3 : f16
        %262 = math.round %13 : tensor<15xf16>
        affine.for %arg1 = 0 to 58 {
        }
        %263 = arith.minsi %c-6183_i16, %in : i16
        %264 = affine.for %arg1 = 0 to 85 iter_args(%arg2 = %3) -> (tensor<12x7x12xi1>) {
          affine.yield %3 : tensor<12x7x12xi1>
        }
        %265 = vector.maskedload %alloc_13[%c14], %54, %54 : memref<15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %266 = math.roundeven %5 : tensor<15xf16>
        %267 = vector.multi_reduction <mul>, %52, %cst_1 [0] : vector<15xf16> to f16
        %268 = vector.broadcast %c0_i32 : i32 to vector<15x15xi32>
        %269 = vector.outerproduct %55, %55, %268 {kind = #vector.kind<maxsi>} : vector<15xi32>, vector<15xi32>
        %270 = vector.load %alloc[%c10] : memref<15xf16>, vector<15xf16>
        %alloc_59 = memref.alloc() : memref<12x7x12xf16>
        %271 = arith.maxsi %true, %false : i1
        %272 = arith.remf %cst_2, %267 : f16
        %273 = bufferization.clone %alloc_20 : memref<15xi16> to memref<15xi16>
        %274 = vector.broadcast %c2 : index to vector<12xindex>
        %275 = vector.broadcast %false : i1 to vector<12xi1>
        vector.scatter %alloc_18[%c13] [%274], %275, %275 : memref<15xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %276 = vector.broadcast %c7 : index to vector<12xindex>
        %277 = vector.broadcast %true : i1 to vector<12xi1>
        %278 = vector.broadcast %in : i16 to vector<12xi16>
        vector.scatter %273[%c9] [%276], %277, %278 : memref<15xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %279 = affine.for %arg1 = 0 to 4 iter_args(%arg2 = %alloc_10) -> (memref<15xi64>) {
          affine.yield %alloc_22 : memref<15xi64>
        }
        %280 = vector.broadcast %41 : i64 to vector<12x7x12xi64>
        %281 = vector.broadcast %false : i1 to vector<12x7x12xi1>
        %282 = vector.broadcast %c0_i32 : i32 to vector<12x7x12xi32>
        %283 = vector.gather %alloc_10[%c2] [%282], %281, %280 : memref<15xi64>, vector<12x7x12xi32>, vector<12x7x12xi1>, vector<12x7x12xi64> into vector<12x7x12xi64>
        %284 = vector.multi_reduction <add>, %270, %cst_5 [0] : vector<15xf16> to f16
        %285 = bufferization.to_memref %2 : memref<15xi32>
        %286 = vector.broadcast %cst_3 : f16 to vector<f16>
        vector.transfer_write %286, %alloc[%c6] : vector<f16>, memref<15xf16>
        %287 = arith.cmpi uge, %c1109316681_i64, %41 : i64
        %collapsed_60 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<12x7x12xf16> into tensor<84x12xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %63 = arith.remsi %false_0, %false : i1
    %generated_24 = tensor.generate %51 {
    ^bb0(%arg1: index):
      %254 = math.cos %1 : tensor<15xf16>
      %255 = arith.remf %cst_1, %cst : f16
      %256 = math.tan %1 : tensor<15xf16>
      %257 = vector.extract %56[9] : vector<15xf16>
      tensor.yield %cst_4 : f32
    } : tensor<?xf32>
    %64 = vector.splat %36 : vector<15xindex>
    scf.if %true {
      %254 = math.atan %13 : tensor<15xf16>
      %255 = index.ceildivu %c13, %c11
      %256 = scf.index_switch %c10 -> i16 
      case 1 {
        %262 = arith.divsi %false_0, %false_0 : i1
        %263 = math.ipowi %false_0, %false_0 : i1
        %264 = vector.insertelement %41, %49[%c4 : index] : vector<12xi64>
        %265 = arith.muli %c487023468_i64, %41 : i64
        %266 = arith.remsi %c1109316681_i64, %c487023468_i64 : i64
        %267 = arith.andi %c487023468_i64, %c1237570205_i64 : i64
        %268 = index.castu %255 : index to i32
        %splat = tensor.splat %c1237570205_i64 : tensor<15xi64>
        %269 = arith.remui %41, %c1109316681_i64 : i64
        %270 = vector.broadcast %c1237570205_i64 : i64 to vector<15xi64>
        %271 = vector.gather %11[%c14] [%55], %54, %270 : tensor<15xi64>, vector<15xi32>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %272 = vector.broadcast %c487023468_i64 : i64 to vector<12x7x12xi64>
        %273 = math.absi %c0_i32 : i32
        %expanded_59 = tensor.expand_shape %11 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
        %274 = vector.extract_strided_slice %49 {offsets = [7], sizes = [4], strides = [1]} : vector<12xi64> to vector<4xi64>
        %275 = math.expm1 %8 : tensor<12x7x12xf16>
        %276 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 128, d1)>(%c4, %25, %c1, %c4)
        scf.yield %c199_i16 : i16
      }
      default {
        %262 = math.absi %41 : i64
        %263 = arith.remf %cst_2, %cst_5 : f16
        %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
        %264 = math.round %cst_2 : f16
        %265 = math.round %1 : tensor<15xf16>
        %266 = arith.divsi %c1109316681_i64, %c1237570205_i64 : i64
        %267 = vector.load %alloc_22[%c6] : memref<15xi64>, vector<12x7x12xi64>
        %268 = arith.divui %c1109316681_i64, %41 : i64
        memref.tensor_store %3, %alloc_12 : memref<12x7x12xi1>
        %269 = vector.gather %16[%c3] [%55], %54, %55 : tensor<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %270 = vector.broadcast %41 : i64 to vector<12x7xi64>
        %dest_60, %accumulated_value_61 = vector.scan <add>, %267, %270 {inclusive = false, reduction_dim = 2 : i64} : vector<12x7x12xi64>, vector<12x7xi64>
        %271 = math.log1p %1 : tensor<15xf16>
        %272 = vector.extract_strided_slice %56 {offsets = [10], sizes = [3], strides = [1]} : vector<15xf16> to vector<3xf16>
        %273 = vector.extract %54[7] : vector<15xi1>
        %274 = index.casts %c2 : index to i32
        %275 = math.absi %0 : tensor<15xi1>
        scf.yield %c28871_i16 : i16
      }
      %257 = arith.minsi %c487023468_i64, %41 : i64
      %258 = math.tanh %13 : tensor<15xf16>
      %259 = math.floor %cst_3 : f16
      %260 = memref.realloc %alloc_13 : memref<15xi1> to memref<12xi1>
      %261 = arith.addi %c-6183_i16, %c199_i16 : i16
    } else {
      %254 = memref.realloc %alloc_20 : memref<15xi16> to memref<7xi16>
      %255 = arith.andi %c199_i16, %c28871_i16 : i16
      %256 = math.absi %4 : tensor<12x7x12xi32>
      %257 = arith.remui %c0_i32, %c0_i32 : i32
      %258 = vector.splat %c13 : vector<15xindex>
      memref.tensor_store %9, %alloc_20 : memref<15xi16>
      %259 = math.ipowi %6, %6 : tensor<15xi64>
      %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
    }
    %65 = math.tanh %cst_1 : f16
    %66 = vector.broadcast %c28871_i16 : i16 to vector<7xi16>
    %67 = vector.broadcast %false_0 : i1 to vector<7xi1>
    %68 = vector.maskedload %alloc_20[%c10], %67, %66 : memref<15xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %69 = arith.remui %c0_i32, %c0_i32 : i32
    %70 = arith.muli %true, %true : i1
    %alloca = memref.alloca() : memref<15xi64>
    %71 = arith.minui %c1109316681_i64, %c1109316681_i64 : i64
    %72 = math.fpowi %13, %2 : tensor<15xf16>, tensor<15xi32>
    %73 = index.mul %51, %c1
    %74 = memref.realloc %alloc_10 : memref<15xi64> to memref<12xi64>
    memref.assume_alignment %alloc_9, 8 : memref<12x7x12xf16>
    %75 = math.ipowi %9, %9 : tensor<15xi16>
    %generated_25 = tensor.generate %73 {
    ^bb0(%arg1: index):
      %254 = arith.remf %cst_5, %cst : f16
      %255 = vector.splat %53 : vector<15xindex>
      %256 = tensor.empty() : tensor<15xi64>
      %mapped_59 = linalg.map ins(%6 : tensor<15xi64>) outs(%256 : tensor<15xi64>)
        (%in: i64) {
          %258 = vector.broadcast %cst_5 : f16 to vector<15x15xf16>
          %259 = vector.outerproduct %52, %56, %258 {kind = #vector.kind<maxf>} : vector<15xf16>, vector<15xf16>
          %260 = math.log1p %1 : tensor<15xf16>
          %alloc_60 = memref.alloc() : memref<15xf32>
          %261 = vector.extract %49[1] : vector<12xi64>
          %rank_61 = tensor.rank %15 : tensor<15xi16>
          %262 = vector.broadcast %c10 : index to vector<12xindex>
          %263 = vector.broadcast %false_0 : i1 to vector<12xi1>
          vector.scatter %alloc_12[%c8, %c3, %c9] [%262], %263, %263 : memref<12x7x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
          %264 = math.log1p %12 : tensor<15xf16>
          %265 = vector.gather %alloc_17[%c0] [%55], %54, %55 : memref<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
          memref.assume_alignment %alloc_14, 16 : memref<15xi16>
          %266 = arith.remui %c28871_i16, %c199_i16 : i16
          %267 = vector.extract %54[7] : vector<15xi1>
          %268 = vector.splat %c9 : vector<12x7x12xindex>
          %269 = vector.load %alloc_6[%c12] : memref<15xf32>, vector<15xf32>
          %270 = vector.broadcast %26 : index to vector<15xindex>
          %271 = vector.broadcast %in : i64 to vector<15xi64>
          vector.scatter %alloc_10[%c7] [%270], %54, %271 : memref<15xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
          memref.store %c0_i32, %alloc_21[%c3, %c4] : memref<12x12xi32>
          %alloc_62 = memref.alloc() : memref<15x7xi16>
          %272 = tensor.empty() : tensor<7x7xi16>
          %273 = tensor.empty() : tensor<15x7xi16>
          %274 = linalg.matmul ins(%alloc_62, %272 : memref<15x7xi16>, tensor<7x7xi16>) outs(%273 : tensor<15x7xi16>) -> tensor<15x7xi16>
          %275 = vector.gather %10[%c7] [%265], %54, %55 : tensor<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
          %276 = index.floordivs %c0, %c12
          %277 = index.maxs %36, %arg1
          %278 = memref.load %alloc_10[%c2] : memref<15xi64>
          %279 = math.floor %cst_1 : f16
          %280 = vector.load %alloc_8[%c7, %c2, %c4] : memref<12x7x12xi64>, vector<15xi64>
          %alloc_63 = memref.alloc() : memref<12x7x12xf32>
          %281 = math.ceil %5 : tensor<15xf16>
          %282 = math.rsqrt %cst_4 : f32
          %283 = arith.maxf %cst_5, %cst_3 : f16
          %284 = index.ceildivu %c11, %51
          %285 = arith.mulf %cst_2, %cst_5 : f16
          %286 = index.sub %284, %arg1
          %287 = index.mul %c11, %277
          affine.store %c1237570205_i64, %alloc_19[%c14] : memref<15xi64>
          %288 = arith.remui %c28871_i16, %c24519_i16 : i16
          %c1_i64_64 = arith.constant 1 : i64
          linalg.yield %c1_i64_64 : i64
        }
      %257 = math.rsqrt %8 : tensor<12x7x12xf16>
      tensor.yield %cst_5 : f16
    } : tensor<?xf16>
    %76 = vector.broadcast %c0_i32 : i32 to vector<i32>
    %77 = vector.transfer_write %76, %16[%c1] : vector<i32>, tensor<15xi32>
    %alloc_26 = memref.alloc() : memref<15xi32>
    %78 = math.roundeven %cst_5 : f16
    %79 = math.absf %cst_5 : f16
    %80 = vector.extract %55[6] : vector<15xi32>
    %81 = bufferization.clone %alloc_20 : memref<15xi16> to memref<15xi16>
    %82 = arith.minui %true, %false : i1
    %alloca_27 = memref.alloca() : memref<15xf32>
    memref.alloca_scope  {
      %254 = memref.atomic_rmw maxf %cst_4, %alloc_6[%c13] : (f32, memref<15xf32>) -> f32
      %inserted_59 = tensor.insert %cst_1 into %1[%c7] : tensor<15xf16>
      %255 = arith.remf %cst_1, %cst_5 : f16
      %256 = vector.insert %cst_5, %56 [9] : f16 into vector<15xf16>
      %257 = scf.while (%arg1 = %alloc_17) : (memref<15xi32>) -> memref<15xi32> {
        %285 = vector.maskedload %alloc_7[%c5, %c3, %c1], %54, %56 : memref<12x7x12xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %286 = index.floordivs %c7, %26
        %287 = math.cos %cst_3 : f16
        %288 = math.cos %13 : tensor<15xf16>
        %289 = vector.insert %c0_i32, %55 [5] : i32 into vector<15xi32>
        %c1188595741_i64 = arith.constant 1188595741 : i64
        %cst_63 = arith.constant 1.000000e+00 : f16
        %290 = vector.transfer_read %12[%286], %cst_63 : tensor<15xf16>, vector<f16>
        %291 = math.exp2 %8 : tensor<12x7x12xf16>
        scf.condition(%false_0) %arg1 : memref<15xi32>
      } do {
      ^bb0(%arg1: memref<15xi32>):
        %285 = arith.floordivsi %false, %false : i1
        %286 = index.divs %36, %c11
        %287 = vector.flat_transpose %67 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %288 = arith.remf %cst, %cst : f16
        %289 = math.log %13 : tensor<15xf16>
        %290 = math.atan %8 : tensor<12x7x12xf16>
        %291 = vector.load %alloc_9[%c1, %c1, %c7] : memref<12x7x12xf16>, vector<15xf16>
        %292 = vector.multi_reduction <maxui>, %55, %c0_i32 [0] : vector<15xi32> to i32
        %293 = vector.extract_strided_slice %66 {offsets = [4], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
        %294 = arith.addf %cst_3, %cst_1 : f16
        %295 = index.floordivs %c4, %c8
        %296 = vector.shuffle %54, %67 [1, 3, 5, 6, 7, 10, 11, 16, 19, 21] : vector<15xi1>, vector<7xi1>
        %297 = math.ctlz %7 : tensor<15xi64>
        %false_63 = arith.constant false
        %false_64 = arith.constant false
        %298 = vector.transfer_read %3[%286, %c2, %36], %false_64 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<12x7x12xi1>, vector<15xi1>
        %299 = vector.broadcast %c199_i16 : i16 to vector<12xi16>
        %300 = vector.broadcast %false : i1 to vector<12xi1>
        %301 = vector.maskedload %alloc_14[%c14], %300, %299 : memref<15xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %302 = vector.broadcast %295 : index to vector<7xindex>
        vector.scatter %alloc_12[%c5, %c2, %c4] [%302], %67, %287 : memref<12x7x12xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        scf.yield %alloc_17 : memref<15xi32>
      }
      %258 = tensor.empty() : tensor<i64>
      %mapped_60 = linalg.map ins(%20, %20, %20 : tensor<i64>, tensor<i64>, tensor<i64>) outs(%258 : tensor<i64>)
        (%in: i64, %in_63: i64, %in_64: i64) {
          %285 = vector.broadcast %true : i1 to vector<7x7xi1>
          %286 = vector.outerproduct %67, %67, %285 {kind = #vector.kind<minui>} : vector<7xi1>, vector<7xi1>
          %287 = vector.extract %49[10] : vector<12xi64>
          %288 = vector.broadcast %41 : i64 to vector<15xi64>
          %289 = arith.maxsi %false_0, %false_0 : i1
          %290 = vector.load %alloc_7[%c10, %c6, %c8] : memref<12x7x12xf16>, vector<15xf16>
          %291 = math.round %5 : tensor<15xf16>
          %292 = arith.andi %c199_i16, %c24519_i16 : i16
          %293 = math.exp %5 : tensor<15xf16>
          %294 = math.log %12 : tensor<15xf16>
          %295 = math.ceil %8 : tensor<12x7x12xf16>
          memref.store %c0_i32, %alloc_17[%c0] : memref<15xi32>
          %296 = vector.gather %alloc_17[%51] [%55], %54, %55 : memref<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
          %297 = arith.cmpf one, %cst, %cst_5 : f16
          %298 = math.log1p %5 : tensor<15xf16>
          %alloca_65 = memref.alloca() : memref<15xi16>
          memref.copy %alloc_14, %81 : memref<15xi16> to memref<15xi16>
          %299 = math.ipowi %c487023468_i64, %in : i64
          %alloca_66 = memref.alloca() : memref<15xi32>
          %300 = vector.splat %cst : vector<15xf16>
          %301 = vector.insert %in_63, %288 [12] : i64 into vector<15xi64>
          %302 = index.add %c2, %c6
          %303 = math.log1p %13 : tensor<15xf16>
          %304 = arith.divsi %true, %false : i1
          %305 = arith.subi %in, %c487023468_i64 : i64
          %306 = tensor.empty() : tensor<12x7x12xi16>
          %307 = vector.broadcast %c-6183_i16 : i16 to vector<15xi16>
          %308 = vector.gather %306[%c4, %c7, %c14] [%55], %54, %307 : tensor<12x7x12xi16>, vector<15xi32>, vector<15xi1>, vector<15xi16> into vector<15xi16>
          %inserted_67 = tensor.insert %false_0 into %transposed[%c10] : tensor<15xi1>
          %309 = math.atan %cst_5 : f16
          %310 = vector.insertelement %c28871_i16, %308[%c12 : index] : vector<15xi16>
          %311 = math.absi %4 : tensor<12x7x12xi32>
          memref.store %in, %alloc_8[%c10, %c0, %c3] : memref<12x7x12xi64>
          %312 = math.atan %13 : tensor<15xf16>
          %313 = memref.atomic_rmw assign %cst_4, %alloc_6[%c9] : (f32, memref<15xf32>) -> f32
          %c0_i64_68 = arith.constant 0 : i64
          linalg.yield %c0_i64_68 : i64
        }
      %259 = bufferization.to_tensor %alloc_6 : memref<15xf32>
      %260 = math.cttz %c1109316681_i64 : i64
      %261 = math.round %5 : tensor<15xf16>
      %262 = math.round %8 : tensor<12x7x12xf16>
      %true_61 = index.bool.constant true
      %263 = vector.broadcast %cst_4 : f32 to vector<15xf32>
      %264 = tensor.empty() : tensor<12x7x12xi16>
      %265 = memref.realloc %alloc_22 : memref<15xi64> to memref<15xi64>
      %266 = scf.index_switch %c10 -> tensor<15xi1> 
      case 1 {
        %285 = vector.extract %49[9] : vector<12xi64>
        %286 = vector.shuffle %76, %76 [0, 1] : vector<i32>, vector<i32>
        %287 = vector.gather %alloc_6[%c6] [%55], %54, %263 : memref<15xf32>, vector<15xi32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %288 = vector.insertelement %c-6183_i16, %68[%c7 : index] : vector<7xi16>
        %289 = vector.insertelement %c1237570205_i64, %19[%c11 : index] : vector<12xi64>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_63 = arith.constant 0 : i32
        %290 = vector.transfer_read %alloc_21[%c2, %c14], %c0_i32_63 : memref<12x12xi32>, vector<i32>
        %inserted_64 = tensor.insert %c-6183_i16 into %9[%c7] : tensor<15xi16>
        %291 = vector.broadcast %false : i1 to vector<12x15xi1>
        %292 = vector.broadcast %true : i1 to vector<12xi1>
        %dest_65, %accumulated_value_66 = vector.scan <minsi>, %291, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<12x15xi1>, vector<12xi1>
        %293 = vector.broadcast %c1109316681_i64 : i64 to vector<15xi64>
        %294 = vector.gather %14[%c10] [%55], %54, %293 : tensor<15xi64>, vector<15xi32>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %295 = math.cos %13 : tensor<15xf16>
        %296 = arith.muli %c1109316681_i64, %c1237570205_i64 : i64
        %297 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %298 = vector.fma %297, %263, %263 : vector<15xf32>
        %299 = arith.divsi %c0_i32, %c0_i32 : i32
        %300 = vector.broadcast %c1109316681_i64 : i64 to vector<12x12xi64>
        %301 = vector.outerproduct %19, %19, %300 {kind = #vector.kind<mul>} : vector<12xi64>, vector<12xi64>
        %302 = math.log %1 : tensor<15xf16>
        %303 = math.absi %2 : tensor<15xi32>
        scf.yield %18 : tensor<15xi1>
      }
      case 2 {
        %285 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 8)>(%c2, %c5)
        %286 = math.ceil %1 : tensor<15xf16>
        %287 = vector.create_mask %51 : vector<15xi1>
        %288 = index.maxu %c4, %c4
        %289 = vector.matrix_multiply %287, %54 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
        %290 = arith.muli %c-6183_i16, %c24519_i16 : i16
        %291 = math.atan %13 : tensor<15xf16>
        %292 = index.maxu %285, %c15
        %293 = arith.mulf %cst_1, %cst_3 : f16
        %rank_63 = tensor.rank %9 : tensor<15xi16>
        %294 = vector.broadcast %true : i1 to vector<1x1xi1>
        %295 = vector.outerproduct %289, %289, %294 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
        %296 = index.mul %c7, %26
        %297 = math.round %5 : tensor<15xf16>
        %298 = math.copysign %cst_3, %cst_1 : f16
        %299 = vector.multi_reduction <or>, %54, %true_61 [0] : vector<15xi1> to i1
        %300 = math.atan %1 : tensor<15xf16>
        scf.yield %0 : tensor<15xi1>
      }
      case 3 {
        %285 = math.cos %cst_2 : f16
        %286 = arith.mulf %cst, %cst : f16
        %extracted_63 = tensor.extract %10[%c12] : tensor<15xi32>
        %287 = math.cos %cst_1 : f16
        %288 = vector.insert %cst, %56 [14] : f16 into vector<15xf16>
        %289 = math.rsqrt %8 : tensor<12x7x12xf16>
        %290 = vector.broadcast %false : i1 to vector<15x7x15xi1>
        %291 = vector.broadcast %false_0 : i1 to vector<7x15xi1>
        %dest_64, %accumulated_value_65 = vector.scan <and>, %290, %291 {inclusive = false, reduction_dim = 0 : i64} : vector<15x7x15xi1>, vector<7x15xi1>
        %292 = vector.bitcast %54 : vector<15xi1> to vector<15xi1>
        %293 = arith.divui %false_0, %false : i1
        %294 = vector.broadcast %c11 : index to vector<15xindex>
        vector.scatter %alloc_18[%c3] [%294], %54, %54 : memref<15xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
        %295 = arith.minf %cst_4, %cst_4 : f32
        %296 = arith.ceildivsi %true_61, %true : i1
        %297 = arith.remui %c1237570205_i64, %c1237570205_i64 : i64
        %298 = math.atan %1 : tensor<15xf16>
        %c894044171_i32 = arith.constant 894044171 : i32
        %299 = vector.broadcast %c-6183_i16 : i16 to vector<12x7x12xi16>
        scf.yield %0 : tensor<15xi1>
      }
      default {
        %285 = affine.min affine_map<(d0, d1, d2) -> ((d1 + 4) floordiv 32 + 8)>(%c3, %c11, %c2)
        %286 = vector.broadcast %c0_i32 : i32 to vector<i32>
        %287 = vector.transfer_write %286, %17[%c14] : vector<i32>, tensor<15xi32>
        %288 = math.expm1 %1 : tensor<15xf16>
        %289 = arith.divf %cst_1, %cst_2 : f16
        %290 = arith.mulf %cst_5, %cst : f16
        %291 = arith.remui %c199_i16, %c24519_i16 : i16
        %292 = arith.andi %c199_i16, %c28871_i16 : i16
        %293 = vector.splat %c3 : vector<15xindex>
        %294 = vector.maskedload %alloc_11[%c8, %c4, %c7], %54, %52 : memref<12x7x12xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %295 = arith.xori %c199_i16, %c-6183_i16 : i16
        %inserted_63 = tensor.insert %c-6183_i16 into %62[%c9] : tensor<15xi16>
        %296 = vector.shuffle %49, %19 [0, 2, 3, 4, 6, 8, 12, 16, 19] : vector<12xi64>, vector<12xi64>
        %297 = math.log1p %5 : tensor<15xf16>
        %298 = arith.muli %c-6183_i16, %c-6183_i16 : i16
        %299 = vector.broadcast %cst : f16 to vector<12x7x12xf16>
        %300 = vector.extract_strided_slice %19 {offsets = [5], sizes = [6], strides = [1]} : vector<12xi64> to vector<6xi64>
        scf.yield %0 : tensor<15xi1>
      }
      %267 = index.sub %25, %c4
      %268 = bufferization.to_tensor %alloc_7 : memref<12x7x12xf16>
      %269 = math.exp %cst_5 : f16
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %c1237570205_i64 : vector<12xi64>, vector<12xi64> into i64
      %c-14571_i16 = arith.constant -14571 : i16
      %271 = vector.broadcast %cst_4 : f32 to vector<15xf32>
      %272 = vector.fma %271, %271, %263 : vector<15xf32>
      %273 = memref.alloca_scope  -> (i64) {
        memref.store %41, %alloc_10[%c1] : memref<15xi64>
        %285 = arith.andi %41, %c487023468_i64 : i64
        %286 = math.round %cst_3 : f16
        %287 = arith.minui %false_0, %false_0 : i1
        %288 = vector.shuffle %56, %52 [2, 3, 5, 6, 7, 8, 11, 13, 15, 17, 19, 20, 21, 22, 24, 28, 29] : vector<15xf16>, vector<15xf16>
        %289 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 32)>(%c11, %c9, %c2)
        %290 = math.cos %12 : tensor<15xf16>
        %291 = memref.realloc %alloc_15 : memref<15xi64> to memref<15xi64>
        %292 = memref.realloc %alloc_6 : memref<15xf32> to memref<15xf32>
        %293 = memref.realloc %alloc_19 : memref<15xi64> to memref<15xi64>
        %294 = math.cttz %2 : tensor<15xi32>
        %295 = vector.broadcast %51 : index to vector<15xindex>
        vector.scatter %alloc_21[%c9, %c10] [%295], %54, %55 : memref<12x12xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %296 = arith.andi %c0_i32, %c0_i32 : i32
        %297 = math.tanh %1 : tensor<15xf16>
        %298 = arith.cmpf ugt, %cst_4, %cst_4 : f32
        %299 = vector.broadcast %cst_5 : f16 to vector<15xf16>
        %300 = arith.maxf %cst, %cst_5 : f16
        %splat = tensor.splat %cst_1 : tensor<15xf16>
        %301 = tensor.empty() : tensor<12x7x12xi16>
        %302 = vector.splat %cst_5 : vector<15xf16>
        %303 = arith.minf %cst_3, %cst_1 : f16
        %304 = index.floordivs %35, %c0
        %305 = math.absf %cst : f16
        %306 = index.mul %289, %c7
        %307 = index.mul %35, %c13
        %308 = vector.transpose %19, [0] : vector<12xi64> to vector<12xi64>
        memref.tensor_store %11, %alloc_19 : memref<15xi64>
        %309 = memref.realloc %alloc_16 : memref<15xi1> to memref<15xi1>
        %310 = vector.matrix_multiply %263, %272 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf32>, vector<15xf32>) -> vector<1xf32>
        %311 = vector.broadcast %c24519_i16 : i16 to vector<12x7x12xi16>
        %312 = vector.load %alloc_7[%c8, %c4, %c1] : memref<12x7x12xf16>, vector<15xf16>
        %313 = arith.cmpf oeq, %cst_5, %cst : f16
        memref.alloca_scope.return %41 : i64
      }
      %274 = math.log %cst : f16
      %275 = vector.broadcast %c28871_i16 : i16 to vector<12x7x12xi16>
      %276 = vector.broadcast %false_0 : i1 to vector<12x7x12xi1>
      %277 = vector.broadcast %c0_i32 : i32 to vector<12x7x12xi32>
      %278 = vector.gather %9[%c11] [%277], %276, %275 : tensor<15xi16>, vector<12x7x12xi32>, vector<12x7x12xi1>, vector<12x7x12xi16> into vector<12x7x12xi16>
      %extracted_62 = tensor.extract %12[%c10] : tensor<15xf16>
      memref.store %c24519_i16, %81[%c12] : memref<15xi16>
      %279 = bufferization.clone %alloc_18 : memref<15xi1> to memref<15xi1>
      scf.execute_region {
        %285 = math.round %5 : tensor<15xf16>
        %286 = arith.cmpf ord, %cst, %cst_1 : f16
        %287 = index.ceildivu %c12, %36
        %288 = arith.mulf %cst_5, %cst_2 : f16
        %289 = arith.floordivsi %false, %false_0 : i1
        %extracted_63 = tensor.extract %4[%c0, %c2, %c0] : tensor<12x7x12xi32>
        %290 = math.ipowi %9, %15 : tensor<15xi16>
        %291 = math.atan %extracted_62 : f16
        %292 = vector.extract %54[2] : vector<15xi1>
        %293 = vector.broadcast %extracted_63 : i32 to vector<15x15xi32>
        %294 = vector.outerproduct %55, %55, %293 {kind = #vector.kind<minui>} : vector<15xi32>, vector<15xi32>
        %295 = memref.atomic_rmw maxu %c1109316681_i64, %alloc_19[%c4] : (i64, memref<15xi64>) -> i64
        %296 = vector.create_mask %35 : vector<15xi1>
        %297 = math.atan2 %12, %13 : tensor<15xf16>
        %298 = vector.broadcast %c13 : index to vector<15xindex>
        vector.scatter %alloc_21[%c7, %c10] [%298], %54, %55 : memref<12x12xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %299 = arith.maxf %cst, %cst_5 : f16
        %300 = math.tan %cst : f16
        scf.yield
      }
      %280 = arith.subi %false, %true_61 : i1
      %281 = vector.broadcast %cst_4 : f32 to vector<15xf32>
      %282 = vector.fma %281, %281, %272 : vector<15xf32>
      %283 = arith.muli %c1237570205_i64, %c1109316681_i64 : i64
      %284 = vector.shuffle %54, %67 [1, 2, 3, 5, 6, 8, 10, 13, 15, 17, 18, 19, 21] : vector<15xi1>, vector<7xi1>
    }
    %83 = math.floor %cst_2 : f16
    %84 = math.expm1 %1 : tensor<15xf16>
    %85 = vector.broadcast %c1109316681_i64 : i64 to vector<15xi64>
    %86 = vector.maskedload %alloc_22[%c1], %54, %85 : memref<15xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
    %87 = vector.shuffle %85, %86 [2, 3, 5, 8, 9, 11, 12, 14, 15, 17, 18, 20, 21, 22, 23, 24, 25, 26, 28, 29] : vector<15xi64>, vector<15xi64>
    %88 = vector.extract_strided_slice %68 {offsets = [4], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
    %89 = vector.flat_transpose %55 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
    %90 = tensor.empty() : tensor<15xi64>
    %mapped_28 = linalg.map ins(%11, %50 : tensor<15xi64>, tensor<15xi64>) outs(%90 : tensor<15xi64>)
      (%in: i64, %in_59: i64) {
        %254 = vector.insertelement %false_0, %67[%c3 : index] : vector<7xi1>
        %255 = math.round %5 : tensor<15xf16>
        scf.index_switch %25 
        case 1 {
          %279 = memref.load %alloc_13[%c9] : memref<15xi1>
          %inserted_67 = tensor.insert %c199_i16 into %15[%c6] : tensor<15xi16>
          %280 = vector.broadcast %true : i1 to vector<i1>
          %281 = vector.transfer_write %280, %transposed[%c7] : vector<i1>, tensor<15xi1>
          %282 = math.log %13 : tensor<15xf16>
          %283 = math.atan2 %13, %13 : tensor<15xf16>
          %284 = arith.divui %c28871_i16, %c28871_i16 : i16
          %285 = arith.remui %c28871_i16, %c-6183_i16 : i16
          %286 = math.atan %12 : tensor<15xf16>
          %287 = math.rsqrt %8 : tensor<12x7x12xf16>
          %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %68, %66, %c28871_i16 : vector<7xi16>, vector<7xi16> into i16
          %289 = bufferization.clone %alloc_22 : memref<15xi64> to memref<15xi64>
          %290 = bufferization.to_memref %11 : memref<15xi64>
          %291 = vector.extract %56[4] : vector<15xf16>
          %292 = vector.create_mask %c2 : vector<15xi1>
          %293 = index.mul %35, %c10
          %294 = arith.muli %c1237570205_i64, %c1237570205_i64 : i64
          scf.yield
        }
        case 2 {
          %279 = math.log1p %13 : tensor<15xf16>
          %280 = memref.atomic_rmw maxf %cst_2, %alloc_11[%c0, %c1, %c4] : (f16, memref<12x7x12xf16>) -> f16
          %281 = index.divs %c9, %c4
          %282 = math.absi %false : i1
          %283 = arith.minf %cst_2, %cst : f16
          %284 = affine.load %alloc_17[%c5] : memref<15xi32>
          %285 = arith.minui %c-6183_i16, %c24519_i16 : i16
          %286 = arith.andi %in, %c1109316681_i64 : i64
          %287 = index.add %c4, %c6
          %alloc_67 = memref.alloc() : memref<12x7x12xf32>
          %288 = vector.gather %10[%c1] [%89], %54, %55 : tensor<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
          %289 = math.rsqrt %8 : tensor<12x7x12xf16>
          %expanded_68 = tensor.expand_shape %5 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
          %290 = memref.realloc %alloc_19 : memref<15xi64> to memref<12xi64>
          %291 = memref.realloc %alloc_20 : memref<15xi16> to memref<12xi16>
          %true_69 = arith.constant true
          %292 = vector.transfer_read %3[%c0, %c15, %c7], %true_69 : tensor<12x7x12xi1>, vector<15xi1>
          scf.yield
        }
        case 3 {
          %279 = arith.maxf %cst_1, %cst : f16
          %280 = tensor.empty() : tensor<15xi32>
          memref.assume_alignment %alloc_22, 4 : memref<15xi64>
          memref.tensor_store %14, %alloc_15 : memref<15xi64>
          %281 = vector.broadcast %c28871_i16 : i16 to vector<15x12xi16>
          %282 = vector.broadcast %c28871_i16 : i16 to vector<15xi16>
          %dest_67, %accumulated_value_68 = vector.scan <add>, %281, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<15x12xi16>, vector<15xi16>
          %283 = math.round %8 : tensor<12x7x12xf16>
          %284 = vector.shuffle %67, %67 [0, 1, 4, 5, 6, 8, 10, 12, 13] : vector<7xi1>, vector<7xi1>
          %285 = math.atan %12 : tensor<15xf16>
          %c1_i16 = arith.constant 1 : i16
          %c0_i16 = arith.constant 0 : i16
          %286 = vector.transfer_read %9[%c5], %c0_i16 : tensor<15xi16>, vector<i16>
          %287 = math.log1p %1 : tensor<15xf16>
          %cst_69 = arith.constant 1.000000e+00 : f16
          %cst_70 = arith.constant 0.000000e+00 : f16
          %288 = vector.transfer_read %alloc_9[%c1, %c6, %c4], %cst_70 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<12x7x12xf16>, vector<15x12xf16>
          memref.store %c28871_i16, %alloc_14[%c11] : memref<15xi16>
          %289 = vector.broadcast %cst_3 : f16 to vector<15x15xf16>
          %dest_71, %accumulated_value_72 = vector.scan <add>, %289, %56 {inclusive = false, reduction_dim = 0 : i64} : vector<15x15xf16>, vector<15xf16>
          %290 = math.log %12 : tensor<15xf16>
          %291 = arith.remf %cst, %cst_2 : f16
          %292 = arith.muli %in_59, %in : i64
          scf.yield
        }
        default {
          %279 = arith.cmpf ogt, %cst, %cst_2 : f16
          %280 = math.expm1 %cst_3 : f16
          %281 = memref.realloc %81 : memref<15xi16> to memref<12xi16>
          %282 = arith.andi %in_59, %in_59 : i64
          %collapsed_67 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<12x7x12xi1> into tensor<84x12xi1>
          %283 = vector.broadcast %cst_1 : f16 to vector<f16>
          vector.transfer_write %283, %alloc_9[%73, %53, %c0] : vector<f16>, memref<12x7x12xf16>
          %284 = tensor.empty() : tensor<15xi1>
          %285 = arith.andi %c487023468_i64, %c487023468_i64 : i64
          %286 = vector.splat %36 : vector<15xindex>
          %287 = vector.insertelement %c0_i32, %89[%53 : index] : vector<15xi32>
          %288 = index.maxs %c2, %c15
          %289 = arith.addf %cst_5, %cst_1 : f16
          %290 = math.copysign %1, %1 : tensor<15xf16>
          %291 = math.expm1 %cst : f16
          %alloca_68 = memref.alloca() : memref<15xi1>
          %292 = vector.broadcast %in_59 : i64 to vector<i64>
          %293 = vector.transfer_write %292, %11[%35] : vector<i64>, tensor<15xi64>
        }
        memref.store %in, %alloc_10[%c5] : memref<15xi64>
        %256 = index.floordivs %c11, %c9
        %extracted_60 = tensor.extract %15[%c13] : tensor<15xi16>
        %257 = vector.bitcast %52 : vector<15xf16> to vector<15xi16>
        %258 = math.round %1 : tensor<15xf16>
        %259 = bufferization.clone %alloc_8 : memref<12x7x12xi64> to memref<12x7x12xi64>
        %260 = vector.multi_reduction <or>, %257, %257 [] : vector<15xi16> to vector<15xi16>
        %261 = arith.remf %cst_1, %cst : f16
        %262 = index.ceildivs %c14, %c10
        %collapsed_61 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
        %263 = tensor.empty() : tensor<15xf16>
        %264 = math.round %8 : tensor<12x7x12xf16>
        %expanded_62 = tensor.expand_shape %62 [[0, 1]] : tensor<15xi16> into tensor<15x1xi16>
        %265 = arith.xori %c24519_i16, %c24519_i16 : i16
        %266 = vector.broadcast %c3 : index to vector<7xindex>
        %267 = vector.broadcast %c1237570205_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_8[%c11, %c6, %c7] [%266], %67, %267 : memref<12x7x12xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %splat = tensor.splat %c199_i16 : tensor<12x7x12xi16>
        %268 = affine.if affine_set<(d0) : (d0 ceildiv 64 >= 0)>(%c15) -> f16 {
          %279 = arith.xori %true, %false : i1
          %280 = math.rsqrt %13 : tensor<15xf16>
          %281 = vector.splat %cst : vector<15xf16>
          %282 = vector.broadcast %cst_4 : f32 to vector<7x15x15xf32>
          %283 = vector.broadcast %cst_4 : f32 to vector<15x15xf32>
          %dest_67, %accumulated_value_68 = vector.scan <minf>, %282, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<7x15x15xf32>, vector<15x15xf32>
          %284 = vector.insert %c487023468_i64, %49 [6] : i64 into vector<12xi64>
          %285 = tensor.empty() : tensor<15xi1>
          %286 = arith.remf %cst_1, %cst_5 : f16
          %287 = math.tanh %263 : tensor<15xf16>
          affine.yield %cst_3 : f16
        } else {
          %279 = math.ipowi %c1237570205_i64, %in_59 : i64
          %280 = index.divu %53, %c13
          %cst_67 = arith.constant 1.000000e+00 : f16
          %cst_68 = arith.constant 0.000000e+00 : f16
          %281 = vector.transfer_read %12[%280], %cst_68 : tensor<15xf16>, vector<f16>
          %282 = arith.remf %cst_67, %cst_2 : f16
          %283 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
          %284 = arith.remf %cst_4, %cst_4 : f32
          %285 = math.log1p %1 : tensor<15xf16>
          %286 = math.tanh %cst_1 : f16
          affine.yield %cst_3 : f16
        }
        %269 = vector.splat %73 : vector<15xindex>
        %270 = scf.if %false_0 -> (f32) {
          %279 = index.mul %c1, %c10
          %splat_67 = tensor.splat %c1109316681_i64 : tensor<15xi64>
          %280 = vector.broadcast %cst : f16 to vector<f16>
          %281 = vector.transfer_write %280, %13[%262] : vector<f16>, tensor<15xf16>
          %282 = math.powf %12, %13 : tensor<15xf16>
          %283 = memref.realloc %alloc_16 : memref<15xi1> to memref<15xi1>
          %284 = arith.subi %c0_i32, %c0_i32 : i32
          %285 = vector.insertelement %extracted_60, %257[%c10 : index] : vector<15xi16>
          %286 = index.add %256, %73
          scf.yield %cst_4 : f32
        } else {
          %279 = arith.ceildivsi %extracted_60, %c199_i16 : i16
          %280 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 64, (d0 - d1) * -32 + 32, d0 + 32)>(%c6, %c3)
          %alloca_67 = memref.alloca() : memref<15xi16>
          %281 = math.copysign %8, %8 : tensor<12x7x12xf16>
          %282 = memref.load %259[%c10, %c0, %c10] : memref<12x7x12xi64>
          memref.copy %alloc_15, %alloc_19 : memref<15xi64> to memref<15xi64>
          %283 = math.round %cst : f16
          %284 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
          scf.yield %cst_4 : f32
        }
        %271 = vector.extract_strided_slice %67 {offsets = [1], sizes = [5], strides = [1]} : vector<7xi1> to vector<5xi1>
        %c1_i64_63 = arith.constant 1 : i64
        %c0_i64_64 = arith.constant 0 : i64
        %272 = vector.transfer_read %14[%c12], %c0_i64_64 : tensor<15xi64>, vector<i64>
        %273 = arith.remsi %41, %c487023468_i64 : i64
        scf.if %false {
          %279 = arith.cmpf oge, %270, %cst_4 : f32
          %280 = math.ctpop %16 : tensor<15xi32>
          %281 = arith.shrsi %true, %true : i1
          %alloca_67 = memref.alloca() : memref<15xi64>
          %282 = arith.maxsi %false, %true : i1
          %283 = bufferization.clone %81 : memref<15xi16> to memref<15xi16>
          %284 = index.maxu %73, %c11
          %285 = vector.splat %c487023468_i64 : vector<15xi64>
        }
        %274 = arith.mulf %cst_3, %cst_3 : f16
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %88, %88, %c24519_i16 : vector<3xi16>, vector<3xi16> into i16
        %276 = affine.if affine_set<(d0, d1) : (d1 * 2 >= 0, (d1 + d0 mod 4 + d1) * 16 == 0, -(d0 mod 4 + d1) >= 0, (-(d0 mod 4 + d1)) floordiv 2 - 2 >= 0)>(%c12, %c0) -> memref<15xi16> {
          %279 = math.round %cst_5 : f16
          %expanded_67 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<12x7x12xi32> into tensor<12x7x12x1xi32>
          %280 = arith.remui %c1_i64_63, %in : i64
          %281 = math.copysign %12, %13 : tensor<15xf16>
          memref.copy %alloc_22, %alloc_19 : memref<15xi64> to memref<15xi64>
          %282 = arith.remf %cst_5, %cst_1 : f16
          %alloc_68 = memref.alloc() : memref<15xi32>
          memref.copy %alloc_17, %alloc_68 : memref<15xi32> to memref<15xi32>
          %283 = arith.floordivsi %false, %false_0 : i1
          affine.yield %alloc_20 : memref<15xi16>
        } else {
          %279 = math.absf %cst_1 : f16
          %280 = index.divs %c2, %c13
          %281 = vector.broadcast %cst_1 : f16 to vector<15x15xf16>
          %282 = vector.outerproduct %52, %56, %281 {kind = #vector.kind<mul>} : vector<15xf16>, vector<15xf16>
          %283 = affine.load %alloc_9[%c10, %c8, %c15] : memref<12x7x12xf16>
          %284 = vector.broadcast %cst_4 : f32 to vector<12x7x12xf32>
          %285 = vector.fma %284, %284, %284 : vector<12x7x12xf32>
          %alloc_67 = memref.alloc() : memref<15xi32>
          %286 = vector.extract %67[3] : vector<7xi1>
          %287 = arith.minf %cst_5, %cst : f16
          affine.yield %alloc_20 : memref<15xi16>
        }
        %277 = math.cos %5 : tensor<15xf16>
        %278 = math.expm1 %13 : tensor<15xf16>
        %alloca_65 = memref.alloca() : memref<15xi16>
        %c0_i64_66 = arith.constant 0 : i64
        linalg.yield %c0_i64_66 : i64
      }
    %alloc_29 = memref.alloc() : memref<15xi32>
    %91 = index.divs %c14, %c13
    %92 = math.ipowi %c487023468_i64, %41 : i64
    %93 = arith.remf %cst_1, %cst_3 : f16
    %94 = arith.floordivsi %c199_i16, %c28871_i16 : i16
    %inserted_30 = tensor.insert %c0_i32 into %10[%c14] : tensor<15xi32>
    %95 = arith.cmpf true, %cst_3, %cst_5 : f16
    %96 = math.atan2 %cst_2, %cst_1 : f16
    %97 = vector.broadcast %c3 : index to vector<15xindex>
    vector.scatter %alloc_8[%c4, %c5, %c8] [%97], %54, %85 : memref<12x7x12xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
    %98 = index.mul %c8, %c1
    %99 = index.sizeof
    %generated_31 = tensor.generate %36, %91, %c9 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %254 = math.expm1 %12 : tensor<15xf16>
      %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
      %255 = math.log1p %13 : tensor<15xf16>
      memref.tensor_store %18, %alloc_18 : memref<15xi1>
      tensor.yield %c24519_i16 : i16
    } : tensor<?x?x?xi16>
    %alloc_32 = memref.alloc() : memref<15xi64>
    %false_33 = index.bool.constant false
    %100 = math.log %12 : tensor<15xf16>
    %101 = vector.insertelement %c24519_i16, %68[%c15 : index] : vector<7xi16>
    %102 = arith.muli %c-6183_i16, %c24519_i16 : i16
    %103 = vector.broadcast %c487023468_i64 : i64 to vector<i64>
    %104 = vector.transfer_write %103, %50[%c1] : vector<i64>, tensor<15xi64>
    %105 = vector.broadcast %cst : f16 to vector<12x7x12xf16>
    %106 = vector.broadcast %false : i1 to vector<12x7x12xi1>
    %107 = vector.broadcast %c0_i32 : i32 to vector<12x7x12xi32>
    %108 = vector.gather %13[%c1] [%107], %106, %105 : tensor<15xf16>, vector<12x7x12xi32>, vector<12x7x12xi1>, vector<12x7x12xf16> into vector<12x7x12xf16>
    %109 = arith.cmpf one, %cst_1, %cst_5 : f16
    %110 = bufferization.clone %alloc_16 : memref<15xi1> to memref<15xi1>
    %111 = vector.bitcast %52 : vector<15xf16> to vector<15xi16>
    %112 = math.round %cst_4 : f32
    %113 = arith.muli %c199_i16, %c24519_i16 : i16
    %114 = vector.broadcast %c1237570205_i64 : i64 to vector<12x12xi64>
    %115 = vector.outerproduct %49, %49, %114 {kind = #vector.kind<minui>} : vector<12xi64>, vector<12xi64>
    affine.store %true, %alloc_16[%c12] : memref<15xi1>
    %116 = index.maxs %91, %c12
    %117 = arith.minf %cst_5, %cst_3 : f16
    affine.store %cst_5, %alloc_7[%c9, %c12, %c11] : memref<12x7x12xf16>
    %118 = arith.minui %false_33, %false : i1
    %119 = index.floordivs %c1, %35
    %120 = arith.floordivsi %c0_i32, %c0_i32 : i32
    %121 = arith.divsi %c487023468_i64, %c1237570205_i64 : i64
    %122 = math.exp %cst_4 : f32
    %123 = vector.flat_transpose %56 {columns = 5 : i32, rows = 3 : i32} : vector<15xf16> -> vector<15xf16>
    %124 = math.log10 %13 : tensor<15xf16>
    %125 = affine.if affine_set<(d0, d1) : (d1 * 2 >= 0, (d1 + d0 mod 4 + d1) * 16 == 0, -(d0 mod 4 + d1) >= 0, (-(d0 mod 4 + d1)) floordiv 2 - 2 >= 0)>(%c1, %c9) -> i64 {
      %254 = math.log1p %13 : tensor<15xf16>
      %255 = index.casts %91 : index to i32
      memref.copy %alloc_7, %alloc_9 : memref<12x7x12xf16> to memref<12x7x12xf16>
      %256 = vector.flat_transpose %111 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d2)>(%c0, %c5, %c10, %116)
      %258 = math.round %cst_5 : f16
      %alloc_59 = memref.alloc() : memref<15xi64>
      %259 = tensor.empty() : tensor<15xi32>
      affine.yield %c1237570205_i64 : i64
    } else {
      %254 = tensor.empty() : tensor<15xi32>
      %mapped_59 = linalg.map ins(%17 : tensor<15xi32>) outs(%254 : tensor<15xi32>)
        (%in: i32) {
          %extracted_60 = tensor.extract %6[%c0] : tensor<15xi64>
          %alloc_61 = memref.alloc() : memref<12x7x12xf32>
          %262 = index.mul %25, %116
          %263 = tensor.empty() : tensor<15xi1>
          %264 = math.atan %1 : tensor<15xf16>
          %265 = vector.extract_strided_slice %56 {offsets = [0], sizes = [12], strides = [1]} : vector<15xf16> to vector<12xf16>
          %266 = index.casts %262 : index to i32
          %267 = index.maxs %91, %c10
          %268 = math.copysign %1, %13 : tensor<15xf16>
          %269 = vector.extract_strided_slice %88 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi16> to vector<3xi16>
          %270 = math.round %5 : tensor<15xf16>
          %271 = arith.minf %cst_3, %cst_3 : f16
          %272 = arith.subi %41, %extracted_60 : i64
          %273 = arith.divsi %c28871_i16, %c28871_i16 : i16
          %274 = index.divs %c15, %c11
          %275 = vector.broadcast %in : i32 to vector<15x15xi32>
          %276 = vector.outerproduct %55, %89, %275 {kind = #vector.kind<maxui>} : vector<15xi32>, vector<15xi32>
          %277 = math.absf %12 : tensor<15xf16>
          %278 = arith.mulf %cst_5, %cst_2 : f16
          %279 = math.round %1 : tensor<15xf16>
          %280 = vector.broadcast %98 : index to vector<15xindex>
          vector.scatter %alloc_18[%c10] [%280], %54, %54 : memref<15xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
          %281 = index.ceildivs %25, %c15
          bufferization.dealloc_tensor %4 : tensor<12x7x12xi32>
          %282 = math.atan2 %5, %13 : tensor<15xf16>
          %283 = math.rsqrt %cst_2 : f16
          %284 = math.log %5 : tensor<15xf16>
          %285 = vector.flat_transpose %56 {columns = 5 : i32, rows = 3 : i32} : vector<15xf16> -> vector<15xf16>
          %286 = arith.divsi %false_33, %false_0 : i1
          %287 = bufferization.to_memref %8 : memref<12x7x12xf16>
          %288 = vector.broadcast %cst_3 : f16 to vector<15xf16>
          vector.transfer_write %288, %287[%35, %267, %99] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<15xf16>, memref<12x7x12xf16>
          %289 = math.copysign %1, %13 : tensor<15xf16>
          %cst_62 = arith.constant 1.000000e+00 : f16
          %cst_63 = arith.constant 0.000000e+00 : f16
          %290 = vector.transfer_read %alloc_11[%c10, %281, %c0], %cst_63 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<12x7x12xf16>, vector<15xf16>
          %291 = index.maxs %c6, %c2
          %c0_i32_64 = arith.constant 0 : i32
          linalg.yield %c0_i32_64 : i32
        }
      %splat = tensor.splat %cst_5 : tensor<15xf16>
      %255 = bufferization.to_tensor %alloc_9 : memref<12x7x12xf16>
      %256 = index.mul %c10, %c13
      %257 = vector.broadcast %true : i1 to vector<12x12xi1>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %106, %67, %257 : vector<12x7x12xi1>, vector<7xi1> into vector<12x12xi1>
      %259 = math.ceil %cst_2 : f16
      %260 = affine.apply affine_map<(d0, d1, d2) -> (d1 mod 32)>(%c11, %256, %c3)
      %261 = arith.shrui %c0_i32, %c0_i32 : i32
      affine.yield %c1109316681_i64 : i64
    }
    %126 = arith.floordivsi %41, %c487023468_i64 : i64
    %127 = index.casts %c24519_i16 : i16 to index
    %128 = arith.cmpf une, %cst_1, %cst_5 : f16
    %129 = arith.minui %c487023468_i64, %c1109316681_i64 : i64
    %130 = tensor.empty() : tensor<15xf16>
    %alloc_34 = memref.alloc() : memref<15xi64>
    %alloca_35 = memref.alloca() : memref<12x7x12xi1>
    %131 = index.add %53, %c3
    %alloc_36 = memref.alloc() : memref<12xi32>
    %132 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_36 : memref<12xi32>) outs(%4 : tensor<12x7x12xi32>) {
    ^bb0(%in: i32, %out: i32):
      %254 = arith.minf %cst, %cst_5 : f16
      %255 = vector.broadcast %in : i32 to vector<15xi32>
      %256 = memref.load %alloc_15[%c0] : memref<15xi64>
      %c13976889_i32 = arith.constant 13976889 : i32
      %257 = arith.divsi %c199_i16, %c24519_i16 : i16
      memref.copy %alloc_20, %81 : memref<15xi16> to memref<15xi16>
      %258 = memref.atomic_rmw addf %cst, %alloc_9[%c2, %c1, %c4] : (f16, memref<12x7x12xf16>) -> f16
      %259 = vector.flat_transpose %111 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %260 = math.round %cst_3 : f16
      %c0_i32_59 = arith.constant 0 : i32
      %c0_i32_60 = arith.constant 0 : i32
      %261 = vector.transfer_read %4[%c10, %c0, %c11], %c0_i32_60 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<12x7x12xi32>, vector<12x12xi32>
      %alloc_61 = memref.alloc() : memref<15xi64>
      %alloc_62 = memref.alloc() : memref<15xi16>
      %262 = arith.divsi %false_0, %false_0 : i1
      %263 = index.divu %c5, %c12
      %expanded_63 = tensor.expand_shape %15 [[0, 1]] : tensor<15xi16> into tensor<15x1xi16>
      %264 = arith.subi %c1109316681_i64, %c1237570205_i64 : i64
      %265 = arith.divui %c1237570205_i64, %41 : i64
      affine.for %arg1 = 0 to 115 {
      }
      %266 = tensor.empty() : tensor<1x15xi16>
      %267 = tensor.empty() : tensor<15x15xi16>
      %268 = linalg.matmul ins(%expanded_63, %266 : tensor<15x1xi16>, tensor<1x15xi16>) outs(%267 : tensor<15x15xi16>) -> tensor<15x15xi16>
      %269 = vector.load %alloc_6[%c14] : memref<15xf32>, vector<12x7x12xf32>
      %270 = memref.realloc %alloc_20 : memref<15xi16> to memref<15xi16>
      %271 = affine.for %arg1 = 0 to 45 iter_args(%arg2 = %c0) -> (index) {
        affine.yield %c2 : index
      }
      %272 = vector.broadcast %cst : f16 to vector<f16>
      %273 = vector.transfer_write %272, %1[%99] : vector<f16>, tensor<15xf16>
      %274 = math.absi %14 : tensor<15xi64>
      %275 = vector.bitcast %105 : vector<12x7x12xf16> to vector<12x7x12xi16>
      memref.alloca_scope  {
        %282 = math.round %cst_4 : f32
        %283 = vector.splat %c8 : vector<15xindex>
        %284 = vector.splat %c0 : vector<15xindex>
        %285 = arith.remf %cst, %cst_1 : f16
        %286 = vector.extract_strided_slice %255 {offsets = [6], sizes = [4], strides = [1]} : vector<15xi32> to vector<4xi32>
        %287 = math.exp2 %5 : tensor<15xf16>
        %288 = tensor.empty() : tensor<15x15xi16>
        %289 = linalg.matmul ins(%267, %267 : tensor<15x15xi16>, tensor<15x15xi16>) outs(%288 : tensor<15x15xi16>) -> tensor<15x15xi16>
        %290 = math.cos %5 : tensor<15xf16>
        %291 = vector.splat %c24519_i16 : vector<15xi16>
        %292 = vector.extract %86[3] : vector<15xi64>
        %293 = vector.insertelement %c199_i16, %66[%c5 : index] : vector<7xi16>
        %294 = arith.cmpi uge, %c-6183_i16, %c28871_i16 : i16
        %295 = math.round %5 : tensor<15xf16>
        %296 = vector.splat %c11 : vector<15xindex>
        %297 = math.tanh %12 : tensor<15xf16>
        %298 = arith.remf %cst_3, %cst_2 : f16
        %299 = arith.andi %c487023468_i64, %c487023468_i64 : i64
        %extracted_64 = tensor.extract %90[%c11] : tensor<15xi64>
        %300 = vector.multi_reduction <maxf>, %52, %cst_3 [0] : vector<15xf16> to f16
        %301 = vector.create_mask %51, %c9, %c7 : vector<12x7x12xi1>
        %302 = bufferization.clone %alloc_17 : memref<15xi32> to memref<15xi32>
        %rank_65 = tensor.rank %14 : tensor<15xi64>
        %303 = math.round %8 : tensor<12x7x12xf16>
        %collapsed_66 = tensor.collapse_shape %generated_31 [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
        %304 = index.add %c15, %263
        %305 = math.exp %1 : tensor<15xf16>
        %306 = arith.divsi %c0_i32_59, %c0_i32 : i32
        %307 = math.rsqrt %8 : tensor<12x7x12xf16>
        %expanded_67 = tensor.expand_shape %288 [[0], [1, 2]] : tensor<15x15xi16> into tensor<15x15x1xi16>
        %308 = math.absf %5 : tensor<15xf16>
        %309 = index.casts %false : i1 to index
        %310 = index.maxu %c13, %304
      }
      %276 = math.expm1 %cst : f16
      %277 = memref.alloca_scope  -> (memref<15xi1>) {
        %282 = math.tanh %12 : tensor<15xf16>
        %283 = vector.splat %c5 : vector<12x7x12xindex>
        %284 = index.mul %51, %25
        %285 = math.absf %8 : tensor<12x7x12xf16>
        %286 = arith.muli %false, %true : i1
        %287 = vector.bitcast %85 : vector<15xi64> to vector<15xi64>
        %288 = bufferization.to_tensor %alloc_22 : memref<15xi64>
        %289 = index.add %c9, %c14
        %alloca_64 = memref.alloca() : memref<12x7x12xf16>
        %290 = memref.realloc %110 : memref<15xi1> to memref<7xi1>
        memref.store %c1109316681_i64, %alloc_15[%c0] : memref<15xi64>
        %291 = index.divs %51, %119
        %292 = math.tan %13 : tensor<15xf16>
        %expanded_65 = tensor.expand_shape %15 [[0, 1]] : tensor<15xi16> into tensor<15x1xi16>
        memref.store %cst_3, %alloc_9[%c1, %c5, %c0] : memref<12x7x12xf16>
        %293 = math.absi %6 : tensor<15xi64>
        %294 = arith.subi %c1109316681_i64, %c1109316681_i64 : i64
        %295 = vector.extract %89[12] : vector<15xi32>
        memref.store %c199_i16, %alloc_20[%c2] : memref<15xi16>
        %296 = vector.broadcast %c199_i16 : i16 to vector<i16>
        vector.transfer_write %296, %alloc_14[%25] : vector<i16>, memref<15xi16>
        %297 = tensor.empty(%73) : tensor<?xf32>
        %collapsed_66 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
        %298 = math.rsqrt %8 : tensor<12x7x12xf16>
        %299 = arith.minui %in, %c0_i32 : i32
        %300 = vector.transpose %269, [1, 0, 2] : vector<12x7x12xf32> to vector<7x12x12xf32>
        %301 = math.round %cst : f16
        %302 = arith.divsi %false_0, %true : i1
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_67 = arith.constant 0 : i32
        %303 = vector.transfer_read %10[%c6], %c0_i32_67 : tensor<15xi32>, vector<i32>
        memref.store %in, %alloc_21[%c11, %c6] : memref<12x12xi32>
        %c0_i64_68 = arith.constant 0 : i64
        %c0_i64_69 = arith.constant 0 : i64
        %304 = vector.transfer_read %50[%25], %c0_i64_69 : tensor<15xi64>, vector<i64>
        %305 = math.absi %15 : tensor<15xi16>
        %306 = arith.remf %cst_3, %cst_3 : f16
        memref.alloca_scope.return %alloc_16 : memref<15xi1>
      }
      %278 = vector.flat_transpose %66 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      %279 = math.floor %130 : tensor<15xf16>
      %280 = math.absi %41 : i64
      %281 = vector.insertelement %cst_1, %272[] : vector<f16>
      linalg.yield %c0_i32_59 : i32
    } -> tensor<12x7x12xi32>
    %133 = vector.extract %107[4] : vector<12x7x12xi32>
    scf.if %true {
      affine.store %cst_5, %alloc_7[%c3, %c10, %c10] : memref<12x7x12xf16>
      %254 = memref.realloc %110 : memref<15xi1> to memref<7xi1>
      %255 = index.floordivs %127, %c13
      %256 = arith.floordivsi %41, %c1109316681_i64 : i64
      %257 = vector.gather %alloc_16[%c11] [%89], %54, %54 : memref<15xi1>, vector<15xi32>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      %258 = arith.minf %cst_5, %cst_5 : f16
      %259 = vector.broadcast %41 : i64 to vector<15x15xi64>
      %260 = vector.outerproduct %85, %86, %259 {kind = #vector.kind<minsi>} : vector<15xi64>, vector<15xi64>
      %261 = vector.broadcast %false : i1 to vector<12x7xi1>
      %dest_59, %accumulated_value_60 = vector.scan <xor>, %106, %261 {inclusive = true, reduction_dim = 2 : i64} : vector<12x7x12xi1>, vector<12x7xi1>
    }
    %134 = arith.cmpi uge, %false_33, %true : i1
    %135 = bufferization.to_tensor %alloc_12 : memref<12x7x12xi1>
    %136 = math.absi %false_0 : i1
    %137 = vector.extract %88[2] : vector<3xi16>
    %138 = vector.extract_strided_slice %108 {offsets = [1, 4], sizes = [4, 2], strides = [1, 1]} : vector<12x7x12xf16> to vector<4x2x12xf16>
    %alloc_37 = memref.alloc() : memref<15xi32>
    %139 = arith.maxf %cst_4, %cst_4 : f32
    %140 = memref.alloca_scope  -> (f16) {
      %254 = math.log1p %1 : tensor<15xf16>
      %255 = index.sizeof
      %256 = bufferization.clone %alloc_15 : memref<15xi64> to memref<15xi64>
      %257 = vector.splat %91 : vector<15xindex>
      %258 = bufferization.clone %alloc_6 : memref<15xf32> to memref<15xf32>
      %259 = arith.divui %false_33, %false_0 : i1
      %260 = arith.cmpf oge, %cst_4, %cst_4 : f32
      %261 = arith.andi %c-6183_i16, %c24519_i16 : i16
      %262 = math.cos %13 : tensor<15xf16>
      %263 = math.exp %cst_3 : f16
      %264 = index.add %98, %26
      %265 = index.casts %c28871_i16 : i16 to index
      %266 = arith.muli %c1109316681_i64, %41 : i64
      %267 = memref.realloc %110 : memref<15xi1> to memref<15xi1>
      %268 = math.atan %cst_4 : f32
      %269 = bufferization.to_tensor %81 : memref<15xi16>
      %collapsed_59 = tensor.collapse_shape %generated_31 [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
      %270 = vector.splat %c10 : vector<15xindex>
      %271 = math.ctlz %2 : tensor<15xi32>
      %272 = math.ipowi %20, %20 : tensor<i64>
      %273 = vector.shuffle %133, %133 [2, 3, 4, 5, 6, 7, 9, 10, 12] : vector<7x12xi32>, vector<7x12xi32>
      %274 = vector.broadcast %c199_i16 : i16 to vector<15xi16>
      %275 = vector.splat %99 : vector<15xindex>
      %276 = vector.broadcast %true : i1 to vector<15x15xi1>
      %277 = vector.outerproduct %54, %54, %276 {kind = #vector.kind<mul>} : vector<15xi1>, vector<15xi1>
      %278 = vector.broadcast %c0_i32 : i32 to vector<i32>
      vector.transfer_write %278, %alloc_17[%c11] : vector<i32>, memref<15xi32>
      %279 = vector.splat %99 : vector<12x7x12xindex>
      memref.store %41, %256[%c12] : memref<15xi64>
      %280 = vector.broadcast %c24519_i16 : i16 to vector<15x15xi16>
      %281 = vector.outerproduct %111, %111, %280 {kind = #vector.kind<xor>} : vector<15xi16>, vector<15xi16>
      scf.execute_region {
        %283 = arith.remf %cst, %cst_1 : f16
        %284 = vector.extract_strided_slice %111 {offsets = [0], sizes = [1], strides = [1]} : vector<15xi16> to vector<1xi16>
        %285 = arith.remf %cst_4, %cst_4 : f32
        %286 = arith.subi %41, %41 : i64
        %287 = math.round %8 : tensor<12x7x12xf16>
        %288 = arith.remui %false_0, %false : i1
        %289 = vector.extract %67[6] : vector<7xi1>
        %290 = vector.bitcast %133 : vector<7x12xi32> to vector<7x12xi32>
        %291 = index.floordivs %119, %131
        %292 = vector.extract %111[6] : vector<15xi16>
        %293 = math.ctpop %17 : tensor<15xi32>
        memref.store %c199_i16, %81[%c11] : memref<15xi16>
        %294 = tensor.empty() : tensor<15xf32>
        %295 = vector.gather %16[%c15] [%89], %54, %89 : tensor<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %296 = math.floor %130 : tensor<15xf16>
        %inserted_62 = tensor.insert %cst_2 into %12[%c0] : tensor<15xf16>
        scf.yield
      }
      %282 = vector.load %alloc_22[%c5] : memref<15xi64>, vector<12x7x12xi64>
      %alloc_60 = memref.alloc() : memref<15xf16>
      %extracted_61 = tensor.extract %11[%c11] : tensor<15xi64>
      memref.alloca_scope.return %cst : f16
    }
    %cst_38 = arith.constant 1.000000e+00 : f16
    %cst_39 = arith.constant 0.000000e+00 : f16
    %141 = vector.transfer_read %130[%127], %cst_39 : tensor<15xf16>, vector<f16>
    %142 = math.log10 %140 : f16
    %143 = memref.load %alloc_13[%c12] : memref<15xi1>
    %144 = index.casts %91 : index to i32
    %145 = math.expm1 %cst_2 : f16
    %146 = index.sub %c13, %c5
    %147 = math.ctlz %15 : tensor<15xi16>
    %148 = arith.remui %c24519_i16, %c24519_i16 : i16
    memref.store %c1237570205_i64, %alloc_19[%c6] : memref<15xi64>
    memref.store %false_0, %alloc_13[%c7] : memref<15xi1>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %149 = vector.transfer_read %14[%119], %c0_i64 : tensor<15xi64>, vector<i64>
    %150 = arith.minf %cst_3, %cst_1 : f16
    %151 = math.absf %cst : f16
    %152 = vector.broadcast %c1237570205_i64 : i64 to vector<12x12xi64>
    %153 = vector.outerproduct %19, %49, %152 {kind = #vector.kind<xor>} : vector<12xi64>, vector<12xi64>
    %154 = arith.divsi %c199_i16, %c24519_i16 : i16
    %155 = arith.floordivsi %c199_i16, %c28871_i16 : i16
    %156 = arith.shrsi %c-6183_i16, %c199_i16 : i16
    %157 = vector.insert %133, %107 [9] : vector<7x12xi32> into vector<12x7x12xi32>
    %158 = memref.realloc %110 : memref<15xi1> to memref<7xi1>
    %false_40 = index.bool.constant false
    %159 = index.castu %c4 : index to i32
    %160 = vector.load %alloc[%c1] : memref<15xf16>, vector<12x7x12xf16>
    %161 = index.floordivs %36, %c0
    %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
    %162 = arith.cmpf uno, %cst, %cst_3 : f16
    %163 = vector.maskedload %alloc_20[%c8], %54, %111 : memref<15xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
    %164 = vector.multi_reduction <minsi>, %163, %111 [] : vector<15xi16> to vector<15xi16>
    %165 = math.log1p %cst_2 : f16
    %rank = tensor.rank %2 : tensor<15xi32>
    %166 = scf.index_switch %c12 -> index 
    case 1 {
      %254 = math.expm1 %cst : f16
      %255 = arith.maxf %cst, %cst_1 : f16
      %256 = math.cos %12 : tensor<15xf16>
      %257 = bufferization.clone %alloc_12 : memref<12x7x12xi1> to memref<12x7x12xi1>
      %258 = arith.minf %cst_38, %140 : f16
      %259 = arith.shli %c28871_i16, %c24519_i16 : i16
      %260 = vector.bitcast %49 : vector<12xi64> to vector<12xi64>
      %261 = affine.if affine_set<(d0, d1) : (d1 * 2 >= 0, (d1 + d0 mod 4 + d1) * 16 == 0, -(d0 mod 4 + d1) >= 0, (-(d0 mod 4 + d1)) floordiv 2 - 2 >= 0)>(%c7, %c6) -> i32 {
        %268 = math.round %130 : tensor<15xf16>
        %269 = arith.cmpf one, %cst_38, %cst_38 : f16
        %270 = vector.broadcast %c8 : index to vector<15xindex>
        vector.scatter %alloc_9[%c9, %c0, %c10] [%270], %54, %123 : memref<12x7x12xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        %271 = index.divs %91, %rank
        memref.store %c0_i32, %alloc_17[%c7] : memref<15xi32>
        %272 = math.exp %cst : f16
        %273 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %274 = vector.broadcast %c14 : index to vector<12xindex>
        %275 = vector.broadcast %false_33 : i1 to vector<12xi1>
        vector.scatter %alloc_13[%c1] [%274], %275, %275 : memref<15xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        affine.yield %c0_i32 : i32
      } else {
        %268 = vector.broadcast %c0_i32 : i32 to vector<i32>
        %269 = vector.transfer_write %268, %2[%rank] : vector<i32>, tensor<15xi32>
        %270 = vector.splat %c12 : vector<15xindex>
        %271 = index.maxs %c6, %c11
        %272 = arith.xori %41, %c1_i64 : i64
        %cst_59 = arith.constant 1.000000e+00 : f16
        %cst_60 = arith.constant 0.000000e+00 : f16
        %273 = vector.transfer_read %1[%c1], %cst_60 : tensor<15xf16>, vector<f16>
        %274 = arith.mulf %cst, %cst_38 : f16
        %275 = math.atan2 %cst_38, %140 : f16
        %276 = arith.divsi %true, %true : i1
        affine.yield %c0_i32 : i32
      }
      %262 = vector.flat_transpose %49 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
      %263 = vector.splat %c13 : vector<15xindex>
      memref.store %false_33, %alloc_12[%c3, %c5, %c7] : memref<12x7x12xi1>
      %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %56, %56, %cst_3 : vector<15xf16>, vector<15xf16> into f16
      %265 = arith.divsi %false_0, %false_33 : i1
      %266 = math.atan2 %12, %13 : tensor<15xf16>
      %267 = math.log10 %cst_3 : f16
      affine.for %arg1 = 0 to 86 {
      }
      scf.yield %53 : index
    }
    case 2 {
      %254 = arith.xori %c24519_i16, %c-6183_i16 : i16
      %255 = arith.divui %c0_i32, %c0_i32 : i32
      %256 = arith.remf %cst_5, %140 : f16
      %257 = vector.broadcast %c24519_i16 : i16 to vector<15x15xi16>
      %258 = vector.outerproduct %163, %163, %257 {kind = #vector.kind<add>} : vector<15xi16>, vector<15xi16>
      %259 = vector.broadcast %140 : f16 to vector<15x15xf16>
      %260 = vector.outerproduct %123, %52, %259 {kind = #vector.kind<maxf>} : vector<15xf16>, vector<15xf16>
      %261 = arith.remui %true, %false_33 : i1
      %262 = math.fma %cst_4, %cst_4, %cst_4 : f32
      %generated_59 = tensor.generate %146 {
      ^bb0(%arg1: index):
        %273 = math.roundeven %cst_38 : f16
        %274 = arith.andi %c-6183_i16, %c199_i16 : i16
        %275 = arith.remf %cst_38, %cst_5 : f16
        %276 = math.atan %expanded : tensor<15x1xf16>
        tensor.yield %cst_2 : f16
      } : tensor<?xf16>
      %263 = vector.load %alloc_12[%c0, %c1, %c11] : memref<12x7x12xi1>, vector<15xi1>
      %264 = arith.divsi %true, %false : i1
      %265 = math.absi %15 : tensor<15xi16>
      %266 = vector.broadcast %c0_i32 : i32 to vector<i32>
      %267 = vector.transfer_write %266, %10[%c0] : vector<i32>, tensor<15xi32>
      %268 = math.absi %11 : tensor<15xi64>
      %269 = math.cttz %11 : tensor<15xi64>
      %alloc_60 = memref.alloc() : memref<12x7xi1>
      %alloc_61 = memref.alloc() : memref<12x12x7xi1>
      %270 = tensor.empty() : tensor<12xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_60, %alloc_61, %270 : memref<12x7xi1>, memref<12x12x7xi1>, tensor<12xi1>) outs(%3 : tensor<12x7x12xi1>) {
      ^bb0(%in: i1, %in_62: i1, %in_63: i1, %out: i1):
        %273 = math.cos %cst_4 : f32
        %alloc_64 = memref.alloc() : memref<15xf32>
        memref.copy %alloc_6, %alloc_64 : memref<15xf32> to memref<15xf32>
        %274 = arith.remf %cst_3, %cst_5 : f16
        %275 = vector.multi_reduction <xor>, %133, %c0_i32 [0, 1] : vector<7x12xi32> to i32
        %276 = arith.divsi %c1109316681_i64, %c1_i64 : i64
        %277 = vector.splat %c12 : vector<15xindex>
        %278 = math.cos %5 : tensor<15xf16>
        %279 = vector.insertelement %true, %263[%36 : index] : vector<15xi1>
        %280 = memref.atomic_rmw maxu %275, %alloc_21[%c6, %c9] : (i32, memref<12x12xi32>) -> i32
        %281 = index.mul %127, %c9
        %282 = bufferization.to_memref %12 : memref<15xf16>
        %283 = arith.minf %cst_3, %cst_1 : f16
        %284 = arith.subi %false_40, %in : i1
        memref.store %cst_5, %alloc_9[%c4, %c6, %c0] : memref<12x7x12xf16>
        %285 = vector.insertelement %cst_2, %123[%131 : index] : vector<15xf16>
        %286 = vector.gather %90[%161] [%55], %54, %85 : tensor<15xi64>, vector<15xi32>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %287 = vector.transpose %263, [0] : vector<15xi1> to vector<15xi1>
        %288 = arith.xori %c28871_i16, %c199_i16 : i16
        %289 = arith.remf %cst_1, %cst : f16
        %290 = math.round %12 : tensor<15xf16>
        %291 = tensor.empty() : tensor<12x7x12xi1>
        %292 = bufferization.to_tensor %alloc_8 : memref<12x7x12xi64>
        %293 = arith.negf %cst : f16
        %294 = math.floor %8 : tensor<12x7x12xf16>
        %295 = math.expm1 %expanded : tensor<15x1xf16>
        %296 = math.copysign %1, %12 : tensor<15xf16>
        %297 = memref.load %alloc[%c8] : memref<15xf16>
        %298 = arith.xori %c1_i64, %c1109316681_i64 : i64
        %299 = arith.minf %cst_2, %cst_5 : f16
        %300 = index.add %99, %73
        %301 = vector.multi_reduction <maxsi>, %88, %c-6183_i16 [0] : vector<3xi16> to i16
        %alloca_65 = memref.alloca() : memref<12x7x12xi1>
        linalg.yield %true : i1
      } -> tensor<12x7x12xi1>
      %272 = arith.minui %false, %false_0 : i1
      scf.yield %119 : index
    }
    case 3 {
      %254 = arith.xori %c1237570205_i64, %c1237570205_i64 : i64
      %255 = index.divs %116, %119
      %256 = arith.remf %cst_3, %cst_5 : f16
      %257 = math.roundeven %cst_1 : f16
      %258 = math.absf %cst_5 : f16
      %259 = index.casts %161 : index to i32
      %260 = arith.remui %c28871_i16, %c28871_i16 : i16
      %261 = math.cttz %14 : tensor<15xi64>
      %262 = vector.insertelement %c487023468_i64, %103[] : vector<i64>
      %263 = arith.addf %cst_2, %cst_1 : f16
      %264 = tensor.empty() : tensor<15xf16>
      %mapped_59 = linalg.map ins(%13 : tensor<15xf16>) outs(%264 : tensor<15xf16>)
        (%in: f16) {
          %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %54, %54, %false_33 : vector<15xi1>, vector<15xi1> into i1
          %270 = index.casts %true : i1 to index
          %271 = math.ceil %cst_38 : f16
          %dest_60, %accumulated_value_61 = vector.scan <minsi>, %107, %133 {inclusive = true, reduction_dim = 0 : i64} : vector<12x7x12xi32>, vector<7x12xi32>
          %extracted_62 = tensor.extract %5[%c13] : tensor<15xf16>
          %272 = math.exp %cst_1 : f16
          %273 = arith.maxsi %41, %c1237570205_i64 : i64
          %274 = math.absf %cst_3 : f16
          %275 = index.mul %c9, %c13
          %alloc_63 = memref.alloc() : memref<15xi64>
          %276 = arith.subi %c28871_i16, %c199_i16 : i16
          %277 = arith.ceildivsi %c-6183_i16, %c199_i16 : i16
          %278 = bufferization.to_tensor %alloc_10 : memref<15xi64>
          memref.store %extracted_62, %alloc_7[%c7, %c2, %c1] : memref<12x7x12xf16>
          %279 = arith.cmpf false, %cst_3, %cst_1 : f16
          %280 = index.sub %c8, %c11
          %281 = vector.insertelement %cst_3, %56[%119 : index] : vector<15xf16>
          %282 = math.expm1 %13 : tensor<15xf16>
          %c0_i64_64 = arith.constant 0 : i64
          %c0_i64_65 = arith.constant 0 : i64
          %283 = vector.transfer_read %90[%25], %c0_i64_65 : tensor<15xi64>, vector<i64>
          %284 = arith.andi %c0_i32, %c0_i32 : i32
          %285 = vector.transpose %108, [0, 2, 1] : vector<12x7x12xf16> to vector<12x12x7xf16>
          %alloca_66 = memref.alloca() : memref<15xi64>
          %splat = tensor.splat %c0_i32 : tensor<12x7x12xi32>
          %286 = arith.xori %c1109316681_i64, %41 : i64
          %287 = math.atan2 %cst_4, %cst_4 : f32
          %288 = vector.broadcast %c1237570205_i64 : i64 to vector<15x15xi64>
          %289 = vector.outerproduct %85, %86, %288 {kind = #vector.kind<xor>} : vector<15xi64>, vector<15xi64>
          %290 = math.absf %cst : f16
          %291 = arith.cmpf une, %cst_5, %cst : f16
          %292 = vector.broadcast %cst_38 : f16 to vector<12x7x12xf16>
          vector.print %160 : vector<12x7x12xf16>
          %293 = vector.broadcast %c7 : index to vector<7xindex>
          %294 = vector.broadcast %c0_i32 : i32 to vector<7xi32>
          vector.scatter %alloc_21[%c4, %c3] [%293], %67, %294 : memref<12x12xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %295 = tensor.empty() : tensor<1x15xf16>
          %296 = tensor.empty() : tensor<15x15xf16>
          %297 = linalg.matmul ins(%expanded, %295 : tensor<15x1xf16>, tensor<1x15xf16>) outs(%296 : tensor<15x15xf16>) -> tensor<15x15xf16>
          %cst_67 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_67 : f16
        }
      %265 = math.absi %transposed : tensor<15xi1>
      %266 = index.mul %c12, %73
      %267 = vector.flat_transpose %66 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      affine.for %arg1 = 0 to 10 {
      }
      %268 = math.copysign %1, %264 : tensor<15xf16>
      scf.yield %c8 : index
    }
    case 4 {
      %254 = math.log1p %12 : tensor<15xf16>
      %255 = memref.realloc %110 : memref<15xi1> to memref<7xi1>
      %extracted_59 = tensor.extract %16[%c13] : tensor<15xi32>
      %256 = math.absf %13 : tensor<15xf16>
      %257 = math.log1p %13 : tensor<15xf16>
      %258 = vector.broadcast %cst_4 : f32 to vector<15xf32>
      %259 = vector.fma %258, %258, %258 : vector<15xf32>
      %260 = arith.divui %c1237570205_i64, %c1237570205_i64 : i64
      %261 = memref.realloc %alloc_14 : memref<15xi16> to memref<15xi16>
      %collapsed_60 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<12x7x12xi1> into tensor<84x12xi1>
      %collapsed_61 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
      %262 = vector.shuffle %55, %55 [0, 3, 5, 9, 11, 12, 14, 15, 16, 17, 18, 21, 22, 24, 25, 27, 28] : vector<15xi32>, vector<15xi32>
      %263 = math.floor %cst_2 : f16
      %264 = tensor.empty() : tensor<12x15xi1>
      %265 = tensor.empty() : tensor<84x15xi1>
      %266 = linalg.matmul ins(%collapsed_60, %264 : tensor<84x12xi1>, tensor<12x15xi1>) outs(%265 : tensor<84x15xi1>) -> tensor<84x15xi1>
      %267 = affine.for %arg1 = 0 to 92 iter_args(%arg2 = %c1_i64) -> (i64) {
        affine.yield %c1109316681_i64 : i64
      }
      %268 = vector.broadcast %c1109316681_i64 : i64 to vector<15xi64>
      %269 = arith.remf %140, %cst_3 : f16
      scf.yield %c6 : index
    }
    default {
      %254 = vector.broadcast %cst_4 : f32 to vector<12x7x12xf32>
      %255 = vector.fma %254, %254, %254 : vector<12x7x12xf32>
      %256 = vector.broadcast %true : i1 to vector<15xi1>
      %257 = index.maxs %c6, %36
      %258 = tensor.empty(%rank) : tensor<?x7x12xf32>
      %259 = tensor.empty() : tensor<12x7x12xi32>
      %mapped_59 = linalg.map ins(%4, %4, %4 : tensor<12x7x12xi32>, tensor<12x7x12xi32>, tensor<12x7x12xi32>) outs(%259 : tensor<12x7x12xi32>)
        (%in: i32, %in_60: i32, %in_61: i32) {
          %271 = math.exp2 %cst_2 : f16
          %272 = arith.muli %c-6183_i16, %c199_i16 : i16
          %273 = arith.addf %cst_4, %cst_4 : f32
          %274 = math.absi %11 : tensor<15xi64>
          %275 = memref.load %alloc_17[%c13] : memref<15xi32>
          %276 = math.cos %expanded : tensor<15x1xf16>
          %alloca_62 = memref.alloca() : memref<15xi32>
          %collapsed_63 = tensor.collapse_shape %generated_31 [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
          %277 = vector.extract %111[3] : vector<15xi16>
          vector.print %108 : vector<12x7x12xf16>
          %278 = index.divs %116, %c3
          %279 = affine.max affine_map<(d0, d1) -> (d0 mod 4, (d0 mod 4) floordiv 64, (d0 mod 4) floordiv 64, d1 floordiv 2 + d1 - (d0 - 1))>(%c15, %51)
          %280 = vector.gather %110[%c12] [%107], %106, %106 : memref<15xi1>, vector<12x7x12xi32>, vector<12x7x12xi1>, vector<12x7x12xi1> into vector<12x7x12xi1>
          %c1_i64_64 = arith.constant 1 : i64
          %281 = vector.transfer_read %alloc_15[%c15], %c1_i64_64 : memref<15xi64>, vector<i64>
          %inserted_65 = tensor.insert %false_40 into %3[%c9, %c2, %c11] : tensor<12x7x12xi1>
          %282 = index.ceildivs %c4, %36
          %283 = vector.broadcast %cst_4 : f32 to vector<15xf32>
          %284 = vector.fma %283, %283, %283 : vector<15xf32>
          %285 = math.atan2 %expanded, %expanded : tensor<15x1xf16>
          %286 = vector.broadcast %cst_4 : f32 to vector<15xf32>
          %287 = vector.fma %286, %286, %286 : vector<15xf32>
          %288 = bufferization.clone %alloc_10 : memref<15xi64> to memref<15xi64>
          %289 = bufferization.clone %alloc_16 : memref<15xi1> to memref<15xi1>
          %290 = math.log1p %cst_38 : f16
          %291 = vector.extract_strided_slice %254 {offsets = [1], sizes = [11], strides = [1]} : vector<12x7x12xf32> to vector<11x7x12xf32>
          %292 = index.mul %c4, %161
          %293 = math.floor %cst_4 : f32
          %294 = vector.insertelement %c1109316681_i64, %86[%c6 : index] : vector<15xi64>
          %295 = vector.extract %286[14] : vector<15xf32>
          %296 = arith.floordivsi %false_0, %false_40 : i1
          memref.copy %288, %alloc_15 : memref<15xi64> to memref<15xi64>
          %297 = index.sub %c9, %161
          %298 = vector.broadcast %false_40 : i1 to vector<12x7x12xi1>
          %299 = math.round %cst_1 : f16
          %c0_i32_66 = arith.constant 0 : i32
          linalg.yield %c0_i32_66 : i32
        }
      memref.copy %alloc_13, %110 : memref<15xi1> to memref<15xi1>
      %260 = vector.create_mask %c11 : vector<15xi1>
      %261 = arith.remf %cst_5, %cst_3 : f16
      %262 = tensor.empty() : tensor<15xi16>
      %263 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 mod 32) floordiv 4 - d3 ceildiv 4 - 128)>(%c1, %131, %c3, %146)
      %264 = vector.gather %alloc_11[%c5, %c7, %257] [%55], %260, %123 : memref<12x7x12xf16>, vector<15xi32>, vector<15xi1>, vector<15xf16> into vector<15xf16>
      %265 = vector.broadcast %false : i1 to vector<i1>
      %266 = vector.transfer_write %265, %3[%c2, %c0, %c1] : vector<i1>, tensor<12x7x12xi1>
      %267 = vector.shuffle %123, %56 [2, 4, 5, 7, 9, 10, 12, 15, 18, 20, 23, 24, 25, 26, 27, 29] : vector<15xf16>, vector<15xf16>
      %268 = arith.maxsi %false_40, %false_33 : i1
      %269 = math.round %1 : tensor<15xf16>
      %270 = arith.minf %cst_3, %cst_5 : f16
      scf.yield %c7 : index
    }
    %167 = vector.broadcast %116 : index to vector<15xindex>
    vector.scatter %alloc_17[%c12] [%167], %54, %89 : memref<15xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
    %168 = tensor.empty() : tensor<15xi1>
    %mapped_41 = linalg.map ins(%alloc_13, %transposed, %0 : memref<15xi1>, tensor<15xi1>, tensor<15xi1>) outs(%168 : tensor<15xi1>)
      (%in: i1, %in_59: i1, %in_60: i1) {
        %254 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %255 = vector.fma %254, %254, %254 : vector<15xf32>
        %256 = index.divu %73, %91
        %257 = arith.cmpf true, %cst_1, %cst : f16
        %258 = math.log1p %cst_4 : f32
        %259 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %260 = vector.fma %259, %259, %259 : vector<15xf32>
        %261 = index.ceildivs %c11, %51
        %262 = arith.mulf %cst_1, %cst_1 : f16
        memref.store %c0_i32, %alloc_21[%c9, %c9] : memref<12x12xi32>
        %generated_61 = tensor.generate %c4 {
        ^bb0(%arg1: index):
          %281 = arith.addf %cst_38, %cst_1 : f16
          %282 = math.absf %130 : tensor<15xf16>
          %283 = vector.splat %91 : vector<15xindex>
          %284 = math.log %5 : tensor<15xf16>
          tensor.yield %cst_1 : f16
        } : tensor<?xf16>
        %263 = arith.minf %140, %cst_2 : f16
        scf.if %in_60 {
          %281 = vector.matrix_multiply %163, %68 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 7 : i32} : (vector<15xi16>, vector<7xi16>) -> vector<105xi16>
          %splat = tensor.splat %cst_3 : tensor<15xf16>
          %282 = math.round %8 : tensor<12x7x12xf16>
          %283 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 4) * 2, ((d0 ceildiv 4) floordiv 8) floordiv 64, -(((d0 ceildiv 4) * 2) floordiv 8) - (d0 ceildiv 4 + 32) ceildiv 8)>(%25, %c5)
          %284 = math.absf %splat : tensor<15xf16>
          %285 = arith.divf %cst, %cst_38 : f16
          %286 = arith.xori %c-6183_i16, %c24519_i16 : i16
          %287 = arith.remui %in_59, %false : i1
        } else {
          %281 = math.round %140 : f16
          %282 = vector.create_mask %c4 : vector<15xi1>
          %283 = math.log1p %cst_2 : f16
          %284 = vector.load %alloc_6[%c14] : memref<15xf32>, vector<15xf32>
          %285 = arith.divui %c24519_i16, %c28871_i16 : i16
          %286 = index.divu %c7, %146
          %287 = math.floor %13 : tensor<15xf16>
          %288 = memref.atomic_rmw muli %c1237570205_i64, %alloc_8[%c7, %c3, %c3] : (i64, memref<12x7x12xi64>) -> i64
        }
        %264 = index.casts %c28871_i16 : i16 to index
        %265 = arith.minf %cst_1, %cst_1 : f16
        %266 = affine.if affine_set<(d0, d1, d2, d3) : (-(d0 ceildiv 32) >= 0, d1 mod 4 == 0, -(d0 ceildiv 32) == 0)>(%c1, %c7, %c1, %c11) -> memref<12x7x12xi32> {
          %281 = bufferization.clone %alloc_8 : memref<12x7x12xi64> to memref<12x7x12xi64>
          memref.assume_alignment %alloc_12, 8 : memref<12x7x12xi1>
          %282 = math.ipowi %c1237570205_i64, %c1237570205_i64 : i64
          %283 = math.copysign %13, %13 : tensor<15xf16>
          %284 = vector.broadcast %c0_i32 : i32 to vector<15x15xi32>
          %285 = vector.outerproduct %55, %55, %284 {kind = #vector.kind<minsi>} : vector<15xi32>, vector<15xi32>
          %286 = math.log1p %8 : tensor<12x7x12xf16>
          %287 = arith.muli %c1_i64, %41 : i64
          %288 = arith.mulf %cst_4, %cst_4 : f32
          %alloc_65 = memref.alloc() : memref<12x7x12xi32>
          affine.yield %alloc_65 : memref<12x7x12xi32>
        } else {
          %cast = tensor.cast %3 : tensor<12x7x12xi1> to tensor<?x?x?xi1>
          %alloc_65 = memref.alloc() : memref<1x12xf16>
          %281 = tensor.empty() : tensor<15x12xf16>
          %282 = linalg.matmul ins(%expanded, %alloc_65 : tensor<15x1xf16>, memref<1x12xf16>) outs(%281 : tensor<15x12xf16>) -> tensor<15x12xf16>
          vector.print %260 : vector<15xf32>
          %alloca_66 = memref.alloca() : memref<15xi1>
          %283 = bufferization.to_tensor %alloc : memref<15xf16>
          %284 = arith.shrui %c1237570205_i64, %c1237570205_i64 : i64
          %285 = arith.divsi %c487023468_i64, %c487023468_i64 : i64
          %286 = index.ceildivu %119, %rank
          %alloc_67 = memref.alloc() : memref<12x7x12xi32>
          affine.yield %alloc_67 : memref<12x7x12xi32>
        }
        %267 = arith.maxf %cst_2, %cst_2 : f16
        %268 = arith.cmpi sle, %in, %in : i1
        %c0_i32_62 = arith.constant 0 : i32
        %269 = vector.transfer_read %17[%161], %c0_i32_62 : tensor<15xi32>, vector<i32>
        %270 = arith.cmpf oeq, %cst_2, %140 : f16
        %inserted_63 = tensor.insert %c24519_i16 into %9[%c3] : tensor<15xi16>
        %271 = vector.extract %88[2] : vector<3xi16>
        %272 = vector.broadcast %116 : index to vector<15xindex>
        vector.scatter %alloc_14[%c4] [%272], %54, %163 : memref<15xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
        %273 = index.mul %35, %c9
        memref.tensor_store %90, %alloc_19 : memref<15xi64>
        scf.index_switch %119 
        case 1 {
          %281 = math.log10 %13 : tensor<15xf16>
          %282 = arith.divsi %c24519_i16, %c28871_i16 : i16
          %283 = vector.gather %16[%99] [%89], %54, %55 : tensor<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
          %284 = index.divs %c13, %116
          %285 = bufferization.to_tensor %alloc_20 : memref<15xi16>
          %286 = index.mul %51, %273
          %287 = vector.broadcast %140 : f16 to vector<15x15xf16>
          %288 = vector.outerproduct %56, %56, %287 {kind = #vector.kind<add>} : vector<15xf16>, vector<15xf16>
          %289 = math.log1p %140 : f16
          %290 = math.absi %11 : tensor<15xi64>
          %291 = math.log %cst_38 : f16
          %292 = index.casts %264 : index to i32
          %293 = vector.splat %cst : vector<15xf16>
          %294 = arith.cmpf ult, %cst_4, %cst_4 : f32
          %295 = arith.cmpf oge, %140, %cst_3 : f16
          %296 = vector.broadcast %cst_3 : f16 to vector<15x15xf16>
          %297 = vector.outerproduct %52, %123, %296 {kind = #vector.kind<minf>} : vector<15xf16>, vector<15xf16>
          memref.store %c487023468_i64, %alloc_22[%c3] : memref<15xi64>
          scf.yield
        }
        case 2 {
          %281 = arith.muli %c1237570205_i64, %c1237570205_i64 : i64
          %282 = vector.broadcast %c487023468_i64 : i64 to vector<i64>
          vector.transfer_write %282, %alloc_15[%c9] : vector<i64>, memref<15xi64>
          %283 = vector.splat %127 : vector<15xindex>
          %284 = index.add %131, %91
          %285 = math.floor %1 : tensor<15xf16>
          %286 = math.log1p %expanded : tensor<15x1xf16>
          vector.print %103 : vector<i64>
          %287 = vector.load %alloc_15[%c14] : memref<15xi64>, vector<15xi64>
          %288 = index.mul %c8, %35
          %inserted_65 = tensor.insert %41 into %50[%c4] : tensor<15xi64>
          %289 = arith.subi %in_60, %in : i1
          %290 = arith.andi %41, %c1237570205_i64 : i64
          %291 = arith.cmpf oge, %cst_5, %cst_1 : f16
          %292 = arith.minui %c24519_i16, %c-6183_i16 : i16
          %293 = arith.remui %false_0, %false_0 : i1
          %294 = math.atan %cst_5 : f16
          scf.yield
        }
        case 3 {
          %281 = arith.muli %41, %c1109316681_i64 : i64
          %282 = index.add %36, %rank
          %283 = math.absi %4 : tensor<12x7x12xi32>
          %284 = index.ceildivs %c3, %c3
          %285 = math.cos %expanded : tensor<15x1xf16>
          %286 = arith.divsi %c24519_i16, %c28871_i16 : i16
          %287 = math.expm1 %cst_5 : f16
          %288 = math.log10 %1 : tensor<15xf16>
          %289 = vector.extract %254[5] : vector<15xf32>
          %290 = arith.subi %in_59, %false : i1
          %291 = arith.remf %cst_38, %cst_5 : f16
          %292 = vector.load %alloc_22[%c5] : memref<15xi64>, vector<15xi64>
          %293 = math.floor %12 : tensor<15xf16>
          %294 = vector.create_mask %116 : vector<15xi1>
          %295 = index.maxs %36, %rank
          %296 = math.copysign %8, %8 : tensor<12x7x12xf16>
          scf.yield
        }
        default {
          %281 = vector.insertelement %cst_4, %255[%c12 : index] : vector<15xf32>
          %282 = arith.divsi %c199_i16, %c28871_i16 : i16
          %283 = vector.load %alloc_8[%c2, %c2, %c0] : memref<12x7x12xi64>, vector<15xi64>
          %284 = index.casts %116 : index to i32
          %285 = math.atan %8 : tensor<12x7x12xf16>
          %286 = vector.extract_strided_slice %254 {offsets = [9], sizes = [4], strides = [1]} : vector<15xf32> to vector<4xf32>
          %287 = arith.minf %cst_4, %cst_4 : f32
          %288 = math.atan %expanded : tensor<15x1xf16>
          %289 = math.rsqrt %cst_5 : f16
          %alloc_65 = memref.alloc() : memref<12x7x12xi32>
          memref.tensor_store %4, %alloc_65 : memref<12x7x12xi32>
          %290 = vector.bitcast %67 : vector<7xi1> to vector<7xi1>
          %291 = affine.min affine_map<(d0, d1) -> (d1 - d0 ceildiv 32 - 8)>(%51, %c1)
          %alloca_66 = memref.alloca() : memref<15xf32>
          %292 = tensor.empty() : tensor<15xi1>
          %splat = tensor.splat %140 : tensor<15xf16>
          %293 = vector.broadcast %c-6183_i16 : i16 to vector<15x15xi16>
          %294 = vector.outerproduct %111, %111, %293 {kind = #vector.kind<minui>} : vector<15xi16>, vector<15xi16>
        }
        %274 = tensor.empty() : tensor<15xf16>
        %275 = math.round %1 : tensor<15xf16>
        %276 = vector.extract_strided_slice %105 {offsets = [0], sizes = [4], strides = [1]} : vector<12x7x12xf16> to vector<4x7x12xf16>
        %277 = arith.remf %cst_2, %cst_3 : f16
        %278 = affine.apply affine_map<(d0) -> (-(d0 + (d0 - 1) * 4))>(%c0)
        memref.tensor_store %transposed, %alloc_13 : memref<15xi1>
        %279 = arith.divsi %c0_i32, %c0_i32_62 : i32
        %280 = arith.floordivsi %false_33, %in_60 : i1
        %true_64 = arith.constant true
        linalg.yield %true_64 : i1
      }
    vector.print %123 : vector<15xf16>
    %169 = math.log10 %cst_4 : f32
    %alloc_42 = memref.alloc() : memref<15xi32>
    %170 = math.ceil %5 : tensor<15xf16>
    %171 = arith.remui %c199_i16, %c-6183_i16 : i16
    %alloc_43 = memref.alloc() : memref<15xf16>
    memref.copy %alloc, %alloc_43 : memref<15xf16> to memref<15xf16>
    %172 = tensor.empty() : tensor<15xi16>
    %173 = math.absf %5 : tensor<15xf16>
    %174 = arith.remui %c487023468_i64, %c1_i64 : i64
    %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<12x7x12xf16> into tensor<84x12xf16>
    %175 = math.absi %c1237570205_i64 : i64
    %alloc_44 = memref.alloc() : memref<12xi1>
    %176 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_12, %alloc_44 : memref<12x7x12xi1>, memref<12xi1>) outs(%3 : tensor<12x7x12xi1>) {
    ^bb0(%in: i1, %in_59: i1, %out: i1):
      %254 = index.mul %91, %99
      %255 = arith.xori %false_40, %true : i1
      %256 = vector.broadcast %41 : i64 to vector<15x15xi64>
      %257 = vector.outerproduct %86, %85, %256 {kind = #vector.kind<or>} : vector<15xi64>, vector<15xi64>
      %258 = math.round %12 : tensor<15xf16>
      %259 = math.log1p %5 : tensor<15xf16>
      %260 = arith.minui %false_33, %in_59 : i1
      %alloca_60 = memref.alloca() : memref<12x7x12xi1>
      %261 = bufferization.to_memref %11 : memref<15xi64>
      %c0_i64_61 = arith.constant 0 : i64
      %262 = vector.transfer_read %6[%25], %c0_i64_61 : tensor<15xi64>, vector<i64>
      %alloc_62 = memref.alloc() : memref<15xi32>
      %263 = arith.maxf %cst, %cst_38 : f16
      %264 = math.ctpop %c28871_i16 : i16
      %265 = math.log %cst_4 : f32
      %expanded_63 = tensor.expand_shape %0 [[0, 1]] : tensor<15xi1> into tensor<15x1xi1>
      %266 = vector.multi_reduction <minsi>, %54, %54 [] : vector<15xi1> to vector<15xi1>
      %alloca_64 = memref.alloca() : memref<15xf32>
      %267 = vector.maskedload %110[%c2], %54, %54 : memref<15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      %268 = arith.xori %true, %false_33 : i1
      %expanded_65 = tensor.expand_shape %10 [[0, 1]] : tensor<15xi32> into tensor<15x1xi32>
      %inserted_66 = tensor.insert %c-6183_i16 into %62[%c14] : tensor<15xi16>
      %269 = index.sizeof
      %270 = math.log1p %expanded : tensor<15x1xf16>
      %271 = index.ceildivu %51, %c3
      %272 = math.exp2 %expanded : tensor<15x1xf16>
      memref.copy %alloc_20, %alloc_14 : memref<15xi16> to memref<15xi16>
      %273 = vector.bitcast %138 : vector<4x2x12xf16> to vector<4x2x12xf16>
      %274 = arith.maxf %cst, %cst_5 : f16
      %275 = tensor.empty(%271) : tensor<?xf32>
      %276 = arith.remui %c199_i16, %c-6183_i16 : i16
      %277 = arith.andi %c199_i16, %c199_i16 : i16
      %278 = math.log %1 : tensor<15xf16>
      %279 = scf.execute_region -> memref<15xi1> {
        %280 = arith.maxf %cst_3, %140 : f16
        %281 = math.atan %140 : f16
        %282 = vector.shuffle %103, %103 [0, 1] : vector<i64>, vector<i64>
        %283 = vector.multi_reduction <minf>, %123, %56 [] : vector<15xf16> to vector<15xf16>
        %284 = vector.insertelement %cst_2, %52[%35 : index] : vector<15xf16>
        %285 = arith.addf %cst_5, %cst_1 : f16
        %286 = arith.maxsi %false_40, %false_33 : i1
        %extracted_67 = tensor.extract %7[%c12] : tensor<15xi64>
        %alloca_68 = memref.alloca() : memref<15xi64>
        %287 = arith.andi %c1_i64, %c1237570205_i64 : i64
        %288 = arith.shrsi %c1_i64, %c1237570205_i64 : i64
        %289 = math.rsqrt %1 : tensor<15xf16>
        %290 = arith.minui %c1237570205_i64, %extracted_67 : i64
        %291 = math.absi %6 : tensor<15xi64>
        %292 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %293 = vector.fma %292, %292, %292 : vector<15xf32>
        %294 = arith.remui %41, %extracted_67 : i64
        scf.yield %110 : memref<15xi1>
      }
      linalg.yield %in_59 : i1
    } -> tensor<12x7x12xi1>
    %177 = vector.splat %35 : vector<12x7x12xindex>
    %178 = math.floor %cst_1 : f16
    %rank_45 = tensor.rank %9 : tensor<15xi16>
    affine.store %true, %alloc_18[%c11] : memref<15xi1>
    %179 = vector.load %alloc_12[%c2, %c5, %c10] : memref<12x7x12xi1>, vector<12x7x12xi1>
    %c1117538288_i64 = arith.constant 1117538288 : i64
    memref.assume_alignment %alloc_17, 1 : memref<15xi32>
    %180 = math.atan %cst_5 : f16
    %181 = affine.if affine_set<(d0) : (d0 + 4 >= 0, (d0 + 4) * 32 == 0, (d0 + 4) ceildiv 8 >= 0)>(%c15) -> f16 {
      %254 = math.ctpop %168 : tensor<15xi1>
      %255 = arith.andi %false_40, %false_0 : i1
      %256 = index.ceildivs %c12, %c6
      %expanded_59 = tensor.expand_shape %7 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
      %257 = affine.for %arg1 = 0 to 28 iter_args(%arg2 = %c14) -> (index) {
        affine.yield %146 : index
      }
      %258 = arith.floordivsi %false_0, %false : i1
      %259 = bufferization.to_tensor %alloc_20 : memref<15xi16>
      %260 = math.rsqrt %collapsed : tensor<84x12xf16>
      affine.yield %cst_5 : f16
    } else {
      memref.alloca_scope  {
        %alloc_59 = memref.alloc() : memref<12x7x12xi1>
        %259 = math.tanh %13 : tensor<15xf16>
        %false_60 = index.bool.constant false
        %260 = vector.broadcast %c9 : index to vector<15xindex>
        vector.scatter %110[%c1] [%260], %54, %54 : memref<15xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
        %261 = math.tan %12 : tensor<15xf16>
        %262 = index.maxs %25, %99
        %263 = math.round %1 : tensor<15xf16>
        %264 = math.cos %cst_4 : f32
        %265 = arith.subi %c1_i64, %c1237570205_i64 : i64
        %inserted_61 = tensor.insert %c0_i32 into %16[%c6] : tensor<15xi32>
        %266 = vector.insertelement %c1237570205_i64, %86[%c11 : index] : vector<15xi64>
        %267 = arith.remf %cst_38, %cst_38 : f16
        %268 = math.expm1 %cst_4 : f32
        %269 = vector.extract_strided_slice %56 {offsets = [4], sizes = [5], strides = [1]} : vector<15xf16> to vector<5xf16>
        %270 = math.exp %8 : tensor<12x7x12xf16>
        %271 = vector.broadcast %c1109316681_i64 : i64 to vector<15x15xi64>
        %272 = vector.outerproduct %85, %86, %271 {kind = #vector.kind<maxui>} : vector<15xi64>, vector<15xi64>
        %273 = arith.divsi %c199_i16, %c-6183_i16 : i16
        %274 = arith.remsi %c28871_i16, %c28871_i16 : i16
        %275 = math.tan %expanded : tensor<15x1xf16>
        %276 = bufferization.to_memref %21 : memref<i64>
        %277 = math.round %140 : f16
        %278 = math.round %13 : tensor<15xf16>
        %279 = math.cos %130 : tensor<15xf16>
        %280 = math.cttz %14 : tensor<15xi64>
        affine.store %cst_3, %alloc[%c15] : memref<15xf16>
        %281 = math.tan %cst_2 : f16
        %rank_62 = tensor.rank %5 : tensor<15xf16>
        %282 = vector.bitcast %67 : vector<7xi1> to vector<7xi1>
        %283 = arith.muli %false_0, %false_40 : i1
        %284 = vector.bitcast %88 : vector<3xi16> to vector<3xi16>
        %285 = affine.max affine_map<(d0) -> (d0 * 64 + 64, d0 * 64)>(%127)
        %286 = math.exp %13 : tensor<15xf16>
      }
      %254 = math.log10 %8 : tensor<12x7x12xf16>
      scf.execute_region {
        %259 = index.casts %false_40 : i1 to index
        %inserted_59 = tensor.insert %c0_i32 into %10[%c3] : tensor<15xi32>
        %260 = math.cos %5 : tensor<15xf16>
        %261 = vector.bitcast %108 : vector<12x7x12xf16> to vector<12x7x12xf16>
        %262 = math.round %8 : tensor<12x7x12xf16>
        %263 = index.ceildivs %c4, %c0
        %264 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %265 = vector.gather %alloc_6[%51] [%89], %54, %264 : memref<15xf32>, vector<15xi32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        memref.copy %alloc_9, %alloc_7 : memref<12x7x12xf16> to memref<12x7x12xf16>
        %266 = math.round %1 : tensor<15xf16>
        %267 = arith.minui %c0_i32, %c0_i32 : i32
        %extracted_60 = tensor.extract %12[%c1] : tensor<15xf16>
        %268 = vector.broadcast %41 : i64 to vector<7xi64>
        %269 = vector.maskedload %alloc_8[%c4, %c2, %c9], %67, %268 : memref<12x7x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        memref.copy %alloc_7, %alloc_11 : memref<12x7x12xf16> to memref<12x7x12xf16>
        %270 = arith.shrsi %false, %false_0 : i1
        %271 = arith.subi %c0_i32, %c0_i32 : i32
        %272 = index.sub %c4, %53
        scf.yield
      }
      %255 = index.ceildivs %c11, %c12
      %256 = math.log1p %1 : tensor<15xf16>
      %257 = scf.index_switch %26 -> vector<12x7x12xf32> 
      case 1 {
        %259 = math.ceil %5 : tensor<15xf16>
        %260 = arith.andi %false_33, %false_40 : i1
        %261 = index.casts %c8 : index to i32
        %262 = affine.apply affine_map<(d0, d1) -> (d1 - (d1 + d0))>(%116, %c15)
        %263 = math.round %140 : f16
        %264 = vector.extract %56[12] : vector<15xf16>
        %265 = vector.create_mask %262 : vector<15xi1>
        %266 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %107, %133 {inclusive = false, reduction_dim = 0 : i64} : vector<12x7x12xi32>, vector<7x12xi32>
        %267 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %268 = vector.fma %267, %267, %267 : vector<15xf32>
        %269 = index.casts %false_0 : i1 to index
        %270 = arith.andi %false_33, %false : i1
        %271 = arith.remf %cst_1, %cst_5 : f16
        %272 = index.maxu %98, %127
        %273 = math.absi %4 : tensor<12x7x12xi32>
        %274 = math.ipowi %17, %16 : tensor<15xi32>
        %275 = vector.broadcast %cst_4 : f32 to vector<12x7x12xf32>
        scf.yield %275 : vector<12x7x12xf32>
      }
      default {
        %259 = vector.broadcast %false_40 : i1 to vector<i1>
        vector.transfer_write %259, %alloc_16[%53] : vector<i1>, memref<15xi1>
        %260 = tensor.empty() : tensor<15xf32>
        %261 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %262 = vector.gather %260[%c10] [%55], %54, %261 : tensor<15xf32>, vector<15xi32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %263 = vector.extract %133[2] : vector<7x12xi32>
        %true_59 = index.bool.constant true
        %264 = vector.broadcast %cst_1 : f16 to vector<12x12xf16>
        %dest_60, %accumulated_value_61 = vector.scan <add>, %108, %264 {inclusive = false, reduction_dim = 1 : i64} : vector<12x7x12xf16>, vector<12x12xf16>
        %265 = vector.broadcast %41 : i64 to vector<7xi64>
        %266 = vector.maskedload %alloc_8[%c1, %c4, %c10], %67, %265 : memref<12x7x12xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %c1_i32 = arith.constant 1 : i32
        %267 = vector.transfer_read %4[%255, %c11, %91], %c1_i32 : tensor<12x7x12xi32>, vector<i32>
        %268 = vector.insertelement %c0_i32, %55[%c10 : index] : vector<15xi32>
        %cst_62 = arith.constant 1.000000e+00 : f16
        %cst_63 = arith.constant 0.000000e+00 : f16
        %269 = vector.transfer_read %8[%c10, %116, %c5], %cst_63 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<12x7x12xf16>, vector<15xf16>
        %270 = vector.extract %133[1] : vector<7x12xi32>
        %271 = index.maxu %c8, %98
        %272 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
        %273 = math.rsqrt %collapsed : tensor<84x12xf16>
        %274 = arith.mulf %cst, %cst_38 : f16
        %275 = arith.minui %c28871_i16, %c28871_i16 : i16
        %276 = index.add %c10, %rank_45
        %277 = vector.broadcast %cst_4 : f32 to vector<12x7x12xf32>
        scf.yield %277 : vector<12x7x12xf32>
      }
      affine.for %arg1 = 0 to 14 {
      }
      %258 = arith.andi %false_40, %false_33 : i1
      affine.yield %cst_1 : f16
    }
    %182 = arith.ceildivsi %c1237570205_i64, %c487023468_i64 : i64
    memref.alloca_scope  {
      %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<12x7x12xi32> into tensor<84x12xi32>
      scf.if %false_40 {
        memref.copy %alloc_20, %81 : memref<15xi16> to memref<15xi16>
        %281 = math.log1p %140 : f16
        %282 = vector.extract_strided_slice %179 {offsets = [2], sizes = [2], strides = [1]} : vector<12x7x12xi1> to vector<2x7x12xi1>
        %alloc_66 = memref.alloc() : memref<15xi32>
        %283 = vector.broadcast %cst_5 : f16 to vector<15xf16>
        %284 = tensor.empty() : tensor<15xi64>
        %inserted_67 = tensor.insert %cst_1 into %8[%c3, %c0, %c2] : tensor<12x7x12xf16>
        %285 = arith.remf %cst_38, %cst_38 : f16
      } else {
        %281 = vector.broadcast %cst_4 : f32 to vector<7xf32>
        %282 = vector.maskedload %alloc_6[%c11], %67, %281 : memref<15xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %283 = vector.extract %55[12] : vector<15xi32>
        %284 = math.copysign %expanded, %expanded : tensor<15x1xf16>
        %285 = affine.apply affine_map<(d0) -> (-(d0 + (d0 - 1) * 4))>(%35)
        %286 = vector.splat %cst_4 : vector<15xf32>
        %287 = math.copysign %8, %8 : tensor<12x7x12xf16>
        %288 = arith.floordivsi %false_33, %false_33 : i1
        %289 = math.expm1 %expanded : tensor<15x1xf16>
      }
      %254 = arith.mulf %cst_38, %cst_3 : f16
      %255 = math.atan %cst_5 : f16
      %256 = bufferization.to_tensor %alloc_21 : memref<12x12xi32>
      %257 = math.round %130 : tensor<15xf16>
      %258 = scf.while (%arg1 = %c24519_i16) : (i16) -> i16 {
        %281 = tensor.empty() : tensor<15xf16>
        memref.assume_alignment %alloc_16, 8 : memref<15xi1>
        %collapsed_66 = tensor.collapse_shape %256 [[0, 1]] : tensor<12x12xi32> into tensor<144xi32>
        %282 = vector.load %alloc_8[%c4, %c1, %c8] : memref<12x7x12xi64>, vector<15xi64>
        %283 = memref.load %alloc_16[%c1] : memref<15xi1>
        %284 = arith.divsi %c24519_i16, %c199_i16 : i16
        %285 = vector.broadcast %c1109316681_i64 : i64 to vector<12x12xi64>
        %286 = vector.outerproduct %19, %49, %285 {kind = #vector.kind<or>} : vector<12xi64>, vector<12xi64>
        %287 = arith.subi %false_33, %false_33 : i1
        scf.condition(%false_40) %c24519_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        %alloc_66 = memref.alloc() : memref<12x7x12xf16>
        %281 = math.atan %1 : tensor<15xf16>
        %282 = vector.create_mask %53 : vector<15xi1>
        %alloc_67 = memref.alloc() : memref<12x15xf16>
        %283 = tensor.empty() : tensor<84x15xf16>
        %284 = linalg.matmul ins(%collapsed, %alloc_67 : tensor<84x12xf16>, memref<12x15xf16>) outs(%283 : tensor<84x15xf16>) -> tensor<84x15xf16>
        %285 = arith.cmpf ule, %cst_1, %cst_1 : f16
        %286 = math.expm1 %5 : tensor<15xf16>
        %287 = vector.extract %138[2] : vector<4x2x12xf16>
        %288 = math.log1p %140 : f16
        bufferization.dealloc_tensor %90 : tensor<15xi64>
        %289 = bufferization.to_tensor %alloc_17 : memref<15xi32>
        %290 = math.rsqrt %cst_4 : f32
        %291 = index.add %51, %53
        %alloca_68 = memref.alloca() : memref<12x7x12xi32>
        %292 = arith.subi %true, %true : i1
        %293 = vector.broadcast %c0_i32 : i32 to vector<7xi32>
        %294 = vector.multi_reduction <maxui>, %133, %293 [1] : vector<7x12xi32> to vector<7xi32>
        %295 = arith.maxf %cst_38, %cst_38 : f16
        scf.yield %c199_i16 : i16
      }
      %259 = index.casts %119 : index to i32
      %260 = vector.splat %c5 : vector<15xindex>
      %expanded_60 = tensor.expand_shape %256 [[0], [1, 2]] : tensor<12x12xi32> into tensor<12x12x1xi32>
      %261 = arith.divsi %false_33, %false : i1
      %262 = arith.remui %true, %false : i1
      %263 = vector.broadcast %c487023468_i64 : i64 to vector<15x15xi64>
      %264 = vector.outerproduct %86, %85, %263 {kind = #vector.kind<minui>} : vector<15xi64>, vector<15xi64>
      %265 = index.ceildivu %c12, %91
      %266 = arith.ceildivsi %false_33, %false : i1
      %267 = math.expm1 %cst_5 : f16
      %268 = math.ipowi %50, %50 : tensor<15xi64>
      %269 = index.divu %c2, %127
      %270 = index.floordivs %c1, %rank
      %inserted_61 = tensor.insert %false_40 into %0[%c0] : tensor<15xi1>
      %271 = vector.bitcast %105 : vector<12x7x12xf16> to vector<12x7x12xf16>
      %extracted_62 = tensor.extract %2[%c13] : tensor<15xi32>
      %272 = math.absi %0 : tensor<15xi1>
      memref.alloca_scope  {
        %281 = math.round %5 : tensor<15xf16>
        %282 = vector.extract %52[9] : vector<15xf16>
        %283 = vector.splat %cst_3 : vector<15xf16>
        %284 = vector.broadcast %c-6183_i16 : i16 to vector<15x15xi16>
        %285 = vector.outerproduct %163, %111, %284 {kind = #vector.kind<maxsi>} : vector<15xi16>, vector<15xi16>
        %286 = arith.muli %c1_i64, %c1109316681_i64 : i64
        %287 = math.absi %2 : tensor<15xi32>
        %alloc_66 = memref.alloc() : memref<15xf32>
        %288 = vector.splat %36 : vector<15xindex>
        %289 = index.mul %c13, %c0
        %290 = arith.minui %false, %true : i1
        %inserted_67 = tensor.insert %extracted_62 into %16[%c4] : tensor<15xi32>
        %291 = arith.subi %c199_i16, %c199_i16 : i16
        %292 = arith.cmpf olt, %cst_4, %cst_4 : f32
        %293 = arith.divsi %c199_i16, %c24519_i16 : i16
        %294 = vector.splat %c1109316681_i64 : vector<15xi64>
        %295 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %296 = vector.fma %295, %295, %295 : vector<15xf32>
        %297 = vector.load %alloc_18[%c0] : memref<15xi1>, vector<15xi1>
        %298 = math.tan %5 : tensor<15xf16>
        %299 = index.maxu %c14, %rank
        %300 = vector.insertelement %true, %297[%91 : index] : vector<15xi1>
        %301 = math.tan %cst_5 : f16
        %302 = math.fpowi %130, %16 : tensor<15xf16>, tensor<15xi32>
        %303 = vector.matrix_multiply %123, %56 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf16>, vector<15xf16>) -> vector<1xf16>
        %alloca_68 = memref.alloca() : memref<15xf16>
        %304 = arith.cmpf true, %140, %cst_2 : f16
        %305 = vector.flat_transpose %86 {columns = 5 : i32, rows = 3 : i32} : vector<15xi64> -> vector<15xi64>
        %306 = vector.splat %53 : vector<12x7x12xindex>
        %307 = math.round %collapsed : tensor<84x12xf16>
        %308 = vector.multi_reduction <minsi>, %163, %111 [] : vector<15xi16> to vector<15xi16>
        %309 = math.cttz %7 : tensor<15xi64>
        %310 = index.divs %c8, %c2
        %311 = arith.cmpf olt, %cst_4, %cst_4 : f32
      }
      %273 = tensor.empty() : tensor<12x12xf16>
      %274 = tensor.empty() : tensor<12x7xf16>
      %alloc_63 = memref.alloc() : memref<12xf16>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %274, %alloc_63 : tensor<12x12xf16>, tensor<12x7xf16>, memref<12xf16>) outs(%8 : tensor<12x7x12xf16>) {
      ^bb0(%in: f16, %in_66: f16, %in_67: f16, %out: f16):
        %281 = vector.shuffle %88, %163 [2, 4, 6, 7, 8, 11, 12, 16, 17] : vector<3xi16>, vector<15xi16>
        %282 = vector.splat %cst_1 : vector<15xf16>
        %283 = arith.divsi %c199_i16, %c199_i16 : i16
        %284 = bufferization.clone %alloc_19 : memref<15xi64> to memref<15xi64>
        %285 = arith.divsi %c0_i32, %extracted_62 : i32
        %286 = vector.flat_transpose %111 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
        %287 = vector.create_mask %rank_45 : vector<15xi1>
        %288 = vector.insertelement %c1237570205_i64, %86[%119 : index] : vector<15xi64>
        %collapsed_68 = tensor.collapse_shape %collapsed_59 [[0, 1]] : tensor<84x12xi32> into tensor<1008xi32>
        %289 = math.log1p %8 : tensor<12x7x12xf16>
        %290 = arith.cmpf true, %cst_4, %cst_4 : f32
        memref.store %false_33, %alloc_18[%c6] : memref<15xi1>
        %291 = arith.muli %c-6183_i16, %c199_i16 : i16
        %292 = math.atan2 %cst_1, %cst_3 : f16
        %293 = affine.apply affine_map<(d0, d1) -> (d1 - 32)>(%270, %161)
        %splat = tensor.splat %c1_i64 : tensor<15xi64>
        %294 = vector.broadcast %c28871_i16 : i16 to vector<15xi16>
        %295 = arith.andi %false, %false_0 : i1
        %296 = index.divs %293, %c3
        %297 = math.round %out : f16
        %298 = tensor.empty() : tensor<15xf16>
        %299 = index.mul %c1, %rank_45
        %300 = vector.broadcast %c199_i16 : i16 to vector<15x15xi16>
        %301 = vector.outerproduct %286, %163, %300 {kind = #vector.kind<minsi>} : vector<15xi16>, vector<15xi16>
        %302 = arith.mulf %cst_2, %in_67 : f16
        %expanded_69 = tensor.expand_shape %16 [[0, 1]] : tensor<15xi32> into tensor<15x1xi32>
        %303 = arith.remf %cst_1, %cst_5 : f16
        memref.assume_alignment %alloc, 2 : memref<15xf16>
        %304 = vector.load %alloc_11[%c0, %c6, %c6] : memref<12x7x12xf16>, vector<15xf16>
        %305 = vector.broadcast %c199_i16 : i16 to vector<15xi16>
        %306 = math.round %1 : tensor<15xf16>
        %307 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 16 - 8, d2 - d3 * 32)>(%99, %25, %131, %119)
        %308 = index.casts %269 : index to i32
        linalg.yield %in : f16
      } -> tensor<12x7x12xf16>
      %276 = math.atan %collapsed : tensor<84x12xf16>
      %277 = arith.andi %c1109316681_i64, %c487023468_i64 : i64
      %alloc_64 = memref.alloc() : memref<15xi64>
      %alloc_65 = memref.alloc() : memref<15xi64>
      %278 = vector.broadcast %false_40 : i1 to vector<12xi1>
      %279 = vector.maskedload %alloc_18[%c8], %278, %278 : memref<15xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      memref.alloca_scope  {
        %281 = math.atan %cst_2 : f16
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %111, %163, %c199_i16 : vector<15xi16>, vector<15xi16> into i16
        %283 = memref.realloc %alloc_19 : memref<15xi64> to memref<7xi64>
        %284 = math.tanh %5 : tensor<15xf16>
        %285 = index.casts %c1 : index to i32
        %286 = math.tan %1 : tensor<15xf16>
        %287 = vector.splat %c13 : vector<15xindex>
        %288 = math.tanh %cst_4 : f32
        %289 = math.log1p %130 : tensor<15xf16>
        %290 = arith.floordivsi %false_33, %false_40 : i1
        %291 = memref.load %alloc_14[%c0] : memref<15xi16>
        %292 = math.round %1 : tensor<15xf16>
        %293 = math.exp2 %13 : tensor<15xf16>
        %294 = bufferization.to_tensor %alloc : memref<15xf16>
        %295 = vector.gather %17[%127] [%55], %54, %55 : tensor<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %296 = bufferization.clone %alloc_9 : memref<12x7x12xf16> to memref<12x7x12xf16>
        %297 = index.add %36, %53
        %298 = arith.divf %cst_38, %cst_1 : f16
        %299 = math.exp %cst_2 : f16
        %300 = arith.cmpf true, %cst_5, %cst : f16
        %301 = math.atan %8 : tensor<12x7x12xf16>
        %302 = math.round %140 : f16
        %alloc_66 = memref.alloc() : memref<i64>
        memref.tensor_store %21, %alloc_66 : memref<i64>
        %303 = vector.gather %5[%99] [%295], %54, %52 : tensor<15xf16>, vector<15xi32>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %304 = math.floor %1 : tensor<15xf16>
        %305 = arith.remf %140, %cst_2 : f16
        %306 = vector.broadcast %cst : f16 to vector<7x12x7x12xf16>
        %307 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %105, %271, %306 : vector<12x7x12xf16>, vector<12x7x12xf16> into vector<7x12x7x12xf16>
        %308 = affine.max affine_map<(d0, d1, d2, d3) -> (((d1 + 1) * 8) mod 32, d0 * 8)>(%131, %35, %73, %73)
        %309 = vector.extract %49[8] : vector<12xi64>
        %310 = index.maxu %c15, %25
        %311 = vector.broadcast %c1237570205_i64 : i64 to vector<12x12xi64>
        %312 = vector.outerproduct %19, %19, %311 {kind = #vector.kind<xor>} : vector<12xi64>, vector<12xi64>
        %313 = math.atan2 %13, %5 : tensor<15xf16>
      }
      %280 = index.floordivs %73, %rank_45
    }
    %183 = vector.insertelement %cst_38, %56[%116 : index] : vector<15xf16>
    %184 = vector.broadcast %c1237570205_i64 : i64 to vector<i64>
    %185 = vector.transfer_write %184, %14[%c2] : vector<i64>, tensor<15xi64>
    %186 = vector.shuffle %163, %68 [0, 1, 2, 3, 4, 6, 8, 12, 13, 15, 16, 17, 19] : vector<15xi16>, vector<7xi16>
    %187 = vector.broadcast %false_40 : i1 to vector<7x12xi1>
    %188 = vector.insert %187, %179 [4] : vector<7x12xi1> into vector<12x7x12xi1>
    memref.store %cst, %alloc_11[%c8, %c5, %c9] : memref<12x7x12xf16>
    %expanded_46 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<12x7x12xi1> into tensor<12x7x12x1xi1>
    %189 = vector.insertelement %true, %54[%c2 : index] : vector<15xi1>
    %190 = math.round %5 : tensor<15xf16>
    %true_47 = index.bool.constant true
    %191 = math.floor %cst_2 : f16
    %192 = math.roundeven %12 : tensor<15xf16>
    %193 = index.divs %c5, %131
    %194 = vector.load %alloc_11[%c6, %c0, %c9] : memref<12x7x12xf16>, vector<12x7x12xf16>
    %195 = math.cttz %4 : tensor<12x7x12xi32>
    %196 = vector.broadcast %cst_4 : f32 to vector<15xf32>
    %197 = vector.fma %196, %196, %196 : vector<15xf32>
    %198 = affine.if affine_set<(d0, d1, d2, d3) : (((d3 floordiv 128) ceildiv 64) ceildiv 8 == 0, 0 == 0, 32 >= 0)>(%c9, %c5, %c14, %c8) -> memref<15xi16> {
      %254 = math.round %13 : tensor<15xf16>
      %c1_i64_59 = arith.constant 1 : i64
      %255 = vector.transfer_read %7[%c11], %c1_i64_59 : tensor<15xi64>, vector<i64>
      %256 = vector.broadcast %cst_4 : f32 to vector<15xf32>
      %257 = vector.fma %256, %197, %196 : vector<15xf32>
      %258 = index.ceildivu %c15, %c11
      %259 = vector.insertelement %c24519_i16, %66[%c12 : index] : vector<7xi16>
      %260 = arith.minui %false_33, %false_40 : i1
      %261 = math.exp2 %5 : tensor<15xf16>
      %262 = scf.if %false -> (memref<15xf16>) {
        %263 = vector.extract %49[8] : vector<12xi64>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %264 = vector.transfer_read %130[%c13], %cst_60 : tensor<15xf16>, vector<f16>
        %265 = vector.broadcast %cst_4 : f32 to vector<15xf32>
        %266 = vector.fma %265, %256, %197 : vector<15xf32>
        %splat = tensor.splat %false_40 : tensor<15xi1>
        %267 = arith.remf %cst_5, %cst : f16
        %268 = math.roundeven %13 : tensor<15xf16>
        %269 = bufferization.to_tensor %alloc_21 : memref<12x12xi32>
        %270 = arith.cmpf olt, %cst_5, %cst_3 : f16
        scf.yield %alloc : memref<15xf16>
      } else {
        %alloc_60 = memref.alloc() : memref<15xi32>
        %263 = arith.minui %c199_i16, %c24519_i16 : i16
        %264 = index.floordivs %146, %c9
        memref.assume_alignment %alloc_15, 4 : memref<15xi64>
        %265 = arith.remsi %c1109316681_i64, %c487023468_i64 : i64
        %266 = vector.shuffle %133, %133 [0, 1, 2, 3, 8, 11, 12, 13] : vector<7x12xi32>, vector<7x12xi32>
        %inserted_61 = tensor.insert %c0_i32 into %generated[%c0] : tensor<?xi32>
        %267 = bufferization.to_tensor %alloc_13 : memref<15xi1>
        scf.yield %alloc : memref<15xf16>
      }
      affine.yield %81 : memref<15xi16>
    } else {
      memref.store %c199_i16, %alloc_20[%c0] : memref<15xi16>
      %254 = math.log %1 : tensor<15xf16>
      %255 = index.castu %161 : index to i32
      vector.print %19 : vector<12xi64>
      memref.store %cst_5, %alloc_7[%c6, %c1, %c7] : memref<12x7x12xf16>
      %256 = tensor.empty() : tensor<15xi32>
      %257 = arith.remf %cst_38, %cst : f16
      %258 = math.atan %8 : tensor<12x7x12xf16>
      affine.yield %alloc_14 : memref<15xi16>
    }
    %199 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 2 + d1) ceildiv 4 - 64, (d0 ceildiv 2 + d1) ceildiv 4, ((d0 ceildiv 2 + d1) ceildiv 4 - 64) * 8, (d0 ceildiv 2 + d1) * 256)>(%c9, %rank)
    %200 = affine.for %arg1 = 0 to 93 iter_args(%arg2 = %172) -> (tensor<15xi16>) {
      affine.yield %9 : tensor<15xi16>
    }
    %201 = arith.muli %c0_i32, %c0_i32 : i32
    %alloca_48 = memref.alloca() : memref<12x7x12xf32>
    %202 = arith.andi %false_33, %false : i1
    %203 = tensor.empty(%25) : tensor<?xi1>
    %collapsed_49 = tensor.collapse_shape %135 [[0, 1], [2]] : tensor<12x7x12xi1> into tensor<84x12xi1>
    %204 = arith.remf %cst_2, %140 : f16
    %205 = memref.load %alloc_6[%c8] : memref<15xf32>
    %alloca_50 = memref.alloca() : memref<15xi16>
    %extracted = tensor.extract %8[%c4, %c0, %c10] : tensor<12x7x12xf16>
    %206 = tensor.empty() : tensor<15xf16>
    %207 = index.divs %131, %127
    %208 = index.maxu %99, %91
    %209 = vector.broadcast %140 : f16 to vector<12x7xf16>
    %dest, %accumulated_value = vector.scan <maxf>, %105, %209 {inclusive = false, reduction_dim = 2 : i64} : vector<12x7x12xf16>, vector<12x7xf16>
    %210 = arith.remf %cst_4, %cst_4 : f32
    %211 = math.log %extracted : f16
    %212 = bufferization.clone %alloc_15 : memref<15xi64> to memref<15xi64>
    %213 = affine.if affine_set<(d0) : (d0 ceildiv 64 >= 0)>(%c9) -> f16 {
      %254 = index.sub %116, %91
      %255 = arith.remf %cst_2, %extracted : f16
      %256 = arith.mulf %extracted, %140 : f16
      %257 = tensor.empty() : tensor<15xf32>
      %258 = vector.broadcast %cst_4 : f32 to vector<12x7x12xf32>
      %259 = vector.gather %257[%c11] [%107], %179, %258 : tensor<15xf32>, vector<12x7x12xi32>, vector<12x7x12xi1>, vector<12x7x12xf32> into vector<12x7x12xf32>
      %260 = vector.insertelement %cst, %56[%c13 : index] : vector<15xf16>
      %261 = vector.extract %52[9] : vector<15xf16>
      scf.index_switch %208 
      case 1 {
        %263 = math.atan %extracted : f16
        %264 = arith.shrsi %c1237570205_i64, %c487023468_i64 : i64
        %265 = math.ipowi %135, %135 : tensor<12x7x12xi1>
        %266 = math.tanh %130 : tensor<15xf16>
        %267 = math.atan %13 : tensor<15xf16>
        %268 = index.mul %127, %rank_45
        %269 = math.round %cst_4 : f32
        %270 = math.log1p %13 : tensor<15xf16>
        %271 = vector.extract_strided_slice %49 {offsets = [7], sizes = [5], strides = [1]} : vector<12xi64> to vector<5xi64>
        %272 = vector.broadcast %extracted : f16 to vector<7x12x7x12xf16>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %108, %194, %272 : vector<12x7x12xf16>, vector<12x7x12xf16> into vector<7x12x7x12xf16>
        %alloca_59 = memref.alloca() : memref<15xi64>
        %collapsed_60 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<12x7x12xi1> into tensor<84x12xi1>
        %274 = vector.flat_transpose %67 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %275 = math.log %cst_5 : f16
        %276 = index.mul %c1, %c4
        memref.tensor_store %8, %alloc_9 : memref<12x7x12xf16>
        scf.yield
      }
      default {
        %collapsed_59 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<12x7x12xi1> into tensor<84x12xi1>
        %263 = vector.splat %c9 : vector<12x7x12xindex>
        %264 = arith.divsi %c28871_i16, %c199_i16 : i16
        %265 = vector.bitcast %163 : vector<15xi16> to vector<15xi16>
        %266 = math.cttz %collapsed_59 : tensor<84x12xi1>
        affine.store %c28871_i16, %81[%c14] : memref<15xi16>
        %267 = math.absi %15 : tensor<15xi16>
        %268 = index.floordivs %193, %51
        %269 = vector.gather %alloc_17[%91] [%89], %54, %55 : memref<15xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %extracted_60 = tensor.extract %1[%c4] : tensor<15xf16>
        %270 = vector.bitcast %54 : vector<15xi1> to vector<15xi1>
        %271 = index.divu %116, %c12
        %272 = arith.remf %cst_5, %cst_5 : f16
        %273 = vector.broadcast %cst_38 : f16 to vector<f16>
        vector.transfer_write %273, %alloc[%c4] : vector<f16>, memref<15xf16>
        %274 = vector.broadcast %c0_i32 : i32 to vector<7xi32>
        %dest_61, %accumulated_value_62 = vector.scan <or>, %133, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<7x12xi32>, vector<7xi32>
        %alloca_63 = memref.alloca() : memref<15xi16>
      }
      %262 = math.ceil %cst_2 : f16
      affine.yield %extracted : f16
    } else {
      %254 = vector.broadcast %extracted : f16 to vector<12xf16>
      %255 = vector.broadcast %false_40 : i1 to vector<12xi1>
      %256 = vector.maskedload %alloc[%c10], %255, %254 : memref<15xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
      %expanded_59 = tensor.expand_shape %7 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
      %257 = arith.addf %cst_38, %cst_5 : f16
      %258 = vector.flat_transpose %163 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %259 = arith.minf %cst_2, %cst : f16
      %260 = math.log %cst_2 : f16
      %alloc_60 = memref.alloc() : memref<12x15xi1>
      %261 = tensor.empty() : tensor<84x15xi1>
      %262 = linalg.matmul ins(%collapsed_49, %alloc_60 : tensor<84x12xi1>, memref<12x15xi1>) outs(%261 : tensor<84x15xi1>) -> tensor<84x15xi1>
      %263 = arith.remf %cst_4, %cst_4 : f32
      affine.yield %cst_38 : f16
    }
    %214 = affine.apply affine_map<(d0) -> (d0 + 1)>(%193)
    %215 = math.rsqrt %5 : tensor<15xf16>
    %216 = arith.addf %extracted, %extracted : f16
    %217 = bufferization.to_tensor %alloc_10 : memref<15xi64>
    %rank_51 = tensor.rank %130 : tensor<15xf16>
    %218 = arith.maxui %false_40, %false : i1
    %alloc_52 = memref.alloc() : memref<i64>
    memref.tensor_store %20, %alloc_52 : memref<i64>
    %219 = vector.broadcast %c1237570205_i64 : i64 to vector<15x15xi64>
    %220 = vector.outerproduct %85, %85, %219 {kind = #vector.kind<minsi>} : vector<15xi64>, vector<15xi64>
    %221 = vector.bitcast %107 : vector<12x7x12xi32> to vector<12x7x12xi32>
    %inserted_53 = tensor.insert %cst_4 into %generated_24[%c0] : tensor<?xf32>
    %222 = arith.remf %cst_5, %cst_3 : f16
    %cst_54 = arith.constant 1.000000e+00 : f16
    %cst_55 = arith.constant 0.000000e+00 : f16
    %223 = vector.transfer_read %13[%116], %cst_55 : tensor<15xf16>, vector<f16>
    %224 = index.add %c5, %119
    %225 = math.round %5 : tensor<15xf16>
    %inserted_56 = tensor.insert %c0_i32 into %17[%c6] : tensor<15xi32>
    %226 = index.floordivs %25, %207
    %227 = vector.splat %c487023468_i64 : vector<15xi64>
    %228 = math.round %cst_4 : f32
    %229 = vector.broadcast %c-6183_i16 : i16 to vector<15x15xi16>
    %230 = vector.outerproduct %111, %163, %229 {kind = #vector.kind<and>} : vector<15xi16>, vector<15xi16>
    %231 = arith.divsi %false_33, %false : i1
    %232 = scf.execute_region -> tensor<15xi32> {
      %254 = vector.broadcast %c28871_i16 : i16 to vector<15x15xi16>
      %255 = vector.outerproduct %163, %111, %254 {kind = #vector.kind<maxui>} : vector<15xi16>, vector<15xi16>
      %256 = arith.divui %true_47, %true : i1
      %257 = vector.extract_strided_slice %111 {offsets = [2], sizes = [4], strides = [1]} : vector<15xi16> to vector<4xi16>
      %258 = math.round %1 : tensor<15xf16>
      %259 = memref.realloc %81 : memref<15xi16> to memref<15xi16>
      %260 = math.fpowi %13, %17 : tensor<15xf16>, tensor<15xi32>
      %261 = vector.bitcast %123 : vector<15xf16> to vector<15xf16>
      %262 = index.maxu %131, %199
      %splat = tensor.splat %c24519_i16 : tensor<15xi16>
      memref.alloca_scope  {
        %267 = index.mul %rank_51, %119
        %268 = arith.remui %false_33, %true : i1
        %269 = arith.maxf %extracted, %cst_5 : f16
        %270 = index.sizeof
        %271 = math.log %130 : tensor<15xf16>
        %272 = arith.remf %cst_1, %cst_1 : f16
        %273 = vector.bitcast %160 : vector<12x7x12xf16> to vector<12x7x12xi16>
        %274 = math.round %1 : tensor<15xf16>
        %275 = arith.remf %cst_3, %cst_38 : f16
        %276 = math.tan %expanded : tensor<15x1xf16>
        %277 = math.round %12 : tensor<15xf16>
        %278 = vector.extract %111[8] : vector<15xi16>
        %expanded_61 = tensor.expand_shape %50 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
        %279 = vector.splat %c1 : vector<15xindex>
        %280 = index.sub %127, %c8
        %true_62 = index.bool.constant true
        %false_63 = index.bool.constant false
        %281 = arith.remf %cst_5, %cst_2 : f16
        %282 = math.ipowi %7, %6 : tensor<15xi64>
        %283 = vector.gather %alloc_6[%262] [%55], %54, %196 : memref<15xf32>, vector<15xi32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %284 = math.round %8 : tensor<12x7x12xf16>
        %alloc_64 = memref.alloc() : memref<12x7x12xf32>
        %285 = arith.andi %false_63, %false_63 : i1
        %286 = math.cos %12 : tensor<15xf16>
        %287 = math.round %130 : tensor<15xf16>
        %288 = arith.addf %cst, %cst_5 : f16
        %splat_65 = tensor.splat %true : tensor<12x7x12xi1>
        %289 = math.log1p %cst_2 : f16
        %290 = math.exp2 %140 : f16
        %291 = math.log %cst_5 : f16
        %292 = arith.remf %cst_2, %cst_1 : f16
        vector.print %179 : vector<12x7x12xi1>
      }
      %263 = math.round %cst_38 : f16
      %expanded_59 = tensor.expand_shape %6 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
      %264 = arith.remui %41, %c487023468_i64 : i64
      %265 = memref.atomic_rmw minu %c1_i64, %alloc_15[%c7] : (i64, memref<15xi64>) -> i64
      %266 = math.log10 %cst : f16
      %alloc_60 = memref.alloc() : memref<15xf32>
      scf.yield %10 : tensor<15xi32>
    }
    %alloc_57 = memref.alloc() : memref<15xf32>
    memref.copy %alloc_6, %alloc_57 : memref<15xf32> to memref<15xf32>
    %233 = math.exp2 %13 : tensor<15xf16>
    %234 = vector.broadcast %c28871_i16 : i16 to vector<12x7x12xi16>
    %235 = arith.remf %cst_38, %140 : f16
    %236 = vector.broadcast %cst : f16 to vector<7x12x7x12xf16>
    %237 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %108, %160, %236 : vector<12x7x12xf16>, vector<12x7x12xf16> into vector<7x12x7x12xf16>
    %238 = vector.shuffle %85, %85 [0, 2, 4, 5, 6, 7, 10, 12, 14, 15, 17, 21, 22, 24, 29] : vector<15xi64>, vector<15xi64>
    %239 = memref.realloc %alloc_20 : memref<15xi16> to memref<12xi16>
    %240 = arith.andi %false_33, %false_0 : i1
    %241 = tensor.empty() : tensor<15xf32>
    %242 = math.round %cst_5 : f16
    %243 = math.log %cst : f16
    %244 = affine.max affine_map<(d0, d1) -> (d1, d1 + d0 mod 32 + 2, -(d1 + d0 mod 32), d0)>(%35, %199)
    %245 = math.cttz %c24519_i16 : i16
    %246 = vector.insertelement %c1237570205_i64, %86[%208 : index] : vector<15xi64>
    scf.index_switch %193 
    case 1 {
      %254 = math.copysign %1, %1 : tensor<15xf16>
      %255 = vector.broadcast %cst : f16 to vector<12x12xf16>
      %dest_59, %accumulated_value_60 = vector.scan <mul>, %194, %255 {inclusive = false, reduction_dim = 1 : i64} : vector<12x7x12xf16>, vector<12x12xf16>
      %256 = math.exp2 %cst_3 : f16
      %257 = scf.execute_region -> tensor<15xi32> {
        %expanded_61 = tensor.expand_shape %168 [[0, 1]] : tensor<15xi1> into tensor<15x1xi1>
        %270 = arith.andi %c199_i16, %c-6183_i16 : i16
        %271 = index.sub %c9, %161
        %272 = math.roundeven %130 : tensor<15xf16>
        %273 = arith.minui %true_47, %true : i1
        memref.store %c1109316681_i64, %alloc_22[%c0] : memref<15xi64>
        %274 = tensor.empty() : tensor<12x7x12xi64>
        %275 = memref.atomic_rmw ori %c28871_i16, %81[%c11] : (i16, memref<15xi16>) -> i16
        %276 = index.divs %c4, %25
        %277 = vector.extract_strided_slice %107 {offsets = [10], sizes = [2], strides = [1]} : vector<12x7x12xi32> to vector<2x7x12xi32>
        %278 = math.round %cst_1 : f16
        %279 = index.divs %161, %146
        memref.store %c24519_i16, %81[%c3] : memref<15xi16>
        %280 = math.copysign %12, %1 : tensor<15xf16>
        %281 = vector.shuffle %187, %187 [0, 1, 4, 5, 6, 8, 10, 11, 12] : vector<7x12xi1>, vector<7x12xi1>
        %282 = math.expm1 %extracted : f16
        scf.yield %17 : tensor<15xi32>
      }
      %258 = vector.insertelement %c1109316681_i64, %85[%26 : index] : vector<15xi64>
      %259 = arith.remf %cst_2, %cst_54 : f16
      %260 = arith.cmpf one, %cst_5, %cst_54 : f16
      %261 = index.divs %c5, %51
      %262 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 floordiv 64) ceildiv 2 == 0, -d0 - (d1 + 128) == 0, -(d3 - 32) == 0)>(%c9, %c2, %c9, %c2) -> f32 {
        memref.copy %alloc_22, %alloc_10 : memref<15xi64> to memref<15xi64>
        %270 = index.floordivs %244, %rank_51
        %271 = vector.broadcast %cst_4 : f32 to vector<15x15xf32>
        %272 = vector.outerproduct %196, %197, %271 {kind = #vector.kind<mul>} : vector<15xf32>, vector<15xf32>
        %273 = index.mul %51, %c14
        %274 = math.exp %cst_3 : f16
        %275 = bufferization.clone %alloc_8 : memref<12x7x12xi64> to memref<12x7x12xi64>
        %collapsed_61 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<12x7x12xf16> into tensor<84x12xf16>
        %276 = math.round %130 : tensor<15xf16>
        affine.yield %cst_4 : f32
      } else {
        %270 = math.atan %13 : tensor<15xf16>
        %271 = math.ctpop %16 : tensor<15xi32>
        %true_61 = index.bool.constant true
        %272 = tensor.empty() : tensor<15xf16>
        affine.store %false_33, %alloc_18[%c7] : memref<15xi1>
        %273 = index.castu %98 : index to i32
        %274 = vector.broadcast %c1109316681_i64 : i64 to vector<i64>
        vector.transfer_write %274, %alloc_19[%c6] : vector<i64>, memref<15xi64>
        %275 = arith.maxf %140, %cst_2 : f16
        affine.yield %cst_4 : f32
      }
      %263 = scf.execute_region -> f16 {
        %270 = index.divs %146, %73
        %271 = memref.load %81[%c12] : memref<15xi16>
        %272 = arith.remui %false_33, %true : i1
        %splat_61 = tensor.splat %c28871_i16 : tensor<12x7x12xi16>
        %273 = index.sub %c0, %rank_45
        %true_62 = index.bool.constant true
        %274 = vector.gather %0[%c2] [%55], %54, %54 : tensor<15xi1>, vector<15xi32>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %275 = arith.remf %cst_4, %cst_4 : f32
        %276 = math.roundeven %12 : tensor<15xf16>
        %277 = math.ipowi %expanded_46, %expanded_46 : tensor<12x7x12x1xi1>
        %278 = index.ceildivs %199, %98
        %279 = bufferization.clone %alloc_13 : memref<15xi1> to memref<15xi1>
        %280 = math.exp2 %extracted : f16
        %collapsed_63 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<12x7x12xf16> into tensor<84x12xf16>
        %281 = math.expm1 %cst_3 : f16
        %true_64 = index.bool.constant true
        scf.yield %140 : f16
      }
      %264 = arith.minf %cst_4, %cst_4 : f32
      %265 = vector.broadcast %cst_2 : f16 to vector<15x15xf16>
      %266 = vector.outerproduct %56, %56, %265 {kind = #vector.kind<minf>} : vector<15xf16>, vector<15xf16>
      %267 = arith.subi %c0_i32, %c0_i32 : i32
      %268 = math.ceil %8 : tensor<12x7x12xf16>
      %splat = tensor.splat %false_33 : tensor<15xi1>
      %269 = math.log1p %5 : tensor<15xf16>
      scf.yield
    }
    case 2 {
      %c0_i16 = arith.constant 0 : i16
      %254 = vector.transfer_read %alloc_20[%193], %c0_i16 : memref<15xi16>, vector<i16>
      %255 = math.ctpop %16 : tensor<15xi32>
      %256 = vector.bitcast %55 : vector<15xi32> to vector<15xi32>
      affine.store %c1109316681_i64, %alloc_10[%c7] : memref<15xi64>
      %257 = vector.transpose %107, [0, 2, 1] : vector<12x7x12xi32> to vector<12x12x7xi32>
      %258 = math.cttz %c1109316681_i64 : i64
      %259 = arith.remf %140, %cst_54 : f16
      %260 = math.round %cst_54 : f16
      %261 = vector.insertelement %c0_i32, %89[%91 : index] : vector<15xi32>
      %262 = arith.ceildivsi %c1237570205_i64, %c1109316681_i64 : i64
      affine.for %arg1 = 0 to 74 {
      }
      %263 = math.round %cst_38 : f16
      %264 = vector.insertelement %true, %67[%119 : index] : vector<7xi1>
      %265 = vector.splat %false_40 : vector<15xi1>
      %266 = vector.insertelement %cst_5, %123[%35 : index] : vector<15xf16>
      %267 = math.absf %cst : f16
      scf.yield
    }
    default {
      %254 = bufferization.clone %alloc_18 : memref<15xi1> to memref<15xi1>
      %255 = vector.broadcast %c-6183_i16 : i16 to vector<i16>
      vector.transfer_write %255, %81[%26] : vector<i16>, memref<15xi16>
      %256 = math.ctlz %c28871_i16 : i16
      %expanded_59 = tensor.expand_shape %14 [[0, 1]] : tensor<15xi64> into tensor<15x1xi64>
      %257 = vector.gather %15[%c9] [%89], %54, %163 : tensor<15xi16>, vector<15xi32>, vector<15xi1>, vector<15xi16> into vector<15xi16>
      %258 = math.atan2 %cst_1, %cst_1 : f16
      %259 = math.atan2 %5, %12 : tensor<15xf16>
      %260 = math.rsqrt %5 : tensor<15xf16>
      %261 = math.tan %140 : f16
      %262 = vector.broadcast %true_47 : i1 to vector<12xi1>
      %263 = vector.maskedload %alloc_8[%c3, %c5, %c9], %262, %49 : memref<12x7x12xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      %alloc_60 = memref.alloc() : memref<12x7x12xi32>
      memref.tensor_store %4, %alloc_60 : memref<12x7x12xi32>
      affine.for %arg1 = 0 to 31 {
      }
      %264 = math.exp2 %1 : tensor<15xf16>
      %265 = math.roundeven %extracted : f16
      %266 = vector.splat %41 : vector<12x7x12xi64>
      %267 = math.exp %130 : tensor<15xf16>
    }
    %247 = vector.matrix_multiply %111, %66 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 7 : i32} : (vector<15xi16>, vector<7xi16>) -> vector<105xi16>
    %248 = arith.muli %false_33, %false_0 : i1
    %249 = tensor.empty() : tensor<12x7x12xi32>
    %250 = linalg.copy ins(%4 : tensor<12x7x12xi32>) outs(%249 : tensor<12x7x12xi32>) -> tensor<12x7x12xi32>
    %251 = tensor.empty() : tensor<15xf16>
    %transposed_58 = linalg.transpose ins(%1 : tensor<15xf16>) outs(%251 : tensor<15xf16>) permutation = [0] 
    %252 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%alloc_22 : memref<15xi64>) outs(%252 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        memref.store %c1237570205_i64, %212[%c9] : memref<15xi64>
        %254 = vector.broadcast %c199_i16 : i16 to vector<3x3xi16>
        %255 = vector.outerproduct %88, %88, %254 {kind = #vector.kind<xor>} : vector<3xi16>, vector<3xi16>
        %256 = vector.insertelement %c-6183_i16, %163[%208 : index] : vector<15xi16>
        %257 = arith.andi %true_47, %true_47 : i1
        %258 = vector.broadcast %c0_i32 : i32 to vector<i32>
        %259 = vector.transfer_write %258, %10[%c3] : vector<i32>, tensor<15xi32>
        %260 = index.divs %c6, %rank_45
        %alloc_59 = memref.alloc() : memref<15xf16>
        %261 = vector.broadcast %cst_3 : f16 to vector<12x7xf16>
        %dest_60, %accumulated_value_61 = vector.scan <minf>, %108, %261 {inclusive = false, reduction_dim = 2 : i64} : vector<12x7x12xf16>, vector<12x7xf16>
        %c1_i64_62 = arith.constant 1 : i64
        linalg.yield %c1_i64_62 : i64
      }
    scf.parallel (%arg1, %arg2) = (%73, %73) to (%214, %rank_51) step (%c6, %c12) {
      %254 = vector.bitcast %138 : vector<4x2x12xf16> to vector<4x2x12xf16>
      %255 = index.divs %c5, %arg1
      %256 = vector.splat %199 : vector<12x7x12xindex>
      %257 = math.round %5 : tensor<15xf16>
      %258 = vector.broadcast %c5 : index to vector<7xindex>
      %259 = vector.broadcast %c487023468_i64 : i64 to vector<7xi64>
      vector.scatter %alloc_10[%c12] [%258], %67, %259 : memref<15xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %expanded_59 = tensor.expand_shape %5 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
      %260 = math.expm1 %transposed_58 : tensor<15xf16>
      %261 = arith.remf %cst_38, %cst_54 : f16
      %262 = math.copysign %cst_2, %cst_38 : f16
      %263 = affine.if affine_set<(d0) : (d0 * -2 == 0, (d0 * 2) ceildiv 32 >= 0, d0 * 3 >= 0, 0 >= 0)>(%c6) -> f16 {
        %270 = bufferization.clone %alloc : memref<15xf16> to memref<15xf16>
        %271 = arith.shli %false_0, %false_40 : i1
        %272 = vector.create_mask %c15 : vector<15xi1>
        %expanded_60 = tensor.expand_shape %2 [[0, 1]] : tensor<15xi32> into tensor<15x1xi32>
        %273 = vector.splat %35 : vector<12x7x12xindex>
        %274 = affine.max affine_map<(d0) -> (d0, d0, d0 + 16, -d0)>(%c6)
        %275 = math.log %cst : f16
        %276 = math.tan %130 : tensor<15xf16>
        affine.yield %cst_38 : f16
      } else {
        %270 = index.mul %c8, %116
        %271 = arith.maxf %cst_1, %cst_54 : f16
        %272 = arith.remf %cst_2, %cst_38 : f16
        %273 = vector.broadcast %rank_45 : index to vector<7xindex>
        vector.scatter %alloc_14[%c0] [%273], %67, %68 : memref<15xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %274 = math.cos %5 : tensor<15xf16>
        %alloca_60 = memref.alloca() : memref<12x7x12xf16>
        %275 = arith.shrsi %true, %false_0 : i1
        %276 = index.maxs %73, %c4
        affine.yield %140 : f16
      }
      %264 = index.floordivs %c6, %35
      %265 = affine.for %arg3 = 0 to 124 iter_args(%arg4 = %c11) -> (index) {
        affine.yield %rank_51 : index
      }
      %266 = math.absi %c28871_i16 : i16
      %267 = math.tan %8 : tensor<12x7x12xf16>
      %268 = vector.broadcast %127 : index to vector<15xindex>
      vector.scatter %212[%c3] [%268], %54, %85 : memref<15xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
      %269 = arith.muli %c28871_i16, %c24519_i16 : i16
      scf.yield
    }
    %253 = affine.vector_load %alloc_16[%73] : memref<15xi1>, vector<7xi1>
    affine.vector_store %196, %alloc_6[%244] : memref<15xf32>, vector<15xf32>
    vector.print %19 : vector<12xi64>
    vector.print %32 : vector<f16>
    vector.print %49 : vector<12xi64>
    vector.print %52 : vector<15xf16>
    vector.print %54 : vector<15xi1>
    vector.print %55 : vector<15xi32>
    vector.print %56 : vector<15xf16>
    vector.print %66 : vector<7xi16>
    vector.print %67 : vector<7xi1>
    vector.print %68 : vector<7xi16>
    vector.print %76 : vector<i32>
    vector.print %85 : vector<15xi64>
    vector.print %86 : vector<15xi64>
    vector.print %88 : vector<3xi16>
    vector.print %89 : vector<15xi32>
    vector.print %103 : vector<i64>
    vector.print %105 : vector<12x7x12xf16>
    vector.print %106 : vector<12x7x12xi1>
    vector.print %107 : vector<12x7x12xi32>
    vector.print %108 : vector<12x7x12xf16>
    vector.print %111 : vector<15xi16>
    vector.print %123 : vector<15xf16>
    vector.print %133 : vector<7x12xi32>
    vector.print %138 : vector<4x2x12xf16>
    vector.print %160 : vector<12x7x12xf16>
    vector.print %163 : vector<15xi16>
    vector.print %179 : vector<12x7x12xi1>
    vector.print %184 : vector<i64>
    vector.print %187 : vector<7x12xi1>
    vector.print %194 : vector<12x7x12xf16>
    vector.print %196 : vector<15xf32>
    vector.print %197 : vector<15xf32>
    vector.print %221 : vector<12x7x12xi32>
    vector.print %234 : vector<12x7x12xi16>
    vector.print %247 : vector<105xi16>
    vector.print %253 : vector<7xi1>
    vector.print %false : i1
    vector.print %c487023468_i64 : i64
    vector.print %false_0 : i1
    vector.print %cst : f16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %c28871_i16 : i16
    vector.print %c199_i16 : i16
    vector.print %cst_3 : f16
    vector.print %c1109316681_i64 : i64
    vector.print %true : i1
    vector.print %cst_4 : f32
    vector.print %c-6183_i16 : i16
    vector.print %c1237570205_i64 : i64
    vector.print %c24519_i16 : i16
    vector.print %cst_5 : f16
    vector.print %41 : i64
    vector.print %c0_i32 : i32
    vector.print %false_33 : i1
    vector.print %140 : f16
    vector.print %cst_38 : f16
    vector.print %c1_i64 : i64
    vector.print %false_40 : i1
    vector.print %true_47 : i1
    vector.print %extracted : f16
    vector.print %cst_54 : f16
    return %c1 : index
  }
}
