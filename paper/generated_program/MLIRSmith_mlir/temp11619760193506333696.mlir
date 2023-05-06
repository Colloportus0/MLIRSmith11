module {
  func.func nested @func1() {
    %true = arith.constant true
    %c1934290139_i64 = arith.constant 1934290139 : i64
    %c978548887_i32 = arith.constant 978548887 : i32
    %c290053402_i32 = arith.constant 290053402 : i32
    %cst = arith.constant 2.844800e+04 : f16
    %c1413003870_i64 = arith.constant 1413003870 : i64
    %c31988_i16 = arith.constant 31988 : i16
    %c1928377050_i64 = arith.constant 1928377050 : i64
    %false = arith.constant false
    %cst_0 = arith.constant 5.673600e+04 : f16
    %c1109408564_i32 = arith.constant 1109408564 : i32
    %cst_1 = arith.constant 3.940000e+03 : f16
    %cst_2 = arith.constant 0x4E00971D : f32
    %c2078458034_i64 = arith.constant 2078458034 : i64
    %c1015113332_i64 = arith.constant 1015113332 : i64
    %c-14739_i16 = arith.constant -14739 : i16
    %0 = tensor.empty() : tensor<14x2xf32>
    %1 = tensor.empty() : tensor<14xf32>
    %2 = tensor.empty() : tensor<14x2xi64>
    %3 = tensor.empty() : tensor<14x14xf16>
    %4 = tensor.empty() : tensor<14x14xf16>
    %5 = tensor.empty() : tensor<14x2xf16>
    %6 = tensor.empty() : tensor<8xi64>
    %7 = tensor.empty() : tensor<14xf16>
    %8 = tensor.empty() : tensor<14x2xf16>
    %9 = tensor.empty() : tensor<14x14xi64>
    %10 = tensor.empty() : tensor<14xi16>
    %11 = tensor.empty() : tensor<8xi1>
    %12 = tensor.empty() : tensor<8xi1>
    %13 = tensor.empty() : tensor<14xf32>
    %14 = tensor.empty() : tensor<14x2xf16>
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
    %alloc = memref.alloc() : memref<14x14xi1>
    %alloc_3 = memref.alloc() : memref<14x14xi1>
    %alloc_4 = memref.alloc() : memref<14xf32>
    %alloc_5 = memref.alloc() : memref<14x14xi1>
    %alloc_6 = memref.alloc() : memref<14xf16>
    %alloc_7 = memref.alloc() : memref<14x14xi32>
    %alloc_8 = memref.alloc() : memref<14x14xi32>
    %alloc_9 = memref.alloc() : memref<14x2xi1>
    %alloc_10 = memref.alloc() : memref<14x14xi64>
    %alloc_11 = memref.alloc() : memref<14xi16>
    %alloc_12 = memref.alloc() : memref<8xf16>
    %alloc_13 = memref.alloc() : memref<14x14xf16>
    %alloc_14 = memref.alloc() : memref<14x2xi64>
    %alloc_15 = memref.alloc() : memref<14x2xf32>
    %alloc_16 = memref.alloc() : memref<14x2xi64>
    %alloc_17 = memref.alloc() : memref<14x14xf16>
    %16 = tensor.empty() : tensor<14x14xi1>
    %17 = linalg.copy ins(%15 : tensor<14x14xi1>) outs(%16 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %18 = tensor.empty() : tensor<2x14xf16>
    %transposed = linalg.transpose ins(%8 : tensor<14x2xf16>) outs(%18 : tensor<2x14xf16>) permutation = [1, 0] 
    %alloc_18 = memref.alloc() : memref<2xf16>
    linalg.reduce ins(%transposed : tensor<2x14xf16>) outs(%alloc_18 : memref<2xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %266 = affine.max affine_map<(d0, d1) -> (d0 - 64)>(%c14, %c3)
        %267 = arith.remf %cst_1, %cst_0 : f16
        %268 = vector.broadcast %false : i1 to vector<14x2xi1>
        %269 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
        %270 = vector.fma %269, %269, %269 : vector<14x14xf32>
        affine.for %arg0 = 0 to 104 {
        }
        %false_43 = index.bool.constant false
        %rank_44 = tensor.rank %3 : tensor<14x14xf16>
        %271 = vector.splat %c2 : vector<14xindex>
        %272 = math.log1p %5 : tensor<14x2xf16>
        %cst_45 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_45 : f16
      }
    scf.parallel (%arg0) = (%c3) to (%c9) step (%c12) {
      %alloc_43 = memref.alloc() : memref<14x14xi32>
      %266 = math.ctpop %c-14739_i16 : i16
      %267 = arith.floordivsi %c1934290139_i64, %c1934290139_i64 : i64
      %268 = math.absf %8 : tensor<14x2xf16>
      %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 16, d1, d0)>(%c3, %c5, %c6, %arg0)
      %270 = arith.addf %cst, %cst_1 : f16
      %alloca_44 = memref.alloca() : memref<14xi16>
      %271 = tensor.empty() : tensor<2x14xf16>
      %272 = linalg.matmul ins(%transposed, %4 : tensor<2x14xf16>, tensor<14x14xf16>) outs(%271 : tensor<2x14xf16>) -> tensor<2x14xf16>
      %273 = math.sqrt %13 : tensor<14xf32>
      memref.store %c1015113332_i64, %alloc_14[%c10, %c0] : memref<14x2xi64>
      %274 = math.cos %13 : tensor<14xf32>
      %275 = vector.broadcast %c-14739_i16 : i16 to vector<8xi16>
      %276 = vector.transpose %275, [0] : vector<8xi16> to vector<8xi16>
      %277 = memref.atomic_rmw mulf %cst_1, %alloc_12[%c4] : (f16, memref<8xf16>) -> f16
      %278 = vector.broadcast %true : i1 to vector<i1>
      %279 = vector.transfer_write %278, %12[%c13] : vector<i1>, tensor<8xi1>
      %280 = index.divs %269, %c9
      %281 = math.ctpop %c978548887_i32 : i32
      scf.yield
    }
    %19 = affine.vector_load %alloc_16[%c3, %c9] : memref<14x2xi64>, vector<8xi64>
    affine.vector_store %19, %alloc_16[%c10, %c13] : memref<14x2xi64>, vector<8xi64>
    %alloc_19 = memref.alloc() : memref<14xf32>
    %20 = tensor.empty() : tensor<f32>
    %21 = linalg.dot ins(%1, %alloc_19 : tensor<14xf32>, memref<14xf32>) outs(%20 : tensor<f32>) -> tensor<f32>
    %22 = vector.broadcast %cst : f16 to vector<f16>
    %23 = vector.transfer_write %22, %7[%c2] : vector<f16>, tensor<14xf16>
    memref.assume_alignment %alloc_16, 1 : memref<14x2xi64>
    %24 = math.tan %4 : tensor<14x14xf16>
    %25 = arith.cmpf ogt, %cst_2, %cst_2 : f32
    %26 = vector.extract_strided_slice %19 {offsets = [2], sizes = [3], strides = [1]} : vector<8xi64> to vector<3xi64>
    %27 = index.floordivs %c2, %c8
    affine.store %c31988_i16, %alloc_11[%c9] : memref<14xi16>
    %28 = arith.maxsi %c31988_i16, %c-14739_i16 : i16
    %29 = vector.create_mask %c3 : vector<14xi1>
    %30 = arith.shli %c290053402_i32, %c978548887_i32 : i32
    %31 = math.atan %8 : tensor<14x2xf16>
    %32 = arith.divui %c1934290139_i64, %c1413003870_i64 : i64
    %33 = affine.if affine_set<(d0, d1, d2) : (d1 == 0, d0 floordiv 8 + d1 >= 0, -d2 >= 0, -d2 == 0)>(%c7, %c1, %c13) -> i64 {
      %266 = math.absf %cst : f16
      %267 = math.roundeven %13 : tensor<14xf32>
      %268 = math.log10 %13 : tensor<14xf32>
      %269 = math.log2 %cst_0 : f16
      affine.store %false, %alloc_3[%c10, %c3] : memref<14x14xi1>
      %270 = index.casts %c5 : index to i32
      %271 = vector.broadcast %cst : f16 to vector<f16>
      %272 = vector.transfer_write %271, %3[%c10, %c6] : vector<f16>, tensor<14x14xf16>
      %273 = arith.xori %c978548887_i32, %c1109408564_i32 : i32
      affine.yield %c1015113332_i64 : i64
    } else {
      %c-3632_i16 = arith.constant -3632 : i16
      %266 = arith.muli %c-14739_i16, %c31988_i16 : i16
      %267 = vector.multi_reduction <xor>, %19, %19 [] : vector<8xi64> to vector<8xi64>
      %268 = vector.extract_strided_slice %26 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi64> to vector<3xi64>
      %269 = vector.insert %c1934290139_i64, %268 [0] : i64 into vector<3xi64>
      %270 = index.divs %c10, %c12
      %271 = math.ctlz %c1934290139_i64 : i64
      %272 = scf.while (%arg0 = %c1015113332_i64) : (i64) -> i64 {
        %273 = memref.atomic_rmw maxf %cst, %alloc_13[%c0, %c3] : (f16, memref<14x14xf16>) -> f16
        %274 = index.ceildivu %c11, %c14
        %275 = vector.transpose %19, [0] : vector<8xi64> to vector<8xi64>
        %276 = math.ctlz %c1015113332_i64 : i64
        %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<14x2xf16> into tensor<28xf16>
        %277 = index.floordivs %c10, %c11
        %false_43 = index.bool.constant false
        %alloc_44 = memref.alloc() : memref<14x2xi1>
        memref.copy %alloc_9, %alloc_44 : memref<14x2xi1> to memref<14x2xi1>
        scf.condition(%false) %c1413003870_i64 : i64
      } do {
      ^bb0(%arg0: i64):
        %273 = vector.multi_reduction <mul>, %26, %c1015113332_i64 [0] : vector<3xi64> to i64
        %274 = arith.ori %c1109408564_i32, %c290053402_i32 : i32
        %275 = index.ceildivu %c14, %c0
        %276 = arith.shli %c31988_i16, %c31988_i16 : i16
        %277 = index.divu %c2, %275
        affine.store %false, %alloc_5[%c11, %c1] : memref<14x14xi1>
        %278 = index.sizeof
        %279 = vector.broadcast %arg0 : i64 to vector<i64>
        vector.transfer_write %279, %alloc_10[%c3, %277] : vector<i64>, memref<14x14xi64>
        %280 = index.sub %c9, %c6
        %281 = vector.load %alloc_16[%c12, %c1] : memref<14x2xi64>, vector<14x2xi64>
        memref.assume_alignment %alloc_15, 1 : memref<14x2xf32>
        %282 = affine.load %alloc_16[%c9, %c12] : memref<14x2xi64>
        %283 = arith.maxf %cst_2, %cst_2 : f32
        %expanded_43 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<14x2xf16> into tensor<14x2x1xf16>
        %alloc_44 = memref.alloc() : memref<14x2xi1>
        memref.copy %alloc_9, %alloc_44 : memref<14x2xi1> to memref<14x2xi1>
        %284 = arith.shrui %c290053402_i32, %c978548887_i32 : i32
        scf.yield %c2078458034_i64 : i64
      }
      affine.yield %c1413003870_i64 : i64
    }
    %34 = arith.ceildivsi %c-14739_i16, %c-14739_i16 : i16
    %35 = index.ceildivs %c0, %c5
    %36 = arith.maxsi %c290053402_i32, %c290053402_i32 : i32
    %37 = arith.ori %true, %false : i1
    %expanded = tensor.expand_shape %1 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
    %38 = arith.maxf %cst_1, %cst_0 : f16
    %39 = arith.maxui %c290053402_i32, %c1109408564_i32 : i32
    %40 = arith.minf %cst, %cst : f16
    %41 = tensor.empty() : tensor<5x5x5xf32>
    %alloc_20 = memref.alloc() : memref<5xf32>
    %42 = tensor.empty() : tensor<5x5xf32>
    %43 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20, %alloc_20, %42 : memref<5xf32>, memref<5xf32>, tensor<5x5xf32>) outs(%41 : tensor<5x5x5xf32>) {
    ^bb0(%in: f32, %in_43: f32, %in_44: f32, %out: f32):
      %rank_45 = tensor.rank %11 : tensor<8xi1>
      %266 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<8xi64> to vector<1xi64>
      %from_elements = tensor.from_elements %cst_2, %in, %cst_2, %in_44, %in_44, %in, %in_43, %in_44 : tensor<8xf32>
      %267 = arith.muli %c978548887_i32, %c978548887_i32 : i32
      %268 = vector.shuffle %22, %22 [0, 1] : vector<f16>, vector<f16>
      %269 = math.roundeven %0 : tensor<14x2xf32>
      %270 = tensor.empty() : tensor<2xf16>
      %mapped = linalg.map ins(%alloc_18, %alloc_18 : memref<2xf16>, memref<2xf16>) outs(%270 : tensor<2xf16>)
        (%in_48: f16, %in_49: f16) {
          %297 = arith.divui %c1109408564_i32, %c1109408564_i32 : i32
          %298 = index.add %c15, %c1
          %299 = arith.divsi %c31988_i16, %c31988_i16 : i16
          %300 = vector.broadcast %c7 : index to vector<8xindex>
          %301 = vector.broadcast %true : i1 to vector<8xi1>
          %302 = vector.broadcast %c978548887_i32 : i32 to vector<8xi32>
          vector.scatter %alloc_7[%c0, %c5] [%300], %301, %302 : memref<14x14xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
          %303 = vector.insertelement %c1015113332_i64, %19[%c10 : index] : vector<8xi64>
          %304 = math.rsqrt %cst : f16
          %305 = arith.muli %c-14739_i16, %c-14739_i16 : i16
          %306 = arith.subi %true, %false : i1
          %307 = tensor.empty() : tensor<14xi32>
          %false_50 = index.bool.constant false
          %308 = vector.flat_transpose %266 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %309 = affine.apply affine_map<(d0) -> (-d0)>(%c5)
          %extracted_51 = tensor.extract %11[%c5] : tensor<8xi1>
          %310 = memref.realloc %alloc_6 : memref<14xf16> to memref<14xf16>
          %311 = arith.shrsi %c2078458034_i64, %c2078458034_i64 : i64
          %312 = vector.broadcast %c1413003870_i64 : i64 to vector<1x1xi64>
          %313 = vector.outerproduct %308, %308, %312 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
          %314 = tensor.empty() : tensor<8xi16>
          %315 = index.add %c2, %c0
          %true_52 = index.bool.constant true
          %316 = vector.insertelement %cst_0, %22[] : vector<f16>
          %317 = arith.negf %cst_1 : f16
          %318 = arith.minf %cst_0, %cst_0 : f16
          %319 = math.cttz %314 : tensor<8xi16>
          %320 = vector.broadcast %c2078458034_i64 : i64 to vector<1x1xi64>
          %321 = vector.outerproduct %266, %308, %320 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
          %322 = vector.flat_transpose %308 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %323 = vector.splat %c31988_i16 : vector<14xi16>
          %324 = arith.maxsi %false, %true_52 : i1
          %325 = vector.shuffle %19, %308 [1, 3, 8] : vector<8xi64>, vector<1xi64>
          %326 = index.mul %c9, %c1
          %327 = math.ceil %3 : tensor<14x14xf16>
          %328 = arith.shrsi %true, %false : i1
          %329 = arith.minf %out, %in : f32
          %cst_53 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_53 : f16
        }
      %271 = arith.shrui %c1934290139_i64, %c1934290139_i64 : i64
      %extracted_46 = tensor.extract %3[%c2, %c9] : tensor<14x14xf16>
      %272 = math.copysign %out, %in_44 : f32
      %273 = index.sub %c2, %c5
      %274 = vector.load %alloc_8[%c9, %c9] : memref<14x14xi32>, vector<8xi32>
      %275 = math.sqrt %in_44 : f32
      %276 = vector.broadcast %extracted_46 : f16 to vector<f16>
      %277 = vector.transfer_write %276, %3[%c11, %rank_45] : vector<f16>, tensor<14x14xf16>
      %278 = vector.broadcast %false : i1 to vector<14x14xi1>
      %279 = vector.outerproduct %29, %29, %278 {kind = #vector.kind<and>} : vector<14xi1>, vector<14xi1>
      %280 = arith.shli %c1934290139_i64, %c1015113332_i64 : i64
      %extracted_47 = tensor.extract %from_elements[%c4] : tensor<8xf32>
      %281 = arith.maxf %cst_1, %extracted_46 : f16
      %282 = arith.shli %false, %true : i1
      %283 = arith.ceildivsi %c2078458034_i64, %c1934290139_i64 : i64
      %284 = vector.broadcast %in_43 : f32 to vector<14x2xf32>
      %285 = vector.fma %284, %284, %284 : vector<14x2xf32>
      %286 = index.casts %c978548887_i32 : i32 to index
      %287 = math.roundeven %in_44 : f32
      %288 = tensor.empty() : tensor<2x8xf32>
      %289 = tensor.empty() : tensor<14x8xf32>
      %290 = linalg.matmul ins(%0, %288 : tensor<14x2xf32>, tensor<2x8xf32>) outs(%289 : tensor<14x8xf32>) -> tensor<14x8xf32>
      %c1921866727_i64 = arith.constant 1921866727 : i64
      scf.if %false {
        %297 = arith.muli %c1109408564_i32, %c1109408564_i32 : i32
        %298 = math.log1p %14 : tensor<14x2xf16>
        %299 = tensor.empty(%c7) : tensor<?xi1>
        %300 = arith.maxsi %c31988_i16, %c-14739_i16 : i16
        %301 = vector.broadcast %in : f32 to vector<2xf32>
        %dest, %accumulated_value = vector.scan <minf>, %285, %301 {inclusive = false, reduction_dim = 0 : i64} : vector<14x2xf32>, vector<2xf32>
        %302 = arith.remui %c-14739_i16, %c-14739_i16 : i16
        %303 = arith.ori %c31988_i16, %c-14739_i16 : i16
        %304 = arith.maxf %extracted_46, %cst_0 : f16
      }
      %291 = math.expm1 %cst : f16
      %292 = arith.shrsi %false, %false : i1
      %293 = math.floor %extracted_47 : f32
      %294 = math.ctlz %9 : tensor<14x14xi64>
      %295 = affine.min affine_map<(d0, d1, d2) -> (d2 * 64, d2)>(%rank_45, %286, %c2)
      %296 = math.ctpop %c1934290139_i64 : i64
      linalg.yield %in_43 : f32
    } -> tensor<5x5x5xf32>
    %44 = arith.muli %c978548887_i32, %c978548887_i32 : i32
    %45 = bufferization.clone %alloc_7 : memref<14x14xi32> to memref<14x14xi32>
    %46 = arith.cmpf ule, %cst_1, %cst_1 : f16
    scf.if %false {
      %266 = arith.muli %c-14739_i16, %c-14739_i16 : i16
      %267 = arith.divf %cst_1, %cst_1 : f16
      %false_43 = index.bool.constant false
      %268 = math.ctlz %c1413003870_i64 : i64
      %269 = arith.minsi %c-14739_i16, %c-14739_i16 : i16
      %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<14x2xf32> into tensor<28xf32>
      memref.store %cst_2, %alloc_19[%c3] : memref<14xf32>
      %270 = index.sub %c9, %c1
    } else {
      %266 = math.roundeven %18 : tensor<2x14xf16>
      %267 = vector.extract_strided_slice %19 {offsets = [6], sizes = [2], strides = [1]} : vector<8xi64> to vector<2xi64>
      %268 = arith.shrsi %c1928377050_i64, %c1413003870_i64 : i64
      %inserted_43 = tensor.insert %cst into %5[%c1, %c1] : tensor<14x2xf16>
      %269 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 4) mod 4, d1)>(%c8, %c5)
      %cast_44 = tensor.cast %11 : tensor<8xi1> to tensor<?xi1>
      %270 = math.cttz %9 : tensor<14x14xi64>
      %271 = arith.remsi %c1934290139_i64, %c1413003870_i64 : i64
    }
    %47 = vector.broadcast %cst_2 : f32 to vector<8xf32>
    %48 = vector.broadcast %true : i1 to vector<8xi1>
    %49 = vector.maskedload %alloc_15[%c9, %c0], %48, %47 : memref<14x2xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
    %50 = vector.shuffle %49, %49 [0, 3, 4, 7, 9, 15] : vector<8xf32>, vector<8xf32>
    %extracted = tensor.extract %8[%c5, %c1] : tensor<14x2xf16>
    %generated = tensor.generate %c3 {
    ^bb0(%arg0: index):
      %266 = math.fma %cst_0, %cst_1, %cst : f16
      %267 = vector.insert %cst_2, %49 [5] : f32 into vector<8xf32>
      %268 = index.casts %c-14739_i16 : i16 to index
      %269 = arith.cmpf ule, %cst_0, %extracted : f16
      tensor.yield %extracted : f16
    } : tensor<?xf16>
    %51 = arith.maxsi %c1015113332_i64, %c1934290139_i64 : i64
    %52 = vector.flat_transpose %47 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %53 = arith.cmpi eq, %c2078458034_i64, %c2078458034_i64 : i64
    %54 = math.ctpop %9 : tensor<14x14xi64>
    %55 = math.exp %1 : tensor<14xf32>
    %generated_21 = tensor.generate %c13 {
    ^bb0(%arg0: index, %arg1: index):
      %266 = vector.bitcast %47 : vector<8xf32> to vector<8xf32>
      %267 = math.copysign %14, %5 : tensor<14x2xf16>
      %268 = tensor.empty() : tensor<f32>
      %mapped = linalg.map ins(%20, %20 : tensor<f32>, tensor<f32>) outs(%268 : tensor<f32>)
        (%in: f32, %in_44: f32) {
          %269 = arith.shli %c1015113332_i64, %c1015113332_i64 : i64
          %270 = vector.transpose %47, [0] : vector<8xf32> to vector<8xf32>
          %271 = math.fma %cst_2, %in_44, %in_44 : f32
          %272 = index.mul %35, %c13
          %273 = math.roundeven %in_44 : f32
          %274 = vector.transpose %52, [0] : vector<8xf32> to vector<8xf32>
          %275 = memref.atomic_rmw andi %c1413003870_i64, %alloc_10[%c5, %c9] : (i64, memref<14x14xi64>) -> i64
          %276 = tensor.empty() : tensor<14x14xi1>
          %277 = linalg.matmul ins(%15, %16 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%276 : tensor<14x14xi1>) -> tensor<14x14xi1>
          %278 = tensor.empty() : tensor<14x14xi1>
          %279 = arith.maxui %c290053402_i32, %c978548887_i32 : i32
          %280 = arith.divui %c1413003870_i64, %c1413003870_i64 : i64
          %281 = math.round %8 : tensor<14x2xf16>
          %false_45 = index.bool.constant false
          %282 = math.atan %4 : tensor<14x14xf16>
          %283 = arith.shrsi %true, %false_45 : i1
          %284 = math.tan %8 : tensor<14x2xf16>
          %expanded_46 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x2xf16> into tensor<14x2x1xf16>
          %285 = vector.reduction <minsi>, %26 : vector<3xi64> into i64
          %286 = arith.minf %in_44, %cst_2 : f32
          %splat_47 = tensor.splat %c1109408564_i32 : tensor<8xi32>
          %287 = math.roundeven %14 : tensor<14x2xf16>
          %288 = memref.load %alloc_12[%c5] : memref<8xf16>
          %289 = tensor.empty() : tensor<14x14xi1>
          %290 = affine.max affine_map<(d0, d1, d2) -> (d0, d1 + d0 * 2 + d0 * 2 + 64, -(d1 + d0 * 2 + d0 * 2 + 64), d1)>(%c7, %c7, %272)
          %291 = vector.bitcast %49 : vector<8xf32> to vector<8xf32>
          %292 = arith.addi %c1928377050_i64, %c1413003870_i64 : i64
          %293 = arith.minf %extracted, %cst_0 : f16
          %294 = math.ceil %20 : tensor<f32>
          %295 = affine.apply affine_map<(d0) -> (-d0)>(%c8)
          %296 = index.mul %arg0, %arg0
          %297 = arith.divsi %c1015113332_i64, %c1934290139_i64 : i64
          %298 = vector.broadcast %cst : f16 to vector<f16>
          vector.transfer_write %298, %alloc_17[%c1, %c6] : vector<f16>, memref<14x14xf16>
          %cst_48 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_48 : f32
        }
      %cast_43 = tensor.cast %1 : tensor<14xf32> to tensor<?xf32>
      tensor.yield %c1109408564_i32 : i32
    } : tensor<?x2xi32>
    %56 = arith.cmpf ole, %cst, %cst_1 : f16
    %57 = arith.shrsi %true, %false : i1
    %generated_22 = tensor.generate %c12, %c6 {
    ^bb0(%arg0: index, %arg1: index):
      %266 = math.atan2 %7, %7 : tensor<14xf16>
      %267 = math.log %0 : tensor<14x2xf32>
      %268 = vector.broadcast %cst_0 : f16 to vector<f16>
      %269 = vector.transfer_write %268, %14[%arg1, %c9] : vector<f16>, tensor<14x2xf16>
      %270 = arith.ceildivsi %c1109408564_i32, %c290053402_i32 : i32
      tensor.yield %true : i1
    } : tensor<?x?xi1>
    %58 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1, d2 floordiv 4, (d2 ceildiv 8 + d3 floordiv 64 - 1) * 64)>(%c13, %c3, %c5, %c13)
    %59 = index.maxu %c5, %c1
    %generated_23 = tensor.generate %c15 {
    ^bb0(%arg0: index, %arg1: index):
      %266 = arith.floordivsi %c978548887_i32, %c1109408564_i32 : i32
      %267 = math.atan %extracted : f16
      %268 = arith.divui %c-14739_i16, %c31988_i16 : i16
      scf.index_switch %58 
      case 1 {
        %269 = arith.maxf %cst_0, %cst : f16
        %270 = vector.shuffle %19, %26 [2, 4, 6, 8, 9] : vector<8xi64>, vector<3xi64>
        %271 = tensor.empty() : tensor<14xf32>
        %272 = vector.extract_strided_slice %49 {offsets = [1], sizes = [5], strides = [1]} : vector<8xf32> to vector<5xf32>
        %273 = math.exp %cst : f16
        %274 = math.absi %17 : tensor<14x14xi1>
        %275 = bufferization.clone %alloc_12 : memref<8xf16> to memref<8xf16>
        %276 = vector.shuffle %49, %49 [0, 2, 3, 4, 6, 9, 10, 12, 13, 14, 15] : vector<8xf32>, vector<8xf32>
        %false_43 = arith.constant false
        %277 = index.casts %c-14739_i16 : i16 to index
        %278 = math.expm1 %8 : tensor<14x2xf16>
        %rank_44 = tensor.rank %0 : tensor<14x2xf32>
        %alloca_45 = memref.alloca() : memref<14x14xi64>
        %279 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %280 = vector.fma %279, %279, %279 : vector<14xf32>
        %281 = index.ceildivs %c6, %c4
        %282 = arith.shli %c1015113332_i64, %c2078458034_i64 : i64
        scf.yield
      }
      case 2 {
        %269 = arith.addf %extracted, %cst : f16
        %270 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 16, (d2 - 16) * 64, d1 floordiv 8)>(%c7, %c11, %c7)
        memref.store %c1109408564_i32, %45[%c3, %c12] : memref<14x14xi32>
        %271 = index.maxs %c10, %c13
        %272 = vector.matrix_multiply %47, %47 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %273 = arith.shrsi %c290053402_i32, %c290053402_i32 : i32
        %274 = arith.maxui %c1928377050_i64, %c1934290139_i64 : i64
        %275 = tensor.empty(%270) : tensor<?x14xf32>
        %276 = vector.insert %cst_2, %49 [1] : f32 into vector<8xf32>
        %277 = math.roundeven %cst : f16
        %278 = math.round %7 : tensor<14xf16>
        %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<14x2xf16> into tensor<28xf16>
        %279 = math.tanh %13 : tensor<14xf32>
        %280 = index.divs %c9, %c13
        memref.store %cst_2, %alloc_15[%c5, %c0] : memref<14x2xf32>
        affine.store %false, %alloc[%c2, %c9] : memref<14x14xi1>
        scf.yield
      }
      case 3 {
        %269 = arith.shrsi %c-14739_i16, %c-14739_i16 : i16
        %270 = arith.floordivsi %false, %true : i1
        %271 = index.sub %c12, %58
        %272 = math.tan %7 : tensor<14xf16>
        %273 = arith.divui %c1413003870_i64, %c1928377050_i64 : i64
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 2, d0 - 1, d2 - d0 mod 2 - 64)>(%c13, %c3, %c15)
        %275 = math.ceil %transposed : tensor<2x14xf16>
        %false_43 = index.bool.constant false
        %276 = index.sub %c6, %c5
        %277 = vector.shuffle %26, %19 [0, 1, 2, 3, 6, 9] : vector<3xi64>, vector<8xi64>
        %278 = vector.insertelement %cst_2, %52[%c7 : index] : vector<8xf32>
        %279 = index.add %c0, %arg0
        %280 = vector.matrix_multiply %47, %47 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %281 = math.roundeven %7 : tensor<14xf16>
        %282 = index.sub %c13, %271
        %283 = math.roundeven %20 : tensor<f32>
        scf.yield
      }
      case 4 {
        %269 = math.ceil %extracted : f16
        %270 = arith.divf %extracted, %extracted : f16
        %271 = tensor.empty() : tensor<14x2xf16>
        %272 = linalg.matmul ins(%3, %14 : tensor<14x14xf16>, tensor<14x2xf16>) outs(%271 : tensor<14x2xf16>) -> tensor<14x2xf16>
        %true_43 = index.bool.constant true
        %273 = arith.cmpi sle, %c1934290139_i64, %c1934290139_i64 : i64
        %274 = arith.maxui %c1413003870_i64, %c1928377050_i64 : i64
        %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<14x2xf16> into tensor<28xf16>
        %275 = arith.shrsi %c1928377050_i64, %c1413003870_i64 : i64
        %276 = arith.divf %cst, %cst : f16
        %277 = vector.extract_strided_slice %49 {offsets = [5], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
        %278 = math.floor %cst_1 : f16
        %279 = arith.shrui %false, %false : i1
        %280 = math.atan %cst : f16
        %281 = index.ceildivu %35, %c9
        %282 = math.sqrt %expanded : tensor<14x1xf32>
        %283 = tensor.empty(%c11) : tensor<14x?xi32>
        scf.yield
      }
      default {
        %cast_43 = tensor.cast %18 : tensor<2x14xf16> to tensor<?x?xf16>
        %269 = affine.apply affine_map<(d0, d1, d2, d3) -> (((-d0) mod 8) ceildiv 64 - 16)>(%arg0, %c0, %c14, %c10)
        %270 = math.atan %5 : tensor<14x2xf16>
        %271 = index.sub %c15, %c1
        %272 = vector.load %alloc_15[%c10, %c1] : memref<14x2xf32>, vector<14x2xf32>
        %273 = arith.addi %c1413003870_i64, %c1413003870_i64 : i64
        %274 = arith.minf %extracted, %cst_1 : f16
        %275 = math.ctlz %11 : tensor<8xi1>
        %alloca_44 = memref.alloca() : memref<14x2xf32>
        %276 = vector.extract_strided_slice %19 {offsets = [4], sizes = [4], strides = [1]} : vector<8xi64> to vector<4xi64>
        %277 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %278 = vector.insert %277, %272 [1] : vector<2xf32> into vector<14x2xf32>
        %279 = math.log1p %cst : f16
        %280 = arith.remui %true, %true : i1
        %281 = affine.apply affine_map<(d0) -> (-1)>(%59)
        %extracted_45 = tensor.extract %9[%c0, %c1] : tensor<14x14xi64>
        %282 = vector.shuffle %47, %277 [0, 1, 4, 5, 6, 7, 8, 9] : vector<8xf32>, vector<2xf32>
      }
      tensor.yield %c290053402_i32 : i32
    } : tensor<?x14xi32>
    %60 = math.log10 %18 : tensor<2x14xf16>
    %61 = index.casts %c978548887_i32 : i32 to index
    %62 = vector.transpose %29, [0] : vector<14xi1> to vector<14xi1>
    %63 = index.sub %c5, %c1
    %64 = math.log10 %7 : tensor<14xf16>
    %65 = math.copysign %cst_0, %cst : f16
    %66 = affine.load %alloc_18[%c2] : memref<2xf16>
    memref.assume_alignment %alloc_6, 1 : memref<14xf16>
    %67 = arith.floordivsi %false, %true : i1
    %68 = memref.load %alloc_17[%c7, %c7] : memref<14x14xf16>
    %69 = arith.divf %66, %extracted : f16
    %70 = math.ctpop %15 : tensor<14x14xi1>
    %cst_24 = arith.constant 1.000000e+00 : f16
    %cst_25 = arith.constant 0.000000e+00 : f16
    %71 = vector.transfer_read %4[%c9, %c8], %cst_25 : tensor<14x14xf16>, vector<f16>
    %72 = tensor.empty() : tensor<14x2xi32>
    %73 = arith.cmpi sgt, %c1928377050_i64, %c2078458034_i64 : i64
    %74 = affine.apply affine_map<(d0, d1, d2, d3) -> (((-d0) mod 8) ceildiv 64 - 16)>(%c12, %c0, %61, %c4)
    %75 = arith.negf %cst_0 : f16
    %generated_26 = tensor.generate %61 {
    ^bb0(%arg0: index, %arg1: index):
      %266 = arith.divsi %c-14739_i16, %c-14739_i16 : i16
      %alloca_43 = memref.alloca() : memref<14xf16>
      %267 = math.absf %8 : tensor<14x2xf16>
      %268 = math.exp %3 : tensor<14x14xf16>
      tensor.yield %cst_0 : f16
    } : tensor<?x2xf16>
    %76 = bufferization.to_memref %7 : memref<14xf16>
    %77 = math.roundeven %cst_0 : f16
    %expanded_27 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
    %78 = arith.subi %c1109408564_i32, %c978548887_i32 : i32
    %cst_28 = arith.constant 1.000000e+00 : f16
    %79 = vector.transfer_read %18[%c4, %74], %cst_28 : tensor<2x14xf16>, vector<f16>
    %cast = tensor.cast %9 : tensor<14x14xi64> to tensor<?x?xi64>
    %80 = arith.addi %c1928377050_i64, %c1928377050_i64 : i64
    %81 = math.exp %14 : tensor<14x2xf16>
    %82 = math.floor %4 : tensor<14x14xf16>
    %83 = vector.transpose %29, [0] : vector<14xi1> to vector<14xi1>
    %84 = math.exp %13 : tensor<14xf32>
    %85 = math.expm1 %18 : tensor<2x14xf16>
    %86 = index.divs %27, %59
    %splat = tensor.splat %c-14739_i16 : tensor<14x2xi16>
    %87 = math.copysign %0, %0 : tensor<14x2xf32>
    %88 = vector.broadcast %false : i1 to vector<2xi1>
    vector.transfer_write %88, %alloc_3[%c3, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi1>, memref<14x14xi1>
    %89 = arith.cmpi slt, %c1928377050_i64, %c1413003870_i64 : i64
    memref.assume_alignment %alloc_9, 1 : memref<14x2xi1>
    %90 = arith.ceildivsi %c31988_i16, %c-14739_i16 : i16
    %91 = arith.divf %cst_2, %cst_2 : f32
    %92 = math.ctpop %c1934290139_i64 : i64
    %93 = vector.broadcast %c31988_i16 : i16 to vector<i16>
    vector.transfer_write %93, %alloc_11[%c13] : vector<i16>, memref<14xi16>
    %94 = arith.maxui %c1928377050_i64, %c1413003870_i64 : i64
    %95 = scf.while (%arg0 = %cst_2) : (f32) -> f32 {
      %266 = math.cos %3 : tensor<14x14xf16>
      %267 = vector.load %alloc_9[%c4, %c1] : memref<14x2xi1>, vector<14xi1>
      %268 = arith.addf %cst_1, %cst_0 : f16
      %269 = index.sub %c2, %c14
      %270 = index.mul %c0, %27
      %271 = vector.broadcast %c1015113332_i64 : i64 to vector<2x8x14xi64>
      %272 = vector.broadcast %c1413003870_i64 : i64 to vector<2x14xi64>
      %dest, %accumulated_value = vector.scan <minsi>, %271, %272 {inclusive = false, reduction_dim = 1 : i64} : vector<2x8x14xi64>, vector<2x14xi64>
      %273 = arith.mulf %66, %cst_28 : f16
      %274 = vector.extract_strided_slice %47 {offsets = [6], sizes = [2], strides = [1]} : vector<8xf32> to vector<2xf32>
      scf.condition(%false) %arg0 : f32
    } do {
    ^bb0(%arg0: f32):
      %266 = math.absf %7 : tensor<14xf16>
      %267 = memref.atomic_rmw minu %c1413003870_i64, %alloc_10[%c7, %c12] : (i64, memref<14x14xi64>) -> i64
      %268 = math.floor %21 : tensor<f32>
      %269 = arith.xori %c1015113332_i64, %c2078458034_i64 : i64
      %alloc_43 = memref.alloc() : memref<8xf16>
      memref.copy %alloc_12, %alloc_43 : memref<8xf16> to memref<8xf16>
      %270 = memref.load %alloc_9[%c1, %c1] : memref<14x2xi1>
      %271 = affine.if affine_set<(d0) : ((d0 * 64) floordiv 128 - (-((d0 - 32) ceildiv 64) + d0 floordiv 64) >= 0, d0 == 0)>(%c10) -> memref<14x2xi16> {
        %279 = index.floordivs %c11, %27
        %280 = arith.addi %c1413003870_i64, %c1015113332_i64 : i64
        %281 = math.log2 %8 : tensor<14x2xf16>
        %282 = bufferization.to_memref %14 : memref<14x2xf16>
        %283 = vector.insert %arg0, %52 [3] : f32 into vector<8xf32>
        %284 = vector.broadcast %c2078458034_i64 : i64 to vector<14xi64>
        vector.transfer_write %284, %alloc_16[%27, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi64>, memref<14x2xi64>
        %285 = arith.ceildivsi %c1934290139_i64, %c1413003870_i64 : i64
        %286 = arith.divui %true, %false : i1
        %alloc_45 = memref.alloc() : memref<14x2xi16>
        affine.yield %alloc_45 : memref<14x2xi16>
      } else {
        bufferization.dealloc_tensor %9 : tensor<14x14xi64>
        %279 = arith.shrui %c31988_i16, %c31988_i16 : i16
        %280 = vector.broadcast %arg0 : f32 to vector<8xf32>
        %281 = vector.fma %280, %280, %49 : vector<8xf32>
        %282 = bufferization.to_memref %6 : memref<8xi64>
        %283 = math.atan %8 : tensor<14x2xf16>
        %284 = index.sizeof
        %285 = arith.addi %c1015113332_i64, %c1413003870_i64 : i64
        %286 = math.log10 %18 : tensor<2x14xf16>
        %alloc_45 = memref.alloc() : memref<14x2xi16>
        affine.yield %alloc_45 : memref<14x2xi16>
      }
      %272 = vector.splat %27 : vector<14x2xindex>
      %273 = arith.divui %c1928377050_i64, %c1934290139_i64 : i64
      %274 = arith.maxsi %c1934290139_i64, %c1934290139_i64 : i64
      %collapsed = tensor.collapse_shape %generated_21 [[0, 1]] : tensor<?x2xi32> into tensor<?xi32>
      %rank_44 = tensor.rank %generated_26 : tensor<?x2xf16>
      %275 = memref.atomic_rmw mulf %cst_24, %alloc_13[%c2, %c2] : (f16, memref<14x14xf16>) -> f16
      %276 = math.ctpop %c1109408564_i32 : i32
      %277 = memref.load %alloc_17[%c7, %c9] : memref<14x14xf16>
      %278 = arith.remui %c1928377050_i64, %c1934290139_i64 : i64
      scf.yield %arg0 : f32
    }
    %96 = arith.floordivsi %c-14739_i16, %c31988_i16 : i16
    %97 = vector.insert %false, %88 [1] : i1 into vector<2xi1>
    %98 = math.expm1 %5 : tensor<14x2xf16>
    %99 = math.log1p %cst_24 : f16
    %100 = affine.for %arg0 = 0 to 25 iter_args(%arg1 = %61) -> (index) {
      affine.yield %c2 : index
    }
    %101 = arith.divui %true, %true : i1
    %102 = math.fma %5, %14, %14 : tensor<14x2xf16>
    %103 = arith.divui %c1934290139_i64, %c1413003870_i64 : i64
    %104 = arith.addf %extracted, %extracted : f16
    %105 = index.add %c6, %35
    %106 = math.round %7 : tensor<14xf16>
    %107 = arith.maxsi %c978548887_i32, %c978548887_i32 : i32
    affine.for %arg0 = 0 to 56 {
    }
    %108 = vector.insertelement %cst_2, %52[%61 : index] : vector<8xf32>
    %109 = tensor.empty(%35) : tensor<?xi32>
    %110 = math.tan %cst_1 : f16
    %111 = affine.apply affine_map<(d0) -> ((d0 mod 32) * 16)>(%c10)
    %112 = arith.addf %cst_28, %cst : f16
    %113 = bufferization.clone %alloc_6 : memref<14xf16> to memref<14xf16>
    %114 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
    %115 = vector.broadcast %false : i1 to vector<14x14xi1>
    %116 = vector.broadcast %c978548887_i32 : i32 to vector<14x14xi32>
    %117 = vector.gather %113[%c9] [%116], %115, %114 : memref<14xf16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf16> into vector<14x14xf16>
    %alloca = memref.alloca() : memref<14x14xf32>
    bufferization.dealloc_tensor %18 : tensor<2x14xf16>
    %118 = vector.flat_transpose %47 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %119 = vector.shuffle %47, %49 [1, 3, 4, 5, 6, 10, 11, 12, 13, 14] : vector<8xf32>, vector<8xf32>
    %120 = arith.remui %c-14739_i16, %c-14739_i16 : i16
    %121 = arith.xori %c1015113332_i64, %c1015113332_i64 : i64
    %extracted_29 = tensor.extract %8[%c4, %c0] : tensor<14x2xf16>
    %122 = math.log1p %cst_1 : f16
    %123 = tensor.empty() : tensor<14x14xf16>
    %124 = linalg.matmul ins(%8, %18 : tensor<14x2xf16>, tensor<2x14xf16>) outs(%123 : tensor<14x14xf16>) -> tensor<14x14xf16>
    %125 = vector.broadcast %false : i1 to vector<i1>
    %126 = vector.transfer_write %125, %16[%74, %c4] : vector<i1>, tensor<14x14xi1>
    %127 = index.add %c11, %c1
    memref.assume_alignment %alloc_9, 8 : memref<14x2xi1>
    %extracted_30 = tensor.extract %123[%c7, %c8] : tensor<14x14xf16>
    %128 = vector.broadcast %c2 : index to vector<2xindex>
    %129 = vector.broadcast %c1109408564_i32 : i32 to vector<2xi32>
    vector.scatter %45[%c6, %c4] [%128], %88, %129 : memref<14x14xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
    %130 = math.log1p %14 : tensor<14x2xf16>
    %131 = index.casts %c290053402_i32 : i32 to index
    %alloc_31 = memref.alloc() : memref<8xi1>
    %132 = tensor.empty() : tensor<14x14xi16>
    %133 = math.atan %extracted_30 : f16
    %134 = affine.for %arg0 = 0 to 62 iter_args(%arg1 = %7) -> (tensor<14xf16>) {
      affine.yield %7 : tensor<14xf16>
    }
    %135 = tensor.empty() : tensor<14x2xi64>
    %136 = vector.broadcast %c1109408564_i32 : i32 to vector<14xi32>
    %137 = vector.multi_reduction <add>, %116, %136 [1] : vector<14x14xi32> to vector<14xi32>
    %138 = math.exp2 %expanded : tensor<14x1xf32>
    %false_32 = index.bool.constant false
    %139 = index.floordivs %c7, %63
    %140 = arith.maxsi %false_32, %false_32 : i1
    %141 = math.rsqrt %4 : tensor<14x14xf16>
    %142 = vector.reduction <mul>, %29 : vector<14xi1> into i1
    %143 = math.expm1 %21 : tensor<f32>
    %144 = vector.flat_transpose %52 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %145 = index.maxs %63, %c15
    %146 = index.sizeof
    %147 = arith.ori %c1928377050_i64, %c1015113332_i64 : i64
    %148 = arith.minf %cst_24, %cst_0 : f16
    %149 = math.cos %18 : tensor<2x14xf16>
    %150 = math.cos %0 : tensor<14x2xf32>
    %151 = math.exp %cst_0 : f16
    %152 = arith.xori %c978548887_i32, %c290053402_i32 : i32
    %153 = math.ctlz %2 : tensor<14x2xi64>
    %154 = vector.broadcast %c1015113332_i64 : i64 to vector<i64>
    %155 = vector.transfer_write %154, %9[%58, %c9] : vector<i64>, tensor<14x14xi64>
    %156 = memref.atomic_rmw mulf %cst, %76[%c3] : (f16, memref<14xf16>) -> f16
    %157 = vector.extract_strided_slice %48 {offsets = [2], sizes = [3], strides = [1]} : vector<8xi1> to vector<3xi1>
    %158 = arith.ori %c290053402_i32, %c290053402_i32 : i32
    %159 = arith.addi %c31988_i16, %c31988_i16 : i16
    scf.index_switch %c6 
    case 1 {
      %266 = math.sqrt %5 : tensor<14x2xf16>
      %267 = math.ctlz %15 : tensor<14x14xi1>
      %268 = arith.divf %extracted_30, %extracted_30 : f16
      %269 = vector.multi_reduction <minui>, %26, %26 [] : vector<3xi64> to vector<3xi64>
      %270 = index.add %74, %131
      %cst_43 = arith.constant 3.891200e+04 : f16
      %271 = math.sqrt %extracted_29 : f16
      %272 = vector.splat %c7 : vector<14x14xindex>
      %273 = index.ceildivs %c14, %86
      %alloc_44 = memref.alloc() : memref<2x14xf32>
      %274 = tensor.empty() : tensor<14x14xf32>
      %275 = linalg.matmul ins(%0, %alloc_44 : tensor<14x2xf32>, memref<2x14xf32>) outs(%274 : tensor<14x14xf32>) -> tensor<14x14xf32>
      %276 = arith.addi %false, %false : i1
      %277 = arith.minf %cst_1, %cst_1 : f16
      scf.execute_region {
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d3 - 6) + 1)>(%27, %111, %c13, %27)
        %282 = arith.remui %c31988_i16, %c31988_i16 : i16
        %283 = arith.shli %false, %false_32 : i1
        %284 = arith.minsi %c2078458034_i64, %c2078458034_i64 : i64
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d2 + d0)>(%c10, %145, %c8, %111)
        %cast_45 = tensor.cast %0 : tensor<14x2xf32> to tensor<?x?xf32>
        %286 = memref.load %alloc_6[%c11] : memref<14xf16>
        %expanded_46 = tensor.expand_shape %10 [[0, 1]] : tensor<14xi16> into tensor<14x1xi16>
        %287 = vector.multi_reduction <mul>, %117, %extracted_29 [0, 1] : vector<14x14xf16> to f16
        %288 = math.exp2 %expanded_27 : tensor<14x1x1xf32>
        %289 = index.add %c1, %127
        %290 = arith.minsi %c1934290139_i64, %c1928377050_i64 : i64
        %291 = math.cttz %c1109408564_i32 : i32
        %292 = math.absi %c1928377050_i64 : i64
        %293 = arith.muli %c290053402_i32, %c290053402_i32 : i32
        %294 = arith.maxui %c1109408564_i32, %c978548887_i32 : i32
        scf.yield
      }
      %278 = math.log %cst_24 : f16
      %279 = scf.while (%arg0 = %cst_24) : (f16) -> f16 {
        %281 = vector.broadcast %cst_2 : f32 to vector<f32>
        %282 = vector.transfer_write %281, %1[%c14] : vector<f32>, tensor<14xf32>
        %283 = bufferization.to_memref %2 : memref<14x2xi64>
        %284 = vector.insert %136, %116 [8] : vector<14xi32> into vector<14x14xi32>
        %285 = arith.shrsi %c978548887_i32, %c978548887_i32 : i32
        %286 = vector.transpose %114, [1, 0] : vector<14x14xf16> to vector<14x14xf16>
        %287 = math.tan %14 : tensor<14x2xf16>
        %288 = vector.extract_strided_slice %47 {offsets = [1], sizes = [6], strides = [1]} : vector<8xf32> to vector<6xf32>
        %289 = math.ceil %21 : tensor<f32>
        scf.condition(%false_32) %arg0 : f16
      } do {
      ^bb0(%arg0: f16):
        %false_45 = index.bool.constant false
        %281 = index.mul %111, %139
        %282 = arith.addi %c1934290139_i64, %c1413003870_i64 : i64
        %283 = vector.extract_strided_slice %115 {offsets = [3], sizes = [2], strides = [1]} : vector<14x14xi1> to vector<2x14xi1>
        %284 = affine.min affine_map<(d0) -> (d0 - 96)>(%74)
        %285 = arith.minf %extracted_30, %cst_1 : f16
        %286 = vector.transpose %93, [] : vector<i16> to vector<i16>
        %extracted_46 = tensor.extract %10[%c8] : tensor<14xi16>
        %287 = math.expm1 %4 : tensor<14x14xf16>
        %alloc_47 = memref.alloc() : memref<14xf32>
        %288 = vector.shuffle %22, %22 [0, 1] : vector<f16>, vector<f16>
        %289 = vector.load %113[%c5] : memref<14xf16>, vector<14xf16>
        %290 = index.divu %c5, %c3
        %291 = math.expm1 %cst_24 : f16
        %292 = math.ctlz %12 : tensor<8xi1>
        %293 = arith.xori %c1413003870_i64, %c1413003870_i64 : i64
        scf.yield %cst_1 : f16
      }
      %280 = arith.mulf %cst_28, %cst_1 : f16
      scf.yield
    }
    default {
      %266 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 + 8) ceildiv 8)>(%61, %c5, %146, %c12)
      %267 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
      bufferization.dealloc_tensor %generated_26 : tensor<?x2xf16>
      %generated_43 = tensor.generate %145, %27 {
      ^bb0(%arg0: index, %arg1: index):
        %274 = arith.divf %cst, %cst_24 : f16
        %dest, %accumulated_value = vector.scan <add>, %116, %136 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
        %275 = bufferization.clone %alloc_13 : memref<14x14xf16> to memref<14x14xf16>
        %276 = math.copysign %4, %3 : tensor<14x14xf16>
        tensor.yield %cst_2 : f32
      } : tensor<?x?xf32>
      bufferization.dealloc_tensor %7 : tensor<14xf16>
      %268 = memref.alloca_scope  -> (i32) {
        %274 = arith.shrsi %c2078458034_i64, %c1928377050_i64 : i64
        %275 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %276 = vector.insertelement %cst_2, %52[%c14 : index] : vector<8xf32>
        %277 = arith.maxf %extracted, %cst_1 : f16
        %278 = tensor.empty(%74) : tensor<14x?xi32>
        %279 = arith.shli %c1015113332_i64, %c1413003870_i64 : i64
        %280 = math.tan %0 : tensor<14x2xf32>
        %281 = arith.shli %true, %false_32 : i1
        %282 = math.expm1 %7 : tensor<14xf16>
        %283 = arith.floordivsi %false_32, %false : i1
        %284 = arith.shli %c978548887_i32, %c290053402_i32 : i32
        %285 = tensor.empty() : tensor<8xi32>
        %286 = arith.remui %c-14739_i16, %c-14739_i16 : i16
        %287 = arith.cmpf false, %extracted, %cst_0 : f16
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - d2, d2, d2 ceildiv 8 + 4, d2 ceildiv 8)>(%146, %59, %145, %111)
        %289 = math.exp %5 : tensor<14x2xf16>
        %290 = math.ctpop %6 : tensor<8xi64>
        %291 = math.rsqrt %0 : tensor<14x2xf32>
        memref.assume_alignment %alloc_7, 1 : memref<14x14xi32>
        %alloc_48 = memref.alloc() : memref<8xf32>
        %292 = vector.broadcast %cst_2 : f32 to vector<14x2xf32>
        %293 = vector.broadcast %false_32 : i1 to vector<14x2xi1>
        %294 = vector.broadcast %c978548887_i32 : i32 to vector<14x2xi32>
        %295 = vector.gather %alloc_48[%74] [%294], %293, %292 : memref<8xf32>, vector<14x2xi32>, vector<14x2xi1>, vector<14x2xf32> into vector<14x2xf32>
        %296 = arith.subi %c1015113332_i64, %c1928377050_i64 : i64
        %297 = arith.shrsi %c290053402_i32, %c1109408564_i32 : i32
        %298 = math.ctpop %c1934290139_i64 : i64
        %299 = affine.apply affine_map<(d0) -> (d0)>(%c9)
        %300 = vector.outerproduct %136, %136, %116 {kind = #vector.kind<maxui>} : vector<14xi32>, vector<14xi32>
        %301 = affine.load %alloc_3[%c14, %c15] : memref<14x14xi1>
        %302 = arith.shrui %false, %false : i1
        %303 = math.expm1 %1 : tensor<14xf32>
        %304 = math.fma %14, %8, %5 : tensor<14x2xf16>
        %305 = math.exp %13 : tensor<14xf32>
        %306 = math.sqrt %transposed : tensor<2x14xf16>
        %307 = math.ctpop %c1928377050_i64 : i64
        memref.alloca_scope.return %c1109408564_i32 : i32
      }
      %alloca_44 = memref.alloca() : memref<14xi16>
      %269 = math.floor %extracted_30 : f16
      %rank_45 = tensor.rank %15 : tensor<14x14xi1>
      %270 = arith.maxf %extracted_29, %cst_28 : f16
      %271 = vector.extract_strided_slice %52 {offsets = [5], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
      %272 = math.floor %3 : tensor<14x14xf16>
      %alloc_46 = memref.alloc() : memref<14x2xi1>
      memref.copy %alloc_9, %alloc_46 : memref<14x2xi1> to memref<14x2xi1>
      %rank_47 = tensor.rank %11 : tensor<8xi1>
      scf.if %true {
        %274 = vector.flat_transpose %47 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %275 = arith.maxf %cst_1, %extracted : f16
        %276 = tensor.empty() : tensor<8xi32>
        %expanded_48 = tensor.expand_shape %7 [[0, 1]] : tensor<14xf16> into tensor<14x1xf16>
        %277 = math.log1p %5 : tensor<14x2xf16>
        %rank_49 = tensor.rank %4 : tensor<14x14xf16>
        %278 = vector.shuffle %144, %49 [1, 5, 7, 10, 11, 13, 14, 15] : vector<8xf32>, vector<8xf32>
        %extracted_50 = tensor.extract %generated_22[%c0, %c0] : tensor<?x?xi1>
      } else {
        %274 = arith.remsi %c1928377050_i64, %c2078458034_i64 : i64
        %275 = arith.floordivsi %c290053402_i32, %c1109408564_i32 : i32
        %276 = math.sqrt %13 : tensor<14xf32>
        %277 = math.log1p %extracted : f16
        %278 = math.log1p %1 : tensor<14xf32>
        %279 = vector.broadcast %cst_24 : f16 to vector<f16>
        vector.transfer_write %279, %113[%145] : vector<f16>, memref<14xf16>
        %280 = tensor.empty() : tensor<14x14xi32>
        %281 = vector.broadcast %c1109408564_i32 : i32 to vector<8xi32>
        %282 = vector.gather %280[%c1, %c0] [%281], %48, %281 : tensor<14x14xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %283 = arith.shrui %268, %c1109408564_i32 : i32
      }
      %273 = math.atan %cst_0 : f16
    }
    %160 = memref.atomic_rmw maxf %cst_2, %alloc_19[%c8] : (f32, memref<14xf32>) -> f32
    %161 = arith.remsi %c31988_i16, %c31988_i16 : i16
    %162 = affine.apply affine_map<(d0) -> (d0)>(%127)
    %rank = tensor.rank %15 : tensor<14x14xi1>
    %163 = arith.remsi %false_32, %false : i1
    %164 = vector.maskedload %alloc[%c2, %c13], %88, %88 : memref<14x14xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
    %165 = math.cos %66 : f16
    %166 = arith.remf %cst_1, %66 : f16
    %167 = vector.shuffle %19, %19 [1, 5, 9, 10, 12] : vector<8xi64>, vector<8xi64>
    %168 = scf.while (%arg0 = %c290053402_i32) : (i32) -> i32 {
      %266 = index.floordivs %c8, %c13
      %267 = affine.apply affine_map<(d0) -> ((d0 floordiv 32) mod 64)>(%c11)
      %268 = arith.floordivsi %c1413003870_i64, %c1015113332_i64 : i64
      %269 = arith.xori %c290053402_i32, %c290053402_i32 : i32
      %270 = vector.extract_strided_slice %48 {offsets = [0], sizes = [6], strides = [1]} : vector<8xi1> to vector<6xi1>
      %cast_43 = tensor.cast %2 : tensor<14x2xi64> to tensor<?x?xi64>
      %271 = arith.mulf %cst_28, %cst_24 : f16
      %rank_44 = tensor.rank %transposed : tensor<2x14xf16>
      scf.condition(%true) %arg0 : i32
    } do {
    ^bb0(%arg0: i32):
      %266 = affine.if affine_set<(d0, d1, d2, d3) : (d1 + d2 == 0, d3 >= 0)>(%c2, %c4, %c5, %c12) -> memref<14x2xi64> {
        %279 = math.atan %cst_1 : f16
        %280 = arith.divui %c1015113332_i64, %c1928377050_i64 : i64
        %281 = index.ceildivu %c2, %35
        %282 = math.powf %8, %5 : tensor<14x2xf16>
        %283 = math.powf %transposed, %18 : tensor<2x14xf16>
        %284 = math.ctlz %c1934290139_i64 : i64
        %285 = arith.shrui %c1413003870_i64, %c1413003870_i64 : i64
        %286 = tensor.empty() : tensor<8xf16>
        affine.yield %alloc_16 : memref<14x2xi64>
      } else {
        %alloca_45 = memref.alloca() : memref<8xi16>
        %279 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %280 = vector.transfer_write %279, %4[%c13, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, tensor<14x14xf16>
        %281 = math.round %cst_0 : f16
        %282 = index.divs %c0, %27
        %283 = arith.minsi %arg0, %c978548887_i32 : i32
        %alloca_46 = memref.alloca() : memref<8xi64>
        %284 = vector.broadcast %c1413003870_i64 : i64 to vector<14x14xi64>
        %285 = vector.gather %9[%c4, %27] [%116], %115, %284 : tensor<14x14xi64>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi64> into vector<14x14xi64>
        %286 = arith.ori %c978548887_i32, %c1109408564_i32 : i32
        affine.yield %alloc_14 : memref<14x2xi64>
      }
      %alloc_43 = memref.alloc() : memref<8xi16>
      %267 = math.roundeven %7 : tensor<14xf16>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %118, %118, %cst_2 : vector<8xf32>, vector<8xf32> into f32
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %26, %26, %c1413003870_i64 : vector<3xi64>, vector<3xi64> into i64
      %270 = index.mul %111, %c3
      %271 = arith.ori %c1934290139_i64, %c1934290139_i64 : i64
      %272 = math.log %8 : tensor<14x2xf16>
      %273 = vector.flat_transpose %88 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
      %rank_44 = tensor.rank %123 : tensor<14x14xf16>
      %274 = math.ceil %cst_28 : f16
      %275 = arith.addi %c31988_i16, %c-14739_i16 : i16
      %276 = arith.floordivsi %c1928377050_i64, %c2078458034_i64 : i64
      %277 = arith.shrui %c1109408564_i32, %arg0 : i32
      memref.store %cst, %alloc_17[%c2, %c12] : memref<14x14xf16>
      %278 = math.tan %0 : tensor<14x2xf32>
      scf.yield %c978548887_i32 : i32
    }
    %169 = arith.addi %c290053402_i32, %c1109408564_i32 : i32
    %170 = arith.floordivsi %c2078458034_i64, %c1413003870_i64 : i64
    %171 = math.roundeven %14 : tensor<14x2xf16>
    %172 = tensor.empty() : tensor<14x14xf32>
    %173 = math.log %3 : tensor<14x14xf16>
    %174 = index.mul %111, %61
    %175 = arith.minf %cst_28, %cst : f16
    %inserted = tensor.insert %false into %12[%c0] : tensor<8xi1>
    %176 = math.round %66 : f16
    %177 = affine.if affine_set<(d0) : (d0 * 2 >= 0, (d0 - d0 ceildiv 16 + d0 ceildiv 16) * 127 == 0)>(%c8) -> i32 {
      %266 = vector.shuffle %48, %29 [4, 6, 7, 8, 9, 10, 11, 13, 14, 15, 17, 18, 19, 20, 21] : vector<8xi1>, vector<14xi1>
      %267 = arith.ceildivsi %c290053402_i32, %c978548887_i32 : i32
      %268 = tensor.empty() : tensor<8xf32>
      %269 = arith.addi %c1015113332_i64, %c2078458034_i64 : i64
      %270 = arith.shrui %false_32, %true : i1
      %false_43 = index.bool.constant false
      %271 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 32)>(%c15, %146, %74)
      %272 = arith.addf %cst, %extracted : f16
      affine.yield %c290053402_i32 : i32
    } else {
      %266 = vector.broadcast %cst_1 : f16 to vector<f16>
      %267 = vector.transfer_write %266, %transposed[%61, %c7] : vector<f16>, tensor<2x14xf16>
      %268 = math.log10 %cst_0 : f16
      %269 = tensor.empty() : tensor<14x14xf16>
      %mapped = linalg.map ins(%alloc_13, %3, %3 : memref<14x14xf16>, tensor<14x14xf16>, tensor<14x14xf16>) outs(%269 : tensor<14x14xf16>)
        (%in: f16, %in_44: f16, %in_45: f16) {
          %274 = vector.matrix_multiply %144, %52 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
          %275 = math.copysign %cst, %66 : f16
          %276 = math.round %172 : tensor<14x14xf32>
          %277 = vector.load %alloc_14[%c3, %c1] : memref<14x2xi64>, vector<8xi64>
          %278 = math.log %7 : tensor<14xf16>
          %279 = arith.subi %c-14739_i16, %c31988_i16 : i16
          %280 = arith.shli %c2078458034_i64, %c1934290139_i64 : i64
          %281 = arith.floordivsi %c1109408564_i32, %c978548887_i32 : i32
          %282 = vector.insertelement %false, %29[%35 : index] : vector<14xi1>
          %283 = vector.flat_transpose %118 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
          %284 = vector.extract_strided_slice %26 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi64> to vector<1xi64>
          %285 = arith.maxui %c1015113332_i64, %c1928377050_i64 : i64
          %286 = math.copysign %8, %5 : tensor<14x2xf16>
          %287 = index.mul %63, %c13
          %alloc_46 = memref.alloc() : memref<8xi64>
          %288 = vector.broadcast %c1413003870_i64 : i64 to vector<14xi64>
          %289 = vector.gather %alloc_46[%c10] [%136], %29, %288 : memref<8xi64>, vector<14xi32>, vector<14xi1>, vector<14xi64> into vector<14xi64>
          %alloca_47 = memref.alloca() : memref<14x2xi16>
          %290 = math.atan %transposed : tensor<2x14xf16>
          %291 = math.roundeven %5 : tensor<14x2xf16>
          %292 = math.cttz %false : i1
          %293 = affine.apply affine_map<(d0, d1) -> ((-d0) ceildiv 4 + d0)>(%105, %c3)
          %294 = memref.atomic_rmw minf %cst, %76[%c7] : (f16, memref<14xf16>) -> f16
          %295 = arith.divsi %c1934290139_i64, %c1934290139_i64 : i64
          %296 = vector.broadcast %c1934290139_i64 : i64 to vector<14x14xi64>
          %297 = vector.outerproduct %288, %289, %296 {kind = #vector.kind<minsi>} : vector<14xi64>, vector<14xi64>
          %298 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          memref.assume_alignment %alloc_11, 16 : memref<14xi16>
          %299 = arith.ceildivsi %false, %true : i1
          %300 = math.tan %expanded : tensor<14x1xf32>
          memref.assume_alignment %alloc_16, 2 : memref<14x2xi64>
          %301 = math.ctpop %c978548887_i32 : i32
          %302 = arith.divsi %false_32, %true : i1
          %303 = index.floordivs %27, %145
          %304 = vector.broadcast %cst_2 : f32 to vector<14x2xf32>
          %305 = vector.fma %304, %304, %304 : vector<14x2xf32>
          %cst_48 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_48 : f16
        }
      %270 = tensor.empty() : tensor<14x2xf32>
      %mapped_43 = linalg.map ins(%0 : tensor<14x2xf32>) outs(%270 : tensor<14x2xf32>)
        (%in: f32) {
          %274 = arith.addf %in, %in : f32
          %275 = math.ctpop %17 : tensor<14x14xi1>
          %276 = math.log2 %4 : tensor<14x14xf16>
          %277 = arith.cmpi slt, %c1413003870_i64, %c1015113332_i64 : i64
          %278 = vector.flat_transpose %136 {columns = 7 : i32, rows = 2 : i32} : vector<14xi32> -> vector<14xi32>
          %279 = math.copysign %expanded_27, %expanded_27 : tensor<14x1x1xf32>
          %280 = arith.maxsi %c1015113332_i64, %c1413003870_i64 : i64
          %281 = math.sqrt %0 : tensor<14x2xf32>
          %282 = vector.multi_reduction <mul>, %49, %in [0] : vector<8xf32> to f32
          %283 = index.sub %145, %c12
          %284 = arith.ceildivsi %c1015113332_i64, %c1934290139_i64 : i64
          %285 = arith.maxf %in, %cst_2 : f32
          %286 = math.roundeven %7 : tensor<14xf16>
          %287 = vector.extract_strided_slice %115 {offsets = [1], sizes = [13], strides = [1]} : vector<14x14xi1> to vector<13x14xi1>
          %288 = arith.floordivsi %c2078458034_i64, %c1413003870_i64 : i64
          %289 = math.ctlz %false_32 : i1
          %290 = arith.ceildivsi %false, %true : i1
          memref.assume_alignment %alloc_3, 2 : memref<14x14xi1>
          %291 = math.log1p %7 : tensor<14xf16>
          %292 = arith.subi %c290053402_i32, %c978548887_i32 : i32
          %293 = arith.cmpf ole, %282, %in : f32
          %294 = arith.muli %c1413003870_i64, %c1015113332_i64 : i64
          %extracted_44 = tensor.extract %7[%c12] : tensor<14xf16>
          %295 = math.copysign %7, %7 : tensor<14xf16>
          %296 = arith.cmpi sgt, %c1934290139_i64, %c2078458034_i64 : i64
          %alloca_45 = memref.alloca() : memref<14x2xf32>
          %297 = math.cttz %12 : tensor<8xi1>
          %298 = arith.cmpi ne, %c1413003870_i64, %c1928377050_i64 : i64
          %299 = arith.maxsi %c31988_i16, %c31988_i16 : i16
          %300 = math.tan %172 : tensor<14x14xf32>
          %301 = arith.addi %c1413003870_i64, %c1413003870_i64 : i64
          %302 = arith.divf %extracted_30, %cst_1 : f16
          %cst_46 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_46 : f32
        }
      %271 = arith.cmpi sgt, %c1934290139_i64, %c1413003870_i64 : i64
      memref.store %cst, %76[%c13] : memref<14xf16>
      %272 = memref.realloc %alloc_4 : memref<14xf32> to memref<5xf32>
      %273 = math.log1p %123 : tensor<14x14xf16>
      affine.yield %c978548887_i32 : i32
    }
    %178 = math.tan %cst : f16
    %179 = math.ctpop %c-14739_i16 : i16
    %180 = vector.splat %rank : vector<8xindex>
    %181 = affine.for %arg0 = 0 to 33 iter_args(%arg1 = %c11) -> (index) {
      affine.yield %c12 : index
    }
    %182 = vector.flat_transpose %47 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %183 = math.exp2 %1 : tensor<14xf32>
    %184 = math.atan %expanded_27 : tensor<14x1x1xf32>
    %185 = vector.transpose %157, [0] : vector<3xi1> to vector<3xi1>
    %186 = memref.atomic_rmw muli %c290053402_i32, %alloc_7[%c11, %c12] : (i32, memref<14x14xi32>) -> i32
    %187 = vector.load %alloc_19[%c12] : memref<14xf32>, vector<14xf32>
    %188 = math.atan %7 : tensor<14xf16>
    %alloc_33 = memref.alloc() : memref<8xf16>
    %189 = math.fma %expanded, %expanded, %expanded : tensor<14x1xf32>
    %190 = scf.while (%arg0 = %c31988_i16) : (i16) -> i16 {
      %266 = arith.maxf %cst_0, %extracted_29 : f16
      %267 = math.tan %cst_24 : f16
      %268 = math.copysign %extracted_29, %extracted_29 : f16
      %269 = vector.shuffle %26, %26 [3, 4, 5] : vector<3xi64>, vector<3xi64>
      %inserted_43 = tensor.insert %c1928377050_i64 into %9[%c6, %c13] : tensor<14x14xi64>
      %extracted_44 = tensor.extract %12[%c0] : tensor<8xi1>
      %270 = math.round %cst : f16
      %271 = math.roundeven %0 : tensor<14x2xf32>
      scf.condition(%false_32) %c31988_i16 : i16
    } do {
    ^bb0(%arg0: i16):
      %266 = arith.addf %cst_2, %cst_2 : f32
      %267 = arith.remf %extracted_30, %66 : f16
      %268 = arith.cmpi sle, %c1928377050_i64, %c1015113332_i64 : i64
      %269 = scf.index_switch %c1 -> memref<14x14xi1> 
      case 1 {
        %281 = arith.floordivsi %c1928377050_i64, %c1934290139_i64 : i64
        %282 = arith.divui %arg0, %c31988_i16 : i16
        %283 = math.roundeven %extracted_30 : f16
        %284 = math.tan %1 : tensor<14xf32>
        %285 = arith.maxui %c1015113332_i64, %c1934290139_i64 : i64
        %286 = index.castu %c6 : index to i32
        %287 = math.ctpop %c2078458034_i64 : i64
        %288 = math.rsqrt %extracted_29 : f16
        %rank_44 = tensor.rank %15 : tensor<14x14xi1>
        %289 = index.casts %145 : index to i32
        %290 = math.round %cst_1 : f16
        %291 = arith.divui %c290053402_i32, %c978548887_i32 : i32
        %292 = math.copysign %7, %7 : tensor<14xf16>
        %293 = arith.floordivsi %c1109408564_i32, %c978548887_i32 : i32
        %294 = vector.shuffle %88, %164 [0, 1] : vector<2xi1>, vector<2xi1>
        %295 = math.round %extracted_30 : f16
        scf.yield %alloc_3 : memref<14x14xi1>
      }
      default {
        %281 = math.copysign %1, %1 : tensor<14xf32>
        %282 = vector.broadcast %c8 : index to vector<5xindex>
        %283 = vector.broadcast %false_32 : i1 to vector<5xi1>
        %284 = vector.broadcast %cst_24 : f16 to vector<5xf16>
        vector.scatter %113[%c13] [%282], %283, %284 : memref<14xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
        %expanded_44 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<14x2xf32> into tensor<14x2x1xf32>
        %alloc_45 = memref.alloc() : memref<14xi32>
        %285 = vector.broadcast %c1109408564_i32 : i32 to vector<14x2xi32>
        %286 = vector.broadcast %true : i1 to vector<14x2xi1>
        %287 = vector.gather %alloc_45[%c13] [%285], %286, %285 : memref<14xi32>, vector<14x2xi32>, vector<14x2xi1>, vector<14x2xi32> into vector<14x2xi32>
        %288 = vector.matrix_multiply %19, %26 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 3 : i32} : (vector<8xi64>, vector<3xi64>) -> vector<24xi64>
        %289 = math.log1p %5 : tensor<14x2xf16>
        %290 = math.sqrt %20 : tensor<f32>
        %291 = math.tan %transposed : tensor<2x14xf16>
        %alloc_46 = memref.alloc() : memref<14x14xf32>
        memref.tensor_store %172, %alloc_46 : memref<14x14xf32>
        %292 = math.sqrt %extracted : f16
        %293 = index.add %c14, %146
        %294 = math.atan2 %expanded_44, %expanded_44 : tensor<14x2x1xf32>
        %cst_47 = arith.constant 1.000000e+00 : f16
        %295 = vector.transfer_read %alloc_18[%c10], %cst_47 : memref<2xf16>, vector<f16>
        %296 = index.sub %63, %c6
        %297 = math.rsqrt %cst_47 : f16
        %298 = math.log1p %7 : tensor<14xf16>
        scf.yield %alloc_5 : memref<14x14xi1>
      }
      %270 = arith.remui %c1109408564_i32, %c1109408564_i32 : i32
      %271 = arith.divf %66, %extracted : f16
      %272 = vector.broadcast %false_32 : i1 to vector<8x8xi1>
      %273 = vector.outerproduct %48, %48, %272 {kind = #vector.kind<or>} : vector<8xi1>, vector<8xi1>
      %274 = math.sqrt %18 : tensor<2x14xf16>
      %275 = arith.muli %c978548887_i32, %c290053402_i32 : i32
      scf.index_switch %c3 
      case 1 {
        %281 = affine.max affine_map<(d0, d1, d2) -> (0)>(%c5, %c0, %c13)
        %282 = math.ctpop %6 : tensor<8xi64>
        %283 = index.maxs %131, %c12
        %284 = math.ctpop %11 : tensor<8xi1>
        %285 = arith.cmpi slt, %false_32, %true : i1
        %286 = arith.addf %cst_28, %cst_24 : f16
        %cast_44 = tensor.cast %5 : tensor<14x2xf16> to tensor<?x?xf16>
        %287 = index.sub %c5, %27
        %288 = vector.transpose %88, [0] : vector<2xi1> to vector<2xi1>
        %289 = tensor.empty() : tensor<14x14xf16>
        %290 = linalg.matmul ins(%14, %18 : tensor<14x2xf16>, tensor<2x14xf16>) outs(%289 : tensor<14x14xf16>) -> tensor<14x14xf16>
        %291 = index.maxs %139, %c3
        %292 = arith.floordivsi %false_32, %false : i1
        %293 = arith.maxui %c1015113332_i64, %c1015113332_i64 : i64
        %294 = arith.shli %c1015113332_i64, %c2078458034_i64 : i64
        %295 = math.ceil %extracted : f16
        %296 = index.mul %59, %rank
        scf.yield
      }
      case 2 {
        %281 = vector.splat %131 : vector<14xindex>
        %282 = vector.splat %63 : vector<14x14xindex>
        %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - (d3 - 6) + 1)>(%c5, %c13, %c8, %27)
        %284 = arith.muli %c1928377050_i64, %c1413003870_i64 : i64
        %285 = index.divs %146, %61
        %286 = arith.remf %extracted_29, %cst_28 : f16
        %287 = bufferization.to_memref %11 : memref<8xi1>
        %288 = math.log2 %13 : tensor<14xf32>
        %289 = memref.atomic_rmw addi %c978548887_i32, %alloc_7[%c13, %c7] : (i32, memref<14x14xi32>) -> i32
        %290 = bufferization.to_memref %expanded_27 : memref<14x1x1xf32>
        %291 = arith.divf %cst_28, %extracted_30 : f16
        %292 = arith.floordivsi %c1928377050_i64, %c1015113332_i64 : i64
        %293 = arith.ceildivsi %c290053402_i32, %c290053402_i32 : i32
        %alloc_44 = memref.alloc() : memref<8xf32>
        %294 = vector.broadcast %cst_2 : f32 to vector<14x2xf32>
        %295 = vector.broadcast %false_32 : i1 to vector<14x2xi1>
        %296 = vector.broadcast %c290053402_i32 : i32 to vector<14x2xi32>
        %297 = vector.gather %alloc_44[%27] [%296], %295, %294 : memref<8xf32>, vector<14x2xi32>, vector<14x2xi1>, vector<14x2xf32> into vector<14x2xf32>
        %298 = tensor.empty() : tensor<8xi1>
        %299 = index.sizeof
        scf.yield
      }
      default {
        %281 = bufferization.clone %76 : memref<14xf16> to memref<14xf16>
        %282 = math.round %7 : tensor<14xf16>
        %283 = bufferization.clone %281 : memref<14xf16> to memref<14xf16>
        %284 = arith.shli %arg0, %c-14739_i16 : i16
        %285 = arith.divf %extracted_30, %extracted_30 : f16
        %286 = math.ctpop %c1015113332_i64 : i64
        %287 = vector.broadcast %c3 : index to vector<14xindex>
        %288 = vector.broadcast %extracted_29 : f16 to vector<14xf16>
        vector.scatter %alloc_6[%c12] [%287], %29, %288 : memref<14xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
        %289 = arith.ori %true, %false_32 : i1
        %290 = arith.ceildivsi %c1413003870_i64, %c2078458034_i64 : i64
        %291 = arith.maxui %c31988_i16, %c-14739_i16 : i16
        %292 = arith.subi %c1015113332_i64, %c1928377050_i64 : i64
        %293 = bufferization.clone %alloc_3 : memref<14x14xi1> to memref<14x14xi1>
        %294 = vector.extract_strided_slice %182 {offsets = [5], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
        %295 = tensor.empty() : tensor<14xi1>
        %296 = vector.broadcast %cst_2 : f32 to vector<f32>
        %297 = vector.transfer_write %296, %13[%131] : vector<f32>, tensor<14xf32>
        %298 = vector.insertelement %false, %125[] : vector<i1>
      }
      %276 = vector.extract_strided_slice %144 {offsets = [3], sizes = [4], strides = [1]} : vector<8xf32> to vector<4xf32>
      %277 = vector.multi_reduction <or>, %19, %19 [] : vector<8xi64> to vector<8xi64>
      %inserted_43 = tensor.insert %cst_2 into %expanded[%c3, %c0] : tensor<14x1xf32>
      %278 = vector.create_mask %c13, %127 : vector<14x2xi1>
      %279 = math.exp %7 : tensor<14xf16>
      %280 = vector.splat %c13 : vector<14xindex>
      scf.yield %c31988_i16 : i16
    }
    %191 = vector.multi_reduction <minsi>, %48, %48 [] : vector<8xi1> to vector<8xi1>
    %192 = math.expm1 %18 : tensor<2x14xf16>
    %193 = math.ctpop %9 : tensor<14x14xi64>
    %194 = vector.broadcast %c1928377050_i64 : i64 to vector<5xi64>
    %195 = vector.transfer_write %194, %9[%127, %59] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi64>, tensor<14x14xi64>
    %196 = index.floordivs %c12, %111
    %197 = index.add %c13, %196
    %198 = index.sizeof
    %199 = arith.cmpi ule, %c1934290139_i64, %c1413003870_i64 : i64
    %200 = math.fma %extracted_29, %cst_0, %extracted_29 : f16
    %201 = vector.transpose %154, [] : vector<i64> to vector<i64>
    %202 = math.log1p %14 : tensor<14x2xf16>
    %203 = arith.shrsi %c978548887_i32, %c978548887_i32 : i32
    %204 = vector.transpose %164, [0] : vector<2xi1> to vector<2xi1>
    %205 = arith.divui %false_32, %false_32 : i1
    %206 = arith.minf %cst_1, %cst_24 : f16
    %207 = arith.muli %c978548887_i32, %c1109408564_i32 : i32
    %208 = bufferization.to_memref %0 : memref<14x2xf32>
    %209 = math.ceil %0 : tensor<14x2xf32>
    %210 = arith.cmpi slt, %c1109408564_i32, %c290053402_i32 : i32
    %211 = math.floor %cst_1 : f16
    %212 = arith.shrsi %false_32, %false : i1
    %213 = arith.floordivsi %c1109408564_i32, %c1109408564_i32 : i32
    %214 = arith.maxsi %c1109408564_i32, %c290053402_i32 : i32
    bufferization.dealloc_tensor %12 : tensor<8xi1>
    %215 = math.tanh %transposed : tensor<2x14xf16>
    %216 = vector.transpose %116, [1, 0] : vector<14x14xi32> to vector<14x14xi32>
    %217 = memref.atomic_rmw maxs %c1413003870_i64, %alloc_14[%c3, %c0] : (i64, memref<14x2xi64>) -> i64
    %alloca_34 = memref.alloca() : memref<14x2xi1>
    %218 = arith.subi %c1928377050_i64, %c1413003870_i64 : i64
    %alloc_35 = memref.alloc() : memref<2x14xf16>
    memref.tensor_store %18, %alloc_35 : memref<2x14xf16>
    %219 = tensor.empty() : tensor<2x2xf16>
    %220 = linalg.matmul ins(%transposed, %14 : tensor<2x14xf16>, tensor<14x2xf16>) outs(%219 : tensor<2x2xf16>) -> tensor<2x2xf16>
    memref.assume_alignment %alloc_10, 2 : memref<14x14xi64>
    %221 = vector.multi_reduction <mul>, %115, %115 [] : vector<14x14xi1> to vector<14x14xi1>
    %222 = vector.broadcast %c1015113332_i64 : i64 to vector<3x3xi64>
    %223 = vector.outerproduct %26, %26, %222 {kind = #vector.kind<minui>} : vector<3xi64>, vector<3xi64>
    %224 = index.mul %rank, %127
    %225 = math.floor %66 : f16
    %226 = tensor.empty() : tensor<8xi32>
    %227 = vector.gather %226[%105] [%116], %115, %116 : tensor<8xi32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi32> into vector<14x14xi32>
    %228 = affine.for %arg0 = 0 to 92 iter_args(%arg1 = %198) -> (index) {
      affine.yield %c11 : index
    }
    %229 = math.roundeven %cst_2 : f32
    %230 = affine.apply affine_map<(d0) -> ((d0 mod 32) * 16)>(%c4)
    %231 = vector.extract %114[0] : vector<14x14xf16>
    %232 = vector.broadcast %61 : index to vector<14xindex>
    %233 = vector.broadcast %c1934290139_i64 : i64 to vector<14xi64>
    vector.scatter %alloc_14[%c2, %c0] [%232], %29, %233 : memref<14x2xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
    %c1_i32 = arith.constant 1 : i32
    %234 = vector.transfer_read %alloc_8[%74, %131], %c1_i32 : memref<14x14xi32>, vector<8xi32>
    %235 = bufferization.clone %113 : memref<14xf16> to memref<14xf16>
    %true_36 = index.bool.constant true
    %236 = index.divs %224, %145
    %237 = arith.mulf %extracted_29, %extracted : f16
    %238 = math.sqrt %cst_2 : f32
    %239 = arith.minf %cst_24, %extracted : f16
    %240 = math.log1p %cst_24 : f16
    %241 = affine.apply affine_map<(d0) -> ((d0 mod 32) * 16)>(%c8)
    %242 = arith.floordivsi %c1413003870_i64, %c1934290139_i64 : i64
    %true_37 = index.bool.constant true
    %rank_38 = tensor.rank %cast : tensor<?x?xi64>
    %alloc_39 = memref.alloc() : memref<8xf16>
    %243 = arith.divui %false_32, %false : i1
    %generated_40 = tensor.generate %c10, %58 {
    ^bb0(%arg0: index, %arg1: index):
      %266 = vector.insert %29, %115 [2] : vector<14xi1> into vector<14x14xi1>
      %267 = vector.shuffle %19, %19 [6, 10, 11, 14] : vector<8xi64>, vector<8xi64>
      %268 = vector.broadcast %extracted : f16 to vector<8xf16>
      %269 = vector.broadcast %c1109408564_i32 : i32 to vector<8xi32>
      %270 = vector.gather %alloc_12[%198] [%269], %48, %268 : memref<8xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %271 = arith.divsi %true_36, %false_32 : i1
      tensor.yield %c1_i32 : i32
    } : tensor<?x?xi32>
    %244 = arith.divf %cst_24, %cst_24 : f16
    %245 = vector.transpose %125, [] : vector<i1> to vector<i1>
    %246 = arith.divf %66, %cst_28 : f16
    %247 = math.exp %extracted_29 : f16
    %248 = vector.splat %true_36 : vector<14xi1>
    %false_41 = index.bool.constant false
    %249 = tensor.empty() : tensor<14x14xi32>
    %250 = vector.broadcast %cst_1 : f16 to vector<8xf16>
    %251 = vector.broadcast %c1109408564_i32 : i32 to vector<8xi32>
    %252 = vector.gather %3[%74, %61] [%251], %48, %250 : tensor<14x14xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
    %253 = index.divu %224, %61
    %254 = vector.matrix_multiply %29, %157 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 3 : i32} : (vector<14xi1>, vector<3xi1>) -> vector<42xi1>
    %255 = vector.reduction <minui>, %164 : vector<2xi1> into i1
    %256 = math.round %219 : tensor<2x2xf16>
    %257 = index.castu %35 : index to i32
    %258 = arith.divui %false_41, %true : i1
    %259 = scf.while (%arg0 = %alloc_5) : (memref<14x14xi1>) -> memref<14x14xi1> {
      %266 = arith.maxf %66, %cst_0 : f16
      %267 = arith.addi %c-14739_i16, %c-14739_i16 : i16
      %268 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
      %269 = vector.outerproduct %47, %49, %268 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
      %270 = math.exp %20 : tensor<f32>
      %271 = math.round %14 : tensor<14x2xf16>
      %extracted_43 = tensor.extract %expanded[%c5, %c0] : tensor<14x1xf32>
      %272 = vector.broadcast %c-14739_i16 : i16 to vector<14xi16>
      %273 = vector.maskedload %alloc_11[%c7], %29, %272 : memref<14xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %274 = math.roundeven %7 : tensor<14xf16>
      scf.condition(%false_32) %alloc_5 : memref<14x14xi1>
    } do {
    ^bb0(%arg0: memref<14x14xi1>):
      %266 = math.absf %219 : tensor<2x2xf16>
      %267 = affine.for %arg1 = 0 to 11 iter_args(%arg2 = %c13) -> (index) {
        affine.yield %63 : index
      }
      %alloca_43 = memref.alloca() : memref<8xi16>
      %from_elements = tensor.from_elements %c978548887_i32, %c1_i32, %c1_i32, %c1109408564_i32, %c1_i32, %c290053402_i32, %c1_i32, %c1109408564_i32, %c1109408564_i32, %c290053402_i32, %c1109408564_i32, %c290053402_i32, %c978548887_i32, %c290053402_i32 : tensor<14xi32>
      %268 = arith.addi %c-14739_i16, %c31988_i16 : i16
      %269 = math.fma %extracted_30, %cst_24, %extracted : f16
      %270 = arith.addf %extracted_30, %cst_0 : f16
      %271 = vector.shuffle %88, %29 [1, 2, 4, 5, 7, 11, 12, 13] : vector<2xi1>, vector<14xi1>
      %c1027112213_i32 = arith.constant 1027112213 : i32
      %272 = math.log2 %cst_2 : f32
      %cst_44 = arith.constant 1.000000e+00 : f16
      %cst_45 = arith.constant 0.000000e+00 : f16
      %273 = vector.transfer_read %alloc_13[%c14, %c14], %cst_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<14x14xf16>, vector<14xf16>
      %274 = affine.min affine_map<(d0, d1) -> (((d1 * -31) floordiv 4) floordiv 4 + 2, (d0 - d1) ceildiv 2, (d1 * -31) floordiv 4 + 8)>(%127, %59)
      %275 = vector.broadcast %cst_2 : f32 to vector<14xf32>
      %276 = vector.fma %275, %275, %187 : vector<14xf32>
      %277 = arith.maxf %cst_24, %cst_28 : f16
      %278 = math.cos %7 : tensor<14xf16>
      %alloc_46 = memref.alloc() : memref<14xi16>
      scf.yield %alloc_3 : memref<14x14xi1>
    }
    %260 = arith.ceildivsi %true_36, %false : i1
    %261 = tensor.empty() : tensor<14x2xi64>
    %262 = linalg.copy ins(%135 : tensor<14x2xi64>) outs(%261 : tensor<14x2xi64>) -> tensor<14x2xi64>
    %263 = tensor.empty(%63, %c13) : tensor<?x?xi64>
    %transposed_42 = linalg.transpose ins(%cast : tensor<?x?xi64>) outs(%263 : tensor<?x?xi64>) permutation = [1, 0] 
    %264 = tensor.empty() : tensor<2xf32>
    %reduced = linalg.reduce ins(%alloc_15 : memref<14x2xf32>) outs(%264 : tensor<2xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %266 = vector.load %alloc_5[%c11, %c7] : memref<14x14xi1>, vector<14x14xi1>
        %267 = math.roundeven %14 : tensor<14x2xf16>
        %268 = index.mul %105, %196
        affine.for %arg0 = 0 to 12 {
        }
        %269 = arith.minsi %true_37, %true_36 : i1
        %270 = memref.realloc %alloc_11 : memref<14xi16> to memref<5xi16>
        %false_43 = arith.constant false
        %271 = memref.atomic_rmw assign %cst_24, %alloc_13[%c1, %c0] : (f16, memref<14x14xf16>) -> f16
        %cst_44 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_44 : f32
      }
    scf.parallel (%arg0) = (%c4) to (%145) step (%c13) {
      %266 = arith.shrui %c290053402_i32, %c1_i32 : i32
      %alloca_43 = memref.alloca() : memref<14x2xi64>
      memref.copy %alloc_8, %alloc_7 : memref<14x14xi32> to memref<14x14xi32>
      %267 = arith.maxf %cst_1, %extracted : f16
      %268 = vector.broadcast %extracted_30 : f16 to vector<8x8xf16>
      %269 = vector.outerproduct %252, %250, %268 {kind = #vector.kind<mul>} : vector<8xf16>, vector<8xf16>
      %270 = math.ceil %13 : tensor<14xf32>
      %271 = arith.ori %c978548887_i32, %c290053402_i32 : i32
      %272 = vector.maskedload %alloc_19[%c6], %29, %187 : memref<14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %273 = vector.insertelement %c1928377050_i64, %26[%c1 : index] : vector<3xi64>
      %274 = math.tan %cst_24 : f16
      %dest, %accumulated_value = vector.scan <or>, %116, %136 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
      %275 = math.log1p %cst : f16
      %276 = tensor.empty() : tensor<14xf16>
      %mapped = linalg.map ins(%7 : tensor<14xf16>) outs(%276 : tensor<14xf16>)
        (%in: f16) {
          %281 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
          %282 = vector.fma %281, %281, %281 : vector<14x14xf32>
          %cast_45 = tensor.cast %6 : tensor<8xi64> to tensor<?xi64>
          memref.copy %alloc_7, %alloc_8 : memref<14x14xi32> to memref<14x14xi32>
          %283 = tensor.empty() : tensor<14x2xi32>
          %284 = vector.broadcast %c978548887_i32 : i32 to vector<14x2xi32>
          %285 = vector.broadcast %true_37 : i1 to vector<14x2xi1>
          %286 = vector.gather %283[%rank_38, %197] [%284], %285, %284 : tensor<14x2xi32>, vector<14x2xi32>, vector<14x2xi1>, vector<14x2xi32> into vector<14x2xi32>
          %alloca_46 = memref.alloca() : memref<8xf32>
          %287 = arith.maxsi %c31988_i16, %c-14739_i16 : i16
          %288 = arith.divf %extracted, %66 : f16
          %false_47 = index.bool.constant false
          %289 = math.ctpop %c1015113332_i64 : i64
          %290 = math.rsqrt %123 : tensor<14x14xf16>
          %291 = arith.maxsi %c1413003870_i64, %c1413003870_i64 : i64
          %292 = vector.insert %false_32, %88 [0] : i1 into vector<2xi1>
          %293 = math.tanh %7 : tensor<14xf16>
          memref.copy %alloc_17, %alloc_13 : memref<14x14xf16> to memref<14x14xf16>
          %294 = affine.max affine_map<(d0, d1, d2) -> ((d1 floordiv 2) mod 2, -d0)>(%rank, %59, %139)
          %295 = math.rsqrt %7 : tensor<14xf16>
          %296 = index.mul %c15, %c15
          %297 = arith.divf %cst_0, %cst_0 : f16
          %298 = arith.shli %c1928377050_i64, %c1934290139_i64 : i64
          %299 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
          %300 = vector.outerproduct %182, %49, %299 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
          %alloca_48 = memref.alloca() : memref<8xf32>
          %inserted_49 = tensor.insert %c2078458034_i64 into %6[%c1] : tensor<8xi64>
          %false_50 = index.bool.constant false
          %rank_51 = tensor.rank %16 : tensor<14x14xi1>
          %301 = math.log2 %transposed : tensor<2x14xf16>
          %302 = arith.remf %cst_2, %cst_2 : f32
          %303 = vector.transpose %164, [0] : vector<2xi1> to vector<2xi1>
          %304 = bufferization.to_memref %14 : memref<14x2xf16>
          %305 = affine.max affine_map<(d0, d1) -> (d1 * 130, (d1 * 2) mod 16)>(%c11, %241)
          %306 = index.sizeof
          %307 = index.divs %c6, %59
          %308 = arith.divf %cst, %cst_1 : f16
          %cst_52 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_52 : f16
        }
      %277 = tensor.empty() : tensor<2x2xf32>
      %278 = tensor.empty() : tensor<14x2xf32>
      %279 = linalg.matmul ins(%0, %277 : tensor<14x2xf32>, tensor<2x2xf32>) outs(%278 : tensor<14x2xf32>) -> tensor<14x2xf32>
      %280 = index.ceildivu %c11, %c10
      %alloc_44 = memref.alloc() : memref<14x2xf16>
      scf.yield
    }
    %265 = affine.vector_load %alloc_8[%197, %c13] : memref<14x14xi32>, vector<14xi32>
    affine.vector_store %250, %alloc_12[%61] : memref<8xf16>, vector<8xf16>
    vector.print %19 : vector<8xi64>
    vector.print %22 : vector<f16>
    vector.print %26 : vector<3xi64>
    vector.print %29 : vector<14xi1>
    vector.print %47 : vector<8xf32>
    vector.print %48 : vector<8xi1>
    vector.print %49 : vector<8xf32>
    vector.print %52 : vector<8xf32>
    vector.print %88 : vector<2xi1>
    vector.print %93 : vector<i16>
    vector.print %114 : vector<14x14xf16>
    vector.print %115 : vector<14x14xi1>
    vector.print %116 : vector<14x14xi32>
    vector.print %117 : vector<14x14xf16>
    vector.print %118 : vector<8xf32>
    vector.print %125 : vector<i1>
    vector.print %136 : vector<14xi32>
    vector.print %144 : vector<8xf32>
    vector.print %154 : vector<i64>
    vector.print %157 : vector<3xi1>
    vector.print %164 : vector<2xi1>
    vector.print %182 : vector<8xf32>
    vector.print %187 : vector<14xf32>
    vector.print %194 : vector<5xi64>
    vector.print %227 : vector<14x14xi32>
    vector.print %231 : vector<14xf16>
    vector.print %250 : vector<8xf16>
    vector.print %251 : vector<8xi32>
    vector.print %252 : vector<8xf16>
    vector.print %254 : vector<42xi1>
    vector.print %265 : vector<14xi32>
    vector.print %true : i1
    vector.print %c1934290139_i64 : i64
    vector.print %c978548887_i32 : i32
    vector.print %c290053402_i32 : i32
    vector.print %cst : f16
    vector.print %c1413003870_i64 : i64
    vector.print %c31988_i16 : i16
    vector.print %c1928377050_i64 : i64
    vector.print %false : i1
    vector.print %cst_0 : f16
    vector.print %c1109408564_i32 : i32
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c2078458034_i64 : i64
    vector.print %c1015113332_i64 : i64
    vector.print %c-14739_i16 : i16
    vector.print %extracted : f16
    vector.print %66 : f16
    vector.print %cst_24 : f16
    vector.print %cst_28 : f16
    vector.print %extracted_29 : f16
    vector.print %extracted_30 : f16
    vector.print %false_32 : i1
    vector.print %c1_i32 : i32
    vector.print %true_36 : i1
    vector.print %true_37 : i1
    vector.print %false_41 : i1
    return
  }
}
