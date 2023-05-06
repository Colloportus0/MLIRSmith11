module {
  func.func nested @func1() -> i16 {
    %c1565606134_i64 = arith.constant 1565606134 : i64
    %c-3307_i16 = arith.constant -3307 : i16
    %c1924632301_i32 = arith.constant 1924632301 : i32
    %cst = arith.constant 4.352000e+04 : f16
    %c-24114_i16 = arith.constant -24114 : i16
    %cst_0 = arith.constant 1.81356326E+9 : f32
    %c18725_i16 = arith.constant 18725 : i16
    %cst_1 = arith.constant 6.371200e+04 : f16
    %cst_2 = arith.constant 1.69019123E+9 : f32
    %c333937332_i32 = arith.constant 333937332 : i32
    %cst_3 = arith.constant 0x4E51B28F : f32
    %cst_4 = arith.constant 3.529600e+04 : f16
    %cst_5 = arith.constant 1.29977651E+9 : f32
    %c512582377_i32 = arith.constant 512582377 : i32
    %cst_6 = arith.constant 0x4E385572 : f32
    %cst_7 = arith.constant 1.17764326E+9 : f32
    %0 = tensor.empty() : tensor<6x6xf32>
    %1 = tensor.empty() : tensor<10x1xi16>
    %2 = tensor.empty() : tensor<10xf32>
    %3 = tensor.empty() : tensor<6x6xf16>
    %4 = tensor.empty() : tensor<10x11x10xi32>
    %5 = tensor.empty() : tensor<10x1xi32>
    %6 = tensor.empty() : tensor<6x6xi1>
    %7 = tensor.empty() : tensor<10x1xf32>
    %8 = tensor.empty() : tensor<10xi64>
    %9 = tensor.empty() : tensor<6x6xf32>
    %10 = tensor.empty() : tensor<6x6xi32>
    %11 = tensor.empty() : tensor<6x6xf16>
    %12 = tensor.empty() : tensor<10xi1>
    %13 = tensor.empty() : tensor<10x1xi16>
    %14 = tensor.empty() : tensor<10x11x10xi32>
    %15 = tensor.empty() : tensor<10xf32>
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
    %alloc = memref.alloc() : memref<6x6xi16>
    %alloc_8 = memref.alloc() : memref<10xi1>
    %alloc_9 = memref.alloc() : memref<6x6xf32>
    %alloc_10 = memref.alloc() : memref<10x11x10xi32>
    %alloc_11 = memref.alloc() : memref<10xf32>
    %alloc_12 = memref.alloc() : memref<6x6xf16>
    %alloc_13 = memref.alloc() : memref<10x1xi16>
    %alloc_14 = memref.alloc() : memref<10x11x10xf16>
    %alloc_15 = memref.alloc() : memref<6x6xi32>
    %alloc_16 = memref.alloc() : memref<10x1xf16>
    %alloc_17 = memref.alloc() : memref<10x1xi32>
    %alloc_18 = memref.alloc() : memref<10x1xf16>
    %alloc_19 = memref.alloc() : memref<10x1xf16>
    %alloc_20 = memref.alloc() : memref<10x11x10xf32>
    %alloc_21 = memref.alloc() : memref<10x11x10xf16>
    %alloc_22 = memref.alloc() : memref<6x6xf32>
    %16 = tensor.empty() : tensor<6x6xf32>
    %17 = linalg.copy ins(%9 : tensor<6x6xf32>) outs(%16 : tensor<6x6xf32>) -> tensor<6x6xf32>
    %alloc_23 = memref.alloc() : memref<10xi1>
    linalg.transpose ins(%12 : tensor<10xi1>) outs(%alloc_23 : memref<10xi1>) permutation = [0] 
    %18 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%alloc_19 : memref<10x1xf16>) outs(%18 : tensor<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %from_elements_55 = tensor.from_elements %init, %init, %init, %cst_1, %cst, %init, %in, %init, %cst_4, %cst_4, %in, %cst_1, %in, %init, %cst, %cst_1, %cst_4, %in, %cst_4, %in, %init, %cst_4, %init, %init, %cst_4, %cst_4, %in, %in, %in, %in, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4 : tensor<6x6xf16>
        %258 = vector.broadcast %c-3307_i16 : i16 to vector<10xi16>
        %259 = arith.divf %cst_2, %cst_7 : f32
        %260 = math.exp2 %11 : tensor<6x6xf16>
        %261 = math.ctlz %10 : tensor<6x6xi32>
        %262 = memref.realloc %alloc_8 : memref<10xi1> to memref<10xi1>
        %263 = math.ceil %cst_0 : f32
        vector.print %258 : vector<10xi16>
        %cst_56 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_56 : f16
      }
    %19 = scf.parallel (%arg0, %arg1) = (%c11, %c2) to (%c8, %c9) step (%c7, %c4) init (%15) -> tensor<10xf32> {
      %extracted_55 = tensor.extract %reduced[] : tensor<f16>
      %258 = bufferization.clone %alloc_12 : memref<6x6xf16> to memref<6x6xf16>
      %259 = math.round %15 : tensor<10xf32>
      %260 = memref.load %alloc_23[%c2] : memref<10xi1>
      %261 = math.ceil %9 : tensor<6x6xf32>
      %262 = math.ctpop %c512582377_i32 : i32
      %263 = index.maxu %arg1, %c12
      %rank_56 = tensor.rank %8 : tensor<10xi64>
      %false = arith.constant false
      %264 = vector.broadcast %false : i1 to vector<1xi1>
      %265 = vector.extract_strided_slice %264 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %cst_57 = arith.constant 5.843200e+04 : f16
      memref.tensor_store %3, %258 : memref<6x6xf16>
      %expanded_58 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<6x6xf32> into tensor<6x6x1xf32>
      %266 = index.castu %c-24114_i16 : i16 to index
      vector.print %265 : vector<1xi1>
      %267 = index.floordivs %arg0, %c8
      %268 = vector.create_mask %c0, %c15, %arg0 : vector<10x11x10xi1>
      %269 = tensor.empty() : tensor<10xf32>
      scf.reduce(%269)  : tensor<10xf32> {
      ^bb0(%arg2: tensor<10xf32>, %arg3: tensor<10xf32>):
        %270 = bufferization.clone %alloc_21 : memref<10x11x10xf16> to memref<10x11x10xf16>
        %271 = memref.load %alloc_23[%c0] : memref<10xi1>
        %272 = affine.load %alloc_17[%c13, %c9] : memref<10x1xi32>
        %273 = math.cttz %c1565606134_i64 : i64
        %inserted_59 = tensor.insert %cst_3 into %expanded_58[%c2, %c2, %c0] : tensor<6x6x1xf32>
        %274 = vector.create_mask %c0, %c8 : vector<6x6xi1>
        %275 = vector.splat %c1565606134_i64 : vector<10x11x10xi64>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %cst_61 = arith.constant 0.000000e+00 : f16
        %276 = vector.transfer_read %alloc_14[%rank_56, %arg1, %c10], %cst_61 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<10x11x10xf16>, vector<11x6xf16>
        %277 = tensor.empty() : tensor<10xf32>
        scf.reduce.return %277 : tensor<10xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_13[%c0, %c8] : memref<10x1xi16>, vector<11xi16>
    affine.vector_store %20, %alloc[%c15, %c13] : memref<6x6xi16>, vector<11xi16>
    %21 = tensor.empty() : tensor<10xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%2, %21 : tensor<10xf32>, tensor<10xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = arith.remf %cst_5, %cst_7 : f32
    %25 = arith.maxsi %c-3307_i16, %c-24114_i16 : i16
    %26 = math.roundeven %2 : tensor<10xf32>
    %27 = index.divu %c15, %c7
    %28 = index.maxu %c8, %c9
    %29 = vector.broadcast %c7 : index to vector<6xindex>
    %true = arith.constant true
    %30 = vector.broadcast %true : i1 to vector<6xi1>
    %31 = vector.broadcast %cst_2 : f32 to vector<6xf32>
    vector.scatter %alloc_9[%c4, %c0] [%29], %30, %31 : memref<6x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
    %32 = bufferization.clone %alloc_15 : memref<6x6xi32> to memref<6x6xi32>
    memref.copy %alloc_16, %alloc_18 : memref<10x1xf16> to memref<10x1xf16>
    %33 = arith.floordivsi %c-24114_i16, %c-3307_i16 : i16
    %34 = math.log %15 : tensor<10xf32>
    memref.alloca_scope  {
      %258 = vector.extract_strided_slice %20 {offsets = [1], sizes = [3], strides = [1]} : vector<11xi16> to vector<3xi16>
      %259 = bufferization.clone %alloc_14 : memref<10x11x10xf16> to memref<10x11x10xf16>
      %260 = vector.multi_reduction <mul>, %20, %c18725_i16 [0] : vector<11xi16> to i16
      %261 = memref.alloca_scope  -> (memref<6x6xi64>) {
        %288 = bufferization.to_tensor %alloc_15 : memref<6x6xi32>
        %289 = memref.load %259[%c1, %c3, %c7] : memref<10x11x10xf16>
        %290 = math.rsqrt %7 : tensor<10x1xf32>
        %cast = tensor.cast %12 : tensor<10xi1> to tensor<?xi1>
        %291 = arith.maxui %c-3307_i16, %c-24114_i16 : i16
        %292 = arith.addf %cst_0, %cst_7 : f32
        %293 = vector.broadcast %c-24114_i16 : i16 to vector<3x3xi16>
        %294 = vector.outerproduct %258, %258, %293 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
        %295 = index.mul %c11, %c15
        %296 = vector.reduction <or>, %258 : vector<3xi16> into i16
        %297 = math.absf %15 : tensor<10xf32>
        %298 = vector.insertelement %260, %20[%c8 : index] : vector<11xi16>
        %299 = index.mul %c1, %28
        %300 = math.atan2 %15, %2 : tensor<10xf32>
        %301 = index.add %299, %c0
        %302 = arith.maxsi %c1565606134_i64, %c1565606134_i64 : i64
        %303 = arith.cmpi ne, %c1565606134_i64, %c1565606134_i64 : i64
        memref.store %c1924632301_i32, %32[%c5, %c2] : memref<6x6xi32>
        %304 = math.round %11 : tensor<6x6xf16>
        %305 = arith.maxui %c18725_i16, %c18725_i16 : i16
        %306 = arith.addf %cst_0, %cst_2 : f32
        %307 = index.maxs %c7, %27
        %308 = math.ipowi %5, %5 : tensor<10x1xi32>
        %309 = math.roundeven %9 : tensor<6x6xf32>
        %310 = vector.create_mask %c10, %c9 : vector<10x1xi1>
        %311 = vector.create_mask %c13, %c7 : vector<10x1xi1>
        %312 = arith.andi %c512582377_i32, %c1924632301_i32 : i32
        %313 = arith.maxui %260, %c-3307_i16 : i16
        %314 = vector.insertelement %c18725_i16, %258[%301 : index] : vector<3xi16>
        %315 = memref.atomic_rmw maxu %c1924632301_i32, %alloc_15[%c2, %c2] : (i32, memref<6x6xi32>) -> i32
        %true_58 = arith.constant true
        %316 = vector.broadcast %true_58 : i1 to vector<10xi1>
        %dest_59, %accumulated_value_60 = vector.scan <minui>, %311, %316 {inclusive = false, reduction_dim = 1 : i64} : vector<10x1xi1>, vector<10xi1>
        %317 = index.divs %299, %c2
        %318 = index.divu %c11, %c13
        %alloc_61 = memref.alloc() : memref<6x6xi64>
        memref.alloca_scope.return %alloc_61 : memref<6x6xi64>
      }
      scf.execute_region {
        bufferization.dealloc_tensor %8 : tensor<10xi64>
        %288 = memref.atomic_rmw ori %c1924632301_i32, %alloc_10[%c9, %c10, %c3] : (i32, memref<10x11x10xi32>) -> i32
        %289 = vector.create_mask %c9 : vector<10xi1>
        %290 = arith.divui %c1924632301_i32, %c333937332_i32 : i32
        %true_58 = index.bool.constant true
        %291 = vector.reduction <minui>, %289 : vector<10xi1> into i1
        %292 = arith.maxf %cst_6, %cst_6 : f32
        %293 = arith.divui %c1565606134_i64, %c1565606134_i64 : i64
        %294 = math.ceil %11 : tensor<6x6xf16>
        %295 = vector.broadcast %c6 : index to vector<11xindex>
        %296 = vector.broadcast %true_58 : i1 to vector<11xi1>
        %297 = vector.broadcast %cst_4 : f16 to vector<11xf16>
        vector.scatter %alloc_16[%c4, %c0] [%295], %296, %297 : memref<10x1xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %298 = vector.multi_reduction <minsi>, %258, %258 [] : vector<3xi16> to vector<3xi16>
        %299 = index.castu %c2 : index to i32
        %300 = vector.shuffle %20, %258 [0, 3, 4, 6, 7, 8, 11, 13] : vector<11xi16>, vector<3xi16>
        %expanded_59 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<6x6xf32> into tensor<6x6x1xf32>
        %301 = index.sizeof
        %302 = index.maxu %28, %c7
        scf.yield
      }
      %262 = arith.remf %cst_2, %cst_7 : f32
      %263 = index.divu %c10, %c11
      %264 = arith.ori %c1924632301_i32, %c333937332_i32 : i32
      %265 = affine.max affine_map<(d0) -> (-d0, -(((d0 + 8) * 2) ceildiv 16 + 64))>(%c8)
      %266 = arith.remf %cst_5, %cst_0 : f32
      %267 = math.fma %15, %15, %15 : tensor<10xf32>
      memref.copy %alloc_9, %alloc_22 : memref<6x6xf32> to memref<6x6xf32>
      affine.for %arg0 = 0 to 27 {
      }
      %268 = arith.subi %c-24114_i16, %c-24114_i16 : i16
      affine.store %c1565606134_i64, %261[%c15, %c15] : memref<6x6xi64>
      %269 = math.fma %9, %16, %0 : tensor<6x6xf32>
      %270 = math.ctpop %10 : tensor<6x6xi32>
      %271 = arith.ori %c1924632301_i32, %c333937332_i32 : i32
      %272 = memref.realloc %alloc_23 : memref<10xi1> to memref<1xi1>
      %273 = math.roundeven %cst_4 : f16
      %274 = tensor.empty() : tensor<10x11x10xf16>
      %mapped_55 = linalg.map ins(%alloc_21, %259 : memref<10x11x10xf16>, memref<10x11x10xf16>) outs(%274 : tensor<10x11x10xf16>)
        (%in: f16, %in_58: f16) {
          %expanded_59 = tensor.expand_shape %8 [[0, 1]] : tensor<10xi64> into tensor<10x1xi64>
          %288 = vector.extract %258[1] : vector<3xi16>
          %289 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 8)>(%c9, %28, %27, %c1)
          %290 = affine.load %alloc_13[%c1, %c13] : memref<10x1xi16>
          %291 = vector.create_mask %289, %c10, %c14 : vector<10x11x10xi1>
          %292 = arith.shli %260, %290 : i16
          %293 = arith.mulf %cst_5, %cst_6 : f32
          %294 = math.round %22 : tensor<f32>
          %295 = affine.load %alloc_23[%c6] : memref<10xi1>
          %alloca_60 = memref.alloca() : memref<10x1xf16>
          %296 = math.round %18 : tensor<f16>
          %cst_61 = arith.constant 1.000000e+00 : f16
          %cst_62 = arith.constant 0.000000e+00 : f16
          %297 = vector.transfer_read %3[%c6, %c14], %cst_62 : tensor<6x6xf16>, vector<f16>
          %298 = arith.ori %c333937332_i32, %c333937332_i32 : i32
          %inserted_63 = tensor.insert %c512582377_i32 into %14[%c8, %c1, %c6] : tensor<10x11x10xi32>
          %299 = math.round %9 : tensor<6x6xf32>
          %300 = arith.remsi %295, %295 : i1
          %inserted_64 = tensor.insert %cst_2 into %15[%c3] : tensor<10xf32>
          %false = arith.constant false
          memref.copy %alloc_9, %alloc_22 : memref<6x6xf32> to memref<6x6xf32>
          %301 = memref.load %32[%c2, %c4] : memref<6x6xi32>
          %302 = bufferization.clone %alloc_13 : memref<10x1xi16> to memref<10x1xi16>
          vector.print %20 : vector<11xi16>
          %303 = arith.shrui %c18725_i16, %c-24114_i16 : i16
          %304 = math.ipowi %12, %12 : tensor<10xi1>
          %305 = arith.divui %260, %260 : i16
          %306 = vector.splat %c11 : vector<10xindex>
          %307 = index.floordivs %c1, %c11
          %308 = math.ceil %9 : tensor<6x6xf32>
          %309 = math.fma %2, %2, %21 : tensor<10xf32>
          %310 = index.floordivs %307, %307
          %311 = math.ipowi %14, %14 : tensor<10x11x10xi32>
          %312 = bufferization.clone %302 : memref<10x1xi16> to memref<10x1xi16>
          %cst_65 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_65 : f16
        }
      %275 = vector.transpose %258, [0] : vector<3xi16> to vector<3xi16>
      %276 = math.ceil %2 : tensor<10xf32>
      %alloc_56 = memref.alloc() : memref<10x11x10xi1>
      %true_57 = arith.constant true
      %277 = vector.broadcast %true_57 : i1 to vector<10xi1>
      %278 = vector.broadcast %c1924632301_i32 : i32 to vector<10xi32>
      %279 = vector.gather %alloc_56[%c14, %c8, %c13] [%278], %277, %277 : memref<10x11x10xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %280 = math.expm1 %cst : f16
      %281 = arith.maxf %cst_6, %cst_5 : f32
      %282 = math.atan %0 : tensor<6x6xf32>
      %283 = arith.remf %cst_2, %cst_6 : f32
      %284 = arith.ori %c-24114_i16, %c-24114_i16 : i16
      %285 = arith.maxui %c18725_i16, %c-24114_i16 : i16
      %286 = vector.reduction <xor>, %277 : vector<10xi1> into i1
      %287 = index.castu %c512582377_i32 : i32 to index
    }
    %35 = math.copysign %2, %15 : tensor<10xf32>
    %36 = vector.splat %c2 : vector<10xindex>
    %37 = arith.ceildivsi %c-24114_i16, %c-3307_i16 : i16
    %generated = tensor.generate %c15 {
    ^bb0(%arg0: index, %arg1: index):
      %258 = math.tan %0 : tensor<6x6xf32>
      %259 = memref.realloc %alloc_8 : memref<10xi1> to memref<10xi1>
      %260 = index.maxs %c11, %c4
      %261 = vector.insertelement %c18725_i16, %20[%c6 : index] : vector<11xi16>
      tensor.yield %cst_7 : f32
    } : tensor<?x1xf32>
    %38 = tensor.empty() : tensor<10x1xf16>
    %mapped = linalg.map ins(%alloc_19 : memref<10x1xf16>) outs(%38 : tensor<10x1xf16>)
      (%in: f16) {
        %258 = math.sqrt %cst_2 : f32
        %259 = math.expm1 %cst_6 : f32
        %260 = arith.cmpi ne, %c1924632301_i32, %c333937332_i32 : i32
        %generated_55 = tensor.generate %c0, %c11 {
        ^bb0(%arg0: index, %arg1: index, %arg2: index):
          %286 = bufferization.to_tensor %alloc_12 : memref<6x6xf16>
          %287 = math.fpowi %38, %5 : tensor<10x1xf16>, tensor<10x1xi32>
          %288 = arith.remui %c333937332_i32, %c333937332_i32 : i32
          %289 = arith.addf %cst_3, %cst_7 : f32
          tensor.yield %cst_4 : f16
        } : tensor<?x?x10xf16>
        %261 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 16) * 2)>(%c7, %c9, %c13, %c9)
        %262 = arith.floordivsi %c-3307_i16, %c-24114_i16 : i16
        %263 = math.round %cst_4 : f16
        vector.print %20 : vector<11xi16>
        %264 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
        %265 = vector.outerproduct %20, %20, %264 {kind = #vector.kind<maxsi>} : vector<11xi16>, vector<11xi16>
        %266 = arith.shrui %c1924632301_i32, %c1924632301_i32 : i32
        %267 = math.log %11 : tensor<6x6xf16>
        %268 = math.sqrt %15 : tensor<10xf32>
        %269 = arith.subi %c-3307_i16, %c18725_i16 : i16
        %270 = math.fpowi %cst_0, %c1924632301_i32 : f32, i32
        %271 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
        %272 = vector.outerproduct %20, %20, %271 {kind = #vector.kind<maxui>} : vector<11xi16>, vector<11xi16>
        %273 = arith.shli %c1565606134_i64, %c1565606134_i64 : i64
        %274 = scf.execute_region -> tensor<6x6xi1> {
          %286 = arith.shrui %c18725_i16, %c-3307_i16 : i16
          memref.store %cst_0, %alloc_20[%c6, %c10, %c7] : memref<10x11x10xf32>
          %287 = math.tanh %7 : tensor<10x1xf32>
          %288 = arith.remf %cst_2, %cst_7 : f32
          %289 = index.floordivs %c15, %c7
          %290 = index.castu %c1565606134_i64 : i64 to index
          %291 = vector.splat %c1565606134_i64 : vector<10x11x10xi64>
          %292 = math.exp2 %cst_7 : f32
          %293 = math.round %cst : f16
          %294 = math.sqrt %2 : tensor<10xf32>
          %295 = math.cttz %5 : tensor<10x1xi32>
          %296 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
          %297 = vector.outerproduct %20, %20, %296 {kind = #vector.kind<minsi>} : vector<11xi16>, vector<11xi16>
          %298 = tensor.empty(%27, %c3) : tensor<?x?x10xi32>
          %299 = math.exp %17 : tensor<6x6xf32>
          %300 = math.round %3 : tensor<6x6xf16>
          %301 = vector.extract %20[3] : vector<11xi16>
          scf.yield %6 : tensor<6x6xi1>
        }
        bufferization.dealloc_tensor %22 : tensor<f32>
        %275 = math.expm1 %21 : tensor<10xf32>
        %276 = arith.negf %cst : f16
        %277 = math.rsqrt %21 : tensor<10xf32>
        %278 = bufferization.to_tensor %alloc_18 : memref<10x1xf16>
        scf.execute_region {
          %286 = vector.extract_strided_slice %20 {offsets = [1], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
          %287 = index.castu %c-3307_i16 : i16 to index
          %288 = vector.insertelement %c-3307_i16, %20[%c7 : index] : vector<11xi16>
          affine.store %cst, %alloc_19[%c13, %c8] : memref<10x1xf16>
          %289 = arith.floordivsi %c1924632301_i32, %c333937332_i32 : i32
          %290 = memref.load %alloc_8[%c6] : memref<10xi1>
          %291 = math.fma %cst_0, %cst_5, %cst_3 : f32
          %292 = affine.load %alloc_19[%c7, %c4] : memref<10x1xf16>
          %c1659_i16 = arith.constant 1659 : i16
          %293 = arith.cmpi sgt, %c512582377_i32, %c512582377_i32 : i32
          %294 = vector.flat_transpose %286 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
          %295 = math.absf %0 : tensor<6x6xf32>
          %296 = arith.minui %c1924632301_i32, %c333937332_i32 : i32
          %297 = math.cttz %c333937332_i32 : i32
          %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %294, %294, %c-3307_i16 : vector<2xi16>, vector<2xi16> into i16
          %299 = bufferization.to_tensor %alloc_14 : memref<10x11x10xf16>
          scf.yield
        }
        scf.execute_region {
          %286 = index.castu %c5 : index to i32
          %expanded_58 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x6xi32> into tensor<6x6x1xi32>
          %287 = math.exp2 %18 : tensor<f16>
          %288 = vector.multi_reduction <xor>, %20, %20 [] : vector<11xi16> to vector<11xi16>
          %289 = index.sizeof
          memref.store %cst, %alloc_12[%c3, %c4] : memref<6x6xf16>
          %290 = math.tan %cst_3 : f32
          %291 = arith.floordivsi %c-24114_i16, %c-3307_i16 : i16
          affine.store %cst_1, %alloc_21[%c12, %c13, %c13] : memref<10x11x10xf16>
          %292 = arith.minsi %c333937332_i32, %c333937332_i32 : i32
          %293 = vector.create_mask %c5 : vector<10xi1>
          %294 = math.atan2 %2, %21 : tensor<10xf32>
          %295 = math.ipowi %6, %274 : tensor<6x6xi1>
          %296 = math.tan %cst_3 : f32
          %297 = math.expm1 %9 : tensor<6x6xf32>
          %cast = tensor.cast %5 : tensor<10x1xi32> to tensor<?x?xi32>
          scf.yield
        }
        %279 = index.maxu %c7, %261
        %expanded_56 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<6x6xi1> into tensor<6x6x1xi1>
        %280 = arith.subi %c1565606134_i64, %c1565606134_i64 : i64
        %281 = math.sqrt %11 : tensor<6x6xf16>
        %282 = math.tan %15 : tensor<10xf32>
        %283 = memref.alloca_scope  -> (memref<10x11x10xi64>) {
          %286 = arith.remui %c18725_i16, %c18725_i16 : i16
          %287 = math.exp2 %7 : tensor<10x1xf32>
          %c13318_i16 = arith.constant 13318 : i16
          %288 = math.fpowi %7, %5 : tensor<10x1xf32>, tensor<10x1xi32>
          %expanded_58 = tensor.expand_shape %12 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
          %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %c-3307_i16 : vector<11xi16>, vector<11xi16> into i16
          %290 = affine.load %alloc_10[%c12, %c1, %c6] : memref<10x11x10xi32>
          %291 = arith.subi %c1565606134_i64, %c1565606134_i64 : i64
          %292 = arith.shrui %c18725_i16, %c-3307_i16 : i16
          %293 = affine.load %alloc_15[%c8, %c7] : memref<6x6xi32>
          %294 = index.sub %c0, %c6
          %295 = vector.extract_strided_slice %20 {offsets = [7], sizes = [4], strides = [1]} : vector<11xi16> to vector<4xi16>
          %296 = math.ipowi %c-3307_i16, %c18725_i16 : i16
          %297 = vector.broadcast %261 : index to vector<1xindex>
          %false = arith.constant false
          %298 = vector.broadcast %false : i1 to vector<1xi1>
          %299 = vector.broadcast %cst_4 : f16 to vector<1xf16>
          vector.scatter %alloc_19[%c8, %c0] [%297], %298, %299 : memref<10x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
          %300 = vector.multi_reduction <minsi>, %20, %20 [] : vector<11xi16> to vector<11xi16>
          %301 = index.castu %28 : index to i32
          %302 = index.divu %c6, %c6
          %303 = math.exp2 %3 : tensor<6x6xf16>
          %304 = arith.floordivsi %c333937332_i32, %c1924632301_i32 : i32
          %305 = math.round %cst_5 : f32
          %306 = vector.splat %c-3307_i16 : vector<10xi16>
          memref.store %cst_1, %alloc_14[%c6, %c1, %c0] : memref<10x11x10xf16>
          %307 = math.atan2 %cst_2, %cst_3 : f32
          %308 = index.maxs %27, %c1
          %309 = math.ctpop %293 : i32
          %310 = vector.splat %c0 : vector<10xindex>
          %311 = arith.remui %c512582377_i32, %290 : i32
          %312 = math.fma %21, %21, %21 : tensor<10xf32>
          %313 = arith.shli %c-3307_i16, %c-24114_i16 : i16
          %314 = index.sizeof
          %expanded_59 = tensor.expand_shape %15 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
          %315 = math.fpowi %cst_7, %293 : f32, i32
          %alloc_60 = memref.alloc() : memref<10x11x10xi64>
          memref.alloca_scope.return %alloc_60 : memref<10x11x10xi64>
        }
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
        %285 = vector.insert %c-3307_i16, %20 [10] : i16 into vector<11xi16>
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    %39 = index.divs %c14, %27
    %40 = arith.remsi %c333937332_i32, %c1924632301_i32 : i32
    %41 = arith.floordivsi %c-3307_i16, %c-3307_i16 : i16
    %42 = index.sizeof
    %43 = memref.alloca_scope  -> (i16) {
      %258 = math.log %16 : tensor<6x6xf32>
      %259 = index.divu %39, %c10
      %260 = index.divs %c12, %c2
      %261 = memref.load %alloc_16[%c0, %c0] : memref<10x1xf16>
      %262 = math.exp2 %22 : tensor<f32>
      %263 = arith.mulf %cst_0, %cst_6 : f32
      %264 = math.log2 %cst_2 : f32
      %265 = arith.mulf %cst_0, %cst_0 : f32
      %alloc_55 = memref.alloc() : memref<10x1xi64>
      %266 = arith.xori %c512582377_i32, %c333937332_i32 : i32
      %267 = bufferization.clone %alloc_20 : memref<10x11x10xf32> to memref<10x11x10xf32>
      %268 = vector.multi_reduction <maxui>, %20, %c18725_i16 [0] : vector<11xi16> to i16
      %269 = memref.load %alloc_12[%c0, %c1] : memref<6x6xf16>
      %270 = tensor.empty() : tensor<i32>
      %271 = math.fpowi %reduced, %270 : tensor<f16>, tensor<i32>
      %272 = math.expm1 %cst_4 : f16
      %273 = index.floordivs %39, %c7
      %274 = vector.reduction <mul>, %20 : vector<11xi16> into i16
      %275 = bufferization.clone %alloc_15 : memref<6x6xi32> to memref<6x6xi32>
      %276 = math.atan %cst_0 : f32
      %277 = math.copysign %11, %11 : tensor<6x6xf16>
      %278 = arith.minsi %268, %c18725_i16 : i16
      %extracted_56 = tensor.extract %0[%c2, %c4] : tensor<6x6xf32>
      %279 = math.expm1 %cst_4 : f16
      %280 = index.floordivs %c7, %c12
      %281 = memref.atomic_rmw addf %cst_5, %alloc_11[%c0] : (f32, memref<10xf32>) -> f32
      %282 = bufferization.to_tensor %alloc_21 : memref<10x11x10xf16>
      %283 = vector.extract_strided_slice %20 {offsets = [3], sizes = [4], strides = [1]} : vector<11xi16> to vector<4xi16>
      %284 = memref.load %alloc_13[%c0, %c0] : memref<10x1xi16>
      %285 = vector.broadcast %c1565606134_i64 : i64 to vector<1x11xi64>
      %286 = vector.broadcast %c1565606134_i64 : i64 to vector<1xi64>
      %dest_57, %accumulated_value_58 = vector.scan <xor>, %285, %286 {inclusive = true, reduction_dim = 1 : i64} : vector<1x11xi64>, vector<1xi64>
      %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %283, %283, %c-24114_i16 : vector<4xi16>, vector<4xi16> into i16
      vector.print %283 : vector<4xi16>
      %288 = vector.splat %27 : vector<6x6xindex>
      memref.alloca_scope.return %c-24114_i16 : i16
    }
    %44 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
    %45 = vector.outerproduct %20, %20, %44 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
    %46 = arith.floordivsi %c512582377_i32, %c512582377_i32 : i32
    %alloca = memref.alloca() : memref<10xi64>
    vector.print %20 : vector<11xi16>
    %47 = arith.mulf %cst_6, %cst_2 : f32
    %48 = arith.remui %c1924632301_i32, %c1924632301_i32 : i32
    %49 = math.absi %c1565606134_i64 : i64
    %50 = index.floordivs %c6, %c4
    %51 = bufferization.to_tensor %alloc_21 : memref<10x11x10xf16>
    %cst_24 = arith.constant 1.000000e+00 : f32
    %52 = vector.transfer_read %15[%27], %cst_24 : tensor<10xf32>, vector<f32>
    %53 = math.fma %3, %11, %3 : tensor<6x6xf16>
    scf.execute_region {
      %258 = math.ipowi %6, %6 : tensor<6x6xi1>
      %259 = math.ipowi %10, %10 : tensor<6x6xi32>
      %260 = memref.atomic_rmw minu %c333937332_i32, %alloc_15[%c2, %c4] : (i32, memref<6x6xi32>) -> i32
      %collapsed_55 = tensor.collapse_shape %17 [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
      %261 = bufferization.clone %alloc_19 : memref<10x1xf16> to memref<10x1xf16>
      %262 = vector.broadcast %c18725_i16 : i16 to vector<11x11xi16>
      %263 = vector.outerproduct %20, %20, %262 {kind = #vector.kind<mul>} : vector<11xi16>, vector<11xi16>
      %264 = arith.addi %c-3307_i16, %c-24114_i16 : i16
      %265 = index.ceildivs %c5, %39
      %266 = arith.maxui %c333937332_i32, %c1924632301_i32 : i32
      memref.assume_alignment %alloc_15, 2 : memref<6x6xi32>
      %267 = math.ctpop %10 : tensor<6x6xi32>
      %268 = scf.execute_region -> memref<10x1xi1> {
        %273 = vector.splat %c6 : vector<10xindex>
        %274 = vector.broadcast %cst : f16 to vector<6x6xf16>
        %275 = math.log2 %cst_6 : f32
        %276 = math.sqrt %cst_7 : f32
        %277 = vector.extract %274[3] : vector<6x6xf16>
        %278 = affine.load %alloc_13[%c8, %c11] : memref<10x1xi16>
        %279 = memref.atomic_rmw mins %c-24114_i16, %alloc_13[%c6, %c0] : (i16, memref<10x1xi16>) -> i16
        %280 = vector.splat %265 : vector<10x11x10xindex>
        %281 = math.fma %0, %16, %0 : tensor<6x6xf32>
        %282 = arith.maxf %cst_4, %cst_4 : f16
        %283 = vector.bitcast %20 : vector<11xi16> to vector<11xi16>
        %true_56 = index.bool.constant true
        %284 = arith.remui %43, %c18725_i16 : i16
        %285 = index.divu %c8, %c10
        %286 = memref.atomic_rmw assign %cst_4, %alloc_14[%c1, %c3, %c7] : (f16, memref<10x11x10xf16>) -> f16
        memref.assume_alignment %alloc_15, 2 : memref<6x6xi32>
        %alloc_57 = memref.alloc() : memref<10x1xi1>
        scf.yield %alloc_57 : memref<10x1xi1>
      }
      %269 = arith.shli %c18725_i16, %c-24114_i16 : i16
      %270 = bufferization.clone %alloc_8 : memref<10xi1> to memref<10xi1>
      %271 = bufferization.clone %alloc : memref<6x6xi16> to memref<6x6xi16>
      %272 = math.round %reduced : tensor<f16>
      scf.yield
    }
    %54 = arith.addi %c1565606134_i64, %c1565606134_i64 : i64
    %55 = vector.bitcast %20 : vector<11xi16> to vector<11xi16>
    %56 = math.ipowi %1, %1 : tensor<10x1xi16>
    %57 = index.add %c12, %c8
    %58 = arith.subi %43, %c18725_i16 : i16
    %59 = affine.apply affine_map<(d0, d1) -> (d1 + d0 * 64 - 128)>(%c5, %c2)
    %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<10x1xi32> into tensor<10x1x1xi32>
    %60 = math.powf %16, %9 : tensor<6x6xf32>
    %61 = scf.while (%arg0 = %alloc) : (memref<6x6xi16>) -> memref<6x6xi16> {
      %258 = math.powf %cst_5, %cst_5 : f32
      %259 = vector.insert %c-24114_i16, %55 [6] : i16 into vector<11xi16>
      %extracted_55 = tensor.extract %generated[%c0, %c0] : tensor<?x1xf32>
      %260 = memref.load %alloc_9[%c4, %c3] : memref<6x6xf32>
      %261 = math.powf %cst_1, %cst_4 : f16
      %inserted_56 = tensor.insert %cst_4 into %11[%c0, %c2] : tensor<6x6xf16>
      %262 = vector.extract_strided_slice %20 {offsets = [6], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
      %263 = math.ctpop %c333937332_i32 : i32
      %false = arith.constant false
      scf.condition(%false) %arg0 : memref<6x6xi16>
    } do {
    ^bb0(%arg0: memref<6x6xi16>):
      memref.alloca_scope  {
        %268 = arith.cmpf ole, %cst_5, %cst_5 : f32
        %269 = arith.floordivsi %c512582377_i32, %c333937332_i32 : i32
        %270 = index.mul %c11, %c12
        %271 = arith.xori %c1924632301_i32, %c1924632301_i32 : i32
        %272 = arith.xori %c512582377_i32, %c512582377_i32 : i32
        %273 = vector.multi_reduction <and>, %20, %55 [] : vector<11xi16> to vector<11xi16>
        %274 = arith.floordivsi %c1924632301_i32, %c1924632301_i32 : i32
        memref.assume_alignment %alloc_21, 2 : memref<10x11x10xf16>
        %275 = vector.reduction <and>, %55 : vector<11xi16> into i16
        %276 = arith.shrsi %c-3307_i16, %c18725_i16 : i16
        %277 = math.cttz %1 : tensor<10x1xi16>
        %rank_58 = tensor.rank %expanded : tensor<10x1x1xi32>
        %278 = math.exp %reduced : tensor<f16>
        %279 = affine.load %alloc[%c14, %c8] : memref<6x6xi16>
        %extracted_59 = tensor.extract %23[] : tensor<f32>
        %280 = vector.extract_strided_slice %20 {offsets = [1], sizes = [8], strides = [1]} : vector<11xi16> to vector<8xi16>
        %cast_60 = tensor.cast %14 : tensor<10x11x10xi32> to tensor<?x?x?xi32>
        %281 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %282 = vector.fma %281, %281, %281 : vector<10xf32>
        %283 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %284 = math.tanh %22 : tensor<f32>
        %285 = arith.addf %cst_5, %cst_7 : f32
        %286 = math.atan %cst_2 : f32
        %287 = vector.broadcast %cst_24 : f32 to vector<f32>
        %288 = vector.transfer_write %287, %2[%50] : vector<f32>, tensor<10xf32>
        %289 = vector.multi_reduction <and>, %20, %279 [0] : vector<11xi16> to i16
        %290 = math.absi %289 : i16
        %291 = math.powf %51, %51 : tensor<10x11x10xf16>
        %292 = arith.xori %c333937332_i32, %c333937332_i32 : i32
        %293 = vector.splat %42 : vector<10x11x10xindex>
        %294 = vector.extract_strided_slice %280 {offsets = [0], sizes = [4], strides = [1]} : vector<8xi16> to vector<4xi16>
        %alloc_61 = memref.alloc() : memref<6x6xi16>
        %295 = vector.insertelement %cst_5, %281[%270 : index] : vector<10xf32>
        %296 = vector.insert %43, %294 [3] : i16 into vector<4xi16>
      }
      %258 = affine.if affine_set<(d0) : (0 == 0)>(%c5) -> i16 {
        %268 = vector.splat %c5 : vector<10x1xindex>
        %269 = math.roundeven %7 : tensor<10x1xf32>
        %270 = index.maxs %c5, %57
        %271 = math.cttz %c-3307_i16 : i16
        %272 = affine.min affine_map<(d0, d1) -> (d1 + 124, d0, d1 - 4)>(%28, %c14)
        %extracted_58 = tensor.extract %21[%c6] : tensor<10xf32>
        %273 = arith.shrsi %43, %c18725_i16 : i16
        %274 = math.ctlz %10 : tensor<6x6xi32>
        affine.yield %43 : i16
      } else {
        %268 = arith.divui %c1565606134_i64, %c1565606134_i64 : i64
        %269 = arith.minsi %c18725_i16, %c-24114_i16 : i16
        %270 = arith.remf %cst_5, %cst_5 : f32
        affine.store %c1924632301_i32, %32[%c11, %c7] : memref<6x6xi32>
        %271 = tensor.empty() : tensor<6x6xf32>
        %272 = linalg.matmul ins(%0, %9 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%271 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %cast_58 = tensor.cast %5 : tensor<10x1xi32> to tensor<?x?xi32>
        %273 = math.rsqrt %2 : tensor<10xf32>
        %274 = math.expm1 %9 : tensor<6x6xf32>
        affine.yield %c-24114_i16 : i16
      }
      %259 = index.maxu %c2, %c0
      %cast = tensor.cast %13 : tensor<10x1xi16> to tensor<?x?xi16>
      %260 = arith.xori %43, %c18725_i16 : i16
      %generated_55 = tensor.generate %c6, %c1 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %268 = math.tan %cst_1 : f16
        %269 = math.exp2 %reduced : tensor<f16>
        %270 = vector.extract_strided_slice %55 {offsets = [8], sizes = [1], strides = [1]} : vector<11xi16> to vector<1xi16>
        %271 = arith.remf %cst_24, %cst_3 : f32
        tensor.yield %c-24114_i16 : i16
      } : tensor<?x?x10xi16>
      %261 = vector.insert %43, %20 [9] : i16 into vector<11xi16>
      %262 = arith.maxui %c1924632301_i32, %c1924632301_i32 : i32
      %alloc_56 = memref.alloc() : memref<10x1xi16>
      %263 = affine.if affine_set<(d0, d1, d2, d3) : (d3 mod 32 + d1 + 32 == 0, -(d2 ceildiv 16) - 1 == 0)>(%c15, %c3, %c7, %c0) -> memref<10xi1> {
        %268 = arith.mulf %cst_4, %cst : f16
        %269 = math.sqrt %16 : tensor<6x6xf32>
        %270 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %271 = math.roundeven %17 : tensor<6x6xf32>
        %272 = vector.broadcast %cst : f16 to vector<10x1xf16>
        %273 = index.ceildivs %c6, %c15
        %274 = index.add %c4, %57
        %275 = math.rsqrt %cst_6 : f32
        affine.yield %alloc_23 : memref<10xi1>
      } else {
        %268 = arith.remf %cst_0, %cst_6 : f32
        %269 = vector.splat %c11 : vector<10xindex>
        %extracted_58 = tensor.extract %5[%c0, %c0] : tensor<10x1xi32>
        %270 = math.absf %reduced : tensor<f16>
        %271 = arith.remf %cst_6, %cst_7 : f32
        %272 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %273 = math.rsqrt %18 : tensor<f16>
        %274 = vector.reduction <or>, %55 : vector<11xi16> into i16
        affine.yield %alloc_23 : memref<10xi1>
      }
      %264 = index.floordivs %50, %c2
      %extracted_57 = tensor.extract %15[%c7] : tensor<10xf32>
      %265 = memref.load %alloc_12[%c2, %c1] : memref<6x6xf16>
      scf.index_switch %264 
      case 1 {
        %268 = arith.subi %c333937332_i32, %c512582377_i32 : i32
        %269 = arith.minf %cst_1, %cst_4 : f16
        %270 = arith.ceildivsi %c-24114_i16, %c-3307_i16 : i16
        %271 = math.log %0 : tensor<6x6xf32>
        vector.print %20 : vector<11xi16>
        %272 = arith.xori %c1924632301_i32, %c512582377_i32 : i32
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 16) * 2)>(%c8, %28, %c8, %c8)
        %274 = math.cttz %1 : tensor<10x1xi16>
        %275 = tensor.empty(%273, %c2) : tensor<?x?xi1>
        %276 = arith.remui %c512582377_i32, %c512582377_i32 : i32
        %277 = math.powf %cst_0, %cst_3 : f32
        %278 = math.exp2 %2 : tensor<10xf32>
        %279 = arith.subi %c512582377_i32, %c333937332_i32 : i32
        %cast_58 = tensor.cast %17 : tensor<6x6xf32> to tensor<?x?xf32>
        %280 = vector.extract %55[6] : vector<11xi16>
        %281 = arith.addi %c-24114_i16, %43 : i16
        scf.yield
      }
      case 2 {
        %rank_58 = tensor.rank %expanded : tensor<10x1x1xi32>
        %268 = index.maxs %59, %rank_58
        %269 = memref.realloc %alloc_8 : memref<10xi1> to memref<10xi1>
        %extracted_59 = tensor.extract %5[%c7, %c0] : tensor<10x1xi32>
        %270 = index.castu %c0 : index to i32
        %271 = math.exp %11 : tensor<6x6xf16>
        %272 = index.castu %c4 : index to i32
        %273 = arith.divui %c512582377_i32, %c512582377_i32 : i32
        %274 = arith.subi %43, %43 : i16
        %275 = index.maxs %c10, %c0
        %276 = vector.broadcast %c18725_i16 : i16 to vector<11x11xi16>
        %277 = vector.outerproduct %20, %20, %276 {kind = #vector.kind<minsi>} : vector<11xi16>, vector<11xi16>
        %278 = math.round %51 : tensor<10x11x10xf16>
        %279 = arith.xori %43, %c-24114_i16 : i16
        %280 = math.fpowi %cst_1, %extracted_59 : f16, i32
        %281 = arith.xori %c1565606134_i64, %c1565606134_i64 : i64
        %282 = math.powf %0, %16 : tensor<6x6xf32>
        scf.yield
      }
      case 3 {
        %268 = arith.maxf %cst_2, %extracted_57 : f32
        %inserted_58 = tensor.insert %cst_5 into %15[%c0] : tensor<10xf32>
        %269 = arith.subi %c-24114_i16, %c-3307_i16 : i16
        %270 = arith.divf %cst_0, %cst_7 : f32
        %271 = vector.broadcast %c18725_i16 : i16 to vector<11x11xi16>
        %272 = vector.outerproduct %55, %55, %271 {kind = #vector.kind<maxui>} : vector<11xi16>, vector<11xi16>
        %rank_59 = tensor.rank %2 : tensor<10xf32>
        %273 = arith.shrsi %43, %43 : i16
        %274 = math.exp2 %cst_0 : f32
        %275 = bufferization.to_tensor %alloc_18 : memref<10x1xf16>
        %276 = memref.atomic_rmw maxu %c-24114_i16, %arg0[%c2, %c3] : (i16, memref<6x6xi16>) -> i16
        %277 = index.divu %42, %c15
        affine.store %cst_4, %alloc_12[%c9, %c6] : memref<6x6xf16>
        %278 = index.ceildivs %c15, %c14
        %279 = vector.extract %55[1] : vector<11xi16>
        %280 = index.castu %c-24114_i16 : i16 to index
        %281 = vector.broadcast %43 : i16 to vector<6x6xi16>
        scf.yield
      }
      default {
        %268 = math.round %21 : tensor<10xf32>
        %269 = arith.shli %c512582377_i32, %c333937332_i32 : i32
        %c-4985_i16 = arith.constant -4985 : i16
        %270 = math.exp %2 : tensor<10xf32>
        %271 = memref.atomic_rmw addf %cst_4, %alloc_16[%c3, %c0] : (f16, memref<10x1xf16>) -> f16
        %272 = index.sizeof
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %55, %55, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
        %false = index.bool.constant false
        %274 = arith.cmpf olt, %cst, %cst_4 : f16
        %275 = math.sqrt %cst_0 : f32
        %276 = arith.andi %false, %false : i1
        %277 = vector.insertelement %c-3307_i16, %55[%c9 : index] : vector<11xi16>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %55, %c-24114_i16 : vector<11xi16>, vector<11xi16> into i16
        %279 = math.ctpop %expanded : tensor<10x1x1xi32>
        vector.print %55 : vector<11xi16>
        %280 = arith.maxf %cst_3, %cst_24 : f32
      }
      %266 = math.ceil %cst_0 : f32
      %267 = bufferization.to_tensor %alloc_10 : memref<10x11x10xi32>
      scf.yield %alloc : memref<6x6xi16>
    }
    %62 = memref.atomic_rmw minu %c1924632301_i32, %32[%c3, %c3] : (i32, memref<6x6xi32>) -> i32
    %63 = math.cttz %c1924632301_i32 : i32
    %64 = tensor.empty() : tensor<6x6xf32>
    %mapped_25 = linalg.map ins(%alloc_9 : memref<6x6xf32>) outs(%64 : tensor<6x6xf32>)
      (%in: f32) {
        %258 = arith.remf %cst, %cst_1 : f16
        %259 = vector.shuffle %20, %55 [1, 3, 9, 10, 11, 12, 13, 17, 18, 20] : vector<11xi16>, vector<11xi16>
        %true_55 = arith.constant true
        %260 = vector.transfer_read %alloc_8[%c10], %true_55 : memref<10xi1>, vector<i1>
        %261 = math.copysign %cst_7, %cst_0 : f32
        %262 = index.maxu %57, %c4
        %263 = vector.broadcast %c333937332_i32 : i32 to vector<11x6xi32>
        %264 = vector.broadcast %c1924632301_i32 : i32 to vector<11xi32>
        %dest_56, %accumulated_value_57 = vector.scan <minsi>, %263, %264 {inclusive = false, reduction_dim = 1 : i64} : vector<11x6xi32>, vector<11xi32>
        %265 = arith.maxf %cst_24, %in : f32
        %266 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4, d2 ceildiv 32, d1 ceildiv 4 - d0, d2 ceildiv 32)>(%c13, %c7, %c14, %c6)
        %267 = vector.create_mask %c0 : vector<10xi1>
        %generated_58 = tensor.generate %c2 {
        ^bb0(%arg0: index):
          %false = arith.constant false
          %288 = arith.divui %true_55, %true_55 : i1
          %289 = arith.divui %c333937332_i32, %c333937332_i32 : i32
          %290 = math.exp2 %64 : tensor<6x6xf32>
          tensor.yield %cst_1 : f16
        } : tensor<?xf16>
        %268 = affine.if affine_set<(d0, d1) : (d1 - 4 == 0, (d1 + 8) floordiv 128 - 8 >= 0, d1 - 8 >= 0, d1 mod 128 >= 0)>(%c0, %c3) -> memref<10xi32> {
          %288 = math.absf %cst_0 : f32
          %extracted_63 = tensor.extract %7[%c8, %c0] : tensor<10x1xf32>
          %289 = math.powf %64, %64 : tensor<6x6xf32>
          %cast = tensor.cast %51 : tensor<10x11x10xf16> to tensor<?x?x?xf16>
          %290 = vector.insert %c-24114_i16, %20 [6] : i16 into vector<11xi16>
          %291 = arith.addf %cst_2, %cst_6 : f32
          %292 = bufferization.to_memref %expanded : memref<10x1x1xi32>
          %collapsed_64 = tensor.collapse_shape %6 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
          %alloc_65 = memref.alloc() : memref<10xi32>
          affine.yield %alloc_65 : memref<10xi32>
        } else {
          %cst_63 = arith.constant 0x4E58E44C : f32
          %288 = vector.broadcast %cst : f16 to vector<10x1xf16>
          %289 = vector.broadcast %true_55 : i1 to vector<10x1xi1>
          %290 = vector.broadcast %c333937332_i32 : i32 to vector<10x1xi32>
          %291 = vector.gather %alloc_21[%c1, %c6, %c9] [%290], %289, %288 : memref<10x11x10xf16>, vector<10x1xi32>, vector<10x1xi1>, vector<10x1xf16> into vector<10x1xf16>
          %292 = index.mul %c5, %c15
          %293 = bufferization.clone %alloc_10 : memref<10x11x10xi32> to memref<10x11x10xi32>
          %294 = math.log %51 : tensor<10x11x10xf16>
          %295 = math.log %0 : tensor<6x6xf32>
          %296 = vector.broadcast %in : f32 to vector<1xf32>
          %297 = vector.broadcast %true_55 : i1 to vector<1xi1>
          %298 = vector.maskedload %alloc_20[%c8, %c0, %c8], %297, %296 : memref<10x11x10xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %299 = vector.insertelement %true_55, %297[%c11 : index] : vector<1xi1>
          %alloc_64 = memref.alloc() : memref<10xi32>
          affine.yield %alloc_64 : memref<10xi32>
        }
        %cst_59 = arith.constant 1.000000e+00 : f16
        %269 = vector.transfer_read %alloc_21[%c11, %c15, %59], %cst_59 : memref<10x11x10xf16>, vector<10x1xf16>
        %270 = vector.flat_transpose %267 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %271 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
        %272 = index.divs %c8, %c1
        %273 = index.divs %272, %c15
        %274 = arith.xori %true_55, %true_55 : i1
        %275 = arith.xori %c-3307_i16, %c-24114_i16 : i16
        %expanded_60 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<10x1xi16> into tensor<10x1x1xi16>
        %276 = memref.alloca_scope  -> (memref<10xi64>) {
          %288 = math.round %11 : tensor<6x6xf16>
          %289 = bufferization.clone %alloc_15 : memref<6x6xi32> to memref<6x6xi32>
          %290 = index.divu %39, %50
          %cst_63 = arith.constant 1.000000e+00 : f32
          %cst_64 = arith.constant 0.000000e+00 : f32
          %291 = vector.transfer_read %15[%57], %cst_64 : tensor<10xf32>, vector<f32>
          vector.print %55 : vector<11xi16>
          %292 = index.maxu %273, %273
          %293 = math.round %cst_24 : f32
          %294 = vector.extract %55[7] : vector<11xi16>
          %295 = math.fma %cst_6, %cst_6, %cst_3 : f32
          %296 = index.maxu %c7, %272
          %297 = affine.max affine_map<(d0, d1, d2) -> ((-d2) ceildiv 2)>(%c11, %c0, %c15)
          %expanded_65 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<10x1xi32> into tensor<10x1x1xi32>
          %298 = arith.shrui %c-24114_i16, %c18725_i16 : i16
          %299 = math.ipowi %1, %1 : tensor<10x1xi16>
          %inserted_66 = tensor.insert %c1924632301_i32 into %expanded_65[%c8, %c0, %c0] : tensor<10x1x1xi32>
          %300 = arith.shrsi %c512582377_i32, %c512582377_i32 : i32
          %301 = index.casts %c10 : index to i32
          %302 = vector.insertelement %43, %55[%c2 : index] : vector<11xi16>
          %303 = bufferization.to_tensor %289 : memref<6x6xi32>
          %304 = vector.create_mask %266, %c13 : vector<6x6xi1>
          %305 = math.powf %17, %0 : tensor<6x6xf32>
          memref.assume_alignment %alloc_13, 1 : memref<10x1xi16>
          %306 = tensor.empty() : tensor<6x6xi16>
          %307 = vector.broadcast %c-3307_i16 : i16 to vector<10xi16>
          %308 = vector.broadcast %c1924632301_i32 : i32 to vector<10xi32>
          %309 = vector.gather %306[%c13, %273] [%308], %267, %307 : tensor<6x6xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
          %310 = vector.broadcast %c-24114_i16 : i16 to vector<10x11x10xi16>
          %311 = index.maxs %c5, %297
          %312 = math.copysign %0, %9 : tensor<6x6xf32>
          %313 = memref.load %alloc_11[%c9] : memref<10xf32>
          vector.print %20 : vector<11xi16>
          memref.assume_alignment %alloc_11, 4 : memref<10xf32>
          %314 = arith.shrsi %c1924632301_i32, %c1924632301_i32 : i32
          %315 = math.exp %0 : tensor<6x6xf32>
          %316 = vector.broadcast %c-3307_i16 : i16 to vector<6x6xi16>
          %alloc_67 = memref.alloc() : memref<10xi64>
          memref.alloca_scope.return %alloc_67 : memref<10xi64>
        }
        %277 = index.mul %273, %57
        %278 = index.floordivs %57, %50
        %279 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
        %generated_61 = tensor.generate %262 {
        ^bb0(%arg0: index):
          %288 = index.sizeof
          %289 = math.atan2 %cst_7, %in : f32
          %290 = math.log2 %in : f32
          %alloc_63 = memref.alloc() : memref<10xi32>
          tensor.yield %cst_3 : f32
        } : tensor<?xf32>
        %280 = index.floordivs %272, %272
        %281 = memref.load %alloc[%c4, %c2] : memref<6x6xi16>
        %282 = arith.maxui %c-24114_i16, %43 : i16
        %283 = index.floordivs %59, %273
        %284 = math.ctlz %true_55 : i1
        %285 = vector.create_mask %283, %c15, %c0 : vector<10x11x10xi1>
        %286 = arith.xori %c-24114_i16, %c-3307_i16 : i16
        %287 = arith.cmpi sle, %c333937332_i32, %c333937332_i32 : i32
        %cst_62 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_62 : f32
      }
    %alloca_26 = memref.alloca() : memref<10xi32>
    %65 = index.mul %c2, %c15
    %66 = index.divs %c10, %50
    %67 = affine.max affine_map<(d0) -> ((d0 + 1) * -2)>(%59)
    %68 = index.ceildivs %59, %c2
    %69 = tensor.empty() : tensor<10x10xi32>
    %70 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%69 : tensor<10x10xi32>) outs(%4 : tensor<10x11x10xi32>) {
    ^bb0(%in: i32, %out: i32):
      %258 = math.absf %0 : tensor<6x6xf32>
      %259 = math.exp2 %cst_6 : f32
      memref.alloca_scope  {
        %true_56 = arith.constant true
        %286 = vector.transfer_read %alloc_23[%c8], %true_56 : memref<10xi1>, vector<i1>
        %287 = index.ceildivu %c9, %66
        %288 = bufferization.clone %alloc_8 : memref<10xi1> to memref<10xi1>
        %289 = index.castu %65 : index to i32
        affine.store %c18725_i16, %alloc[%c2, %c0] : memref<6x6xi16>
        %290 = bufferization.clone %alloc_13 : memref<10x1xi16> to memref<10x1xi16>
        %collapsed_57 = tensor.collapse_shape %3 [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
        %291 = arith.minui %c333937332_i32, %c1924632301_i32 : i32
        %292 = arith.minf %cst_4, %cst_1 : f16
        %293 = affine.load %alloc_15[%c4, %c12] : memref<6x6xi32>
        %294 = index.sub %c15, %68
        %295 = math.round %3 : tensor<6x6xf16>
        %296 = vector.splat %c1924632301_i32 : vector<6x6xi32>
        %297 = index.sizeof
        %alloc_58 = memref.alloc() : memref<6x6xi1>
        memref.assume_alignment %alloc_22, 1 : memref<6x6xf32>
        %298 = tensor.empty() : tensor<6x6xf32>
        %299 = linalg.matmul ins(%9, %16 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%298 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %rank_59 = tensor.rank %18 : tensor<f16>
        %300 = math.exp %cst_6 : f32
        %301 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
        %302 = vector.fma %301, %301, %301 : vector<6x6xf32>
        %303 = memref.atomic_rmw minf %cst, %alloc_12[%c1, %c1] : (f16, memref<6x6xf16>) -> f16
        %304 = math.ctpop %c-3307_i16 : i16
        %splat_60 = tensor.splat %cst_4 : tensor<10x1xf16>
        %305 = bufferization.to_memref %64 : memref<6x6xf32>
        %306 = vector.broadcast %cst_7 : f32 to vector<10x11x10xf32>
        %307 = vector.fma %306, %306, %306 : vector<10x11x10xf32>
        %308 = memref.realloc %alloc_23 : memref<10xi1> to memref<1xi1>
        %309 = arith.remf %cst_2, %cst_0 : f32
        %310 = math.tan %cst_3 : f32
        %311 = vector.broadcast %cst_1 : f16 to vector<10xf16>
        %312 = vector.broadcast %true_56 : i1 to vector<10xi1>
        %313 = vector.maskedload %alloc_12[%c1, %c3], %312, %311 : memref<6x6xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %314 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %55, %55, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
        %315 = math.expm1 %cst_0 : f32
        %316 = arith.ori %c-24114_i16, %c18725_i16 : i16
      }
      %260 = bufferization.to_tensor %alloc_15 : memref<6x6xi32>
      %expanded_55 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<10x11x10xi32> into tensor<10x11x10x1xi32>
      %261 = math.powf %64, %0 : tensor<6x6xf32>
      %262 = math.exp2 %reduced : tensor<f16>
      %263 = index.maxs %c6, %65
      %264 = index.castu %65 : index to i32
      %265 = arith.maxui %c1924632301_i32, %in : i32
      %266 = scf.while (%arg0 = %in) : (i32) -> i32 {
        %extracted_56 = tensor.extract %3[%c1, %c0] : tensor<6x6xf16>
        %inserted_57 = tensor.insert %cst_3 into %9[%c1, %c2] : tensor<6x6xf32>
        %286 = math.sqrt %22 : tensor<f32>
        %287 = index.ceildivs %c11, %c13
        %288 = index.sizeof
        %289 = math.round %9 : tensor<6x6xf32>
        %cst_58 = arith.constant 0x4E4D60CA : f32
        %290 = vector.broadcast %39 : index to vector<11xindex>
        %false_59 = arith.constant false
        %291 = vector.broadcast %false_59 : i1 to vector<11xi1>
        %292 = vector.broadcast %cst_4 : f16 to vector<11xf16>
        vector.scatter %alloc_14[%c7, %c10, %c3] [%290], %291, %292 : memref<10x11x10xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %false_60 = arith.constant false
        scf.condition(%false_60) %c1924632301_i32 : i32
      } do {
      ^bb0(%arg0: i32):
        %286 = tensor.empty() : tensor<i32>
        %287 = math.fpowi %reduced, %286 : tensor<f16>, tensor<i32>
        %288 = arith.addf %cst_6, %cst_5 : f32
        %289 = index.casts %c-24114_i16 : i16 to index
        %290 = math.rsqrt %7 : tensor<10x1xf32>
        %cast = tensor.cast %9 : tensor<6x6xf32> to tensor<?x?xf32>
        %291 = math.cttz %c1565606134_i64 : i64
        %292 = vector.broadcast %cst_6 : f32 to vector<10x11x10xf32>
        %293 = vector.fma %292, %292, %292 : vector<10x11x10xf32>
        %294 = vector.multi_reduction <add>, %292, %cst_2 [0, 1, 2] : vector<10x11x10xf32> to f32
        memref.assume_alignment %alloc_11, 8 : memref<10xf32>
        %295 = memref.realloc %alloc_23 : memref<10xi1> to memref<11xi1>
        %296 = arith.addf %294, %cst_7 : f32
        %297 = math.fpowi %11, %10 : tensor<6x6xf16>, tensor<6x6xi32>
        %298 = vector.extract_strided_slice %293 {offsets = [4], sizes = [2], strides = [1]} : vector<10x11x10xf32> to vector<2x11x10xf32>
        %299 = math.powf %0, %16 : tensor<6x6xf32>
        %300 = arith.addf %cst, %cst : f16
        %301 = arith.remf %cst_3, %294 : f32
        scf.yield %c1924632301_i32 : i32
      }
      %false = index.bool.constant false
      %267 = math.cttz %4 : tensor<10x11x10xi32>
      %268 = math.round %3 : tensor<6x6xf16>
      %269 = math.round %11 : tensor<6x6xf16>
      %270 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
      %271 = math.ipowi %c18725_i16, %c18725_i16 : i16
      %272 = memref.load %alloc_19[%c1, %c0] : memref<10x1xf16>
      %273 = math.absi %c512582377_i32 : i32
      %274 = math.expm1 %22 : tensor<f32>
      %275 = math.round %7 : tensor<10x1xf32>
      %276 = math.atan %15 : tensor<10xf32>
      memref.store %cst, %alloc_16[%c4, %c0] : memref<10x1xf16>
      %277 = bufferization.clone %alloc_21 : memref<10x11x10xf16> to memref<10x11x10xf16>
      %278 = scf.index_switch %c0 -> f16 
      case 1 {
        %286 = vector.insert %c-24114_i16, %20 [10] : i16 into vector<11xi16>
        %287 = index.castu %c4 : index to i32
        memref.assume_alignment %alloc_21, 4 : memref<10x11x10xf16>
        %288 = arith.shrsi %false, %false : i1
        %extracted_56 = tensor.extract %15[%c6] : tensor<10xf32>
        %289 = vector.create_mask %66 : vector<10xi1>
        %290 = vector.insert %c-3307_i16, %55 [10] : i16 into vector<11xi16>
        vector.print %289 : vector<10xi1>
        %291 = bufferization.to_memref %5 : memref<10x1xi32>
        %292 = vector.broadcast %cst_6 : f32 to vector<6x6xf32>
        %293 = vector.broadcast %cst_7 : f32 to vector<6xf32>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %292, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xf32>, vector<6xf32>
        %294 = arith.remui %c333937332_i32, %out : i32
        %295 = math.ceil %0 : tensor<6x6xf32>
        affine.store %cst_0, %alloc_20[%c1, %c10, %c1] : memref<10x11x10xf32>
        %296 = vector.splat %c-3307_i16 : vector<10xi16>
        %297 = arith.xori %out, %c1924632301_i32 : i32
        %298 = math.expm1 %38 : tensor<10x1xf16>
        scf.yield %cst : f16
      }
      case 2 {
        %286 = arith.cmpi ule, %false, %false : i1
        %287 = index.castu %43 : i16 to index
        %288 = math.ceil %22 : tensor<f32>
        %289 = vector.reduction <and>, %20 : vector<11xi16> into i16
        %290 = index.add %57, %c8
        %291 = index.divs %c15, %c10
        %292 = arith.maxui %in, %out : i32
        %293 = math.ceil %2 : tensor<10xf32>
        %294 = vector.insertelement %43, %20[%c12 : index] : vector<11xi16>
        %splat_56 = tensor.splat %cst_4 : tensor<10x1xf16>
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %55, %20, %c-3307_i16 : vector<11xi16>, vector<11xi16> into i16
        %expanded_57 = tensor.expand_shape %2 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
        %296 = vector.extract_strided_slice %20 {offsets = [9], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
        %297 = index.sizeof
        %298 = arith.remui %in, %c512582377_i32 : i32
        %alloc_58 = memref.alloc() : memref<10xi32>
        %299 = vector.broadcast %c1924632301_i32 : i32 to vector<6x6xi32>
        %300 = vector.broadcast %false : i1 to vector<6x6xi1>
        %301 = vector.gather %alloc_58[%287] [%299], %300, %299 : memref<10xi32>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi32> into vector<6x6xi32>
        scf.yield %cst : f16
      }
      case 3 {
        %286 = index.ceildivs %c5, %67
        %287 = vector.splat %263 : vector<10xindex>
        %288 = memref.load %alloc_9[%c4, %c5] : memref<6x6xf32>
        %alloc_56 = memref.alloc() : memref<10xf32>
        memref.copy %alloc_11, %alloc_56 : memref<10xf32> to memref<10xf32>
        %289 = index.mul %68, %67
        %290 = arith.divf %cst_7, %cst_3 : f32
        %rank_57 = tensor.rank %6 : tensor<6x6xi1>
        %291 = vector.multi_reduction <and>, %20, %20 [] : vector<11xi16> to vector<11xi16>
        %292 = index.divu %c1, %57
        %293 = math.log %9 : tensor<6x6xf32>
        %294 = arith.subi %in, %c333937332_i32 : i32
        %295 = arith.shli %in, %c1924632301_i32 : i32
        %296 = arith.xori %c-24114_i16, %43 : i16
        %297 = arith.shrui %out, %c1924632301_i32 : i32
        %298 = arith.floordivsi %in, %in : i32
        %299 = math.round %15 : tensor<10xf32>
        scf.yield %cst : f16
      }
      case 4 {
        %286 = bufferization.clone %alloc_16 : memref<10x1xf16> to memref<10x1xf16>
        %287 = math.exp2 %cst_3 : f32
        %288 = vector.reduction <minsi>, %55 : vector<11xi16> into i16
        %extracted_56 = tensor.extract %expanded_55[%c2, %c3, %c7, %c0] : tensor<10x11x10x1xi32>
        %289 = math.tan %cst_0 : f32
        %290 = tensor.empty() : tensor<10xi32>
        %291 = math.fpowi %2, %290 : tensor<10xf32>, tensor<10xi32>
        %292 = math.log %38 : tensor<10x1xf16>
        %293 = math.absf %cst_5 : f32
        %294 = bufferization.to_memref %13 : memref<10x1xi16>
        %295 = vector.insertelement %c18725_i16, %20[%42 : index] : vector<11xi16>
        %296 = arith.floordivsi %extracted_56, %c1924632301_i32 : i32
        %297 = memref.load %alloc_12[%c5, %c2] : memref<6x6xf16>
        %298 = arith.remui %c18725_i16, %c18725_i16 : i16
        %299 = index.ceildivs %42, %c3
        %300 = math.exp %64 : tensor<6x6xf32>
        %301 = arith.floordivsi %c18725_i16, %c-24114_i16 : i16
        scf.yield %cst_1 : f16
      }
      default {
        %286 = math.ctpop %14 : tensor<10x11x10xi32>
        %287 = bufferization.clone %alloc_21 : memref<10x11x10xf16> to memref<10x11x10xf16>
        %rank_56 = tensor.rank %5 : tensor<10x1xi32>
        %288 = math.powf %0, %0 : tensor<6x6xf32>
        %inserted_57 = tensor.insert %c512582377_i32 into %expanded[%c3, %c0, %c0] : tensor<10x1x1xi32>
        %inserted_58 = tensor.insert %43 into %13[%c2, %c0] : tensor<10x1xi16>
        %289 = math.fpowi %64, %260 : tensor<6x6xf32>, tensor<6x6xi32>
        %290 = arith.shli %c333937332_i32, %in : i32
        %291 = vector.extract_strided_slice %55 {offsets = [2], sizes = [3], strides = [1]} : vector<11xi16> to vector<3xi16>
        %292 = vector.broadcast %false : i1 to vector<6x6xi1>
        %293 = math.cttz %c18725_i16 : i16
        %294 = bufferization.clone %alloc_17 : memref<10x1xi32> to memref<10x1xi32>
        %295 = vector.extract_strided_slice %291 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi16> to vector<2xi16>
        %296 = arith.divui %false, %false : i1
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %291, %291, %c-3307_i16 : vector<3xi16>, vector<3xi16> into i16
        %splat_59 = tensor.splat %cst_3 : tensor<6x6xf32>
        scf.yield %cst_4 : f16
      }
      %279 = arith.maxui %c-24114_i16, %c-3307_i16 : i16
      %280 = arith.addf %cst_24, %cst_7 : f32
      %281 = arith.ori %43, %c18725_i16 : i16
      %282 = arith.ceildivsi %c512582377_i32, %c1924632301_i32 : i32
      %283 = arith.remui %43, %c18725_i16 : i16
      %284 = bufferization.to_memref %18 : memref<f16>
      %285 = arith.subi %in, %out : i32
      linalg.yield %c333937332_i32 : i32
    } -> tensor<10x11x10xi32>
    %71 = arith.maxui %c-3307_i16, %c18725_i16 : i16
    %72 = arith.andi %c512582377_i32, %c512582377_i32 : i32
    %73 = vector.extract_strided_slice %20 {offsets = [4], sizes = [4], strides = [1]} : vector<11xi16> to vector<4xi16>
    scf.index_switch %c5 
    case 1 {
      %false = index.bool.constant false
      %258 = math.exp %cst_3 : f32
      %259 = index.divs %c3, %c15
      %260 = vector.broadcast %c-24114_i16 : i16 to vector<4x4xi16>
      %261 = vector.outerproduct %73, %73, %260 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
      %262 = arith.xori %c-24114_i16, %43 : i16
      %263 = math.cttz %1 : tensor<10x1xi16>
      %264 = math.expm1 %64 : tensor<6x6xf32>
      %from_elements_55 = tensor.from_elements %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64 : tensor<10x1xi64>
      %265 = index.maxs %c0, %67
      %266 = math.copysign %cst_5, %cst_7 : f32
      %rank_56 = tensor.rank %generated : tensor<?x1xf32>
      %267 = vector.insert %c-3307_i16, %20 [5] : i16 into vector<11xi16>
      %268 = math.roundeven %64 : tensor<6x6xf32>
      %269 = index.maxs %59, %c10
      %270 = vector.extract_strided_slice %20 {offsets = [6], sizes = [4], strides = [1]} : vector<11xi16> to vector<4xi16>
      %271 = index.floordivs %50, %67
      scf.yield
    }
    case 2 {
      affine.store %c333937332_i32, %alloc_10[%c7, %c5, %c10] : memref<10x11x10xi32>
      %258 = math.absf %cst_4 : f16
      %259 = math.atan %0 : tensor<6x6xf32>
      %260 = arith.minui %c-3307_i16, %c18725_i16 : i16
      %261 = vector.broadcast %cst_3 : f32 to vector<f32>
      %262 = vector.transfer_write %261, %15[%39] : vector<f32>, tensor<10xf32>
      %263 = arith.shli %c1565606134_i64, %c1565606134_i64 : i64
      %alloca_55 = memref.alloca() : memref<10x11x10xi32>
      %264 = index.maxu %27, %28
      %rank_56 = tensor.rank %15 : tensor<10xf32>
      %265 = arith.cmpi eq, %c1924632301_i32, %c512582377_i32 : i32
      %266 = math.rsqrt %0 : tensor<6x6xf32>
      %267 = scf.index_switch %c3 -> memref<10xi16> 
      case 1 {
        %272 = math.fpowi %0, %10 : tensor<6x6xf32>, tensor<6x6xi32>
        %273 = index.sizeof
        %274 = arith.minf %cst_7, %cst_0 : f32
        %275 = math.round %11 : tensor<6x6xf16>
        %276 = bufferization.to_memref %15 : memref<10xf32>
        %277 = math.sqrt %18 : tensor<f16>
        %278 = vector.multi_reduction <minsi>, %55, %55 [] : vector<11xi16> to vector<11xi16>
        %279 = index.add %c15, %c10
        memref.store %c333937332_i32, %alloc_17[%c9, %c0] : memref<10x1xi32>
        %280 = math.atan2 %23, %22 : tensor<f32>
        %281 = vector.broadcast %43 : i16 to vector<1xi16>
        %false = arith.constant false
        %282 = vector.broadcast %false : i1 to vector<1xi1>
        %283 = vector.maskedload %alloc_13[%c9, %c0], %282, %281 : memref<10x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %284 = arith.mulf %cst_5, %cst_5 : f32
        %285 = math.absf %38 : tensor<10x1xf16>
        %inserted_58 = tensor.insert %cst_3 into %0[%c0, %c2] : tensor<6x6xf32>
        %286 = math.copysign %15, %2 : tensor<10xf32>
        %287 = arith.minui %c1565606134_i64, %c1565606134_i64 : i64
        %alloc_59 = memref.alloc() : memref<10xi16>
        scf.yield %alloc_59 : memref<10xi16>
      }
      case 2 {
        %272 = arith.subi %c512582377_i32, %c1924632301_i32 : i32
        %273 = affine.load %alloc_19[%c15, %c9] : memref<10x1xf16>
        %274 = math.rsqrt %51 : tensor<10x11x10xf16>
        vector.print %20 : vector<11xi16>
        %inserted_58 = tensor.insert %c512582377_i32 into %4[%c9, %c0, %c4] : tensor<10x11x10xi32>
        %275 = memref.atomic_rmw mulf %cst_4, %alloc_21[%c7, %c7, %c1] : (f16, memref<10x11x10xf16>) -> f16
        %276 = math.ctlz %14 : tensor<10x11x10xi32>
        %277 = affine.max affine_map<(d0) -> ((d0 + 16) ceildiv 128, (d0 + 16) ceildiv 128, d0 * 16, d0 + 16)>(%c10)
        %278 = arith.xori %c333937332_i32, %c512582377_i32 : i32
        %extracted_59 = tensor.extract %38[%c9, %c0] : tensor<10x1xf16>
        %279 = index.floordivs %c8, %c11
        %280 = vector.extract_strided_slice %20 {offsets = [1], sizes = [7], strides = [1]} : vector<11xi16> to vector<7xi16>
        %281 = arith.addi %c-24114_i16, %43 : i16
        %282 = math.ctpop %expanded : tensor<10x1x1xi32>
        %283 = math.rsqrt %38 : tensor<10x1xf16>
        %284 = index.floordivs %c4, %277
        %alloc_60 = memref.alloc() : memref<10xi16>
        scf.yield %alloc_60 : memref<10xi16>
      }
      case 3 {
        %272 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 128)>(%c1, %68, %c9, %67)
        %273 = arith.xori %c512582377_i32, %c512582377_i32 : i32
        %274 = arith.xori %c-24114_i16, %c-24114_i16 : i16
        %275 = index.maxs %c0, %c4
        %276 = vector.insertelement %43, %20[%264 : index] : vector<11xi16>
        %277 = arith.addf %cst_2, %cst_7 : f32
        %278 = arith.maxf %cst_24, %cst_6 : f32
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %55, %43 : vector<11xi16>, vector<11xi16> into i16
        memref.assume_alignment %alloc_22, 8 : memref<6x6xf32>
        %280 = vector.extract_strided_slice %20 {offsets = [8], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
        %inserted_58 = tensor.insert %cst into %3[%c0, %c3] : tensor<6x6xf16>
        %281 = math.ctlz %14 : tensor<10x11x10xi32>
        memref.copy %alloc_9, %alloc_22 : memref<6x6xf32> to memref<6x6xf32>
        %282 = arith.subi %c1924632301_i32, %c512582377_i32 : i32
        %283 = math.ctlz %4 : tensor<10x11x10xi32>
        %true_59 = arith.constant true
        %inserted_60 = tensor.insert %true_59 into %12[%c6] : tensor<10xi1>
        %alloc_61 = memref.alloc() : memref<10xi16>
        scf.yield %alloc_61 : memref<10xi16>
      }
      case 4 {
        %272 = vector.insert %c-3307_i16, %73 [2] : i16 into vector<4xi16>
        memref.assume_alignment %alloc_9, 1 : memref<6x6xf32>
        %273 = math.absf %cst_0 : f32
        %274 = bufferization.clone %alloc_14 : memref<10x11x10xf16> to memref<10x11x10xf16>
        %275 = math.roundeven %cst_0 : f32
        %276 = vector.create_mask %c2, %c3, %c10 : vector<10x11x10xi1>
        %alloc_58 = memref.alloc() : memref<10x1xi32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %73, %73, %c18725_i16 : vector<4xi16>, vector<4xi16> into i16
        %278 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 16) * 2)>(%c13, %rank_56, %42, %68)
        %279 = arith.divf %cst_7, %cst_7 : f32
        %280 = math.cttz %1 : tensor<10x1xi16>
        %281 = arith.floordivsi %43, %c-24114_i16 : i16
        %282 = math.fpowi %51, %4 : tensor<10x11x10xf16>, tensor<10x11x10xi32>
        %283 = arith.ori %c1565606134_i64, %c1565606134_i64 : i64
        %284 = arith.maxui %c333937332_i32, %c512582377_i32 : i32
        %285 = arith.minf %cst_24, %cst_7 : f32
        %alloc_59 = memref.alloc() : memref<10xi16>
        scf.yield %alloc_59 : memref<10xi16>
      }
      default {
        %272 = math.ceil %15 : tensor<10xf32>
        %273 = index.sizeof
        %rank_58 = tensor.rank %7 : tensor<10x1xf32>
        %274 = arith.subi %c1565606134_i64, %c1565606134_i64 : i64
        %275 = memref.load %alloc_15[%c2, %c2] : memref<6x6xi32>
        %276 = bufferization.to_tensor %alloc_14 : memref<10x11x10xf16>
        %277 = index.maxu %c8, %42
        %278 = affine.max affine_map<(d0) -> (-d0, d0, d0 + 16)>(%50)
        %279 = vector.create_mask %c2 : vector<10xi1>
        %280 = arith.maxf %cst_4, %cst_1 : f16
        %281 = math.ceil %cst_7 : f32
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %20, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
        %283 = arith.maxf %cst_3, %cst_24 : f32
        %284 = arith.andi %c1565606134_i64, %c1565606134_i64 : i64
        %285 = arith.maxf %cst_24, %cst_24 : f32
        %286 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %alloc_59 = memref.alloc() : memref<10xi16>
        scf.yield %alloc_59 : memref<10xi16>
      }
      %268 = vector.flat_transpose %73 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %269 = arith.addi %c-24114_i16, %43 : i16
      %270 = vector.broadcast %cst_0 : f32 to vector<6xf32>
      %271 = vector.transfer_write %270, %7[%68, %42] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf32>, tensor<10x1xf32>
      %alloc_57 = memref.alloc() : memref<10x11x10xi16>
      scf.yield
    }
    case 3 {
      %258 = arith.shrsi %c512582377_i32, %c333937332_i32 : i32
      %259 = vector.broadcast %43 : i16 to vector<11x11xi16>
      %260 = vector.outerproduct %20, %55, %259 {kind = #vector.kind<or>} : vector<11xi16>, vector<11xi16>
      %261 = arith.maxui %c333937332_i32, %c1924632301_i32 : i32
      %262 = math.rsqrt %9 : tensor<6x6xf32>
      %263 = vector.broadcast %c18725_i16 : i16 to vector<4x4xi16>
      %264 = vector.outerproduct %73, %73, %263 {kind = #vector.kind<mul>} : vector<4xi16>, vector<4xi16>
      scf.index_switch %42 
      case 1 {
        %272 = memref.load %alloc_10[%c3, %c4, %c4] : memref<10x11x10xi32>
        vector.print %55 : vector<11xi16>
        %273 = index.divs %c15, %42
        %274 = arith.minsi %c-3307_i16, %c-3307_i16 : i16
        affine.store %cst, %alloc_19[%c14, %c4] : memref<10x1xf16>
        %275 = vector.broadcast %c18725_i16 : i16 to vector<6x6xi16>
        %276 = math.fma %15, %2, %2 : tensor<10xf32>
        %277 = math.ipowi %13, %1 : tensor<10x1xi16>
        %278 = math.atan2 %17, %17 : tensor<6x6xf32>
        %rank_57 = tensor.rank %21 : tensor<10xf32>
        %279 = math.exp %23 : tensor<f32>
        %280 = math.atan2 %2, %15 : tensor<10xf32>
        %281 = arith.subi %c1924632301_i32, %c512582377_i32 : i32
        memref.store %c333937332_i32, %32[%c3, %c1] : memref<6x6xi32>
        %282 = math.expm1 %11 : tensor<6x6xf16>
        %283 = index.floordivs %67, %c1
        scf.yield
      }
      case 2 {
        %272 = affine.load %alloc_22[%c8, %c14] : memref<6x6xf32>
        %273 = vector.broadcast %cst_3 : f32 to vector<11x6xf32>
        %274 = vector.broadcast %cst_7 : f32 to vector<6xf32>
        %dest_57, %accumulated_value_58 = vector.scan <add>, %273, %274 {inclusive = true, reduction_dim = 0 : i64} : vector<11x6xf32>, vector<6xf32>
        %275 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %276 = arith.ori %c333937332_i32, %c333937332_i32 : i32
        %277 = arith.xori %c1924632301_i32, %c1924632301_i32 : i32
        %278 = arith.minf %cst_6, %cst_24 : f32
        %279 = arith.andi %c-3307_i16, %c-3307_i16 : i16
        %280 = math.ctpop %10 : tensor<6x6xi32>
        %281 = vector.multi_reduction <xor>, %73, %73 [] : vector<4xi16> to vector<4xi16>
        %282 = vector.insert %c-24114_i16, %73 [3] : i16 into vector<4xi16>
        %283 = index.floordivs %57, %c11
        %284 = arith.xori %c512582377_i32, %c512582377_i32 : i32
        %cst_59 = arith.constant 1.40037722E+9 : f32
        %rank_60 = tensor.rank %1 : tensor<10x1xi16>
        %285 = arith.remui %c333937332_i32, %c1924632301_i32 : i32
        %286 = index.divu %c8, %rank_60
        scf.yield
      }
      default {
        memref.assume_alignment %alloc_12, 1 : memref<6x6xf16>
        %272 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %273 = arith.negf %cst_24 : f32
        %274 = index.casts %c-24114_i16 : i16 to index
        %275 = math.expm1 %cst_3 : f32
        %276 = vector.splat %c7 : vector<10x11x10xindex>
        %277 = arith.subi %c1565606134_i64, %c1565606134_i64 : i64
        %278 = arith.subi %c-24114_i16, %c18725_i16 : i16
        %279 = math.expm1 %cst_4 : f16
        %280 = arith.minf %cst_7, %cst_6 : f32
        %281 = math.ctlz %8 : tensor<10xi64>
        %282 = vector.flat_transpose %73 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %283 = math.copysign %7, %7 : tensor<10x1xf32>
        %284 = arith.remf %cst_4, %cst_1 : f16
        %285 = math.sqrt %11 : tensor<6x6xf16>
        %286 = index.divu %c12, %42
      }
      %265 = arith.remf %cst_1, %cst_4 : f16
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %73, %73, %c18725_i16 : vector<4xi16>, vector<4xi16> into i16
      %267 = index.divu %28, %42
      %alloc_55 = memref.alloc() : memref<6x6xf16>
      memref.copy %alloc_12, %alloc_55 : memref<6x6xf16> to memref<6x6xf16>
      %268 = bufferization.to_memref %15 : memref<10xf32>
      %269 = vector.bitcast %73 : vector<4xi16> to vector<4xi16>
      affine.store %cst_4, %alloc_21[%c10, %c0, %c4] : memref<10x11x10xf16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%14 : tensor<10x11x10xi32>) {
      ^bb0(%out: i32):
        %272 = memref.load %alloc[%c1, %c2] : memref<6x6xi16>
        %273 = vector.insert %c-24114_i16, %73 [3] : i16 into vector<4xi16>
        %274 = arith.xori %c-3307_i16, %c-3307_i16 : i16
        %275 = math.sqrt %51 : tensor<10x11x10xf16>
        %276 = affine.apply affine_map<(d0) -> ((d0 + 2) * -32)>(%c2)
        memref.store %cst, %alloc_21[%c4, %c9, %c3] : memref<10x11x10xf16>
        %277 = arith.cmpi ult, %c18725_i16, %c-3307_i16 : i16
        %278 = math.round %38 : tensor<10x1xf16>
        %279 = math.roundeven %0 : tensor<6x6xf32>
        %280 = arith.floordivsi %c18725_i16, %c-24114_i16 : i16
        %inserted_57 = tensor.insert %cst_5 into %0[%c3, %c0] : tensor<6x6xf32>
        %281 = bufferization.to_tensor %alloc_17 : memref<10x1xi32>
        %282 = vector.broadcast %c-3307_i16 : i16 to vector<4x4xi16>
        %283 = vector.outerproduct %269, %269, %282 {kind = #vector.kind<mul>} : vector<4xi16>, vector<4xi16>
        %284 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
        %285 = vector.outerproduct %55, %55, %284 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
        %286 = index.floordivs %267, %c3
        %287 = arith.addf %cst_5, %cst_2 : f32
        %288 = arith.cmpf ule, %cst, %cst_1 : f16
        %289 = index.add %c3, %c5
        %290 = arith.addf %cst_7, %cst_5 : f32
        %291 = bufferization.clone %alloc_14 : memref<10x11x10xf16> to memref<10x11x10xf16>
        %292 = bufferization.clone %268 : memref<10xf32> to memref<10xf32>
        %293 = index.divu %c11, %c14
        %294 = arith.shrsi %c-3307_i16, %c18725_i16 : i16
        %295 = arith.maxui %out, %c1924632301_i32 : i32
        %extracted_58 = tensor.extract %11[%c3, %c4] : tensor<6x6xf16>
        %296 = vector.insertelement %43, %269[%68 : index] : vector<4xi16>
        vector.print %55 : vector<11xi16>
        %297 = math.copysign %7, %7 : tensor<10x1xf32>
        %298 = memref.load %alloc_8[%c8] : memref<10xi1>
        %alloc_59 = memref.alloc() : memref<6x6xi16>
        %299 = math.exp %extracted_58 : f16
        %300 = index.castu %50 : index to i32
        linalg.yield %c512582377_i32 : i32
      } -> tensor<10x11x10xi32>
      %true_56 = arith.constant true
      scf.if %true_56 {
        %272 = arith.shli %c-24114_i16, %c-24114_i16 : i16
        %273 = vector.create_mask %57, %c15, %65 : vector<10x11x10xi1>
        %274 = math.ceil %cst_7 : f32
        %275 = arith.shrsi %c18725_i16, %c-3307_i16 : i16
        %276 = math.log2 %18 : tensor<f16>
        %277 = math.sqrt %0 : tensor<6x6xf32>
        %278 = arith.andi %c333937332_i32, %c1924632301_i32 : i32
        %279 = index.ceildivu %57, %c7
      }
      %271 = math.roundeven %cst_1 : f16
      scf.yield
    }
    default {
      %258 = affine.max affine_map<(d0) -> (d0 + 4, (d0 * 2) ceildiv 8 + 64, d0 - (d0 + 4))>(%c15)
      %259 = arith.remf %cst_3, %cst_7 : f32
      memref.assume_alignment %alloc_14, 1 : memref<10x11x10xf16>
      %260 = scf.while (%arg0 = %32) : (memref<6x6xi32>) -> memref<6x6xi32> {
        %splat_56 = tensor.splat %c1565606134_i64 : tensor<10x1xi64>
        %274 = affine.load %alloc_10[%c14, %c2, %c9] : memref<10x11x10xi32>
        %275 = affine.load %alloc_8[%c5] : memref<10xi1>
        %276 = math.roundeven %38 : tensor<10x1xf16>
        %277 = memref.load %arg0[%c0, %c5] : memref<6x6xi32>
        %c28041892_i64 = arith.constant 28041892 : i64
        %278 = memref.atomic_rmw minu %c512582377_i32, %alloc_17[%c3, %c0] : (i32, memref<10x1xi32>) -> i32
        %279 = math.exp2 %15 : tensor<10xf32>
        scf.condition(%275) %32 : memref<6x6xi32>
      } do {
      ^bb0(%arg0: memref<6x6xi32>):
        %274 = arith.ceildivsi %c-24114_i16, %c-24114_i16 : i16
        %275 = vector.reduction <add>, %20 : vector<11xi16> into i16
        %276 = arith.shrui %c333937332_i32, %c512582377_i32 : i32
        memref.assume_alignment %alloc_17, 1 : memref<10x1xi32>
        memref.assume_alignment %arg0, 2 : memref<6x6xi32>
        %277 = arith.ori %c-3307_i16, %43 : i16
        %278 = arith.remsi %c-3307_i16, %c-24114_i16 : i16
        %279 = bufferization.clone %alloc_22 : memref<6x6xf32> to memref<6x6xf32>
        %collapsed_56 = tensor.collapse_shape %3 [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
        %280 = arith.xori %43, %c-3307_i16 : i16
        %281 = math.ceil %cst_4 : f16
        %282 = arith.remf %cst, %cst : f16
        %283 = vector.insertelement %43, %20[%65 : index] : vector<11xi16>
        %284 = arith.remf %cst_4, %cst : f16
        %285 = arith.floordivsi %c1565606134_i64, %c1565606134_i64 : i64
        %286 = arith.maxf %cst, %cst_4 : f16
        scf.yield %alloc_15 : memref<6x6xi32>
      }
      %261 = vector.reduction <mul>, %73 : vector<4xi16> into i16
      %262 = arith.shrui %c333937332_i32, %c1924632301_i32 : i32
      %263 = arith.remf %cst_5, %cst_5 : f32
      %264 = vector.broadcast %42 : index to vector<6xindex>
      %true_55 = arith.constant true
      %265 = vector.broadcast %true_55 : i1 to vector<6xi1>
      vector.scatter %alloc_23[%c9] [%264], %265, %265 : memref<10xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
      %266 = vector.bitcast %55 : vector<11xi16> to vector<11xi16>
      %267 = vector.extract %20[4] : vector<11xi16>
      %268 = math.rsqrt %0 : tensor<6x6xf32>
      %269 = math.ipowi %c333937332_i32, %c333937332_i32 : i32
      %270 = vector.reduction <mul>, %266 : vector<11xi16> into i16
      %271 = vector.insert %c-3307_i16, %55 [8] : i16 into vector<11xi16>
      %272 = vector.insertelement %c-3307_i16, %73[%c0 : index] : vector<4xi16>
      %273 = vector.extract %266[7] : vector<11xi16>
    }
    %74 = math.expm1 %64 : tensor<6x6xf32>
    %75 = arith.subi %c1924632301_i32, %c1924632301_i32 : i32
    scf.execute_region {
      %258 = math.exp2 %17 : tensor<6x6xf32>
      %259 = scf.index_switch %59 -> vector<10x1xf32> 
      case 1 {
        %272 = memref.load %alloc_20[%c9, %c8, %c7] : memref<10x11x10xf32>
        %273 = math.round %2 : tensor<10xf32>
        %274 = index.divu %c1, %c14
        %extracted_56 = tensor.extract %51[%c5, %c0, %c5] : tensor<10x11x10xf16>
        %275 = index.sizeof
        %276 = arith.subi %c18725_i16, %c-3307_i16 : i16
        %expanded_57 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<6x6xf16> into tensor<6x6x1xf16>
        %277 = math.round %cst : f16
        %278 = vector.reduction <and>, %73 : vector<4xi16> into i16
        %279 = affine.load %alloc[%c14, %c7] : memref<6x6xi16>
        %280 = math.exp2 %cst_2 : f32
        %281 = vector.extract %20[4] : vector<11xi16>
        %282 = arith.remf %extracted_56, %cst_1 : f16
        %283 = math.absi %c333937332_i32 : i32
        %284 = index.ceildivs %42, %50
        %285 = arith.shrsi %279, %c-3307_i16 : i16
        %286 = vector.broadcast %cst_2 : f32 to vector<10x1xf32>
        scf.yield %286 : vector<10x1xf32>
      }
      case 2 {
        %272 = index.floordivs %c0, %c0
        %273 = math.sqrt %0 : tensor<6x6xf32>
        %274 = math.absi %6 : tensor<6x6xi1>
        %275 = memref.load %alloc[%c4, %c4] : memref<6x6xi16>
        %276 = memref.realloc %alloc_11 : memref<10xf32> to memref<11xf32>
        %277 = math.rsqrt %cst_5 : f32
        %278 = math.round %cst_7 : f32
        %279 = math.fpowi %cst_3, %c512582377_i32 : f32, i32
        %280 = index.divu %c12, %c8
        %281 = math.roundeven %2 : tensor<10xf32>
        %282 = index.maxu %c7, %59
        %283 = math.powf %reduced, %reduced : tensor<f16>
        %284 = index.maxu %68, %c7
        %285 = arith.shrsi %c512582377_i32, %c1924632301_i32 : i32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_56 = arith.constant 0 : i16
        %286 = vector.transfer_read %alloc_13[%c1, %57], %c0_i16_56 : memref<10x1xi16>, vector<i16>
        %287 = math.round %cst_5 : f32
        %288 = vector.broadcast %cst_24 : f32 to vector<10x1xf32>
        scf.yield %288 : vector<10x1xf32>
      }
      case 3 {
        %272 = index.divu %27, %65
        %273 = index.sizeof
        %274 = math.ceil %22 : tensor<f32>
        %275 = bufferization.to_tensor %alloc_13 : memref<10x1xi16>
        %276 = arith.mulf %cst_4, %cst_1 : f16
        %277 = arith.shli %c-24114_i16, %c18725_i16 : i16
        %278 = arith.maxui %43, %c-24114_i16 : i16
        %279 = vector.splat %c3 : vector<10x11x10xindex>
        %280 = affine.apply affine_map<(d0, d1) -> ((d0 * 2) floordiv 8)>(%c8, %65)
        %281 = index.ceildivu %42, %c8
        %282 = memref.atomic_rmw minf %cst, %alloc_18[%c3, %c0] : (f16, memref<10x1xf16>) -> f16
        %c1885691165_i64 = arith.constant 1885691165 : i64
        %283 = math.powf %3, %3 : tensor<6x6xf16>
        %284 = arith.ceildivsi %c512582377_i32, %c512582377_i32 : i32
        %285 = affine.load %alloc_8[%c6] : memref<10xi1>
        %286 = math.absi %1 : tensor<10x1xi16>
        %287 = vector.broadcast %cst_24 : f32 to vector<10x1xf32>
        scf.yield %287 : vector<10x1xf32>
      }
      default {
        %272 = math.cttz %c1924632301_i32 : i32
        %273 = math.expm1 %51 : tensor<10x11x10xf16>
        %274 = arith.divui %c1924632301_i32, %c512582377_i32 : i32
        %275 = math.powf %cst_1, %cst : f16
        %276 = arith.subi %c333937332_i32, %c512582377_i32 : i32
        %277 = math.fma %cst_24, %cst_3, %cst_24 : f32
        %278 = memref.atomic_rmw assign %cst_2, %alloc_9[%c2, %c2] : (f32, memref<6x6xf32>) -> f32
        %279 = arith.remui %c333937332_i32, %c333937332_i32 : i32
        %280 = index.divs %57, %c12
        %281 = vector.extract_strided_slice %73 {offsets = [1], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
        %cst_56 = arith.constant 1.000000e+00 : f16
        %cst_57 = arith.constant 0.000000e+00 : f16
        %282 = vector.transfer_read %11[%57, %65], %cst_57 : tensor<6x6xf16>, vector<f16>
        %283 = affine.apply affine_map<(d0) -> (d0 * -64)>(%27)
        %284 = math.atan2 %0, %9 : tensor<6x6xf32>
        %285 = vector.broadcast %cst_24 : f32 to vector<10x10xf32>
        %286 = vector.broadcast %cst_24 : f32 to vector<10xf32>
        %dest_58, %accumulated_value_59 = vector.scan <add>, %285, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xf32>, vector<10xf32>
        %287 = math.ipowi %13, %13 : tensor<10x1xi16>
        %288 = bufferization.clone %alloc_13 : memref<10x1xi16> to memref<10x1xi16>
        %289 = vector.broadcast %cst_6 : f32 to vector<10x1xf32>
        scf.yield %289 : vector<10x1xf32>
      }
      vector.print %55 : vector<11xi16>
      %260 = arith.ceildivsi %c-3307_i16, %c-24114_i16 : i16
      %261 = vector.insertelement %43, %73[%c8 : index] : vector<4xi16>
      %rank_55 = tensor.rank %12 : tensor<10xi1>
      %262 = math.log2 %15 : tensor<10xf32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %55, %55, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
      %264 = arith.shrui %c1565606134_i64, %c1565606134_i64 : i64
      %265 = index.floordivs %67, %68
      %266 = bufferization.clone %alloc_16 : memref<10x1xf16> to memref<10x1xf16>
      %267 = index.divu %28, %c8
      %268 = arith.maxui %c512582377_i32, %c1924632301_i32 : i32
      %269 = affine.if affine_set<(d0, d1, d2, d3) : (d3 mod 32 + d1 + 32 == 0, -(d2 ceildiv 16) - 1 == 0)>(%c0, %c11, %c7, %c3) -> memref<6x6xi64> {
        %inserted_56 = tensor.insert %cst_3 into %17[%c2, %c4] : tensor<6x6xf32>
        %272 = arith.floordivsi %43, %c-3307_i16 : i16
        %273 = math.expm1 %cst_5 : f32
        %274 = vector.bitcast %20 : vector<11xi16> to vector<11xi16>
        %rank_57 = tensor.rank %12 : tensor<10xi1>
        %275 = memref.atomic_rmw maxf %cst_5, %alloc_22[%c0, %c5] : (f32, memref<6x6xf32>) -> f32
        %276 = math.atan2 %22, %22 : tensor<f32>
        %alloc_58 = memref.alloc() : memref<10x1xf32>
        %alloc_59 = memref.alloc() : memref<6x6xi64>
        affine.yield %alloc_59 : memref<6x6xi64>
      } else {
        %272 = memref.atomic_rmw mulf %cst_7, %alloc_20[%c0, %c6, %c1] : (f32, memref<10x11x10xf32>) -> f32
        %273 = index.castu %27 : index to i32
        %274 = vector.splat %c-24114_i16 : vector<10xi16>
        %275 = vector.create_mask %50, %265 : vector<10x1xi1>
        %276 = bufferization.to_tensor %alloc_16 : memref<10x1xf16>
        %277 = index.castu %c1565606134_i64 : i64 to index
        %278 = arith.subi %c333937332_i32, %c512582377_i32 : i32
        %279 = vector.create_mask %27 : vector<10xi1>
        %alloc_56 = memref.alloc() : memref<6x6xi64>
        affine.yield %alloc_56 : memref<6x6xi64>
      }
      %270 = math.expm1 %cst_3 : f32
      %271 = math.exp %2 : tensor<10xf32>
      scf.yield
    }
    %76 = arith.maxf %cst_0, %cst_6 : f32
    %77 = math.log2 %reduced : tensor<f16>
    scf.execute_region {
      %258 = index.castu %c512582377_i32 : i32 to index
      %259 = arith.andi %c333937332_i32, %c1924632301_i32 : i32
      %rank_55 = tensor.rank %13 : tensor<10x1xi16>
      %260 = vector.multi_reduction <maxsi>, %55, %c-24114_i16 [0] : vector<11xi16> to i16
      %261 = vector.multi_reduction <maxsi>, %73, %73 [] : vector<4xi16> to vector<4xi16>
      %262 = vector.broadcast %cst_5 : f32 to vector<10xf32>
      %263 = math.expm1 %0 : tensor<6x6xf32>
      %264 = arith.floordivsi %43, %43 : i16
      %265 = memref.alloca_scope  -> (memref<6x6xf16>) {
        %270 = math.absi %1 : tensor<10x1xi16>
        %271 = arith.remf %cst_24, %cst_6 : f32
        %272 = vector.bitcast %73 : vector<4xi16> to vector<4xi16>
        %273 = arith.minf %cst_0, %cst_5 : f32
        %274 = index.divs %c3, %c1
        %expanded_58 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<10x1xi16> into tensor<10x1x1xi16>
        %275 = vector.broadcast %c14 : index to vector<11xindex>
        %true_59 = arith.constant true
        %276 = vector.broadcast %true_59 : i1 to vector<11xi1>
        %277 = vector.broadcast %cst_0 : f32 to vector<11xf32>
        vector.scatter %alloc_9[%c0, %c3] [%275], %276, %277 : memref<6x6xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %278 = math.fma %cst_4, %cst, %cst : f16
        %279 = arith.remui %260, %c-3307_i16 : i16
        %280 = vector.create_mask %28, %c2, %rank_55 : vector<10x11x10xi1>
        memref.assume_alignment %alloc_10, 4 : memref<10x11x10xi32>
        %281 = vector.splat %c1 : vector<10x11x10xindex>
        %282 = math.expm1 %0 : tensor<6x6xf32>
        %283 = arith.remf %cst_1, %cst_4 : f16
        %284 = vector.broadcast %cst_3 : f32 to vector<10x11x10xf32>
        %285 = vector.fma %284, %284, %284 : vector<10x11x10xf32>
        vector.print %272 : vector<4xi16>
        %286 = index.maxu %c11, %c11
        %287 = math.absf %cst_2 : f32
        %288 = math.absf %23 : tensor<f32>
        %289 = arith.floordivsi %260, %c18725_i16 : i16
        %290 = math.round %2 : tensor<10xf32>
        %291 = arith.xori %c333937332_i32, %c1924632301_i32 : i32
        %292 = bufferization.to_tensor %alloc_16 : memref<10x1xf16>
        %293 = arith.mulf %cst_2, %cst_0 : f32
        %294 = tensor.empty() : tensor<6x6xf32>
        %295 = linalg.matmul ins(%0, %64 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%294 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %296 = vector.bitcast %280 : vector<10x11x10xi1> to vector<10x11x10xi1>
        %297 = index.castu %c18725_i16 : i16 to index
        %rank_60 = tensor.rank %21 : tensor<10xf32>
        %false = arith.constant false
        %298 = arith.remf %cst_0, %cst_5 : f32
        %299 = index.sizeof
        %extracted_61 = tensor.extract %17[%c3, %c4] : tensor<6x6xf32>
        memref.alloca_scope.return %alloc_12 : memref<6x6xf16>
      }
      %rank_56 = tensor.rank %generated : tensor<?x1xf32>
      %266 = arith.divui %c1924632301_i32, %c1924632301_i32 : i32
      %267 = index.floordivs %c0, %c6
      %268 = vector.bitcast %73 : vector<4xi16> to vector<4xi16>
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %268, %268, %c18725_i16 : vector<4xi16>, vector<4xi16> into i16
      %extracted_57 = tensor.extract %1[%c6, %c0] : tensor<10x1xi16>
      affine.store %cst_0, %alloc_9[%c8, %c2] : memref<6x6xf32>
      scf.yield
    }
    %78 = math.ceil %0 : tensor<6x6xf32>
    %79 = vector.broadcast %cst : f16 to vector<10x1xf16>
    %80 = arith.minsi %c333937332_i32, %c1924632301_i32 : i32
    %81 = math.ctlz %43 : i16
    %82 = index.divu %39, %65
    %83 = index.floordivs %c0, %82
    %84 = vector.bitcast %55 : vector<11xi16> to vector<11xi16>
    %85 = arith.addf %cst_3, %cst_7 : f32
    %86 = math.expm1 %reduced : tensor<f16>
    vector.print %79 : vector<10x1xf16>
    %87 = arith.divui %43, %c-3307_i16 : i16
    %88 = math.exp %38 : tensor<10x1xf16>
    %89 = index.divu %42, %83
    %90 = vector.broadcast %43 : i16 to vector<4x4xi16>
    %91 = vector.outerproduct %73, %73, %90 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
    %92 = arith.remui %c18725_i16, %c-3307_i16 : i16
    %93 = math.sqrt %22 : tensor<f32>
    %94 = scf.execute_region -> memref<10xi64> {
      %258 = math.ceil %21 : tensor<10xf32>
      %259 = math.ctpop %expanded : tensor<10x1x1xi32>
      %260 = math.round %cst_24 : f32
      %261 = index.maxu %50, %c5
      %262 = index.ceildivs %c4, %66
      %rank_55 = tensor.rank %6 : tensor<6x6xi1>
      %expanded_56 = tensor.expand_shape %8 [[0, 1]] : tensor<10xi64> into tensor<10x1xi64>
      %263 = arith.divui %c-3307_i16, %c-3307_i16 : i16
      %alloc_57 = memref.alloc() : memref<6x6xi32>
      %264 = memref.load %alloc_15[%c2, %c2] : memref<6x6xi32>
      %265 = index.ceildivs %89, %261
      %266 = index.ceildivs %67, %c10
      %267 = index.divs %66, %c3
      %268 = index.divu %66, %89
      %269 = bufferization.clone %alloc_19 : memref<10x1xf16> to memref<10x1xf16>
      %270 = index.sizeof
      %alloc_58 = memref.alloc() : memref<10xi64>
      scf.yield %alloc_58 : memref<10xi64>
    }
    %95 = vector.splat %57 : vector<10xindex>
    %96 = arith.minsi %43, %c-24114_i16 : i16
    %97 = vector.broadcast %cst_24 : f32 to vector<10x11x10xf32>
    %98 = vector.fma %97, %97, %97 : vector<10x11x10xf32>
    %99 = math.round %0 : tensor<6x6xf32>
    %100 = math.round %38 : tensor<10x1xf16>
    %101 = memref.realloc %alloc_23 : memref<10xi1> to memref<11xi1>
    %alloc_27 = memref.alloc() : memref<f32>
    memref.tensor_store %23, %alloc_27 : memref<f32>
    memref.assume_alignment %alloc_9, 2 : memref<6x6xf32>
    %alloca_28 = memref.alloca() : memref<10x11x10xi1>
    bufferization.dealloc_tensor %6 : tensor<6x6xi1>
    %102 = math.atan %cst_0 : f32
    %103 = vector.broadcast %cst_3 : f32 to vector<10x11x10xf32>
    %104 = vector.fma %103, %98, %98 : vector<10x11x10xf32>
    %105 = math.sqrt %18 : tensor<f16>
    %106 = arith.minf %cst_0, %cst_5 : f32
    %107 = vector.bitcast %55 : vector<11xi16> to vector<11xi16>
    %inserted = tensor.insert %cst_5 into %9[%c1, %c4] : tensor<6x6xf32>
    %108 = vector.flat_transpose %84 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
    scf.index_switch %39 
    case 1 {
      %258 = math.exp %cst_6 : f32
      %259 = math.rsqrt %51 : tensor<10x11x10xf16>
      %expanded_55 = tensor.expand_shape %15 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
      %260 = vector.multi_reduction <maxsi>, %84, %108 [] : vector<11xi16> to vector<11xi16>
      %261 = arith.ceildivsi %43, %43 : i16
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %c-24114_i16 : vector<11xi16>, vector<11xi16> into i16
      %263 = vector.extract_strided_slice %79 {offsets = [3], sizes = [5], strides = [1]} : vector<10x1xf16> to vector<5x1xf16>
      %264 = index.divs %59, %c15
      affine.store %cst_1, %alloc_21[%c5, %c14, %c4] : memref<10x11x10xf16>
      scf.execute_region {
        %272 = arith.remf %cst_2, %cst_3 : f32
        %273 = arith.remui %43, %c-24114_i16 : i16
        %274 = bufferization.to_tensor %alloc_19 : memref<10x1xf16>
        %275 = math.fma %reduced, %reduced, %18 : tensor<f16>
        %276 = index.castu %c4 : index to i32
        %277 = arith.addf %cst_7, %cst_5 : f32
        %278 = affine.apply affine_map<(d0, d1) -> (-d1 - d0)>(%83, %c14)
        %279 = math.ctpop %4 : tensor<10x11x10xi32>
        %280 = arith.divf %cst_0, %cst_6 : f32
        %281 = math.atan %17 : tensor<6x6xf32>
        %282 = arith.minsi %c512582377_i32, %c1924632301_i32 : i32
        %283 = vector.reduction <add>, %84 : vector<11xi16> into i16
        %284 = vector.insertelement %43, %84[%89 : index] : vector<11xi16>
        %285 = index.ceildivs %c5, %57
        %286 = bufferization.to_tensor %alloc_12 : memref<6x6xf16>
        %287 = affine.load %alloc_13[%c4, %c13] : memref<10x1xi16>
        scf.yield
      }
      %265 = bufferization.to_tensor %alloc_11 : memref<10xf32>
      %266 = math.fma %reduced, %18, %18 : tensor<f16>
      %267 = bufferization.clone %alloc_8 : memref<10xi1> to memref<10xi1>
      %268 = vector.splat %43 : vector<6x6xi16>
      %269 = tensor.empty() : tensor<10x10xf16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %269, %269 : tensor<10x10xf16>, tensor<10x10xf16>, tensor<10x10xf16>) outs(%51 : tensor<10x11x10xf16>) {
      ^bb0(%in: f16, %in_56: f16, %in_57: f16, %out: f16):
        %272 = memref.realloc %alloc_8 : memref<10xi1> to memref<10xi1>
        %273 = index.maxu %c13, %82
        %274 = index.ceildivs %273, %c9
        %275 = math.ctlz %13 : tensor<10x1xi16>
        %276 = math.absi %c-3307_i16 : i16
        %277 = index.maxu %c9, %273
        %278 = math.tan %in_56 : f16
        %279 = math.fma %reduced, %18, %reduced : tensor<f16>
        %280 = index.divs %42, %83
        %281 = math.ctlz %6 : tensor<6x6xi1>
        %282 = arith.remui %c18725_i16, %c-24114_i16 : i16
        %283 = bufferization.clone %alloc_18 : memref<10x1xf16> to memref<10x1xf16>
        %284 = index.floordivs %c12, %c10
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %55, %55, %43 : vector<11xi16>, vector<11xi16> into i16
        %286 = arith.addf %cst_3, %cst_7 : f32
        %287 = math.tan %cst : f16
        %288 = index.maxu %c4, %273
        %289 = index.sizeof
        %inserted_58 = tensor.insert %cst into %18[] : tensor<f16>
        %290 = arith.maxui %c1924632301_i32, %c512582377_i32 : i32
        %291 = arith.shrsi %c-3307_i16, %c18725_i16 : i16
        %292 = arith.ceildivsi %c1565606134_i64, %c1565606134_i64 : i64
        %rank_59 = tensor.rank %265 : tensor<10xf32>
        %293 = arith.maxui %c-3307_i16, %43 : i16
        %294 = arith.addf %cst_0, %cst_7 : f32
        %splat_60 = tensor.splat %c512582377_i32 : tensor<10x11x10xi32>
        %295 = math.exp2 %in_56 : f16
        %296 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%83, %50, %c12)
        memref.assume_alignment %alloc_20, 16 : memref<10x11x10xf32>
        %297 = arith.remui %c1565606134_i64, %c1565606134_i64 : i64
        %298 = vector.extract %97[7] : vector<10x11x10xf32>
        %299 = arith.maxui %c-3307_i16, %c-24114_i16 : i16
        linalg.yield %in : f16
      } -> tensor<10x11x10xf16>
      %271 = arith.minsi %c-3307_i16, %c-24114_i16 : i16
      scf.yield
    }
    case 2 {
      %258 = arith.floordivsi %c512582377_i32, %c1924632301_i32 : i32
      %259 = math.ctpop %4 : tensor<10x11x10xi32>
      %260 = math.log %cst_6 : f32
      %alloc_55 = memref.alloc() : memref<10xi64>
      %alloc_56 = memref.alloc() : memref<10xf16>
      %261 = index.add %c14, %28
      %262 = vector.insert %c-3307_i16, %108 [6] : i16 into vector<11xi16>
      %false = arith.constant false
      scf.if %false {
        vector.print %104 : vector<10x11x10xf32>
        %270 = vector.insertelement %c-24114_i16, %20[%c7 : index] : vector<11xi16>
        %271 = vector.create_mask %c4, %c15 : vector<6x6xi1>
        %272 = bufferization.to_tensor %alloc_20 : memref<10x11x10xf32>
        %cast = tensor.cast %2 : tensor<10xf32> to tensor<?xf32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %73, %73, %c18725_i16 : vector<4xi16>, vector<4xi16> into i16
        %274 = math.tanh %22 : tensor<f32>
        %275 = arith.addf %cst_3, %cst_2 : f32
      } else {
        memref.tensor_store %12, %alloc_23 : memref<10xi1>
        %270 = vector.bitcast %108 : vector<11xi16> to vector<11xi16>
        %271 = math.ctlz %5 : tensor<10x1xi32>
        %inserted_57 = tensor.insert %cst_4 into %38[%c4, %c0] : tensor<10x1xf16>
        %272 = vector.multi_reduction <add>, %98, %cst_0 [0, 1, 2] : vector<10x11x10xf32> to f32
        %273 = math.exp2 %cst_6 : f32
        %274 = arith.subi %c-3307_i16, %c18725_i16 : i16
        %275 = math.fpowi %3, %10 : tensor<6x6xf16>, tensor<6x6xi32>
      }
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %107, %108, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
      %264 = memref.alloca_scope  -> (f16) {
        %270 = arith.ori %c1565606134_i64, %c1565606134_i64 : i64
        vector.print %55 : vector<11xi16>
        %271 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %271, %20, %c-3307_i16 : vector<11xi16>, vector<11xi16> into i16
        %273 = vector.splat %c10 : vector<10xindex>
        %true_57 = index.bool.constant true
        %rank_58 = tensor.rank %38 : tensor<10x1xf16>
        %274 = vector.extract_strided_slice %107 {offsets = [2], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
        %275 = arith.addi %43, %c-24114_i16 : i16
        %276 = arith.subi %43, %c-3307_i16 : i16
        %277 = arith.addf %cst_7, %cst_24 : f32
        %278 = arith.maxui %c512582377_i32, %c512582377_i32 : i32
        %279 = index.sizeof
        %280 = arith.minsi %true_57, %false : i1
        %281 = math.ctpop %14 : tensor<10x11x10xi32>
        %282 = index.add %c1, %50
        %283 = math.exp2 %reduced : tensor<f16>
        %284 = vector.insertelement %43, %274[%83 : index] : vector<2xi16>
        %285 = math.sqrt %0 : tensor<6x6xf32>
        %286 = math.expm1 %9 : tensor<6x6xf32>
        %287 = arith.subi %c-3307_i16, %c-24114_i16 : i16
        %288 = arith.xori %c333937332_i32, %c333937332_i32 : i32
        %289 = vector.bitcast %274 : vector<2xi16> to vector<2xi16>
        %290 = bufferization.clone %alloc_9 : memref<6x6xf32> to memref<6x6xf32>
        %291 = math.atan2 %7, %7 : tensor<10x1xf32>
        %292 = index.ceildivs %42, %82
        %293 = vector.broadcast %cst_7 : f32 to vector<6x6xf32>
        %294 = arith.remui %c512582377_i32, %c1924632301_i32 : i32
        %295 = vector.bitcast %79 : vector<10x1xf16> to vector<10x1xf16>
        %rank_59 = tensor.rank %7 : tensor<10x1xf32>
        %296 = arith.maxui %true_57, %true_57 : i1
        %cst_60 = arith.constant 1.000000e+00 : f16
        %297 = vector.transfer_read %11[%c3, %c8], %cst_60 : tensor<6x6xf16>, vector<f16>
        memref.alloca_scope.return %cst : f16
      }
      %265 = math.round %cst : f16
      %266 = vector.create_mask %57, %27 : vector<10x1xi1>
      %267 = vector.insert %c-3307_i16, %73 [1] : i16 into vector<4xi16>
      vector.print %73 : vector<4xi16>
      %268 = vector.multi_reduction <or>, %73, %73 [] : vector<4xi16> to vector<4xi16>
      %269 = math.absf %11 : tensor<6x6xf16>
      scf.yield
    }
    case 3 {
      %258 = vector.broadcast %cst_5 : f32 to vector<10xf32>
      %259 = vector.transfer_write %258, %9[%c4, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf32>, tensor<6x6xf32>
      %260 = vector.create_mask %42, %c2 : vector<10x1xi1>
      memref.assume_alignment %32, 4 : memref<6x6xi32>
      %261 = affine.load %alloc_23[%c10] : memref<10xi1>
      %262 = arith.addf %cst_0, %cst_0 : f32
      %263 = vector.bitcast %260 : vector<10x1xi1> to vector<10x1xi1>
      %264 = math.tanh %0 : tensor<6x6xf32>
      %265 = vector.broadcast %43 : i16 to vector<11x11xi16>
      %266 = vector.outerproduct %107, %107, %265 {kind = #vector.kind<mul>} : vector<11xi16>, vector<11xi16>
      %267 = math.exp2 %cst_3 : f32
      %generated_55 = tensor.generate %66 {
      ^bb0(%arg0: index):
        vector.print %108 : vector<11xi16>
        vector.print %263 : vector<10x1xi1>
        %273 = index.mul %c11, %c0
        %274 = vector.extract_strided_slice %20 {offsets = [8], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
        tensor.yield %c512582377_i32 : i32
      } : tensor<?xi32>
      %268 = arith.maxf %cst_1, %cst_4 : f16
      %269 = vector.reduction <maxsi>, %73 : vector<4xi16> into i16
      %270 = index.sizeof
      %271 = arith.divf %cst_7, %cst_5 : f32
      memref.assume_alignment %alloc_20, 2 : memref<10x11x10xf32>
      %272 = vector.broadcast %cst_24 : f32 to vector<11x10xf32>
      %dest_56, %accumulated_value_57 = vector.scan <minf>, %98, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<10x11x10xf32>, vector<11x10xf32>
      scf.yield
    }
    case 4 {
      %258 = bufferization.to_tensor %alloc : memref<6x6xi16>
      %259 = math.fma %17, %0, %9 : tensor<6x6xf32>
      %260 = index.floordivs %c2, %c13
      %261 = affine.load %alloc_17[%c5, %c6] : memref<10x1xi32>
      %262 = bufferization.to_tensor %alloc_9 : memref<6x6xf32>
      %263 = bufferization.clone %alloc_11 : memref<10xf32> to memref<10xf32>
      affine.store %cst_1, %alloc_19[%c2, %c0] : memref<10x1xf16>
      %264 = arith.ceildivsi %c-24114_i16, %c-3307_i16 : i16
      %265 = arith.shrui %c1924632301_i32, %261 : i32
      %266 = arith.remf %cst_4, %cst : f16
      %267 = vector.broadcast %c-3307_i16 : i16 to vector<10x11x10xi16>
      %true_55 = arith.constant true
      %268 = vector.broadcast %true_55 : i1 to vector<10x11x10xi1>
      %269 = vector.broadcast %261 : i32 to vector<10x11x10xi32>
      %270 = vector.gather %alloc[%c14, %82] [%269], %268, %267 : memref<6x6xi16>, vector<10x11x10xi32>, vector<10x11x10xi1>, vector<10x11x10xi16> into vector<10x11x10xi16>
      %271 = math.ceil %17 : tensor<6x6xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %272 = vector.transfer_read %expanded[%39, %260, %c13], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<10x1x1xi32>, vector<10xi32>
      %273 = index.mul %89, %c4
      %274 = math.exp %11 : tensor<6x6xf16>
      %275 = memref.atomic_rmw assign %cst_4, %alloc_18[%c7, %c0] : (f16, memref<10x1xf16>) -> f16
      scf.yield
    }
    default {
      %258 = bufferization.to_tensor %alloc_11 : memref<10xf32>
      %259 = scf.index_switch %c2 -> index 
      case 1 {
        %272 = memref.load %alloc_15[%c0, %c1] : memref<6x6xi32>
        %273 = arith.ori %c-24114_i16, %c-24114_i16 : i16
        %274 = arith.maxui %c333937332_i32, %c1924632301_i32 : i32
        %extracted_57 = tensor.extract %8[%c2] : tensor<10xi64>
        %alloc_58 = memref.alloc() : memref<6x6xi1>
        vector.print %108 : vector<11xi16>
        %275 = vector.splat %59 : vector<6x6xindex>
        %276 = index.ceildivs %27, %c5
        %277 = arith.shli %c512582377_i32, %c333937332_i32 : i32
        %cast = tensor.cast %10 : tensor<6x6xi32> to tensor<?x?xi32>
        %278 = math.log2 %17 : tensor<6x6xf32>
        %279 = index.castu %extracted_57 : i64 to index
        %280 = math.absf %cst_2 : f32
        %281 = vector.insertelement %43, %107[%276 : index] : vector<11xi16>
        %282 = arith.addi %43, %43 : i16
        %cast_59 = tensor.cast %12 : tensor<10xi1> to tensor<?xi1>
        scf.yield %c1 : index
      }
      default {
        %272 = index.divs %c2, %82
        %273 = vector.reduction <minui>, %107 : vector<11xi16> into i16
        %expanded_57 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x6xi32> into tensor<6x6x1xi32>
        %274 = vector.splat %cst_3 : vector<10x1xf32>
        %275 = math.expm1 %15 : tensor<10xf32>
        memref.assume_alignment %alloc_8, 16 : memref<10xi1>
        %276 = arith.remf %cst_24, %cst_6 : f32
        %277 = index.ceildivs %59, %c0
        %278 = arith.maxf %cst_5, %cst_7 : f32
        %279 = arith.remui %c-3307_i16, %c-24114_i16 : i16
        %280 = arith.ori %c333937332_i32, %c512582377_i32 : i32
        %281 = index.divu %c4, %27
        %282 = vector.flat_transpose %107 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %283 = arith.remui %c18725_i16, %c-3307_i16 : i16
        %284 = math.round %16 : tensor<6x6xf32>
        %285 = index.add %c15, %28
        scf.yield %c4 : index
      }
      %260 = tensor.empty() : tensor<10x11x10xi64>
      %inserted_55 = tensor.insert %c-24114_i16 into %13[%c9, %c0] : tensor<10x1xi16>
      %261 = vector.broadcast %43 : i16 to vector<11x11xi16>
      %262 = vector.outerproduct %107, %55, %261 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
      %263 = arith.minf %cst_2, %cst_7 : f32
      %264 = math.sqrt %15 : tensor<10xf32>
      %expanded_56 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<10x1xf32> into tensor<10x1x1xf32>
      %265 = arith.remf %cst_24, %cst_6 : f32
      %266 = math.powf %15, %258 : tensor<10xf32>
      %267 = arith.maxui %c-3307_i16, %c-24114_i16 : i16
      %268 = math.ctpop %10 : tensor<6x6xi32>
      %269 = arith.subi %c18725_i16, %43 : i16
      %270 = math.rsqrt %cst_0 : f32
      memref.assume_alignment %alloc_9, 16 : memref<6x6xf32>
      %271 = math.cttz %4 : tensor<10x11x10xi32>
    }
    %109 = index.castu %c1 : index to i32
    %from_elements = tensor.from_elements %cst_1, %cst, %cst, %cst_1, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst, %cst_4, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst, %cst_4, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst, %cst, %cst_4, %cst, %cst, %cst_1, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst, %cst, %cst, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_4, %cst, %cst, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst_1, %cst, %cst, %cst_1, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_4, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_1, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst_1, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst, %cst, %cst_1, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst, %cst_1, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst, %cst_1, %cst, %cst_4, %cst, %cst, %cst_1, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst, %cst, %cst_1, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_1, %cst_1, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst, %cst_1, %cst_1, %cst_1, %cst_4, %cst, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst, %cst, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst_1, %cst, %cst, %cst_4, %cst, %cst_1, %cst_1, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst, %cst_1, %cst_1, %cst, %cst_4, %cst_1, %cst, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst, %cst, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst, %cst, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_4, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst_1, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<10x11x10xf16>
    %110 = tensor.empty() : tensor<10xi64>
    %mapped_29 = linalg.map ins(%8, %8 : tensor<10xi64>, tensor<10xi64>) outs(%110 : tensor<10xi64>)
      (%in: i64, %in_55: i64) {
        %258 = tensor.empty() : tensor<6x6xf32>
        %259 = linalg.matmul ins(%0, %0 : tensor<6x6xf32>, tensor<6x6xf32>) outs(%258 : tensor<6x6xf32>) -> tensor<6x6xf32>
        memref.alloca_scope  {
          %285 = index.maxu %c15, %c13
          %286 = vector.broadcast %cst_4 : f16 to vector<10x11x10xf16>
          %287 = arith.shrsi %in_55, %in : i64
          %288 = arith.cmpi slt, %c512582377_i32, %c1924632301_i32 : i32
          %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %55, %20, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
          %290 = vector.create_mask %c15, %57, %c5 : vector<10x11x10xi1>
          %291 = index.floordivs %c1, %c10
          %292 = vector.insertelement %c18725_i16, %108[%57 : index] : vector<11xi16>
          %splat_60 = tensor.splat %c512582377_i32 : tensor<10x1xi32>
          %293 = index.castu %43 : i16 to index
          %294 = math.cttz %6 : tensor<6x6xi1>
          %295 = math.tan %cst_4 : f16
          %296 = math.expm1 %2 : tensor<10xf32>
          %297 = arith.muli %in, %in_55 : i64
          %298 = arith.cmpi ult, %43, %c-24114_i16 : i16
          %299 = arith.ori %in, %c1565606134_i64 : i64
          %300 = arith.andi %c333937332_i32, %c1924632301_i32 : i32
          %301 = vector.broadcast %cst_3 : f32 to vector<11x10xf32>
          %302 = vector.insert %301, %103 [4] : vector<11x10xf32> into vector<10x11x10xf32>
          %303 = index.add %c4, %68
          %304 = math.round %cst_5 : f32
          %305 = index.add %c7, %c6
          %306 = bufferization.to_tensor %alloc_19 : memref<10x1xf16>
          vector.print %79 : vector<10x1xf16>
          %307 = index.castu %43 : i16 to index
          %collapsed_61 = tensor.collapse_shape %1 [[0, 1]] : tensor<10x1xi16> into tensor<10xi16>
          %308 = arith.shli %in_55, %c1565606134_i64 : i64
          vector.print %73 : vector<4xi16>
          %309 = tensor.empty() : tensor<10x11x10xi1>
          %310 = vector.broadcast %43 : i16 to vector<11x11xi16>
          %311 = vector.outerproduct %84, %107, %310 {kind = #vector.kind<or>} : vector<11xi16>, vector<11xi16>
          %312 = math.atan2 %38, %306 : tensor<10x1xf16>
          %313 = vector.broadcast %c-3307_i16 : i16 to vector<4x4xi16>
          %314 = vector.outerproduct %73, %73, %313 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
          %315 = math.round %7 : tensor<10x1xf32>
        }
        %260 = arith.floordivsi %in_55, %c1565606134_i64 : i64
        %cast = tensor.cast %110 : tensor<10xi64> to tensor<?xi64>
        %alloc_56 = memref.alloc() : memref<10x11x10xi1>
        %261 = vector.broadcast %cst : f16 to vector<1xf16>
        %262 = vector.insert %261, %79 [8] : vector<1xf16> into vector<10x1xf16>
        %263 = index.add %c11, %c0
        %264 = math.log2 %reduced : tensor<f16>
        %265 = index.castu %c4 : index to i32
        %266 = math.fma %3, %11, %11 : tensor<6x6xf16>
        %267 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 128) * 32 + d0)>(%c9, %68)
        %268 = math.ceil %cst_6 : f32
        %269 = index.add %c12, %c4
        %270 = affine.max affine_map<(d0, d1) -> (d0 - d1, ((d1 - 16) ceildiv 16) ceildiv 128, -d1)>(%c13, %50)
        %271 = math.fpowi %0, %10 : tensor<6x6xf32>, tensor<6x6xi32>
        %272 = bufferization.to_memref %0 : memref<6x6xf32>
        %273 = arith.divui %c18725_i16, %c-3307_i16 : i16
        %274 = arith.cmpi ule, %c-3307_i16, %43 : i16
        %275 = affine.load %alloc_14[%c2, %c10, %c4] : memref<10x11x10xf16>
        %276 = index.divu %59, %67
        %277 = math.round %9 : tensor<6x6xf32>
        affine.for %arg0 = 0 to 27 {
        }
        %278 = math.fma %15, %15, %2 : tensor<10xf32>
        %alloc_57 = memref.alloc() : memref<10xi32>
        %alloc_58 = memref.alloc() : memref<10x10xi32>
        %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %alloc_58, %alloc_57 : memref<10xi32>, memref<10x10xi32>, memref<10xi32>) outs(%4 : tensor<10x11x10xi32>) {
        ^bb0(%in_60: i32, %in_61: i32, %in_62: i32, %out: i32):
          %285 = bufferization.clone %alloc_20 : memref<10x11x10xf32> to memref<10x11x10xf32>
          %286 = math.atan2 %9, %258 : tensor<6x6xf32>
          %287 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
          %288 = vector.outerproduct %55, %107, %287 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
          %289 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
          %290 = math.sqrt %cst_6 : f32
          %291 = vector.flat_transpose %108 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
          %292 = arith.remf %cst_24, %cst_24 : f32
          %293 = index.add %28, %67
          %294 = math.ipowi %110, %8 : tensor<10xi64>
          %295 = math.fma %7, %7, %7 : tensor<10x1xf32>
          vector.print %55 : vector<11xi16>
          vector.print %103 : vector<10x11x10xf32>
          %296 = vector.reduction <add>, %108 : vector<11xi16> into i16
          %297 = vector.broadcast %cst_5 : f32 to vector<10x11x10xf32>
          %298 = index.mul %267, %267
          %299 = vector.create_mask %c10, %82 : vector<6x6xi1>
          %300 = math.round %9 : tensor<6x6xf32>
          %301 = arith.ori %in_61, %in_60 : i32
          %302 = index.ceildivs %59, %82
          %303 = math.round %15 : tensor<10xf32>
          %304 = arith.shli %out, %c333937332_i32 : i32
          %305 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
          %306 = affine.load %alloc_23[%c5] : memref<10xi1>
          %307 = math.absf %cst_7 : f32
          %308 = arith.subi %306, %306 : i1
          %309 = math.exp2 %64 : tensor<6x6xf32>
          %310 = math.absi %43 : i16
          %311 = math.powf %275, %cst_4 : f16
          %312 = math.ctlz %c18725_i16 : i16
          %313 = math.powf %from_elements, %from_elements : tensor<10x11x10xf16>
          %314 = arith.muli %c1924632301_i32, %c1924632301_i32 : i32
          %315 = arith.addf %275, %275 : f16
          linalg.yield %c333937332_i32 : i32
        } -> tensor<10x11x10xi32>
        %280 = affine.load %alloc_12[%c10, %c7] : memref<6x6xf16>
        scf.index_switch %c15 
        case 1 {
          %285 = index.floordivs %267, %c12
          %286 = vector.broadcast %cst_5 : f32 to vector<10xf32>
          %287 = vector.insert %286, %104 [9, 2] : vector<10xf32> into vector<10x11x10xf32>
          %288 = index.castu %c6 : index to i32
          %cst_60 = arith.constant 1.000000e+00 : f16
          %cst_61 = arith.constant 0.000000e+00 : f16
          %289 = vector.transfer_read %alloc_14[%c0, %83, %276], %cst_61 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<10x11x10xf16>, vector<10x1xf16>
          %290 = math.exp2 %22 : tensor<f32>
          %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %261, %261, %280 : vector<1xf16>, vector<1xf16> into f16
          %292 = math.ceil %3 : tensor<6x6xf16>
          %293 = arith.divf %cst_6, %cst_3 : f32
          %294 = vector.broadcast %43 : i16 to vector<11x11xi16>
          %295 = vector.outerproduct %55, %55, %294 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
          %296 = bufferization.clone %alloc_15 : memref<6x6xi32> to memref<6x6xi32>
          %splat_62 = tensor.splat %275 : tensor<10x1xf16>
          %297 = arith.cmpi ult, %c-3307_i16, %c-24114_i16 : i16
          %298 = arith.remf %cst_3, %cst_2 : f32
          %299 = bufferization.clone %alloc_21 : memref<10x11x10xf16> to memref<10x11x10xf16>
          %300 = arith.ceildivsi %c18725_i16, %43 : i16
          %301 = math.atan %21 : tensor<10xf32>
          scf.yield
        }
        case 2 {
          %285 = bufferization.to_memref %4 : memref<10x11x10xi32>
          %286 = index.sizeof
          %c1319357866_i32 = arith.constant 1319357866 : i32
          %287 = arith.floordivsi %in_55, %in_55 : i64
          %288 = math.exp %from_elements : tensor<10x11x10xf16>
          %289 = math.fma %275, %280, %cst_1 : f16
          %290 = math.cttz %c512582377_i32 : i32
          %291 = arith.subi %c18725_i16, %c18725_i16 : i16
          %292 = vector.broadcast %cst_5 : f32 to vector<11xf32>
          %293 = vector.transfer_write %292, %0[%50, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf32>, tensor<6x6xf32>
          %294 = math.sqrt %17 : tensor<6x6xf32>
          %295 = vector.broadcast %280 : f16 to vector<1x1xf16>
          %296 = vector.outerproduct %261, %261, %295 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
          %extracted_60 = tensor.extract %21[%c5] : tensor<10xf32>
          %297 = math.fma %reduced, %reduced, %reduced : tensor<f16>
          %298 = arith.subi %c-24114_i16, %43 : i16
          %299 = math.atan2 %21, %15 : tensor<10xf32>
          %300 = math.rsqrt %cst_7 : f32
          scf.yield
        }
        case 3 {
          %285 = vector.multi_reduction <minf>, %98, %cst_5 [0, 1, 2] : vector<10x11x10xf32> to f32
          %286 = index.maxs %269, %c9
          %287 = math.rsqrt %3 : tensor<6x6xf16>
          memref.assume_alignment %alloc_11, 2 : memref<10xf32>
          %288 = vector.bitcast %73 : vector<4xi16> to vector<4xi16>
          %289 = arith.cmpi uge, %c-3307_i16, %43 : i16
          %290 = math.round %7 : tensor<10x1xf32>
          memref.assume_alignment %alloc_22, 16 : memref<6x6xf32>
          %291 = math.absf %cst_24 : f32
          vector.print %55 : vector<11xi16>
          %292 = index.maxs %57, %82
          %293 = math.ipowi %in_55, %in_55 : i64
          %294 = math.fma %11, %11, %11 : tensor<6x6xf16>
          %295 = memref.load %94[%c6] : memref<10xi64>
          %296 = arith.remui %c-24114_i16, %c18725_i16 : i16
          %297 = arith.minsi %c333937332_i32, %c1924632301_i32 : i32
          scf.yield
        }
        default {
          %285 = math.round %22 : tensor<f32>
          %286 = index.ceildivs %c0, %c4
          %287 = arith.andi %c1924632301_i32, %c512582377_i32 : i32
          %288 = arith.ceildivsi %c18725_i16, %c-24114_i16 : i16
          %289 = arith.floordivsi %c333937332_i32, %c512582377_i32 : i32
          %290 = vector.extract_strided_slice %79 {offsets = [5], sizes = [4], strides = [1]} : vector<10x1xf16> to vector<4x1xf16>
          %splat_60 = tensor.splat %cst : tensor<10xf16>
          %291 = arith.maxui %in, %in_55 : i64
          %292 = arith.shrui %c-3307_i16, %c-24114_i16 : i16
          %293 = affine.load %alloc_17[%c11, %c9] : memref<10x1xi32>
          %294 = arith.addi %43, %43 : i16
          %295 = index.maxs %27, %50
          %296 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
          %297 = vector.outerproduct %84, %108, %296 {kind = #vector.kind<maxui>} : vector<11xi16>, vector<11xi16>
          %298 = math.cttz %8 : tensor<10xi64>
          %299 = arith.minsi %in_55, %in_55 : i64
          %300 = arith.maxui %c-3307_i16, %c-3307_i16 : i16
        }
        %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%14 : tensor<10x11x10xi32>) {
        ^bb0(%out: i32):
          %285 = math.ceil %7 : tensor<10x1xf32>
          %286 = math.fma %22, %22, %23 : tensor<f32>
          %rank_60 = tensor.rank %9 : tensor<6x6xf32>
          %alloc_61 = memref.alloc() : memref<10x1xi1>
          %287 = vector.extract %55[1] : vector<11xi16>
          %cst_62 = arith.constant 1.000000e+00 : f16
          %cst_63 = arith.constant 0.000000e+00 : f16
          %288 = vector.transfer_read %38[%65, %c15], %cst_63 : tensor<10x1xf16>, vector<f16>
          %false = arith.constant false
          %289 = vector.transfer_read %12[%65], %false : tensor<10xi1>, vector<i1>
          %290 = vector.shuffle %73, %73 [2, 3, 5] : vector<4xi16>, vector<4xi16>
          %291 = math.log %7 : tensor<10x1xf32>
          %292 = arith.mulf %cst_3, %cst_0 : f32
          %293 = math.fpowi %16, %10 : tensor<6x6xf32>, tensor<6x6xi32>
          %294 = bufferization.clone %alloc_18 : memref<10x1xf16> to memref<10x1xf16>
          %295 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
          %296 = affine.load %32[%c6, %c6] : memref<6x6xi32>
          %297 = index.add %c4, %39
          %298 = bufferization.clone %alloc_9 : memref<6x6xf32> to memref<6x6xf32>
          %299 = arith.xori %43, %c18725_i16 : i16
          %300 = math.expm1 %64 : tensor<6x6xf32>
          %301 = bufferization.clone %alloc_18 : memref<10x1xf16> to memref<10x1xf16>
          %302 = arith.xori %c512582377_i32, %out : i32
          %303 = arith.maxf %cst, %275 : f16
          vector.print %103 : vector<10x11x10xf32>
          %true_64 = index.bool.constant true
          %304 = vector.create_mask %c14 : vector<10xi1>
          %305 = math.cttz %in_55 : i64
          %306 = math.fpowi %38, %5 : tensor<10x1xf16>, tensor<10x1xi32>
          %307 = index.divs %c7, %39
          %308 = arith.shrsi %c1924632301_i32, %out : i32
          %309 = math.fma %0, %0, %64 : tensor<6x6xf32>
          %310 = math.round %0 : tensor<6x6xf32>
          %c1_i64_65 = arith.constant 1 : i64
          %311 = vector.transfer_read %8[%27], %c1_i64_65 : tensor<10xi64>, vector<i64>
          %312 = arith.shrui %false, %false : i1
          linalg.yield %c333937332_i32 : i32
        } -> tensor<10x11x10xi32>
        %282 = vector.flat_transpose %261 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %true_59 = index.bool.constant true
        %c2028828655_i64 = arith.constant 2028828655 : i64
        %283 = math.copysign %3, %11 : tensor<6x6xf16>
        %284 = scf.index_switch %c9 -> index 
        case 1 {
          %285 = arith.remf %cst_3, %cst_2 : f32
          %286 = vector.insert %c-24114_i16, %73 [1] : i16 into vector<4xi16>
          %287 = math.powf %22, %22 : tensor<f32>
          %expanded_60 = tensor.expand_shape %generated [[0], [1, 2]] : tensor<?x1xf32> into tensor<?x1x1xf32>
          %288 = index.divu %263, %66
          %289 = bufferization.to_tensor %alloc_10 : memref<10x11x10xi32>
          %290 = math.absi %c333937332_i32 : i32
          %291 = math.exp2 %cst_2 : f32
          %292 = math.expm1 %15 : tensor<10xf32>
          %293 = arith.remf %cst_0, %cst_24 : f32
          %extracted_61 = tensor.extract %10[%c2, %c4] : tensor<6x6xi32>
          %294 = memref.atomic_rmw ori %c512582377_i32, %alloc_17[%c2, %c0] : (i32, memref<10x1xi32>) -> i32
          %295 = index.divs %c10, %83
          %296 = arith.shli %c-3307_i16, %43 : i16
          memref.store %cst_1, %alloc_18[%c9, %c0] : memref<10x1xf16>
          %297 = math.exp %cst : f16
          scf.yield %c14 : index
        }
        default {
          %285 = math.ctpop %12 : tensor<10xi1>
          %286 = arith.addf %cst, %cst_4 : f16
          %287 = arith.divf %cst, %275 : f16
          %288 = index.divu %c7, %c1
          vector.print %104 : vector<10x11x10xf32>
          memref.tensor_store %0, %alloc_9 : memref<6x6xf32>
          %289 = vector.broadcast %cst_6 : f32 to vector<10xf32>
          %290 = vector.fma %289, %289, %289 : vector<10xf32>
          %extracted_60 = tensor.extract %23[] : tensor<f32>
          %291 = math.fpowi %cst_7, %c333937332_i32 : f32, i32
          %292 = math.ctlz %1 : tensor<10x1xi16>
          %293 = vector.extract_strided_slice %73 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi16> to vector<1xi16>
          memref.tensor_store %13, %alloc_13 : memref<10x1xi16>
          %294 = vector.broadcast %cst_0 : f32 to vector<10x11xf32>
          %dest_61, %accumulated_value_62 = vector.scan <mul>, %98, %294 {inclusive = false, reduction_dim = 2 : i64} : vector<10x11x10xf32>, vector<10x11xf32>
          %295 = arith.addf %cst_1, %cst_4 : f16
          %296 = index.ceildivs %288, %276
          %297 = math.ctpop %8 : tensor<10xi64>
          scf.yield %67 : index
        }
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %extracted = tensor.extract %11[%c5, %c4] : tensor<6x6xf16>
    %111 = scf.while (%arg0 = %alloc_12) : (memref<6x6xf16>) -> memref<6x6xf16> {
      %rank_55 = tensor.rank %from_elements : tensor<10x11x10xf16>
      %cst_56 = arith.constant 1.000000e+00 : f32
      %cst_57 = arith.constant 0.000000e+00 : f32
      %258 = vector.transfer_read %16[%50, %67], %cst_57 : tensor<6x6xf32>, vector<f32>
      %259 = math.powf %cst_4, %cst_1 : f16
      %260 = arith.minf %cst_4, %cst : f16
      %261 = index.maxs %67, %c8
      %262 = vector.broadcast %c333937332_i32 : i32 to vector<6x6xi32>
      %c425504341_i32 = arith.constant 425504341 : i32
      %extracted_58 = tensor.extract %from_elements[%c2, %c3, %c7] : tensor<10x11x10xf16>
      %true_59 = arith.constant true
      scf.condition(%true_59) %arg0 : memref<6x6xf16>
    } do {
    ^bb0(%arg0: memref<6x6xf16>):
      %258 = arith.maxsi %43, %c-3307_i16 : i16
      %259 = memref.atomic_rmw minu %c512582377_i32, %alloc_15[%c5, %c3] : (i32, memref<6x6xi32>) -> i32
      %260 = memref.load %alloc_22[%c0, %c4] : memref<6x6xf32>
      %261 = math.expm1 %51 : tensor<10x11x10xf16>
      %262 = math.tanh %7 : tensor<10x1xf32>
      %263 = math.exp %9 : tensor<6x6xf32>
      %264 = index.maxu %68, %c3
      %265 = arith.shrui %c-24114_i16, %c-3307_i16 : i16
      %266 = index.castu %c512582377_i32 : i32 to index
      %267 = index.floordivs %c8, %c11
      %alloca_55 = memref.alloca() : memref<10x11x10xi64>
      %268 = arith.remf %extracted, %cst_4 : f16
      %269 = arith.remf %cst_0, %cst_2 : f32
      %270 = arith.shli %c512582377_i32, %c333937332_i32 : i32
      %271 = math.absf %cst_2 : f32
      %splat_56 = tensor.splat %cst_4 : tensor<6x6xf16>
      scf.yield %alloc_12 : memref<6x6xf16>
    }
    %112 = vector.create_mask %42, %82 : vector<10x1xi1>
    %113 = arith.floordivsi %c-24114_i16, %c-3307_i16 : i16
    %114 = vector.broadcast %cst_5 : f32 to vector<10x11x10xf32>
    %115 = vector.flat_transpose %73 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %116 = arith.maxui %c-24114_i16, %c-24114_i16 : i16
    %117 = index.castu %c12 : index to i32
    %118 = vector.create_mask %28 : vector<10xi1>
    %119 = arith.shrui %c-3307_i16, %c-3307_i16 : i16
    %120 = arith.maxui %43, %c-3307_i16 : i16
    %121 = scf.while (%arg0 = %cst_2) : (f32) -> f32 {
      %258 = scf.while (%arg1 = %extracted) : (f16) -> f16 {
        %267 = vector.extract_strided_slice %115 {offsets = [0], sizes = [3], strides = [1]} : vector<4xi16> to vector<3xi16>
        %268 = vector.reduction <or>, %55 : vector<11xi16> into i16
        %269 = memref.load %alloc_16[%c4, %c0] : memref<10x1xf16>
        %270 = tensor.empty(%c13, %68) : tensor<10x?x?xi64>
        %271 = index.maxu %82, %c11
        %272 = math.powf %16, %64 : tensor<6x6xf32>
        %273 = index.maxs %c4, %c11
        %274 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 128)>(%c9, %57, %c5, %c13)
        %true_55 = arith.constant true
        scf.condition(%true_55) %extracted : f16
      } do {
      ^bb0(%arg1: f16):
        %267 = arith.floordivsi %c-24114_i16, %c-24114_i16 : i16
        %268 = index.floordivs %c2, %c14
        %269 = affine.max affine_map<(d0, d1, d2) -> (d1 - 16)>(%65, %c7, %c9)
        %270 = affine.apply affine_map<(d0) -> ((d0 ceildiv 16) ceildiv 2 + d0)>(%269)
        %271 = arith.divf %cst_0, %cst_5 : f32
        %272 = math.ipowi %c-3307_i16, %c-24114_i16 : i16
        %expanded_55 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<6x6xi1> into tensor<6x6x1xi1>
        %273 = index.floordivs %c8, %67
        %274 = index.floordivs %c10, %28
        %extracted_56 = tensor.extract %11[%c2, %c0] : tensor<6x6xf16>
        %275 = arith.shrui %c333937332_i32, %c333937332_i32 : i32
        %276 = math.round %cst_3 : f32
        %277 = vector.broadcast %c18725_i16 : i16 to vector<6x6xi16>
        %278 = math.sqrt %18 : tensor<f16>
        %inserted_57 = tensor.insert %cst_3 into %64[%c4, %c1] : tensor<6x6xf32>
        %279 = math.roundeven %51 : tensor<10x11x10xf16>
        scf.yield %cst : f16
      }
      %259 = arith.xori %c1565606134_i64, %c1565606134_i64 : i64
      %260 = memref.alloca_scope  -> (memref<10x11x10xi16>) {
        %267 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
        %cst_55 = arith.constant 1.000000e+00 : f32
        %cst_56 = arith.constant 0.000000e+00 : f32
        %268 = vector.transfer_read %15[%c3], %cst_56 : tensor<10xf32>, vector<f32>
        %269 = affine.apply affine_map<(d0) -> ((d0 + 2) * -32)>(%c6)
        %270 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %271 = vector.fma %270, %270, %270 : vector<10xf32>
        %272 = vector.broadcast %66 : index to vector<1xindex>
        %false_57 = arith.constant false
        %273 = vector.broadcast %false_57 : i1 to vector<1xi1>
        %274 = vector.broadcast %cst : f16 to vector<1xf16>
        vector.scatter %alloc_21[%c4, %c10, %c7] [%272], %273, %274 : memref<10x11x10xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %275 = vector.broadcast %c512582377_i32 : i32 to vector<10x1xi32>
        %276 = vector.gather %alloc_23[%c4] [%275], %112, %112 : memref<10xi1>, vector<10x1xi32>, vector<10x1xi1>, vector<10x1xi1> into vector<10x1xi1>
        %277 = memref.atomic_rmw assign %43, %alloc[%c4, %c3] : (i16, memref<6x6xi16>) -> i16
        %278 = vector.reduction <minf>, %271 : vector<10xf32> into f32
        %279 = math.rsqrt %7 : tensor<10x1xf32>
        %280 = bufferization.clone %alloc_21 : memref<10x11x10xf16> to memref<10x11x10xf16>
        %alloc_58 = memref.alloc() : memref<10x11x10xi1>
        %281 = vector.broadcast %c333937332_i32 : i32 to vector<10xi32>
        %282 = vector.gather %alloc_58[%82, %c4, %c5] [%281], %118, %118 : memref<10x11x10xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %283 = math.exp %2 : tensor<10xf32>
        %284 = math.ctlz %1 : tensor<10x1xi16>
        %285 = arith.shli %c333937332_i32, %c1924632301_i32 : i32
        %286 = vector.create_mask %89, %269 : vector<6x6xi1>
        %287 = math.absi %c-3307_i16 : i16
        %288 = arith.addf %extracted, %cst_4 : f16
        %289 = math.atan %0 : tensor<6x6xf32>
        %290 = vector.reduction <minsi>, %84 : vector<11xi16> into i16
        %291 = math.powf %22, %22 : tensor<f32>
        %292 = affine.load %alloc_20[%c5, %c9, %c7] : memref<10x11x10xf32>
        %293 = math.atan %cst_2 : f32
        %alloca_59 = memref.alloca() : memref<6x6xi1>
        affine.store %extracted, %alloc_21[%c0, %c2, %c7] : memref<10x11x10xf16>
        %294 = math.copysign %16, %9 : tensor<6x6xf32>
        %295 = math.copysign %2, %15 : tensor<10xf32>
        %296 = vector.matrix_multiply %55, %84 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
        memref.assume_alignment %alloc_18, 16 : memref<10x1xf16>
        %297 = bufferization.to_tensor %alloc_12 : memref<6x6xf16>
        %298 = arith.addf %cst_2, %292 : f32
        %299 = math.atan2 %cst_3, %292 : f32
        %300 = vector.extract %98[0] : vector<10x11x10xf32>
        %alloc_60 = memref.alloc() : memref<10x11x10xi16>
        memref.alloca_scope.return %alloc_60 : memref<10x11x10xi16>
      }
      %261 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
      %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %79, %79, %261 : vector<10x1xf16>, vector<10x1xf16> into vector<1x1xf16>
      %263 = math.tan %2 : tensor<10xf32>
      %264 = bufferization.clone %alloc_16 : memref<10x1xf16> to memref<10x1xf16>
      %265 = math.exp %cst_0 : f32
      %266 = affine.load %260[%c12, %c5, %c2] : memref<10x11x10xi16>
      %false = arith.constant false
      scf.condition(%false) %cst_5 : f32
    } do {
    ^bb0(%arg0: f32):
      %258 = math.fma %9, %0, %16 : tensor<6x6xf32>
      affine.store %c333937332_i32, %alloc_10[%c12, %c11, %c6] : memref<10x11x10xi32>
      %259 = index.divu %c6, %c8
      %260 = index.divu %c7, %67
      %inserted_55 = tensor.insert %cst_2 into %generated[%c0, %c0] : tensor<?x1xf32>
      %261 = arith.remf %cst_24, %cst_3 : f32
      %262 = math.ceil %11 : tensor<6x6xf16>
      %263 = arith.andi %c18725_i16, %43 : i16
      %264 = math.absi %c512582377_i32 : i32
      %265 = math.log10 %extracted : f16
      %cast = tensor.cast %12 : tensor<10xi1> to tensor<?xi1>
      %266 = arith.maxf %cst_1, %cst_1 : f16
      %alloc_56 = memref.alloc() : memref<10x11xf16>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_56 : memref<10x11xf16>) outs(%from_elements : tensor<10x11x10xf16>) {
      ^bb0(%in: f16, %out: f16):
        vector.print %98 : vector<10x11x10xf32>
        %271 = arith.maxf %cst, %cst_4 : f16
        %272 = math.tan %9 : tensor<6x6xf32>
        %rank_57 = tensor.rank %12 : tensor<10xi1>
        %273 = arith.xori %c333937332_i32, %c1924632301_i32 : i32
        %274 = arith.addf %cst_2, %cst_7 : f32
        %cst_58 = arith.constant 1.42942502E+9 : f32
        %275 = arith.remui %c1924632301_i32, %c333937332_i32 : i32
        %276 = tensor.empty() : tensor<10x11x10xi32>
        %277 = bufferization.clone %alloc_12 : memref<6x6xf16> to memref<6x6xf16>
        memref.assume_alignment %alloc_10, 1 : memref<10x11x10xi32>
        %extracted_59 = tensor.extract %14[%c4, %c6, %c0] : tensor<10x11x10xi32>
        %278 = index.sizeof
        %279 = index.mul %57, %c2
        %280 = vector.broadcast %cst_24 : f32 to vector<10x10xf32>
        %dest_60, %accumulated_value_61 = vector.scan <add>, %97, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<10x11x10xf32>, vector<10x10xf32>
        %281 = index.divu %c1, %39
        %282 = vector.broadcast %cst_5 : f32 to vector<11x10x11x10xf32>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %97, %98, %282 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
        %284 = bufferization.clone %alloc_12 : memref<6x6xf16> to memref<6x6xf16>
        %285 = affine.load %alloc_20[%c10, %c13, %c7] : memref<10x11x10xf32>
        %286 = math.ipowi %12, %12 : tensor<10xi1>
        %287 = math.copysign %11, %3 : tensor<6x6xf16>
        %288 = vector.reduction <maxui>, %20 : vector<11xi16> into i16
        %cst_62 = arith.constant 1.000000e+00 : f32
        %289 = vector.transfer_read %21[%281], %cst_62 : tensor<10xf32>, vector<f32>
        %290 = math.exp2 %51 : tensor<10x11x10xf16>
        %291 = math.rsqrt %15 : tensor<10xf32>
        %292 = math.ctpop %extracted_59 : i32
        %293 = memref.realloc %alloc_11 : memref<10xf32> to memref<10xf32>
        %294 = math.ceil %cst_3 : f32
        %295 = arith.maxui %c512582377_i32, %extracted_59 : i32
        %296 = vector.broadcast %c-24114_i16 : i16 to vector<4x4xi16>
        %297 = vector.outerproduct %115, %115, %296 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
        %298 = bufferization.to_memref %0 : memref<6x6xf32>
        affine.store %extracted_59, %alloc_17[%c4, %c3] : memref<10x1xi32>
        linalg.yield %out : f16
      } -> tensor<10x11x10xf16>
      %268 = arith.shrui %c512582377_i32, %c512582377_i32 : i32
      %269 = arith.cmpf ueq, %cst_2, %cst_3 : f32
      %270 = math.tan %3 : tensor<6x6xf16>
      scf.yield %arg0 : f32
    }
    %true_30 = arith.constant true
    memref.store %true_30, %alloc_8[%c5] : memref<10xi1>
    %122 = arith.floordivsi %c18725_i16, %c18725_i16 : i16
    %123 = arith.mulf %cst_7, %cst_7 : f32
    %124 = arith.remui %c18725_i16, %c18725_i16 : i16
    %125 = math.atan2 %0, %16 : tensor<6x6xf32>
    memref.assume_alignment %alloc_10, 2 : memref<10x11x10xi32>
    %126 = math.absf %16 : tensor<6x6xf32>
    %127 = index.floordivs %c0, %c10
    %extracted_31 = tensor.extract %5[%c7, %c0] : tensor<10x1xi32>
    %128 = arith.addi %c333937332_i32, %c333937332_i32 : i32
    memref.store %cst_7, %alloc_11[%c9] : memref<10xf32>
    %129 = math.absi %8 : tensor<10xi64>
    %alloc_32 = memref.alloc() : memref<11x10xi32>
    %alloc_33 = memref.alloc() : memref<10x11xi32>
    %130 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_32, %alloc_33, %alloc_33 : memref<11x10xi32>, memref<10x11xi32>, memref<10x11xi32>) outs(%4 : tensor<10x11x10xi32>) {
    ^bb0(%in: i32, %in_55: i32, %in_56: i32, %out: i32):
      %alloc_57 = memref.alloc() : memref<10x11xf16>
      %alloc_58 = memref.alloc() : memref<10x10xf16>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %alloc_58 : memref<10x11xf16>, memref<10x10xf16>) outs(%51 : tensor<10x11x10xf16>) {
      ^bb0(%in_62: f16, %in_63: f16, %out_64: f16):
        vector.print %112 : vector<10x1xi1>
        %284 = arith.addi %in, %out : i32
        %285 = math.tan %38 : tensor<10x1xf16>
        %286 = arith.remsi %c18725_i16, %c18725_i16 : i16
        %287 = math.round %3 : tensor<6x6xf16>
        %extracted_65 = tensor.extract %15[%c6] : tensor<10xf32>
        %288 = index.floordivs %127, %c5
        %289 = arith.floordivsi %c1924632301_i32, %c333937332_i32 : i32
        %inserted_66 = tensor.insert %true_30 into %12[%c7] : tensor<10xi1>
        %290 = vector.insert %true_30, %118 [5] : i1 into vector<10xi1>
        %291 = math.roundeven %17 : tensor<6x6xf32>
        %292 = arith.divui %c512582377_i32, %out : i32
        %293 = math.ipowi %in_56, %c512582377_i32 : i32
        %294 = memref.load %alloc_9[%c5, %c3] : memref<6x6xf32>
        %295 = vector.broadcast %43 : i16 to vector<10xi16>
        %296 = vector.create_mask %c12, %c12, %c8 : vector<10x11x10xi1>
        %297 = arith.ceildivsi %in_55, %out : i32
        %298 = affine.load %alloc[%c14, %c4] : memref<6x6xi16>
        %299 = vector.create_mask %50, %42 : vector<10x1xi1>
        %300 = math.log2 %cst_24 : f32
        %301 = arith.shrui %extracted_31, %extracted_31 : i32
        %expanded_67 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<6x6xf16> into tensor<6x6x1xf16>
        %extracted_68 = tensor.extract %13[%c2, %c0] : tensor<10x1xi16>
        %302 = arith.shli %out, %c333937332_i32 : i32
        %303 = math.ipowi %14, %4 : tensor<10x11x10xi32>
        %304 = math.ctpop %8 : tensor<10xi64>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %305 = vector.transfer_read %14[%c11, %c9, %c14], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<10x11x10xi32>, vector<11xi32>
        %306 = math.round %11 : tensor<6x6xf16>
        %307 = arith.cmpi ule, %in, %extracted_31 : i32
        %308 = math.exp %cst_5 : f32
        %309 = arith.floordivsi %c1924632301_i32, %c1_i32 : i32
        %310 = arith.shli %c1_i32, %in_56 : i32
        linalg.yield %cst : f16
      } -> tensor<10x11x10xf16>
      %259 = math.fma %38, %38, %38 : tensor<10x1xf16>
      %260 = math.powf %cst_7, %cst_24 : f32
      %261 = affine.if affine_set<(d0, d1, d2, d3) : (d3 mod 32 + d1 + 32 == 0, -(d2 ceildiv 16) - 1 == 0)>(%c11, %c10, %c14, %c2) -> memref<6x6xi64> {
        %284 = arith.shrui %c1924632301_i32, %in : i32
        %285 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%28, %82, %c5)
        %286 = index.divs %c3, %65
        %287 = vector.insert %c-3307_i16, %73 [2] : i16 into vector<4xi16>
        %288 = bufferization.to_tensor %alloc_10 : memref<10x11x10xi32>
        %289 = math.ctlz %13 : tensor<10x1xi16>
        %290 = index.floordivs %39, %42
        %291 = index.castu %c11 : index to i32
        %alloc_62 = memref.alloc() : memref<6x6xi64>
        affine.yield %alloc_62 : memref<6x6xi64>
      } else {
        %rank_62 = tensor.rank %1 : tensor<10x1xi16>
        %284 = math.rsqrt %reduced : tensor<f16>
        %expanded_63 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<10x11x10xi32> into tensor<10x11x10x1xi32>
        %285 = math.absf %cst_0 : f32
        memref.tensor_store %0, %alloc_22 : memref<6x6xf32>
        %286 = arith.divf %cst_1, %cst_4 : f16
        %287 = index.divu %rank_62, %39
        vector.print %118 : vector<10xi1>
        %alloc_64 = memref.alloc() : memref<6x6xi64>
        affine.yield %alloc_64 : memref<6x6xi64>
      }
      %262 = arith.ori %43, %c-3307_i16 : i16
      %263 = vector.extract %118[8] : vector<10xi1>
      %extracted_59 = tensor.extract %1[%c5, %c0] : tensor<10x1xi16>
      %collapsed_60 = tensor.collapse_shape %0 [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
      %264 = math.ipowi %8, %110 : tensor<10xi64>
      %265 = math.fpowi %0, %10 : tensor<6x6xf32>, tensor<6x6xi32>
      %266 = bufferization.clone %alloc_20 : memref<10x11x10xf32> to memref<10x11x10xf32>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%from_elements : tensor<10x11x10xf16>) {
      ^bb0(%out_62: f16):
        %284 = arith.remui %c512582377_i32, %c333937332_i32 : i32
        %285 = vector.insertelement %c-3307_i16, %84[%c0 : index] : vector<11xi16>
        %286 = math.atan2 %collapsed_60, %collapsed_60 : tensor<36xf32>
        %287 = tensor.empty() : tensor<10x11x10xi64>
        %288 = vector.broadcast %c1565606134_i64 : i64 to vector<6x6xi64>
        %289 = vector.broadcast %true_30 : i1 to vector<6x6xi1>
        %290 = vector.broadcast %c512582377_i32 : i32 to vector<6x6xi32>
        %291 = vector.gather %287[%82, %c7, %c8] [%290], %289, %288 : tensor<10x11x10xi64>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi64> into vector<6x6xi64>
        %292 = vector.broadcast %cst_6 : f32 to vector<10xf32>
        %293 = vector.fma %292, %292, %292 : vector<10xf32>
        memref.copy %alloc_15, %32 : memref<6x6xi32> to memref<6x6xi32>
        %294 = index.add %c2, %c13
        %295 = arith.xori %c18725_i16, %c18725_i16 : i16
        %cst_63 = arith.constant 1.000000e+00 : f32
        %cst_64 = arith.constant 0.000000e+00 : f32
        %296 = vector.transfer_read %9[%50, %c6], %cst_64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<6x6xf32>, vector<1xf32>
        %297 = vector.broadcast %cst_5 : f32 to vector<11x10x11x10xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %98, %114, %297 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
        %299 = math.powf %2, %2 : tensor<10xf32>
        %inserted_65 = tensor.insert %c1565606134_i64 into %8[%c4] : tensor<10xi64>
        %300 = arith.shrsi %in_56, %in : i32
        %301 = arith.remf %cst_2, %cst_6 : f32
        %302 = math.expm1 %cst_7 : f32
        %303 = math.round %15 : tensor<10xf32>
        %304 = math.cttz %c-3307_i16 : i16
        %305 = vector.broadcast %cst_3 : f32 to vector<11x10x11x10xf32>
        %306 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %103, %97, %305 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
        %expanded_66 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<6x6xi1> into tensor<6x6x1xi1>
        %307 = index.divs %c15, %c6
        %308 = math.tan %0 : tensor<6x6xf32>
        %309 = math.roundeven %16 : tensor<6x6xf32>
        %310 = index.divs %c4, %42
        %311 = memref.realloc %alloc_23 : memref<10xi1> to memref<10xi1>
        %312 = vector.shuffle %114, %98 [0, 4, 5, 9, 13, 14, 15, 17] : vector<10x11x10xf32>, vector<10x11x10xf32>
        %313 = arith.minf %cst, %cst_1 : f16
        %314 = arith.floordivsi %c18725_i16, %c18725_i16 : i16
        %315 = math.powf %cst, %cst_1 : f16
        %316 = arith.ceildivsi %c1565606134_i64, %c1565606134_i64 : i64
        %317 = math.sqrt %cst_63 : f32
        %318 = index.castu %out : i32 to index
        %319 = bufferization.clone %alloc_16 : memref<10x1xf16> to memref<10x1xf16>
        linalg.yield %out_62 : f16
      } -> tensor<10x11x10xf16>
      %268 = math.powf %64, %9 : tensor<6x6xf32>
      %269 = vector.extract_strided_slice %103 {offsets = [1], sizes = [4], strides = [1]} : vector<10x11x10xf32> to vector<4x11x10xf32>
      %270 = arith.divf %cst_2, %cst_6 : f32
      %271 = tensor.empty() : tensor<10x11x10xi1>
      %272 = index.divu %c5, %c9
      %273 = arith.divf %cst_7, %cst_6 : f32
      %274 = affine.min affine_map<(d0) -> (d0 ceildiv 2, (d0 * 2 - d0 ceildiv 2) floordiv 8, d0 * 2)>(%59)
      %275 = arith.ceildivsi %c18725_i16, %43 : i16
      %276 = index.divs %c13, %28
      affine.store %c1924632301_i32, %alloc_17[%c12, %c13] : memref<10x1xi32>
      %generated_61 = tensor.generate %c9 {
      ^bb0(%arg0: index, %arg1: index):
        %284 = index.sizeof
        %true_62 = index.bool.constant true
        %285 = vector.multi_reduction <xor>, %118, %118 [] : vector<10xi1> to vector<10xi1>
        %286 = math.ctpop %1 : tensor<10x1xi16>
        tensor.yield %true_62 : i1
      } : tensor<?x6xi1>
      %277 = math.absi %1 : tensor<10x1xi16>
      %278 = tensor.empty() : tensor<10xi32>
      %279 = math.fpowi %15, %278 : tensor<10xf32>, tensor<10xi32>
      memref.copy %alloc_19, %alloc_16 : memref<10x1xf16> to memref<10x1xf16>
      %280 = memref.realloc %alloc_23 : memref<10xi1> to memref<6xi1>
      %281 = arith.maxui %c1924632301_i32, %c333937332_i32 : i32
      affine.store %extracted_31, %alloc_17[%c13, %c4] : memref<10x1xi32>
      memref.store %c1565606134_i64, %94[%c4] : memref<10xi64>
      %282 = arith.addf %cst_24, %cst_7 : f32
      %283 = scf.execute_region -> index {
        %284 = index.sizeof
        %285 = arith.ceildivsi %extracted_59, %c18725_i16 : i16
        %286 = math.log %2 : tensor<10xf32>
        %287 = arith.floordivsi %c-3307_i16, %c18725_i16 : i16
        %288 = math.ipowi %8, %110 : tensor<10xi64>
        %289 = math.sqrt %cst_0 : f32
        %290 = math.rsqrt %17 : tensor<6x6xf32>
        %extracted_62 = tensor.extract %278[%c6] : tensor<10xi32>
        %splat_63 = tensor.splat %cst_1 : tensor<10xf16>
        %291 = math.fma %0, %16, %17 : tensor<6x6xf32>
        %292 = arith.maxf %extracted, %cst_4 : f16
        %293 = math.fma %9, %9, %0 : tensor<6x6xf32>
        %294 = math.fma %64, %17, %17 : tensor<6x6xf32>
        %295 = index.floordivs %c0, %50
        %296 = math.exp %16 : tensor<6x6xf32>
        %297 = index.sizeof
        scf.yield %c13 : index
      }
      linalg.yield %c512582377_i32 : i32
    } -> tensor<10x11x10xi32>
    %131 = arith.shrui %c1924632301_i32, %c333937332_i32 : i32
    %132 = vector.broadcast %cst_6 : f32 to vector<10x10xf32>
    %dest, %accumulated_value = vector.scan <add>, %103, %132 {inclusive = false, reduction_dim = 1 : i64} : vector<10x11x10xf32>, vector<10x10xf32>
    %133 = arith.minui %c-3307_i16, %c-3307_i16 : i16
    %134 = tensor.empty() : tensor<11x10xi32>
    %alloc_34 = memref.alloc() : memref<10x10xi32>
    %135 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%134, %alloc_10, %alloc_34 : tensor<11x10xi32>, memref<10x11x10xi32>, memref<10x10xi32>) outs(%14 : tensor<10x11x10xi32>) {
    ^bb0(%in: i32, %in_55: i32, %in_56: i32, %out: i32):
      %258 = tensor.empty() : tensor<10x11xi32>
      %alloc_57 = memref.alloc() : memref<10xi32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %alloc_57 : tensor<10x11xi32>, memref<10xi32>) outs(%14 : tensor<10x11x10xi32>) {
      ^bb0(%in_61: i32, %in_62: i32, %out_63: i32):
        %287 = vector.insert %c-24114_i16, %115 [1] : i16 into vector<4xi16>
        %alloc_64 = memref.alloc() : memref<10x11x10xi32>
        %288 = math.expm1 %22 : tensor<f32>
        %289 = index.maxu %c12, %c2
        %290 = vector.splat %cst_3 : vector<10x11x10xf32>
        %291 = math.ctpop %6 : tensor<6x6xi1>
        %alloc_65 = memref.alloc() : memref<1x6xf32>
        %292 = tensor.empty() : tensor<10x6xf32>
        %293 = linalg.matmul ins(%7, %alloc_65 : tensor<10x1xf32>, memref<1x6xf32>) outs(%292 : tensor<10x6xf32>) -> tensor<10x6xf32>
        %294 = index.floordivs %27, %c1
        %295 = index.mul %59, %c6
        memref.assume_alignment %alloc_11, 2 : memref<10xf32>
        %296 = memref.load %alloc_11[%c4] : memref<10xf32>
        %297 = arith.andi %c512582377_i32, %c512582377_i32 : i32
        affine.store %in_55, %32[%c6, %c9] : memref<6x6xi32>
        %cst_66 = arith.constant 1.000000e+00 : f32
        %cst_67 = arith.constant 0.000000e+00 : f32
        %298 = vector.transfer_read %9[%59, %127], %cst_67 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x6xf32>, vector<10xf32>
        %299 = affine.apply affine_map<(d0, d1, d2, d3) -> ((((d2 floordiv 8) mod 64 - 2) ceildiv 16) floordiv 32)>(%68, %68, %28, %c7)
        %300 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 128)>(%c13, %66, %289, %289)
        %301 = bufferization.clone %alloc_11 : memref<10xf32> to memref<10xf32>
        %302 = math.fma %7, %7, %7 : tensor<10x1xf32>
        %303 = arith.maxui %true_30, %true_30 : i1
        %304 = math.expm1 %cst_6 : f32
        %305 = vector.extract_strided_slice %55 {offsets = [6], sizes = [5], strides = [1]} : vector<11xi16> to vector<5xi16>
        %306 = vector.extract %115[0] : vector<4xi16>
        %307 = math.fpowi %cst_0, %in_55 : f32, i32
        %308 = math.powf %3, %11 : tensor<6x6xf16>
        %309 = bufferization.to_tensor %alloc_12 : memref<6x6xf16>
        %310 = math.log2 %cst_3 : f32
        %311 = arith.cmpi eq, %in, %out_63 : i32
        %312 = arith.maxui %in_62, %c1924632301_i32 : i32
        %extracted_68 = tensor.extract %38[%c3, %c0] : tensor<10x1xf16>
        affine.store %extracted_68, %alloc_18[%c7, %c10] : memref<10x1xf16>
        %313 = math.sqrt %cst_5 : f32
        %alloca_69 = memref.alloca() : memref<10x11x10xi1>
        linalg.yield %out_63 : i32
      } -> tensor<10x11x10xi32>
      %260 = arith.maxui %c-24114_i16, %c-24114_i16 : i16
      %261 = scf.index_switch %127 -> vector<10x1xi32> 
      case 1 {
        %287 = vector.create_mask %c14 : vector<10xi1>
        %288 = vector.flat_transpose %73 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %289 = math.ctpop %6 : tensor<6x6xi1>
        memref.assume_alignment %alloc_13, 8 : memref<10x1xi16>
        vector.print %103 : vector<10x11x10xf32>
        %290 = arith.shli %c18725_i16, %c-24114_i16 : i16
        %291 = bufferization.to_tensor %alloc_14 : memref<10x11x10xf16>
        %292 = arith.divui %in, %extracted_31 : i32
        %293 = index.maxu %59, %c1
        %294 = math.ctlz %c1924632301_i32 : i32
        %295 = tensor.empty(%89) : tensor<?xi64>
        %296 = math.expm1 %15 : tensor<10xf32>
        %297 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 16) * 2)>(%c9, %c3, %57, %c12)
        %298 = arith.divf %cst_2, %cst_2 : f32
        %299 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
        %300 = vector.outerproduct %108, %108, %299 {kind = #vector.kind<mul>} : vector<11xi16>, vector<11xi16>
        %301 = arith.remf %cst_24, %cst_2 : f32
        %302 = vector.broadcast %in_56 : i32 to vector<10x1xi32>
        scf.yield %302 : vector<10x1xi32>
      }
      case 2 {
        %287 = affine.load %alloc_15[%c0, %c13] : memref<6x6xi32>
        %288 = index.floordivs %c14, %c4
        %289 = arith.xori %43, %c18725_i16 : i16
        %290 = math.atan %0 : tensor<6x6xf32>
        %expanded_61 = tensor.expand_shape %15 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
        %291 = vector.flat_transpose %55 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %292 = index.add %127, %c1
        %293 = arith.floordivsi %c1924632301_i32, %287 : i32
        %294 = vector.splat %cst_5 : vector<6x6xf32>
        %295 = math.fpowi %from_elements, %14 : tensor<10x11x10xf16>, tensor<10x11x10xi32>
        memref.assume_alignment %alloc_9, 1 : memref<6x6xf32>
        %296 = arith.addf %cst_24, %cst_6 : f32
        %297 = arith.shrui %in, %in_55 : i32
        %298 = vector.insert %c18725_i16, %20 [7] : i16 into vector<11xi16>
        %299 = math.tanh %reduced : tensor<f16>
        %300 = index.sizeof
        %301 = vector.broadcast %c1924632301_i32 : i32 to vector<10x1xi32>
        scf.yield %301 : vector<10x1xi32>
      }
      case 3 {
        %287 = arith.remf %cst_24, %cst_2 : f32
        %true_61 = index.bool.constant true
        %288 = math.copysign %38, %38 : tensor<10x1xf16>
        %289 = math.ctpop %43 : i16
        %290 = bufferization.to_tensor %alloc : memref<6x6xi16>
        %from_elements_62 = tensor.from_elements %true_30, %true_30, %true_61, %true_61, %true_30, %true_61, %true_30, %true_61, %true_30, %true_30, %true_61, %true_30, %true_30, %true_61, %true_61, %true_61, %true_61, %true_61, %true_61, %true_61, %true_61, %true_61, %true_30, %true_30, %true_61, %true_61, %true_61, %true_30, %true_61, %true_61, %true_61, %true_61, %true_30, %true_30, %true_61, %true_30 : tensor<6x6xi1>
        affine.store %c1565606134_i64, %94[%c3] : memref<10xi64>
        %291 = index.maxs %c6, %c9
        %292 = arith.remf %cst_24, %cst_0 : f32
        %293 = arith.minf %cst_6, %cst_5 : f32
        %294 = index.castu %68 : index to i32
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %107, %55, %43 : vector<11xi16>, vector<11xi16> into i16
        %296 = vector.broadcast %c-24114_i16 : i16 to vector<6x6xi16>
        %297 = vector.broadcast %true_61 : i1 to vector<6x6xi1>
        %298 = vector.broadcast %in_56 : i32 to vector<6x6xi32>
        %299 = vector.gather %alloc[%c1, %c3] [%298], %297, %296 : memref<6x6xi16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi16> into vector<6x6xi16>
        vector.print %103 : vector<10x11x10xf32>
        %300 = arith.maxui %extracted_31, %extracted_31 : i32
        %301 = vector.broadcast %27 : index to vector<10xindex>
        %302 = vector.broadcast %c-3307_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_13[%c1, %c0] [%301], %118, %302 : memref<10x1xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %303 = vector.broadcast %in_55 : i32 to vector<10x1xi32>
        scf.yield %303 : vector<10x1xi32>
      }
      case 4 {
        %287 = math.atan %reduced : tensor<f16>
        %288 = vector.shuffle %108, %55 [2, 3, 6, 8, 11, 16, 20, 21] : vector<11xi16>, vector<11xi16>
        %289 = arith.remsi %c-3307_i16, %c-3307_i16 : i16
        %290 = index.sizeof
        %291 = vector.flat_transpose %118 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %118, %291, %true_30 : vector<10xi1>, vector<10xi1> into i1
        %293 = vector.insertelement %43, %73[%c7 : index] : vector<4xi16>
        %294 = vector.broadcast %c-3307_i16 : i16 to vector<10x1xi16>
        %295 = vector.broadcast %out : i32 to vector<10x1xi32>
        %296 = vector.gather %1[%c12, %c14] [%295], %112, %294 : tensor<10x1xi16>, vector<10x1xi32>, vector<10x1xi1>, vector<10x1xi16> into vector<10x1xi16>
        %297 = arith.remui %true_30, %true_30 : i1
        %298 = math.powf %11, %3 : tensor<6x6xf16>
        %alloca_61 = memref.alloca() : memref<10x11x10xi16>
        %299 = math.rsqrt %21 : tensor<10xf32>
        %300 = arith.shli %c1565606134_i64, %c1565606134_i64 : i64
        %301 = arith.floordivsi %c-3307_i16, %43 : i16
        %302 = arith.floordivsi %c1565606134_i64, %c1565606134_i64 : i64
        %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %115, %73, %c18725_i16 : vector<4xi16>, vector<4xi16> into i16
        scf.yield %295 : vector<10x1xi32>
      }
      default {
        %expanded_61 = tensor.expand_shape %38 [[0], [1, 2]] : tensor<10x1xf16> into tensor<10x1x1xf16>
        %287 = math.round %7 : tensor<10x1xf32>
        %288 = vector.splat %c6 : vector<10x1xindex>
        %289 = arith.maxui %in, %out : i32
        %290 = math.powf %reduced, %reduced : tensor<f16>
        %291 = arith.remui %c-3307_i16, %c-3307_i16 : i16
        %rank_62 = tensor.rank %16 : tensor<6x6xf32>
        %292 = vector.reduction <maxsi>, %107 : vector<11xi16> into i16
        %293 = vector.insertelement %c-24114_i16, %115[%82 : index] : vector<4xi16>
        %294 = arith.minf %cst_2, %cst_0 : f32
        %295 = index.maxs %c13, %89
        %296 = arith.addi %c1565606134_i64, %c1565606134_i64 : i64
        %297 = affine.load %alloc_17[%c9, %c13] : memref<10x1xi32>
        %rank_63 = tensor.rank %12 : tensor<10xi1>
        %298 = arith.floordivsi %c333937332_i32, %297 : i32
        %299 = math.powf %cst_7, %cst_2 : f32
        %300 = vector.broadcast %in_55 : i32 to vector<10x1xi32>
        scf.yield %300 : vector<10x1xi32>
      }
      %262 = math.ipowi %8, %8 : tensor<10xi64>
      %expanded_58 = tensor.expand_shape %generated [[0], [1, 2]] : tensor<?x1xf32> into tensor<?x1x1xf32>
      %263 = index.mul %c13, %67
      %264 = math.rsqrt %23 : tensor<f32>
      %265 = arith.xori %43, %c-3307_i16 : i16
      %266 = vector.broadcast %true_30 : i1 to vector<10x10xi1>
      %267 = vector.outerproduct %118, %118, %266 {kind = #vector.kind<maxui>} : vector<10xi1>, vector<10xi1>
      %268 = arith.shli %in, %in_56 : i32
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %55, %84, %43 : vector<11xi16>, vector<11xi16> into i16
      %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<10x11x10xi32> into tensor<110x10xi32>
      %270 = memref.alloca_scope  -> (memref<10x11x10xi16>) {
        %287 = affine.load %32[%c6, %c8] : memref<6x6xi32>
        %288 = math.ipowi %c1565606134_i64, %c1565606134_i64 : i64
        %289 = arith.mulf %extracted, %cst_1 : f16
        %290 = arith.ceildivsi %c18725_i16, %c18725_i16 : i16
        %291 = vector.reduction <or>, %115 : vector<4xi16> into i16
        %292 = arith.remui %c1924632301_i32, %in_55 : i32
        %293 = arith.addf %cst, %cst_4 : f16
        %294 = math.fma %reduced, %18, %reduced : tensor<f16>
        %alloca_61 = memref.alloca() : memref<10x1xi32>
        %extracted_62 = tensor.extract %11[%c2, %c5] : tensor<6x6xf16>
        %295 = math.rsqrt %cst_24 : f32
        %296 = math.expm1 %7 : tensor<10x1xf32>
        %297 = index.castu %in : i32 to index
        affine.store %cst_3, %alloc_20[%c13, %c5, %c8] : memref<10x11x10xf32>
        %298 = affine.load %alloc_15[%c13, %c5] : memref<6x6xi32>
        %299 = arith.remf %cst_3, %cst_0 : f32
        %300 = math.cttz %c-24114_i16 : i16
        %false = arith.constant false
        %301 = vector.transfer_read %12[%297], %false : tensor<10xi1>, vector<i1>
        %302 = arith.andi %c1924632301_i32, %287 : i32
        %303 = arith.maxf %cst_24, %cst_6 : f32
        %304 = vector.create_mask %67, %c14 : vector<10x1xi1>
        %305 = index.divu %c9, %57
        %306 = math.tan %cst_5 : f32
        %307 = math.exp %15 : tensor<10xf32>
        %308 = vector.splat %c5 : vector<10x1xindex>
        %309 = memref.atomic_rmw mulf %extracted, %alloc_18[%c7, %c0] : (f16, memref<10x1xf16>) -> f16
        %310 = vector.extract_strided_slice %98 {offsets = [8], sizes = [1], strides = [1]} : vector<10x11x10xf32> to vector<1x11x10xf32>
        %rank_63 = tensor.rank %64 : tensor<6x6xf32>
        %311 = arith.mulf %cst_4, %extracted_62 : f16
        %alloc_64 = memref.alloc() : memref<6x6xf32>
        %312 = math.log2 %cst_2 : f32
        %313 = index.sizeof
        %alloc_65 = memref.alloc() : memref<10x11x10xi16>
        memref.alloca_scope.return %alloc_65 : memref<10x11x10xi16>
      }
      %271 = index.floordivs %66, %39
      %272 = arith.maxui %in_56, %c333937332_i32 : i32
      %273 = arith.andi %c18725_i16, %c-24114_i16 : i16
      %274 = memref.atomic_rmw minu %out, %alloc_17[%c9, %c0] : (i32, memref<10x1xi32>) -> i32
      %275 = arith.floordivsi %c18725_i16, %c18725_i16 : i16
      %276 = vector.insertelement %c18725_i16, %84[%c3 : index] : vector<11xi16>
      %277 = arith.ori %in_56, %in : i32
      %278 = arith.floordivsi %in, %extracted_31 : i32
      %279 = vector.insertelement %43, %55[%c14 : index] : vector<11xi16>
      %splat_60 = tensor.splat %cst : tensor<6x6xf16>
      %280 = vector.insertelement %c-3307_i16, %55[%59 : index] : vector<11xi16>
      %281 = index.maxu %82, %c1
      %282 = memref.atomic_rmw maxf %cst_24, %alloc_11[%c2] : (f32, memref<10xf32>) -> f32
      %283 = arith.ceildivsi %in_55, %c333937332_i32 : i32
      %284 = math.absf %cst_24 : f32
      %285 = bufferization.to_memref %9 : memref<6x6xf32>
      %cast = tensor.cast %13 : tensor<10x1xi16> to tensor<?x?xi16>
      %286 = arith.ceildivsi %out, %extracted_31 : i32
      scf.index_switch %c0 
      case 1 {
        %287 = math.expm1 %cst_4 : f16
        %288 = math.fma %cst_24, %cst_2, %cst_0 : f32
        %289 = affine.load %alloc_11[%c14] : memref<10xf32>
        %290 = arith.ceildivsi %c1924632301_i32, %c1924632301_i32 : i32
        %291 = math.absi %1 : tensor<10x1xi16>
        %292 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
        %293 = vector.outerproduct %55, %55, %292 {kind = #vector.kind<minsi>} : vector<11xi16>, vector<11xi16>
        %294 = vector.splat %127 : vector<10x1xindex>
        %295 = math.tan %cst_2 : f32
        %296 = bufferization.to_tensor %alloc_14 : memref<10x11x10xf16>
        %297 = index.mul %68, %c3
        %298 = memref.atomic_rmw mulf %cst_4, %alloc_21[%c0, %c2, %c5] : (f16, memref<10x11x10xf16>) -> f16
        %299 = math.atan %18 : tensor<f16>
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %107, %20, %c-3307_i16 : vector<11xi16>, vector<11xi16> into i16
        %301 = arith.floordivsi %in, %in_55 : i32
        %302 = math.rsqrt %3 : tensor<6x6xf16>
        %303 = math.exp %cst : f16
        scf.yield
      }
      case 2 {
        %287 = index.divu %c1, %c11
        %288 = index.floordivs %c7, %28
        %289 = bufferization.clone %alloc_8 : memref<10xi1> to memref<10xi1>
        %290 = vector.load %alloc_18[%c9, %c0] : memref<10x1xf16>, vector<10xf16>
        %291 = math.exp2 %15 : tensor<10xf32>
        %292 = math.sqrt %cst_5 : f32
        %293 = math.cttz %4 : tensor<10x11x10xi32>
        %294 = math.round %3 : tensor<6x6xf16>
        %cst_61 = arith.constant 0x4DB98AB9 : f32
        %295 = vector.broadcast %in : i32 to vector<11xi32>
        %296 = vector.transfer_write %295, %5[%c6, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi32>, tensor<10x1xi32>
        %297 = index.maxs %288, %c6
        %298 = math.round %23 : tensor<f32>
        %299 = arith.floordivsi %in_55, %in_55 : i32
        %300 = math.ctpop %8 : tensor<10xi64>
        %301 = bufferization.clone %alloc_10 : memref<10x11x10xi32> to memref<10x11x10xi32>
        %302 = math.log %9 : tensor<6x6xf32>
        scf.yield
      }
      case 3 {
        %287 = math.cttz %110 : tensor<10xi64>
        %288 = arith.shli %out, %c1924632301_i32 : i32
        %289 = arith.shli %c1924632301_i32, %in_55 : i32
        %extracted_61 = tensor.extract %4[%c3, %c3, %c9] : tensor<10x11x10xi32>
        %c-2821_i16 = arith.constant -2821 : i16
        %290 = vector.insert %c18725_i16, %107 [1] : i16 into vector<11xi16>
        memref.store %43, %alloc[%c2, %c4] : memref<6x6xi16>
        %291 = bufferization.clone %32 : memref<6x6xi32> to memref<6x6xi32>
        %292 = arith.shrui %true_30, %true_30 : i1
        %293 = math.ctlz %c333937332_i32 : i32
        %294 = memref.load %alloc_22[%c1, %c5] : memref<6x6xf32>
        %295 = math.round %23 : tensor<f32>
        %296 = index.mul %c0, %65
        %297 = math.atan %7 : tensor<10x1xf32>
        %298 = vector.broadcast %127 : index to vector<11xindex>
        %299 = vector.broadcast %true_30 : i1 to vector<11xi1>
        %300 = vector.broadcast %cst_7 : f32 to vector<11xf32>
        vector.scatter %alloc_11[%c3] [%298], %299, %300 : memref<10xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %301 = math.ipowi %c1924632301_i32, %c333937332_i32 : i32
        scf.yield
      }
      default {
        %287 = index.mul %c15, %83
        %288 = arith.divf %extracted, %cst_4 : f16
        %289 = arith.minsi %c1924632301_i32, %in_56 : i32
        %290 = arith.maxf %cst_3, %cst_7 : f32
        %291 = arith.divf %cst_6, %cst_24 : f32
        %292 = math.expm1 %11 : tensor<6x6xf16>
        %293 = math.log2 %0 : tensor<6x6xf32>
        %294 = vector.extract_strided_slice %20 {offsets = [2], sizes = [3], strides = [1]} : vector<11xi16> to vector<3xi16>
        %295 = arith.cmpi ne, %c1924632301_i32, %in_55 : i32
        %296 = index.maxs %263, %66
        %297 = memref.atomic_rmw addf %cst_24, %alloc_9[%c0, %c1] : (f32, memref<6x6xf32>) -> f32
        %298 = math.tan %15 : tensor<10xf32>
        %299 = vector.bitcast %294 : vector<3xi16> to vector<3xi16>
        affine.store %extracted, %alloc_16[%c3, %c8] : memref<10x1xf16>
        %alloc_61 = memref.alloc() : memref<10x1xi16>
        %300 = math.ctpop %4 : tensor<10x11x10xi32>
      }
      linalg.yield %in : i32
    } -> tensor<10x11x10xi32>
    %136 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
    %137 = vector.outerproduct %84, %108, %136 {kind = #vector.kind<maxsi>} : vector<11xi16>, vector<11xi16>
    %138 = math.ceil %cst_3 : f32
    scf.execute_region {
      %258 = index.castu %c512582377_i32 : i32 to index
      %259 = arith.addf %cst_4, %cst_1 : f16
      %260 = memref.atomic_rmw minf %cst_2, %alloc_9[%c3, %c2] : (f32, memref<6x6xf32>) -> f32
      %261 = vector.broadcast %cst_0 : f32 to vector<10x10xf32>
      %dest_55, %accumulated_value_56 = vector.scan <maxf>, %103, %261 {inclusive = false, reduction_dim = 1 : i64} : vector<10x11x10xf32>, vector<10x10xf32>
      %262 = index.castu %83 : index to i32
      bufferization.dealloc_tensor %11 : tensor<6x6xf16>
      %263 = math.copysign %cst_1, %cst_1 : f16
      %264 = math.ceil %9 : tensor<6x6xf32>
      %265 = vector.broadcast %cst_24 : f32 to vector<11xf32>
      %266 = vector.multi_reduction <minf>, %104, %265 [0, 2] : vector<10x11x10xf32> to vector<11xf32>
      %267 = index.mul %27, %65
      memref.assume_alignment %alloc_11, 8 : memref<10xf32>
      %268 = math.exp2 %17 : tensor<6x6xf32>
      %269 = math.log %64 : tensor<6x6xf32>
      %270 = index.maxu %c12, %42
      %271 = arith.remui %extracted_31, %c1924632301_i32 : i32
      %272 = tensor.empty() : tensor<10x11x10xf32>
      scf.yield
    }
    %extracted_35 = tensor.extract %6[%c1, %c2] : tensor<6x6xi1>
    %139 = memref.load %alloc_17[%c1, %c0] : memref<10x1xi32>
    %cst_36 = arith.constant 1.000000e+00 : f16
    %cst_37 = arith.constant 0.000000e+00 : f16
    %140 = vector.transfer_read %alloc_21[%c4, %c10, %c15], %cst_37 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<10x11x10xf16>, vector<6x6xf16>
    %141 = math.cttz %c18725_i16 : i16
    %142 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
    %143 = vector.outerproduct %84, %107, %142 {kind = #vector.kind<xor>} : vector<11xi16>, vector<11xi16>
    %144 = index.sizeof
    %145 = vector.load %alloc_20[%c5, %c0, %c0] : memref<10x11x10xf32>, vector<10xf32>
    %splat = tensor.splat %cst_7 : tensor<10x1xf32>
    %146 = arith.maxf %cst, %cst_1 : f16
    %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<6x6xi1> into tensor<36xi1>
    %147 = vector.broadcast %cst_6 : f32 to vector<10x10xf32>
    %148 = vector.outerproduct %145, %145, %147 {kind = #vector.kind<add>} : vector<10xf32>, vector<10xf32>
    %149 = scf.index_switch %c5 -> tensor<10x1xi16> 
    case 1 {
      %258 = tensor.empty() : tensor<10xi32>
      %259 = math.fpowi %2, %258 : tensor<10xf32>, tensor<10xi32>
      %alloc_55 = memref.alloc() : memref<10xi16>
      %cast = tensor.cast %14 : tensor<10x11x10xi32> to tensor<?x?x?xi32>
      %260 = affine.load %alloc_19[%c11, %c2] : memref<10x1xf16>
      %261 = index.ceildivs %c14, %c12
      %262 = index.divs %82, %261
      %263 = affine.max affine_map<(d0, d1, d2) -> ((d2 - d0 - 128) ceildiv 32, d0 - 8, (d2 - d0) ceildiv 8, d2 + 2)>(%27, %66, %c13)
      %264 = arith.remf %cst_7, %cst_6 : f32
      %265 = memref.load %alloc_8[%c8] : memref<10xi1>
      scf.execute_region {
        %271 = vector.broadcast %cst_7 : f32 to vector<11x10x11x10xf32>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %103, %114, %271 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
        %273 = math.log %11 : tensor<6x6xf16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %274 = vector.transfer_read %alloc_13[%c9, %c6], %c0_i16 : memref<10x1xi16>, vector<i16>
        %275 = vector.broadcast %cst_5 : f32 to vector<10xf32>
        %276 = vector.fma %275, %145, %275 : vector<10xf32>
        %277 = vector.broadcast %extracted_35 : i1 to vector<1xi1>
        %278 = vector.insert %277, %112 [2] : vector<1xi1> into vector<10x1xi1>
        %279 = index.divs %66, %c4
        %280 = arith.xori %c-24114_i16, %c-24114_i16 : i16
        %281 = math.round %3 : tensor<6x6xf16>
        %282 = arith.xori %c1565606134_i64, %c1565606134_i64 : i64
        %283 = math.round %3 : tensor<6x6xf16>
        %284 = tensor.empty() : tensor<10x1xi64>
        %285 = memref.load %alloc_18[%c4, %c0] : memref<10x1xf16>
        %286 = math.rsqrt %15 : tensor<10xf32>
        %true_56 = index.bool.constant true
        memref.assume_alignment %alloc, 4 : memref<6x6xi16>
        %287 = math.rsqrt %23 : tensor<f32>
        scf.yield
      }
      %266 = vector.multi_reduction <mul>, %108, %108 [] : vector<11xi16> to vector<11xi16>
      %267 = vector.insertelement %c-3307_i16, %84[%89 : index] : vector<11xi16>
      %268 = arith.shrsi %extracted_31, %extracted_31 : i32
      %269 = arith.ori %extracted_31, %c333937332_i32 : i32
      %270 = vector.bitcast %73 : vector<4xi16> to vector<4xf16>
      scf.execute_region {
        %271 = vector.broadcast %cst_6 : f32 to vector<6x6xf32>
        %272 = vector.fma %271, %271, %271 : vector<6x6xf32>
        %273 = index.add %59, %c15
        %274 = index.mul %c7, %59
        %275 = vector.broadcast %true_30 : i1 to vector<10x1xi1>
        vector.print %104 : vector<10x11x10xf32>
        %276 = math.absf %18 : tensor<f16>
        %277 = math.log %cst_7 : f32
        memref.store %cst_3, %alloc_11[%c3] : memref<10xf32>
        %278 = arith.ori %extracted_31, %c1924632301_i32 : i32
        %279 = memref.atomic_rmw addf %cst_3, %alloc_9[%c3, %c1] : (f32, memref<6x6xf32>) -> f32
        %280 = arith.mulf %cst_5, %cst_2 : f32
        %281 = arith.remui %extracted_35, %extracted_35 : i1
        %282 = vector.broadcast %cst : f16 to vector<6x6xf16>
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %20, %84, %c18725_i16 : vector<11xi16>, vector<11xi16> into i16
        %284 = memref.load %alloc_14[%c4, %c7, %c6] : memref<10x11x10xf16>
        %285 = index.ceildivu %273, %67
        scf.yield
      }
      scf.yield %13 : tensor<10x1xi16>
    }
    case 2 {
      %258 = memref.realloc %alloc_23 : memref<10xi1> to memref<11xi1>
      %splat_55 = tensor.splat %c-24114_i16 : tensor<6x6xi16>
      %259 = arith.maxui %extracted_31, %extracted_31 : i32
      %260 = index.divu %57, %50
      %261 = bufferization.clone %alloc_23 : memref<10xi1> to memref<10xi1>
      %262 = vector.splat %extracted_35 : vector<6x6xi1>
      %263 = arith.remf %cst, %cst_36 : f16
      %264 = bufferization.clone %261 : memref<10xi1> to memref<10xi1>
      %265 = vector.broadcast %cst_24 : f32 to vector<11x10x11x10xf32>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %103, %103, %265 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
      %267 = index.sizeof
      %268 = vector.extract %97[4] : vector<10x11x10xf32>
      %269 = math.powf %38, %38 : tensor<10x1xf16>
      %270 = math.copysign %7, %7 : tensor<10x1xf32>
      %271 = arith.minf %cst_24, %cst_2 : f32
      vector.print %118 : vector<10xi1>
      %272 = index.add %28, %82
      scf.yield %13 : tensor<10x1xi16>
    }
    case 3 {
      %258 = arith.subi %c-24114_i16, %c-3307_i16 : i16
      %259 = math.expm1 %21 : tensor<10xf32>
      %260 = arith.maxf %extracted, %cst : f16
      %261 = arith.subi %c-3307_i16, %c-24114_i16 : i16
      %262 = vector.broadcast %cst_24 : f32 to vector<6x6xf32>
      %263 = vector.fma %262, %262, %262 : vector<6x6xf32>
      memref.assume_alignment %alloc_8, 8 : memref<10xi1>
      %264 = math.roundeven %cst_36 : f16
      %265 = math.tan %11 : tensor<6x6xf16>
      %266 = arith.remui %c18725_i16, %c-24114_i16 : i16
      %267 = index.castu %c-24114_i16 : i16 to index
      %268 = affine.load %alloc_8[%c14] : memref<10xi1>
      %269 = index.divu %144, %c3
      %270 = scf.while (%arg0 = %cst_6) : (f32) -> f32 {
        %274 = math.tan %cst : f16
        %275 = math.ctpop %expanded : tensor<10x1x1xi32>
        %276 = vector.insertelement %c-24114_i16, %108[%66 : index] : vector<11xi16>
        %277 = index.sizeof
        affine.store %c1565606134_i64, %94[%c3] : memref<10xi64>
        %278 = math.tan %cst_36 : f16
        %279 = index.castu %c0 : index to i32
        %280 = vector.broadcast %cst_3 : f32 to vector<11x10xf32>
        %281 = vector.insert %280, %97 [7] : vector<11x10xf32> into vector<10x11x10xf32>
        scf.condition(%extracted_35) %cst_0 : f32
      } do {
      ^bb0(%arg0: f32):
        %274 = vector.insertelement %true_30, %118[%c9 : index] : vector<10xi1>
        %275 = math.sqrt %15 : tensor<10xf32>
        memref.assume_alignment %alloc_17, 2 : memref<10x1xi32>
        %276 = math.round %21 : tensor<10xf32>
        %alloc_55 = memref.alloc() : memref<10x1xi64>
        %277 = math.ceil %0 : tensor<6x6xf32>
        %278 = arith.divui %268, %extracted_35 : i1
        %cast = tensor.cast %10 : tensor<6x6xi32> to tensor<?x?xi32>
        %279 = memref.realloc %alloc_8 : memref<10xi1> to memref<11xi1>
        %280 = arith.mulf %cst, %cst_4 : f16
        %281 = vector.multi_reduction <maxsi>, %118, %true_30 [0] : vector<10xi1> to i1
        %282 = math.ipowi %13, %1 : tensor<10x1xi16>
        %283 = arith.remui %c-24114_i16, %c-24114_i16 : i16
        %284 = vector.broadcast %cst_1 : f16 to vector<6x6xf16>
        %285 = math.rsqrt %15 : tensor<10xf32>
        %286 = index.ceildivs %c5, %c10
        scf.yield %cst_5 : f32
      }
      %271 = vector.splat %cst_6 : vector<10x1xf32>
      %272 = vector.broadcast %cst_7 : f32 to vector<10xf32>
      %273 = index.ceildivs %65, %c1
      scf.yield %1 : tensor<10x1xi16>
    }
    case 4 {
      %258 = vector.splat %c0 : vector<10x11x10xindex>
      %rank_55 = tensor.rank %13 : tensor<10x1xi16>
      %259 = index.divs %c15, %42
      %260 = math.fma %64, %17, %16 : tensor<6x6xf32>
      %261 = arith.subi %true_30, %extracted_35 : i1
      %262 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
      %263 = math.round %cst_3 : f32
      %264 = tensor.empty() : tensor<6x6xf32>
      %mapped_56 = linalg.map ins(%17, %16, %16 : tensor<6x6xf32>, tensor<6x6xf32>, tensor<6x6xf32>) outs(%264 : tensor<6x6xf32>)
        (%in: f32, %in_58: f32, %in_59: f32) {
          %272 = arith.divf %cst_4, %cst_1 : f16
          %273 = arith.remui %43, %c-24114_i16 : i16
          %274 = arith.remf %cst_7, %cst_2 : f32
          %275 = vector.broadcast %extracted_31 : i32 to vector<10xi32>
          %276 = vector.maskedload %32[%c3, %c0], %118, %275 : memref<6x6xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
          %277 = arith.cmpi ne, %c-3307_i16, %43 : i16
          %278 = math.atan2 %15, %21 : tensor<10xf32>
          %279 = memref.load %94[%c8] : memref<10xi64>
          vector.print %118 : vector<10xi1>
          %280 = vector.broadcast %extracted_35 : i1 to vector<i1>
          %281 = vector.transfer_write %280, %6[%82, %c12] : vector<i1>, tensor<6x6xi1>
          %282 = arith.remui %extracted_35, %extracted_35 : i1
          %283 = math.tan %in_59 : f32
          %284 = arith.maxui %c1924632301_i32, %c512582377_i32 : i32
          %285 = vector.broadcast %extracted_35 : i1 to vector<10x11x10xi1>
          %286 = vector.broadcast %extracted_31 : i32 to vector<10x11x10xi32>
          %287 = vector.gather %9[%c8, %83] [%286], %285, %97 : tensor<6x6xf32>, vector<10x11x10xi32>, vector<10x11x10xi1>, vector<10x11x10xf32> into vector<10x11x10xf32>
          %288 = arith.remui %c512582377_i32, %c333937332_i32 : i32
          %289 = vector.broadcast %true_30 : i1 to vector<1xi1>
          %290 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %112, %118, %289 : vector<10x1xi1>, vector<10xi1> into vector<1xi1>
          %291 = vector.insert %c-3307_i16, %115 [2] : i16 into vector<4xi16>
          %292 = arith.ceildivsi %c333937332_i32, %c512582377_i32 : i32
          %293 = math.log %3 : tensor<6x6xf16>
          %294 = vector.splat %c12 : vector<6x6xindex>
          %295 = math.rsqrt %3 : tensor<6x6xf16>
          %296 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 128)>(%c0, %c5, %c11, %c4)
          %297 = arith.minsi %c1565606134_i64, %c1565606134_i64 : i64
          %expanded_60 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<10x11x10xi32> into tensor<10x11x10x1xi32>
          %298 = arith.subi %c1924632301_i32, %extracted_31 : i32
          %alloc_61 = memref.alloc() : memref<10x11x10xi1>
          %299 = arith.remsi %extracted_35, %true_30 : i1
          %300 = arith.addf %cst_5, %cst_24 : f32
          %301 = index.add %28, %66
          %302 = arith.addf %extracted, %cst_4 : f16
          %alloc_62 = memref.alloc() : memref<10x11x10xf32>
          memref.copy %alloc_20, %alloc_62 : memref<10x11x10xf32> to memref<10x11x10xf32>
          %303 = arith.addi %true_30, %true_30 : i1
          %304 = math.copysign %38, %38 : tensor<10x1xf16>
          %cst_63 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_63 : f32
        }
      %265 = memref.realloc %94 : memref<10xi64> to memref<1xi64>
      %266 = arith.maxsi %extracted_31, %c1924632301_i32 : i32
      %267 = memref.alloca_scope  -> (i16) {
        %272 = affine.load %alloc_18[%c5, %c7] : memref<10x1xf16>
        %273 = math.tan %9 : tensor<6x6xf32>
        %274 = index.castu %c-3307_i16 : i16 to index
        %275 = math.ipowi %14, %14 : tensor<10x11x10xi32>
        %rank_58 = tensor.rank %2 : tensor<10xf32>
        %276 = math.cttz %10 : tensor<6x6xi32>
        %277 = arith.remf %cst_2, %cst_6 : f32
        %278 = arith.cmpi ule, %c1924632301_i32, %c1924632301_i32 : i32
        %collapsed_59 = tensor.collapse_shape %3 [[0, 1]] : tensor<6x6xf16> into tensor<36xf16>
        %279 = vector.broadcast %cst_24 : f32 to vector<10x11x10xf32>
        %280 = vector.fma %279, %114, %279 : vector<10x11x10xf32>
        vector.print %73 : vector<4xi16>
        %281 = math.ceil %9 : tensor<6x6xf32>
        %282 = math.round %15 : tensor<10xf32>
        %283 = arith.ori %43, %43 : i16
        %284 = arith.andi %extracted_35, %true_30 : i1
        %285 = arith.maxsi %c333937332_i32, %extracted_31 : i32
        %286 = arith.xori %43, %c18725_i16 : i16
        %287 = math.exp2 %22 : tensor<f32>
        %288 = arith.maxui %c333937332_i32, %c333937332_i32 : i32
        %289 = math.rsqrt %15 : tensor<10xf32>
        %290 = arith.maxui %c512582377_i32, %c1924632301_i32 : i32
        %291 = arith.shrsi %43, %c-24114_i16 : i16
        %292 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
        %293 = arith.addf %cst_5, %cst_6 : f32
        %294 = index.sizeof
        %295 = math.exp %18 : tensor<f16>
        %296 = math.absi %5 : tensor<10x1xi32>
        %297 = vector.extract_strided_slice %118 {offsets = [8], sizes = [2], strides = [1]} : vector<10xi1> to vector<2xi1>
        %298 = math.log2 %cst : f16
        %splat_60 = tensor.splat %cst_2 : tensor<6x6xf32>
        %299 = vector.broadcast %cst_0 : f32 to vector<10x11xf32>
        %dest_61, %accumulated_value_62 = vector.scan <add>, %104, %299 {inclusive = false, reduction_dim = 2 : i64} : vector<10x11x10xf32>, vector<10x11xf32>
        %300 = math.ctlz %10 : tensor<6x6xi32>
        memref.alloca_scope.return %43 : i16
      }
      %expanded_57 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<6x6xf32> into tensor<6x6x1xf32>
      %268 = math.atan2 %264, %0 : tensor<6x6xf32>
      %269 = memref.load %alloc_20[%c0, %c4, %c9] : memref<10x11x10xf32>
      %270 = index.maxu %28, %42
      %271 = index.sizeof
      scf.yield %13 : tensor<10x1xi16>
    }
    default {
      %258 = arith.remf %cst_1, %extracted : f16
      %from_elements_55 = tensor.from_elements %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64, %c1565606134_i64 : tensor<10xi64>
      %259 = math.round %cst_36 : f16
      %alloc_56 = memref.alloc() : memref<10x1xi16>
      memref.copy %alloc_13, %alloc_56 : memref<10x1xi16> to memref<10x1xi16>
      %260 = vector.insertelement %c18725_i16, %107[%c1 : index] : vector<11xi16>
      %261 = vector.flat_transpose %107 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
      %262 = math.round %cst_0 : f32
      %263 = affine.load %alloc_20[%c9, %c2, %c9] : memref<10x11x10xf32>
      %264 = math.fpowi %0, %10 : tensor<6x6xf32>, tensor<6x6xi32>
      %265 = arith.mulf %cst_3, %cst_0 : f32
      %266 = index.ceildivs %144, %c15
      affine.store %c333937332_i32, %alloc_10[%c5, %c12, %c5] : memref<10x11x10xi32>
      %extracted_57 = tensor.extract %6[%c3, %c5] : tensor<6x6xi1>
      %267 = vector.broadcast %cst_3 : f32 to vector<11x10x11x10xf32>
      %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %98, %98, %267 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
      %269 = tensor.empty() : tensor<i32>
      %270 = math.fpowi %22, %269 : tensor<f32>, tensor<i32>
      %271 = arith.divf %cst, %cst_4 : f16
      scf.yield %13 : tensor<10x1xi16>
    }
    %150 = arith.remf %cst_7, %cst_7 : f32
    %151 = arith.subi %c18725_i16, %c18725_i16 : i16
    vector.print %104 : vector<10x11x10xf32>
    %152 = memref.atomic_rmw maxf %cst_2, %alloc_20[%c3, %c3, %c8] : (f32, memref<10x11x10xf32>) -> f32
    %expanded_38 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<10x1xi16> into tensor<10x1x1xi16>
    %153 = affine.min affine_map<(d0, d1, d2) -> ((-(d2 floordiv 4)) mod 8, 0, -((-d2) ceildiv 128 + 4), -(d2 floordiv 4))>(%39, %c9, %127)
    %154 = vector.broadcast %cst_0 : f32 to vector<11x10xf32>
    %155 = vector.insert %154, %104 [9] : vector<11x10xf32> into vector<10x11x10xf32>
    %156 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %55, %c-24114_i16 : vector<11xi16>, vector<11xi16> into i16
    %157 = bufferization.to_tensor %alloc_15 : memref<6x6xi32>
    %158 = vector.extract %114[4, 6] : vector<10x11x10xf32>
    %159 = arith.maxui %c1924632301_i32, %extracted_31 : i32
    %160 = arith.subi %c333937332_i32, %extracted_31 : i32
    %161 = index.add %c4, %42
    %162 = arith.shrsi %c1565606134_i64, %c1565606134_i64 : i64
    %163 = math.exp2 %cst_2 : f32
    %164 = affine.apply affine_map<(d0) -> ((d0 ceildiv 16) ceildiv 2 + d0)>(%c0)
    %165 = math.ctlz %c1565606134_i64 : i64
    %166 = math.powf %38, %38 : tensor<10x1xf16>
    %167 = scf.while (%arg0 = %c18725_i16) : (i16) -> i16 {
      %258 = vector.bitcast %79 : vector<10x1xf16> to vector<10x1xf16>
      %259 = vector.splat %c333937332_i32 : vector<10x11x10xi32>
      %260 = math.fpowi %cst_36, %c512582377_i32 : f16, i32
      %261 = vector.insert %154, %104 [1] : vector<11x10xf32> into vector<10x11x10xf32>
      %262 = index.divs %50, %127
      %263 = arith.andi %c1924632301_i32, %extracted_31 : i32
      %264 = arith.divf %cst_36, %cst_1 : f16
      %265 = vector.multi_reduction <minf>, %103, %cst_0 [0, 1, 2] : vector<10x11x10xf32> to f32
      scf.condition(%true_30) %arg0 : i16
    } do {
    ^bb0(%arg0: i16):
      %258 = arith.divf %cst_2, %cst_3 : f32
      %259 = arith.maxsi %extracted_31, %c1924632301_i32 : i32
      %260 = bufferization.clone %alloc_18 : memref<10x1xf16> to memref<10x1xf16>
      %261 = vector.insert %cst_2, %158 [5] : f32 into vector<10xf32>
      %262 = arith.cmpi uge, %c-3307_i16, %arg0 : i16
      %263 = arith.cmpi uge, %c18725_i16, %c18725_i16 : i16
      %264 = vector.broadcast %cst_1 : f16 to vector<10x11x10xf16>
      %265 = vector.extract %145[2] : vector<10xf32>
      %266 = vector.broadcast %true_30 : i1 to vector<i1>
      vector.transfer_write %266, %alloc_8[%89] : vector<i1>, memref<10xi1>
      %267 = arith.maxui %arg0, %arg0 : i16
      %268 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 4 >= 0, d0 + d2 >= 0, (d1 - (d2 * 2 + 1)) mod 32 == 0)>(%c2, %c4, %c0) -> i32 {
        %276 = index.maxs %c13, %c15
        %277 = index.divs %28, %66
        %278 = index.castu %arg0 : i16 to index
        %279 = arith.remf %cst_5, %cst_24 : f32
        %280 = arith.maxf %cst_3, %cst_2 : f32
        %281 = vector.broadcast %true_30 : i1 to vector<1xi1>
        %282 = vector.insert %281, %112 [5] : vector<1xi1> into vector<10x1xi1>
        %283 = arith.divui %true_30, %true_30 : i1
        %284 = math.ctlz %1 : tensor<10x1xi16>
        affine.yield %c333937332_i32 : i32
      } else {
        %276 = index.divu %27, %c3
        %277 = math.ctlz %8 : tensor<10xi64>
        %278 = index.sub %144, %c5
        %279 = index.maxs %c3, %28
        %280 = vector.bitcast %118 : vector<10xi1> to vector<10xi1>
        %281 = vector.broadcast %27 : index to vector<1xindex>
        %282 = vector.broadcast %extracted_35 : i1 to vector<1xi1>
        %283 = vector.broadcast %extracted : f16 to vector<1xf16>
        vector.scatter %alloc_14[%c8, %c4, %c4] [%281], %282, %283 : memref<10x11x10xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %false = index.bool.constant false
        %284 = math.cttz %c512582377_i32 : i32
        affine.yield %extracted_31 : i32
      }
      %269 = vector.broadcast %43 : i16 to vector<11x11xi16>
      %270 = vector.outerproduct %107, %107, %269 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
      %271 = arith.negf %cst : f16
      %272 = math.absf %extracted : f16
      %273 = vector.broadcast %cst_6 : f32 to vector<6x6xf32>
      %274 = vector.fma %273, %273, %273 : vector<6x6xf32>
      %275 = math.round %cst_4 : f16
      scf.yield %c-3307_i16 : i16
    }
    %168 = vector.broadcast %c18725_i16 : i16 to vector<11x11xi16>
    %169 = vector.outerproduct %107, %20, %168 {kind = #vector.kind<and>} : vector<11xi16>, vector<11xi16>
    vector.print %118 : vector<10xi1>
    %170 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 128)>(%c12, %c2, %42, %27)
    %171 = affine.load %alloc_22[%c8, %c5] : memref<6x6xf32>
    %172 = math.exp %cst_1 : f16
    %173 = arith.xori %c18725_i16, %c-24114_i16 : i16
    memref.store %extracted_35, %alloc_8[%c3] : memref<10xi1>
    %174 = math.ipowi %extracted_35, %true_30 : i1
    %expanded_39 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<6x6xf32> into tensor<6x6x1xf32>
    %175 = math.powf %3, %3 : tensor<6x6xf16>
    %176 = arith.subi %c1565606134_i64, %c1565606134_i64 : i64
    %true_40 = index.bool.constant true
    %177 = math.atan %cst_2 : f32
    %cst_41 = arith.constant 1.000000e+00 : f32
    %178 = vector.transfer_read %splat[%153, %c9], %cst_41 : tensor<10x1xf32>, vector<6xf32>
    %179 = arith.shrui %c333937332_i32, %extracted_31 : i32
    %180 = math.tan %64 : tensor<6x6xf32>
    %181 = arith.subi %c-3307_i16, %c-3307_i16 : i16
    %182 = vector.broadcast %c1565606134_i64 : i64 to vector<6xi64>
    %183 = vector.broadcast %true_40 : i1 to vector<6xi1>
    %184 = vector.maskedload %94[%c9], %183, %182 : memref<10xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    %185 = index.castu %c1565606134_i64 : i64 to index
    memref.alloca_scope  {
      %258 = arith.shli %c18725_i16, %c-24114_i16 : i16
      %259 = index.castu %c2 : index to i32
      %260 = math.sqrt %23 : tensor<f32>
      %261 = arith.addi %c333937332_i32, %c1924632301_i32 : i32
      %262 = vector.extract %183[0] : vector<6xi1>
      %263 = index.divu %c9, %67
      %264 = vector.multi_reduction <maxf>, %79, %cst_4 [0, 1] : vector<10x1xf16> to f16
      %265 = scf.while (%arg0 = %cst_1) : (f16) -> f16 {
        %286 = math.tan %38 : tensor<10x1xf16>
        %287 = math.log2 %171 : f32
        %288 = vector.flat_transpose %182 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
        %289 = math.exp %cst_3 : f32
        %290 = index.castu %161 : index to i32
        %291 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 - d0) mod 128, 0, 0)>(%67, %68, %c2, %161)
        %292 = math.fpowi %splat, %5 : tensor<10x1xf32>, tensor<10x1xi32>
        %293 = math.tan %18 : tensor<f16>
        scf.condition(%true_40) %cst : f16
      } do {
      ^bb0(%arg0: f16):
        %alloc_57 = memref.alloc() : memref<10x1xi64>
        affine.store %cst_3, %alloc_9[%c12, %c9] : memref<6x6xf32>
        %cst_58 = arith.constant 1.000000e+00 : f32
        %286 = vector.transfer_read %0[%66, %c11], %cst_58 : tensor<6x6xf32>, vector<6xf32>
        %287 = arith.minf %cst_6, %cst_0 : f32
        %288 = arith.ori %c-24114_i16, %43 : i16
        %289 = arith.minui %extracted_31, %c1924632301_i32 : i32
        %290 = index.mul %42, %c0
        %291 = arith.remf %cst_0, %cst_3 : f32
        %alloc_59 = memref.alloc() : memref<6x6xi1>
        %292 = vector.broadcast %c512582377_i32 : i32 to vector<10x1xi32>
        %293 = vector.gather %alloc_59[%c11, %164] [%292], %112, %112 : memref<6x6xi1>, vector<10x1xi32>, vector<10x1xi1>, vector<10x1xi1> into vector<10x1xi1>
        %splat_60 = tensor.splat %cst_0 : tensor<6x6xf32>
        %294 = index.divs %82, %c8
        %295 = arith.minsi %extracted_31, %c512582377_i32 : i32
        %296 = index.divs %39, %82
        %297 = vector.create_mask %59, %50 : vector<6x6xi1>
        %298 = arith.remui %c333937332_i32, %extracted_31 : i32
        %299 = vector.broadcast %c1924632301_i32 : i32 to vector<1xi32>
        %300 = vector.insert %299, %292 [9] : vector<1xi32> into vector<10x1xi32>
        scf.yield %cst_4 : f16
      }
      %266 = affine.if affine_set<(d0) : ((d0 ceildiv 4) floordiv 8 >= 0)>(%c3) -> i16 {
        memref.store %cst_24, %alloc_11[%c2] : memref<10xf32>
        %286 = math.sqrt %171 : f32
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %114, %158, %154 : vector<10x11x10xf32>, vector<10xf32> into vector<11x10xf32>
        %288 = arith.floordivsi %extracted_31, %extracted_31 : i32
        %rank_57 = tensor.rank %11 : tensor<6x6xf16>
        %289 = index.divu %83, %263
        %290 = vector.create_mask %82, %59 : vector<10x1xi1>
        %291 = index.floordivs %27, %50
        affine.yield %c18725_i16 : i16
      } else {
        %286 = arith.mulf %171, %cst_7 : f32
        %287 = math.rsqrt %expanded_39 : tensor<6x6x1xf32>
        %288 = math.atan %3 : tensor<6x6xf16>
        %cst_57 = arith.constant 1.34152576E+9 : f32
        %289 = index.castu %c1565606134_i64 : i64 to index
        %290 = index.maxs %57, %153
        %291 = math.atan2 %expanded_39, %expanded_39 : tensor<6x6x1xf32>
        %292 = arith.remf %cst_5, %cst_41 : f32
        affine.yield %c-24114_i16 : i16
      }
      %267 = vector.bitcast %73 : vector<4xi16> to vector<4xi16>
      %alloc_55 = memref.alloc() : memref<f16>
      memref.tensor_store %reduced, %alloc_55 : memref<f16>
      %268 = bufferization.to_tensor %alloc_23 : memref<10xi1>
      %269 = math.tan %2 : tensor<10xf32>
      %270 = vector.multi_reduction <minf>, %145, %158 [] : vector<10xf32> to vector<10xf32>
      %271 = arith.divf %cst_3, %cst_0 : f32
      scf.if %true_30 {
        %286 = math.round %0 : tensor<6x6xf32>
        %287 = vector.create_mask %42, %153 : vector<10x1xi1>
        %288 = arith.remf %cst_24, %cst_6 : f32
        %289 = arith.remui %c333937332_i32, %c1924632301_i32 : i32
        %extracted_57 = tensor.extract %5[%c3, %c0] : tensor<10x1xi32>
        %290 = math.ipowi %c1565606134_i64, %c1565606134_i64 : i64
        %291 = vector.insert %158, %154 [5] : vector<10xf32> into vector<11x10xf32>
        %292 = math.ctlz %c-24114_i16 : i16
      } else {
        %286 = arith.andi %true_30, %true_30 : i1
        %287 = arith.remui %extracted_31, %c333937332_i32 : i32
        %288 = math.ctpop %c-24114_i16 : i16
        %289 = bufferization.to_tensor %alloc_9 : memref<6x6xf32>
        %290 = index.ceildivs %c13, %c9
        %extracted_57 = tensor.extract %collapsed[%c13] : tensor<36xi1>
        %291 = math.cttz %14 : tensor<10x11x10xi32>
        %c1275237040_i32 = arith.constant 1275237040 : i32
      }
      %272 = arith.remui %43, %c18725_i16 : i16
      %273 = math.sqrt %cst_41 : f32
      %274 = vector.broadcast %true_30 : i1 to vector<10xi1>
      %true_56 = index.bool.constant true
      %275 = arith.ori %c1565606134_i64, %c1565606134_i64 : i64
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %108, %107, %43 : vector<11xi16>, vector<11xi16> into i16
      %277 = arith.minf %cst_36, %264 : f16
      vector.print %145 : vector<10xf32>
      %278 = memref.atomic_rmw assign %c1924632301_i32, %32[%c4, %c2] : (i32, memref<6x6xi32>) -> i32
      %279 = arith.subi %c1924632301_i32, %c333937332_i32 : i32
      %280 = affine.apply affine_map<(d0, d1) -> (d1 + d0 * 64 - 128)>(%c12, %59)
      %281 = math.fpowi %from_elements, %4 : tensor<10x11x10xf16>, tensor<10x11x10xi32>
      %282 = vector.reduction <mul>, %84 : vector<11xi16> into i16
      %283 = index.maxs %50, %c1
      %284 = arith.addf %cst_3, %cst_7 : f32
      %285 = memref.load %32[%c1, %c3] : memref<6x6xi32>
    }
    %186 = tensor.empty() : tensor<1xi32>
    %alloc_42 = memref.alloc() : memref<1x10xi32>
    %187 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%186, %186, %alloc_42 : tensor<1xi32>, tensor<1xi32>, memref<1x10xi32>) outs(%expanded : tensor<10x1x1xi32>) {
    ^bb0(%in: i32, %in_55: i32, %in_56: i32, %out: i32):
      %258 = arith.divui %extracted_35, %extracted_35 : i1
      %cast = tensor.cast %reduced : tensor<f16> to tensor<f16>
      %259 = arith.minf %cst_24, %cst_24 : f32
      %260 = tensor.empty() : tensor<10xi16>
      %261 = vector.broadcast %c-3307_i16 : i16 to vector<10xi16>
      %262 = vector.broadcast %extracted_31 : i32 to vector<10xi32>
      %263 = vector.gather %260[%67] [%262], %118, %261 : tensor<10xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      %264 = affine.load %alloc_11[%c15] : memref<10xf32>
      %extracted_57 = tensor.extract %10[%c2, %c4] : tensor<6x6xi32>
      %265 = math.fma %cst_5, %cst_5, %cst_5 : f32
      %266 = math.sqrt %2 : tensor<10xf32>
      %267 = index.maxs %c2, %c5
      %268 = vector.broadcast %c-24114_i16 : i16 to vector<10xi16>
      %269 = arith.maxf %cst, %cst_36 : f16
      %270 = memref.load %alloc_11[%c0] : memref<10xf32>
      %271 = vector.reduction <xor>, %55 : vector<11xi16> into i16
      %272 = math.ctpop %expanded : tensor<10x1x1xi32>
      %273 = bufferization.clone %94 : memref<10xi64> to memref<10xi64>
      %274 = arith.maxui %extracted_57, %c333937332_i32 : i32
      %rank_58 = tensor.rank %cast : tensor<f16>
      %275 = arith.maxui %out, %c512582377_i32 : i32
      %276 = math.absf %16 : tensor<6x6xf32>
      %generated_59 = tensor.generate %83, %c3 {
      ^bb0(%arg0: index, %arg1: index):
        %c-8133_i16 = arith.constant -8133 : i16
        %287 = vector.flat_transpose %115 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %288 = index.ceildivs %57, %82
        %289 = arith.andi %true_30, %true_30 : i1
        tensor.yield %43 : i16
      } : tensor<?x?xi16>
      %277 = arith.addi %extracted_35, %true_30 : i1
      %278 = arith.ori %c1924632301_i32, %in_55 : i32
      %279 = memref.atomic_rmw maxf %264, %alloc_9[%c5, %c4] : (f32, memref<6x6xf32>) -> f32
      %280 = vector.flat_transpose %73 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %expanded_60 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<10x1xf32> into tensor<10x1x1xf32>
      %281 = index.add %c2, %c8
      %282 = math.absf %11 : tensor<6x6xf16>
      %283 = math.ceil %18 : tensor<f16>
      %extracted_61 = tensor.extract %7[%c8, %c0] : tensor<10x1xf32>
      %284 = arith.minui %extracted_35, %true_30 : i1
      %285 = math.ceil %171 : f32
      %286 = vector.splat %c6 : vector<6x6xindex>
      linalg.yield %in : i32
    } -> tensor<10x1x1xi32>
    %188 = vector.broadcast %c1565606134_i64 : i64 to vector<6x6xi64>
    %189 = vector.outerproduct %184, %184, %188 {kind = #vector.kind<maxui>} : vector<6xi64>, vector<6xi64>
    %190 = math.tan %cst_24 : f32
    %alloc_43 = memref.alloc() : memref<10x10xf16>
    %191 = tensor.empty() : tensor<10x11xf16>
    %192 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_43, %191, %from_elements : memref<10x10xf16>, tensor<10x11xf16>, tensor<10x11x10xf16>) outs(%from_elements : tensor<10x11x10xf16>) {
    ^bb0(%in: f16, %in_55: f16, %in_56: f16, %out: f16):
      %258 = math.fma %21, %15, %2 : tensor<10xf32>
      %259 = vector.broadcast %cst_0 : f32 to vector<11xf32>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %154, %259 {inclusive = false, reduction_dim = 1 : i64} : vector<11x10xf32>, vector<11xf32>
      %260 = arith.minsi %c1924632301_i32, %c1924632301_i32 : i32
      %261 = index.ceildivs %68, %28
      %262 = scf.execute_region -> f32 {
        %286 = vector.extract %112[8] : vector<10x1xi1>
        %287 = math.tanh %expanded_39 : tensor<6x6x1xf32>
        affine.store %c1924632301_i32, %alloc_10[%c2, %c12, %c11] : memref<10x11x10xi32>
        %288 = index.maxu %c14, %c13
        %cst_64 = arith.constant 4.115200e+04 : f16
        %289 = memref.atomic_rmw addf %in_55, %alloc_16[%c8, %c0] : (f16, memref<10x1xf16>) -> f16
        %290 = vector.broadcast %cst : f16 to vector<10xf16>
        %291 = math.log2 %cst_24 : f32
        %292 = vector.extract %182[1] : vector<6xi64>
        %293 = math.powf %splat, %7 : tensor<10x1xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %145, %97, %154 : vector<10xf32>, vector<10x11x10xf32> into vector<11x10xf32>
        %295 = index.maxu %c11, %c0
        %296 = math.fma %in_56, %in_55, %cst_36 : f16
        %297 = index.floordivs %153, %39
        %298 = math.expm1 %64 : tensor<6x6xf32>
        %299 = vector.multi_reduction <and>, %112, %true_30 [0, 1] : vector<10x1xi1> to i1
        scf.yield %cst_24 : f32
      }
      %false = arith.constant false
      %263 = vector.reduction <minui>, %55 : vector<11xi16> into i16
      %264 = math.log2 %2 : tensor<10xf32>
      %265 = index.divu %c9, %144
      %266 = vector.broadcast %c-24114_i16 : i16 to vector<4x4xi16>
      %267 = vector.outerproduct %115, %115, %266 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
      %268 = index.divs %c9, %161
      %269 = arith.remui %43, %c18725_i16 : i16
      %270 = vector.create_mask %89 : vector<10xi1>
      %271 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
      %extracted_59 = tensor.extract %splat[%c0, %c0] : tensor<10x1xf32>
      %272 = math.roundeven %17 : tensor<6x6xf32>
      %273 = math.powf %171, %cst_3 : f32
      %274 = bufferization.to_memref %9 : memref<6x6xf32>
      %expanded_60 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<10x11x10xi32> into tensor<10x11x10x1xi32>
      %rank_61 = tensor.rank %9 : tensor<6x6xf32>
      %275 = math.round %extracted_59 : f32
      %276 = index.divu %185, %82
      %277 = arith.cmpi ule, %true_30, %true_40 : i1
      %278 = index.mul %57, %28
      %279 = arith.xori %c1924632301_i32, %c333937332_i32 : i32
      %true_62 = arith.constant true
      %280 = vector.transfer_read %12[%c8], %true_62 : tensor<10xi1>, vector<i1>
      %281 = vector.broadcast %28 : index to vector<6xindex>
      %282 = vector.broadcast %extracted_59 : f32 to vector<6xf32>
      vector.scatter %274[%c2, %c5] [%281], %183, %282 : memref<6x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
      %inserted_63 = tensor.insert %true_40 into %6[%c0, %c2] : tensor<6x6xi1>
      %283 = memref.atomic_rmw mulf %cst_7, %alloc_20[%c1, %c4, %c2] : (f32, memref<10x11x10xf32>) -> f32
      %284 = vector.create_mask %c15, %c11, %261 : vector<10x11x10xi1>
      affine.store %43, %alloc[%c9, %c13] : memref<6x6xi16>
      %285 = math.atan2 %2, %15 : tensor<10xf32>
      linalg.yield %cst_36 : f16
    } -> tensor<10x11x10xf16>
    %193 = index.sizeof
    %194 = vector.insertelement %cst_41, %145[%c14 : index] : vector<10xf32>
    %195 = math.exp2 %9 : tensor<6x6xf32>
    %196 = math.rsqrt %cst_1 : f16
    %197 = math.tan %reduced : tensor<f16>
    %198 = arith.xori %c18725_i16, %43 : i16
    %collapsed_44 = tensor.collapse_shape %64 [[0, 1]] : tensor<6x6xf32> into tensor<36xf32>
    %199 = arith.shrui %c18725_i16, %43 : i16
    %200 = arith.ori %c1565606134_i64, %c1565606134_i64 : i64
    %cst_45 = arith.constant 1.93051584E+9 : f32
    %201 = index.castu %true_30 : i1 to index
    %202 = tensor.empty() : tensor<10xi64>
    %203 = index.sizeof
    %204 = tensor.empty() : tensor<6x6xf32>
    %mapped_46 = linalg.map ins(%9, %alloc_9 : tensor<6x6xf32>, memref<6x6xf32>) outs(%204 : tensor<6x6xf32>)
      (%in: f32, %in_55: f32) {
        memref.alloca_scope  {
          %287 = arith.addi %c1565606134_i64, %c1565606134_i64 : i64
          %288 = math.fma %51, %from_elements, %51 : tensor<10x11x10xf16>
          %289 = index.divu %127, %c3
          %290 = affine.min affine_map<(d0, d1) -> (d0, (d0 mod 4) floordiv 128 - ((d0 mod 4) floordiv 128 - 32) + d0)>(%201, %89)
          %291 = math.round %16 : tensor<6x6xf32>
          %292 = math.powf %reduced, %18 : tensor<f16>
          %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %118, %118, %extracted_35 : vector<10xi1>, vector<10xi1> into i1
          %false_59 = arith.constant false
          %false_60 = arith.constant false
          %294 = vector.transfer_read %6[%68, %185], %false_60 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<6x6xi1>, vector<1xi1>
          %295 = arith.ori %extracted_35, %true_30 : i1
          %collapsed_61 = tensor.collapse_shape %51 [[0, 1], [2]] : tensor<10x11x10xf16> into tensor<110x10xf16>
          %296 = arith.shli %extracted_35, %extracted_35 : i1
          %297 = math.exp %3 : tensor<6x6xf16>
          %298 = arith.minf %cst_36, %cst : f16
          %299 = memref.load %alloc[%c3, %c1] : memref<6x6xi16>
          memref.assume_alignment %alloc_21, 1 : memref<10x11x10xf16>
          memref.tensor_store %1, %alloc_13 : memref<10x1xi16>
          %300 = bufferization.to_tensor %alloc_8 : memref<10xi1>
          %splat_62 = tensor.splat %extracted_35 : tensor<10xi1>
          %301 = arith.remf %cst_2, %cst_24 : f32
          %302 = index.maxs %82, %27
          %303 = arith.ceildivsi %c-3307_i16, %43 : i16
          %304 = arith.divf %cst_41, %cst_7 : f32
          %305 = math.log2 %22 : tensor<f32>
          %306 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
          %307 = math.fma %cst_2, %cst_2, %in_55 : f32
          %308 = math.ipowi %false_59, %true_40 : i1
          %collapsed_63 = tensor.collapse_shape %38 [[0, 1]] : tensor<10x1xf16> into tensor<10xf16>
          %309 = arith.divui %c512582377_i32, %extracted_31 : i32
          %310 = bufferization.clone %alloc : memref<6x6xi16> to memref<6x6xi16>
          %311 = index.mul %193, %127
          %312 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %182, %182, %c1565606134_i64 : vector<6xi64>, vector<6xi64> into i64
          %rank_64 = tensor.rank %splat : tensor<10x1xf32>
        }
        %258 = arith.minui %c333937332_i32, %c333937332_i32 : i32
        memref.alloca_scope  {
          %287 = vector.multi_reduction <maxf>, %98, %154 [0] : vector<10x11x10xf32> to vector<11x10xf32>
          %288 = vector.extract_strided_slice %108 {offsets = [6], sizes = [4], strides = [1]} : vector<11xi16> to vector<4xi16>
          %289 = index.maxs %c9, %c2
          %290 = index.casts %c4 : index to i32
          %291 = math.exp %15 : tensor<10xf32>
          %292 = index.casts %c512582377_i32 : i32 to index
          %293 = bufferization.to_memref %3 : memref<6x6xf16>
          %294 = affine.load %alloc_23[%c8] : memref<10xi1>
          %295 = arith.floordivsi %c1565606134_i64, %c1565606134_i64 : i64
          %296 = arith.ori %294, %true_30 : i1
          %c0_i64 = arith.constant 0 : i64
          %297 = vector.transfer_read %110[%201], %c0_i64 : tensor<10xi64>, vector<i64>
          %c1041318690_i32 = arith.constant 1041318690 : i32
          %298 = arith.subi %294, %true_40 : i1
          %299 = index.mul %c12, %153
          %300 = arith.ceildivsi %c-3307_i16, %43 : i16
          %301 = vector.broadcast %cst_5 : f32 to vector<10xf32>
          %302 = vector.fma %301, %301, %145 : vector<10xf32>
          %alloc_59 = memref.alloc() : memref<6x6xi32>
          %303 = memref.load %alloc_18[%c3, %c0] : memref<10x1xf16>
          %304 = arith.xori %true_30, %294 : i1
          %305 = index.mul %c4, %292
          %306 = arith.ori %43, %c-24114_i16 : i16
          %307 = vector.extract_strided_slice %154 {offsets = [0], sizes = [6], strides = [1]} : vector<11x10xf32> to vector<6x10xf32>
          %308 = index.add %c12, %50
          %309 = memref.load %alloc_19[%c2, %c0] : memref<10x1xf16>
          %extracted_60 = tensor.extract %9[%c0, %c1] : tensor<6x6xf32>
          %310 = arith.ori %extracted_31, %c512582377_i32 : i32
          affine.store %extracted_35, %alloc_23[%c8] : memref<10xi1>
          %311 = vector.create_mask %c7, %201, %203 : vector<10x11x10xi1>
          %alloca_61 = memref.alloca() : memref<10x11x10xi64>
          %312 = math.round %9 : tensor<6x6xf32>
          %313 = math.tan %cst_7 : f32
          %314 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
          %315 = vector.outerproduct %55, %55, %314 {kind = #vector.kind<minsi>} : vector<11xi16>, vector<11xi16>
        }
        %259 = arith.remui %c1924632301_i32, %c1924632301_i32 : i32
        %260 = vector.insert %154, %104 [9] : vector<11x10xf32> into vector<10x11x10xf32>
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %84, %108, %c-3307_i16 : vector<11xi16>, vector<11xi16> into i16
        %262 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %263 = arith.floordivsi %c-24114_i16, %43 : i16
        %264 = math.copysign %cst_5, %cst_6 : f32
        %265 = arith.floordivsi %extracted_35, %extracted_35 : i1
        %rank_56 = tensor.rank %16 : tensor<6x6xf32>
        %266 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
        %267 = math.expm1 %204 : tensor<6x6xf32>
        %268 = arith.addf %cst_3, %cst_7 : f32
        %269 = math.round %38 : tensor<10x1xf16>
        scf.execute_region {
          %287 = index.divs %153, %27
          %288 = vector.splat %185 : vector<10xindex>
          %289 = memref.load %alloc_13[%c2, %c0] : memref<10x1xi16>
          %290 = math.log %cst_41 : f32
          %291 = arith.remf %cst_4, %cst_4 : f16
          memref.store %c1924632301_i32, %32[%c5, %c5] : memref<6x6xi32>
          %292 = arith.mulf %cst, %cst_4 : f16
          %c18 = arith.constant 18 : index
          %extracted_59 = tensor.extract %collapsed_44[%c18] : tensor<36xf32>
          %293 = math.tan %cst_36 : f16
          %294 = math.atan %cst_2 : f32
          %295 = math.round %51 : tensor<10x11x10xf16>
          %rank_60 = tensor.rank %2 : tensor<10xf32>
          %296 = index.divu %59, %c6
          %297 = vector.extract %262[3] : vector<11xi16>
          %298 = math.exp2 %cst_6 : f32
          %true_61 = index.bool.constant true
          scf.yield
        }
        %270 = index.maxu %c14, %68
        %271 = index.ceildivs %c0, %59
        %272 = affine.apply affine_map<(d0, d1) -> (d1 + d0 * 64 - 128)>(%67, %68)
        %273 = math.rsqrt %17 : tensor<6x6xf32>
        %274 = math.exp2 %21 : tensor<10xf32>
        %275 = memref.alloca_scope  -> (i64) {
          %287 = arith.maxui %c333937332_i32, %c512582377_i32 : i32
          %288 = vector.extract_strided_slice %79 {offsets = [4], sizes = [4], strides = [1]} : vector<10x1xf16> to vector<4x1xf16>
          %289 = arith.remf %cst_6, %in : f32
          %290 = memref.realloc %alloc_23 : memref<10xi1> to memref<10xi1>
          %291 = vector.splat %27 : vector<10x11x10xindex>
          %292 = arith.divf %cst_4, %cst_1 : f16
          %293 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
          %294 = vector.outerproduct %55, %107, %293 {kind = #vector.kind<minsi>} : vector<11xi16>, vector<11xi16>
          %295 = arith.maxf %cst_2, %cst_6 : f32
          %inserted_59 = tensor.insert %cst_4 into %38[%c7, %c0] : tensor<10x1xf16>
          %rank_60 = tensor.rank %1 : tensor<10x1xi16>
          %296 = arith.addf %cst_41, %cst_3 : f32
          %297 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - 128) ceildiv 16)>(%c8, %rank_60, %201)
          %298 = vector.shuffle %154, %154 [4, 5, 6, 8, 9, 10, 12, 13, 15, 16, 18, 19] : vector<11x10xf32>, vector<11x10xf32>
          %299 = index.ceildivs %c12, %89
          %300 = affine.load %alloc_17[%c11, %c10] : memref<10x1xi32>
          %301 = vector.broadcast %cst_7 : f32 to vector<11x10x11xf32>
          %302 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %103, %154, %301 : vector<10x11x10xf32>, vector<11x10xf32> into vector<11x10x11xf32>
          %303 = affine.max affine_map<(d0, d1) -> (((d0 + d1) * 8) mod 16, (d0 + d1) floordiv 64 + 128)>(%c9, %c12)
          %304 = bufferization.to_tensor %alloc_19 : memref<10x1xf16>
          %305 = vector.create_mask %c10 : vector<10xi1>
          %306 = arith.minf %cst_1, %cst : f16
          %307 = math.powf %cst_1, %extracted : f16
          %308 = memref.atomic_rmw mins %c1924632301_i32, %32[%c0, %c1] : (i32, memref<6x6xi32>) -> i32
          %rank_61 = tensor.rank %10 : tensor<6x6xi32>
          %309 = index.divu %50, %164
          %310 = math.exp2 %cst_1 : f16
          %311 = math.log2 %204 : tensor<6x6xf32>
          %312 = vector.insertelement %c1565606134_i64, %184[%39 : index] : vector<6xi64>
          %313 = arith.remf %cst_6, %cst_6 : f32
          %314 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 128)>(%271, %42, %164, %65)
          %315 = index.castu %153 : index to i32
          %316 = math.powf %23, %23 : tensor<f32>
          %317 = math.tan %splat : tensor<10x1xf32>
          memref.alloca_scope.return %c1565606134_i64 : i64
        }
        %false = arith.constant false
        %false_57 = arith.constant false
        %276 = vector.transfer_read %alloc_23[%127], %false_57 : memref<10xi1>, vector<i1>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %84, %55, %43 : vector<11xi16>, vector<11xi16> into i16
        %278 = math.ctpop %5 : tensor<10x1xi32>
        %279 = affine.max affine_map<(d0) -> (d0 - 16, d0 - 16, (-d0) ceildiv 128 + 4, d0 - 16)>(%c15)
        %280 = math.copysign %0, %16 : tensor<6x6xf32>
        %281 = arith.mulf %cst_7, %cst_5 : f32
        %282 = bufferization.clone %94 : memref<10xi64> to memref<10xi64>
        %283 = bufferization.to_tensor %alloc_23 : memref<10xi1>
        %284 = vector.bitcast %183 : vector<6xi1> to vector<6xi1>
        %285 = vector.broadcast %c3 : index to vector<1xindex>
        %286 = vector.broadcast %true_30 : i1 to vector<1xi1>
        vector.scatter %alloc_8[%c9] [%285], %286, %286 : memref<10xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %cst_58 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_58 : f32
      }
    %205 = index.sizeof
    %206 = math.absf %cst_0 : f32
    %expanded_47 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<10x11x10xi32> into tensor<10x11x10x1xi32>
    %inserted_48 = tensor.insert %c1924632301_i32 into %14[%c0, %c8, %c2] : tensor<10x11x10xi32>
    %207 = math.rsqrt %expanded_39 : tensor<6x6x1xf32>
    %208 = arith.remf %171, %cst_41 : f32
    %209 = arith.subi %c333937332_i32, %c512582377_i32 : i32
    %210 = math.atan2 %cst_3, %cst_2 : f32
    %211 = index.floordivs %c3, %c5
    %212 = vector.create_mask %c2, %170, %185 : vector<10x11x10xi1>
    %213 = vector.broadcast %cst_24 : f32 to vector<11x10x11x10xf32>
    %214 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %103, %98, %213 : vector<10x11x10xf32>, vector<10x11x10xf32> into vector<11x10x11x10xf32>
    %215 = arith.remsi %c-3307_i16, %c18725_i16 : i16
    %216 = vector.reduction <xor>, %118 : vector<10xi1> into i1
    %217 = arith.shrui %c1565606134_i64, %c1565606134_i64 : i64
    %218 = memref.alloca_scope  -> (i1) {
      %258 = math.round %collapsed_44 : tensor<36xf32>
      %259 = math.roundeven %cst_7 : f32
      %260 = index.add %83, %c0
      %261 = vector.splat %c0 : vector<10xindex>
      %262 = math.exp %9 : tensor<6x6xf32>
      %263 = vector.broadcast %cst : f16 to vector<1xf16>
      %264 = vector.insert %263, %79 [6] : vector<1xf16> into vector<10x1xf16>
      %265 = math.ipowi %13, %13 : tensor<10x1xi16>
      %266 = tensor.empty() : tensor<1x6xf32>
      %267 = tensor.empty() : tensor<10x6xf32>
      %268 = linalg.matmul ins(%splat, %266 : tensor<10x1xf32>, tensor<1x6xf32>) outs(%267 : tensor<10x6xf32>) -> tensor<10x6xf32>
      %269 = arith.mulf %cst_2, %cst_3 : f32
      %270 = vector.broadcast %c1565606134_i64 : i64 to vector<6x6xi64>
      %271 = vector.outerproduct %182, %182, %270 {kind = #vector.kind<minui>} : vector<6xi64>, vector<6xi64>
      %272 = index.divs %c3, %65
      %273 = arith.ori %c1565606134_i64, %c1565606134_i64 : i64
      vector.print %118 : vector<10xi1>
      %274 = index.divs %27, %c8
      %275 = index.sizeof
      %276 = math.sqrt %cst_0 : f32
      %alloca_55 = memref.alloca() : memref<10x1xi32>
      %277 = vector.broadcast %c-3307_i16 : i16 to vector<11x11xi16>
      %278 = vector.outerproduct %107, %55, %277 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
      %279 = math.ceil %cst_24 : f32
      %280 = vector.broadcast %c-24114_i16 : i16 to vector<4x4xi16>
      %281 = vector.outerproduct %73, %115, %280 {kind = #vector.kind<minsi>} : vector<4xi16>, vector<4xi16>
      %282 = math.atan2 %16, %9 : tensor<6x6xf32>
      %283 = index.castu %c6 : index to i32
      %284 = tensor.empty() : tensor<10x11x10xf32>
      %mapped_56 = linalg.map ins(%alloc_20, %alloc_20 : memref<10x11x10xf32>, memref<10x11x10xf32>) outs(%284 : tensor<10x11x10xf32>)
        (%in: f32, %in_57: f32) {
          %293 = math.tanh %cst_36 : f16
          %294 = bufferization.clone %alloc : memref<6x6xi16> to memref<6x6xi16>
          %295 = math.rsqrt %267 : tensor<10x6xf32>
          %296 = arith.maxf %cst_36, %extracted : f16
          %297 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
          %298 = index.maxu %68, %203
          %299 = math.rsqrt %171 : f32
          %300 = math.exp %reduced : tensor<f16>
          %301 = index.mul %59, %211
          %302 = bufferization.to_memref %15 : memref<10xf32>
          %303 = arith.remf %extracted, %extracted : f16
          %304 = bufferization.to_tensor %alloc_20 : memref<10x11x10xf32>
          %305 = bufferization.clone %alloc_23 : memref<10xi1> to memref<10xi1>
          %306 = math.absf %7 : tensor<10x1xf32>
          %307 = vector.bitcast %107 : vector<11xi16> to vector<11xi16>
          %308 = math.exp %11 : tensor<6x6xf16>
          %309 = arith.addf %cst_6, %in : f32
          %310 = math.absi %c-24114_i16 : i16
          %311 = math.rsqrt %2 : tensor<10xf32>
          %312 = vector.flat_transpose %145 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
          %313 = arith.floordivsi %c333937332_i32, %c512582377_i32 : i32
          %314 = math.ipowi %c512582377_i32, %c512582377_i32 : i32
          %315 = index.casts %c14 : index to i32
          %316 = arith.remf %cst_3, %cst_7 : f32
          %317 = math.exp2 %3 : tensor<6x6xf16>
          %318 = memref.atomic_rmw maxf %cst, %alloc_18[%c1, %c0] : (f16, memref<10x1xf16>) -> f16
          %319 = affine.apply affine_map<(d0) -> ((d0 + 2) * -32)>(%c12)
          %c1_i32 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %320 = vector.transfer_read %4[%c1, %c10, %c13], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<10x11x10xi32>, vector<11x6xi32>
          %cast = tensor.cast %expanded_38 : tensor<10x1x1xi16> to tensor<?x?x?xi16>
          %321 = arith.mulf %cst_7, %cst_2 : f32
          %322 = arith.mulf %cst_1, %cst_1 : f16
          %323 = index.castu %extracted_35 : i1 to index
          %cst_58 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_58 : f32
        }
      %285 = math.absf %16 : tensor<6x6xf32>
      %286 = scf.index_switch %c13 -> index 
      case 1 {
        %293 = arith.ori %c333937332_i32, %c1924632301_i32 : i32
        %294 = index.floordivs %39, %59
        memref.store %c-24114_i16, %alloc[%c0, %c2] : memref<6x6xi16>
        %295 = arith.maxui %c512582377_i32, %extracted_31 : i32
        %296 = math.exp %267 : tensor<10x6xf32>
        %297 = math.exp2 %cst : f16
        %298 = arith.remf %cst_4, %cst_4 : f16
        %299 = bufferization.clone %alloc_8 : memref<10xi1> to memref<10xi1>
        %300 = affine.max affine_map<(d0) -> (d0, d0 mod 32, (d0 floordiv 16 - 8) ceildiv 4, d0)>(%c2)
        %301 = arith.maxui %c-3307_i16, %43 : i16
        %302 = math.expm1 %204 : tensor<6x6xf32>
        %303 = math.round %cst_4 : f16
        memref.store %extracted, %alloc_21[%c1, %c2, %c0] : memref<10x11x10xf16>
        %304 = math.log %17 : tensor<6x6xf32>
        %305 = memref.realloc %alloc_8 : memref<10xi1> to memref<11xi1>
        affine.store %true_30, %299[%c13] : memref<10xi1>
        scf.yield %65 : index
      }
      case 2 {
        %293 = arith.andi %extracted_31, %extracted_31 : i32
        %alloc_57 = memref.alloc() : memref<10x11x10xi16>
        %294 = arith.cmpi uge, %c512582377_i32, %c1924632301_i32 : i32
        %295 = index.maxu %275, %185
        %296 = math.roundeven %cst_4 : f16
        %297 = memref.atomic_rmw mulf %cst, %alloc_18[%c8, %c0] : (f16, memref<10x1xf16>) -> f16
        %298 = arith.floordivsi %c-3307_i16, %43 : i16
        %299 = bufferization.to_tensor %alloc_16 : memref<10x1xf16>
        %rank_58 = tensor.rank %11 : tensor<6x6xf16>
        %300 = arith.xori %c-24114_i16, %43 : i16
        %301 = vector.broadcast %c-24114_i16 : i16 to vector<11x11xi16>
        %302 = vector.outerproduct %55, %55, %301 {kind = #vector.kind<xor>} : vector<11xi16>, vector<11xi16>
        %303 = math.absf %cst : f16
        %304 = math.cos %cst_7 : f32
        %305 = index.maxu %c4, %185
        %dest_59, %accumulated_value_60 = vector.scan <xor>, %112, %118 {inclusive = false, reduction_dim = 1 : i64} : vector<10x1xi1>, vector<10xi1>
        %306 = vector.broadcast %cst_5 : f32 to vector<10x1xf32>
        %307 = vector.fma %306, %306, %306 : vector<10x1xf32>
        scf.yield %39 : index
      }
      case 3 {
        %293 = bufferization.clone %alloc : memref<6x6xi16> to memref<6x6xi16>
        %294 = math.cttz %collapsed : tensor<36xi1>
        %295 = memref.atomic_rmw maxs %c-3307_i16, %alloc[%c4, %c1] : (i16, memref<6x6xi16>) -> i16
        %296 = index.add %c7, %c14
        memref.assume_alignment %32, 16 : memref<6x6xi32>
        %297 = math.powf %cst_3, %cst_6 : f32
        %298 = index.castu %43 : i16 to index
        %299 = math.tanh %23 : tensor<f32>
        %300 = vector.insertelement %43, %115[%298 : index] : vector<4xi16>
        %inserted_57 = tensor.insert %cst into %11[%c0, %c1] : tensor<6x6xf16>
        %301 = memref.atomic_rmw minf %cst_4, %alloc_19[%c0, %c0] : (f16, memref<10x1xf16>) -> f16
        %c388302961_i64 = arith.constant 388302961 : i64
        %302 = memref.atomic_rmw mins %c18725_i16, %alloc[%c2, %c5] : (i16, memref<6x6xi16>) -> i16
        %303 = index.ceildivs %260, %c1
        %304 = bufferization.to_tensor %alloc_22 : memref<6x6xf32>
        %305 = vector.reduction <minf>, %145 : vector<10xf32> into f32
        scf.yield %298 : index
      }
      case 4 {
        %293 = vector.reduction <or>, %84 : vector<11xi16> into i16
        %294 = vector.broadcast %c18725_i16 : i16 to vector<4x4xi16>
        %295 = vector.outerproduct %115, %115, %294 {kind = #vector.kind<minsi>} : vector<4xi16>, vector<4xi16>
        %296 = math.absf %16 : tensor<6x6xf32>
        %297 = math.copysign %9, %0 : tensor<6x6xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %115, %115, %43 : vector<4xi16>, vector<4xi16> into i16
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %103, %154 {inclusive = false, reduction_dim = 0 : i64} : vector<10x11x10xf32>, vector<11x10xf32>
        %299 = math.log2 %15 : tensor<10xf32>
        %300 = math.log %reduced : tensor<f16>
        vector.print %212 : vector<10x11x10xi1>
        %301 = arith.floordivsi %c-24114_i16, %43 : i16
        %302 = index.castu %c2 : index to i32
        memref.assume_alignment %alloc_19, 2 : memref<10x1xf16>
        %303 = math.round %cst_7 : f32
        %304 = memref.load %alloc_16[%c9, %c0] : memref<10x1xf16>
        %305 = arith.addi %c-24114_i16, %c-24114_i16 : i16
        %306 = vector.create_mask %201, %274, %c5 : vector<10x11x10xi1>
        scf.yield %272 : index
      }
      default {
        %293 = math.expm1 %0 : tensor<6x6xf32>
        %294 = arith.shli %c-24114_i16, %c-24114_i16 : i16
        %295 = vector.flat_transpose %183 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %296 = arith.maxui %c512582377_i32, %extracted_31 : i32
        %297 = affine.apply affine_map<(d0, d1) -> (-d1 - d0)>(%c11, %144)
        %extracted_57 = tensor.extract %0[%c1, %c0] : tensor<6x6xf32>
        %298 = math.sqrt %7 : tensor<10x1xf32>
        %299 = index.sizeof
        %300 = bufferization.to_memref %11 : memref<6x6xf16>
        %301 = arith.cmpi sge, %43, %c-3307_i16 : i16
        %alloc_58 = memref.alloc() : memref<10x11x10xi16>
        %302 = index.maxs %205, %66
        %false = arith.constant false
        %303 = vector.transfer_read %alloc_8[%302], %false : memref<10xi1>, vector<i1>
        %304 = vector.flat_transpose %84 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %305 = math.ceil %7 : tensor<10x1xf32>
        %306 = index.maxu %275, %275
        scf.yield %c0 : index
      }
      %287 = arith.remf %cst_41, %cst_24 : f32
      %288 = index.ceildivs %c4, %c5
      memref.copy %alloc_22, %alloc_9 : memref<6x6xf32> to memref<6x6xf32>
      %289 = math.expm1 %17 : tensor<6x6xf32>
      %290 = arith.minui %extracted_35, %true_40 : i1
      %291 = math.absf %64 : tensor<6x6xf32>
      %292 = math.exp2 %0 : tensor<6x6xf32>
      memref.alloca_scope.return %extracted_35 : i1
    }
    %219 = math.fma %expanded_39, %expanded_39, %expanded_39 : tensor<6x6x1xf32>
    %220 = vector.flat_transpose %115 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
    %221 = vector.extract %104[8] : vector<10x11x10xf32>
    %222 = vector.insert %cst_5, %145 [3] : f32 into vector<10xf32>
    %223 = index.castu %201 : index to i32
    %rank = tensor.rank %5 : tensor<10x1xi32>
    %224 = math.absi %10 : tensor<6x6xi32>
    %225 = arith.addi %extracted_35, %true_40 : i1
    %226 = bufferization.to_tensor %alloc_20 : memref<10x11x10xf32>
    %227 = math.ipowi %218, %extracted_35 : i1
    %228 = arith.xori %218, %true_30 : i1
    %229 = math.rsqrt %3 : tensor<6x6xf16>
    %230 = arith.cmpi eq, %218, %218 : i1
    %231 = affine.if affine_set<(d0, d1) : (0 >= 0, d0 >= 0, -d0 == 0, (d0 * 2) mod 8 == 0)>(%c4, %c2) -> f32 {
      %alloc_55 = memref.alloc() : memref<6x6xi64>
      %258 = vector.broadcast %c1565606134_i64 : i64 to vector<10xi64>
      %259 = vector.broadcast %c1924632301_i32 : i32 to vector<10xi32>
      %260 = vector.gather %alloc_55[%27, %153] [%259], %118, %258 : memref<6x6xi64>, vector<10xi32>, vector<10xi1>, vector<10xi64> into vector<10xi64>
      %261 = arith.divui %c-3307_i16, %c18725_i16 : i16
      %262 = arith.minui %c18725_i16, %c-3307_i16 : i16
      %263 = tensor.empty(%59, %c10) : tensor<?x?xi16>
      %264 = math.tan %23 : tensor<f32>
      %265 = memref.atomic_rmw addi %c512582377_i32, %alloc_15[%c0, %c0] : (i32, memref<6x6xi32>) -> i32
      %266 = scf.index_switch %c2 -> memref<10xi1> 
      case 1 {
        %268 = math.cttz %true_30 : i1
        %269 = arith.floordivsi %extracted_31, %c512582377_i32 : i32
        %270 = tensor.empty() : tensor<10xi64>
        %271 = arith.floordivsi %c-24114_i16, %c18725_i16 : i16
        %272 = arith.ori %43, %c-3307_i16 : i16
        %273 = math.rsqrt %11 : tensor<6x6xf16>
        %alloc_56 = memref.alloc() : memref<6x6xf32>
        %inserted_57 = tensor.insert %cst_6 into %64[%c4, %c1] : tensor<6x6xf32>
        %274 = arith.floordivsi %c1565606134_i64, %c1565606134_i64 : i64
        %275 = memref.load %alloc_21[%c5, %c4, %c9] : memref<10x11x10xf16>
        %276 = index.castu %c9 : index to i32
        %277 = arith.remui %true_40, %true_30 : i1
        memref.assume_alignment %alloc_8, 1 : memref<10xi1>
        %rank_58 = tensor.rank %7 : tensor<10x1xf32>
        %278 = vector.splat %cst_7 : vector<10x1xf32>
        %279 = math.expm1 %cst_1 : f16
        scf.yield %alloc_23 : memref<10xi1>
      }
      case 2 {
        %268 = arith.maxui %c1565606134_i64, %c1565606134_i64 : i64
        %269 = arith.xori %true_30, %true_40 : i1
        %270 = arith.maxui %c-3307_i16, %c-24114_i16 : i16
        %271 = math.ctpop %c333937332_i32 : i32
        %272 = index.floordivs %c11, %c14
        %alloc_56 = memref.alloc() : memref<1x6xf32>
        %273 = tensor.empty() : tensor<10x6xf32>
        %274 = linalg.matmul ins(%7, %alloc_56 : tensor<10x1xf32>, memref<1x6xf32>) outs(%273 : tensor<10x6xf32>) -> tensor<10x6xf32>
        %splat_57 = tensor.splat %c333937332_i32 : tensor<10x1xi32>
        memref.assume_alignment %alloc_8, 4 : memref<10xi1>
        %275 = arith.floordivsi %c-24114_i16, %c-24114_i16 : i16
        %276 = math.tan %23 : tensor<f32>
        %277 = vector.broadcast %cst_24 : f32 to vector<10xf32>
        %278 = vector.fma %277, %277, %158 : vector<10xf32>
        %279 = vector.insertelement %cst_41, %145[%c3 : index] : vector<10xf32>
        %280 = arith.addi %c1565606134_i64, %c1565606134_i64 : i64
        %281 = index.floordivs %28, %c0
        %282 = vector.broadcast %cst_3 : f32 to vector<10xf32>
        %extracted_58 = tensor.extract %17[%c2, %c5] : tensor<6x6xf32>
        scf.yield %alloc_8 : memref<10xi1>
      }
      case 3 {
        %268 = math.atan2 %reduced, %18 : tensor<f16>
        %269 = index.ceildivs %67, %164
        %270 = affine.load %alloc_14[%c9, %c15, %c10] : memref<10x11x10xf16>
        %271 = arith.addi %c512582377_i32, %c1924632301_i32 : i32
        %272 = math.tan %cst_0 : f32
        %273 = vector.insert %c18725_i16, %107 [5] : i16 into vector<11xi16>
        %274 = memref.atomic_rmw addf %cst_36, %alloc_18[%c3, %c0] : (f16, memref<10x1xf16>) -> f16
        %275 = bufferization.clone %alloc_21 : memref<10x11x10xf16> to memref<10x11x10xf16>
        %276 = math.ceil %171 : f32
        memref.store %cst, %alloc_19[%c8, %c0] : memref<10x1xf16>
        %277 = arith.maxui %c333937332_i32, %c512582377_i32 : i32
        %278 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 mod 2) * 4 - 32)>(%42, %185, %89, %c13)
        %279 = arith.maxf %270, %cst : f16
        %280 = arith.ceildivsi %c-3307_i16, %c-24114_i16 : i16
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_56 = arith.constant 0 : i16
        %281 = vector.transfer_read %alloc[%193, %144], %c0_i16_56 : memref<6x6xi16>, vector<i16>
        %282 = bufferization.clone %32 : memref<6x6xi32> to memref<6x6xi32>
        scf.yield %alloc_8 : memref<10xi1>
      }
      default {
        affine.store %171, %alloc_20[%c9, %c6, %c12] : memref<10x11x10xf32>
        %268 = arith.shli %c18725_i16, %c-3307_i16 : i16
        %c0_i64 = arith.constant 0 : i64
        %269 = vector.transfer_read %110[%c15], %c0_i64 : tensor<10xi64>, vector<i64>
        %270 = vector.broadcast %true_40 : i1 to vector<11x10xi1>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %118, %212, %270 : vector<10xi1>, vector<10x11x10xi1> into vector<11x10xi1>
        %272 = vector.reduction <maxui>, %259 : vector<10xi32> into i32
        %273 = arith.ceildivsi %43, %43 : i16
        %274 = math.exp %collapsed_44 : tensor<36xf32>
        %275 = math.expm1 %171 : f32
        %276 = arith.minsi %true_40, %extracted_35 : i1
        %277 = bufferization.to_tensor %alloc_10 : memref<10x11x10xi32>
        %expanded_56 = tensor.expand_shape %12 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %278 = arith.addf %cst, %cst_1 : f16
        %279 = arith.xori %c-24114_i16, %43 : i16
        %280 = tensor.empty(%57) : tensor<?x1xi1>
        %extracted_57 = tensor.extract %204[%c5, %c4] : tensor<6x6xf32>
        %281 = vector.multi_reduction <maxf>, %158, %cst_2 [0] : vector<10xf32> to f32
        scf.yield %alloc_8 : memref<10xi1>
      }
      %267 = arith.divui %c512582377_i32, %c512582377_i32 : i32
      affine.yield %cst_0 : f32
    } else {
      %258 = arith.ceildivsi %c-24114_i16, %c-3307_i16 : i16
      %259 = arith.shli %c-24114_i16, %c-3307_i16 : i16
      %c0_i32 = arith.constant 0 : i32
      %260 = vector.transfer_read %5[%c2, %211], %c0_i32 : tensor<10x1xi32>, vector<i32>
      %261 = math.sqrt %collapsed_44 : tensor<36xf32>
      %262 = arith.addi %c0_i32, %c333937332_i32 : i32
      %263 = vector.bitcast %154 : vector<11x10xf32> to vector<11x10xf32>
      %264 = index.ceildivs %161, %c13
      memref.store %43, %alloc_13[%c6, %c0] : memref<10x1xi16>
      affine.yield %cst_24 : f32
    }
    %232 = index.floordivs %193, %65
    %expanded_49 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<10x1xi16> into tensor<10x1x1xi16>
    %233 = vector.broadcast %cst_41 : f32 to vector<10x11x10xf32>
    %234 = vector.fma %233, %114, %233 : vector<10x11x10xf32>
    %235 = math.round %cst_3 : f32
    %236 = vector.bitcast %73 : vector<4xi16> to vector<4xi16>
    %237 = memref.load %alloc_13[%c9, %c0] : memref<10x1xi16>
    %extracted_50 = tensor.extract %6[%c4, %c4] : tensor<6x6xi1>
    %238 = math.rsqrt %7 : tensor<10x1xf32>
    %239 = affine.load %alloc_22[%c8, %c11] : memref<6x6xf32>
    %240 = vector.broadcast %cst_0 : f32 to vector<10xf32>
    %241 = math.round %cst_24 : f32
    %242 = arith.remsi %c-24114_i16, %c-3307_i16 : i16
    %243 = arith.xori %true_30, %true_30 : i1
    %244 = memref.alloca_scope  -> (i1) {
      %258 = arith.shli %c-3307_i16, %c18725_i16 : i16
      %259 = math.powf %7, %7 : tensor<10x1xf32>
      %260 = vector.create_mask %67, %232 : vector<6x6xi1>
      %261 = vector.insertelement %true_40, %183[%c15 : index] : vector<6xi1>
      %262 = arith.xori %c18725_i16, %c18725_i16 : i16
      %alloc_55 = memref.alloc() : memref<10x11x10xi16>
      %263 = vector.broadcast %c-3307_i16 : i16 to vector<6x6xi16>
      %264 = vector.broadcast %c512582377_i32 : i32 to vector<6x6xi32>
      %265 = vector.gather %alloc_55[%c3, %67, %83] [%264], %260, %263 : memref<10x11x10xi16>, vector<6x6xi32>, vector<6x6xi1>, vector<6x6xi16> into vector<6x6xi16>
      %266 = bufferization.to_tensor %alloc_20 : memref<10x11x10xf32>
      %267 = arith.floordivsi %c512582377_i32, %c1924632301_i32 : i32
      %splat_56 = tensor.splat %cst_41 : tensor<10xf32>
      %268 = bufferization.clone %alloc_13 : memref<10x1xi16> to memref<10x1xi16>
      %269 = arith.remf %cst_5, %cst_5 : f32
      %270 = arith.maxf %239, %171 : f32
      %271 = arith.shli %218, %218 : i1
      %272 = math.rsqrt %11 : tensor<6x6xf16>
      affine.store %c333937332_i32, %32[%c15, %c14] : memref<6x6xi32>
      %273 = math.copysign %171, %cst_5 : f32
      %274 = arith.divf %extracted, %cst_4 : f16
      %275 = affine.apply affine_map<(d0) -> ((d0 + 2) * -32)>(%164)
      %276 = arith.andi %extracted_35, %extracted_50 : i1
      %277 = vector.create_mask %39, %28, %c6 : vector<10x11x10xi1>
      %278 = math.fma %204, %16, %204 : tensor<6x6xf32>
      %279 = vector.load %32[%c5, %c5] : memref<6x6xi32>, vector<10x11x10xi32>
      %280 = math.exp2 %splat : tensor<10x1xf32>
      %cast = tensor.cast %3 : tensor<6x6xf16> to tensor<?x?xf16>
      %281 = math.cttz %collapsed : tensor<36xi1>
      %282 = bufferization.to_tensor %32 : memref<6x6xi32>
      %283 = arith.minsi %c18725_i16, %c-24114_i16 : i16
      %284 = index.maxu %c6, %161
      %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 8)>(%c10, %c0, %39, %67)
      %false = index.bool.constant false
      memref.copy %alloc_13, %268 : memref<10x1xi16> to memref<10x1xi16>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_38 : tensor<10x1x1xi16>) {
      ^bb0(%out: i16):
        %287 = arith.divui %extracted_50, %true_40 : i1
        %288 = arith.minf %cst_7, %cst_6 : f32
        %289 = math.tan %cst_6 : f32
        %290 = arith.xori %c18725_i16, %out : i16
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 * 16) floordiv 128, (d1 floordiv 32) floordiv 64)>(%c6, %232, %193, %193)
        %292 = math.ceil %3 : tensor<6x6xf16>
        %293 = arith.cmpi slt, %true_40, %true_30 : i1
        %collapsed_57 = tensor.collapse_shape %38 [[0, 1]] : tensor<10x1xf16> into tensor<10xf16>
        %294 = arith.shli %c1565606134_i64, %c1565606134_i64 : i64
        %295 = memref.realloc %alloc_8 : memref<10xi1> to memref<6xi1>
        %296 = arith.divsi %c-24114_i16, %c-24114_i16 : i16
        memref.store %cst, %alloc_19[%c1, %c0] : memref<10x1xf16>
        %297 = math.exp2 %17 : tensor<6x6xf32>
        %298 = memref.atomic_rmw assign %cst_7, %alloc_20[%c9, %c2, %c0] : (f32, memref<10x11x10xf32>) -> f32
        %299 = vector.broadcast %out : i16 to vector<11x11xi16>
        %300 = vector.outerproduct %84, %108, %299 {kind = #vector.kind<and>} : vector<11xi16>, vector<11xi16>
        %alloc_58 = memref.alloc() : memref<10xf16>
        %301 = vector.create_mask %c13, %c4 : vector<6x6xi1>
        %302 = arith.divf %cst_0, %239 : f32
        %303 = math.tanh %cst_1 : f16
        %304 = math.round %collapsed_44 : tensor<36xf32>
        %305 = math.absf %from_elements : tensor<10x11x10xf16>
        %306 = arith.xori %c18725_i16, %c-3307_i16 : i16
        %307 = index.maxu %c8, %c12
        %308 = arith.remui %43, %43 : i16
        %309 = math.exp2 %16 : tensor<6x6xf32>
        %310 = index.sizeof
        %alloca_59 = memref.alloca() : memref<6x6xi64>
        %311 = math.sqrt %16 : tensor<6x6xf32>
        %312 = vector.flat_transpose %118 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %313 = math.exp2 %cst_0 : f32
        %314 = index.casts %66 : index to i32
        %315 = index.add %82, %89
        linalg.yield %c18725_i16 : i16
      } -> tensor<10x1x1xi16>
      memref.alloca_scope.return %extracted_35 : i1
    }
    %245 = math.expm1 %38 : tensor<10x1xf16>
    %246 = index.castu %extracted_50 : i1 to index
    %247 = vector.splat %43 : vector<6x6xi16>
    %248 = arith.minui %true_30, %244 : i1
    %249 = index.floordivs %c9, %193
    %250 = vector.extract %73[3] : vector<4xi16>
    %251 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%161, %201, %82)
    %252 = arith.ceildivsi %true_40, %true_30 : i1
    memref.assume_alignment %alloc_20, 16 : memref<10x11x10xf32>
    vector.print %115 : vector<4xi16>
    %253 = math.ipowi %8, %8 : tensor<10xi64>
    %254 = arith.maxui %c-24114_i16, %c18725_i16 : i16
    %dest_51, %accumulated_value_52 = vector.scan <minf>, %233, %221 {inclusive = false, reduction_dim = 0 : i64} : vector<10x11x10xf32>, vector<11x10xf32>
    %255 = tensor.empty() : tensor<10x1xi32>
    %256 = linalg.copy ins(%5 : tensor<10x1xi32>) outs(%255 : tensor<10x1xi32>) -> tensor<10x1xi32>
    %alloc_53 = memref.alloc() : memref<10x10x11xf16>
    linalg.transpose ins(%alloc_21 : memref<10x11x10xf16>) outs(%alloc_53 : memref<10x10x11xf16>) permutation = [2, 0, 1] 
    %alloc_54 = memref.alloc() : memref<i64>
    linalg.reduce ins(%8 : tensor<10xi64>) outs(%alloc_54 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %258 = arith.maxui %extracted_31, %extracted_31 : i32
        %259 = index.add %c12, %185
        %260 = math.ctlz %extracted_35 : i1
        %inserted_55 = tensor.insert %c512582377_i32 into %expanded[%c1, %c0, %c0] : tensor<10x1x1xi32>
        %true_56 = arith.constant true
        %261 = vector.transfer_read %12[%83], %true_56 : tensor<10xi1>, vector<i1>
        %262 = vector.create_mask %c14, %57, %50 : vector<10x11x10xi1>
        %263 = vector.create_mask %259 : vector<10xi1>
        %264 = math.exp2 %51 : tensor<10x11x10xf16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg0) = (%59) to (%42) step (%c2) {
      %258 = vector.insert %c-24114_i16, %84 [10] : i16 into vector<11xi16>
      %259 = arith.remf %239, %171 : f32
      %260 = vector.broadcast %c-24114_i16 : i16 to vector<10xi16>
      %261 = vector.broadcast %c1924632301_i32 : i32 to vector<10xi32>
      %262 = vector.gather %alloc_13[%28, %c13] [%261], %118, %260 : memref<10x1xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      %263 = memref.realloc %alloc_8 : memref<10xi1> to memref<11xi1>
      %264 = vector.broadcast %cst_3 : f32 to vector<10xf32>
      %265 = vector.fma %264, %240, %145 : vector<10xf32>
      %266 = tensor.empty() : tensor<11x10xi32>
      %267 = tensor.empty() : tensor<10x11xi32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%266, %267 : tensor<11x10xi32>, tensor<10x11xi32>) outs(%4 : tensor<10x11x10xi32>) {
      ^bb0(%in: i32, %in_56: i32, %out: i32):
        %277 = bufferization.to_tensor %alloc_13 : memref<10x1xi16>
        %278 = arith.shli %true_40, %218 : i1
        %279 = arith.remf %239, %171 : f32
        %280 = math.exp2 %22 : tensor<f32>
        %281 = arith.remui %c-24114_i16, %c-3307_i16 : i16
        %282 = math.rsqrt %11 : tensor<6x6xf16>
        %283 = math.atan2 %splat, %7 : tensor<10x1xf32>
        %284 = arith.divui %c512582377_i32, %in : i32
        %285 = math.rsqrt %17 : tensor<6x6xf32>
        %286 = arith.shli %244, %true_40 : i1
        %287 = memref.realloc %alloc_11 : memref<10xf32> to memref<6xf32>
        %alloca_57 = memref.alloca() : memref<10x1xf16>
        %288 = index.floordivs %89, %c11
        %289 = vector.broadcast %c1924632301_i32 : i32 to vector<6x6xi32>
        %290 = arith.shrsi %c1565606134_i64, %c1565606134_i64 : i64
        %291 = memref.atomic_rmw minf %extracted, %alloc_12[%c2, %c2] : (f16, memref<6x6xf16>) -> f16
        %292 = math.roundeven %9 : tensor<6x6xf32>
        %293 = math.expm1 %cst_3 : f32
        %294 = math.powf %cst_41, %cst_6 : f32
        %295 = arith.xori %extracted_35, %extracted_35 : i1
        %296 = bufferization.to_memref %9 : memref<6x6xf32>
        %297 = index.divs %c15, %42
        %298 = affine.load %alloc_23[%c5] : memref<10xi1>
        %299 = affine.load %alloc_8[%c14] : memref<10xi1>
        %300 = bufferization.clone %alloc_54 : memref<i64> to memref<i64>
        %301 = index.sizeof
        %302 = math.log2 %expanded_39 : tensor<6x6x1xf32>
        %303 = affine.load %alloc_13[%c1, %c6] : memref<10x1xi16>
        %304 = affine.load %alloc_12[%c15, %c4] : memref<6x6xf16>
        %305 = vector.broadcast %c-24114_i16 : i16 to vector<10xi16>
        %expanded_58 = tensor.expand_shape %from_elements [[0], [1], [2, 3]] : tensor<10x11x10xf16> into tensor<10x11x10x1xf16>
        %306 = bufferization.clone %alloc_9 : memref<6x6xf32> to memref<6x6xf32>
        linalg.yield %in : i32
      } -> tensor<10x11x10xi32>
      vector.print %158 : vector<10xf32>
      %269 = memref.atomic_rmw minf %cst_7, %alloc_20[%c4, %c7, %c4] : (f32, memref<10x11x10xf32>) -> f32
      %270 = bufferization.clone %alloc_8 : memref<10xi1> to memref<10xi1>
      %271 = index.mul %arg0, %42
      %272 = arith.xori %c-24114_i16, %43 : i16
      %273 = math.absi %110 : tensor<10xi64>
      %274 = math.absf %22 : tensor<f32>
      %inserted_55 = tensor.insert %cst_4 into %reduced[] : tensor<f16>
      %275 = index.floordivs %65, %c13
      %276 = arith.remui %extracted_35, %true_40 : i1
      scf.yield
    }
    %257 = affine.vector_load %alloc_53[%c15, %42, %153] : memref<10x10x11xf16>, vector<11xf16>
    affine.vector_store %73, %alloc[%201, %c0] : memref<6x6xi16>, vector<4xi16>
    vector.print %20 : vector<11xi16>
    vector.print %55 : vector<11xi16>
    vector.print %73 : vector<4xi16>
    vector.print %79 : vector<10x1xf16>
    vector.print %84 : vector<11xi16>
    vector.print %97 : vector<10x11x10xf32>
    vector.print %98 : vector<10x11x10xf32>
    vector.print %103 : vector<10x11x10xf32>
    vector.print %104 : vector<10x11x10xf32>
    vector.print %107 : vector<11xi16>
    vector.print %108 : vector<11xi16>
    vector.print %112 : vector<10x1xi1>
    vector.print %114 : vector<10x11x10xf32>
    vector.print %115 : vector<4xi16>
    vector.print %118 : vector<10xi1>
    vector.print %145 : vector<10xf32>
    vector.print %154 : vector<11x10xf32>
    vector.print %158 : vector<10xf32>
    vector.print %182 : vector<6xi64>
    vector.print %183 : vector<6xi1>
    vector.print %184 : vector<6xi64>
    vector.print %212 : vector<10x11x10xi1>
    vector.print %220 : vector<4xi16>
    vector.print %221 : vector<11x10xf32>
    vector.print %233 : vector<10x11x10xf32>
    vector.print %234 : vector<10x11x10xf32>
    vector.print %236 : vector<4xi16>
    vector.print %240 : vector<10xf32>
    vector.print %257 : vector<11xf16>
    vector.print %c1565606134_i64 : i64
    vector.print %c-3307_i16 : i16
    vector.print %c1924632301_i32 : i32
    vector.print %cst : f16
    vector.print %c-24114_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c18725_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c333937332_i32 : i32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %c512582377_i32 : i32
    vector.print %cst_6 : f32
    vector.print %cst_7 : f32
    vector.print %43 : i16
    vector.print %cst_24 : f32
    vector.print %extracted : f16
    vector.print %true_30 : i1
    vector.print %extracted_31 : i32
    vector.print %extracted_35 : i1
    vector.print %cst_36 : f16
    vector.print %171 : f32
    vector.print %true_40 : i1
    vector.print %cst_41 : f32
    vector.print %218 : i1
    vector.print %extracted_50 : i1
    vector.print %239 : f32
    vector.print %244 : i1
    return %c-3307_i16 : i16
  }
}
