module {
  func.func @func1(%arg0: vector<1x4xi1>) -> vector<6xi1> {
    %cst = arith.constant 0x4DDAD09B : f32
    %false = arith.constant false
    %cst_0 = arith.constant 1.08692992E+9 : f32
    %cst_1 = arith.constant 0x4D9C8A59 : f32
    %c1972338048_i64 = arith.constant 1972338048 : i64
    %cst_2 = arith.constant 1.6797408E+9 : f32
    %c681900122_i64 = arith.constant 681900122 : i64
    %c-12697_i16 = arith.constant -12697 : i16
    %c-24077_i16 = arith.constant -24077 : i16
    %cst_3 = arith.constant 1.97475584E+9 : f32
    %cst_4 = arith.constant 1.16974618E+9 : f32
    %c193400656_i32 = arith.constant 193400656 : i32
    %cst_5 = arith.constant 5.091200e+04 : f16
    %c1686033321_i64 = arith.constant 1686033321 : i64
    %cst_6 = arith.constant 0x4D42ED03 : f32
    %false_7 = arith.constant false
    %0 = tensor.empty() : tensor<6xf32>
    %1 = tensor.empty() : tensor<1xi16>
    %2 = tensor.empty() : tensor<6xi64>
    %3 = tensor.empty() : tensor<6xi16>
    %4 = tensor.empty() : tensor<6xi32>
    %5 = tensor.empty() : tensor<1x4xf32>
    %6 = tensor.empty() : tensor<6xf16>
    %7 = tensor.empty() : tensor<6xi16>
    %8 = tensor.empty() : tensor<6xf16>
    %9 = tensor.empty() : tensor<6xi16>
    %10 = tensor.empty() : tensor<6xi16>
    %11 = tensor.empty() : tensor<1x4xi16>
    %12 = tensor.empty() : tensor<1x4xi16>
    %13 = tensor.empty() : tensor<6xi1>
    %14 = tensor.empty() : tensor<6xi32>
    %15 = tensor.empty() : tensor<6xf16>
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
    %alloc = memref.alloc() : memref<6xf32>
    %alloc_8 = memref.alloc() : memref<1xi1>
    %alloc_9 = memref.alloc() : memref<1xi1>
    %alloc_10 = memref.alloc() : memref<6xi1>
    %alloc_11 = memref.alloc() : memref<6xi16>
    %alloc_12 = memref.alloc() : memref<1xi32>
    %alloc_13 = memref.alloc() : memref<1x4xi64>
    %alloc_14 = memref.alloc() : memref<6xf16>
    %alloc_15 = memref.alloc() : memref<1x4xf32>
    %alloc_16 = memref.alloc() : memref<1xi1>
    %alloc_17 = memref.alloc() : memref<1x4xi16>
    %alloc_18 = memref.alloc() : memref<6xi32>
    %alloc_19 = memref.alloc() : memref<1xf32>
    %alloc_20 = memref.alloc() : memref<1x4xi32>
    %alloc_21 = memref.alloc() : memref<1xi64>
    %alloc_22 = memref.alloc() : memref<6xi16>
    %16 = tensor.empty() : tensor<6xi16>
    %17 = linalg.copy ins(%3 : tensor<6xi16>) outs(%16 : tensor<6xi16>) -> tensor<6xi16>
    %alloc_23 = memref.alloc() : memref<6xi1>
    linalg.transpose ins(%alloc_10 : memref<6xi1>) outs(%alloc_23 : memref<6xi1>) permutation = [0] 
    %alloc_24 = memref.alloc() : memref<i1>
    linalg.reduce ins(%alloc_23 : memref<6xi1>) outs(%alloc_24 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %241 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
        %242 = vector.insert %c193400656_i32, %241 [0] : i32 into vector<1xi32>
        %243 = tensor.empty() : tensor<6xi32>
        %mapped_65 = linalg.map ins(%alloc_18, %alloc_18, %alloc_18 : memref<6xi32>, memref<6xi32>, memref<6xi32>) outs(%243 : tensor<6xi32>)
          (%in_69: i32, %in_70: i32, %in_71: i32) {
            %251 = math.copysign %cst_1, %cst_6 : f32
            %252 = math.fpowi %cst_3, %c193400656_i32 : f32, i32
            %253 = math.floor %cst_4 : f32
            %254 = vector.splat %cst_2 : vector<6xf32>
            %255 = index.add %c8, %c12
            %256 = arith.remf %cst_3, %cst : f32
            %257 = vector.splat %cst_0 : vector<1xf32>
            %258 = arith.andi %init, %false_7 : i1
            %alloca_72 = memref.alloca() : memref<6xi1>
            %259 = math.fpowi %cst_6, %c193400656_i32 : f32, i32
            %260 = math.exp %8 : tensor<6xf16>
            %261 = index.divu %c15, %c5
            %262 = vector.multi_reduction <xor>, %241, %c193400656_i32 [0] : vector<1xi32> to i32
            %263 = index.add %c9, %c11
            %264 = arith.muli %false_7, %false : i1
            %265 = vector.insert %262, %241 [0] : i32 into vector<1xi32>
            %266 = math.sqrt %0 : tensor<6xf32>
            %267 = arith.addi %false, %init : i1
            bufferization.dealloc_tensor %14 : tensor<6xi32>
            %268 = index.divu %c10, %261
            %269 = math.ctlz %c681900122_i64 : i64
            %splat_73 = tensor.splat %cst_1 : tensor<1x4xf32>
            %270 = arith.remf %cst_2, %cst_3 : f32
            %271 = affine.max affine_map<(d0, d1) -> (d1 mod 64, d1 mod 64, (d1 mod 64) floordiv 128)>(%c8, %c10)
            %272 = arith.maxf %cst_6, %cst_1 : f32
            %cast_74 = tensor.cast %5 : tensor<1x4xf32> to tensor<?x?xf32>
            %extracted_75 = tensor.extract %cast_74[%c0, %c0] : tensor<?x?xf32>
            %273 = index.casts %c10 : index to i32
            %274 = memref.atomic_rmw mins %c193400656_i32, %alloc_20[%c0, %c2] : (i32, memref<1x4xi32>) -> i32
            %275 = math.tanh %8 : tensor<6xf16>
            %276 = math.exp %15 : tensor<6xf16>
            %expanded_76 = tensor.expand_shape %splat_73 [[0], [1, 2]] : tensor<1x4xf32> into tensor<1x4x1xf32>
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %244 = math.log1p %5 : tensor<1x4xf32>
        %alloc_66 = memref.alloc() : memref<i1>
        memref.copy %alloc_24, %alloc_66 : memref<i1> to memref<i1>
        %245 = vector.broadcast %c13 : index to vector<10xindex>
        %246 = vector.broadcast %in : i1 to vector<10xi1>
        %247 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        vector.scatter %alloc_19[%c0] [%245], %246, %247 : memref<1xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %248 = tensor.empty() : tensor<6xf16>
        %mapped_67 = linalg.map ins(%6 : tensor<6xf16>) outs(%248 : tensor<6xf16>)
          (%in_69: f16) {
            vector.print %241 : vector<1xi32>
            %251 = arith.minsi %c1686033321_i64, %c1972338048_i64 : i64
            %extracted_70 = tensor.extract %0[%c5] : tensor<6xf32>
            %252 = math.log2 %6 : tensor<6xf16>
            %253 = math.ctpop %11 : tensor<1x4xi16>
            %254 = affine.load %alloc_11[%c13] : memref<6xi16>
            affine.store %c193400656_i32, %alloc_12[%c5] : memref<1xi32>
            %255 = vector.extract %241[0] : vector<1xi32>
            %256 = vector.matrix_multiply %241, %241 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
            %extracted_71 = tensor.extract %5[%c0, %c1] : tensor<1x4xf32>
            %257 = math.ipowi %c1686033321_i64, %c1972338048_i64 : i64
            vector.print %256 : vector<1xi32>
            %258 = vector.extract_strided_slice %241 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
            %259 = index.ceildivu %c14, %c10
            %260 = arith.minf %cst, %cst_0 : f32
            %261 = index.casts %c1686033321_i64 : i64 to index
            %262 = math.sqrt %5 : tensor<1x4xf32>
            %263 = math.ipowi %false, %false_7 : i1
            vector.print %258 : vector<1xi32>
            %264 = arith.cmpf false, %extracted_71, %extracted_71 : f32
            %cast_72 = tensor.cast %12 : tensor<1x4xi16> to tensor<?x?xi16>
            %265 = memref.load %alloc_23[%c1] : memref<6xi1>
            %266 = index.ceildivu %c8, %c9
            %267 = vector.reduction <maxui>, %241 : vector<1xi32> into i32
            %268 = arith.minf %extracted_71, %cst_4 : f32
            %269 = index.ceildivs %c8, %c7
            %expanded_73 = tensor.expand_shape %14 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
            %270 = math.ctpop %c1686033321_i64 : i64
            %271 = arith.ceildivsi %254, %254 : i16
            %272 = arith.maxf %cst_4, %cst_4 : f32
            %273 = math.log2 %cst_4 : f32
            %274 = math.exp %cst_6 : f32
            %cst_74 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_74 : f16
          }
        %249 = bufferization.clone %alloc_11 : memref<6xi16> to memref<6xi16>
        %250 = index.sub %c8, %c1
        %true_68 = arith.constant true
        linalg.yield %true_68 : i1
      }
    %18 = scf.parallel (%arg1) = (%c9) to (%c0) step (%c2) init (%alloc_24) -> memref<i1> {
      %241 = scf.while (%arg2 = %alloc_10) : (memref<6xi1>) -> memref<6xi1> {
        %260 = index.ceildivs %c4, %c10
        %261 = arith.maxsi %false_7, %false : i1
        %262 = vector.broadcast %c-24077_i16 : i16 to vector<1xi16>
        %263 = vector.insert %c-12697_i16, %262 [0] : i16 into vector<1xi16>
        bufferization.dealloc_tensor %14 : tensor<6xi32>
        %264 = vector.broadcast %cst_4 : f32 to vector<6xf32>
        %265 = arith.ori %c1686033321_i64, %c1686033321_i64 : i64
        %266 = arith.andi %c-12697_i16, %c-24077_i16 : i16
        %267 = math.exp2 %cst_6 : f32
        scf.condition(%false_7) %arg2 : memref<6xi1>
      } do {
      ^bb0(%arg2: memref<6xi1>):
        %260 = arith.floordivsi %false, %false : i1
        %261 = vector.broadcast %c193400656_i32 : i32 to vector<10xi32>
        %262 = vector.broadcast %false : i1 to vector<10xi1>
        %263 = vector.maskedload %alloc_18[%c4], %262, %261 : memref<6xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %inserted_68 = tensor.insert %c-24077_i16 into %7[%c1] : tensor<6xi16>
        %264 = math.fpowi %6, %14 : tensor<6xf16>, tensor<6xi32>
        %265 = vector.broadcast %c3 : index to vector<10xindex>
        %266 = vector.broadcast %c-24077_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_17[%c0, %c2] [%265], %262, %266 : memref<1x4xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %267 = index.ceildivs %c5, %c8
        %268 = arith.subi %c-24077_i16, %c-24077_i16 : i16
        %269 = arith.minui %c193400656_i32, %c193400656_i32 : i32
        bufferization.dealloc_tensor %1 : tensor<1xi16>
        %270 = index.sub %c4, %c6
        %271 = vector.insertelement %c193400656_i32, %261[%c8 : index] : vector<10xi32>
        %alloc_69 = memref.alloc() : memref<6xf16>
        %272 = vector.splat %c0 : vector<6xindex>
        %273 = arith.shli %c681900122_i64, %c681900122_i64 : i64
        %274 = vector.splat %c14 : vector<1x4xindex>
        %275 = math.exp %5 : tensor<1x4xf32>
        scf.yield %alloc_23 : memref<6xi1>
      }
      %242 = vector.create_mask %c8 : vector<1xi1>
      %243 = tensor.empty() : tensor<1x4xf32>
      %mapped_65 = linalg.map ins(%alloc_15 : memref<1x4xf32>) outs(%243 : tensor<1x4xf32>)
        (%in: f32) {
          %260 = vector.broadcast %false : i1 to vector<1x1xi1>
          %261 = vector.outerproduct %242, %242, %260 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
          %rank_68 = tensor.rank %5 : tensor<1x4xf32>
          %262 = arith.addi %c681900122_i64, %c1686033321_i64 : i64
          %263 = vector.extract %242[0] : vector<1xi1>
          %264 = affine.max affine_map<(d0, d1, d2) -> ((d1 + 128) * 8 + d2 - 32, d1)>(%c5, %c2, %c7)
          %265 = arith.minsi %c1972338048_i64, %c1972338048_i64 : i64
          %266 = math.exp2 %15 : tensor<6xf16>
          %267 = index.add %c12, %c11
          %268 = math.absi %c1972338048_i64 : i64
          %269 = arith.addf %cst_4, %in : f32
          %270 = vector.broadcast %false_7 : i1 to vector<1x1xi1>
          %271 = vector.outerproduct %242, %242, %270 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
          %272 = vector.broadcast %267 : index to vector<6xindex>
          %273 = vector.broadcast %false : i1 to vector<6xi1>
          %274 = vector.broadcast %c681900122_i64 : i64 to vector<6xi64>
          vector.scatter %alloc_13[%c0, %c1] [%272], %273, %274 : memref<1x4xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
          %275 = vector.matrix_multiply %242, %242 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %276 = arith.mulf %cst, %cst_4 : f32
          %277 = vector.extract %242[0] : vector<1xi1>
          %cast_69 = tensor.cast %0 : tensor<6xf32> to tensor<?xf32>
          %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %275, %242, %false_7 : vector<1xi1>, vector<1xi1> into i1
          %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %275, %275, %false : vector<1xi1>, vector<1xi1> into i1
          %280 = math.log2 %15 : tensor<6xf16>
          %281 = math.floor %5 : tensor<1x4xf32>
          %282 = arith.remf %cst_4, %cst_4 : f32
          %alloca_70 = memref.alloca() : memref<6xf32>
          %283 = math.exp %5 : tensor<1x4xf32>
          %284 = math.ctpop %11 : tensor<1x4xi16>
          %285 = math.tan %0 : tensor<6xf32>
          %286 = arith.remsi %c1686033321_i64, %c1686033321_i64 : i64
          %287 = math.cos %0 : tensor<6xf32>
          %inserted_71 = tensor.insert %c-24077_i16 into %12[%c0, %c0] : tensor<1x4xi16>
          %288 = arith.muli %c681900122_i64, %c1972338048_i64 : i64
          %289 = math.floor %cst_0 : f32
          %290 = math.floor %cst_5 : f16
          %291 = index.add %arg1, %c15
          %cst_72 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_72 : f32
        }
      affine.for %arg2 = 0 to 26 {
      }
      %244 = vector.broadcast %c681900122_i64 : i64 to vector<4xi64>
      %245 = vector.broadcast %false : i1 to vector<4xi1>
      %246 = vector.maskedload %alloc_13[%c0, %c0], %245, %244 : memref<1x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %splat_66 = tensor.splat %cst_2 : tensor<6xf32>
      %247 = arith.addf %cst, %cst_2 : f32
      %248 = math.tanh %cst_5 : f16
      %249 = vector.broadcast %cst_2 : f32 to vector<1x4xf32>
      %250 = vector.fma %249, %249, %249 : vector<1x4xf32>
      %251 = math.log2 %0 : tensor<6xf32>
      %252 = arith.cmpi ne, %c681900122_i64, %c1686033321_i64 : i64
      %253 = vector.transpose %244, [0] : vector<4xi64> to vector<4xi64>
      %254 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %255 = vector.maskedload %alloc_19[%c0], %242, %254 : memref<1xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %256 = arith.maxsi %c1686033321_i64, %c1686033321_i64 : i64
      %257 = math.floor %15 : tensor<6xf16>
      %258 = vector.broadcast %cst_6 : f32 to vector<4xf32>
      %259 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %249, %255, %258 : vector<1x4xf32>, vector<1xf32> into vector<4xf32>
      %alloc_67 = memref.alloc() : memref<i1>
      scf.reduce(%alloc_67)  : memref<i1> {
      ^bb0(%arg2: memref<i1>, %arg3: memref<i1>):
        %260 = math.copysign %5, %243 : tensor<1x4xf32>
        %cast_68 = tensor.cast %17 : tensor<6xi16> to tensor<?xi16>
        %261 = arith.subi %c-24077_i16, %c-24077_i16 : i16
        %262 = affine.max affine_map<(d0) -> (0, d0 - 19, d0 - 16, d0 - 19)>(%c15)
        %263 = index.maxu %c6, %c2
        memref.tensor_store %0, %alloc : memref<6xf32>
        bufferization.dealloc_tensor %1 : tensor<1xi16>
        %expanded_69 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<1x4xi16> into tensor<1x4x1xi16>
        %alloc_70 = memref.alloc() : memref<i1>
        scf.reduce.return %alloc_70 : memref<i1>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_11[%c9] : memref<6xi16>, vector<1xi16>
    affine.vector_store %19, %alloc_22[%c13] : memref<6xi16>, vector<1xi16>
    %alloc_25 = memref.alloc() : memref<6xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%3, %alloc_25 : tensor<6xi16>, memref<6xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    %22 = scf.index_switch %c13 -> i16 
    case 1 {
      %241 = vector.insertelement %c-24077_i16, %19[%c13 : index] : vector<1xi16>
      %rank_65 = tensor.rank %7 : tensor<6xi16>
      memref.alloca_scope  {
        %254 = vector.extract %19[0] : vector<1xi16>
        %255 = arith.shrsi %false_7, %false_7 : i1
        %inserted_68 = tensor.insert %c193400656_i32 into %14[%c1] : tensor<6xi32>
        %256 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        %257 = vector.broadcast %false_7 : i1 to vector<1xi1>
        %258 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
        %259 = vector.gather %alloc_15[%c9, %c10] [%258], %257, %256 : memref<1x4xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %260 = math.exp %cst_4 : f32
        %261 = arith.ceildivsi %c1686033321_i64, %c1972338048_i64 : i64
        %262 = arith.divf %cst_6, %cst_3 : f32
        %263 = math.cos %cst_6 : f32
        %collapsed_69 = tensor.collapse_shape %5 [[0, 1]] : tensor<1x4xf32> into tensor<4xf32>
        %264 = arith.maxf %cst_1, %cst_4 : f32
        %265 = arith.minf %cst, %cst_2 : f32
        %extracted_70 = tensor.extract %1[%c0] : tensor<1xi16>
        %266 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %267 = arith.minsi %c-12697_i16, %c-12697_i16 : i16
        %268 = arith.maxsi %extracted_70, %c-24077_i16 : i16
        %269 = index.casts %c10 : index to i32
        %270 = math.exp %cst_5 : f16
        %271 = arith.ceildivsi %c-12697_i16, %c-12697_i16 : i16
        %272 = math.log2 %15 : tensor<6xf16>
        %c0_i32 = arith.constant 0 : i32
        %273 = vector.transfer_read %alloc_18[%c15], %c0_i32 : memref<6xi32>, vector<i32>
        %collapsed_71 = tensor.collapse_shape %11 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
        %274 = math.exp %cst_4 : f32
        %275 = math.tan %6 : tensor<6xf16>
        %276 = math.ctlz %7 : tensor<6xi16>
        %277 = math.copysign %cst, %cst_2 : f32
        %278 = vector.broadcast %extracted_70 : i16 to vector<6xi16>
        %279 = arith.minui %c-24077_i16, %c-24077_i16 : i16
        %alloc_72 = memref.alloc() : memref<1x4xi64>
        memref.copy %alloc_13, %alloc_72 : memref<1x4xi64> to memref<1x4xi64>
        %280 = vector.insertelement %extracted_70, %278[%c7 : index] : vector<6xi16>
        %281 = arith.addi %c193400656_i32, %c193400656_i32 : i32
        %282 = math.ipowi %2, %2 : tensor<6xi64>
        %cast_73 = tensor.cast %8 : tensor<6xf16> to tensor<?xf16>
      }
      %242 = arith.mulf %cst_4, %cst_2 : f32
      %243 = vector.create_mask %c3, %c4 : vector<1x4xi1>
      %244 = affine.if affine_set<(d0, d1) : (d1 * 4 == 0)>(%c15, %c8) -> f32 {
        %splat_68 = tensor.splat %cst_5 : tensor<1x4xf16>
        %254 = vector.load %alloc_23[%c1] : memref<6xi1>, vector<6xi1>
        %255 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
        %256 = vector.maskedload %alloc_18[%c4], %254, %255 : memref<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %alloc_69 = memref.alloc() : memref<6xi32>
        %257 = arith.shrsi %c681900122_i64, %c1686033321_i64 : i64
        %258 = vector.broadcast %false : i1 to vector<4xi1>
        %dest_70, %accumulated_value_71 = vector.scan <minui>, %243, %258 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %259 = arith.muli %c193400656_i32, %c193400656_i32 : i32
        bufferization.dealloc_tensor %9 : tensor<6xi16>
        affine.yield %cst_1 : f32
      } else {
        %254 = math.floor %cst_5 : f16
        %inserted_68 = tensor.insert %c1972338048_i64 into %2[%c3] : tensor<6xi64>
        %255 = math.ipowi %9, %16 : tensor<6xi16>
        %256 = bufferization.clone %alloc_14 : memref<6xf16> to memref<6xf16>
        %expanded_69 = tensor.expand_shape %15 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
        %257 = index.sub %c11, %c10
        %258 = vector.broadcast %cst_5 : f16 to vector<6xf16>
        %259 = vector.broadcast %false_7 : i1 to vector<6xi1>
        %260 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
        %261 = vector.gather %256[%257] [%260], %259, %258 : memref<6xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %262 = math.log10 %expanded_69 : tensor<6x1xf16>
        affine.yield %cst_2 : f32
      }
      %inserted_66 = tensor.insert %c-24077_i16 into %11[%c0, %c0] : tensor<1x4xi16>
      %245 = vector.broadcast %false : i1 to vector<6xi1>
      %246 = vector.maskedload %alloc_9[%c0], %245, %245 : memref<1xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
      %247 = vector.reduction <maxui>, %246 : vector<6xi1> into i1
      vector.print %246 : vector<6xi1>
      %248 = scf.if %false -> (memref<6xi16>) {
        %254 = vector.splat %c-24077_i16 : vector<1xi16>
        %255 = index.maxs %c0, %c12
        %256 = vector.flat_transpose %246 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %257 = math.ceil %8 : tensor<6xf16>
        %258 = vector.multi_reduction <or>, %246, %246 [] : vector<6xi1> to vector<6xi1>
        memref.tensor_store %5, %alloc_15 : memref<1x4xf32>
        %259 = index.maxs %c7, %c0
        %260 = tensor.empty() : tensor<4x10xi16>
        %261 = tensor.empty() : tensor<1x10xi16>
        %262 = linalg.matmul ins(%12, %260 : tensor<1x4xi16>, tensor<4x10xi16>) outs(%261 : tensor<1x10xi16>) -> tensor<1x10xi16>
        scf.yield %alloc_22 : memref<6xi16>
      } else {
        %254 = vector.multi_reduction <minsi>, %243, %243 [] : vector<1x4xi1> to vector<1x4xi1>
        %255 = math.floor %8 : tensor<6xf16>
        %alloca_68 = memref.alloca() : memref<6xf32>
        %256 = vector.insertelement %false, %246[%c11 : index] : vector<6xi1>
        %257 = vector.extract_strided_slice %245 {offsets = [0], sizes = [6], strides = [1]} : vector<6xi1> to vector<6xi1>
        %258 = vector.insertelement %c-12697_i16, %19[%c13 : index] : vector<1xi16>
        %259 = index.maxs %c15, %c4
        %260 = index.add %c7, %c4
        scf.yield %alloc_22 : memref<6xi16>
      }
      %249 = math.exp %cst_5 : f16
      %cast_67 = tensor.cast %2 : tensor<6xi64> to tensor<?xi64>
      %250 = tensor.empty() : tensor<4x1xf32>
      %251 = tensor.empty() : tensor<1x1xf32>
      %252 = linalg.matmul ins(%5, %250 : tensor<1x4xf32>, tensor<4x1xf32>) outs(%251 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %253 = math.ipowi %12, %11 : tensor<1x4xi16>
      memref.alloca_scope  {
        %254 = vector.broadcast %false : i1 to vector<4xi1>
        %255 = vector.insert %254, %243 [0] : vector<4xi1> into vector<1x4xi1>
        affine.store %false, %alloc_16[%c2] : memref<1xi1>
        %expanded_68 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<1x4xi16> into tensor<1x4x1xi16>
        %256 = arith.minf %cst, %cst_6 : f32
        %257 = math.log2 %15 : tensor<6xf16>
        %258 = arith.minui %false, %false_7 : i1
        %alloc_69 = memref.alloc() : memref<1xf32>
        %259 = vector.multi_reduction <xor>, %19, %19 [] : vector<1xi16> to vector<1xi16>
        %260 = arith.maxsi %false_7, %false : i1
        %261 = memref.atomic_rmw assign %c-12697_i16, %alloc_22[%c1] : (i16, memref<6xi16>) -> i16
        %262 = vector.splat %c10 : vector<6xindex>
        %263 = math.fma %cst_3, %cst, %cst_6 : f32
        %264 = vector.broadcast %cst_5 : f16 to vector<1xf16>
        %265 = vector.broadcast %false_7 : i1 to vector<1xi1>
        %266 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
        %267 = vector.gather %alloc_14[%c15] [%266], %265, %264 : memref<6xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %268 = vector.insert %c193400656_i32, %266 [0] : i32 into vector<1xi32>
        %269 = math.ctlz %c-24077_i16 : i16
        %270 = index.maxs %c1, %c0
        %271 = math.log %0 : tensor<6xf32>
        %272 = math.cos %8 : tensor<6xf16>
        %273 = arith.cmpf one, %cst_3, %cst_0 : f32
        %274 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 * 2 + 128) * 64, d0 mod 8, -d0)>(%c8, %c6, %c1, %c5)
        %275 = arith.floordivsi %false, %false_7 : i1
        %276 = math.absf %cst_2 : f32
        %277 = arith.maxf %cst_2, %cst_6 : f32
        %278 = index.ceildivs %c12, %c7
        %279 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
        %280 = index.divu %c1, %c9
        %alloca_70 = memref.alloca() : memref<1xi32>
        memref.copy %alloc_25, %248 : memref<6xi16> to memref<6xi16>
        %281 = index.divu %c11, %274
        %282 = arith.remsi %c1972338048_i64, %c1972338048_i64 : i64
        %283 = index.ceildivu %c1, %c10
        %284 = affine.max affine_map<(d0) -> (d0, 0)>(%c12)
      }
      scf.yield %c-24077_i16 : i16
    }
    default {
      %241 = tensor.empty() : tensor<6xi64>
      %mapped_65 = linalg.map ins(%2 : tensor<6xi64>) outs(%241 : tensor<6xi64>)
        (%in: i64) {
          vector.print %19 : vector<1xi16>
          %256 = arith.shrsi %c-12697_i16, %c-24077_i16 : i16
          %257 = vector.splat %cst : vector<6xf32>
          %258 = index.casts %c-12697_i16 : i16 to index
          %259 = vector.broadcast %c681900122_i64 : i64 to vector<6xi64>
          %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c-24077_i16 : vector<1xi16>, vector<1xi16> into i16
          %261 = vector.broadcast %false : i1 to vector<6xi1>
          %262 = vector.maskedload %alloc_23[%c4], %261, %261 : memref<6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
          %263 = index.divu %c10, %c8
          %264 = bufferization.clone %alloc_11 : memref<6xi16> to memref<6xi16>
          %265 = math.ctpop %1 : tensor<1xi16>
          %266 = index.maxs %c3, %c0
          %267 = math.cos %5 : tensor<1x4xf32>
          %268 = math.powf %8, %6 : tensor<6xf16>
          %alloc_69 = memref.alloc() : memref<1x4xf16>
          %269 = vector.broadcast %cst_5 : f16 to vector<1xf16>
          %270 = vector.broadcast %false : i1 to vector<1xi1>
          %271 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
          %272 = vector.gather %alloc_69[%266, %c6] [%271], %270, %269 : memref<1x4xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
          %from_elements = tensor.from_elements %cst_0 : tensor<1xf32>
          bufferization.dealloc_tensor %12 : tensor<1x4xi16>
          %273 = index.maxs %c15, %c6
          %274 = math.ipowi %17, %7 : tensor<6xi16>
          %extracted_70 = tensor.extract %13[%c0] : tensor<6xi1>
          %275 = arith.cmpi sge, %false_7, %extracted_70 : i1
          %276 = vector.splat %false : vector<6xi1>
          %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %270, %270, %extracted_70 : vector<1xi1>, vector<1xi1> into i1
          %278 = math.atan %cst_3 : f32
          %279 = vector.insert %c-12697_i16, %19 [0] : i16 into vector<1xi16>
          %280 = math.atan %cst_2 : f32
          %281 = index.ceildivs %c4, %c15
          %282 = arith.maxf %cst_3, %cst : f32
          %283 = arith.cmpi sle, %extracted_70, %false : i1
          %284 = arith.ceildivsi %c193400656_i32, %c193400656_i32 : i32
          %285 = math.tan %6 : tensor<6xf16>
          %286 = index.maxs %c3, %266
          %287 = vector.broadcast %cst_1 : f32 to vector<1xf32>
          %288 = vector.gather %0[%c0] [%271], %270, %287 : tensor<6xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %242 = math.copysign %6, %8 : tensor<6xf16>
      %243 = math.ctpop %2 : tensor<6xi64>
      %244 = math.copysign %cst_1, %cst_3 : f32
      %245 = arith.floordivsi %c-12697_i16, %c-24077_i16 : i16
      %246 = bufferization.clone %alloc_21 : memref<1xi64> to memref<1xi64>
      %247 = arith.remf %cst, %cst : f32
      %248 = memref.load %alloc_12[%c0] : memref<1xi32>
      %249 = vector.broadcast %c1686033321_i64 : i64 to vector<6xi64>
      %250 = vector.broadcast %false_7 : i1 to vector<6xi1>
      %251 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
      %252 = vector.gather %alloc_13[%c10, %c12] [%251], %250, %249 : memref<1x4xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %253 = vector.gather %alloc_18[%c14] [%251], %250, %251 : memref<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %extracted_66 = tensor.extract %3[%c3] : tensor<6xi16>
      %254 = vector.extract_strided_slice %252 {offsets = [2], sizes = [2], strides = [1]} : vector<6xi64> to vector<2xi64>
      %rank_67 = tensor.rank %15 : tensor<6xf16>
      %rank_68 = tensor.rank %4 : tensor<6xi32>
      scf.execute_region {
        vector.print %19 : vector<1xi16>
        %256 = arith.divf %cst_4, %cst_3 : f32
        %257 = math.fma %cst_3, %cst, %cst_1 : f32
        %258 = index.maxs %c12, %c7
        %259 = arith.ceildivsi %extracted_66, %extracted_66 : i16
        %260 = math.ctpop %c-24077_i16 : i16
        %true_69 = index.bool.constant true
        %261 = math.fpowi %cst_5, %c193400656_i32 : f16, i32
        %262 = index.maxs %c6, %c0
        %263 = math.sqrt %cst : f32
        %264 = math.sqrt %6 : tensor<6xf16>
        bufferization.dealloc_tensor %9 : tensor<6xi16>
        %cast_70 = tensor.cast %9 : tensor<6xi16> to tensor<?xi16>
        %265 = math.ipowi %14, %14 : tensor<6xi32>
        %266 = math.sqrt %cst : f32
        %267 = vector.insert %false, %250 [1] : i1 into vector<6xi1>
        scf.yield
      }
      %255 = index.maxs %c2, %c9
      scf.yield %c-24077_i16 : i16
    }
    %23 = index.maxu %c3, %c3
    %alloc_26 = memref.alloc() : memref<1xi16>
    %alloc_27 = memref.alloc() : memref<1x4xi16>
    %expanded = tensor.expand_shape %14 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
    %24 = arith.remf %cst, %cst_0 : f32
    %rank = tensor.rank %expanded : tensor<6x1xi32>
    %inserted = tensor.insert %cst_2 into %0[%c2] : tensor<6xf32>
    %25 = scf.while (%arg1 = %cst) : (f32) -> f32 {
      %241 = index.ceildivu %c0, %c3
      %242 = math.tan %arg1 : f32
      %243 = arith.muli %c-12697_i16, %c-24077_i16 : i16
      %244 = math.fpowi %6, %14 : tensor<6xf16>, tensor<6xi32>
      %245 = math.exp2 %8 : tensor<6xf16>
      memref.copy %alloc_25, %alloc_11 : memref<6xi16> to memref<6xi16>
      %246 = math.powf %cst, %cst_3 : f32
      %247 = affine.load %alloc_20[%c13, %c11] : memref<1x4xi32>
      scf.condition(%false) %cst_0 : f32
    } do {
    ^bb0(%arg1: f32):
      %241 = arith.ceildivsi %c-24077_i16, %c-24077_i16 : i16
      %242 = vector.broadcast %c-12697_i16 : i16 to vector<1x1xi16>
      %243 = vector.outerproduct %19, %19, %242 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
      %expanded_65 = tensor.expand_shape %2 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
      %244 = arith.divf %cst_5, %cst_5 : f16
      %245 = arith.muli %c-12697_i16, %c-24077_i16 : i16
      vector.print %19 : vector<1xi16>
      %246 = math.ceil %cst_4 : f32
      %from_elements = tensor.from_elements %c681900122_i64 : tensor<1xi64>
      %247 = index.divu %c0, %c14
      %248 = vector.broadcast %cst_0 : f32 to vector<6xf32>
      %alloc_66 = memref.alloc() : memref<6xi64>
      memref.tensor_store %2, %alloc_66 : memref<6xi64>
      vector.print %19 : vector<1xi16>
      %extracted_67 = tensor.extract %1[%c0] : tensor<1xi16>
      scf.execute_region {
        %alloc_69 = memref.alloc() : memref<1x4xi16>
        %250 = arith.minf %cst_5, %cst_5 : f16
        %251 = index.maxs %c2, %c8
        %252 = arith.remf %cst_3, %cst_1 : f32
        %cast_70 = tensor.cast %7 : tensor<6xi16> to tensor<?xi16>
        %253 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %254 = math.atan2 %cst_0, %cst_2 : f32
        %255 = arith.minf %cst_5, %cst_5 : f16
        %256 = vector.create_mask %247 : vector<1xi1>
        %alloca_71 = memref.alloca() : memref<6xi1>
        %257 = vector.create_mask %c10, %rank : vector<1x4xi1>
        %258 = index.ceildivs %c15, %c12
        %259 = vector.load %alloc_10[%c1] : memref<6xi1>, vector<6xi1>
        %260 = arith.remsi %c193400656_i32, %c193400656_i32 : i32
        %rank_72 = tensor.rank %6 : tensor<6xf16>
        affine.store %cst_5, %alloc_14[%c5] : memref<6xf16>
        scf.yield
      }
      %249 = vector.insert %cst, %248 [0] : f32 into vector<6xf32>
      %collapsed_68 = tensor.collapse_shape %expanded [[0, 1]] : tensor<6x1xi32> into tensor<6xi32>
      scf.yield %cst_4 : f32
    }
    %26 = index.castu %false_7 : i1 to index
    %27 = arith.maxui %false, %false : i1
    %28 = memref.realloc %alloc_8 : memref<1xi1> to memref<6xi1>
    %29 = vector.bitcast %19 : vector<1xi16> to vector<1xi16>
    %30 = math.ctlz %12 : tensor<1x4xi16>
    bufferization.dealloc_tensor %0 : tensor<6xf32>
    %expanded_28 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<1x4xf32> into tensor<1x4x1xf32>
    %31 = memref.load %alloc_23[%c5] : memref<6xi1>
    %32 = arith.maxsi %c-12697_i16, %c-12697_i16 : i16
    %33 = math.log2 %cst_0 : f32
    %34 = arith.remf %cst_2, %cst_0 : f32
    bufferization.dealloc_tensor %expanded_28 : tensor<1x4x1xf32>
    %35 = tensor.empty() : tensor<1xi1>
    %mapped = linalg.map ins(%alloc_9, %alloc_8 : memref<1xi1>, memref<1xi1>) outs(%35 : tensor<1xi1>)
      (%in: i1, %in_65: i1) {
        %241 = affine.if affine_set<(d0) : (d0 * 8 >= 0, d0 * 8 >= 0, (d0 mod 2) ceildiv 2 - 1 >= 0, (d0 mod 2) floordiv 8 + 8 == 0)>(%c1) -> memref<6xi1> {
          %269 = index.maxs %c4, %c1
          %270 = math.absf %8 : tensor<6xf16>
          %271 = vector.splat %in : vector<1x4xi1>
          %splat_70 = tensor.splat %c681900122_i64 : tensor<1x4xi64>
          %272 = vector.flat_transpose %29 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
          %alloca_71 = memref.alloca() : memref<1x4xi1>
          %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %29, %29, %c-24077_i16 : vector<1xi16>, vector<1xi16> into i16
          %274 = arith.divui %c681900122_i64, %c681900122_i64 : i64
          affine.yield %alloc_23 : memref<6xi1>
        } else {
          %inserted_70 = tensor.insert %c193400656_i32 into %14[%c2] : tensor<6xi32>
          affine.store %c681900122_i64, %alloc_13[%c6, %c11] : memref<1x4xi64>
          %269 = math.floor %cst_6 : f32
          %270 = math.log %8 : tensor<6xf16>
          %271 = math.log2 %8 : tensor<6xf16>
          %collapsed_71 = tensor.collapse_shape %expanded_28 [[0, 1], [2]] : tensor<1x4x1xf32> into tensor<4x1xf32>
          %272 = index.sub %c4, %c14
          %273 = math.ctpop %3 : tensor<6xi16>
          affine.yield %alloc_23 : memref<6xi1>
        }
        %242 = vector.insertelement %c-12697_i16, %19[%c1 : index] : vector<1xi16>
        %243 = tensor.empty(%c0) : tensor<?xi64>
        %244 = vector.create_mask %c0, %c0 : vector<1x4xi1>
        %from_elements = tensor.from_elements %cst_6, %cst, %cst_3, %cst_3, %cst_6, %cst_3 : tensor<6xf32>
        %245 = index.ceildivs %c4, %23
        %246 = tensor.empty() : tensor<6xi16>
        %mapped_66 = linalg.map ins(%10 : tensor<6xi16>) outs(%246 : tensor<6xi16>)
          (%in_70: i16) {
            %269 = vector.broadcast %in_65 : i1 to vector<4x4xi1>
            %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %244, %244, %269 : vector<1x4xi1>, vector<1x4xi1> into vector<4x4xi1>
            %271 = math.cos %8 : tensor<6xf16>
            vector.print %244 : vector<1x4xi1>
            bufferization.dealloc_tensor %13 : tensor<6xi1>
            %272 = index.maxs %c7, %c9
            %273 = math.exp %6 : tensor<6xf16>
            %274 = vector.broadcast %false_7 : i1 to vector<4xi1>
            %275 = vector.insert %274, %244 [0] : vector<4xi1> into vector<1x4xi1>
            %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %in_70 : vector<1xi16>, vector<1xi16> into i16
            %277 = math.atan2 %expanded_28, %expanded_28 : tensor<1x4x1xf32>
            %278 = index.maxu %c7, %rank
            %279 = vector.multi_reduction <minsi>, %244, %244 [] : vector<1x4xi1> to vector<1x4xi1>
            %280 = arith.addf %cst_1, %cst_3 : f32
            %281 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
            %282 = vector.splat %c-12697_i16 : vector<1xi16>
            %283 = affine.load %alloc_14[%c12] : memref<6xf16>
            %284 = vector.broadcast %cst_6 : f32 to vector<6xf32>
            %inserted_71 = tensor.insert %in_70 into %7[%c3] : tensor<6xi16>
            %285 = math.round %cst_4 : f32
            %286 = memref.load %alloc_14[%c0] : memref<6xf16>
            %alloc_72 = memref.alloc() : memref<1x4xi32>
            %287 = arith.divsi %c-12697_i16, %in_70 : i16
            %288 = math.log2 %0 : tensor<6xf32>
            %289 = math.tanh %0 : tensor<6xf32>
            %cast_73 = tensor.cast %16 : tensor<6xi16> to tensor<?xi16>
            %290 = arith.subi %c1972338048_i64, %c681900122_i64 : i64
            %291 = arith.subi %c681900122_i64, %c681900122_i64 : i64
            %292 = math.log %283 : f16
            %293 = math.fma %cst_2, %cst_1, %cst_4 : f32
            %294 = vector.broadcast %in_65 : i1 to vector<1xi1>
            %295 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
            %296 = vector.gather %7[%c14] [%295], %294, %29 : tensor<6xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
            %297 = arith.remf %cst_2, %cst_3 : f32
            %298 = math.log1p %cst_6 : f32
            %299 = arith.maxf %cst_0, %cst_4 : f32
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %247 = math.log1p %cst_0 : f32
        %248 = scf.while (%arg1 = %c681900122_i64) : (i64) -> i64 {
          %269 = arith.subi %c-12697_i16, %c-12697_i16 : i16
          %270 = math.exp2 %6 : tensor<6xf16>
          %271 = vector.insert %c-12697_i16, %29 [0] : i16 into vector<1xi16>
          %272 = arith.shrsi %in, %false : i1
          memref.assume_alignment %alloc_25, 8 : memref<6xi16>
          %273 = arith.floordivsi %c681900122_i64, %arg1 : i64
          %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %29, %29, %c-12697_i16 : vector<1xi16>, vector<1xi16> into i16
          %275 = vector.extract %29[0] : vector<1xi16>
          scf.condition(%false_7) %arg1 : i64
        } do {
        ^bb0(%arg1: i64):
          %269 = vector.broadcast %c-12697_i16 : i16 to vector<1x1xi16>
          %270 = vector.outerproduct %29, %29, %269 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
          %271 = index.add %rank, %c3
          %272 = bufferization.to_memref %7 : memref<6xi16>
          %273 = math.log %cst_2 : f32
          affine.store %c193400656_i32, %alloc_20[%c8, %c8] : memref<1x4xi32>
          %274 = math.fpowi %15, %4 : tensor<6xf16>, tensor<6xi32>
          %275 = vector.broadcast %c-24077_i16 : i16 to vector<1x1xi16>
          %276 = vector.outerproduct %29, %29, %275 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
          %277 = arith.ori %false_7, %false : i1
          %278 = math.cos %15 : tensor<6xf16>
          %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %19, %29, %c-24077_i16 : vector<1xi16>, vector<1xi16> into i16
          %280 = arith.divf %cst_5, %cst_5 : f16
          %281 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
          %282 = vector.broadcast %false_7 : i1 to vector<6xi1>
          %283 = vector.gather %4[%c3] [%281], %282, %281 : tensor<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
          %284 = math.fpowi %15, %4 : tensor<6xf16>, tensor<6xi32>
          %285 = vector.splat %cst_5 : vector<1x4xf16>
          %286 = arith.addi %false_7, %false_7 : i1
          %287 = arith.shrsi %in, %false : i1
          scf.yield %c681900122_i64 : i64
        }
        scf.execute_region {
          %alloca_70 = memref.alloca() : memref<1xi64>
          %269 = index.ceildivu %245, %23
          %270 = math.log2 %cst : f32
          %271 = math.fpowi %6, %4 : tensor<6xf16>, tensor<6xi32>
          %272 = math.sqrt %cst : f32
          %273 = arith.shli %c1686033321_i64, %c1972338048_i64 : i64
          %274 = index.maxu %c2, %c4
          %275 = math.tanh %6 : tensor<6xf16>
          %276 = tensor.empty() : tensor<1x6xi32>
          %277 = tensor.empty() : tensor<6x6xi32>
          %278 = linalg.matmul ins(%expanded, %276 : tensor<6x1xi32>, tensor<1x6xi32>) outs(%277 : tensor<6x6xi32>) -> tensor<6x6xi32>
          %279 = vector.broadcast %c-12697_i16 : i16 to vector<1x1xi16>
          %280 = vector.outerproduct %19, %29, %279 {kind = #vector.kind<maxui>} : vector<1xi16>, vector<1xi16>
          %281 = index.castu %269 : index to i32
          %282 = vector.insertelement %c-24077_i16, %19[%c1 : index] : vector<1xi16>
          %283 = index.add %c14, %c13
          %284 = arith.shrsi %in, %false_7 : i1
          %285 = arith.minsi %false, %false_7 : i1
          %286 = vector.broadcast %false : i1 to vector<i1>
          %287 = vector.transfer_write %286, %35[%c4] : vector<i1>, tensor<1xi1>
          scf.yield
        }
        %249 = arith.divf %cst_2, %cst_4 : f32
        %250 = memref.load %alloc_13[%c0, %c3] : memref<1x4xi64>
        %251 = math.ctlz %35 : tensor<1xi1>
        %252 = arith.cmpf true, %cst_0, %cst_2 : f32
        %253 = index.casts %c193400656_i32 : i32 to index
        %254 = arith.divsi %c681900122_i64, %c681900122_i64 : i64
        %255 = tensor.empty() : tensor<4x1x1xf32>
        %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%255 : tensor<4x1x1xf32>) outs(%expanded_28 : tensor<1x4x1xf32>) {
        ^bb0(%in_70: f32, %out: f32):
          %269 = arith.minf %cst, %out : f32
          %270 = vector.bitcast %244 : vector<1x4xi1> to vector<1x4xi1>
          %271 = vector.broadcast %cst_5 : f16 to vector<1x4xf16>
          %272 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
          %273 = vector.gather %6[%c1] [%272], %270, %271 : tensor<6xf16>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xf16> into vector<1x4xf16>
          %274 = math.ctpop %1 : tensor<1xi16>
          %275 = bufferization.clone %alloc_10 : memref<6xi1> to memref<6xi1>
          %276 = vector.broadcast %c8 : index to vector<10xindex>
          %277 = vector.broadcast %in : i1 to vector<10xi1>
          %278 = vector.broadcast %c193400656_i32 : i32 to vector<10xi32>
          vector.scatter %alloc_20[%c0, %c3] [%276], %277, %278 : memref<1x4xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
          %279 = arith.maxsi %in_65, %in_65 : i1
          %280 = arith.addi %in, %in : i1
          %alloc_71 = memref.alloc() : memref<6xi64>
          %281 = bufferization.to_memref %11 : memref<1x4xi16>
          %282 = affine.load %alloc_15[%c2, %c4] : memref<1x4xf32>
          %283 = arith.floordivsi %c193400656_i32, %c193400656_i32 : i32
          %284 = math.exp %15 : tensor<6xf16>
          %expanded_72 = tensor.expand_shape %6 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
          %285 = arith.cmpi sge, %false, %false_7 : i1
          %286 = vector.broadcast %cst_5 : f16 to vector<4xf16>
          %287 = vector.multi_reduction <minf>, %271, %286 [0] : vector<1x4xf16> to vector<4xf16>
          %288 = vector.create_mask %rank : vector<1xi1>
          %289 = index.floordivs %c0, %c15
          %290 = index.maxu %245, %c4
          %291 = arith.cmpi sle, %c1972338048_i64, %c1972338048_i64 : i64
          %292 = affine.max affine_map<(d0, d1) -> (-d0, -d0 + 8)>(%c0, %c3)
          %293 = memref.load %alloc_21[%c0] : memref<1xi64>
          %294 = vector.broadcast %c-12697_i16 : i16 to vector<10xi16>
          %295 = vector.broadcast %false : i1 to vector<10xi1>
          %296 = vector.maskedload %alloc_25[%c4], %295, %294 : memref<6xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
          %297 = index.maxu %26, %289
          %298 = memref.load %275[%c3] : memref<6xi1>
          %299 = arith.maxf %cst_3, %out : f32
          memref.copy %alloc_17, %281 : memref<1x4xi16> to memref<1x4xi16>
          %alloc_73 = memref.alloc() : memref<6xf16>
          memref.copy %alloc_14, %alloc_73 : memref<6xf16> to memref<6xf16>
          %300 = arith.minf %cst_4, %cst_4 : f32
          %301 = arith.maxf %cst_0, %out : f32
          %302 = vector.maskedload %alloc_9[%c0], %295, %295 : memref<1xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
          %303 = math.cos %expanded_28 : tensor<1x4x1xf32>
          linalg.yield %in_70 : f32
        } -> tensor<1x4x1xf32>
        %257 = tensor.empty() : tensor<1x4xi32>
        %258 = arith.addi %c1972338048_i64, %c1686033321_i64 : i64
        %extracted_67 = tensor.extract %1[%c0] : tensor<1xi16>
        %259 = bufferization.clone %alloc_20 : memref<1x4xi32> to memref<1x4xi32>
        %260 = math.ctlz %7 : tensor<6xi16>
        %inserted_68 = tensor.insert %c193400656_i32 into %14[%c2] : tensor<6xi32>
        %261 = math.ceil %expanded_28 : tensor<1x4x1xf32>
        %262 = index.ceildivs %c11, %c2
        %263 = arith.divf %cst_1, %cst_2 : f32
        %264 = vector.broadcast %cst_5 : f16 to vector<6xf16>
        %265 = vector.broadcast %cst_6 : f32 to vector<6xf32>
        %266 = math.ctlz %20 : tensor<i16>
        %267 = arith.minf %cst_4, %cst_2 : f32
        %268 = math.cos %8 : tensor<6xf16>
        affine.for %arg1 = 0 to 63 {
        }
        %false_69 = arith.constant false
        linalg.yield %false_69 : i1
      }
    %36 = math.expm1 %5 : tensor<1x4xf32>
    %37 = math.log %cst_4 : f32
    %38 = math.sqrt %8 : tensor<6xf16>
    %39 = math.atan2 %6, %15 : tensor<6xf16>
    %40 = arith.xori %c1686033321_i64, %c681900122_i64 : i64
    %41 = math.log2 %cst : f32
    %alloc_29 = memref.alloc() : memref<1xi64>
    %42 = bufferization.to_memref %0 : memref<6xf32>
    %43 = vector.bitcast %19 : vector<1xi16> to vector<1xi16>
    %44 = math.ctpop %1 : tensor<1xi16>
    bufferization.dealloc_tensor %4 : tensor<6xi32>
    %alloca = memref.alloca() : memref<6xi1>
    %cast = tensor.cast %0 : tensor<6xf32> to tensor<?xf32>
    %45 = vector.splat %false_7 : vector<1x4xi1>
    %46 = vector.broadcast %false_7 : i1 to vector<4xi1>
    %47 = vector.maskedload %alloc_16[%c0], %46, %46 : memref<1xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %extracted = tensor.extract %3[%c2] : tensor<6xi16>
    %48 = arith.addi %false, %false_7 : i1
    %extracted_30 = tensor.extract %20[] : tensor<i16>
    vector.print %46 : vector<4xi1>
    %49 = arith.xori %c-24077_i16, %c-24077_i16 : i16
    %50 = vector.broadcast %false : i1 to vector<4x4xi1>
    %51 = vector.outerproduct %46, %46, %50 {kind = #vector.kind<minui>} : vector<4xi1>, vector<4xi1>
    %true = index.bool.constant true
    %52 = vector.flat_transpose %29 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
    %53 = arith.ceildivsi %c-12697_i16, %c-12697_i16 : i16
    scf.index_switch %c10 
    case 1 {
      memref.assume_alignment %alloc_14, 2 : memref<6xf16>
      %241 = math.exp %cst_0 : f32
      %242 = vector.broadcast %c681900122_i64 : i64 to vector<6xi64>
      %243 = vector.broadcast %true : i1 to vector<6xi1>
      %244 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
      %245 = vector.gather %alloc_21[%c2] [%244], %243, %242 : memref<1xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %246 = bufferization.clone %alloc_22 : memref<6xi16> to memref<6xi16>
      %247 = math.powf %0, %0 : tensor<6xf32>
      %248 = index.casts %c-12697_i16 : i16 to index
      %249 = math.sqrt %cst : f32
      %250 = math.sqrt %cst_0 : f32
      %splat_65 = tensor.splat %true : tensor<6xi1>
      %251 = arith.divf %cst_2, %cst : f32
      %252 = index.ceildivu %c4, %c5
      %253 = arith.shli %false_7, %false : i1
      %254 = arith.xori %c193400656_i32, %c193400656_i32 : i32
      %255 = math.floor %cst_3 : f32
      %256 = scf.while (%arg1 = %c1686033321_i64) : (i64) -> i64 {
        %alloc_66 = memref.alloc() : memref<6xi64>
        %257 = vector.matrix_multiply %46, %46 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %258 = math.sqrt %cst_6 : f32
        %splat_67 = tensor.splat %cst_6 : tensor<6xf32>
        %259 = arith.minsi %true, %false : i1
        %260 = math.log1p %cst_0 : f32
        %261 = arith.divsi %c1686033321_i64, %c1686033321_i64 : i64
        %262 = math.log10 %cst_4 : f32
        scf.condition(%false) %arg1 : i64
      } do {
      ^bb0(%arg1: i64):
        memref.tensor_store %7, %246 : memref<6xi16>
        %257 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %258 = index.maxu %c14, %c4
        %259 = vector.extract %243[1] : vector<6xi1>
        %260 = arith.maxf %cst_5, %cst_5 : f16
        %splat_66 = tensor.splat %c1686033321_i64 : tensor<6xi64>
        %261 = vector.broadcast %c5 : index to vector<4xindex>
        %262 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        vector.scatter %alloc[%c5] [%261], %46, %262 : memref<6xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %263 = math.fma %5, %5, %5 : tensor<1x4xf32>
        %extracted_67 = tensor.extract %16[%c5] : tensor<6xi16>
        %264 = index.add %c0, %c2
        %265 = math.exp2 %cst_5 : f16
        vector.print %52 : vector<1xi16>
        %266 = index.castu %c0 : index to i32
        %267 = arith.divsi %true, %true : i1
        %268 = math.expm1 %6 : tensor<6xf16>
        %alloca_68 = memref.alloca() : memref<6xf16>
        scf.yield %arg1 : i64
      }
      affine.for %arg1 = 0 to 79 {
      }
      scf.yield
    }
    case 2 {
      %241 = memref.load %alloc_21[%c0] : memref<1xi64>
      %expanded_65 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<1x4xi16> into tensor<1x4x1xi16>
      %242 = arith.floordivsi %false_7, %false : i1
      %243 = index.ceildivs %c6, %c13
      %244 = vector.splat %c-24077_i16 : vector<1x4xi16>
      %245 = arith.remf %cst_5, %cst_5 : f16
      %246 = arith.addi %extracted_30, %c-24077_i16 : i16
      %247 = arith.cmpi sle, %c681900122_i64, %c1972338048_i64 : i64
      %248 = index.maxu %c11, %243
      %alloc_66 = memref.alloc() : memref<1x4xf32>
      memref.copy %alloc_15, %alloc_66 : memref<1x4xf32> to memref<1x4xf32>
      %249 = vector.matrix_multiply %19, %29 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %250 = vector.insertelement %extracted_30, %52[%rank : index] : vector<1xi16>
      %251 = math.ceil %cst_3 : f32
      %alloc_67 = memref.alloc() : memref<i1>
      memref.copy %alloc_24, %alloc_67 : memref<i1> to memref<i1>
      %252 = arith.cmpf une, %cst_4, %cst_2 : f32
      %253 = math.exp %cst_6 : f32
      scf.yield
    }
    case 3 {
      %241 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
      %242 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %dest_65, %accumulated_value_66 = vector.scan <maxf>, %241, %242 {inclusive = false, reduction_dim = 1 : i64} : vector<4x4xf32>, vector<4xf32>
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_67 = arith.constant 0 : i16
      %243 = vector.transfer_read %7[%c4], %c0_i16_67 : tensor<6xi16>, vector<i16>
      %244 = arith.divui %extracted_30, %extracted : i16
      %245 = vector.extract %46[3] : vector<4xi1>
      %expanded_68 = tensor.expand_shape %8 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
      scf.if %true {
        %254 = math.log2 %cst_4 : f32
        %255 = vector.create_mask %26, %c12 : vector<1x4xi1>
        %256 = vector.broadcast %true : i1 to vector<1x4xi1>
        %257 = arith.maxf %cst_5, %cst_5 : f16
        %258 = arith.minf %cst_2, %cst_6 : f32
        %259 = vector.broadcast %c13 : index to vector<10xindex>
        %260 = vector.broadcast %true : i1 to vector<10xi1>
        %261 = vector.broadcast %c1686033321_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_21[%c0] [%259], %260, %261 : memref<1xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %262 = arith.remf %cst_3, %cst_6 : f32
        affine.store %c1686033321_i64, %alloc_13[%c13, %c5] : memref<1x4xi64>
      } else {
        %254 = bufferization.to_memref %35 : memref<1xi1>
        %255 = arith.divui %c0_i16, %c-12697_i16 : i16
        %alloca_71 = memref.alloca() : memref<6xi16>
        %alloc_72 = memref.alloc() : memref<1xi64>
        %256 = affine.load %alloc_11[%c3] : memref<6xi16>
        %257 = vector.bitcast %47 : vector<4xi1> to vector<4xi1>
        %258 = vector.insert %256, %19 [0] : i16 into vector<1xi16>
        %259 = arith.mulf %cst_3, %cst_6 : f32
      }
      vector.print %52 : vector<1xi16>
      %246 = index.floordivs %c2, %26
      %false_69 = index.bool.constant false
      %247 = vector.multi_reduction <and>, %52, %29 [] : vector<1xi16> to vector<1xi16>
      %248 = arith.xori %c193400656_i32, %c193400656_i32 : i32
      %249 = arith.subi %c-24077_i16, %c-24077_i16 : i16
      %rank_70 = tensor.rank %8 : tensor<6xf16>
      %250 = vector.broadcast %false_69 : i1 to vector<4x4xi1>
      %251 = vector.outerproduct %47, %47, %250 {kind = #vector.kind<and>} : vector<4xi1>, vector<4xi1>
      %252 = bufferization.clone %alloc_8 : memref<1xi1> to memref<1xi1>
      %253 = affine.max affine_map<(d0, d1, d2, d3) -> (d1)>(%c14, %c12, %rank_70, %c2)
      scf.yield
    }
    case 4 {
      %241 = arith.addi %c193400656_i32, %c193400656_i32 : i32
      %242 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %47, %46, %true : vector<4xi1>, vector<4xi1> into i1
      %243 = arith.minf %cst_5, %cst_5 : f16
      %true_65 = index.bool.constant true
      %244 = arith.addf %cst_5, %cst_5 : f16
      %245 = math.floor %cst : f32
      %246 = math.round %cst_0 : f32
      %247 = arith.maxsi %true, %false_7 : i1
      %248 = affine.max affine_map<(d0) -> (20, d0, d0 floordiv 8 - 128)>(%c8)
      %249 = math.ctpop %21 : tensor<i16>
      %splat_66 = tensor.splat %cst : tensor<6xf32>
      %250 = arith.remsi %c1686033321_i64, %c1686033321_i64 : i64
      %251 = memref.load %alloc_23[%c0] : memref<6xi1>
      %252 = arith.minf %cst_5, %cst_5 : f16
      %253 = math.tanh %cst_4 : f32
      %254 = index.maxu %c9, %c8
      scf.yield
    }
    default {
      %241 = vector.broadcast %false_7 : i1 to vector<6xi1>
      %242 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
      %243 = vector.gather %alloc_8[%23] [%242], %241, %241 : memref<1xi1>, vector<6xi32>, vector<6xi1>, vector<6xi1> into vector<6xi1>
      %244 = math.copysign %cst_4, %cst_0 : f32
      %245 = math.ceil %cst_4 : f32
      bufferization.dealloc_tensor %1 : tensor<1xi16>
      %alloca_65 = memref.alloca() : memref<6xi1>
      %246 = arith.ceildivsi %c-24077_i16, %c-12697_i16 : i16
      %rank_66 = tensor.rank %8 : tensor<6xf16>
      %247 = arith.addf %cst_1, %cst : f32
      %248 = scf.index_switch %23 -> vector<6xi1> 
      case 1 {
        %256 = bufferization.clone %alloc_20 : memref<1x4xi32> to memref<1x4xi32>
        %257 = math.exp %0 : tensor<6xf32>
        %258 = vector.transpose %242, [0] : vector<6xi32> to vector<6xi32>
        %259 = vector.splat %c1 : vector<1x4xindex>
        %260 = arith.divf %cst_0, %cst_6 : f32
        %inserted_67 = tensor.insert %cst_2 into %5[%c0, %c2] : tensor<1x4xf32>
        %261 = arith.shrsi %c-12697_i16, %extracted_30 : i16
        %cast_68 = tensor.cast %21 : tensor<i16> to tensor<i16>
        %262 = affine.load %alloc_25[%c10] : memref<6xi16>
        %263 = math.fma %cst_6, %cst_2, %cst_1 : f32
        %264 = math.round %cst_6 : f32
        %265 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %266 = arith.muli %c-12697_i16, %extracted : i16
        %267 = vector.broadcast %cst_5 : f16 to vector<6x4xf16>
        %268 = vector.broadcast %cst_5 : f16 to vector<6xf16>
        %dest_69, %accumulated_value_70 = vector.scan <minf>, %267, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<6x4xf16>, vector<6xf16>
        %269 = vector.insert %c-24077_i16, %29 [0] : i16 into vector<1xi16>
        %270 = vector.create_mask %c11 : vector<1xi1>
        scf.yield %243 : vector<6xi1>
      }
      case 2 {
        %rank_67 = tensor.rank %12 : tensor<1x4xi16>
        %256 = vector.splat %false_7 : vector<6xi1>
        %257 = memref.load %alloc_11[%c1] : memref<6xi16>
        %258 = math.absi %20 : tensor<i16>
        %259 = math.sqrt %0 : tensor<6xf32>
        %260 = affine.load %alloc_24[] : memref<i1>
        %261 = vector.insertelement %c-24077_i16, %19[%c1 : index] : vector<1xi16>
        %262 = math.exp %cst_2 : f32
        %263 = arith.ceildivsi %c681900122_i64, %c1686033321_i64 : i64
        %264 = vector.broadcast %cst : f32 to vector<1xf32>
        %265 = vector.broadcast %false : i1 to vector<1xi1>
        %266 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
        %267 = vector.gather %5[%rank, %c0] [%266], %265, %264 : tensor<1x4xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %268 = arith.subi %c193400656_i32, %c193400656_i32 : i32
        vector.print %46 : vector<4xi1>
        %269 = arith.muli %extracted, %c-24077_i16 : i16
        %270 = arith.addf %cst_6, %cst_1 : f32
        %271 = arith.subi %false_7, %true : i1
        %272 = vector.broadcast %false_7 : i1 to vector<6x6xi1>
        %273 = vector.outerproduct %243, %241, %272 {kind = #vector.kind<minsi>} : vector<6xi1>, vector<6xi1>
        scf.yield %243 : vector<6xi1>
      }
      default {
        %256 = arith.addf %cst, %cst : f32
        %257 = math.ctlz %11 : tensor<1x4xi16>
        %258 = affine.load %alloc_12[%c0] : memref<1xi32>
        %splat_67 = tensor.splat %cst_0 : tensor<6xf32>
        %alloc_68 = memref.alloc() : memref<6xf16>
        memref.copy %alloc_14, %alloc_68 : memref<6xf16> to memref<6xf16>
        %259 = vector.reduction <minsi>, %243 : vector<6xi1> into i1
        %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %47, %47, %false : vector<4xi1>, vector<4xi1> into i1
        %261 = math.ctpop %13 : tensor<6xi1>
        %262 = arith.muli %258, %c193400656_i32 : i32
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %43, %43, %c-12697_i16 : vector<1xi16>, vector<1xi16> into i16
        %264 = vector.extract %52[0] : vector<1xi16>
        %265 = math.tan %0 : tensor<6xf32>
        %266 = tensor.empty() : tensor<4x4xi16>
        %267 = tensor.empty() : tensor<1x4xi16>
        %268 = linalg.matmul ins(%11, %266 : tensor<1x4xi16>, tensor<4x4xi16>) outs(%267 : tensor<1x4xi16>) -> tensor<1x4xi16>
        bufferization.dealloc_tensor %35 : tensor<1xi1>
        %269 = arith.mulf %cst_6, %cst_4 : f32
        %270 = arith.shli %c1972338048_i64, %c1972338048_i64 : i64
        scf.yield %241 : vector<6xi1>
      }
      %249 = math.copysign %cst_2, %cst_4 : f32
      %250 = bufferization.clone %alloc_18 : memref<6xi32> to memref<6xi32>
      %251 = math.absf %15 : tensor<6xf16>
      %252 = arith.maxf %cst_4, %cst_2 : f32
      %253 = arith.minf %cst_1, %cst_6 : f32
      %254 = bufferization.clone %alloc_18 : memref<6xi32> to memref<6xi32>
      %255 = math.sqrt %5 : tensor<1x4xf32>
    }
    %54 = tensor.empty() : tensor<1x4xi32>
    %55 = math.fpowi %5, %54 : tensor<1x4xf32>, tensor<1x4xi32>
    %56 = scf.while (%arg1 = %false_7) : (i1) -> i1 {
      %alloc_65 = memref.alloc() : memref<1xi16>
      %241 = index.ceildivu %c4, %26
      %242 = math.floor %cst_5 : f16
      %243 = arith.maxsi %c-12697_i16, %extracted : i16
      %244 = arith.remf %cst_0, %cst_1 : f32
      %245 = arith.subi %c1972338048_i64, %c1972338048_i64 : i64
      %246 = bufferization.clone %alloc_17 : memref<1x4xi16> to memref<1x4xi16>
      %247 = arith.addf %cst_3, %cst_3 : f32
      scf.condition(%false) %false_7 : i1
    } do {
    ^bb0(%arg1: i1):
      affine.store %extracted, %alloc_11[%c3] : memref<6xi16>
      %241 = affine.if affine_set<(d0, d1) : (d0 floordiv 32 + 2 >= 0, (d0 mod 8) * 8 >= 0, d0 + 64 == 0, d1 >= 0)>(%c1, %c7) -> f16 {
        %257 = arith.ceildivsi %false, %false_7 : i1
        %258 = math.floor %cst_5 : f16
        %259 = index.add %23, %rank
        %260 = memref.load %42[%c3] : memref<6xf32>
        %261 = vector.broadcast %cst_3 : f32 to vector<1x4xf32>
        %262 = math.exp %15 : tensor<6xf16>
        %263 = math.ctlz %expanded : tensor<6x1xi32>
        %264 = vector.insertelement %c-12697_i16, %29[%c11 : index] : vector<1xi16>
        affine.yield %cst_5 : f16
      } else {
        %257 = arith.cmpf olt, %cst, %cst_2 : f32
        %258 = tensor.empty() : tensor<4x1xi16>
        %259 = tensor.empty() : tensor<1x1xi16>
        %260 = linalg.matmul ins(%12, %258 : tensor<1x4xi16>, tensor<4x1xi16>) outs(%259 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %261 = math.copysign %5, %5 : tensor<1x4xf32>
        %262 = memref.load %alloc_19[%c0] : memref<1xf32>
        %extracted_65 = tensor.extract %0[%c3] : tensor<6xf32>
        %263 = affine.load %alloc[%c5] : memref<6xf32>
        %collapsed_66 = tensor.collapse_shape %54 [[0, 1]] : tensor<1x4xi32> into tensor<4xi32>
        %264 = math.log10 %0 : tensor<6xf32>
        affine.yield %cst_5 : f16
      }
      %242 = math.tan %8 : tensor<6xf16>
      %243 = vector.insert %extracted_30, %19 [0] : i16 into vector<1xi16>
      %244 = index.floordivs %c8, %c1
      memref.assume_alignment %alloc_15, 4 : memref<1x4xf32>
      %245 = arith.subi %c-12697_i16, %c-12697_i16 : i16
      %246 = bufferization.clone %alloc_14 : memref<6xf16> to memref<6xf16>
      %247 = arith.subi %c681900122_i64, %c681900122_i64 : i64
      %248 = math.log1p %0 : tensor<6xf32>
      %249 = math.exp %6 : tensor<6xf16>
      %250 = math.ipowi %7, %10 : tensor<6xi16>
      %251 = arith.addf %cst_4, %cst_0 : f32
      %252 = math.log10 %15 : tensor<6xf16>
      %253 = tensor.empty() : tensor<4x10xf32>
      %254 = tensor.empty() : tensor<1x10xf32>
      %255 = linalg.matmul ins(%5, %253 : tensor<1x4xf32>, tensor<4x10xf32>) outs(%254 : tensor<1x10xf32>) -> tensor<1x10xf32>
      %256 = index.add %c9, %c14
      scf.yield %arg1 : i1
    }
    %alloca_31 = memref.alloca() : memref<1xf32>
    %57 = vector.broadcast %true : i1 to vector<4x4xi1>
    %58 = vector.outerproduct %47, %46, %57 {kind = #vector.kind<and>} : vector<4xi1>, vector<4xi1>
    %59 = math.ipowi %12, %12 : tensor<1x4xi16>
    %60 = vector.bitcast %47 : vector<4xi1> to vector<4xi1>
    %61 = arith.shrsi %c-24077_i16, %c-12697_i16 : i16
    %62 = arith.shrui %c-24077_i16, %extracted : i16
    %extracted_32 = tensor.extract %6[%c3] : tensor<6xf16>
    vector.print %46 : vector<4xi1>
    %63 = math.ctlz %3 : tensor<6xi16>
    %64 = vector.splat %cst : vector<1xf32>
    %65 = index.floordivs %c11, %c12
    %66 = arith.cmpi sgt, %c-12697_i16, %extracted_30 : i16
    %alloc_33 = memref.alloc() : memref<1xi32>
    memref.copy %alloc_12, %alloc_33 : memref<1xi32> to memref<1xi32>
    affine.store %extracted_32, %alloc_14[%c8] : memref<6xf16>
    %alloc_34 = memref.alloc() : memref<1xf32>
    memref.copy %alloc_19, %alloc_34 : memref<1xf32> to memref<1xf32>
    %67 = vector.load %alloc_21[%c0] : memref<1xi64>, vector<6xi64>
    %68 = vector.extract_strided_slice %47 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
    %69 = arith.ceildivsi %extracted, %extracted : i16
    %70 = vector.splat %65 : vector<6xindex>
    %71 = math.fpowi %6, %4 : tensor<6xf16>, tensor<6xi32>
    %72 = arith.minui %false_7, %false_7 : i1
    %73 = arith.mulf %cst, %cst : f32
    %74 = arith.remf %cst_2, %cst_2 : f32
    %75 = vector.insertelement %extracted_30, %29[%c13 : index] : vector<1xi16>
    scf.index_switch %c4 
    case 1 {
      %241 = vector.broadcast %false : i1 to vector<4x1xi1>
      %242 = vector.broadcast %false_7 : i1 to vector<1xi1>
      %dest_65, %accumulated_value_66 = vector.scan <add>, %241, %242 {inclusive = true, reduction_dim = 0 : i64} : vector<4x1xi1>, vector<1xi1>
      %243 = affine.min affine_map<(d0, d1) -> ((-(d1 ceildiv 64)) floordiv 4)>(%c0, %c4)
      %244 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %67, %67, %c1686033321_i64 : vector<6xi64>, vector<6xi64> into i64
      %alloc_67 = memref.alloc() : memref<4x1xi32>
      %245 = tensor.empty() : tensor<1x1xi32>
      %246 = linalg.matmul ins(%54, %alloc_67 : tensor<1x4xi32>, memref<4x1xi32>) outs(%245 : tensor<1x1xi32>) -> tensor<1x1xi32>
      %247 = math.cos %5 : tensor<1x4xf32>
      %248 = vector.extract %19[0] : vector<1xi16>
      %249 = bufferization.clone %alloc_25 : memref<6xi16> to memref<6xi16>
      %250 = math.ceil %0 : tensor<6xf32>
      %251 = vector.insertelement %c-24077_i16, %29[%c3 : index] : vector<1xi16>
      %252 = arith.shrui %c1686033321_i64, %c1972338048_i64 : i64
      %253 = vector.broadcast %c-12697_i16 : i16 to vector<6x10xi16>
      %254 = vector.broadcast %extracted : i16 to vector<10xi16>
      %dest_68, %accumulated_value_69 = vector.scan <maxsi>, %253, %254 {inclusive = false, reduction_dim = 0 : i64} : vector<6x10xi16>, vector<10xi16>
      %255 = arith.divf %cst_4, %cst_0 : f32
      %256 = arith.xori %false, %false : i1
      %rank_70 = tensor.rank %3 : tensor<6xi16>
      %257 = math.log2 %15 : tensor<6xf16>
      %258 = vector.bitcast %52 : vector<1xi16> to vector<1xf16>
      scf.yield
    }
    case 2 {
      %241 = index.divu %c15, %26
      %242 = index.casts %extracted_30 : i16 to index
      %243 = math.log2 %cst_4 : f32
      %244 = arith.ceildivsi %c681900122_i64, %c681900122_i64 : i64
      %245 = math.fpowi %cst_5, %c193400656_i32 : f16, i32
      %246 = math.fma %6, %15, %6 : tensor<6xf16>
      %247 = index.maxu %23, %242
      %splat_65 = tensor.splat %false : tensor<6xi1>
      %248 = scf.if %true -> (i16) {
        %255 = index.divu %c6, %241
        %256 = math.cos %cst_2 : f32
        bufferization.dealloc_tensor %0 : tensor<6xf32>
        %alloca_67 = memref.alloca() : memref<1x4xi32>
        %257 = vector.insert %true, %47 [0] : i1 into vector<4xi1>
        %258 = math.tanh %15 : tensor<6xf16>
        %259 = math.log %expanded_28 : tensor<1x4x1xf32>
        %260 = vector.reduction <maxsi>, %60 : vector<4xi1> into i1
        scf.yield %c-12697_i16 : i16
      } else {
        %255 = math.ipowi %1, %1 : tensor<1xi16>
        %256 = vector.broadcast %c1972338048_i64 : i64 to vector<10x4x4xi64>
        %257 = vector.broadcast %c1686033321_i64 : i64 to vector<10x4xi64>
        %dest_67, %accumulated_value_68 = vector.scan <or>, %256, %257 {inclusive = false, reduction_dim = 2 : i64} : vector<10x4x4xi64>, vector<10x4xi64>
        %258 = arith.addi %false, %true : i1
        %259 = index.castu %extracted : i16 to index
        %extracted_69 = tensor.extract %13[%c0] : tensor<6xi1>
        %260 = math.copysign %15, %8 : tensor<6xf16>
        %261 = math.copysign %cst_6, %cst : f32
        %262 = vector.matrix_multiply %43, %43 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        scf.yield %c-24077_i16 : i16
      }
      %249 = math.ceil %15 : tensor<6xf16>
      %250 = math.rsqrt %5 : tensor<1x4xf32>
      %251 = arith.minf %cst_3, %cst_6 : f32
      %252 = affine.if affine_set<(d0, d1) : ((d1 floordiv 8) floordiv 8 >= 0, (d1 floordiv 8) floordiv 8 >= 0)>(%c10, %c10) -> memref<6xi64> {
        %alloc_67 = memref.alloc() : memref<6xi32>
        %255 = arith.cmpi sgt, %false, %true : i1
        memref.store %cst_1, %42[%c0] : memref<6xf32>
        %cst_68 = arith.constant 1.000000e+00 : f32
        %cst_69 = arith.constant 0.000000e+00 : f32
        %256 = vector.transfer_read %alloc_15[%c1, %23], %cst_69 : memref<1x4xf32>, vector<f32>
        %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, -4)>(%c6, %c5, %23, %c15)
        %258 = vector.reduction <or>, %68 : vector<3xi1> into i1
        %259 = vector.extract %67[1] : vector<6xi64>
        %260 = arith.shrui %c-24077_i16, %extracted : i16
        %alloc_70 = memref.alloc() : memref<6xi64>
        affine.yield %alloc_70 : memref<6xi64>
      } else {
        %255 = affine.load %alloc_18[%c2] : memref<6xi32>
        %256 = math.copysign %8, %15 : tensor<6xf16>
        %257 = vector.broadcast %c-12697_i16 : i16 to vector<1x1xi16>
        %258 = vector.outerproduct %19, %29, %257 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
        %259 = vector.matrix_multiply %43, %43 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %260 = bufferization.to_tensor %alloc_24 : memref<i1>
        memref.copy %alloc_8, %alloc_9 : memref<1xi1> to memref<1xi1>
        %261 = index.divu %c15, %c5
        %262 = index.maxs %65, %c4
        %alloc_67 = memref.alloc() : memref<6xi64>
        affine.yield %alloc_67 : memref<6xi64>
      }
      memref.tensor_store %4, %alloc_18 : memref<6xi32>
      %253 = vector.broadcast %false_7 : i1 to vector<4x4xi1>
      %254 = vector.outerproduct %46, %47, %253 {kind = #vector.kind<mul>} : vector<4xi1>, vector<4xi1>
      %splat_66 = tensor.splat %c681900122_i64 : tensor<6xi64>
      scf.yield
    }
    case 3 {
      %241 = arith.cmpi ne, %extracted, %extracted_30 : i16
      %242 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      %243 = index.sub %65, %c9
      %244 = arith.shli %c681900122_i64, %c1972338048_i64 : i64
      %245 = affine.for %arg1 = 0 to 33 iter_args(%arg2 = %3) -> (tensor<6xi16>) {
        affine.yield %3 : tensor<6xi16>
      }
      %246 = arith.divsi %c1686033321_i64, %c1972338048_i64 : i64
      %247 = bufferization.to_memref %cast : memref<?xf32>
      %248 = index.floordivs %rank, %c5
      bufferization.dealloc_tensor %expanded : tensor<6x1xi32>
      %249 = math.exp %cst_5 : f16
      %250 = arith.subi %c-24077_i16, %c-12697_i16 : i16
      %251 = bufferization.to_tensor %alloc_14 : memref<6xf16>
      %cast_65 = tensor.cast %5 : tensor<1x4xf32> to tensor<?x?xf32>
      %252 = arith.cmpi slt, %false, %true : i1
      %inserted_66 = tensor.insert %extracted_30 into %11[%c0, %c0] : tensor<1x4xi16>
      %253 = math.fpowi %cst_3, %c193400656_i32 : f32, i32
      scf.yield
    }
    case 4 {
      %241 = bufferization.clone %alloc_13 : memref<1x4xi64> to memref<1x4xi64>
      %242 = arith.floordivsi %c-24077_i16, %c-24077_i16 : i16
      %243 = arith.divui %false, %false_7 : i1
      %244 = index.castu %rank : index to i32
      %245 = bufferization.to_tensor %alloc_20 : memref<1x4xi32>
      %rank_65 = tensor.rank %245 : tensor<1x4xi32>
      %246 = arith.maxsi %c681900122_i64, %c1972338048_i64 : i64
      %247 = math.exp2 %extracted_32 : f16
      %248 = bufferization.clone %alloc_20 : memref<1x4xi32> to memref<1x4xi32>
      %249 = index.divu %c12, %c11
      %250 = math.ctlz %c-12697_i16 : i16
      %251 = bufferization.clone %248 : memref<1x4xi32> to memref<1x4xi32>
      %252 = math.powf %expanded_28, %expanded_28 : tensor<1x4x1xf32>
      %253 = vector.extract %68[0] : vector<3xi1>
      %254 = arith.divsi %false, %false : i1
      %inserted_66 = tensor.insert %c193400656_i32 into %4[%c1] : tensor<6xi32>
      scf.yield
    }
    default {
      %rank_65 = tensor.rank %4 : tensor<6xi32>
      %241 = vector.flat_transpose %67 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
      %242 = index.maxs %c3, %c10
      %243 = vector.splat %c6 : vector<6xindex>
      %244 = vector.broadcast %c12 : index to vector<1xindex>
      %245 = vector.broadcast %false_7 : i1 to vector<1xi1>
      %246 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      vector.scatter %alloc[%c4] [%244], %245, %246 : memref<6xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %splat_66 = tensor.splat %cst_2 : tensor<1xf32>
      %247 = arith.shrsi %extracted_30, %c-12697_i16 : i16
      %248 = math.cttz %9 : tensor<6xi16>
      %249 = math.ctlz %extracted_30 : i16
      %c0_i16 = arith.constant 0 : i16
      %250 = vector.transfer_read %9[%c0], %c0_i16 : tensor<6xi16>, vector<i16>
      %251 = math.log1p %5 : tensor<1x4xf32>
      %252 = memref.load %alloc_15[%c0, %c0] : memref<1x4xf32>
      %rank_67 = tensor.rank %16 : tensor<6xi16>
      bufferization.dealloc_tensor %15 : tensor<6xf16>
      %253 = index.divu %c2, %rank_67
      %alloc_68 = memref.alloc() : memref<1xi64>
      memref.copy %alloc_21, %alloc_68 : memref<1xi64> to memref<1xi64>
    }
    %76 = memref.load %alloc[%c3] : memref<6xf32>
    %77 = memref.load %alloc_13[%c0, %c3] : memref<1x4xi64>
    %78 = arith.shli %c681900122_i64, %c1686033321_i64 : i64
    %79 = arith.shrsi %c1686033321_i64, %c1686033321_i64 : i64
    %80 = vector.splat %c1686033321_i64 : vector<1x4xi64>
    %81 = arith.shli %c-24077_i16, %extracted : i16
    %82 = vector.extract %52[0] : vector<1xi16>
    %83 = bufferization.clone %alloc_14 : memref<6xf16> to memref<6xf16>
    %84 = math.fpowi %cst, %c193400656_i32 : f32, i32
    %85 = arith.andi %extracted, %extracted : i16
    %rank_35 = tensor.rank %12 : tensor<1x4xi16>
    %86 = vector.create_mask %c2, %c2 : vector<1x4xi1>
    %87 = math.ipowi %7, %10 : tensor<6xi16>
    %88 = math.cos %8 : tensor<6xf16>
    affine.store %extracted_30, %alloc_17[%c13, %c8] : memref<1x4xi16>
    vector.print %86 : vector<1x4xi1>
    %89 = vector.broadcast %extracted_30 : i16 to vector<1x1xi16>
    %90 = vector.outerproduct %29, %52, %89 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
    %91 = arith.muli %c1686033321_i64, %c1972338048_i64 : i64
    %92 = vector.broadcast %false_7 : i1 to vector<1xi1>
    %93 = vector.broadcast %c193400656_i32 : i32 to vector<1xi32>
    %94 = vector.gather %alloc_23[%c12] [%93], %92, %92 : memref<6xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %cast_36 = tensor.cast %0 : tensor<6xf32> to tensor<?xf32>
    %95 = vector.broadcast %c1686033321_i64 : i64 to vector<1x4xi64>
    %dest, %accumulated_value = vector.scan <xor>, %86, %92 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
    %96 = vector.create_mask %c2, %26 : vector<1x4xi1>
    %97 = math.tan %15 : tensor<6xf16>
    %98 = arith.divsi %c1686033321_i64, %c1686033321_i64 : i64
    %99 = math.sqrt %5 : tensor<1x4xf32>
    %100 = math.atan2 %8, %15 : tensor<6xf16>
    %101 = memref.load %alloc_11[%c5] : memref<6xi16>
    %102 = math.log1p %8 : tensor<6xf16>
    %103 = affine.load %alloc_13[%c15, %c12] : memref<1x4xi64>
    %extracted_37 = tensor.extract %6[%c5] : tensor<6xf16>
    %104 = vector.transpose %46, [0] : vector<4xi1> to vector<4xi1>
    %105 = math.log2 %5 : tensor<1x4xf32>
    %splat = tensor.splat %cst_1 : tensor<6xf32>
    %106 = arith.maxsi %extracted, %c-12697_i16 : i16
    %107 = vector.broadcast %cst : f32 to vector<6xf32>
    %108 = vector.broadcast %true : i1 to vector<6xi1>
    %109 = vector.broadcast %c193400656_i32 : i32 to vector<6xi32>
    %110 = vector.gather %alloc_19[%c7] [%109], %108, %107 : memref<1xf32>, vector<6xi32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
    %111 = arith.shli %extracted_30, %c-24077_i16 : i16
    %112 = vector.bitcast %29 : vector<1xi16> to vector<1xf16>
    %113 = arith.ceildivsi %c-12697_i16, %extracted_30 : i16
    %114 = arith.shli %false_7, %false_7 : i1
    %115 = index.divu %c8, %c1
    %cst_38 = arith.constant 1.000000e+00 : f16
    %116 = vector.transfer_read %alloc_14[%c6], %cst_38 : memref<6xf16>, vector<f16>
    scf.index_switch %c8 
    case 1 {
      %241 = math.ipowi %7, %7 : tensor<6xi16>
      %242 = arith.addi %extracted, %c-12697_i16 : i16
      %243 = arith.minf %extracted_32, %extracted_32 : f16
      %244 = arith.cmpi slt, %c-24077_i16, %extracted : i16
      %245 = affine.if affine_set<(d0) : ((d0 ceildiv 64) * 64 == 0, d0 >= 0, (d0 ceildiv 64) * 32 - (d0 + 64) >= 0, (d0 ceildiv 64) * 64 >= 0)>(%c12) -> i16 {
        %256 = vector.gather %4[%c4] [%109], %108, %109 : tensor<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %257 = math.ctlz %extracted_30 : i16
        %258 = arith.maxf %cst_1, %cst_6 : f32
        %259 = arith.subi %true, %false : i1
        %260 = vector.multi_reduction <minf>, %110, %cst [0] : vector<6xf32> to f32
        %261 = arith.divsi %extracted_30, %extracted : i16
        %262 = math.sqrt %cst : f32
        %263 = bufferization.clone %alloc_23 : memref<6xi1> to memref<6xi1>
        affine.yield %c-24077_i16 : i16
      } else {
        %alloc_68 = memref.alloc() : memref<4x4xi16>
        %256 = tensor.empty() : tensor<1x4xi16>
        %257 = linalg.matmul ins(%12, %alloc_68 : tensor<1x4xi16>, memref<4x4xi16>) outs(%256 : tensor<1x4xi16>) -> tensor<1x4xi16>
        %258 = arith.minf %cst_6, %cst_4 : f32
        %259 = vector.load %alloc_20[%c0, %c1] : memref<1x4xi32>, vector<1xi32>
        %260 = arith.mulf %cst_4, %cst_4 : f32
        %261 = arith.xori %extracted, %c-24077_i16 : i16
        %262 = math.exp %cst_38 : f16
        %263 = arith.shli %c1686033321_i64, %c1686033321_i64 : i64
        %264 = math.cos %cst_4 : f32
        affine.yield %c-12697_i16 : i16
      }
      %246 = math.ceil %15 : tensor<6xf16>
      %247 = vector.multi_reduction <maxsi>, %29, %extracted_30 [0] : vector<1xi16> to i16
      %248 = affine.min affine_map<(d0, d1, d2, d3) -> (-((d3 + 4) ceildiv 8), d0 mod 16 - (d0 + 8) + 2)>(%c9, %26, %c15, %23)
      %249 = arith.divsi %c193400656_i32, %c193400656_i32 : i32
      %250 = vector.extract_strided_slice %86 {offsets = [0], sizes = [1], strides = [1]} : vector<1x4xi1> to vector<1x4xi1>
      %251 = math.absf %0 : tensor<6xf32>
      %dest_65, %accumulated_value_66 = vector.scan <maxui>, %96, %92 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
      %252 = math.tanh %cst : f32
      %alloc_67 = memref.alloc() : memref<4x1x1xf32>
      %253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_67, %alloc_19, %alloc_19 : memref<4x1x1xf32>, memref<1xf32>, memref<1xf32>) outs(%expanded_28 : tensor<1x4x1xf32>) {
      ^bb0(%in: f32, %in_68: f32, %in_69: f32, %out: f32):
        %256 = arith.maxf %extracted_32, %cst_5 : f16
        %cast_70 = tensor.cast %6 : tensor<6xf16> to tensor<?xf16>
        %257 = math.floor %extracted_37 : f16
        %258 = vector.insertelement %false, %94[%rank : index] : vector<1xi1>
        %259 = arith.subi %false_7, %false : i1
        %260 = arith.maxf %cst_3, %cst_0 : f32
        %261 = math.ctlz %7 : tensor<6xi16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %262 = vector.transfer_read %alloc_11[%c10], %c0_i16 : memref<6xi16>, vector<i16>
        %263 = arith.shrui %c193400656_i32, %c193400656_i32 : i32
        %264 = vector.insertelement %c-24077_i16, %43[%c15 : index] : vector<1xi16>
        %265 = memref.load %alloc_24[] : memref<i1>
        %266 = arith.divf %extracted_32, %cst_5 : f16
        %267 = tensor.empty() : tensor<4x10xi16>
        %268 = tensor.empty() : tensor<1x10xi16>
        %269 = linalg.matmul ins(%11, %267 : tensor<1x4xi16>, tensor<4x10xi16>) outs(%268 : tensor<1x10xi16>) -> tensor<1x10xi16>
        %270 = arith.remui %c681900122_i64, %c1972338048_i64 : i64
        %271 = vector.broadcast %c15 : index to vector<6xindex>
        vector.scatter %alloc[%c1] [%271], %108, %110 : memref<6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %272 = vector.reduction <minsi>, %19 : vector<1xi16> into i16
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %110, %110, %cst_0 : vector<6xf32>, vector<6xf32> into f32
        %dest_71, %accumulated_value_72 = vector.scan <maxsi>, %86, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %274 = vector.reduction <maxsi>, %29 : vector<1xi16> into i16
        %275 = index.floordivs %26, %c1
        %276 = math.tan %splat : tensor<6xf32>
        %extracted_73 = tensor.extract %15[%c1] : tensor<6xf16>
        %277 = arith.maxf %cst_1, %cst_6 : f32
        %278 = arith.minui %c1_i16, %extracted_30 : i16
        %279 = arith.shrui %c1686033321_i64, %c1972338048_i64 : i64
        %280 = vector.broadcast %true : i1 to vector<6x6xi1>
        %281 = vector.outerproduct %108, %108, %280 {kind = #vector.kind<minui>} : vector<6xi1>, vector<6xi1>
        %extracted_74 = tensor.extract %7[%c4] : tensor<6xi16>
        vector.print %43 : vector<1xi16>
        %inserted_75 = tensor.insert %cst_5 into %15[%c0] : tensor<6xf16>
        %282 = index.ceildivu %c13, %65
        %283 = math.round %extracted_32 : f16
        %284 = vector.extract_strided_slice %60 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
        linalg.yield %cst : f32
      } -> tensor<1x4x1xf32>
      %254 = vector.gather %2[%rank_35] [%109], %108, %67 : tensor<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %255 = math.ceil %cst : f32
      scf.yield
    }
    case 2 {
      %241 = vector.bitcast %60 : vector<4xi1> to vector<4xi1>
      %alloca_65 = memref.alloca() : memref<1x4xi64>
      bufferization.dealloc_tensor %13 : tensor<6xi1>
      %242 = scf.while (%arg1 = %cst) : (f32) -> f32 {
        %254 = arith.mulf %cst_1, %arg1 : f32
        %255 = math.log %splat : tensor<6xf32>
        %256 = arith.subi %c-24077_i16, %c-24077_i16 : i16
        %257 = arith.minsi %c193400656_i32, %c193400656_i32 : i32
        %extracted_70 = tensor.extract %35[%c0] : tensor<1xi1>
        %258 = math.log2 %cst_38 : f16
        %259 = vector.insert %extracted_70, %108 [1] : i1 into vector<6xi1>
        %260 = vector.insertelement %c193400656_i32, %93[%c7 : index] : vector<1xi32>
        scf.condition(%true) %cst_4 : f32
      } do {
      ^bb0(%arg1: f32):
        %254 = index.divs %23, %c4
        %255 = vector.multi_reduction <maxui>, %43, %29 [] : vector<1xi16> to vector<1xi16>
        affine.store %true, %alloc_16[%c0] : memref<1xi1>
        %256 = math.ceil %cst_5 : f16
        memref.tensor_store %3, %alloc_22 : memref<6xi16>
        %257 = vector.broadcast %c-12697_i16 : i16 to vector<1x4xi16>
        %258 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
        %259 = vector.gather %11[%c7, %c2] [%258], %96, %257 : tensor<1x4xi16>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi16> into vector<1x4xi16>
        %260 = tensor.empty() : tensor<4x10xf32>
        %261 = tensor.empty() : tensor<1x10xf32>
        %262 = linalg.matmul ins(%5, %260 : tensor<1x4xf32>, tensor<4x10xf32>) outs(%261 : tensor<1x10xf32>) -> tensor<1x10xf32>
        %263 = math.copysign %0, %0 : tensor<6xf32>
        vector.print %95 : vector<1x4xi64>
        %264 = arith.maxf %cst_38, %extracted_32 : f16
        %265 = vector.bitcast %108 : vector<6xi1> to vector<6xi1>
        %266 = math.exp %15 : tensor<6xf16>
        %267 = vector.broadcast %extracted : i16 to vector<1x1xi16>
        %268 = vector.outerproduct %19, %29, %267 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
        %alloc_70 = memref.alloc() : memref<1xi1>
        %269 = arith.cmpi uge, %c681900122_i64, %c681900122_i64 : i64
        %270 = arith.remsi %true, %false : i1
        scf.yield %cst_6 : f32
      }
      %rank_66 = tensor.rank %17 : tensor<6xi16>
      %243 = index.ceildivs %c15, %c10
      %244 = affine.if affine_set<(d0, d1, d2) : ((d1 mod 64) floordiv 16 == 0, (-d2) floordiv 64 >= 0, d1 >= 0, d2 mod 32 >= 0)>(%c15, %c10, %c11) -> memref<1xi1> {
        %254 = arith.subi %false_7, %true : i1
        %255 = math.fma %15, %8, %8 : tensor<6xf16>
        %256 = arith.addi %false_7, %true : i1
        %257 = math.ceil %cst_38 : f16
        %cast_70 = tensor.cast %12 : tensor<1x4xi16> to tensor<?x?xi16>
        %258 = tensor.empty() : tensor<6xi64>
        bufferization.dealloc_tensor %35 : tensor<1xi1>
        %from_elements = tensor.from_elements %true, %true, %true, %false_7, %false, %false : tensor<6xi1>
        affine.yield %alloc_9 : memref<1xi1>
      } else {
        bufferization.dealloc_tensor %13 : tensor<6xi1>
        %cast_70 = tensor.cast %8 : tensor<6xf16> to tensor<?xf16>
        %254 = bufferization.clone %alloc_12 : memref<1xi32> to memref<1xi32>
        %255 = vector.broadcast %cst : f32 to vector<6xf32>
        %256 = vector.fma %255, %107, %255 : vector<6xf32>
        %257 = arith.muli %true, %false_7 : i1
        %collapsed_71 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
        %258 = vector.gather %alloc_10[%c10] [%93], %94, %92 : memref<6xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        affine.store %false_7, %alloc_8[%c12] : memref<1xi1>
        affine.yield %alloc_16 : memref<1xi1>
      }
      %245 = math.floor %extracted_37 : f16
      %collapsed_67 = tensor.collapse_shape %5 [[0, 1]] : tensor<1x4xf32> into tensor<4xf32>
      %246 = math.ipowi %3, %16 : tensor<6xi16>
      %247 = math.powf %8, %8 : tensor<6xf16>
      %alloc_68 = memref.alloc() : memref<4x4xf32>
      %248 = tensor.empty() : tensor<1x4xf32>
      %249 = linalg.matmul ins(%5, %alloc_68 : tensor<1x4xf32>, memref<4x4xf32>) outs(%248 : tensor<1x4xf32>) -> tensor<1x4xf32>
      %extracted_69 = tensor.extract %7[%c2] : tensor<6xi16>
      %250 = scf.while (%arg1 = %alloc_13) : (memref<1x4xi64>) -> memref<1x4xi64> {
        %254 = arith.shli %c-12697_i16, %c-12697_i16 : i16
        %alloc_70 = memref.alloc() : memref<6xf32>
        %255 = math.absf %8 : tensor<6xf16>
        %256 = math.absf %15 : tensor<6xf16>
        %257 = math.copysign %15, %8 : tensor<6xf16>
        %258 = index.maxs %rank, %c9
        %259 = vector.broadcast %true : i1 to vector<4x4xi1>
        %260 = vector.outerproduct %46, %241, %259 {kind = #vector.kind<or>} : vector<4xi1>, vector<4xi1>
        %261 = tensor.empty() : tensor<4x4xi16>
        %262 = tensor.empty() : tensor<1x4xi16>
        %263 = linalg.matmul ins(%12, %261 : tensor<1x4xi16>, tensor<4x4xi16>) outs(%262 : tensor<1x4xi16>) -> tensor<1x4xi16>
        scf.condition(%false) %arg1 : memref<1x4xi64>
      } do {
      ^bb0(%arg1: memref<1x4xi64>):
        %254 = arith.maxsi %false, %false_7 : i1
        %255 = arith.subi %c681900122_i64, %c681900122_i64 : i64
        %256 = tensor.empty() : tensor<4x6xi16>
        %257 = tensor.empty() : tensor<1x6xi16>
        %258 = linalg.matmul ins(%12, %256 : tensor<1x4xi16>, tensor<4x6xi16>) outs(%257 : tensor<1x6xi16>) -> tensor<1x6xi16>
        %rank_70 = tensor.rank %13 : tensor<6xi1>
        %inserted_71 = tensor.insert %cst_0 into %248[%c0, %c3] : tensor<1x4xf32>
        %259 = bufferization.clone %83 : memref<6xf16> to memref<6xf16>
        %260 = vector.gather %alloc_21[%c8] [%109], %108, %67 : memref<1xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %261 = bufferization.to_memref %7 : memref<6xi16>
        %262 = math.copysign %0, %0 : tensor<6xf32>
        %263 = arith.andi %103, %c1972338048_i64 : i64
        %alloca_72 = memref.alloca() : memref<1xf32>
        vector.print %47 : vector<4xi1>
        memref.copy %261, %alloc_22 : memref<6xi16> to memref<6xi16>
        %264 = arith.floordivsi %false_7, %false_7 : i1
        %265 = vector.extract_strided_slice %260 {offsets = [3], sizes = [1], strides = [1]} : vector<6xi64> to vector<1xi64>
        %266 = arith.minf %cst_38, %cst_38 : f16
        scf.yield %arg1 : memref<1x4xi64>
      }
      %251 = bufferization.clone %alloc_20 : memref<1x4xi32> to memref<1x4xi32>
      %252 = vector.broadcast %false_7 : i1 to vector<10xi1>
      %253 = vector.maskedload %alloc_23[%c4], %252, %252 : memref<6xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      scf.yield
    }
    case 3 {
      %241 = arith.maxsi %true, %false : i1
      %242 = memref.realloc %alloc_11 : memref<6xi16> to memref<1xi16>
      %243 = math.log %cst : f32
      %244 = bufferization.to_memref %11 : memref<1x4xi16>
      %245 = vector.broadcast %c-24077_i16 : i16 to vector<1x4xi16>
      %246 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
      %247 = vector.gather %alloc_22[%rank_35] [%246], %96, %245 : memref<6xi16>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi16> into vector<1x4xi16>
      %248 = arith.remsi %true, %true : i1
      %249 = vector.broadcast %c12 : index to vector<1xindex>
      vector.scatter %alloc_25[%c2] [%249], %92, %29 : memref<6xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      bufferization.dealloc_tensor %0 : tensor<6xf32>
      vector.print %245 : vector<1x4xi16>
      %250 = vector.broadcast %c193400656_i32 : i32 to vector<1x1xi32>
      %251 = vector.outerproduct %93, %93, %250 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
      memref.assume_alignment %alloc_22, 4 : memref<6xi16>
      %252 = bufferization.clone %alloc_19 : memref<1xf32> to memref<1xf32>
      %253 = arith.maxf %cst_5, %cst_5 : f16
      %254 = vector.insertelement %c-24077_i16, %19[%c10 : index] : vector<1xi16>
      %255 = arith.minf %cst, %cst_6 : f32
      %256 = affine.max affine_map<(d0) -> (d0 floordiv 32, (((-d0) floordiv 128) mod 8) * 32, -(d0 mod 8), (((-d0) floordiv 128) mod 8) * 32)>(%c7)
      scf.yield
    }
    default {
      %241 = vector.broadcast %26 : index to vector<1xindex>
      vector.scatter %alloc_20[%c0, %c2] [%241], %92, %93 : memref<1x4xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %242 = bufferization.clone %alloc : memref<6xf32> to memref<6xf32>
      %243 = tensor.empty() : tensor<1x4xf32>
      %mapped_65 = linalg.map ins(%5, %5, %5 : tensor<1x4xf32>, tensor<1x4xf32>, tensor<1x4xf32>) outs(%243 : tensor<1x4xf32>)
        (%in: f32, %in_66: f32, %in_67: f32) {
          %257 = math.log2 %cst_3 : f32
          %258 = vector.broadcast %c4 : index to vector<10xindex>
          %259 = vector.broadcast %false_7 : i1 to vector<10xi1>
          vector.scatter %alloc_24[] [%258], %259, %259 : memref<i1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %260 = vector.transpose %43, [0] : vector<1xi16> to vector<1xi16>
          %261 = math.sqrt %cst_3 : f32
          %262 = math.exp %cst_6 : f32
          %263 = affine.max affine_map<(d0, d1) -> (0, (d1 - 4) * 32, ((d1 * 2) ceildiv 32) floordiv 128 - 128, -d0)>(%65, %c12)
          %264 = arith.divsi %c-24077_i16, %c-24077_i16 : i16
          %265 = index.maxu %rank, %26
          %266 = vector.broadcast %true : i1 to vector<1xi1>
          affine.store %c193400656_i32, %alloc_20[%c15, %c11] : memref<1x4xi32>
          %267 = arith.subi %c681900122_i64, %103 : i64
          vector.print %46 : vector<4xi1>
          vector.print %47 : vector<4xi1>
          %cast_68 = tensor.cast %8 : tensor<6xf16> to tensor<?xf16>
          %268 = arith.mulf %extracted_32, %cst_38 : f16
          %269 = memref.realloc %alloc_9 : memref<1xi1> to memref<6xi1>
          %270 = math.exp2 %in : f32
          %271 = tensor.empty() : tensor<1x4xi64>
          %272 = vector.gather %271[%265, %c0] [%109], %108, %67 : tensor<1x4xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
          %inserted_69 = tensor.insert %cst_2 into %splat[%c0] : tensor<6xf32>
          %273 = vector.create_mask %c0 : vector<6xi1>
          vector.print %68 : vector<3xi1>
          %274 = vector.broadcast %65 : index to vector<10xindex>
          %275 = vector.broadcast %false : i1 to vector<10xi1>
          vector.scatter %alloc_9[%c0] [%274], %275, %275 : memref<1xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %276 = vector.bitcast %107 : vector<6xf32> to vector<6xf32>
          %expanded_70 = tensor.expand_shape %8 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
          %277 = math.atan2 %5, %5 : tensor<1x4xf32>
          %278 = arith.addi %c-12697_i16, %extracted : i16
          %279 = arith.maxsi %c-24077_i16, %c-12697_i16 : i16
          %280 = memref.atomic_rmw maxf %in, %alloc[%c3] : (f32, memref<6xf32>) -> f32
          %281 = vector.multi_reduction <and>, %29, %43 [] : vector<1xi16> to vector<1xi16>
          %282 = affine.max affine_map<(d0, d1) -> ((d0 + 1) floordiv 16 + d1 mod 128, ((d0 + 1) ceildiv 32) mod 16, (d0 + d1 mod 128 + 1) * 2)>(%c15, %c6)
          %283 = vector.splat %cst_38 : vector<6xf16>
          %284 = index.divu %c5, %c0
          %cst_71 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_71 : f32
        }
      %244 = math.powf %cst_6, %cst_4 : f32
      %245 = arith.maxf %cst_4, %cst_0 : f32
      %246 = arith.addi %false_7, %false : i1
      %247 = vector.broadcast %extracted_37 : f16 to vector<1xf16>
      %248 = arith.divsi %true, %true : i1
      %249 = arith.maxf %cst_3, %cst_2 : f32
      bufferization.dealloc_tensor %8 : tensor<6xf16>
      %250 = vector.extract %43[0] : vector<1xi16>
      %251 = arith.ceildivsi %true, %false : i1
      %252 = vector.broadcast %cst_2 : f32 to vector<1xf32>
      %253 = vector.fma %252, %252, %252 : vector<1xf32>
      %254 = math.ctlz %12 : tensor<1x4xi16>
      %255 = vector.extract_strided_slice %47 {offsets = [0], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
      %256 = arith.cmpf one, %cst, %cst_4 : f32
    }
    %117 = math.ctlz %13 : tensor<6xi1>
    %118 = vector.reduction <maxsi>, %47 : vector<4xi1> into i1
    %119 = vector.flat_transpose %93 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %120 = arith.maxsi %extracted, %extracted_30 : i16
    %121 = vector.matrix_multiply %112, %112 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    %122 = vector.broadcast %c681900122_i64 : i64 to vector<1xi64>
    %dest_39, %accumulated_value_40 = vector.scan <minui>, %95, %122 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi64>, vector<1xi64>
    %rank_41 = tensor.rank %12 : tensor<1x4xi16>
    %123 = math.tanh %15 : tensor<6xf16>
    %alloc_42 = memref.alloc() : memref<6xi32>
    memref.copy %alloc_18, %alloc_42 : memref<6xi32> to memref<6xi32>
    %124 = scf.while (%arg1 = %alloc_16) : (memref<1xi1>) -> memref<1xi1> {
      %241 = math.atan %cst_38 : f16
      %242 = index.ceildivs %c13, %c4
      %splat_65 = tensor.splat %cst : tensor<6xf32>
      %243 = arith.remsi %c-12697_i16, %extracted : i16
      %244 = affine.if affine_set<(d0, d1) : (d1 * 4 == 0)>(%c6, %c13) -> memref<1x4xi16> {
        memref.assume_alignment %alloc_21, 4 : memref<1xi64>
        %247 = arith.xori %c1972338048_i64, %103 : i64
        %248 = arith.shli %extracted, %c-24077_i16 : i16
        %249 = arith.divsi %c1972338048_i64, %103 : i64
        %250 = vector.extract %47[2] : vector<4xi1>
        %251 = math.floor %5 : tensor<1x4xf32>
        %252 = affine.max affine_map<(d0) -> (d0 * 7)>(%c13)
        %253 = index.casts %c5 : index to i32
        affine.yield %alloc_17 : memref<1x4xi16>
      } else {
        %cst_66 = arith.constant 1.000000e+00 : f32
        %247 = vector.transfer_read %0[%65], %cst_66 : tensor<6xf32>, vector<f32>
        %248 = math.atan2 %cst, %cst_1 : f32
        memref.copy %alloc_22, %alloc_11 : memref<6xi16> to memref<6xi16>
        %249 = index.ceildivu %c0, %rank_35
        %250 = math.sqrt %8 : tensor<6xf16>
        %251 = arith.cmpf uno, %cst_1, %cst_3 : f32
        %252 = bufferization.to_memref %17 : memref<6xi16>
        %253 = math.ceil %cst_38 : f16
        affine.yield %alloc_17 : memref<1x4xi16>
      }
      %from_elements = tensor.from_elements %c-24077_i16, %extracted_30, %c-12697_i16, %extracted, %c-12697_i16, %c-12697_i16 : tensor<6xi16>
      %245 = index.casts %c11 : index to i32
      %246 = math.exp %5 : tensor<1x4xf32>
      scf.condition(%false_7) %alloc_9 : memref<1xi1>
    } do {
    ^bb0(%arg1: memref<1xi1>):
      affine.for %arg2 = 0 to 73 {
      }
      %241 = tensor.empty() : tensor<6x1xi32>
      %mapped_65 = linalg.map ins(%expanded, %expanded : tensor<6x1xi32>, tensor<6x1xi32>) outs(%241 : tensor<6x1xi32>)
        (%in: i32, %in_67: i32) {
          %254 = vector.matrix_multiply %47, %92 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<1xi1>) -> vector<4xi1>
          %255 = vector.broadcast %c681900122_i64 : i64 to vector<4xi64>
          %dest_68, %accumulated_value_69 = vector.scan <minui>, %95, %255 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi64>, vector<4xi64>
          %256 = math.exp %8 : tensor<6xf16>
          %257 = math.atan2 %cst_38, %cst_38 : f16
          vector.print %96 : vector<1x4xi1>
          %258 = vector.insert %extracted, %19 [0] : i16 into vector<1xi16>
          %259 = vector.insert %c-12697_i16, %52 [0] : i16 into vector<1xi16>
          %260 = arith.cmpf uge, %cst, %cst_6 : f32
          %dest_70, %accumulated_value_71 = vector.scan <add>, %86, %47 {inclusive = true, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
          %inserted_72 = tensor.insert %extracted into %21[] : tensor<i16>
          %261 = arith.ceildivsi %c1686033321_i64, %103 : i64
          %262 = arith.muli %in_67, %in_67 : i32
          %263 = arith.maxf %cst_1, %cst_4 : f32
          vector.print %121 : vector<1xf16>
          %264 = vector.reduction <and>, %109 : vector<6xi32> into i32
          %265 = math.powf %extracted_37, %cst_38 : f16
          %266 = vector.create_mask %23 : vector<6xi1>
          %267 = vector.insert %false, %92 [0] : i1 into vector<1xi1>
          %268 = index.mul %c3, %rank_35
          %269 = index.casts %c5 : index to i32
          %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c9, %c0, %65, %c0)
          %271 = vector.broadcast %false_7 : i1 to vector<4x4xi1>
          %272 = vector.outerproduct %60, %46, %271 {kind = #vector.kind<minui>} : vector<4xi1>, vector<4xi1>
          vector.print %52 : vector<1xi16>
          %273 = vector.create_mask %c6 : vector<6xi1>
          bufferization.dealloc_tensor %10 : tensor<6xi16>
          %274 = vector.bitcast %67 : vector<6xi64> to vector<6xi64>
          %275 = index.ceildivs %268, %c9
          %276 = affine.load %alloc_19[%c1] : memref<1xf32>
          %277 = math.powf %cst_38, %extracted_37 : f16
          %collapsed_73 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
          %278 = math.cos %6 : tensor<6xf16>
          %279 = vector.bitcast %92 : vector<1xi1> to vector<1xi1>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %242 = index.maxs %c4, %c15
      %243 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 4 + d0, d1 ceildiv 4)>(%c12, %c10, %c11, %rank_41)
      %splat_66 = tensor.splat %c1686033321_i64 : tensor<6xi64>
      %244 = index.ceildivu %23, %c12
      %245 = affine.load %alloc_8[%c9] : memref<1xi1>
      %246 = affine.if affine_set<(d0, d1, d2) : (d0 floordiv 8 + 8 == 0, d0 - d2 ceildiv 128 >= 0)>(%c1, %c5, %c4) -> i16 {
        %254 = arith.ceildivsi %c1972338048_i64, %c1686033321_i64 : i64
        %collapsed_67 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
        %255 = vector.bitcast %93 : vector<1xi32> to vector<1xi32>
        %256 = math.log10 %8 : tensor<6xf16>
        %257 = arith.divf %cst_4, %cst_1 : f32
        %258 = arith.divui %c193400656_i32, %c193400656_i32 : i32
        %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %119, %93, %c193400656_i32 : vector<1xi32>, vector<1xi32> into i32
        %260 = arith.muli %true, %false : i1
        affine.yield %c-24077_i16 : i16
      } else {
        %254 = vector.insertelement %extracted_30, %43[%115 : index] : vector<1xi16>
        %255 = bufferization.clone %alloc_21 : memref<1xi64> to memref<1xi64>
        %256 = index.maxs %c9, %26
        %257 = index.ceildivs %c15, %c8
        %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %93, %119, %c193400656_i32 : vector<1xi32>, vector<1xi32> into i32
        %extracted_67 = tensor.extract %35[%c0] : tensor<1xi1>
        %259 = arith.addi %c681900122_i64, %103 : i64
        %260 = index.maxu %c6, %23
        affine.yield %extracted : i16
      }
      bufferization.dealloc_tensor %17 : tensor<6xi16>
      %247 = arith.mulf %cst_3, %cst_2 : f32
      %248 = index.casts %false_7 : i1 to index
      %249 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
      %250 = math.ctlz %9 : tensor<6xi16>
      %251 = math.ceil %5 : tensor<1x4xf32>
      %252 = math.log %8 : tensor<6xf16>
      %253 = index.maxu %c2, %c11
      scf.yield %arg1 : memref<1xi1>
    }
    %125 = index.ceildivu %rank_35, %c10
    %126 = arith.mulf %cst_38, %extracted_37 : f16
    %127 = tensor.empty() : tensor<6xi1>
    %mapped_43 = linalg.map ins(%13, %alloc_10, %13 : tensor<6xi1>, memref<6xi1>, tensor<6xi1>) outs(%127 : tensor<6xi1>)
      (%in: i1, %in_65: i1, %in_66: i1) {
        %241 = vector.insert %47, %96 [0] : vector<4xi1> into vector<1x4xi1>
        %242 = arith.divf %cst_38, %cst_5 : f16
        %243 = vector.broadcast %c681900122_i64 : i64 to vector<1xi64>
        %244 = vector.gather %2[%c1] [%93], %92, %243 : tensor<6xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %245 = vector.broadcast %cst : f32 to vector<1x4xf32>
        %246 = vector.fma %245, %245, %245 : vector<1x4xf32>
        %247 = math.ctpop %extracted : i16
        %expanded_67 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<1x4xi16> into tensor<1x4x1xi16>
        %248 = vector.gather %alloc_18[%c0] [%109], %108, %109 : memref<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %249 = arith.ori %c1686033321_i64, %c1686033321_i64 : i64
        %250 = vector.broadcast %extracted_30 : i16 to vector<1x4xi16>
        %251 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
        %252 = vector.gather %17[%c1] [%251], %96, %250 : tensor<6xi16>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi16> into vector<1x4xi16>
        %253 = arith.ori %in, %true : i1
        %254 = vector.broadcast %103 : i64 to vector<6xi64>
        %255 = math.ctlz %14 : tensor<6xi32>
        %256 = math.floor %extracted_37 : f16
        %dest_68, %accumulated_value_69 = vector.scan <maxui>, %95, %243 {inclusive = true, reduction_dim = 1 : i64} : vector<1x4xi64>, vector<1xi64>
        %257 = arith.maxsi %in_66, %in_65 : i1
        %258 = vector.flat_transpose %248 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
        %cast_70 = tensor.cast %2 : tensor<6xi64> to tensor<?xi64>
        %259 = vector.gather %54[%c15, %65] [%93], %94, %93 : tensor<1x4xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %260 = arith.floordivsi %in, %false_7 : i1
        %dest_71, %accumulated_value_72 = vector.scan <minsi>, %95, %244 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi64>, vector<1xi64>
        %261 = affine.load %alloc[%c11] : memref<6xf32>
        memref.copy %42, %alloc : memref<6xf32> to memref<6xf32>
        affine.store %extracted_32, %alloc_14[%c6] : memref<6xf16>
        %alloc_73 = memref.alloc() : memref<1x4xi64>
        %262 = vector.insert %c-24077_i16, %43 [0] : i16 into vector<1xi16>
        %263 = math.floor %cst_1 : f32
        %264 = math.atan %extracted_37 : f16
        %265 = arith.mulf %cst_38, %extracted_37 : f16
        %266 = scf.while (%arg1 = %alloc_20) : (memref<1x4xi32>) -> memref<1x4xi32> {
          %expanded_77 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<1x4xi16> into tensor<1x4x1xi16>
          %268 = arith.ori %c1686033321_i64, %c681900122_i64 : i64
          %269 = arith.maxsi %in_65, %false : i1
          %270 = math.floor %6 : tensor<6xf16>
          %271 = vector.broadcast %rank_41 : index to vector<10xindex>
          %272 = vector.broadcast %in_65 : i1 to vector<10xi1>
          vector.scatter %alloc_23[%c4] [%271], %272, %272 : memref<6xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          bufferization.dealloc_tensor %127 : tensor<6xi1>
          %273 = tensor.empty() : tensor<6x4xi32>
          %274 = linalg.matmul ins(%expanded, %54 : tensor<6x1xi32>, tensor<1x4xi32>) outs(%273 : tensor<6x4xi32>) -> tensor<6x4xi32>
          %275 = index.casts %c193400656_i32 : i32 to index
          scf.condition(%false) %alloc_20 : memref<1x4xi32>
        } do {
        ^bb0(%arg1: memref<1x4xi32>):
          %cast_77 = tensor.cast %127 : tensor<6xi1> to tensor<?xi1>
          %268 = memref.realloc %alloc_10 : memref<6xi1> to memref<4xi1>
          bufferization.dealloc_tensor %3 : tensor<6xi16>
          %rank_78 = tensor.rank %3 : tensor<6xi16>
          vector.print %19 : vector<1xi16>
          %269 = arith.cmpf ueq, %cst_3, %261 : f32
          %270 = vector.broadcast %65 : index to vector<1xindex>
          %271 = vector.broadcast %cst_0 : f32 to vector<1xf32>
          vector.scatter %alloc_19[%c0] [%270], %94, %271 : memref<1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
          vector.print %259 : vector<1xi32>
          %272 = math.ceil %cst_2 : f32
          %273 = tensor.empty(%c0) : tensor<?xf32>
          %274 = arith.cmpf uno, %cst_6, %cst_4 : f32
          %275 = math.ctlz %false : i1
          %276 = vector.create_mask %c9, %c8 : vector<1x4xi1>
          %277 = math.log2 %extracted_37 : f16
          %278 = vector.insert %103, %243 [0] : i64 into vector<1xi64>
          %dest_79, %accumulated_value_80 = vector.scan <minui>, %276, %92 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
          scf.yield %alloc_20 : memref<1x4xi32>
        }
        %267 = arith.ceildivsi %in, %in_66 : i1
        %expanded_74 = tensor.expand_shape %6 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
        %alloca_75 = memref.alloca() : memref<1x4xi64>
        %false_76 = arith.constant false
        linalg.yield %false_76 : i1
      }
    %128 = index.divu %rank, %rank
    %129 = arith.xori %c681900122_i64, %c1686033321_i64 : i64
    %130 = math.log %15 : tensor<6xf16>
    scf.if %true {
      %241 = math.fpowi %6, %4 : tensor<6xf16>, tensor<6xi32>
      %242 = index.divu %c13, %c4
      %243 = affine.max affine_map<(d0) -> ((d0 floordiv 16) * -64, d0 mod 2, (d0 mod 2) floordiv 2)>(%c6)
      %244 = math.fma %6, %8, %8 : tensor<6xf16>
      %245 = math.log2 %8 : tensor<6xf16>
      %246 = arith.xori %c-24077_i16, %extracted_30 : i16
      %247 = vector.insert %c-12697_i16, %19 [0] : i16 into vector<1xi16>
      %alloc_65 = memref.alloc() : memref<1xf32>
    }
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
    %131 = math.ctlz %21 : tensor<i16>
    %132 = arith.maxf %cst_6, %cst_0 : f32
    %133 = index.divu %c4, %rank_35
    %134 = math.exp %5 : tensor<1x4xf32>
    %dest_44, %accumulated_value_45 = vector.scan <minui>, %86, %60 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
    scf.index_switch %c4 
    case 1 {
      memref.copy %alloc, %42 : memref<6xf32> to memref<6xf32>
      %241 = arith.muli %c681900122_i64, %c1686033321_i64 : i64
      %242 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %86, %46, %92 : vector<1x4xi1>, vector<4xi1> into vector<1xi1>
      %243 = math.exp %expanded_28 : tensor<1x4x1xf32>
      %244 = index.casts %true : i1 to index
      %alloc_65 = memref.alloc() : memref<6xi32>
      %extracted_66 = tensor.extract %3[%c3] : tensor<6xi16>
      %245 = math.copysign %8, %8 : tensor<6xf16>
      %246 = arith.mulf %cst_3, %cst_4 : f32
      memref.tensor_store %6, %alloc_14 : memref<6xf16>
      %inserted_67 = tensor.insert %c-24077_i16 into %3[%c5] : tensor<6xi16>
      %247 = math.ceil %0 : tensor<6xf32>
      memref.tensor_store %14, %alloc_18 : memref<6xi32>
      %248 = math.log %cst_4 : f32
      %249 = math.ctlz %10 : tensor<6xi16>
      %250 = affine.load %alloc_11[%c3] : memref<6xi16>
      scf.yield
    }
    case 2 {
      %241 = math.ceil %0 : tensor<6xf32>
      %242 = vector.reduction <maxui>, %29 : vector<1xi16> into i16
      %243 = arith.ori %c193400656_i32, %c193400656_i32 : i32
      scf.index_switch %c9 
      case 1 {
        %252 = math.log2 %expanded_28 : tensor<1x4x1xf32>
        %253 = math.floor %0 : tensor<6xf32>
        %splat_67 = tensor.splat %extracted : tensor<6xi16>
        %254 = math.exp %cst_38 : f16
        %255 = math.tanh %cst : f32
        %256 = bufferization.clone %42 : memref<6xf32> to memref<6xf32>
        %257 = bufferization.clone %83 : memref<6xf16> to memref<6xf16>
        %258 = bufferization.to_memref %10 : memref<6xi16>
        memref.assume_alignment %258, 8 : memref<6xi16>
        %259 = math.floor %cst_6 : f32
        %260 = vector.broadcast %c193400656_i32 : i32 to vector<1x1xi32>
        %261 = vector.outerproduct %93, %119, %260 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %262 = vector.broadcast %extracted : i16 to vector<1x1xi16>
        %263 = vector.outerproduct %19, %29, %262 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
        %alloc_68 = memref.alloc() : memref<6xf32>
        %inserted_69 = tensor.insert %extracted into %20[] : tensor<i16>
        %264 = math.exp %expanded_28 : tensor<1x4x1xf32>
        %265 = vector.flat_transpose %107 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        scf.yield
      }
      case 2 {
        memref.copy %alloc_10, %alloc_23 : memref<6xi1> to memref<6xi1>
        %252 = affine.load %alloc_8[%c9] : memref<1xi1>
        %253 = arith.ceildivsi %extracted, %c-24077_i16 : i16
        %254 = math.copysign %extracted_37, %cst_38 : f16
        %255 = arith.floordivsi %c681900122_i64, %c681900122_i64 : i64
        %256 = math.floor %cst_0 : f32
        %257 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
        %258 = vector.outerproduct %110, %107, %257 {kind = #vector.kind<mul>} : vector<6xf32>, vector<6xf32>
        vector.print %68 : vector<3xi1>
        %collapsed_67 = tensor.collapse_shape %expanded [[0, 1]] : tensor<6x1xi32> into tensor<6xi32>
        %259 = index.ceildivs %c10, %c11
        %260 = arith.andi %c681900122_i64, %c1972338048_i64 : i64
        %261 = index.ceildivs %c0, %23
        %262 = index.castu %103 : i64 to index
        %expanded_68 = tensor.expand_shape %1 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
        %263 = math.floor %6 : tensor<6xf16>
        %264 = math.log %8 : tensor<6xf16>
        scf.yield
      }
      case 3 {
        bufferization.dealloc_tensor %2 : tensor<6xi64>
        %252 = vector.broadcast %extracted_30 : i16 to vector<1x1xi16>
        %253 = vector.outerproduct %29, %19, %252 {kind = #vector.kind<and>} : vector<1xi16>, vector<1xi16>
        %254 = arith.subi %extracted, %c-24077_i16 : i16
        %extracted_67 = tensor.extract %11[%c0, %c3] : tensor<1x4xi16>
        %255 = memref.realloc %alloc_16 : memref<1xi1> to memref<6xi1>
        %256 = memref.load %alloc_19[%c0] : memref<1xf32>
        %257 = math.fma %5, %5, %5 : tensor<1x4xf32>
        %258 = math.tan %6 : tensor<6xf16>
        %259 = math.absi %c-12697_i16 : i16
        %260 = math.exp %cst_5 : f16
        vector.print %109 : vector<6xi32>
        %261 = index.casts %true : i1 to index
        bufferization.dealloc_tensor %cast_36 : tensor<?xf32>
        %262 = vector.broadcast %extracted_67 : i16 to vector<1x1xi16>
        %263 = vector.outerproduct %29, %19, %262 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
        %264 = affine.max affine_map<(d0) -> ((d0 mod 2) * 32)>(%65)
        %265 = arith.muli %extracted_30, %c-12697_i16 : i16
        scf.yield
      }
      default {
        %252 = arith.floordivsi %c-12697_i16, %c-24077_i16 : i16
        %253 = vector.extract_strided_slice %46 {offsets = [0], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
        %254 = arith.minui %c-24077_i16, %c-12697_i16 : i16
        %255 = vector.reduction <and>, %119 : vector<1xi32> into i32
        %256 = index.floordivs %c8, %c1
        %expanded_67 = tensor.expand_shape %0 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        %257 = math.powf %cst_6, %cst_1 : f32
        %258 = vector.insert %false_7, %60 [3] : i1 into vector<4xi1>
        %259 = memref.load %alloc_23[%c4] : memref<6xi1>
        %splat_68 = tensor.splat %cst_38 : tensor<1x4xf16>
        %260 = arith.maxsi %extracted_30, %extracted_30 : i16
        %261 = math.tanh %5 : tensor<1x4xf32>
        %262 = math.tan %6 : tensor<6xf16>
        %263 = math.expm1 %extracted_32 : f16
        %264 = arith.divsi %false_7, %true : i1
        %265 = math.log10 %6 : tensor<6xf16>
      }
      %alloc_65 = memref.alloc() : memref<6xi1>
      affine.store %cst_2, %alloc_15[%c11, %c10] : memref<1x4xf32>
      %244 = index.add %26, %c14
      %245 = arith.remf %extracted_32, %extracted_32 : f16
      %cast_66 = tensor.cast %35 : tensor<1xi1> to tensor<?xi1>
      %246 = math.tan %5 : tensor<1x4xf32>
      %247 = vector.insertelement %false_7, %68[%c6 : index] : vector<3xi1>
      memref.copy %alloc_16, %alloc_8 : memref<1xi1> to memref<1xi1>
      %248 = math.log1p %cst_4 : f32
      %249 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %52, %c-12697_i16 : vector<1xi16>, vector<1xi16> into i16
      %250 = arith.subi %c-12697_i16, %c-24077_i16 : i16
      %251 = math.copysign %0, %0 : tensor<6xf32>
      scf.yield
    }
    case 3 {
      %241 = arith.mulf %cst_5, %cst_5 : f16
      %242 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %52, %29, %c-12697_i16 : vector<1xi16>, vector<1xi16> into i16
      %243 = arith.cmpf oeq, %cst_3, %cst : f32
      %244 = arith.xori %c681900122_i64, %c1686033321_i64 : i64
      %245 = index.divu %c1, %65
      %246 = arith.addi %103, %c1686033321_i64 : i64
      %247 = scf.execute_region -> vector<6xi1> {
        %256 = math.exp2 %0 : tensor<6xf32>
        memref.tensor_store %35, %alloc_9 : memref<1xi1>
        %rank_70 = tensor.rank %expanded_28 : tensor<1x4x1xf32>
        %257 = arith.subi %c-12697_i16, %c-12697_i16 : i16
        %258 = math.powf %0, %0 : tensor<6xf32>
        %259 = index.maxs %c9, %c14
        %260 = affine.max affine_map<(d0, d1) -> (d1 floordiv 2, -(d0 - 96), d0 ceildiv 64, d0 ceildiv 64)>(%26, %115)
        %261 = index.divu %rank_35, %128
        %262 = arith.floordivsi %c-24077_i16, %extracted_30 : i16
        %263 = arith.maxf %cst_2, %cst_2 : f32
        %264 = memref.atomic_rmw mulf %cst_6, %alloc[%c1] : (f32, memref<6xf32>) -> f32
        %inserted_71 = tensor.insert %cst_1 into %5[%c0, %c0] : tensor<1x4xf32>
        bufferization.dealloc_tensor %3 : tensor<6xi16>
        %dest_72, %accumulated_value_73 = vector.scan <and>, %96, %60 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %265 = math.floor %cst_38 : f16
        %266 = index.ceildivs %c12, %26
        scf.yield %108 : vector<6xi1>
      }
      %248 = math.floor %6 : tensor<6xf16>
      %rank_65 = tensor.rank %54 : tensor<1x4xi32>
      %dest_66, %accumulated_value_67 = vector.scan <mul>, %86, %94 {inclusive = true, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
      %generated_68 = tensor.generate %133 {
      ^bb0(%arg1: index):
        %256 = arith.remui %extracted_30, %c-12697_i16 : i16
        %257 = math.cos %5 : tensor<1x4xf32>
        %258 = math.floor %cst_5 : f16
        %259 = math.tan %15 : tensor<6xf16>
        tensor.yield %c-12697_i16 : i16
      } : tensor<?xi16>
      %249 = arith.muli %c681900122_i64, %c1686033321_i64 : i64
      %250 = memref.load %alloc_13[%c0, %c3] : memref<1x4xi64>
      %251 = tensor.empty() : tensor<1xf16>
      %252 = vector.broadcast %cst_38 : f16 to vector<1x4xf16>
      %253 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
      %254 = vector.gather %251[%125] [%253], %86, %252 : tensor<1xf16>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xf16> into vector<1x4xf16>
      %255 = affine.load %alloc_11[%c4] : memref<6xi16>
      %extracted_69 = tensor.extract %6[%c0] : tensor<6xf16>
      scf.yield
    }
    default {
      %241 = math.floor %cst_0 : f32
      %242 = index.casts %rank_41 : index to i32
      %243 = index.casts %c4 : index to i32
      scf.index_switch %c9 
      case 1 {
        %254 = math.ctlz %collapsed : tensor<4xi16>
        %255 = arith.shrui %true, %false : i1
        %256 = index.floordivs %c0, %rank_35
        %257 = math.log %8 : tensor<6xf16>
        %258 = arith.floordivsi %c681900122_i64, %c681900122_i64 : i64
        %259 = vector.reduction <maxsi>, %43 : vector<1xi16> into i16
        %260 = vector.broadcast %cst : f32 to vector<10xf32>
        %261 = vector.broadcast %false_7 : i1 to vector<10xi1>
        %262 = vector.maskedload %alloc_19[%c0], %261, %260 : memref<1xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %263 = vector.extract %92[0] : vector<1xi1>
        %264 = math.sqrt %15 : tensor<6xf16>
        %265 = math.exp %0 : tensor<6xf32>
        %266 = arith.mulf %cst, %cst_6 : f32
        %267 = arith.mulf %extracted_37, %cst_5 : f16
        %268 = arith.subi %true, %false : i1
        %269 = arith.addf %cst, %cst : f32
        %270 = math.log %expanded_28 : tensor<1x4x1xf32>
        %271 = vector.broadcast %c1972338048_i64 : i64 to vector<1x4xi64>
        scf.yield
      }
      case 2 {
        %254 = vector.gather %alloc_10[%c9] [%109], %108, %108 : memref<6xi1>, vector<6xi32>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %255 = arith.cmpf oeq, %cst_5, %extracted_37 : f16
        %256 = math.log %0 : tensor<6xf32>
        %257 = arith.shrui %extracted, %c-12697_i16 : i16
        %dest_67, %accumulated_value_68 = vector.scan <minsi>, %86, %47 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %258 = arith.cmpf one, %cst, %cst_6 : f32
        %259 = math.copysign %15, %8 : tensor<6xf16>
        %260 = arith.minf %cst_2, %cst : f32
        %261 = bufferization.clone %alloc_17 : memref<1x4xi16> to memref<1x4xi16>
        %262 = vector.insert %c193400656_i32, %119 [0] : i32 into vector<1xi32>
        %263 = math.cttz %7 : tensor<6xi16>
        %264 = vector.matrix_multiply %119, %119 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %265 = index.maxs %c3, %c7
        vector.print %19 : vector<1xi16>
        %266 = arith.minui %true, %false_7 : i1
        %splat_69 = tensor.splat %cst : tensor<1xf32>
        scf.yield
      }
      case 3 {
        affine.store %cst_38, %alloc_14[%c15] : memref<6xf16>
        %254 = arith.ceildivsi %false, %false_7 : i1
        %255 = vector.broadcast %cst_3 : f32 to vector<6xf32>
        %extracted_67 = tensor.extract %6[%c5] : tensor<6xf16>
        %256 = index.ceildivs %125, %125
        %257 = vector.broadcast %cst : f32 to vector<6x6xf32>
        %258 = vector.outerproduct %107, %255, %257 {kind = #vector.kind<minf>} : vector<6xf32>, vector<6xf32>
        %259 = arith.remf %cst_1, %cst_1 : f32
        %260 = vector.broadcast %true : i1 to vector<1x1xi1>
        %261 = vector.outerproduct %94, %94, %260 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
        %262 = math.copysign %cst_2, %cst_3 : f32
        %263 = index.maxu %c12, %c6
        %264 = vector.create_mask %rank_41 : vector<1xi1>
        %inserted_68 = tensor.insert %true into %13[%c1] : tensor<6xi1>
        vector.print %255 : vector<6xf32>
        %265 = vector.insert %c193400656_i32, %93 [0] : i32 into vector<1xi32>
        %266 = vector.broadcast %extracted_37 : f16 to vector<1x4xf16>
        %267 = arith.cmpf uge, %cst_38, %extracted_37 : f16
        scf.yield
      }
      case 4 {
        bufferization.dealloc_tensor %6 : tensor<6xf16>
        %254 = vector.broadcast %false : i1 to vector<4x4xi1>
        %255 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %86, %96, %254 : vector<1x4xi1>, vector<1x4xi1> into vector<4x4xi1>
        %256 = vector.multi_reduction <mul>, %96, %86 [] : vector<1x4xi1> to vector<1x4xi1>
        %alloca_67 = memref.alloca() : memref<1xi1>
        %257 = arith.addi %extracted, %extracted_30 : i16
        %258 = bufferization.clone %alloc_13 : memref<1x4xi64> to memref<1x4xi64>
        %false_68 = index.bool.constant false
        %inserted_69 = tensor.insert %cst_5 into %15[%c5] : tensor<6xf16>
        %259 = affine.load %alloc_9[%c14] : memref<1xi1>
        %260 = math.cttz %14 : tensor<6xi32>
        %261 = arith.cmpf ueq, %cst_1, %cst_6 : f32
        %expanded_70 = tensor.expand_shape %16 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
        %262 = vector.broadcast %259 : i1 to vector<6xi1>
        %263 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d1) mod 64, -d1)>(%rank_35, %rank, %115, %c3)
        %264 = vector.broadcast %c-12697_i16 : i16 to vector<1x1xi16>
        %265 = vector.outerproduct %52, %19, %264 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
        %266 = arith.addi %c193400656_i32, %c193400656_i32 : i32
        scf.yield
      }
      default {
        %rank_67 = tensor.rank %1 : tensor<1xi16>
        vector.print %46 : vector<4xi1>
        %254 = index.casts %c11 : index to i32
        %255 = index.divu %rank_67, %c11
        %256 = arith.ori %extracted_30, %extracted : i16
        %dest_68, %accumulated_value_69 = vector.scan <xor>, %96, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %257 = index.divs %23, %c3
        %258 = vector.gather %14[%c3] [%109], %108, %109 : tensor<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %259 = math.fpowi %cst_1, %c193400656_i32 : f32, i32
        %260 = math.sqrt %cst_0 : f32
        %261 = vector.create_mask %c8 : vector<6xi1>
        %262 = index.casts %false : i1 to index
        %263 = arith.remf %cst, %cst_6 : f32
        memref.copy %alloc, %42 : memref<6xf32> to memref<6xf32>
        %264 = vector.flat_transpose %94 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %extracted_70 = tensor.extract %11[%c0, %c1] : tensor<1x4xi16>
      }
      %244 = tensor.empty() : tensor<1x4xi16>
      %mapped_65 = linalg.map ins(%12, %alloc_17, %12 : tensor<1x4xi16>, memref<1x4xi16>, tensor<1x4xi16>) outs(%244 : tensor<1x4xi16>)
        (%in: i16, %in_67: i16, %in_68: i16) {
          %254 = index.add %c4, %c11
          %255 = math.ctpop %c-12697_i16 : i16
          %256 = math.sqrt %cst_1 : f32
          affine.store %extracted, %alloc_11[%c4] : memref<6xi16>
          %257 = math.log2 %cst_4 : f32
          %extracted_69 = tensor.extract %8[%c4] : tensor<6xf16>
          %258 = bufferization.clone %alloc_20 : memref<1x4xi32> to memref<1x4xi32>
          %259 = math.ipowi %4, %4 : tensor<6xi32>
          %260 = math.ctlz %c1972338048_i64 : i64
          %261 = memref.atomic_rmw ori %c193400656_i32, %alloc_20[%c0, %c0] : (i32, memref<1x4xi32>) -> i32
          %262 = arith.divsi %c1972338048_i64, %c681900122_i64 : i64
          %263 = math.atan2 %splat, %splat : tensor<6xf32>
          bufferization.dealloc_tensor %4 : tensor<6xi32>
          %264 = vector.insert %false_7, %47 [2] : i1 into vector<4xi1>
          %265 = math.log2 %15 : tensor<6xf16>
          %266 = arith.addi %c-12697_i16, %in_68 : i16
          %267 = vector.flat_transpose %107 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
          %268 = arith.muli %true, %true : i1
          %269 = math.log2 %15 : tensor<6xf16>
          %270 = arith.maxsi %c-12697_i16, %extracted : i16
          %271 = arith.cmpi uge, %extracted_30, %c-12697_i16 : i16
          memref.copy %alloc, %42 : memref<6xf32> to memref<6xf32>
          affine.store %in_68, %alloc_11[%c3] : memref<6xi16>
          %272 = index.casts %23 : index to i32
          %expanded_70 = tensor.expand_shape %127 [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
          %273 = arith.mulf %extracted_69, %cst_5 : f16
          %274 = arith.xori %c-24077_i16, %c-12697_i16 : i16
          %275 = index.sizeof
          %276 = math.exp2 %cst_5 : f16
          %277 = index.maxu %rank_35, %c14
          %278 = arith.shrsi %c193400656_i32, %c193400656_i32 : i32
          %279 = bufferization.clone %alloc_16 : memref<1xi1> to memref<1xi1>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %245 = memref.realloc %alloc_11 : memref<6xi16> to memref<1xi16>
      %246 = arith.addf %cst_38, %extracted_32 : f16
      %247 = bufferization.clone %alloc_16 : memref<1xi1> to memref<1xi1>
      %collapsed_66 = tensor.collapse_shape %54 [[0, 1]] : tensor<1x4xi32> into tensor<4xi32>
      %248 = memref.load %alloc_12[%c0] : memref<1xi32>
      %249 = arith.mulf %cst_3, %cst_0 : f32
      memref.copy %247, %alloc_9 : memref<1xi1> to memref<1xi1>
      %250 = arith.remf %cst_0, %cst : f32
      %251 = scf.while (%arg1 = %extracted_37) : (f16) -> f16 {
        %254 = arith.muli %c193400656_i32, %c193400656_i32 : i32
        %255 = math.log %cst_1 : f32
        vector.print %108 : vector<6xi1>
        %256 = math.tan %5 : tensor<1x4xf32>
        %257 = index.add %133, %133
        %258 = memref.atomic_rmw ori %c193400656_i32, %alloc_18[%c1] : (i32, memref<6xi32>) -> i32
        %259 = vector.insert %extracted_37, %112 [0] : f16 into vector<1xf16>
        %260 = index.casts %133 : index to i32
        scf.condition(%true) %extracted_32 : f16
      } do {
      ^bb0(%arg1: f16):
        %254 = affine.max affine_map<(d0, d1, d2) -> (36, d1 mod 4)>(%c5, %128, %23)
        %255 = arith.maxsi %c-12697_i16, %c-24077_i16 : i16
        %256 = arith.addi %c-12697_i16, %c-12697_i16 : i16
        %257 = arith.shli %false_7, %true : i1
        %false_67 = index.bool.constant false
        %258 = math.round %cst_1 : f32
        %259 = arith.remf %cst, %cst : f32
        affine.store %false, %alloc_9[%c3] : memref<1xi1>
        %260 = math.fpowi %cst_6, %c193400656_i32 : f32, i32
        %261 = math.sqrt %6 : tensor<6xf16>
        %262 = memref.load %alloc_17[%c0, %c2] : memref<1x4xi16>
        %263 = vector.extract %96[0] : vector<1x4xi1>
        %264 = math.powf %5, %5 : tensor<1x4xf32>
        %265 = arith.cmpi slt, %c-24077_i16, %extracted_30 : i16
        %266 = arith.mulf %cst_6, %cst_0 : f32
        %267 = math.fpowi %cst_0, %c193400656_i32 : f32, i32
        scf.yield %cst_38 : f16
      }
      %252 = math.copysign %extracted_32, %cst_5 : f16
      %253 = arith.shrsi %false, %false : i1
    }
    %135 = arith.maxf %cst_6, %cst_1 : f32
    %136 = math.ipowi %4, %4 : tensor<6xi32>
    %137 = math.fpowi %cst_4, %c193400656_i32 : f32, i32
    %138 = arith.minf %cst_6, %cst_2 : f32
    %139 = vector.flat_transpose %119 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %140 = bufferization.clone %alloc_24 : memref<i1> to memref<i1>
    %141 = math.rsqrt %0 : tensor<6xf32>
    %142 = vector.insertelement %false_7, %92[%c6 : index] : vector<1xi1>
    %143 = math.log2 %6 : tensor<6xf16>
    %dest_46, %accumulated_value_47 = vector.scan <maxsi>, %86, %92 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
    %alloc_48 = memref.alloc() : memref<4xf32>
    %144 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %alloc_48 : memref<4xf32>, memref<4xf32>) outs(%expanded_28 : tensor<1x4x1xf32>) {
    ^bb0(%in: f32, %in_65: f32, %out: f32):
      %241 = index.maxs %c14, %c6
      %inserted_66 = tensor.insert %c-24077_i16 into %16[%c0] : tensor<6xi16>
      %242 = affine.load %alloc[%c13] : memref<6xf32>
      %243 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * 32)>(%c12, %c6, %241, %26)
      %244 = vector.insertelement %false, %92[%c13 : index] : vector<1xi1>
      %expanded_67 = tensor.expand_shape %16 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
      %245 = scf.if %false -> (memref<1xf16>) {
        %270 = arith.minf %in_65, %out : f32
        %271 = vector.broadcast %c0 : index to vector<10xindex>
        %272 = vector.broadcast %false : i1 to vector<10xi1>
        %273 = vector.broadcast %c193400656_i32 : i32 to vector<10xi32>
        vector.scatter %alloc_12[%c0] [%271], %272, %273 : memref<1xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %274 = math.cos %cst_2 : f32
        %275 = index.ceildivs %243, %c2
        %276 = math.round %cst_3 : f32
        %expanded_70 = tensor.expand_shape %9 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
        %277 = vector.splat %cst : vector<1x4xf32>
        %278 = memref.realloc %alloc_16 : memref<1xi1> to memref<10xi1>
        %alloc_71 = memref.alloc() : memref<1xf16>
        scf.yield %alloc_71 : memref<1xf16>
      } else {
        memref.tensor_store %54, %alloc_20 : memref<1x4xi32>
        %270 = index.ceildivs %128, %23
        %271 = math.tan %in_65 : f32
        %272 = arith.subi %c-24077_i16, %extracted_30 : i16
        %273 = vector.broadcast %extracted_30 : i16 to vector<1x4xi16>
        %from_elements = tensor.from_elements %extracted, %c-12697_i16, %c-12697_i16, %c-24077_i16, %c-12697_i16, %extracted : tensor<6xi16>
        %274 = vector.bitcast %29 : vector<1xi16> to vector<1xi16>
        %275 = arith.divf %cst_5, %extracted_37 : f16
        %alloc_70 = memref.alloc() : memref<1xf16>
        scf.yield %alloc_70 : memref<1xf16>
      }
      %246 = arith.cmpf oeq, %cst_4, %in_65 : f32
      %247 = math.log1p %0 : tensor<6xf32>
      %248 = math.fpowi %15, %14 : tensor<6xf16>, tensor<6xi32>
      %249 = math.log %cst : f32
      %250 = vector.extract_strided_slice %109 {offsets = [2], sizes = [2], strides = [1]} : vector<6xi32> to vector<2xi32>
      %cast_68 = tensor.cast %14 : tensor<6xi32> to tensor<?xi32>
      %251 = vector.insert %60, %86 [0] : vector<4xi1> into vector<1x4xi1>
      %252 = memref.load %alloc_21[%c0] : memref<1xi64>
      %253 = math.atan %cst_5 : f16
      %254 = arith.muli %c681900122_i64, %c1686033321_i64 : i64
      %255 = vector.broadcast %cst_38 : f16 to vector<1x4xf16>
      %256 = arith.minf %cst_38, %cst_5 : f16
      %inserted_69 = tensor.insert %c193400656_i32 into %expanded[%c3, %c0] : tensor<6x1xi32>
      %257 = arith.minui %103, %c1686033321_i64 : i64
      %258 = arith.addf %cst, %242 : f32
      %259 = bufferization.to_memref %splat : memref<6xf32>
      %260 = vector.splat %c11 : vector<6xindex>
      %261 = vector.broadcast %c1 : index to vector<10xindex>
      %262 = vector.broadcast %true : i1 to vector<10xi1>
      %263 = vector.broadcast %cst_2 : f32 to vector<10xf32>
      vector.scatter %alloc[%c5] [%261], %262, %263 : memref<6xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %264 = index.maxu %rank_35, %c13
      %265 = vector.insertelement %true, %46[%c11 : index] : vector<4xi1>
      %266 = arith.shrsi %extracted_30, %extracted : i16
      %267 = arith.cmpf oeq, %cst_4, %cst_4 : f32
      %268 = vector.multi_reduction <minsi>, %108, %false [0] : vector<6xi1> to i1
      memref.assume_alignment %alloc_19, 4 : memref<1xf32>
      %269 = vector.bitcast %112 : vector<1xf16> to vector<1xf16>
      linalg.yield %cst_3 : f32
    } -> tensor<1x4x1xf32>
    %145 = index.maxs %rank_35, %26
    scf.execute_region {
      %241 = vector.broadcast %false_7 : i1 to vector<4x4xi1>
      %242 = vector.outerproduct %60, %46, %241 {kind = #vector.kind<add>} : vector<4xi1>, vector<4xi1>
      %243 = arith.remf %cst_3, %cst_1 : f32
      %244 = vector.insert %c-24077_i16, %29 [0] : i16 into vector<1xi16>
      %245 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %93, %119, %c193400656_i32 : vector<1xi32>, vector<1xi32> into i32
      %246 = math.log1p %cst_2 : f32
      %247 = math.absf %cst_5 : f16
      %248 = math.ctpop %10 : tensor<6xi16>
      %249 = arith.minf %cst_38, %cst_5 : f16
      %splat_65 = tensor.splat %c681900122_i64 : tensor<1x4xi64>
      %250 = vector.flat_transpose %107 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
      %expanded_66 = tensor.expand_shape %8 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
      %251 = arith.ori %c681900122_i64, %103 : i64
      %252 = affine.load %alloc_25[%c14] : memref<6xi16>
      %253 = vector.splat %c13 : vector<6xindex>
      %alloc_67 = memref.alloc() : memref<1xi32>
      bufferization.dealloc_tensor %9 : tensor<6xi16>
      scf.yield
    }
    %146 = math.round %expanded_28 : tensor<1x4x1xf32>
    %147 = math.copysign %cst_6, %cst_2 : f32
    %148 = vector.broadcast %c681900122_i64 : i64 to vector<10xi64>
    %149 = vector.broadcast %false : i1 to vector<10xi1>
    %150 = vector.maskedload %alloc_21[%c0], %149, %148 : memref<1xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
    %151 = index.maxu %23, %c4
    %152 = arith.maxf %extracted_37, %cst_38 : f16
    %153 = arith.cmpf olt, %cst_0, %cst_6 : f32
    %154 = vector.transpose %52, [0] : vector<1xi16> to vector<1xi16>
    %cast_49 = tensor.cast %splat : tensor<6xf32> to tensor<?xf32>
    %155 = arith.addi %103, %103 : i64
    %156 = index.casts %extracted : i16 to index
    %157 = arith.minui %c681900122_i64, %c1686033321_i64 : i64
    %158 = arith.shrui %extracted_30, %c-12697_i16 : i16
    %159 = vector.broadcast %true : i1 to vector<4x4xi1>
    %160 = vector.outerproduct %60, %47, %159 {kind = #vector.kind<minsi>} : vector<4xi1>, vector<4xi1>
    %161 = math.expm1 %15 : tensor<6xf16>
    %162 = scf.index_switch %c2 -> memref<6xf32> 
    case 1 {
      %collapsed_65 = tensor.collapse_shape %expanded [[0, 1]] : tensor<6x1xi32> into tensor<6xi32>
      %241 = tensor.empty() : tensor<4x6xi16>
      %242 = tensor.empty() : tensor<1x6xi16>
      %243 = linalg.matmul ins(%11, %241 : tensor<1x4xi16>, tensor<4x6xi16>) outs(%242 : tensor<1x6xi16>) -> tensor<1x6xi16>
      %244 = math.floor %8 : tensor<6xf16>
      %245 = math.ctpop %9 : tensor<6xi16>
      %246 = arith.cmpi sle, %extracted, %c-24077_i16 : i16
      %247 = index.maxu %rank, %c7
      %248 = vector.broadcast %cst_4 : f32 to vector<1xf32>
      bufferization.dealloc_tensor %15 : tensor<6xf16>
      %249 = math.exp %8 : tensor<6xf16>
      affine.store %extracted, %alloc_17[%c7, %c8] : memref<1x4xi16>
      affine.store %false_7, %alloc_10[%c8] : memref<6xi1>
      %250 = math.exp %cst_2 : f32
      %251 = tensor.empty() : tensor<4x4xf32>
      %252 = tensor.empty() : tensor<1x4xf32>
      %253 = linalg.matmul ins(%5, %251 : tensor<1x4xf32>, tensor<4x4xf32>) outs(%252 : tensor<1x4xf32>) -> tensor<1x4xf32>
      %254 = math.cos %cst_1 : f32
      %255 = math.ctlz %10 : tensor<6xi16>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %86, %46, %94 : vector<1x4xi1>, vector<4xi1> into vector<1xi1>
      scf.yield %alloc : memref<6xf32>
    }
    case 2 {
      %alloc_65 = memref.alloc() : memref<1xf32>
      %extracted_66 = tensor.extract %8[%c0] : tensor<6xf16>
      %241 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
      %242 = vector.gather %14[%65] [%241], %86, %241 : tensor<6xi32>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi32> into vector<1x4xi32>
      affine.store %cst_1, %alloc[%c7] : memref<6xf32>
      %243 = arith.cmpi ne, %extracted_30, %c-12697_i16 : i16
      %244 = arith.muli %extracted_30, %c-12697_i16 : i16
      %245 = math.ceil %15 : tensor<6xf16>
      %246 = arith.maxf %cst, %cst_0 : f32
      %247 = arith.floordivsi %true, %true : i1
      %248 = affine.max affine_map<(d0, d1, d2) -> (d0 * 8)>(%c0, %65, %c9)
      %expanded_67 = tensor.expand_shape %8 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
      %249 = vector.splat %rank_35 : vector<6xindex>
      %250 = arith.shrsi %false_7, %true : i1
      %251 = tensor.empty() : tensor<6xi1>
      %mapped_68 = linalg.map ins(%alloc_10 : memref<6xi1>) outs(%251 : tensor<6xi1>)
        (%in: i1) {
          %expanded_69 = tensor.expand_shape %1 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
          %254 = arith.maxf %cst_2, %cst_6 : f32
          %255 = arith.cmpf une, %cst, %cst_0 : f32
          %256 = arith.divsi %extracted, %c-24077_i16 : i16
          %expanded_70 = tensor.expand_shape %0 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
          %inserted_71 = tensor.insert %c-24077_i16 into %12[%c0, %c3] : tensor<1x4xi16>
          %257 = vector.bitcast %119 : vector<1xi32> to vector<1xi32>
          %258 = vector.flat_transpose %43 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
          %259 = affine.max affine_map<(d0) -> ((d0 * 2) mod 64, (((d0 * 2) mod 64) * 2) floordiv 32 - 2, (d0 * 2) mod 64 - 64)>(%c11)
          %260 = math.log2 %15 : tensor<6xf16>
          %261 = math.copysign %expanded_70, %expanded_70 : tensor<6x1xf32>
          %262 = vector.insert %false, %149 [6] : i1 into vector<10xi1>
          %alloc_72 = memref.alloc() : memref<6xi64>
          %inserted_73 = tensor.insert %false into %35[%c0] : tensor<1xi1>
          vector.print %92 : vector<1xi1>
          %263 = index.casts %false_7 : i1 to index
          %264 = arith.minf %extracted_66, %cst_5 : f16
          vector.print %52 : vector<1xi16>
          %265 = vector.broadcast %true : i1 to vector<10x10xi1>
          %266 = vector.outerproduct %149, %149, %265 {kind = #vector.kind<mul>} : vector<10xi1>, vector<10xi1>
          %267 = arith.cmpf ule, %cst_6, %cst_6 : f32
          %268 = vector.broadcast %c9 : index to vector<6xindex>
          vector.scatter %alloc_10[%c0] [%268], %108, %108 : memref<6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %269 = arith.shrui %false, %in : i1
          %270 = arith.floordivsi %false_7, %true : i1
          vector.print %86 : vector<1x4xi1>
          %inserted_74 = tensor.insert %cst_0 into %cast_36[%c0] : tensor<?xf32>
          %271 = index.ceildivs %c13, %248
          %272 = math.ipowi %21, %21 : tensor<i16>
          %273 = vector.insert %c1972338048_i64, %67 [2] : i64 into vector<6xi64>
          %274 = vector.broadcast %c1972338048_i64 : i64 to vector<1xi64>
          %275 = vector.maskedload %alloc_21[%c0], %92, %274 : memref<1xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %276 = bufferization.to_memref %13 : memref<6xi1>
          %277 = math.atan2 %cst_5, %cst_5 : f16
          %278 = index.add %c4, %c12
          %true_75 = arith.constant true
          linalg.yield %true_75 : i1
        }
      %252 = vector.bitcast %67 : vector<6xi64> to vector<6xi64>
      %253 = arith.mulf %cst_4, %cst_1 : f32
      scf.yield %alloc : memref<6xf32>
    }
    default {
      %241 = math.fma %0, %0, %splat : tensor<6xf32>
      %242 = tensor.empty() : tensor<6xi16>
      %mapped_65 = linalg.map ins(%9 : tensor<6xi16>) outs(%242 : tensor<6xi16>)
        (%in: i16) {
          %255 = arith.floordivsi %in, %c-24077_i16 : i16
          memref.assume_alignment %140, 16 : memref<i1>
          %256 = math.expm1 %cst_0 : f32
          %257 = arith.shli %c1972338048_i64, %103 : i64
          %258 = arith.addi %false_7, %true : i1
          bufferization.dealloc_tensor %expanded : tensor<6x1xi32>
          %259 = arith.floordivsi %c1686033321_i64, %c1972338048_i64 : i64
          %260 = arith.maxui %c1972338048_i64, %c1972338048_i64 : i64
          %261 = vector.insert %103, %150 [8] : i64 into vector<10xi64>
          %262 = index.castu %c-24077_i16 : i16 to index
          %263 = arith.maxsi %c-24077_i16, %in : i16
          %alloca_70 = memref.alloca() : memref<1xi16>
          %264 = vector.insertelement %cst_38, %112[%rank_35 : index] : vector<1xf16>
          %265 = vector.insert %47, %96 [0] : vector<4xi1> into vector<1x4xi1>
          affine.store %false, %140[] : memref<i1>
          memref.tensor_store %4, %alloc_18 : memref<6xi32>
          %266 = vector.splat %c9 : vector<1xindex>
          %267 = math.cos %splat : tensor<6xf32>
          %268 = index.ceildivu %145, %23
          %269 = math.atan2 %extracted_37, %extracted_32 : f16
          %270 = math.ctlz %c1686033321_i64 : i64
          %271 = arith.muli %c1686033321_i64, %c1686033321_i64 : i64
          %272 = bufferization.clone %alloc_24 : memref<i1> to memref<i1>
          %273 = arith.divf %cst_3, %cst_2 : f32
          %274 = index.divu %c10, %c1
          %cast_71 = tensor.cast %6 : tensor<6xf16> to tensor<?xf16>
          %275 = memref.atomic_rmw ori %c-12697_i16, %alloc_22[%c2] : (i16, memref<6xi16>) -> i16
          %276 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
          %277 = vector.gather %2[%rank_35] [%276], %86, %95 : tensor<6xi64>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi64> into vector<1x4xi64>
          %278 = arith.minui %false, %false : i1
          %279 = index.ceildivs %274, %c2
          affine.store %c193400656_i32, %alloc_12[%c9] : memref<1xi32>
          %280 = index.floordivs %c4, %c14
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %243 = arith.cmpf uno, %cst_2, %cst : f32
      %244 = math.atan2 %15, %15 : tensor<6xf16>
      %alloc_66 = memref.alloc() : memref<4xf32>
      %245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_66 : memref<4xf32>) outs(%expanded_28 : tensor<1x4x1xf32>) {
      ^bb0(%in: f32, %out: f32):
        %255 = math.powf %cst_0, %cst : f32
        %256 = vector.broadcast %extracted_30 : i16 to vector<6xi16>
        %257 = vector.gather %alloc_22[%c4] [%109], %108, %256 : memref<6xi16>, vector<6xi32>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %splat_70 = tensor.splat %103 : tensor<1xi64>
        %258 = math.tan %cst_6 : f32
        %259 = vector.splat %103 : vector<1x4xi64>
        %alloca_71 = memref.alloca() : memref<6xf32>
        %inserted_72 = tensor.insert %cst into %0[%c0] : tensor<6xf32>
        %260 = arith.minf %cst, %in : f32
        %splat_73 = tensor.splat %c-24077_i16 : tensor<1xi16>
        %261 = math.fma %0, %0, %splat : tensor<6xf32>
        %262 = vector.broadcast %rank : index to vector<4xindex>
        vector.scatter %140[] [%262], %47, %47 : memref<i1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %139, %93, %c193400656_i32 : vector<1xi32>, vector<1xi32> into i32
        %264 = index.divs %c11, %125
        %265 = bufferization.clone %alloc_14 : memref<6xf16> to memref<6xf16>
        %collapsed_74 = tensor.collapse_shape %11 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
        %266 = affine.min affine_map<(d0) -> ((d0 floordiv 32 - 16) * 64, d0 floordiv 32 - 16, (d0 floordiv 32) * 2)>(%145)
        %267 = vector.multi_reduction <add>, %109, %109 [] : vector<6xi32> to vector<6xi32>
        %268 = math.expm1 %cst_0 : f32
        %269 = arith.muli %c681900122_i64, %c1972338048_i64 : i64
        %splat_75 = tensor.splat %cst : tensor<1xf32>
        %270 = arith.cmpi ult, %103, %c1972338048_i64 : i64
        %271 = arith.mulf %extracted_37, %cst_5 : f16
        %272 = math.floor %6 : tensor<6xf16>
        %273 = math.exp %cst_4 : f32
        %inserted_76 = tensor.insert %c193400656_i32 into %4[%c0] : tensor<6xi32>
        %274 = vector.broadcast %c681900122_i64 : i64 to vector<4xi64>
        %275 = vector.insert %274, %95 [0] : vector<4xi64> into vector<1x4xi64>
        %276 = math.ipowi %false, %false_7 : i1
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 128, d0 + d1 + 4)>(%c2, %c12, %c13, %128)
        %278 = arith.floordivsi %false_7, %false_7 : i1
        %279 = arith.subi %c-12697_i16, %extracted_30 : i16
        %280 = arith.muli %extracted, %extracted_30 : i16
        memref.store %cst_2, %alloc_15[%c0, %c0] : memref<1x4xf32>
        linalg.yield %cst_3 : f32
      } -> tensor<1x4x1xf32>
      %246 = index.ceildivs %23, %c6
      %247 = vector.matrix_multiply %47, %108 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<4xi1>, vector<6xi1>) -> vector<6xi1>
      %dest_67, %accumulated_value_68 = vector.scan <minui>, %86, %92 {inclusive = true, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
      %248 = vector.maskedload %alloc_10[%c5], %149, %149 : memref<6xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %249 = scf.while (%arg1 = %121) : (vector<1xf16>) -> vector<1xf16> {
        %255 = arith.ceildivsi %false_7, %false_7 : i1
        %256 = arith.ceildivsi %true, %false_7 : i1
        %257 = arith.cmpf oeq, %cst_6, %cst_2 : f32
        %dest_70, %accumulated_value_71 = vector.scan <and>, %86, %94 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
        %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %109, %109, %c193400656_i32 : vector<6xi32>, vector<6xi32> into i32
        %259 = arith.mulf %cst_4, %cst : f32
        %260 = vector.broadcast %extracted_30 : i16 to vector<i16>
        %261 = vector.transfer_write %260, %3[%23] : vector<i16>, tensor<6xi16>
        %cast_72 = tensor.cast %4 : tensor<6xi32> to tensor<?xi32>
        scf.condition(%false) %121 : vector<1xf16>
      } do {
      ^bb0(%arg1: vector<1xf16>):
        %255 = vector.broadcast %rank_41 : index to vector<6xindex>
        %256 = vector.broadcast %c-24077_i16 : i16 to vector<6xi16>
        vector.scatter %alloc_11[%c4] [%255], %247, %256 : memref<6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %257 = vector.insertelement %true, %46[%133 : index] : vector<4xi1>
        %258 = math.sqrt %cst : f32
        %259 = arith.remsi %extracted_30, %extracted : i16
        %260 = index.ceildivs %c9, %c15
        %261 = math.ctpop %17 : tensor<6xi16>
        %262 = math.atan2 %15, %6 : tensor<6xf16>
        %263 = math.ipowi %103, %c681900122_i64 : i64
        %264 = math.log10 %cst_5 : f16
        %265 = vector.extract_strided_slice %93 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %266 = vector.reduction <xor>, %68 : vector<3xi1> into i1
        %267 = index.castu %false_7 : i1 to index
        %268 = vector.gather %alloc_19[%rank_41] [%109], %108, %110 : memref<1xf32>, vector<6xi32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %269 = vector.splat %false_7 : vector<6xi1>
        %270 = arith.muli %true, %false : i1
        %271 = arith.cmpi sle, %false_7, %false_7 : i1
        scf.yield %112 : vector<1xf16>
      }
      %250 = math.fpowi %cst_38, %c193400656_i32 : f16, i32
      %251 = arith.shli %c681900122_i64, %c1686033321_i64 : i64
      %252 = arith.floordivsi %false, %true : i1
      %253 = arith.muli %c-12697_i16, %extracted : i16
      %extracted_69 = tensor.extract %242[%c0] : tensor<6xi16>
      %254 = index.divu %151, %c5
      scf.yield %alloc : memref<6xf32>
    }
    %dest_50, %accumulated_value_51 = vector.scan <and>, %86, %92 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
    %generated = tensor.generate %145 {
    ^bb0(%arg1: index, %arg2: index):
      %241 = math.roundeven %8 : tensor<6xf16>
      %242 = vector.gather %alloc_12[%151] [%109], %108, %109 : memref<1xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %243 = index.maxs %c4, %c9
      %extracted_65 = tensor.extract %17[%c3] : tensor<6xi16>
      tensor.yield %extracted_65 : i16
    } : tensor<?x4xi16>
    %163 = math.fma %cst_38, %cst_38, %cst_38 : f16
    %164 = math.sqrt %5 : tensor<1x4xf32>
    %165 = arith.mulf %cst_5, %extracted_37 : f16
    %166 = index.maxs %c13, %26
    memref.assume_alignment %alloc_18, 4 : memref<6xi32>
    %167 = arith.floordivsi %true, %true : i1
    vector.print %95 : vector<1x4xi64>
    %168 = scf.while (%arg1 = %true) : (i1) -> i1 {
      %241 = math.log10 %splat : tensor<6xf32>
      %242 = arith.mulf %cst_5, %extracted_37 : f16
      %extracted_65 = tensor.extract %expanded[%c1, %c0] : tensor<6x1xi32>
      %243 = arith.addf %cst_6, %cst_0 : f32
      %collapsed_66 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
      %244 = arith.divsi %extracted_65, %extracted_65 : i32
      %245 = affine.max affine_map<(d0) -> (-d0, -d0)>(%c10)
      bufferization.dealloc_tensor %17 : tensor<6xi16>
      scf.condition(%false) %arg1 : i1
    } do {
    ^bb0(%arg1: i1):
      %241 = vector.broadcast %false_7 : i1 to vector<4x4xi1>
      %242 = vector.outerproduct %47, %47, %241 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
      %243 = index.add %c3, %145
      %244 = scf.while (%arg2 = %alloc_22) : (memref<6xi16>) -> memref<6xi16> {
        %258 = vector.extract %86[0] : vector<1x4xi1>
        memref.copy %alloc_11, %alloc_22 : memref<6xi16> to memref<6xi16>
        %259 = math.exp %6 : tensor<6xf16>
        %260 = math.fpowi %splat, %14 : tensor<6xf32>, tensor<6xi32>
        %261 = bufferization.to_memref %13 : memref<6xi1>
        %262 = arith.maxsi %arg1, %true : i1
        %alloc_67 = memref.alloc() : memref<4x1xi16>
        %263 = tensor.empty() : tensor<1x1xi16>
        %264 = linalg.matmul ins(%12, %alloc_67 : tensor<1x4xi16>, memref<4x1xi16>) outs(%263 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %265 = arith.addf %cst_0, %cst_4 : f32
        scf.condition(%true) %alloc_25 : memref<6xi16>
      } do {
      ^bb0(%arg2: memref<6xi16>):
        %258 = vector.insert %false, %60 [1] : i1 into vector<4xi1>
        %259 = arith.divf %cst_5, %cst_5 : f16
        %260 = vector.extract_strided_slice %107 {offsets = [1], sizes = [4], strides = [1]} : vector<6xf32> to vector<4xf32>
        %261 = arith.maxsi %extracted, %extracted_30 : i16
        %262 = index.divu %156, %151
        %263 = index.sizeof
        %264 = arith.maxsi %c-12697_i16, %extracted : i16
        vector.print %148 : vector<10xi64>
        %265 = index.floordivs %c13, %c14
        %266 = arith.cmpf uno, %cst, %cst_0 : f32
        %267 = arith.maxsi %extracted, %c-12697_i16 : i16
        %268 = arith.divf %cst_2, %cst_0 : f32
        %269 = math.exp %cst_6 : f32
        %270 = arith.ceildivsi %c681900122_i64, %c681900122_i64 : i64
        %271 = index.add %243, %c2
        %272 = arith.addf %extracted_37, %cst_38 : f16
        scf.yield %alloc_25 : memref<6xi16>
      }
      %245 = arith.cmpf oeq, %cst_3, %cst : f32
      %246 = math.log %6 : tensor<6xf16>
      %247 = scf.while (%arg2 = %alloc_24) : (memref<i1>) -> memref<i1> {
        bufferization.dealloc_tensor %9 : tensor<6xi16>
        %258 = arith.shrsi %extracted_30, %extracted_30 : i16
        %rank_67 = tensor.rank %15 : tensor<6xf16>
        %259 = arith.subi %103, %c1972338048_i64 : i64
        %260 = math.log10 %cst_3 : f32
        %261 = vector.insertelement %c193400656_i32, %93[%128 : index] : vector<1xi32>
        %262 = math.fpowi %cst, %c193400656_i32 : f32, i32
        %263 = arith.mulf %cst_0, %cst_2 : f32
        scf.condition(%true) %alloc_24 : memref<i1>
      } do {
      ^bb0(%arg2: memref<i1>):
        bufferization.dealloc_tensor %13 : tensor<6xi1>
        %258 = vector.insert %c-24077_i16, %43 [0] : i16 into vector<1xi16>
        %259 = math.exp %cst_38 : f16
        %260 = vector.multi_reduction <add>, %110, %cst_3 [0] : vector<6xf32> to f32
        bufferization.dealloc_tensor %6 : tensor<6xf16>
        %261 = arith.addi %c681900122_i64, %c1972338048_i64 : i64
        %262 = math.log10 %0 : tensor<6xf32>
        %263 = bufferization.clone %alloc_18 : memref<6xi32> to memref<6xi32>
        %264 = vector.create_mask %166 : vector<6xi1>
        %265 = math.log1p %0 : tensor<6xf32>
        %266 = arith.addf %extracted_32, %cst_5 : f16
        %267 = tensor.empty() : tensor<4x10xi16>
        %268 = tensor.empty() : tensor<1x10xi16>
        %269 = linalg.matmul ins(%11, %267 : tensor<1x4xi16>, tensor<4x10xi16>) outs(%268 : tensor<1x10xi16>) -> tensor<1x10xi16>
        affine.store %false_7, %alloc_16[%c9] : memref<1xi1>
        vector.print %119 : vector<1xi32>
        %270 = affine.load %alloc[%c3] : memref<6xf32>
        %false_67 = index.bool.constant false
        scf.yield %alloc_24 : memref<i1>
      }
      %248 = scf.while (%arg2 = %47) : (vector<4xi1>) -> vector<4xi1> {
        %rank_67 = tensor.rank %17 : tensor<6xi16>
        %258 = vector.extract_strided_slice %29 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %259 = arith.addi %103, %c1972338048_i64 : i64
        %260 = memref.load %alloc_11[%c1] : memref<6xi16>
        %261 = bufferization.clone %alloc_8 : memref<1xi1> to memref<1xi1>
        %262 = math.log2 %cst_0 : f32
        %263 = vector.gather %alloc_8[%c2] [%109], %108, %108 : memref<1xi1>, vector<6xi32>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %264 = math.fpowi %cst_5, %c193400656_i32 : f16, i32
        scf.condition(%arg1) %47 : vector<4xi1>
      } do {
      ^bb0(%arg2: vector<4xi1>):
        %splat_67 = tensor.splat %cst_1 : tensor<6xf32>
        %258 = arith.cmpf uge, %cst_38, %extracted_32 : f16
        %259 = arith.subi %c193400656_i32, %c193400656_i32 : i32
        %260 = affine.load %alloc_8[%c9] : memref<1xi1>
        %261 = arith.mulf %extracted_32, %extracted_32 : f16
        %262 = bufferization.to_memref %16 : memref<6xi16>
        %alloc_68 = memref.alloc() : memref<1xi32>
        %rank_69 = tensor.rank %cast_36 : tensor<?xf32>
        %263 = index.divu %c2, %rank_41
        %alloca_70 = memref.alloca() : memref<1x4xf16>
        %264 = memref.load %alloc_10[%c2] : memref<6xi1>
        %265 = math.ctpop %collapsed : tensor<4xi16>
        %collapsed_71 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x4xi16> into tensor<?xi16>
        %266 = math.ctlz %12 : tensor<1x4xi16>
        %267 = arith.addf %cst_2, %cst : f32
        %alloca_72 = memref.alloca() : memref<1xi64>
        scf.yield %47 : vector<4xi1>
      }
      %249 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %119, %93, %c193400656_i32 : vector<1xi32>, vector<1xi32> into i32
      %250 = scf.execute_region -> tensor<6xi64> {
        bufferization.dealloc_tensor %12 : tensor<1x4xi16>
        %258 = math.floor %6 : tensor<6xf16>
        %259 = arith.shli %103, %c681900122_i64 : i64
        %260 = vector.bitcast %94 : vector<1xi1> to vector<1xi1>
        %261 = arith.maxf %cst_0, %cst : f32
        %262 = arith.shrsi %true, %false_7 : i1
        %263 = math.cos %extracted_37 : f16
        %dest_67, %accumulated_value_68 = vector.scan <or>, %96, %94 {inclusive = true, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
        bufferization.dealloc_tensor %11 : tensor<1x4xi16>
        %264 = vector.transpose %260, [0] : vector<1xi1> to vector<1xi1>
        %265 = affine.min affine_map<(d0) -> (-d0, -d0)>(%c3)
        %266 = math.exp %cst_1 : f32
        %alloca_69 = memref.alloca() : memref<6xi16>
        %dest_70, %accumulated_value_71 = vector.scan <or>, %86, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4xi1>, vector<4xi1>
        %267 = index.ceildivu %65, %c0
        %268 = vector.broadcast %c-12697_i16 : i16 to vector<1x1xi16>
        %269 = vector.outerproduct %43, %19, %268 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
        scf.yield %2 : tensor<6xi64>
      }
      %cst_65 = arith.constant 1.000000e+00 : f16
      %cst_66 = arith.constant 0.000000e+00 : f16
      %251 = vector.transfer_read %6[%156], %cst_66 : tensor<6xf16>, vector<f16>
      %252 = math.exp %splat : tensor<6xf32>
      %253 = index.ceildivs %26, %151
      %254 = memref.load %alloc_9[%c0] : memref<1xi1>
      %255 = index.maxu %65, %23
      %256 = vector.extract %95[0] : vector<1x4xi64>
      %257 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1, d1, d1, d3 ceildiv 16)>(%c1, %c12, %c2, %c13)
      scf.yield %true : i1
    }
    %169 = index.maxs %c14, %c7
    %rank_52 = tensor.rank %11 : tensor<1x4xi16>
    %170 = arith.shrui %extracted, %c-12697_i16 : i16
    %171 = math.ctpop %35 : tensor<1xi1>
    %172 = vector.insertelement %c-24077_i16, %19[%c5 : index] : vector<1xi16>
    %173 = arith.mulf %cst_3, %cst_6 : f32
    %174 = vector.create_mask %23 : vector<6xi1>
    affine.store %false_7, %alloc_9[%c6] : memref<1xi1>
    bufferization.dealloc_tensor %15 : tensor<6xf16>
    %175 = math.cos %cst_0 : f32
    %176 = vector.broadcast %c1686033321_i64 : i64 to vector<4xi64>
    %dest_53, %accumulated_value_54 = vector.scan <mul>, %95, %176 {inclusive = true, reduction_dim = 0 : i64} : vector<1x4xi64>, vector<4xi64>
    %177 = arith.remsi %extracted, %c-24077_i16 : i16
    %178 = vector.multi_reduction <minui>, %148, %c681900122_i64 [0] : vector<10xi64> to i64
    %alloc_55 = memref.alloc() : memref<1xi16>
    memref.tensor_store %1, %alloc_55 : memref<1xi16>
    vector.print %139 : vector<1xi32>
    %179 = arith.ceildivsi %true, %true : i1
    %180 = vector.flat_transpose %60 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %181 = vector.maskedload %alloc_16[%c0], %92, %94 : memref<1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %182 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
    %183 = vector.outerproduct %107, %110, %182 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
    %184 = scf.execute_region -> memref<6xi64> {
      %241 = vector.extract %93[0] : vector<1xi32>
      %alloc_65 = memref.alloc() : memref<1xi32>
      %242 = index.add %rank, %c0
      %243 = arith.cmpf ule, %extracted_32, %cst_38 : f16
      %244 = arith.remf %cst_38, %extracted_37 : f16
      %245 = arith.shli %c1972338048_i64, %c1972338048_i64 : i64
      %246 = vector.flat_transpose %108 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
      %247 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %181, %92, %false_7 : vector<1xi1>, vector<1xi1> into i1
      %248 = math.fpowi %cst_6, %c193400656_i32 : f32, i32
      %249 = tensor.empty() : tensor<6xf16>
      %mapped_66 = linalg.map ins(%83 : memref<6xf16>) outs(%249 : tensor<6xf16>)
        (%in: f16) {
          %254 = arith.addi %extracted_30, %extracted_30 : i16
          %255 = arith.ori %extracted_30, %extracted_30 : i16
          %256 = vector.matrix_multiply %93, %109 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xi32>, vector<6xi32>) -> vector<6xi32>
          %257 = math.exp %cst_3 : f32
          %258 = arith.minf %cst_4, %cst_3 : f32
          %259 = arith.minui %false_7, %false_7 : i1
          %alloc_70 = memref.alloc() : memref<1xi32>
          %260 = index.add %c2, %rank_52
          %alloc_71 = memref.alloc() : memref<6xi1>
          %261 = math.exp %cst_4 : f32
          %262 = vector.flat_transpose %108 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
          %alloca_72 = memref.alloca() : memref<6xi64>
          %263 = index.maxs %rank, %rank_41
          %264 = arith.maxsi %extracted, %c-12697_i16 : i16
          %265 = index.castu %c15 : index to i32
          %266 = index.divs %c14, %c7
          %rank_73 = tensor.rank %15 : tensor<6xf16>
          vector.print %109 : vector<6xi32>
          bufferization.dealloc_tensor %9 : tensor<6xi16>
          %267 = arith.muli %extracted, %c-24077_i16 : i16
          %268 = arith.xori %extracted_30, %c-12697_i16 : i16
          %269 = math.expm1 %cst_4 : f32
          %alloc_74 = memref.alloc() : memref<1x4xi1>
          %270 = vector.gather %alloc_74[%c9, %c8] [%109], %108, %246 : memref<1x4xi1>, vector<6xi32>, vector<6xi1>, vector<6xi1> into vector<6xi1>
          memref.tensor_store %4, %alloc_18 : memref<6xi32>
          %271 = index.castu %rank_52 : index to i32
          %expanded_75 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<6x1xi32> into tensor<6x1x1xi32>
          %272 = vector.broadcast %extracted_32 : f16 to vector<6xf16>
          %273 = vector.gather %6[%c7] [%109], %270, %272 : tensor<6xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
          %274 = vector.insertelement %cst_38, %121[%128 : index] : vector<1xf16>
          %275 = vector.insertelement %extracted, %19[%rank : index] : vector<1xi16>
          %276 = vector.broadcast %c1972338048_i64 : i64 to vector<1xi64>
          %277 = vector.insert %c193400656_i32, %139 [0] : i32 into vector<1xi32>
          %278 = math.exp %6 : tensor<6xf16>
          %cst_76 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_76 : f16
        }
      vector.print %139 : vector<1xi32>
      %dest_67, %accumulated_value_68 = vector.scan <and>, %86, %181 {inclusive = true, reduction_dim = 1 : i64} : vector<1x4xi1>, vector<1xi1>
      %250 = arith.cmpi ugt, %false_7, %false_7 : i1
      %251 = math.atan2 %cst_38, %cst_5 : f16
      %252 = math.atan %cst_1 : f32
      %253 = math.expm1 %cst_3 : f32
      %alloc_69 = memref.alloc() : memref<6xi64>
      scf.yield %alloc_69 : memref<6xi64>
    }
    %185 = arith.subi %c193400656_i32, %c193400656_i32 : i32
    %expanded_56 = tensor.expand_shape %35 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
    scf.index_switch %166 
    case 1 {
      %241 = arith.floordivsi %true, %true : i1
      %242 = arith.maxf %cst_38, %cst_5 : f16
      %243 = tensor.empty() : tensor<4xi16>
      %mapped_65 = linalg.map ins(%collapsed, %collapsed, %collapsed : tensor<4xi16>, tensor<4xi16>, tensor<4xi16>) outs(%243 : tensor<4xi16>)
        (%in: i16, %in_69: i16, %in_70: i16) {
          %256 = memref.load %alloc_19[%c0] : memref<1xf32>
          %257 = math.floor %8 : tensor<6xf16>
          %258 = vector.splat %true : vector<6xi1>
          %259 = vector.extract %96[0] : vector<1x4xi1>
          %260 = arith.minf %cst_1, %cst_0 : f32
          bufferization.dealloc_tensor %13 : tensor<6xi1>
          memref.copy %alloc_14, %83 : memref<6xf16> to memref<6xf16>
          %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %107, %110, %cst : vector<6xf32>, vector<6xf32> into f32
          affine.store %c681900122_i64, %184[%c3] : memref<6xi64>
          %262 = vector.broadcast %c1972338048_i64 : i64 to vector<4x4xi64>
          %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %95, %95, %262 : vector<1x4xi64>, vector<1x4xi64> into vector<4x4xi64>
          %264 = math.tanh %15 : tensor<6xf16>
          %265 = arith.shrsi %c1686033321_i64, %103 : i64
          %cast_71 = tensor.cast %1 : tensor<1xi16> to tensor<?xi16>
          affine.store %c193400656_i32, %alloc_12[%c7] : memref<1xi32>
          %extracted_72 = tensor.extract %9[%c5] : tensor<6xi16>
          %266 = vector.multi_reduction <minf>, %110, %cst_6 [0] : vector<6xf32> to f32
          %rank_73 = tensor.rank %2 : tensor<6xi64>
          %267 = arith.maxsi %in_70, %in_69 : i16
          %268 = math.cos %cst_0 : f32
          %269 = vector.multi_reduction <minui>, %96, %true [0, 1] : vector<1x4xi1> to i1
          %270 = vector.broadcast %c681900122_i64 : i64 to vector<10x10xi64>
          %271 = vector.outerproduct %150, %148, %270 {kind = #vector.kind<mul>} : vector<10xi64>, vector<10xi64>
          affine.store %c193400656_i32, %alloc_12[%c12] : memref<1xi32>
          %272 = vector.splat %125 : vector<1xindex>
          %273 = arith.divsi %178, %c681900122_i64 : i64
          %274 = vector.broadcast %cst : f32 to vector<6xf32>
          %275 = arith.cmpi ult, %in_70, %c-12697_i16 : i16
          %276 = arith.mulf %cst_5, %cst_5 : f16
          %277 = math.log %cst_5 : f16
          %278 = arith.mulf %cst_0, %cst_0 : f32
          %279 = arith.ori %178, %c1686033321_i64 : i64
          %280 = arith.maxf %extracted_32, %extracted_37 : f16
          %281 = math.sqrt %15 : tensor<6xf16>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %244 = math.exp %6 : tensor<6xf16>
      %245 = arith.ceildivsi %c1686033321_i64, %c1972338048_i64 : i64
      %246 = arith.muli %c-12697_i16, %c-24077_i16 : i16
      %247 = vector.broadcast %c193400656_i32 : i32 to vector<6x6xi32>
      %248 = vector.outerproduct %109, %109, %247 {kind = #vector.kind<add>} : vector<6xi32>, vector<6xi32>
      %true_66 = index.bool.constant true
      %rank_67 = tensor.rank %14 : tensor<6xi32>
      %249 = vector.broadcast %extracted_30 : i16 to vector<1x1xi16>
      %250 = vector.outerproduct %52, %29, %249 {kind = #vector.kind<or>} : vector<1xi16>, vector<1xi16>
      %251 = vector.insert %c193400656_i32, %109 [5] : i32 into vector<6xi32>
      %252 = math.floor %cst_5 : f16
      %253 = math.sqrt %cst_4 : f32
      %cast_68 = tensor.cast %4 : tensor<6xi32> to tensor<?xi32>
      %254 = arith.addi %c-24077_i16, %c-24077_i16 : i16
      %255 = vector.bitcast %93 : vector<1xi32> to vector<1xf32>
      scf.yield
    }
    case 2 {
      %241 = index.casts %133 : index to i32
      %242 = math.cos %6 : tensor<6xf16>
      scf.index_switch %65 
      case 1 {
        %rank_66 = tensor.rank %17 : tensor<6xi16>
        %256 = index.casts %extracted_30 : i16 to index
        %257 = vector.reduction <maxf>, %107 : vector<6xf32> into f32
        %258 = affine.load %alloc_10[%c11] : memref<6xi1>
        %259 = math.sqrt %cst_38 : f16
        %260 = arith.shrsi %c681900122_i64, %178 : i64
        %261 = arith.remf %cst_3, %cst_2 : f32
        %262 = math.ceil %cst_2 : f32
        %263 = arith.minf %extracted_32, %extracted_37 : f16
        %264 = bufferization.to_memref %2 : memref<6xi64>
        %265 = affine.min affine_map<(d0, d1) -> (0, d0)>(%rank_35, %133)
        %266 = index.castu %extracted : i16 to index
        %267 = vector.maskedload %264[%c1], %108, %67 : memref<6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        memref.store %c193400656_i32, %alloc_12[%c0] : memref<1xi32>
        %268 = index.ceildivs %c0, %26
        %269 = arith.andi %c681900122_i64, %c1972338048_i64 : i64
        scf.yield
      }
      default {
        %256 = affine.min affine_map<(d0, d1, d2) -> (0, d2 mod 32, d0 - 64, d2 - 16)>(%145, %26, %166)
        %257 = arith.shli %c1972338048_i64, %c1972338048_i64 : i64
        %258 = math.round %cst_38 : f16
        affine.store %false, %alloc_8[%c8] : memref<1xi1>
        %259 = arith.maxui %false_7, %false : i1
        %260 = arith.cmpf false, %cst, %cst_0 : f32
        %cast_66 = tensor.cast %11 : tensor<1x4xi16> to tensor<?x?xi16>
        %261 = vector.gather %4[%c13] [%93], %94, %139 : tensor<6xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %262 = arith.remf %cst, %cst_1 : f32
        %cast_67 = tensor.cast %3 : tensor<6xi16> to tensor<?xi16>
        %263 = bufferization.clone %alloc : memref<6xf32> to memref<6xf32>
        %264 = vector.extract %149[4] : vector<10xi1>
        %cst_68 = arith.constant 1.000000e+00 : f16
        %cst_69 = arith.constant 0.000000e+00 : f16
        %265 = vector.transfer_read %6[%23], %cst_69 : tensor<6xf16>, vector<f16>
        %266 = vector.extract %107[0] : vector<6xf32>
        %extracted_70 = tensor.extract %54[%c0, %c2] : tensor<1x4xi32>
        %267 = arith.cmpf ule, %cst_68, %cst_5 : f16
      }
      %243 = math.absf %cst_2 : f32
      %244 = vector.insert %true, %46 [1] : i1 into vector<4xi1>
      %245 = arith.subi %false, %true : i1
      %246 = arith.floordivsi %c1972338048_i64, %c1972338048_i64 : i64
      %247 = index.add %c11, %169
      %248 = math.atan2 %cst_0, %cst : f32
      %249 = tensor.empty() : tensor<1x4xi1>
      %250 = vector.gather %249[%c14, %c9] [%119], %94, %181 : tensor<1x4xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %251 = arith.maxsi %false_7, %true : i1
      %252 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 128 + d1 mod 4)>(%c5, %23, %c0, %c12)
      %253 = math.expm1 %cst_1 : f32
      %254 = arith.minsi %103, %c1686033321_i64 : i64
      %collapsed_65 = tensor.collapse_shape %11 [[0, 1]] : tensor<1x4xi16> into tensor<4xi16>
      %255 = arith.cmpf ugt, %cst_0, %cst_2 : f32
      scf.yield
    }
    default {
      %241 = affine.load %alloc_20[%c1, %c2] : memref<1x4xi32>
      %242 = arith.addi %178, %c1686033321_i64 : i64
      %243 = arith.andi %103, %178 : i64
      %244 = index.maxs %151, %rank_41
      %245 = index.casts %c12 : index to i32
      %246 = arith.cmpi ugt, %c193400656_i32, %c193400656_i32 : i32
      %rank_65 = tensor.rank %14 : tensor<6xi32>
      %247 = math.ctlz %10 : tensor<6xi16>
      %cast_66 = tensor.cast %14 : tensor<6xi32> to tensor<?xi32>
      memref.tensor_store %9, %alloc_25 : memref<6xi16>
      %248 = arith.cmpi sgt, %c193400656_i32, %241 : i32
      %249 = tensor.empty() : tensor<1x1xi1>
      %250 = linalg.matmul ins(%expanded_56, %expanded_56 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%249 : tensor<1x1xi1>) -> tensor<1x1xi1>
      %251 = vector.splat %145 : vector<6xindex>
      %252 = math.log %8 : tensor<6xf16>
      %253 = math.log1p %extracted_32 : f16
      %254 = vector.insertelement %false, %47[%151 : index] : vector<4xi1>
    }
    %186 = affine.load %alloc_23[%c7] : memref<6xi1>
    %187 = arith.muli %c1972338048_i64, %178 : i64
    %188 = math.fma %cst_5, %cst_5, %cst_38 : f16
    %189 = affine.max affine_map<(d0, d1, d2, d3) -> (-1, -(d2 + 64) - d1)>(%c2, %169, %rank_41, %145)
    %190 = math.ipowi %extracted_30, %extracted_30 : i16
    %191 = memref.realloc %83 : memref<6xf16> to memref<1xf16>
    %192 = vector.insertelement %c193400656_i32, %119[%151 : index] : vector<1xi32>
    %expanded_57 = tensor.expand_shape %expanded_28 [[0], [1], [2, 3]] : tensor<1x4x1xf32> into tensor<1x4x1x1xf32>
    %193 = math.ctpop %c681900122_i64 : i64
    %194 = memref.atomic_rmw minu %c1972338048_i64, %184[%c2] : (i64, memref<6xi64>) -> i64
    %195 = arith.divsi %c681900122_i64, %103 : i64
    %196 = index.mul %133, %c3
    %197 = vector.matrix_multiply %149, %174 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 3 : i32} : (vector<10xi1>, vector<6xi1>) -> vector<15xi1>
    %198 = vector.broadcast %c193400656_i32 : i32 to vector<1x1xi32>
    %199 = vector.outerproduct %139, %119, %198 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
    %inserted_58 = tensor.insert %extracted_30 into %9[%c3] : tensor<6xi16>
    %200 = memref.load %alloc_21[%c0] : memref<1xi64>
    %201 = vector.insertelement %103, %148[%c6 : index] : vector<10xi64>
    %alloc_59 = memref.alloc() : memref<i16>
    memref.tensor_store %21, %alloc_59 : memref<i16>
    %202 = index.casts %extracted : i16 to index
    %203 = scf.while (%arg1 = %110) : (vector<6xf32>) -> vector<6xf32> {
      %241 = arith.maxf %cst, %cst_2 : f32
      %extracted_65 = tensor.extract %1[%c0] : tensor<1xi16>
      %242 = math.log %cst_3 : f32
      %243 = math.fpowi %cst_5, %c193400656_i32 : f16, i32
      %244 = index.maxu %c8, %169
      %245 = memref.load %alloc_18[%c4] : memref<6xi32>
      %246 = vector.maskedload %alloc_8[%c0], %181, %181 : memref<1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %247 = math.tan %cst_0 : f32
      scf.condition(%false) %107 : vector<6xf32>
    } do {
    ^bb0(%arg1: vector<6xf32>):
      %alloca_65 = memref.alloca() : memref<6xf32>
      %241 = vector.extract_strided_slice %150 {offsets = [2], sizes = [6], strides = [1]} : vector<10xi64> to vector<6xi64>
      %expanded_66 = tensor.expand_shape %6 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
      %242 = index.divu %115, %151
      %243 = math.ceil %15 : tensor<6xf16>
      %244 = index.add %c2, %rank
      %245 = vector.extract %139[0] : vector<1xi32>
      %246 = arith.maxsi %c-12697_i16, %c-12697_i16 : i16
      vector.print %139 : vector<1xi32>
      %247 = bufferization.clone %alloc_25 : memref<6xi16> to memref<6xi16>
      %248 = arith.subi %false, %false_7 : i1
      %249 = math.ceil %cst_6 : f32
      vector.print %180 : vector<4xi1>
      %250 = index.divu %c10, %c7
      %cast_67 = tensor.cast %21 : tensor<i16> to tensor<i16>
      %251 = arith.muli %true, %false_7 : i1
      scf.yield %110 : vector<6xf32>
    }
    %204 = math.log1p %cst_4 : f32
    %expanded_60 = tensor.expand_shape %3 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
    %205 = index.ceildivu %115, %166
    %206 = math.log10 %6 : tensor<6xf16>
    %207 = index.ceildivs %202, %26
    %208 = vector.broadcast %cst_4 : f32 to vector<1xf32>
    %209 = vector.gather %42[%c1] [%119], %181, %208 : memref<6xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
    %210 = vector.splat %103 : vector<6xi64>
    %211 = arith.divui %c1686033321_i64, %c681900122_i64 : i64
    %212 = math.ipowi %expanded_60, %expanded_60 : tensor<6x1xi16>
    %collapsed_61 = tensor.collapse_shape %5 [[0, 1]] : tensor<1x4xf32> into tensor<4xf32>
    %inserted_62 = tensor.insert %c193400656_i32 into %54[%c0, %c2] : tensor<1x4xi32>
    %213 = vector.create_mask %c13 : vector<6xi1>
    %214 = vector.broadcast %true : i1 to vector<4x4xi1>
    %215 = vector.outerproduct %47, %60, %214 {kind = #vector.kind<mul>} : vector<4xi1>, vector<4xi1>
    %216 = math.ipowi %3, %10 : tensor<6xi16>
    %217 = arith.floordivsi %extracted, %c-24077_i16 : i16
    %218 = bufferization.to_memref %0 : memref<6xf32>
    %219 = vector.splat %cst_4 : vector<6xf32>
    %alloc_63 = memref.alloc() : memref<6xi64>
    %220 = tensor.empty() : tensor<4xf32>
    %mapped_64 = linalg.map ins(%collapsed_61, %collapsed_61 : tensor<4xf32>, tensor<4xf32>) outs(%220 : tensor<4xf32>)
      (%in: f32, %in_65: f32) {
        %241 = vector.extract %180[3] : vector<4xi1>
        %242 = math.ceil %cst_6 : f32
        vector.print %43 : vector<1xi16>
        %243 = vector.broadcast %cst_6 : f32 to vector<1x4xf32>
        %244 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
        %245 = vector.gather %splat[%c7] [%244], %86, %243 : tensor<6xf32>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xf32> into vector<1x4xf32>
        %246 = index.ceildivs %207, %166
        %247 = index.maxu %rank_52, %207
        %248 = arith.remf %extracted_37, %cst_5 : f16
        %249 = vector.multi_reduction <add>, %119, %c193400656_i32 [0] : vector<1xi32> to i32
        %250 = arith.xori %c-12697_i16, %extracted_30 : i16
        %251 = bufferization.to_memref %15 : memref<6xf16>
        %252 = bufferization.to_memref %expanded_57 : memref<1x4x1x1xf32>
        %253 = memref.atomic_rmw maxs %178, %184[%c0] : (i64, memref<6xi64>) -> i64
        %254 = memref.load %alloc_22[%c5] : memref<6xi16>
        %255 = math.ctlz %20 : tensor<i16>
        %256 = bufferization.clone %251 : memref<6xf16> to memref<6xf16>
        %257 = index.ceildivu %207, %196
        %258 = arith.cmpi ne, %c-24077_i16, %extracted : i16
        %259 = vector.bitcast %209 : vector<1xf32> to vector<1xf32>
        %260 = affine.max affine_map<(d0, d1, d2) -> (d1 * -2)>(%c13, %115, %c1)
        %261 = arith.minf %extracted_37, %extracted_32 : f16
        %inserted_66 = tensor.insert %cst_4 into %cast_49[%c0] : tensor<?xf32>
        %262 = memref.atomic_rmw assign %extracted_32, %256[%c3] : (f16, memref<6xf16>) -> f16
        %263 = math.expm1 %cst_38 : f16
        %264 = math.sqrt %15 : tensor<6xf16>
        %265 = vector.broadcast %c1686033321_i64 : i64 to vector<1xi64>
        %dest_67, %accumulated_value_68 = vector.scan <minsi>, %95, %265 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xi64>, vector<1xi64>
        %266 = arith.ceildivsi %c1972338048_i64, %c1686033321_i64 : i64
        scf.index_switch %128 
        case 1 {
          %272 = arith.cmpi ule, %extracted_30, %c-12697_i16 : i16
          %273 = arith.remui %c1686033321_i64, %103 : i64
          %cast_70 = tensor.cast %13 : tensor<6xi1> to tensor<?xi1>
          %274 = arith.shli %c1972338048_i64, %c681900122_i64 : i64
          %cast_71 = tensor.cast %15 : tensor<6xf16> to tensor<?xf16>
          %rank_72 = tensor.rank %8 : tensor<6xf16>
          %275 = arith.divsi %186, %false_7 : i1
          %276 = arith.cmpf olt, %cst_1, %in_65 : f32
          %277 = affine.load %alloc_25[%c0] : memref<6xi16>
          %278 = vector.gather %alloc_15[%205, %166] [%244], %96, %245 : memref<1x4xf32>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xf32> into vector<1x4xf32>
          %279 = arith.addi %249, %c193400656_i32 : i32
          %280 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %96, %181, %60 : vector<1x4xi1>, vector<1xi1> into vector<4xi1>
          %281 = bufferization.to_tensor %alloc_20 : memref<1x4xi32>
          %cast_73 = tensor.cast %21 : tensor<i16> to tensor<i16>
          %282 = arith.mulf %in, %cst_4 : f32
          %283 = affine.load %140[] : memref<i1>
          scf.yield
        }
        default {
          %272 = math.exp %expanded_28 : tensor<1x4x1xf32>
          %273 = index.divu %rank, %c14
          %274 = math.floor %5 : tensor<1x4xf32>
          %275 = affine.load %alloc_25[%c1] : memref<6xi16>
          memref.copy %alloc_22, %alloc_11 : memref<6xi16> to memref<6xi16>
          %276 = vector.gather %184[%128] [%109], %213, %67 : memref<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
          %277 = vector.broadcast %249 : i32 to vector<4xi32>
          %278 = vector.insert %277, %244 [0] : vector<4xi32> into vector<1x4xi32>
          %279 = vector.broadcast %115 : index to vector<1xindex>
          vector.scatter %alloc_11[%c3] [%279], %94, %19 : memref<6xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
          %280 = math.sqrt %0 : tensor<6xf32>
          %281 = vector.multi_reduction <minf>, %112, %cst_5 [0] : vector<1xf16> to f16
          vector.print %148 : vector<10xi64>
          %282 = arith.muli %extracted, %c-12697_i16 : i16
          %283 = vector.gather %1[%156] [%119], %94, %29 : tensor<1xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          %284 = math.powf %cst_0, %cst_3 : f32
          %cast_70 = tensor.cast %21 : tensor<i16> to tensor<i16>
          %rank_71 = tensor.rank %11 : tensor<1x4xi16>
        }
        %267 = index.add %65, %202
        %268 = index.floordivs %c4, %145
        %269 = index.casts %c8 : index to i32
        %270 = math.log2 %5 : tensor<1x4xf32>
        %271 = math.powf %8, %8 : tensor<6xf16>
        %cst_69 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_69 : f32
      }
    %221 = math.atan2 %15, %6 : tensor<6xf16>
    %222 = math.expm1 %cst_4 : f32
    %223 = arith.mulf %cst_2, %cst : f32
    %224 = arith.addf %cst_4, %cst_4 : f32
    %225 = vector.insertelement %extracted, %29[%207 : index] : vector<1xi16>
    %226 = math.fma %extracted_37, %cst_5, %extracted_37 : f16
    vector.print %95 : vector<1x4xi64>
    %227 = math.log1p %expanded_28 : tensor<1x4x1xf32>
    %228 = affine.min affine_map<(d0, d1) -> (d1 floordiv 16, d1 + d1 floordiv 16, d1 floordiv 16)>(%c7, %rank_52)
    %229 = arith.subi %c681900122_i64, %178 : i64
    %230 = arith.subi %c1686033321_i64, %c1972338048_i64 : i64
    %231 = vector.extract_strided_slice %174 {offsets = [0], sizes = [3], strides = [1]} : vector<6xi1> to vector<3xi1>
    %232 = vector.extract %29[0] : vector<1xi16>
    %233 = arith.mulf %cst_3, %cst_1 : f32
    %234 = math.atan2 %extracted_37, %cst_38 : f16
    %235 = tensor.empty() : tensor<i16>
    %236 = linalg.copy ins(%21 : tensor<i16>) outs(%235 : tensor<i16>) -> tensor<i16>
    %237 = tensor.empty(%rank_52) : tensor<?xf32>
    %transposed = linalg.transpose ins(%cast_36 : tensor<?xf32>) outs(%237 : tensor<?xf32>) permutation = [0] 
    %238 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%alloc_20 : memref<1x4xi32>) outs(%238 : tensor<i32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        affine.for %arg1 = 0 to 38 {
        }
        memref.tensor_store %11, %alloc_17 : memref<1x4xi16>
        %241 = math.log1p %cst_1 : f32
        %242 = vector.broadcast %cst : f32 to vector<1x1xf32>
        %243 = vector.outerproduct %209, %209, %242 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %244 = math.sqrt %6 : tensor<6xf16>
        %245 = index.divu %c10, %rank_35
        %246 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d2) floordiv 8 + d2)>(%c15, %65, %rank_41, %205)
        vector.print %93 : vector<1xi32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %239 = scf.parallel (%arg1, %arg2) = (%rank_41, %rank) to (%128, %c1) step (%c8, %c8) init (%extracted_37) -> f16 {
      %241 = vector.broadcast %103 : i64 to vector<4xi64>
      %242 = vector.maskedload %alloc_21[%c0], %46, %241 : memref<1xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %243 = index.maxu %196, %128
      %244 = scf.while (%arg3 = %alloc_16) : (memref<1xi1>) -> memref<1xi1> {
        %255 = vector.broadcast %23 : index to vector<10xindex>
        vector.scatter %alloc_10[%c1] [%255], %149, %149 : memref<6xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %256 = math.cos %splat : tensor<6xf32>
        %257 = vector.broadcast %c193400656_i32 : i32 to vector<1x4xi32>
        %258 = vector.gather %alloc_10[%145] [%257], %86, %86 : memref<6xi1>, vector<1x4xi32>, vector<1x4xi1>, vector<1x4xi1> into vector<1x4xi1>
        memref.copy %arg3, %alloc_9 : memref<1xi1> to memref<1xi1>
        %259 = math.ctpop %7 : tensor<6xi16>
        %260 = tensor.empty() : tensor<6x4xi32>
        %261 = linalg.matmul ins(%expanded, %54 : tensor<6x1xi32>, tensor<1x4xi32>) outs(%260 : tensor<6x4xi32>) -> tensor<6x4xi32>
        %262 = arith.ceildivsi %true, %false : i1
        %263 = arith.minui %c1972338048_i64, %178 : i64
        scf.condition(%false_7) %alloc_8 : memref<1xi1>
      } do {
      ^bb0(%arg3: memref<1xi1>):
        %255 = vector.extract %242[2] : vector<4xi64>
        %256 = vector.insertelement %extracted_30, %19[%202 : index] : vector<1xi16>
        %rank_69 = tensor.rank %collapsed_61 : tensor<4xf32>
        %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %29, %52, %extracted_30 : vector<1xi16>, vector<1xi16> into i16
        %258 = arith.remsi %false_7, %186 : i1
        %259 = math.ceil %cst_0 : f32
        %inserted_70 = tensor.insert %cst into %0[%c1] : tensor<6xf32>
        %inserted_71 = tensor.insert %186 into %13[%c4] : tensor<6xi1>
        %260 = arith.cmpi sle, %false_7, %false_7 : i1
        %261 = math.ctlz %17 : tensor<6xi16>
        %262 = math.exp2 %extracted_32 : f16
        %263 = arith.divsi %false_7, %186 : i1
        %264 = vector.extract_strided_slice %139 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %265 = affine.max affine_map<(d0) -> (d0 * -2, d0 mod 64)>(%228)
        %266 = math.floor %8 : tensor<6xf16>
        %267 = memref.realloc %alloc_10 : memref<6xi1> to memref<1xi1>
        scf.yield %alloc_16 : memref<1xi1>
      }
      %245 = arith.floordivsi %c681900122_i64, %c1686033321_i64 : i64
      affine.store %true, %alloc_23[%c13] : memref<6xi1>
      %expanded_65 = tensor.expand_shape %1 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
      %246 = math.floor %6 : tensor<6xf16>
      %247 = math.ctpop %false_7 : i1
      %248 = math.ipowi %2, %2 : tensor<6xi64>
      %249 = vector.broadcast %cst_1 : f32 to vector<6xf32>
      %250 = vector.fma %249, %107, %110 : vector<6xf32>
      %251 = arith.andi %c1972338048_i64, %178 : i64
      %cast_66 = tensor.cast %collapsed : tensor<4xi16> to tensor<?xi16>
      %252 = bufferization.clone %alloc_18 : memref<6xi32> to memref<6xi32>
      %253 = math.tan %cst_2 : f32
      %rank_67 = tensor.rank %5 : tensor<1x4xf32>
      %254 = math.ctpop %54 : tensor<1x4xi32>
      %cst_68 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_68)  : f16 {
      ^bb0(%arg3: f16, %arg4: f16):
        %255 = arith.minf %cst_3, %cst_4 : f32
        vector.print %174 : vector<6xi1>
        %256 = arith.shrsi %186, %186 : i1
        %257 = vector.gather %184[%169] [%109], %213, %67 : memref<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %splat_69 = tensor.splat %cst_68 : tensor<6xf16>
        %258 = arith.subi %186, %186 : i1
        %259 = vector.insertelement %false_7, %46[%169 : index] : vector<4xi1>
        %260 = vector.gather %54[%151, %c9] [%139], %92, %139 : tensor<1x4xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %cst_70 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_70 : f16
      }
      scf.yield
    }
    %240 = affine.vector_load %alloc_9[%c3] : memref<1xi1>, vector<4xi1>
    affine.vector_store %93, %alloc_20[%c8, %156] : memref<1x4xi32>, vector<1xi32>
    vector.print %19 : vector<1xi16>
    vector.print %29 : vector<1xi16>
    vector.print %43 : vector<1xi16>
    vector.print %46 : vector<4xi1>
    vector.print %47 : vector<4xi1>
    vector.print %52 : vector<1xi16>
    vector.print %60 : vector<4xi1>
    vector.print %67 : vector<6xi64>
    vector.print %68 : vector<3xi1>
    vector.print %86 : vector<1x4xi1>
    vector.print %92 : vector<1xi1>
    vector.print %93 : vector<1xi32>
    vector.print %94 : vector<1xi1>
    vector.print %95 : vector<1x4xi64>
    vector.print %96 : vector<1x4xi1>
    vector.print %107 : vector<6xf32>
    vector.print %108 : vector<6xi1>
    vector.print %109 : vector<6xi32>
    vector.print %110 : vector<6xf32>
    vector.print %112 : vector<1xf16>
    vector.print %119 : vector<1xi32>
    vector.print %121 : vector<1xf16>
    vector.print %139 : vector<1xi32>
    vector.print %148 : vector<10xi64>
    vector.print %149 : vector<10xi1>
    vector.print %150 : vector<10xi64>
    vector.print %174 : vector<6xi1>
    vector.print %180 : vector<4xi1>
    vector.print %181 : vector<1xi1>
    vector.print %197 : vector<15xi1>
    vector.print %208 : vector<1xf32>
    vector.print %209 : vector<1xf32>
    vector.print %213 : vector<6xi1>
    vector.print %231 : vector<3xi1>
    vector.print %240 : vector<4xi1>
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %c1972338048_i64 : i64
    vector.print %cst_2 : f32
    vector.print %c681900122_i64 : i64
    vector.print %c-12697_i16 : i16
    vector.print %c-24077_i16 : i16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %c193400656_i32 : i32
    vector.print %cst_5 : f16
    vector.print %c1686033321_i64 : i64
    vector.print %cst_6 : f32
    vector.print %false_7 : i1
    vector.print %extracted : i16
    vector.print %extracted_30 : i16
    vector.print %true : i1
    vector.print %extracted_32 : f16
    vector.print %103 : i64
    vector.print %extracted_37 : f16
    vector.print %cst_38 : f16
    vector.print %178 : i64
    vector.print %186 : i1
    return %108 : vector<6xi1>
  }
}
