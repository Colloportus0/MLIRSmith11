module {
  func.func private @func1(%arg0: vector<14x1xf16>) {
    %c541111313_i64 = arith.constant 541111313 : i64
    %cst = arith.constant 4.697600e+04 : f16
    %c524604958_i64 = arith.constant 524604958 : i64
    %c684513806_i32 = arith.constant 684513806 : i32
    %c27045025_i32 = arith.constant 27045025 : i32
    %false = arith.constant false
    %cst_0 = arith.constant 1.51179917E+9 : f32
    %c23671_i16 = arith.constant 23671 : i16
    %c1384869300_i64 = arith.constant 1384869300 : i64
    %c1025180508_i32 = arith.constant 1025180508 : i32
    %c508314733_i64 = arith.constant 508314733 : i64
    %c1327994845_i32 = arith.constant 1327994845 : i32
    %cst_1 = arith.constant 1.937600e+04 : f16
    %c968284859_i32 = arith.constant 968284859 : i32
    %cst_2 = arith.constant 0x4E1E891C : f32
    %c331396349_i32 = arith.constant 331396349 : i32
    %0 = tensor.empty() : tensor<14x1xf32>
    %1 = tensor.empty() : tensor<14x1xf32>
    %2 = tensor.empty() : tensor<1x1x11xi64>
    %3 = tensor.empty() : tensor<1x1x11xi32>
    %4 = tensor.empty() : tensor<14x1xi64>
    %5 = tensor.empty() : tensor<14x1xi16>
    %6 = tensor.empty() : tensor<14x1xf16>
    %7 = tensor.empty() : tensor<14x1xf32>
    %8 = tensor.empty() : tensor<14x1xf32>
    %9 = tensor.empty() : tensor<1x1x11xi16>
    %10 = tensor.empty() : tensor<14x1xi16>
    %11 = tensor.empty() : tensor<14x1xf32>
    %12 = tensor.empty() : tensor<1x1x11xi16>
    %13 = tensor.empty() : tensor<14x1xi16>
    %14 = tensor.empty() : tensor<14x1xi64>
    %15 = tensor.empty() : tensor<1x1x11xi32>
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
    %alloc = memref.alloc() : memref<14x1xi32>
    %alloc_3 = memref.alloc() : memref<14x1xf32>
    %alloc_4 = memref.alloc() : memref<14x1xf16>
    %alloc_5 = memref.alloc() : memref<14x1xf16>
    %alloc_6 = memref.alloc() : memref<14x1xi32>
    %alloc_7 = memref.alloc() : memref<14x1xf16>
    %alloc_8 = memref.alloc() : memref<14x1xf32>
    %alloc_9 = memref.alloc() : memref<1x1x11xi1>
    %alloc_10 = memref.alloc() : memref<14x1xi16>
    %alloc_11 = memref.alloc() : memref<1x1x11xi16>
    %alloc_12 = memref.alloc() : memref<1x1x11xf16>
    %alloc_13 = memref.alloc() : memref<14x1xi16>
    %alloc_14 = memref.alloc() : memref<14x1xi32>
    %alloc_15 = memref.alloc() : memref<14x1xi64>
    %alloc_16 = memref.alloc() : memref<14x1xi1>
    %alloc_17 = memref.alloc() : memref<14x1xf16>
    %16 = tensor.empty() : tensor<1x1x11xi64>
    %17 = linalg.copy ins(%2 : tensor<1x1x11xi64>) outs(%16 : tensor<1x1x11xi64>) -> tensor<1x1x11xi64>
    %18 = tensor.empty() : tensor<1x14xi16>
    %transposed = linalg.transpose ins(%alloc_13 : memref<14x1xi16>) outs(%18 : tensor<1x14xi16>) permutation = [1, 0] 
    %alloc_18 = memref.alloc() : memref<14xi32>
    linalg.reduce ins(%alloc : memref<14x1xi32>) outs(%alloc_18 : memref<14xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %267 = vector.broadcast %c23671_i16 : i16 to vector<i16>
        vector.transfer_write %267, %alloc_11[%c15, %c7, %c6] : vector<i16>, memref<1x1x11xi16>
        %268 = index.sizeof
        %269 = vector.broadcast %cst_0 : f32 to vector<14x1x14xf32>
        %270 = vector.broadcast %cst_0 : f32 to vector<1x14xf32>
        %dest_42, %accumulated_value_43 = vector.scan <minf>, %269, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<14x1x14xf32>, vector<1x14xf32>
        %271 = arith.floordivsi %init, %in : i32
        %272 = vector.broadcast %cst_2 : f32 to vector<f32>
        %273 = vector.transfer_write %272, %7[%c2, %c1] : vector<f32>, tensor<14x1xf32>
        %274 = arith.maxsi %c1327994845_i32, %c1025180508_i32 : i32
        %275 = arith.minf %cst, %cst_1 : f16
        %alloca_44 = memref.alloca() : memref<14x1xi32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c10, %c14) to (%c7, %c11) step (%c12, %c11) init (%alloc_3) -> memref<14x1xf32> {
      %267 = arith.minui %c1327994845_i32, %c684513806_i32 : i32
      %268 = memref.load %alloc_12[%c0, %c0, %c2] : memref<1x1x11xf16>
      %269 = arith.minui %false, %false : i1
      %270 = arith.remsi %c968284859_i32, %c1025180508_i32 : i32
      %271 = arith.maxsi %c541111313_i64, %c524604958_i64 : i64
      %272 = arith.maxf %cst_1, %cst_1 : f16
      %273 = index.divu %c9, %arg2
      %274 = bufferization.clone %alloc_5 : memref<14x1xf16> to memref<14x1xf16>
      %275 = arith.divf %cst_0, %cst_0 : f32
      %276 = math.powf %11, %0 : tensor<14x1xf32>
      %277 = math.powf %0, %1 : tensor<14x1xf32>
      %278 = index.divs %c11, %c15
      %279 = memref.load %alloc_3[%c0, %c0] : memref<14x1xf32>
      %280 = vector.broadcast %c1384869300_i64 : i64 to vector<i64>
      %281 = vector.insertelement %c524604958_i64, %280[] : vector<i64>
      %282 = arith.addi %c541111313_i64, %c508314733_i64 : i64
      %283 = affine.load %alloc_7[%c10, %c4] : memref<14x1xf16>
      %alloc_42 = memref.alloc() : memref<14x1xf32>
      scf.reduce(%alloc_42)  : memref<14x1xf32> {
      ^bb0(%arg3: memref<14x1xf32>, %arg4: memref<14x1xf32>):
        memref.assume_alignment %alloc_8, 1 : memref<14x1xf32>
        %284 = arith.remsi %c684513806_i32, %c331396349_i32 : i32
        %285 = vector.broadcast %cst : f16 to vector<1xf16>
        %286 = vector.extract_strided_slice %285 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %287 = vector.broadcast %cst_1 : f16 to vector<1x1x11xf16>
        %288 = vector.broadcast %false : i1 to vector<1x1x11xi1>
        %289 = vector.broadcast %c684513806_i32 : i32 to vector<1x1x11xi32>
        %290 = vector.gather %6[%c3, %c0] [%289], %288, %287 : tensor<14x1xf16>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xf16> into vector<1x1x11xf16>
        %291 = arith.xori %false, %false : i1
        %292 = math.absf %6 : tensor<14x1xf16>
        %293 = math.tan %cst_2 : f32
        %294 = math.log1p %1 : tensor<14x1xf32>
        %alloc_43 = memref.alloc() : memref<14x1xf32>
        scf.reduce.return %alloc_43 : memref<14x1xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_8[%c12, %c10] : memref<14x1xf32>, vector<1xf32>
    affine.vector_store %20, %alloc_3[%c6, %c1] : memref<14x1xf32>, vector<1xf32>
    %21 = tensor.empty() : tensor<14xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%alloc_18, %21 : memref<14xi32>, tensor<14xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %25 = vector.outerproduct %20, %20, %24 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    %26 = affine.max affine_map<(d0, d1) -> (d1, 0, ((d1 floordiv 4) mod 32) floordiv 64, 0)>(%c12, %c14)
    %27 = index.castu %c14 : index to i32
    %28 = arith.divf %cst_0, %cst_2 : f32
    %29 = arith.addi %c541111313_i64, %c524604958_i64 : i64
    %30 = index.casts %c541111313_i64 : i64 to index
    %31 = tensor.empty() : tensor<1x14xf32>
    %32 = tensor.empty() : tensor<14x14xf32>
    %33 = linalg.matmul ins(%8, %31 : tensor<14x1xf32>, tensor<1x14xf32>) outs(%32 : tensor<14x14xf32>) -> tensor<14x14xf32>
    %expanded = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
    %34 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %35 = tensor.empty() : tensor<14x1xi64>
    %mapped = linalg.map ins(%alloc_15, %4, %14 : memref<14x1xi64>, tensor<14x1xi64>, tensor<14x1xi64>) outs(%35 : tensor<14x1xi64>)
      (%in: i64, %in_42: i64, %in_43: i64) {
        %267 = arith.muli %c1384869300_i64, %c508314733_i64 : i64
        %268 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %269 = vector.outerproduct %20, %34, %268 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %collapsed_44 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x1x11xi16> into tensor<1x11xi16>
        %270 = bufferization.clone %alloc_3 : memref<14x1xf32> to memref<14x1xf32>
        %271 = arith.remsi %c1384869300_i64, %c1384869300_i64 : i64
        %272 = arith.remf %cst_2, %cst_2 : f32
        %273 = arith.shrui %c1384869300_i64, %c1384869300_i64 : i64
        %274 = affine.max affine_map<(d0, d1) -> (d1)>(%c14, %26)
        %275 = affine.load %alloc_3[%c10, %c3] : memref<14x1xf32>
        %276 = arith.divf %cst_2, %cst_2 : f32
        %277 = index.casts %c7 : index to i32
        %278 = tensor.empty() : tensor<14x1xi32>
        %279 = math.fpowi %7, %278 : tensor<14x1xf32>, tensor<14x1xi32>
        %280 = index.maxu %c14, %30
        %281 = math.log1p %cst : f16
        %282 = affine.load %alloc_7[%c6, %c8] : memref<14x1xf16>
        %c17719_i16 = arith.constant 17719 : i16
        %283 = index.sizeof
        %284 = arith.divf %282, %cst : f16
        %285 = index.ceildivu %c3, %c11
        %286 = math.rsqrt %7 : tensor<14x1xf32>
        %287 = arith.divsi %c1384869300_i64, %in_42 : i64
        %288 = index.divs %c4, %c12
        %289 = scf.while (%arg1 = %c968284859_i32) : (i32) -> i32 {
          bufferization.dealloc_tensor %4 : tensor<14x1xi64>
          %299 = arith.maxsi %c508314733_i64, %in_43 : i64
          %300 = index.floordivs %283, %c4
          %301 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d3 floordiv 2 + d3)>(%285, %280, %c0, %285)
          bufferization.dealloc_tensor %6 : tensor<14x1xf16>
          %302 = vector.broadcast %26 : index to vector<1xindex>
          %303 = vector.broadcast %false : i1 to vector<1xi1>
          %304 = vector.broadcast %c23671_i16 : i16 to vector<1xi16>
          vector.scatter %alloc_11[%c0, %c0, %c3] [%302], %303, %304 : memref<1x1x11xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
          %305 = index.maxs %26, %c13
          %alloc_49 = memref.alloc() : memref<1x11xf16>
          %306 = tensor.empty() : tensor<14x11xf16>
          %307 = linalg.matmul ins(%6, %alloc_49 : tensor<14x1xf16>, memref<1x11xf16>) outs(%306 : tensor<14x11xf16>) -> tensor<14x11xf16>
          scf.condition(%false) %arg1 : i32
        } do {
        ^bb0(%arg1: i32):
          %299 = affine.min affine_map<(d0) -> (-(d0 ceildiv 32))>(%280)
          %300 = index.casts %283 : index to i32
          %301 = arith.muli %in_42, %c508314733_i64 : i64
          %302 = index.maxs %c14, %c7
          %303 = vector.broadcast %false : i1 to vector<1x14xi1>
          %304 = vector.broadcast %false : i1 to vector<14xi1>
          %dest_49, %accumulated_value_50 = vector.scan <xor>, %303, %304 {inclusive = false, reduction_dim = 0 : i64} : vector<1x14xi1>, vector<14xi1>
          %305 = vector.insert %275, %34 [0] : f32 into vector<1xf32>
          %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %34, %34, %cst_2 : vector<1xf32>, vector<1xf32> into f32
          %307 = math.exp %cst_2 : f32
          %308 = tensor.empty() : tensor<14x14xi16>
          %309 = linalg.matmul ins(%10, %transposed : tensor<14x1xi16>, tensor<1x14xi16>) outs(%308 : tensor<14x14xi16>) -> tensor<14x14xi16>
          %310 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          memref.store %false, %alloc_9[%c0, %c0, %c6] : memref<1x1x11xi1>
          memref.copy %alloc_17, %alloc_5 : memref<14x1xf16> to memref<14x1xf16>
          %311 = memref.realloc %alloc_18 : memref<14xi32> to memref<1xi32>
          %c0_i16 = arith.constant 0 : i16
          %312 = vector.transfer_read %alloc_11[%285, %30, %c11], %c0_i16 : memref<1x1x11xi16>, vector<1xi16>
          %313 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %314 = bufferization.to_tensor %alloc_14 : memref<14x1xi32>
          scf.yield %arg1 : i32
        }
        %290 = vector.broadcast %in_43 : i64 to vector<1xi64>
        %291 = vector.transfer_write %290, %2[%274, %274, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi64>, tensor<1x1x11xi64>
        %292 = arith.maxf %282, %cst_1 : f16
        %293 = arith.ceildivsi %c684513806_i32, %c27045025_i32 : i32
        %294 = math.sqrt %0 : tensor<14x1xf32>
        %295 = vector.broadcast %in_43 : i64 to vector<14x14xi64>
        %296 = vector.broadcast %in_42 : i64 to vector<14xi64>
        %dest_45, %accumulated_value_46 = vector.scan <maxsi>, %295, %296 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi64>, vector<14xi64>
        %cast_47 = tensor.cast %0 : tensor<14x1xf32> to tensor<?x?xf32>
        %cast_48 = tensor.cast %5 : tensor<14x1xi16> to tensor<?x?xi16>
        %297 = arith.maxui %c541111313_i64, %in : i64
        %298 = memref.load %alloc_13[%c2, %c0] : memref<14x1xi16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %36 = bufferization.clone %alloc_8 : memref<14x1xf32> to memref<14x1xf32>
    %37 = index.mul %c8, %30
    %38 = math.log %1 : tensor<14x1xf32>
    %39 = vector.broadcast %c23671_i16 : i16 to vector<11x1x11xi16>
    %40 = vector.broadcast %c23671_i16 : i16 to vector<11x1xi16>
    %dest, %accumulated_value = vector.scan <mul>, %39, %40 {inclusive = true, reduction_dim = 2 : i64} : vector<11x1x11xi16>, vector<11x1xi16>
    %41 = index.divs %c11, %26
    %42 = scf.execute_region -> index {
      %267 = arith.floordivsi %c331396349_i32, %c27045025_i32 : i32
      %268 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %269 = vector.outerproduct %34, %20, %268 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      %270 = math.tan %0 : tensor<14x1xf32>
      %alloc_42 = memref.alloc() : memref<14x1xi1>
      %271 = math.absf %1 : tensor<14x1xf32>
      %272 = vector.broadcast %c10 : index to vector<1xindex>
      %273 = vector.broadcast %false : i1 to vector<1xi1>
      vector.scatter %alloc_16[%c6, %c0] [%272], %273, %273 : memref<14x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
      %from_elements_43 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<1x1x11xi1>
      %274 = affine.if affine_set<(d0, d1) : (d1 + 2 == 0, (d0 mod 128) ceildiv 128 == 0, d1 * 2 + 2 == 0, (d0 mod 128) ceildiv 64 == 0)>(%c12, %c10) -> i16 {
        %284 = bufferization.to_memref %21 : memref<14xi32>
        %285 = arith.ori %c1025180508_i32, %c27045025_i32 : i32
        %286 = math.fma %7, %8, %11 : tensor<14x1xf32>
        %287 = index.divu %c3, %c13
        %288 = arith.ceildivsi %c524604958_i64, %c524604958_i64 : i64
        %c0_i16 = arith.constant 0 : i16
        %289 = vector.transfer_read %10[%c1, %c10], %c0_i16 : tensor<14x1xi16>, vector<11xi16>
        %290 = math.ctpop %3 : tensor<1x1x11xi32>
        %alloc_45 = memref.alloc() : memref<1x1x11xi1>
        memref.copy %alloc_9, %alloc_45 : memref<1x1x11xi1> to memref<1x1x11xi1>
        affine.yield %c23671_i16 : i16
      } else {
        %284 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %285 = memref.realloc %alloc_18 : memref<14xi32> to memref<14xi32>
        %286 = math.rsqrt %6 : tensor<14x1xf16>
        %287 = math.exp2 %1 : tensor<14x1xf32>
        %288 = index.sub %30, %c4
        %289 = math.floor %8 : tensor<14x1xf32>
        %290 = arith.minf %cst_1, %cst_1 : f16
        %291 = memref.load %alloc_12[%c0, %c0, %c4] : memref<1x1x11xf16>
        affine.yield %c23671_i16 : i16
      }
      %275 = math.powf %8, %8 : tensor<14x1xf32>
      %generated_44 = tensor.generate %c6, %c10 {
      ^bb0(%arg1: index, %arg2: index):
        %284 = math.expm1 %8 : tensor<14x1xf32>
        %285 = index.sizeof
        %286 = bufferization.clone %alloc_13 : memref<14x1xi16> to memref<14x1xi16>
        %287 = arith.remui %c27045025_i32, %c331396349_i32 : i32
        tensor.yield %c968284859_i32 : i32
      } : tensor<?x?xi32>
      %276 = math.roundeven %cst : f16
      %277 = index.ceildivu %c4, %37
      %278 = memref.load %alloc_17[%c13, %c0] : memref<14x1xf16>
      %279 = vector.reduction <maxf>, %34 : vector<1xf32> into f32
      %280 = tensor.empty() : tensor<1x1xi32>
      %281 = tensor.empty() : tensor<1xi32>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280, %281, %281 : tensor<1x1xi32>, tensor<1xi32>, tensor<1xi32>) outs(%3 : tensor<1x1x11xi32>) {
      ^bb0(%in: i32, %in_45: i32, %in_46: i32, %out: i32):
        %284 = tensor.empty() : tensor<14x1xi32>
        %285 = math.fpowi %1, %284 : tensor<14x1xf32>, tensor<14x1xi32>
        %286 = arith.shrui %c27045025_i32, %c684513806_i32 : i32
        %287 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %288 = vector.transfer_write %287, %32[%c11, %277] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xf32>, tensor<14x14xf32>
        %289 = vector.broadcast %cst : f16 to vector<14x1xf16>
        %290 = vector.broadcast %false : i1 to vector<14x1xi1>
        %291 = vector.broadcast %c1025180508_i32 : i32 to vector<14x1xi32>
        %292 = vector.gather %6[%c13, %c10] [%291], %290, %289 : tensor<14x1xf16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xf16> into vector<14x1xf16>
        %293 = bufferization.to_tensor %alloc_12 : memref<1x1x11xf16>
        %294 = arith.mulf %cst_0, %cst_2 : f32
        %295 = arith.maxf %cst_0, %cst_0 : f32
        %296 = math.fma %1, %7, %8 : tensor<14x1xf32>
        %297 = arith.maxf %cst, %cst_1 : f16
        %298 = vector.matrix_multiply %20, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        vector.print %34 : vector<1xf32>
        %299 = math.cos %0 : tensor<14x1xf32>
        %300 = index.divs %c13, %c1
        %301 = bufferization.to_tensor %alloc_12 : memref<1x1x11xf16>
        %302 = arith.shrui %false, %false : i1
        %303 = vector.extract %287[2] : vector<14xf32>
        %304 = affine.max affine_map<(d0) -> (0, 0, d0 * 8, d0 + 4)>(%c0)
        %from_elements_47 = tensor.from_elements %cst, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_1 : tensor<14x1xf16>
        %alloc_48 = memref.alloc() : memref<1x1x11xi64>
        %305 = vector.broadcast %c541111313_i64 : i64 to vector<1x1x11xi64>
        %306 = vector.broadcast %false : i1 to vector<1x1x11xi1>
        %307 = vector.broadcast %in_46 : i32 to vector<1x1x11xi32>
        %308 = vector.gather %alloc_48[%c8, %37, %c1] [%307], %306, %305 : memref<1x1x11xi64>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi64> into vector<1x1x11xi64>
        %309 = index.divu %c0, %c13
        %310 = arith.maxsi %in_45, %c331396349_i32 : i32
        %311 = math.log %0 : tensor<14x1xf32>
        %312 = index.ceildivu %c4, %c11
        %313 = arith.shrui %c27045025_i32, %c331396349_i32 : i32
        %314 = index.divu %c10, %c15
        %315 = math.roundeven %32 : tensor<14x14xf32>
        %316 = affine.max affine_map<(d0, d1) -> (-(d1 + d0) + 16, d1)>(%300, %26)
        %317 = arith.ceildivsi %c23671_i16, %c23671_i16 : i16
        %318 = bufferization.to_memref %8 : memref<14x1xf32>
        %319 = vector.broadcast %c1384869300_i64 : i64 to vector<1xi64>
        %320 = vector.transfer_write %319, %14[%312, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi64>, tensor<14x1xi64>
        %321 = vector.broadcast %c541111313_i64 : i64 to vector<1x11xi64>
        %322 = vector.insert %321, %305 [0] : vector<1x11xi64> into vector<1x1x11xi64>
        %323 = memref.realloc %alloc_18 : memref<14xi32> to memref<11xi32>
        linalg.yield %out : i32
      } -> tensor<1x1x11xi32>
      %283 = memref.realloc %alloc_18 : memref<14xi32> to memref<1xi32>
      scf.yield %c3 : index
    }
    bufferization.dealloc_tensor %11 : tensor<14x1xf32>
    %43 = arith.remf %cst, %cst : f16
    %44 = index.divu %37, %c8
    %45 = vector.splat %c15 : vector<1x1x11xindex>
    %46 = index.floordivs %30, %42
    %47 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 - 8) * 16 == 0, (d1 - 8) * -16 == 0, d3 floordiv 8 >= 0, d0 >= 0)>(%c9, %c12, %c11, %c5) -> memref<14x1xi64> {
      %267 = bufferization.to_memref %15 : memref<1x1x11xi32>
      %inserted_42 = tensor.insert %cst_2 into %11[%c4, %c0] : tensor<14x1xf32>
      %splat = tensor.splat %c508314733_i64 : tensor<1x1x11xi64>
      %268 = index.casts %c23671_i16 : i16 to index
      affine.for %arg1 = 0 to 77 {
      }
      %269 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %270 = arith.divsi %c1025180508_i32, %c331396349_i32 : i32
      %271 = tensor.empty() : tensor<14x1xi16>
      %mapped_43 = linalg.map ins(%5 : tensor<14x1xi16>) outs(%271 : tensor<14x1xi16>)
        (%in: i16) {
          %272 = arith.divf %cst_1, %cst : f16
          memref.store %c23671_i16, %alloc_10[%c3, %c0] : memref<14x1xi16>
          %273 = index.mul %30, %c13
          %274 = arith.floordivsi %false, %false : i1
          %splat_44 = tensor.splat %c23671_i16 : tensor<1x1x11xi16>
          %expanded_45 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<1x1x11xi32> into tensor<1x1x11x1xi32>
          %275 = math.log %11 : tensor<14x1xf32>
          %276 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
          %277 = vector.outerproduct %269, %269, %276 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
          %278 = math.log %7 : tensor<14x1xf32>
          vector.print %34 : vector<1xf32>
          %279 = vector.broadcast %c23671_i16 : i16 to vector<11xi16>
          %280 = vector.transfer_write %279, %10[%c5, %26] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<14x1xi16>
          %281 = math.atan %6 : tensor<14x1xf16>
          %282 = arith.remf %cst_0, %cst_0 : f32
          %283 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %284 = vector.insert %cst_2, %20 [0] : f32 into vector<1xf32>
          %285 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
          %286 = vector.fma %285, %285, %285 : vector<14x1xf32>
          %287 = math.fma %expanded, %expanded, %expanded : tensor<14x1x1xf32>
          %288 = arith.subi %false, %false : i1
          %289 = arith.remf %cst_2, %cst_2 : f32
          %290 = math.ctlz %false : i1
          %291 = math.log %11 : tensor<14x1xf32>
          %292 = index.divs %c1, %c12
          %293 = arith.divf %cst_2, %cst_0 : f32
          %294 = index.castu %41 : index to i32
          %295 = math.sqrt %expanded : tensor<14x1x1xf32>
          %296 = arith.divf %cst_1, %cst_1 : f16
          bufferization.dealloc_tensor %21 : tensor<14xi32>
          %297 = index.divs %44, %292
          %298 = math.fma %11, %0, %11 : tensor<14x1xf32>
          %299 = vector.reduction <maxf>, %20 : vector<1xf32> into f32
          %300 = bufferization.to_memref %4 : memref<14x1xi64>
          memref.store %cst, %alloc_17[%c3, %c0] : memref<14x1xf16>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      affine.yield %alloc_15 : memref<14x1xi64>
    } else {
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %34, %cst_2 : vector<1xf32>, vector<1xf32> into f32
      %268 = arith.minui %c1384869300_i64, %c1384869300_i64 : i64
      %269 = arith.minf %cst, %cst_1 : f16
      %270 = bufferization.clone %alloc_18 : memref<14xi32> to memref<14xi32>
      %false_42 = index.bool.constant false
      %271 = math.expm1 %6 : tensor<14x1xf16>
      %272 = scf.index_switch %42 -> f32 
      case 1 {
        %cast_43 = tensor.cast %5 : tensor<14x1xi16> to tensor<?x?xi16>
        %274 = affine.max affine_map<(d0, d1) -> (d0 + 16, d1 ceildiv 32, (d1 ceildiv 32) floordiv 4)>(%c9, %c9)
        %expanded_44 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<14x1xi64> into tensor<14x1x1xi64>
        %275 = arith.floordivsi %c1327994845_i32, %c1327994845_i32 : i32
        bufferization.dealloc_tensor %11 : tensor<14x1xf32>
        %276 = memref.realloc %alloc_18 : memref<14xi32> to memref<11xi32>
        %277 = affine.min affine_map<(d0, d1) -> (d0, (d1 mod 8) * 128, d0 * 9, d0 * 9)>(%c1, %30)
        %278 = math.floor %6 : tensor<14x1xf16>
        %279 = math.copysign %8, %7 : tensor<14x1xf32>
        %280 = arith.maxf %cst_0, %cst_2 : f32
        %281 = vector.broadcast %c1384869300_i64 : i64 to vector<14x1xi64>
        %282 = vector.broadcast %c524604958_i64 : i64 to vector<1xi64>
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %281, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<14x1xi64>, vector<1xi64>
        %283 = math.rsqrt %8 : tensor<14x1xf32>
        %284 = vector.broadcast %cst_0 : f32 to vector<11x1xf32>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %284, %34 {inclusive = true, reduction_dim = 0 : i64} : vector<11x1xf32>, vector<1xf32>
        %285 = arith.minui %c1384869300_i64, %c1384869300_i64 : i64
        %splat = tensor.splat %false_42 : tensor<14x1xi1>
        bufferization.dealloc_tensor %1 : tensor<14x1xf32>
        scf.yield %cst_0 : f32
      }
      case 2 {
        %274 = math.powf %7, %11 : tensor<14x1xf32>
        %275 = math.log %11 : tensor<14x1xf32>
        %alloc_43 = memref.alloc() : memref<14x1xi32>
        %276 = math.fma %8, %7, %8 : tensor<14x1xf32>
        %277 = math.atan %0 : tensor<14x1xf32>
        %278 = math.ctlz %false_42 : i1
        %279 = math.exp2 %1 : tensor<14x1xf32>
        bufferization.dealloc_tensor %5 : tensor<14x1xi16>
        %280 = vector.insert %cst_2, %20 [0] : f32 into vector<1xf32>
        %281 = math.cos %1 : tensor<14x1xf32>
        %282 = math.ctpop %c1327994845_i32 : i32
        %283 = math.fma %6, %6, %6 : tensor<14x1xf16>
        bufferization.dealloc_tensor %11 : tensor<14x1xf32>
        %284 = index.divu %42, %c1
        %285 = math.absi %c968284859_i32 : i32
        %286 = vector.insertelement %cst_2, %20[%c10 : index] : vector<1xf32>
        scf.yield %cst_0 : f32
      }
      case 3 {
        %alloc_43 = memref.alloc() : memref<1x1x11xi32>
        %274 = bufferization.to_memref %12 : memref<1x1x11xi16>
        %275 = arith.floordivsi %false_42, %false : i1
        %cast_44 = tensor.cast %12 : tensor<1x1x11xi16> to tensor<?x?x?xi16>
        %276 = bufferization.to_memref %0 : memref<14x1xf32>
        %277 = index.ceildivu %c11, %c7
        %278 = math.cos %6 : tensor<14x1xf16>
        %alloc_45 = memref.alloc() : memref<1x1x11xi1>
        %279 = vector.broadcast %c4 : index to vector<1xindex>
        %280 = vector.broadcast %false_42 : i1 to vector<1xi1>
        %281 = vector.broadcast %c23671_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_11[%c0, %c0, %c0] [%279], %280, %281 : memref<1x1x11xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %alloc_46 = memref.alloc() : memref<1x14xi64>
        %282 = tensor.empty() : tensor<14x14xi64>
        %283 = linalg.matmul ins(%14, %alloc_46 : tensor<14x1xi64>, memref<1x14xi64>) outs(%282 : tensor<14x14xi64>) -> tensor<14x14xi64>
        %284 = arith.subi %c1384869300_i64, %c541111313_i64 : i64
        %285 = math.roundeven %8 : tensor<14x1xf32>
        %286 = index.mul %c5, %c6
        %from_elements_47 = tensor.from_elements %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0 : tensor<1x1x11xf32>
        %287 = vector.load %alloc_10[%c0, %c0] : memref<14x1xi16>, vector<14x1xi16>
        %288 = memref.load %alloc_18[%c12] : memref<14xi32>
        scf.yield %cst_2 : f32
      }
      default {
        %false_43 = index.bool.constant false
        bufferization.dealloc_tensor %8 : tensor<14x1xf32>
        %alloca_44 = memref.alloca() : memref<14x1xi1>
        %274 = tensor.empty() : tensor<14x1xi64>
        %275 = index.castu %false_43 : i1 to index
        %276 = arith.floordivsi %c1025180508_i32, %c1025180508_i32 : i32
        %277 = vector.multi_reduction <mul>, %34, %20 [] : vector<1xf32> to vector<1xf32>
        bufferization.dealloc_tensor %21 : tensor<14xi32>
        bufferization.dealloc_tensor %1 : tensor<14x1xf32>
        %278 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %279 = vector.outerproduct %34, %20, %278 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %280 = index.mul %c6, %c5
        %281 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %cast_45 = tensor.cast %7 : tensor<14x1xf32> to tensor<?x?xf32>
        %282 = math.exp2 %1 : tensor<14x1xf32>
        %283 = math.roundeven %7 : tensor<14x1xf32>
        %c1333465798_i64 = arith.constant 1333465798 : i64
        scf.yield %cst_2 : f32
      }
      %273 = arith.remsi %c23671_i16, %c23671_i16 : i16
      affine.yield %alloc_15 : memref<14x1xi64>
    }
    %48 = arith.ceildivsi %c1327994845_i32, %c1025180508_i32 : i32
    memref.alloca_scope  {
      %267 = arith.addf %cst_0, %cst_0 : f32
      %268 = math.absf %cst_1 : f16
      %269 = bufferization.clone %alloc_3 : memref<14x1xf32> to memref<14x1xf32>
      %270 = math.log10 %0 : tensor<14x1xf32>
      %271 = arith.ceildivsi %false, %false : i1
      %272 = math.cttz %13 : tensor<14x1xi16>
      %273 = index.mul %c7, %c8
      %274 = tensor.empty() : tensor<14x1xf16>
      %mapped_42 = linalg.map ins(%6 : tensor<14x1xf16>) outs(%274 : tensor<14x1xf16>)
        (%in: f16) {
          %300 = arith.floordivsi %false, %false : i1
          bufferization.dealloc_tensor %14 : tensor<14x1xi64>
          %301 = vector.matrix_multiply %20, %34 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %from_elements_46 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<14x1xi1>
          %302 = math.ctpop %c684513806_i32 : i32
          %303 = memref.atomic_rmw mulf %cst_0, %alloc_8[%c10, %c0] : (f32, memref<14x1xf32>) -> f32
          %304 = math.exp2 %1 : tensor<14x1xf32>
          %305 = index.casts %c5 : index to i32
          %306 = tensor.empty() : tensor<14x14xi16>
          %307 = linalg.matmul ins(%13, %transposed : tensor<14x1xi16>, tensor<1x14xi16>) outs(%306 : tensor<14x14xi16>) -> tensor<14x14xi16>
          %308 = bufferization.clone %alloc_9 : memref<1x1x11xi1> to memref<1x1x11xi1>
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_47 = arith.constant 0 : i32
          %309 = vector.transfer_read %21[%46], %c0_i32_47 : tensor<14xi32>, vector<i32>
          %rank = tensor.rank %18 : tensor<1x14xi16>
          %310 = arith.remf %cst, %in : f16
          %311 = math.exp2 %6 : tensor<14x1xf16>
          %312 = math.tan %0 : tensor<14x1xf32>
          %313 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
          %314 = vector.outerproduct %20, %301, %313 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
          %315 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %316 = arith.andi %c23671_i16, %c23671_i16 : i16
          %317 = math.copysign %cst_0, %cst_2 : f32
          %318 = affine.max affine_map<(d0, d1, d2) -> ((d1 + d0) * 64, -(d0 ceildiv 2 + 64), d0 ceildiv 2 + 2, (-(d0 ceildiv 2 + 64)) mod 32)>(%rank, %c0, %c8)
          memref.store %c23671_i16, %alloc_10[%c0, %c0] : memref<14x1xi16>
          %319 = arith.maxf %cst_2, %cst_2 : f32
          %320 = vector.multi_reduction <maxf>, %301, %cst_2 [0] : vector<1xf32> to f32
          %321 = arith.floordivsi %c1327994845_i32, %c968284859_i32 : i32
          %322 = vector.extract %34[0] : vector<1xf32>
          %cast_48 = tensor.cast %4 : tensor<14x1xi64> to tensor<?x?xi64>
          %323 = math.ctlz %5 : tensor<14x1xi16>
          %324 = math.roundeven %320 : f32
          %from_elements_49 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<14x1xi1>
          %325 = math.copysign %274, %6 : tensor<14x1xf16>
          %326 = vector.insertelement %320, %20[%c10 : index] : vector<1xf32>
          %327 = bufferization.to_tensor %alloc_4 : memref<14x1xf16>
          %cst_50 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_50 : f16
        }
      bufferization.dealloc_tensor %6 : tensor<14x1xf16>
      %275 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
      %276 = vector.outerproduct %20, %34, %275 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      scf.execute_region {
        %300 = math.copysign %cst, %cst_1 : f16
        %301 = arith.remsi %c541111313_i64, %c508314733_i64 : i64
        %302 = math.cos %1 : tensor<14x1xf32>
        %303 = affine.min affine_map<(d0, d1) -> ((-(d1 - d0 + 256)) mod 16, d1 - d0 + 124, d0, (d1 + 128) * 32)>(%30, %26)
        %304 = arith.ceildivsi %c331396349_i32, %c331396349_i32 : i32
        bufferization.dealloc_tensor %1 : tensor<14x1xf32>
        %305 = arith.cmpi sle, %c23671_i16, %c23671_i16 : i16
        %306 = vector.insertelement %cst_0, %34[%30 : index] : vector<1xf32>
        %307 = arith.minui %c331396349_i32, %c968284859_i32 : i32
        %308 = math.powf %0, %11 : tensor<14x1xf32>
        memref.store %cst_1, %alloc_17[%c6, %c0] : memref<14x1xf16>
        %309 = bufferization.clone %alloc_16 : memref<14x1xi1> to memref<14x1xi1>
        %310 = vector.broadcast %273 : index to vector<1xindex>
        %311 = vector.broadcast %false : i1 to vector<1xi1>
        %312 = vector.broadcast %c27045025_i32 : i32 to vector<1xi32>
        vector.scatter %alloc_18[%c8] [%310], %311, %312 : memref<14xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %313 = affine.apply affine_map<(d0, d1) -> (((d1 - d0) mod 128) floordiv 8)>(%c3, %c0)
        %314 = math.cos %274 : tensor<14x1xf16>
        %315 = arith.muli %c1384869300_i64, %c541111313_i64 : i64
        scf.yield
      }
      %277 = arith.shli %c1025180508_i32, %c684513806_i32 : i32
      %cst_43 = arith.constant 1.000000e+00 : f32
      %278 = vector.transfer_read %8[%c14, %44], %cst_43 : tensor<14x1xf32>, vector<f32>
      %279 = arith.remui %c541111313_i64, %c541111313_i64 : i64
      %280 = arith.floordivsi %c1025180508_i32, %c331396349_i32 : i32
      %281 = math.atan %1 : tensor<14x1xf32>
      %282 = math.cttz %4 : tensor<14x1xi64>
      %alloc_44 = memref.alloc() : memref<1x1x11xi32>
      %283 = vector.broadcast %c27045025_i32 : i32 to vector<14x1xi32>
      %284 = vector.broadcast %false : i1 to vector<14x1xi1>
      %285 = vector.gather %alloc_44[%c13, %273, %42] [%283], %284, %283 : memref<1x1x11xi32>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi32> into vector<14x1xi32>
      %286 = arith.addf %cst_43, %cst_0 : f32
      %287 = index.casts %c1327994845_i32 : i32 to index
      %288 = arith.maxsi %c524604958_i64, %c1384869300_i64 : i64
      %289 = index.maxu %46, %c9
      %290 = vector.broadcast %287 : index to vector<11xindex>
      %291 = vector.broadcast %false : i1 to vector<11xi1>
      %292 = vector.broadcast %cst_0 : f32 to vector<11xf32>
      vector.scatter %269[%c8, %c0] [%290], %291, %292 : memref<14x1xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
      %collapsed_45 = tensor.collapse_shape %32 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %293 = arith.addf %cst_1, %cst : f16
      memref.copy %alloc_14, %alloc_6 : memref<14x1xi32> to memref<14x1xi32>
      %294 = affine.for %arg1 = 0 to 47 iter_args(%arg2 = %alloc) -> (memref<14x1xi32>) {
        affine.yield %alloc_6 : memref<14x1xi32>
      }
      %295 = arith.ceildivsi %c541111313_i64, %c541111313_i64 : i64
      %296 = arith.remui %c1025180508_i32, %c968284859_i32 : i32
      %297 = math.floor %cst_2 : f32
      %298 = math.powf %cst_43, %cst_0 : f32
      %299 = scf.index_switch %c9 -> tensor<14x1xf16> 
      case 1 {
        %300 = math.floor %6 : tensor<14x1xf16>
        %301 = vector.broadcast %cst_43 : f32 to vector<1x1x11xf32>
        %302 = vector.fma %301, %301, %301 : vector<1x1x11xf32>
        %collapsed_46 = tensor.collapse_shape %0 [[0, 1]] : tensor<14x1xf32> into tensor<14xf32>
        %alloc_47 = memref.alloc() : memref<1x1x11xf16>
        memref.copy %alloc_12, %alloc_47 : memref<1x1x11xf16> to memref<1x1x11xf16>
        %303 = math.exp2 %6 : tensor<14x1xf16>
        %304 = vector.broadcast %c23671_i16 : i16 to vector<14x1xi16>
        %305 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 32) * 2, (d0 ceildiv 32) * 2 + 8, (d0 ceildiv 32) * 2 + 8, 0)>(%c12, %44)
        %306 = vector.broadcast %c1384869300_i64 : i64 to vector<i64>
        %307 = vector.transfer_write %306, %14[%c11, %41] : vector<i64>, tensor<14x1xi64>
        %308 = tensor.empty() : tensor<1x1x11xi1>
        %309 = vector.gather %308[%287, %c7, %c14] [%283], %284, %284 : tensor<1x1x11xi1>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi1> into vector<14x1xi1>
        %310 = affine.min affine_map<(d0) -> (((d0 * 8) floordiv 128) * 4, (((d0 * 8) floordiv 128) ceildiv 2) floordiv 16, ((d0 * 8) floordiv 128) ceildiv 2, d0 * 24)>(%42)
        %311 = arith.addi %c541111313_i64, %c524604958_i64 : i64
        %312 = index.divu %c1, %c7
        %313 = math.fma %7, %11, %1 : tensor<14x1xf32>
        %314 = arith.mulf %cst_0, %cst_43 : f32
        %alloc_48 = memref.alloc() : memref<1x14xf32>
        %315 = tensor.empty() : tensor<14x14xf32>
        %316 = linalg.matmul ins(%0, %alloc_48 : tensor<14x1xf32>, memref<1x14xf32>) outs(%315 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %317 = math.powf %0, %11 : tensor<14x1xf32>
        scf.yield %6 : tensor<14x1xf16>
      }
      case 2 {
        %300 = arith.divf %cst_43, %cst_43 : f32
        %301 = arith.remf %cst_43, %cst_2 : f32
        %302 = math.exp2 %32 : tensor<14x14xf32>
        %303 = arith.remsi %c1025180508_i32, %c1327994845_i32 : i32
        %304 = math.sqrt %11 : tensor<14x1xf32>
        %expanded_46 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %34, %20, %cst_2 : vector<1xf32>, vector<1xf32> into f32
        %306 = index.mul %c3, %c12
        %307 = math.fma %8, %1, %1 : tensor<14x1xf32>
        %308 = math.log1p %0 : tensor<14x1xf32>
        %309 = math.log10 %expanded : tensor<14x1x1xf32>
        %310 = math.roundeven %cst_43 : f32
        %311 = arith.addi %c968284859_i32, %c27045025_i32 : i32
        %alloc_47 = memref.alloc() : memref<1x1x11xi32>
        %312 = math.log2 %cst_1 : f16
        %313 = arith.ori %c331396349_i32, %c27045025_i32 : i32
        scf.yield %6 : tensor<14x1xf16>
      }
      case 3 {
        %300 = arith.divf %cst_1, %cst : f16
        %301 = arith.addi %c684513806_i32, %c331396349_i32 : i32
        %302 = bufferization.clone %alloc_16 : memref<14x1xi1> to memref<14x1xi1>
        %303 = arith.maxf %cst_1, %cst_1 : f16
        %304 = arith.minui %c684513806_i32, %c331396349_i32 : i32
        %305 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %alloc_46 = memref.alloc() : memref<14x1xi64>
        %306 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %false_47 = arith.constant false
        %307 = math.log %cst_0 : f32
        %308 = arith.muli %c1025180508_i32, %c1025180508_i32 : i32
        %309 = index.casts %c14 : index to i32
        %310 = math.tan %7 : tensor<14x1xf32>
        %311 = arith.minui %c27045025_i32, %c684513806_i32 : i32
        %alloca_48 = memref.alloca() : memref<14x1xf32>
        %312 = affine.apply affine_map<(d0) -> (d0 + d0 floordiv 2 + 4)>(%46)
        scf.yield %6 : tensor<14x1xf16>
      }
      default {
        %300 = vector.broadcast %c331396349_i32 : i32 to vector<1xi32>
        %dest_46, %accumulated_value_47 = vector.scan <add>, %285, %300 {inclusive = true, reduction_dim = 0 : i64} : vector<14x1xi32>, vector<1xi32>
        %301 = index.casts %c10 : index to i32
        %302 = arith.muli %c684513806_i32, %c27045025_i32 : i32
        %303 = arith.minf %cst_0, %cst_43 : f32
        %304 = index.ceildivu %289, %c5
        %305 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %306 = vector.outerproduct %20, %20, %305 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %307 = vector.broadcast %c23671_i16 : i16 to vector<1xi16>
        %308 = vector.transfer_write %307, %5[%46, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi16>, tensor<14x1xi16>
        %309 = arith.minsi %c508314733_i64, %c541111313_i64 : i64
        %310 = arith.maxf %cst_0, %cst_2 : f32
        %alloc_48 = memref.alloc() : memref<14x1xf16>
        %311 = math.powf %cst_43, %cst_43 : f32
        %312 = memref.atomic_rmw ori %c508314733_i64, %alloc_15[%c0, %c0] : (i64, memref<14x1xi64>) -> i64
        %313 = memref.realloc %alloc_18 : memref<14xi32> to memref<11xi32>
        %314 = vector.matrix_multiply %20, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %315 = arith.muli %c508314733_i64, %c1384869300_i64 : i64
        %316 = arith.remsi %c541111313_i64, %c524604958_i64 : i64
        scf.yield %6 : tensor<14x1xf16>
      }
    }
    %49 = affine.min affine_map<(d0, d1) -> (d0 + 16, d1 - (d1 - 1) + 127, d0 * 32 + d1)>(%c4, %41)
    %50 = scf.index_switch %c8 -> index 
    case 1 {
      %267 = vector.broadcast %c1327994845_i32 : i32 to vector<14x1xi32>
      %268 = math.ctlz %5 : tensor<14x1xi16>
      %cast_42 = tensor.cast %15 : tensor<1x1x11xi32> to tensor<?x?x?xi32>
      %269 = vector.insert %cst_2, %20 [0] : f32 into vector<1xf32>
      %270 = vector.broadcast %cst_2 : f32 to vector<1x1x11xf32>
      %271 = vector.fma %270, %270, %270 : vector<1x1x11xf32>
      %expanded_43 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<14x1xi16> into tensor<14x1x1xi16>
      %272 = index.floordivs %c13, %37
      %273 = index.divs %c7, %c13
      %274 = vector.broadcast %cst_0 : f32 to vector<f32>
      %275 = vector.transfer_write %274, %0[%c10, %37] : vector<f32>, tensor<14x1xf32>
      %276 = vector.broadcast %37 : index to vector<1xindex>
      %277 = vector.broadcast %false : i1 to vector<1xi1>
      vector.scatter %36[%c4, %c0] [%276], %277, %34 : memref<14x1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %278 = math.cos %cst_1 : f16
      %279 = arith.muli %c1327994845_i32, %c684513806_i32 : i32
      %280 = affine.for %arg1 = 0 to 99 iter_args(%arg2 = %7) -> (tensor<14x1xf32>) {
        affine.yield %8 : tensor<14x1xf32>
      }
      %281 = math.powf %cst_0, %cst_0 : f32
      %inserted_44 = tensor.insert %c331396349_i32 into %3[%c0, %c0, %c8] : tensor<1x1x11xi32>
      memref.store %c27045025_i32, %alloc_14[%c10, %c0] : memref<14x1xi32>
      scf.yield %30 : index
    }
    case 2 {
      memref.store %cst_0, %36[%c3, %c0] : memref<14x1xf32>
      %267 = arith.floordivsi %c27045025_i32, %c331396349_i32 : i32
      %268 = math.fma %expanded, %expanded, %expanded : tensor<14x1x1xf32>
      affine.store %c1327994845_i32, %alloc_6[%c7, %c2] : memref<14x1xi32>
      %269 = math.log1p %7 : tensor<14x1xf32>
      %270 = bufferization.to_tensor %alloc_7 : memref<14x1xf16>
      %271 = vector.insert %cst_2, %20 [0] : f32 into vector<1xf32>
      %272 = math.tanh %1 : tensor<14x1xf32>
      %273 = vector.reduction <mul>, %34 : vector<1xf32> into f32
      %274 = arith.remui %c1025180508_i32, %c1025180508_i32 : i32
      %275 = vector.multi_reduction <add>, %20, %20 [] : vector<1xf32> to vector<1xf32>
      %276 = math.cos %6 : tensor<14x1xf16>
      %277 = arith.subi %c541111313_i64, %c524604958_i64 : i64
      %alloc_42 = memref.alloc() : memref<14x1xi1>
      memref.copy %alloc_16, %alloc_42 : memref<14x1xi1> to memref<14x1xi1>
      %278 = vector.load %alloc_14[%c4, %c0] : memref<14x1xi32>, vector<14x1xi32>
      %279 = bufferization.clone %36 : memref<14x1xf32> to memref<14x1xf32>
      scf.yield %30 : index
    }
    default {
      %267 = index.mul %c7, %44
      %268 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %268, %alloc_16[%c13, %c10] : vector<i1>, memref<14x1xi1>
      %269 = scf.index_switch %42 -> f16 
      case 1 {
        %283 = math.powf %6, %6 : tensor<14x1xf16>
        %284 = vector.multi_reduction <minf>, %20, %cst_0 [0] : vector<1xf32> to f32
        %285 = math.log1p %8 : tensor<14x1xf32>
        %286 = vector.insert %284, %34 [0] : f32 into vector<1xf32>
        %287 = arith.ceildivsi %c1327994845_i32, %c968284859_i32 : i32
        %288 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %289 = bufferization.to_tensor %alloc_13 : memref<14x1xi16>
        %290 = vector.broadcast %c524604958_i64 : i64 to vector<1xi64>
        %291 = vector.transfer_write %290, %17[%30, %c14, %44] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi64>, tensor<1x1x11xi64>
        %292 = math.ipowi %transposed, %18 : tensor<1x14xi16>
        %293 = math.ctlz %c27045025_i32 : i32
        %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1 mod 32, d3 - d1)>(%c13, %c11, %267, %c8)
        %295 = arith.divf %cst_2, %cst_0 : f32
        %296 = math.powf %cst_0, %284 : f32
        %297 = math.atan2 %6, %6 : tensor<14x1xf16>
        %298 = memref.atomic_rmw ori %c968284859_i32, %alloc[%c6, %c0] : (i32, memref<14x1xi32>) -> i32
        %299 = math.log2 %0 : tensor<14x1xf32>
        scf.yield %cst : f16
      }
      case 2 {
        %283 = math.ctlz %c1327994845_i32 : i32
        affine.store %false, %alloc_16[%c3, %c1] : memref<14x1xi1>
        %284 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %285 = vector.outerproduct %20, %20, %284 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %286 = math.log10 %32 : tensor<14x14xf32>
        %from_elements_44 = tensor.from_elements %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16 : tensor<14x1xi16>
        %287 = math.copysign %7, %8 : tensor<14x1xf32>
        %288 = math.powf %0, %7 : tensor<14x1xf32>
        %289 = math.sqrt %32 : tensor<14x14xf32>
        %290 = index.divu %c2, %c15
        %291 = arith.remf %cst_1, %cst : f16
        %292 = vector.load %alloc_3[%c12, %c0] : memref<14x1xf32>, vector<14x1xf32>
        %293 = vector.broadcast %c23671_i16 : i16 to vector<11xi16>
        %294 = vector.broadcast %false : i1 to vector<11xi1>
        %295 = vector.maskedload %alloc_13[%c7, %c0], %294, %293 : memref<14x1xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
        %296 = math.floor %11 : tensor<14x1xf32>
        %collapsed_45 = tensor.collapse_shape %11 [[0, 1]] : tensor<14x1xf32> into tensor<14xf32>
        %297 = arith.muli %c1327994845_i32, %c684513806_i32 : i32
        %alloc_46 = memref.alloc() : memref<14x1xi64>
        scf.yield %cst : f16
      }
      case 3 {
        %283 = vector.insert %cst_0, %20 [0] : f32 into vector<1xf32>
        %284 = tensor.empty() : tensor<14x1xi32>
        %285 = math.fpowi %0, %284 : tensor<14x1xf32>, tensor<14x1xi32>
        %from_elements_44 = tensor.from_elements %c541111313_i64, %c524604958_i64, %c508314733_i64, %c508314733_i64, %c508314733_i64, %c524604958_i64, %c508314733_i64, %c508314733_i64, %c524604958_i64, %c508314733_i64, %c541111313_i64, %c508314733_i64, %c541111313_i64, %c524604958_i64 : tensor<14x1xi64>
        %286 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %286, %alloc_7[%c9, %c4] : vector<f16>, memref<14x1xf16>
        %alloc_45 = memref.alloc() : memref<1x1x11xf16>
        %287 = math.powf %1, %1 : tensor<14x1xf32>
        %288 = bufferization.clone %alloc_17 : memref<14x1xf16> to memref<14x1xf16>
        %289 = math.floor %cst : f16
        %290 = arith.ceildivsi %c27045025_i32, %c27045025_i32 : i32
        %291 = tensor.empty() : tensor<1x1xi64>
        %292 = tensor.empty() : tensor<14x1xi64>
        %293 = linalg.matmul ins(%4, %291 : tensor<14x1xi64>, tensor<1x1xi64>) outs(%292 : tensor<14x1xi64>) -> tensor<14x1xi64>
        %294 = arith.minsi %c1025180508_i32, %c27045025_i32 : i32
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %295 = vector.transfer_read %alloc_4[%c1, %c0], %cst_47 : memref<14x1xf16>, vector<f16>
        %collapsed_48 = tensor.collapse_shape %11 [[0, 1]] : tensor<14x1xf32> into tensor<14xf32>
        %296 = arith.ori %c684513806_i32, %c27045025_i32 : i32
        %297 = math.absi %35 : tensor<14x1xi64>
        %298 = index.sizeof
        scf.yield %cst : f16
      }
      default {
        %283 = math.log %expanded : tensor<14x1x1xf32>
        %284 = memref.load %alloc_9[%c0, %c0, %c1] : memref<1x1x11xi1>
        %285 = math.ctlz %2 : tensor<1x1x11xi64>
        %286 = index.divs %37, %c5
        %287 = math.log1p %7 : tensor<14x1xf32>
        %288 = math.powf %0, %1 : tensor<14x1xf32>
        %289 = math.fma %11, %0, %1 : tensor<14x1xf32>
        %290 = bufferization.to_memref %6 : memref<14x1xf16>
        %291 = arith.maxf %cst_0, %cst_0 : f32
        %292 = arith.minui %c524604958_i64, %c524604958_i64 : i64
        %293 = math.atan %7 : tensor<14x1xf32>
        %294 = math.fma %32, %32, %32 : tensor<14x14xf32>
        %295 = bufferization.to_tensor %alloc_9 : memref<1x1x11xi1>
        %296 = math.log %7 : tensor<14x1xf32>
        %297 = math.cttz %2 : tensor<1x1x11xi64>
        affine.store %cst, %alloc_12[%c1, %c1, %c13] : memref<1x1x11xf16>
        scf.yield %cst_1 : f16
      }
      %270 = vector.broadcast %cst_0 : f32 to vector<14x1xf32>
      %271 = vector.fma %270, %270, %270 : vector<14x1xf32>
      %272 = arith.addi %c23671_i16, %c23671_i16 : i16
      %dest_42, %accumulated_value_43 = vector.scan <maxf>, %270, %34 {inclusive = false, reduction_dim = 0 : i64} : vector<14x1xf32>, vector<1xf32>
      %273 = scf.while (%arg1 = %alloc) : (memref<14x1xi32>) -> memref<14x1xi32> {
        %283 = arith.cmpi ult, %c684513806_i32, %c968284859_i32 : i32
        %284 = affine.load %alloc_10[%c8, %c9] : memref<14x1xi16>
        %285 = vector.broadcast %cst_0 : f32 to vector<14x1xf32>
        %286 = vector.fma %285, %285, %270 : vector<14x1xf32>
        %inserted_44 = tensor.insert %cst_0 into %11[%c0, %c0] : tensor<14x1xf32>
        %287 = math.ctlz %2 : tensor<1x1x11xi64>
        %288 = math.fma %cst, %cst, %cst : f16
        %289 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %290 = vector.multi_reduction <add>, %285, %289 [1] : vector<14x1xf32> to vector<14xf32>
        %291 = math.log10 %cst_1 : f16
        scf.condition(%false) %arg1 : memref<14x1xi32>
      } do {
      ^bb0(%arg1: memref<14x1xi32>):
        %283 = affine.max affine_map<(d0, d1) -> (d1 floordiv 128, d1 floordiv 4 + 16)>(%c7, %c15)
        %284 = affine.load %alloc_4[%c14, %c9] : memref<14x1xf16>
        %285 = math.log1p %11 : tensor<14x1xf32>
        bufferization.dealloc_tensor %13 : tensor<14x1xi16>
        vector.print %34 : vector<1xf32>
        %286 = math.roundeven %8 : tensor<14x1xf32>
        memref.store %false, %alloc_9[%c0, %c0, %c6] : memref<1x1x11xi1>
        %287 = arith.shrui %c684513806_i32, %c968284859_i32 : i32
        %288 = vector.insertelement %cst_0, %34[%c5 : index] : vector<1xf32>
        %289 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 2) * 64 + 1, d1 floordiv 64, (d2 + 2) * 64 - 1, (d2 + 2) * 64 + d2 + 17)>(%44, %267, %283)
        %290 = arith.remf %284, %284 : f16
        %alloca_44 = memref.alloca() : memref<14x1xf16>
        %291 = tensor.empty() : tensor<1x11xi64>
        %292 = tensor.empty() : tensor<14x11xi64>
        %293 = linalg.matmul ins(%35, %291 : tensor<14x1xi64>, tensor<1x11xi64>) outs(%292 : tensor<14x11xi64>) -> tensor<14x11xi64>
        %294 = tensor.empty(%289) : tensor<1x1x?xi1>
        %295 = math.log %0 : tensor<14x1xf32>
        %296 = math.powf %expanded, %expanded : tensor<14x1x1xf32>
        scf.yield %alloc : memref<14x1xi32>
      }
      %274 = arith.maxf %cst_0, %cst_0 : f32
      %275 = memref.realloc %alloc_18 : memref<14xi32> to memref<11xi32>
      %276 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %277 = index.divs %c13, %c7
      %278 = affine.for %arg1 = 0 to 125 iter_args(%arg2 = %alloc_4) -> (memref<14x1xf16>) {
        affine.yield %alloc_4 : memref<14x1xf16>
      }
      %279 = math.absi %15 : tensor<1x1x11xi32>
      %280 = arith.shli %c1327994845_i32, %c968284859_i32 : i32
      %281 = vector.reduction <add>, %20 : vector<1xf32> into f32
      %282 = arith.remsi %c508314733_i64, %c541111313_i64 : i64
      scf.yield %42 : index
    }
    %51 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + 1, d3)>(%c11, %c1, %c13, %c6)
    %52 = math.cttz %4 : tensor<14x1xi64>
    %53 = index.maxu %44, %51
    %54 = math.fma %32, %32, %32 : tensor<14x14xf32>
    %55 = vector.load %36[%c11, %c0] : memref<14x1xf32>, vector<1x1x11xf32>
    %56 = index.divs %c14, %c3
    %57 = arith.maxf %cst_0, %cst_0 : f32
    vector.print %34 : vector<1xf32>
    %58 = tensor.empty() : tensor<1x1x11xi64>
    %59 = arith.ceildivsi %c27045025_i32, %c1025180508_i32 : i32
    %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<14x1xi16> into tensor<14xi16>
    %60 = math.absi %c684513806_i32 : i32
    affine.store %cst_1, %alloc_12[%c11, %c15, %c1] : memref<1x1x11xf16>
    %61 = math.expm1 %7 : tensor<14x1xf32>
    %62 = scf.index_switch %c7 -> vector<1x1x11xf16> 
    case 1 {
      %from_elements_42 = tensor.from_elements %cst_1, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst : tensor<14x1xf16>
      %267 = arith.ceildivsi %c968284859_i32, %c968284859_i32 : i32
      %true = arith.constant true
      %268 = vector.transfer_read %alloc_9[%30, %26, %46], %true : memref<1x1x11xi1>, vector<i1>
      %269 = vector.load %alloc_16[%c6, %c0] : memref<14x1xi1>, vector<14x1xi1>
      %270 = math.sqrt %11 : tensor<14x1xf32>
      %271 = bufferization.to_memref %8 : memref<14x1xf32>
      scf.execute_region {
        %281 = bufferization.clone %alloc_5 : memref<14x1xf16> to memref<14x1xf16>
        %282 = index.sizeof
        %283 = math.log10 %8 : tensor<14x1xf32>
        %284 = vector.broadcast %cst_2 : f32 to vector<1x1x11xf32>
        %cast_44 = tensor.cast %14 : tensor<14x1xi64> to tensor<?x?xi64>
        %285 = math.sqrt %8 : tensor<14x1xf32>
        %286 = arith.ceildivsi %c1384869300_i64, %c524604958_i64 : i64
        %inserted_45 = tensor.insert %c684513806_i32 into %22[] : tensor<i32>
        %287 = vector.broadcast %c684513806_i32 : i32 to vector<14xi32>
        %288 = vector.broadcast %true : i1 to vector<14xi1>
        %289 = vector.maskedload %alloc_6[%c4, %c0], %288, %287 : memref<14x1xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %inserted_46 = tensor.insert %c1025180508_i32 into %3[%c0, %c0, %c3] : tensor<1x1x11xi32>
        %290 = math.exp2 %11 : tensor<14x1xf32>
        %291 = vector.load %alloc_17[%c11, %c0] : memref<14x1xf16>, vector<14x1xf16>
        %292 = arith.maxsi %c1327994845_i32, %c684513806_i32 : i32
        %293 = math.log1p %6 : tensor<14x1xf16>
        %294 = tensor.empty() : tensor<1x1xf16>
        %295 = tensor.empty() : tensor<14x1xf16>
        %296 = linalg.matmul ins(%6, %294 : tensor<14x1xf16>, tensor<1x1xf16>) outs(%295 : tensor<14x1xf16>) -> tensor<14x1xf16>
        %from_elements_47 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1 : tensor<14x1xf16>
        scf.yield
      }
      %272 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %273 = tensor.empty() : tensor<1x1xi64>
      %274 = tensor.empty() : tensor<14x1xi64>
      %275 = linalg.matmul ins(%35, %273 : tensor<14x1xi64>, tensor<1x1xi64>) outs(%274 : tensor<14x1xi64>) -> tensor<14x1xi64>
      bufferization.dealloc_tensor %11 : tensor<14x1xf32>
      scf.if %false {
        %281 = index.mul %46, %49
        %282 = vector.load %alloc_5[%c8, %c0] : memref<14x1xf16>, vector<14x1xf16>
        %283 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %284 = vector.outerproduct %34, %20, %283 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %285 = math.ctlz %35 : tensor<14x1xi64>
        %286 = arith.maxsi %c23671_i16, %c23671_i16 : i16
        %287 = memref.realloc %alloc_18 : memref<14xi32> to memref<1xi32>
        %288 = arith.maxui %false, %false : i1
        %289 = arith.addi %c684513806_i32, %c331396349_i32 : i32
      } else {
        %281 = math.cos %cst_2 : f32
        %282 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %283 = vector.fma %282, %282, %282 : vector<14x1xf32>
        %284 = math.ctlz %18 : tensor<1x14xi16>
        %285 = math.log1p %0 : tensor<14x1xf32>
        %286 = math.ipowi %5, %13 : tensor<14x1xi16>
        %287 = vector.matrix_multiply %34, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %288 = arith.floordivsi %c1384869300_i64, %c508314733_i64 : i64
        %289 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %290 = vector.outerproduct %287, %34, %289 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
      }
      %276 = arith.ceildivsi %true, %true : i1
      %alloc_43 = memref.alloc() : memref<14x1xi64>
      memref.copy %alloc_15, %alloc_43 : memref<14x1xi64> to memref<14x1xi64>
      %277 = index.divu %c14, %c4
      %278 = scf.execute_region -> index {
        %extracted_44 = tensor.extract %9[%c0, %c0, %c8] : tensor<1x1x11xi16>
        %281 = vector.load %alloc_9[%c0, %c0, %c6] : memref<1x1x11xi1>, vector<14x1xi1>
        %alloca_45 = memref.alloca() : memref<1x1x11xi16>
        %282 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %283 = vector.outerproduct %34, %20, %282 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %284 = vector.load %alloc_4[%c5, %c0] : memref<14x1xf16>, vector<14x1xf16>
        %285 = vector.broadcast %extracted_44 : i16 to vector<1x1x11xi16>
        %286 = vector.broadcast %true : i1 to vector<1x1x11xi1>
        %287 = vector.broadcast %c331396349_i32 : i32 to vector<1x1x11xi32>
        %288 = vector.gather %5[%c4, %42] [%287], %286, %285 : tensor<14x1xi16>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi16> into vector<1x1x11xi16>
        %289 = index.casts %extracted_44 : i16 to index
        %290 = tensor.empty() : tensor<14x1xi32>
        %291 = math.fpowi %8, %290 : tensor<14x1xf32>, tensor<14x1xi32>
        %292 = math.log2 %6 : tensor<14x1xf16>
        %293 = math.exp2 %6 : tensor<14x1xf16>
        %294 = bufferization.clone %alloc_13 : memref<14x1xi16> to memref<14x1xi16>
        %295 = arith.minf %cst_1, %cst_1 : f16
        %296 = math.exp2 %1 : tensor<14x1xf32>
        %297 = affine.load %36[%c14, %c1] : memref<14x1xf32>
        %298 = vector.insertelement %cst_2, %20[%c6 : index] : vector<1xf32>
        %299 = arith.cmpi ne, %false, %true : i1
        scf.yield %c8 : index
      }
      %279 = scf.execute_region -> vector<1x1x11xi1> {
        %281 = arith.divf %cst_0, %cst_2 : f32
        %282 = math.powf %1, %7 : tensor<14x1xf32>
        %alloca_44 = memref.alloca() : memref<14x1xi64>
        %283 = arith.divf %cst_1, %cst_1 : f16
        affine.store %c968284859_i32, %alloc[%c0, %c2] : memref<14x1xi32>
        %alloc_45 = memref.alloc() : memref<1x1x11xi64>
        %284 = vector.broadcast %c524604958_i64 : i64 to vector<14x1xi64>
        %285 = vector.broadcast %c684513806_i32 : i32 to vector<14x1xi32>
        %286 = vector.gather %alloc_45[%c12, %c13, %c2] [%285], %269, %284 : memref<1x1x11xi64>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi64> into vector<14x1xi64>
        %287 = bufferization.clone %alloc : memref<14x1xi32> to memref<14x1xi32>
        %288 = arith.remf %cst_1, %cst_1 : f16
        %289 = memref.atomic_rmw minu %c524604958_i64, %alloc_45[%c0, %c0, %c9] : (i64, memref<1x1x11xi64>) -> i64
        %290 = tensor.empty() : tensor<1x1xf32>
        %291 = tensor.empty() : tensor<14x1xf32>
        %292 = linalg.matmul ins(%7, %290 : tensor<14x1xf32>, tensor<1x1xf32>) outs(%291 : tensor<14x1xf32>) -> tensor<14x1xf32>
        %293 = index.sub %51, %c3
        %294 = arith.remf %cst_1, %cst : f16
        %295 = math.log10 %cst : f16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_46 = arith.constant 0 : i64
        %296 = vector.transfer_read %17[%c11, %51, %44], %c0_i64_46 : tensor<1x1x11xi64>, vector<i64>
        %297 = bufferization.clone %alloc_16 : memref<14x1xi1> to memref<14x1xi1>
        %alloc_47 = memref.alloc() : memref<1x11xi64>
        %298 = tensor.empty() : tensor<14x11xi64>
        %299 = linalg.matmul ins(%35, %alloc_47 : tensor<14x1xi64>, memref<1x11xi64>) outs(%298 : tensor<14x11xi64>) -> tensor<14x11xi64>
        %300 = vector.broadcast %true : i1 to vector<1x1x11xi1>
        scf.yield %300 : vector<1x1x11xi1>
      }
      %280 = vector.broadcast %cst : f16 to vector<1x1x11xf16>
      scf.yield %280 : vector<1x1x11xf16>
    }
    case 2 {
      %267 = arith.mulf %cst_2, %cst_0 : f32
      %268 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %269 = vector.load %alloc_9[%c0, %c0, %c7] : memref<1x1x11xi1>, vector<1x1x11xi1>
      %270 = math.tan %1 : tensor<14x1xf32>
      memref.store %c23671_i16, %alloc_11[%c0, %c0, %c8] : memref<1x1x11xi16>
      %alloc_42 = memref.alloc() : memref<14x14xf32>
      memref.tensor_store %32, %alloc_42 : memref<14x14xf32>
      %271 = arith.divf %cst_0, %cst_0 : f32
      %cast_43 = tensor.cast %3 : tensor<1x1x11xi32> to tensor<?x?x?xi32>
      %272 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %273 = vector.outerproduct %20, %20, %272 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
      %274 = affine.min affine_map<(d0) -> (-d0 + -d0 + 128, -d0 + 128)>(%56)
      %275 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
      %276 = vector.fma %275, %275, %275 : vector<14x1xf32>
      vector.print %34 : vector<1xf32>
      %277 = scf.index_switch %c15 -> memref<14x1xf32> 
      case 1 {
        %282 = arith.muli %c1384869300_i64, %c541111313_i64 : i64
        %cast_44 = tensor.cast %4 : tensor<14x1xi64> to tensor<?x?xi64>
        %283 = arith.ceildivsi %c1384869300_i64, %c524604958_i64 : i64
        %284 = vector.broadcast %false : i1 to vector<1x1xi1>
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %269, %284 {inclusive = false, reduction_dim = 2 : i64} : vector<1x1x11xi1>, vector<1x1xi1>
        %285 = math.powf %7, %7 : tensor<14x1xf32>
        vector.print %275 : vector<14x1xf32>
        %286 = math.copysign %11, %7 : tensor<14x1xf32>
        %extracted_47 = tensor.extract %11[%c4, %c0] : tensor<14x1xf32>
        %alloc_48 = memref.alloc() : memref<14x1xi32>
        %287 = arith.addf %cst, %cst : f16
        memref.store %c23671_i16, %alloc_11[%c0, %c0, %c9] : memref<1x1x11xi16>
        %288 = tensor.empty() : tensor<1x14xi64>
        %289 = tensor.empty() : tensor<14x14xi64>
        %290 = linalg.matmul ins(%4, %288 : tensor<14x1xi64>, tensor<1x14xi64>) outs(%289 : tensor<14x14xi64>) -> tensor<14x14xi64>
        %alloc_49 = memref.alloc() : memref<14x1xi16>
        %291 = math.exp2 %0 : tensor<14x1xf32>
        %292 = vector.broadcast %c1025180508_i32 : i32 to vector<14x1xi32>
        %293 = index.sub %c7, %c12
        scf.yield %alloc_3 : memref<14x1xf32>
      }
      default {
        %282 = math.powf %cst_2, %cst_0 : f32
        %283 = tensor.empty() : tensor<14x1xi1>
        %284 = vector.broadcast %false : i1 to vector<14x1xi1>
        %285 = vector.broadcast %c331396349_i32 : i32 to vector<14x1xi32>
        %286 = vector.gather %283[%51, %c13] [%285], %284, %284 : tensor<14x1xi1>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi1> into vector<14x1xi1>
        %287 = arith.shli %c1025180508_i32, %c1327994845_i32 : i32
        affine.store %c23671_i16, %alloc_11[%c6, %c8, %c13] : memref<1x1x11xi16>
        %288 = arith.mulf %cst, %cst_1 : f16
        %289 = math.fma %11, %11, %1 : tensor<14x1xf32>
        %290 = index.casts %c1327994845_i32 : i32 to index
        %291 = bufferization.clone %alloc_16 : memref<14x1xi1> to memref<14x1xi1>
        %292 = arith.minf %cst, %cst_1 : f16
        %293 = math.cos %cst_2 : f32
        %294 = math.cttz %c541111313_i64 : i64
        %295 = bufferization.clone %alloc_6 : memref<14x1xi32> to memref<14x1xi32>
        %296 = tensor.empty(%c11, %c7) : tensor<?x?x11xi1>
        %297 = arith.remsi %false, %false : i1
        %298 = memref.realloc %alloc_18 : memref<14xi32> to memref<1xi32>
        %299 = vector.insert %cst_0, %268 [0] : f32 into vector<1xf32>
        scf.yield %36 : memref<14x1xf32>
      }
      %278 = vector.insert %34, %276 [1] : vector<1xf32> into vector<14x1xf32>
      %279 = arith.subi %c1327994845_i32, %c27045025_i32 : i32
      %280 = index.floordivs %26, %51
      %281 = vector.broadcast %cst_1 : f16 to vector<1x1x11xf16>
      scf.yield %281 : vector<1x1x11xf16>
    }
    default {
      %267 = arith.addf %cst_1, %cst_1 : f16
      %268 = affine.for %arg1 = 0 to 16 iter_args(%arg2 = %alloc_6) -> (memref<14x1xi32>) {
        affine.yield %alloc : memref<14x1xi32>
      }
      %inserted_42 = tensor.insert %c23671_i16 into %collapsed[%c9] : tensor<14xi16>
      %269 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %270 = math.roundeven %11 : tensor<14x1xf32>
      %271 = math.cos %8 : tensor<14x1xf32>
      %272 = arith.minf %cst_2, %cst_2 : f32
      %273 = math.log10 %cst_2 : f32
      %274 = vector.broadcast %cst_0 : f32 to vector<1x11xf32>
      %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %55, %269, %274 : vector<1x1x11xf32>, vector<1xf32> into vector<1x11xf32>
      %276 = vector.broadcast %cst_1 : f16 to vector<f16>
      %277 = vector.transfer_write %276, %6[%51, %37] : vector<f16>, tensor<14x1xf16>
      %278 = arith.ceildivsi %c968284859_i32, %c1327994845_i32 : i32
      %279 = arith.remf %cst_1, %cst : f16
      %280 = affine.min affine_map<(d0, d1) -> (d0 mod 32)>(%56, %37)
      %281 = arith.muli %c1025180508_i32, %c684513806_i32 : i32
      %282 = arith.minui %c684513806_i32, %c684513806_i32 : i32
      %283 = arith.divf %cst_0, %cst_0 : f32
      %284 = vector.broadcast %cst_1 : f16 to vector<1x1x11xf16>
      scf.yield %284 : vector<1x1x11xf16>
    }
    %from_elements = tensor.from_elements %c1384869300_i64, %c508314733_i64, %c541111313_i64, %c508314733_i64, %c508314733_i64, %c541111313_i64, %c524604958_i64, %c508314733_i64, %c524604958_i64, %c524604958_i64, %c1384869300_i64, %c524604958_i64, %c541111313_i64, %c524604958_i64 : tensor<14x1xi64>
    %63 = index.floordivs %c14, %42
    %64 = math.expm1 %0 : tensor<14x1xf32>
    %65 = math.cttz %2 : tensor<1x1x11xi64>
    %cast = tensor.cast %2 : tensor<1x1x11xi64> to tensor<?x?x?xi64>
    %66 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %dest_19, %accumulated_value_20 = vector.scan <add>, %55, %66 {inclusive = false, reduction_dim = 2 : i64} : vector<1x1x11xf32>, vector<1x1xf32>
    %67 = affine.min affine_map<(d0, d1) -> (d0 + d0 + d1 ceildiv 4)>(%c8, %46)
    %68 = math.log1p %cst : f16
    %69 = math.exp2 %cst_1 : f16
    %70 = vector.flat_transpose %34 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
    %71 = vector.extract_strided_slice %70 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %72 = bufferization.to_memref %expanded : memref<14x1x1xf32>
    %73 = bufferization.clone %alloc : memref<14x1xi32> to memref<14x1xi32>
    %74 = affine.if affine_set<(d0, d1, d2) : (d0 == 0, d1 - 4 >= 0)>(%c15, %c5, %c9) -> i32 {
      vector.print %55 : vector<1x1x11xf32>
      memref.store %c1327994845_i32, %alloc_18[%c5] : memref<14xi32>
      %alloc_42 = memref.alloc() : memref<14x1xf16>
      %267 = math.absf %1 : tensor<14x1xf32>
      %268 = arith.floordivsi %c1025180508_i32, %c27045025_i32 : i32
      %269 = math.fma %cst_1, %cst, %cst_1 : f16
      %270 = arith.ori %c508314733_i64, %c508314733_i64 : i64
      %271 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d2 mod 2 + 4, d2 mod 2)>(%c6, %42, %c5, %c2)
      affine.yield %c331396349_i32 : i32
    } else {
      %generated_42 = tensor.generate %c5 {
      ^bb0(%arg1: index, %arg2: index):
        %274 = arith.remf %cst_1, %cst_1 : f16
        %275 = arith.ori %false, %false : i1
        %276 = memref.load %73[%c5, %c0] : memref<14x1xi32>
        %277 = math.copysign %expanded, %expanded : tensor<14x1x1xf32>
        tensor.yield %c1327994845_i32 : i32
      } : tensor<?x1xi32>
      %267 = math.ctlz %3 : tensor<1x1x11xi32>
      %268 = affine.max affine_map<(d0) -> (d0 + d0 + d0 + 64 - 64, d0, (-(d0 + d0 + 64)) ceildiv 8, -(d0 + d0 + 64))>(%44)
      %269 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%51, %46, %c15)
      %270 = scf.index_switch %268 -> index 
      case 1 {
        %274 = tensor.empty() : tensor<14x1xi1>
        %275 = vector.insertelement %cst_2, %70[%44 : index] : vector<1xf32>
        %276 = math.atan2 %6, %6 : tensor<14x1xf16>
        %alloc_43 = memref.alloc() : memref<1x1x11xi64>
        %277 = arith.subi %c27045025_i32, %c331396349_i32 : i32
        %278 = vector.insertelement %cst_0, %71[%63 : index] : vector<1xf32>
        %extracted_44 = tensor.extract %11[%c4, %c0] : tensor<14x1xf32>
        %279 = math.ctlz %15 : tensor<1x1x11xi32>
        %280 = arith.maxui %c1025180508_i32, %c27045025_i32 : i32
        %281 = arith.minf %cst_2, %cst_0 : f32
        %282 = vector.broadcast %c1384869300_i64 : i64 to vector<14xi64>
        %283 = vector.transfer_write %282, %2[%c13, %c6, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xi64>, tensor<1x1x11xi64>
        %284 = index.mul %49, %c15
        %285 = arith.minui %c23671_i16, %c23671_i16 : i16
        %286 = affine.apply affine_map<(d0, d1) -> (0)>(%53, %c10)
        %from_elements_45 = tensor.from_elements %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16 : tensor<14x1xi16>
        %287 = affine.apply affine_map<(d0) -> (-(d0 + 8))>(%c3)
        scf.yield %67 : index
      }
      case 2 {
        %274 = math.ctlz %c508314733_i64 : i64
        %expanded_43 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<14x1xi16> into tensor<14x1x1xi16>
        %275 = index.ceildivu %c11, %49
        %276 = math.log %11 : tensor<14x1xf32>
        %277 = index.sizeof
        %278 = math.log %6 : tensor<14x1xf16>
        %279 = arith.muli %c684513806_i32, %c1025180508_i32 : i32
        %280 = affine.max affine_map<(d0) -> (0, d0 ceildiv 128 + d0 - 16, 0, (-d0) ceildiv 64)>(%c0)
        %281 = vector.broadcast %cst : f16 to vector<14x1xf16>
        %282 = vector.broadcast %false : i1 to vector<14x1xi1>
        %283 = vector.broadcast %c27045025_i32 : i32 to vector<14x1xi32>
        %284 = vector.gather %alloc_7[%c15, %c2] [%283], %282, %281 : memref<14x1xf16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xf16> into vector<14x1xf16>
        %285 = bufferization.clone %alloc_9 : memref<1x1x11xi1> to memref<1x1x11xi1>
        %alloc_44 = memref.alloc() : memref<1x1x11xi64>
        %286 = math.log1p %cst : f16
        %alloca_45 = memref.alloca() : memref<14x1xi64>
        %287 = arith.maxf %cst, %cst_1 : f16
        bufferization.dealloc_tensor %9 : tensor<1x1x11xi16>
        %288 = math.powf %6, %6 : tensor<14x1xf16>
        scf.yield %268 : index
      }
      default {
        %274 = math.log1p %32 : tensor<14x14xf32>
        %275 = math.log1p %7 : tensor<14x1xf32>
        %276 = math.log1p %1 : tensor<14x1xf32>
        %277 = bufferization.to_memref %16 : memref<1x1x11xi64>
        %278 = math.sqrt %cst : f16
        %279 = math.powf %1, %1 : tensor<14x1xf32>
        %280 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %dest_43, %accumulated_value_44 = vector.scan <minf>, %55, %280 {inclusive = false, reduction_dim = 2 : i64} : vector<1x1x11xf32>, vector<1x1xf32>
        %281 = index.floordivs %269, %c6
        %282 = bufferization.clone %alloc_10 : memref<14x1xi16> to memref<14x1xi16>
        %alloc_45 = memref.alloc() : memref<14x1xi64>
        memref.copy %alloc_15, %alloc_45 : memref<14x1xi64> to memref<14x1xi64>
        %283 = arith.maxf %cst_1, %cst : f16
        %284 = vector.broadcast %c1327994845_i32 : i32 to vector<1xi32>
        %285 = vector.broadcast %false : i1 to vector<1xi1>
        %286 = vector.maskedload %alloc_6[%c5, %c0], %285, %284 : memref<14x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %287 = math.expm1 %7 : tensor<14x1xf32>
        %288 = index.divs %56, %51
        %289 = bufferization.to_tensor %alloc_12 : memref<1x1x11xf16>
        %290 = bufferization.to_memref %14 : memref<14x1xi64>
        scf.yield %56 : index
      }
      %271 = arith.divui %c1327994845_i32, %c968284859_i32 : i32
      %272 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %273 = math.sqrt %cst_1 : f16
      affine.yield %c968284859_i32 : i32
    }
    %75 = arith.remf %cst_0, %cst_2 : f32
    %76 = arith.divf %cst_2, %cst_2 : f32
    %77 = affine.if affine_set<(d0, d1) : (d1 mod 8 - d1 == 0, -(-d1 + 128) >= 0, d0 + 2 >= 0)>(%c5, %c13) -> memref<14x1xf32> {
      %267 = bufferization.to_memref %10 : memref<14x1xi16>
      %268 = arith.maxsi %c1025180508_i32, %c1327994845_i32 : i32
      %269 = arith.divui %c27045025_i32, %c331396349_i32 : i32
      vector.print %55 : vector<1x1x11xf32>
      %270 = arith.minf %cst_1, %cst : f16
      %271 = arith.minf %cst_0, %cst_2 : f32
      %272 = math.fma %cst_0, %cst_2, %cst_0 : f32
      %273 = index.divu %c8, %51
      affine.yield %36 : memref<14x1xf32>
    } else {
      memref.store %cst_0, %36[%c8, %c0] : memref<14x1xf32>
      %267 = tensor.empty() : tensor<14x14xi16>
      %268 = linalg.matmul ins(%10, %18 : tensor<14x1xi16>, tensor<1x14xi16>) outs(%267 : tensor<14x14xi16>) -> tensor<14x14xi16>
      %269 = math.log1p %11 : tensor<14x1xf32>
      %270 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
      %271 = vector.outerproduct %71, %20, %270 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
      %272 = math.absi %14 : tensor<14x1xi64>
      %generated_42 = tensor.generate %30 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %275 = math.absf %8 : tensor<14x1xf32>
        %276 = math.floor %6 : tensor<14x1xf16>
        %277 = math.cos %32 : tensor<14x14xf32>
        %278 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %279 = vector.outerproduct %71, %20, %278 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        tensor.yield %c968284859_i32 : i32
      } : tensor<?x1x11xi32>
      %273 = bufferization.clone %alloc_17 : memref<14x1xf16> to memref<14x1xf16>
      %274 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 2 - 4, d2 ceildiv 8, d0 - d1)>(%56, %c4, %41)
      affine.yield %36 : memref<14x1xf32>
    }
    %78 = math.powf %32, %32 : tensor<14x14xf32>
    %79 = memref.load %alloc_16[%c12, %c0] : memref<14x1xi1>
    %80 = index.floordivs %c6, %c15
    %81 = vector.insertelement %cst_0, %71[%c4 : index] : vector<1xf32>
    %82 = math.tan %8 : tensor<14x1xf32>
    vector.print %34 : vector<1xf32>
    memref.store %cst_1, %alloc_17[%c12, %c0] : memref<14x1xf16>
    %83 = vector.broadcast %c7 : index to vector<1xindex>
    %84 = vector.broadcast %false : i1 to vector<1xi1>
    %85 = vector.broadcast %c23671_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_10[%c2, %c0] [%83], %84, %85 : memref<14x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    %86 = vector.insertelement %cst_0, %20[%c4 : index] : vector<1xf32>
    %from_elements_21 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<14x1xi1>
    %87 = math.atan %1 : tensor<14x1xf32>
    %88 = index.floordivs %c6, %51
    %89 = memref.atomic_rmw maxu %c1025180508_i32, %alloc_6[%c12, %c0] : (i32, memref<14x1xi32>) -> i32
    %from_elements_22 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<14x1xi1>
    %90 = arith.cmpf ord, %cst, %cst_1 : f16
    %91 = tensor.empty() : tensor<1x1x11xi16>
    %mapped_23 = linalg.map ins(%9, %alloc_11, %12 : tensor<1x1x11xi16>, memref<1x1x11xi16>, tensor<1x1x11xi16>) outs(%91 : tensor<1x1x11xi16>)
      (%in: i16, %in_42: i16, %in_43: i16) {
        %267 = arith.maxsi %c684513806_i32, %c968284859_i32 : i32
        %268 = bufferization.to_tensor %alloc_13 : memref<14x1xi16>
        %269 = vector.broadcast %cst_2 : f32 to vector<1x11xf32>
        %270 = vector.insert %269, %55 [0] : vector<1x11xf32> into vector<1x1x11xf32>
        %rank = tensor.rank %9 : tensor<1x1x11xi16>
        %271 = arith.remsi %in, %in_43 : i16
        %272 = affine.min affine_map<(d0, d1, d2) -> (d0 - d1 ceildiv 2, d1 floordiv 4)>(%c7, %c2, %c6)
        affine.store %cst_2, %alloc_3[%c1, %c13] : memref<14x1xf32>
        %273 = math.powf %7, %0 : tensor<14x1xf32>
        %274 = vector.insertelement %cst_2, %71[%44 : index] : vector<1xf32>
        %275 = math.fma %0, %0, %7 : tensor<14x1xf32>
        %276 = arith.remf %cst_0, %cst_2 : f32
        %277 = memref.alloca_scope  -> (memref<1x1x11xf16>) {
          %300 = arith.addi %in, %in_43 : i16
          %301 = arith.mulf %cst_2, %cst_0 : f32
          %c1926998651_i32 = arith.constant 1926998651 : i32
          %302 = arith.maxf %cst_0, %cst_0 : f32
          %alloca_44 = memref.alloca() : memref<14x1xi64>
          %303 = bufferization.to_memref %collapsed : memref<14xi16>
          %collapsed_45 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x1xf32> into tensor<14xf32>
          %304 = tensor.empty() : tensor<14x1xf32>
          %305 = linalg.matmul ins(%32, %7 : tensor<14x14xf32>, tensor<14x1xf32>) outs(%304 : tensor<14x1xf32>) -> tensor<14x1xf32>
          %alloc_46 = memref.alloc() : memref<1x14xi64>
          %306 = tensor.empty() : tensor<14x14xi64>
          %307 = linalg.matmul ins(%from_elements, %alloc_46 : tensor<14x1xi64>, memref<1x14xi64>) outs(%306 : tensor<14x14xi64>) -> tensor<14x14xi64>
          %308 = math.expm1 %7 : tensor<14x1xf32>
          %309 = vector.broadcast %c15 : index to vector<1xindex>
          %310 = vector.broadcast %false : i1 to vector<1xi1>
          %311 = vector.broadcast %c1384869300_i64 : i64 to vector<1xi64>
          vector.scatter %alloc_15[%c8, %c0] [%309], %310, %311 : memref<14x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
          %312 = memref.atomic_rmw assign %in_42, %alloc_13[%c3, %c0] : (i16, memref<14x1xi16>) -> i16
          %313 = index.casts %88 : index to i32
          %314 = vector.extract_strided_slice %55 {offsets = [0, 0], sizes = [1, 1], strides = [1, 1]} : vector<1x1x11xf32> to vector<1x1x11xf32>
          %315 = arith.addf %cst_2, %cst_0 : f32
          %316 = arith.maxui %c684513806_i32, %c1025180508_i32 : i32
          memref.copy %alloc_3, %alloc_8 : memref<14x1xf32> to memref<14x1xf32>
          %317 = arith.floordivsi %in, %in_42 : i16
          bufferization.dealloc_tensor %14 : tensor<14x1xi64>
          %318 = vector.broadcast %cst : f16 to vector<1x1x11xf16>
          %319 = vector.broadcast %false : i1 to vector<1x1x11xi1>
          %320 = vector.broadcast %c1025180508_i32 : i32 to vector<1x1x11xi32>
          %321 = vector.gather %alloc_7[%51, %c5] [%320], %319, %318 : memref<14x1xf16>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xf16> into vector<1x1x11xf16>
          %322 = math.absi %16 : tensor<1x1x11xi64>
          %323 = math.atan %32 : tensor<14x14xf32>
          %324 = bufferization.clone %alloc_15 : memref<14x1xi64> to memref<14x1xi64>
          %325 = tensor.empty() : tensor<14x1xi64>
          %326 = bufferization.to_tensor %alloc_14 : memref<14x1xi32>
          %327 = vector.broadcast %cst_0 : f32 to vector<14x1xf32>
          %328 = vector.fma %327, %327, %327 : vector<14x1xf32>
          %329 = arith.minui %in_42, %in_43 : i16
          %330 = arith.ceildivsi %c968284859_i32, %c331396349_i32 : i32
          %331 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c11, %c3, %49)
          %332 = index.castu %c8 : index to i32
          %333 = vector.flat_transpose %34 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %334 = arith.shli %in_42, %in : i16
          memref.alloca_scope.return %alloc_12 : memref<1x1x11xf16>
        }
        %278 = math.fma %6, %6, %6 : tensor<14x1xf16>
        %279 = bufferization.clone %72 : memref<14x1x1xf32> to memref<14x1x1xf32>
        %280 = vector.broadcast %false : i1 to vector<14x1xi1>
        %281 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %282 = vector.outerproduct %20, %20, %281 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %283 = vector.multi_reduction <mul>, %34, %cst_2 [0] : vector<1xf32> to f32
        %284 = arith.ceildivsi %c23671_i16, %in_42 : i16
        %285 = memref.load %alloc[%c5, %c0] : memref<14x1xi32>
        %286 = tensor.empty() : tensor<14x1xi32>
        %287 = math.fpowi %7, %286 : tensor<14x1xf32>, tensor<14x1xi32>
        bufferization.dealloc_tensor %35 : tensor<14x1xi64>
        %288 = arith.maxf %283, %cst_2 : f32
        %289 = math.exp2 %cst_0 : f32
        %290 = memref.atomic_rmw addf %cst, %alloc_5[%c11, %c0] : (f16, memref<14x1xf16>) -> f16
        %291 = index.castu %272 : index to i32
        %292 = math.fpowi %7, %286 : tensor<14x1xf32>, tensor<14x1xi32>
        %293 = tensor.empty() : tensor<14x14xi16>
        %294 = linalg.matmul ins(%268, %transposed : tensor<14x1xi16>, tensor<1x14xi16>) outs(%293 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %295 = index.castu %c684513806_i32 : i32 to index
        %296 = affine.max affine_map<(d0) -> (d0, (d0 floordiv 8 + ((d0 floordiv 8) ceildiv 4) floordiv 16) mod 2)>(%c8)
        %297 = affine.if affine_set<(d0) : (((d0 - (d0 - 128)) floordiv 64) floordiv 16 >= 0, ((d0 - (d0 - 128)) floordiv 64) floordiv 128 == 0)>(%c13) -> i32 {
          %300 = memref.load %alloc_6[%c11, %c0] : memref<14x1xi32>
          %301 = arith.minf %cst_1, %cst_1 : f16
          %302 = arith.floordivsi %c1327994845_i32, %c27045025_i32 : i32
          %303 = arith.divf %283, %cst_0 : f32
          %304 = vector.broadcast %false : i1 to vector<1x1xi1>
          %305 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %280, %280, %304 : vector<14x1xi1>, vector<14x1xi1> into vector<1x1xi1>
          %306 = arith.ori %in_42, %c23671_i16 : i16
          %307 = arith.divf %cst_0, %283 : f32
          %308 = arith.divf %cst_1, %cst : f16
          affine.yield %c1327994845_i32 : i32
        } else {
          %expanded_44 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
          %300 = tensor.empty() : tensor<1x1xf32>
          %301 = tensor.empty() : tensor<14x1xf32>
          %302 = linalg.matmul ins(%1, %300 : tensor<14x1xf32>, tensor<1x1xf32>) outs(%301 : tensor<14x1xf32>) -> tensor<14x1xf32>
          %303 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
          %304 = vector.outerproduct %70, %70, %303 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
          %305 = arith.addf %cst_2, %cst_2 : f32
          %306 = index.divu %30, %c8
          %307 = index.casts %30 : index to i32
          %308 = math.tan %8 : tensor<14x1xf32>
          %309 = vector.flat_transpose %34 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          affine.yield %c1025180508_i32 : i32
        }
        %298 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %299 = vector.fma %298, %298, %298 : vector<14x1xf32>
        scf.execute_region {
          %300 = vector.insertelement %283, %34[%37 : index] : vector<1xf32>
          %expanded_44 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<1x1x11xi32> into tensor<1x1x11x1xi32>
          %301 = math.roundeven %8 : tensor<14x1xf32>
          %302 = arith.minui %c23671_i16, %in_43 : i16
          %303 = math.log %8 : tensor<14x1xf32>
          %304 = bufferization.to_memref %15 : memref<1x1x11xi32>
          %305 = arith.maxsi %c1327994845_i32, %c1327994845_i32 : i32
          affine.store %c508314733_i64, %alloc_15[%c4, %c2] : memref<14x1xi64>
          %306 = arith.divui %in, %in_42 : i16
          %307 = affine.max affine_map<(d0) -> (((d0 * -2) mod 32) ceildiv 4, d0 mod 16 + 16, d0 * -2)>(%c5)
          %308 = math.absi %35 : tensor<14x1xi64>
          %309 = math.copysign %6, %6 : tensor<14x1xf16>
          %310 = math.powf %0, %0 : tensor<14x1xf32>
          affine.store %false, %alloc_9[%c4, %c1, %c7] : memref<1x1x11xi1>
          %311 = arith.minf %283, %cst_2 : f32
          bufferization.dealloc_tensor %293 : tensor<14x14xi16>
          scf.yield
        }
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %alloca = memref.alloca() : memref<1x1x11xi32>
    %92 = bufferization.clone %alloc_16 : memref<14x1xi1> to memref<14x1xi1>
    %93 = math.roundeven %11 : tensor<14x1xf32>
    %94 = arith.shrui %c331396349_i32, %c1327994845_i32 : i32
    %95 = tensor.empty() : tensor<14x1xf32>
    %96 = linalg.matmul ins(%32, %8 : tensor<14x14xf32>, tensor<14x1xf32>) outs(%95 : tensor<14x1xf32>) -> tensor<14x1xf32>
    %97 = index.mul %c12, %56
    %98 = vector.insertelement %cst_2, %71[%26 : index] : vector<1xf32>
    %99 = arith.remf %cst_1, %cst : f16
    %100 = arith.minf %cst, %cst_1 : f16
    %101 = math.sqrt %32 : tensor<14x14xf32>
    %102 = arith.addi %c1327994845_i32, %c968284859_i32 : i32
    %103 = arith.andi %false, %false : i1
    %104 = bufferization.to_memref %6 : memref<14x1xf16>
    %105 = math.tan %expanded : tensor<14x1x1xf32>
    %106 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %107 = vector.outerproduct %71, %70, %106 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
    %108 = math.exp2 %0 : tensor<14x1xf32>
    %109 = math.rsqrt %7 : tensor<14x1xf32>
    %110 = vector.insertelement %cst_0, %71[%c12 : index] : vector<1xf32>
    %111 = scf.index_switch %30 -> tensor<14x1xi16> 
    case 1 {
      %267 = tensor.empty() : tensor<1x1x11xi1>
      %268 = arith.maxf %cst_1, %cst_1 : f16
      %rank = tensor.rank %9 : tensor<1x1x11xi16>
      %269 = vector.insertelement %cst_0, %70[%44 : index] : vector<1xf32>
      affine.store %cst_2, %72[%c15, %c12, %c5] : memref<14x1x1xf32>
      %270 = math.tan %0 : tensor<14x1xf32>
      %271 = index.castu %37 : index to i32
      %alloc_42 = memref.alloc() : memref<1x11xi64>
      %272 = tensor.empty() : tensor<14x11xi64>
      %273 = linalg.matmul ins(%4, %alloc_42 : tensor<14x1xi64>, memref<1x11xi64>) outs(%272 : tensor<14x11xi64>) -> tensor<14x11xi64>
      %274 = index.mul %97, %c0
      %275 = math.ctpop %91 : tensor<1x1x11xi16>
      %276 = arith.addf %cst, %cst : f16
      memref.tensor_store %6, %alloc_5 : memref<14x1xf16>
      %from_elements_43 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<14x1xi1>
      %alloc_44 = memref.alloc() : memref<14x1xi32>
      %277 = index.divs %37, %41
      %278 = arith.minui %c1327994845_i32, %c684513806_i32 : i32
      scf.yield %13 : tensor<14x1xi16>
    }
    case 2 {
      %267 = vector.create_mask %67, %c12 : vector<14x1xi1>
      %268 = bufferization.clone %alloc_7 : memref<14x1xf16> to memref<14x1xf16>
      %269 = math.ctpop %c524604958_i64 : i64
      %270 = math.rsqrt %6 : tensor<14x1xf16>
      %271 = arith.ori %c508314733_i64, %c541111313_i64 : i64
      %generated_42 = tensor.generate %88, %c1 {
      ^bb0(%arg1: index, %arg2: index):
        %283 = vector.broadcast %80 : index to vector<14xindex>
        %284 = vector.broadcast %false : i1 to vector<14xi1>
        %285 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        vector.scatter %alloc_8[%c1, %c0] [%283], %284, %285 : memref<14x1xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %286 = math.absf %0 : tensor<14x1xf32>
        %287 = math.copysign %8, %0 : tensor<14x1xf32>
        memref.store %c23671_i16, %alloc_11[%c0, %c0, %c3] : memref<1x1x11xi16>
        tensor.yield %c23671_i16 : i16
      } : tensor<?x?xi16>
      bufferization.dealloc_tensor %91 : tensor<1x1x11xi16>
      %272 = math.floor %0 : tensor<14x1xf32>
      %273 = vector.broadcast %cst : f16 to vector<1xf16>
      %274 = vector.broadcast %false : i1 to vector<1xi1>
      %275 = vector.maskedload %104[%c7, %c0], %274, %273 : memref<14x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      %276 = index.castu %c524604958_i64 : i64 to index
      %277 = math.tan %1 : tensor<14x1xf32>
      %278 = math.cttz %9 : tensor<1x1x11xi16>
      %279 = math.tan %8 : tensor<14x1xf32>
      %280 = memref.atomic_rmw minf %cst_2, %alloc_8[%c6, %c0] : (f32, memref<14x1xf32>) -> f32
      %281 = arith.remf %cst_2, %cst_0 : f32
      %282 = arith.minui %c1327994845_i32, %c1327994845_i32 : i32
      scf.yield %10 : tensor<14x1xi16>
    }
    default {
      %267 = vector.insertelement %cst_2, %71[%37 : index] : vector<1xf32>
      %268 = arith.floordivsi %c684513806_i32, %c1025180508_i32 : i32
      %269 = bufferization.clone %alloc_4 : memref<14x1xf16> to memref<14x1xf16>
      %270 = memref.load %alloc_11[%c0, %c0, %c8] : memref<1x1x11xi16>
      %271 = arith.minui %c27045025_i32, %c968284859_i32 : i32
      %272 = index.mul %c8, %42
      %extracted_42 = tensor.extract %22[] : tensor<i32>
      %273 = math.atan %11 : tensor<14x1xf32>
      %274 = vector.reduction <add>, %20 : vector<1xf32> into f32
      %275 = math.powf %cst_0, %cst_2 : f32
      %276 = arith.mulf %cst_2, %cst_0 : f32
      %277 = arith.addf %cst_2, %cst_2 : f32
      %278 = math.log1p %expanded : tensor<14x1x1xf32>
      %279 = vector.broadcast %false : i1 to vector<14x1xi1>
      %280 = arith.addi %c1384869300_i64, %c541111313_i64 : i64
      %281 = math.fpowi %cst_1, %c27045025_i32 : f16, i32
      scf.yield %5 : tensor<14x1xi16>
    }
    memref.store %false, %alloc_9[%c0, %c0, %c4] : memref<1x1x11xi1>
    %extracted = tensor.extract %4[%c7, %c0] : tensor<14x1xi64>
    %112 = math.fpowi %cst_1, %c968284859_i32 : f16, i32
    %113 = affine.max affine_map<(d0, d1) -> ((d0 + 1) ceildiv 128 + d0 + 16, (d0 + 1) ceildiv 128 + d1 floordiv 64, d1 floordiv 64, d0 - d1 - 1)>(%c8, %c2)
    %114 = arith.floordivsi %false, %false : i1
    %115 = affine.max affine_map<(d0, d1, d2) -> ((d2 mod 32 + d0) ceildiv 16 + 4, (d2 - d1) floordiv 16, d2 - d1, ((d2 mod 32 + d0) ceildiv 16) mod 32)>(%26, %41, %c14)
    %116 = affine.apply affine_map<(d0) -> (-d0 + 7)>(%c9)
    %117 = arith.muli %c23671_i16, %c23671_i16 : i16
    %118 = memref.atomic_rmw maxf %cst, %alloc_17[%c10, %c0] : (f16, memref<14x1xf16>) -> f16
    %119 = math.expm1 %11 : tensor<14x1xf32>
    memref.alloca_scope  {
      %267 = affine.min affine_map<(d0, d1) -> ((d1 * 16) ceildiv 128, d1 * 16, (d1 * 16) ceildiv 128)>(%c9, %51)
      %268 = index.maxu %c9, %c3
      %269 = vector.broadcast %c27045025_i32 : i32 to vector<i32>
      %270 = vector.transfer_write %269, %15[%c15, %53, %97] : vector<i32>, tensor<1x1x11xi32>
      %alloc_42 = memref.alloc() : memref<1x14xi16>
      memref.tensor_store %18, %alloc_42 : memref<1x14xi16>
      %271 = index.ceildivu %56, %c14
      %272 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %273 = arith.maxsi %c1025180508_i32, %c331396349_i32 : i32
      %274 = index.divu %53, %63
      %275 = affine.max affine_map<(d0, d1, d2) -> (-d1, -d1, (d1 mod 16 - 1) * 16)>(%c13, %c12, %267)
      %276 = bufferization.to_memref %18 : memref<1x14xi16>
      %277 = math.log10 %6 : tensor<14x1xf16>
      %278 = index.divs %c3, %44
      %279 = affine.min affine_map<(d0) -> (-d0)>(%113)
      %280 = index.sizeof
      %281 = affine.max affine_map<(d0, d1) -> (d1 + 128, d0 ceildiv 64 - ((d0 floordiv 64) ceildiv 2 + 1))>(%c14, %268)
      %282 = arith.maxsi %c27045025_i32, %c968284859_i32 : i32
      %c20122_i16 = arith.constant 20122 : i16
      %283 = vector.broadcast %cst_2 : f32 to vector<1x11xf32>
      %dest_43, %accumulated_value_44 = vector.scan <mul>, %55, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1x11xf32>, vector<1x11xf32>
      %284 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %285 = vector.flat_transpose %272 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      scf.index_switch %279 
      case 1 {
        %298 = math.log2 %cst : f16
        %from_elements_46 = tensor.from_elements %c331396349_i32, %c1327994845_i32, %c1327994845_i32, %c1025180508_i32, %c1327994845_i32, %c1327994845_i32, %c331396349_i32, %c331396349_i32, %c968284859_i32, %c1327994845_i32, %c1025180508_i32, %c1025180508_i32, %c684513806_i32, %c1327994845_i32 : tensor<14x1xi32>
        %299 = affine.load %alloc_11[%c3, %c2, %c10] : memref<1x1x11xi16>
        %300 = memref.atomic_rmw assign %c968284859_i32, %alloc[%c13, %c0] : (i32, memref<14x1xi32>) -> i32
        %301 = vector.flat_transpose %285 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %302 = math.floor %8 : tensor<14x1xf32>
        %303 = math.log %8 : tensor<14x1xf32>
        %304 = arith.addi %c968284859_i32, %c684513806_i32 : i32
        %305 = arith.maxsi %c23671_i16, %c23671_i16 : i16
        %cast_47 = tensor.cast %1 : tensor<14x1xf32> to tensor<?x?xf32>
        affine.store %c23671_i16, %276[%c1, %c1] : memref<1x14xi16>
        %306 = arith.shli %c684513806_i32, %c1025180508_i32 : i32
        %307 = math.log %0 : tensor<14x1xf32>
        %308 = math.ctlz %4 : tensor<14x1xi64>
        %309 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %310 = vector.outerproduct %284, %71, %309 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %311 = vector.insert %cst_0, %34 [0] : f32 into vector<1xf32>
        scf.yield
      }
      case 2 {
        %298 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 64)>(%c5, %30, %c5, %c3)
        %299 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        vector.print %70 : vector<1xf32>
        %300 = math.cos %cst_0 : f32
        %301 = tensor.empty() : tensor<14x1xi32>
        %302 = math.fpowi %1, %301 : tensor<14x1xf32>, tensor<14x1xi32>
        %303 = math.cttz %5 : tensor<14x1xi16>
        %304 = vector.broadcast %c23671_i16 : i16 to vector<14x1xi16>
        %305 = vector.broadcast %false : i1 to vector<14x1xi1>
        %306 = vector.broadcast %c968284859_i32 : i32 to vector<14x1xi32>
        %307 = vector.gather %alloc_13[%279, %c5] [%306], %305, %304 : memref<14x1xi16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi16> into vector<14x1xi16>
        %from_elements_46 = tensor.from_elements %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_1 : tensor<1x1x11xf16>
        %308 = arith.muli %c331396349_i32, %c1327994845_i32 : i32
        %309 = math.exp2 %95 : tensor<14x1xf32>
        %310 = tensor.empty(%298, %298) : tensor<?x1x?xf32>
        %311 = math.exp2 %6 : tensor<14x1xf16>
        %312 = index.floordivs %41, %88
        %313 = math.fma %7, %8, %0 : tensor<14x1xf32>
        %314 = math.powf %32, %32 : tensor<14x14xf32>
        %315 = math.floor %cst_2 : f32
        scf.yield
      }
      case 3 {
        %298 = index.floordivs %49, %116
        %299 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %300 = vector.outerproduct %20, %70, %299 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %301 = math.log1p %cst_1 : f16
        %302 = math.fma %expanded, %expanded, %expanded : tensor<14x1x1xf32>
        %303 = index.divs %c7, %49
        %304 = index.mul %275, %303
        %305 = math.cttz %c27045025_i32 : i32
        %306 = index.divu %303, %c10
        %307 = arith.subi %c508314733_i64, %extracted : i64
        %308 = math.roundeven %0 : tensor<14x1xf32>
        bufferization.dealloc_tensor %5 : tensor<14x1xi16>
        %309 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%279, %97, %37)
        %310 = math.ceil %cst_1 : f16
        %311 = math.floor %11 : tensor<14x1xf32>
        %312 = math.copysign %8, %8 : tensor<14x1xf32>
        vector.print %269 : vector<i32>
        scf.yield
      }
      default {
        %298 = index.divs %67, %c5
        %299 = vector.reduction <maxf>, %272 : vector<1xf32> into f32
        %300 = math.log2 %8 : tensor<14x1xf32>
        %301 = memref.atomic_rmw assign %cst_1, %104[%c12, %c0] : (f16, memref<14x1xf16>) -> f16
        %302 = arith.remf %cst_1, %cst_1 : f16
        %303 = tensor.empty() : tensor<14x1xf32>
        %304 = linalg.matmul ins(%32, %1 : tensor<14x14xf32>, tensor<14x1xf32>) outs(%303 : tensor<14x1xf32>) -> tensor<14x1xf32>
        %305 = affine.load %alloc_7[%c0, %c13] : memref<14x1xf16>
        %306 = math.tan %305 : f16
        %307 = arith.ori %c508314733_i64, %extracted : i64
        %308 = index.floordivs %53, %c1
        bufferization.dealloc_tensor %4 : tensor<14x1xi64>
        %309 = math.atan2 %1, %0 : tensor<14x1xf32>
        %310 = bufferization.clone %alloc_4 : memref<14x1xf16> to memref<14x1xf16>
        %311 = bufferization.clone %alloc_10 : memref<14x1xi16> to memref<14x1xi16>
        %312 = math.rsqrt %8 : tensor<14x1xf32>
        %313 = vector.flat_transpose %284 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      }
      %286 = affine.apply affine_map<(d0, d1) -> (d0 * 16)>(%274, %53)
      %287 = arith.ceildivsi %c27045025_i32, %c1025180508_i32 : i32
      %288 = arith.divf %cst_2, %cst_2 : f32
      %289 = vector.load %alloc_5[%c1, %c0] : memref<14x1xf16>, vector<14x1xf16>
      %290 = bufferization.to_memref %0 : memref<14x1xf32>
      %291 = math.absf %cst_1 : f16
      %alloc_45 = memref.alloc() : memref<1x1xf16>
      %292 = tensor.empty() : tensor<14x1xf16>
      %293 = linalg.matmul ins(%6, %alloc_45 : tensor<14x1xf16>, memref<1x1xf16>) outs(%292 : tensor<14x1xf16>) -> tensor<14x1xf16>
      %294 = bufferization.clone %alloc_15 : memref<14x1xi64> to memref<14x1xi64>
      %295 = index.divs %56, %c6
      %296 = math.log1p %6 : tensor<14x1xf16>
      %297 = math.rsqrt %8 : tensor<14x1xf32>
    }
    memref.alloca_scope  {
      %267 = memref.realloc %alloc_18 : memref<14xi32> to memref<14xi32>
      %268 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
      %269 = vector.outerproduct %71, %71, %268 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
      %270 = math.roundeven %11 : tensor<14x1xf32>
      %271 = arith.maxf %cst_2, %cst_0 : f32
      %272 = arith.xori %c508314733_i64, %c1384869300_i64 : i64
      %273 = arith.shrsi %c684513806_i32, %c1025180508_i32 : i32
      %274 = arith.muli %c1384869300_i64, %c541111313_i64 : i64
      %extracted_42 = tensor.extract %91[%c0, %c0, %c0] : tensor<1x1x11xi16>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> (-d0, d2)>(%c7, %c13, %44, %49)
      %276 = math.log1p %8 : tensor<14x1xf32>
      %277 = arith.remui %c27045025_i32, %c1025180508_i32 : i32
      %278 = arith.xori %c1327994845_i32, %c27045025_i32 : i32
      %279 = arith.maxf %cst_0, %cst_0 : f32
      %280 = math.copysign %1, %11 : tensor<14x1xf32>
      %281 = affine.min affine_map<(d0) -> (-d0 + 8, d0 ceildiv 128, d0 ceildiv 64 - (d0 floordiv 2 + 128))>(%c11)
      %splat = tensor.splat %cst_0 : tensor<14x1xf32>
      %282 = math.cos %1 : tensor<14x1xf32>
      %283 = vector.broadcast %c23671_i16 : i16 to vector<1x1x11xi16>
      %284 = vector.broadcast %false : i1 to vector<1x1x11xi1>
      %285 = vector.broadcast %c331396349_i32 : i32 to vector<1x1x11xi32>
      %286 = vector.gather %alloc_11[%c10, %53, %67] [%285], %284, %283 : memref<1x1x11xi16>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi16> into vector<1x1x11xi16>
      %287 = index.ceildivu %37, %c15
      %expanded_43 = tensor.expand_shape %35 [[0], [1, 2]] : tensor<14x1xi64> into tensor<14x1x1xi64>
      %288 = scf.execute_region -> tensor<14x1xi32> {
        %300 = vector.broadcast %extracted_42 : i16 to vector<1x11xi16>
        %301 = vector.insert %300, %286 [0] : vector<1x11xi16> into vector<1x1x11xi16>
        %302 = math.roundeven %95 : tensor<14x1xf32>
        %303 = arith.muli %c331396349_i32, %c968284859_i32 : i32
        %304 = vector.broadcast %false : i1 to vector<14x1xi1>
        %305 = vector.broadcast %c27045025_i32 : i32 to vector<14x1xi32>
        %306 = vector.gather %from_elements_22[%115, %c5] [%305], %304, %304 : tensor<14x1xi1>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi1> into vector<14x1xi1>
        %307 = index.floordivs %116, %c11
        %308 = arith.addf %cst_2, %cst_2 : f32
        %309 = vector.broadcast %c23671_i16 : i16 to vector<14x1xi16>
        %310 = vector.gather %alloc_13[%c0, %c2] [%305], %304, %309 : memref<14x1xi16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi16> into vector<14x1xi16>
        %311 = arith.ceildivsi %c1025180508_i32, %c331396349_i32 : i32
        %312 = math.log10 %cst_2 : f32
        %313 = arith.divui %extracted_42, %c23671_i16 : i16
        %314 = math.exp2 %expanded : tensor<14x1x1xf32>
        %alloc_44 = memref.alloc() : memref<14x1xi64>
        %315 = tensor.empty() : tensor<14x1xi32>
        %316 = math.fpowi %7, %315 : tensor<14x1xf32>, tensor<14x1xi32>
        %317 = tensor.empty() : tensor<14x1xf32>
        %318 = linalg.matmul ins(%32, %8 : tensor<14x14xf32>, tensor<14x1xf32>) outs(%317 : tensor<14x1xf32>) -> tensor<14x1xf32>
        %319 = math.fpowi %0, %315 : tensor<14x1xf32>, tensor<14x1xi32>
        %320 = math.powf %1, %7 : tensor<14x1xf32>
        scf.yield %315 : tensor<14x1xi32>
      }
      %289 = math.sqrt %cst_1 : f16
      %290 = arith.minf %cst_1, %cst_1 : f16
      %291 = memref.load %alloc[%c11, %c0] : memref<14x1xi32>
      %292 = arith.remf %cst_0, %cst_0 : f32
      %293 = math.roundeven %cst_0 : f32
      %294 = math.powf %cst, %cst_1 : f16
      %295 = arith.ceildivsi %c331396349_i32, %c968284859_i32 : i32
      %296 = arith.divui %c524604958_i64, %c508314733_i64 : i64
      %297 = affine.if affine_set<(d0, d1) : (d1 ceildiv 2 - d0 == 0)>(%c13, %c2) -> i64 {
        %300 = math.copysign %6, %6 : tensor<14x1xf16>
        %301 = math.log %0 : tensor<14x1xf32>
        %302 = arith.minui %c1384869300_i64, %c1384869300_i64 : i64
        memref.copy %alloc_3, %36 : memref<14x1xf32> to memref<14x1xf32>
        %303 = arith.maxui %c508314733_i64, %c541111313_i64 : i64
        %304 = vector.extract_strided_slice %286 {offsets = [0, 0], sizes = [1, 1], strides = [1, 1]} : vector<1x1x11xi16> to vector<1x1x11xi16>
        %305 = arith.minf %cst_1, %cst_1 : f16
        %306 = arith.remf %cst_2, %cst_2 : f32
        affine.yield %c508314733_i64 : i64
      } else {
        %300 = arith.andi %false, %false : i1
        %from_elements_44 = tensor.from_elements %c1327994845_i32, %c1327994845_i32, %c27045025_i32, %c1327994845_i32, %c684513806_i32, %c1327994845_i32, %c1327994845_i32, %c968284859_i32, %c331396349_i32, %c27045025_i32, %c968284859_i32, %c27045025_i32, %c1025180508_i32, %c1025180508_i32 : tensor<14x1xi32>
        %301 = arith.muli %c508314733_i64, %c1384869300_i64 : i64
        %302 = index.sub %113, %80
        %303 = affine.min affine_map<(d0, d1, d2) -> ((d0 + 4) * 512 - 4, (d0 + 1) floordiv 64 + 4)>(%c11, %302, %80)
        bufferization.dealloc_tensor %12 : tensor<1x1x11xi16>
        %304 = bufferization.clone %alloc_15 : memref<14x1xi64> to memref<14x1xi64>
        %305 = bufferization.to_memref %2 : memref<1x1x11xi64>
        affine.yield %c541111313_i64 : i64
      }
      %298 = math.floor %expanded : tensor<14x1x1xf32>
      %299 = math.copysign %7, %splat : tensor<14x1xf32>
    }
    bufferization.dealloc_tensor %32 : tensor<14x14xf32>
    %120 = vector.load %92[%c4, %c0] : memref<14x1xi1>, vector<14x1xi1>
    %121 = vector.broadcast %c331396349_i32 : i32 to vector<1x1x11xi32>
    %122 = vector.broadcast %c5 : index to vector<11xindex>
    %123 = vector.broadcast %false : i1 to vector<11xi1>
    %124 = vector.broadcast %c23671_i16 : i16 to vector<11xi16>
    vector.scatter %alloc_10[%c13, %c0] [%122], %123, %124 : memref<14x1xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
    %expanded_24 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
    %125 = arith.remf %cst_2, %cst_0 : f32
    %126 = index.sizeof
    %127 = affine.max affine_map<(d0, d1, d2) -> (-(d0 + d2 * 2 + 2), d0 * 64)>(%46, %97, %88)
    %128 = vector.load %alloc[%c8, %c0] : memref<14x1xi32>, vector<14x1xi32>
    %129 = index.divs %c9, %c15
    %130 = vector.broadcast %c27045025_i32 : i32 to vector<14xi32>
    %dest_25, %accumulated_value_26 = vector.scan <mul>, %128, %130 {inclusive = false, reduction_dim = 1 : i64} : vector<14x1xi32>, vector<14xi32>
    %131 = tensor.empty() : tensor<1x14xf32>
    %132 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%131, %72 : tensor<1x14xf32>, memref<14x1x1xf32>) outs(%expanded : tensor<14x1x1xf32>) {
    ^bb0(%in: f32, %in_42: f32, %out: f32):
      %267 = math.sqrt %95 : tensor<14x1xf32>
      %268 = math.exp2 %0 : tensor<14x1xf32>
      %269 = vector.broadcast %c508314733_i64 : i64 to vector<1x1x11xi64>
      %270 = vector.broadcast %c27045025_i32 : i32 to vector<1x11xi32>
      %dest_43, %accumulated_value_44 = vector.scan <xor>, %121, %270 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1x11xi32>, vector<1x11xi32>
      memref.assume_alignment %alloc_10, 16 : memref<14x1xi16>
      %271 = bufferization.clone %alloc_17 : memref<14x1xf16> to memref<14x1xf16>
      %272 = math.floor %cst : f16
      %inserted_45 = tensor.insert %cst_0 into %0[%c12, %c0] : tensor<14x1xf32>
      %273 = bufferization.clone %36 : memref<14x1xf32> to memref<14x1xf32>
      %alloca_46 = memref.alloca() : memref<14x1xi1>
      %274 = math.roundeven %1 : tensor<14x1xf32>
      %275 = arith.cmpi sle, %c1025180508_i32, %c27045025_i32 : i32
      %276 = arith.shrsi %c331396349_i32, %c968284859_i32 : i32
      %277 = math.fpowi %out, %c27045025_i32 : f32, i32
      %278 = vector.extract_strided_slice %120 {offsets = [5], sizes = [4], strides = [1]} : vector<14x1xi1> to vector<4x1xi1>
      %279 = arith.floordivsi %c508314733_i64, %extracted : i64
      %280 = index.ceildivu %c11, %c4
      %281 = math.cttz %5 : tensor<14x1xi16>
      %alloc_47 = memref.alloc() : memref<1x14xf32>
      %282 = tensor.empty() : tensor<14x14xf32>
      %283 = linalg.matmul ins(%7, %alloc_47 : tensor<14x1xf32>, memref<1x14xf32>) outs(%282 : tensor<14x14xf32>) -> tensor<14x14xf32>
      %284 = math.expm1 %0 : tensor<14x1xf32>
      %285 = math.floor %cst_2 : f32
      %286 = index.casts %c331396349_i32 : i32 to index
      %287 = arith.minui %c684513806_i32, %c27045025_i32 : i32
      %from_elements_48 = tensor.from_elements %out, %cst_2, %in_42, %out, %in_42, %cst_0, %in, %in_42, %in_42, %in, %cst_0, %cst_2, %cst_2, %cst_0 : tensor<14x1xf32>
      %288 = scf.execute_region -> tensor<14x1xi1> {
        %alloc_51 = memref.alloc() : memref<1x14xi1>
        %295 = tensor.empty() : tensor<14x14xi1>
        %296 = linalg.matmul ins(%from_elements_21, %alloc_51 : tensor<14x1xi1>, memref<1x14xi1>) outs(%295 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %297 = math.cos %in_42 : f32
        %298 = arith.addf %cst, %cst : f16
        %299 = arith.divf %in, %in : f32
        affine.store %false, %alloc_16[%c5, %c2] : memref<14x1xi1>
        %splat = tensor.splat %cst_1 : tensor<14x1xf16>
        %300 = vector.extract_strided_slice %70 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %301 = math.log1p %0 : tensor<14x1xf32>
        %302 = arith.minf %cst, %cst_1 : f16
        %303 = vector.extract_strided_slice %71 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %304 = tensor.empty() : tensor<14x1xi32>
        %305 = math.fpowi %from_elements_48, %304 : tensor<14x1xf32>, tensor<14x1xi32>
        %306 = index.sub %c2, %80
        affine.store %cst_0, %alloc_3[%c6, %c8] : memref<14x1xf32>
        %307 = math.floor %95 : tensor<14x1xf32>
        %308 = math.ctpop %extracted : i64
        %309 = math.expm1 %expanded : tensor<14x1x1xf32>
        scf.yield %from_elements_22 : tensor<14x1xi1>
      }
      %289 = math.fpowi %cst_1, %c27045025_i32 : f16, i32
      %collapsed_49 = tensor.collapse_shape %18 [[0, 1]] : tensor<1x14xi16> into tensor<14xi16>
      %290 = tensor.empty() : tensor<14x1xf32>
      %291 = linalg.matmul ins(%282, %7 : tensor<14x14xf32>, tensor<14x1xf32>) outs(%290 : tensor<14x1xf32>) -> tensor<14x1xf32>
      %292 = tensor.empty() : tensor<14xi16>
      %mapped_50 = linalg.map ins(%collapsed, %collapsed, %collapsed : tensor<14xi16>, tensor<14xi16>, tensor<14xi16>) outs(%292 : tensor<14xi16>)
        (%in_51: i16, %in_52: i16, %in_53: i16) {
          %295 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 8)>(%c0, %126, %c9)
          %296 = vector.broadcast %in_53 : i16 to vector<14x1xi16>
          %297 = vector.gather %alloc_11[%127, %c12, %c11] [%128], %120, %296 : memref<1x1x11xi16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi16> into vector<14x1xi16>
          %298 = vector.broadcast %in : f32 to vector<1x1xf32>
          %299 = vector.outerproduct %34, %34, %298 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
          %300 = math.absi %13 : tensor<14x1xi16>
          %301 = tensor.empty() : tensor<14x1xi32>
          %302 = math.fpowi %0, %301 : tensor<14x1xf32>, tensor<14x1xi32>
          %303 = math.ctpop %10 : tensor<14x1xi16>
          %304 = arith.floordivsi %c968284859_i32, %c27045025_i32 : i32
          %305 = vector.load %alloc_14[%c5, %c0] : memref<14x1xi32>, vector<14x1xi32>
          %306 = math.absf %cst_0 : f32
          %307 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %308 = math.exp2 %cst_2 : f32
          %309 = bufferization.to_memref %9 : memref<1x1x11xi16>
          %310 = math.exp2 %in_42 : f32
          %311 = vector.insert %out, %71 [0] : f32 into vector<1xf32>
          memref.store %c331396349_i32, %alloc[%c5, %c0] : memref<14x1xi32>
          %312 = index.maxu %56, %56
          %313 = vector.broadcast %c1384869300_i64 : i64 to vector<1xi64>
          %314 = vector.transfer_write %313, %17[%41, %286, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi64>, tensor<1x1x11xi64>
          %315 = arith.minui %c23671_i16, %in_52 : i16
          %316 = vector.broadcast %in_51 : i16 to vector<i16>
          %317 = vector.transfer_write %316, %292[%116] : vector<i16>, tensor<14xi16>
          %318 = math.fpowi %0, %301 : tensor<14x1xf32>, tensor<14x1xi32>
          %319 = arith.muli %c541111313_i64, %c1384869300_i64 : i64
          %320 = arith.maxsi %c1327994845_i32, %c1327994845_i32 : i32
          %expanded_54 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<14x1xf16> into tensor<14x1x1xf16>
          %321 = tensor.empty() : tensor<1x1x11xi16>
          %322 = vector.broadcast %126 : index to vector<1xindex>
          %323 = vector.broadcast %false : i1 to vector<1xi1>
          %324 = vector.broadcast %cst : f16 to vector<1xf16>
          vector.scatter %alloc_12[%c0, %c0, %c4] [%322], %323, %324 : memref<1x1x11xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
          %325 = vector.broadcast %out : f32 to vector<14x1xf32>
          %326 = vector.fma %325, %325, %325 : vector<14x1xf32>
          %327 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
          %328 = vector.outerproduct %34, %34, %327 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
          %329 = math.atan %11 : tensor<14x1xf32>
          %330 = vector.matrix_multiply %71, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %331 = bufferization.clone %92 : memref<14x1xi1> to memref<14x1xi1>
          %332 = math.rsqrt %8 : tensor<14x1xf32>
          %333 = vector.broadcast %cst : f16 to vector<14x1xf16>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %293 = arith.divf %in_42, %in : f32
      %294 = arith.mulf %in, %out : f32
      memref.alloca_scope  {
        %295 = vector.broadcast %out : f32 to vector<14x1xf32>
        %296 = vector.fma %295, %295, %295 : vector<14x1xf32>
        %297 = tensor.empty() : tensor<1x1xi1>
        %298 = tensor.empty() : tensor<14x1xi1>
        %299 = linalg.matmul ins(%288, %297 : tensor<14x1xi1>, tensor<1x1xi1>) outs(%298 : tensor<14x1xi1>) -> tensor<14x1xi1>
        %300 = arith.cmpi ult, %c1384869300_i64, %c524604958_i64 : i64
        %301 = arith.floordivsi %c684513806_i32, %c27045025_i32 : i32
        %302 = arith.minui %c508314733_i64, %c1384869300_i64 : i64
        %303 = index.sub %115, %c9
        %304 = arith.remui %c541111313_i64, %c524604958_i64 : i64
        %305 = vector.broadcast %false : i1 to vector<1xi1>
        %dest_51, %accumulated_value_52 = vector.scan <or>, %278, %305 {inclusive = false, reduction_dim = 0 : i64} : vector<4x1xi1>, vector<1xi1>
        %306 = vector.reduction <mul>, %71 : vector<1xf32> into f32
        %307 = vector.broadcast %false : i1 to vector<1xi1>
        vector.transfer_write %307, %92[%c9, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi1>, memref<14x1xi1>
        %308 = math.cttz %from_elements_22 : tensor<14x1xi1>
        %inserted_53 = tensor.insert %c968284859_i32 into %23[] : tensor<i32>
        bufferization.dealloc_tensor %2 : tensor<1x1x11xi64>
        %309 = vector.reduction <mul>, %70 : vector<1xf32> into f32
        %310 = math.sqrt %8 : tensor<14x1xf32>
        %311 = vector.insert %34, %296 [9] : vector<1xf32> into vector<14x1xf32>
        %312 = arith.minf %cst, %cst_1 : f16
        %313 = tensor.empty() : tensor<14x1xi32>
        %314 = math.fpowi %0, %313 : tensor<14x1xf32>, tensor<14x1xi32>
        %collapsed_54 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<1x1x11xi16> into tensor<1x11xi16>
        %315 = vector.broadcast %c1025180508_i32 : i32 to vector<14x1xi32>
        %316 = memref.atomic_rmw mins %c27045025_i32, %alloc_14[%c10, %c0] : (i32, memref<14x1xi32>) -> i32
        %317 = arith.minui %c968284859_i32, %c968284859_i32 : i32
        %318 = math.cos %0 : tensor<14x1xf32>
        %319 = math.exp2 %cst : f16
        %320 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %321 = arith.muli %c1025180508_i32, %c1025180508_i32 : i32
        %322 = vector.reduction <maxf>, %70 : vector<1xf32> into f32
        %cast_55 = tensor.cast %298 : tensor<14x1xi1> to tensor<?x?xi1>
        %323 = arith.muli %c684513806_i32, %c331396349_i32 : i32
        %324 = arith.maxf %cst_2, %cst_2 : f32
        %325 = math.copysign %cst, %cst_1 : f16
        affine.store %c23671_i16, %alloc_10[%c3, %c1] : memref<14x1xi16>
      }
      linalg.yield %out : f32
    } -> tensor<14x1x1xf32>
    memref.store %cst_1, %alloc_4[%c6, %c0] : memref<14x1xf16>
    %133 = vector.insertelement %cst_2, %71[%129 : index] : vector<1xf32>
    %134 = bufferization.to_memref %11 : memref<14x1xf32>
    %135 = arith.cmpf olt, %cst, %cst : f16
    %136 = arith.cmpf false, %cst_1, %cst_1 : f16
    %137 = math.cos %expanded_24 : tensor<14x1x1xf32>
    %138 = math.powf %expanded_24, %expanded_24 : tensor<14x1x1xf32>
    %139 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %71, %70, %cst_2 : vector<1xf32>, vector<1xf32> into f32
    bufferization.dealloc_tensor %3 : tensor<1x1x11xi32>
    %140 = math.exp2 %6 : tensor<14x1xf16>
    %141 = vector.broadcast %cst_2 : f32 to vector<14xf32>
    %142 = vector.broadcast %false : i1 to vector<14xi1>
    %143 = vector.maskedload %72[%c7, %c0, %c0], %142, %141 : memref<14x1x1xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
    %144 = math.atan2 %cst, %cst : f16
    %145 = affine.min affine_map<(d0, d1, d2) -> (((((-d1) floordiv 8) * 32) floordiv 128) mod 16 - d1, (-d1) floordiv 8, (((-d1) floordiv 8) * 32) floordiv 128, ((((-d1) floordiv 8) * 32) floordiv 128) ceildiv 64)>(%41, %c1, %97)
    %146 = arith.divf %cst_0, %cst_2 : f32
    %expanded_27 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<14x1xf16> into tensor<14x1x1xf16>
    %147 = index.ceildivu %145, %129
    memref.store %false, %92[%c9, %c0] : memref<14x1xi1>
    %148 = math.log %1 : tensor<14x1xf32>
    %149 = arith.minf %cst, %cst_1 : f16
    %150 = math.exp2 %32 : tensor<14x14xf32>
    %151 = index.mul %41, %67
    %152 = memref.alloca_scope  -> (i32) {
      %267 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 64, (-d2) floordiv 32 + d0)>(%c8, %67, %88)
      %268 = arith.addf %cst_0, %cst_2 : f32
      %269 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 floordiv 64) mod 16 == 0)>(%c5, %c8, %c7, %c13) -> memref<14x1xi1> {
        %298 = bufferization.clone %alloc_16 : memref<14x1xi1> to memref<14x1xi1>
        %299 = vector.broadcast %c684513806_i32 : i32 to vector<14x1xi32>
        %300 = vector.broadcast %c4 : index to vector<1xindex>
        %301 = vector.broadcast %false : i1 to vector<1xi1>
        %302 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        vector.scatter %104[%c10, %c0] [%300], %301, %302 : memref<14x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %303 = vector.flat_transpose %141 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %304 = math.expm1 %32 : tensor<14x14xf32>
        %305 = index.mul %46, %c2
        %306 = index.divu %c4, %c7
        %307 = affine.max affine_map<(d0, d1) -> (d1 mod 2, d0 floordiv 32)>(%46, %c4)
        affine.yield %92 : memref<14x1xi1>
      } else {
        %298 = vector.insertelement %false, %142[%115 : index] : vector<14xi1>
        %cst_43 = arith.constant 1.000000e+00 : f32
        %299 = vector.transfer_read %0[%46, %88], %cst_43 : tensor<14x1xf32>, vector<1xf32>
        %300 = memref.atomic_rmw addf %cst_2, %alloc_8[%c2, %c0] : (f32, memref<14x1xf32>) -> f32
        %301 = index.mul %c9, %c3
        %302 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        bufferization.dealloc_tensor %11 : tensor<14x1xf32>
        %303 = arith.maxf %cst_1, %cst_1 : f16
        %304 = arith.ceildivsi %c331396349_i32, %c27045025_i32 : i32
        affine.yield %92 : memref<14x1xi1>
      }
      %270 = arith.muli %c1327994845_i32, %c968284859_i32 : i32
      %271 = arith.andi %c1384869300_i64, %extracted : i64
      memref.alloca_scope  {
        %298 = vector.broadcast %c684513806_i32 : i32 to vector<1xi32>
        vector.transfer_write %298, %alloc_14[%97, %49] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi32>, memref<14x1xi32>
        %299 = index.mul %80, %51
        %300 = arith.divf %cst_0, %cst_2 : f32
        %301 = arith.ori %c541111313_i64, %extracted : i64
        %302 = vector.shuffle %143, %141 [0, 2, 4, 6, 8, 9, 11, 21, 23, 24, 25, 27] : vector<14xf32>, vector<14xf32>
        %303 = index.divs %c10, %c11
        %304 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %305 = vector.outerproduct %71, %71, %304 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %cast_43 = tensor.cast %13 : tensor<14x1xi16> to tensor<?x?xi16>
        %306 = index.casts %80 : index to i32
        %307 = arith.remsi %false, %false : i1
        %collapsed_44 = tensor.collapse_shape %4 [[0, 1]] : tensor<14x1xi64> into tensor<14xi64>
        %308 = math.log %6 : tensor<14x1xf16>
        %309 = arith.divf %cst_1, %cst_1 : f16
        %collapsed_45 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x1x11xi16> into tensor<1x11xi16>
        memref.copy %alloc_7, %alloc_17 : memref<14x1xf16> to memref<14x1xf16>
        %310 = affine.min affine_map<(d0, d1, d2) -> ((d1 + 128) * 64, d1 + 130, d1 + 130, d1 floordiv 128)>(%113, %63, %c7)
        %311 = bufferization.to_tensor %alloc_8 : memref<14x1xf32>
        %cast_46 = tensor.cast %21 : tensor<14xi32> to tensor<?xi32>
        affine.store %cst_2, %134[%c15, %c5] : memref<14x1xf32>
        %312 = arith.maxf %cst, %cst_1 : f16
        %313 = index.sub %310, %30
        %314 = arith.ceildivsi %c23671_i16, %c23671_i16 : i16
        %315 = vector.shuffle %71, %34 [0] : vector<1xf32>, vector<1xf32>
        %316 = math.floor %7 : tensor<14x1xf32>
        %317 = math.log1p %8 : tensor<14x1xf32>
        %318 = bufferization.clone %alloc_10 : memref<14x1xi16> to memref<14x1xi16>
        %inserted_47 = tensor.insert %c1384869300_i64 into %collapsed_44[%c5] : tensor<14xi64>
        %319 = vector.broadcast %c1327994845_i32 : i32 to vector<14x1xi32>
        %320 = arith.remsi %c968284859_i32, %c684513806_i32 : i32
        %321 = index.divs %299, %63
        %322 = index.divs %30, %c4
        %323 = arith.ceildivsi %c1025180508_i32, %c684513806_i32 : i32
      }
      %272 = math.exp2 %11 : tensor<14x1xf32>
      %273 = arith.divf %cst, %cst : f16
      %274 = arith.remui %c1327994845_i32, %c27045025_i32 : i32
      %275 = memref.realloc %alloc_18 : memref<14xi32> to memref<1xi32>
      %276 = math.expm1 %11 : tensor<14x1xf32>
      %277 = tensor.empty() : tensor<1x11xi64>
      %278 = tensor.empty() : tensor<14x11xi64>
      %279 = linalg.matmul ins(%from_elements, %277 : tensor<14x1xi64>, tensor<1x11xi64>) outs(%278 : tensor<14x11xi64>) -> tensor<14x11xi64>
      %280 = math.floor %1 : tensor<14x1xf32>
      %281 = arith.muli %c1384869300_i64, %extracted : i64
      %282 = math.fma %1, %7, %95 : tensor<14x1xf32>
      memref.store %c23671_i16, %alloc_10[%c2, %c0] : memref<14x1xi16>
      %283 = math.log %expanded_27 : tensor<14x1x1xf16>
      scf.execute_region {
        %298 = vector.insertelement %cst_0, %20[%c8 : index] : vector<1xf32>
        %299 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %300 = vector.outerproduct %34, %71, %299 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %c1693380551_i32 = arith.constant 1693380551 : i32
        %301 = math.atan %cst_0 : f32
        %302 = math.cttz %c1327994845_i32 : i32
        %303 = math.cttz %c1025180508_i32 : i32
        %304 = affine.max affine_map<(d0, d1) -> (d0 * -16, d1 mod 8, (-d1) mod 8)>(%51, %c3)
        %305 = index.divs %127, %c15
        %306 = index.casts %44 : index to i32
        %307 = memref.atomic_rmw addf %cst_1, %alloc_4[%c2, %c0] : (f16, memref<14x1xf16>) -> f16
        %308 = arith.muli %extracted, %c524604958_i64 : i64
        %309 = vector.load %alloc_7[%c6, %c0] : memref<14x1xf16>, vector<14x1xf16>
        %310 = index.mul %304, %c15
        %311 = math.log10 %cst : f16
        %312 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %313 = index.mul %310, %c7
        scf.yield
      }
      %284 = math.sqrt %7 : tensor<14x1xf32>
      %285 = math.exp2 %cst_2 : f32
      %286 = math.exp %cst_2 : f32
      %287 = tensor.empty() : tensor<1x11xi64>
      %288 = tensor.empty() : tensor<14x11xi64>
      %289 = linalg.matmul ins(%14, %287 : tensor<14x1xi64>, tensor<1x11xi64>) outs(%288 : tensor<14x11xi64>) -> tensor<14x11xi64>
      %290 = memref.load %alloc_11[%c0, %c0, %c5] : memref<1x1x11xi16>
      %291 = memref.load %alloc_8[%c7, %c0] : memref<14x1xf32>
      %alloca_42 = memref.alloca() : memref<14x1xf16>
      %292 = affine.min affine_map<(d0) -> (-(d0 mod 8))>(%c12)
      %293 = math.fma %7, %0, %1 : tensor<14x1xf32>
      %294 = affine.max affine_map<(d0, d1, d2) -> (d2, 0)>(%51, %292, %145)
      %295 = math.absi %collapsed : tensor<14xi16>
      %296 = arith.shli %c968284859_i32, %c331396349_i32 : i32
      affine.store %cst_2, %alloc_3[%c14, %c10] : memref<14x1xf32>
      %297 = math.cttz %9 : tensor<1x1x11xi16>
      memref.alloca_scope.return %c27045025_i32 : i32
    }
    %153 = math.roundeven %11 : tensor<14x1xf32>
    %154 = vector.broadcast %c7 : index to vector<14xindex>
    %155 = vector.broadcast %152 : i32 to vector<14xi32>
    vector.scatter %alloc_6[%c1, %c0] [%154], %142, %155 : memref<14x1xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
    %156 = vector.flat_transpose %141 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
    %157 = arith.remui %c684513806_i32, %c331396349_i32 : i32
    %158 = tensor.empty() : tensor<14x1xi32>
    %mapped_28 = linalg.map ins(%alloc_6, %73, %alloc_14 : memref<14x1xi32>, memref<14x1xi32>, memref<14x1xi32>) outs(%158 : tensor<14x1xi32>)
      (%in: i32, %in_42: i32, %in_43: i32) {
        %267 = math.absf %0 : tensor<14x1xf32>
        %268 = vector.broadcast %c1327994845_i32 : i32 to vector<1x1x11xi32>
        %269 = index.floordivs %113, %116
        %270 = arith.remsi %c1384869300_i64, %c524604958_i64 : i64
        %271 = math.sqrt %11 : tensor<14x1xf32>
        memref.store %cst_0, %alloc_3[%c12, %c0] : memref<14x1xf32>
        %272 = math.cos %cst_1 : f16
        %273 = index.floordivs %30, %c13
        %274 = math.expm1 %32 : tensor<14x14xf32>
        vector.print %55 : vector<1x1x11xf32>
        %275 = index.sizeof
        %276 = tensor.empty() : tensor<14x1xi1>
        %mapped_44 = linalg.map ins(%92 : memref<14x1xi1>) outs(%276 : tensor<14x1xi1>)
          (%in_48: i1) {
            %295 = vector.extract %70[0] : vector<1xf32>
            %296 = index.casts %in_42 : i32 to index
            %297 = index.maxu %116, %41
            %298 = vector.broadcast %c4 : index to vector<1xindex>
            %299 = vector.broadcast %in_48 : i1 to vector<1xi1>
            %300 = vector.broadcast %c23671_i16 : i16 to vector<1xi16>
            vector.scatter %alloc_10[%c11, %c0] [%298], %299, %300 : memref<14x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
            %301 = vector.broadcast %in_48 : i1 to vector<1xi1>
            %302 = vector.maskedload %alloc_9[%c0, %c0, %c10], %301, %301 : memref<1x1x11xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
            %from_elements_49 = tensor.from_elements %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<14x1xf16>
            %303 = math.absf %8 : tensor<14x1xf32>
            %from_elements_50 = tensor.from_elements %c524604958_i64, %extracted, %c524604958_i64, %c541111313_i64, %c508314733_i64, %extracted, %c1384869300_i64, %c524604958_i64, %extracted, %c541111313_i64, %c524604958_i64, %c508314733_i64, %c524604958_i64, %extracted : tensor<14x1xi64>
            %304 = memref.realloc %alloc_18 : memref<14xi32> to memref<11xi32>
            %305 = vector.reduction <mul>, %34 : vector<1xf32> into f32
            %306 = vector.broadcast %cst_2 : f32 to vector<1x1x11xf32>
            %307 = vector.fma %306, %55, %55 : vector<1x1x11xf32>
            %308 = vector.gather %158[%97, %c0] [%128], %120, %128 : tensor<14x1xi32>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi32> into vector<14x1xi32>
            %309 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
            %310 = math.log1p %8 : tensor<14x1xf32>
            %311 = arith.muli %extracted, %c541111313_i64 : i64
            %312 = math.exp2 %7 : tensor<14x1xf32>
            %313 = math.roundeven %11 : tensor<14x1xf32>
            %314 = vector.broadcast %c524604958_i64 : i64 to vector<14x1xi64>
            %315 = math.cos %7 : tensor<14x1xf32>
            %316 = arith.shrui %in_42, %in_42 : i32
            %317 = arith.divf %cst_0, %cst_0 : f32
            %318 = math.powf %6, %6 : tensor<14x1xf16>
            %319 = arith.addf %cst, %cst_1 : f16
            %collapsed_51 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<1x1x11xi64> into tensor<1x11xi64>
            %320 = math.copysign %1, %1 : tensor<14x1xf32>
            %321 = arith.ceildivsi %c27045025_i32, %c1025180508_i32 : i32
            %322 = vector.extract_strided_slice %306 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1x11xf32> to vector<1x1x11xf32>
            %323 = arith.shrui %false, %false : i1
            %324 = vector.broadcast %273 : index to vector<14xindex>
            %325 = vector.broadcast %cst : f16 to vector<14xf16>
            vector.scatter %104[%c9, %c0] [%324], %142, %325 : memref<14x1xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
            %326 = vector.broadcast %c1384869300_i64 : i64 to vector<1x1x11xi64>
            %327 = vector.broadcast %in_48 : i1 to vector<1x1x11xi1>
            %328 = vector.gather %2[%c12, %129, %127] [%268], %327, %326 : tensor<1x1x11xi64>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi64> into vector<1x1x11xi64>
            %329 = math.copysign %11, %8 : tensor<14x1xf32>
            %330 = bufferization.clone %alloc_15 : memref<14x1xi64> to memref<14x1xi64>
            %false_52 = arith.constant false
            linalg.yield %false_52 : i1
          }
        %277 = math.ctpop %35 : tensor<14x1xi64>
        %278 = math.absi %extracted : i64
        %279 = math.fpowi %7, %158 : tensor<14x1xf32>, tensor<14x1xi32>
        %280 = math.log1p %1 : tensor<14x1xf32>
        %281 = math.sqrt %cst_1 : f16
        %282 = tensor.empty() : tensor<1x14xf16>
        %283 = tensor.empty() : tensor<14x14xf16>
        %284 = linalg.matmul ins(%6, %282 : tensor<14x1xf16>, tensor<1x14xf16>) outs(%283 : tensor<14x14xf16>) -> tensor<14x14xf16>
        %285 = index.sub %273, %129
        %286 = vector.insertelement %cst_2, %70[%115 : index] : vector<1xf32>
        %287 = tensor.empty() : tensor<14x1xf32>
        %mapped_45 = linalg.map ins(%95 : tensor<14x1xf32>) outs(%287 : tensor<14x1xf32>)
          (%in_48: f32) {
            %alloca_49 = memref.alloca() : memref<14x1xi1>
            affine.store %cst_2, %134[%c12, %c4] : memref<14x1xf32>
            %295 = index.sizeof
            %alloc_50 = memref.alloc() : memref<14x1xi16>
            %296 = arith.minui %c541111313_i64, %c541111313_i64 : i64
            %297 = index.casts %152 : i32 to index
            %298 = arith.floordivsi %c1025180508_i32, %c684513806_i32 : i32
            %299 = arith.ceildivsi %in, %c968284859_i32 : i32
            %300 = arith.remf %cst_2, %in_48 : f32
            %301 = arith.muli %c524604958_i64, %c541111313_i64 : i64
            %302 = math.ctlz %in : i32
            %alloca_51 = memref.alloca() : memref<14x1xi16>
            %303 = vector.broadcast %c27045025_i32 : i32 to vector<14x1xi32>
            %304 = vector.broadcast %88 : index to vector<14xindex>
            %305 = vector.broadcast %cst : f16 to vector<14xf16>
            vector.scatter %alloc_4[%c5, %c0] [%304], %142, %305 : memref<14x1xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
            %306 = vector.broadcast %c27045025_i32 : i32 to vector<1x1x11xi32>
            %307 = arith.maxsi %c23671_i16, %c23671_i16 : i16
            %308 = math.cos %cst_2 : f32
            %309 = bufferization.clone %alloc_5 : memref<14x1xf16> to memref<14x1xf16>
            %310 = arith.ori %c508314733_i64, %c524604958_i64 : i64
            %311 = memref.load %92[%c12, %c0] : memref<14x1xi1>
            %312 = vector.broadcast %in : i32 to vector<1x1x11xi32>
            %313 = memref.atomic_rmw mulf %cst, %alloc_17[%c10, %c0] : (f16, memref<14x1xf16>) -> f16
            %314 = arith.floordivsi %c1327994845_i32, %c1025180508_i32 : i32
            %315 = index.ceildivu %49, %26
            %316 = vector.broadcast %cst_1 : f16 to vector<14x1xf16>
            %317 = vector.gather %6[%295, %c7] [%303], %120, %316 : tensor<14x1xf16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xf16> into vector<14x1xf16>
            %alloca_52 = memref.alloca() : memref<14x1xf32>
            %318 = bufferization.to_memref %5 : memref<14x1xi16>
            %319 = arith.remsi %c968284859_i32, %in : i32
            %expanded_53 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<1x1x11xi32> into tensor<1x1x11x1xi32>
            affine.store %cst, %alloc_4[%c5, %c4] : memref<14x1xf16>
            %alloc_54 = memref.alloc() : memref<1x1x11xi1>
            %alloc_55 = memref.alloc() : memref<1x14xf32>
            %320 = tensor.empty() : tensor<14x14xf32>
            %321 = linalg.matmul ins(%7, %alloc_55 : tensor<14x1xf32>, memref<1x14xf32>) outs(%320 : tensor<14x14xf32>) -> tensor<14x14xf32>
            %cst_56 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_56 : f32
          }
        %288 = math.rsqrt %7 : tensor<14x1xf32>
        %289 = math.fma %7, %0, %287 : tensor<14x1xf32>
        %290 = math.tan %cst_2 : f32
        %291 = arith.remsi %false, %false : i1
        %true = index.bool.constant true
        %alloc_46 = memref.alloc() : memref<14x1xi16>
        %cast_47 = tensor.cast %from_elements_22 : tensor<14x1xi1> to tensor<?x?xi1>
        %292 = arith.ori %c541111313_i64, %extracted : i64
        %293 = arith.remf %cst_0, %cst_2 : f32
        %294 = bufferization.clone %alloc_9 : memref<1x1x11xi1> to memref<1x1x11xi1>
        affine.for %arg1 = 0 to 24 {
        }
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.execute_region {
      %alloc_42 = memref.alloc() : memref<14x1xf32>
      %cast_43 = tensor.cast %3 : tensor<1x1x11xi32> to tensor<?x?x?xi32>
      %267 = math.fma %7, %0, %1 : tensor<14x1xf32>
      %268 = index.add %145, %116
      %269 = affine.if affine_set<(d0) : (d0 floordiv 4 + 8 >= 0, ((d0 * 4 - 8) * 2) floordiv 64 >= 0, ((d0 * 4 - 8) * 2) floordiv 64 == 0, (d0 * 4 - 8) * 2 == 0)>(%c15) -> i32 {
        %281 = arith.remf %cst_1, %cst_1 : f16
        %282 = arith.cmpf uge, %cst_2, %cst_0 : f32
        memref.copy %36, %alloc_8 : memref<14x1xf32> to memref<14x1xf32>
        %283 = arith.divf %cst, %cst : f16
        %284 = vector.extract_strided_slice %142 {offsets = [8], sizes = [3], strides = [1]} : vector<14xi1> to vector<3xi1>
        %285 = math.cttz %2 : tensor<1x1x11xi64>
        %286 = math.tan %cst_1 : f16
        %287 = arith.shrui %c524604958_i64, %c1384869300_i64 : i64
        affine.yield %c1327994845_i32 : i32
      } else {
        %281 = vector.insertelement %cst_0, %70[%115 : index] : vector<1xf32>
        %282 = affine.load %alloc_9[%c1, %c15, %c15] : memref<1x1x11xi1>
        %283 = math.fma %7, %0, %7 : tensor<14x1xf32>
        %284 = vector.splat %42 : vector<14x1xindex>
        %285 = index.add %c0, %c8
        %286 = arith.ceildivsi %152, %c1025180508_i32 : i32
        %287 = math.exp2 %32 : tensor<14x14xf32>
        %288 = math.floor %cst_0 : f32
        affine.yield %c1025180508_i32 : i32
      }
      %270 = arith.xori %c1384869300_i64, %c508314733_i64 : i64
      %cast_44 = tensor.cast %expanded : tensor<14x1x1xf32> to tensor<?x?x?xf32>
      %271 = index.floordivs %116, %26
      %272 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %272, %alloc_16[%41, %88] : vector<i1>, memref<14x1xi1>
      %273 = vector.extract_strided_slice %142 {offsets = [10], sizes = [4], strides = [1]} : vector<14xi1> to vector<4xi1>
      %274 = arith.xori %false, %false : i1
      %275 = arith.minui %c508314733_i64, %c541111313_i64 : i64
      %276 = arith.remf %cst, %cst_1 : f16
      scf.if %false {
        %281 = arith.maxsi %c1327994845_i32, %152 : i32
        %282 = arith.minf %cst_1, %cst : f16
        %283 = arith.minsi %c968284859_i32, %c1025180508_i32 : i32
        %284 = math.log2 %7 : tensor<14x1xf32>
        %285 = math.rsqrt %expanded_27 : tensor<14x1x1xf16>
        %286 = math.cos %cst_0 : f32
        vector.print %128 : vector<14x1xi32>
        %287 = arith.muli %c331396349_i32, %c1025180508_i32 : i32
      }
      %277 = vector.broadcast %false : i1 to vector<14x14xi1>
      %278 = vector.outerproduct %142, %142, %277 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
      %279 = vector.broadcast %c13 : index to vector<14xindex>
      %280 = vector.broadcast %cst : f16 to vector<14xf16>
      vector.scatter %alloc_7[%c3, %c0] [%279], %142, %280 : memref<14x1xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
      scf.yield
    }
    %159 = arith.divf %cst_2, %cst_0 : f32
    %160 = math.fma %expanded, %expanded_24, %expanded_24 : tensor<14x1x1xf32>
    %161 = arith.ceildivsi %c1025180508_i32, %c1327994845_i32 : i32
    %162 = math.log %7 : tensor<14x1xf32>
    vector.print %121 : vector<1x1x11xi32>
    %163 = math.log %cst : f16
    %164 = math.exp2 %95 : tensor<14x1xf32>
    %165 = math.ceil %6 : tensor<14x1xf16>
    %166 = affine.if affine_set<(d0, d1, d2) : (-d0 >= 0, d2 == 0)>(%c3, %c6, %c4) -> i1 {
      %267 = arith.muli %152, %c968284859_i32 : i32
      %alloca_42 = memref.alloca() : memref<14x1xi1>
      %268 = math.ctlz %collapsed : tensor<14xi16>
      %269 = arith.maxf %cst, %cst : f16
      %270 = arith.shli %c684513806_i32, %c1327994845_i32 : i32
      %271 = bufferization.clone %alloc_15 : memref<14x1xi64> to memref<14x1xi64>
      %272 = math.fpowi %8, %158 : tensor<14x1xf32>, tensor<14x1xi32>
      %273 = math.fma %11, %7, %11 : tensor<14x1xf32>
      affine.yield %false : i1
    } else {
      %267 = arith.remf %cst, %cst : f16
      %268 = arith.xori %c1327994845_i32, %c1025180508_i32 : i32
      %269 = arith.shrsi %c23671_i16, %c23671_i16 : i16
      %270 = math.log1p %cst_2 : f32
      memref.store %c23671_i16, %alloc_10[%c12, %c0] : memref<14x1xi16>
      memref.tensor_store %5, %alloc_13 : memref<14x1xi16>
      %271 = arith.divsi %c684513806_i32, %c1025180508_i32 : i32
      %272 = math.ctpop %10 : tensor<14x1xi16>
      affine.yield %false : i1
    }
    %167 = tensor.empty() : tensor<1x11xf32>
    %168 = tensor.empty() : tensor<14x11xf32>
    %169 = linalg.matmul ins(%1, %167 : tensor<14x1xf32>, tensor<1x11xf32>) outs(%168 : tensor<14x11xf32>) -> tensor<14x11xf32>
    %170 = arith.minf %cst, %cst_1 : f16
    %171 = arith.shli %c331396349_i32, %c331396349_i32 : i32
    %172 = math.fma %6, %6, %6 : tensor<14x1xf16>
    %173 = arith.cmpf olt, %cst_2, %cst_0 : f32
    %174 = arith.remf %cst_1, %cst_1 : f16
    %175 = arith.minsi %c541111313_i64, %c524604958_i64 : i64
    %176 = arith.divf %cst_0, %cst_0 : f32
    %177 = index.ceildivu %129, %c14
    %178 = bufferization.clone %alloc_15 : memref<14x1xi64> to memref<14x1xi64>
    %179 = math.absf %7 : tensor<14x1xf32>
    %180 = arith.remf %cst_2, %cst_2 : f32
    %181 = math.cos %expanded : tensor<14x1x1xf32>
    %182 = math.cttz %4 : tensor<14x1xi64>
    %183 = vector.broadcast %false : i1 to vector<11xi1>
    %184 = vector.maskedload %alloc_16[%c3, %c0], %183, %183 : memref<14x1xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
    %185 = scf.execute_region -> vector<14x1xi1> {
      %267 = vector.insert %cst_2, %71 [0] : f32 into vector<1xf32>
      %268 = arith.shli %c331396349_i32, %c968284859_i32 : i32
      %269 = arith.remsi %c541111313_i64, %c524604958_i64 : i64
      vector.print %70 : vector<1xf32>
      %270 = math.tan %7 : tensor<14x1xf32>
      %271 = index.floordivs %63, %49
      %272 = bufferization.to_memref %0 : memref<14x1xf32>
      %cst_42 = arith.constant 8.704000e+03 : f16
      %273 = memref.load %73[%c6, %c0] : memref<14x1xi32>
      %274 = tensor.empty() : tensor<14x1xf32>
      %275 = arith.floordivsi %c23671_i16, %c23671_i16 : i16
      %276 = bufferization.to_memref %2 : memref<1x1x11xi64>
      %splat = tensor.splat %c684513806_i32 : tensor<14x1xi32>
      %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 4, d1 - (d2 - 62) - 4, d2 + d2 - 64, d1 - 4)>(%37, %80, %c4, %97)
      %278 = index.divs %151, %271
      %279 = index.sizeof
      scf.yield %120 : vector<14x1xi1>
    }
    %alloc_29 = memref.alloc() : memref<1x11xf32>
    %186 = tensor.empty() : tensor<14x11xf32>
    %187 = linalg.matmul ins(%11, %alloc_29 : tensor<14x1xf32>, memref<1x11xf32>) outs(%186 : tensor<14x11xf32>) -> tensor<14x11xf32>
    %188 = index.maxu %80, %126
    %189 = arith.minsi %c508314733_i64, %c541111313_i64 : i64
    %190 = math.sqrt %1 : tensor<14x1xf32>
    %191 = math.fpowi %cst_0, %c968284859_i32 : f32, i32
    %192 = vector.insertelement %cst_2, %156[%145 : index] : vector<14xf32>
    %193 = math.exp2 %186 : tensor<14x11xf32>
    %194 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %195 = vector.outerproduct %20, %34, %194 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
    %196 = math.expm1 %cst_2 : f32
    %197 = math.atan %95 : tensor<14x1xf32>
    vector.print %143 : vector<14xf32>
    %198 = vector.broadcast %false : i1 to vector<1x1x11xi1>
    %199 = vector.gather %from_elements_21[%46, %c9] [%121], %198, %198 : tensor<14x1xi1>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi1> into vector<1x1x11xi1>
    %200 = math.tan %expanded_24 : tensor<14x1x1xf32>
    %201 = arith.addf %cst_2, %cst_2 : f32
    %collapsed_30 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<1x1x11xi16> into tensor<1x11xi16>
    %202 = vector.load %alloc_11[%c0, %c0, %c6] : memref<1x1x11xi16>, vector<1x1x11xi16>
    %collapsed_31 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<14x1xi64> into tensor<14xi64>
    bufferization.dealloc_tensor %21 : tensor<14xi32>
    %203 = vector.broadcast %c508314733_i64 : i64 to vector<14xi64>
    %204 = vector.maskedload %178[%c1, %c0], %142, %203 : memref<14x1xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
    %205 = vector.splat %30 : vector<1x1x11xindex>
    memref.alloca_scope  {
      %267 = affine.load %alloc_7[%c12, %c0] : memref<14x1xf16>
      %268 = arith.floordivsi %c541111313_i64, %c508314733_i64 : i64
      %269 = index.divs %c0, %c8
      %270 = arith.maxsi %c684513806_i32, %c968284859_i32 : i32
      %271 = math.ctlz %21 : tensor<14xi32>
      %272 = vector.insert %cst_0, %70 [0] : f32 into vector<1xf32>
      memref.store %cst_1, %104[%c9, %c0] : memref<14x1xf16>
      %273 = arith.muli %c1025180508_i32, %c684513806_i32 : i32
      scf.execute_region {
        %295 = math.cos %7 : tensor<14x1xf32>
        %296 = affine.load %alloc_16[%c7, %c12] : memref<14x1xi1>
        %297 = math.sqrt %168 : tensor<14x11xf32>
        %298 = bufferization.to_memref %12 : memref<1x1x11xi16>
        %299 = arith.shli %c1384869300_i64, %c524604958_i64 : i64
        %300 = bufferization.clone %alloc_18 : memref<14xi32> to memref<14xi32>
        %301 = math.log1p %1 : tensor<14x1xf32>
        memref.store %267, %104[%c2, %c0] : memref<14x1xf16>
        %302 = math.cos %95 : tensor<14x1xf32>
        %303 = vector.insertelement %cst_2, %141[%c6 : index] : vector<14xf32>
        vector.print %71 : vector<1xf32>
        %304 = math.log1p %267 : f16
        %inserted_45 = tensor.insert %c23671_i16 into %18[%c0, %c13] : tensor<1x14xi16>
        %305 = index.divs %46, %56
        %306 = arith.ceildivsi %c1025180508_i32, %c1327994845_i32 : i32
        %307 = math.tan %8 : tensor<14x1xf32>
        scf.yield
      }
      %274 = math.fma %11, %8, %11 : tensor<14x1xf32>
      %275 = arith.mulf %cst, %cst_1 : f16
      %inserted_42 = tensor.insert %cst_2 into %0[%c6, %c0] : tensor<14x1xf32>
      %276 = index.casts %97 : index to i32
      %277 = math.floor %cst_2 : f32
      %278 = arith.muli %c331396349_i32, %c1025180508_i32 : i32
      %279 = math.log1p %267 : f16
      %280 = math.roundeven %11 : tensor<14x1xf32>
      %281 = arith.remsi %c508314733_i64, %c508314733_i64 : i64
      %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d1 mod 4)>(%177, %c9, %c5, %c14)
      %283 = math.expm1 %0 : tensor<14x1xf32>
      %284 = index.maxu %88, %c4
      memref.store %c23671_i16, %alloc_11[%c0, %c0, %c10] : memref<1x1x11xi16>
      %285 = math.cos %6 : tensor<14x1xf16>
      %286 = vector.extract_strided_slice %202 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1x11xi16> to vector<1x1x11xi16>
      %287 = arith.addf %cst_2, %cst_2 : f32
      %expanded_43 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<1x14xi16> into tensor<1x14x1xi16>
      %288 = arith.divf %cst, %cst_1 : f16
      %289 = math.floor %cst_0 : f32
      %alloc_44 = memref.alloc() : memref<11x1xf32>
      %290 = tensor.empty() : tensor<14x1xf32>
      %291 = linalg.matmul ins(%186, %alloc_44 : tensor<14x11xf32>, memref<11x1xf32>) outs(%290 : tensor<14x1xf32>) -> tensor<14x1xf32>
      %292 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %293 = index.divu %53, %80
      %294 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%26, %37, %49, %63)
    }
    %206 = vector.extract_strided_slice %34 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %207 = vector.gather %73[%c12, %56] [%121], %199, %121 : memref<14x1xi32>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi32> into vector<1x1x11xi32>
    %cast_32 = tensor.cast %2 : tensor<1x1x11xi64> to tensor<?x?x?xi64>
    %208 = arith.maxf %cst_0, %cst_0 : f32
    %209 = bufferization.clone %alloc_10 : memref<14x1xi16> to memref<14x1xi16>
    %210 = vector.broadcast %c4 : index to vector<1xindex>
    %211 = vector.broadcast %false : i1 to vector<1xi1>
    %212 = vector.broadcast %c541111313_i64 : i64 to vector<1xi64>
    vector.scatter %178[%c0, %c0] [%210], %211, %212 : memref<14x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
    %213 = math.log1p %6 : tensor<14x1xf16>
    %214 = math.cos %expanded_27 : tensor<14x1x1xf16>
    %215 = math.expm1 %0 : tensor<14x1xf32>
    %216 = arith.muli %c23671_i16, %c23671_i16 : i16
    vector.print %203 : vector<14xi64>
    %217 = memref.atomic_rmw maxf %cst_0, %134[%c9, %c0] : (f32, memref<14x1xf32>) -> f32
    %218 = arith.floordivsi %c541111313_i64, %c541111313_i64 : i64
    %219 = vector.maskedload %alloc_8[%c2, %c0], %142, %156 : memref<14x1xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
    %220 = math.ctlz %2 : tensor<1x1x11xi64>
    %221 = arith.maxf %cst_0, %cst_0 : f32
    scf.index_switch %177 
    case 1 {
      vector.print %198 : vector<1x1x11xi1>
      %from_elements_42 = tensor.from_elements %c27045025_i32, %c27045025_i32, %c684513806_i32, %c1327994845_i32, %c331396349_i32, %152, %152, %c331396349_i32, %c27045025_i32, %c684513806_i32, %c684513806_i32, %c27045025_i32, %c27045025_i32, %c1025180508_i32 : tensor<14x1xi32>
      %267 = index.floordivs %53, %30
      %268 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d2) floordiv 32 - (d2 - 32), d1, d0, d1 mod 16)>(%c15, %63, %c0)
      %269 = vector.flat_transpose %204 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
      affine.store %c1327994845_i32, %alloc_18[%c13] : memref<14xi32>
      %270 = arith.maxf %cst, %cst_1 : f16
      %271 = arith.minf %cst_1, %cst_1 : f16
      %272 = vector.transpose %204, [0] : vector<14xi64> to vector<14xi64>
      memref.copy %alloc_15, %178 : memref<14x1xi64> to memref<14x1xi64>
      %273 = math.expm1 %7 : tensor<14x1xf32>
      %274 = math.expm1 %6 : tensor<14x1xf16>
      %275 = bufferization.to_tensor %alloc_15 : memref<14x1xi64>
      %276 = arith.remui %extracted, %extracted : i64
      %277 = arith.ori %c684513806_i32, %c1327994845_i32 : i32
      %278 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 64) floordiv 4, d1)>(%c11, %c14)
      scf.yield
    }
    default {
      %267 = index.maxu %127, %c3
      %expanded_42 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
      %expanded_43 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<14x1xi16> into tensor<14x1x1xi16>
      %268 = vector.flat_transpose %71 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %269 = vector.broadcast %c684513806_i32 : i32 to vector<1xi32>
      %270 = vector.insert %269, %128 [2] : vector<1xi32> into vector<14x1xi32>
      %collapsed_44 = tensor.collapse_shape %from_elements_22 [[0, 1]] : tensor<14x1xi1> into tensor<14xi1>
      %271 = vector.broadcast %c524604958_i64 : i64 to vector<1x1x11xi64>
      %272 = index.sizeof
      %273 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %274 = math.log %cst_2 : f32
      %275 = index.castu %152 : i32 to index
      %276 = math.powf %expanded_24, %expanded_24 : tensor<14x1x1xf32>
      %277 = bufferization.to_tensor %alloc_9 : memref<1x1x11xi1>
      %278 = index.sizeof
      %279 = arith.divsi %c524604958_i64, %c541111313_i64 : i64
      %280 = math.cos %6 : tensor<14x1xf16>
    }
    %generated = tensor.generate %51, %c5 {
    ^bb0(%arg1: index, %arg2: index):
      %267 = math.tan %cst_1 : f16
      %268 = math.atan %8 : tensor<14x1xf32>
      %269 = math.absi %17 : tensor<1x1x11xi64>
      %270 = scf.index_switch %arg2 -> tensor<14x1xf32> 
      case 1 {
        bufferization.dealloc_tensor %11 : tensor<14x1xf32>
        %271 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        %272 = vector.outerproduct %141, %219, %271 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        bufferization.dealloc_tensor %from_elements : tensor<14x1xi64>
        %273 = tensor.empty() : tensor<14x11xi32>
        %274 = math.fpowi %186, %273 : tensor<14x11xf32>, tensor<14x11xi32>
        %cast_42 = tensor.cast %1 : tensor<14x1xf32> to tensor<?x?xf32>
        %275 = arith.divui %c524604958_i64, %c541111313_i64 : i64
        %276 = math.tan %95 : tensor<14x1xf32>
        %alloc_43 = memref.alloc() : memref<1x1x11xi32>
        %277 = vector.gather %alloc_43[%c13, %151, %44] [%207], %198, %207 : memref<1x1x11xi32>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xi32> into vector<1x1x11xi32>
        %278 = math.tan %11 : tensor<14x1xf32>
        %279 = arith.mulf %cst, %cst : f16
        %extracted_44 = tensor.extract %91[%c0, %c0, %c7] : tensor<1x1x11xi16>
        %280 = affine.max affine_map<(d0, d1) -> (d1 * 16, ((-d1) mod 32) ceildiv 4, d1 * 16)>(%44, %67)
        %281 = arith.ori %c27045025_i32, %c684513806_i32 : i32
        %282 = math.log2 %1 : tensor<14x1xf32>
        %283 = vector.insert %false, %184 [5] : i1 into vector<11xi1>
        %284 = memref.atomic_rmw maxf %cst_2, %alloc_8[%c7, %c0] : (f32, memref<14x1xf32>) -> f32
        scf.yield %8 : tensor<14x1xf32>
      }
      case 2 {
        %271 = arith.remsi %c968284859_i32, %c684513806_i32 : i32
        %272 = vector.flat_transpose %203 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
        %273 = arith.remf %cst_0, %cst_2 : f32
        %274 = bufferization.to_tensor %134 : memref<14x1xf32>
        %275 = math.log10 %cst_1 : f16
        %276 = math.rsqrt %8 : tensor<14x1xf32>
        %277 = math.log %168 : tensor<14x11xf32>
        %278 = arith.minui %c541111313_i64, %c1384869300_i64 : i64
        %279 = arith.minf %cst, %cst : f16
        %280 = math.exp %7 : tensor<14x1xf32>
        %281 = vector.load %36[%c0, %c0] : memref<14x1xf32>, vector<1x1x11xf32>
        %282 = vector.gather %158[%c6, %c2] [%128], %120, %128 : tensor<14x1xi32>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi32> into vector<14x1xi32>
        %cast_42 = tensor.cast %10 : tensor<14x1xi16> to tensor<?x?xi16>
        %expanded_43 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<14x1xi16> into tensor<14x1x1xi16>
        %283 = math.fma %186, %168, %186 : tensor<14x11xf32>
        %284 = vector.insertelement %false, %183[%c1 : index] : vector<11xi1>
        scf.yield %0 : tensor<14x1xf32>
      }
      case 3 {
        %271 = vector.maskedload %134[%c11, %c0], %142, %141 : memref<14x1xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %272 = math.tan %0 : tensor<14x1xf32>
        %273 = vector.broadcast %c23671_i16 : i16 to vector<14x1xi16>
        %274 = vector.gather %alloc_11[%145, %42, %115] [%128], %120, %273 : memref<1x1x11xi16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi16> into vector<14x1xi16>
        %275 = math.log2 %168 : tensor<14x11xf32>
        %276 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %277 = vector.fma %276, %276, %276 : vector<14x1xf32>
        %cast_42 = tensor.cast %2 : tensor<1x1x11xi64> to tensor<?x?x?xi64>
        %278 = vector.extract %141[13] : vector<14xf32>
        %279 = math.ceil %expanded_24 : tensor<14x1x1xf32>
        %280 = math.exp2 %11 : tensor<14x1xf32>
        %281 = arith.maxf %cst_2, %cst_0 : f32
        %cast_43 = tensor.cast %7 : tensor<14x1xf32> to tensor<?x?xf32>
        %282 = arith.floordivsi %c1025180508_i32, %c968284859_i32 : i32
        %283 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %284 = vector.outerproduct %206, %71, %283 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %285 = vector.insertelement %cst_0, %34[%arg2 : index] : vector<1xf32>
        %286 = arith.minf %cst_2, %cst_0 : f32
        %287 = vector.broadcast %c23671_i16 : i16 to vector<1x11x1x11xi16>
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %202, %202, %287 : vector<1x1x11xi16>, vector<1x1x11xi16> into vector<1x11x1x11xi16>
        scf.yield %8 : tensor<14x1xf32>
      }
      default {
        %271 = math.cttz %35 : tensor<14x1xi64>
        %272 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        %273 = vector.outerproduct %34, %20, %272 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %274 = index.mul %63, %46
        %275 = arith.remf %cst, %cst : f16
        %276 = math.powf %cst_0, %cst_2 : f32
        %277 = affine.apply affine_map<(d0, d1, d2) -> (-((-d1) ceildiv 64 + (-d1) floordiv 4))>(%88, %126, %c0)
        affine.store %c541111313_i64, %178[%c7, %c1] : memref<14x1xi64>
        %278 = bufferization.to_memref %8 : memref<14x1xf32>
        %279 = math.fma %cst_2, %cst_2, %cst_0 : f32
        %280 = math.ctlz %3 : tensor<1x1x11xi32>
        %281 = arith.addf %cst, %cst : f16
        %282 = math.rsqrt %168 : tensor<14x11xf32>
        %283 = math.powf %expanded_27, %expanded_27 : tensor<14x1x1xf16>
        %284 = arith.andi %c524604958_i64, %c508314733_i64 : i64
        %expanded_42 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
        %285 = vector.broadcast %cst_0 : f32 to vector<14x1xf32>
        %286 = vector.fma %285, %285, %285 : vector<14x1xf32>
        scf.yield %11 : tensor<14x1xf32>
      }
      tensor.yield %c331396349_i32 : i32
    } : tensor<?x?xi32>
    %222 = math.cos %0 : tensor<14x1xf32>
    %223 = vector.broadcast %56 : index to vector<1xindex>
    %224 = vector.broadcast %false : i1 to vector<1xi1>
    vector.scatter %36[%c4, %c0] [%223], %224, %20 : memref<14x1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
    %expanded_33 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<14x1xf32> into tensor<14x1x1xf32>
    %225 = math.powf %6, %6 : tensor<14x1xf16>
    %226 = math.tan %1 : tensor<14x1xf32>
    %alloc_34 = memref.alloc() : memref<1x1xi64>
    %227 = tensor.empty() : tensor<14x1xi64>
    %228 = linalg.matmul ins(%14, %alloc_34 : tensor<14x1xi64>, memref<1x1xi64>) outs(%227 : tensor<14x1xi64>) -> tensor<14x1xi64>
    %229 = memref.atomic_rmw assign %c968284859_i32, %alloc_18[%c7] : (i32, memref<14xi32>) -> i32
    %230 = affine.max affine_map<(d0, d1) -> (0)>(%c7, %80)
    %231 = affine.max affine_map<(d0, d1) -> (d1 + d0 - 128, d1 + d0, d0 - 128)>(%151, %113)
    %232 = arith.ceildivsi %c27045025_i32, %c1327994845_i32 : i32
    %alloc_35 = memref.alloc() : memref<14x1xf16>
    %233 = vector.broadcast %c27045025_i32 : i32 to vector<i32>
    %234 = vector.transfer_write %233, %21[%c2] : vector<i32>, tensor<14xi32>
    %235 = arith.floordivsi %c508314733_i64, %c1384869300_i64 : i64
    %236 = math.exp2 %6 : tensor<14x1xf16>
    %237 = scf.execute_region -> memref<14x1xi16> {
      %267 = math.floor %cst_2 : f32
      %268 = arith.addf %cst_2, %cst_2 : f32
      %269 = math.absi %transposed : tensor<1x14xi16>
      %extracted_42 = tensor.extract %186[%c0, %c1] : tensor<14x11xf32>
      %270 = index.divs %41, %26
      %271 = math.roundeven %cst_0 : f32
      %272 = arith.remf %cst, %cst_1 : f16
      %273 = affine.max affine_map<(d0, d1, d2) -> (d1 - d0)>(%42, %129, %41)
      affine.store %cst_1, %alloc_12[%c2, %c11, %c4] : memref<1x1x11xf16>
      %274 = tensor.empty() : tensor<11x1xi16>
      %275 = tensor.empty() : tensor<1x1xi16>
      %276 = linalg.matmul ins(%collapsed_30, %274 : tensor<1x11xi16>, tensor<11x1xi16>) outs(%275 : tensor<1x1xi16>) -> tensor<1x1xi16>
      %277 = math.floor %8 : tensor<14x1xf32>
      %278 = vector.matrix_multiply %71, %143 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xf32>, vector<14xf32>) -> vector<14xf32>
      scf.execute_region {
        %283 = math.tan %11 : tensor<14x1xf32>
        %284 = math.powf %expanded_27, %expanded_27 : tensor<14x1x1xf16>
        %285 = affine.max affine_map<(d0, d1) -> ((d0 mod 8 + d0 * 2) mod 8 + 2, (d0 mod 8) * 4, (-d0 + (d0 - 32) ceildiv 4) floordiv 8)>(%145, %151)
        %inserted_44 = tensor.insert %cst_1 into %6[%c3, %c0] : tensor<14x1xf16>
        affine.store %extracted, %178[%c10, %c6] : memref<14x1xi64>
        %splat = tensor.splat %c1327994845_i32 : tensor<14x1xi32>
        %286 = arith.ceildivsi %c524604958_i64, %c541111313_i64 : i64
        %287 = arith.shrui %c508314733_i64, %c541111313_i64 : i64
        %288 = vector.flat_transpose %206 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %289 = vector.broadcast %cst_2 : f32 to vector<f32>
        %290 = vector.transfer_write %289, %8[%56, %c6] : vector<f32>, tensor<14x1xf32>
        %291 = math.log %0 : tensor<14x1xf32>
        %292 = arith.remsi %c541111313_i64, %c524604958_i64 : i64
        %293 = arith.floordivsi %c331396349_i32, %c684513806_i32 : i32
        %294 = vector.broadcast %113 : index to vector<14xindex>
        %295 = vector.broadcast %c23671_i16 : i16 to vector<14xi16>
        vector.scatter %alloc_11[%c0, %c0, %c1] [%294], %142, %295 : memref<1x1x11xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %296 = arith.ceildivsi %c968284859_i32, %c27045025_i32 : i32
        %297 = affine.load %alloc_3[%c12, %c11] : memref<14x1xf32>
        scf.yield
      }
      %279 = math.absf %cst_2 : f32
      %generated_43 = tensor.generate %67 {
      ^bb0(%arg1: index, %arg2: index):
        %283 = math.cttz %c27045025_i32 : i32
        %284 = index.castu %c541111313_i64 : i64 to index
        %285 = math.sqrt %7 : tensor<14x1xf32>
        %286 = vector.broadcast %c23671_i16 : i16 to vector<14x1xi16>
        %287 = vector.gather %alloc_13[%116, %231] [%128], %120, %286 : memref<14x1xi16>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi16> into vector<14x1xi16>
        tensor.yield %false : i1
      } : tensor<?x1xi1>
      %280 = tensor.empty() : tensor<11x11xi16>
      %281 = tensor.empty() : tensor<1x11xi16>
      %282 = linalg.matmul ins(%collapsed_30, %280 : tensor<1x11xi16>, tensor<11x11xi16>) outs(%281 : tensor<1x11xi16>) -> tensor<1x11xi16>
      scf.yield %alloc_10 : memref<14x1xi16>
    }
    %from_elements_36 = tensor.from_elements %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16 : tensor<14x1xi16>
    %expanded_37 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<1x1x11xi32> into tensor<1x1x11x1xi32>
    %238 = scf.while (%arg1 = %71) : (vector<1xf32>) -> vector<1xf32> {
      %267 = math.exp %cst_2 : f32
      %cast_42 = tensor.cast %6 : tensor<14x1xf16> to tensor<?x?xf16>
      %268 = index.floordivs %44, %151
      memref.store %cst, %alloc_7[%c9, %c0] : memref<14x1xf16>
      %269 = math.fma %32, %32, %32 : tensor<14x14xf32>
      %collapsed_43 = tensor.collapse_shape %expanded_24 [[0, 1], [2]] : tensor<14x1x1xf32> into tensor<14x1xf32>
      %270 = bufferization.to_tensor %alloc_6 : memref<14x1xi32>
      %271 = math.roundeven %8 : tensor<14x1xf32>
      scf.condition(%false) %206 : vector<1xf32>
    } do {
    ^bb0(%arg1: vector<1xf32>):
      %267 = bufferization.to_memref %227 : memref<14x1xi64>
      scf.execute_region {
        %278 = arith.minf %cst_2, %cst_0 : f32
        %279 = index.maxu %c8, %151
        %280 = index.divu %c15, %80
        %281 = memref.realloc %alloc_18 : memref<14xi32> to memref<11xi32>
        %282 = arith.maxf %cst_2, %cst_0 : f32
        %283 = math.copysign %1, %11 : tensor<14x1xf32>
        %284 = math.absi %c541111313_i64 : i64
        %285 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %286 = vector.fma %285, %285, %285 : vector<14x1xf32>
        %287 = arith.cmpf olt, %cst_2, %cst_2 : f32
        %288 = bufferization.to_memref %17 : memref<1x1x11xi64>
        %289 = arith.addi %c23671_i16, %c23671_i16 : i16
        %290 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
        %291 = vector.outerproduct %143, %219, %290 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %292 = math.ctlz %2 : tensor<1x1x11xi64>
        %293 = math.fma %8, %11, %8 : tensor<14x1xf32>
        %294 = arith.ceildivsi %extracted, %c1384869300_i64 : i64
        %295 = math.cos %186 : tensor<14x11xf32>
        scf.yield
      }
      %268 = arith.muli %c27045025_i32, %c1327994845_i32 : i32
      %269 = index.casts %c13 : index to i32
      %270 = scf.index_switch %c8 -> f32 
      case 1 {
        %278 = arith.remsi %152, %c684513806_i32 : i32
        %279 = bufferization.to_memref %collapsed_31 : memref<14xi64>
        %280 = math.fpowi %8, %158 : tensor<14x1xf32>, tensor<14x1xi32>
        %281 = math.ctlz %14 : tensor<14x1xi64>
        %282 = math.powf %8, %0 : tensor<14x1xf32>
        %283 = index.castu %c524604958_i64 : i64 to index
        %284 = arith.muli %152, %c27045025_i32 : i32
        %285 = vector.extract_strided_slice %198 {offsets = [0, 0], sizes = [1, 1], strides = [1, 1]} : vector<1x1x11xi1> to vector<1x1x11xi1>
        %286 = math.expm1 %32 : tensor<14x14xf32>
        %287 = index.maxu %c14, %46
        %288 = vector.broadcast %false : i1 to vector<11x11xi1>
        %289 = vector.outerproduct %183, %183, %288 {kind = #vector.kind<minsi>} : vector<11xi1>, vector<11xi1>
        %290 = math.cos %186 : tensor<14x11xf32>
        %291 = index.divu %c14, %c5
        %292 = index.floordivs %44, %88
        %293 = math.powf %11, %11 : tensor<14x1xf32>
        %294 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        %295 = vector.outerproduct %156, %156, %294 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        scf.yield %cst_2 : f32
      }
      default {
        vector.print %55 : vector<1x1x11xf32>
        %278 = index.ceildivu %c13, %147
        %alloca_44 = memref.alloca() : memref<14x1xf32>
        %279 = vector.broadcast %cst_2 : f32 to vector<14x1xf32>
        %280 = vector.fma %279, %279, %279 : vector<14x1xf32>
        %281 = math.exp %8 : tensor<14x1xf32>
        %282 = index.divs %44, %c12
        %283 = arith.ceildivsi %c524604958_i64, %c524604958_i64 : i64
        %284 = index.mul %129, %282
        %285 = math.log1p %95 : tensor<14x1xf32>
        %286 = math.ctpop %collapsed_30 : tensor<1x11xi16>
        %287 = arith.divui %extracted, %c1384869300_i64 : i64
        %288 = math.tan %expanded_24 : tensor<14x1x1xf32>
        %splat = tensor.splat %c27045025_i32 : tensor<14x1xi32>
        %289 = math.cos %expanded_24 : tensor<14x1x1xf32>
        %dest_45, %accumulated_value_46 = vector.scan <mul>, %279, %156 {inclusive = true, reduction_dim = 1 : i64} : vector<14x1xf32>, vector<14xf32>
        %290 = vector.insertelement %cst_0, %70[%c5 : index] : vector<1xf32>
        scf.yield %cst_2 : f32
      }
      %271 = index.divu %63, %151
      %272 = arith.minf %cst_0, %cst_0 : f32
      %273 = arith.maxsi %c524604958_i64, %c524604958_i64 : i64
      %274 = vector.shuffle %198, %198 [0] : vector<1x1x11xi1>, vector<1x1x11xi1>
      %275 = index.divu %c7, %c13
      bufferization.dealloc_tensor %14 : tensor<14x1xi64>
      %276 = math.copysign %168, %186 : tensor<14x11xf32>
      bufferization.dealloc_tensor %12 : tensor<1x1x11xi16>
      %collapsed_42 = tensor.collapse_shape %5 [[0, 1]] : tensor<14x1xi16> into tensor<14xi16>
      %cast_43 = tensor.cast %17 : tensor<1x1x11xi64> to tensor<?x?x?xi64>
      %277 = arith.divf %cst_0, %cst_2 : f32
      scf.yield %20 : vector<1xf32>
    }
    %239 = math.tanh %6 : tensor<14x1xf16>
    %240 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %241 = vector.outerproduct %206, %20, %240 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
    memref.tensor_store %5, %237 : memref<14x1xi16>
    %242 = arith.floordivsi %c23671_i16, %c23671_i16 : i16
    %243 = math.roundeven %1 : tensor<14x1xf32>
    %244 = math.log1p %expanded : tensor<14x1x1xf32>
    %245 = math.tan %7 : tensor<14x1xf32>
    %246 = arith.remui %c508314733_i64, %c541111313_i64 : i64
    %247 = math.atan %6 : tensor<14x1xf16>
    %248 = index.mul %c5, %42
    %249 = math.cos %95 : tensor<14x1xf32>
    %250 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 - 1) * -2 + 128, -d1 + (-(d2 - 1)) ceildiv 4 - 64, (d2 - 1) * -2 - (d1 - d0) + 128)>(%c4, %c6, %67, %113)
    scf.index_switch %127 
    case 1 {
      %267 = arith.ceildivsi %c1384869300_i64, %extracted : i64
      %268 = math.rsqrt %8 : tensor<14x1xf32>
      %alloca_42 = memref.alloca() : memref<14x1xi16>
      %269 = vector.broadcast %cst_0 : f32 to vector<f32>
      %270 = vector.transfer_write %269, %0[%188, %147] : vector<f32>, tensor<14x1xf32>
      %271 = bufferization.to_memref %from_elements_36 : memref<14x1xi16>
      %272 = math.fma %7, %8, %8 : tensor<14x1xf32>
      %273 = math.absf %cst_0 : f32
      %274 = vector.broadcast %37 : index to vector<11xindex>
      vector.scatter %alloc_16[%c9, %c0] [%274], %184, %183 : memref<14x1xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
      %275 = math.powf %expanded, %expanded : tensor<14x1x1xf32>
      %276 = math.log10 %expanded : tensor<14x1x1xf32>
      %277 = math.absi %2 : tensor<1x1x11xi64>
      %278 = arith.maxsi %c524604958_i64, %c524604958_i64 : i64
      %279 = arith.ori %c1327994845_i32, %c968284859_i32 : i32
      %alloc_43 = memref.alloc() : memref<14x1xi32>
      %280 = tensor.empty() : tensor<1x1x11xf16>
      %281 = vector.broadcast %cst_1 : f16 to vector<1x1x11xf16>
      %282 = vector.gather %280[%129, %147, %41] [%121], %198, %281 : tensor<1x1x11xf16>, vector<1x1x11xi32>, vector<1x1x11xi1>, vector<1x1x11xf16> into vector<1x1x11xf16>
      affine.store %c23671_i16, %alloc_11[%c9, %c7, %c13] : memref<1x1x11xi16>
      scf.yield
    }
    case 2 {
      %267 = vector.matrix_multiply %156, %70 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<1xf32>) -> vector<14xf32>
      %268 = math.cos %0 : tensor<14x1xf32>
      %269 = arith.subi %c23671_i16, %c23671_i16 : i16
      %270 = math.atan %expanded_33 : tensor<14x1x1xf32>
      %collapsed_42 = tensor.collapse_shape %186 [[0, 1]] : tensor<14x11xf32> into tensor<154xf32>
      %cst_43 = arith.constant 1.81751974E+9 : f32
      %271 = arith.minf %cst_1, %cst : f16
      %expanded_44 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<1x1x11xi16> into tensor<1x1x11x1xi16>
      %272 = math.powf %expanded_33, %expanded : tensor<14x1x1xf32>
      %273 = arith.floordivsi %c331396349_i32, %c968284859_i32 : i32
      %274 = vector.flat_transpose %204 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
      %275 = math.ctlz %from_elements_22 : tensor<14x1xi1>
      %276 = tensor.empty() : tensor<1x14xf16>
      %277 = tensor.empty() : tensor<14x14xf16>
      %278 = linalg.matmul ins(%6, %276 : tensor<14x1xf16>, tensor<1x14xf16>) outs(%277 : tensor<14x14xf16>) -> tensor<14x14xf16>
      %279 = arith.maxf %cst, %cst : f16
      %280 = math.atan %expanded : tensor<14x1x1xf32>
      %281 = index.mul %248, %127
      scf.yield
    }
    default {
      %267 = bufferization.to_memref %8 : memref<14x1xf32>
      %268 = scf.execute_region -> i16 {
        %284 = arith.maxui %c684513806_i32, %c27045025_i32 : i32
        %285 = math.floor %95 : tensor<14x1xf32>
        %286 = tensor.empty() : tensor<14x1xi32>
        %287 = arith.divf %cst, %cst_1 : f16
        %true = index.bool.constant true
        %288 = math.roundeven %8 : tensor<14x1xf32>
        %289 = vector.insertelement %cst_2, %71[%49 : index] : vector<1xf32>
        %290 = index.mul %c6, %147
        %291 = arith.shrui %extracted, %c541111313_i64 : i64
        %c100548860_i32 = arith.constant 100548860 : i32
        %292 = math.log1p %1 : tensor<14x1xf32>
        %cast_46 = tensor.cast %15 : tensor<1x1x11xi32> to tensor<?x?x?xi32>
        %293 = arith.minf %cst, %cst_1 : f16
        %294 = arith.negf %cst_0 : f32
        vector.print %206 : vector<1xf32>
        %295 = math.log1p %6 : tensor<14x1xf16>
        scf.yield %c23671_i16 : i16
      }
      %269 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
      %270 = vector.outerproduct %156, %156, %269 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
      %cst_42 = arith.constant 1.000000e+00 : f16
      %cst_43 = arith.constant 0.000000e+00 : f16
      %271 = vector.transfer_read %alloc_7[%c13, %c0], %cst_43 : memref<14x1xf16>, vector<f16>
      %272 = vector.broadcast %c23671_i16 : i16 to vector<i16>
      %273 = vector.transfer_write %272, %12[%49, %37, %c8] : vector<i16>, tensor<1x1x11xi16>
      %274 = arith.maxsi %268, %c23671_i16 : i16
      %275 = tensor.empty() : tensor<14x1x1xf16>
      %mapped_44 = linalg.map ins(%expanded_27 : tensor<14x1x1xf16>) outs(%275 : tensor<14x1x1xf16>)
        (%in: f16) {
          %284 = vector.broadcast %cst_2 : f32 to vector<1x11xf32>
          %dest_46, %accumulated_value_47 = vector.scan <minf>, %55, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1x11xf32>, vector<1x11xf32>
          %285 = math.cos %8 : tensor<14x1xf32>
          %286 = bufferization.to_memref %275 : memref<14x1x1xf16>
          %287 = math.log2 %168 : tensor<14x11xf32>
          %288 = math.absf %11 : tensor<14x1xf32>
          %289 = arith.ceildivsi %extracted, %extracted : i64
          %290 = index.maxu %145, %c3
          %291 = vector.multi_reduction <mul>, %55, %34 [0, 2] : vector<1x1x11xf32> to vector<1xf32>
          %292 = bufferization.clone %alloc_8 : memref<14x1xf32> to memref<14x1xf32>
          %293 = vector.extract_strided_slice %203 {offsets = [2], sizes = [1], strides = [1]} : vector<14xi64> to vector<1xi64>
          %294 = bufferization.to_memref %18 : memref<1x14xi16>
          %from_elements_48 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<14x1xi1>
          %295 = math.sqrt %expanded_24 : tensor<14x1x1xf32>
          vector.print %143 : vector<14xf32>
          %296 = math.exp2 %1 : tensor<14x1xf32>
          bufferization.dealloc_tensor %1 : tensor<14x1xf32>
          %297 = affine.min affine_map<(d0) -> (d0 mod 16, (d0 + 32) * 32)>(%c4)
          %298 = arith.minui %c1327994845_i32, %152 : i32
          %299 = math.fpowi %6, %158 : tensor<14x1xf16>, tensor<14x1xi32>
          %300 = bufferization.to_memref %5 : memref<14x1xi16>
          %301 = vector.broadcast %cst_2 : f32 to vector<1xf32>
          %302 = vector.transfer_write %301, %0[%51, %250] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<14x1xf32>
          %303 = arith.xori %c541111313_i64, %c541111313_i64 : i64
          %304 = vector.broadcast %c968284859_i32 : i32 to vector<14x1xi32>
          %305 = bufferization.to_memref %14 : memref<14x1xi64>
          %alloca_49 = memref.alloca() : memref<1x1x11xi64>
          %cast_50 = tensor.cast %8 : tensor<14x1xf32> to tensor<?x?xf32>
          %306 = affine.max affine_map<(d0) -> (-(d0 - 32))>(%113)
          memref.store %268, %alloc_11[%c0, %c0, %c9] : memref<1x1x11xi16>
          %307 = arith.divf %cst_0, %cst_0 : f32
          %308 = arith.maxf %cst_0, %cst_0 : f32
          %309 = memref.load %alloc_16[%c8, %c0] : memref<14x1xi1>
          %310 = math.sqrt %expanded_24 : tensor<14x1x1xf32>
          %cst_51 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_51 : f16
        }
      %276 = math.log10 %8 : tensor<14x1xf32>
      %277 = math.copysign %6, %6 : tensor<14x1xf16>
      %278 = index.casts %56 : index to i32
      %generated_45 = tensor.generate %53 {
      ^bb0(%arg1: index, %arg2: index):
        %284 = vector.extract_strided_slice %199 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1x11xi1> to vector<1x1x11xi1>
        %285 = math.atan %8 : tensor<14x1xf32>
        %collapsed_46 = tensor.collapse_shape %transposed [[0, 1]] : tensor<1x14xi16> into tensor<14xi16>
        %from_elements_47 = tensor.from_elements %c524604958_i64, %c1384869300_i64, %c524604958_i64, %extracted, %extracted, %c541111313_i64, %c508314733_i64, %extracted, %extracted, %c524604958_i64, %c524604958_i64, %c524604958_i64, %c508314733_i64, %extracted : tensor<14x1xi64>
        tensor.yield %c27045025_i32 : i32
      } : tensor<?x1xi32>
      %279 = arith.addf %cst_1, %cst : f16
      %280 = affine.load %alloc[%c5, %c7] : memref<14x1xi32>
      %281 = index.floordivs %c11, %80
      %282 = math.ctpop %c541111313_i64 : i64
      %283 = math.sqrt %6 : tensor<14x1xf16>
    }
    %251 = math.log %7 : tensor<14x1xf32>
    %252 = index.divs %30, %37
    %253 = memref.load %alloc_13[%c13, %c0] : memref<14x1xi16>
    %254 = arith.ceildivsi %c684513806_i32, %152 : i32
    %255 = math.copysign %expanded_27, %expanded_27 : tensor<14x1x1xf16>
    %inserted = tensor.insert %cst_0 into %8[%c9, %c0] : tensor<14x1xf32>
    %256 = vector.load %alloc_3[%c5, %c0] : memref<14x1xf32>, vector<14x1xf32>
    memref.store %cst_1, %alloc_4[%c1, %c0] : memref<14x1xf16>
    %257 = bufferization.clone %237 : memref<14x1xi16> to memref<14x1xi16>
    %258 = math.log1p %cst_0 : f32
    %259 = arith.remui %false, %false : i1
    %260 = math.fpowi %cst, %c1025180508_i32 : f16, i32
    %261 = vector.gather %92[%c10, %51] [%128], %120, %120 : memref<14x1xi1>, vector<14x1xi32>, vector<14x1xi1>, vector<14x1xi1> into vector<14x1xi1>
    %false_38 = arith.constant false
    %262 = math.cttz %22 : tensor<i32>
    %from_elements_39 = tensor.from_elements %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16, %c23671_i16 : tensor<1x1x11xi16>
    %263 = tensor.empty() : tensor<14x1xf32>
    %264 = linalg.copy ins(%7 : tensor<14x1xf32>) outs(%263 : tensor<14x1xf32>) -> tensor<14x1xf32>
    %265 = tensor.empty() : tensor<1x14xf16>
    %transposed_40 = linalg.transpose ins(%alloc_7 : memref<14x1xf16>) outs(%265 : tensor<1x14xf16>) permutation = [1, 0] 
    %alloc_41 = memref.alloc() : memref<i64>
    linalg.reduce ins(%4 : tensor<14x1xi64>) outs(%alloc_41 : memref<i64>) dimensions = [0, 1] 
      (%in: i64, %init: i64) {
        %267 = arith.muli %c27045025_i32, %c1327994845_i32 : i32
        %268 = math.roundeven %cst_0 : f32
        %269 = math.cos %0 : tensor<14x1xf32>
        %270 = math.log %0 : tensor<14x1xf32>
        %271 = vector.reduction <mul>, %156 : vector<14xf32> into f32
        %272 = index.ceildivu %37, %c4
        %273 = arith.minui %c508314733_i64, %in : i64
        %274 = math.cttz %9 : tensor<1x1x11xi16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg1, %arg2) = (%147, %188) to (%250, %46) step (%c7, %c6) {
      %267 = arith.remf %cst_1, %cst : f16
      %268 = bufferization.to_tensor %104 : memref<14x1xf16>
      %269 = math.atan %264 : tensor<14x1xf32>
      %270 = math.ctpop %15 : tensor<1x1x11xi32>
      vector.print %70 : vector<1xf32>
      %271 = index.floordivs %37, %147
      %272 = index.divu %c3, %250
      %273 = arith.andi %extracted, %c541111313_i64 : i64
      %274 = arith.minf %cst_1, %cst : f16
      %cast_42 = tensor.cast %7 : tensor<14x1xf32> to tensor<?x?xf32>
      %275 = arith.remui %c1025180508_i32, %c684513806_i32 : i32
      %276 = arith.ori %false, %false : i1
      %277 = math.ipowi %c27045025_i32, %c27045025_i32 : i32
      %278 = vector.insert %cst_0, %70 [0] : f32 into vector<1xf32>
      %279 = index.casts %113 : index to i32
      %280 = math.log1p %263 : tensor<14x1xf32>
      scf.yield
    }
    %266 = affine.vector_load %alloc_10[%129, %c11] : memref<14x1xi16>, vector<1xi16>
    affine.vector_store %143, %alloc_8[%49, %126] : memref<14x1xf32>, vector<14xf32>
    vector.print %20 : vector<1xf32>
    vector.print %34 : vector<1xf32>
    vector.print %55 : vector<1x1x11xf32>
    vector.print %70 : vector<1xf32>
    vector.print %71 : vector<1xf32>
    vector.print %120 : vector<14x1xi1>
    vector.print %121 : vector<1x1x11xi32>
    vector.print %128 : vector<14x1xi32>
    vector.print %141 : vector<14xf32>
    vector.print %142 : vector<14xi1>
    vector.print %143 : vector<14xf32>
    vector.print %156 : vector<14xf32>
    vector.print %183 : vector<11xi1>
    vector.print %184 : vector<11xi1>
    vector.print %198 : vector<1x1x11xi1>
    vector.print %199 : vector<1x1x11xi1>
    vector.print %202 : vector<1x1x11xi16>
    vector.print %203 : vector<14xi64>
    vector.print %204 : vector<14xi64>
    vector.print %206 : vector<1xf32>
    vector.print %207 : vector<1x1x11xi32>
    vector.print %219 : vector<14xf32>
    vector.print %233 : vector<i32>
    vector.print %256 : vector<14x1xf32>
    vector.print %261 : vector<14x1xi1>
    vector.print %266 : vector<1xi16>
    vector.print %c541111313_i64 : i64
    vector.print %cst : f16
    vector.print %c524604958_i64 : i64
    vector.print %c684513806_i32 : i32
    vector.print %c27045025_i32 : i32
    vector.print %false : i1
    vector.print %cst_0 : f32
    vector.print %c23671_i16 : i16
    vector.print %c1384869300_i64 : i64
    vector.print %c1025180508_i32 : i32
    vector.print %c508314733_i64 : i64
    vector.print %c1327994845_i32 : i32
    vector.print %cst_1 : f16
    vector.print %c968284859_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c331396349_i32 : i32
    vector.print %extracted : i64
    vector.print %152 : i32
    return
  }
}
