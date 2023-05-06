module {
  func.func @func1(%arg0: index, %arg1: f32) -> index {
    %true = arith.constant true
    %false = arith.constant false
    %cst = arith.constant 4.003200e+04 : f16
    %c1296049304_i32 = arith.constant 1296049304 : i32
    %c130554928_i32 = arith.constant 130554928 : i32
    %cst_0 = arith.constant 3.136000e+04 : f16
    %c9300_i16 = arith.constant 9300 : i16
    %cst_1 = arith.constant 1.91225152E+9 : f32
    %c1909637028_i64 = arith.constant 1909637028 : i64
    %c1049580416_i32 = arith.constant 1049580416 : i32
    %c52229187_i32 = arith.constant 52229187 : i32
    %c1982931414_i64 = arith.constant 1982931414 : i64
    %c13561_i16 = arith.constant 13561 : i16
    %c1519752392_i64 = arith.constant 1519752392 : i64
    %c1847384886_i64 = arith.constant 1847384886 : i64
    %c-29224_i16 = arith.constant -29224 : i16
    %0 = tensor.empty() : tensor<6x6x3xf32>
    %1 = tensor.empty() : tensor<6x4x6xi16>
    %2 = tensor.empty() : tensor<4x3xf16>
    %3 = tensor.empty() : tensor<3xi1>
    %4 = tensor.empty() : tensor<6x4x6xf32>
    %5 = tensor.empty() : tensor<3xi32>
    %6 = tensor.empty() : tensor<3xi1>
    %7 = tensor.empty() : tensor<4x3xi16>
    %8 = tensor.empty() : tensor<4x3xi16>
    %9 = tensor.empty() : tensor<4x3xi32>
    %10 = tensor.empty() : tensor<4x3xi1>
    %11 = tensor.empty() : tensor<6x4x6xi64>
    %12 = tensor.empty() : tensor<4x3xi1>
    %13 = tensor.empty() : tensor<3xi64>
    %14 = tensor.empty() : tensor<4x3xi32>
    %15 = tensor.empty() : tensor<4x3xf32>
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
    %alloc = memref.alloc() : memref<6x4x6xi64>
    %alloc_2 = memref.alloc() : memref<6x6x3xi32>
    %alloc_3 = memref.alloc() : memref<6x4x6xi16>
    %alloc_4 = memref.alloc() : memref<6x6x3xi16>
    %alloc_5 = memref.alloc() : memref<6x4x6xf32>
    %alloc_6 = memref.alloc() : memref<4x3xi16>
    %alloc_7 = memref.alloc() : memref<6x6x3xf32>
    %alloc_8 = memref.alloc() : memref<4x3xi64>
    %alloc_9 = memref.alloc() : memref<6x4x6xi1>
    %alloc_10 = memref.alloc() : memref<4x3xi16>
    %alloc_11 = memref.alloc() : memref<6x6x3xi32>
    %alloc_12 = memref.alloc() : memref<4x3xf16>
    %alloc_13 = memref.alloc() : memref<3xf16>
    %alloc_14 = memref.alloc() : memref<3xi32>
    %alloc_15 = memref.alloc() : memref<3xf16>
    %alloc_16 = memref.alloc() : memref<3xi32>
    %16 = tensor.empty() : tensor<3xi64>
    %17 = linalg.copy ins(%13 : tensor<3xi64>) outs(%16 : tensor<3xi64>) -> tensor<3xi64>
    %alloc_17 = memref.alloc() : memref<3x6x6xf32>
    linalg.transpose ins(%0 : tensor<6x6x3xf32>) outs(%alloc_17 : memref<3x6x6xf32>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%13 : tensor<3xi64>) outs(%18 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %from_elements_37 = tensor.from_elements %c-29224_i16, %c9300_i16, %c9300_i16, %c-29224_i16, %c-29224_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c-29224_i16, %c13561_i16, %c13561_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c9300_i16, %c-29224_i16, %c-29224_i16, %c9300_i16, %c13561_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c9300_i16, %c13561_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c-29224_i16, %c13561_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c-29224_i16, %c-29224_i16, %c13561_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c9300_i16, %c-29224_i16, %c-29224_i16, %c13561_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c13561_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c-29224_i16, %c-29224_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c-29224_i16, %c13561_i16, %c13561_i16, %c9300_i16, %c-29224_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c-29224_i16, %c13561_i16, %c-29224_i16, %c-29224_i16, %c-29224_i16, %c-29224_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c9300_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c9300_i16 : tensor<6x6x3xi16>
        %267 = math.exp %2 : tensor<4x3xf16>
        %268 = vector.broadcast %c13561_i16 : i16 to vector<3xi16>
        %269 = vector.transpose %268, [0] : vector<3xi16> to vector<3xi16>
        %rank = tensor.rank %9 : tensor<4x3xi32>
        %270 = memref.load %alloc_7[%c1, %c3, %c0] : memref<6x6x3xf32>
        %271 = tensor.empty() : tensor<3xf16>
        %mapped_38 = linalg.map ins(%alloc_13, %alloc_13 : memref<3xf16>, memref<3xf16>) outs(%271 : tensor<3xf16>)
          (%in_40: f16, %in_41: f16) {
            %273 = math.cttz %6 : tensor<3xi1>
            %274 = bufferization.to_tensor %alloc_15 : memref<3xf16>
            %275 = arith.cmpi ugt, %c9300_i16, %c9300_i16 : i16
            %276 = vector.load %alloc_8[%c2, %c2] : memref<4x3xi64>, vector<6x6x3xi64>
            %277 = math.powf %271, %271 : tensor<3xf16>
            %278 = arith.andi %true, %false : i1
            %279 = arith.minsi %c1847384886_i64, %c1847384886_i64 : i64
            memref.assume_alignment %alloc_17, 4 : memref<3x6x6xf32>
            %280 = arith.subi %init, %in : i64
            %281 = math.ipowi %12, %12 : tensor<4x3xi1>
            %282 = arith.mulf %in_41, %in_40 : f16
            %283 = bufferization.to_tensor %alloc_5 : memref<6x4x6xf32>
            %284 = vector.splat %false : vector<6x6x3xi1>
            %285 = arith.maxsi %c1909637028_i64, %in : i64
            %286 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 16 - 128)>(%c8, %c7, %rank, %rank)
            %287 = vector.broadcast %c1982931414_i64 : i64 to vector<6xi64>
            %288 = vector.multi_reduction <maxsi>, %276, %287 [1, 2] : vector<6x6x3xi64> to vector<6xi64>
            %289 = index.maxs %c5, %c4
            %290 = arith.floordivsi %c1519752392_i64, %c1982931414_i64 : i64
            %291 = math.round %0 : tensor<6x6x3xf32>
            %292 = vector.multi_reduction <xor>, %287, %287 [] : vector<6xi64> to vector<6xi64>
            %293 = memref.load %alloc_5[%c1, %c3, %c1] : memref<6x4x6xf32>
            %294 = arith.mulf %in_41, %cst_0 : f16
            %295 = memref.realloc %alloc_14 : memref<3xi32> to memref<6xi32>
            %296 = arith.subi %c130554928_i32, %c1049580416_i32 : i32
            %297 = arith.remui %false, %true : i1
            %298 = memref.realloc %alloc_14 : memref<3xi32> to memref<3xi32>
            %299 = math.tan %2 : tensor<4x3xf16>
            %300 = arith.andi %c-29224_i16, %c13561_i16 : i16
            %301 = vector.broadcast %c1982931414_i64 : i64 to vector<6x3xi64>
            %302 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %276, %287, %301 : vector<6x6x3xi64>, vector<6xi64> into vector<6x3xi64>
            %303 = arith.remf %in_41, %cst_0 : f16
            %304 = math.log %271 : tensor<3xf16>
            %305 = index.sub %c0, %289
            %cst_42 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_42 : f16
          }
        %collapsed_39 = tensor.collapse_shape %8 [[0, 1]] : tensor<4x3xi16> into tensor<12xi16>
        %272 = arith.ceildivsi %c130554928_i32, %c1296049304_i32 : i32
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %19 = scf.parallel (%arg2) = (%c15) to (%c5) step (%c4) init (%c130554928_i32) -> i32 {
      %267 = math.cttz %12 : tensor<4x3xi1>
      %268 = vector.splat %c1296049304_i32 : vector<4x3xi32>
      %269 = vector.broadcast %c9300_i16 : i16 to vector<15x3x3xi16>
      %270 = vector.broadcast %c9300_i16 : i16 to vector<3x3xi16>
      %dest_37, %accumulated_value_38 = vector.scan <xor>, %269, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<15x3x3xi16>, vector<3x3xi16>
      %271 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c13, %c3, %c12)
      %272 = arith.remsi %c130554928_i32, %c1296049304_i32 : i32
      %273 = arith.addf %cst_0, %cst : f16
      %274 = math.log1p %0 : tensor<6x6x3xf32>
      %275 = math.ipowi %9, %14 : tensor<4x3xi32>
      %276 = arith.muli %c1847384886_i64, %c1847384886_i64 : i64
      %277 = memref.alloca_scope  -> (memref<3xf32>) {
        %285 = arith.mulf %cst, %cst_0 : f16
        %286 = vector.broadcast %c1982931414_i64 : i64 to vector<4x3xi64>
        vector.print %286 : vector<4x3xi64>
        %287 = arith.addf %cst, %cst_0 : f16
        %288 = arith.divsi %c52229187_i32, %c1049580416_i32 : i32
        %289 = math.expm1 %0 : tensor<6x6x3xf32>
        %290 = vector.splat %c13 : vector<6x6x3xindex>
        %291 = arith.remsi %c1982931414_i64, %c1909637028_i64 : i64
        %292 = vector.broadcast %c13561_i16 : i16 to vector<i16>
        %293 = vector.transfer_write %292, %8[%c13, %c11] : vector<i16>, tensor<4x3xi16>
        %294 = index.divu %c5, %c8
        %295 = vector.insertelement %c9300_i16, %292[] : vector<i16>
        %296 = arith.shrsi %c130554928_i32, %c1049580416_i32 : i32
        %297 = affine.max affine_map<(d0) -> ((d0 * 2) mod 128, d0 + 1)>(%c7)
        %298 = math.cos %cst_1 : f32
        %299 = arith.remsi %c1049580416_i32, %c52229187_i32 : i32
        %300 = vector.broadcast %cst_1 : f32 to vector<4x3xf32>
        %301 = vector.fma %300, %300, %300 : vector<4x3xf32>
        %302 = arith.remsi %c13561_i16, %c9300_i16 : i16
        %303 = arith.addf %cst_0, %cst_0 : f16
        %304 = arith.mulf %cst, %cst : f16
        %305 = arith.addf %cst, %cst : f16
        %inserted_40 = tensor.insert %c1909637028_i64 into %18[] : tensor<i64>
        %306 = arith.xori %c130554928_i32, %c130554928_i32 : i32
        %307 = vector.broadcast %c0 : index to vector<4xindex>
        %308 = vector.broadcast %true : i1 to vector<4xi1>
        %309 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        vector.scatter %alloc_7[%c2, %c2, %c0] [%307], %308, %309 : memref<6x6x3xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %310 = math.floor %15 : tensor<4x3xf32>
        %311 = bufferization.clone %alloc_17 : memref<3x6x6xf32> to memref<3x6x6xf32>
        %alloc_41 = memref.alloc() : memref<4x3xi32>
        memref.tensor_store %9, %alloc_41 : memref<4x3xi32>
        %312 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %313 = vector.reduction <minf>, %312 : vector<6xf32> into f32
        %314 = math.floor %2 : tensor<4x3xf16>
        %315 = math.log1p %cst : f16
        %316 = arith.maxui %c-29224_i16, %c-29224_i16 : i16
        %317 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %318 = vector.multi_reduction <mul>, %301, %317 [1] : vector<4x3xf32> to vector<4xf32>
        %319 = arith.minf %cst_0, %cst_0 : f16
        %320 = math.atan2 %cst_1, %cst_1 : f32
        %alloc_42 = memref.alloc() : memref<3xf32>
        memref.alloca_scope.return %alloc_42 : memref<3xf32>
      }
      %278 = math.sqrt %2 : tensor<4x3xf16>
      %279 = vector.splat %c14 : vector<6x4x6xindex>
      %280 = math.log2 %2 : tensor<4x3xf16>
      %281 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      %282 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %281, %282, %cst_1 : vector<1xf32>, vector<1xf32> into f32
      %collapsed_39 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x3xi1> into tensor<12xi1>
      %284 = math.absf %4 : tensor<6x4x6xf32>
      %c0_i32 = arith.constant 0 : i32
      scf.reduce(%c0_i32)  : i32 {
      ^bb0(%arg3: i32, %arg4: i32):
        %285 = arith.maxui %false, %true : i1
        %286 = memref.load %alloc_12[%c1, %c1] : memref<4x3xf16>
        %287 = index.divs %c5, %c7
        %alloc_40 = memref.alloc() : memref<i64>
        memref.tensor_store %18, %alloc_40 : memref<i64>
        %288 = arith.addi %c130554928_i32, %c130554928_i32 : i32
        %289 = vector.create_mask %c0, %c11, %c2 : vector<6x6x3xi1>
        %290 = index.divu %c7, %c4
        %291 = arith.floordivsi %true, %false : i1
        %c1_i32 = arith.constant 1 : i32
        scf.reduce.return %c1_i32 : i32
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_10[%c9, %c14] : memref<4x3xi16>, vector<4xi16>
    affine.vector_store %20, %alloc_6[%c15, %c7] : memref<4x3xi16>, vector<4xi16>
    %21 = tensor.empty() : tensor<3xi1>
    %22 = tensor.empty() : tensor<i1>
    %23 = linalg.dot ins(%6, %21 : tensor<3xi1>, tensor<3xi1>) outs(%22 : tensor<i1>) -> tensor<i1>
    %24 = affine.max affine_map<(d0, d1) -> (d1)>(%c12, %c4)
    %25 = vector.splat %true : vector<4x3xi1>
    %26 = affine.apply affine_map<(d0) -> ((d0 - 16) * 16)>(%c7)
    %27 = scf.execute_region -> i16 {
      memref.alloca_scope  {
        %280 = math.round %4 : tensor<6x4x6xf32>
        %281 = index.divu %c4, %c0
        %282 = math.cos %4 : tensor<6x4x6xf32>
        %283 = vector.splat %c5 : vector<3xindex>
        %284 = index.maxu %c2, %c5
        %285 = math.tanh %cst : f16
        %286 = affine.load %alloc_3[%c15, %c13, %c11] : memref<6x4x6xi16>
        %287 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %288 = vector.matrix_multiply %287, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %289 = vector.flat_transpose %287 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %290 = bufferization.to_tensor %alloc_5 : memref<6x4x6xf32>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c15, %c12, %c13)
        %292 = arith.floordivsi %c1982931414_i64, %c1519752392_i64 : i64
        %293 = math.cos %cst_1 : f32
        %294 = math.ctlz %c-29224_i16 : i16
        %295 = index.maxu %c8, %c14
        %296 = arith.maxsi %true, %false : i1
        %297 = math.log2 %cst_0 : f16
        %298 = math.atan %cst : f16
        %299 = vector.broadcast %cst_1 : f32 to vector<6x4x6xf32>
        %300 = vector.fma %299, %299, %299 : vector<6x4x6xf32>
        %301 = index.sub %c0, %c11
        %from_elements_40 = tensor.from_elements %c52229187_i32, %c52229187_i32, %c1296049304_i32 : tensor<3xi32>
        memref.tensor_store %7, %alloc_10 : memref<4x3xi16>
        %302 = math.round %15 : tensor<4x3xf32>
        %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %287, %287, %c-29224_i16 : vector<4xi16>, vector<4xi16> into i16
        %304 = math.rsqrt %0 : tensor<6x6x3xf32>
        %from_elements_41 = tensor.from_elements %false, %false, %true : tensor<3xi1>
        %305 = arith.ceildivsi %c1519752392_i64, %c1519752392_i64 : i64
        %306 = math.absf %4 : tensor<6x4x6xf32>
        %307 = arith.cmpi ne, %c-29224_i16, %c13561_i16 : i16
        %308 = arith.remui %c1296049304_i32, %c1049580416_i32 : i32
        %309 = arith.cmpi ugt, %c1519752392_i64, %c1909637028_i64 : i64
      }
      %267 = arith.shrsi %c9300_i16, %c9300_i16 : i16
      %268 = index.maxs %c11, %c14
      %269 = arith.remf %cst_1, %cst_1 : f32
      %cast_37 = tensor.cast %6 : tensor<3xi1> to tensor<?xi1>
      %cast_38 = tensor.cast %4 : tensor<6x4x6xf32> to tensor<?x?x?xf32>
      %270 = arith.cmpf ule, %cst, %cst : f16
      %271 = arith.mulf %cst, %cst : f16
      %272 = math.atan %4 : tensor<6x4x6xf32>
      %273 = scf.while (%arg2 = %cst_0) : (f16) -> f16 {
        %280 = arith.cmpf ult, %arg2, %cst_0 : f16
        %281 = arith.divui %c1519752392_i64, %c1847384886_i64 : i64
        memref.assume_alignment %alloc_15, 2 : memref<3xf16>
        %282 = math.expm1 %0 : tensor<6x6x3xf32>
        %283 = math.atan %2 : tensor<4x3xf16>
        %284 = index.maxs %24, %24
        %285 = math.exp %4 : tensor<6x4x6xf32>
        %286 = arith.muli %c1847384886_i64, %c1982931414_i64 : i64
        scf.condition(%true) %arg2 : f16
      } do {
      ^bb0(%arg2: f16):
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_40 = arith.constant 0 : i64
        %280 = vector.transfer_read %alloc_8[%26, %c13], %c0_i64_40 : memref<4x3xi64>, vector<i64>
        %281 = vector.transpose %20, [0] : vector<4xi16> to vector<4xi16>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %20, %20, %c9300_i16 : vector<4xi16>, vector<4xi16> into i16
        memref.tensor_store %11, %alloc : memref<6x4x6xi64>
        %283 = arith.remf %arg2, %arg2 : f16
        %284 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d1)>(%24, %c9, %c10, %c5)
        %285 = arith.maxsi %c1982931414_i64, %c1847384886_i64 : i64
        %286 = arith.minf %cst, %cst_0 : f16
        %287 = tensor.empty() : tensor<6x4x6xi64>
        %288 = vector.bitcast %20 : vector<4xi16> to vector<4xi16>
        %289 = arith.shrui %c130554928_i32, %c1049580416_i32 : i32
        %from_elements_41 = tensor.from_elements %c1296049304_i32, %c1049580416_i32, %c1296049304_i32 : tensor<3xi32>
        %290 = math.rsqrt %0 : tensor<6x6x3xf32>
        %alloc_42 = memref.alloc() : memref<6x4x6xi1>
        %alloc_43 = memref.alloc() : memref<6x4x6xf32>
        %291 = vector.flat_transpose %288 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        scf.yield %cst_0 : f16
      }
      %274 = arith.shrsi %c52229187_i32, %c130554928_i32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_39 = arith.constant 0 : i32
      %275 = vector.transfer_read %5[%268], %c0_i32_39 : tensor<3xi32>, vector<i32>
      %276 = math.roundeven %15 : tensor<4x3xf32>
      %277 = bufferization.to_memref %7 : memref<4x3xi16>
      %278 = math.round %cst_1 : f32
      %279 = tensor.empty() : tensor<3xf16>
      scf.yield %c13561_i16 : i16
    }
    %28 = vector.splat %c7 : vector<3xindex>
    %29 = index.maxu %c12, %c9
    %30 = bufferization.clone %alloc_2 : memref<6x6x3xi32> to memref<6x6x3xi32>
    %31 = arith.cmpf oge, %cst, %cst_0 : f16
    %32 = math.powf %cst_1, %cst_1 : f32
    %33 = math.atan2 %0, %0 : tensor<6x6x3xf32>
    %34 = affine.apply affine_map<(d0, d1) -> (d1 + 64)>(%c14, %c3)
    %cast = tensor.cast %13 : tensor<3xi64> to tensor<?xi64>
    %35 = vector.broadcast %c5 : index to vector<4xindex>
    %36 = vector.broadcast %false : i1 to vector<4xi1>
    %37 = vector.broadcast %c1847384886_i64 : i64 to vector<4xi64>
    vector.scatter %alloc[%c5, %c1, %c0] [%35], %36, %37 : memref<6x4x6xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %38 = vector.create_mask %c9, %c4 : vector<4x3xi1>
    %39 = index.divs %c14, %c7
    %cast_18 = tensor.cast %0 : tensor<6x6x3xf32> to tensor<?x?x?xf32>
    %40 = index.ceildivs %c11, %c5
    %41 = affine.max affine_map<(d0) -> ((d0 floordiv 128) floordiv 32, (d0 floordiv 128) floordiv 32, -((d0 floordiv 128) floordiv 32), ((d0 floordiv 128) floordiv 32) mod 128)>(%c6)
    %42 = arith.andi %c1296049304_i32, %c52229187_i32 : i32
    %43 = math.expm1 %2 : tensor<4x3xf16>
    %44 = math.round %0 : tensor<6x6x3xf32>
    %alloca = memref.alloca() : memref<6x6x3xi64>
    %from_elements = tensor.from_elements %c52229187_i32, %c130554928_i32, %c52229187_i32 : tensor<3xi32>
    %cast_19 = tensor.cast %6 : tensor<3xi1> to tensor<?xi1>
    %45 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<6x4x6xi64>) {
    ^bb0(%out: i64):
      %false_37 = index.bool.constant false
      %267 = arith.remf %cst_0, %cst : f16
      %268 = vector.insertelement %c9300_i16, %20[%29 : index] : vector<4xi16>
      %269 = math.cttz %reduced : tensor<i64>
      %270 = scf.execute_region -> index {
        %295 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %295, %alloc_13[%26] : vector<f16>, memref<3xf16>
        %296 = arith.remf %cst, %cst_0 : f16
        %297 = index.sizeof
        %298 = math.round %4 : tensor<6x4x6xf32>
        %299 = vector.broadcast %c13561_i16 : i16 to vector<15xi16>
        %300 = vector.broadcast %false : i1 to vector<15xi1>
        %301 = vector.maskedload %alloc_6[%c0, %c2], %300, %299 : memref<4x3xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %302 = arith.shrsi %c-29224_i16, %c9300_i16 : i16
        %303 = vector.broadcast %27 : i16 to vector<4xi16>
        vector.transfer_write %303, %alloc_10[%c15, %39] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi16>, memref<4x3xi16>
        %304 = arith.negf %cst : f16
        %305 = memref.realloc %alloc_13 : memref<3xf16> to memref<4xf16>
        %306 = math.tanh %15 : tensor<4x3xf32>
        %307 = math.cttz %13 : tensor<3xi64>
        %308 = vector.load %alloc_15[%c0] : memref<3xf16>, vector<3xf16>
        %309 = math.atan %15 : tensor<4x3xf32>
        %310 = math.cttz %22 : tensor<i1>
        %cast_41 = tensor.cast %5 : tensor<3xi32> to tensor<?xi32>
        %311 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %301, %301, %27 : vector<15xi16>, vector<15xi16> into i16
        scf.yield %41 : index
      }
      %271 = math.cttz %17 : tensor<3xi64>
      %cast_38 = tensor.cast %22 : tensor<i1> to tensor<i1>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %272 = vector.transfer_read %alloc_10[%c12, %24], %c0_i16 : memref<4x3xi16>, vector<i16>
      %273 = math.roundeven %4 : tensor<6x4x6xf32>
      %274 = arith.subi %c1847384886_i64, %out : i64
      memref.assume_alignment %alloc_4, 16 : memref<6x6x3xi16>
      %275 = vector.broadcast %cst_0 : f16 to vector<f16>
      vector.transfer_write %275, %alloc_12[%c14, %24] : vector<f16>, memref<4x3xf16>
      %276 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 64 >= 0)>(%c0, %c6, %c0, %c9) -> memref<3xi64> {
        %295 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %296 = vector.insertelement %cst, %275[] : vector<f16>
        %297 = math.log1p %2 : tensor<4x3xf16>
        %298 = vector.broadcast %c52229187_i32 : i32 to vector<6x4x6xi32>
        %299 = vector.broadcast %true : i1 to vector<6x4x6xi1>
        %300 = vector.gather %alloc_2[%34, %c4, %c1] [%298], %299, %298 : memref<6x6x3xi32>, vector<6x4x6xi32>, vector<6x4x6xi1>, vector<6x4x6xi32> into vector<6x4x6xi32>
        %301 = arith.cmpf uge, %cst_0, %cst : f16
        vector.print %300 : vector<6x4x6xi32>
        %302 = arith.floordivsi %c130554928_i32, %c1296049304_i32 : i32
        %303 = affine.apply affine_map<(d0) -> ((-d0 + 1) * 128)>(%c6)
        %alloc_41 = memref.alloc() : memref<3xi64>
        affine.yield %alloc_41 : memref<3xi64>
      } else {
        %295 = vector.broadcast %false : i1 to vector<4xi1>
        %dest_41, %accumulated_value_42 = vector.scan <minui>, %38, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<4x3xi1>, vector<4xi1>
        %296 = arith.remsi %c52229187_i32, %c52229187_i32 : i32
        %297 = vector.insertelement %cst_0, %275[] : vector<f16>
        %298 = math.log1p %4 : tensor<6x4x6xf32>
        %299 = tensor.empty() : tensor<6x6x3xi1>
        %300 = memref.load %alloc_7[%c0, %c1, %c2] : memref<6x6x3xf32>
        %301 = arith.remui %c-29224_i16, %c9300_i16 : i16
        vector.print %275 : vector<f16>
        %alloc_43 = memref.alloc() : memref<3xi64>
        affine.yield %alloc_43 : memref<3xi64>
      }
      memref.alloca_scope  {
        %295 = math.round %cst : f16
        %296 = arith.andi %c1909637028_i64, %out : i64
        %297 = math.log10 %15 : tensor<4x3xf32>
        %298 = index.mul %c6, %34
        %299 = arith.minsi %c1049580416_i32, %c52229187_i32 : i32
        %300 = math.exp %0 : tensor<6x6x3xf32>
        %301 = arith.divui %c1909637028_i64, %c1847384886_i64 : i64
        %302 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %303 = arith.andi %c1982931414_i64, %c1519752392_i64 : i64
        %304 = vector.create_mask %c4 : vector<3xi1>
        %305 = math.round %2 : tensor<4x3xf16>
        %306 = arith.mulf %cst_1, %cst_1 : f32
        %307 = index.ceildivs %c14, %c6
        %308 = arith.minf %cst_1, %cst_1 : f32
        %309 = memref.load %alloc_17[%c1, %c3, %c0] : memref<3x6x6xf32>
        %310 = arith.subi %c1519752392_i64, %c1847384886_i64 : i64
        %311 = arith.ceildivsi %c1296049304_i32, %c52229187_i32 : i32
        %312 = arith.minsi %c1909637028_i64, %c1982931414_i64 : i64
        memref.assume_alignment %alloc_8, 4 : memref<4x3xi64>
        %313 = arith.addi %c1519752392_i64, %out : i64
        %314 = math.floor %0 : tensor<6x6x3xf32>
        memref.tensor_store %0, %alloc_7 : memref<6x6x3xf32>
        %315 = arith.addi %c1982931414_i64, %c1519752392_i64 : i64
        %316 = vector.load %alloc_2[%c2, %c3, %c0] : memref<6x6x3xi32>, vector<6x6x3xi32>
        %317 = vector.broadcast %c1519752392_i64 : i64 to vector<4x3xi64>
        %318 = memref.load %30[%c1, %c3, %c2] : memref<6x6x3xi32>
        %319 = arith.maxsi %true, %true : i1
        %320 = arith.minf %cst, %cst_0 : f16
        memref.tensor_store %8, %alloc_10 : memref<4x3xi16>
        %inserted_41 = tensor.insert %false into %6[%c0] : tensor<3xi1>
        %321 = index.divs %c2, %c14
        %322 = memref.load %alloc_13[%c2] : memref<3xf16>
      }
      %277 = vector.insertelement %cst_0, %275[] : vector<f16>
      %278 = arith.cmpf une, %cst_1, %cst_1 : f32
      %279 = math.atan %2 : tensor<4x3xf16>
      %280 = arith.mulf %cst_1, %cst_1 : f32
      %281 = math.cos %4 : tensor<6x4x6xf32>
      %282 = arith.xori %false, %true : i1
      %283 = arith.remf %cst_1, %cst_1 : f32
      %284 = arith.mulf %cst, %cst : f16
      %285 = arith.ori %27, %c1_i16 : i16
      %286 = math.tanh %cst_0 : f16
      %287 = memref.load %alloc_17[%c2, %c5, %c3] : memref<3x6x6xf32>
      %288 = arith.remui %c13561_i16, %c13561_i16 : i16
      %289 = vector.broadcast %false : i1 to vector<3xi1>
      %dest_39, %accumulated_value_40 = vector.scan <minsi>, %38, %289 {inclusive = true, reduction_dim = 0 : i64} : vector<4x3xi1>, vector<3xi1>
      %290 = arith.addi %c1296049304_i32, %c1049580416_i32 : i32
      %291 = memref.alloca_scope  -> (i32) {
        %295 = index.maxs %270, %c3
        %296 = index.divs %270, %c10
        %297 = arith.cmpf ueq, %cst, %cst_0 : f16
        %298 = index.sub %34, %270
        %299 = arith.remf %cst_1, %cst_1 : f32
        %300 = math.round %15 : tensor<4x3xf32>
        %301 = math.log1p %4 : tensor<6x4x6xf32>
        %302 = arith.subi %false_37, %false : i1
        %c1_i32 = arith.constant 1 : i32
        %303 = vector.transfer_read %30[%c1, %c14, %c0], %c1_i32 : memref<6x6x3xi32>, vector<i32>
        %304 = math.tanh %4 : tensor<6x4x6xf32>
        %305 = memref.load %alloc_7[%c3, %c3, %c2] : memref<6x6x3xf32>
        %306 = index.divs %40, %c11
        %307 = arith.subi %c1909637028_i64, %c1519752392_i64 : i64
        %true_41 = index.bool.constant true
        %308 = arith.minf %cst_0, %cst : f16
        %cast_42 = tensor.cast %12 : tensor<4x3xi1> to tensor<?x?xi1>
        %309 = math.tanh %0 : tensor<6x6x3xf32>
        %310 = arith.divf %cst_0, %cst : f16
        %311 = memref.load %alloc_17[%c1, %c2, %c3] : memref<3x6x6xf32>
        affine.store %cst, %alloc_12[%c11, %c4] : memref<4x3xf16>
        %312 = vector.splat %27 : vector<6x6x3xi16>
        %313 = tensor.empty(%26, %306) : tensor<?x?xf32>
        %314 = vector.bitcast %20 : vector<4xi16> to vector<4xi16>
        %315 = math.expm1 %cst_0 : f16
        %316 = affine.apply affine_map<(d0, d1) -> (d1 + 64)>(%295, %c2)
        %317 = arith.remui %out, %c1847384886_i64 : i64
        %from_elements_43 = tensor.from_elements %cst, %cst_0, %cst : tensor<3xf16>
        %318 = arith.addf %cst_0, %cst_0 : f16
        %319 = vector.insert %c9300_i16, %20 [1] : i16 into vector<4xi16>
        %320 = math.ipowi %true_41, %true_41 : i1
        %321 = tensor.empty() : tensor<4x3xi1>
        %322 = bufferization.to_memref %8 : memref<4x3xi16>
        memref.alloca_scope.return %c1_i32 : i32
      }
      %292 = index.mul %c8, %c6
      %293 = arith.andi %false_37, %true : i1
      %294 = index.sub %c0, %34
      linalg.yield %out : i64
    } -> tensor<6x4x6xi64>
    %46 = arith.cmpf ueq, %cst_0, %cst : f16
    %47 = affine.max affine_map<(d0, d1) -> (d1 + 16, d1 + 4)>(%c11, %29)
    %48 = arith.cmpf une, %cst_1, %cst_1 : f32
    memref.alloca_scope  {
      %267 = vector.broadcast %c130554928_i32 : i32 to vector<4xi32>
      %268 = vector.transfer_write %267, %14[%24, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<4x3xi32>
      %269 = math.tanh %cst_0 : f16
      %270 = vector.create_mask %c0, %c3 : vector<4x3xi1>
      %271 = affine.apply affine_map<(d0, d1) -> (d0)>(%41, %c10)
      %272 = arith.floordivsi %false, %false : i1
      %273 = tensor.empty() : tensor<i64>
      %mapped_37 = linalg.map ins(%reduced, %18, %18 : tensor<i64>, tensor<i64>, tensor<i64>) outs(%273 : tensor<i64>)
        (%in: i64, %in_39: i64, %in_40: i64) {
          %alloc_41 = memref.alloc() : memref<4x3xf16>
          %296 = math.floor %cst_0 : f16
          %alloc_42 = memref.alloc() : memref<4x3xi1>
          memref.tensor_store %10, %alloc_42 : memref<4x3xi1>
          %297 = arith.cmpf uge, %cst_1, %cst_1 : f32
          %298 = arith.remf %cst_1, %cst_1 : f32
          %299 = vector.splat %40 : vector<4x3xindex>
          %300 = arith.addf %cst_1, %cst_1 : f32
          %301 = bufferization.to_tensor %alloc_11 : memref<6x6x3xi32>
          %302 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%c12, %c10, %c5)
          %303 = arith.maxsi %c1847384886_i64, %c1519752392_i64 : i64
          %304 = vector.broadcast %true : i1 to vector<3xi1>
          %305 = vector.insert %304, %270 [3] : vector<3xi1> into vector<4x3xi1>
          %collapsed_43 = tensor.collapse_shape %cast_18 [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
          %306 = vector.shuffle %304, %304 [0, 2, 4] : vector<3xi1>, vector<3xi1>
          %307 = arith.cmpi ule, %c9300_i16, %c13561_i16 : i16
          %308 = vector.broadcast %false : i1 to vector<3x3xi1>
          %309 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %270, %38, %308 : vector<4x3xi1>, vector<4x3xi1> into vector<3x3xi1>
          %310 = affine.apply affine_map<(d0, d1) -> (d0)>(%c1, %c0)
          %311 = math.absf %0 : tensor<6x6x3xf32>
          %312 = arith.mulf %cst_0, %cst : f16
          %313 = index.divu %c10, %c10
          %314 = math.round %cst_0 : f16
          %315 = math.floor %cst_0 : f16
          %316 = vector.splat %c4 : vector<6x4x6xindex>
          %317 = math.log10 %2 : tensor<4x3xf16>
          %318 = arith.shli %c1049580416_i32, %c1049580416_i32 : i32
          %319 = math.round %0 : tensor<6x6x3xf32>
          %320 = math.ctpop %21 : tensor<3xi1>
          %321 = affine.min affine_map<(d0, d1, d2, d3) -> (0)>(%c10, %c10, %c12, %c14)
          %322 = vector.insertelement %c1049580416_i32, %267[%c15 : index] : vector<4xi32>
          memref.tensor_store %8, %alloc_10 : memref<4x3xi16>
          %true_44 = index.bool.constant true
          %323 = math.exp2 %0 : tensor<6x6x3xf32>
          %324 = math.round %cst : f16
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %274 = math.round %0 : tensor<6x6x3xf32>
      %275 = affine.load %alloc_10[%c8, %c14] : memref<4x3xi16>
      %276 = math.floor %2 : tensor<4x3xf16>
      %277 = math.ctlz %18 : tensor<i64>
      scf.execute_region {
        %296 = arith.divf %cst_1, %cst_1 : f32
        %297 = math.cttz %3 : tensor<3xi1>
        %298 = arith.remsi %27, %c-29224_i16 : i16
        %299 = arith.shli %c130554928_i32, %c52229187_i32 : i32
        %300 = math.exp %2 : tensor<4x3xf16>
        %301 = math.cos %0 : tensor<6x6x3xf32>
        %302 = arith.floordivsi %c13561_i16, %27 : i16
        %303 = math.round %15 : tensor<4x3xf32>
        %304 = arith.remf %cst, %cst : f16
        %305 = arith.minf %cst_0, %cst_0 : f16
        %306 = vector.insertelement %c1049580416_i32, %267[%39 : index] : vector<4xi32>
        %307 = vector.bitcast %38 : vector<4x3xi1> to vector<4x3xi1>
        %308 = arith.minui %c1982931414_i64, %c1909637028_i64 : i64
        %c1_i32 = arith.constant 1 : i32
        %309 = vector.transfer_read %alloc_16[%c2], %c1_i32 : memref<3xi32>, vector<i32>
        %310 = math.atan %2 : tensor<4x3xf16>
        %311 = bufferization.to_memref %4 : memref<6x4x6xf32>
        scf.yield
      }
      %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d2)>(%c1, %c8, %34, %c15)
      %279 = vector.load %alloc_5[%c0, %c0, %c1] : memref<6x4x6xf32>, vector<3xf32>
      %280 = math.sqrt %0 : tensor<6x6x3xf32>
      %281 = math.cos %cst : f16
      %282 = math.atan2 %cst_1, %cst_1 : f32
      %283 = arith.shrui %c1519752392_i64, %c1519752392_i64 : i64
      %284 = math.expm1 %15 : tensor<4x3xf32>
      vector.print %279 : vector<3xf32>
      %285 = index.divu %c11, %40
      %286 = arith.addf %cst_1, %cst_1 : f32
      %287 = tensor.empty() : tensor<6x6x3xf16>
      %288 = math.floor %287 : tensor<6x6x3xf16>
      memref.copy %alloc_15, %alloc_13 : memref<3xf16> to memref<3xf16>
      %289 = math.tan %4 : tensor<6x4x6xf32>
      %290 = vector.broadcast %c-29224_i16 : i16 to vector<i16>
      vector.transfer_write %290, %alloc_10[%c14, %271] : vector<i16>, memref<4x3xi16>
      %291 = math.atan2 %2, %2 : tensor<4x3xf16>
      %inserted_38 = tensor.insert %cst into %2[%c3, %c0] : tensor<4x3xf16>
      %292 = arith.minf %cst_0, %cst_0 : f16
      %293 = arith.shrui %275, %c9300_i16 : i16
      %294 = affine.max affine_map<(d0, d1, d2) -> (d2, -d2)>(%40, %c2, %278)
      %295 = math.cos %0 : tensor<6x6x3xf32>
    }
    %49 = math.log %15 : tensor<4x3xf32>
    affine.store %c13561_i16, %alloc_6[%c12, %c0] : memref<4x3xi16>
    %50 = math.round %cst : f16
    %51 = math.rsqrt %cst_1 : f32
    %52 = math.powf %15, %15 : tensor<4x3xf32>
    %53 = arith.xori %c-29224_i16, %27 : i16
    %54 = affine.for %arg2 = 0 to 123 iter_args(%arg3 = %cst_0) -> (f16) {
      affine.yield %cst : f16
    }
    %55 = vector.insert %c-29224_i16, %20 [2] : i16 into vector<4xi16>
    %56 = index.divs %c7, %c12
    %57 = arith.remui %c1982931414_i64, %c1847384886_i64 : i64
    scf.execute_region {
      %267 = math.ipowi %10, %12 : tensor<4x3xi1>
      %268 = math.exp2 %0 : tensor<6x6x3xf32>
      %269 = memref.alloca_scope  -> (i16) {
        %282 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %283 = math.ctlz %false : i1
        %284 = arith.shli %false, %false : i1
        %285 = arith.remf %cst_1, %cst_1 : f32
        %286 = math.round %2 : tensor<4x3xf16>
        %287 = index.sizeof
        %288 = index.divu %c5, %c3
        %289 = math.atan2 %2, %2 : tensor<4x3xf16>
        %290 = math.floor %4 : tensor<6x4x6xf32>
        %291 = vector.broadcast %cst : f16 to vector<15xf16>
        vector.transfer_write %291, %alloc_12[%41, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf16>, memref<4x3xf16>
        %292 = math.expm1 %2 : tensor<4x3xf16>
        %293 = arith.divui %c1909637028_i64, %c1519752392_i64 : i64
        %294 = arith.mulf %cst, %cst_0 : f16
        %rank = tensor.rank %13 : tensor<3xi64>
        %295 = index.casts %true : i1 to index
        %296 = index.ceildivu %24, %24
        %from_elements_37 = tensor.from_elements %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0 : tensor<4x3xf16>
        %297 = affine.load %alloc_4[%c2, %c11, %c9] : memref<6x6x3xi16>
        %298 = math.log10 %4 : tensor<6x4x6xf32>
        %299 = math.round %0 : tensor<6x6x3xf32>
        %300 = memref.atomic_rmw assign %cst_1, %alloc_17[%c1, %c5, %c1] : (f32, memref<3x6x6xf32>) -> f32
        %301 = math.log10 %4 : tensor<6x4x6xf32>
        %302 = arith.minui %c1847384886_i64, %c1909637028_i64 : i64
        %303 = affine.min affine_map<(d0) -> (d0 * -64 + 1, 0, 0, 64)>(%c15)
        %304 = vector.reduction <add>, %291 : vector<15xf16> into f16
        %305 = arith.divui %false, %true : i1
        %306 = math.floor %cst : f16
        %307 = math.round %15 : tensor<4x3xf32>
        %308 = arith.cmpf ogt, %cst_1, %cst_1 : f32
        %309 = arith.minf %cst_1, %cst_1 : f32
        %310 = vector.broadcast %c9300_i16 : i16 to vector<3xi16>
        %311 = bufferization.to_memref %2 : memref<4x3xf16>
        memref.alloca_scope.return %297 : i16
      }
      %270 = math.floor %4 : tensor<6x4x6xf32>
      %271 = affine.apply affine_map<(d0, d1) -> (0)>(%c9, %c3)
      %272 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 64 >= 0)>(%c2, %c7, %c10, %c6) -> f16 {
        %282 = vector.broadcast %c1296049304_i32 : i32 to vector<15xi32>
        %283 = vector.broadcast %false : i1 to vector<15xi1>
        %284 = vector.maskedload %alloc_11[%c0, %c0, %c0], %283, %282 : memref<6x6x3xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        memref.store %c130554928_i32, %30[%c5, %c3, %c1] : memref<6x6x3xi32>
        %285 = arith.shli %269, %c9300_i16 : i16
        %286 = math.cos %0 : tensor<6x6x3xf32>
        %alloc_37 = memref.alloc() : memref<3xi1>
        memref.tensor_store %21, %alloc_37 : memref<3xi1>
        %inserted_38 = tensor.insert %true into %12[%c3, %c1] : tensor<4x3xi1>
        %287 = arith.floordivsi %c1847384886_i64, %c1909637028_i64 : i64
        %288 = index.sizeof
        affine.yield %cst_0 : f16
      } else {
        %282 = index.sizeof
        %283 = vector.broadcast %c13561_i16 : i16 to vector<4x4xi16>
        %284 = vector.outerproduct %20, %20, %283 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
        %285 = math.round %cst_1 : f32
        %286 = vector.broadcast %true : i1 to vector<4xi1>
        %dest_37, %accumulated_value_38 = vector.scan <minsi>, %38, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<4x3xi1>, vector<4xi1>
        %287 = arith.addf %cst_0, %cst : f16
        %288 = vector.shuffle %38, %38 [0, 3, 5, 6, 7] : vector<4x3xi1>, vector<4x3xi1>
        %collapsed_39 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x4x6xi16> into tensor<24x6xi16>
        %c0_i16 = arith.constant 0 : i16
        %289 = vector.transfer_read %alloc_4[%c8, %40, %26], %c0_i16 : memref<6x6x3xi16>, vector<6xi16>
        affine.yield %cst_0 : f16
      }
      %273 = arith.minf %cst_1, %cst_1 : f32
      %274 = math.tanh %cst_0 : f16
      %275 = math.ipowi %21, %3 : tensor<3xi1>
      %276 = index.floordivs %271, %c6
      %277 = arith.ori %c1909637028_i64, %c1519752392_i64 : i64
      %278 = vector.load %30[%c3, %c3, %c0] : memref<6x6x3xi32>, vector<4x3xi32>
      %279 = index.divu %c9, %40
      %280 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      memref.assume_alignment %alloc_11, 2 : memref<6x6x3xi32>
      %281 = vector.insert %c13561_i16, %20 [1] : i16 into vector<4xi16>
      scf.yield
    }
    %58 = math.absf %4 : tensor<6x4x6xf32>
    %59 = math.expm1 %cst_1 : f32
    %60 = tensor.empty() : tensor<3xi64>
    %mapped = linalg.map ins(%17, %13 : tensor<3xi64>, tensor<3xi64>) outs(%60 : tensor<3xi64>)
      (%in: i64, %in_37: i64) {
        %267 = vector.insert %c9300_i16, %20 [0] : i16 into vector<4xi16>
        %268 = tensor.empty() : tensor<3xf32>
        %alloc_38 = memref.alloc() : memref<3x6xf32>
        %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%268, %alloc_38 : tensor<3xf32>, memref<3x6xf32>) outs(%0 : tensor<6x6x3xf32>) {
        ^bb0(%in_42: f32, %in_43: f32, %out: f32):
          %c0_i64_44 = arith.constant 0 : i64
          %295 = vector.transfer_read %11[%40, %41, %26], %c0_i64_44 : tensor<6x4x6xi64>, vector<i64>
          %alloc_45 = memref.alloc() : memref<4x3xi32>
          memref.tensor_store %14, %alloc_45 : memref<4x3xi32>
          %296 = arith.remsi %c1296049304_i32, %c130554928_i32 : i32
          %297 = vector.splat %c2 : vector<3xindex>
          %298 = math.exp %0 : tensor<6x6x3xf32>
          %299 = index.casts %47 : index to i32
          %300 = index.ceildivu %c7, %34
          %301 = arith.maxui %false, %true : i1
          %302 = arith.cmpf false, %cst, %cst_0 : f16
          %303 = arith.minui %c1519752392_i64, %c1519752392_i64 : i64
          %304 = arith.floordivsi %c1847384886_i64, %in_37 : i64
          %305 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          %306 = math.tanh %out : f32
          %alloc_46 = memref.alloc() : memref<3xi1>
          memref.tensor_store %6, %alloc_46 : memref<3xi1>
          %307 = arith.divf %cst_0, %cst : f16
          %308 = index.sub %39, %c12
          %309 = vector.broadcast %c130554928_i32 : i32 to vector<4xi32>
          %310 = vector.broadcast %true : i1 to vector<4xi1>
          %311 = vector.maskedload %alloc_2[%c4, %c5, %c2], %310, %309 : memref<6x6x3xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
          %312 = math.round %cst_1 : f32
          %cast_47 = tensor.cast %22 : tensor<i1> to tensor<i1>
          %313 = memref.load %alloc_4[%c5, %c5, %c1] : memref<6x6x3xi16>
          %314 = math.log10 %4 : tensor<6x4x6xf32>
          %315 = vector.create_mask %c4, %c9, %34 : vector<6x4x6xi1>
          %316 = vector.broadcast %cst_1 : f32 to vector<6x4x6xf32>
          %317 = vector.fma %316, %316, %316 : vector<6x4x6xf32>
          %318 = math.tanh %0 : tensor<6x6x3xf32>
          %319 = index.ceildivs %300, %c11
          %320 = math.expm1 %15 : tensor<4x3xf32>
          %321 = math.atan %0 : tensor<6x6x3xf32>
          %322 = arith.minui %c1909637028_i64, %c1847384886_i64 : i64
          %323 = vector.broadcast %cst : f16 to vector<f16>
          vector.transfer_write %323, %alloc_15[%39] : vector<f16>, memref<3xf16>
          %324 = math.cos %4 : tensor<6x4x6xf32>
          %325 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          %326 = arith.andi %27, %c9300_i16 : i16
          linalg.yield %out : f32
        } -> tensor<6x6x3xf32>
        affine.store %c-29224_i16, %alloc_3[%c14, %c15, %c0] : memref<6x4x6xi16>
        %270 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %collapsed_39 = tensor.collapse_shape %14 [[0, 1]] : tensor<4x3xi32> into tensor<12xi32>
        %271 = math.cos %0 : tensor<6x6x3xf32>
        %from_elements_40 = tensor.from_elements %c-29224_i16, %c9300_i16, %c-29224_i16, %c9300_i16, %c9300_i16, %27, %c13561_i16, %27, %c13561_i16, %c9300_i16, %c-29224_i16, %c9300_i16, %27, %27, %27, %27, %c13561_i16, %27, %c-29224_i16, %c9300_i16, %c9300_i16, %c9300_i16, %c13561_i16, %c-29224_i16, %27, %27, %c13561_i16, %c9300_i16, %c9300_i16, %27, %27, %c13561_i16, %27, %27, %c9300_i16, %27, %27, %c-29224_i16, %c-29224_i16, %27, %27, %c9300_i16, %c-29224_i16, %c13561_i16, %27, %c13561_i16, %27, %c-29224_i16, %27, %27, %c13561_i16, %c9300_i16, %c13561_i16, %c9300_i16, %27, %c-29224_i16, %c-29224_i16, %27, %c-29224_i16, %c-29224_i16, %c13561_i16, %27, %c-29224_i16, %27, %c-29224_i16, %c13561_i16, %c13561_i16, %27, %c9300_i16, %c-29224_i16, %27, %c-29224_i16, %c-29224_i16, %c13561_i16, %c-29224_i16, %c13561_i16, %27, %c9300_i16, %c13561_i16, %27, %c13561_i16, %27, %c-29224_i16, %c13561_i16, %27, %c-29224_i16, %c9300_i16, %c9300_i16, %c-29224_i16, %27, %c13561_i16, %c9300_i16, %c13561_i16, %c13561_i16, %27, %c-29224_i16, %c-29224_i16, %27, %c13561_i16, %27, %c9300_i16, %c-29224_i16, %c13561_i16, %c-29224_i16, %c9300_i16, %c13561_i16, %c-29224_i16, %c13561_i16 : tensor<6x6x3xi16>
        %272 = arith.remf %cst_0, %cst_0 : f16
        %273 = math.sqrt %cst : f16
        %274 = arith.remui %true, %true : i1
        %275 = index.sub %c5, %c11
        %276 = vector.insertelement %c-29224_i16, %20[%29 : index] : vector<4xi16>
        %277 = scf.while (%arg2 = %false) : (i1) -> i1 {
          %295 = vector.insertelement %c13561_i16, %20[%24 : index] : vector<4xi16>
          %296 = arith.ceildivsi %c130554928_i32, %c1296049304_i32 : i32
          %297 = math.exp %2 : tensor<4x3xf16>
          %298 = math.floor %15 : tensor<4x3xf32>
          %299 = arith.remsi %c1982931414_i64, %in : i64
          %300 = vector.reduction <xor>, %270 : vector<4xi16> into i16
          %301 = index.floordivs %c6, %c4
          %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %20, %20, %c13561_i16 : vector<4xi16>, vector<4xi16> into i16
          scf.condition(%false) %arg2 : i1
        } do {
        ^bb0(%arg2: i1):
          %295 = math.absf %2 : tensor<4x3xf16>
          %296 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %296, %296, %c13561_i16 : vector<4xi16>, vector<4xi16> into i16
          %298 = index.ceildivs %24, %c6
          %299 = arith.negf %cst_0 : f16
          %cast_42 = tensor.cast %12 : tensor<4x3xi1> to tensor<?x?xi1>
          %300 = vector.splat %34 : vector<4x3xindex>
          %301 = vector.broadcast %false : i1 to vector<3x3xi1>
          %302 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %38, %38, %301 : vector<4x3xi1>, vector<4x3xi1> into vector<3x3xi1>
          %303 = math.absf %2 : tensor<4x3xf16>
          %304 = memref.load %alloc_5[%c4, %c2, %c2] : memref<6x4x6xf32>
          %305 = math.atan2 %15, %15 : tensor<4x3xf32>
          %306 = arith.maxsi %c52229187_i32, %c130554928_i32 : i32
          %307 = vector.multi_reduction <maxui>, %270, %270 [] : vector<4xi16> to vector<4xi16>
          %308 = index.ceildivs %c8, %34
          %309 = math.ipowi %c1847384886_i64, %in : i64
          %310 = arith.cmpf uge, %cst_0, %cst : f16
          scf.yield %arg2 : i1
        }
        %278 = tensor.empty(%c8) : tensor<?xf16>
        %279 = arith.mulf %cst_0, %cst_0 : f16
        %280 = math.cttz %9 : tensor<4x3xi32>
        %281 = math.exp2 %0 : tensor<6x6x3xf32>
        %282 = math.powf %4, %4 : tensor<6x4x6xf32>
        %283 = index.maxu %c11, %c14
        %284 = arith.maxui %c1049580416_i32, %c1049580416_i32 : i32
        %285 = math.cos %cst_1 : f32
        %286 = memref.load %alloc_7[%c3, %c5, %c2] : memref<6x6x3xf32>
        %287 = arith.remf %cst_1, %cst_1 : f32
        %288 = index.maxs %c6, %40
        %289 = arith.remsi %27, %c9300_i16 : i16
        %from_elements_41 = tensor.from_elements %false, %false, %false, %false, %true, %false, %false, %false, %false, %true, %false, %true : tensor<4x3xi1>
        %290 = vector.splat %in : vector<4x3xi64>
        %291 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 128, d0, ((d1 + d1 + 7 + 72) * 4) floordiv 16)>(%c15, %41)
        %292 = vector.insertelement %c-29224_i16, %20[%c7 : index] : vector<4xi16>
        %293 = vector.transpose %270, [0] : vector<4xi16> to vector<4xi16>
        memref.assume_alignment %alloc_2, 8 : memref<6x6x3xi32>
        %294 = arith.minf %cst_1, %cst_1 : f32
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %61 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %c-29224_i16 : vector<4xi16>, vector<4xi16> into i16
    %62 = index.maxu %47, %c2
    %63 = tensor.empty() : tensor<6x4xi16>
    %alloc_20 = memref.alloc() : memref<6xi16>
    %64 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%63, %63, %alloc_20 : tensor<6x4xi16>, tensor<6x4xi16>, memref<6xi16>) outs(%1 : tensor<6x4x6xi16>) {
    ^bb0(%in: i16, %in_37: i16, %in_38: i16, %out: i16):
      %267 = index.maxs %40, %c12
      %268 = index.divu %40, %c4
      %269 = math.exp %cst_1 : f32
      %270 = tensor.empty() : tensor<4x3xf16>
      %mapped_39 = linalg.map ins(%alloc_12, %alloc_12 : memref<4x3xf16>, memref<4x3xf16>) outs(%270 : tensor<4x3xf16>)
        (%in_43: f16, %in_44: f16) {
          %299 = index.castu %true : i1 to index
          %300 = arith.subi %out, %27 : i16
          %301 = vector.create_mask %62, %62, %40 : vector<6x4x6xi1>
          %302 = vector.broadcast %false : i1 to vector<6xi1>
          %303 = vector.multi_reduction <add>, %301, %302 [0, 1] : vector<6x4x6xi1> to vector<6xi1>
          %304 = arith.mulf %cst_0, %cst_0 : f16
          %305 = math.sqrt %cst : f16
          %306 = arith.divf %in_44, %in_43 : f16
          %307 = arith.divf %cst_1, %cst_1 : f32
          vector.print %38 : vector<4x3xi1>
          %308 = math.ipowi %22, %23 : tensor<i1>
          %309 = vector.extract %20[3] : vector<4xi16>
          %310 = math.atan %4 : tensor<6x4x6xf32>
          %expanded_45 = tensor.expand_shape %3 [[0, 1]] : tensor<3xi1> into tensor<3x1xi1>
          %311 = math.ceil %cst_1 : f32
          %312 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c3, %c1, %c15)
          %313 = vector.insertelement %false, %302[%26 : index] : vector<6xi1>
          %314 = arith.shrui %c1982931414_i64, %c1909637028_i64 : i64
          %315 = vector.reduction <or>, %20 : vector<4xi16> into i16
          %316 = vector.broadcast %c13561_i16 : i16 to vector<3xi16>
          %317 = vector.broadcast %false : i1 to vector<3xi1>
          %318 = vector.broadcast %c130554928_i32 : i32 to vector<3xi32>
          %319 = vector.gather %alloc_3[%c0, %47, %29] [%318], %317, %316 : memref<6x4x6xi16>, vector<3xi32>, vector<3xi1>, vector<3xi16> into vector<3xi16>
          %320 = math.ctpop %reduced : tensor<i64>
          %321 = math.absf %15 : tensor<4x3xf32>
          %alloc_46 = memref.alloc() : memref<4x3xi1>
          %322 = vector.broadcast %true : i1 to vector<4x6xi1>
          %323 = vector.insert %322, %301 [3] : vector<4x6xi1> into vector<6x4x6xi1>
          %324 = vector.create_mask %c8, %41, %c4 : vector<6x4x6xi1>
          %325 = vector.broadcast %cst_1 : f32 to vector<6x6x3xf32>
          %collapsed_47 = tensor.collapse_shape %15 [[0, 1]] : tensor<4x3xf32> into tensor<12xf32>
          %326 = math.cttz %3 : tensor<3xi1>
          %327 = math.cos %0 : tensor<6x6x3xf32>
          %328 = vector.broadcast %cst_1 : f32 to vector<3xf32>
          %329 = math.tan %270 : tensor<4x3xf16>
          %330 = math.round %2 : tensor<4x3xf16>
          %331 = math.log %270 : tensor<4x3xf16>
          %cst_48 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_48 : f16
        }
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<6x4x6xi64>) {
      ^bb0(%out_43: i64):
        %collapsed_44 = tensor.collapse_shape %14 [[0, 1]] : tensor<4x3xi32> into tensor<12xi32>
        %299 = bufferization.to_tensor %alloc_6 : memref<4x3xi16>
        %300 = vector.broadcast %false : i1 to vector<3xi1>
        %301 = vector.insert %300, %38 [2] : vector<3xi1> into vector<4x3xi1>
        %302 = math.round %4 : tensor<6x4x6xf32>
        %303 = math.round %270 : tensor<4x3xf16>
        %304 = math.cos %15 : tensor<4x3xf32>
        %305 = arith.shrsi %c130554928_i32, %c1296049304_i32 : i32
        %306 = affine.max affine_map<(d0, d1) -> (d0 - 4)>(%24, %40)
        %307 = vector.load %alloc_4[%c5, %c2, %c1] : memref<6x6x3xi16>, vector<4x3xi16>
        %308 = arith.shli %27, %c-29224_i16 : i16
        %309 = bufferization.to_tensor %alloc_5 : memref<6x4x6xf32>
        %310 = memref.load %alloc_6[%c2, %c2] : memref<4x3xi16>
        %311 = arith.minsi %in_37, %c9300_i16 : i16
        %312 = math.log1p %cst_1 : f32
        %313 = index.divs %267, %306
        %314 = math.tanh %4 : tensor<6x4x6xf32>
        %315 = vector.broadcast %c1296049304_i32 : i32 to vector<6xi32>
        %316 = vector.transfer_write %315, %9[%306, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi32>, tensor<4x3xi32>
        %317 = math.ctlz %c1847384886_i64 : i64
        %318 = index.sub %c11, %267
        memref.assume_alignment %alloc_9, 2 : memref<6x4x6xi1>
        %319 = vector.create_mask %40 : vector<3xi1>
        %320 = arith.divui %false, %false : i1
        %321 = math.round %270 : tensor<4x3xf16>
        %322 = memref.realloc %alloc_14 : memref<3xi32> to memref<15xi32>
        %323 = vector.insert %true, %300 [0] : i1 into vector<3xi1>
        %324 = affine.apply affine_map<(d0, d1) -> (d1 + 64)>(%318, %47)
        %325 = arith.divsi %true, %true : i1
        %326 = arith.maxui %c13561_i16, %c13561_i16 : i16
        %327 = bufferization.to_memref %14 : memref<4x3xi32>
        %328 = vector.flat_transpose %315 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
        %329 = arith.remf %cst_1, %cst_1 : f32
        %330 = vector.broadcast %318 : index to vector<6xindex>
        %331 = vector.broadcast %true : i1 to vector<6xi1>
        %332 = vector.broadcast %c1909637028_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_8[%c1, %c0] [%330], %331, %332 : memref<4x3xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        linalg.yield %c1982931414_i64 : i64
      } -> tensor<6x4x6xi64>
      %272 = math.log10 %2 : tensor<4x3xf16>
      %273 = math.round %2 : tensor<4x3xf16>
      %274 = math.round %15 : tensor<4x3xf32>
      %275 = arith.andi %c130554928_i32, %c130554928_i32 : i32
      %276 = arith.minf %cst_0, %cst_0 : f16
      %277 = math.tanh %2 : tensor<4x3xf16>
      %278 = math.log10 %2 : tensor<4x3xf16>
      %279 = math.log10 %270 : tensor<4x3xf16>
      %280 = arith.remf %cst_0, %cst_0 : f16
      %alloc_40 = memref.alloc() : memref<6x6x3xf16>
      %281 = vector.broadcast %cst_0 : f16 to vector<6x6x3xf16>
      %282 = vector.broadcast %true : i1 to vector<6x6x3xi1>
      %283 = vector.broadcast %c130554928_i32 : i32 to vector<6x6x3xi32>
      %284 = vector.gather %alloc_40[%34, %c11, %47] [%283], %282, %281 : memref<6x6x3xf16>, vector<6x6x3xi32>, vector<6x6x3xi1>, vector<6x6x3xf16> into vector<6x6x3xf16>
      %285 = index.mul %c0, %c5
      %286 = arith.cmpf oeq, %cst_0, %cst : f16
      %287 = math.absf %cst_1 : f32
      %288 = vector.insertelement %c-29224_i16, %20[%267 : index] : vector<4xi16>
      %289 = index.mul %62, %c0
      %290 = bufferization.to_tensor %alloc_9 : memref<6x4x6xi1>
      %291 = math.absf %2 : tensor<4x3xf16>
      vector.print %281 : vector<6x6x3xf16>
      %292 = vector.broadcast %c1296049304_i32 : i32 to vector<6x4x6xi32>
      %293 = arith.subi %out, %in : i16
      %collapsed_41 = tensor.collapse_shape %8 [[0, 1]] : tensor<4x3xi16> into tensor<12xi16>
      %expanded_42 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<6x4x6xi16> into tensor<6x4x6x1xi16>
      %294 = arith.shrsi %true, %true : i1
      %295 = math.cos %0 : tensor<6x6x3xf32>
      %296 = arith.cmpf ugt, %cst_0, %cst_0 : f16
      %297 = arith.minsi %27, %in : i16
      %298 = memref.alloca_scope  -> (i32) {
        %299 = index.sub %c5, %c6
        %300 = arith.addf %cst_0, %cst_0 : f16
        %301 = index.casts %c9 : index to i32
        %302 = arith.addi %c9300_i16, %in_38 : i16
        %303 = vector.broadcast %27 : i16 to vector<4x4xi16>
        %304 = vector.outerproduct %20, %20, %303 {kind = #vector.kind<or>} : vector<4xi16>, vector<4xi16>
        %305 = memref.atomic_rmw mulf %cst_1, %alloc_17[%c0, %c5, %c5] : (f32, memref<3x6x6xf32>) -> f32
        %306 = math.log10 %15 : tensor<4x3xf32>
        %307 = index.maxs %285, %289
        %308 = math.tanh %0 : tensor<6x6x3xf32>
        %alloca_43 = memref.alloca() : memref<6x6x3xi32>
        %309 = arith.remf %cst_1, %cst_1 : f32
        %310 = math.roundeven %cst_1 : f32
        %311 = arith.andi %false, %true : i1
        %alloc_44 = memref.alloc() : memref<i1>
        memref.tensor_store %23, %alloc_44 : memref<i1>
        %312 = vector.broadcast %in_38 : i16 to vector<3xi16>
        %313 = math.ceil %0 : tensor<6x6x3xf32>
        %314 = math.ctlz %false : i1
        %315 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %316 = vector.broadcast %c52229187_i32 : i32 to vector<15xi32>
        %317 = vector.broadcast %false : i1 to vector<15xi1>
        %318 = vector.maskedload %alloc_14[%c2], %317, %316 : memref<3xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %319 = arith.divf %cst_0, %cst : f16
        %320 = memref.load %alloc_4[%c5, %c1, %c2] : memref<6x6x3xi16>
        %inserted_45 = tensor.insert %true into %3[%c0] : tensor<3xi1>
        %321 = tensor.empty() : tensor<6x6x3xf32>
        %322 = math.log10 %4 : tensor<6x4x6xf32>
        %323 = arith.shrsi %c1909637028_i64, %c1519752392_i64 : i64
        %324 = arith.remf %cst_1, %cst_1 : f32
        %325 = arith.minsi %c1982931414_i64, %c1847384886_i64 : i64
        %326 = arith.remsi %in, %27 : i16
        %327 = math.cos %4 : tensor<6x4x6xf32>
        %328 = index.casts %307 : index to i32
        %329 = vector.multi_reduction <maxui>, %318, %318 [] : vector<15xi32> to vector<15xi32>
        %330 = affine.load %alloc_11[%c8, %c6, %c5] : memref<6x6x3xi32>
        memref.alloca_scope.return %c52229187_i32 : i32
      }
      linalg.yield %c9300_i16 : i16
    } -> tensor<6x4x6xi16>
    %65 = arith.ori %true, %false : i1
    %66 = affine.load %alloc_3[%c15, %c3, %c9] : memref<6x4x6xi16>
    %67 = arith.remsi %66, %c9300_i16 : i16
    %68 = math.expm1 %2 : tensor<4x3xf16>
    %69 = math.ceil %0 : tensor<6x6x3xf32>
    %70 = memref.alloca_scope  -> (memref<4x3xi16>) {
      %267 = math.ceil %0 : tensor<6x6x3xf32>
      %268 = vector.broadcast %27 : i16 to vector<4x4xi16>
      %269 = vector.outerproduct %20, %20, %268 {kind = #vector.kind<maxsi>} : vector<4xi16>, vector<4xi16>
      %270 = vector.splat %29 : vector<3xindex>
      memref.assume_alignment %alloc, 8 : memref<6x4x6xi64>
      %271 = arith.remf %cst_1, %cst_1 : f32
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_37 = arith.constant 0 : i64
      %272 = vector.transfer_read %alloc_8[%c2, %47], %c0_i64_37 : memref<4x3xi64>, vector<i64>
      %273 = math.absf %cst_0 : f16
      %274 = vector.broadcast %true : i1 to vector<3xi1>
      %275 = vector.insert %274, %38 [2] : vector<3xi1> into vector<4x3xi1>
      %276 = index.floordivs %c0, %c3
      %alloc_38 = memref.alloc() : memref<4x3xf32>
      memref.tensor_store %15, %alloc_38 : memref<4x3xf32>
      %277 = arith.andi %66, %c9300_i16 : i16
      %278 = tensor.empty() : tensor<6x6x3xf32>
      %mapped_39 = linalg.map ins(%0, %0, %0 : tensor<6x6x3xf32>, tensor<6x6x3xf32>, tensor<6x6x3xf32>) outs(%278 : tensor<6x6x3xf32>)
        (%in: f32, %in_44: f32, %in_45: f32) {
          %296 = arith.remsi %true, %true : i1
          %297 = math.expm1 %0 : tensor<6x6x3xf32>
          %from_elements_46 = tensor.from_elements %false, %false, %false, %true, %true, %false, %false, %false, %true, %true, %true, %false : tensor<4x3xi1>
          %298 = math.ctpop %10 : tensor<4x3xi1>
          %299 = vector.insertelement %66, %20[%56 : index] : vector<4xi16>
          memref.copy %alloc_15, %alloc_13 : memref<3xf16> to memref<3xf16>
          %300 = index.mul %c5, %c3
          %301 = arith.ori %c130554928_i32, %c1049580416_i32 : i32
          %302 = math.log2 %in : f32
          %303 = index.divs %300, %34
          %304 = math.absi %from_elements : tensor<3xi32>
          %305 = arith.divsi %c52229187_i32, %c52229187_i32 : i32
          %306 = vector.bitcast %20 : vector<4xi16> to vector<4xi16>
          %307 = memref.load %alloc_7[%c3, %c4, %c2] : memref<6x6x3xf32>
          %308 = vector.transpose %274, [0] : vector<3xi1> to vector<3xi1>
          %309 = arith.divf %in, %cst_1 : f32
          %rank = tensor.rank %from_elements_46 : tensor<4x3xi1>
          %alloc_47 = memref.alloc() : memref<4x3xi1>
          memref.tensor_store %from_elements_46, %alloc_47 : memref<4x3xi1>
          %310 = affine.apply affine_map<(d0) -> ((-d0 + 1) * 128)>(%c13)
          %311 = arith.remsi %false, %false : i1
          %312 = arith.maxsi %c1909637028_i64, %c1519752392_i64 : i64
          %313 = math.log10 %15 : tensor<4x3xf32>
          %314 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 16 - 128)>(%303, %c13, %c7, %62)
          %315 = vector.create_mask %26, %34, %29 : vector<6x6x3xi1>
          %316 = index.sizeof
          %317 = memref.load %alloc_4[%c2, %c3, %c0] : memref<6x6x3xi16>
          %318 = math.roundeven %cst : f16
          %319 = vector.shuffle %306, %306 [1, 2, 4, 6, 7] : vector<4xi16>, vector<4xi16>
          %320 = memref.load %alloc_12[%c1, %c2] : memref<4x3xf16>
          %321 = arith.remf %cst, %cst_0 : f16
          %322 = index.maxs %c5, %c6
          %323 = arith.shrsi %c1909637028_i64, %c1982931414_i64 : i64
          %cst_48 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_48 : f32
        }
      %279 = bufferization.clone %alloc_10 : memref<4x3xi16> to memref<4x3xi16>
      %280 = index.maxu %c7, %47
      %281 = arith.andi %c130554928_i32, %c1049580416_i32 : i32
      memref.alloca_scope  {
        %296 = math.ipowi %23, %23 : tensor<i1>
        memref.assume_alignment %alloc_11, 16 : memref<6x6x3xi32>
        %297 = math.floor %15 : tensor<4x3xf32>
        %298 = arith.minf %cst_1, %cst_1 : f32
        %299 = arith.divf %cst_1, %cst_1 : f32
        %300 = vector.bitcast %274 : vector<3xi1> to vector<3xi1>
        %301 = arith.mulf %cst_1, %cst_1 : f32
        %302 = vector.create_mask %c0 : vector<3xi1>
        %303 = arith.remf %cst_1, %cst_1 : f32
        %304 = arith.divf %cst_1, %cst_1 : f32
        %305 = index.divs %29, %41
        %306 = vector.bitcast %38 : vector<4x3xi1> to vector<4x3xi1>
        %307 = arith.ori %c9300_i16, %c-29224_i16 : i16
        %false_44 = arith.constant false
        %false_45 = arith.constant false
        %308 = vector.transfer_read %6[%41], %false_45 : tensor<3xi1>, vector<i1>
        %309 = vector.broadcast %c0_i64 : i64 to vector<i64>
        %310 = vector.transfer_write %309, %13[%c9] : vector<i64>, tensor<3xi64>
        %311 = math.ceil %278 : tensor<6x6x3xf32>
        %312 = arith.shrsi %c0_i64, %c1519752392_i64 : i64
        %313 = arith.remf %cst_0, %cst : f16
        %314 = vector.broadcast %34 : index to vector<4xindex>
        %315 = vector.broadcast %true : i1 to vector<4xi1>
        vector.scatter %alloc_4[%c5, %c2, %c2] [%314], %315, %20 : memref<6x6x3xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %316 = math.round %4 : tensor<6x4x6xf32>
        %317 = math.expm1 %4 : tensor<6x4x6xf32>
        %318 = arith.remui %c1909637028_i64, %c1982931414_i64 : i64
        %319 = arith.minsi %c9300_i16, %66 : i16
        %320 = arith.remsi %c-29224_i16, %c13561_i16 : i16
        vector.print %20 : vector<4xi16>
        %321 = memref.load %alloc_10[%c3, %c1] : memref<4x3xi16>
        %322 = math.round %0 : tensor<6x6x3xf32>
        %cast_46 = tensor.cast %11 : tensor<6x4x6xi64> to tensor<?x?x?xi64>
        %323 = arith.muli %c1049580416_i32, %c1296049304_i32 : i32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %324 = vector.transfer_read %8[%62, %c2], %c0_i16 : tensor<4x3xi16>, vector<i16>
        %325 = arith.remf %cst_0, %cst : f16
        %326 = vector.create_mask %305, %c6, %c0 : vector<6x6x3xi1>
      }
      %282 = vector.insert %false, %274 [0] : i1 into vector<3xi1>
      %283 = vector.bitcast %38 : vector<4x3xi1> to vector<4x3xi1>
      %284 = math.sqrt %cst_0 : f16
      %285 = vector.multi_reduction <maxsi>, %274, %true [0] : vector<3xi1> to i1
      %286 = math.ceil %0 : tensor<6x6x3xf32>
      %287 = arith.remf %cst, %cst : f16
      %288 = index.divu %c9, %c2
      %289 = arith.divui %c130554928_i32, %c1296049304_i32 : i32
      %inserted_40 = tensor.insert %c1519752392_i64 into %cast[%c0] : tensor<?xi64>
      %290 = math.ipowi %c1296049304_i32, %c52229187_i32 : i32
      %291 = arith.muli %c1296049304_i32, %c130554928_i32 : i32
      %292 = tensor.empty() : tensor<4x3xi16>
      %mapped_41 = linalg.map ins(%8, %8 : tensor<4x3xi16>, tensor<4x3xi16>) outs(%292 : tensor<4x3xi16>)
        (%in: i16, %in_44: i16) {
          %296 = memref.load %alloc_2[%c3, %c2, %c1] : memref<6x6x3xi32>
          %297 = arith.shrsi %c1296049304_i32, %c130554928_i32 : i32
          %298 = index.sub %c13, %c3
          %299 = math.roundeven %2 : tensor<4x3xf16>
          %300 = arith.shrsi %c13561_i16, %66 : i16
          %301 = math.atan2 %0, %278 : tensor<6x6x3xf32>
          %302 = math.atan %cst : f16
          %303 = math.ipowi %292, %8 : tensor<4x3xi16>
          %304 = index.castu %298 : index to i32
          %305 = index.sub %47, %40
          %cast_45 = tensor.cast %13 : tensor<3xi64> to tensor<?xi64>
          %306 = arith.shrsi %c1909637028_i64, %c1847384886_i64 : i64
          %307 = memref.load %30[%c5, %c2, %c2] : memref<6x6x3xi32>
          %308 = arith.divui %c1909637028_i64, %c0_i64 : i64
          %309 = affine.apply affine_map<(d0) -> (0)>(%c15)
          %310 = index.ceildivs %c2, %276
          %311 = bufferization.to_memref %2 : memref<4x3xf16>
          %312 = arith.remsi %in_44, %66 : i16
          memref.assume_alignment %alloc_9, 8 : memref<6x4x6xi1>
          %313 = vector.splat %c1909637028_i64 : vector<4x3xi64>
          %314 = math.round %0 : tensor<6x6x3xf32>
          %315 = vector.splat %26 : vector<6x6x3xindex>
          %316 = memref.realloc %alloc_14 : memref<3xi32> to memref<3xi32>
          memref.tensor_store %7, %279 : memref<4x3xi16>
          %317 = math.sqrt %15 : tensor<4x3xf32>
          %318 = arith.maxui %false, %285 : i1
          memref.assume_alignment %alloc_7, 8 : memref<6x6x3xf32>
          %319 = arith.subi %c1909637028_i64, %c0_i64 : i64
          %320 = arith.minui %c0_i64, %c1519752392_i64 : i64
          %321 = arith.minf %cst_1, %cst_1 : f32
          %322 = vector.insertelement %27, %20[%305 : index] : vector<4xi16>
          %323 = math.roundeven %4 : tensor<6x4x6xf32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %alloca_42 = memref.alloca() : memref<6x6x3xf32>
      %293 = scf.while (%arg2 = %true) : (i1) -> i1 {
        %296 = math.log1p %2 : tensor<4x3xf16>
        %297 = math.tanh %0 : tensor<6x6x3xf32>
        %298 = arith.floordivsi %c1049580416_i32, %c1049580416_i32 : i32
        %299 = index.floordivs %c14, %c6
        %300 = math.exp %4 : tensor<6x4x6xf32>
        %301 = math.log1p %15 : tensor<4x3xf32>
        %302 = affine.max affine_map<(d0) -> (d0 * 2, d0 + d0 floordiv 16 + 16)>(%c6)
        %from_elements_44 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<6x6x3xf32>
        scf.condition(%false) %true : i1
      } do {
      ^bb0(%arg2: i1):
        %296 = math.log10 %4 : tensor<6x4x6xf32>
        %297 = index.divs %40, %288
        %298 = arith.negf %cst_0 : f16
        %299 = bufferization.to_tensor %alloc_11 : memref<6x6x3xi32>
        %300 = vector.broadcast %56 : index to vector<3xindex>
        %301 = vector.broadcast %c-29224_i16 : i16 to vector<3xi16>
        vector.scatter %alloc_3[%c2, %c0, %c5] [%300], %274, %301 : memref<6x4x6xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %302 = arith.addf %cst, %cst_0 : f16
        %303 = arith.remf %cst, %cst : f16
        %304 = index.castu %c6 : index to i32
        %305 = arith.subi %c130554928_i32, %c52229187_i32 : i32
        %collapsed_44 = tensor.collapse_shape %299 [[0, 1], [2]] : tensor<6x6x3xi32> into tensor<36x3xi32>
        %306 = math.ctlz %6 : tensor<3xi1>
        %307 = math.exp %15 : tensor<4x3xf32>
        %308 = math.exp %278 : tensor<6x6x3xf32>
        %cast_45 = tensor.cast %reduced : tensor<i64> to tensor<i64>
        %309 = math.ipowi %collapsed_44, %collapsed_44 : tensor<36x3xi32>
        %310 = vector.shuffle %20, %20 [0, 5, 7] : vector<4xi16>, vector<4xi16>
        scf.yield %false : i1
      }
      %true_43 = index.bool.constant true
      %294 = vector.broadcast %cst_1 : f32 to vector<3xf32>
      %295 = vector.fma %294, %294, %294 : vector<3xf32>
      memref.alloca_scope.return %279 : memref<4x3xi16>
    }
    %71 = arith.andi %c1296049304_i32, %c52229187_i32 : i32
    memref.assume_alignment %alloc_10, 16 : memref<4x3xi16>
    %72 = vector.insertelement %27, %20[%c6 : index] : vector<4xi16>
    %73 = arith.remui %c1847384886_i64, %c1982931414_i64 : i64
    %74 = arith.maxui %c1049580416_i32, %c52229187_i32 : i32
    %75 = arith.minf %cst, %cst_0 : f16
    %76 = vector.reduction <maxui>, %20 : vector<4xi16> into i16
    %77 = vector.splat %c7 : vector<4x3xindex>
    affine.store %cst_1, %alloc_7[%c6, %c11, %c5] : memref<6x6x3xf32>
    %78 = arith.minsi %c13561_i16, %c13561_i16 : i16
    %79 = memref.load %alloc_6[%c3, %c0] : memref<4x3xi16>
    %80 = affine.apply affine_map<(d0, d1) -> (d0 + (d1 - 2) mod 64)>(%c1, %c7)
    %81 = memref.alloca_scope  -> (i64) {
      %267 = arith.remui %c130554928_i32, %c1296049304_i32 : i32
      %268 = arith.ori %27, %c-29224_i16 : i16
      affine.for %arg2 = 0 to 42 {
      }
      affine.store %c1909637028_i64, %alloc_8[%c8, %c4] : memref<4x3xi64>
      %269 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %270 = arith.minsi %c1982931414_i64, %c1847384886_i64 : i64
      %271 = memref.alloca_scope  -> (memref<4x3xf32>) {
        %297 = vector.bitcast %20 : vector<4xi16> to vector<4xf16>
        %298 = index.divs %80, %c13
        %299 = affine.load %alloc_9[%c3, %c12, %c10] : memref<6x4x6xi1>
        %300 = math.rsqrt %2 : tensor<4x3xf16>
        %301 = arith.cmpf uge, %cst, %cst : f16
        %302 = arith.cmpf ord, %cst_0, %cst : f16
        %303 = arith.remui %c130554928_i32, %c130554928_i32 : i32
        %304 = arith.shrui %c13561_i16, %c13561_i16 : i16
        %alloc_38 = memref.alloc() : memref<6x6x3xf32>
        %305 = math.expm1 %2 : tensor<4x3xf16>
        %306 = index.maxs %39, %26
        %307 = math.log1p %2 : tensor<4x3xf16>
        %308 = math.round %2 : tensor<4x3xf16>
        %309 = memref.realloc %alloc_16 : memref<3xi32> to memref<6xi32>
        vector.print %20 : vector<4xi16>
        %310 = vector.create_mask %c11, %c14, %56 : vector<6x6x3xi1>
        %311 = math.atan %cst_0 : f16
        %312 = arith.shrui %c52229187_i32, %c1049580416_i32 : i32
        %313 = vector.broadcast %false : i1 to vector<15xi1>
        %314 = vector.transfer_write %313, %12[%306, %298] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi1>, tensor<4x3xi1>
        affine.store %cst_1, %alloc_17[%c3, %c6, %c5] : memref<3x6x6xf32>
        %315 = vector.shuffle %310, %310 [1, 2, 6, 7, 9] : vector<6x6x3xi1>, vector<6x6x3xi1>
        vector.print %20 : vector<4xi16>
        %316 = arith.mulf %cst_1, %cst_1 : f32
        %317 = vector.load %alloc_4[%c5, %c4, %c0] : memref<6x6x3xi16>, vector<6x6x3xi16>
        %318 = arith.maxui %c1296049304_i32, %c1296049304_i32 : i32
        %319 = index.maxs %c7, %34
        %320 = math.log10 %cst_1 : f32
        %321 = arith.divui %c1296049304_i32, %c130554928_i32 : i32
        %322 = affine.apply affine_map<(d0) -> (0)>(%c1)
        %323 = math.round %cst_1 : f32
        %324 = arith.mulf %cst, %cst : f16
        %325 = math.expm1 %cst_1 : f32
        %alloc_39 = memref.alloc() : memref<4x3xf32>
        memref.alloca_scope.return %alloc_39 : memref<4x3xf32>
      }
      %272 = vector.broadcast %cst_1 : f32 to vector<3xf32>
      %273 = vector.fma %272, %272, %272 : vector<3xf32>
      %274 = tensor.empty(%c3, %c7) : tensor<6x?x?xf16>
      %275 = arith.divsi %c1049580416_i32, %c130554928_i32 : i32
      %276 = arith.remsi %c13561_i16, %66 : i16
      %277 = arith.xori %c9300_i16, %27 : i16
      %278 = arith.subi %c1982931414_i64, %c1519752392_i64 : i64
      %279 = arith.shrui %c52229187_i32, %c1049580416_i32 : i32
      %280 = vector.extract_strided_slice %272 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
      memref.assume_alignment %alloc_10, 4 : memref<4x3xi16>
      %281 = affine.load %alloc_15[%c9] : memref<3xf16>
      %282 = math.floor %4 : tensor<6x4x6xf32>
      %283 = arith.shrui %c1909637028_i64, %c1847384886_i64 : i64
      %284 = arith.mulf %cst_0, %cst : f16
      %285 = tensor.empty() : tensor<6x4x6xi16>
      %mapped_37 = linalg.map ins(%alloc_3, %1, %alloc_3 : memref<6x4x6xi16>, tensor<6x4x6xi16>, memref<6x4x6xi16>) outs(%285 : tensor<6x4x6xi16>)
        (%in: i16, %in_38: i16, %in_39: i16) {
          %297 = vector.broadcast %true : i1 to vector<15xi1>
          %298 = vector.maskedload %alloc_9[%c1, %c0, %c3], %297, %297 : memref<6x4x6xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
          %299 = vector.bitcast %273 : vector<3xf32> to vector<3xf32>
          %300 = index.ceildivu %c0, %80
          %inserted_40 = tensor.insert %false into %23[] : tensor<i1>
          %301 = arith.divsi %c9300_i16, %in_39 : i16
          %302 = math.roundeven %2 : tensor<4x3xf16>
          %303 = math.ctlz %in_39 : i16
          %304 = math.ceil %cst_1 : f32
          %305 = vector.create_mask %c14, %c6, %c0 : vector<6x6x3xi1>
          memref.tensor_store %from_elements, %alloc_16 : memref<3xi32>
          %306 = index.maxu %41, %34
          %307 = arith.divf %cst_1, %cst_1 : f32
          %308 = math.ipowi %27, %in : i16
          %309 = vector.multi_reduction <maxf>, %299, %cst_1 [0] : vector<3xf32> to f32
          %310 = index.maxs %c0, %c0
          memref.store %309, %alloc_5[%c4, %c2, %c4] : memref<6x4x6xf32>
          affine.store %c52229187_i32, %alloc_14[%c8] : memref<3xi32>
          %collapsed_41 = tensor.collapse_shape %9 [[0, 1]] : tensor<4x3xi32> into tensor<12xi32>
          %311 = index.divu %40, %56
          %312 = tensor.empty() : tensor<6x4x6xf16>
          %313 = math.exp2 %cst : f16
          %314 = affine.load %alloc_17[%c0, %c13, %c11] : memref<3x6x6xf32>
          %315 = arith.shrui %c1296049304_i32, %c130554928_i32 : i32
          %316 = math.cos %309 : f32
          %317 = arith.minui %c52229187_i32, %c1049580416_i32 : i32
          %318 = math.ceil %15 : tensor<4x3xf32>
          %319 = arith.remui %c1847384886_i64, %c1519752392_i64 : i64
          %320 = math.roundeven %15 : tensor<4x3xf32>
          %false_42 = arith.constant false
          %321 = vector.transfer_read %21[%c0], %false_42 : tensor<3xi1>, vector<i1>
          %322 = math.round %312 : tensor<6x4x6xf16>
          %323 = vector.bitcast %280 : vector<1xf32> to vector<1xf32>
          %324 = math.tanh %15 : tensor<4x3xf32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %286 = arith.minui %27, %27 : i16
      %287 = math.round %0 : tensor<6x6x3xf32>
      %288 = arith.xori %66, %c13561_i16 : i16
      %289 = arith.cmpi ule, %c130554928_i32, %c130554928_i32 : i32
      %290 = vector.broadcast %c1909637028_i64 : i64 to vector<6x6x3xi64>
      %291 = math.absf %281 : f16
      %292 = tensor.empty() : tensor<4x3xi64>
      %293 = memref.atomic_rmw maxu %c13561_i16, %70[%c1, %c2] : (i16, memref<4x3xi16>) -> i16
      %294 = vector.bitcast %269 : vector<4xi16> to vector<4xi16>
      %295 = index.divs %39, %24
      %296 = index.sub %56, %24
      memref.alloca_scope.return %c1847384886_i64 : i64
    }
    %82 = math.round %0 : tensor<6x6x3xf32>
    %83 = vector.bitcast %20 : vector<4xi16> to vector<4xf16>
    %84 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 16 - 128)>(%24, %c2, %c13, %c10)
    %85 = math.cos %15 : tensor<4x3xf32>
    %86 = arith.divf %cst_0, %cst_0 : f16
    %87 = math.sqrt %15 : tensor<4x3xf32>
    %88 = math.ceil %cst_1 : f32
    %89 = index.floordivs %c5, %c11
    %90 = vector.flat_transpose %83 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
    %91 = arith.andi %c1519752392_i64, %c1519752392_i64 : i64
    %92 = arith.xori %c13561_i16, %c-29224_i16 : i16
    %93 = index.ceildivs %c3, %62
    %94 = arith.minui %c1909637028_i64, %81 : i64
    %inserted = tensor.insert %false into %3[%c1] : tensor<3xi1>
    %95 = math.round %cst : f16
    %96 = math.cttz %5 : tensor<3xi32>
    %97 = arith.minf %cst_0, %cst_0 : f16
    %98 = index.divs %c8, %c9
    %99 = scf.execute_region -> i16 {
      %267 = vector.broadcast %c9300_i16 : i16 to vector<6xi16>
      %268 = vector.broadcast %false : i1 to vector<6xi1>
      %269 = vector.maskedload %alloc_4[%c4, %c4, %c0], %268, %267 : memref<6x6x3xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %270 = scf.while (%arg2 = %cst) : (f16) -> f16 {
        %286 = arith.divf %cst_0, %cst_0 : f16
        %inserted_38 = tensor.insert %c9300_i16 into %1[%c4, %c0, %c2] : tensor<6x4x6xi16>
        %collapsed_39 = tensor.collapse_shape %7 [[0, 1]] : tensor<4x3xi16> into tensor<12xi16>
        %287 = index.floordivs %c0, %c11
        %288 = affine.max affine_map<(d0, d1, d2) -> (d1 floordiv 128, d0, d2 ceildiv 16)>(%34, %98, %c2)
        %289 = arith.minf %cst_1, %cst_1 : f32
        %290 = math.expm1 %15 : tensor<4x3xf32>
        affine.store %cst_0, %alloc_13[%c13] : memref<3xf16>
        scf.condition(%true) %cst_0 : f16
      } do {
      ^bb0(%arg2: f16):
        %alloca_38 = memref.alloca() : memref<6x4x6xi64>
        %286 = math.powf %2, %2 : tensor<4x3xf16>
        %287 = vector.transpose %268, [0] : vector<6xi1> to vector<6xi1>
        %288 = index.divu %c10, %98
        %289 = tensor.empty(%c5, %39) : tensor<?x?x6xf16>
        %290 = index.divs %41, %c6
        %291 = math.floor %cst_0 : f16
        %292 = arith.divui %c13561_i16, %66 : i16
        %collapsed_39 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x4x6xi16> into tensor<24x6xi16>
        %293 = vector.transpose %267, [0] : vector<6xi16> to vector<6xi16>
        %294 = arith.negf %cst_0 : f16
        %295 = arith.shli %c1519752392_i64, %c1982931414_i64 : i64
        %296 = vector.insertelement %true, %268[%c0 : index] : vector<6xi1>
        %297 = arith.shli %c-29224_i16, %c-29224_i16 : i16
        %298 = vector.broadcast %arg2 : f16 to vector<6x4x6xf16>
        %299 = vector.broadcast %false : i1 to vector<6x4x6xi1>
        %300 = vector.broadcast %c1049580416_i32 : i32 to vector<6x4x6xi32>
        %301 = vector.gather %2[%56, %290] [%300], %299, %298 : tensor<4x3xf16>, vector<6x4x6xi32>, vector<6x4x6xi1>, vector<6x4x6xf16> into vector<6x4x6xf16>
        %302 = vector.insertelement %c9300_i16, %269[%c14 : index] : vector<6xi16>
        scf.yield %cst_0 : f16
      }
      %271 = arith.ori %c1296049304_i32, %c130554928_i32 : i32
      %extracted_37 = tensor.extract %4[%c5, %c3, %c3] : tensor<6x4x6xf32>
      %272 = vector.broadcast %true : i1 to vector<4xi1>
      %273 = vector.maskedload %alloc_9[%c4, %c0, %c1], %272, %272 : memref<6x4x6xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %274 = arith.cmpi slt, %c1519752392_i64, %c1847384886_i64 : i64
      %275 = arith.ceildivsi %c9300_i16, %66 : i16
      %276 = memref.load %alloc_13[%c1] : memref<3xf16>
      %277 = arith.negf %cst : f16
      %278 = index.maxs %24, %40
      %279 = arith.addf %extracted_37, %cst_1 : f32
      %280 = arith.minf %cst, %cst : f16
      %281 = math.floor %4 : tensor<6x4x6xf32>
      %282 = vector.broadcast %c1296049304_i32 : i32 to vector<4xi32>
      %283 = vector.maskedload %alloc_14[%c2], %272, %282 : memref<3xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %284 = index.castu %26 : index to i32
      %285 = math.log2 %0 : tensor<6x6x3xf32>
      scf.yield %c9300_i16 : i16
    }
    %100 = vector.broadcast %true : i1 to vector<3x3xi1>
    vector.transfer_write %100, %alloc_9[%c0, %c3, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x3xi1>, memref<6x4x6xi1>
    %101 = arith.maxsi %81, %c1909637028_i64 : i64
    %102 = math.sqrt %0 : tensor<6x6x3xf32>
    %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<4x3xi1> into tensor<4x3x1xi1>
    %103 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - d3, d2 ceildiv 64, 0, (d0 - d3) * 4)>(%98, %80, %84, %93)
    %104 = tensor.empty() : tensor<6x6x3xi32>
    %mapped_21 = linalg.map ins(%alloc_2, %30 : memref<6x6x3xi32>, memref<6x6x3xi32>) outs(%104 : tensor<6x6x3xi32>)
      (%in: i32, %in_37: i32) {
        affine.for %arg2 = 0 to 7 {
        }
        %267 = bufferization.to_memref %12 : memref<4x3xi1>
        %268 = vector.load %alloc_2[%c4, %c1, %c0] : memref<6x6x3xi32>, vector<6x6x3xi32>
        %269 = arith.remf %cst_0, %cst_0 : f16
        %270 = arith.remui %in_37, %in_37 : i32
        %271 = arith.subi %c1982931414_i64, %c1982931414_i64 : i64
        %272 = arith.divsi %c-29224_i16, %99 : i16
        %273 = arith.shrsi %true, %false : i1
        %274 = vector.broadcast %c11 : index to vector<6xindex>
        %275 = vector.broadcast %true : i1 to vector<6xi1>
        %276 = vector.broadcast %99 : i16 to vector<6xi16>
        vector.scatter %70[%c0, %c2] [%274], %275, %276 : memref<4x3xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %277 = math.floor %0 : tensor<6x6x3xf32>
        %278 = memref.realloc %alloc_13 : memref<3xf16> to memref<3xf16>
        %279 = arith.ori %false, %true : i1
        %280 = index.floordivs %c5, %c14
        %generated = tensor.generate %c14 {
        ^bb0(%arg2: index, %arg3: index):
          %301 = arith.remsi %81, %c1909637028_i64 : i64
          %302 = math.round %0 : tensor<6x6x3xf32>
          %303 = math.ctlz %c1909637028_i64 : i64
          vector.print %268 : vector<6x6x3xi32>
          tensor.yield %false : i1
        } : tensor<?x3xi1>
        %281 = index.castu %c-29224_i16 : i16 to index
        %282 = vector.broadcast %true : i1 to vector<3xi1>
        %283 = vector.multi_reduction <maxsi>, %38, %282 [0] : vector<4x3xi1> to vector<3xi1>
        %284 = math.ctlz %66 : i16
        %285 = index.floordivs %c6, %281
        %286 = bufferization.to_tensor %alloc_16 : memref<3xi32>
        %287 = math.expm1 %cst : f16
        %288 = scf.while (%arg2 = %alloc_13) : (memref<3xf16>) -> memref<3xf16> {
          %301 = arith.shrsi %c1909637028_i64, %c1909637028_i64 : i64
          %302 = index.mul %62, %c5
          vector.print %83 : vector<4xf16>
          %303 = vector.create_mask %c3 : vector<3xi1>
          %304 = vector.insertelement %true, %282[%c13 : index] : vector<3xi1>
          %305 = memref.load %alloc_14[%c0] : memref<3xi32>
          %306 = math.ipowi %23, %23 : tensor<i1>
          %307 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          scf.condition(%true) %alloc_13 : memref<3xf16>
        } do {
        ^bb0(%arg2: memref<3xf16>):
          %301 = arith.remf %cst_1, %cst_1 : f32
          %302 = math.tanh %cst_0 : f16
          %303 = tensor.empty() : tensor<6x6x3xi1>
          %304 = arith.floordivsi %99, %c9300_i16 : i16
          %305 = affine.apply affine_map<(d0, d1) -> (0)>(%c10, %c2)
          %306 = affine.min affine_map<(d0) -> (1)>(%84)
          %307 = vector.broadcast %81 : i64 to vector<4x3xi64>
          %308 = vector.broadcast %c130554928_i32 : i32 to vector<4x3xi32>
          %309 = vector.gather %11[%c9, %c0, %24] [%308], %38, %307 : tensor<6x4x6xi64>, vector<4x3xi32>, vector<4x3xi1>, vector<4x3xi64> into vector<4x3xi64>
          %310 = arith.floordivsi %81, %81 : i64
          memref.assume_alignment %alloc_11, 1 : memref<6x6x3xi32>
          %311 = arith.xori %c1049580416_i32, %c1049580416_i32 : i32
          %312 = arith.subi %c9300_i16, %66 : i16
          %inserted_39 = tensor.insert %true into %12[%c0, %c0] : tensor<4x3xi1>
          %313 = index.divu %c3, %c10
          %314 = vector.broadcast %27 : i16 to vector<3xi16>
          %315 = vector.maskedload %70[%c0, %c0], %282, %314 : memref<4x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
          %316 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %315, %315, %c9300_i16 : vector<3xi16>, vector<3xi16> into i16
          %317 = math.ipowi %3, %3 : tensor<3xi1>
          scf.yield %arg2 : memref<3xf16>
        }
        %289 = arith.addf %cst_0, %cst_0 : f16
        %290 = vector.broadcast %cst_1 : f32 to vector<6x4x6xf32>
        %291 = vector.fma %290, %290, %290 : vector<6x4x6xf32>
        %292 = vector.broadcast %in_37 : i32 to vector<6xi32>
        %293 = vector.broadcast %false : i1 to vector<6xi1>
        %294 = vector.maskedload %alloc_2[%c5, %c2, %c1], %293, %292 : memref<6x6x3xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        memref.assume_alignment %alloc_13, 8 : memref<3xf16>
        %295 = math.round %15 : tensor<4x3xf32>
        %296 = arith.remf %cst_1, %cst_1 : f32
        %297 = math.cttz %from_elements : tensor<3xi32>
        %298 = vector.broadcast %c1847384886_i64 : i64 to vector<i64>
        vector.transfer_write %298, %alloc_8[%c6, %41] : vector<i64>, memref<4x3xi64>
        %inserted_38 = tensor.insert %true into %23[] : tensor<i1>
        %299 = affine.load %alloc_5[%c4, %c10, %c10] : memref<6x4x6xf32>
        %300 = vector.shuffle %291, %291 [2, 3, 8, 9, 10] : vector<6x4x6xf32>, vector<6x4x6xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %105 = math.ctpop %21 : tensor<3xi1>
    %106 = arith.floordivsi %c1519752392_i64, %c1909637028_i64 : i64
    %extracted = tensor.extract %1[%c4, %c0, %c2] : tensor<6x4x6xi16>
    %from_elements_22 = tensor.from_elements %true, %false, %false, %false, %false, %false, %false, %true, %false, %true, %false, %false : tensor<4x3xi1>
    %107 = index.divu %98, %62
    %108 = vector.insertelement %c-29224_i16, %20[%c0 : index] : vector<4xi16>
    %109 = affine.load %alloc[%c1, %c10, %c5] : memref<6x4x6xi64>
    %110 = arith.floordivsi %c130554928_i32, %c130554928_i32 : i32
    memref.assume_alignment %alloc_4, 2 : memref<6x6x3xi16>
    %111 = arith.divsi %false, %true : i1
    memref.assume_alignment %70, 2 : memref<4x3xi16>
    %112 = vector.broadcast %cst : f16 to vector<3xf16>
    %113 = vector.broadcast %true : i1 to vector<3xi1>
    %114 = vector.maskedload %alloc_13[%c0], %113, %112 : memref<3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    %115 = arith.remsi %c1909637028_i64, %81 : i64
    memref.assume_alignment %alloc_13, 8 : memref<3xf16>
    %116 = arith.shli %true, %false : i1
    %117 = vector.insertelement %cst, %90[%24 : index] : vector<4xf16>
    %118 = math.tanh %2 : tensor<4x3xf16>
    %119 = arith.floordivsi %c1909637028_i64, %109 : i64
    %120 = vector.broadcast %c1049580416_i32 : i32 to vector<3xi32>
    %121 = vector.maskedload %alloc_16[%c1], %113, %120 : memref<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
    %122 = vector.insertelement %cst, %114[%c12 : index] : vector<3xf16>
    %123 = vector.flat_transpose %114 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
    %124 = vector.transpose %120, [0] : vector<3xi32> to vector<3xi32>
    %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<4x3xi16> into tensor<12xi16>
    %125 = vector.flat_transpose %113 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %126 = index.maxu %40, %80
    %127 = math.exp %0 : tensor<6x6x3xf32>
    %128 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %90, %83, %cst_0 : vector<4xf16>, vector<4xf16> into f16
    scf.execute_region {
      %c1_i64 = arith.constant 1 : i64
      %267 = vector.transfer_read %17[%41], %c1_i64 : tensor<3xi64>, vector<i64>
      %268 = index.divs %c6, %c5
      %269 = arith.remsi %c1_i64, %109 : i64
      %270 = tensor.empty() : tensor<4x3xf32>
      %mapped_37 = linalg.map ins(%15 : tensor<4x3xf32>) outs(%270 : tensor<4x3xf32>)
        (%in: f32) {
          %282 = vector.reduction <mul>, %83 : vector<4xf16> into f16
          %alloc_39 = memref.alloc() : memref<i64>
          memref.tensor_store %reduced, %alloc_39 : memref<i64>
          %283 = math.ipowi %6, %3 : tensor<3xi1>
          %284 = vector.extract %100[0] : vector<3x3xi1>
          %285 = tensor.empty(%98, %29) : tensor<?x?x3xf16>
          %286 = arith.floordivsi %c1296049304_i32, %c130554928_i32 : i32
          %287 = arith.minsi %c1049580416_i32, %c1296049304_i32 : i32
          %288 = arith.shrui %c1982931414_i64, %c1_i64 : i64
          %alloc_40 = memref.alloc() : memref<6x4x6xf16>
          %289 = vector.transpose %123, [0] : vector<3xf16> to vector<3xf16>
          %290 = math.atan %15 : tensor<4x3xf32>
          %291 = arith.shrsi %true, %false : i1
          %292 = index.maxu %26, %c12
          %293 = arith.remf %cst_1, %in : f32
          %294 = math.log2 %cst_0 : f16
          %collapsed_41 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x3xi1> into tensor<12xi1>
          %295 = math.log1p %2 : tensor<4x3xf16>
          %296 = arith.remf %cst_1, %cst_1 : f32
          %297 = index.castu %41 : index to i32
          memref.assume_alignment %alloc_11, 8 : memref<6x6x3xi32>
          %298 = math.atan2 %in, %in : f32
          %299 = vector.broadcast %cst_1 : f32 to vector<6xf32>
          %300 = vector.transfer_write %299, %4[%c12, %c11, %89] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xf32>, tensor<6x4x6xf32>
          %301 = index.casts %c7 : index to i32
          %302 = math.round %15 : tensor<4x3xf32>
          %303 = vector.broadcast %c4 : index to vector<15xindex>
          %304 = vector.broadcast %false : i1 to vector<15xi1>
          %305 = vector.broadcast %c52229187_i32 : i32 to vector<15xi32>
          vector.scatter %alloc_14[%c1] [%303], %304, %305 : memref<3xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
          %306 = math.exp %4 : tensor<6x4x6xf32>
          %307 = index.sub %26, %103
          %308 = vector.flat_transpose %90 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
          %309 = math.round %cst_0 : f16
          %310 = tensor.empty() : tensor<6x6x3xi64>
          %311 = index.castu %81 : i64 to index
          %cast_42 = tensor.cast %11 : tensor<6x4x6xi64> to tensor<?x?x?xi64>
          %cst_43 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_43 : f32
        }
      %271 = index.mul %26, %c11
      %272 = vector.insertelement %true, %125[%c9 : index] : vector<3xi1>
      %273 = tensor.empty() : tensor<3xi32>
      %mapped_38 = linalg.map ins(%from_elements, %5 : tensor<3xi32>, tensor<3xi32>) outs(%273 : tensor<3xi32>)
        (%in: i32, %in_39: i32) {
          %282 = math.atan2 %270, %270 : tensor<4x3xf32>
          %283 = math.log2 %15 : tensor<4x3xf32>
          %284 = vector.multi_reduction <maxf>, %114, %cst_0 [0] : vector<3xf16> to f16
          %285 = arith.minui %66, %66 : i16
          %286 = index.divs %39, %c3
          %287 = math.roundeven %270 : tensor<4x3xf32>
          %288 = vector.broadcast %cst_1 : f32 to vector<4x3xf32>
          %289 = vector.fma %288, %288, %288 : vector<4x3xf32>
          %290 = vector.insertelement %cst_0, %83[%c13 : index] : vector<4xf16>
          %291 = index.maxu %c5, %c13
          %292 = arith.divui %c9300_i16, %c9300_i16 : i16
          %293 = bufferization.to_memref %13 : memref<3xi64>
          %294 = vector.multi_reduction <minsi>, %113, %true [0] : vector<3xi1> to i1
          %295 = arith.remui %c52229187_i32, %c1296049304_i32 : i32
          %296 = math.expm1 %4 : tensor<6x4x6xf32>
          %297 = index.castu %c130554928_i32 : i32 to index
          %298 = math.floor %15 : tensor<4x3xf32>
          %299 = vector.multi_reduction <mul>, %90, %83 [] : vector<4xf16> to vector<4xf16>
          %300 = arith.maxsi %c1847384886_i64, %c1982931414_i64 : i64
          %301 = arith.divf %cst_1, %cst_1 : f32
          %302 = math.round %4 : tensor<6x4x6xf32>
          %alloc_40 = memref.alloc() : memref<3xi1>
          memref.tensor_store %3, %alloc_40 : memref<3xi1>
          %303 = arith.minf %cst_1, %cst_1 : f32
          %304 = arith.minsi %in, %c1296049304_i32 : i32
          %305 = arith.divf %cst, %cst : f16
          %306 = arith.remf %cst_0, %cst_0 : f16
          %307 = math.ctlz %14 : tensor<4x3xi32>
          %308 = arith.andi %c13561_i16, %27 : i16
          %309 = arith.remf %cst_1, %cst_1 : f32
          %collapsed_41 = tensor.collapse_shape %7 [[0, 1]] : tensor<4x3xi16> into tensor<12xi16>
          %310 = arith.mulf %cst_1, %cst_1 : f32
          %311 = vector.bitcast %125 : vector<3xi1> to vector<3xi1>
          %312 = memref.load %alloc_17[%c1, %c2, %c5] : memref<3x6x6xf32>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %274 = vector.transpose %114, [0] : vector<3xf16> to vector<3xf16>
      %275 = math.copysign %2, %2 : tensor<4x3xf16>
      %276 = arith.floordivsi %c1049580416_i32, %c130554928_i32 : i32
      vector.print %113 : vector<3xi1>
      %277 = arith.minui %extracted, %c-29224_i16 : i16
      %278 = vector.splat %c130554928_i32 : vector<6x4x6xi32>
      %279 = memref.realloc %alloc_14 : memref<3xi32> to memref<4xi32>
      %280 = arith.maxsi %c1909637028_i64, %c1_i64 : i64
      %281 = arith.cmpf false, %cst_0, %cst_0 : f16
      scf.yield
    }
    %129 = math.ipowi %c1519752392_i64, %81 : i64
    %130 = vector.insertelement %false, %125[%c1 : index] : vector<3xi1>
    %131 = math.expm1 %15 : tensor<4x3xf32>
    %132 = vector.extract %123[0] : vector<3xf16>
    %133 = math.round %4 : tensor<6x4x6xf32>
    %134 = math.floor %2 : tensor<4x3xf16>
    %cast_23 = tensor.cast %expanded : tensor<4x3x1xi1> to tensor<?x?x?xi1>
    %135 = index.sizeof
    %136 = index.ceildivs %c14, %34
    %137 = vector.splat %cst : vector<4x3xf16>
    memref.assume_alignment %alloc_3, 16 : memref<6x4x6xi16>
    %138 = arith.shrsi %c9300_i16, %99 : i16
    %139 = tensor.empty(%c8) : tensor<?x6x3xi64>
    %140 = math.atan %2 : tensor<4x3xf16>
    %141 = arith.remf %cst, %cst_0 : f16
    %142 = math.log1p %15 : tensor<4x3xf32>
    %143 = math.cttz %c1296049304_i32 : i32
    %144 = scf.execute_region -> tensor<4x3xi1> {
      %267 = vector.insertelement %cst_0, %90[%103 : index] : vector<4xf16>
      %268 = vector.broadcast %c1296049304_i32 : i32 to vector<15xi32>
      %269 = vector.broadcast %false : i1 to vector<15xi1>
      %270 = vector.maskedload %alloc_16[%c2], %269, %268 : memref<3xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %271 = math.round %cst : f16
      %272 = vector.broadcast %26 : index to vector<15xindex>
      vector.scatter %alloc_9[%c5, %c0, %c5] [%272], %269, %269 : memref<6x4x6xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %273 = vector.transpose %123, [0] : vector<3xf16> to vector<3xf16>
      %274 = vector.extract %269[0] : vector<15xi1>
      %275 = vector.reduction <maxui>, %20 : vector<4xi16> into i16
      %276 = math.atan %15 : tensor<4x3xf32>
      %277 = memref.atomic_rmw mins %c52229187_i32, %alloc_11[%c0, %c5, %c1] : (i32, memref<6x6x3xi32>) -> i32
      %278 = arith.maxui %66, %c9300_i16 : i16
      %inserted_37 = tensor.insert %c1296049304_i32 into %5[%c0] : tensor<3xi32>
      memref.assume_alignment %alloc_8, 4 : memref<4x3xi64>
      %279 = arith.subi %c130554928_i32, %c130554928_i32 : i32
      %280 = vector.broadcast %cst_1 : f32 to vector<f32>
      %281 = vector.transfer_write %280, %15[%103, %62] : vector<f32>, tensor<4x3xf32>
      %282 = tensor.empty() : tensor<4x3xi32>
      %283 = arith.divui %27, %c9300_i16 : i16
      scf.yield %10 : tensor<4x3xi1>
    }
    memref.assume_alignment %alloc_5, 8 : memref<6x4x6xf32>
    %145 = vector.broadcast %true : i1 to vector<i1>
    %146 = vector.transfer_write %145, %10[%41, %c12] : vector<i1>, tensor<4x3xi1>
    %147 = scf.execute_region -> memref<6x6x3xi16> {
      %267 = index.add %c6, %41
      %268 = arith.subi %109, %81 : i64
      memref.store %c130554928_i32, %alloc_14[%c1] : memref<3xi32>
      %269 = math.tanh %cst_0 : f16
      %270 = index.divu %c5, %126
      %271 = vector.load %70[%c3, %c2] : memref<4x3xi16>, vector<6x4x6xi16>
      %272 = vector.transpose %145, [] : vector<i1> to vector<i1>
      %273 = index.floordivs %c10, %c9
      %274 = vector.insertelement %cst_0, %90[%c4 : index] : vector<4xf16>
      %alloc_37 = memref.alloc() : memref<4x3xf32>
      memref.tensor_store %15, %alloc_37 : memref<4x3xf32>
      %275 = index.sub %103, %c11
      memref.assume_alignment %alloc_9, 8 : memref<6x4x6xi1>
      %276 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %277 = vector.broadcast %true : i1 to vector<4xi1>
      %278 = vector.maskedload %alloc_5[%c1, %c0, %c4], %277, %276 : memref<6x4x6xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %279 = arith.remui %c1049580416_i32, %c1049580416_i32 : i32
      affine.store %c1296049304_i32, %alloc_2[%c14, %c11, %c15] : memref<6x6x3xi32>
      %280 = vector.transpose %100, [1, 0] : vector<3x3xi1> to vector<3x3xi1>
      scf.yield %alloc_4 : memref<6x6x3xi16>
    }
    vector.print %20 : vector<4xi16>
    %148 = arith.shrui %true, %true : i1
    %149 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<6x4x6xf32>) {
    ^bb0(%out: f32):
      %267 = vector.load %alloc_14[%c2] : memref<3xi32>, vector<4x3xi32>
      %268 = math.expm1 %cst_0 : f16
      %269 = arith.remf %cst_0, %cst_0 : f16
      %270 = arith.negf %cst_1 : f32
      %271 = arith.remf %cst, %cst_0 : f16
      %272 = arith.muli %109, %c1519752392_i64 : i64
      %273 = math.expm1 %4 : tensor<6x4x6xf32>
      %274 = affine.if affine_set<(d0, d1, d2) : (d1 - (d1 + d2 + d0 - 1) floordiv 64 + (d2 + d0 - 1) mod 128 + d2 + d0 - 1 == 0, (d2 + d0 - 1) mod 128 + d0 >= 0, ((d2 + d0 - 1) floordiv 64) * 32 == 0)>(%c5, %c7, %c1) -> memref<6x6x3xi16> {
        %297 = arith.divf %cst_0, %cst : f16
        %298 = math.ipowi %10, %12 : tensor<4x3xi1>
        %299 = index.sub %98, %c10
        %cst_40 = arith.constant 1.000000e+00 : f32
        %cst_41 = arith.constant 0.000000e+00 : f32
        %300 = vector.transfer_read %alloc_17[%c5, %c6, %107], %cst_41 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : memref<3x6x6xf32>, vector<6x3xf32>
        %301 = vector.load %alloc_13[%c0] : memref<3xf16>, vector<6x6x3xf16>
        %302 = math.round %cst_1 : f32
        %303 = arith.divui %109, %81 : i64
        %inserted_42 = tensor.insert %c1519752392_i64 into %13[%c0] : tensor<3xi64>
        affine.yield %alloc_4 : memref<6x6x3xi16>
      } else {
        %297 = vector.splat %99 : vector<6x4x6xi16>
        %298 = arith.divsi %extracted, %99 : i16
        %299 = arith.maxsi %c13561_i16, %66 : i16
        %300 = arith.xori %c13561_i16, %66 : i16
        %301 = arith.floordivsi %27, %99 : i16
        %302 = index.ceildivs %c5, %c1
        memref.assume_alignment %147, 2 : memref<6x6x3xi16>
        %303 = arith.maxf %out, %cst_1 : f32
        affine.yield %147 : memref<6x6x3xi16>
      }
      %275 = math.atan %4 : tensor<6x4x6xf32>
      %c0_i64 = arith.constant 0 : i64
      %276 = vector.transfer_read %17[%c4], %c0_i64 : tensor<3xi64>, vector<i64>
      %277 = affine.max affine_map<(d0, d1) -> (d0 ceildiv 2 - 6, 8, d1, d0 ceildiv 2 + 2)>(%c5, %39)
      %alloc_37 = memref.alloc() : memref<4x3xi1>
      memref.tensor_store %12, %alloc_37 : memref<4x3xi1>
      %278 = arith.minf %cst_0, %cst_0 : f16
      %279 = math.atan2 %4, %4 : tensor<6x4x6xf32>
      %280 = math.round %15 : tensor<4x3xf32>
      %281 = memref.load %alloc_13[%c1] : memref<3xf16>
      %282 = arith.maxui %109, %c1519752392_i64 : i64
      %283 = memref.alloca_scope  -> (memref<6x6x3xf16>) {
        %297 = index.maxu %136, %24
        %298 = index.maxu %c14, %62
        %299 = math.log2 %cst : f16
        %300 = math.absf %15 : tensor<4x3xf32>
        %301 = vector.broadcast %out : f32 to vector<3xf32>
        %302 = memref.atomic_rmw minf %cst, %alloc_15[%c1] : (f16, memref<3xf16>) -> f16
        %303 = index.maxu %47, %c11
        %304 = math.exp %cst : f16
        %305 = arith.remf %cst, %cst : f16
        %306 = affine.apply affine_map<(d0) -> (((-d0) floordiv 4) mod 32)>(%26)
        %307 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %125, %113, %false : vector<3xi1>, vector<3xi1> into i1
        %308 = arith.remf %cst_1, %cst_1 : f32
        %309 = arith.ceildivsi %c9300_i16, %extracted : i16
        %310 = tensor.empty(%89, %c11) : tensor<?x?xi1>
        %311 = arith.remf %cst_0, %cst : f16
        %312 = arith.maxsi %c1982931414_i64, %c0_i64 : i64
        %313 = arith.remf %cst, %cst : f16
        %314 = index.ceildivs %c8, %84
        %315 = arith.divf %cst_0, %cst_0 : f16
        %316 = index.maxs %c15, %135
        %317 = arith.muli %c1519752392_i64, %c1847384886_i64 : i64
        %318 = math.atan %2 : tensor<4x3xf16>
        %319 = arith.subi %false, %true : i1
        %320 = vector.load %alloc_9[%c5, %c2, %c2] : memref<6x4x6xi1>, vector<3xi1>
        %321 = vector.bitcast %121 : vector<3xi32> to vector<3xi32>
        %322 = vector.broadcast %c1519752392_i64 : i64 to vector<i64>
        %323 = vector.transfer_write %322, %13[%103] : vector<i64>, tensor<3xi64>
        %324 = math.log2 %cst_1 : f32
        %325 = arith.minf %cst_0, %cst_0 : f16
        %326 = math.log1p %0 : tensor<6x6x3xf32>
        %327 = math.cttz %true : i1
        %collapsed_40 = tensor.collapse_shape %10 [[0, 1]] : tensor<4x3xi1> into tensor<12xi1>
        %dest_41, %accumulated_value_42 = vector.scan <minui>, %267, %120 {inclusive = true, reduction_dim = 0 : i64} : vector<4x3xi32>, vector<3xi32>
        %alloc_43 = memref.alloc() : memref<6x6x3xf16>
        memref.alloca_scope.return %alloc_43 : memref<6x6x3xf16>
      }
      %284 = arith.remsi %c1519752392_i64, %c1909637028_i64 : i64
      %285 = arith.minf %cst, %cst : f16
      %286 = math.ctlz %c130554928_i32 : i32
      %287 = bufferization.clone %70 : memref<4x3xi16> to memref<4x3xi16>
      %288 = arith.divui %c1519752392_i64, %109 : i64
      %289 = vector.multi_reduction <maxui>, %20, %99 [0] : vector<4xi16> to i16
      %290 = arith.divui %66, %c13561_i16 : i16
      %expanded_38 = tensor.expand_shape %13 [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
      %291 = vector.matrix_multiply %123, %90 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 4 : i32} : (vector<3xf16>, vector<4xf16>) -> vector<12xf16>
      %292 = index.ceildivs %107, %c14
      %293 = math.atan2 %2, %2 : tensor<4x3xf16>
      %294 = vector.broadcast %cst_1 : f32 to vector<4x3xf32>
      %295 = vector.fma %294, %294, %294 : vector<4x3xf32>
      %inserted_39 = tensor.insert %false into %12[%c0, %c0] : tensor<4x3xi1>
      %296 = vector.broadcast %c13561_i16 : i16 to vector<6x6x3xi16>
      linalg.yield %out : f32
    } -> tensor<6x4x6xf32>
    %150 = arith.shli %c1847384886_i64, %109 : i64
    %151 = scf.while (%arg2 = %alloc_2) : (memref<6x6x3xi32>) -> memref<6x6x3xi32> {
      %267 = vector.reduction <maxsi>, %20 : vector<4xi16> into i16
      %268 = vector.create_mask %c0, %c12, %c7 : vector<6x6x3xi1>
      %269 = bufferization.clone %alloc : memref<6x4x6xi64> to memref<6x4x6xi64>
      %270 = tensor.empty() : tensor<6x6x3xi16>
      %271 = affine.for %arg3 = 0 to 111 iter_args(%arg4 = %83) -> (vector<4xf16>) {
        affine.yield %90 : vector<4xf16>
      }
      %272 = vector.insert %125, %268 [1, 1] : vector<3xi1> into vector<6x6x3xi1>
      %273 = vector.broadcast %c1049580416_i32 : i32 to vector<3xi32>
      %274 = arith.xori %c1982931414_i64, %109 : i64
      scf.condition(%false) %alloc_2 : memref<6x6x3xi32>
    } do {
    ^bb0(%arg2: memref<6x6x3xi32>):
      %267 = math.sqrt %4 : tensor<6x4x6xf32>
      %268 = index.sub %103, %c2
      %c1442880898_i32 = arith.constant 1442880898 : i32
      scf.execute_region {
        %282 = vector.reduction <maxf>, %112 : vector<3xf16> into f16
        %283 = arith.mulf %cst, %cst_0 : f16
        %collapsed_37 = tensor.collapse_shape %cast_18 [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
        %284 = arith.minui %81, %c1847384886_i64 : i64
        %285 = affine.load %alloc_13[%c3] : memref<3xf16>
        %286 = index.ceildivu %103, %56
        %inserted_38 = tensor.insert %c1049580416_i32 into %from_elements[%c0] : tensor<3xi32>
        %287 = math.cttz %66 : i16
        %288 = arith.cmpf uge, %cst, %cst_0 : f16
        %289 = bufferization.to_tensor %alloc_13 : memref<3xf16>
        %290 = arith.minui %c1296049304_i32, %c52229187_i32 : i32
        %291 = math.tanh %0 : tensor<6x6x3xf32>
        %292 = vector.matrix_multiply %114, %123 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
        %293 = vector.create_mask %93, %c6 : vector<4x3xi1>
        %294 = index.divs %c14, %c4
        %295 = index.divu %c11, %103
        scf.yield
      }
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %113, %125, %false : vector<3xi1>, vector<3xi1> into i1
      %270 = math.tanh %15 : tensor<4x3xf32>
      %271 = arith.shli %c1847384886_i64, %81 : i64
      %272 = vector.broadcast %cst : f16 to vector<3x3xf16>
      %273 = vector.outerproduct %114, %123, %272 {kind = #vector.kind<add>} : vector<3xf16>, vector<3xf16>
      %274 = affine.apply affine_map<(d0, d1) -> (d1 + 64)>(%93, %39)
      %275 = math.log10 %15 : tensor<4x3xf32>
      %276 = vector.flat_transpose %125 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %277 = arith.muli %c130554928_i32, %c52229187_i32 : i32
      %278 = vector.broadcast %c52229187_i32 : i32 to vector<6x4x6xi32>
      %279 = vector.splat %27 : vector<3xi16>
      %280 = affine.max affine_map<(d0, d1) -> ((d1 + 8) floordiv 32, (d0 ceildiv 4 - d1) ceildiv 32)>(%c6, %274)
      %281 = math.round %15 : tensor<4x3xf32>
      scf.yield %30 : memref<6x6x3xi32>
    }
    %inserted_24 = tensor.insert %cst_1 into %4[%c3, %c0, %c3] : tensor<6x4x6xf32>
    %152 = vector.reduction <minui>, %125 : vector<3xi1> into i1
    %153 = math.round %4 : tensor<6x4x6xf32>
    %154 = arith.minf %cst_1, %cst_1 : f32
    %155 = math.round %0 : tensor<6x6x3xf32>
    %156 = scf.while (%arg2 = %109) : (i64) -> i64 {
      %267 = index.divs %107, %62
      %268 = vector.insertelement %true, %125[%c1 : index] : vector<3xi1>
      %269 = affine.apply affine_map<(d0, d1) -> (-((d1 ceildiv 128) mod 8))>(%29, %47)
      %270 = bufferization.clone %alloc_10 : memref<4x3xi16> to memref<4x3xi16>
      %from_elements_37 = tensor.from_elements %false, %false, %true : tensor<3xi1>
      %271 = arith.remui %c1909637028_i64, %109 : i64
      %272 = bufferization.to_tensor %alloc_8 : memref<4x3xi64>
      %273 = scf.execute_region -> index {
        %274 = bufferization.clone %alloc_7 : memref<6x6x3xf32> to memref<6x6x3xf32>
        %cast_38 = tensor.cast %1 : tensor<6x4x6xi16> to tensor<?x?x?xi16>
        %275 = math.ceil %15 : tensor<4x3xf32>
        %276 = math.atan %2 : tensor<4x3xf16>
        %277 = math.log1p %4 : tensor<6x4x6xf32>
        %278 = arith.floordivsi %true, %true : i1
        %279 = math.log1p %cst : f16
        %280 = arith.shli %c52229187_i32, %c52229187_i32 : i32
        %281 = math.ceil %15 : tensor<4x3xf32>
        %282 = arith.remui %extracted, %c-29224_i16 : i16
        %c1824779759_i32 = arith.constant 1824779759 : i32
        %283 = arith.ori %c1982931414_i64, %c1847384886_i64 : i64
        %284 = arith.remf %cst_1, %cst_1 : f32
        %285 = vector.broadcast %c9300_i16 : i16 to vector<6xi16>
        %286 = vector.broadcast %true : i1 to vector<6xi1>
        %287 = vector.maskedload %alloc_4[%c3, %c5, %c1], %286, %285 : memref<6x6x3xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %288 = vector.broadcast %103 : index to vector<15xindex>
        %289 = vector.broadcast %false : i1 to vector<15xi1>
        %290 = vector.broadcast %c9300_i16 : i16 to vector<15xi16>
        vector.scatter %alloc_6[%c0, %c2] [%288], %289, %290 : memref<4x3xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
        %291 = math.powf %cst_0, %cst : f16
        scf.yield %c12 : index
      }
      scf.condition(%false) %c1909637028_i64 : i64
    } do {
    ^bb0(%arg2: i64):
      %267 = index.castu %c9300_i16 : i16 to index
      %268 = scf.execute_region -> memref<6x4x6xi1> {
        %inserted_37 = tensor.insert %27 into %7[%c3, %c0] : tensor<4x3xi16>
        vector.print %113 : vector<3xi1>
        %283 = vector.multi_reduction <xor>, %38, %true [0, 1] : vector<4x3xi1> to i1
        %284 = vector.load %alloc_9[%c5, %c0, %c1] : memref<6x4x6xi1>, vector<4x3xi1>
        %285 = arith.negf %cst_0 : f16
        %286 = index.floordivs %c2, %126
        %287 = memref.load %alloc_17[%c1, %c5, %c4] : memref<3x6x6xf32>
        %288 = math.ctlz %true : i1
        vector.print %112 : vector<3xf16>
        %289 = arith.shrsi %27, %c9300_i16 : i16
        %290 = memref.load %alloc_7[%c3, %c3, %c1] : memref<6x6x3xf32>
        %inserted_38 = tensor.insert %c130554928_i32 into %from_elements[%c1] : tensor<3xi32>
        memref.assume_alignment %alloc_5, 16 : memref<6x4x6xf32>
        %291 = vector.insertelement %cst, %83[%c11 : index] : vector<4xf16>
        %cst_39 = arith.constant 1.000000e+00 : f32
        %cst_40 = arith.constant 0.000000e+00 : f32
        %292 = vector.transfer_read %4[%136, %c12, %c8], %cst_40 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x4x6xf32>, vector<4xf32>
        %293 = arith.maxsi %c52229187_i32, %c52229187_i32 : i32
        scf.yield %alloc_9 : memref<6x4x6xi1>
      }
      %269 = math.log %2 : tensor<4x3xf16>
      %270 = math.ipowi %9, %14 : tensor<4x3xi32>
      %271 = arith.divsi %arg2, %109 : i64
      %272 = arith.ceildivsi %extracted, %c-29224_i16 : i16
      %273 = vector.transpose %38, [0, 1] : vector<4x3xi1> to vector<4x3xi1>
      %274 = math.cttz %false : i1
      %275 = index.maxs %41, %47
      %276 = vector.reduction <maxui>, %125 : vector<3xi1> into i1
      %277 = affine.apply affine_map<(d0) -> ((d0 - 16) * 16)>(%47)
      memref.assume_alignment %268, 8 : memref<6x4x6xi1>
      %278 = math.atan2 %0, %0 : tensor<6x6x3xf32>
      %279 = arith.divui %c1847384886_i64, %81 : i64
      %280 = vector.broadcast %c52229187_i32 : i32 to vector<3x3xi32>
      %281 = vector.outerproduct %121, %120, %280 {kind = #vector.kind<maxui>} : vector<3xi32>, vector<3xi32>
      %282 = affine.if affine_set<(d0, d1, d2) : (d2 mod 2 >= 0)>(%c1, %c11, %c2) -> i16 {
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %83, %83, %cst_0 : vector<4xf16>, vector<4xf16> into f16
        %284 = math.round %cst : f16
        %285 = math.exp %0 : tensor<6x6x3xf32>
        %286 = arith.remf %cst_0, %cst : f16
        %287 = index.divs %41, %136
        %288 = vector.broadcast %c52229187_i32 : i32 to vector<6x6x3xi32>
        vector.print %83 : vector<4xf16>
        %289 = vector.shuffle %112, %114 [2, 5] : vector<3xf16>, vector<3xf16>
        affine.yield %c-29224_i16 : i16
      } else {
        %283 = arith.divsi %extracted, %27 : i16
        %284 = vector.broadcast %cst_1 : f32 to vector<4x3xf32>
        %285 = vector.fma %284, %284, %284 : vector<4x3xf32>
        %286 = arith.minf %cst, %cst : f16
        %287 = index.floordivs %c6, %80
        %288 = arith.divf %cst_1, %cst_1 : f32
        %289 = index.ceildivs %24, %126
        %290 = arith.shli %false, %false : i1
        %291 = arith.maxsi %c1296049304_i32, %c1049580416_i32 : i32
        affine.yield %c13561_i16 : i16
      }
      scf.yield %arg2 : i64
    }
    %from_elements_25 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<4x3xf32>
    %dest, %accumulated_value = vector.scan <add>, %100, %125 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi1>, vector<3xi1>
    %157 = arith.shrsi %c1909637028_i64, %109 : i64
    %158 = tensor.empty() : tensor<4x3xi1>
    %mapped_26 = linalg.map ins(%10 : tensor<4x3xi1>) outs(%158 : tensor<4x3xi1>)
      (%in: i1) {
        %267 = index.maxs %93, %c6
        %268 = index.mul %89, %34
        %269 = index.sub %84, %c4
        %from_elements_37 = tensor.from_elements %66, %c13561_i16, %c9300_i16, %66, %extracted, %c9300_i16, %c13561_i16, %99, %66, %c13561_i16, %c9300_i16, %27 : tensor<4x3xi16>
        %270 = index.divs %39, %39
        %271 = arith.divf %cst, %cst_0 : f16
        %272 = math.cos %cst_1 : f32
        %273 = memref.realloc %alloc_16 : memref<3xi32> to memref<3xi32>
        %274 = scf.while (%arg2 = %alloc_11) : (memref<6x6x3xi32>) -> memref<6x6x3xi32> {
          %297 = vector.insertelement %cst_0, %90[%c1 : index] : vector<4xf16>
          %298 = math.floor %0 : tensor<6x6x3xf32>
          memref.store %cst_0, %alloc_13[%c1] : memref<3xf16>
          %299 = math.floor %cst : f16
          %300 = vector.insertelement %c-29224_i16, %20[%47 : index] : vector<4xi16>
          %301 = math.log %from_elements_25 : tensor<4x3xf32>
          %302 = arith.addi %c1982931414_i64, %c1519752392_i64 : i64
          %303 = math.log10 %15 : tensor<4x3xf32>
          scf.condition(%false) %30 : memref<6x6x3xi32>
        } do {
        ^bb0(%arg2: memref<6x6x3xi32>):
          %297 = arith.remsi %c1982931414_i64, %109 : i64
          %298 = math.roundeven %15 : tensor<4x3xf32>
          %299 = index.floordivs %89, %c6
          %alloc_40 = memref.alloc() : memref<6x6x3xi1>
          %300 = vector.broadcast %false : i1 to vector<6x6x3xi1>
          %301 = vector.broadcast %c130554928_i32 : i32 to vector<6x6x3xi32>
          %302 = vector.gather %alloc_40[%40, %c3, %268] [%301], %300, %300 : memref<6x6x3xi1>, vector<6x6x3xi32>, vector<6x6x3xi1>, vector<6x6x3xi1> into vector<6x6x3xi1>
          %303 = math.log2 %4 : tensor<6x4x6xf32>
          %304 = index.floordivs %107, %c8
          %305 = vector.flat_transpose %112 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
          %306 = math.expm1 %cst_1 : f32
          %307 = vector.multi_reduction <add>, %123, %305 [] : vector<3xf16> to vector<3xf16>
          %308 = vector.matrix_multiply %112, %114 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
          %309 = arith.andi %c13561_i16, %99 : i16
          %310 = vector.broadcast %c7 : index to vector<3xindex>
          %311 = vector.broadcast %c13561_i16 : i16 to vector<3xi16>
          vector.scatter %147[%c3, %c4, %c2] [%310], %125, %311 : memref<6x6x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
          %312 = arith.andi %c52229187_i32, %c52229187_i32 : i32
          %313 = math.cttz %c1519752392_i64 : i64
          %314 = vector.broadcast %c130554928_i32 : i32 to vector<15xi32>
          %315 = vector.broadcast %in : i1 to vector<15xi1>
          %316 = vector.maskedload %alloc_14[%c1], %315, %314 : memref<3xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
          %317 = math.cos %0 : tensor<6x6x3xf32>
          scf.yield %alloc_11 : memref<6x6x3xi32>
        }
        %from_elements_38 = tensor.from_elements %66, %66, %66, %66, %66, %66, %27, %c-29224_i16, %c13561_i16, %99, %c13561_i16, %c-29224_i16, %c13561_i16, %c13561_i16, %27, %c9300_i16, %extracted, %27, %c9300_i16, %27, %c-29224_i16, %extracted, %extracted, %27, %99, %c9300_i16, %extracted, %c13561_i16, %c9300_i16, %27, %c9300_i16, %99, %99, %99, %c13561_i16, %extracted, %66, %c9300_i16, %99, %c13561_i16, %27, %c9300_i16, %66, %99, %c-29224_i16, %27, %c-29224_i16, %66, %c-29224_i16, %66, %27, %c13561_i16, %66, %99, %c9300_i16, %extracted, %extracted, %c9300_i16, %c9300_i16, %c13561_i16, %c9300_i16, %c13561_i16, %c-29224_i16, %99, %66, %c-29224_i16, %99, %c13561_i16, %66, %extracted, %c-29224_i16, %c9300_i16, %extracted, %66, %extracted, %99, %c13561_i16, %c13561_i16, %27, %c9300_i16, %extracted, %99, %66, %c13561_i16, %99, %c9300_i16, %extracted, %27, %c13561_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %c-29224_i16, %c9300_i16, %extracted, %extracted, %c13561_i16, %66, %27, %27, %extracted, %66, %66, %extracted, %c-29224_i16, %c-29224_i16, %c-29224_i16, %99, %27, %extracted, %extracted, %c13561_i16, %99, %extracted, %66, %66, %99, %extracted, %c13561_i16, %c-29224_i16, %99, %c13561_i16, %c-29224_i16, %99, %66, %c9300_i16, %c9300_i16, %66, %c-29224_i16, %extracted, %27, %extracted, %c13561_i16, %27, %extracted, %c13561_i16, %c-29224_i16, %66, %extracted, %27, %27, %c13561_i16, %99, %27 : tensor<6x4x6xi16>
        %275 = arith.remf %cst_1, %cst_1 : f32
        %276 = math.expm1 %from_elements_25 : tensor<4x3xf32>
        memref.assume_alignment %alloc_7, 2 : memref<6x6x3xf32>
        %277 = arith.maxsi %27, %c9300_i16 : i16
        %278 = arith.divui %false, %false : i1
        %279 = arith.mulf %cst, %cst_0 : f16
        %280 = vector.broadcast %true : i1 to vector<4xi1>
        %281 = vector.maskedload %alloc_13[%c2], %280, %90 : memref<3xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %282 = math.cttz %9 : tensor<4x3xi32>
        %283 = arith.cmpf ueq, %cst_0, %cst_0 : f16
        %284 = math.cos %0 : tensor<6x6x3xf32>
        %285 = affine.max affine_map<(d0, d1) -> ((d1 - 8) ceildiv 8 - d1 ceildiv 8)>(%267, %c12)
        %286 = tensor.empty() : tensor<4x3xi32>
        %287 = math.cos %15 : tensor<4x3xf32>
        %288 = math.round %2 : tensor<4x3xf16>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %281, %281, %cst_0 : vector<4xf16>, vector<4xf16> into f16
        %290 = math.ipowi %16, %13 : tensor<3xi64>
        %291 = arith.addf %cst_1, %cst_1 : f32
        %292 = math.round %2 : tensor<4x3xf16>
        %293 = vector.maskedload %30[%c1, %c4, %c2], %125, %120 : memref<6x6x3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %294 = arith.xori %c130554928_i32, %c1049580416_i32 : i32
        %295 = index.divs %107, %39
        %296 = math.ceil %0 : tensor<6x6x3xf32>
        %true_39 = arith.constant true
        linalg.yield %true_39 : i1
      }
    %159 = math.atan2 %from_elements_25, %15 : tensor<4x3xf32>
    %160 = vector.create_mask %39, %c13 : vector<4x3xi1>
    %161 = tensor.empty() : tensor<6x6x3xi64>
    %162 = arith.minf %cst_0, %cst : f16
    %163 = arith.minsi %c52229187_i32, %c1296049304_i32 : i32
    %inserted_27 = tensor.insert %true into %12[%c2, %c2] : tensor<4x3xi1>
    %164 = math.log1p %15 : tensor<4x3xf32>
    %165 = scf.while (%arg2 = %cst) : (f16) -> f16 {
      %267 = vector.bitcast %121 : vector<3xi32> to vector<3xi32>
      %268 = math.ctlz %81 : i64
      %269 = math.tanh %4 : tensor<6x4x6xf32>
      %alloc_37 = memref.alloc() : memref<i1>
      memref.tensor_store %23, %alloc_37 : memref<i1>
      %270 = arith.maxsi %c13561_i16, %27 : i16
      %271 = math.exp %from_elements_25 : tensor<4x3xf32>
      %272 = math.exp %4 : tensor<6x4x6xf32>
      %273 = arith.minsi %27, %99 : i16
      scf.condition(%false) %arg2 : f16
    } do {
    ^bb0(%arg2: f16):
      %267 = math.ctpop %c1519752392_i64 : i64
      %268 = math.round %2 : tensor<4x3xf16>
      %269 = memref.alloca_scope  -> (memref<4x3xi1>) {
        %284 = index.divs %39, %c13
        %285 = arith.remui %c1049580416_i32, %c1296049304_i32 : i32
        %286 = vector.broadcast %56 : index to vector<4xindex>
        %287 = vector.broadcast %false : i1 to vector<4xi1>
        vector.scatter %alloc_15[%c2] [%286], %287, %90 : memref<3xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %288 = math.sqrt %4 : tensor<6x4x6xf32>
        %289 = vector.insertelement %cst_0, %114[%98 : index] : vector<3xf16>
        %290 = index.floordivs %40, %47
        %291 = arith.divui %c9300_i16, %99 : i16
        %292 = math.expm1 %4 : tensor<6x4x6xf32>
        %293 = index.divs %c7, %93
        %collapsed_37 = tensor.collapse_shape %10 [[0, 1]] : tensor<4x3xi1> into tensor<12xi1>
        %294 = math.floor %cst_1 : f32
        %295 = vector.broadcast %cst_1 : f32 to vector<6x4x6xf32>
        %296 = vector.fma %295, %295, %295 : vector<6x4x6xf32>
        %297 = math.atan2 %4, %4 : tensor<6x4x6xf32>
        %298 = index.maxs %c2, %290
        %299 = arith.divsi %109, %c1519752392_i64 : i64
        %300 = index.sub %26, %98
        memref.assume_alignment %alloc_4, 4 : memref<6x6x3xi16>
        affine.store %c1909637028_i64, %alloc_8[%c12, %c5] : memref<4x3xi64>
        %301 = vector.extract_strided_slice %125 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        %inserted_38 = tensor.insert %c130554928_i32 into %5[%c1] : tensor<3xi32>
        %302 = affine.apply affine_map<(d0, d1) -> (0)>(%126, %c5)
        %303 = arith.minf %cst_1, %cst_1 : f32
        %304 = math.tan %arg2 : f16
        %305 = bufferization.to_tensor %alloc_13 : memref<3xf16>
        %306 = vector.shuffle %120, %121 [0, 5] : vector<3xi32>, vector<3xi32>
        %307 = vector.insert %113, %38 [2] : vector<3xi1> into vector<4x3xi1>
        %308 = arith.addf %arg2, %cst_0 : f16
        %309 = vector.shuffle %20, %20 [0, 1, 3, 4, 6] : vector<4xi16>, vector<4xi16>
        %310 = arith.andi %109, %109 : i64
        %311 = vector.insertelement %arg2, %83[%103 : index] : vector<4xf16>
        %from_elements_39 = tensor.from_elements %c52229187_i32, %c130554928_i32, %c52229187_i32, %c52229187_i32, %c130554928_i32, %c1049580416_i32, %c52229187_i32, %c1049580416_i32, %c52229187_i32, %c130554928_i32, %c1049580416_i32, %c52229187_i32 : tensor<4x3xi32>
        %312 = vector.broadcast %c52229187_i32 : i32 to vector<15xi32>
        %313 = vector.broadcast %true : i1 to vector<15xi1>
        %314 = vector.maskedload %alloc_14[%c2], %313, %312 : memref<3xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %alloc_40 = memref.alloc() : memref<4x3xi1>
        memref.alloca_scope.return %alloc_40 : memref<4x3xi1>
      }
      %270 = scf.while (%arg3 = %113) : (vector<3xi1>) -> vector<3xi1> {
        %284 = math.absf %0 : tensor<6x6x3xf32>
        %285 = vector.shuffle %160, %100 [2, 3, 5] : vector<4x3xi1>, vector<3x3xi1>
        %286 = arith.remui %c1909637028_i64, %c1847384886_i64 : i64
        %287 = arith.maxui %c52229187_i32, %c1049580416_i32 : i32
        %288 = arith.mulf %cst, %cst : f16
        %289 = math.tan %2 : tensor<4x3xf16>
        %290 = arith.remf %cst_0, %cst : f16
        %291 = math.cos %4 : tensor<6x4x6xf32>
        scf.condition(%false) %113 : vector<3xi1>
      } do {
      ^bb0(%arg3: vector<3xi1>):
        %284 = arith.minsi %81, %c1909637028_i64 : i64
        %285 = arith.divf %cst, %arg2 : f16
        vector.print %100 : vector<3x3xi1>
        %286 = math.atan2 %from_elements_25, %15 : tensor<4x3xf32>
        %287 = vector.load %alloc_17[%c1, %c3, %c1] : memref<3x6x6xf32>, vector<3xf32>
        %288 = arith.cmpf ole, %cst, %cst_0 : f16
        %289 = vector.broadcast %c9300_i16 : i16 to vector<6x6x3xi16>
        %290 = vector.broadcast %false : i1 to vector<6x6x3xi1>
        %291 = vector.broadcast %c1296049304_i32 : i32 to vector<6x6x3xi32>
        %292 = vector.gather %8[%c0, %107] [%291], %290, %289 : tensor<4x3xi16>, vector<6x6x3xi32>, vector<6x6x3xi1>, vector<6x6x3xi16> into vector<6x6x3xi16>
        %293 = bufferization.to_memref %9 : memref<4x3xi32>
        %294 = affine.apply affine_map<(d0, d1) -> (0)>(%47, %c2)
        %295 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 64, -d2 + -d2 + d0)>(%107, %89, %24, %80)
        %296 = math.ctlz %11 : tensor<6x4x6xi64>
        %297 = math.ctlz %17 : tensor<3xi64>
        affine.store %cst_1, %alloc_5[%c4, %c6, %c0] : memref<6x4x6xf32>
        %298 = arith.shli %109, %109 : i64
        %299 = vector.broadcast %cst_1 : f32 to vector<6x6x3xf32>
        %300 = vector.gather %0[%c9, %62, %c0] [%291], %290, %299 : tensor<6x6x3xf32>, vector<6x6x3xi32>, vector<6x6x3xi1>, vector<6x6x3xf32> into vector<6x6x3xf32>
        %301 = math.expm1 %15 : tensor<4x3xf32>
        scf.yield %125 : vector<3xi1>
      }
      %271 = index.divs %c0, %34
      memref.assume_alignment %alloc_2, 4 : memref<6x6x3xi32>
      %272 = arith.remsi %c1847384886_i64, %c1847384886_i64 : i64
      %273 = tensor.empty() : tensor<3xf32>
      %274 = vector.insertelement %cst_0, %90[%c9 : index] : vector<4xf16>
      %275 = index.maxs %135, %93
      %276 = arith.mulf %cst, %cst_0 : f16
      %277 = memref.load %alloc_5[%c2, %c2, %c4] : memref<6x4x6xf32>
      %278 = memref.load %alloc_13[%c2] : memref<3xf16>
      %279 = arith.minf %cst_1, %cst_1 : f32
      %280 = vector.load %alloc_16[%c0] : memref<3xi32>, vector<6x4x6xi32>
      %281 = vector.broadcast %cst_1 : f32 to vector<6xf32>
      %282 = vector.broadcast %false : i1 to vector<6xi1>
      %283 = vector.maskedload %alloc_5[%c0, %c1, %c4], %282, %281 : memref<6x4x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      scf.yield %arg2 : f16
    }
    %166 = vector.insert %cst, %114 [1] : f16 into vector<3xf16>
    %167 = tensor.empty() : tensor<3x15xf32>
    %168 = tensor.empty() : tensor<4x15xf32>
    %169 = linalg.matmul ins(%15, %167 : tensor<4x3xf32>, tensor<3x15xf32>) outs(%168 : tensor<4x15xf32>) -> tensor<4x15xf32>
    %170 = math.absf %cst_1 : f32
    %171 = vector.broadcast %c1049580416_i32 : i32 to vector<15xi32>
    vector.transfer_write %171, %alloc_11[%c14, %40, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<15xi32>, memref<6x6x3xi32>
    %172 = vector.broadcast %cst_0 : f16 to vector<3x3xf16>
    %173 = vector.outerproduct %112, %112, %172 {kind = #vector.kind<maxf>} : vector<3xf16>, vector<3xf16>
    %174 = vector.flat_transpose %114 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
    %175 = arith.remui %c9300_i16, %c9300_i16 : i16
    %176 = index.maxs %c3, %c13
    %177 = memref.load %alloc_4[%c0, %c5, %c1] : memref<6x6x3xi16>
    %178 = index.maxu %62, %c7
    %179 = affine.max affine_map<(d0, d1, d2) -> (d2 - d0, (d2 - d0) floordiv 128 + 2)>(%126, %176, %40)
    %180 = vector.splat %c13561_i16 : vector<4x3xi16>
    %181 = tensor.empty() : tensor<4x3xi32>
    %mapped_28 = linalg.map ins(%9, %14 : tensor<4x3xi32>, tensor<4x3xi32>) outs(%181 : tensor<4x3xi32>)
      (%in: i32, %in_37: i32) {
        %267 = affine.if affine_set<(d0, d1) : ((d1 - 2) * -32 == 0, d1 == 0)>(%c11, %c7) -> memref<6x6x3xi32> {
          %298 = vector.splat %109 : vector<6x4x6xi64>
          %299 = vector.insertelement %in, %120[%176 : index] : vector<3xi32>
          %alloc_40 = memref.alloc() : memref<6x4x6xi32>
          %extracted_41 = tensor.extract %cast[%c0] : tensor<?xi64>
          %300 = math.cos %15 : tensor<4x3xf32>
          %301 = arith.ceildivsi %c1049580416_i32, %in_37 : i32
          %302 = arith.addf %cst_1, %cst_1 : f32
          vector.print %20 : vector<4xi16>
          affine.yield %30 : memref<6x6x3xi32>
        } else {
          %inserted_40 = tensor.insert %c52229187_i32 into %5[%c0] : tensor<3xi32>
          %298 = math.ceil %cst_1 : f32
          %299 = arith.shrsi %c1296049304_i32, %c52229187_i32 : i32
          %alloc_41 = memref.alloc() : memref<3xi1>
          %300 = index.mul %93, %c12
          %301 = arith.addf %cst_0, %cst_0 : f16
          affine.store %c1049580416_i32, %alloc_16[%c6] : memref<3xi32>
          %302 = math.log %15 : tensor<4x3xf32>
          affine.yield %30 : memref<6x6x3xi32>
        }
        %268 = math.exp %15 : tensor<4x3xf32>
        %269 = memref.realloc %alloc_16 : memref<3xi32> to memref<15xi32>
        %270 = vector.broadcast %cst_1 : f32 to vector<f32>
        %271 = vector.transfer_write %270, %from_elements_25[%93, %c1] : vector<f32>, tensor<4x3xf32>
        %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<6x4x6xf32>) {
        ^bb0(%out: f32):
          %from_elements_40 = tensor.from_elements %false, %true, %true, %false, %false, %false, %true, %true, %true, %true, %true, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %true, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %false, %true, %false, %false, %true, %false, %true, %false, %true, %true, %false, %true, %false, %false, %false, %true, %false, %false, %false, %false, %false, %false, %false, %false, %true, %false, %false, %false, %false, %false, %false, %false, %true, %true, %false, %false, %true, %false, %false, %true, %true, %false, %false, %false, %false, %false, %true, %true, %true, %false, %true, %true, %false, %false, %true, %true, %true, %false, %false, %true, %true, %true, %true, %true, %false, %true, %false, %false, %false, %false, %false, %false, %true, %false, %true, %true, %true, %false, %false, %false, %false, %false, %false, %false, %true, %false, %false, %true, %true, %true, %true, %true, %false, %true, %false, %true, %false, %false, %false, %false, %true, %true, %true, %true, %true : tensor<6x4x6xi1>
          %298 = arith.muli %in, %c130554928_i32 : i32
          %299 = index.divs %62, %c14
          %300 = arith.minf %cst_0, %cst_0 : f16
          %301 = vector.broadcast %cst_1 : f32 to vector<6x4xf32>
          %302 = vector.transfer_write %301, %4[%136, %c10, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x4xf32>, tensor<6x4x6xf32>
          %303 = vector.broadcast %extracted : i16 to vector<4x4xi16>
          %304 = vector.outerproduct %20, %20, %303 {kind = #vector.kind<or>} : vector<4xi16>, vector<4xi16>
          %true_41 = index.bool.constant true
          %305 = affine.load %alloc_15[%c12] : memref<3xf16>
          %306 = math.tanh %15 : tensor<4x3xf32>
          %307 = index.castu %c0 : index to i32
          %308 = vector.splat %29 : vector<6x6x3xindex>
          %c1_i32 = arith.constant 1 : i32
          %c0_i32_42 = arith.constant 0 : i32
          %309 = vector.transfer_read %14[%126, %176], %c0_i32_42 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x3xi32>, vector<4xi32>
          %310 = bufferization.clone %alloc_4 : memref<6x6x3xi16> to memref<6x6x3xi16>
          %true_43 = index.bool.constant true
          %311 = math.cos %15 : tensor<4x3xf32>
          %312 = math.log2 %cst_0 : f16
          %313 = arith.divsi %c13561_i16, %c13561_i16 : i16
          %314 = math.ctpop %6 : tensor<3xi1>
          %315 = memref.load %310[%c5, %c0, %c2] : memref<6x6x3xi16>
          %316 = arith.cmpf ugt, %cst, %cst : f16
          %317 = math.tan %cst_0 : f16
          %318 = memref.load %alloc[%c5, %c1, %c0] : memref<6x4x6xi64>
          %319 = index.maxs %107, %178
          %320 = vector.flat_transpose %125 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
          vector.print %160 : vector<4x3xi1>
          %321 = bufferization.clone %alloc_5 : memref<6x4x6xf32> to memref<6x4x6xf32>
          %322 = arith.remf %out, %out : f32
          %323 = vector.multi_reduction <minsi>, %171, %171 [] : vector<15xi32> to vector<15xi32>
          %324 = arith.cmpf oge, %cst, %cst : f16
          %325 = index.castu %109 : i64 to index
          %326 = index.floordivs %34, %c12
          %extracted_44 = tensor.extract %13[%c1] : tensor<3xi64>
          linalg.yield %out : f32
        } -> tensor<6x4x6xf32>
        %273 = arith.ori %c130554928_i32, %c1049580416_i32 : i32
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %83, %83, %cst : vector<4xf16>, vector<4xf16> into f16
        %275 = arith.ori %c-29224_i16, %c-29224_i16 : i16
        %276 = arith.shli %c52229187_i32, %in_37 : i32
        %277 = memref.load %alloc_3[%c5, %c3, %c0] : memref<6x4x6xi16>
        %alloc_38 = memref.alloc() : memref<6x6x3xi64>
        %278 = arith.shrsi %c1296049304_i32, %c130554928_i32 : i32
        %279 = math.cos %4 : tensor<6x4x6xf32>
        %280 = arith.divf %cst_1, %cst_1 : f32
        %281 = index.sub %56, %c12
        %282 = vector.bitcast %120 : vector<3xi32> to vector<3xi32>
        %283 = affine.load %alloc_12[%c7, %c12] : memref<4x3xf16>
        %284 = affine.apply affine_map<(d0, d1) -> (d1 + 64)>(%126, %98)
        %285 = math.floor %4 : tensor<6x4x6xf32>
        affine.for %arg2 = 0 to 17 {
        }
        %286 = vector.flat_transpose %121 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %287 = arith.maxsi %in, %c52229187_i32 : i32
        %288 = vector.load %alloc_11[%c1, %c0, %c2] : memref<6x6x3xi32>, vector<3xi32>
        %289 = math.expm1 %0 : tensor<6x6x3xf32>
        %290 = vector.broadcast %26 : index to vector<3xindex>
        vector.scatter %alloc_11[%c1, %c5, %c1] [%290], %113, %288 : memref<6x6x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %291 = vector.broadcast %in : i32 to vector<i32>
        vector.transfer_write %291, %alloc_16[%c15] : vector<i32>, memref<3xi32>
        %292 = math.exp %2 : tensor<4x3xf16>
        %293 = math.round %4 : tensor<6x4x6xf32>
        %294 = vector.bitcast %113 : vector<3xi1> to vector<3xi1>
        %295 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %296 = vector.fma %295, %295, %295 : vector<3xf32>
        %297 = tensor.empty() : tensor<3xi64>
        %mapped_39 = linalg.map ins(%17, %17 : tensor<3xi64>, tensor<3xi64>) outs(%297 : tensor<3xi64>)
          (%in_40: i64, %in_41: i64) {
            %298 = vector.broadcast %283 : f16 to vector<4x4xf16>
            %299 = vector.outerproduct %90, %83, %298 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
            %300 = index.maxu %c0, %47
            %301 = vector.gather %3[%176] [%286], %294, %113 : tensor<3xi1>, vector<3xi32>, vector<3xi1>, vector<3xi1> into vector<3xi1>
            %from_elements_42 = tensor.from_elements %c9300_i16, %99, %c-29224_i16 : tensor<3xi16>
            %302 = index.divu %40, %300
            %303 = math.log1p %from_elements_25 : tensor<4x3xf32>
            %304 = arith.addi %c1296049304_i32, %in : i32
            %305 = math.round %4 : tensor<6x4x6xf32>
            %306 = index.castu %56 : index to i32
            %307 = arith.floordivsi %81, %c1909637028_i64 : i64
            %308 = arith.mulf %cst, %cst : f16
            %309 = tensor.empty() : tensor<6x6x3xf16>
            %310 = vector.gather %309[%176, %80, %c1] [%288], %125, %114 : tensor<6x6x3xf16>, vector<3xi32>, vector<3xi1>, vector<3xf16> into vector<3xf16>
            %311 = arith.ceildivsi %in_37, %c52229187_i32 : i32
            %312 = arith.minf %cst, %283 : f16
            %313 = index.maxu %c8, %284
            %314 = math.floor %15 : tensor<4x3xf32>
            %315 = vector.create_mask %c7, %313, %89 : vector<6x6x3xi1>
            %316 = arith.addi %in_40, %109 : i64
            %from_elements_43 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<4x3xf32>
            %317 = arith.shli %81, %109 : i64
            %318 = vector.broadcast %cst_1 : f32 to vector<3xf32>
            %319 = vector.fma %318, %318, %318 : vector<3xf32>
            %320 = arith.negf %cst_1 : f32
            %321 = vector.multi_reduction <xor>, %301, %113 [] : vector<3xi1> to vector<3xi1>
            %322 = vector.reduction <minf>, %319 : vector<3xf32> into f32
            %323 = arith.floordivsi %c-29224_i16, %extracted : i16
            %324 = math.log10 %168 : tensor<4x15xf32>
            %325 = math.absf %15 : tensor<4x3xf32>
            %326 = arith.addf %283, %cst_0 : f16
            %327 = memref.load %alloc_8[%c1, %c0] : memref<4x3xi64>
            %328 = vector.shuffle %171, %282 [0, 1, 3, 6, 8, 9, 11, 13, 16] : vector<15xi32>, vector<3xi32>
            %329 = affine.apply affine_map<(d0, d1) -> (d0)>(%c4, %62)
            %330 = memref.realloc %alloc_13 : memref<3xf16> to memref<3xf16>
            %c0_i64 = arith.constant 0 : i64
            linalg.yield %c0_i64 : i64
          }
        memref.assume_alignment %alloc_11, 1 : memref<6x6x3xi32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %182 = math.floor %15 : tensor<4x3xf32>
    %183 = vector.broadcast %c1847384886_i64 : i64 to vector<3xi64>
    %184 = math.absf %cst_1 : f32
    %185 = index.divs %56, %93
    %186 = bufferization.to_tensor %70 : memref<4x3xi16>
    %187 = index.maxs %56, %c15
    %188 = tensor.empty() : tensor<4x3xf16>
    %mapped_29 = linalg.map ins(%2 : tensor<4x3xf16>) outs(%188 : tensor<4x3xf16>)
      (%in: f16) {
        %267 = math.rsqrt %15 : tensor<4x3xf32>
        %collapsed_37 = tensor.collapse_shape %14 [[0, 1]] : tensor<4x3xi32> into tensor<12xi32>
        vector.print %83 : vector<4xf16>
        %alloca_38 = memref.alloca() : memref<6x6x3xf32>
        %268 = arith.minf %cst_1, %cst_1 : f32
        %269 = affine.load %147[%c13, %c14, %c15] : memref<6x6x3xi16>
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %183, %183, %c1847384886_i64 : vector<3xi64>, vector<3xi64> into i64
        %271 = vector.create_mask %c0, %26, %c14 : vector<6x4x6xi1>
        %272 = math.ceil %168 : tensor<4x15xf32>
        %273 = tensor.empty() : tensor<12xi32>
        %mapped_39 = linalg.map ins(%collapsed_37, %collapsed_37, %collapsed_37 : tensor<12xi32>, tensor<12xi32>, tensor<12xi32>) outs(%273 : tensor<12xi32>)
          (%in_42: i32, %in_43: i32, %in_44: i32) {
            %294 = memref.atomic_rmw muli %c13561_i16, %alloc_6[%c2, %c1] : (i16, memref<4x3xi16>) -> i16
            %295 = index.sub %c15, %24
            %296 = vector.shuffle %123, %83 [3, 4, 6] : vector<3xf16>, vector<4xf16>
            %collapsed_45 = tensor.collapse_shape %9 [[0, 1]] : tensor<4x3xi32> into tensor<12xi32>
            %297 = math.ctpop %1 : tensor<6x4x6xi16>
            %298 = math.tanh %15 : tensor<4x3xf32>
            %299 = arith.maxsi %c-29224_i16, %c13561_i16 : i16
            %300 = affine.apply affine_map<(d0, d1) -> (d0)>(%187, %40)
            %301 = arith.ceildivsi %true, %false : i1
            %302 = arith.ori %true, %true : i1
            %303 = arith.remsi %c1909637028_i64, %109 : i64
            %304 = math.ipowi %66, %c9300_i16 : i16
            %305 = arith.muli %c52229187_i32, %c1296049304_i32 : i32
            %306 = math.expm1 %2 : tensor<4x3xf16>
            %inserted_46 = tensor.insert %cst_1 into %15[%c3, %c1] : tensor<4x3xf32>
            %307 = arith.shrsi %in_44, %in_44 : i32
            %308 = vector.create_mask %136 : vector<3xi1>
            %309 = vector.extract %38[3] : vector<4x3xi1>
            %310 = vector.broadcast %false : i1 to vector<4xi1>
            %311 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %309, %160, %310 : vector<3xi1>, vector<4x3xi1> into vector<4xi1>
            %false_47 = index.bool.constant false
            %312 = math.floor %4 : tensor<6x4x6xf32>
            %313 = index.ceildivu %39, %c7
            %314 = memref.load %alloc_12[%c0, %c2] : memref<4x3xf16>
            %315 = vector.extract %90[3] : vector<4xf16>
            %316 = affine.max affine_map<(d0, d1, d2) -> ((d2 * 2 + 8) * 2, d2 ceildiv 32, (d0 + 8) mod 32 - 64, d2)>(%84, %107, %29)
            %dest_48, %accumulated_value_49 = vector.scan <xor>, %38, %308 {inclusive = true, reduction_dim = 0 : i64} : vector<4x3xi1>, vector<3xi1>
            %317 = index.divs %c8, %26
            %318 = bufferization.to_memref %7 : memref<4x3xi16>
            %319 = arith.remsi %99, %c-29224_i16 : i16
            %320 = vector.multi_reduction <or>, %100, %100 [] : vector<3x3xi1> to vector<3x3xi1>
            %321 = vector.transpose %83, [0] : vector<4xf16> to vector<4xf16>
            %322 = bufferization.to_memref %23 : memref<i1>
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %274 = arith.cmpf ogt, %cst, %cst_0 : f16
        %275 = bufferization.to_tensor %30 : memref<6x6x3xi32>
        %276 = math.sqrt %0 : tensor<6x6x3xf32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %120, %121, %c130554928_i32 : vector<3xi32>, vector<3xi32> into i32
        %278 = memref.load %alloc_2[%c1, %c1, %c1] : memref<6x6x3xi32>
        scf.execute_region {
          %294 = affine.max affine_map<(d0, d1) -> (d0 + 2, ((d1 - 32) * 4) floordiv 128, d0 * 4, d0 * 4)>(%c14, %c4)
          %from_elements_42 = tensor.from_elements %99, %66, %99, %c-29224_i16, %269, %extracted, %c13561_i16, %66, %c9300_i16, %27, %c13561_i16, %27, %269, %extracted, %99, %269, %c-29224_i16, %269, %c9300_i16, %c-29224_i16, %extracted, %269, %66, %c13561_i16, %66, %c9300_i16, %c13561_i16, %c9300_i16, %269, %66, %c-29224_i16, %269, %269, %27, %c9300_i16, %c9300_i16, %extracted, %extracted, %27, %extracted, %99, %66, %27, %extracted, %c-29224_i16, %269, %extracted, %c9300_i16, %99, %extracted, %c13561_i16, %66, %99, %c-29224_i16, %c-29224_i16, %269, %269, %99, %269, %99, %extracted, %extracted, %27, %c-29224_i16, %c-29224_i16, %extracted, %extracted, %27, %99, %66, %99, %269, %269, %269, %c9300_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %extracted, %99, %99, %66, %extracted, %c9300_i16, %66, %27, %c9300_i16, %269, %extracted, %269, %27, %66, %269, %c9300_i16, %66, %269, %c-29224_i16, %99, %27, %66, %c-29224_i16, %c13561_i16, %c13561_i16, %c-29224_i16, %269, %extracted, %c13561_i16, %extracted : tensor<6x6x3xi16>
          %295 = index.maxs %126, %93
          %296 = arith.mulf %in, %in : f16
          %297 = memref.realloc %alloc_14 : memref<3xi32> to memref<3xi32>
          %298 = math.expm1 %cst : f16
          memref.tensor_store %7, %alloc_6 : memref<4x3xi16>
          %299 = math.floor %from_elements_25 : tensor<4x3xf32>
          %300 = math.atan2 %2, %2 : tensor<4x3xf16>
          %301 = arith.divf %cst_0, %cst : f16
          %302 = index.casts %c15 : index to i32
          %303 = vector.broadcast %cst_1 : f32 to vector<15xf32>
          %304 = vector.transfer_write %303, %168[%40, %40] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf32>, tensor<4x15xf32>
          %305 = bufferization.to_memref %273 : memref<12xi32>
          %306 = arith.maxsi %extracted, %c9300_i16 : i16
          %307 = index.maxu %98, %84
          %308 = index.divu %c0, %185
          scf.yield
        }
        %279 = arith.remf %in, %cst : f16
        %280 = arith.maxsi %c1982931414_i64, %c1909637028_i64 : i64
        %inserted_40 = tensor.insert %c130554928_i32 into %from_elements[%c2] : tensor<3xi32>
        %281 = memref.load %alloc_10[%c0, %c1] : memref<4x3xi16>
        %282 = math.ctpop %c13561_i16 : i16
        %283 = arith.addf %cst, %cst_0 : f16
        %284 = vector.insertelement %c130554928_i32, %120[%c9 : index] : vector<3xi32>
        %285 = arith.divf %cst, %cst : f16
        %286 = arith.maxsi %c1982931414_i64, %c1982931414_i64 : i64
        %287 = arith.remsi %false, %false : i1
        %288 = memref.realloc %alloc_14 : memref<3xi32> to memref<3xi32>
        %289 = math.round %in : f16
        %290 = math.absi %extracted : i16
        %291 = math.expm1 %15 : tensor<4x3xf32>
        %292 = affine.apply affine_map<(d0) -> ((-d0 + 1) * 128)>(%34)
        %293 = arith.divf %cst_0, %cst : f16
        %cst_41 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_41 : f16
      }
    %189 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d3 mod 64)>(%179, %c9, %c12, %176)
    %190 = arith.ceildivsi %81, %c1847384886_i64 : i64
    %191 = math.ipowi %12, %10 : tensor<4x3xi1>
    %inserted_30 = tensor.insert %true into %144[%c1, %c0] : tensor<4x3xi1>
    %inserted_31 = tensor.insert %cst_1 into %cast_18[%c0, %c0, %c0] : tensor<?x?x?xf32>
    %192 = arith.divui %81, %c1847384886_i64 : i64
    %193 = arith.mulf %cst_0, %cst : f16
    %inserted_32 = tensor.insert %c1909637028_i64 into %cast[%c0] : tensor<?xi64>
    bufferization.dealloc_tensor %1 : tensor<6x4x6xi16>
    %194 = arith.minsi %66, %99 : i16
    %195 = vector.broadcast %c1982931414_i64 : i64 to vector<i64>
    %196 = vector.transfer_write %195, %60[%40] : vector<i64>, tensor<3xi64>
    %197 = arith.remf %cst_0, %cst : f16
    %198 = math.exp %2 : tensor<4x3xf16>
    %199 = math.ipowi %158, %144 : tensor<4x3xi1>
    %200 = index.mul %84, %185
    %201 = vector.flat_transpose %120 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
    %202 = vector.splat %cst : vector<6x6x3xf16>
    %203 = index.castu %126 : index to i32
    %204 = index.floordivs %c0, %179
    %205 = arith.divsi %c-29224_i16, %c13561_i16 : i16
    %206 = vector.transpose %195, [] : vector<i64> to vector<i64>
    %207 = math.ceil %cst_0 : f16
    %208 = index.ceildivu %62, %89
    %209 = vector.flat_transpose %174 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
    %210 = math.exp %0 : tensor<6x6x3xf32>
    %211 = arith.negf %cst_1 : f32
    %212 = tensor.empty() : tensor<4x3xi32>
    %mapped_33 = linalg.map ins(%181, %9, %9 : tensor<4x3xi32>, tensor<4x3xi32>, tensor<4x3xi32>) outs(%212 : tensor<4x3xi32>)
      (%in: i32, %in_37: i32, %in_38: i32) {
        %267 = math.roundeven %0 : tensor<6x6x3xf32>
        %268 = arith.divui %27, %27 : i16
        %269 = index.divs %204, %29
        %270 = vector.flat_transpose %209 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %271 = math.exp %2 : tensor<4x3xf16>
        %272 = vector.broadcast %cst_1 : f32 to vector<6x4x6xf32>
        %273 = vector.fma %272, %272, %272 : vector<6x4x6xf32>
        %274 = tensor.empty(%187, %c5, %29) : tensor<?x?x?xi16>
        %275 = affine.if affine_set<(d0, d1, d2) : (d2 mod 2 >= 0)>(%c6, %c10, %c8) -> i32 {
          %296 = math.log %2 : tensor<4x3xf16>
          %297 = arith.divui %c130554928_i32, %c130554928_i32 : i32
          %298 = index.divs %c11, %56
          %299 = vector.extract %272[1, 2] : vector<6x4x6xf32>
          %300 = arith.divf %cst_0, %cst_0 : f16
          %301 = arith.mulf %cst_1, %cst_1 : f32
          %302 = math.cos %0 : tensor<6x6x3xf32>
          %303 = math.atan %cst : f16
          affine.yield %in : i32
        } else {
          %inserted_43 = tensor.insert %27 into %8[%c2, %c1] : tensor<4x3xi16>
          memref.assume_alignment %alloc_17, 8 : memref<3x6x6xf32>
          %296 = vector.load %alloc_15[%c0] : memref<3xf16>, vector<6x6x3xf16>
          %297 = index.floordivs %41, %178
          %298 = math.cttz %extracted : i16
          %299 = math.atan2 %168, %168 : tensor<4x15xf32>
          %300 = arith.remf %cst, %cst_0 : f16
          %301 = arith.remf %cst, %cst_0 : f16
          affine.yield %c1049580416_i32 : i32
        }
        %collapsed_39 = tensor.collapse_shape %8 [[0, 1]] : tensor<4x3xi16> into tensor<12xi16>
        %276 = arith.divsi %c1296049304_i32, %c130554928_i32 : i32
        %277 = arith.maxui %c-29224_i16, %66 : i16
        %278 = math.ceil %2 : tensor<4x3xf16>
        %279 = vector.reduction <minui>, %201 : vector<3xi32> into i32
        %from_elements_40 = tensor.from_elements %c52229187_i32, %in_37, %in_38 : tensor<3xi32>
        vector.print %90 : vector<4xf16>
        %280 = arith.cmpi eq, %in, %in_38 : i32
        %281 = math.floor %from_elements_25 : tensor<4x3xf32>
        %282 = arith.remsi %extracted, %27 : i16
        %283 = scf.while (%arg2 = %195) : (vector<i64>) -> vector<i64> {
          %296 = arith.addf %cst, %cst_0 : f16
          %alloc_43 = memref.alloc() : memref<4x3xi1>
          memref.tensor_store %10, %alloc_43 : memref<4x3xi1>
          %297 = math.log10 %4 : tensor<6x4x6xf32>
          %298 = arith.minf %cst, %cst : f16
          %299 = math.atan2 %0, %0 : tensor<6x6x3xf32>
          %300 = vector.flat_transpose %174 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
          %301 = vector.broadcast %66 : i16 to vector<4x3xi16>
          %302 = vector.insertelement %cst, %90[%135 : index] : vector<4xf16>
          scf.condition(%true) %195 : vector<i64>
        } do {
        ^bb0(%arg2: vector<i64>):
          %296 = vector.splat %98 : vector<6x4x6xindex>
          %297 = vector.flat_transpose %121 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
          %298 = math.sqrt %2 : tensor<4x3xf16>
          %299 = arith.subi %true, %false : i1
          %300 = memref.load %alloc[%c0, %c0, %c3] : memref<6x4x6xi64>
          %301 = arith.divf %cst_0, %cst : f16
          %302 = vector.create_mask %47 : vector<3xi1>
          %303 = vector.broadcast %extracted : i16 to vector<i16>
          %304 = vector.transfer_write %303, %7[%c6, %41] : vector<i16>, tensor<4x3xi16>
          %305 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 mod 128) ceildiv 16, d0)>(%c7, %c3, %187, %c12)
          %306 = arith.maxsi %c13561_i16, %66 : i16
          %307 = index.ceildivs %178, %c10
          %308 = vector.broadcast %cst_1 : f32 to vector<15xf32>
          vector.transfer_write %308, %alloc_17[%178, %40, %98] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<15xf32>, memref<3x6x6xf32>
          %cast_43 = tensor.cast %11 : tensor<6x4x6xi64> to tensor<?x?x?xi64>
          %c0_i32 = arith.constant 0 : i32
          %309 = vector.transfer_read %9[%c0, %24], %c0_i32 : tensor<4x3xi32>, vector<i32>
          %310 = vector.load %alloc_8[%c1, %c2] : memref<4x3xi64>, vector<3xi64>
          %311 = math.ctlz %c130554928_i32 : i32
          scf.yield %195 : vector<i64>
        }
        %284 = arith.remui %c130554928_i32, %in_38 : i32
        %c0_i16 = arith.constant 0 : i16
        %285 = vector.transfer_read %8[%c12, %208], %c0_i16 : tensor<4x3xi16>, vector<3xi16>
        affine.for %arg2 = 0 to 23 {
        }
        %286 = math.ceil %15 : tensor<4x3xf32>
        %287 = vector.multi_reduction <xor>, %113, %true [0] : vector<3xi1> to i1
        %alloc_41 = memref.alloc() : memref<4x3xf32>
        %288 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %289 = vector.gather %alloc_41[%c15, %93] [%121], %113, %288 : memref<4x3xf32>, vector<3xi32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %290 = vector.broadcast %in_37 : i32 to vector<4x3xi32>
        %291 = arith.shrui %c13561_i16, %c13561_i16 : i16
        %292 = arith.remui %81, %c1847384886_i64 : i64
        %collapsed_42 = tensor.collapse_shape %9 [[0, 1]] : tensor<4x3xi32> into tensor<12xi32>
        %293 = bufferization.to_memref %8 : memref<4x3xi16>
        %294 = arith.maxsi %c1909637028_i64, %c1847384886_i64 : i64
        %295 = tensor.empty() : tensor<4x3xi16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %213 = index.floordivs %29, %84
    %214 = index.sub %136, %c14
    %215 = index.sub %62, %c13
    %216 = math.atan %4 : tensor<6x4x6xf32>
    %217 = math.rsqrt %0 : tensor<6x6x3xf32>
    %218 = vector.splat %135 : vector<6x4x6xindex>
    %219 = vector.broadcast %false : i1 to vector<4xi1>
    %220 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %160, %113, %219 : vector<4x3xi1>, vector<3xi1> into vector<4xi1>
    %221 = index.castu %c1519752392_i64 : i64 to index
    %222 = arith.shli %true, %true : i1
    %223 = index.castu %c3 : index to i32
    %224 = vector.bitcast %90 : vector<4xf16> to vector<4xf16>
    %225 = arith.maxui %81, %81 : i64
    %226 = arith.subi %c1296049304_i32, %c130554928_i32 : i32
    %227 = math.cttz %6 : tensor<3xi1>
    %228 = index.divs %c10, %24
    %229 = arith.shrsi %extracted, %27 : i16
    %230 = index.floordivs %41, %98
    %231 = index.sub %187, %98
    %232 = arith.negf %cst : f16
    %233 = bufferization.to_tensor %147 : memref<6x6x3xi16>
    %234 = math.ctlz %6 : tensor<3xi1>
    %235 = vector.matrix_multiply %125, %125 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
    %236 = tensor.empty() : tensor<3xi32>
    %237 = bufferization.clone %alloc_12 : memref<4x3xf16> to memref<4x3xf16>
    %238 = math.cttz %104 : tensor<6x6x3xi32>
    affine.store %81, %alloc[%c14, %c14, %c15] : memref<6x4x6xi64>
    %alloc_34 = memref.alloc() : memref<3xf32>
    %239 = tensor.empty() : tensor<6x3xf32>
    %alloc_35 = memref.alloc() : memref<3x6xf32>
    %240 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_34, %239, %alloc_35 : memref<3xf32>, tensor<6x3xf32>, memref<3x6xf32>) outs(%0 : tensor<6x6x3xf32>) {
    ^bb0(%in: f32, %in_37: f32, %in_38: f32, %out: f32):
      %267 = math.round %2 : tensor<4x3xf16>
      %268 = arith.ceildivsi %109, %c1519752392_i64 : i64
      %269 = vector.flat_transpose %174 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
      %270 = math.expm1 %in_37 : f32
      %271 = bufferization.to_tensor %70 : memref<4x3xi16>
      %272 = affine.load %alloc_13[%c7] : memref<3xf16>
      %alloc_39 = memref.alloc() : memref<4x3xi1>
      memref.tensor_store %144, %alloc_39 : memref<4x3xi1>
      memref.tensor_store %0, %alloc_7 : memref<6x6x3xf32>
      %273 = vector.multi_reduction <mul>, %83, %224 [] : vector<4xf16> to vector<4xf16>
      %274 = arith.minui %c9300_i16, %66 : i16
      %275 = arith.minsi %c1296049304_i32, %c1049580416_i32 : i32
      %276 = arith.divsi %66, %c13561_i16 : i16
      %277 = math.ipowi %9, %9 : tensor<4x3xi32>
      %278 = arith.minsi %c1296049304_i32, %c130554928_i32 : i32
      %279 = arith.minf %272, %272 : f16
      %280 = arith.remf %cst, %272 : f16
      %inserted_40 = tensor.insert %extracted into %7[%c1, %c1] : tensor<4x3xi16>
      %from_elements_41 = tensor.from_elements %cst_0, %272, %cst_0, %cst, %272, %272, %cst_0, %cst, %cst, %272, %272, %272, %cst_0, %cst, %cst, %cst_0, %272, %cst_0, %272, %cst_0, %272, %cst, %272, %272, %272, %272, %cst_0, %cst_0, %cst_0, %cst_0, %272, %272, %cst, %cst_0, %272, %272, %cst, %cst, %cst, %cst_0, %272, %272, %272, %cst, %cst_0, %272, %cst_0, %272, %cst, %272, %272, %272, %cst_0, %272, %cst, %cst, %cst, %272, %cst_0, %cst_0, %272, %cst_0, %cst, %cst, %cst, %272, %272, %cst, %cst_0, %cst_0, %272, %272, %272, %272, %cst, %272, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %272, %272, %cst, %cst, %cst, %272, %cst, %cst, %272, %272, %272, %272, %cst, %cst, %cst, %cst, %cst, %272, %272, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst : tensor<6x6x3xf16>
      %281 = arith.minsi %c52229187_i32, %c1296049304_i32 : i32
      %282 = arith.xori %c1847384886_i64, %c1982931414_i64 : i64
      %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d0 + d3)>(%c13, %228, %34, %c2)
      %284 = arith.maxsi %109, %c1519752392_i64 : i64
      %285 = math.exp %2 : tensor<4x3xf16>
      %286 = vector.insertelement %c1519752392_i64, %183[%c14 : index] : vector<3xi64>
      %287 = tensor.empty(%c10, %c3, %80) : tensor<?x?x?xi64>
      %288 = math.cos %cst_1 : f32
      %289 = vector.splat %c5 : vector<3xindex>
      %290 = arith.mulf %272, %cst_0 : f16
      %291 = bufferization.clone %alloc_8 : memref<4x3xi64> to memref<4x3xi64>
      %292 = memref.alloca_scope  -> (memref<6x4x6xf32>) {
        %294 = arith.subi %c130554928_i32, %c1296049304_i32 : i32
        %295 = bufferization.to_memref %reduced : memref<i64>
        %296 = arith.negf %in_37 : f32
        %297 = index.maxu %41, %c6
        %298 = memref.load %alloc_9[%c2, %c0, %c3] : memref<6x4x6xi1>
        %299 = arith.andi %c1049580416_i32, %c1049580416_i32 : i32
        %300 = vector.broadcast %27 : i16 to vector<4x3xi16>
        %from_elements_44 = tensor.from_elements %in_38, %in_38, %in, %in_37, %in, %cst_1, %out, %out, %out, %cst_1, %out, %out : tensor<4x3xf32>
        %301 = index.divu %c5, %c9
        %302 = memref.load %alloc[%c2, %c1, %c1] : memref<6x4x6xi64>
        %alloc_45 = memref.alloc() : memref<4x3xi32>
        %303 = math.exp %15 : tensor<4x3xf32>
        %304 = math.copysign %15, %from_elements_44 : tensor<4x3xf32>
        %305 = arith.muli %66, %66 : i16
        %306 = math.exp %from_elements_44 : tensor<4x3xf32>
        %307 = index.maxs %231, %283
        %308 = arith.minui %99, %c9300_i16 : i16
        %309 = math.log2 %in_37 : f32
        %310 = arith.andi %c52229187_i32, %c52229187_i32 : i32
        %311 = math.log10 %272 : f16
        %312 = arith.divui %extracted, %99 : i16
        %313 = tensor.empty() : tensor<3xf16>
        %314 = arith.subi %c1909637028_i64, %c1909637028_i64 : i64
        %315 = bufferization.to_tensor %alloc_15 : memref<3xf16>
        %316 = math.expm1 %272 : f16
        %317 = arith.subi %27, %27 : i16
        %318 = arith.remsi %81, %c1982931414_i64 : i64
        %319 = index.castu %c1847384886_i64 : i64 to index
        %rank = tensor.rank %6 : tensor<3xi1>
        %320 = math.round %15 : tensor<4x3xf32>
        %321 = math.ctlz %271 : tensor<4x3xi16>
        %322 = vector.flat_transpose %114 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        memref.alloca_scope.return %alloc_5 : memref<6x4x6xf32>
      }
      %293 = affine.min affine_map<(d0) -> (d0 * 2 - 32, d0 + 32, d0 * 2, d0 * 2 - 32)>(%215)
      %dest_42, %accumulated_value_43 = vector.scan <minsi>, %160, %125 {inclusive = false, reduction_dim = 0 : i64} : vector<4x3xi1>, vector<3xi1>
      linalg.yield %in_38 : f32
    } -> tensor<6x6x3xf32>
    %241 = arith.remf %cst_1, %cst_1 : f32
    %242 = math.log10 %188 : tensor<4x3xf16>
    %243 = math.round %cst_0 : f16
    %244 = arith.cmpi eq, %109, %109 : i64
    %245 = arith.divf %cst_0, %cst_0 : f16
    %246 = math.ceil %cst_0 : f16
    %247 = arith.divsi %c52229187_i32, %c1049580416_i32 : i32
    %248 = math.powf %4, %4 : tensor<6x4x6xf32>
    %249 = math.log10 %168 : tensor<4x15xf32>
    vector.print %112 : vector<3xf16>
    %250 = vector.bitcast %114 : vector<3xf16> to vector<3xf16>
    %251 = affine.apply affine_map<(d0, d1) -> (d0)>(%185, %41)
    %252 = math.absi %14 : tensor<4x3xi32>
    %253 = math.ipowi %11, %11 : tensor<6x4x6xi64>
    %254 = arith.minf %cst_1, %cst_1 : f32
    %255 = vector.broadcast %221 : index to vector<4xindex>
    %256 = vector.broadcast %true : i1 to vector<4xi1>
    %257 = vector.broadcast %c1296049304_i32 : i32 to vector<4xi32>
    vector.scatter %alloc_14[%c0] [%255], %256, %257 : memref<3xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
    %258 = arith.remsi %true, %false : i1
    %259 = bufferization.clone %147 : memref<6x6x3xi16> to memref<6x6x3xi16>
    %260 = vector.broadcast %cst_1 : f32 to vector<6x4x6xf32>
    %261 = vector.fma %260, %260, %260 : vector<6x4x6xf32>
    %262 = arith.divui %c1049580416_i32, %c1296049304_i32 : i32
    %263 = tensor.empty() : tensor<3xi64>
    %264 = linalg.copy ins(%13 : tensor<3xi64>) outs(%263 : tensor<3xi64>) -> tensor<3xi64>
    %265 = tensor.empty() : tensor<3xi32>
    %transposed = linalg.transpose ins(%from_elements : tensor<3xi32>) outs(%265 : tensor<3xi32>) permutation = [0] 
    %alloc_36 = memref.alloc() : memref<4xi16>
    linalg.reduce ins(%alloc_10 : memref<4x3xi16>) outs(%alloc_36 : memref<4xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %267 = arith.divui %false, %true : i1
        %268 = math.round %0 : tensor<6x6x3xf32>
        %269 = arith.remui %99, %27 : i16
        %270 = vector.matrix_multiply %112, %83 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 4 : i32} : (vector<3xf16>, vector<4xf16>) -> vector<12xf16>
        %271 = index.divu %107, %200
        %272 = math.expm1 %cst_1 : f32
        %273 = math.atan2 %from_elements_25, %15 : tensor<4x3xf32>
        %274 = math.round %0 : tensor<6x6x3xf32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg2) = (%126) to (%c9) step (%c14) {
      %267 = arith.cmpf ueq, %cst, %cst : f16
      %268 = math.round %0 : tensor<6x6x3xf32>
      %269 = arith.mulf %cst, %cst : f16
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %c-29224_i16 : vector<4xi16>, vector<4xi16> into i16
      %271 = arith.shli %c1982931414_i64, %109 : i64
      %272 = arith.muli %false, %false : i1
      %273 = vector.shuffle %171, %201 [2, 4, 5, 6, 7, 8, 9, 10, 15] : vector<15xi32>, vector<3xi32>
      %expanded_37 = tensor.expand_shape %144 [[0], [1, 2]] : tensor<4x3xi1> into tensor<4x3x1xi1>
      %274 = index.sub %208, %204
      %275 = math.log1p %2 : tensor<4x3xf16>
      %276 = index.sub %c3, %c8
      %277 = vector.broadcast %126 : index to vector<3xindex>
      %278 = vector.broadcast %99 : i16 to vector<3xi16>
      vector.scatter %alloc_4[%c2, %c2, %c1] [%277], %125, %278 : memref<6x6x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
      %279 = memref.realloc %alloc_15 : memref<3xf16> to memref<15xf16>
      %280 = arith.shrsi %c1982931414_i64, %c1909637028_i64 : i64
      %281 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c11, %231, %107)
      %282 = math.log2 %2 : tensor<4x3xf16>
      scf.yield
    }
    %266 = affine.vector_load %alloc_11[%135, %47, %185] : memref<6x6x3xi32>, vector<15xi32>
    affine.vector_store %121, %alloc_16[%185] : memref<3xi32>, vector<3xi32>
    vector.print %20 : vector<4xi16>
    vector.print %38 : vector<4x3xi1>
    vector.print %83 : vector<4xf16>
    vector.print %90 : vector<4xf16>
    vector.print %100 : vector<3x3xi1>
    vector.print %112 : vector<3xf16>
    vector.print %113 : vector<3xi1>
    vector.print %114 : vector<3xf16>
    vector.print %120 : vector<3xi32>
    vector.print %121 : vector<3xi32>
    vector.print %123 : vector<3xf16>
    vector.print %125 : vector<3xi1>
    vector.print %145 : vector<i1>
    vector.print %160 : vector<4x3xi1>
    vector.print %171 : vector<15xi32>
    vector.print %174 : vector<3xf16>
    vector.print %183 : vector<3xi64>
    vector.print %195 : vector<i64>
    vector.print %201 : vector<3xi32>
    vector.print %209 : vector<3xf16>
    vector.print %224 : vector<4xf16>
    vector.print %235 : vector<1xi1>
    vector.print %250 : vector<3xf16>
    vector.print %260 : vector<6x4x6xf32>
    vector.print %261 : vector<6x4x6xf32>
    vector.print %266 : vector<15xi32>
    vector.print %true : i1
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %c1296049304_i32 : i32
    vector.print %c130554928_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c9300_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c1909637028_i64 : i64
    vector.print %c1049580416_i32 : i32
    vector.print %c52229187_i32 : i32
    vector.print %c1982931414_i64 : i64
    vector.print %c13561_i16 : i16
    vector.print %c1519752392_i64 : i64
    vector.print %c1847384886_i64 : i64
    vector.print %c-29224_i16 : i16
    vector.print %27 : i16
    vector.print %66 : i16
    vector.print %81 : i64
    vector.print %99 : i16
    vector.print %extracted : i16
    vector.print %109 : i64
    return %c6 : index
  }
}
