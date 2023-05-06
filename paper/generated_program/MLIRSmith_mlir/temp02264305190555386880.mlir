module {
  func.func nested @func1(%arg0: vector<15x1xi16>, %arg1: memref<15x1xf16>, %arg2: memref<3xi64>) -> i1 {
    %cst = arith.constant 4.328000e+03 : f16
    %c1972279773_i32 = arith.constant 1972279773 : i32
    %c1037882035_i32 = arith.constant 1037882035 : i32
    %c-20124_i16 = arith.constant -20124 : i16
    %false = arith.constant false
    %c1973525053_i64 = arith.constant 1973525053 : i64
    %c979990896_i32 = arith.constant 979990896 : i32
    %c467_i16 = arith.constant 467 : i16
    %c1891599200_i64 = arith.constant 1891599200 : i64
    %cst_0 = arith.constant 6.204000e+03 : f16
    %cst_1 = arith.constant 5.593600e+04 : f16
    %c83324626_i32 = arith.constant 83324626 : i32
    %c-2756_i16 = arith.constant -2756 : i16
    %c446423599_i32 = arith.constant 446423599 : i32
    %c1458_i16 = arith.constant 1458 : i16
    %cst_2 = arith.constant 0x4D05381E : f32
    %0 = tensor.empty() : tensor<3x1xf32>
    %1 = tensor.empty() : tensor<15x1xi16>
    %2 = tensor.empty() : tensor<1x1xi1>
    %3 = tensor.empty() : tensor<3xf32>
    %4 = tensor.empty() : tensor<1x1xf32>
    %5 = tensor.empty() : tensor<3x1xi64>
    %6 = tensor.empty() : tensor<15x1xi16>
    %7 = tensor.empty() : tensor<1x1xi32>
    %8 = tensor.empty() : tensor<15x1xi1>
    %9 = tensor.empty() : tensor<1x1xi16>
    %10 = tensor.empty() : tensor<15x1xi1>
    %11 = tensor.empty() : tensor<1x1xf32>
    %12 = tensor.empty() : tensor<3x1xi64>
    %13 = tensor.empty() : tensor<3xi32>
    %14 = tensor.empty() : tensor<15x1xi1>
    %15 = tensor.empty() : tensor<3x1xi16>
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
    %alloc = memref.alloc() : memref<1x1xi1>
    %alloc_3 = memref.alloc() : memref<3x1xi16>
    %alloc_4 = memref.alloc() : memref<3x1xi32>
    %alloc_5 = memref.alloc() : memref<1x1xi32>
    %alloc_6 = memref.alloc() : memref<3xi1>
    %alloc_7 = memref.alloc() : memref<3x1xf32>
    %alloc_8 = memref.alloc() : memref<3xf16>
    %alloc_9 = memref.alloc() : memref<1x1xi32>
    %alloc_10 = memref.alloc() : memref<1x1xf16>
    %alloc_11 = memref.alloc() : memref<15x1xi1>
    %alloc_12 = memref.alloc() : memref<1x1xf32>
    %alloc_13 = memref.alloc() : memref<3x1xi1>
    %alloc_14 = memref.alloc() : memref<15x1xi32>
    %alloc_15 = memref.alloc() : memref<15x1xi1>
    %alloc_16 = memref.alloc() : memref<3x1xi1>
    %alloc_17 = memref.alloc() : memref<1x1xi32>
    %16 = tensor.empty() : tensor<1x1xi32>
    %17 = linalg.copy ins(%7 : tensor<1x1xi32>) outs(%16 : tensor<1x1xi32>) -> tensor<1x1xi32>
    %18 = tensor.empty() : tensor<1x1xi32>
    %transposed = linalg.transpose ins(%16 : tensor<1x1xi32>) outs(%18 : tensor<1x1xi32>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%8 : tensor<15x1xi1>) outs(%19 : tensor<i1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %263 = memref.realloc %alloc_6 : memref<3xi1> to memref<1xi1>
        %264 = index.ceildivu %c9, %c1
        %265 = arith.maxf %cst_1, %cst_0 : f16
        %266 = math.absf %3 : tensor<3xf32>
        %267 = arith.divsi %c-2756_i16, %c-20124_i16 : i16
        %268 = math.absi %1 : tensor<15x1xi16>
        %269 = vector.broadcast %c83324626_i32 : i32 to vector<3xi32>
        %270 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%c11, %c9, %c0, %c14)
        %false_39 = arith.constant false
        linalg.yield %false_39 : i1
      }
    scf.parallel (%arg3) = (%c8) to (%c5) step (%c4) {
      %expanded_39 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<15x1xi1> into tensor<15x1x1xi1>
      %263 = index.castu %c12 : index to i32
      %264 = tensor.empty() : tensor<3x1xf16>
      %265 = vector.broadcast %cst_1 : f16 to vector<3x1xf16>
      %266 = vector.broadcast %false : i1 to vector<3x1xi1>
      %267 = vector.broadcast %c1972279773_i32 : i32 to vector<3x1xi32>
      %268 = vector.gather %264[%c12, %c1] [%267], %266, %265 : tensor<3x1xf16>, vector<3x1xi32>, vector<3x1xi1>, vector<3x1xf16> into vector<3x1xf16>
      %269 = vector.broadcast %cst_0 : f16 to vector<1x1xf16>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %268, %268, %269 : vector<3x1xf16>, vector<3x1xf16> into vector<1x1xf16>
      %271 = vector.broadcast %false : i1 to vector<15xi1>
      %272 = vector.flat_transpose %271 {columns = 5 : i32, rows = 3 : i32} : vector<15xi1> -> vector<15xi1>
      %273 = math.fpowi %4, %7 : tensor<1x1xf32>, tensor<1x1xi32>
      %274 = memref.alloca_scope  -> (memref<3xi16>) {
        %281 = arith.cmpf ole, %cst_1, %cst : f16
        %282 = arith.divf %cst_0, %cst : f16
        %283 = arith.muli %c1972279773_i32, %c83324626_i32 : i32
        %284 = math.log %cst_1 : f16
        %285 = bufferization.to_tensor %alloc_7 : memref<3x1xf32>
        %286 = vector.load %alloc_10[%c0, %c0] : memref<1x1xf16>, vector<3xf16>
        affine.store %c446423599_i32, %alloc_9[%c10, %c10] : memref<1x1xi32>
        %287 = arith.cmpi eq, %c467_i16, %c1458_i16 : i16
        %288 = math.absi %7 : tensor<1x1xi32>
        %289 = memref.realloc %alloc_8 : memref<3xf16> to memref<3xf16>
        %290 = math.sqrt %11 : tensor<1x1xf32>
        %291 = vector.broadcast %false : i1 to vector<15x15xi1>
        %292 = vector.outerproduct %271, %271, %291 {kind = #vector.kind<minsi>} : vector<15xi1>, vector<15xi1>
        %293 = vector.insert %false, %271 [12] : i1 into vector<15xi1>
        %294 = arith.minf %cst_0, %cst_1 : f16
        %295 = vector.broadcast %false : i1 to vector<15x15xi1>
        %296 = vector.outerproduct %271, %271, %295 {kind = #vector.kind<minsi>} : vector<15xi1>, vector<15xi1>
        %297 = arith.addi %c979990896_i32, %c1972279773_i32 : i32
        %298 = math.tan %4 : tensor<1x1xf32>
        %299 = arith.cmpf ueq, %cst, %cst : f16
        %300 = arith.divui %c1458_i16, %c-2756_i16 : i16
        %301 = math.ipowi %12, %5 : tensor<3x1xi64>
        %302 = tensor.empty(%c9, %c12) : tensor<?x?xi32>
        %303 = tensor.empty() : tensor<1x1xf32>
        %304 = linalg.matmul ins(%4, %11 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%303 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %305 = vector.broadcast %cst : f16 to vector<1xf16>
        %306 = vector.insert %305, %265 [2] : vector<1xf16> into vector<3x1xf16>
        %307 = vector.bitcast %265 : vector<3x1xf16> to vector<3x1xi16>
        %308 = memref.load %alloc_16[%c0, %c0] : memref<3x1xi1>
        %309 = index.divu %c3, %c3
        %310 = arith.addi %c83324626_i32, %c979990896_i32 : i32
        %311 = math.log1p %0 : tensor<3x1xf32>
        %312 = arith.minsi %c1458_i16, %c-20124_i16 : i16
        %313 = index.divu %arg3, %arg3
        %314 = affine.apply affine_map<(d0, d1) -> (d1 + d1 + (d0 * 2 + d0 floordiv 2) ceildiv 64 - 4 - 4)>(%c10, %c3)
        %315 = arith.cmpi ule, %c1972279773_i32, %c446423599_i32 : i32
        %alloc_41 = memref.alloc() : memref<3xi16>
        memref.alloca_scope.return %alloc_41 : memref<3xi16>
      }
      memref.store %false, %alloc_11[%c0, %c0] : memref<15x1xi1>
      %alloc_40 = memref.alloc() : memref<15x1xi16>
      vector.print %266 : vector<3x1xi1>
      %275 = math.fma %0, %0, %0 : tensor<3x1xf32>
      %276 = math.sqrt %264 : tensor<3x1xf16>
      %277 = arith.maxf %cst_2, %cst_2 : f32
      %278 = arith.minsi %c83324626_i32, %c979990896_i32 : i32
      %279 = memref.load %alloc_16[%c0, %c0] : memref<3x1xi1>
      %280 = vector.multi_reduction <xor>, %271, %false [0] : vector<15xi1> to i1
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c6, %c8] : memref<15x1xi1>, vector<1xi1>
    affine.vector_store %20, %alloc_6[%c15] : memref<3xi1>, vector<1xi1>
    %21 = tensor.empty() : tensor<3xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%13, %21 : tensor<3xi32>, tensor<3xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = index.divu %c14, %c0
    vector.print %20 : vector<1xi1>
    %25 = vector.extract %20[0] : vector<1xi1>
    %26 = vector.broadcast %c446423599_i32 : i32 to vector<i32>
    vector.transfer_write %26, %alloc_9[%c4, %c3] : vector<i32>, memref<1x1xi32>
    %27 = math.fma %3, %3, %3 : tensor<3xf32>
    %28 = math.ctpop %7 : tensor<1x1xi32>
    affine.store %c979990896_i32, %alloc_14[%c1, %c0] : memref<15x1xi32>
    %29 = bufferization.to_tensor %alloc_10 : memref<1x1xf16>
    %30 = arith.cmpf ule, %cst_0, %cst : f16
    %31 = arith.ori %c979990896_i32, %c83324626_i32 : i32
    %32 = arith.addi %c1037882035_i32, %c1972279773_i32 : i32
    %33 = vector.broadcast %false : i1 to vector<1x1xi1>
    %34 = vector.outerproduct %20, %20, %33 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
    %35 = bufferization.to_memref %9 : memref<1x1xi16>
    %36 = memref.alloca_scope  -> (i16) {
      %263 = arith.cmpi eq, %c1037882035_i32, %c446423599_i32 : i32
      affine.for %arg3 = 0 to 104 {
      }
      %264 = index.floordivs %c3, %c15
      %generated_39 = tensor.generate %24 {
      ^bb0(%arg3: index):
        %293 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %294 = vector.fma %293, %293, %293 : vector<1x1xf32>
        %295 = math.ipowi %15, %15 : tensor<3x1xi16>
        %296 = math.tan %0 : tensor<3x1xf32>
        %297 = arith.maxf %cst_1, %cst_1 : f16
        tensor.yield %c1972279773_i32 : i32
      } : tensor<?xi32>
      %alloc_40 = memref.alloc() : memref<3x1xf16>
      %265 = vector.insert %false, %20 [0] : i1 into vector<1xi1>
      %266 = arith.divui %c83324626_i32, %c83324626_i32 : i32
      %267 = vector.extract %20[0] : vector<1xi1>
      %268 = math.ctlz %c446423599_i32 : i32
      %269 = math.ceil %3 : tensor<3xf32>
      %270 = vector.broadcast %false : i1 to vector<3xi1>
      %271 = vector.transfer_write %270, %10[%c6, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi1>, tensor<15x1xi1>
      %alloc_41 = memref.alloc() : memref<1x1xi64>
      %272 = arith.shrsi %c1972279773_i32, %c446423599_i32 : i32
      %273 = vector.multi_reduction <xor>, %270, %false [0] : vector<3xi1> to i1
      %274 = math.fma %4, %11, %11 : tensor<1x1xf32>
      %275 = math.tanh %3 : tensor<3xf32>
      %276 = math.log2 %29 : tensor<1x1xf16>
      %277 = math.copysign %cst, %cst_1 : f16
      %inserted_42 = tensor.insert %c-2756_i16 into %6[%c0, %c0] : tensor<15x1xi16>
      %278 = math.atan2 %0, %0 : tensor<3x1xf32>
      %279 = math.tan %0 : tensor<3x1xf32>
      %280 = arith.cmpf false, %cst_2, %cst_2 : f32
      %281 = math.tan %11 : tensor<1x1xf32>
      %282 = scf.if %273 -> (memref<3x1xf32>) {
        %293 = math.fma %0, %0, %0 : tensor<3x1xf32>
        %294 = arith.minsi %c1458_i16, %c1458_i16 : i16
        %295 = vector.extract %20[0] : vector<1xi1>
        %296 = math.ipowi %13, %21 : tensor<3xi32>
        %297 = index.maxs %c0, %264
        %298 = arith.andi %c-2756_i16, %c-20124_i16 : i16
        %299 = vector.insert %false, %270 [2] : i1 into vector<3xi1>
        %300 = vector.broadcast %273 : i1 to vector<3x3xi1>
        %301 = vector.outerproduct %270, %270, %300 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
        scf.yield %alloc_7 : memref<3x1xf32>
      } else {
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %false : vector<1xi1>, vector<1xi1> into i1
        %294 = vector.flat_transpose %270 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        bufferization.dealloc_tensor %1 : tensor<15x1xi16>
        %295 = arith.andi %c979990896_i32, %c1972279773_i32 : i32
        %alloc_44 = memref.alloc() : memref<3xf32>
        %296 = memref.realloc %alloc_8 : memref<3xf16> to memref<3xf16>
        %297 = tensor.empty() : tensor<3x1xi32>
        %298 = math.fpowi %0, %297 : tensor<3x1xf32>, tensor<3x1xi32>
        %299 = math.expm1 %cst_2 : f32
        scf.yield %alloc_7 : memref<3x1xf32>
      }
      %283 = vector.broadcast %273 : i1 to vector<1x1xi1>
      %284 = vector.outerproduct %20, %20, %283 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
      %alloc_43 = memref.alloc() : memref<15x1xi16>
      %285 = vector.broadcast %c467_i16 : i16 to vector<15x1xi16>
      %286 = vector.broadcast %273 : i1 to vector<15x1xi1>
      %287 = vector.broadcast %c1037882035_i32 : i32 to vector<15x1xi32>
      %288 = vector.gather %alloc_43[%c2, %c1] [%287], %286, %285 : memref<15x1xi16>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xi16> into vector<15x1xi16>
      %289 = arith.subi %c83324626_i32, %c446423599_i32 : i32
      vector.print %270 : vector<3xi1>
      affine.store %c979990896_i32, %alloc_5[%c12, %c12] : memref<1x1xi32>
      %290 = vector.maskedload %alloc_11[%c8, %c0], %270, %270 : memref<15x1xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
      %291 = bufferization.to_memref %5 : memref<3x1xi64>
      %292 = math.atan %3 : tensor<3xf32>
      memref.alloca_scope.return %c467_i16 : i16
    }
    %37 = math.log10 %4 : tensor<1x1xf32>
    %38 = math.cttz %19 : tensor<i1>
    %39 = math.copysign %cst_2, %cst_2 : f32
    %40 = index.castu %c11 : index to i32
    %41 = vector.extract %20[0] : vector<1xi1>
    %42 = vector.broadcast %false : i1 to vector<1x1xi1>
    %43 = vector.outerproduct %20, %20, %42 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
    %44 = arith.divsi %c-2756_i16, %36 : i16
    %generated = tensor.generate %c5, %c7 {
    ^bb0(%arg3: index, %arg4: index):
      %263 = index.floordivs %c12, %c3
      %264 = vector.multi_reduction <and>, %20, %20 [] : vector<1xi1> to vector<1xi1>
      vector.print %20 : vector<1xi1>
      %collapsed_39 = tensor.collapse_shape %1 [[0, 1]] : tensor<15x1xi16> into tensor<15xi16>
      tensor.yield %36 : i16
    } : tensor<?x?xi16>
    %45 = math.log2 %0 : tensor<3x1xf32>
    %46 = arith.floordivsi %c-20124_i16, %c1458_i16 : i16
    %47 = scf.if %false -> (memref<3xi32>) {
      %263 = bufferization.clone %alloc_10 : memref<1x1xf16> to memref<1x1xf16>
      %264 = index.castu %c12 : index to i32
      %265 = vector.shuffle %20, %20 [1] : vector<1xi1>, vector<1xi1>
      %alloc_39 = memref.alloc() : memref<3x1xi64>
      %266 = vector.broadcast %c1891599200_i64 : i64 to vector<15x1xi64>
      %267 = vector.broadcast %false : i1 to vector<15x1xi1>
      %268 = vector.broadcast %c1972279773_i32 : i32 to vector<15x1xi32>
      %269 = vector.gather %alloc_39[%c8, %24] [%268], %267, %266 : memref<3x1xi64>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xi64> into vector<15x1xi64>
      %270 = arith.muli %c1891599200_i64, %c1891599200_i64 : i64
      %271 = math.absf %cst : f16
      %272 = vector.broadcast %cst_2 : f32 to vector<3x1xf32>
      %273 = vector.fma %272, %272, %272 : vector<3x1xf32>
      %274 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %alloc_40 = memref.alloc() : memref<3xi32>
      scf.yield %alloc_40 : memref<3xi32>
    } else {
      %263 = memref.alloca_scope  -> (i64) {
        %270 = vector.shuffle %20, %20 [0] : vector<1xi1>, vector<1xi1>
        %271 = vector.broadcast %36 : i16 to vector<i16>
        vector.transfer_write %271, %35[%c2, %c6] : vector<i16>, memref<1x1xi16>
        %272 = math.ipowi %c979990896_i32, %c979990896_i32 : i32
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c12, %c0, %c8, %c8)
        %274 = index.ceildivu %c12, %c0
        %275 = arith.ori %c83324626_i32, %c1037882035_i32 : i32
        %276 = index.ceildivu %c1, %24
        %277 = math.cttz %14 : tensor<15x1xi1>
        %278 = index.floordivs %c7, %c13
        %279 = vector.shuffle %271, %271 [0, 1] : vector<i16>, vector<i16>
        %280 = memref.realloc %alloc_6 : memref<3xi1> to memref<3xi1>
        %281 = arith.maxui %c-2756_i16, %c-2756_i16 : i16
        %282 = arith.minui %36, %36 : i16
        %from_elements = tensor.from_elements %36, %c-20124_i16, %c467_i16, %c-2756_i16, %c-20124_i16, %c-20124_i16, %c-20124_i16, %c-2756_i16, %c1458_i16, %36, %c-2756_i16, %36, %c-2756_i16, %c1458_i16, %c-20124_i16 : tensor<15x1xi16>
        %alloc_40 = memref.alloc() : memref<15x1xf32>
        %283 = arith.shrsi %c1891599200_i64, %c1891599200_i64 : i64
        %284 = vector.broadcast %false : i1 to vector<1x1xi1>
        %285 = vector.outerproduct %20, %20, %284 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
        %286 = math.fpowi %cst, %c446423599_i32 : f16, i32
        %287 = math.log10 %29 : tensor<1x1xf16>
        %288 = arith.shli %c-20124_i16, %c1458_i16 : i16
        %289 = arith.remui %c446423599_i32, %c1972279773_i32 : i32
        %290 = math.absi %19 : tensor<i1>
        %291 = math.ceil %3 : tensor<3xf32>
        %292 = arith.muli %c1973525053_i64, %c1891599200_i64 : i64
        %293 = index.castu %c1037882035_i32 : i32 to index
        %294 = vector.broadcast %36 : i16 to vector<1xi16>
        %295 = vector.transfer_write %294, %9[%c15, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi16>, tensor<1x1xi16>
        %296 = index.castu %c83324626_i32 : i32 to index
        %297 = tensor.empty() : tensor<3x1xi16>
        %298 = linalg.matmul ins(%15, %9 : tensor<3x1xi16>, tensor<1x1xi16>) outs(%297 : tensor<3x1xi16>) -> tensor<3x1xi16>
        %299 = arith.cmpf oge, %cst_2, %cst_2 : f32
        bufferization.dealloc_tensor %8 : tensor<15x1xi1>
        %300 = math.log2 %29 : tensor<1x1xf16>
        %collapsed_41 = tensor.collapse_shape %6 [[0, 1]] : tensor<15x1xi16> into tensor<15xi16>
        memref.alloca_scope.return %c1891599200_i64 : i64
      }
      scf.if %false {
        %270 = vector.extract %20[0] : vector<1xi1>
        %false_40 = arith.constant false
        %false_41 = arith.constant false
        %271 = vector.transfer_read %10[%c8, %c5], %false_41 : tensor<15x1xi1>, vector<i1>
        %alloc_42 = memref.alloc() : memref<1x1xi1>
        memref.copy %alloc, %alloc_42 : memref<1x1xi1> to memref<1x1xi1>
        %272 = vector.insertelement %false_40, %20[%c9 : index] : vector<1xi1>
        %273 = memref.load %alloc_4[%c2, %c0] : memref<3x1xi32>
        %274 = math.absf %cst : f16
        %inserted_43 = tensor.insert %263 into %12[%c1, %c0] : tensor<3x1xi64>
        %275 = math.roundeven %0 : tensor<3x1xf32>
      }
      %264 = math.fma %cst_0, %cst, %cst_0 : f16
      %265 = arith.shli %c979990896_i32, %c83324626_i32 : i32
      %266 = math.round %29 : tensor<1x1xf16>
      %267 = arith.divui %c-20124_i16, %36 : i16
      %268 = index.floordivs %c5, %c4
      %269 = arith.cmpi ne, %c467_i16, %c467_i16 : i16
      %alloc_39 = memref.alloc() : memref<3xi32>
      scf.yield %alloc_39 : memref<3xi32>
    }
    %48 = affine.apply affine_map<(d0) -> (-d0)>(%c13)
    %49 = math.tan %cst : f16
    %cst_18 = arith.constant 5.664000e+04 : f16
    %50 = memref.atomic_rmw mulf %cst_0, %alloc_8[%c2] : (f16, memref<3xf16>) -> f16
    %51 = vector.broadcast %false : i1 to vector<1x1xi1>
    %52 = vector.outerproduct %20, %20, %51 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
    %53 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %false : vector<1xi1>, vector<1xi1> into i1
    %54 = index.castu %48 : index to i32
    %55 = math.round %11 : tensor<1x1xf32>
    %56 = vector.bitcast %20 : vector<1xi1> to vector<1xi1>
    %57 = math.copysign %11, %4 : tensor<1x1xf32>
    %58 = affine.min affine_map<(d0) -> (0, d0, -d0 - (d0 * -2 - 128) - d0 * 2, (-d0 - (d0 * -2 - 128) - d0 * 2) ceildiv 128)>(%c10)
    %59 = math.absi %c-20124_i16 : i16
    %60 = math.exp %cst_2 : f32
    %61 = math.log10 %cst_1 : f16
    %62 = math.absi %12 : tensor<3x1xi64>
    %63 = bufferization.to_memref %generated : memref<?x?xi16>
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_19 = arith.constant 0 : i32
    %64 = vector.transfer_read %alloc_17[%c2, %c1], %c0_i32_19 : memref<1x1xi32>, vector<i32>
    %65 = arith.subi %c1037882035_i32, %c979990896_i32 : i32
    %66 = math.ipowi %c83324626_i32, %c0_i32 : i32
    %67 = memref.alloca_scope  -> (memref<15x1xf32>) {
      %263 = math.copysign %0, %0 : tensor<3x1xf32>
      %264 = index.ceildivu %c14, %c7
      %265 = arith.cmpi eq, %c467_i16, %c467_i16 : i16
      %266 = index.maxu %c5, %c12
      %267 = vector.insert %false, %20 [0] : i1 into vector<1xi1>
      %268 = math.powf %cst, %cst_0 : f16
      %269 = math.tan %0 : tensor<3x1xf32>
      %270 = vector.multi_reduction <or>, %20, %false [0] : vector<1xi1> to i1
      %271 = arith.ori %c-20124_i16, %c467_i16 : i16
      %272 = arith.maxui %c1972279773_i32, %c1037882035_i32 : i32
      %273 = arith.shli %false, %270 : i1
      %extracted_39 = tensor.extract %14[%c6, %c0] : tensor<15x1xi1>
      memref.alloca_scope  {
        %293 = math.tan %3 : tensor<3xf32>
        %294 = math.copysign %cst, %cst_1 : f16
        %295 = math.log10 %4 : tensor<1x1xf32>
        %296 = math.fma %4, %11, %11 : tensor<1x1xf32>
        %297 = arith.remui %c-20124_i16, %c-2756_i16 : i16
        bufferization.dealloc_tensor %reduced : tensor<i1>
        %alloc_45 = memref.alloc() : memref<3x1xf32>
        memref.copy %alloc_7, %alloc_45 : memref<3x1xf32> to memref<3x1xf32>
        %298 = vector.broadcast %false : i1 to vector<3xi1>
        %299 = vector.maskedload %alloc_6[%c2], %298, %298 : memref<3xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %300 = math.atan %0 : tensor<3x1xf32>
        %301 = arith.floordivsi %extracted_39, %extracted_39 : i1
        %302 = memref.load %alloc_10[%c0, %c0] : memref<1x1xf16>
        %303 = math.fma %3, %3, %3 : tensor<3xf32>
        %304 = vector.broadcast %c979990896_i32 : i32 to vector<i32>
        %305 = vector.transfer_write %304, %16[%c11, %c0] : vector<i32>, tensor<1x1xi32>
        %306 = index.divu %c5, %c3
        %307 = math.ipowi %7, %18 : tensor<1x1xi32>
        %308 = math.rsqrt %cst_1 : f16
        %309 = math.copysign %cst_1, %cst : f16
        %310 = vector.broadcast %c0_i32 : i32 to vector<3x1xi32>
        %311 = index.divu %c7, %c8
        %312 = math.log10 %cst : f16
        %extracted_46 = tensor.extract %23[] : tensor<i32>
        %313 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c4, %c9, %24, %c3)
        %314 = vector.reduction <or>, %299 : vector<3xi1> into i1
        %315 = vector.broadcast %cst_2 : f32 to vector<15x1xf32>
        %316 = vector.fma %315, %315, %315 : vector<15x1xf32>
        %317 = arith.addi %c467_i16, %c1458_i16 : i16
        %318 = math.log10 %11 : tensor<1x1xf32>
        %319 = arith.minf %cst_0, %cst : f16
        %320 = vector.broadcast %c-2756_i16 : i16 to vector<3x1xi16>
        %321 = vector.broadcast %false : i1 to vector<3x1xi1>
        %322 = vector.gather %35[%311, %c3] [%310], %321, %320 : memref<1x1xi16>, vector<3x1xi32>, vector<3x1xi1>, vector<3x1xi16> into vector<3x1xi16>
        %expanded_47 = tensor.expand_shape %13 [[0, 1]] : tensor<3xi32> into tensor<3x1xi32>
        %323 = vector.load %alloc_14[%c6, %c0] : memref<15x1xi32>, vector<1x1xi32>
        %324 = vector.insert %false, %298 [0] : i1 into vector<3xi1>
        memref.store %false, %alloc[%c0, %c0] : memref<1x1xi1>
      }
      %274 = math.ipowi %7, %transposed : tensor<1x1xi32>
      %275 = math.powf %0, %0 : tensor<3x1xf32>
      %276 = math.absi %c1973525053_i64 : i64
      %277 = index.mul %264, %24
      %278 = math.fpowi %29, %7 : tensor<1x1xf16>, tensor<1x1xi32>
      %279 = math.log2 %cst_2 : f32
      %280 = memref.realloc %alloc_6 : memref<3xi1> to memref<1xi1>
      %281 = math.log2 %cst : f16
      %282 = memref.realloc %47 : memref<3xi32> to memref<1xi32>
      %cst_40 = arith.constant 1.000000e+00 : f32
      %283 = vector.transfer_read %3[%c5], %cst_40 : tensor<3xf32>, vector<f32>
      %284 = vector.broadcast %cst_40 : f32 to vector<15xf32>
      %285 = vector.transfer_write %284, %11[%264, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf32>, tensor<1x1xf32>
      %286 = arith.minf %cst_0, %cst : f16
      %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %56, %270 : vector<1xi1>, vector<1xi1> into i1
      %288 = tensor.empty() : tensor<3x3x3xf32>
      %alloc_41 = memref.alloc() : memref<3x3xf32>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41, %3, %3 : memref<3x3xf32>, tensor<3xf32>, tensor<3xf32>) outs(%288 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %in_45: f32, %in_46: f32, %out: f32):
        %293 = math.sqrt %cst_40 : f32
        %294 = vector.flat_transpose %284 {columns = 5 : i32, rows = 3 : i32} : vector<15xf32> -> vector<15xf32>
        %295 = vector.broadcast %out : f32 to vector<3x1xf32>
        %296 = vector.fma %295, %295, %295 : vector<3x1xf32>
        %297 = arith.cmpi ule, %extracted_39, %false : i1
        %298 = arith.addi %270, %270 : i1
        %299 = arith.minf %cst_40, %in_45 : f32
        %300 = math.log1p %29 : tensor<1x1xf16>
        %301 = math.absi %23 : tensor<i32>
        %302 = math.tan %cst_1 : f16
        %303 = vector.insertelement %extracted_39, %20[%c5 : index] : vector<1xi1>
        %304 = arith.floordivsi %c1891599200_i64, %c1891599200_i64 : i64
        %305 = arith.shrui %c446423599_i32, %c1037882035_i32 : i32
        %306 = memref.realloc %47 : memref<3xi32> to memref<1xi32>
        %307 = arith.andi %36, %c-20124_i16 : i16
        %308 = vector.matrix_multiply %56, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %309 = vector.splat %24 : vector<15x1xindex>
        %310 = arith.minui %36, %c467_i16 : i16
        %311 = math.fpowi %out, %c1037882035_i32 : f32, i32
        %312 = math.ceil %out : f32
        %313 = arith.addi %c0_i32, %c0_i32 : i32
        %314 = tensor.empty() : tensor<3x1xi16>
        %315 = linalg.matmul ins(%15, %9 : tensor<3x1xi16>, tensor<1x1xi16>) outs(%314 : tensor<3x1xi16>) -> tensor<3x1xi16>
        %alloc_47 = memref.alloc() : memref<3x1xf32>
        %316 = math.tan %4 : tensor<1x1xf32>
        %317 = memref.atomic_rmw mins %c1972279773_i32, %alloc_17[%c0, %c0] : (i32, memref<1x1xi32>) -> i32
        %318 = bufferization.to_memref %18 : memref<1x1xi32>
        %319 = vector.bitcast %284 : vector<15xf32> to vector<15xi32>
        memref.copy %318, %alloc_9 : memref<1x1xi32> to memref<1x1xi32>
        %320 = arith.ori %false, %extracted_39 : i1
        %321 = math.powf %out, %out : f32
        %322 = math.ipowi %10, %10 : tensor<15x1xi1>
        %323 = arith.maxsi %270, %extracted_39 : i1
        %324 = vector.insertelement %false, %56[%266 : index] : vector<1xi1>
        linalg.yield %out : f32
      } -> tensor<3x3x3xf32>
      %290 = vector.bitcast %284 : vector<15xf32> to vector<15xf32>
      %extracted_42 = tensor.extract %29[%c0, %c0] : tensor<1x1xf16>
      %collapsed_43 = tensor.collapse_shape %5 [[0, 1]] : tensor<3x1xi64> into tensor<3xi64>
      %291 = index.ceildivu %c9, %c10
      %292 = vector.multi_reduction <add>, %56, %56 [] : vector<1xi1> to vector<1xi1>
      %alloc_44 = memref.alloc() : memref<15x1xf32>
      memref.alloca_scope.return %alloc_44 : memref<15x1xf32>
    }
    %68 = math.log1p %cst_2 : f32
    %alloc_20 = memref.alloc() : memref<1x1xi1>
    %69 = arith.shrsi %c-2756_i16, %c-20124_i16 : i16
    %70 = math.powf %3, %3 : tensor<3xf32>
    %71 = index.divu %c8, %c14
    %72 = scf.index_switch %c13 -> f16 
    case 1 {
      %263 = arith.maxsi %false, %false : i1
      %264 = arith.addi %c1458_i16, %c-20124_i16 : i16
      %265 = vector.reduction <minui>, %20 : vector<1xi1> into i1
      %266 = math.atan %0 : tensor<3x1xf32>
      %267 = index.maxs %c12, %c2
      %268 = math.powf %4, %4 : tensor<1x1xf32>
      %269 = vector.broadcast %cst_2 : f32 to vector<3x1xf32>
      %270 = vector.fma %269, %269, %269 : vector<3x1xf32>
      bufferization.dealloc_tensor %12 : tensor<3x1xi64>
      %271 = arith.muli %36, %c1458_i16 : i16
      %true_39 = index.bool.constant true
      %272 = memref.alloca_scope  -> (memref<15x1xi16>) {
        %275 = affine.load %alloc_6[%c12] : memref<3xi1>
        %276 = math.ipowi %14, %14 : tensor<15x1xi1>
        %277 = math.ctlz %19 : tensor<i1>
        %278 = arith.shli %c-20124_i16, %c1458_i16 : i16
        %279 = math.rsqrt %4 : tensor<1x1xf32>
        %280 = arith.cmpi slt, %275, %true_39 : i1
        %281 = math.log1p %0 : tensor<3x1xf32>
        %282 = arith.minui %c1037882035_i32, %c446423599_i32 : i32
        %283 = math.ipowi %c1458_i16, %36 : i16
        %284 = index.floordivs %c9, %c15
        %285 = math.sqrt %cst_1 : f16
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d1 - 1, d0 floordiv 128, d2 - 16)>(%c12, %c8, %c14, %c8)
        %287 = vector.splat %c467_i16 : vector<3xi16>
        %288 = arith.maxf %cst_1, %cst : f16
        %289 = arith.andi %true_39, %true_39 : i1
        %290 = tensor.empty() : tensor<1x1xi32>
        %291 = linalg.matmul ins(%18, %transposed : tensor<1x1xi32>, tensor<1x1xi32>) outs(%290 : tensor<1x1xi32>) -> tensor<1x1xi32>
        %292 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %293 = vector.fma %292, %292, %292 : vector<1x1xf32>
        %294 = math.log10 %cst : f16
        %alloc_43 = memref.alloc() : memref<3x1xi64>
        %295 = index.castu %24 : index to i32
        %296 = memref.atomic_rmw assign %cst, %alloc_8[%c2] : (f16, memref<3xf16>) -> f16
        %297 = arith.remui %c1037882035_i32, %c979990896_i32 : i32
        %298 = arith.minsi %c0_i32, %c83324626_i32 : i32
        %299 = arith.maxf %cst_1, %cst_0 : f16
        %300 = tensor.empty() : tensor<15x1xi1>
        %301 = linalg.matmul ins(%10, %2 : tensor<15x1xi1>, tensor<1x1xi1>) outs(%300 : tensor<15x1xi1>) -> tensor<15x1xi1>
        %302 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 8, d2 + d1 + 1)>(%286, %286, %c10)
        %303 = memref.realloc %47 : memref<3xi32> to memref<15xi32>
        %304 = arith.remf %cst_0, %cst_1 : f16
        %305 = vector.extract %20[0] : vector<1xi1>
        %306 = index.sizeof
        %alloc_44 = memref.alloc() : memref<1x1xi1>
        %307 = vector.broadcast %cst_2 : f32 to vector<15x1xf32>
        %308 = vector.fma %307, %307, %307 : vector<15x1xf32>
        %alloc_45 = memref.alloc() : memref<15x1xi16>
        memref.alloca_scope.return %alloc_45 : memref<15x1xi16>
      }
      scf.index_switch %c2 
      case 1 {
        %275 = memref.realloc %alloc_8 : memref<3xf16> to memref<1xf16>
        %276 = math.ipowi %7, %18 : tensor<1x1xi32>
        %277 = arith.minsi %c83324626_i32, %c446423599_i32 : i32
        %278 = math.atan %0 : tensor<3x1xf32>
        memref.assume_alignment %67, 2 : memref<15x1xf32>
        %279 = vector.multi_reduction <mul>, %20, %true_39 [0] : vector<1xi1> to i1
        %280 = math.rsqrt %3 : tensor<3xf32>
        %281 = vector.broadcast %c1972279773_i32 : i32 to vector<i32>
        %282 = vector.transfer_write %281, %13[%24] : vector<i32>, tensor<3xi32>
        %283 = memref.atomic_rmw addf %cst_2, %alloc_7[%c1, %c0] : (f32, memref<3x1xf32>) -> f32
        %284 = bufferization.to_memref %0 : memref<3x1xf32>
        %285 = math.round %cst_2 : f32
        %286 = math.powf %29, %29 : tensor<1x1xf16>
        %287 = math.fma %4, %11, %4 : tensor<1x1xf32>
        %alloc_43 = memref.alloc() : memref<1x1xi16>
        memref.copy %35, %alloc_43 : memref<1x1xi16> to memref<1x1xi16>
        %288 = vector.insert %false, %20 [0] : i1 into vector<1xi1>
        %289 = math.ctpop %18 : tensor<1x1xi32>
        scf.yield
      }
      default {
        %275 = arith.cmpi ne, %c-2756_i16, %c467_i16 : i16
        %276 = vector.broadcast %false : i1 to vector<1x1xi1>
        %277 = vector.outerproduct %56, %56, %276 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
        %278 = math.rsqrt %11 : tensor<1x1xf32>
        %expanded_43 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<1x1xi1> into tensor<1x1x1xi1>
        %279 = arith.remsi %c83324626_i32, %c1972279773_i32 : i32
        memref.copy %alloc_5, %alloc_17 : memref<1x1xi32> to memref<1x1xi32>
        %280 = math.ipowi %13, %13 : tensor<3xi32>
        %inserted_44 = tensor.insert %false into %reduced[] : tensor<i1>
        %extracted_45 = tensor.extract %14[%c10, %c0] : tensor<15x1xi1>
        %281 = vector.broadcast %cst_2 : f32 to vector<3xf32>
        %282 = vector.multi_reduction <add>, %269, %281 [1] : vector<3x1xf32> to vector<3xf32>
        %283 = arith.cmpf ult, %cst_1, %cst : f16
        %284 = math.copysign %11, %4 : tensor<1x1xf32>
        %285 = math.powf %0, %0 : tensor<3x1xf32>
        %286 = math.sqrt %0 : tensor<3x1xf32>
        memref.store %extracted_45, %alloc_15[%c2, %c0] : memref<15x1xi1>
        %287 = math.powf %cst_1, %cst : f16
      }
      %273 = vector.extract_strided_slice %56 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %false_40 = arith.constant false
      %false_41 = arith.constant false
      %274 = vector.transfer_read %8[%c0, %c15], %false_41 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<15x1xi1>, vector<1xi1>
      affine.store %cst_0, %alloc_10[%c11, %c13] : memref<1x1xf16>
      %inserted_42 = tensor.insert %c1037882035_i32 into %17[%c0, %c0] : tensor<1x1xi32>
      scf.yield %cst_0 : f16
    }
    case 2 {
      %263 = arith.minsi %c1973525053_i64, %c1973525053_i64 : i64
      %264 = memref.atomic_rmw maxf %cst_2, %alloc_12[%c0, %c0] : (f32, memref<1x1xf32>) -> f32
      %265 = vector.broadcast %cst_2 : f32 to vector<15x1xf32>
      %266 = vector.fma %265, %265, %265 : vector<15x1xf32>
      %267 = math.copysign %11, %11 : tensor<1x1xf32>
      %268 = affine.for %arg3 = 0 to 100 iter_args(%arg4 = %4) -> (tensor<1x1xf32>) {
        affine.yield %4 : tensor<1x1xf32>
      }
      %269 = arith.remf %cst, %cst : f16
      %270 = index.floordivs %c5, %c4
      bufferization.dealloc_tensor %3 : tensor<3xf32>
      %271 = affine.apply affine_map<(d0) -> ((d0 + 128) * 2 - d0)>(%c4)
      %272 = index.maxs %58, %24
      %273 = vector.broadcast %false : i1 to vector<1x1xi1>
      %274 = vector.outerproduct %56, %20, %273 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
      %rank_39 = tensor.rank %13 : tensor<3xi32>
      %275 = math.roundeven %4 : tensor<1x1xf32>
      %276 = math.log2 %cst : f16
      %277 = index.maxu %c9, %71
      %278 = vector.multi_reduction <or>, %20, %20 [] : vector<1xi1> to vector<1xi1>
      scf.yield %cst_0 : f16
    }
    default {
      %263 = index.castu %36 : i16 to index
      %264 = bufferization.clone %alloc_3 : memref<3x1xi16> to memref<3x1xi16>
      %265 = vector.reduction <minsi>, %56 : vector<1xi1> into i1
      %266 = arith.addi %c1037882035_i32, %c1037882035_i32 : i32
      %267 = math.fpowi %4, %7 : tensor<1x1xf32>, tensor<1x1xi32>
      %268 = math.absi %16 : tensor<1x1xi32>
      %269 = arith.floordivsi %false, %false : i1
      %alloc_39 = memref.alloc() : memref<1x1xf32>
      memref.copy %alloc_12, %alloc_39 : memref<1x1xf32> to memref<1x1xf32>
      %270 = bufferization.to_tensor %alloc_16 : memref<3x1xi1>
      %271 = index.castu %36 : i16 to index
      %272 = memref.load %alloc_6[%c1] : memref<3xi1>
      %273 = tensor.empty() : tensor<3x1xf16>
      %274 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
      %275 = vector.broadcast %false : i1 to vector<1x1xi1>
      %276 = vector.broadcast %c1037882035_i32 : i32 to vector<1x1xi32>
      %277 = vector.gather %273[%c6, %263] [%276], %275, %274 : tensor<3x1xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
      %278 = arith.maxsi %c446423599_i32, %c1972279773_i32 : i32
      %279 = math.rsqrt %4 : tensor<1x1xf32>
      %280 = math.expm1 %cst_2 : f32
      %281 = arith.floordivsi %36, %c1458_i16 : i16
      scf.yield %cst_1 : f16
    }
    %73 = arith.floordivsi %c446423599_i32, %c83324626_i32 : i32
    %74 = math.rsqrt %cst_2 : f32
    %75 = affine.apply affine_map<(d0) -> (-d0)>(%24)
    %c2142601686_i32 = arith.constant 2142601686 : i32
    %76 = bufferization.to_memref %7 : memref<1x1xi32>
    %77 = math.ipowi %reduced, %reduced : tensor<i1>
    %78 = arith.mulf %cst_0, %cst_0 : f16
    %79 = arith.ori %c0_i32, %c1972279773_i32 : i32
    %inserted = tensor.insert %c1458_i16 into %15[%c0, %c0] : tensor<3x1xi16>
    %80 = tensor.empty() : tensor<15x1xi1>
    %81 = linalg.matmul ins(%10, %2 : tensor<15x1xi1>, tensor<1x1xi1>) outs(%80 : tensor<15x1xi1>) -> tensor<15x1xi1>
    %82 = tensor.empty() : tensor<15x1xi1>
    %83 = linalg.matmul ins(%8, %2 : tensor<15x1xi1>, tensor<1x1xi1>) outs(%82 : tensor<15x1xi1>) -> tensor<15x1xi1>
    %84 = math.log2 %4 : tensor<1x1xf32>
    %85 = affine.min affine_map<(d0) -> (d0 ceildiv 64, d0)>(%c7)
    %86 = index.floordivs %c3, %c15
    %87 = memref.atomic_rmw maxs %c83324626_i32, %47[%c0] : (i32, memref<3xi32>) -> i32
    %88 = vector.bitcast %56 : vector<1xi1> to vector<1xi1>
    %89 = vector.extract_strided_slice %88 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
    %90 = arith.cmpi sle, %c1973525053_i64, %c1891599200_i64 : i64
    %91 = arith.floordivsi %c83324626_i32, %c0_i32 : i32
    %92 = affine.apply affine_map<(d0, d1) -> (d0 * 256)>(%c6, %c1)
    %93 = arith.maxf %cst, %cst : f16
    %94 = bufferization.to_memref %18 : memref<1x1xi32>
    %95 = math.ceil %0 : tensor<3x1xf32>
    %96 = index.ceildivu %48, %75
    %97 = math.powf %4, %11 : tensor<1x1xf32>
    %98 = vector.multi_reduction <or>, %56, %56 [] : vector<1xi1> to vector<1xi1>
    %99 = index.maxu %c2, %c10
    %100 = index.ceildivu %99, %c5
    %alloc_21 = memref.alloc() : memref<3x1xi32>
    memref.copy %alloc_4, %alloc_21 : memref<3x1xi32> to memref<3x1xi32>
    affine.for %arg3 = 0 to 65 {
    }
    %101 = math.sqrt %0 : tensor<3x1xf32>
    %102 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %103 = memref.realloc %alloc_6 : memref<3xi1> to memref<1xi1>
    affine.for %arg3 = 0 to 104 {
    }
    %104 = index.casts %c10 : index to i32
    %105 = vector.broadcast %cst_2 : f32 to vector<1xf32>
    %106 = vector.multi_reduction <mul>, %102, %105 [1] : vector<1x1xf32> to vector<1xf32>
    %generated_22 = tensor.generate %96 {
    ^bb0(%arg3: index, %arg4: index):
      %263 = math.atan2 %11, %4 : tensor<1x1xf32>
      %264 = scf.while (%arg5 = %20) : (vector<1xi1>) -> vector<1xi1> {
        %267 = vector.flat_transpose %56 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %268 = memref.load %alloc_14[%c2, %c0] : memref<15x1xi32>
        %269 = vector.outerproduct %105, %105, %102 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %270 = math.floor %4 : tensor<1x1xf32>
        %271 = index.floordivs %c11, %c9
        %272 = arith.divui %c1037882035_i32, %c1037882035_i32 : i32
        %273 = math.absi %transposed : tensor<1x1xi32>
        %274 = index.castu %271 : index to i32
        scf.condition(%false) %88 : vector<1xi1>
      } do {
      ^bb0(%arg5: vector<1xi1>):
        %267 = arith.subi %c1973525053_i64, %c1891599200_i64 : i64
        %268 = math.log2 %cst_1 : f16
        %269 = vector.outerproduct %105, %105, %102 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %270 = arith.cmpf oge, %cst, %cst_0 : f16
        %271 = arith.cmpf ueq, %cst_0, %cst_0 : f16
        %272 = math.tan %29 : tensor<1x1xf16>
        %273 = arith.minsi %c979990896_i32, %c979990896_i32 : i32
        %274 = memref.realloc %47 : memref<3xi32> to memref<15xi32>
        %275 = arith.maxsi %false, %false : i1
        %276 = bufferization.to_memref %15 : memref<3x1xi16>
        memref.store %c467_i16, %35[%c0, %c0] : memref<1x1xi16>
        %277 = arith.cmpi ult, %c-2756_i16, %c-2756_i16 : i16
        %278 = arith.shli %c467_i16, %c1458_i16 : i16
        %279 = arith.muli %c1972279773_i32, %c979990896_i32 : i32
        %280 = bufferization.clone %94 : memref<1x1xi32> to memref<1x1xi32>
        %rank_39 = tensor.rank %7 : tensor<1x1xi32>
        scf.yield %56 : vector<1xi1>
      }
      %265 = math.atan %11 : tensor<1x1xf32>
      %266 = math.log10 %3 : tensor<3xf32>
      tensor.yield %false : i1
    } : tensor<?x1xi1>
    %107 = vector.extract %56[0] : vector<1xi1>
    %108 = arith.andi %c1972279773_i32, %c446423599_i32 : i32
    %109 = bufferization.to_tensor %alloc_14 : memref<15x1xi32>
    %110 = math.fma %cst_2, %cst_2, %cst_2 : f32
    %111 = math.rsqrt %4 : tensor<1x1xf32>
    %112 = tensor.empty(%75, %c0) : tensor<?x?xi1>
    %113 = bufferization.clone %94 : memref<1x1xi32> to memref<1x1xi32>
    %114 = arith.divsi %c0_i32, %c979990896_i32 : i32
    %115 = vector.bitcast %89 : vector<1xi1> to vector<1xi1>
    %116 = arith.muli %c979990896_i32, %c83324626_i32 : i32
    %117 = arith.shrsi %false, %false : i1
    %118 = arith.divsi %c979990896_i32, %c1972279773_i32 : i32
    %119 = index.divu %58, %c14
    %120 = math.log2 %3 : tensor<3xf32>
    %121 = index.floordivs %c12, %99
    %122 = math.tanh %cst : f16
    %123 = vector.broadcast %false : i1 to vector<1x1xi1>
    %124 = vector.outerproduct %89, %115, %123 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
    %125 = vector.load %alloc_15[%c13, %c0] : memref<15x1xi1>, vector<15x1xi1>
    %126 = affine.min affine_map<(d0) -> (d0, d0 - d0 floordiv 4, (d0 - d0 floordiv 4) floordiv 16, d0 floordiv 4)>(%c9)
    %127 = math.round %cst : f16
    %128 = math.cttz %6 : tensor<15x1xi16>
    %129 = vector.extract %56[0] : vector<1xi1>
    %rank = tensor.rank %15 : tensor<3x1xi16>
    %130 = math.ipowi %1, %6 : tensor<15x1xi16>
    %131 = math.roundeven %11 : tensor<1x1xf32>
    %132 = math.log2 %0 : tensor<3x1xf32>
    %133 = arith.cmpf ule, %cst_1, %cst_0 : f16
    %134 = index.floordivs %c2, %rank
    %135 = index.maxs %c11, %75
    %cst_23 = arith.constant 2.01995315E+9 : f32
    %136 = arith.muli %c979990896_i32, %c1972279773_i32 : i32
    %137 = math.log2 %cst_1 : f16
    %138 = tensor.empty() : tensor<1x1xi1>
    %139 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %105, %105, %cst_2 : vector<1xf32>, vector<1xf32> into f32
    %140 = arith.maxsi %c1458_i16, %36 : i16
    %141 = tensor.empty() : tensor<1x1xi1>
    %142 = linalg.matmul ins(%138, %2 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%141 : tensor<1x1xi1>) -> tensor<1x1xi1>
    %143 = vector.bitcast %125 : vector<15x1xi1> to vector<15x1xi1>
    %144 = arith.shrsi %c446423599_i32, %c1037882035_i32 : i32
    %145 = vector.load %alloc_8[%c2] : memref<3xf16>, vector<3x1xf16>
    %146 = math.rsqrt %4 : tensor<1x1xf32>
    %147 = memref.alloca_scope  -> (memref<3xi16>) {
      %263 = index.casts %c11 : index to i32
      %264 = arith.subi %c83324626_i32, %c446423599_i32 : i32
      %generated_39 = tensor.generate %75 {
      ^bb0(%arg3: index):
        %292 = math.rsqrt %11 : tensor<1x1xf32>
        %293 = vector.splat %100 : vector<3xindex>
        %294 = arith.andi %c979990896_i32, %c1037882035_i32 : i32
        %295 = arith.muli %c83324626_i32, %c979990896_i32 : i32
        tensor.yield %c1891599200_i64 : i64
      } : tensor<?xi64>
      %inserted_40 = tensor.insert %false into %138[%c0, %c0] : tensor<1x1xi1>
      %265 = math.tan %cst_2 : f32
      %266 = math.fpowi %11, %18 : tensor<1x1xf32>, tensor<1x1xi32>
      %267 = tensor.empty() : tensor<15x1xi1>
      %268 = linalg.matmul ins(%8, %138 : tensor<15x1xi1>, tensor<1x1xi1>) outs(%267 : tensor<15x1xi1>) -> tensor<15x1xi1>
      %269 = bufferization.clone %alloc_13 : memref<3x1xi1> to memref<3x1xi1>
      %270 = affine.for %arg3 = 0 to 32 iter_args(%arg4 = %cst_2) -> (f32) {
        affine.yield %cst_2 : f32
      }
      %271 = vector.broadcast %c0_i32 : i32 to vector<1xi32>
      %272 = vector.maskedload %alloc_4[%c2, %c0], %20, %271 : memref<3x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %273 = arith.cmpi ult, %c1972279773_i32, %c446423599_i32 : i32
      %274 = math.roundeven %29 : tensor<1x1xf16>
      %275 = arith.cmpi eq, %c1973525053_i64, %c1891599200_i64 : i64
      %276 = index.divu %75, %c15
      %277 = arith.remf %cst_2, %cst_2 : f32
      %278 = index.floordivs %c0, %rank
      %279 = arith.mulf %cst_1, %cst_1 : f16
      %280 = vector.insertelement %false, %115[%75 : index] : vector<1xi1>
      %281 = arith.ori %c-20124_i16, %c1458_i16 : i16
      %282 = math.absi %1 : tensor<15x1xi16>
      %283 = memref.atomic_rmw ori %c979990896_i32, %alloc_17[%c0, %c0] : (i32, memref<1x1xi32>) -> i32
      %284 = math.log %11 : tensor<1x1xf32>
      %285 = index.maxu %86, %rank
      %286 = math.tanh %cst_1 : f16
      %true_41 = index.bool.constant true
      %287 = index.maxs %c3, %c11
      %cst_42 = arith.constant 1.000000e+00 : f32
      %288 = vector.transfer_read %alloc_7[%86, %121], %cst_42 : memref<3x1xf32>, vector<f32>
      %rank_43 = tensor.rank %2 : tensor<1x1xi1>
      %289 = affine.apply affine_map<(d0, d1) -> (d1 + d1 + (d0 * 2 + d0 floordiv 2) ceildiv 64 - 4 - 4)>(%100, %86)
      %290 = math.log2 %0 : tensor<3x1xf32>
      %generated_44 = tensor.generate %58 {
      ^bb0(%arg3: index, %arg4: index):
        %c0_i32_46 = arith.constant 0 : i32
        %292 = vector.transfer_read %76[%86, %24], %c0_i32_46 : memref<1x1xi32>, vector<i32>
        %293 = vector.insert %false, %20 [0] : i1 into vector<1xi1>
        %294 = arith.addi %c1037882035_i32, %c1972279773_i32 : i32
        %295 = index.floordivs %c14, %c11
        tensor.yield %cst_42 : f32
      } : tensor<?x1xf32>
      %291 = math.exp %11 : tensor<1x1xf32>
      %alloc_45 = memref.alloc() : memref<3xi16>
      memref.alloca_scope.return %alloc_45 : memref<3xi16>
    }
    %148 = arith.floordivsi %c0_i32, %c0_i32 : i32
    %149 = math.expm1 %cst_0 : f16
    memref.store %false, %alloc_6[%c2] : memref<3xi1>
    %150 = arith.remf %cst_1, %cst_1 : f16
    %151 = math.expm1 %cst_0 : f16
    %152 = vector.broadcast %false : i1 to vector<1x1xi1>
    %153 = vector.broadcast %c446423599_i32 : i32 to vector<1x1xi32>
    %154 = vector.gather %11[%c12, %75] [%153], %152, %102 : tensor<1x1xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
    %155 = index.divu %c13, %86
    %156 = vector.multi_reduction <maxsi>, %143, %false [0, 1] : vector<15x1xi1> to i1
    %157 = arith.muli %c-2756_i16, %c1458_i16 : i16
    %158 = affine.if affine_set<(d0, d1, d2) : (d1 mod 16 + d0 + 2 == 0, d2 + 8 >= 0)>(%c9, %c6, %c13) -> f32 {
      %263 = vector.broadcast %c979990896_i32 : i32 to vector<15xi32>
      %264 = vector.broadcast %false : i1 to vector<15xi1>
      %265 = vector.maskedload %94[%c0, %c0], %264, %263 : memref<1x1xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %266 = vector.splat %156 : vector<1x1xi1>
      %267 = vector.broadcast %c83324626_i32 : i32 to vector<i32>
      vector.transfer_write %267, %47[%75] : vector<i32>, memref<3xi32>
      %268 = math.ctlz %c1891599200_i64 : i64
      %269 = arith.muli %c979990896_i32, %c83324626_i32 : i32
      %270 = arith.floordivsi %c0_i32, %c83324626_i32 : i32
      %271 = tensor.empty() : tensor<1x1xf32>
      %272 = linalg.matmul ins(%11, %4 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%271 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %273 = arith.divui %c1972279773_i32, %c446423599_i32 : i32
      affine.yield %cst_2 : f32
    } else {
      %263 = math.log10 %3 : tensor<3xf32>
      %264 = vector.outerproduct %115, %89, %152 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
      %265 = arith.addi %c-2756_i16, %c-20124_i16 : i16
      %266 = index.ceildivu %c2, %75
      %inserted_39 = tensor.insert %c-20124_i16 into %15[%c1, %c0] : tensor<3x1xi16>
      %267 = arith.maxf %cst, %cst_0 : f16
      %alloc_40 = memref.alloc() : memref<3xi1>
      bufferization.dealloc_tensor %14 : tensor<15x1xi1>
      affine.yield %cst_2 : f32
    }
    %159 = math.fpowi %11, %7 : tensor<1x1xf32>, tensor<1x1xi32>
    %160 = math.ceil %4 : tensor<1x1xf32>
    %collapsed = tensor.collapse_shape %2 [[0, 1]] : tensor<1x1xi1> into tensor<1xi1>
    %161 = index.casts %119 : index to i32
    %162 = math.rsqrt %4 : tensor<1x1xf32>
    %163 = arith.mulf %cst, %cst_1 : f16
    %164 = math.ipowi %c1891599200_i64, %c1891599200_i64 : i64
    %165 = index.floordivs %100, %c11
    %166 = math.ceil %4 : tensor<1x1xf32>
    %167 = vector.outerproduct %105, %105, %102 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
    %168 = vector.flat_transpose %89 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    affine.store %cst_2, %67[%c6, %c9] : memref<15x1xf32>
    %169 = math.rsqrt %4 : tensor<1x1xf32>
    %inserted_24 = tensor.insert %156 into %2[%c0, %c0] : tensor<1x1xi1>
    %170 = memref.realloc %alloc_6 : memref<3xi1> to memref<1xi1>
    %171 = vector.outerproduct %168, %115, %152 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
    %172 = math.roundeven %4 : tensor<1x1xf32>
    %173 = memref.load %alloc_6[%c2] : memref<3xi1>
    %174 = math.fpowi %3, %13 : tensor<3xf32>, tensor<3xi32>
    %175 = vector.insertelement %156, %115[%100 : index] : vector<1xi1>
    %extracted = tensor.extract %2[%c0, %c0] : tensor<1x1xi1>
    %176 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %177 = vector.fma %176, %176, %102 : vector<1x1xf32>
    %178 = arith.minf %cst_1, %cst : f16
    %179 = vector.outerproduct %20, %56, %152 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
    %180 = arith.remsi %c-2756_i16, %c1458_i16 : i16
    %181 = math.exp %cst_2 : f32
    %extracted_25 = tensor.extract %7[%c0, %c0] : tensor<1x1xi32>
    %182 = arith.andi %extracted, %false : i1
    %183 = arith.muli %c979990896_i32, %extracted_25 : i32
    %184 = math.roundeven %cst_2 : f32
    bufferization.dealloc_tensor %9 : tensor<1x1xi16>
    affine.store %cst_2, %67[%c3, %c0] : memref<15x1xf32>
    %generated_26 = tensor.generate %c0, %c9 {
    ^bb0(%arg3: index, %arg4: index):
      %263 = math.ceil %cst_0 : f16
      %extracted_39 = tensor.extract %1[%c14, %c0] : tensor<15x1xi16>
      %expanded_40 = tensor.expand_shape %29 [[0], [1, 2]] : tensor<1x1xf16> into tensor<1x1x1xf16>
      %264 = math.sqrt %cst_1 : f16
      tensor.yield %c1458_i16 : i16
    } : tensor<?x?xi16>
    %185 = affine.min affine_map<(d0) -> (((d0 mod 4) mod 8) floordiv 128, (d0 mod 4) mod 8)>(%99)
    %186 = math.tan %11 : tensor<1x1xf32>
    %187 = bufferization.to_tensor %147 : memref<3xi16>
    bufferization.dealloc_tensor %9 : tensor<1x1xi16>
    %188 = math.roundeven %4 : tensor<1x1xf32>
    bufferization.dealloc_tensor %9 : tensor<1x1xi16>
    %true = index.bool.constant true
    %189 = vector.bitcast %153 : vector<1x1xi32> to vector<1x1xi32>
    affine.store %c0_i32, %alloc_9[%c13, %c12] : memref<1x1xi32>
    %190 = affine.for %arg3 = 0 to 114 iter_args(%arg4 = %11) -> (tensor<1x1xf32>) {
      affine.yield %arg4 : tensor<1x1xf32>
    }
    memref.store %c1458_i16, %35[%c0, %c0] : memref<1x1xi16>
    %extracted_27 = tensor.extract %11[%c0, %c0] : tensor<1x1xf32>
    %191 = bufferization.to_memref %3 : memref<3xf32>
    %192 = math.ipowi %reduced, %reduced : tensor<i1>
    %alloc_28 = memref.alloc() : memref<15x1xi64>
    %193 = vector.broadcast %c1973525053_i64 : i64 to vector<3xi64>
    %194 = vector.broadcast %extracted : i1 to vector<3xi1>
    %195 = vector.broadcast %c979990896_i32 : i32 to vector<3xi32>
    %196 = vector.gather %alloc_28[%c9, %24] [%195], %194, %193 : memref<15x1xi64>, vector<3xi32>, vector<3xi1>, vector<3xi64> into vector<3xi64>
    %197 = arith.mulf %cst_0, %cst_1 : f16
    %198 = arith.minf %cst, %cst : f16
    %199 = vector.broadcast %c1891599200_i64 : i64 to vector<1xi64>
    %200 = vector.maskedload %alloc_28[%c4, %c0], %89, %199 : memref<15x1xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
    %201 = math.absi %9 : tensor<1x1xi16>
    %202 = index.castu %156 : i1 to index
    %203 = vector.broadcast %extracted_27 : f32 to vector<15x1xf32>
    %204 = vector.fma %203, %203, %203 : vector<15x1xf32>
    %205 = index.maxs %126, %c10
    %206 = math.absf %11 : tensor<1x1xf32>
    %207 = math.ipowi %82, %8 : tensor<15x1xi1>
    %208 = affine.min affine_map<(d0, d1) -> (((d0 + d1 + (d1 floordiv 64 - 1) * 32) ceildiv 8) floordiv 16, d0 ceildiv 8, d1, d0)>(%75, %121)
    %209 = vector.reduction <mul>, %56 : vector<1xi1> into i1
    %210 = arith.ori %c-20124_i16, %c-2756_i16 : i16
    %211 = vector.broadcast %true : i1 to vector<i1>
    vector.transfer_write %211, %alloc_6[%c2] : vector<i1>, memref<3xi1>
    %212 = tensor.empty() : tensor<3x1xi32>
    %213 = math.fpowi %0, %212 : tensor<3x1xf32>, tensor<3x1xi32>
    %214 = index.castu %c446423599_i32 : i32 to index
    %215 = vector.broadcast %c15 : index to vector<3xindex>
    vector.scatter %alloc_11[%c11, %c0] [%215], %194, %194 : memref<15x1xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    %216 = index.castu %36 : i16 to index
    %217 = math.expm1 %4 : tensor<1x1xf32>
    %218 = index.maxs %155, %58
    %219 = memref.realloc %147 : memref<3xi16> to memref<3xi16>
    %220 = math.sqrt %11 : tensor<1x1xf32>
    vector.print %168 : vector<1xi1>
    bufferization.dealloc_tensor %4 : tensor<1x1xf32>
    %221 = affine.min affine_map<(d0) -> (d0 floordiv 2, d0 floordiv 2 + 64, (-d0 - 8) mod 128, (d0 * 2) mod 8)>(%c13)
    %222 = memref.atomic_rmw andi %c83324626_i32, %alloc_5[%c0, %c0] : (i32, memref<1x1xi32>) -> i32
    %223 = memref.realloc %alloc_8 : memref<3xf16> to memref<1xf16>
    %inserted_29 = tensor.insert %c446423599_i32 into %22[] : tensor<i32>
    %224 = math.roundeven %3 : tensor<3xf32>
    %225 = vector.multi_reduction <add>, %20, %true [0] : vector<1xi1> to i1
    %cst_30 = arith.constant 1.000000e+00 : f32
    %226 = vector.transfer_read %0[%100, %155], %cst_30 : tensor<3x1xf32>, vector<15xf32>
    %227 = math.copysign %extracted_27, %cst_2 : f32
    %extracted_31 = tensor.extract %15[%c2, %c0] : tensor<3x1xi16>
    %228 = arith.addi %false, %156 : i1
    %false_32 = arith.constant false
    %229 = vector.transfer_read %82[%c15, %c11], %false_32 : tensor<15x1xi1>, vector<i1>
    %230 = arith.remui %c1458_i16, %extracted_31 : i16
    %inserted_33 = tensor.insert %c979990896_i32 into %23[] : tensor<i32>
    %231 = memref.atomic_rmw addi %extracted_31, %35[%c0, %c0] : (i16, memref<1x1xi16>) -> i16
    %232 = index.maxs %58, %155
    %233 = math.ceil %0 : tensor<3x1xf32>
    %234 = bufferization.to_tensor %alloc_15 : memref<15x1xi1>
    %235 = memref.realloc %191 : memref<3xf32> to memref<15xf32>
    %236 = vector.broadcast %cst_30 : f32 to vector<1x1xf32>
    %237 = vector.fma %236, %154, %176 : vector<1x1xf32>
    %238 = arith.minsi %c-2756_i16, %extracted_31 : i16
    %239 = arith.shli %c467_i16, %c-20124_i16 : i16
    %240 = memref.load %191[%c1] : memref<3xf32>
    %241 = memref.load %alloc_15[%c0, %c0] : memref<15x1xi1>
    memref.store %cst_2, %alloc_12[%c0, %c0] : memref<1x1xf32>
    %242 = math.expm1 %cst_2 : f32
    %243 = memref.alloca_scope  -> (memref<3x1xi32>) {
      %263 = vector.broadcast %cst_30 : f32 to vector<3xf32>
      %264 = vector.fma %263, %263, %263 : vector<3xf32>
      %265 = arith.maxf %extracted_27, %cst_30 : f32
      %266 = math.round %29 : tensor<1x1xf16>
      %267 = math.fma %3, %3, %3 : tensor<3xf32>
      %268 = arith.ori %c1037882035_i32, %extracted_25 : i32
      %269 = math.fpowi %cst_30, %c0_i32 : f32, i32
      %270 = math.rsqrt %extracted_27 : f32
      %271 = math.tan %3 : tensor<3xf32>
      %272 = vector.broadcast %extracted_27 : f32 to vector<1x1xf32>
      %273 = vector.fma %272, %176, %102 : vector<1x1xf32>
      %274 = memref.alloca_scope  -> (f16) {
        %293 = index.castu %c1973525053_i64 : i64 to index
        %294 = affine.apply affine_map<(d0) -> (((d0 * 2 - (d0 mod 64 - 128) - 1) mod 32) * 2)>(%232)
        %alloc_42 = memref.alloc() : memref<3x1xf32>
        %295 = vector.broadcast %extracted_27 : f32 to vector<3x1xf32>
        %296 = vector.fma %295, %295, %295 : vector<3x1xf32>
        %297 = memref.atomic_rmw addf %cst, %alloc_10[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
        %298 = arith.divui %36, %c467_i16 : i16
        %299 = math.atan2 %29, %29 : tensor<1x1xf16>
        %cast_43 = tensor.cast %23 : tensor<i32> to tensor<i32>
        %rank_44 = tensor.rank %4 : tensor<1x1xf32>
        %300 = arith.ori %c1458_i16, %36 : i16
        %301 = index.maxu %134, %c1
        %302 = math.fpowi %0, %212 : tensor<3x1xf32>, tensor<3x1xi32>
        %from_elements = tensor.from_elements %extracted_27, %cst_2, %extracted_27 : tensor<3xf32>
        %303 = arith.minf %extracted_27, %extracted_27 : f32
        %304 = arith.remf %cst_30, %cst_2 : f32
        %305 = vector.flat_transpose %263 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %306 = arith.minf %cst, %cst_1 : f16
        %307 = arith.maxsi %c0_i32, %c446423599_i32 : i32
        %308 = index.maxu %92, %155
        %309 = arith.cmpf olt, %cst, %cst_0 : f16
        %c0_i16 = arith.constant 0 : i16
        %310 = vector.transfer_read %15[%208, %221], %c0_i16 : tensor<3x1xi16>, vector<3xi16>
        %311 = arith.maxf %cst, %cst_0 : f16
        %cast_45 = tensor.cast %234 : tensor<15x1xi1> to tensor<?x?xi1>
        %312 = math.rsqrt %3 : tensor<3xf32>
        %313 = arith.remui %c1458_i16, %36 : i16
        %314 = arith.addi %c1891599200_i64, %c1973525053_i64 : i64
        %collapsed_46 = tensor.collapse_shape %4 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %315 = memref.realloc %alloc_8 : memref<3xf16> to memref<1xf16>
        %collapsed_47 = tensor.collapse_shape %82 [[0, 1]] : tensor<15x1xi1> into tensor<15xi1>
        %316 = arith.minf %cst_0, %cst_0 : f16
        %317 = math.exp %11 : tensor<1x1xf32>
        %318 = tensor.empty() : tensor<1x1xf16>
        %319 = linalg.matmul ins(%29, %29 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%318 : tensor<1x1xf16>) -> tensor<1x1xf16>
        memref.alloca_scope.return %cst_0 : f16
      }
      %275 = arith.maxui %false, %false : i1
      %cast_39 = tensor.cast %5 : tensor<3x1xi64> to tensor<?x?xi64>
      %276 = math.log10 %4 : tensor<1x1xf32>
      %277 = affine.min affine_map<(d0, d1) -> (0, d0 ceildiv 32, (d0 ceildiv 32) * -2 + -(d0 ceildiv 32) - 16 - 16, (d0 ceildiv 32) * -2 + -(d0 ceildiv 32) - 16 - 16)>(%48, %202)
      %278 = vector.shuffle %176, %177 [0, 1] : vector<1x1xf32>, vector<1x1xf32>
      %279 = arith.shli %36, %c-2756_i16 : i16
      %280 = math.roundeven %4 : tensor<1x1xf32>
      %inserted_40 = tensor.insert %extracted into %reduced[] : tensor<i1>
      %inserted_41 = tensor.insert %c83324626_i32 into %7[%c0, %c0] : tensor<1x1xi32>
      %281 = arith.addi %36, %c-20124_i16 : i16
      %282 = vector.insertelement %extracted_27, %105[%121 : index] : vector<1xf32>
      %283 = math.sqrt %cst : f16
      %284 = vector.splat %232 : vector<15x1xindex>
      %285 = vector.gather %191[%c0] [%195], %194, %263 : memref<3xf32>, vector<3xi32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %286 = arith.subi %c1891599200_i64, %c1891599200_i64 : i64
      %287 = vector.outerproduct %168, %20, %152 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
      %288 = affine.apply affine_map<(d0, d1) -> (d0 + 128)>(%221, %c11)
      %289 = math.ctlz %19 : tensor<i1>
      %290 = math.roundeven %11 : tensor<1x1xf32>
      %291 = math.fpowi %274, %extracted_25 : f16, i32
      memref.store %extracted_31, %alloc_3[%c0, %c0] : memref<3x1xi16>
      %292 = index.maxs %96, %208
      memref.alloca_scope.return %alloc_4 : memref<3x1xi32>
    }
    %244 = memref.atomic_rmw maxu %c1891599200_i64, %alloc_28[%c12, %c0] : (i64, memref<15x1xi64>) -> i64
    %generated_34 = tensor.generate %c6 {
    ^bb0(%arg3: index):
      %263 = arith.mulf %cst_2, %extracted_27 : f32
      %264 = math.cttz %2 : tensor<1x1xi1>
      %265 = math.absf %29 : tensor<1x1xf16>
      %266 = arith.subi %false, %156 : i1
      tensor.yield %extracted_25 : i32
    } : tensor<?xi32>
    %245 = math.ipowi %156, %156 : i1
    %246 = vector.outerproduct %105, %105, %176 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
    %dest, %accumulated_value = vector.scan <minf>, %154, %105 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xf32>, vector<1xf32>
    %247 = arith.cmpf one, %cst_2, %extracted_27 : f32
    %248 = arith.floordivsi %c1458_i16, %c467_i16 : i16
    %249 = vector.matrix_multiply %20, %115 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %250 = affine.apply affine_map<(d0, d1, d2) -> (d1 - (d1 - 64))>(%208, %c2, %rank)
    %251 = index.floordivs %c10, %c6
    %252 = math.absf %4 : tensor<1x1xf32>
    %253 = math.tan %cst_30 : f32
    %alloc_35 = memref.alloc() : memref<3xf32>
    %254 = vector.transpose %143, [0, 1] : vector<15x1xi1> to vector<15x1xi1>
    %255 = math.round %cst_1 : f16
    %256 = index.castu %c1458_i16 : i16 to index
    %expanded = tensor.expand_shape %109 [[0], [1, 2]] : tensor<15x1xi32> into tensor<15x1x1xi32>
    %cast = tensor.cast %11 : tensor<1x1xf32> to tensor<?x?xf32>
    %257 = math.absi %2 : tensor<1x1xi1>
    %true_36 = index.bool.constant true
    %258 = tensor.empty() : tensor<1x1xi16>
    %259 = linalg.copy ins(%9 : tensor<1x1xi16>) outs(%258 : tensor<1x1xi16>) -> tensor<1x1xi16>
    %260 = tensor.empty() : tensor<1x1xf32>
    %transposed_37 = linalg.transpose ins(%11 : tensor<1x1xf32>) outs(%260 : tensor<1x1xf32>) permutation = [1, 0] 
    %261 = tensor.empty() : tensor<i1>
    %reduced_38 = linalg.reduce ins(%collapsed : tensor<1xi1>) outs(%261 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %263 = vector.broadcast %c1972279773_i32 : i32 to vector<1x1xi32>
        %264 = bufferization.to_tensor %alloc_8 : memref<3xf16>
        %265 = index.maxu %86, %134
        %266 = vector.insertelement %c1973525053_i64, %200[%96 : index] : vector<1xi64>
        %267 = arith.ori %c83324626_i32, %c83324626_i32 : i32
        %268 = arith.ori %c83324626_i32, %c1037882035_i32 : i32
        %269 = tensor.empty() : tensor<1x1xi32>
        %270 = linalg.matmul ins(%16, %16 : tensor<1x1xi32>, tensor<1x1xi32>) outs(%269 : tensor<1x1xi32>) -> tensor<1x1xi32>
        %271 = arith.minsi %c1037882035_i32, %extracted_25 : i32
        %false_39 = arith.constant false
        linalg.yield %false_39 : i1
      }
    scf.parallel (%arg3) = (%c8) to (%208) step (%c11) {
      %263 = math.log1p %3 : tensor<3xf32>
      %264 = memref.atomic_rmw maxs %c0_i32, %47[%c0] : (i32, memref<3xi32>) -> i32
      %265 = index.castu %c1973525053_i64 : i64 to index
      %266 = arith.maxf %cst_30, %cst_30 : f32
      %267 = index.maxs %92, %71
      %268 = arith.cmpf ogt, %extracted_27, %cst_30 : f32
      %269 = vector.reduction <xor>, %193 : vector<3xi64> into i64
      %270 = math.powf %3, %3 : tensor<3xf32>
      %inserted_39 = tensor.insert %c1037882035_i32 into %21[%c0] : tensor<3xi32>
      %271 = vector.bitcast %195 : vector<3xi32> to vector<3xi32>
      %272 = vector.broadcast %c1037882035_i32 : i32 to vector<3x3xi32>
      %273 = vector.outerproduct %195, %271, %272 {kind = #vector.kind<minsi>} : vector<3xi32>, vector<3xi32>
      %from_elements = tensor.from_elements %c1037882035_i32, %c979990896_i32, %c979990896_i32, %c979990896_i32, %c0_i32, %c446423599_i32, %c83324626_i32, %c1037882035_i32, %c1972279773_i32, %c1972279773_i32, %c0_i32, %c0_i32, %c0_i32, %c979990896_i32, %c0_i32 : tensor<15x1xi32>
      %274 = math.absi %false : i1
      %275 = index.sizeof
      %276 = arith.cmpf uge, %cst_1, %cst_0 : f16
      %cst_40 = arith.constant 5.881600e+04 : f16
      scf.yield
    }
    %262 = affine.vector_load %94[%c13, %48] : memref<1x1xi32>, vector<3xi32>
    affine.vector_store %249, %alloc_6[%214] : memref<3xi1>, vector<1xi1>
    vector.print %20 : vector<1xi1>
    vector.print %26 : vector<i32>
    vector.print %56 : vector<1xi1>
    vector.print %88 : vector<1xi1>
    vector.print %89 : vector<1xi1>
    vector.print %102 : vector<1x1xf32>
    vector.print %105 : vector<1xf32>
    vector.print %115 : vector<1xi1>
    vector.print %125 : vector<15x1xi1>
    vector.print %143 : vector<15x1xi1>
    vector.print %145 : vector<3x1xf16>
    vector.print %152 : vector<1x1xi1>
    vector.print %153 : vector<1x1xi32>
    vector.print %154 : vector<1x1xf32>
    vector.print %168 : vector<1xi1>
    vector.print %176 : vector<1x1xf32>
    vector.print %177 : vector<1x1xf32>
    vector.print %189 : vector<1x1xi32>
    vector.print %193 : vector<3xi64>
    vector.print %194 : vector<3xi1>
    vector.print %195 : vector<3xi32>
    vector.print %196 : vector<3xi64>
    vector.print %199 : vector<1xi64>
    vector.print %200 : vector<1xi64>
    vector.print %203 : vector<15x1xf32>
    vector.print %204 : vector<15x1xf32>
    vector.print %211 : vector<i1>
    vector.print %236 : vector<1x1xf32>
    vector.print %237 : vector<1x1xf32>
    vector.print %249 : vector<1xi1>
    vector.print %262 : vector<3xi32>
    vector.print %cst : f16
    vector.print %c1972279773_i32 : i32
    vector.print %c1037882035_i32 : i32
    vector.print %c-20124_i16 : i16
    vector.print %false : i1
    vector.print %c1973525053_i64 : i64
    vector.print %c979990896_i32 : i32
    vector.print %c467_i16 : i16
    vector.print %c1891599200_i64 : i64
    vector.print %cst_0 : f16
    vector.print %cst_1 : f16
    vector.print %c83324626_i32 : i32
    vector.print %c-2756_i16 : i16
    vector.print %c446423599_i32 : i32
    vector.print %c1458_i16 : i16
    vector.print %cst_2 : f32
    vector.print %36 : i16
    vector.print %c0_i32 : i32
    vector.print %156 : i1
    vector.print %extracted : i1
    vector.print %extracted_25 : i32
    vector.print %true : i1
    vector.print %extracted_27 : f32
    vector.print %225 : i1
    vector.print %cst_30 : f32
    vector.print %extracted_31 : i16
    vector.print %false_32 : i1
    vector.print %true_36 : i1
    return %225 : i1
  }
}
