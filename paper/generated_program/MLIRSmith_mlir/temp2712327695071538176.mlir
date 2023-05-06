module {
  func.func nested @func1(%arg0: vector<2x2xi64>) -> f16 {
    %true = arith.constant true
    %c10539_i16 = arith.constant 10539 : i16
    %cst = arith.constant 1.31259226E+9 : f32
    %c816343974_i32 = arith.constant 816343974 : i32
    %c514185487_i32 = arith.constant 514185487 : i32
    %c2130527886_i64 = arith.constant 2130527886 : i64
    %c23747_i16 = arith.constant 23747 : i16
    %c-21004_i16 = arith.constant -21004 : i16
    %cst_0 = arith.constant 1.9682249E+9 : f32
    %cst_1 = arith.constant 3.536000e+04 : f16
    %c343258463_i32 = arith.constant 343258463 : i32
    %c12083_i16 = arith.constant 12083 : i16
    %c1757552704_i32 = arith.constant 1757552704 : i32
    %c1605113061_i64 = arith.constant 1605113061 : i64
    %c-14339_i16 = arith.constant -14339 : i16
    %c32491_i16 = arith.constant 32491 : i16
    %0 = tensor.empty() : tensor<6x2x2xi32>
    %1 = tensor.empty() : tensor<2x2xf16>
    %2 = tensor.empty() : tensor<5xf16>
    %3 = tensor.empty() : tensor<2xf32>
    %4 = tensor.empty() : tensor<6x2x2xi16>
    %5 = tensor.empty() : tensor<6x2x2xi64>
    %6 = tensor.empty() : tensor<2xi32>
    %7 = tensor.empty() : tensor<2x2xi16>
    %8 = tensor.empty() : tensor<6x2x2xi64>
    %9 = tensor.empty() : tensor<6x2x2xi1>
    %10 = tensor.empty() : tensor<6x2x2xi16>
    %11 = tensor.empty() : tensor<5xi32>
    %12 = tensor.empty() : tensor<2x2xi64>
    %13 = tensor.empty() : tensor<6x2x2xi1>
    %14 = tensor.empty() : tensor<6x2x2xi32>
    %15 = tensor.empty() : tensor<5xi16>
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
    %alloc = memref.alloc() : memref<5xi1>
    %alloc_2 = memref.alloc() : memref<5xi16>
    %alloc_3 = memref.alloc() : memref<2x2xi32>
    %alloc_4 = memref.alloc() : memref<2x2xi32>
    %alloc_5 = memref.alloc() : memref<6x2x2xf32>
    %alloc_6 = memref.alloc() : memref<6x2x2xi16>
    %alloc_7 = memref.alloc() : memref<5xf16>
    %alloc_8 = memref.alloc() : memref<6x2x2xi32>
    %alloc_9 = memref.alloc() : memref<6x2x2xi16>
    %alloc_10 = memref.alloc() : memref<2x2xi64>
    %alloc_11 = memref.alloc() : memref<6x2x2xf32>
    %alloc_12 = memref.alloc() : memref<6x2x2xi1>
    %alloc_13 = memref.alloc() : memref<6x2x2xf32>
    %alloc_14 = memref.alloc() : memref<2xf32>
    %alloc_15 = memref.alloc() : memref<2x2xi1>
    %alloc_16 = memref.alloc() : memref<2x2xi64>
    %16 = tensor.empty() : tensor<2xi32>
    %17 = linalg.copy ins(%6 : tensor<2xi32>) outs(%16 : tensor<2xi32>) -> tensor<2xi32>
    %alloc_17 = memref.alloc() : memref<2x6x2xi16>
    linalg.transpose ins(%10 : tensor<6x2x2xi16>) outs(%alloc_17 : memref<2x6x2xi16>) permutation = [2, 0, 1] 
    %alloc_18 = memref.alloc() : memref<2xi16>
    linalg.reduce ins(%7 : tensor<2x2xi16>) outs(%alloc_18 : memref<2xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %260 = affine.min affine_map<(d0) -> (d0, (d0 - 32) ceildiv 8, d0 - 32)>(%c10)
        %261 = index.ceildivs %c2, %c5
        %262 = tensor.empty() : tensor<6x2x2xi32>
        %mapped_36 = linalg.map ins(%14, %0 : tensor<6x2x2xi32>, tensor<6x2x2xi32>) outs(%262 : tensor<6x2x2xi32>)
          (%in_38: i32, %in_39: i32) {
            %268 = math.ceil %3 : tensor<2xf32>
            %269 = math.absi %9 : tensor<6x2x2xi1>
            %270 = index.mul %c8, %260
            %271 = math.ceil %cst_1 : f16
            %272 = arith.floordivsi %c1757552704_i32, %c816343974_i32 : i32
            %273 = vector.broadcast %true : i1 to vector<2xi1>
            %274 = vector.broadcast %true : i1 to vector<2x2xi1>
            %275 = vector.outerproduct %273, %273, %274 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
            %276 = math.atan2 %1, %1 : tensor<2x2xf16>
            %277 = math.sqrt %3 : tensor<2xf32>
            %278 = math.fma %cst_1, %cst_1, %cst_1 : f16
            %279 = vector.broadcast %in_38 : i32 to vector<2x2xi32>
            %280 = vector.shuffle %279, %279 [0, 1, 2] : vector<2x2xi32>, vector<2x2xi32>
            %281 = math.ceil %3 : tensor<2xf32>
            %282 = vector.broadcast %cst : f32 to vector<2xf32>
            %283 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
            %284 = vector.outerproduct %282, %282, %283 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
            %285 = arith.shrui %c1605113061_i64, %c2130527886_i64 : i64
            %286 = vector.splat %c32491_i16 : vector<2x2xi16>
            %287 = arith.cmpi slt, %c32491_i16, %c10539_i16 : i16
            %288 = arith.shli %c2130527886_i64, %c1605113061_i64 : i64
            %289 = arith.maxsi %init, %in : i16
            %290 = memref.atomic_rmw assign %cst_1, %alloc_7[%c4] : (f16, memref<5xf16>) -> f16
            %291 = vector.splat %270 : vector<2x2xindex>
            %292 = vector.create_mask %c9, %261, %c0 : vector<6x2x2xi1>
            %293 = math.tan %cst_1 : f16
            %294 = math.cttz %7 : tensor<2x2xi16>
            %295 = affine.apply affine_map<(d0) -> (-(d0 ceildiv 128))>(%c14)
            %296 = arith.maxui %c-14339_i16, %c-14339_i16 : i16
            %297 = vector.broadcast %c11 : index to vector<5xindex>
            %298 = vector.broadcast %true : i1 to vector<5xi1>
            %299 = vector.broadcast %c1757552704_i32 : i32 to vector<5xi32>
            vector.scatter %alloc_4[%c1, %c0] [%297], %298, %299 : memref<2x2xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
            %300 = index.ceildivu %c7, %c2
            %301 = arith.shli %c343258463_i32, %c816343974_i32 : i32
            %302 = math.powf %3, %3 : tensor<2xf32>
            %303 = arith.remf %cst_0, %cst_0 : f32
            %304 = vector.broadcast %cst : f32 to vector<5xf32>
            %305 = vector.fma %304, %304, %304 : vector<5xf32>
            %306 = bufferization.to_tensor %alloc_17 : memref<2x6x2xi16>
            %307 = index.casts %c-21004_i16 : i16 to index
            %c0_i32_40 = arith.constant 0 : i32
            linalg.yield %c0_i32_40 : i32
          }
        %263 = math.atan2 %1, %1 : tensor<2x2xf16>
        %264 = vector.broadcast %cst_1 : f16 to vector<f16>
        %265 = vector.insertelement %cst_1, %264[] : vector<f16>
        %266 = math.fpowi %2, %11 : tensor<5xf16>, tensor<5xi32>
        %267 = arith.remui %c12083_i16, %c-14339_i16 : i16
        %expanded_37 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<6x2x2xi64> into tensor<6x2x2x1xi64>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg1, %arg2) = (%c9, %c4) to (%c6, %c9) step (%c12, %c13) {
      %260 = math.round %3 : tensor<2xf32>
      %261 = bufferization.clone %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
      %inserted_36 = tensor.insert %c1757552704_i32 into %0[%c3, %c0, %c0] : tensor<6x2x2xi32>
      scf.index_switch %c5 
      case 1 {
        %278 = math.expm1 %cst_1 : f16
        %from_elements = tensor.from_elements %c1757552704_i32, %c816343974_i32, %c343258463_i32, %c1757552704_i32, %c1757552704_i32, %c816343974_i32, %c816343974_i32, %c1757552704_i32, %c343258463_i32, %c816343974_i32, %c816343974_i32, %c343258463_i32, %c514185487_i32, %c1757552704_i32, %c343258463_i32, %c514185487_i32, %c816343974_i32, %c514185487_i32, %c343258463_i32, %c1757552704_i32, %c343258463_i32, %c1757552704_i32, %c514185487_i32, %c514185487_i32 : tensor<6x2x2xi32>
        %279 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        %280 = vector.extract %279[0] : vector<1xf16>
        %281 = arith.remf %cst, %cst_0 : f32
        %282 = arith.minui %c32491_i16, %c32491_i16 : i16
        %283 = arith.xori %c23747_i16, %c32491_i16 : i16
        %284 = arith.addi %true, %true : i1
        %285 = math.sqrt %3 : tensor<2xf32>
        %286 = vector.create_mask %c4, %c7, %c13 : vector<6x2x2xi1>
        %287 = math.log %3 : tensor<2xf32>
        %288 = math.ctlz %4 : tensor<6x2x2xi16>
        %289 = math.exp2 %3 : tensor<2xf32>
        %290 = arith.ceildivsi %c23747_i16, %c-21004_i16 : i16
        %291 = affine.load %alloc_9[%c8, %c14, %c3] : memref<6x2x2xi16>
        %alloc_38 = memref.alloc() : memref<5xi32>
        %292 = arith.floordivsi %c2130527886_i64, %c1605113061_i64 : i64
        scf.yield
      }
      case 2 {
        %278 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        %279 = vector.extract_strided_slice %278 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %280 = arith.divui %c1605113061_i64, %c1605113061_i64 : i64
        %281 = affine.min affine_map<(d0, d1, d2) -> (-(-d2 - 128), d2, -d2 - 192)>(%arg2, %c9, %c8)
        %282 = arith.subi %c1757552704_i32, %c1757552704_i32 : i32
        %283 = vector.insertelement %cst_1, %279[%c8 : index] : vector<1xf16>
        %284 = math.cos %3 : tensor<2xf32>
        %285 = math.exp2 %3 : tensor<2xf32>
        %286 = arith.floordivsi %true, %true : i1
        vector.print %279 : vector<1xf16>
        %287 = arith.maxf %cst_0, %cst_0 : f32
        %288 = arith.maxf %cst, %cst : f32
        %289 = arith.xori %c10539_i16, %c10539_i16 : i16
        %290 = math.cttz %true : i1
        %291 = vector.extract_strided_slice %279 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %292 = arith.shli %c1757552704_i32, %c514185487_i32 : i32
        %293 = arith.cmpi ule, %c-21004_i16, %c32491_i16 : i16
        scf.yield
      }
      case 3 {
        %278 = vector.broadcast %cst_0 : f32 to vector<1xf32>
        %279 = vector.extract %278[0] : vector<1xf32>
        %280 = math.tan %cst : f32
        %alloc_38 = memref.alloc() : memref<6x2x2xi32>
        memref.copy %alloc_8, %alloc_38 : memref<6x2x2xi32> to memref<6x2x2xi32>
        %from_elements = tensor.from_elements %c-14339_i16, %c-14339_i16, %c-14339_i16, %c12083_i16, %c-21004_i16 : tensor<5xi16>
        %281 = vector.broadcast %cst : f32 to vector<6x2x2xf32>
        %282 = vector.fma %281, %281, %281 : vector<6x2x2xf32>
        %283 = vector.broadcast %cst : f32 to vector<2x2x2x2xf32>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %281, %282, %283 : vector<6x2x2xf32>, vector<6x2x2xf32> into vector<2x2x2x2xf32>
        %285 = bufferization.to_memref %11 : memref<5xi32>
        %286 = math.round %3 : tensor<2xf32>
        %287 = math.round %cst : f32
        %288 = index.sub %c2, %c8
        %289 = math.expm1 %2 : tensor<5xf16>
        %290 = math.absi %7 : tensor<2x2xi16>
        %291 = arith.addf %cst_0, %cst : f32
        %292 = math.atan2 %2, %2 : tensor<5xf16>
        %293 = vector.matrix_multiply %278, %278 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %294 = index.casts %c10 : index to i32
        scf.yield
      }
      case 4 {
        %278 = math.log %2 : tensor<5xf16>
        %279 = arith.subi %c32491_i16, %c-14339_i16 : i16
        %280 = vector.broadcast %cst_0 : f32 to vector<6xf32>
        %281 = vector.broadcast %true : i1 to vector<6xi1>
        %282 = vector.maskedload %alloc_11[%c2, %c1, %c1], %281, %280 : memref<6x2x2xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %cst_38 = arith.constant 1.000000e+00 : f32
        %cst_39 = arith.constant 0.000000e+00 : f32
        %283 = vector.transfer_read %3[%c0], %cst_39 : tensor<2xf32>, vector<f32>
        %284 = math.round %cst_0 : f32
        %285 = vector.broadcast %true : i1 to vector<6x6xi1>
        %286 = vector.outerproduct %281, %281, %285 {kind = #vector.kind<maxui>} : vector<6xi1>, vector<6xi1>
        %287 = math.exp2 %2 : tensor<5xf16>
        %288 = math.rsqrt %2 : tensor<5xf16>
        %inserted_40 = tensor.insert %cst_1 into %1[%c1, %c0] : tensor<2x2xf16>
        %splat_41 = tensor.splat %c1757552704_i32 : tensor<5xi32>
        %inserted_42 = tensor.insert %c-14339_i16 into %4[%c3, %c1, %c0] : tensor<6x2x2xi16>
        %alloc_43 = memref.alloc() : memref<2x2xf32>
        %289 = arith.maxui %c1757552704_i32, %c816343974_i32 : i32
        %290 = vector.splat %cst_1 : vector<2xf16>
        %291 = index.divs %c8, %arg2
        %292 = tensor.empty() : tensor<2xi64>
        scf.yield
      }
      default {
        %278 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 64)>(%c7, %c10, %c12)
        %279 = math.log1p %cst_1 : f16
        %280 = math.round %1 : tensor<2x2xf16>
        %281 = arith.floordivsi %c2130527886_i64, %c1605113061_i64 : i64
        %282 = vector.broadcast %c1757552704_i32 : i32 to vector<6x2x2xi32>
        vector.print %282 : vector<6x2x2xi32>
        affine.store %c2130527886_i64, %alloc_16[%c4, %c6] : memref<2x2xi64>
        %283 = vector.broadcast %c343258463_i32 : i32 to vector<2xi32>
        %284 = vector.insert %283, %282 [5, 0] : vector<2xi32> into vector<6x2x2xi32>
        %285 = index.casts %c15 : index to i32
        %286 = arith.divf %cst_1, %cst_1 : f16
        memref.store %true, %alloc[%c2] : memref<5xi1>
        %287 = tensor.empty() : tensor<2x2xf16>
        %288 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%287 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %289 = vector.broadcast %c15 : index to vector<5xindex>
        %290 = vector.broadcast %true : i1 to vector<5xi1>
        vector.scatter %alloc_15[%c0, %c1] [%289], %290, %290 : memref<2x2xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %291 = vector.matrix_multiply %283, %283 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi32>, vector<2xi32>) -> vector<1xi32>
        %c0_i32_38 = arith.constant 0 : i32
        %292 = vector.transfer_read %0[%c5, %278, %c14], %c0_i32_38 : tensor<6x2x2xi32>, vector<6xi32>
        %293 = arith.maxsi %c514185487_i32, %c1757552704_i32 : i32
        %294 = bufferization.clone %alloc_8 : memref<6x2x2xi32> to memref<6x2x2xi32>
      }
      %262 = scf.while (%arg3 = %cst) : (f32) -> f32 {
        %278 = arith.maxf %cst_0, %cst_0 : f32
        %279 = vector.broadcast %c816343974_i32 : i32 to vector<i32>
        %280 = vector.transfer_write %279, %6[%c2] : vector<i32>, tensor<2xi32>
        %281 = memref.atomic_rmw maxu %c12083_i16, %alloc_17[%c0, %c5, %c1] : (i16, memref<2x6x2xi16>) -> i16
        affine.store %c1605113061_i64, %alloc_10[%c0, %c2] : memref<2x2xi64>
        %282 = vector.insertelement %c1757552704_i32, %279[] : vector<i32>
        %283 = index.divs %c6, %c5
        %284 = math.powf %3, %3 : tensor<2xf32>
        %285 = math.ctlz %6 : tensor<2xi32>
        scf.condition(%true) %cst : f32
      } do {
      ^bb0(%arg3: f32):
        %collapsed_38 = tensor.collapse_shape %7 [[0, 1]] : tensor<2x2xi16> into tensor<4xi16>
        %278 = arith.shli %c32491_i16, %c-14339_i16 : i16
        %279 = math.floor %1 : tensor<2x2xf16>
        %280 = arith.remf %cst_1, %cst_1 : f16
        %281 = index.divs %c3, %c14
        %alloc_39 = memref.alloc() : memref<6x2x2xi32>
        memref.copy %alloc_8, %alloc_39 : memref<6x2x2xi32> to memref<6x2x2xi32>
        %282 = math.roundeven %1 : tensor<2x2xf16>
        %283 = arith.addf %cst, %arg3 : f32
        %284 = index.divs %c8, %c5
        affine.store %c1757552704_i32, %alloc_8[%c3, %c2, %c4] : memref<6x2x2xi32>
        %alloca = memref.alloca() : memref<6x2x2xi1>
        %285 = arith.shli %true, %true : i1
        %extracted_40 = tensor.extract %4[%c4, %c1, %c1] : tensor<6x2x2xi16>
        %286 = math.powf %2, %2 : tensor<5xf16>
        %287 = arith.cmpi ugt, %c-21004_i16, %c12083_i16 : i16
        %288 = tensor.empty() : tensor<2x2xi16>
        %289 = linalg.matmul ins(%7, %7 : tensor<2x2xi16>, tensor<2x2xi16>) outs(%288 : tensor<2x2xi16>) -> tensor<2x2xi16>
        scf.yield %arg3 : f32
      }
      %263 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
      %264 = vector.broadcast %true : i1 to vector<2x2xi1>
      %265 = vector.broadcast %c1757552704_i32 : i32 to vector<2x2xi32>
      %266 = vector.gather %alloc_13[%c5, %c12, %c8] [%265], %264, %263 : memref<6x2x2xf32>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf32> into vector<2x2xf32>
      %267 = index.divs %c4, %c5
      %268 = arith.andi %c1757552704_i32, %c343258463_i32 : i32
      %269 = tensor.empty() : tensor<2x2xi32>
      %270 = math.fpowi %1, %269 : tensor<2x2xf16>, tensor<2x2xi32>
      %alloc_37 = memref.alloc() : memref<2x6x2xi16>
      memref.copy %alloc_17, %alloc_37 : memref<2x6x2xi16> to memref<2x6x2xi16>
      memref.copy %261, %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
      %271 = arith.ceildivsi %c32491_i16, %c32491_i16 : i16
      %272 = vector.broadcast %cst : f32 to vector<6xf32>
      %273 = vector.insertelement %cst, %272[%c13 : index] : vector<6xf32>
      %274 = math.fma %3, %3, %3 : tensor<2xf32>
      %275 = arith.ori %c12083_i16, %c32491_i16 : i16
      %276 = vector.broadcast %true : i1 to vector<6xi1>
      %277 = vector.maskedload %alloc_5[%c4, %c1, %c0], %276, %272 : memref<6x2x2xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      scf.yield
    }
    %18 = affine.vector_load %alloc_14[%c2] : memref<2xf32>, vector<6xf32>
    affine.vector_store %18, %alloc_13[%c3, %c14, %c15] : memref<6x2x2xf32>, vector<6xf32>
    %19 = tensor.empty() : tensor<5xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%11, %19 : tensor<5xi32>, tensor<5xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 8) mod 128 + 64, d1 floordiv 8)>(%c13, %c9)
    %23 = math.ctlz %c12083_i16 : i16
    %24 = math.round %1 : tensor<2x2xf16>
    %25 = scf.execute_region -> index {
      %alloc_36 = memref.alloc() : memref<6x2x2xi64>
      memref.tensor_store %8, %alloc_36 : memref<6x2x2xi64>
      %260 = arith.maxui %c23747_i16, %c23747_i16 : i16
      %261 = math.log1p %1 : tensor<2x2xf16>
      %262 = math.cttz %5 : tensor<6x2x2xi64>
      %263 = index.maxs %c10, %22
      %264 = arith.cmpi sge, %c10539_i16, %c-21004_i16 : i16
      %265 = arith.maxf %cst, %cst : f32
      %266 = arith.shrsi %c2130527886_i64, %c2130527886_i64 : i64
      %267 = affine.for %arg1 = 0 to 68 iter_args(%arg2 = %alloc_6) -> (memref<6x2x2xi16>) {
        affine.yield %alloc_9 : memref<6x2x2xi16>
      }
      %268 = arith.maxf %cst, %cst_0 : f32
      %269 = vector.broadcast %c1757552704_i32 : i32 to vector<2xi32>
      %270 = vector.broadcast %true : i1 to vector<2xi1>
      %271 = vector.maskedload %alloc_3[%c1, %c0], %270, %269 : memref<2x2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
      %272 = vector.broadcast %c514185487_i32 : i32 to vector<2x2xi32>
      %273 = vector.outerproduct %269, %271, %272 {kind = #vector.kind<or>} : vector<2xi32>, vector<2xi32>
      %274 = arith.negf %cst : f32
      %275 = index.add %c13, %c5
      affine.store %c-14339_i16, %alloc_6[%c13, %c9, %c2] : memref<6x2x2xi16>
      %276 = vector.extract_strided_slice %269 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi32> to vector<1xi32>
      scf.yield %c6 : index
    }
    %26 = vector.create_mask %c11, %c7 : vector<2x2xi1>
    %27 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %26, %26, %26 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
    %28 = arith.maxf %cst, %cst : f32
    %29 = math.floor %cst : f32
    %30 = math.ipowi %c-14339_i16, %c-21004_i16 : i16
    %31 = math.sqrt %cst_1 : f16
    %32 = vector.broadcast %true : i1 to vector<2xi1>
    %33 = vector.insert %32, %26 [1] : vector<2xi1> into vector<2x2xi1>
    %34 = bufferization.to_memref %12 : memref<2x2xi64>
    %35 = arith.floordivsi %c32491_i16, %c10539_i16 : i16
    %36 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 - 64) mod 128) ceildiv 8, ((d2 - 64) mod 128 - 32) floordiv 128, d3)>(%c14, %c14, %c1, %c10)
    %37 = arith.remsi %true, %true : i1
    %38 = affine.if affine_set<(d0, d1) : (-d1 >= 0)>(%c0, %c10) -> memref<2x2xi1> {
      %260 = vector.extract_strided_slice %32 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
      %261 = arith.mulf %cst_1, %cst_1 : f16
      %expanded_36 = tensor.expand_shape %15 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
      %262 = vector.flat_transpose %260 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
      %263 = arith.divui %c32491_i16, %c-21004_i16 : i16
      %264 = arith.maxui %c10539_i16, %c-21004_i16 : i16
      %alloc_37 = memref.alloc() : memref<6x2x2xi64>
      memref.tensor_store %8, %alloc_37 : memref<6x2x2xi64>
      %265 = math.log1p %2 : tensor<5xf16>
      affine.yield %alloc_15 : memref<2x2xi1>
    } else {
      %260 = arith.shrui %c23747_i16, %c23747_i16 : i16
      %261 = arith.remf %cst_0, %cst : f32
      %alloca = memref.alloca() : memref<5xf16>
      %262 = tensor.empty() : tensor<i32>
      %mapped_36 = linalg.map ins(%21, %21 : tensor<i32>, tensor<i32>) outs(%262 : tensor<i32>)
        (%in: i32, %in_37: i32) {
          %267 = math.ctlz %8 : tensor<6x2x2xi64>
          %268 = vector.broadcast %c23747_i16 : i16 to vector<5xi16>
          %269 = vector.broadcast %true : i1 to vector<5xi1>
          %270 = vector.maskedload %alloc_6[%c4, %c1, %c1], %269, %268 : memref<6x2x2xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
          %271 = math.log10 %cst_1 : f16
          %splat_38 = tensor.splat %c-14339_i16 : tensor<2xi16>
          %272 = arith.maxf %cst_0, %cst : f32
          %273 = arith.ceildivsi %c816343974_i32, %c816343974_i32 : i32
          %274 = math.atan2 %2, %2 : tensor<5xf16>
          %275 = vector.broadcast %c343258463_i32 : i32 to vector<2xi32>
          vector.transfer_write %275, %alloc_8[%c0, %22, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi32>, memref<6x2x2xi32>
          %276 = math.tanh %cst_1 : f16
          %277 = vector.create_mask %c7, %c0 : vector<2x2xi1>
          %278 = vector.maskedload %alloc[%c3], %269, %269 : memref<5xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
          %279 = math.fma %1, %1, %1 : tensor<2x2xf16>
          %280 = math.rsqrt %2 : tensor<5xf16>
          %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %268, %270, %c32491_i16 : vector<5xi16>, vector<5xi16> into i16
          %282 = vector.shuffle %277, %277 [0, 1, 3] : vector<2x2xi1>, vector<2x2xi1>
          %283 = math.ipowi %4, %4 : tensor<6x2x2xi16>
          %inserted_39 = tensor.insert %c10539_i16 into %10[%c3, %c0, %c1] : tensor<6x2x2xi16>
          %284 = vector.insert %true, %32 [1] : i1 into vector<2xi1>
          %collapsed_40 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<6x2x2xi1> into tensor<12x2xi1>
          %expanded_41 = tensor.expand_shape %11 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
          %285 = vector.broadcast %c1 : index to vector<5xindex>
          %286 = vector.broadcast %in_37 : i32 to vector<5xi32>
          vector.scatter %alloc_4[%c1, %c1] [%285], %278, %286 : memref<2x2xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
          %287 = math.ipowi %c343258463_i32, %c1757552704_i32 : i32
          %288 = arith.divsi %true, %true : i1
          %289 = tensor.empty() : tensor<2x2xf16>
          %290 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%289 : tensor<2x2xf16>) -> tensor<2x2xf16>
          %291 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
          %292 = vector.outerproduct %18, %18, %291 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
          %293 = arith.maxui %c23747_i16, %c-14339_i16 : i16
          %294 = math.ipowi %c816343974_i32, %c343258463_i32 : i32
          %295 = memref.load %alloc_11[%c5, %c1, %c0] : memref<6x2x2xf32>
          %296 = math.log1p %2 : tensor<5xf16>
          %297 = vector.extract_strided_slice %32 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
          %298 = arith.minsi %c1757552704_i32, %c514185487_i32 : i32
          %299 = arith.muli %c32491_i16, %c-21004_i16 : i16
          %c0_i32_42 = arith.constant 0 : i32
          linalg.yield %c0_i32_42 : i32
        }
      %263 = math.powf %3, %3 : tensor<2xf32>
      %264 = bufferization.clone %alloc_16 : memref<2x2xi64> to memref<2x2xi64>
      %265 = index.ceildivs %c10, %c5
      %266 = vector.load %alloc_18[%c1] : memref<2xi16>, vector<6x2x2xi16>
      affine.yield %alloc_15 : memref<2x2xi1>
    }
    %alloc_19 = memref.alloc() : memref<2x2xi16>
    memref.tensor_store %7, %alloc_19 : memref<2x2xi16>
    memref.copy %alloc_3, %alloc_4 : memref<2x2xi32> to memref<2x2xi32>
    %39 = math.expm1 %1 : tensor<2x2xf16>
    %40 = arith.remui %c-21004_i16, %c23747_i16 : i16
    %41 = arith.remf %cst_0, %cst_0 : f32
    %42 = bufferization.clone %alloc_13 : memref<6x2x2xf32> to memref<6x2x2xf32>
    affine.store %true, %alloc[%c15] : memref<5xi1>
    %43 = arith.divui %c12083_i16, %c-14339_i16 : i16
    %44 = arith.floordivsi %true, %true : i1
    %45 = arith.shrui %c2130527886_i64, %c1605113061_i64 : i64
    %46 = math.ctlz %17 : tensor<2xi32>
    %47 = arith.maxui %true, %true : i1
    %48 = math.cttz %17 : tensor<2xi32>
    %49 = arith.remf %cst_1, %cst_1 : f16
    %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<2x2xi16> into tensor<2x2x1xi16>
    %50 = arith.xori %c2130527886_i64, %c2130527886_i64 : i64
    %51 = arith.subi %c32491_i16, %c32491_i16 : i16
    %52 = affine.apply affine_map<(d0) -> ((d0 + 5) floordiv 8)>(%36)
    %53 = math.log1p %2 : tensor<5xf16>
    %54 = vector.splat %c7 : vector<2x2xindex>
    %55 = arith.divf %cst_1, %cst_1 : f16
    scf.index_switch %52 
    case 1 {
      memref.tensor_store %4, %alloc_6 : memref<6x2x2xi16>
      %260 = math.absi %17 : tensor<2xi32>
      %261 = math.roundeven %3 : tensor<2xf32>
      %262 = vector.matrix_multiply %32, %32 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
      %263 = index.ceildivs %c1, %c12
      %264 = arith.negf %cst : f32
      %265 = arith.minui %c1605113061_i64, %c2130527886_i64 : i64
      %266 = arith.cmpi eq, %c-21004_i16, %c-14339_i16 : i16
      %267 = vector.load %alloc_13[%c0, %c0, %c1] : memref<6x2x2xf32>, vector<5xf32>
      %splat_36 = tensor.splat %cst_0 : tensor<6x2x2xf32>
      %268 = arith.remui %c343258463_i32, %c343258463_i32 : i32
      %269 = vector.broadcast %c1605113061_i64 : i64 to vector<2xi64>
      %270 = vector.maskedload %34[%c0, %c1], %32, %269 : memref<2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %271 = math.log1p %3 : tensor<2xf32>
      %272 = tensor.empty() : tensor<6x2x2xi64>
      bufferization.dealloc_tensor %5 : tensor<6x2x2xi64>
      %273 = vector.matrix_multiply %270, %270 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
      scf.yield
    }
    default {
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%10 : tensor<6x2x2xi16>) {
      ^bb0(%out: i16):
        %274 = arith.maxsi %c23747_i16, %out : i16
        memref.assume_alignment %alloc_7, 8 : memref<5xf16>
        %collapsed_38 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<6x2x2xi16> into tensor<12x2xi16>
        %275 = arith.xori %out, %c23747_i16 : i16
        %276 = tensor.empty() : tensor<2x2xf16>
        %277 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%276 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %278 = math.copysign %1, %1 : tensor<2x2xf16>
        %279 = arith.addf %cst_0, %cst : f32
        %280 = math.roundeven %3 : tensor<2xf32>
        %281 = math.log10 %cst_1 : f16
        %282 = math.log1p %3 : tensor<2xf32>
        %283 = vector.broadcast %c5 : index to vector<2xindex>
        %284 = vector.broadcast %c1605113061_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_16[%c0, %c0] [%283], %32, %284 : memref<2x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        memref.assume_alignment %alloc, 4 : memref<5xi1>
        %285 = arith.negf %cst : f32
        %286 = index.castu %c1 : index to i32
        %287 = bufferization.to_memref %11 : memref<5xi32>
        %288 = math.fma %3, %3, %3 : tensor<2xf32>
        %289 = arith.cmpi sgt, %c2130527886_i64, %c2130527886_i64 : i64
        %290 = arith.shrsi %c32491_i16, %c12083_i16 : i16
        %291 = vector.matrix_multiply %18, %18 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %292 = arith.shli %c-21004_i16, %c12083_i16 : i16
        %293 = memref.load %42[%c5, %c0, %c1] : memref<6x2x2xf32>
        %294 = tensor.empty() : tensor<2x2xi64>
        %295 = linalg.matmul ins(%12, %12 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%294 : tensor<2x2xi64>) -> tensor<2x2xi64>
        %296 = memref.realloc %alloc_14 : memref<2xf32> to memref<2xf32>
        %from_elements = tensor.from_elements %true, %true : tensor<2xi1>
        %297 = arith.ori %c1757552704_i32, %c514185487_i32 : i32
        %298 = math.copysign %cst, %cst : f32
        %299 = index.ceildivu %c9, %c11
        %from_elements_39 = tensor.from_elements %c1605113061_i64, %c1605113061_i64, %c1605113061_i64, %c2130527886_i64, %c2130527886_i64 : tensor<5xi64>
        %300 = math.absi %5 : tensor<6x2x2xi64>
        %301 = vector.matrix_multiply %32, %32 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
        %302 = arith.cmpf ugt, %cst_0, %cst : f32
        %303 = arith.maxf %cst_1, %cst_1 : f16
        linalg.yield %out : i16
      } -> tensor<6x2x2xi16>
      memref.tensor_store %0, %alloc_8 : memref<6x2x2xi32>
      %261 = arith.shrsi %c1757552704_i32, %c343258463_i32 : i32
      %262 = tensor.empty() : tensor<6x2x2xf16>
      %263 = vector.extract_strided_slice %18 {offsets = [3], sizes = [1], strides = [1]} : vector<6xf32> to vector<1xf32>
      %264 = vector.multi_reduction <xor>, %26, %32 [0] : vector<2x2xi1> to vector<2xi1>
      %extracted_36 = tensor.extract %2[%c0] : tensor<5xf16>
      %265 = arith.ori %c32491_i16, %c12083_i16 : i16
      %266 = arith.cmpi uge, %c2130527886_i64, %c1605113061_i64 : i64
      %267 = arith.divui %c10539_i16, %c23747_i16 : i16
      %268 = tensor.empty() : tensor<5xf16>
      %mapped_37 = linalg.map ins(%alloc_7, %2 : memref<5xf16>, tensor<5xf16>) outs(%268 : tensor<5xf16>)
        (%in: f16, %in_38: f16) {
          %274 = math.ipowi %c32491_i16, %c10539_i16 : i16
          %275 = math.log1p %2 : tensor<5xf16>
          %276 = bufferization.to_tensor %alloc_3 : memref<2x2xi32>
          %277 = math.ceil %3 : tensor<2xf32>
          %278 = affine.min affine_map<(d0, d1) -> (d0 - 112, -((d0 - 112) floordiv 32))>(%c3, %52)
          %279 = math.copysign %1, %1 : tensor<2x2xf16>
          %280 = math.ipowi %5, %5 : tensor<6x2x2xi64>
          %281 = arith.cmpf ueq, %in, %extracted_36 : f16
          %282 = arith.muli %c343258463_i32, %c1757552704_i32 : i32
          %283 = vector.broadcast %c2 : index to vector<2xindex>
          %284 = vector.broadcast %c10539_i16 : i16 to vector<2xi16>
          vector.scatter %alloc_18[%c0] [%283], %32, %284 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
          memref.store %extracted_36, %alloc_7[%c1] : memref<5xf16>
          %285 = math.cttz %5 : tensor<6x2x2xi64>
          affine.store %true, %alloc_15[%c8, %c7] : memref<2x2xi1>
          %286 = math.ceil %in : f16
          %287 = math.sqrt %2 : tensor<5xf16>
          %cast_39 = tensor.cast %3 : tensor<2xf32> to tensor<?xf32>
          memref.copy %alloc_6, %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
          %extracted_40 = tensor.extract %12[%c1, %c0] : tensor<2x2xi64>
          %288 = arith.remui %c12083_i16, %c12083_i16 : i16
          %289 = arith.cmpi sge, %true, %true : i1
          memref.tensor_store %12, %alloc_16 : memref<2x2xi64>
          %290 = math.log10 %cst_1 : f16
          %291 = index.ceildivu %c11, %25
          %292 = arith.shli %c816343974_i32, %c343258463_i32 : i32
          %293 = vector.extract_strided_slice %18 {offsets = [2], sizes = [3], strides = [1]} : vector<6xf32> to vector<3xf32>
          %294 = tensor.empty() : tensor<2x2xf16>
          %295 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%294 : tensor<2x2xf16>) -> tensor<2x2xf16>
          %296 = index.ceildivs %c10, %c11
          %297 = vector.matrix_multiply %293, %18 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<3xf32>, vector<6xf32>) -> vector<2xf32>
          %298 = math.ceil %2 : tensor<5xf16>
          %299 = math.fma %cst, %cst_0, %cst_0 : f32
          %300 = math.log1p %294 : tensor<2x2xf16>
          %301 = tensor.empty(%52, %c7) : tensor<6x?x?xi1>
          %cst_41 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_41 : f16
        }
      %c1_i64 = arith.constant 1 : i64
      %269 = vector.transfer_read %alloc_10[%c7, %c9], %c1_i64 : memref<2x2xi64>, vector<6xi64>
      %270 = math.exp %3 : tensor<2xf32>
      %271 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<2x2xi1> to vector<1x2xi1>
      %272 = math.log %2 : tensor<5xf16>
      %273 = arith.negf %cst : f32
    }
    %56 = arith.maxsi %c1757552704_i32, %c343258463_i32 : i32
    %57 = tensor.empty() : tensor<i32>
    %mapped = linalg.map ins(%20, %21, %21 : tensor<i32>, tensor<i32>, tensor<i32>) outs(%57 : tensor<i32>)
      (%in: i32, %in_36: i32, %in_37: i32) {
        %260 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %261 = vector.fma %260, %260, %260 : vector<5xf32>
        %262 = arith.remf %cst_0, %cst_0 : f32
        %263 = affine.min affine_map<(d0, d1) -> (d0, (d0 + 1) floordiv 4 + 8, (d0 + 1) ceildiv 2, (d1 + (d0 + 1) ceildiv 2 - (d0 + 1)) floordiv 32 - (d1 + (d0 + 1) ceildiv 2 - (d0 + 1)) ceildiv 4 + 16)>(%36, %22)
        %264 = arith.negf %cst : f32
        %265 = vector.splat %c6 : vector<2xindex>
        %266 = arith.floordivsi %in, %c816343974_i32 : i32
        %267 = vector.broadcast %c2130527886_i64 : i64 to vector<2xi64>
        %268 = vector.maskedload %34[%c0, %c1], %32, %267 : memref<2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %269 = vector.matrix_multiply %18, %18 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %270 = arith.minui %in_36, %c1757552704_i32 : i32
        %271 = arith.remf %cst, %cst : f32
        %272 = arith.divui %c23747_i16, %c32491_i16 : i16
        %273 = vector.maskedload %alloc_12[%c0, %c1, %c1], %32, %32 : memref<6x2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %274 = index.castu %c9 : index to i32
        %275 = math.atan2 %cst, %cst : f32
        %276 = arith.ori %in, %c343258463_i32 : i32
        %277 = math.log %cst : f32
        %rank = tensor.rank %5 : tensor<6x2x2xi64>
        %278 = arith.remui %in_37, %in_36 : i32
        %rank_38 = tensor.rank %1 : tensor<2x2xf16>
        %279 = index.ceildivu %c7, %c1
        %280 = index.casts %c5 : index to i32
        %281 = arith.shli %c1605113061_i64, %c2130527886_i64 : i64
        %from_elements = tensor.from_elements %c1605113061_i64, %c2130527886_i64, %c2130527886_i64, %c1605113061_i64, %c2130527886_i64, %c2130527886_i64, %c2130527886_i64, %c1605113061_i64, %c1605113061_i64, %c1605113061_i64, %c1605113061_i64, %c2130527886_i64, %c2130527886_i64, %c2130527886_i64, %c1605113061_i64, %c2130527886_i64, %c2130527886_i64, %c2130527886_i64, %c1605113061_i64, %c2130527886_i64, %c2130527886_i64, %c2130527886_i64, %c2130527886_i64, %c1605113061_i64 : tensor<6x2x2xi64>
        %282 = math.ctlz %8 : tensor<6x2x2xi64>
        %283 = vector.broadcast %36 : index to vector<6xindex>
        %284 = vector.broadcast %true : i1 to vector<6xi1>
        %285 = vector.broadcast %c-14339_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_17[%c1, %c1, %c1] [%283], %284, %285 : memref<2x6x2xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        affine.store %c343258463_i32, %alloc_4[%c6, %c9] : memref<2x2xi32>
        %286 = math.log1p %3 : tensor<2xf32>
        %287 = arith.shli %c23747_i16, %c32491_i16 : i16
        %288 = arith.cmpi uge, %true, %true : i1
        %289 = arith.maxf %cst_0, %cst : f32
        %290 = vector.insert %cst, %260 [3] : f32 into vector<5xf32>
        %291 = math.atan %2 : tensor<5xf16>
        %c0_i32_39 = arith.constant 0 : i32
        linalg.yield %c0_i32_39 : i32
      }
    %58 = math.ctlz %c23747_i16 : i16
    %59 = vector.create_mask %c1, %c7 : vector<2x2xi1>
    %60 = vector.matrix_multiply %32, %32 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
    %61 = arith.divui %c-14339_i16, %c-21004_i16 : i16
    affine.store %true, %alloc_15[%c15, %c0] : memref<2x2xi1>
    %62 = math.absi %10 : tensor<6x2x2xi16>
    %63 = vector.shuffle %18, %18 [0, 1, 3] : vector<6xf32>, vector<6xf32>
    %cast = tensor.cast %6 : tensor<2xi32> to tensor<?xi32>
    %64 = tensor.empty() : tensor<5xi32>
    %65 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %60, %60, %true : vector<1xi1>, vector<1xi1> into i1
    %66 = arith.shrui %c-14339_i16, %c23747_i16 : i16
    %67 = math.fpowi %3, %16 : tensor<2xf32>, tensor<2xi32>
    %68 = arith.subi %c343258463_i32, %c514185487_i32 : i32
    %69 = math.tan %cst : f32
    %70 = bufferization.clone %alloc_18 : memref<2xi16> to memref<2xi16>
    %71 = math.log1p %3 : tensor<2xf32>
    %72 = arith.shrsi %c1757552704_i32, %c1757552704_i32 : i32
    %73 = vector.matrix_multiply %60, %60 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %74 = arith.minsi %true, %true : i1
    %75 = vector.outerproduct %32, %32, %26 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
    %76 = tensor.empty() : tensor<6xi32>
    %77 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%76 : tensor<6xi32>) outs(%14 : tensor<6x2x2xi32>) {
    ^bb0(%in: i32, %out: i32):
      %260 = arith.shrui %c514185487_i32, %out : i32
      %261 = arith.minsi %c-21004_i16, %c12083_i16 : i16
      %262 = math.ctlz %9 : tensor<6x2x2xi1>
      %263 = math.exp %3 : tensor<2xf32>
      %264 = vector.create_mask %c3, %c4, %c2 : vector<6x2x2xi1>
      %265 = math.cos %cst_0 : f32
      %266 = affine.load %alloc_17[%c2, %c3, %c7] : memref<2x6x2xi16>
      %267 = bufferization.to_tensor %alloc_5 : memref<6x2x2xf32>
      %268 = math.log1p %3 : tensor<2xf32>
      %269 = vector.multi_reduction <mul>, %60, %60 [] : vector<1xi1> to vector<1xi1>
      %270 = math.atan %cst_0 : f32
      %271 = arith.divui %c-21004_i16, %c12083_i16 : i16
      %272 = memref.load %alloc_5[%c1, %c1, %c0] : memref<6x2x2xf32>
      %273 = index.divs %c7, %c9
      %274 = bufferization.to_tensor %alloc_15 : memref<2x2xi1>
      %extracted_36 = tensor.extract %1[%c0, %c0] : tensor<2x2xf16>
      %275 = arith.ceildivsi %c-21004_i16, %c23747_i16 : i16
      %276 = tensor.empty() : tensor<2x6xi1>
      %277 = tensor.empty() : tensor<6xi1>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %277, %276 : tensor<2x6xi1>, tensor<6xi1>, tensor<2x6xi1>) outs(%13 : tensor<6x2x2xi1>) {
      ^bb0(%in_38: i1, %in_39: i1, %in_40: i1, %out_41: i1):
        memref.tensor_store %15, %alloc_2 : memref<5xi16>
        %291 = memref.atomic_rmw maxu %266, %70[%c1] : (i16, memref<2xi16>) -> i16
        affine.store %cst_0, %alloc_11[%c14, %c10, %c7] : memref<6x2x2xf32>
        %alloca = memref.alloca() : memref<2xi32>
        %292 = vector.broadcast %c2130527886_i64 : i64 to vector<i64>
        vector.transfer_write %292, %alloc_16[%c14, %52] : vector<i64>, memref<2x2xi64>
        %293 = math.floor %cst_1 : f16
        vector.print %264 : vector<6x2x2xi1>
        %294 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %295 = vector.maskedload %alloc_11[%c1, %c0, %c0], %32, %294 : memref<6x2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %296 = bufferization.to_tensor %alloc_15 : memref<2x2xi1>
        %297 = index.ceildivu %52, %52
        %298 = bufferization.clone %alloc_14 : memref<2xf32> to memref<2xf32>
        %299 = arith.remf %cst_0, %cst : f32
        %cast_42 = tensor.cast %3 : tensor<2xf32> to tensor<?xf32>
        %300 = math.sqrt %cst_1 : f16
        %301 = arith.negf %extracted_36 : f16
        %splat_43 = tensor.splat %out_41 : tensor<2x2xi1>
        %302 = arith.cmpi ugt, %in_40, %out_41 : i1
        %303 = affine.load %alloc_9[%c8, %c3, %c8] : memref<6x2x2xi16>
        %304 = arith.ori %c32491_i16, %266 : i16
        %305 = vector.load %alloc_15[%c1, %c0] : memref<2x2xi1>, vector<6x2x2xi1>
        %306 = vector.insert %cst, %294 [1] : f32 into vector<2xf32>
        %307 = index.add %36, %25
        %308 = math.ctlz %out : i32
        %309 = vector.splat %c4 : vector<5xindex>
        %310 = math.floor %2 : tensor<5xf16>
        %311 = arith.remf %cst_1, %extracted_36 : f16
        %312 = math.fma %1, %1, %1 : tensor<2x2xf16>
        %313 = arith.xori %c10539_i16, %c10539_i16 : i16
        %314 = vector.shuffle %18, %18 [0, 1, 2, 4, 5, 6, 10] : vector<6xf32>, vector<6xf32>
        %315 = index.ceildivs %c3, %c7
        %316 = arith.minsi %in_40, %in_40 : i1
        %expanded_44 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<6x2x2xi16> into tensor<6x2x2x1xi16>
        linalg.yield %in_40 : i1
      } -> tensor<6x2x2xi1>
      %collapsed_37 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<6x2x2xi64> into tensor<12x2xi64>
      affine.for %arg1 = 0 to 109 {
      }
      %279 = affine.for %arg1 = 0 to 38 iter_args(%arg2 = %12) -> (tensor<2x2xi64>) {
        affine.yield %12 : tensor<2x2xi64>
      }
      %280 = arith.shli %c-21004_i16, %c-14339_i16 : i16
      %281 = math.floor %1 : tensor<2x2xf16>
      %282 = tensor.empty() : tensor<2x2xf16>
      %283 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%282 : tensor<2x2xf16>) -> tensor<2x2xf16>
      %284 = index.add %c7, %c8
      vector.print %26 : vector<2x2xi1>
      %285 = index.casts %c13 : index to i32
      %286 = math.exp2 %3 : tensor<2xf32>
      %287 = arith.shrsi %c-21004_i16, %c23747_i16 : i16
      %288 = index.maxu %c7, %c13
      %289 = arith.cmpf one, %cst, %cst_0 : f32
      %290 = arith.maxui %c816343974_i32, %c343258463_i32 : i32
      linalg.yield %c514185487_i32 : i32
    } -> tensor<6x2x2xi32>
    %78 = arith.shrsi %c343258463_i32, %c514185487_i32 : i32
    %79 = memref.realloc %70 : memref<2xi16> to memref<5xi16>
    %80 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %59, %59, %59 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
    memref.alloca_scope  {
      %260 = tensor.empty(%c5, %22) : tensor<?x?x2xi64>
      %261 = arith.remf %cst, %cst_0 : f32
      %262 = math.fpowi %cst_1, %c514185487_i32 : f16, i32
      %263 = math.copysign %2, %2 : tensor<5xf16>
      %264 = memref.load %alloc_7[%c2] : memref<5xf16>
      %265 = index.sub %c11, %c10
      %266 = scf.index_switch %c1 -> vector<2xi1> 
      case 1 {
        %286 = math.log10 %1 : tensor<2x2xf16>
        %287 = index.sub %36, %c8
        %288 = vector.create_mask %c14, %c7 : vector<2x2xi1>
        %289 = index.maxu %52, %c14
        %290 = math.ctlz %5 : tensor<6x2x2xi64>
        %cst_38 = arith.constant 0x4E1A05F8 : f32
        %291 = math.log1p %1 : tensor<2x2xf16>
        %292 = arith.floordivsi %c10539_i16, %c-21004_i16 : i16
        %293 = arith.ori %true, %true : i1
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_39 = arith.constant 0 : i64
        %294 = vector.transfer_read %12[%289, %c10], %c0_i64_39 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<2x2xi64>, vector<2xi64>
        %295 = math.tan %cst_0 : f32
        %296 = math.absi %4 : tensor<6x2x2xi16>
        %297 = vector.extract_strided_slice %59 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2xi1> to vector<2x2xi1>
        %298 = affine.min affine_map<(d0) -> (d0 - d0 floordiv 128 + (d0 floordiv 128) ceildiv 8, d0 floordiv 128 - d0 - d0 floordiv 128, ((-(d0 floordiv 128)) floordiv 64) ceildiv 64, (-(d0 floordiv 128)) mod 4)>(%c13)
        %299 = math.fma %3, %3, %3 : tensor<2xf32>
        %300 = index.divs %c13, %c8
        scf.yield %32 : vector<2xi1>
      }
      default {
        %alloc_38 = memref.alloc() : memref<6x2x2xi64>
        memref.tensor_store %8, %alloc_38 : memref<6x2x2xi64>
        %286 = math.exp2 %cst_1 : f16
        %287 = math.ctpop %c23747_i16 : i16
        %288 = arith.xori %true, %true : i1
        %289 = math.ctlz %11 : tensor<5xi32>
        %290 = math.exp %1 : tensor<2x2xf16>
        %291 = math.atan %cst_0 : f32
        %292 = vector.insert %32, %26 [1] : vector<2xi1> into vector<2x2xi1>
        memref.store %c2130527886_i64, %34[%c0, %c0] : memref<2x2xi64>
        %293 = math.ctlz %c12083_i16 : i16
        %294 = arith.maxui %c343258463_i32, %c343258463_i32 : i32
        %c0_i32_39 = arith.constant 0 : i32
        %295 = vector.transfer_read %14[%c1, %c2, %c6], %c0_i32_39 : tensor<6x2x2xi32>, vector<2x5xi32>
        %cast_40 = tensor.cast %0 : tensor<6x2x2xi32> to tensor<?x?x?xi32>
        %296 = arith.minui %c10539_i16, %c-21004_i16 : i16
        %297 = arith.floordivsi %true, %true : i1
        %298 = math.ipowi %6, %6 : tensor<2xi32>
        scf.yield %32 : vector<2xi1>
      }
      %267 = arith.shrui %c-21004_i16, %c32491_i16 : i16
      %268 = math.powf %1, %1 : tensor<2x2xf16>
      %269 = math.expm1 %1 : tensor<2x2xf16>
      %270 = arith.shrui %c1605113061_i64, %c1605113061_i64 : i64
      %271 = arith.remf %cst, %cst_0 : f32
      %272 = math.cttz %19 : tensor<5xi32>
      %273 = index.divs %265, %25
      %generated_36 = tensor.generate %c7, %52 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %286 = math.atan %3 : tensor<2xf32>
        %287 = index.floordivs %arg1, %c15
        %288 = math.ceil %3 : tensor<2xf32>
        %289 = arith.maxui %c-14339_i16, %c-14339_i16 : i16
        tensor.yield %c-14339_i16 : i16
      } : tensor<?x?x2xi16>
      %274 = math.atan %2 : tensor<5xf16>
      %275 = index.ceildivs %265, %c12
      %276 = math.ceil %1 : tensor<2x2xf16>
      memref.copy %alloc_9, %alloc_6 : memref<6x2x2xi16> to memref<6x2x2xi16>
      scf.execute_region {
        %286 = vector.create_mask %c14 : vector<5xi1>
        %287 = arith.muli %true, %true : i1
        %288 = vector.matrix_multiply %32, %286 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<2xi1>, vector<5xi1>) -> vector<10xi1>
        %alloc_38 = memref.alloc() : memref<5xi1>
        memref.copy %alloc, %alloc_38 : memref<5xi1> to memref<5xi1>
        %289 = arith.shli %c514185487_i32, %c343258463_i32 : i32
        %290 = vector.splat %25 : vector<5xindex>
        %291 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d3)>(%c6, %c4, %c7, %c3)
        %292 = math.atan %cst_1 : f16
        %293 = tensor.empty() : tensor<2x2xi32>
        %294 = math.fpowi %1, %293 : tensor<2x2xf16>, tensor<2x2xi32>
        %295 = arith.divui %c343258463_i32, %c1757552704_i32 : i32
        %296 = arith.floordivsi %c32491_i16, %c12083_i16 : i16
        %297 = vector.broadcast %c6 : index to vector<2xindex>
        %298 = vector.broadcast %c32491_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_6[%c0, %c1, %c0] [%297], %32, %298 : memref<6x2x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %299 = index.castu %c9 : index to i32
        %300 = vector.broadcast %c1605113061_i64 : i64 to vector<6xi64>
        %301 = vector.broadcast %true : i1 to vector<6xi1>
        %302 = vector.maskedload %alloc_10[%c1, %c1], %301, %300 : memref<2x2xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        affine.store %cst_0, %alloc_11[%c12, %c3, %c9] : memref<6x2x2xf32>
        %303 = math.expm1 %2 : tensor<5xf16>
        scf.yield
      }
      %cst_37 = arith.constant 1.77807219E+9 : f32
      %277 = arith.minui %true, %true : i1
      %278 = index.maxs %c9, %c13
      %279 = arith.remf %cst_0, %cst : f32
      affine.store %c12083_i16, %alloc_18[%c3] : memref<2xi16>
      %280 = math.atan %3 : tensor<2xf32>
      memref.alloca_scope  {
        %286 = arith.shrui %c816343974_i32, %c1757552704_i32 : i32
        %inserted_38 = tensor.insert %cst_1 into %1[%c0, %c1] : tensor<2x2xf16>
        %287 = index.floordivs %c14, %c15
        %288 = math.absi %0 : tensor<6x2x2xi32>
        %c14847_i16 = arith.constant 14847 : i16
        %inserted_39 = tensor.insert %cst_1 into %1[%c1, %c1] : tensor<2x2xf16>
        %289 = arith.remf %cst_0, %cst_0 : f32
        %290 = arith.addf %cst_1, %cst_1 : f16
        %291 = math.ceil %cst : f32
        %292 = arith.maxsi %true, %true : i1
        %cst_40 = arith.constant 1.067200e+04 : f16
        %293 = vector.broadcast %true : i1 to vector<1x1xi1>
        %294 = vector.outerproduct %60, %73, %293 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
        %295 = arith.andi %true, %true : i1
        %true_41 = arith.constant true
        %false = arith.constant false
        %296 = vector.transfer_read %13[%c11, %c14, %273], %false {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<6x2x2xi1>, vector<5x5xi1>
        memref.store %c32491_i16, %70[%c0] : memref<2xi16>
        %297 = arith.addf %cst_0, %cst_0 : f32
        %298 = affine.load %42[%c3, %c6, %c1] : memref<6x2x2xf32>
        %299 = arith.maxf %298, %298 : f32
        %300 = math.ipowi %57, %21 : tensor<i32>
        %alloc_42 = memref.alloc() : memref<5xf32>
        %301 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %302 = vector.broadcast %true : i1 to vector<5xi1>
        %303 = vector.broadcast %c514185487_i32 : i32 to vector<5xi32>
        %304 = vector.gather %alloc_42[%36] [%303], %302, %301 : memref<5xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %305 = memref.load %alloc_3[%c1, %c1] : memref<2x2xi32>
        %306 = index.maxs %c15, %c4
        %307 = arith.shli %c12083_i16, %c-14339_i16 : i16
        %308 = memref.atomic_rmw assign %c23747_i16, %alloc_2[%c0] : (i16, memref<5xi16>) -> i16
        %309 = arith.subi %c816343974_i32, %c514185487_i32 : i32
        %310 = vector.broadcast %c514185487_i32 : i32 to vector<2xi32>
        %311 = vector.maskedload %alloc_4[%c1, %c0], %32, %310 : memref<2x2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        memref.copy %alloc_9, %alloc_6 : memref<6x2x2xi16> to memref<6x2x2xi16>
        %312 = vector.bitcast %311 : vector<2xi32> to vector<2xi32>
        %313 = math.sqrt %2 : tensor<5xf16>
        %314 = arith.maxui %c12083_i16, %c23747_i16 : i16
        %315 = arith.mulf %cst_0, %cst : f32
        %316 = math.round %3 : tensor<2xf32>
      }
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4 : tensor<6x2x2xi16>) outs(%4 : tensor<6x2x2xi16>) {
      ^bb0(%in: i16, %out: i16):
        %286 = arith.maxui %in, %c10539_i16 : i16
        %287 = arith.floordivsi %c-21004_i16, %in : i16
        %288 = math.absi %c32491_i16 : i16
        %289 = tensor.empty() : tensor<2x2xi64>
        %290 = linalg.matmul ins(%12, %12 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%289 : tensor<2x2xi64>) -> tensor<2x2xi64>
        %291 = arith.remf %cst_0, %cst : f32
        %292 = vector.matrix_multiply %60, %32 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi1>, vector<2xi1>) -> vector<2xi1>
        %alloca = memref.alloca() : memref<5xf32>
        %293 = index.casts %c-14339_i16 : i16 to index
        %294 = bufferization.to_tensor %alloc_7 : memref<5xf16>
        %295 = math.atan2 %294, %2 : tensor<5xf16>
        %296 = arith.maxui %out, %c10539_i16 : i16
        %297 = index.floordivs %c5, %c2
        %298 = math.exp %3 : tensor<2xf32>
        %299 = memref.realloc %alloc_18 : memref<2xi16> to memref<6xi16>
        %300 = arith.divf %cst_0, %cst_0 : f32
        %301 = arith.ceildivsi %c816343974_i32, %c1757552704_i32 : i32
        %302 = math.exp %2 : tensor<5xf16>
        %303 = math.atan2 %cst_0, %cst_0 : f32
        %304 = index.ceildivs %c8, %c10
        %305 = tensor.empty() : tensor<2x2xi64>
        %306 = linalg.matmul ins(%12, %12 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%305 : tensor<2x2xi64>) -> tensor<2x2xi64>
        memref.tensor_store %15, %alloc_2 : memref<5xi16>
        %alloc_38 = memref.alloc() : memref<2x2xf32>
        %307 = vector.broadcast %cst : f32 to vector<6x2x2xf32>
        %308 = vector.broadcast %true : i1 to vector<6x2x2xi1>
        %309 = vector.broadcast %c1757552704_i32 : i32 to vector<6x2x2xi32>
        %310 = vector.gather %alloc_38[%275, %36] [%309], %308, %307 : memref<2x2xf32>, vector<6x2x2xi32>, vector<6x2x2xi1>, vector<6x2x2xf32> into vector<6x2x2xf32>
        %311 = index.casts %in : i16 to index
        %cst_39 = arith.constant 1.000000e+00 : f32
        %cst_40 = arith.constant 0.000000e+00 : f32
        %312 = vector.transfer_read %alloc_11[%311, %36, %275], %cst_40 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<6x2x2xf32>, vector<6xf32>
        %313 = arith.ori %c343258463_i32, %c514185487_i32 : i32
        %314 = math.tan %1 : tensor<2x2xf16>
        %315 = arith.maxf %cst, %cst_0 : f32
        %from_elements = tensor.from_elements %c32491_i16, %c-21004_i16, %c10539_i16, %c-21004_i16 : tensor<2x2xi16>
        %splat_41 = tensor.splat %c12083_i16 : tensor<6x2x2xi16>
        %316 = vector.insert %true, %292 [0] : i1 into vector<2xi1>
        %317 = arith.floordivsi %c12083_i16, %c-14339_i16 : i16
        %318 = bufferization.clone %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
        linalg.yield %c32491_i16 : i16
      } -> tensor<6x2x2xi16>
      %282 = vector.extract_strided_slice %18 {offsets = [0], sizes = [4], strides = [1]} : vector<6xf32> to vector<4xf32>
      %283 = math.round %cst_0 : f32
      %284 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %26, %32, %32 : vector<2x2xi1>, vector<2xi1> into vector<2xi1>
      %285 = affine.for %arg1 = 0 to 61 iter_args(%arg2 = %expanded) -> (tensor<2x2x1xi16>) {
        affine.yield %expanded : tensor<2x2x1xi16>
      }
    }
    %81 = vector.matrix_multiply %73, %60 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %82 = arith.xori %c23747_i16, %c32491_i16 : i16
    %83 = scf.index_switch %c2 -> tensor<2xf16> 
    case 1 {
      %260 = arith.remf %cst_1, %cst_1 : f16
      %261 = bufferization.clone %alloc_11 : memref<6x2x2xf32> to memref<6x2x2xf32>
      %262 = index.mul %c15, %c8
      %263 = scf.while (%arg1 = %cst_1) : (f16) -> f16 {
        %279 = math.log %arg1 : f16
        %alloc_36 = memref.alloc() : memref<6x2x2xi64>
        memref.tensor_store %5, %alloc_36 : memref<6x2x2xi64>
        %280 = memref.load %alloc_11[%c4, %c1, %c0] : memref<6x2x2xf32>
        %281 = math.log %3 : tensor<2xf32>
        %282 = math.exp2 %cst_0 : f32
        %283 = arith.shli %true, %true : i1
        %284 = arith.shli %c32491_i16, %c32491_i16 : i16
        bufferization.dealloc_tensor %7 : tensor<2x2xi16>
        scf.condition(%true) %cst_1 : f16
      } do {
      ^bb0(%arg1: f16):
        %279 = index.ceildivs %22, %52
        %280 = arith.addf %cst, %cst : f32
        %281 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        %282 = vector.transfer_write %281, %1[%c0, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf16>, tensor<2x2xf16>
        %283 = arith.minui %c-21004_i16, %c23747_i16 : i16
        %284 = vector.insertelement %true, %73[%c5 : index] : vector<1xi1>
        %alloc_36 = memref.alloc() : memref<5xi1>
        memref.copy %alloc, %alloc_36 : memref<5xi1> to memref<5xi1>
        %285 = index.maxs %c4, %36
        %286 = vector.extract_strided_slice %18 {offsets = [2], sizes = [3], strides = [1]} : vector<6xf32> to vector<3xf32>
        %287 = affine.apply affine_map<(d0) -> (d0 + 16)>(%279)
        %288 = arith.shrui %c10539_i16, %c12083_i16 : i16
        %289 = tensor.empty() : tensor<6x2x2xi1>
        %290 = math.cttz %c12083_i16 : i16
        %291 = math.atan %2 : tensor<5xf16>
        %292 = tensor.empty() : tensor<2x2xi16>
        %293 = linalg.matmul ins(%7, %7 : tensor<2x2xi16>, tensor<2x2xi16>) outs(%292 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %294 = index.casts %c10539_i16 : i16 to index
        %295 = arith.remf %cst_1, %arg1 : f16
        scf.yield %arg1 : f16
      }
      %264 = vector.reduction <or>, %32 : vector<2xi1> into i1
      %265 = arith.addi %c816343974_i32, %c1757552704_i32 : i32
      %266 = math.expm1 %2 : tensor<5xf16>
      %267 = arith.muli %true, %true : i1
      %268 = vector.broadcast %c15 : index to vector<6xindex>
      %269 = vector.broadcast %true : i1 to vector<6xi1>
      %270 = vector.broadcast %c816343974_i32 : i32 to vector<6xi32>
      vector.scatter %alloc_4[%c0, %c0] [%268], %269, %270 : memref<2x2xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
      %271 = math.log %1 : tensor<2x2xf16>
      %272 = math.log1p %3 : tensor<2xf32>
      %273 = math.log10 %1 : tensor<2x2xf16>
      %274 = arith.ceildivsi %c343258463_i32, %c1757552704_i32 : i32
      %275 = arith.ori %c816343974_i32, %c514185487_i32 : i32
      %276 = math.rsqrt %3 : tensor<2xf32>
      %277 = arith.maxui %c1757552704_i32, %c514185487_i32 : i32
      %278 = tensor.empty() : tensor<2xf16>
      scf.yield %278 : tensor<2xf16>
    }
    default {
      %260 = arith.addf %cst, %cst_0 : f32
      %261 = arith.addf %cst_0, %cst_0 : f32
      %262 = vector.splat %c13 : vector<5xindex>
      %263 = index.sizeof
      %264 = index.floordivs %c5, %c0
      %dest_36, %accumulated_value_37 = vector.scan <add>, %59, %32 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xi1>, vector<2xi1>
      %265 = math.rsqrt %3 : tensor<2xf32>
      %266 = arith.maxsi %c514185487_i32, %c343258463_i32 : i32
      %267 = math.cttz %c343258463_i32 : i32
      %268 = math.log1p %3 : tensor<2xf32>
      %269 = arith.subi %c2130527886_i64, %c2130527886_i64 : i64
      %270 = arith.ori %c1757552704_i32, %c343258463_i32 : i32
      %271 = arith.minf %cst_0, %cst_0 : f32
      %272 = tensor.empty() : tensor<2x6x2xi16>
      %mapped_38 = linalg.map ins(%alloc_17, %alloc_17, %alloc_17 : memref<2x6x2xi16>, memref<2x6x2xi16>, memref<2x6x2xi16>) outs(%272 : tensor<2x6x2xi16>)
        (%in: i16, %in_39: i16, %in_40: i16) {
          %276 = arith.xori %c-21004_i16, %c10539_i16 : i16
          %277 = math.log %cst : f32
          affine.store %true, %alloc[%c6] : memref<5xi1>
          %278 = arith.shli %in_40, %in : i16
          %279 = vector.extract %32[1] : vector<2xi1>
          %280 = vector.broadcast %c2130527886_i64 : i64 to vector<2x2xi64>
          %281 = vector.transfer_write %280, %5[%c8, %c4, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x2xi64>, tensor<6x2x2xi64>
          %282 = vector.broadcast %cst_0 : f32 to vector<2xf32>
          %283 = vector.maskedload %alloc_13[%c5, %c1, %c0], %32, %282 : memref<6x2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %284 = index.ceildivu %264, %c4
          %285 = affine.load %alloc_7[%c14] : memref<5xf16>
          %286 = math.ctlz %14 : tensor<6x2x2xi32>
          %287 = affine.max affine_map<(d0, d1, d2) -> (-d1, -d1, -(d2 + d0), -d1)>(%c8, %c13, %c3)
          %288 = math.log1p %1 : tensor<2x2xf16>
          %289 = index.maxu %c11, %c11
          %290 = vector.broadcast %c7 : index to vector<2xindex>
          %291 = vector.broadcast %c-14339_i16 : i16 to vector<2xi16>
          vector.scatter %alloc_9[%c0, %c0, %c0] [%290], %32, %291 : memref<6x2x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
          %292 = tensor.empty() : tensor<2xf16>
          %293 = arith.remf %cst_1, %285 : f16
          %294 = arith.addi %c816343974_i32, %c1757552704_i32 : i32
          %295 = index.add %36, %c7
          %alloc_41 = memref.alloc() : memref<6x2x2xi1>
          memref.copy %alloc_12, %alloc_41 : memref<6x2x2xi1> to memref<6x2x2xi1>
          %296 = arith.negf %cst : f32
          %297 = arith.muli %c-21004_i16, %c12083_i16 : i16
          %298 = vector.reduction <add>, %283 : vector<2xf32> into f32
          %299 = arith.cmpf ord, %cst_0, %cst_0 : f32
          %300 = arith.shrui %c32491_i16, %c32491_i16 : i16
          %301 = arith.shrui %c816343974_i32, %c514185487_i32 : i32
          %302 = arith.subi %c10539_i16, %c32491_i16 : i16
          %303 = arith.divsi %c1605113061_i64, %c1605113061_i64 : i64
          %304 = arith.cmpf false, %cst_0, %cst : f32
          %305 = vector.splat %287 : vector<2x2xindex>
          %306 = arith.subi %c1757552704_i32, %c816343974_i32 : i32
          %307 = index.sub %c14, %c9
          %308 = arith.cmpf true, %285, %285 : f16
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %273 = index.casts %c2 : index to i32
      %274 = vector.bitcast %73 : vector<1xi1> to vector<1xi1>
      %275 = tensor.empty() : tensor<2xf16>
      scf.yield %275 : tensor<2xf16>
    }
    %84 = bufferization.clone %alloc_16 : memref<2x2xi64> to memref<2x2xi64>
    %85 = arith.mulf %cst, %cst_0 : f32
    %86 = math.exp %2 : tensor<5xf16>
    %87 = arith.floordivsi %c-21004_i16, %c23747_i16 : i16
    %88 = scf.while (%arg1 = %70) : (memref<2xi16>) -> memref<2xi16> {
      %260 = scf.index_switch %c11 -> memref<5xi64> 
      case 1 {
        %267 = arith.maxf %cst, %cst_0 : f32
        memref.copy %42, %alloc_13 : memref<6x2x2xf32> to memref<6x2x2xf32>
        %268 = vector.broadcast %c514185487_i32 : i32 to vector<2xi32>
        %269 = memref.load %alloc_7[%c0] : memref<5xf16>
        %cst_38 = arith.constant 0x4C49228F : f32
        %270 = vector.broadcast %true : i1 to vector<1x1xi1>
        %271 = vector.outerproduct %73, %73, %270 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
        %272 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
        %273 = vector.outerproduct %18, %18, %272 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
        %274 = math.absi %15 : tensor<5xi16>
        %275 = arith.divui %c514185487_i32, %c1757552704_i32 : i32
        %276 = index.divs %c2, %c13
        vector.print %268 : vector<2xi32>
        %277 = arith.addf %cst, %cst : f32
        %278 = arith.floordivsi %c23747_i16, %c10539_i16 : i16
        %279 = vector.splat %c5 : vector<2x2xindex>
        %280 = arith.floordivsi %c816343974_i32, %c1757552704_i32 : i32
        %281 = arith.minui %c514185487_i32, %c343258463_i32 : i32
        %alloc_39 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_39 : memref<5xi64>
      }
      case 2 {
        %267 = math.exp %cst_0 : f32
        %268 = math.fpowi %cst_1, %c1757552704_i32 : f16, i32
        affine.store %c514185487_i32, %alloc_3[%c12, %c1] : memref<2x2xi32>
        %269 = math.cttz %true : i1
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %60, %73, %true : vector<1xi1>, vector<1xi1> into i1
        %271 = arith.shrui %c514185487_i32, %c816343974_i32 : i32
        %272 = index.mul %c10, %c13
        %273 = arith.floordivsi %c10539_i16, %c32491_i16 : i16
        %274 = vector.shuffle %18, %18 [0, 3, 4, 10] : vector<6xf32>, vector<6xf32>
        %c1_i32_38 = arith.constant 1 : i32
        %c0_i32_39 = arith.constant 0 : i32
        %275 = vector.transfer_read %14[%c6, %c1, %22], %c0_i32_39 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x2x2xi32>, vector<2xi32>
        %splat_40 = tensor.splat %c2130527886_i64 : tensor<5xi64>
        memref.tensor_store %13, %alloc_12 : memref<6x2x2xi1>
        %276 = arith.maxsi %c32491_i16, %c-14339_i16 : i16
        %277 = arith.addf %cst_0, %cst_0 : f32
        %278 = vector.bitcast %32 : vector<2xi1> to vector<2xi1>
        %279 = memref.load %42[%c2, %c0, %c0] : memref<6x2x2xf32>
        %alloc_41 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_41 : memref<5xi64>
      }
      default {
        %267 = affine.apply affine_map<(d0) -> (-(d0 ceildiv 128))>(%c9)
        %268 = arith.floordivsi %c-21004_i16, %c10539_i16 : i16
        %269 = math.round %3 : tensor<2xf32>
        %270 = math.log1p %cst_1 : f16
        %271 = math.ctlz %13 : tensor<6x2x2xi1>
        memref.tensor_store %2, %alloc_7 : memref<5xf16>
        %272 = index.castu %true : i1 to index
        %273 = affine.min affine_map<(d0, d1, d2) -> ((d2 + 68) ceildiv 16 + 1, (d1 + (d2 + 68) ceildiv 16) floordiv 2)>(%c2, %c2, %c2)
        %274 = memref.realloc %arg1 : memref<2xi16> to memref<2xi16>
        %275 = math.atan2 %1, %1 : tensor<2x2xf16>
        %276 = arith.ori %c1757552704_i32, %c343258463_i32 : i32
        %277 = math.expm1 %cst : f32
        %278 = memref.atomic_rmw minf %cst_0, %alloc_5[%c5, %c1, %c0] : (f32, memref<6x2x2xf32>) -> f32
        %279 = arith.mulf %cst_0, %cst_0 : f32
        %280 = arith.divui %c2130527886_i64, %c1605113061_i64 : i64
        %281 = math.sqrt %3 : tensor<2xf32>
        %alloc_38 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_38 : memref<5xi64>
      }
      %dest_36, %accumulated_value_37 = vector.scan <or>, %59, %32 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xi1>, vector<2xi1>
      %261 = vector.matrix_multiply %81, %60 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %262 = math.log1p %2 : tensor<5xf16>
      %263 = math.log10 %2 : tensor<5xf16>
      %264 = arith.maxui %c10539_i16, %c-14339_i16 : i16
      %265 = arith.addf %cst_1, %cst_1 : f16
      %266 = math.sqrt %2 : tensor<5xf16>
      scf.condition(%true) %arg1 : memref<2xi16>
    } do {
    ^bb0(%arg1: memref<2xi16>):
      %260 = math.round %2 : tensor<5xf16>
      %261 = arith.remf %cst_0, %cst_0 : f32
      bufferization.dealloc_tensor %14 : tensor<6x2x2xi32>
      %alloc_36 = memref.alloc() : memref<2xi1>
      %c1305949666_i64 = arith.constant 1305949666 : i64
      %262 = arith.shli %c10539_i16, %c12083_i16 : i16
      %rank = tensor.rank %2 : tensor<5xf16>
      %263 = arith.divui %c343258463_i32, %c816343974_i32 : i32
      %264 = math.expm1 %cst_0 : f32
      %265 = math.ctpop %c1757552704_i32 : i32
      %266 = affine.min affine_map<(d0, d1, d2) -> (-(d2 - d1))>(%c5, %22, %c3)
      %267 = math.absi %7 : tensor<2x2xi16>
      %268 = memref.atomic_rmw mins %c514185487_i32, %alloc_8[%c2, %c1, %c0] : (i32, memref<6x2x2xi32>) -> i32
      %269 = math.sqrt %2 : tensor<5xf16>
      %270 = vector.broadcast %c514185487_i32 : i32 to vector<2xi32>
      vector.transfer_write %270, %alloc_8[%c8, %rank, %52] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi32>, memref<6x2x2xi32>
      %rank_37 = tensor.rank %0 : tensor<6x2x2xi32>
      scf.yield %alloc_18 : memref<2xi16>
    }
    %89 = affine.max affine_map<(d0) -> (d0 mod 2, (d0 + d0 mod 2 - (d0 mod 2) * 8) mod 16)>(%c0)
    %inserted = tensor.insert %c32491_i16 into %4[%c5, %c1, %c1] : tensor<6x2x2xi16>
    %cst_20 = arith.constant 6.134400e+04 : f16
    %90 = math.tan %3 : tensor<2xf32>
    %91 = math.ctlz %4 : tensor<6x2x2xi16>
    %92 = arith.divui %c12083_i16, %c10539_i16 : i16
    %93 = math.round %3 : tensor<2xf32>
    %94 = index.ceildivs %c10, %c11
    %95 = math.tan %2 : tensor<5xf16>
    %96 = arith.remf %cst_0, %cst_0 : f32
    affine.store %cst_0, %alloc_5[%c2, %c4, %c4] : memref<6x2x2xf32>
    %97 = index.floordivs %c13, %25
    %98 = math.round %cst_0 : f32
    %99 = vector.splat %94 : vector<6x2x2xindex>
    %generated = tensor.generate %c2 {
    ^bb0(%arg1: index, %arg2: index):
      %260 = math.tan %3 : tensor<2xf32>
      %261 = arith.shli %c32491_i16, %c-14339_i16 : i16
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_18 : memref<2xi16>) outs(%expanded : tensor<2x2x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %inserted_36 = tensor.insert %out into %expanded[%c1, %c0, %c0] : tensor<2x2x1xi16>
        %alloca = memref.alloca() : memref<5xf16>
        %264 = arith.maxf %cst, %cst_0 : f32
        %265 = vector.load %alloc_9[%c4, %c0, %c0] : memref<6x2x2xi16>, vector<2x2xi16>
        %266 = vector.broadcast %c1605113061_i64 : i64 to vector<2xi64>
        %267 = vector.maskedload %alloc_16[%c0, %c0], %32, %266 : memref<2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %268 = arith.shli %c-21004_i16, %c32491_i16 : i16
        %269 = math.atan %3 : tensor<2xf32>
        %270 = math.sqrt %cst_1 : f16
        %271 = index.casts %c1605113061_i64 : i64 to index
        %272 = arith.shrsi %c32491_i16, %c-14339_i16 : i16
        %from_elements = tensor.from_elements %out, %c10539_i16, %in, %out : tensor<2x2xi16>
        %273 = arith.maxf %cst_0, %cst_0 : f32
        %274 = affine.apply affine_map<(d0, d1) -> (d0)>(%271, %arg1)
        %275 = math.tan %cst_0 : f32
        %276 = arith.shrsi %in, %in : i16
        %277 = arith.maxsi %c514185487_i32, %c514185487_i32 : i32
        %278 = vector.broadcast %cst_0 : f32 to vector<6x2x2xf32>
        %279 = vector.fma %278, %278, %278 : vector<6x2x2xf32>
        %cast_37 = tensor.cast %1 : tensor<2x2xf16> to tensor<?x?xf16>
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %73, %60, %true : vector<1xi1>, vector<1xi1> into i1
        %281 = bufferization.clone %alloc_6 : memref<6x2x2xi16> to memref<6x2x2xi16>
        memref.tensor_store %13, %alloc_12 : memref<6x2x2xi1>
        %282 = tensor.empty() : tensor<2x2xi16>
        %283 = linalg.matmul ins(%7, %from_elements : tensor<2x2xi16>, tensor<2x2xi16>) outs(%282 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %284 = math.fma %3, %3, %3 : tensor<2xf32>
        %285 = arith.shli %c32491_i16, %c12083_i16 : i16
        %286 = math.rsqrt %1 : tensor<2x2xf16>
        %287 = math.atan %3 : tensor<2xf32>
        %288 = arith.negf %cst_0 : f32
        %289 = math.absi %7 : tensor<2x2xi16>
        %290 = math.fma %1, %1, %1 : tensor<2x2xf16>
        %291 = vector.shuffle %59, %26 [1, 3] : vector<2x2xi1>, vector<2x2xi1>
        %292 = math.tanh %3 : tensor<2xf32>
        %293 = arith.divui %c1757552704_i32, %c514185487_i32 : i32
        linalg.yield %out : i16
      } -> tensor<2x2x1xi16>
      %263 = arith.floordivsi %c2130527886_i64, %c1605113061_i64 : i64
      tensor.yield %c23747_i16 : i16
    } : tensor<?x2xi16>
    %100 = arith.addf %cst, %cst : f32
    %101 = vector.matrix_multiply %73, %73 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    affine.for %arg1 = 0 to 75 {
    }
    %102 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3 + 16, d0 * 16 - d1 ceildiv 4 + 2, d3)>(%c13, %c5, %52, %c4)
    %103 = vector.broadcast %c1757552704_i32 : i32 to vector<2xi32>
    %104 = vector.gather %alloc_15[%c0, %c2] [%103], %32, %32 : memref<2x2xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
    %105 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d2, -d1, (d2 floordiv 128) * 64, d0)>(%c1, %c8, %c15, %c3)
    %cst_21 = arith.constant 1.79949325E+9 : f32
    scf.index_switch %c8 
    case 1 {
      %260 = math.fpowi %cst_1, %c343258463_i32 : f16, i32
      %261 = tensor.empty() : tensor<2xi32>
      %mapped_36 = linalg.map ins(%17, %16, %17 : tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) outs(%261 : tensor<2xi32>)
        (%in: i32, %in_37: i32, %in_38: i32) {
          %276 = math.tan %3 : tensor<2xf32>
          %277 = math.rsqrt %cst_1 : f16
          %278 = vector.multi_reduction <minui>, %59, %104 [0] : vector<2x2xi1> to vector<2xi1>
          %279 = arith.andi %c2130527886_i64, %c1605113061_i64 : i64
          %rank = tensor.rank %3 : tensor<2xf32>
          %280 = math.exp %2 : tensor<5xf16>
          %c613503297_i64 = arith.constant 613503297 : i64
          %281 = math.powf %1, %1 : tensor<2x2xf16>
          %282 = arith.cmpi uge, %c10539_i16, %c10539_i16 : i16
          %cst_39 = arith.constant 5.814400e+04 : f16
          %from_elements = tensor.from_elements %c10539_i16, %c-14339_i16 : tensor<2xi16>
          %283 = arith.minsi %true, %true : i1
          %284 = vector.broadcast %25 : index to vector<6xindex>
          %285 = vector.broadcast %true : i1 to vector<6xi1>
          vector.scatter %alloc[%c1] [%284], %285, %285 : memref<5xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %286 = arith.subi %c343258463_i32, %in_37 : i32
          %287 = arith.negf %cst_0 : f32
          %288 = math.powf %2, %2 : tensor<5xf16>
          %289 = arith.divui %in_38, %c1757552704_i32 : i32
          %290 = math.absi %14 : tensor<6x2x2xi32>
          %291 = math.round %3 : tensor<2xf32>
          %292 = math.ceil %cst : f32
          %293 = math.expm1 %cst : f32
          %294 = math.exp2 %2 : tensor<5xf16>
          %295 = arith.maxf %cst, %cst_0 : f32
          %296 = tensor.empty() : tensor<2x2xf16>
          %297 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%296 : tensor<2x2xf16>) -> tensor<2x2xf16>
          %298 = math.fpowi %2, %11 : tensor<5xf16>, tensor<5xi32>
          %299 = math.roundeven %3 : tensor<2xf32>
          %300 = index.divs %c7, %36
          %301 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 64, d1 - d0, (d0 - 16) * -32)>(%c11, %300)
          %302 = math.atan2 %296, %1 : tensor<2x2xf16>
          %303 = math.cos %cst : f32
          %304 = math.fpowi %3, %16 : tensor<2xf32>, tensor<2xi32>
          %305 = math.atan %1 : tensor<2x2xf16>
          %c1_i32_40 = arith.constant 1 : i32
          linalg.yield %c1_i32_40 : i32
        }
      %262 = vector.broadcast %c-14339_i16 : i16 to vector<5xi16>
      %263 = vector.broadcast %true : i1 to vector<5xi1>
      %264 = vector.maskedload %alloc_6[%c3, %c0, %c1], %263, %262 : memref<6x2x2xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %265 = vector.splat %25 : vector<6x2x2xindex>
      %266 = arith.andi %c12083_i16, %c12083_i16 : i16
      %267 = math.exp %1 : tensor<2x2xf16>
      %268 = math.ceil %cst_0 : f32
      %269 = arith.remf %cst_1, %cst_1 : f16
      %270 = vector.shuffle %101, %32 [0] : vector<1xi1>, vector<2xi1>
      %271 = vector.bitcast %26 : vector<2x2xi1> to vector<2x2xi1>
      %272 = arith.shrui %c-14339_i16, %c-14339_i16 : i16
      %c21495_i16 = arith.constant 21495 : i16
      %273 = arith.addf %cst, %cst : f32
      scf.execute_region {
        %276 = arith.addf %cst_0, %cst_0 : f32
        %alloc_37 = memref.alloc() : memref<6x2x2xi64>
        %277 = math.round %3 : tensor<2xf32>
        %278 = index.ceildivu %25, %c15
        memref.assume_alignment %alloc_16, 16 : memref<2x2xi64>
        %279 = math.roundeven %cst : f32
        %280 = arith.shrui %c1757552704_i32, %c816343974_i32 : i32
        %c0_i32_38 = arith.constant 0 : i32
        %c0_i32_39 = arith.constant 0 : i32
        %281 = vector.transfer_read %14[%278, %c7, %102], %c0_i32_39 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x2x2xi32>, vector<5xi32>
        %282 = math.exp %1 : tensor<2x2xf16>
        %283 = arith.maxf %cst, %cst : f32
        %284 = arith.maxui %true, %true : i1
        %285 = arith.negf %cst : f32
        %286 = math.log1p %cst_1 : f16
        %287 = math.round %1 : tensor<2x2xf16>
        %288 = arith.maxf %cst_0, %cst : f32
        %from_elements = tensor.from_elements %c1757552704_i32, %c816343974_i32, %c514185487_i32, %c816343974_i32 : tensor<2x2xi32>
        scf.yield
      }
      %274 = math.copysign %2, %2 : tensor<5xf16>
      %275 = math.rsqrt %cst_1 : f16
      scf.yield
    }
    case 2 {
      %260 = arith.xori %true, %true : i1
      %261 = arith.maxf %cst, %cst : f32
      %262 = math.tan %2 : tensor<5xf16>
      %263 = math.fma %2, %2, %2 : tensor<5xf16>
      memref.tensor_store %14, %alloc_8 : memref<6x2x2xi32>
      %264 = math.atan %1 : tensor<2x2xf16>
      %265 = arith.minui %c-14339_i16, %c10539_i16 : i16
      %266 = arith.negf %cst_0 : f32
      %267 = math.ipowi %13, %13 : tensor<6x2x2xi1>
      %268 = arith.maxui %c10539_i16, %c10539_i16 : i16
      %269 = math.round %2 : tensor<5xf16>
      vector.print %101 : vector<1xi1>
      %270 = vector.splat %c7 : vector<2x2xindex>
      %271 = math.fpowi %3, %6 : tensor<2xf32>, tensor<2xi32>
      %272 = math.fma %3, %3, %3 : tensor<2xf32>
      %273 = vector.broadcast %c14 : index to vector<2xindex>
      %274 = vector.broadcast %c23747_i16 : i16 to vector<2xi16>
      vector.scatter %alloc_2[%c1] [%273], %104, %274 : memref<5xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      scf.yield
    }
    case 3 {
      %extracted_36 = tensor.extract %15[%c1] : tensor<5xi16>
      affine.store %c343258463_i32, %alloc_3[%c2, %c15] : memref<2x2xi32>
      affine.store %cst, %42[%c12, %c0, %c5] : memref<6x2x2xf32>
      %260 = vector.broadcast %c1757552704_i32 : i32 to vector<2xi32>
      %261 = vector.transfer_write %260, %0[%c10, %c9, %22] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi32>, tensor<6x2x2xi32>
      bufferization.dealloc_tensor %4 : tensor<6x2x2xi16>
      %262 = math.absi %c2130527886_i64 : i64
      %cst_37 = arith.constant 1.000000e+00 : f16
      %263 = vector.transfer_read %alloc_7[%102], %cst_37 : memref<5xf16>, vector<f16>
      %264 = vector.broadcast %c14 : index to vector<2xindex>
      vector.scatter %alloc_15[%c1, %c0] [%264], %32, %32 : memref<2x2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %265 = affine.load %alloc_4[%c8, %c0] : memref<2x2xi32>
      %266 = math.ctlz %5 : tensor<6x2x2xi64>
      %alloc_38 = memref.alloc() : memref<6x2x2xi64>
      memref.tensor_store %5, %alloc_38 : memref<6x2x2xi64>
      %267 = arith.minui %265, %c343258463_i32 : i32
      %268 = math.round %1 : tensor<2x2xf16>
      %269 = math.fma %3, %3, %3 : tensor<2xf32>
      %270 = affine.load %alloc_18[%c14] : memref<2xi16>
      %expanded_39 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<6x2x2xi32> into tensor<6x2x2x1xi32>
      scf.yield
    }
    case 4 {
      %260 = arith.shrui %c343258463_i32, %c514185487_i32 : i32
      %generated_36 = tensor.generate %36 {
      ^bb0(%arg1: index, %arg2: index):
        %276 = arith.remui %c10539_i16, %c23747_i16 : i16
        %277 = math.roundeven %1 : tensor<2x2xf16>
        %splat_37 = tensor.splat %cst : tensor<5xf32>
        %278 = math.ceil %3 : tensor<2xf32>
        tensor.yield %c2130527886_i64 : i64
      } : tensor<?x2xi64>
      %261 = index.casts %c0 : index to i32
      %262 = math.log %cst_1 : f16
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %18, %18, %cst : vector<6xf32>, vector<6xf32> into f32
      %264 = math.exp2 %cst_1 : f16
      %265 = tensor.empty() : tensor<1x2xi16>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %70 : tensor<1x2xi16>, memref<2xi16>) outs(%expanded : tensor<2x2x1xi16>) {
      ^bb0(%in: i16, %in_37: i16, %out: i16):
        %276 = bufferization.clone %alloc_5 : memref<6x2x2xf32> to memref<6x2x2xf32>
        %277 = bufferization.clone %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + d3 floordiv 4, d1 ceildiv 32)>(%c12, %c8, %89, %97)
        %279 = arith.divui %in, %c32491_i16 : i16
        %280 = vector.insertelement %cst_0, %18[%c6 : index] : vector<6xf32>
        %281 = arith.muli %c816343974_i32, %c1757552704_i32 : i32
        %282 = index.add %c2, %c2
        %283 = vector.insertelement %true, %32[%94 : index] : vector<2xi1>
        %284 = arith.floordivsi %out, %c-21004_i16 : i16
        %285 = bufferization.clone %alloc_7 : memref<5xf16> to memref<5xf16>
        %286 = index.ceildivs %c1, %c0
        %287 = math.ctpop %16 : tensor<2xi32>
        %288 = math.exp2 %cst_1 : f16
        %289 = arith.addf %cst_1, %cst_1 : f16
        %290 = math.atan2 %1, %1 : tensor<2x2xf16>
        %291 = math.atan %2 : tensor<5xf16>
        %292 = math.cos %3 : tensor<2xf32>
        %293 = arith.shrsi %in, %c-21004_i16 : i16
        %294 = vector.create_mask %278 : vector<2xi1>
        %295 = vector.splat %94 : vector<2xindex>
        %296 = arith.shrui %c816343974_i32, %c1757552704_i32 : i32
        %297 = vector.extract %59[1] : vector<2x2xi1>
        %298 = tensor.empty() : tensor<2x2xi32>
        %299 = math.fpowi %1, %298 : tensor<2x2xf16>, tensor<2x2xi32>
        %300 = arith.remf %cst_1, %cst_1 : f16
        %301 = arith.ori %c343258463_i32, %c816343974_i32 : i32
        memref.tensor_store %14, %alloc_8 : memref<6x2x2xi32>
        %302 = math.atan2 %2, %2 : tensor<5xf16>
        %303 = arith.remf %cst, %cst : f32
        %304 = index.casts %in_37 : i16 to index
        %305 = math.cttz %13 : tensor<6x2x2xi1>
        %306 = bufferization.to_memref %9 : memref<6x2x2xi1>
        %307 = vector.broadcast %cst_0 : f32 to vector<6xf32>
        vector.transfer_write %307, %alloc_13[%c9, %c1, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xf32>, memref<6x2x2xf32>
        linalg.yield %c12083_i16 : i16
      } -> tensor<2x2x1xi16>
      %267 = index.ceildivs %25, %c6
      %268 = arith.maxui %c2130527886_i64, %c2130527886_i64 : i64
      %269 = math.round %3 : tensor<2xf32>
      %270 = math.tan %3 : tensor<2xf32>
      %271 = index.floordivs %102, %c6
      %272 = bufferization.to_memref %9 : memref<6x2x2xi1>
      %273 = scf.execute_region -> memref<2xi32> {
        %276 = math.exp %2 : tensor<5xf16>
        %277 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %278 = vector.fma %277, %277, %277 : vector<5xf32>
        %279 = math.ceil %cst_0 : f32
        %280 = bufferization.to_tensor %alloc_9 : memref<6x2x2xi16>
        %281 = arith.shrui %c2130527886_i64, %c1605113061_i64 : i64
        %282 = math.cttz %true : i1
        %283 = arith.maxui %c-14339_i16, %c12083_i16 : i16
        %rank = tensor.rank %2 : tensor<5xf16>
        %284 = math.sqrt %3 : tensor<2xf32>
        %285 = arith.cmpf ole, %cst_0, %cst_0 : f32
        %286 = memref.load %alloc_9[%c3, %c0, %c1] : memref<6x2x2xi16>
        %287 = arith.muli %c343258463_i32, %c514185487_i32 : i32
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 - 16) * 2, ((d3 + d3 ceildiv 4) * 4) mod 32, d2 ceildiv 2)>(%52, %267, %c12, %c11)
        %289 = affine.min affine_map<(d0, d1, d2) -> (d0 * 2)>(%89, %c13, %c12)
        %290 = math.absi %c10539_i16 : i16
        %291 = index.ceildivu %105, %c6
        %alloc_37 = memref.alloc() : memref<2xi32>
        scf.yield %alloc_37 : memref<2xi32>
      }
      %274 = math.ceil %3 : tensor<2xf32>
      %275 = arith.xori %c10539_i16, %c10539_i16 : i16
      scf.yield
    }
    default {
      %260 = math.ceil %cst_1 : f16
      %261 = vector.create_mask %c11 : vector<2xi1>
      %262 = arith.remf %cst_0, %cst_0 : f32
      %263 = arith.maxui %c343258463_i32, %c514185487_i32 : i32
      %264 = arith.remf %cst_1, %cst_1 : f16
      %rank = tensor.rank %8 : tensor<6x2x2xi64>
      %265 = index.castu %c10 : index to i32
      %266 = arith.muli %c514185487_i32, %c816343974_i32 : i32
      %267 = index.divu %c0, %c13
      vector.print %73 : vector<1xi1>
      %268 = math.sqrt %3 : tensor<2xf32>
      %269 = math.log10 %cst : f32
      %270 = arith.maxf %cst_1, %cst_1 : f16
      %271 = math.ctlz %c343258463_i32 : i32
      %272 = vector.matrix_multiply %81, %73 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %273 = vector.broadcast %cst : f32 to vector<6x6xf32>
      %274 = vector.outerproduct %18, %18, %273 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
    }
    %106 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c9, %94, %c8)
    %107 = vector.broadcast %c816343974_i32 : i32 to vector<6xi32>
    %108 = vector.broadcast %true : i1 to vector<6xi1>
    %109 = vector.maskedload %alloc_3[%c0, %c1], %108, %107 : memref<2x2xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %110 = math.absi %9 : tensor<6x2x2xi1>
    %111 = bufferization.clone %alloc_18 : memref<2xi16> to memref<2xi16>
    %112 = affine.if affine_set<(d0, d1) : (((d0 - 128) ceildiv 2 - d1) mod 2 == 0, (d0 - 128) ceildiv 2 - 2 == 0, d0 >= 0)>(%c9, %c8) -> memref<2xi32> {
      %260 = arith.remf %cst_0, %cst : f32
      %261 = math.log1p %cst : f32
      %262 = math.ipowi %20, %20 : tensor<i32>
      %263 = arith.cmpf ord, %cst_1, %cst_1 : f16
      %264 = scf.index_switch %c8 -> tensor<2x2xi16> 
      case 1 {
        %267 = vector.maskedload %alloc_15[%c1, %c1], %104, %104 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %268 = index.casts %36 : index to i32
        %269 = affine.load %alloc_3[%c13, %c2] : memref<2x2xi32>
        %270 = vector.matrix_multiply %18, %18 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %alloca = memref.alloca() : memref<2x2xf32>
        %271 = math.absi %6 : tensor<2xi32>
        memref.store %cst, %alloc_5[%c5, %c0, %c1] : memref<6x2x2xf32>
        %272 = index.casts %true : i1 to index
        %273 = memref.realloc %111 : memref<2xi16> to memref<2xi16>
        %274 = index.ceildivu %c15, %c7
        %275 = affine.load %alloc_9[%c5, %c14, %c14] : memref<6x2x2xi16>
        %276 = math.exp %cst_0 : f32
        %277 = math.absi %15 : tensor<5xi16>
        %278 = vector.broadcast %c3 : index to vector<6xindex>
        vector.scatter %alloc_14[%c1] [%278], %108, %18 : memref<2xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %279 = index.sub %c0, %105
        %280 = arith.minui %c343258463_i32, %269 : i32
        scf.yield %7 : tensor<2x2xi16>
      }
      case 2 {
        memref.store %cst_0, %alloc_5[%c4, %c1, %c1] : memref<6x2x2xf32>
        %267 = arith.shrui %c1757552704_i32, %c343258463_i32 : i32
        %268 = vector.matrix_multiply %101, %81 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        vector.print %73 : vector<1xi1>
        %269 = vector.extract %59[0] : vector<2x2xi1>
        %270 = arith.shrui %c1605113061_i64, %c2130527886_i64 : i64
        %271 = index.maxu %c4, %36
        %272 = index.maxu %25, %c13
        affine.store %c10539_i16, %alloc_18[%c0] : memref<2xi16>
        %273 = vector.extract_strided_slice %108 {offsets = [3], sizes = [2], strides = [1]} : vector<6xi1> to vector<2xi1>
        %274 = index.mul %97, %c1
        %275 = vector.broadcast %c4 : index to vector<2xindex>
        %276 = vector.broadcast %c32491_i16 : i16 to vector<2xi16>
        vector.scatter %70[%c0] [%275], %273, %276 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %277 = arith.remf %cst_0, %cst_0 : f32
        %278 = affine.load %alloc_5[%c14, %c5, %c0] : memref<6x2x2xf32>
        %279 = vector.outerproduct %32, %273, %59 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
        %280 = arith.remf %278, %cst : f32
        scf.yield %7 : tensor<2x2xi16>
      }
      default {
        %267 = vector.splat %c2 : vector<2x2xindex>
        %inserted_37 = tensor.insert %c816343974_i32 into %19[%c4] : tensor<5xi32>
        %268 = arith.maxsi %c23747_i16, %c32491_i16 : i16
        %269 = vector.broadcast %cst : f32 to vector<5xf32>
        %270 = vector.fma %269, %269, %269 : vector<5xf32>
        %271 = arith.maxsi %c12083_i16, %c-21004_i16 : i16
        %272 = math.floor %3 : tensor<2xf32>
        vector.print %59 : vector<2x2xi1>
        bufferization.dealloc_tensor %9 : tensor<6x2x2xi1>
        %273 = arith.shrui %c32491_i16, %c12083_i16 : i16
        %274 = vector.matrix_multiply %101, %101 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %275 = vector.splat %c-14339_i16 : vector<2x2xi16>
        %276 = arith.divui %c343258463_i32, %c514185487_i32 : i32
        %277 = arith.maxf %cst_1, %cst_1 : f16
        %278 = arith.minui %c514185487_i32, %c343258463_i32 : i32
        %279 = arith.maxf %cst_1, %cst_1 : f16
        %280 = vector.broadcast %c2130527886_i64 : i64 to vector<2xi64>
        %281 = vector.maskedload %alloc_16[%c0, %c0], %32, %280 : memref<2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        scf.yield %7 : tensor<2x2xi16>
      }
      %265 = affine.for %arg1 = 0 to 88 iter_args(%arg2 = %c1757552704_i32) -> (i32) {
        affine.yield %c816343974_i32 : i32
      }
      %266 = math.powf %3, %3 : tensor<2xf32>
      affine.for %arg1 = 0 to 67 {
      }
      %alloc_36 = memref.alloc() : memref<2xi32>
      affine.yield %alloc_36 : memref<2xi32>
    } else {
      %260 = arith.minsi %c343258463_i32, %c514185487_i32 : i32
      %261 = arith.divui %c-21004_i16, %c-14339_i16 : i16
      %262 = vector.broadcast %cst : f32 to vector<6x2x2xf32>
      %263 = vector.fma %262, %262, %262 : vector<6x2x2xf32>
      %264 = math.copysign %3, %3 : tensor<2xf32>
      %265 = vector.broadcast %c4 : index to vector<5xindex>
      %266 = vector.broadcast %true : i1 to vector<5xi1>
      %267 = vector.broadcast %c2130527886_i64 : i64 to vector<5xi64>
      vector.scatter %84[%c1, %c1] [%265], %266, %267 : memref<2x2xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      vector.print %108 : vector<6xi1>
      %268 = scf.index_switch %c9 -> index 
      case 1 {
        %270 = vector.extract_strided_slice %18 {offsets = [3], sizes = [1], strides = [1]} : vector<6xf32> to vector<1xf32>
        %alloca = memref.alloca() : memref<2xi32>
        vector.print %103 : vector<2xi32>
        %271 = arith.addf %cst_0, %cst_0 : f32
        %272 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 mod 16) ceildiv 4 + 128, d2 - 1)>(%c10, %c10, %c4, %52)
        %273 = arith.shrui %c-21004_i16, %c12083_i16 : i16
        %extracted_37 = tensor.extract %15[%c3] : tensor<5xi16>
        vector.print %108 : vector<6xi1>
        memref.tensor_store %10, %alloc_6 : memref<6x2x2xi16>
        %274 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 - d2) floordiv 2 + d0, (d0 - d2) floordiv 2, d3)>(%89, %c3, %97, %25)
        %275 = arith.muli %c1605113061_i64, %c1605113061_i64 : i64
        %276 = arith.remf %cst_1, %cst_1 : f16
        %277 = index.ceildivu %c2, %97
        %278 = arith.minui %c-14339_i16, %c-21004_i16 : i16
        %cst_38 = arith.constant 1.570000e+03 : f16
        %279 = arith.addf %cst, %cst_0 : f32
        scf.yield %c11 : index
      }
      case 2 {
        %270 = vector.reduction <minui>, %103 : vector<2xi32> into i32
        %271 = math.floor %3 : tensor<2xf32>
        %272 = math.ctlz %57 : tensor<i32>
        %273 = index.casts %true : i1 to index
        %274 = bufferization.clone %alloc_10 : memref<2x2xi64> to memref<2x2xi64>
        %extracted_37 = tensor.extract %16[%c0] : tensor<2xi32>
        %275 = vector.create_mask %22, %89 : vector<2x2xi1>
        %276 = math.powf %cst_0, %cst : f32
        %277 = math.exp %cst : f32
        %278 = memref.load %274[%c0, %c0] : memref<2x2xi64>
        %279 = vector.insertelement %true, %108[%c14 : index] : vector<6xi1>
        %280 = vector.broadcast %cst_0 : f32 to vector<2x2x2x2xf32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %263, %263, %280 : vector<6x2x2xf32>, vector<6x2x2xf32> into vector<2x2x2x2xf32>
        %282 = arith.ori %c-14339_i16, %c32491_i16 : i16
        %inserted_38 = tensor.insert %cst_1 into %1[%c1, %c0] : tensor<2x2xf16>
        %283 = vector.maskedload %alloc_8[%c4, %c0, %c1], %104, %103 : memref<6x2x2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %284 = vector.matrix_multiply %60, %81 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        scf.yield %c12 : index
      }
      case 3 {
        %270 = arith.maxf %cst, %cst_0 : f32
        %271 = math.ipowi %c10539_i16, %c32491_i16 : i16
        %from_elements = tensor.from_elements %c2130527886_i64, %c2130527886_i64 : tensor<2xi64>
        %272 = math.rsqrt %1 : tensor<2x2xf16>
        %273 = affine.load %42[%c15, %c5, %c9] : memref<6x2x2xf32>
        %274 = arith.minui %c12083_i16, %c-21004_i16 : i16
        %cst_37 = arith.constant 1.000000e+00 : f32
        %275 = vector.transfer_read %alloc_14[%36], %cst_37 : memref<2xf32>, vector<f32>
        %276 = bufferization.clone %84 : memref<2x2xi64> to memref<2x2xi64>
        %277 = arith.shrui %c2130527886_i64, %c2130527886_i64 : i64
        %278 = vector.multi_reduction <and>, %60, %73 [] : vector<1xi1> to vector<1xi1>
        %279 = math.exp2 %3 : tensor<2xf32>
        %280 = math.copysign %1, %1 : tensor<2x2xf16>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %81, %73, %true : vector<1xi1>, vector<1xi1> into i1
        %282 = arith.maxf %cst_37, %cst : f32
        %283 = vector.shuffle %73, %104 [1] : vector<1xi1>, vector<2xi1>
        %284 = arith.maxui %c12083_i16, %c10539_i16 : i16
        scf.yield %c5 : index
      }
      default {
        %270 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
        %271 = vector.insert %270, %262 [2] : vector<2x2xf32> into vector<6x2x2xf32>
        %272 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %273 = math.atan %2 : tensor<5xf16>
        %274 = affine.min affine_map<(d0, d1, d2) -> (((d1 - 1) mod 8) ceildiv 64, d1 - 31, d1 floordiv 64, (d1 - 1) mod 8 - 16)>(%94, %c10, %c4)
        %275 = arith.remf %cst_1, %cst_1 : f16
        %276 = math.powf %1, %1 : tensor<2x2xf16>
        %277 = math.rsqrt %2 : tensor<5xf16>
        %278 = arith.shli %true, %true : i1
        %279 = arith.ori %c10539_i16, %c-14339_i16 : i16
        %280 = index.castu %true : i1 to index
        %281 = affine.load %alloc_18[%c1] : memref<2xi16>
        %282 = index.divu %c5, %280
        %283 = math.absi %7 : tensor<2x2xi16>
        %284 = index.casts %105 : index to i32
        %285 = vector.splat %36 : vector<6x2x2xindex>
        memref.assume_alignment %111, 16 : memref<2xi16>
        scf.yield %c3 : index
      }
      %269 = math.cos %cst_1 : f16
      %alloc_36 = memref.alloc() : memref<2xi32>
      affine.yield %alloc_36 : memref<2xi32>
    }
    %113 = tensor.empty() : tensor<2x2xf16>
    %114 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%113 : tensor<2x2xf16>) -> tensor<2x2xf16>
    %alloc_22 = memref.alloc() : memref<2xi32>
    memref.tensor_store %6, %alloc_22 : memref<2xi32>
    %115 = math.exp %1 : tensor<2x2xf16>
    %116 = math.fpowi %2, %11 : tensor<5xf16>, tensor<5xi32>
    %117 = arith.minsi %c2130527886_i64, %c1605113061_i64 : i64
    %118 = vector.create_mask %c12, %36 : vector<2x2xi1>
    %119 = math.log1p %1 : tensor<2x2xf16>
    %alloc_23 = memref.alloc() : memref<2x2xi1>
    memref.copy %alloc_15, %alloc_23 : memref<2x2xi1> to memref<2x2xi1>
    %120 = index.divu %c12, %c11
    %121 = index.casts %c514185487_i32 : i32 to index
    %122 = affine.for %arg1 = 0 to 56 iter_args(%arg2 = %89) -> (index) {
      affine.yield %c8 : index
    }
    %123 = vector.broadcast %121 : index to vector<5xindex>
    %124 = vector.broadcast %true : i1 to vector<5xi1>
    %125 = vector.broadcast %c343258463_i32 : i32 to vector<5xi32>
    vector.scatter %alloc_3[%c1, %c1] [%123], %124, %125 : memref<2x2xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
    %126 = vector.insert %true, %81 [0] : i1 into vector<1xi1>
    %127 = arith.floordivsi %c-21004_i16, %c-14339_i16 : i16
    %128 = bufferization.to_memref %7 : memref<2x2xi16>
    memref.tensor_store %4, %alloc_6 : memref<6x2x2xi16>
    %129 = arith.shrui %c816343974_i32, %c343258463_i32 : i32
    %130 = arith.addi %c12083_i16, %c-21004_i16 : i16
    %dest, %accumulated_value = vector.scan <or>, %26, %104 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
    %131 = tensor.empty() : tensor<2x2xi32>
    %132 = math.fpowi %113, %131 : tensor<2x2xf16>, tensor<2x2xi32>
    %133 = index.casts %36 : index to i32
    %134 = affine.min affine_map<(d0, d1) -> (-d0)>(%c11, %22)
    %135 = index.ceildivs %22, %94
    %136 = tensor.empty() : tensor<6x2x2xi32>
    %mapped_24 = linalg.map ins(%0, %0 : tensor<6x2x2xi32>, tensor<6x2x2xi32>) outs(%136 : tensor<6x2x2xi32>)
      (%in: i32, %in_36: i32) {
        %260 = math.log10 %cst : f32
        %alloca = memref.alloca() : memref<6x2x2xi32>
        %261 = arith.andi %c816343974_i32, %c1757552704_i32 : i32
        %262 = math.exp2 %cst : f32
        %expanded_37 = tensor.expand_shape %11 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %263 = tensor.empty() : tensor<6x2x2xi64>
        %mapped_38 = linalg.map ins(%8, %8 : tensor<6x2x2xi64>, tensor<6x2x2xi64>) outs(%263 : tensor<6x2x2xi64>)
          (%in_43: i64, %in_44: i64) {
            %288 = arith.remui %c1605113061_i64, %in_44 : i64
            %289 = math.fpowi %2, %11 : tensor<5xf16>, tensor<5xi32>
            %290 = memref.load %alloc_16[%c0, %c0] : memref<2x2xi64>
            %291 = arith.ceildivsi %c12083_i16, %c12083_i16 : i16
            %cst_45 = arith.constant 0x4DCF33FF : f32
            %292 = vector.flat_transpose %101 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
            %293 = index.casts %c816343974_i32 : i32 to index
            %294 = index.maxu %121, %c6
            %295 = math.atan2 %1, %1 : tensor<2x2xf16>
            %296 = index.floordivs %25, %c15
            %rank = tensor.rank %8 : tensor<6x2x2xi64>
            %297 = index.ceildivs %296, %102
            %298 = math.atan %2 : tensor<5xf16>
            %299 = vector.broadcast %cst_1 : f16 to vector<6xf16>
            %300 = vector.maskedload %alloc_7[%c0], %108, %299 : memref<5xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
            %301 = arith.divui %c32491_i16, %c12083_i16 : i16
            %302 = vector.broadcast %cst : f32 to vector<2xf32>
            %303 = index.ceildivu %52, %105
            vector.print %292 : vector<1xi1>
            %304 = index.ceildivs %c11, %c2
            %305 = vector.insert %104, %118 [0] : vector<2xi1> into vector<2x2xi1>
            %collapsed_46 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<6x2x2xi32> into tensor<12x2xi32>
            %306 = index.divs %121, %22
            %307 = arith.divf %cst_0, %cst : f32
            %308 = arith.remf %cst, %cst_0 : f32
            %309 = math.atan %3 : tensor<2xf32>
            %alloc_47 = memref.alloc() : memref<2x2x1xi16>
            memref.tensor_store %expanded, %alloc_47 : memref<2x2x1xi16>
            %310 = math.atan %cst_1 : f16
            %311 = arith.maxui %c-14339_i16, %c10539_i16 : i16
            %312 = arith.shrsi %true, %true : i1
            %313 = arith.muli %in_36, %c816343974_i32 : i32
            %314 = arith.minui %c23747_i16, %c-14339_i16 : i16
            %alloca_48 = memref.alloca() : memref<2xf16>
            %c1_i64 = arith.constant 1 : i64
            linalg.yield %c1_i64 : i64
          }
        %264 = vector.insert %true, %32 [1] : i1 into vector<2xi1>
        %265 = math.ipowi %c2130527886_i64, %c2130527886_i64 : i64
        %266 = memref.realloc %alloc_2 : memref<5xi16> to memref<2xi16>
        %267 = arith.negf %cst_1 : f16
        %268 = math.ceil %cst_0 : f32
        %generated_39 = tensor.generate %25 {
        ^bb0(%arg1: index, %arg2: index, %arg3: index):
          %288 = math.fma %3, %3, %3 : tensor<2xf32>
          %289 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c0, %134, %89)
          %cst_43 = arith.constant 1.000000e+00 : f32
          %290 = vector.transfer_read %3[%c15], %cst_43 : tensor<2xf32>, vector<f32>
          %291 = vector.multi_reduction <maxui>, %32, %104 [] : vector<2xi1> to vector<2xi1>
          tensor.yield %c2130527886_i64 : i64
        } : tensor<?x2x2xi64>
        %269 = math.log10 %3 : tensor<2xf32>
        %270 = math.log10 %1 : tensor<2x2xf16>
        %271 = math.log1p %3 : tensor<2xf32>
        %272 = affine.load %42[%c8, %c6, %c3] : memref<6x2x2xf32>
        %generated_40 = tensor.generate %c2 {
        ^bb0(%arg1: index, %arg2: index):
          %288 = arith.remui %true, %true : i1
          %289 = arith.xori %c2130527886_i64, %c2130527886_i64 : i64
          %290 = math.roundeven %2 : tensor<5xf16>
          %291 = arith.addi %c514185487_i32, %in_36 : i32
          tensor.yield %in_36 : i32
        } : tensor<?x2xi32>
        %273 = index.ceildivs %c2, %c14
        %274 = affine.min affine_map<(d0, d1, d2) -> (d2 - d1 - 128, d1 * -2, d0, d0 - 4)>(%121, %22, %89)
        %275 = arith.subi %c12083_i16, %c10539_i16 : i16
        %276 = arith.divf %cst_1, %cst_1 : f16
        %277 = arith.minui %c1605113061_i64, %c2130527886_i64 : i64
        %collapsed_41 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<6x2x2xi64> into tensor<12x2xi64>
        %278 = vector.broadcast %c1605113061_i64 : i64 to vector<2xi64>
        %279 = vector.maskedload %alloc_10[%c0, %c0], %104, %278 : memref<2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %280 = arith.xori %c1757552704_i32, %in : i32
        %281 = math.atan2 %3, %3 : tensor<2xf32>
        %282 = index.floordivs %36, %c0
        %283 = math.ipowi %6, %6 : tensor<2xi32>
        %284 = tensor.empty() : tensor<2x2xi32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %18, %18, %272 : vector<6xf32>, vector<6xf32> into f32
        %286 = vector.insert %c1605113061_i64, %279 [1] : i64 into vector<2xi64>
        %287 = arith.maxui %c343258463_i32, %c816343974_i32 : i32
        %c0_i32_42 = arith.constant 0 : i32
        linalg.yield %c0_i32_42 : i32
      }
    %137 = index.maxu %c4, %94
    %138 = vector.create_mask %134 : vector<5xi1>
    %139 = math.ipowi %c1757552704_i32, %c816343974_i32 : i32
    %140 = memref.load %34[%c0, %c1] : memref<2x2xi64>
    %141 = index.sub %c0, %c3
    %142 = arith.shrsi %c1757552704_i32, %c1757552704_i32 : i32
    %143 = math.ipowi %c10539_i16, %c-21004_i16 : i16
    %144 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %59, %32, %32 : vector<2x2xi1>, vector<2xi1> into vector<2xi1>
    %145 = math.roundeven %2 : tensor<5xf16>
    %146 = vector.broadcast %c514185487_i32 : i32 to vector<6x6xi32>
    %147 = vector.outerproduct %107, %107, %146 {kind = #vector.kind<mul>} : vector<6xi32>, vector<6xi32>
    %148 = index.maxs %97, %94
    %extracted = tensor.extract %12[%c1, %c1] : tensor<2x2xi64>
    %149 = memref.alloca_scope  -> (memref<5xi64>) {
      scf.execute_region {
        %293 = math.log %1 : tensor<2x2xf16>
        %294 = math.expm1 %3 : tensor<2xf32>
        memref.copy %42, %alloc_5 : memref<6x2x2xf32> to memref<6x2x2xf32>
        affine.store %cst_0, %alloc_5[%c6, %c3, %c13] : memref<6x2x2xf32>
        %295 = arith.xori %c23747_i16, %c32491_i16 : i16
        %296 = math.fma %cst, %cst_0, %cst_0 : f32
        %collapsed_40 = tensor.collapse_shape %7 [[0, 1]] : tensor<2x2xi16> into tensor<4xi16>
        %cast_41 = tensor.cast %8 : tensor<6x2x2xi64> to tensor<?x?x?xi64>
        %297 = arith.shli %true, %true : i1
        %alloc_42 = memref.alloc() : memref<2xi32>
        memref.tensor_store %17, %alloc_42 : memref<2xi32>
        %298 = arith.maxui %c-21004_i16, %c32491_i16 : i16
        %299 = arith.minui %c1605113061_i64, %c2130527886_i64 : i64
        %300 = arith.remf %cst_0, %cst_0 : f32
        %301 = bufferization.clone %alloc_18 : memref<2xi16> to memref<2xi16>
        %302 = arith.floordivsi %c343258463_i32, %c514185487_i32 : i32
        %303 = math.sqrt %cst : f32
        scf.yield
      }
      %260 = memref.load %alloc_11[%c4, %c1, %c1] : memref<6x2x2xf32>
      scf.index_switch %25 
      case 1 {
        %293 = math.exp %1 : tensor<2x2xf16>
        affine.store %cst_0, %alloc_5[%c6, %c15, %c14] : memref<6x2x2xf32>
        %294 = math.rsqrt %3 : tensor<2xf32>
        memref.copy %34, %alloc_16 : memref<2x2xi64> to memref<2x2xi64>
        %295 = arith.muli %c12083_i16, %c10539_i16 : i16
        %296 = math.tanh %1 : tensor<2x2xf16>
        %297 = vector.broadcast %c15 : index to vector<6xindex>
        vector.scatter %alloc_14[%c0] [%297], %108, %18 : memref<2xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %298 = index.ceildivs %120, %102
        %299 = vector.broadcast %c12083_i16 : i16 to vector<5xi16>
        %300 = vector.maskedload %alloc_9[%c0, %c1, %c1], %138, %299 : memref<6x2x2xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %false = arith.constant false
        %alloc_40 = memref.alloc() : memref<6x2x2xi32>
        %301 = arith.remsi %c-14339_i16, %c32491_i16 : i16
        %302 = index.sub %106, %102
        %from_elements_41 = tensor.from_elements %c23747_i16, %c10539_i16, %c32491_i16, %c32491_i16, %c12083_i16, %c-21004_i16, %c23747_i16, %c10539_i16, %c12083_i16, %c-21004_i16, %c23747_i16, %c12083_i16, %c-14339_i16, %c10539_i16, %c-21004_i16, %c32491_i16, %c-21004_i16, %c-21004_i16, %c-21004_i16, %c-21004_i16, %c-21004_i16, %c23747_i16, %c10539_i16, %c10539_i16 : tensor<6x2x2xi16>
        %303 = math.tanh %3 : tensor<2xf32>
        %304 = arith.ceildivsi %c2130527886_i64, %c2130527886_i64 : i64
        scf.yield
      }
      default {
        %293 = math.absi %c816343974_i32 : i32
        %294 = arith.maxui %c32491_i16, %c12083_i16 : i16
        %295 = math.expm1 %1 : tensor<2x2xf16>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %138, %138, %true : vector<5xi1>, vector<5xi1> into i1
        %297 = arith.shrui %c32491_i16, %c23747_i16 : i16
        %298 = arith.cmpf oge, %cst_1, %cst_1 : f16
        %299 = arith.floordivsi %true, %true : i1
        memref.assume_alignment %alloc, 2 : memref<5xi1>
        %300 = vector.shuffle %73, %60 [0] : vector<1xi1>, vector<1xi1>
        memref.copy %alloc_6, %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
        %301 = arith.ori %c10539_i16, %c10539_i16 : i16
        %302 = math.atan2 %1, %113 : tensor<2x2xf16>
        memref.tensor_store %7, %128 : memref<2x2xi16>
        %303 = arith.shrui %c1605113061_i64, %c1605113061_i64 : i64
        %304 = vector.extract_strided_slice %60 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %305 = arith.ceildivsi %c32491_i16, %c-21004_i16 : i16
      }
      %261 = arith.negf %cst_1 : f16
      %alloc_36 = memref.alloc() : memref<2x6xi64>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_36, %alloc_36 : memref<2x6xi64>, memref<2x6xi64>) outs(%8 : tensor<6x2x2xi64>) {
      ^bb0(%in: i64, %in_40: i64, %out: i64):
        %collapsed_41 = tensor.collapse_shape %12 [[0, 1]] : tensor<2x2xi64> into tensor<4xi64>
        %293 = bufferization.clone %alloc_2 : memref<5xi16> to memref<5xi16>
        %294 = arith.negf %cst : f32
        %true_42 = arith.constant true
        %295 = index.add %c6, %c6
        %296 = memref.realloc %293 : memref<5xi16> to memref<2xi16>
        %297 = bufferization.to_memref %57 : memref<i32>
        %298 = arith.addi %c1605113061_i64, %extracted : i64
        %299 = math.exp2 %3 : tensor<2xf32>
        %300 = arith.maxsi %in_40, %in_40 : i64
        %301 = math.log10 %cst : f32
        %splat_43 = tensor.splat %in : tensor<5xi64>
        bufferization.dealloc_tensor %generated : tensor<?x2xi16>
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %103, %103, %c1757552704_i32 : vector<2xi32>, vector<2xi32> into i32
        bufferization.dealloc_tensor %15 : tensor<5xi16>
        %303 = vector.matrix_multiply %108, %101 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<1xi1>) -> vector<6xi1>
        %304 = math.log10 %3 : tensor<2xf32>
        %305 = memref.load %alloc_11[%c3, %c0, %c1] : memref<6x2x2xf32>
        %306 = arith.ori %c1757552704_i32, %c816343974_i32 : i32
        %307 = math.sqrt %cst_1 : f16
        %308 = vector.maskedload %alloc_4[%c0, %c1], %32, %103 : memref<2x2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %309 = math.ceil %3 : tensor<2xf32>
        %310 = arith.shrui %c-21004_i16, %c10539_i16 : i16
        %311 = math.exp %cst : f32
        %312 = vector.extract_strided_slice %103 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi32> to vector<1xi32>
        %313 = math.absi %6 : tensor<2xi32>
        %314 = math.ipowi %collapsed_41, %collapsed_41 : tensor<4xi64>
        %315 = math.atan %3 : tensor<2xf32>
        %316 = index.divu %148, %c11
        memref.copy %111, %alloc_18 : memref<2xi16> to memref<2xi16>
        %317 = arith.divui %c12083_i16, %c12083_i16 : i16
        %318 = arith.xori %c1757552704_i32, %c514185487_i32 : i32
        linalg.yield %extracted : i64
      } -> tensor<6x2x2xi64>
      %263 = arith.maxf %cst_1, %cst_1 : f16
      %264 = math.cos %113 : tensor<2x2xf16>
      %265 = arith.ori %c32491_i16, %c32491_i16 : i16
      %266 = bufferization.clone %alloc_15 : memref<2x2xi1> to memref<2x2xi1>
      %267 = arith.divsi %c1605113061_i64, %c2130527886_i64 : i64
      %268 = affine.max affine_map<(d0, d1) -> (-d1, d1 floordiv 2)>(%121, %36)
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 64, d0 * 2 - 32, d0 floordiv 2 - 18, d3)>(%c15, %c6, %c2, %89)
      %270 = arith.addf %cst_1, %cst_1 : f16
      %271 = index.divs %c2, %121
      %272 = arith.cmpi sle, %c12083_i16, %c10539_i16 : i16
      %273 = arith.remf %cst, %cst : f32
      %274 = math.rsqrt %3 : tensor<2xf32>
      %275 = vector.broadcast %22 : index to vector<2xindex>
      %276 = vector.broadcast %c-21004_i16 : i16 to vector<2xi16>
      vector.scatter %alloc_17[%c1, %c1, %c0] [%275], %32, %276 : memref<2x6x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %18, %18, %cst_0 : vector<6xf32>, vector<6xf32> into f32
      %278 = math.log1p %1 : tensor<2x2xf16>
      %279 = vector.broadcast %c-14339_i16 : i16 to vector<2x2xi16>
      %280 = vector.broadcast %c343258463_i32 : i32 to vector<2x2xi32>
      %281 = vector.gather %15[%148] [%280], %26, %279 : tensor<5xi16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi16> into vector<2x2xi16>
      %282 = affine.for %arg1 = 0 to 116 iter_args(%arg2 = %c9) -> (index) {
        affine.yield %89 : index
      }
      %from_elements = tensor.from_elements %cst, %cst_0, %cst_0, %cst : tensor<2x2xf32>
      %283 = tensor.empty() : tensor<2xi32>
      %mapped_37 = linalg.map ins(%6 : tensor<2xi32>) outs(%283 : tensor<2xi32>)
        (%in: i32) {
          %293 = math.ceil %3 : tensor<2xf32>
          %294 = vector.outerproduct %32, %104, %118 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
          affine.store %c1605113061_i64, %84[%c2, %c5] : memref<2x2xi64>
          %295 = index.add %c2, %c12
          %296 = vector.insert %true, %32 [0] : i1 into vector<2xi1>
          %297 = vector.matrix_multiply %104, %81 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<1xi1>) -> vector<2xi1>
          %298 = memref.load %alloc_9[%c1, %c0, %c1] : memref<6x2x2xi16>
          %299 = tensor.empty() : tensor<2xi64>
          %300 = arith.remui %c32491_i16, %c10539_i16 : i16
          %301 = arith.addi %c514185487_i32, %in : i32
          %302 = vector.insert %297, %59 [0] : vector<2xi1> into vector<2x2xi1>
          %303 = math.log1p %2 : tensor<5xf16>
          %304 = arith.maxui %c-14339_i16, %c32491_i16 : i16
          %305 = math.exp %cst_0 : f32
          %306 = arith.minui %c-14339_i16, %c32491_i16 : i16
          %307 = arith.shrui %c514185487_i32, %c1757552704_i32 : i32
          %308 = arith.divui %in, %c816343974_i32 : i32
          %inserted_40 = tensor.insert %in into %cast[%c0] : tensor<?xi32>
          %309 = index.maxu %c7, %137
          %310 = arith.ori %c-21004_i16, %c32491_i16 : i16
          %311 = vector.broadcast %c32491_i16 : i16 to vector<2xi16>
          %dest_41, %accumulated_value_42 = vector.scan <maxsi>, %279, %311 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi16>, vector<2xi16>
          %312 = vector.extract %108[4] : vector<6xi1>
          %313 = arith.negf %cst : f32
          %314 = arith.shrui %c10539_i16, %c-14339_i16 : i16
          %315 = arith.shrsi %c2130527886_i64, %c2130527886_i64 : i64
          bufferization.dealloc_tensor %21 : tensor<i32>
          %316 = arith.maxf %cst, %cst_0 : f32
          %317 = math.tan %from_elements : tensor<2x2xf32>
          %318 = memref.load %alloc_10[%c0, %c0] : memref<2x2xi64>
          %319 = math.ipowi %c-21004_i16, %c23747_i16 : i16
          %320 = math.round %from_elements : tensor<2x2xf32>
          %321 = math.ceil %113 : tensor<2x2xf16>
          %c1_i32_43 = arith.constant 1 : i32
          linalg.yield %c1_i32_43 : i32
        }
      %284 = vector.extract %59[1] : vector<2x2xi1>
      %285 = tensor.empty() : tensor<6x2x2xi64>
      %mapped_38 = linalg.map ins(%5, %5 : tensor<6x2x2xi64>, tensor<6x2x2xi64>) outs(%285 : tensor<6x2x2xi64>)
        (%in: i64, %in_40: i64) {
          memref.tensor_store %15, %alloc_2 : memref<5xi16>
          %293 = arith.remsi %c1757552704_i32, %c816343974_i32 : i32
          %294 = math.log1p %113 : tensor<2x2xf16>
          %295 = math.absi %c2130527886_i64 : i64
          %296 = arith.maxui %c1757552704_i32, %c343258463_i32 : i32
          %from_elements_41 = tensor.from_elements %true, %true : tensor<2xi1>
          %297 = vector.create_mask %c10, %c7, %c7 : vector<6x2x2xi1>
          %298 = affine.min affine_map<(d0) -> (((d0 mod 32) ceildiv 32) ceildiv 2)>(%102)
          %299 = vector.broadcast %c10539_i16 : i16 to vector<6xi16>
          %300 = vector.maskedload %111[%c0], %108, %299 : memref<2xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %alloc_42 = memref.alloc() : memref<5xf16>
          %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %73, %81, %true : vector<1xi1>, vector<1xi1> into i1
          %302 = math.powf %2, %2 : tensor<5xf16>
          %303 = vector.shuffle %284, %104 [2] : vector<2xi1>, vector<2xi1>
          %304 = index.sub %c0, %97
          %305 = bufferization.to_memref %21 : memref<i32>
          %306 = math.ctlz %57 : tensor<i32>
          %307 = memref.realloc %alloc_18 : memref<2xi16> to memref<2xi16>
          %308 = arith.ori %in, %in : i64
          %309 = index.floordivs %c14, %c1
          %310 = index.sub %c15, %c4
          %311 = arith.shli %c-21004_i16, %c-14339_i16 : i16
          %alloc_43 = memref.alloc() : memref<6x2x2xf32>
          %312 = math.log10 %3 : tensor<2xf32>
          %313 = math.expm1 %2 : tensor<5xf16>
          bufferization.dealloc_tensor %6 : tensor<2xi32>
          %314 = math.round %1 : tensor<2x2xf16>
          %315 = bufferization.clone %111 : memref<2xi16> to memref<2xi16>
          %316 = arith.maxf %cst_1, %cst_1 : f16
          %317 = vector.splat %c7 : vector<2x2xindex>
          %318 = math.expm1 %1 : tensor<2x2xf16>
          %319 = index.mul %271, %121
          %320 = math.cos %cst : f32
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %286 = vector.extract_strided_slice %73 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %287 = arith.divsi %c-21004_i16, %c32491_i16 : i16
      %288 = vector.broadcast %c12083_i16 : i16 to vector<i16>
      %289 = vector.transfer_write %288, %4[%120, %52, %121] : vector<i16>, tensor<6x2x2xi16>
      %290 = vector.shuffle %104, %104 [0, 1] : vector<2xi1>, vector<2xi1>
      %291 = arith.maxsi %c10539_i16, %c-21004_i16 : i16
      %292 = vector.extract_strided_slice %101 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %alloc_39 = memref.alloc() : memref<5xi64>
      memref.alloca_scope.return %alloc_39 : memref<5xi64>
    }
    %150 = bufferization.to_tensor %alloc : memref<5xi1>
    %151 = vector.create_mask %141, %c13 : vector<2x2xi1>
    %152 = index.floordivs %c4, %36
    %generated_25 = tensor.generate %c2 {
    ^bb0(%arg1: index):
      %260 = arith.shrui %c816343974_i32, %c816343974_i32 : i32
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7 : tensor<2x2xi16>) outs(%4 : tensor<6x2x2xi16>) {
      ^bb0(%in: i16, %out: i16):
        %splat_36 = tensor.splat %c12083_i16 : tensor<6x2x2xi16>
        %264 = arith.shrui %c10539_i16, %in : i16
        %265 = math.exp2 %1 : tensor<2x2xf16>
        %266 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 128)>(%152, %c1, %134, %c3)
        %from_elements = tensor.from_elements %true, %true : tensor<2xi1>
        %267 = math.round %cst_0 : f32
        affine.store %cst_0, %alloc_5[%c14, %c6, %c10] : memref<6x2x2xf32>
        %dest_37, %accumulated_value_38 = vector.scan <minui>, %59, %32 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
        %dest_39, %accumulated_value_40 = vector.scan <xor>, %151, %32 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xi1>, vector<2xi1>
        %268 = index.floordivs %c12, %134
        %inserted_41 = tensor.insert %c816343974_i32 into %14[%c4, %c1, %c1] : tensor<6x2x2xi32>
        %269 = arith.shli %c1757552704_i32, %c343258463_i32 : i32
        %270 = math.log10 %cst_1 : f16
        %271 = index.divs %268, %c0
        %272 = math.powf %1, %1 : tensor<2x2xf16>
        %273 = arith.divsi %c514185487_i32, %c343258463_i32 : i32
        %274 = arith.minui %c2130527886_i64, %extracted : i64
        %275 = vector.load %alloc_9[%c3, %c0, %c0] : memref<6x2x2xi16>, vector<6x2x2xi16>
        %276 = math.sqrt %cst : f32
        %277 = bufferization.clone %alloc_16 : memref<2x2xi64> to memref<2x2xi64>
        %278 = vector.extract_strided_slice %118 {offsets = [0], sizes = [1], strides = [1]} : vector<2x2xi1> to vector<1x2xi1>
        %279 = arith.divui %c23747_i16, %c-14339_i16 : i16
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %73, %81, %true : vector<1xi1>, vector<1xi1> into i1
        %281 = memref.load %alloc_10[%c0, %c0] : memref<2x2xi64>
        %282 = index.ceildivu %c8, %120
        %283 = math.log %cst_1 : f16
        %284 = affine.max affine_map<(d0) -> (-(d0 + 32), d0 + 32)>(%c11)
        %285 = arith.shrsi %c816343974_i32, %c514185487_i32 : i32
        %286 = vector.insert %cst_0, %18 [1] : f32 into vector<6xf32>
        %287 = arith.addi %c32491_i16, %c10539_i16 : i16
        %288 = arith.shrui %c10539_i16, %c-21004_i16 : i16
        %289 = math.ceil %cst : f32
        linalg.yield %c12083_i16 : i16
      } -> tensor<6x2x2xi16>
      %262 = index.divu %c3, %c3
      %263 = math.sqrt %3 : tensor<2xf32>
      tensor.yield %cst_0 : f32
    } : tensor<?xf32>
    %153 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %109, %107, %c816343974_i32 : vector<6xi32>, vector<6xi32> into i32
    %154 = math.absi %6 : tensor<2xi32>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %155 = vector.transfer_read %alloc_3[%52, %94], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<2x2xi32>, vector<5xi32>
    %156 = bufferization.clone %alloc_9 : memref<6x2x2xi16> to memref<6x2x2xi16>
    %157 = arith.shrui %c23747_i16, %c-21004_i16 : i16
    %158 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %26, %26, %26 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
    %159 = memref.atomic_rmw addi %extracted, %alloc_16[%c0, %c1] : (i64, memref<2x2xi64>) -> i64
    %160 = math.tan %cst_1 : f16
    %161 = arith.cmpi eq, %c23747_i16, %c23747_i16 : i16
    %162 = math.round %cst_1 : f16
    %163 = math.log10 %cst_0 : f32
    %164 = memref.load %alloc_7[%c1] : memref<5xf16>
    %165 = arith.shli %c23747_i16, %c23747_i16 : i16
    affine.store %cst, %alloc_11[%c8, %c9, %c2] : memref<6x2x2xf32>
    %166 = vector.extract_strided_slice %107 {offsets = [0], sizes = [6], strides = [1]} : vector<6xi32> to vector<6xi32>
    %167 = math.powf %1, %113 : tensor<2x2xf16>
    %inserted_26 = tensor.insert %cst into %3[%c1] : tensor<2xf32>
    %collapsed = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<6x2x2xi16> into tensor<12x2xi16>
    %168 = arith.shli %extracted, %extracted : i64
    %inserted_27 = tensor.insert %c32491_i16 into %collapsed[%c7, %c1] : tensor<12x2xi16>
    %169 = bufferization.to_tensor %70 : memref<2xi16>
    %170 = arith.cmpf ule, %cst_1, %cst_1 : f16
    %171 = tensor.empty() : tensor<2x2xf16>
    %172 = linalg.matmul ins(%113, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%171 : tensor<2x2xf16>) -> tensor<2x2xf16>
    %173 = math.powf %2, %2 : tensor<5xf16>
    %174 = arith.cmpf oeq, %cst_0, %cst_0 : f32
    %175 = arith.maxf %cst_1, %cst_1 : f16
    %176 = arith.remui %c-14339_i16, %c23747_i16 : i16
    %177 = index.divu %c4, %25
    %178 = vector.splat %c9 : vector<5xindex>
    %179 = affine.for %arg1 = 0 to 127 iter_args(%arg2 = %c6) -> (index) {
      affine.yield %106 : index
    }
    %collapsed_28 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<6x2x2xi64> into tensor<12x2xi64>
    %180 = arith.maxui %extracted, %extracted : i64
    %181 = math.ctpop %5 : tensor<6x2x2xi64>
    %182 = vector.insert %true, %108 [0] : i1 into vector<6xi1>
    %183 = math.atan %2 : tensor<5xf16>
    %184 = math.round %1 : tensor<2x2xf16>
    %cast_29 = tensor.cast %2 : tensor<5xf16> to tensor<?xf16>
    %collapsed_30 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<6x2x2xi1> into tensor<12x2xi1>
    %185 = vector.broadcast %102 : index to vector<6xindex>
    %186 = vector.broadcast %c1605113061_i64 : i64 to vector<6xi64>
    vector.scatter %149[%c2] [%185], %108, %186 : memref<5xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
    %187 = arith.shli %c816343974_i32, %c1757552704_i32 : i32
    scf.execute_region {
      %260 = affine.max affine_map<(d0, d1, d2, d3) -> (-d0, (d1 * 4) ceildiv 128, d3 mod 8 - (d3 ceildiv 2 - 16))>(%97, %177, %c7, %137)
      bufferization.dealloc_tensor %1 : tensor<2x2xf16>
      %alloc_36 = memref.alloc() : memref<i32>
      memref.tensor_store %57, %alloc_36 : memref<i32>
      %261 = math.expm1 %2 : tensor<5xf16>
      %262 = math.floor %2 : tensor<5xf16>
      %263 = arith.shrui %c32491_i16, %c32491_i16 : i16
      %264 = math.ipowi %c1757552704_i32, %c1757552704_i32 : i32
      %265 = vector.broadcast %c10 : index to vector<2xindex>
      %266 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      vector.scatter %alloc_14[%c0] [%265], %32, %266 : memref<2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %267 = arith.addf %cst_0, %cst : f32
      %268 = affine.load %alloc_3[%c6, %c15] : memref<2x2xi32>
      memref.copy %alloc_9, %156 : memref<6x2x2xi16> to memref<6x2x2xi16>
      %c161627324_i64 = arith.constant 161627324 : i64
      %269 = arith.divui %c816343974_i32, %c1757552704_i32 : i32
      %270 = arith.cmpf one, %cst, %cst_0 : f32
      %271 = tensor.empty() : tensor<5xi32>
      %mapped_37 = linalg.map ins(%11, %11, %19 : tensor<5xi32>, tensor<5xi32>, tensor<5xi32>) outs(%271 : tensor<5xi32>)
        (%in: i32, %in_38: i32, %in_39: i32) {
          %273 = index.ceildivu %135, %c10
          %274 = math.atan2 %cst_0, %cst : f32
          %275 = math.expm1 %1 : tensor<2x2xf16>
          %276 = bufferization.to_tensor %alloc_15 : memref<2x2xi1>
          %277 = arith.shrui %c23747_i16, %c10539_i16 : i16
          %278 = arith.divsi %in_39, %in_39 : i32
          %279 = arith.remf %cst_0, %cst : f32
          %280 = memref.load %34[%c0, %c0] : memref<2x2xi64>
          %cst_40 = arith.constant 0x4E144DD8 : f32
          %281 = arith.minui %in_39, %c1757552704_i32 : i32
          %282 = arith.divui %c-14339_i16, %c23747_i16 : i16
          %283 = index.ceildivs %c15, %135
          %284 = math.fpowi %2, %271 : tensor<5xf16>, tensor<5xi32>
          %285 = math.fma %cst_1, %cst_1, %cst_1 : f16
          %286 = arith.maxsi %true, %true : i1
          %287 = vector.matrix_multiply %166, %109 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
          %288 = arith.shli %c1_i32, %c1757552704_i32 : i32
          %289 = vector.broadcast %c-21004_i16 : i16 to vector<2xi16>
          %290 = vector.maskedload %128[%c1, %c0], %32, %289 : memref<2x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
          %alloc_41 = memref.alloc() : memref<2xi32>
          %291 = math.roundeven %cst_1 : f16
          %292 = memref.atomic_rmw assign %c32491_i16, %156[%c3, %c0, %c1] : (i16, memref<6x2x2xi16>) -> i16
          %293 = vector.insertelement %c32491_i16, %290[%135 : index] : vector<2xi16>
          %294 = arith.divf %cst_0, %cst_0 : f32
          %295 = arith.mulf %cst, %cst_0 : f32
          %296 = arith.andi %c12083_i16, %c-21004_i16 : i16
          %297 = vector.extract_strided_slice %151 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2xi1> to vector<2x2xi1>
          affine.store %cst_1, %alloc_7[%c12] : memref<5xf16>
          %298 = memref.load %alloc_7[%c3] : memref<5xf16>
          %299 = index.ceildivu %102, %c7
          %300 = math.exp %2 : tensor<5xf16>
          %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %166, %109, %c514185487_i32 : vector<6xi32>, vector<6xi32> into i32
          %302 = math.ceil %1 : tensor<2x2xf16>
          %c0_i32_42 = arith.constant 0 : i32
          linalg.yield %c0_i32_42 : i32
        }
      %272 = arith.xori %c1757552704_i32, %c514185487_i32 : i32
      scf.yield
    }
    %188 = math.copysign %3, %3 : tensor<2xf32>
    %189 = tensor.empty() : tensor<2x2xi64>
    %190 = linalg.matmul ins(%12, %12 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%189 : tensor<2x2xi64>) -> tensor<2x2xi64>
    %191 = arith.divui %c1605113061_i64, %c1605113061_i64 : i64
    %192 = math.atan2 %113, %1 : tensor<2x2xf16>
    %193 = index.sub %c2, %c6
    %194 = math.absi %11 : tensor<5xi32>
    %195 = memref.load %alloc_3[%c1, %c0] : memref<2x2xi32>
    %196 = affine.max affine_map<(d0) -> (d0 * -2 + 2, -d0)>(%c11)
    %197 = arith.remf %cst_0, %cst : f32
    %198 = arith.ori %c1605113061_i64, %extracted : i64
    %199 = math.log %1 : tensor<2x2xf16>
    %200 = arith.shli %c23747_i16, %c-21004_i16 : i16
    %201 = math.log %2 : tensor<5xf16>
    %202 = arith.subi %c23747_i16, %c10539_i16 : i16
    %203 = memref.realloc %70 : memref<2xi16> to memref<5xi16>
    %204 = vector.insert %true, %138 [0] : i1 into vector<5xi1>
    %205 = vector.broadcast %148 : index to vector<6xindex>
    vector.scatter %alloc_13[%c0, %c0, %c0] [%205], %108, %18 : memref<6x2x2xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
    memref.tensor_store %9, %alloc_12 : memref<6x2x2xi1>
    %206 = arith.maxf %cst, %cst_0 : f32
    %207 = arith.addf %cst_0, %cst_0 : f32
    %208 = vector.insertelement %cst_0, %18[%94 : index] : vector<6xf32>
    %209 = arith.subi %c1_i32, %c343258463_i32 : i32
    %210 = index.casts %c8 : index to i32
    %211 = math.ctlz %14 : tensor<6x2x2xi32>
    vector.print %73 : vector<1xi1>
    %212 = math.fma %113, %1, %113 : tensor<2x2xf16>
    %213 = arith.floordivsi %c816343974_i32, %c514185487_i32 : i32
    %214 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %73, %73, %true : vector<1xi1>, vector<1xi1> into i1
    %215 = vector.create_mask %120, %102 : vector<2x2xi1>
    %216 = math.atan %113 : tensor<2x2xf16>
    %217 = math.atan %3 : tensor<2xf32>
    %218 = math.expm1 %113 : tensor<2x2xf16>
    %219 = arith.maxf %cst_1, %cst_1 : f16
    %220 = math.absi %10 : tensor<6x2x2xi16>
    %221 = tensor.empty() : tensor<2x2xf16>
    %222 = linalg.matmul ins(%1, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%221 : tensor<2x2xf16>) -> tensor<2x2xf16>
    %collapsed_31 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<6x2x2xi64> into tensor<12x2xi64>
    %223 = math.exp %cst_1 : f16
    %224 = arith.minui %c-14339_i16, %c-14339_i16 : i16
    %225 = arith.maxf %cst, %cst : f32
    %226 = arith.floordivsi %true, %true : i1
    %227 = arith.floordivsi %c-14339_i16, %c-14339_i16 : i16
    %228 = scf.while (%arg1 = %cst_0) : (f32) -> f32 {
      %260 = math.absi %collapsed_28 : tensor<12x2xi64>
      %261 = math.fma %2, %2, %2 : tensor<5xf16>
      %262 = math.tan %171 : tensor<2x2xf16>
      %263 = arith.ori %c1_i32, %c1757552704_i32 : i32
      %264 = vector.broadcast %c-21004_i16 : i16 to vector<i16>
      %265 = vector.transfer_write %264, %169[%c2] : vector<i16>, tensor<2xi16>
      %266 = arith.maxf %cst_0, %cst_0 : f32
      %267 = vector.maskedload %alloc_12[%c4, %c0, %c1], %104, %32 : memref<6x2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
      %268 = math.ctlz %c23747_i16 : i16
      scf.condition(%true) %cst_0 : f32
    } do {
    ^bb0(%arg1: f32):
      %260 = vector.create_mask %121 : vector<5xi1>
      %261 = arith.subi %c1757552704_i32, %c1757552704_i32 : i32
      %generated_36 = tensor.generate %89 {
      ^bb0(%arg2: index, %arg3: index):
        %271 = arith.cmpf ule, %cst_0, %cst : f32
        %272 = vector.broadcast %c23747_i16 : i16 to vector<5xi16>
        %273 = vector.maskedload %alloc_6[%c2, %c1, %c0], %138, %272 : memref<6x2x2xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %274 = arith.floordivsi %c-21004_i16, %c-21004_i16 : i16
        %275 = math.cos %171 : tensor<2x2xf16>
        tensor.yield %true : i1
      } : tensor<?x2xi1>
      %262 = vector.splat %extracted : vector<6x2x2xi64>
      %dest_37, %accumulated_value_38 = vector.scan <xor>, %151, %32 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
      %263 = arith.negf %cst_1 : f16
      %264 = arith.ceildivsi %c23747_i16, %c12083_i16 : i16
      %rank = tensor.rank %20 : tensor<i32>
      memref.assume_alignment %34, 4 : memref<2x2xi64>
      %265 = scf.index_switch %89 -> vector<2x2xi32> 
      case 1 {
        %271 = arith.shli %c32491_i16, %c-14339_i16 : i16
        %272 = bufferization.to_memref %0 : memref<6x2x2xi32>
        %273 = arith.floordivsi %c2130527886_i64, %c2130527886_i64 : i64
        %274 = arith.maxf %cst_0, %cst : f32
        %275 = bufferization.to_tensor %alloc_7 : memref<5xf16>
        %276 = bufferization.clone %149 : memref<5xi64> to memref<5xi64>
        %collapsed_40 = tensor.collapse_shape %collapsed_28 [[0, 1]] : tensor<12x2xi64> into tensor<24xi64>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 32)>(%c0, %rank, %c14, %c14)
        %278 = vector.outerproduct %32, %104, %118 {kind = #vector.kind<maxsi>} : vector<2xi1>, vector<2xi1>
        %279 = arith.ceildivsi %c-14339_i16, %c32491_i16 : i16
        %280 = arith.maxf %cst_1, %cst_1 : f16
        %281 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        %282 = vector.transfer_write %281, %1[%c13, %97] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf16>, tensor<2x2xf16>
        %283 = arith.shrui %c12083_i16, %c32491_i16 : i16
        %284 = math.tan %1 : tensor<2x2xf16>
        %285 = affine.max affine_map<(d0, d1, d2) -> (-d2 + 2, d0 + d2)>(%135, %c5, %97)
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%135, %c7, %148, %193)
        %287 = vector.broadcast %c1757552704_i32 : i32 to vector<2x2xi32>
        scf.yield %287 : vector<2x2xi32>
      }
      default {
        %271 = index.mul %137, %c8
        %alloc_40 = memref.alloc() : memref<5xi16>
        %272 = math.ceil %3 : tensor<2xf32>
        %273 = math.round %cst_0 : f32
        %274 = affine.max affine_map<(d0) -> (d0 - 127)>(%25)
        %cast_41 = tensor.cast %169 : tensor<2xi16> to tensor<?xi16>
        %275 = tensor.empty() : tensor<2x2xi16>
        %276 = linalg.matmul ins(%7, %7 : tensor<2x2xi16>, tensor<2x2xi16>) outs(%275 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %277 = math.rsqrt %cst_0 : f32
        %278 = arith.shrui %true, %true : i1
        %279 = arith.maxf %cst_1, %cst_1 : f16
        %280 = vector.create_mask %c6, %rank, %c2 : vector<6x2x2xi1>
        %281 = vector.insert %104, %151 [0] : vector<2xi1> into vector<2x2xi1>
        %282 = arith.cmpi sgt, %c1757552704_i32, %c816343974_i32 : i32
        %283 = vector.broadcast %c343258463_i32 : i32 to vector<i32>
        %284 = vector.transfer_write %283, %19[%36] : vector<i32>, tensor<5xi32>
        %285 = vector.maskedload %alloc_12[%c4, %c0, %c1], %32, %32 : memref<6x2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %286 = math.sqrt %arg1 : f32
        %287 = vector.broadcast %c816343974_i32 : i32 to vector<2x2xi32>
        scf.yield %287 : vector<2x2xi32>
      }
      %266 = math.exp2 %cst_1 : f16
      %267 = arith.floordivsi %c1_i32, %c514185487_i32 : i32
      %268 = vector.shuffle %166, %109 [4, 6, 9] : vector<6xi32>, vector<6xi32>
      %269 = arith.cmpi ult, %c10539_i16, %c12083_i16 : i16
      %alloc_39 = memref.alloc() : memref<6x2x2xi64>
      %270 = math.expm1 %2 : tensor<5xf16>
      scf.yield %cst_0 : f32
    }
    %229 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %59, %151, %26 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
    %230 = arith.floordivsi %c-14339_i16, %c23747_i16 : i16
    %231 = tensor.empty() : tensor<5xi32>
    %alloc_32 = memref.alloc() : memref<2xi16>
    %232 = arith.muli %extracted, %c2130527886_i64 : i64
    %233 = math.sqrt %2 : tensor<5xf16>
    %234 = memref.alloca_scope  -> (i32) {
      %260 = math.atan2 %2, %2 : tensor<5xf16>
      %261 = math.powf %3, %3 : tensor<2xf32>
      scf.index_switch %25 
      case 1 {
        memref.assume_alignment %alloc_13, 8 : memref<6x2x2xf32>
        %287 = vector.shuffle %18, %18 [0, 1, 2, 4, 5, 8, 10] : vector<6xf32>, vector<6xf32>
        %288 = arith.minsi %c343258463_i32, %c816343974_i32 : i32
        %289 = math.ctpop %0 : tensor<6x2x2xi32>
        %290 = arith.negf %cst_0 : f32
        %291 = bufferization.clone %alloc_8 : memref<6x2x2xi32> to memref<6x2x2xi32>
        %292 = arith.negf %cst_0 : f32
        %293 = bufferization.to_memref %3 : memref<2xf32>
        %expanded_40 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<6x2x2xi1> into tensor<6x2x2x1xi1>
        %294 = vector.create_mask %102, %c10, %120 : vector<6x2x2xi1>
        affine.store %true, %alloc_15[%c12, %c14] : memref<2x2xi1>
        %295 = math.rsqrt %cst_0 : f32
        %296 = arith.shli %c32491_i16, %c-21004_i16 : i16
        %297 = vector.broadcast %120 : index to vector<5xindex>
        vector.scatter %alloc_12[%c1, %c1, %c0] [%297], %138, %138 : memref<6x2x2xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %298 = index.ceildivu %c12, %141
        %299 = arith.minui %c32491_i16, %c32491_i16 : i16
        scf.yield
      }
      case 2 {
        %287 = bufferization.to_memref %2 : memref<5xf16>
        %288 = arith.divui %c-21004_i16, %c12083_i16 : i16
        %289 = arith.remui %c1_i32, %c816343974_i32 : i32
        %290 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %291 = vector.maskedload %42[%c0, %c1, %c1], %104, %290 : memref<6x2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %292 = math.ceil %2 : tensor<5xf16>
        %293 = math.cttz %c32491_i16 : i16
        %294 = arith.maxui %c32491_i16, %c-21004_i16 : i16
        %295 = arith.muli %c1_i32, %c1757552704_i32 : i32
        %296 = math.cttz %20 : tensor<i32>
        %297 = math.rsqrt %cst_1 : f16
        %298 = arith.divui %extracted, %extracted : i64
        %299 = memref.load %alloc_6[%c1, %c1, %c0] : memref<6x2x2xi16>
        %300 = vector.insertelement %true, %60[%106 : index] : vector<1xi1>
        %301 = math.ctpop %collapsed_31 : tensor<12x2xi64>
        %302 = vector.load %alloc_9[%c0, %c1, %c1] : memref<6x2x2xi16>, vector<2xi16>
        %303 = tensor.empty(%c0, %25) : tensor<?x2x?xf32>
        scf.yield
      }
      case 3 {
        %287 = math.sqrt %cst_0 : f32
        %288 = math.absi %14 : tensor<6x2x2xi32>
        %289 = vector.bitcast %59 : vector<2x2xi1> to vector<2x2xi1>
        %290 = math.ctlz %c23747_i16 : i16
        %291 = math.exp %1 : tensor<2x2xf16>
        %292 = vector.extract %138[3] : vector<5xi1>
        %293 = arith.subi %c816343974_i32, %c343258463_i32 : i32
        %294 = math.powf %171, %221 : tensor<2x2xf16>
        %295 = index.ceildivs %134, %193
        vector.print %118 : vector<2x2xi1>
        %from_elements = tensor.from_elements %true, %true, %true, %true, %true : tensor<5xi1>
        %296 = math.log1p %3 : tensor<2xf32>
        %297 = math.log1p %cst_0 : f32
        %298 = math.round %1 : tensor<2x2xf16>
        %299 = arith.minsi %c1605113061_i64, %c2130527886_i64 : i64
        %300 = arith.floordivsi %c23747_i16, %c-21004_i16 : i16
        scf.yield
      }
      case 4 {
        vector.print %26 : vector<2x2xi1>
        %287 = arith.remui %c343258463_i32, %c514185487_i32 : i32
        %288 = math.ctlz %20 : tensor<i32>
        %289 = math.log10 %cst_1 : f16
        %290 = arith.remui %c343258463_i32, %c343258463_i32 : i32
        %291 = math.round %171 : tensor<2x2xf16>
        %292 = arith.shli %c1605113061_i64, %extracted : i64
        %293 = math.copysign %1, %1 : tensor<2x2xf16>
        %294 = math.ctlz %8 : tensor<6x2x2xi64>
        %295 = index.ceildivu %c11, %152
        %296 = math.fma %221, %1, %171 : tensor<2x2xf16>
        %297 = math.log10 %171 : tensor<2x2xf16>
        %298 = tensor.empty() : tensor<2x2xf16>
        %299 = linalg.matmul ins(%171, %1 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%298 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %300 = arith.divf %cst_1, %cst_1 : f16
        %301 = arith.floordivsi %c12083_i16, %c-21004_i16 : i16
        memref.store %c1605113061_i64, %alloc_16[%c0, %c1] : memref<2x2xi64>
        scf.yield
      }
      default {
        %287 = index.casts %c3 : index to i32
        %288 = math.absi %6 : tensor<2xi32>
        %289 = index.castu %c1_i32 : i32 to index
        %c1428836451_i64 = arith.constant 1428836451 : i64
        %290 = math.atan %3 : tensor<2xf32>
        %291 = vector.insert %32, %118 [1] : vector<2xi1> into vector<2x2xi1>
        %292 = arith.cmpi sgt, %true, %true : i1
        %true_40 = arith.constant true
        %293 = arith.cmpi eq, %extracted, %extracted : i64
        %294 = tensor.empty() : tensor<2x2xi64>
        %295 = linalg.matmul ins(%12, %189 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%294 : tensor<2x2xi64>) -> tensor<2x2xi64>
        %296 = index.sub %c0, %22
        %297 = math.powf %1, %1 : tensor<2x2xf16>
        %298 = index.ceildivu %94, %36
        %299 = math.round %cst_1 : f16
        %300 = arith.cmpi ult, %c1_i32, %c343258463_i32 : i32
        %301 = index.castu %97 : index to i32
      }
      %splat_36 = tensor.splat %c12083_i16 : tensor<5xi16>
      %262 = vector.broadcast %c12 : index to vector<2xindex>
      %263 = vector.broadcast %c12083_i16 : i16 to vector<2xi16>
      vector.scatter %111[%c1] [%262], %104, %263 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      %264 = math.tan %1 : tensor<2x2xf16>
      %265 = math.expm1 %113 : tensor<2x2xf16>
      %266 = index.add %c5, %c12
      %generated_37 = tensor.generate %c1, %52 {
      ^bb0(%arg1: index, %arg2: index):
        %287 = arith.addf %cst_1, %cst_1 : f16
        %288 = arith.maxf %cst_1, %cst_1 : f16
        %289 = vector.outerproduct %32, %32, %215 {kind = #vector.kind<mul>} : vector<2xi1>, vector<2xi1>
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d1 * 8, d2 - d1, d1)>(%25, %22, %106, %196)
        tensor.yield %cst_1 : f16
      } : tensor<?x?xf16>
      %generated_38 = tensor.generate %c10, %c0, %c10 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %287 = index.divu %266, %135
        %288 = arith.maxf %cst_1, %cst_1 : f16
        %289 = arith.ori %c32491_i16, %c-14339_i16 : i16
        %290 = index.casts %120 : index to i32
        tensor.yield %cst : f32
      } : tensor<?x?x?xf32>
      %267 = math.powf %3, %3 : tensor<2xf32>
      %268 = scf.execute_region -> index {
        %splat_40 = tensor.splat %cst : tensor<6x2x2xf32>
        %inserted_41 = tensor.insert %c32491_i16 into %expanded[%c1, %c1, %c0] : tensor<2x2x1xi16>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %118, %118, %59 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
        %288 = index.add %c6, %102
        %289 = arith.maxsi %c32491_i16, %c23747_i16 : i16
        %290 = math.tanh %171 : tensor<2x2xf16>
        %291 = vector.insert %c514185487_i32, %166 [4] : i32 into vector<6xi32>
        %292 = vector.matrix_multiply %73, %81 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %293 = affine.apply affine_map<(d0, d1) -> (d0)>(%193, %148)
        %294 = vector.extract %151[0] : vector<2x2xi1>
        %295 = arith.shli %c23747_i16, %c-21004_i16 : i16
        %from_elements = tensor.from_elements %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true : tensor<6x2x2xi1>
        affine.store %extracted, %34[%c2, %c6] : memref<2x2xi64>
        %296 = bufferization.to_memref %12 : memref<2x2xi64>
        %297 = vector.outerproduct %104, %32, %26 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
        affine.store %c32491_i16, %111[%c6] : memref<2xi16>
        scf.yield %94 : index
      }
      %269 = vector.insert %c514185487_i32, %107 [0] : i32 into vector<6xi32>
      %270 = math.cos %221 : tensor<2x2xf16>
      %271 = math.log1p %cst_1 : f16
      %collapsed_39 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x2xi16> into tensor<?xi16>
      %272 = arith.addf %cst_1, %cst_1 : f16
      %273 = math.expm1 %221 : tensor<2x2xf16>
      affine.for %arg1 = 0 to 34 {
      }
      %274 = math.tan %cst : f32
      %275 = memref.realloc %111 : memref<2xi16> to memref<2xi16>
      %276 = arith.maxsi %c1605113061_i64, %extracted : i64
      %277 = math.fma %cst_1, %cst_1, %cst_1 : f16
      %278 = arith.maxf %cst_0, %cst : f32
      %279 = math.log10 %3 : tensor<2xf32>
      %280 = math.absi %c514185487_i32 : i32
      %281 = math.atan2 %cst, %cst : f32
      %282 = vector.shuffle %18, %18 [1, 2, 3, 4, 5, 8] : vector<6xf32>, vector<6xf32>
      %283 = arith.floordivsi %c343258463_i32, %c343258463_i32 : i32
      %284 = vector.load %42[%c4, %c1, %c1] : memref<6x2x2xf32>, vector<6x2x2xf32>
      %285 = arith.negf %cst_0 : f32
      %286 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 4) * 128)>(%c8, %c5)
      memref.alloca_scope.return %c514185487_i32 : i32
    }
    %235 = bufferization.clone %alloc_17 : memref<2x6x2xi16> to memref<2x6x2xi16>
    %236 = math.roundeven %2 : tensor<5xf16>
    %alloc_33 = memref.alloc() : memref<2xi64>
    %237 = math.absi %4 : tensor<6x2x2xi16>
    %238 = index.ceildivs %c0, %97
    %239 = arith.remui %c816343974_i32, %c343258463_i32 : i32
    memref.alloca_scope  {
      bufferization.dealloc_tensor %1 : tensor<2x2xf16>
      %260 = math.atan2 %221, %113 : tensor<2x2xf16>
      %261 = math.tanh %171 : tensor<2x2xf16>
      %262 = math.expm1 %cst : f32
      %263 = math.ceil %cst_0 : f32
      %264 = index.divs %36, %c1
      %265 = index.maxs %196, %c13
      %266 = vector.broadcast %c-21004_i16 : i16 to vector<6x2x2xi16>
      %267 = vector.broadcast %true : i1 to vector<6x2x2xi1>
      %268 = vector.broadcast %c816343974_i32 : i32 to vector<6x2x2xi32>
      %269 = vector.gather %alloc_6[%22, %c9, %c9] [%268], %267, %266 : memref<6x2x2xi16>, vector<6x2x2xi32>, vector<6x2x2xi1>, vector<6x2x2xi16> into vector<6x2x2xi16>
      %270 = arith.floordivsi %true, %true : i1
      %271 = math.sqrt %171 : tensor<2x2xf16>
      %272 = arith.cmpf ole, %cst, %cst : f32
      %273 = vector.broadcast %cst : f32 to vector<6x2x2xf32>
      %274 = vector.fma %273, %273, %273 : vector<6x2x2xf32>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_8 : memref<6x2x2xi32>) outs(%136 : tensor<6x2x2xi32>) {
      ^bb0(%in: i32, %out: i32):
        %293 = arith.divui %out, %c514185487_i32 : i32
        %294 = math.fpowi %113, %131 : tensor<2x2xf16>, tensor<2x2xi32>
        %295 = index.sub %c0, %c10
        %296 = index.maxs %264, %134
        %297 = math.expm1 %cst_1 : f16
        %298 = math.log1p %3 : tensor<2xf32>
        %c0_i64 = arith.constant 0 : i64
        %299 = vector.transfer_read %189[%105, %c3], %c0_i64 : tensor<2x2xi64>, vector<i64>
        %300 = arith.floordivsi %c32491_i16, %c10539_i16 : i16
        %301 = index.casts %c816343974_i32 : i32 to index
        %alloc_39 = memref.alloc() : memref<2xf32>
        memref.copy %alloc_14, %alloc_39 : memref<2xf32> to memref<2xf32>
        %302 = affine.load %alloc_2[%c4] : memref<5xi16>
        %303 = arith.muli %c1605113061_i64, %c0_i64 : i64
        %304 = arith.minui %c514185487_i32, %c1_i32 : i32
        %305 = math.expm1 %cst_1 : f16
        %from_elements = tensor.from_elements %c514185487_i32, %out, %c816343974_i32, %c343258463_i32, %c343258463_i32 : tensor<5xi32>
        %306 = arith.floordivsi %c-14339_i16, %c-21004_i16 : i16
        %307 = vector.insert %104, %118 [1] : vector<2xi1> into vector<2x2xi1>
        %308 = vector.broadcast %c1605113061_i64 : i64 to vector<2xi64>
        %309 = vector.maskedload %alloc_16[%c1, %c1], %104, %308 : memref<2x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %310 = arith.shrui %c514185487_i32, %c1757552704_i32 : i32
        %311 = math.exp %2 : tensor<5xf16>
        %312 = math.ipowi %19, %19 : tensor<5xi32>
        %313 = math.fpowi %113, %131 : tensor<2x2xf16>, tensor<2x2xi32>
        %dest_40, %accumulated_value_41 = vector.scan <minsi>, %267, %26 {inclusive = false, reduction_dim = 0 : i64} : vector<6x2x2xi1>, vector<2x2xi1>
        %314 = bufferization.clone %alloc : memref<5xi1> to memref<5xi1>
        %315 = arith.maxf %cst_0, %cst_0 : f32
        %316 = math.atan %221 : tensor<2x2xf16>
        %317 = vector.broadcast %105 : index to vector<2xindex>
        %318 = vector.broadcast %c-21004_i16 : i16 to vector<2xi16>
        vector.scatter %111[%c0] [%317], %32, %318 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %extracted_42 = tensor.extract %collapsed[%c2, %c1] : tensor<12x2xi16>
        %319 = math.copysign %cst_0, %cst_0 : f32
        %320 = tensor.empty() : tensor<2x2xi64>
        %321 = linalg.matmul ins(%12, %12 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%320 : tensor<2x2xi64>) -> tensor<2x2xi64>
        %322 = math.cttz %302 : i16
        %323 = math.rsqrt %cst_1 : f16
        linalg.yield %out : i32
      } -> tensor<6x2x2xi32>
      %276 = math.fpowi %2, %11 : tensor<5xf16>, tensor<5xi32>
      %277 = index.casts %c1_i32 : i32 to index
      %278 = arith.negf %cst : f32
      %279 = arith.muli %c32491_i16, %c-21004_i16 : i16
      %280 = arith.maxf %cst_0, %cst_0 : f32
      %rank = tensor.rank %131 : tensor<2x2xi32>
      %281 = memref.load %alloc_15[%c1, %c0] : memref<2x2xi1>
      %alloc_36 = memref.alloc() : memref<6x2x2xf16>
      %282 = vector.broadcast %cst_1 : f16 to vector<6x2x2xf16>
      %283 = vector.gather %alloc_36[%177, %137, %c3] [%268], %267, %282 : memref<6x2x2xf16>, vector<6x2x2xi32>, vector<6x2x2xi1>, vector<6x2x2xf16> into vector<6x2x2xf16>
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_37 = arith.constant 0 : i16
      %284 = vector.transfer_read %10[%52, %c3, %c0], %c0_i16_37 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x2x2xi16>, vector<6xi16>
      %285 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 mod 16, -((d2 - 64) ceildiv 64))>(%277, %rank, %c6, %89)
      %286 = math.log1p %cst : f32
      %287 = index.add %238, %c3
      %288 = math.exp2 %171 : tensor<2x2xf16>
      %289 = vector.create_mask %c3 : vector<2xi1>
      %290 = arith.maxf %cst_1, %cst_1 : f16
      %alloc_38 = memref.alloc() : memref<2xf16>
      memref.assume_alignment %alloc_13, 4 : memref<6x2x2xf32>
      %291 = bufferization.to_memref %57 : memref<i32>
      %292 = arith.minui %234, %c1757552704_i32 : i32
    }
    %240 = arith.xori %c-21004_i16, %c10539_i16 : i16
    %241 = math.log1p %3 : tensor<2xf32>
    %242 = tensor.empty() : tensor<6x2xi32>
    %243 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%242 : tensor<6x2xi32>) outs(%14 : tensor<6x2x2xi32>) {
    ^bb0(%in: i32, %out: i32):
      %260 = index.maxu %22, %105
      %261 = math.round %1 : tensor<2x2xf16>
      %262 = index.divs %105, %c7
      %263 = vector.load %alloc_11[%c1, %c0, %c0] : memref<6x2x2xf32>, vector<5xf32>
      memref.tensor_store %7, %128 : memref<2x2xi16>
      %264 = index.add %c8, %c7
      %265 = memref.load %alloc_11[%c5, %c1, %c0] : memref<6x2x2xf32>
      %266 = vector.extract %166[3] : vector<6xi32>
      %267 = vector.broadcast %234 : i32 to vector<5xi32>
      %268 = vector.maskedload %alloc_8[%c1, %c0, %c0], %138, %267 : memref<6x2x2xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %269 = arith.shli %c1757552704_i32, %c1757552704_i32 : i32
      affine.store %c-14339_i16, %128[%c2, %c15] : memref<2x2xi16>
      %270 = arith.maxui %true, %true : i1
      %271 = math.ctpop %8 : tensor<6x2x2xi64>
      %272 = tensor.empty() : tensor<2x2xi16>
      %273 = linalg.matmul ins(%7, %7 : tensor<2x2xi16>, tensor<2x2xi16>) outs(%272 : tensor<2x2xi16>) -> tensor<2x2xi16>
      %274 = affine.load %alloc_11[%c13, %c6, %c1] : memref<6x2x2xf32>
      %275 = vector.insert %true, %101 [0] : i1 into vector<1xi1>
      %276 = memref.realloc %111 : memref<2xi16> to memref<5xi16>
      %277 = arith.shrui %c1_i32, %c816343974_i32 : i32
      %278 = arith.shli %c1757552704_i32, %c1_i32 : i32
      %alloca = memref.alloca() : memref<2xi16>
      %279 = arith.remf %cst_1, %cst_1 : f16
      %280 = math.fpowi %3, %6 : tensor<2xf32>, tensor<2xi32>
      %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %81, %73, %true : vector<1xi1>, vector<1xi1> into i1
      %cst_36 = arith.constant 1.8572256E+9 : f32
      %alloc_37 = memref.alloc() : memref<6x2x2xi64>
      memref.tensor_store %5, %alloc_37 : memref<6x2x2xi64>
      %282 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %118, %215, %118 : vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
      %283 = math.log1p %1 : tensor<2x2xf16>
      %284 = affine.max affine_map<(d0, d1, d2) -> (d2 * 32)>(%c3, %36, %c3)
      %285 = vector.insert %32, %151 [1] : vector<2xi1> into vector<2x2xi1>
      %286 = bufferization.clone %alloc_17 : memref<2x6x2xi16> to memref<2x6x2xi16>
      %alloca_38 = memref.alloca() : memref<6x2x2xi16>
      %287 = index.divu %c1, %264
      linalg.yield %c1757552704_i32 : i32
    } -> tensor<6x2x2xi32>
    %splat = tensor.splat %cst_0 : tensor<5xf32>
    %244 = bufferization.clone %alloc_14 : memref<2xf32> to memref<2xf32>
    %245 = arith.divf %cst_1, %cst_1 : f16
    %246 = index.sub %177, %c9
    %247 = arith.divsi %c12083_i16, %c10539_i16 : i16
    %248 = arith.divf %cst, %cst_0 : f32
    %249 = arith.muli %extracted, %c1605113061_i64 : i64
    %250 = vector.extract_strided_slice %59 {offsets = [0], sizes = [1], strides = [1]} : vector<2x2xi1> to vector<1x2xi1>
    %251 = arith.addf %cst, %cst : f32
    %252 = vector.broadcast %c-21004_i16 : i16 to vector<2xi16>
    %253 = vector.maskedload %alloc_18[%c1], %104, %252 : memref<2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
    %generated_34 = tensor.generate %c3 {
    ^bb0(%arg1: index):
      %260 = index.ceildivs %137, %c10
      scf.index_switch %134 
      case 1 {
        %rank = tensor.rank %0 : tensor<6x2x2xi32>
        %263 = arith.maxf %cst_0, %cst : f32
        %264 = arith.shrui %c-21004_i16, %c23747_i16 : i16
        %265 = index.ceildivu %c11, %c12
        %266 = math.log %113 : tensor<2x2xf16>
        %267 = arith.shrsi %c2130527886_i64, %extracted : i64
        %268 = math.floor %cst_0 : f32
        %269 = math.powf %1, %1 : tensor<2x2xf16>
        %270 = index.sub %36, %137
        %splat_36 = tensor.splat %c1757552704_i32 : tensor<5xi32>
        %271 = math.fpowi %221, %131 : tensor<2x2xf16>, tensor<2x2xi32>
        %272 = vector.outerproduct %104, %32, %151 {kind = #vector.kind<minsi>} : vector<2xi1>, vector<2xi1>
        %inserted_37 = tensor.insert %c816343974_i32 into %cast[%c0] : tensor<?xi32>
        %273 = index.sub %246, %120
        %274 = math.powf %cst_1, %cst_1 : f16
        %275 = vector.extract_strided_slice %26 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2xi1> to vector<2x2xi1>
        scf.yield
      }
      case 2 {
        %263 = memref.load %alloc_6[%c3, %c1, %c0] : memref<6x2x2xi16>
        %264 = arith.maxui %c-21004_i16, %c-21004_i16 : i16
        %265 = math.exp2 %3 : tensor<2xf32>
        %266 = math.round %splat : tensor<5xf32>
        %true_36 = index.bool.constant true
        %from_elements = tensor.from_elements %cst_0, %cst, %cst_0, %cst, %cst : tensor<5xf32>
        %267 = tensor.empty() : tensor<2x2xi64>
        %268 = linalg.matmul ins(%12, %12 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%267 : tensor<2x2xi64>) -> tensor<2x2xi64>
        %269 = arith.shrui %c816343974_i32, %c1757552704_i32 : i32
        %270 = math.log %3 : tensor<2xf32>
        %271 = vector.extract %103[0] : vector<2xi32>
        %inserted_37 = tensor.insert %c2130527886_i64 into %8[%c0, %c0, %c1] : tensor<6x2x2xi64>
        %272 = vector.broadcast %c10539_i16 : i16 to vector<5xi16>
        %273 = vector.broadcast %c343258463_i32 : i32 to vector<5xi32>
        %274 = vector.gather %7[%c11, %c7] [%273], %138, %272 : tensor<2x2xi16>, vector<5xi32>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %alloca = memref.alloca() : memref<2xf32>
        %275 = math.cos %cst : f32
        %276 = math.atan2 %221, %113 : tensor<2x2xf16>
        %277 = affine.max affine_map<(d0, d1, d2) -> (d1 + d2 - 31, d1, d1, d2 + 33)>(%106, %c8, %c0)
        scf.yield
      }
      case 3 {
        %263 = arith.xori %c1605113061_i64, %c2130527886_i64 : i64
        %264 = index.floordivs %94, %246
        %265 = memref.load %149[%c0] : memref<5xi64>
        %266 = math.copysign %3, %3 : tensor<2xf32>
        %267 = bufferization.to_memref %4 : memref<6x2x2xi16>
        %268 = bufferization.to_memref %150 : memref<5xi1>
        %269 = math.tan %2 : tensor<5xf16>
        %270 = arith.minui %c1605113061_i64, %extracted : i64
        %271 = arith.ori %c343258463_i32, %c1757552704_i32 : i32
        %extracted_36 = tensor.extract %9[%c2, %c0, %c0] : tensor<6x2x2xi1>
        %272 = arith.minui %c10539_i16, %c-21004_i16 : i16
        %273 = math.round %cst_0 : f32
        %274 = math.ceil %1 : tensor<2x2xf16>
        %275 = index.maxu %260, %89
        %276 = memref.realloc %268 : memref<5xi1> to memref<2xi1>
        %277 = math.copysign %113, %1 : tensor<2x2xf16>
        scf.yield
      }
      default {
        %extracted_36 = tensor.extract %12[%c1, %c0] : tensor<2x2xi64>
        %263 = index.ceildivs %22, %135
        %extracted_37 = tensor.extract %189[%c0, %c1] : tensor<2x2xi64>
        %264 = arith.shrui %c12083_i16, %c-14339_i16 : i16
        memref.copy %alloc_5, %alloc_13 : memref<6x2x2xf32> to memref<6x2x2xf32>
        %265 = math.roundeven %113 : tensor<2x2xf16>
        %266 = arith.muli %extracted_37, %c1605113061_i64 : i64
        %267 = arith.subi %c32491_i16, %c12083_i16 : i16
        %268 = affine.load %alloc_8[%c11, %c12, %c14] : memref<6x2x2xi32>
        %269 = vector.extract %108[4] : vector<6xi1>
        %270 = math.log1p %3 : tensor<2xf32>
        %271 = math.ctlz %13 : tensor<6x2x2xi1>
        %272 = arith.maxf %cst_0, %cst_0 : f32
        %273 = arith.addf %cst_1, %cst_1 : f16
        %274 = arith.maxsi %extracted_37, %extracted_37 : i64
        %275 = affine.max affine_map<(d0, d1, d2) -> ((d0 + d0 floordiv 16) * 2, (d0 floordiv 16) floordiv 2 + 1, d2 mod 4, d0 - d2 + 64)>(%135, %c6, %106)
      }
      %261 = memref.load %alloc[%c1] : memref<5xi1>
      %262 = arith.xori %c514185487_i32, %c343258463_i32 : i32
      tensor.yield %cst_0 : f32
    } : tensor<?xf32>
    bufferization.dealloc_tensor %11 : tensor<5xi32>
    %generated_35 = tensor.generate %c4, %120 {
    ^bb0(%arg1: index, %arg2: index):
      %260 = arith.shrui %c-21004_i16, %c32491_i16 : i16
      %261 = math.powf %3, %3 : tensor<2xf32>
      %262 = index.ceildivs %c2, %246
      %263 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 32) ceildiv 32 + (d2 ceildiv 32) ceildiv 32 + d1)>(%c2, %89, %120, %c15)
      tensor.yield %cst : f32
    } : tensor<?x?xf32>
    %254 = arith.cmpf ole, %cst_0, %cst : f32
    %255 = tensor.empty() : tensor<6x2x2xi1>
    %256 = linalg.copy ins(%13 : tensor<6x2x2xi1>) outs(%255 : tensor<6x2x2xi1>) -> tensor<6x2x2xi1>
    %257 = tensor.empty() : tensor<2x2xi64>
    %transposed = linalg.transpose ins(%alloc_10 : memref<2x2xi64>) outs(%257 : tensor<2x2xi64>) permutation = [1, 0] 
    %258 = tensor.empty() : tensor<2x2xi1>
    %reduced = linalg.reduce ins(%13 : tensor<6x2x2xi1>) outs(%258 : tensor<2x2xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %260 = arith.maxf %cst_0, %cst_0 : f32
        %261 = math.round %2 : tensor<5xf16>
        %262 = vector.matrix_multiply %60, %73 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        affine.store %c514185487_i32, %alloc_4[%c4, %c0] : memref<2x2xi32>
        %263 = arith.ori %extracted, %c2130527886_i64 : i64
        %264 = math.ctlz %11 : tensor<5xi32>
        %265 = arith.subi %c514185487_i32, %234 : i32
        %266 = math.atan2 %2, %2 : tensor<5xf16>
        %false = arith.constant false
        linalg.yield %false : i1
      }
    scf.parallel (%arg1, %arg2) = (%193, %102) to (%c7, %121) step (%c3, %c12) {
      %generated_36 = tensor.generate %c8, %25, %177 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %272 = index.ceildivu %137, %arg2
        %273 = bufferization.clone %alloc_16 : memref<2x2xi64> to memref<2x2xi64>
        %274 = arith.negf %cst : f32
        %275 = math.exp %1 : tensor<2x2xf16>
        tensor.yield %cst : f32
      } : tensor<?x?x?xf32>
      %rank = tensor.rank %257 : tensor<2x2xi64>
      %260 = index.castu %c1757552704_i32 : i32 to index
      %261 = math.log1p %3 : tensor<2xf32>
      %262 = arith.shrui %c2130527886_i64, %extracted : i64
      %263 = arith.maxsi %c1757552704_i32, %c1_i32 : i32
      %264 = arith.floordivsi %c-21004_i16, %c-14339_i16 : i16
      %265 = math.exp %221 : tensor<2x2xf16>
      %266 = math.ceil %1 : tensor<2x2xf16>
      %267 = math.exp2 %1 : tensor<2x2xf16>
      %expanded_37 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<6x2x2xi1> into tensor<6x2x2x1xi1>
      %268 = math.sqrt %221 : tensor<2x2xf16>
      %269 = arith.subi %c1757552704_i32, %c343258463_i32 : i32
      memref.store %c12083_i16, %70[%c0] : memref<2xi16>
      %270 = arith.maxsi %c10539_i16, %c10539_i16 : i16
      %271 = math.ctlz %c343258463_i32 : i32
      scf.yield
    }
    %259 = affine.vector_load %alloc_6[%141, %c10, %c13] : memref<6x2x2xi16>, vector<2xi16>
    affine.vector_store %32, %alloc_15[%36, %120] : memref<2x2xi1>, vector<2xi1>
    vector.print %18 : vector<6xf32>
    vector.print %26 : vector<2x2xi1>
    vector.print %32 : vector<2xi1>
    vector.print %59 : vector<2x2xi1>
    vector.print %60 : vector<1xi1>
    vector.print %73 : vector<1xi1>
    vector.print %81 : vector<1xi1>
    vector.print %101 : vector<1xi1>
    vector.print %103 : vector<2xi32>
    vector.print %104 : vector<2xi1>
    vector.print %107 : vector<6xi32>
    vector.print %108 : vector<6xi1>
    vector.print %109 : vector<6xi32>
    vector.print %118 : vector<2x2xi1>
    vector.print %138 : vector<5xi1>
    vector.print %151 : vector<2x2xi1>
    vector.print %166 : vector<6xi32>
    vector.print %215 : vector<2x2xi1>
    vector.print %250 : vector<1x2xi1>
    vector.print %252 : vector<2xi16>
    vector.print %253 : vector<2xi16>
    vector.print %259 : vector<2xi16>
    vector.print %true : i1
    vector.print %c10539_i16 : i16
    vector.print %cst : f32
    vector.print %c816343974_i32 : i32
    vector.print %c514185487_i32 : i32
    vector.print %c2130527886_i64 : i64
    vector.print %c23747_i16 : i16
    vector.print %c-21004_i16 : i16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c343258463_i32 : i32
    vector.print %c12083_i16 : i16
    vector.print %c1757552704_i32 : i32
    vector.print %c1605113061_i64 : i64
    vector.print %c-14339_i16 : i16
    vector.print %c32491_i16 : i16
    vector.print %extracted : i64
    vector.print %c1_i32 : i32
    vector.print %234 : i32
    return %cst_1 : f16
  }
}
