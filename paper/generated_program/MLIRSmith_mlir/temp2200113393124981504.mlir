module {
  func.func @func1(%arg0: i32) {
    %c-30322_i16 = arith.constant -30322 : i16
    %c585361325_i64 = arith.constant 585361325 : i64
    %cst = arith.constant 5.737600e+04 : f16
    %cst_0 = arith.constant 5.676800e+04 : f16
    %c25321_i16 = arith.constant 25321 : i16
    %false = arith.constant false
    %cst_1 = arith.constant 1.723200e+04 : f16
    %c497_i16 = arith.constant 497 : i16
    %false_2 = arith.constant false
    %cst_3 = arith.constant 1.62182579E+9 : f32
    %false_4 = arith.constant false
    %cst_5 = arith.constant 1.29080026E+9 : f32
    %cst_6 = arith.constant 1.738900e+09 : f32
    %cst_7 = arith.constant 2.657600e+04 : f16
    %c12120_i16 = arith.constant 12120 : i16
    %c-20866_i16 = arith.constant -20866 : i16
    %0 = tensor.empty() : tensor<3xi32>
    %1 = tensor.empty() : tensor<3xi16>
    %2 = tensor.empty() : tensor<3x16xf32>
    %3 = tensor.empty() : tensor<3xf16>
    %4 = tensor.empty() : tensor<3x16xi16>
    %5 = tensor.empty() : tensor<3x16xi64>
    %6 = tensor.empty() : tensor<3x16xf16>
    %7 = tensor.empty() : tensor<3x16xi16>
    %8 = tensor.empty() : tensor<5x3x3xf32>
    %9 = tensor.empty() : tensor<3x16xf32>
    %10 = tensor.empty() : tensor<3xi16>
    %11 = tensor.empty() : tensor<3xi32>
    %12 = tensor.empty() : tensor<5x3x3xi1>
    %13 = tensor.empty() : tensor<3x16xi32>
    %14 = tensor.empty() : tensor<5x3x3xi64>
    %15 = tensor.empty() : tensor<5x3x3xi32>
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
    %alloc = memref.alloc() : memref<5x3x3xi1>
    %alloc_8 = memref.alloc() : memref<3x16xf16>
    %alloc_9 = memref.alloc() : memref<3xi16>
    %alloc_10 = memref.alloc() : memref<5x3x3xf16>
    %alloc_11 = memref.alloc() : memref<3x16x3xf32>
    %alloc_12 = memref.alloc() : memref<3xf16>
    %alloc_13 = memref.alloc() : memref<5x3x3xf16>
    %alloc_14 = memref.alloc() : memref<3x16xi32>
    %alloc_15 = memref.alloc() : memref<3x16xi64>
    %alloc_16 = memref.alloc() : memref<3x16xi16>
    %alloc_17 = memref.alloc() : memref<3x16x3xf16>
    %alloc_18 = memref.alloc() : memref<3x16xi16>
    %alloc_19 = memref.alloc() : memref<3x16x3xf32>
    %alloc_20 = memref.alloc() : memref<3xf16>
    %alloc_21 = memref.alloc() : memref<3xi1>
    %alloc_22 = memref.alloc() : memref<3x16x3xi64>
    %16 = tensor.empty() : tensor<3xi16>
    %17 = linalg.copy ins(%1 : tensor<3xi16>) outs(%16 : tensor<3xi16>) -> tensor<3xi16>
    %alloc_23 = memref.alloc() : memref<16x3xi64>
    linalg.transpose ins(%5 : tensor<3x16xi64>) outs(%alloc_23 : memref<16x3xi64>) permutation = [1, 0] 
    %alloc_24 = memref.alloc() : memref<i16>
    linalg.reduce ins(%17 : tensor<3xi16>) outs(%alloc_24 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %false_51 = arith.constant false
        %261 = tensor.empty() : tensor<3xi16>
        %mapped_52 = linalg.map ins(%alloc_9, %1, %1 : memref<3xi16>, tensor<3xi16>, tensor<3xi16>) outs(%261 : tensor<3xi16>)
          (%in_53: i16, %in_54: i16, %in_55: i16) {
            %267 = math.absf %cst_5 : f32
            %268 = math.exp2 %6 : tensor<3x16xf16>
            %269 = arith.shrui %false_4, %false_4 : i1
            %270 = arith.cmpi eq, %in_55, %in_55 : i16
            %271 = arith.shrui %in_54, %c-20866_i16 : i16
            %272 = math.rsqrt %cst_0 : f16
            %273 = arith.maxsi %false, %false_4 : i1
            %274 = arith.cmpf ord, %cst_5, %cst_5 : f32
            %alloca_56 = memref.alloca() : memref<3xi1>
            %cst_57 = arith.constant 1.000000e+00 : f32
            %275 = vector.transfer_read %2[%c2, %c15], %cst_57 : tensor<3x16xf32>, vector<5xf32>
            %276 = vector.broadcast %c585361325_i64 : i64 to vector<5xi64>
            %277 = vector.insertelement %c585361325_i64, %276[%c2 : index] : vector<5xi64>
            %278 = math.powf %6, %6 : tensor<3x16xf16>
            %279 = math.tanh %cst_57 : f32
            %alloc_58 = memref.alloc() : memref<5x3x3xi32>
            %c0_i32_59 = arith.constant 0 : i32
            %280 = vector.broadcast %c0_i32_59 : i32 to vector<5x3x3xi32>
            %281 = vector.broadcast %false : i1 to vector<5x3x3xi1>
            %282 = vector.gather %alloc_58[%c12, %c14, %c15] [%280], %281, %280 : memref<5x3x3xi32>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi32> into vector<5x3x3xi32>
            %283 = vector.shuffle %282, %280 [0, 1, 2, 4, 5] : vector<5x3x3xi32>, vector<5x3x3xi32>
            %splat_60 = tensor.splat %cst : tensor<3x16xf16>
            %284 = math.cos %cst_5 : f32
            %285 = arith.floordivsi %in_53, %c-30322_i16 : i16
            %286 = arith.cmpf ogt, %cst_7, %cst : f16
            memref.copy %alloc_16, %alloc_18 : memref<3x16xi16> to memref<3x16xi16>
            %287 = math.ipowi %261, %10 : tensor<3xi16>
            %288 = math.tanh %2 : tensor<3x16xf32>
            %289 = arith.shli %false_2, %false_2 : i1
            bufferization.dealloc_tensor %1 : tensor<3xi16>
            %290 = math.round %9 : tensor<3x16xf32>
            %cast_61 = tensor.cast %11 : tensor<3xi32> to tensor<?xi32>
            %rank_62 = tensor.rank %0 : tensor<3xi32>
            %291 = arith.andi %c497_i16, %init : i16
            %292 = vector.shuffle %282, %282 [1, 4, 5, 9] : vector<5x3x3xi32>, vector<5x3x3xi32>
            %293 = vector.shuffle %280, %280 [0, 3, 5, 7, 9] : vector<5x3x3xi32>, vector<5x3x3xi32>
            %294 = arith.remf %cst_3, %cst_5 : f32
            %295 = math.log2 %cst_57 : f32
            %c0_i16_63 = arith.constant 0 : i16
            linalg.yield %c0_i16_63 : i16
          }
        %262 = arith.remf %cst_1, %cst_0 : f16
        %263 = arith.floordivsi %in, %in : i16
        %264 = math.absf %cst_7 : f16
        scf.if %false {
          %c974389805_i32 = arith.constant 974389805 : i32
          %extracted_53 = tensor.extract %1[%c0] : tensor<3xi16>
          %267 = math.cos %cst_5 : f32
          %268 = arith.shrui %c-20866_i16, %c497_i16 : i16
          %269 = memref.atomic_rmw maxu %c585361325_i64, %alloc_15[%c1, %c7] : (i64, memref<3x16xi64>) -> i64
          %270 = math.ipowi %10, %16 : tensor<3xi16>
          %271 = index.add %c11, %c13
          %272 = arith.ori %c497_i16, %c-30322_i16 : i16
        }
        %265 = math.ceil %3 : tensor<3xf16>
        %266 = math.cos %8 : tensor<5x3x3xf32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %18 = scf.parallel (%arg1, %arg2) = (%c4, %c14) to (%c3, %c2) step (%c6, %c8) init (%alloc_11) -> memref<3x16x3xf32> {
      %261 = arith.addf %cst_3, %cst_5 : f32
      %262 = arith.maxf %cst_3, %cst_3 : f32
      %263 = arith.xori %false_4, %false : i1
      %cast_51 = tensor.cast %14 : tensor<5x3x3xi64> to tensor<?x?x?xi64>
      %264 = math.sqrt %cst_3 : f32
      %265 = arith.ceildivsi %c-30322_i16, %c497_i16 : i16
      %266 = arith.cmpi ugt, %c12120_i16, %c25321_i16 : i16
      %267 = math.cos %6 : tensor<3x16xf16>
      scf.if %false {
        %275 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c11, %c5, %c0)
        %expanded_54 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<5x3x3xi64> into tensor<5x3x3x1xi64>
        %276 = math.fma %3, %3, %3 : tensor<3xf16>
        %277 = index.mul %c15, %c9
        %cst_55 = arith.constant 1.000000e+00 : f32
        %cst_56 = arith.constant 0.000000e+00 : f32
        %278 = vector.transfer_read %9[%c7, %c4], %cst_56 : tensor<3x16xf32>, vector<f32>
        %279 = math.round %3 : tensor<3xf16>
        %from_elements_57 = tensor.from_elements %c12120_i16, %c-30322_i16, %c-20866_i16, %c497_i16, %c-30322_i16, %c-20866_i16, %c-30322_i16, %c12120_i16, %c497_i16, %c-20866_i16, %c-20866_i16, %c-30322_i16, %c25321_i16, %c25321_i16, %c-20866_i16, %c-30322_i16, %c25321_i16, %c25321_i16, %c497_i16, %c12120_i16, %c12120_i16, %c-20866_i16, %c12120_i16, %c12120_i16, %c12120_i16, %c-20866_i16, %c497_i16, %c25321_i16, %c-30322_i16, %c12120_i16, %c-20866_i16, %c-20866_i16, %c497_i16, %c25321_i16, %c-30322_i16, %c25321_i16, %c25321_i16, %c-30322_i16, %c12120_i16, %c497_i16, %c-30322_i16, %c-30322_i16, %c12120_i16, %c-20866_i16, %c12120_i16, %c497_i16, %c-20866_i16, %c497_i16 : tensor<3x16xi16>
        %280 = arith.cmpi ne, %c585361325_i64, %c585361325_i64 : i64
      } else {
        %275 = math.atan2 %6, %6 : tensor<3x16xf16>
        %276 = index.divu %arg2, %c9
        %277 = math.copysign %8, %8 : tensor<5x3x3xf32>
        %278 = memref.realloc %alloc_20 : memref<3xf16> to memref<5xf16>
        %279 = math.exp2 %2 : tensor<3x16xf32>
        %280 = vector.broadcast %c585361325_i64 : i64 to vector<3x16xi64>
        %281 = vector.broadcast %c585361325_i64 : i64 to vector<16xi64>
        %dest, %accumulated_value = vector.scan <mul>, %280, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<3x16xi64>, vector<16xi64>
        %282 = arith.divui %c-30322_i16, %c25321_i16 : i16
        %expanded_54 = tensor.expand_shape %10 [[0, 1]] : tensor<3xi16> into tensor<3x1xi16>
      }
      %alloc_52 = memref.alloc() : memref<3x16xi32>
      memref.copy %alloc_14, %alloc_52 : memref<3x16xi32> to memref<3x16xi32>
      %268 = math.atan2 %3, %3 : tensor<3xf16>
      %269 = vector.broadcast %c12120_i16 : i16 to vector<5xi16>
      %270 = vector.flat_transpose %269 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      %271 = math.expm1 %cst_0 : f16
      %272 = vector.transpose %270, [0] : vector<5xi16> to vector<5xi16>
      %273 = vector.transpose %269, [0] : vector<5xi16> to vector<5xi16>
      %274 = scf.while (%arg3 = %c25321_i16) : (i16) -> i16 {
        %275 = math.ctlz %c-30322_i16 : i16
        %276 = vector.shuffle %269, %269 [0, 2, 4, 5, 6, 8] : vector<5xi16>, vector<5xi16>
        %277 = vector.broadcast %false_4 : i1 to vector<3x16x3xi1>
        %c1_i32 = arith.constant 1 : i32
        %278 = vector.broadcast %c1_i32 : i32 to vector<3x16x3xi32>
        %279 = vector.gather %12[%c8, %c4, %c14] [%278], %277, %277 : tensor<5x3x3xi1>, vector<3x16x3xi32>, vector<3x16x3xi1>, vector<3x16x3xi1> into vector<3x16x3xi1>
        %280 = math.copysign %6, %6 : tensor<3x16xf16>
        %cast_54 = tensor.cast %10 : tensor<3xi16> to tensor<?xi16>
        %alloc_55 = memref.alloc() : memref<3x16xi16>
        %281 = arith.floordivsi %c12120_i16, %c25321_i16 : i16
        %282 = affine.load %alloc_22[%c4, %c11, %c10] : memref<3x16x3xi64>
        scf.condition(%false) %c25321_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        %275 = arith.shrui %c585361325_i64, %c585361325_i64 : i64
        %276 = arith.minf %cst_0, %cst : f16
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %270, %269, %c12120_i16 : vector<5xi16>, vector<5xi16> into i16
        %278 = vector.broadcast %c2 : index to vector<16xindex>
        %279 = vector.broadcast %false : i1 to vector<16xi1>
        %280 = vector.broadcast %cst_0 : f16 to vector<16xf16>
        vector.scatter %alloc_10[%c0, %c2, %c0] [%278], %279, %280 : memref<5x3x3xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %281 = vector.extract %270[0] : vector<5xi16>
        %282 = vector.insert %c-30322_i16, %269 [2] : i16 into vector<5xi16>
        %283 = math.ceil %3 : tensor<3xf16>
        %284 = arith.shli %c-20866_i16, %c497_i16 : i16
        %splat_54 = tensor.splat %false_4 : tensor<5x3x3xi1>
        %alloc_55 = memref.alloc() : memref<3x16x3xi1>
        %285 = vector.broadcast %false : i1 to vector<5x3x3xi1>
        %c1_i32 = arith.constant 1 : i32
        %286 = vector.broadcast %c1_i32 : i32 to vector<5x3x3xi32>
        %287 = vector.gather %alloc_55[%c2, %c1, %c7] [%286], %285, %285 : memref<3x16x3xi1>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi1> into vector<5x3x3xi1>
        %288 = math.powf %6, %6 : tensor<3x16xf16>
        %289 = bufferization.to_memref %9 : memref<3x16xf32>
        %290 = arith.shli %c585361325_i64, %c585361325_i64 : i64
        %291 = bufferization.to_tensor %alloc_14 : memref<3x16xi32>
        %alloc_56 = memref.alloc() : memref<3xi1>
        memref.copy %alloc_21, %alloc_56 : memref<3xi1> to memref<3xi1>
        %292 = bufferization.clone %alloc_23 : memref<16x3xi64> to memref<16x3xi64>
        scf.yield %c12120_i16 : i16
      }
      %alloc_53 = memref.alloc() : memref<3x16x3xf32>
      scf.reduce(%alloc_53)  : memref<3x16x3xf32> {
      ^bb0(%arg3: memref<3x16x3xf32>, %arg4: memref<3x16x3xf32>):
        %275 = math.round %3 : tensor<3xf16>
        %276 = affine.apply affine_map<(d0) -> ((d0 - 16) ceildiv 32)>(%c2)
        %277 = arith.cmpi ugt, %c-30322_i16, %c12120_i16 : i16
        %278 = memref.realloc %alloc_20 : memref<3xf16> to memref<16xf16>
        %rank_54 = tensor.rank %14 : tensor<5x3x3xi64>
        %279 = math.cos %8 : tensor<5x3x3xf32>
        %280 = arith.minui %c-30322_i16, %c-30322_i16 : i16
        %281 = math.log %9 : tensor<3x16xf32>
        %alloc_55 = memref.alloc() : memref<3x16x3xf32>
        scf.reduce.return %alloc_55 : memref<3x16x3xf32>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_23[%c8, %c5] : memref<16x3xi64>, vector<16xi64>
    affine.vector_store %19, %alloc_23[%c10, %c2] : memref<16x3xi64>, vector<16xi64>
    %alloc_25 = memref.alloc() : memref<3xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%alloc_9, %alloc_25 : memref<3xi16>, memref<3xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    affine.for %arg1 = 0 to 54 {
    }
    %22 = math.tanh %cst_6 : f32
    %23 = affine.for %arg1 = 0 to 1 iter_args(%arg2 = %9) -> (tensor<3x16xf32>) {
      affine.yield %2 : tensor<3x16xf32>
    }
    scf.index_switch %c14 
    case 1 {
      %261 = arith.addi %c-30322_i16, %c-20866_i16 : i16
      %262 = math.cttz %1 : tensor<3xi16>
      %263 = math.log2 %2 : tensor<3x16xf32>
      %264 = vector.broadcast %c585361325_i64 : i64 to vector<3xi64>
      %265 = vector.broadcast %false_4 : i1 to vector<3xi1>
      %266 = vector.maskedload %alloc_23[%c9, %c0], %265, %264 : memref<16x3xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %267 = math.atan2 %3, %3 : tensor<3xf16>
      %rank_51 = tensor.rank %13 : tensor<3x16xi32>
      %268 = index.maxs %c12, %c5
      %269 = arith.muli %c497_i16, %c497_i16 : i16
      %270 = arith.floordivsi %c-30322_i16, %c12120_i16 : i16
      %271 = vector.flat_transpose %265 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %272 = vector.broadcast %cst_3 : f32 to vector<16xf32>
      %273 = vector.broadcast %false_4 : i1 to vector<16xi1>
      %274 = vector.maskedload %alloc_19[%c1, %c5, %c0], %273, %272 : memref<3x16x3xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
      %275 = affine.max affine_map<(d0) -> (d0)>(%c9)
      %276 = arith.cmpi slt, %false, %false : i1
      %277 = tensor.empty(%c12) : tensor<3x?xi16>
      %278 = arith.negf %cst_0 : f16
      %279 = math.roundeven %2 : tensor<3x16xf32>
      scf.yield
    }
    default {
      %alloca_51 = memref.alloca() : memref<3x16x3xi32>
      %261 = scf.if %false_4 -> (memref<3x16x3xi1>) {
        %c0_i32_54 = arith.constant 0 : i32
        %275 = vector.broadcast %c0_i32_54 : i32 to vector<3xi32>
        %276 = vector.transfer_write %275, %15[%c13, %c0, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xi32>, tensor<5x3x3xi32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %277 = vector.transfer_read %4[%c7, %c4], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x16xi16>, vector<3xi16>
        %278 = index.mul %c12, %c2
        %279 = index.divu %c11, %c13
        %280 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 128, d3 floordiv 64, d3, d1 mod 16)>(%c3, %c4, %c0, %c4)
        %281 = index.floordivs %c8, %c5
        %282 = affine.max affine_map<(d0, d1) -> (d1)>(%c8, %c10)
        %283 = arith.shrui %c585361325_i64, %c585361325_i64 : i64
        %alloc_55 = memref.alloc() : memref<3x16x3xi1>
        scf.yield %alloc_55 : memref<3x16x3xi1>
      } else {
        %alloc_54 = memref.alloc() : memref<3x16xi16>
        %275 = arith.subi %false, %false_2 : i1
        %276 = math.absf %cst_3 : f32
        %alloc_55 = memref.alloc() : memref<5x3x3xi32>
        %277 = index.ceildivs %c1, %c12
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2)>(%c0, %c3, %c13, %c11)
        %279 = math.ctlz %10 : tensor<3xi16>
        %280 = index.casts %c14 : index to i32
        %alloc_56 = memref.alloc() : memref<3x16x3xi1>
        scf.yield %alloc_56 : memref<3x16x3xi1>
      }
      %262 = vector.broadcast %false_2 : i1 to vector<16xi1>
      %263 = vector.maskedload %alloc_22[%c0, %c2, %c0], %262, %19 : memref<3x16x3xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
      %264 = math.log %cst_0 : f16
      %265 = vector.broadcast %cst_7 : f16 to vector<f16>
      vector.transfer_write %265, %alloc_12[%c5] : vector<f16>, memref<3xf16>
      %266 = math.floor %9 : tensor<3x16xf32>
      %267 = arith.ceildivsi %false_4, %false_2 : i1
      %268 = arith.muli %c585361325_i64, %c585361325_i64 : i64
      %269 = math.log1p %6 : tensor<3x16xf16>
      %270 = math.atan %cst_0 : f16
      %alloc_52 = memref.alloc() : memref<3x16x3xi1>
      memref.copy %261, %alloc_52 : memref<3x16x3xi1> to memref<3x16x3xi1>
      %271 = math.ipowi %11, %11 : tensor<3xi32>
      %272 = arith.minui %false_2, %false_4 : i1
      %273 = vector.extract %262[11] : vector<16xi1>
      %splat_53 = tensor.splat %c12120_i16 : tensor<3x16xi16>
      %274 = arith.mulf %cst_5, %cst_3 : f32
    }
    %24 = arith.maxui %c-30322_i16, %c-30322_i16 : i16
    %cast = tensor.cast %1 : tensor<3xi16> to tensor<?xi16>
    %alloc_26 = memref.alloc() : memref<16x5xi16>
    %25 = tensor.empty() : tensor<3x5xi16>
    %26 = linalg.matmul ins(%4, %alloc_26 : tensor<3x16xi16>, memref<16x5xi16>) outs(%25 : tensor<3x5xi16>) -> tensor<3x5xi16>
    %27 = affine.max affine_map<(d0) -> ((-(d0 - 4) + 4) * -2 + 8, -(d0 - 4) + 4)>(%c10)
    %28 = math.copysign %3, %3 : tensor<3xf16>
    %29 = index.mul %c6, %c14
    %30 = index.ceildivs %c8, %c6
    %31 = math.log2 %cst : f16
    %32 = arith.floordivsi %c585361325_i64, %c585361325_i64 : i64
    %33 = vector.broadcast %c-20866_i16 : i16 to vector<3xi16>
    %34 = vector.broadcast %false : i1 to vector<3xi1>
    %35 = vector.maskedload %alloc_25[%c2], %34, %33 : memref<3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
    %36 = arith.muli %c497_i16, %c-20866_i16 : i16
    %37 = math.round %6 : tensor<3x16xf16>
    %38 = memref.load %alloc_21[%c1] : memref<3xi1>
    %39 = bufferization.to_tensor %alloc_21 : memref<3xi1>
    %40 = arith.minf %cst_6, %cst_5 : f32
    %alloca = memref.alloca() : memref<3x16xi64>
    %41 = arith.minf %cst_6, %cst_6 : f32
    %42 = math.cttz %c-30322_i16 : i16
    %43 = vector.broadcast %c12 : index to vector<3xindex>
    vector.scatter %alloc_25[%c1] [%43], %34, %35 : memref<3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
    %44 = vector.shuffle %19, %19 [0, 5, 7, 9, 10, 14, 16, 19, 24, 27, 28, 29, 31] : vector<16xi64>, vector<16xi64>
    %45 = arith.shli %c25321_i16, %c25321_i16 : i16
    %46 = math.exp2 %cst_0 : f16
    %extracted = tensor.extract %8[%c0, %c1, %c0] : tensor<5x3x3xf32>
    %47 = index.divs %c14, %c5
    %48 = affine.load %alloc_10[%c13, %c8, %c11] : memref<5x3x3xf16>
    %49 = arith.divui %c12120_i16, %c-20866_i16 : i16
    %50 = arith.subi %c25321_i16, %c12120_i16 : i16
    %51 = index.casts %c-30322_i16 : i16 to index
    %52 = memref.atomic_rmw assign %cst_6, %alloc_19[%c2, %c10, %c2] : (f32, memref<3x16x3xf32>) -> f32
    %53 = arith.andi %c497_i16, %c12120_i16 : i16
    %54 = vector.flat_transpose %34 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    memref.assume_alignment %alloc_24, 1 : memref<i16>
    %55 = math.floor %8 : tensor<5x3x3xf32>
    %56 = arith.floordivsi %false, %false : i1
    memref.assume_alignment %alloc_8, 16 : memref<3x16xf16>
    %57 = vector.broadcast %false_4 : i1 to vector<5xi1>
    %58 = vector.maskedload %alloc_21[%c2], %57, %57 : memref<3xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
    %59 = arith.maxsi %false, %false_2 : i1
    %60 = arith.remf %cst_0, %cst_7 : f16
    %61 = arith.shli %c12120_i16, %c12120_i16 : i16
    %splat = tensor.splat %48 : tensor<3xf16>
    %62 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %34, %54, %false_4 : vector<3xi1>, vector<3xi1> into i1
    %63 = bufferization.clone %alloc_25 : memref<3xi16> to memref<3xi16>
    %64 = math.tanh %3 : tensor<3xf16>
    %65 = arith.cmpi ule, %c-30322_i16, %c25321_i16 : i16
    %66 = arith.ceildivsi %c-20866_i16, %c-20866_i16 : i16
    %67 = affine.apply affine_map<(d0) -> (d0)>(%c14)
    %68 = math.exp %cst_6 : f32
    %69 = math.atan2 %cst_6, %cst_3 : f32
    %70 = arith.maxsi %c12120_i16, %c-20866_i16 : i16
    %71 = arith.addf %cst_1, %cst : f16
    %72 = math.cos %3 : tensor<3xf16>
    %73 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d1)>(%51, %c1, %29)
    %74 = arith.minf %48, %cst_1 : f16
    %75 = tensor.empty() : tensor<3x16xi32>
    %mapped = linalg.map ins(%alloc_14, %alloc_14 : memref<3x16xi32>, memref<3x16xi32>) outs(%75 : tensor<3x16xi32>)
      (%in: i32, %in_51: i32) {
        %261 = math.log10 %3 : tensor<3xf16>
        %262 = affine.apply affine_map<(d0, d1) -> (d0 + d1 + 32)>(%c7, %c15)
        %263 = arith.remf %cst, %cst_0 : f16
        memref.copy %alloc_19, %alloc_11 : memref<3x16x3xf32> to memref<3x16x3xf32>
        %264 = math.log1p %6 : tensor<3x16xf16>
        %265 = math.copysign %9, %2 : tensor<3x16xf32>
        %266 = tensor.empty() : tensor<3xf16>
        %mapped_52 = linalg.map ins(%3 : tensor<3xf16>) outs(%266 : tensor<3xf16>)
          (%in_56: f16) {
            memref.store %c25321_i16, %alloc_25[%c2] : memref<3xi16>
            %289 = math.copysign %3, %3 : tensor<3xf16>
            %290 = memref.realloc %alloc_12 : memref<3xf16> to memref<3xf16>
            %291 = arith.maxsi %in_51, %in : i32
            %from_elements_57 = tensor.from_elements %cst_5, %cst_5, %cst_3, %extracted, %cst_3, %extracted, %cst_3, %extracted, %extracted, %extracted, %cst_5, %extracted, %extracted, %cst_5, %cst_3, %cst_3, %cst_5, %cst_3, %extracted, %cst_3, %cst_6, %cst_3, %cst_3, %cst_3, %cst_3, %cst_6, %cst_3, %cst_6, %cst_3, %cst_6, %cst_6, %cst_6, %cst_3, %cst_5, %cst_6, %cst_3, %cst_5, %extracted, %cst_3, %cst_5, %cst_6, %cst_5, %cst_3, %cst_6, %extracted, %cst_5, %extracted, %cst_3, %cst_6, %extracted, %cst_3, %cst_3, %cst_3, %extracted, %extracted, %cst_3, %cst_3, %cst_5, %cst_5, %cst_5, %cst_3, %cst_5, %cst_6, %cst_6, %extracted, %cst_3, %cst_5, %cst_5, %cst_3, %cst_5, %cst_5, %cst_6, %extracted, %extracted, %cst_6, %cst_3, %extracted, %cst_5, %cst_6, %cst_5, %cst_6, %cst_5, %cst_5, %cst_5, %extracted, %cst_6, %cst_3, %cst_6, %extracted, %extracted, %cst_6, %cst_3, %cst_3, %cst_6, %cst_5, %cst_3, %cst_3, %extracted, %cst_3, %extracted, %cst_6, %cst_3, %cst_5, %cst_5, %cst_3, %cst_6, %extracted, %extracted, %extracted, %cst_6, %cst_3, %cst_3, %cst_3, %cst_5, %extracted, %cst_3, %cst_6, %cst_3, %extracted, %cst_3, %cst_6, %cst_5, %cst_3, %cst_5, %cst_5, %cst_5, %cst_6, %cst_5, %cst_5, %extracted, %extracted, %cst_6, %cst_3, %cst_6, %cst_5, %cst_6, %cst_5, %cst_5, %extracted, %cst_5, %cst_6, %cst_5, %cst_3, %extracted : tensor<3x16x3xf32>
            %292 = bufferization.clone %alloc_21 : memref<3xi1> to memref<3xi1>
            %293 = arith.shli %c585361325_i64, %c585361325_i64 : i64
            %294 = arith.shrsi %in_51, %in_51 : i32
            %295 = arith.ceildivsi %false, %false_2 : i1
            %cast_58 = tensor.cast %5 : tensor<3x16xi64> to tensor<?x?xi64>
            %296 = math.log1p %9 : tensor<3x16xf32>
            %297 = arith.xori %c25321_i16, %c12120_i16 : i16
            %298 = vector.broadcast %c-30322_i16 : i16 to vector<3x16x3xi16>
            %299 = vector.broadcast %c-30322_i16 : i16 to vector<3x3xi16>
            %dest, %accumulated_value = vector.scan <or>, %298, %299 {inclusive = false, reduction_dim = 1 : i64} : vector<3x16x3xi16>, vector<3x3xi16>
            %300 = index.add %c4, %47
            %301 = math.ipowi %17, %1 : tensor<3xi16>
            %302 = index.divs %c5, %300
            %303 = math.copysign %8, %8 : tensor<5x3x3xf32>
            %304 = arith.minui %in, %in : i32
            %305 = bufferization.clone %alloc_14 : memref<3x16xi32> to memref<3x16xi32>
            memref.assume_alignment %alloc_13, 16 : memref<5x3x3xf16>
            %306 = arith.shrui %c497_i16, %c497_i16 : i16
            %307 = math.roundeven %cst_7 : f16
            %308 = index.add %c7, %c12
            %309 = bufferization.clone %alloc_8 : memref<3x16xf16> to memref<3x16xf16>
            %alloc_59 = memref.alloc() : memref<3x16x3xi1>
            %310 = vector.broadcast %false_4 : i1 to vector<5x3x3xi1>
            %311 = vector.broadcast %in : i32 to vector<5x3x3xi32>
            %312 = vector.gather %alloc_59[%c4, %c11, %c12] [%311], %310, %310 : memref<3x16x3xi1>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi1> into vector<5x3x3xi1>
            %alloca_60 = memref.alloca() : memref<3x16x3xi16>
            %313 = arith.subi %c585361325_i64, %c585361325_i64 : i64
            %314 = math.exp %extracted : f32
            %from_elements_61 = tensor.from_elements %cst_3, %cst_5, %cst_6, %extracted, %cst_3, %extracted, %cst_6, %cst_5, %cst_3, %cst_6, %cst_5, %cst_5, %cst_5, %cst_5, %cst_6, %cst_6, %cst_3, %cst_3, %extracted, %cst_6, %cst_5, %cst_6, %cst_3, %cst_3, %cst_6, %cst_5, %cst_3, %cst_6, %cst_3, %extracted, %cst_3, %cst_5, %cst_5, %cst_3, %cst_5, %cst_3, %extracted, %cst_5, %cst_5, %cst_3, %cst_3, %extracted, %cst_5, %cst_6, %cst_5, %extracted, %extracted, %extracted : tensor<3x16xf32>
            %splat_62 = tensor.splat %false : tensor<3x16x3xi1>
            %315 = vector.extract %310[1] : vector<5x3x3xi1>
            %316 = arith.andi %false_2, %false_4 : i1
            %cst_63 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_63 : f16
          }
        %generated = tensor.generate %c1, %c13, %c0 {
        ^bb0(%arg1: index, %arg2: index, %arg3: index):
          %289 = affine.max affine_map<(d0, d1) -> (d0, -d0 - 160, d0 mod 4 + 16, d0 * -32 - 64)>(%c12, %c1)
          %290 = vector.transpose %33, [0] : vector<3xi16> to vector<3xi16>
          %291 = vector.extract %58[3] : vector<5xi1>
          %292 = arith.mulf %cst_3, %cst_5 : f32
          tensor.yield %c-20866_i16 : i16
        } : tensor<?x?x?xi16>
        %267 = math.log2 %6 : tensor<3x16xf16>
        %268 = arith.cmpf one, %cst_6, %cst_3 : f32
        %269 = math.log2 %9 : tensor<3x16xf32>
        memref.store %false, %alloc_21[%c2] : memref<3xi1>
        %270 = bufferization.clone %alloc_16 : memref<3x16xi16> to memref<3x16xi16>
        %271 = arith.maxui %c585361325_i64, %c585361325_i64 : i64
        %272 = arith.minf %cst_3, %cst_3 : f32
        %273 = tensor.empty() : tensor<16x3xf32>
        %274 = tensor.empty() : tensor<3x3xf32>
        %275 = linalg.matmul ins(%9, %273 : tensor<3x16xf32>, tensor<16x3xf32>) outs(%274 : tensor<3x3xf32>) -> tensor<3x3xf32>
        %cast_53 = tensor.cast %6 : tensor<3x16xf16> to tensor<?x?xf16>
        %276 = arith.addi %false_4, %false_4 : i1
        %277 = vector.transpose %54, [0] : vector<3xi1> to vector<3xi1>
        %278 = math.exp2 %6 : tensor<3x16xf16>
        %279 = math.ipowi %c-20866_i16, %c-20866_i16 : i16
        %280 = arith.divui %false, %false : i1
        %281 = arith.muli %false_4, %false_2 : i1
        %282 = math.roundeven %cst_1 : f16
        %283 = math.round %cst_7 : f16
        %284 = arith.remsi %c-30322_i16, %c-30322_i16 : i16
        %from_elements_54 = tensor.from_elements %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64 : tensor<5x3x3xi64>
        %285 = math.exp2 %cst_3 : f32
        affine.store %c585361325_i64, %alloc_15[%c13, %c10] : memref<3x16xi64>
        %286 = math.ctlz %16 : tensor<3xi16>
        %287 = arith.addi %c585361325_i64, %c585361325_i64 : i64
        %288 = arith.minui %false, %false : i1
        %c0_i32_55 = arith.constant 0 : i32
        linalg.yield %c0_i32_55 : i32
      }
    %76 = vector.splat %c25321_i16 : vector<3xi16>
    %77 = arith.minf %cst_7, %cst_1 : f16
    %78 = arith.remf %cst_5, %cst_6 : f32
    %79 = index.ceildivs %29, %c9
    %80 = bufferization.clone %63 : memref<3xi16> to memref<3xi16>
    %81 = math.ceil %2 : tensor<3x16xf32>
    %82 = math.cttz %7 : tensor<3x16xi16>
    %alloca_27 = memref.alloca() : memref<3xi32>
    vector.print %35 : vector<3xi16>
    %83 = math.exp %cst_5 : f32
    %84 = math.cttz %15 : tensor<5x3x3xi32>
    %85 = math.cos %6 : tensor<3x16xf16>
    %86 = math.atan2 %6, %6 : tensor<3x16xf16>
    %87 = math.roundeven %cst : f16
    %88 = math.atan %6 : tensor<3x16xf16>
    %89 = index.add %c10, %51
    %90 = arith.mulf %cst_1, %cst_7 : f16
    %c0_i32 = arith.constant 0 : i32
    %91 = vector.broadcast %c0_i32 : i32 to vector<i32>
    %92 = vector.transfer_write %91, %13[%89, %c11] : vector<i32>, tensor<3x16xi32>
    %93 = vector.extract %34[2] : vector<3xi1>
    %94 = arith.addf %cst_1, %cst_7 : f16
    %95 = affine.load %alloc_12[%c4] : memref<3xf16>
    %96 = vector.transpose %19, [0] : vector<16xi64> to vector<16xi64>
    %97 = math.fma %8, %8, %8 : tensor<5x3x3xf32>
    vector.print %19 : vector<16xi64>
    %98 = vector.broadcast %false : i1 to vector<5x3x3xi1>
    %99 = vector.broadcast %c0_i32 : i32 to vector<5x3x3xi32>
    %100 = vector.gather %39[%c14] [%99], %98, %98 : tensor<3xi1>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi1> into vector<5x3x3xi1>
    %101 = tensor.empty() : tensor<3xf32>
    %102 = vector.broadcast %extracted : f32 to vector<3x16xf32>
    %103 = vector.broadcast %false : i1 to vector<3x16xi1>
    %104 = vector.broadcast %c0_i32 : i32 to vector<3x16xi32>
    %105 = vector.gather %101[%c6] [%104], %103, %102 : tensor<3xf32>, vector<3x16xi32>, vector<3x16xi1>, vector<3x16xf32> into vector<3x16xf32>
    %106 = index.ceildivu %c8, %c6
    %107 = arith.remsi %c0_i32, %c0_i32 : i32
    %108 = index.add %c14, %c3
    memref.store %c497_i16, %alloc_16[%c1, %c3] : memref<3x16xi16>
    %109 = index.divu %c15, %c10
    %110 = arith.remsi %c497_i16, %c-20866_i16 : i16
    memref.store %48, %alloc_12[%c2] : memref<3xf16>
    %111 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 32 + 16)>(%c8, %c3, %108, %c13)
    %112 = arith.divsi %c-30322_i16, %c-30322_i16 : i16
    %113 = arith.xori %c12120_i16, %c-30322_i16 : i16
    %splat_28 = tensor.splat %c25321_i16 : tensor<3x16x3xi16>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %114 = vector.transfer_read %14[%c4, %c2, %c14], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<5x3x3xi64>, vector<16x3xi64>
    %115 = memref.load %alloc_17[%c2, %c14, %c1] : memref<3x16x3xf16>
    %116 = math.exp %6 : tensor<3x16xf16>
    %117 = scf.while (%arg1 = %false) : (i1) -> i1 {
      %261 = vector.matrix_multiply %19, %19 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
      %262 = affine.load %alloc_21[%c5] : memref<3xi1>
      %263 = index.mul %111, %c3
      %264 = arith.shli %c1_i64, %c1_i64 : i64
      %265 = affine.load %alloc_8[%c5, %c11] : memref<3x16xf16>
      %alloc_51 = memref.alloc() : memref<3x16x3xf16>
      memref.copy %alloc_17, %alloc_51 : memref<3x16x3xf16> to memref<3x16x3xf16>
      memref.assume_alignment %80, 4 : memref<3xi16>
      %266 = arith.subi %c585361325_i64, %c585361325_i64 : i64
      scf.condition(%262) %262 : i1
    } do {
    ^bb0(%arg1: i1):
      %261 = vector.insertelement %false, %58[%109 : index] : vector<5xi1>
      memref.copy %alloc_19, %alloc_11 : memref<3x16x3xf32> to memref<3x16x3xf32>
      %262 = arith.minui %c0_i32, %c0_i32 : i32
      %263 = index.sizeof
      %264 = index.maxs %c1, %29
      %expanded_51 = tensor.expand_shape %10 [[0, 1]] : tensor<3xi16> into tensor<3x1xi16>
      %265 = arith.divui %false_2, %false : i1
      %c821483004_i32 = arith.constant 821483004 : i32
      %266 = arith.divsi %c25321_i16, %c-30322_i16 : i16
      %267 = affine.load %alloc_17[%c7, %c12, %c13] : memref<3x16x3xf16>
      %268 = vector.broadcast %c6 : index to vector<5xindex>
      %269 = vector.broadcast %c-30322_i16 : i16 to vector<5xi16>
      vector.scatter %63[%c2] [%268], %58, %269 : memref<3xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
      %expanded_52 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<3x16xi16> into tensor<3x16x1xi16>
      %270 = vector.broadcast %false_4 : i1 to vector<5x3xi1>
      %dest, %accumulated_value = vector.scan <minui>, %98, %270 {inclusive = true, reduction_dim = 1 : i64} : vector<5x3x3xi1>, vector<5x3xi1>
      %271 = arith.minf %cst_3, %cst_3 : f32
      %272 = arith.remf %extracted, %cst_6 : f32
      %alloca_53 = memref.alloca() : memref<5x3x3xi32>
      scf.yield %false_2 : i1
    }
    %118 = bufferization.clone %alloc_15 : memref<3x16xi64> to memref<3x16xi64>
    %119 = arith.addf %cst_1, %cst : f16
    %120 = arith.minf %cst_5, %cst_6 : f32
    %inserted = tensor.insert %c12120_i16 into %16[%c1] : tensor<3xi16>
    %121 = affine.load %alloc_22[%c13, %c6, %c9] : memref<3x16x3xi64>
    %122 = bufferization.clone %alloc_13 : memref<5x3x3xf16> to memref<5x3x3xf16>
    %123 = math.atan2 %8, %8 : tensor<5x3x3xf32>
    %124 = math.ipowi %121, %c1_i64 : i64
    %125 = vector.broadcast %c-20866_i16 : i16 to vector<i16>
    %126 = vector.transfer_write %125, %16[%109] : vector<i16>, tensor<3xi16>
    %127 = index.mul %c2, %c15
    %128 = math.log2 %cst_0 : f16
    %129 = arith.cmpf oeq, %cst_3, %cst_5 : f32
    %130 = math.log %6 : tensor<3x16xf16>
    %131 = arith.floordivsi %c0_i32, %c0_i32 : i32
    %132 = math.exp2 %9 : tensor<3x16xf32>
    %133 = vector.broadcast %c0_i32 : i32 to vector<i32>
    %134 = vector.transfer_write %133, %0[%c12] : vector<i32>, tensor<3xi32>
    %expanded = tensor.expand_shape %101 [[0, 1]] : tensor<3xf32> into tensor<3x1xf32>
    scf.if %false {
      %261 = index.divs %c11, %73
      %262 = math.round %8 : tensor<5x3x3xf32>
      %263 = math.ctlz %1 : tensor<3xi16>
      %264 = math.atan %6 : tensor<3x16xf16>
      %265 = index.divs %c13, %79
      %266 = math.powf %cst_6, %extracted : f32
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_51 = arith.constant 0 : i16
      %267 = vector.transfer_read %10[%108], %c0_i16_51 : tensor<3xi16>, vector<i16>
      %extracted_52 = tensor.extract %11[%c1] : tensor<3xi32>
    }
    %135 = affine.load %alloc_16[%c11, %c4] : memref<3x16xi16>
    %alloca_29 = memref.alloca() : memref<3x16x3xf32>
    memref.assume_alignment %alloc, 2 : memref<5x3x3xi1>
    %136 = arith.negf %cst_0 : f16
    %137 = math.atan2 %expanded, %expanded : tensor<3x1xf32>
    affine.for %arg1 = 0 to 39 {
    }
    affine.store %95, %alloc_8[%c14, %c10] : memref<3x16xf16>
    %from_elements = tensor.from_elements %c1_i64, %c585361325_i64, %c1_i64 : tensor<3xi64>
    %138 = math.round %6 : tensor<3x16xf16>
    %139 = arith.minf %cst_6, %cst_5 : f32
    %140 = memref.load %122[%c1, %c2, %c2] : memref<5x3x3xf16>
    %141 = arith.shrui %false_2, %false : i1
    %142 = arith.shli %c-30322_i16, %c-20866_i16 : i16
    %143 = vector.broadcast %false_4 : i1 to vector<3x3xi1>
    %144 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %100, %58, %143 : vector<5x3x3xi1>, vector<5xi1> into vector<3x3xi1>
    %145 = arith.minf %extracted, %cst_5 : f32
    %146 = math.log2 %expanded : tensor<3x1xf32>
    %147 = arith.divsi %false, %false_4 : i1
    %148 = vector.matrix_multiply %33, %33 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
    %149 = index.sizeof
    %150 = math.tan %2 : tensor<3x16xf32>
    %151 = scf.while (%arg1 = %alloc_13) : (memref<5x3x3xf16>) -> memref<5x3x3xf16> {
      %261 = vector.extract %102[2] : vector<3x16xf32>
      %262 = math.log1p %cst_0 : f16
      %263 = arith.andi %c12120_i16, %c25321_i16 : i16
      %264 = arith.negf %cst_5 : f32
      %265 = math.roundeven %3 : tensor<3xf16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %261, %261, %cst_3 : vector<16xf32>, vector<16xf32> into f32
      %267 = arith.cmpi slt, %false, %false_2 : i1
      %268 = math.cttz %17 : tensor<3xi16>
      scf.condition(%false_2) %122 : memref<5x3x3xf16>
    } do {
    ^bb0(%arg1: memref<5x3x3xf16>):
      %261 = bufferization.clone %alloc_11 : memref<3x16x3xf32> to memref<3x16x3xf32>
      %262 = arith.mulf %95, %48 : f16
      %263 = index.mul %149, %c10
      %264 = math.roundeven %9 : tensor<3x16xf32>
      %265 = math.exp %6 : tensor<3x16xf16>
      %266 = vector.maskedload %alloc_21[%c1], %57, %58 : memref<3xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %267 = arith.xori %135, %c-30322_i16 : i16
      %alloc_51 = memref.alloc() : memref<5x3x3xf32>
      %268 = math.log %2 : tensor<3x16xf32>
      %269 = arith.addf %cst_1, %48 : f16
      %270 = math.powf %cst, %cst_7 : f16
      %271 = arith.addf %cst_5, %extracted : f32
      %272 = arith.minui %c12120_i16, %c25321_i16 : i16
      %rank_52 = tensor.rank %splat : tensor<3xf16>
      %273 = memref.load %261[%c1, %c5, %c2] : memref<3x16x3xf32>
      vector.print %34 : vector<3xi1>
      scf.yield %alloc_10 : memref<5x3x3xf16>
    }
    %false_30 = arith.constant false
    %152 = math.atan2 %101, %101 : tensor<3xf32>
    %153 = scf.if %false_2 -> (memref<3x16xf32>) {
      %splat_51 = tensor.splat %cst_1 : tensor<5x3x3xf16>
      %261 = affine.load %alloc_14[%c9, %c5] : memref<3x16xi32>
      %generated = tensor.generate %51, %c6 {
      ^bb0(%arg1: index, %arg2: index):
        %266 = vector.broadcast %c497_i16 : i16 to vector<16xi16>
        %267 = vector.broadcast %false_4 : i1 to vector<16xi1>
        %268 = vector.maskedload %alloc_24[], %267, %266 : memref<i16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %269 = bufferization.clone %alloc_10 : memref<5x3x3xf16> to memref<5x3x3xf16>
        %270 = arith.remf %extracted, %extracted : f32
        %271 = bufferization.to_memref %2 : memref<3x16xf32>
        tensor.yield %cst_1 : f16
      } : tensor<?x?xf16>
      %262 = arith.muli %c585361325_i64, %c585361325_i64 : i64
      %263 = memref.load %alloc_14[%c2, %c8] : memref<3x16xi32>
      %generated_52 = tensor.generate %79 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %266 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d1)>(%c1, %47, %c0)
        %267 = math.atan %cst_3 : f32
        %alloca_54 = memref.alloca() : memref<5x3x3xi16>
        %alloc_55 = memref.alloc() : memref<3x16x3xi64>
        tensor.yield %95 : f16
      } : tensor<?x3x3xf16>
      %264 = vector.broadcast %false : i1 to vector<5x3xi1>
      %dest, %accumulated_value = vector.scan <and>, %98, %264 {inclusive = false, reduction_dim = 1 : i64} : vector<5x3x3xi1>, vector<5x3xi1>
      %265 = math.log %splat_51 : tensor<5x3x3xf16>
      %alloc_53 = memref.alloc() : memref<3x16xf32>
      scf.yield %alloc_53 : memref<3x16xf32>
    } else {
      %261 = vector.load %alloc_19[%c0, %c12, %c0] : memref<3x16x3xf32>, vector<3x16xf32>
      %262 = vector.insert %false_2, %58 [2] : i1 into vector<5xi1>
      %263 = math.tanh %cst_6 : f32
      %cast_51 = tensor.cast %0 : tensor<3xi32> to tensor<?xi32>
      %264 = index.divs %c8, %111
      %265 = arith.shrui %false, %false : i1
      %266 = math.roundeven %6 : tensor<3x16xf16>
      %267 = math.cos %6 : tensor<3x16xf16>
      %alloc_52 = memref.alloc() : memref<3x16xf32>
      scf.yield %alloc_52 : memref<3x16xf32>
    }
    %154 = math.exp2 %6 : tensor<3x16xf16>
    %155 = memref.realloc %alloc_12 : memref<3xf16> to memref<16xf16>
    %156 = math.exp2 %9 : tensor<3x16xf32>
    %157 = arith.muli %c0_i32, %c0_i32 : i32
    %158 = arith.remf %95, %cst : f16
    %159 = arith.shli %c1_i64, %c1_i64 : i64
    %160 = math.roundeven %101 : tensor<3xf32>
    memref.assume_alignment %alloc_14, 16 : memref<3x16xi32>
    %161 = arith.andi %121, %121 : i64
    %162 = math.cttz %11 : tensor<3xi32>
    %163 = math.tan %9 : tensor<3x16xf32>
    %164 = arith.addf %cst_3, %extracted : f32
    %165 = scf.if %false_2 -> (i1) {
      %261 = arith.divsi %c497_i16, %c497_i16 : i16
      memref.store %135, %alloc_9[%c2] : memref<3xi16>
      %alloca_51 = memref.alloca() : memref<5x3x3xi1>
      %262 = math.ctlz %75 : tensor<3x16xi32>
      %263 = math.exp2 %8 : tensor<5x3x3xf32>
      %264 = math.fma %95, %48, %48 : f16
      %265 = arith.shrsi %c25321_i16, %c12120_i16 : i16
      %266 = index.floordivs %127, %c11
      scf.yield %false_4 : i1
    } else {
      %261 = bufferization.to_memref %splat_28 : memref<3x16x3xi16>
      %262 = affine.apply affine_map<(d0) -> (d0)>(%c10)
      %263 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 64) mod 16 + d1 - 1, d2 mod 2)>(%c0, %c2, %c11, %108)
      %264 = arith.mulf %cst_6, %cst_5 : f32
      %265 = vector.extract %98[3] : vector<5x3x3xi1>
      %splat_51 = tensor.splat %cst_1 : tensor<3x16xf16>
      %266 = vector.extract_strided_slice %104 {offsets = [0], sizes = [1], strides = [1]} : vector<3x16xi32> to vector<1x16xi32>
      %267 = index.sub %73, %67
      scf.yield %false_2 : i1
    }
    %166 = arith.minf %95, %cst_1 : f16
    %167 = affine.if affine_set<(d0, d1) : (d0 * 16 == 0, d0 mod 128 >= 0, d0 mod 128 - d0 >= 0)>(%c10, %c3) -> memref<3x16xf16> {
      %261 = vector.flat_transpose %34 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %262 = math.ctpop %15 : tensor<5x3x3xi32>
      bufferization.dealloc_tensor %4 : tensor<3x16xi16>
      memref.copy %alloc_25, %80 : memref<3xi16> to memref<3xi16>
      %263 = arith.shli %c12120_i16, %135 : i16
      %264 = math.roundeven %8 : tensor<5x3x3xf32>
      %265 = math.cttz %7 : tensor<3x16xi16>
      %266 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3)>(%c12, %27, %c15, %67)
      affine.yield %alloc_8 : memref<3x16xf16>
    } else {
      %261 = memref.realloc %80 : memref<3xi16> to memref<3xi16>
      %262 = arith.muli %false_4, %165 : i1
      %263 = vector.extract %33[0] : vector<3xi16>
      %264 = index.sizeof
      %265 = index.sizeof
      %266 = arith.remf %cst_3, %cst_3 : f32
      %267 = arith.shrui %c25321_i16, %c-20866_i16 : i16
      %268 = tensor.empty() : tensor<3x16xi16>
      %mapped_51 = linalg.map ins(%alloc_16 : memref<3x16xi16>) outs(%268 : tensor<3x16xi16>)
        (%in: i16) {
          %alloc_52 = memref.alloc() : memref<5x3x3xi1>
          memref.copy %alloc, %alloc_52 : memref<5x3x3xi1> to memref<5x3x3xi1>
          %269 = arith.divf %95, %95 : f16
          %270 = math.roundeven %3 : tensor<3xf16>
          %271 = index.floordivs %73, %79
          %272 = math.cttz %10 : tensor<3xi16>
          %from_elements_53 = tensor.from_elements %95, %cst_7, %95 : tensor<3xf16>
          %273 = vector.transpose %35, [0] : vector<3xi16> to vector<3xi16>
          %274 = bufferization.to_memref %13 : memref<3x16xi32>
          memref.store %c25321_i16, %63[%c2] : memref<3xi16>
          %cst_54 = arith.constant 1.000000e+00 : f32
          %cst_55 = arith.constant 0.000000e+00 : f32
          %275 = vector.transfer_read %2[%30, %47], %cst_55 : tensor<3x16xf32>, vector<f32>
          %276 = index.divs %c12, %c14
          %277 = arith.maxui %c0_i32, %c0_i32 : i32
          %278 = arith.divsi %false, %165 : i1
          %inserted_56 = tensor.insert %cst_7 into %from_elements_53[%c2] : tensor<3xf16>
          %279 = math.ctlz %c1_i64 : i64
          %280 = math.ctlz %5 : tensor<3x16xi64>
          %281 = math.round %cst_6 : f32
          %282 = arith.divsi %c585361325_i64, %121 : i64
          %283 = math.log %3 : tensor<3xf16>
          %284 = vector.extract_strided_slice %19 {offsets = [2], sizes = [3], strides = [1]} : vector<16xi64> to vector<3xi64>
          %285 = math.roundeven %95 : f16
          %alloc_57 = memref.alloc() : memref<3x16xi1>
          %286 = math.ipowi %0, %11 : tensor<3xi32>
          %287 = vector.matrix_multiply %284, %19 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 16 : i32} : (vector<3xi64>, vector<16xi64>) -> vector<48xi64>
          %288 = math.cos %95 : f16
          %289 = vector.broadcast %c0_i32 : i32 to vector<5x3x16xi32>
          %290 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %99, %104, %289 : vector<5x3x3xi32>, vector<3x16xi32> into vector<5x3x16xi32>
          %291 = arith.maxsi %c-20866_i16, %c-30322_i16 : i16
          %292 = memref.realloc %63 : memref<3xi16> to memref<16xi16>
          %293 = arith.ceildivsi %in, %c-20866_i16 : i16
          %294 = math.roundeven %2 : tensor<3x16xf32>
          %295 = arith.xori %c-20866_i16, %c-20866_i16 : i16
          %296 = index.divs %30, %c13
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      affine.yield %alloc_8 : memref<3x16xf16>
    }
    %168 = arith.mulf %48, %cst_0 : f16
    %cast_31 = tensor.cast %6 : tensor<3x16xf16> to tensor<?x?xf16>
    %169 = arith.shrui %c497_i16, %c-30322_i16 : i16
    bufferization.dealloc_tensor %3 : tensor<3xf16>
    %170 = math.cos %95 : f16
    %171 = arith.remf %cst_3, %cst_5 : f32
    %alloc_32 = memref.alloc() : memref<3x16xf32>
    memref.copy %153, %alloc_32 : memref<3x16xf32> to memref<3x16xf32>
    %172 = math.round %cst_7 : f16
    %173 = math.fma %2, %2, %2 : tensor<3x16xf32>
    %174 = arith.cmpi uge, %c497_i16, %135 : i16
    %175 = arith.muli %c1_i64, %121 : i64
    %176 = math.ceil %2 : tensor<3x16xf32>
    %177 = vector.matrix_multiply %54, %58 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<3xi1>, vector<5xi1>) -> vector<15xi1>
    %178 = math.cttz %4 : tensor<3x16xi16>
    %179 = vector.broadcast %false : i1 to vector<5x3xi1>
    %180 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %34, %98, %179 : vector<3xi1>, vector<5x3x3xi1> into vector<5x3xi1>
    %181 = math.expm1 %6 : tensor<3x16xf16>
    %182 = bufferization.to_memref %7 : memref<3x16xi16>
    %183 = math.log %splat : tensor<3xf16>
    %184 = bufferization.clone %alloc_15 : memref<3x16xi64> to memref<3x16xi64>
    %185 = vector.create_mask %c14, %47 : vector<3x16xi1>
    %186 = math.log10 %48 : f16
    %187 = tensor.empty() : tensor<3x16xi64>
    %188 = vector.broadcast %false : i1 to vector<16xi1>
    %189 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %34, %185, %188 : vector<3xi1>, vector<3x16xi1> into vector<16xi1>
    %190 = vector.transpose %54, [0] : vector<3xi1> to vector<3xi1>
    %alloca_33 = memref.alloca() : memref<3xi16>
    %191 = math.roundeven %extracted : f32
    %192 = scf.while (%arg1 = %148) : (vector<1xi16>) -> vector<1xi16> {
      %261 = arith.minf %cst_5, %extracted : f32
      %262 = bufferization.clone %alloc : memref<5x3x3xi1> to memref<5x3x3xi1>
      %263 = arith.maxui %false_4, %165 : i1
      %264 = vector.splat %c0_i32 : vector<5x3x3xi32>
      %265 = math.tanh %cst_3 : f32
      %266 = vector.extract %34[0] : vector<3xi1>
      %267 = math.absf %2 : tensor<3x16xf32>
      %splat_51 = tensor.splat %c585361325_i64 : tensor<3xi64>
      scf.condition(%false_2) %148 : vector<1xi16>
    } do {
    ^bb0(%arg1: vector<1xi16>):
      %261 = arith.subi %false, %false : i1
      %262 = index.add %c15, %51
      %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<5x3x3xi1> into tensor<15x3xi1>
      %263 = arith.addf %cst_7, %48 : f16
      %264 = affine.max affine_map<(d0, d1) -> (d1, d0 + d1, d1 * 16 - d1 floordiv 64, d0)>(%30, %c6)
      %265 = math.log2 %6 : tensor<3x16xf16>
      %c0_i32_51 = arith.constant 0 : i32
      %266 = vector.transfer_read %alloc_14[%c3, %c1], %c0_i32_51 : memref<3x16xi32>, vector<i32>
      %267 = memref.realloc %63 : memref<3xi16> to memref<3xi16>
      %268 = arith.maxsi %165, %false_4 : i1
      %269 = bufferization.clone %alloc_12 : memref<3xf16> to memref<3xf16>
      %270 = bufferization.clone %alloc_11 : memref<3x16x3xf32> to memref<3x16x3xf32>
      %271 = index.maxs %c7, %c4
      scf.index_switch %264 
      case 1 {
        %275 = vector.shuffle %105, %102 [0, 4] : vector<3x16xf32>, vector<3x16xf32>
        affine.store %cst_6, %270[%c0, %c2, %c8] : memref<3x16x3xf32>
        %276 = math.sqrt %cst_1 : f16
        %277 = arith.mulf %cst_6, %cst_5 : f32
        %278 = vector.broadcast %c585361325_i64 : i64 to vector<3xi64>
        %279 = vector.maskedload %118[%c1, %c10], %34, %278 : memref<3x16xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %280 = index.mul %67, %149
        %281 = math.log10 %cst_1 : f16
        %282 = vector.broadcast %cst_5 : f32 to vector<3x16x3xf32>
        %283 = vector.broadcast %false_4 : i1 to vector<3x16x3xi1>
        %284 = vector.broadcast %c0_i32_51 : i32 to vector<3x16x3xi32>
        %285 = vector.gather %101[%67] [%284], %283, %282 : tensor<3xf32>, vector<3x16x3xi32>, vector<3x16x3xi1>, vector<3x16x3xf32> into vector<3x16x3xf32>
        %286 = memref.realloc %269 : memref<3xf16> to memref<5xf16>
        %287 = vector.insert %false_4, %58 [4] : i1 into vector<5xi1>
        %288 = vector.shuffle %35, %33 [0, 1, 2, 4, 5] : vector<3xi16>, vector<3xi16>
        %289 = vector.broadcast %cst_6 : f32 to vector<16xf32>
        %dest, %accumulated_value = vector.scan <minf>, %102, %289 {inclusive = false, reduction_dim = 0 : i64} : vector<3x16xf32>, vector<16xf32>
        %290 = math.exp %9 : tensor<3x16xf32>
        %291 = index.mul %271, %27
        memref.assume_alignment %alloc_25, 4 : memref<3xi16>
        %292 = vector.maskedload %118[%c2, %c13], %34, %279 : memref<3x16xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        scf.yield
      }
      case 2 {
        %275 = math.ctlz %1 : tensor<3xi16>
        %extracted_52 = tensor.extract %1[%c1] : tensor<3xi16>
        %276 = index.divu %c1, %c2
        %277 = arith.xori %c1_i64, %c585361325_i64 : i64
        %cast_53 = tensor.cast %14 : tensor<5x3x3xi64> to tensor<?x?x?xi64>
        %278 = arith.cmpf ule, %cst_1, %cst_0 : f16
        %279 = arith.maxsi %false_2, %false_4 : i1
        %280 = math.expm1 %cst_5 : f32
        %281 = arith.remf %95, %cst_0 : f16
        %282 = bufferization.to_memref %14 : memref<5x3x3xi64>
        %283 = math.roundeven %9 : tensor<3x16xf32>
        bufferization.dealloc_tensor %cast_31 : tensor<?x?xf16>
        %284 = arith.ceildivsi %c497_i16, %135 : i16
        %285 = bufferization.to_memref %10 : memref<3xi16>
        %286 = math.fma %cst, %cst_7, %48 : f16
        %extracted_54 = tensor.extract %6[%c0, %c0] : tensor<3x16xf16>
        scf.yield
      }
      case 3 {
        %extracted_52 = tensor.extract %8[%c0, %c0, %c1] : tensor<5x3x3xf32>
        %275 = math.roundeven %cst_5 : f32
        %276 = math.exp %95 : f16
        %277 = math.round %cst_0 : f16
        %cst_53 = arith.constant 4.288000e+04 : f16
        %from_elements_54 = tensor.from_elements %135, %c12120_i16, %c497_i16 : tensor<3xi16>
        %278 = index.ceildivs %c9, %127
        %279 = affine.load %182[%c5, %c2] : memref<3x16xi16>
        %280 = bufferization.to_memref %9 : memref<3x16xf32>
        %281 = math.tanh %3 : tensor<3xf16>
        %extracted_55 = tensor.extract %5[%c1, %c1] : tensor<3x16xi64>
        %282 = math.roundeven %8 : tensor<5x3x3xf32>
        %283 = vector.broadcast %cst_7 : f16 to vector<3xf16>
        %284 = vector.maskedload %269[%c2], %54, %283 : memref<3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %285 = arith.shli %c-30322_i16, %135 : i16
        %286 = arith.minf %48, %48 : f16
        %287 = bufferization.clone %184 : memref<3x16xi64> to memref<3x16xi64>
        scf.yield
      }
      default {
        %275 = index.divs %73, %79
        %alloc_52 = memref.alloc() : memref<3x16xi64>
        %276 = memref.realloc %alloc_21 : memref<3xi1> to memref<3xi1>
        %277 = math.tanh %9 : tensor<3x16xf32>
        %278 = math.log %cst_3 : f32
        %279 = vector.broadcast %c12 : index to vector<5xindex>
        %280 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        vector.scatter %153[%c1, %c7] [%279], %57, %280 : memref<3x16xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        %281 = affine.min affine_map<(d0) -> (-((d0 + 2) ceildiv 4), (((d0 + 2) ceildiv 4) mod 64) floordiv 2)>(%c15)
        %282 = arith.minf %cst_1, %cst_0 : f16
        %283 = affine.load %alloc_13[%c9, %c0, %c12] : memref<5x3x3xf16>
        %284 = arith.mulf %cst_6, %cst_5 : f32
        %285 = arith.mulf %48, %cst_7 : f16
        %286 = math.log1p %2 : tensor<3x16xf32>
        %287 = math.atan %6 : tensor<3x16xf16>
        %288 = math.log2 %9 : tensor<3x16xf32>
        %cst_53 = arith.constant 1.78625626E+9 : f32
        %289 = vector.insert %c585361325_i64, %19 [13] : i64 into vector<16xi64>
      }
      %272 = math.expm1 %9 : tensor<3x16xf32>
      %273 = math.log2 %cst : f16
      %274 = arith.shrui %false_4, %false : i1
      scf.yield %148 : vector<1xi16>
    }
    %rank = tensor.rank %7 : tensor<3x16xi16>
    %193 = math.fma %expanded, %expanded, %expanded : tensor<3x1xf32>
    %194 = vector.broadcast %cst_6 : f32 to vector<3x16x3xf32>
    %195 = vector.broadcast %false_4 : i1 to vector<3x16x3xi1>
    %196 = vector.broadcast %c0_i32 : i32 to vector<3x16x3xi32>
    %197 = vector.gather %9[%c10, %c5] [%196], %195, %194 : tensor<3x16xf32>, vector<3x16x3xi32>, vector<3x16x3xi1>, vector<3x16x3xf32> into vector<3x16x3xf32>
    %198 = math.powf %3, %splat : tensor<3xf16>
    %199 = index.ceildivs %c7, %67
    %200 = arith.andi %135, %c12120_i16 : i16
    %201 = scf.index_switch %109 -> memref<5x3x3xi32> 
    case 1 {
      %261 = math.atan2 %101, %101 : tensor<3xf32>
      %262 = index.maxs %c2, %199
      %263 = bufferization.to_tensor %alloc_20 : memref<3xf16>
      %264 = arith.mulf %95, %cst_7 : f16
      %265 = arith.subi %false_2, %false_2 : i1
      %266 = index.divs %c6, %30
      %cst_51 = arith.constant 2.07828416E+9 : f32
      %267 = bufferization.to_memref %3 : memref<3xf16>
      %268 = arith.divui %false, %false : i1
      %269 = arith.floordivsi %false_2, %false_4 : i1
      %270 = arith.minf %extracted, %extracted : f32
      memref.copy %alloc_19, %alloc_11 : memref<3x16x3xf32> to memref<3x16x3xf32>
      %cst_52 = arith.constant 6.076800e+04 : f16
      %271 = vector.extract_strided_slice %54 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      %272 = math.cttz %c497_i16 : i16
      %273 = index.casts %c7 : index to i32
      %alloc_53 = memref.alloc() : memref<5x3x3xi32>
      scf.yield %alloc_53 : memref<5x3x3xi32>
    }
    case 2 {
      %261 = index.maxs %199, %199
      %262 = math.roundeven %9 : tensor<3x16xf32>
      %c0_i32_51 = arith.constant 0 : i32
      %263 = vector.transfer_read %0[%c0], %c0_i32_51 : tensor<3xi32>, vector<i32>
      %264 = arith.andi %c0_i32, %c0_i32 : i32
      %265 = math.tanh %95 : f16
      %266 = math.cos %9 : tensor<3x16xf32>
      %267 = affine.if affine_set<(d0, d1, d2) : (d0 - d1 - 1 >= 0, ((d0 - d1 - d0) floordiv 16) mod 128 >= 0)>(%c2, %c6, %c3) -> f32 {
        %cst_53 = arith.constant 2.06221261E+9 : f32
        %279 = affine.min affine_map<(d0) -> (d0 * -32, d0 * 32 - 4, d0 * 32 - 4)>(%199)
        %280 = arith.addf %cst_7, %cst_0 : f16
        %281 = arith.shrui %false, %165 : i1
        %282 = math.fma %cst_7, %95, %cst_7 : f16
        %283 = math.exp %cst_3 : f32
        %284 = math.ctlz %c0_i32_51 : i32
        %285 = arith.remf %cst_0, %cst_0 : f16
        affine.yield %cst_5 : f32
      } else {
        vector.print %196 : vector<3x16x3xi32>
        %279 = vector.matrix_multiply %34, %58 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<3xi1>, vector<5xi1>) -> vector<15xi1>
        %280 = math.fma %8, %8, %8 : tensor<5x3x3xf32>
        %281 = math.exp2 %8 : tensor<5x3x3xf32>
        %282 = arith.divsi %false, %false_4 : i1
        %283 = math.roundeven %cst_7 : f16
        memref.store %c0_i32_51, %alloc_14[%c1, %c5] : memref<3x16xi32>
        %284 = arith.xori %c585361325_i64, %c1_i64 : i64
        affine.yield %extracted : f32
      }
      %268 = math.fma %48, %cst, %48 : f16
      %269 = math.powf %expanded, %expanded : tensor<3x1xf32>
      %270 = vector.broadcast %false_2 : i1 to vector<16x3x5x3xi1>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d4, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %195, %100, %270 : vector<3x16x3xi1>, vector<5x3x3xi1> into vector<16x3x5x3xi1>
      %272 = math.roundeven %expanded : tensor<3x1xf32>
      %273 = index.mul %30, %127
      %274 = arith.shrui %135, %c497_i16 : i16
      %275 = math.exp2 %cst_7 : f16
      %276 = vector.broadcast %false_4 : i1 to vector<16x5x3xi1>
      %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %103, %98, %276 : vector<3x16xi1>, vector<5x3x3xi1> into vector<16x5x3xi1>
      %278 = arith.minf %cst_3, %cst_3 : f32
      %alloc_52 = memref.alloc() : memref<5x3x3xi32>
      scf.yield %alloc_52 : memref<5x3x3xi32>
    }
    default {
      %261 = affine.min affine_map<(d0, d1) -> (((-d1 + 4) ceildiv 64 + d1) ceildiv 16, -1, (-d1 + 4) ceildiv 64 + d1, -d1 + 4)>(%67, %111)
      %262 = tensor.empty() : tensor<3x16xi64>
      %263 = arith.muli %165, %false_4 : i1
      %264 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - (d2 - d1), d3, d1, d0)>(%111, %rank, %67, %106)
      %265 = scf.while (%arg1 = %false_2) : (i1) -> i1 {
        %276 = tensor.empty() : tensor<3x16x3xi1>
        %277 = vector.broadcast %c0_i32 : i32 to vector<3xi32>
        %278 = vector.gather %276[%73, %c1, %27] [%277], %54, %54 : tensor<3x16x3xi1>, vector<3xi32>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %148, %148, %c25321_i16 : vector<1xi16>, vector<1xi16> into i16
        memref.assume_alignment %alloc_11, 2 : memref<3x16x3xf32>
        %280 = vector.broadcast %cst_5 : f32 to vector<16x3x16x3xf32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %197, %197, %280 : vector<3x16x3xf32>, vector<3x16x3xf32> into vector<16x3x16x3xf32>
        %282 = index.mul %29, %c1
        %283 = arith.remf %cst_6, %cst_3 : f32
        %alloca_53 = memref.alloca() : memref<3x16x3xf16>
        %284 = vector.shuffle %19, %19 [0, 1, 2, 4, 5, 6, 9, 10, 12, 13, 15, 16, 18, 21, 22, 23, 24, 25, 28, 30, 31] : vector<16xi64>, vector<16xi64>
        scf.condition(%false) %false_2 : i1
      } do {
      ^bb0(%arg1: i1):
        %276 = arith.cmpf ogt, %cst_0, %95 : f16
        %extracted_53 = tensor.extract %20[] : tensor<i16>
        %277 = vector.maskedload %alloc_16[%c0, %c10], %54, %33 : memref<3x16xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %278 = arith.xori %c585361325_i64, %121 : i64
        %279 = vector.broadcast %c14 : index to vector<5xindex>
        vector.scatter %alloc_21[%c2] [%279], %57, %57 : memref<3xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %expanded_54 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<3x16xi16> into tensor<3x16x1xi16>
        %280 = math.atan %101 : tensor<3xf32>
        %281 = vector.extract %194[2, 11] : vector<3x16x3xf32>
        %282 = vector.broadcast %cst : f16 to vector<5xf16>
        %283 = vector.maskedload %alloc_13[%c3, %c1, %c0], %57, %282 : memref<5x3x3xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %284 = vector.extract_strided_slice %102 {offsets = [0], sizes = [3], strides = [1]} : vector<3x16xf32> to vector<3x16xf32>
        %285 = bufferization.clone %alloc_19 : memref<3x16x3xf32> to memref<3x16x3xf32>
        %286 = arith.negf %cst_1 : f16
        %287 = vector.broadcast %false_4 : i1 to vector<3x3xi1>
        %288 = vector.insert %287, %100 [0] : vector<3x3xi1> into vector<5x3x3xi1>
        %alloc_55 = memref.alloc() : memref<3x16xi32>
        bufferization.dealloc_tensor %8 : tensor<5x3x3xf32>
        %289 = math.log1p %2 : tensor<3x16xf32>
        scf.yield %false_2 : i1
      }
      %splat_51 = tensor.splat %cst_0 : tensor<3x16xf16>
      %266 = arith.cmpi ne, %135, %c25321_i16 : i16
      %267 = memref.load %alloc_23[%c6, %c0] : memref<16x3xi64>
      %268 = index.sub %67, %79
      %269 = index.ceildivs %c15, %c0
      %270 = index.maxs %264, %27
      %271 = arith.minui %165, %false_2 : i1
      %272 = math.log %splat : tensor<3xf16>
      %273 = arith.mulf %cst_5, %cst_3 : f32
      %274 = arith.addf %cst_1, %cst_7 : f16
      %275 = arith.mulf %cst, %cst_1 : f16
      %alloc_52 = memref.alloc() : memref<5x3x3xi32>
      scf.yield %alloc_52 : memref<5x3x3xi32>
    }
    %202 = affine.min affine_map<(d0) -> (d0 mod 2, -(d0 - 1))>(%30)
    %splat_34 = tensor.splat %c497_i16 : tensor<3x16xi16>
    %203 = arith.addf %extracted, %cst_3 : f32
    %204 = math.fma %101, %101, %101 : tensor<3xf32>
    %205 = arith.divui %121, %c585361325_i64 : i64
    %206 = vector.extract %100[4] : vector<5x3x3xi1>
    %207 = math.fma %101, %101, %101 : tensor<3xf32>
    %extracted_35 = tensor.extract %cast[%c0] : tensor<?xi16>
    %208 = arith.shrsi %c585361325_i64, %c1_i64 : i64
    %cst_36 = arith.constant 3.030400e+04 : f16
    %209 = vector.broadcast %false_4 : i1 to vector<16x5x3xi1>
    %210 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %185, %98, %209 : vector<3x16xi1>, vector<5x3x3xi1> into vector<16x5x3xi1>
    %211 = affine.apply affine_map<(d0) -> (-d0 + 16)>(%149)
    %212 = math.log10 %95 : f16
    memref.assume_alignment %alloc_8, 1 : memref<3x16xf16>
    %213 = math.ctlz %0 : tensor<3xi32>
    %214 = math.exp2 %48 : f16
    %splat_37 = tensor.splat %cst : tensor<3x16x3xf16>
    %215 = math.ceil %cst_5 : f32
    %216 = math.tanh %8 : tensor<5x3x3xf32>
    %217 = bufferization.to_tensor %alloc_22 : memref<3x16x3xi64>
    affine.for %arg1 = 0 to 5 {
    }
    %218 = math.atan2 %cst_1, %95 : f16
    %219 = vector.maskedload %alloc[%c3, %c0, %c2], %58, %57 : memref<5x3x3xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
    %220 = vector.matrix_multiply %33, %148 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<1xi16>) -> vector<3xi16>
    %221 = index.maxs %c7, %211
    %222 = arith.cmpi eq, %c-30322_i16, %c25321_i16 : i16
    %223 = math.powf %extracted, %cst_5 : f32
    %splat_38 = tensor.splat %c1_i64 : tensor<3x16xi64>
    %224 = memref.realloc %alloc_25 : memref<3xi16> to memref<3xi16>
    %225 = arith.maxui %c0_i32, %c0_i32 : i32
    %226 = affine.min affine_map<(d0, d1) -> (d0 - 16)>(%c11, %202)
    %227 = math.cttz %5 : tensor<3x16xi64>
    %228 = scf.while (%arg1 = %cst_1) : (f16) -> f16 {
      %generated = tensor.generate %108 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %267 = arith.muli %c25321_i16, %c497_i16 : i16
        %268 = math.log %cst_7 : f16
        %alloc_52 = memref.alloc() : memref<i16>
        memref.copy %alloc_24, %alloc_52 : memref<i16> to memref<i16>
        %269 = arith.addi %c585361325_i64, %c1_i64 : i64
        tensor.yield %false_4 : i1
      } : tensor<?x3x3xi1>
      %261 = vector.bitcast %102 : vector<3x16xf32> to vector<3x16xi32>
      %262 = arith.addf %arg1, %cst : f16
      %263 = math.cttz %10 : tensor<3xi16>
      %alloca_51 = memref.alloca() : memref<3xf32>
      %264 = arith.divsi %c-30322_i16, %c12120_i16 : i16
      %265 = index.ceildivu %108, %c0
      %266 = math.log %6 : tensor<3x16xf16>
      scf.condition(%false_2) %cst_0 : f16
    } do {
    ^bb0(%arg1: f16):
      %261 = vector.splat %cst_0 : vector<3xf16>
      %generated = tensor.generate %109, %109 {
      ^bb0(%arg2: index, %arg3: index):
        %272 = math.exp %expanded : tensor<3x1xf32>
        %273 = arith.divsi %false_4, %false_4 : i1
        %274 = arith.minui %c-30322_i16, %c497_i16 : i16
        %275 = math.log %2 : tensor<3x16xf32>
        tensor.yield %121 : i64
      } : tensor<?x?xi64>
      %alloca_51 = memref.alloca() : memref<3xf32>
      %262 = arith.divsi %false, %false_4 : i1
      memref.copy %182, %alloc_18 : memref<3x16xi16> to memref<3x16xi16>
      %263 = arith.remsi %c497_i16, %135 : i16
      %264 = math.log1p %9 : tensor<3x16xf32>
      %265 = index.sub %67, %211
      %266 = math.atan %cst_0 : f16
      %267 = vector.shuffle %103, %103 [1, 2, 3] : vector<3x16xi1>, vector<3x16xi1>
      %268 = index.sizeof
      %rank_52 = tensor.rank %13 : tensor<3x16xi32>
      %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2 ceildiv 64, (d3 + 32) * 16, -d0 + 132)>(%67, %rank_52, %89, %c0)
      %270 = memref.realloc %alloc_21 : memref<3xi1> to memref<3xi1>
      memref.assume_alignment %alloc_23, 1 : memref<16x3xi64>
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (0 >= 0)>(%c9, %c0, %c7, %c2) -> f16 {
        %272 = arith.mulf %95, %cst_7 : f16
        %from_elements_53 = tensor.from_elements %c1_i64, %121, %c1_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %121, %121, %c585361325_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %121, %c585361325_i64, %121, %121, %c585361325_i64, %c585361325_i64, %c1_i64, %c1_i64, %c585361325_i64, %121, %121, %121, %121, %c585361325_i64, %121, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %121, %121, %121, %c585361325_i64, %c1_i64, %c1_i64, %c585361325_i64, %c1_i64, %121, %121, %c585361325_i64, %121, %c1_i64, %c585361325_i64, %c1_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c1_i64, %c585361325_i64, %121, %121, %121, %121, %c585361325_i64, %c585361325_i64, %121, %c1_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %121, %c1_i64, %c585361325_i64, %c1_i64, %c585361325_i64, %c1_i64, %c585361325_i64, %121, %c585361325_i64, %c585361325_i64, %c1_i64, %121, %c1_i64, %c1_i64, %121, %121, %c585361325_i64, %121, %121, %c1_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %121, %c1_i64, %c1_i64, %c1_i64, %121, %c1_i64, %c585361325_i64, %121, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %121, %c1_i64, %c1_i64, %c585361325_i64, %c1_i64, %c1_i64, %121, %c1_i64, %121, %121, %121, %c585361325_i64, %c585361325_i64, %121, %c585361325_i64, %121, %121, %121, %c1_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %c1_i64, %c585361325_i64, %c585361325_i64, %c585361325_i64, %c1_i64, %c585361325_i64, %121, %c585361325_i64, %c585361325_i64 : tensor<3x16x3xi64>
        %273 = vector.broadcast %95 : f16 to vector<f16>
        %274 = vector.transfer_write %273, %3[%47] : vector<f16>, tensor<3xf16>
        %275 = math.expm1 %3 : tensor<3xf16>
        %276 = arith.divui %135, %c25321_i16 : i16
        %from_elements_54 = tensor.from_elements %false_2, %false_2, %false_2, %false_4, %165, %false_2, %false_2, %false, %false, %false, %165, %false_4, %false, %false_4, %false_2, %false_2, %165, %false_4, %165, %false, %false_2, %false_2, %false, %false, %false, %false_2, %false_4, %165, %false, %false, %false, %165, %false_2, %false, %false_4, %false_4, %false_2, %false_4, %false_2, %false_4, %165, %false, %165, %false, %false_2, %false, %165, %false : tensor<3x16xi1>
        %277 = arith.divsi %135, %c-20866_i16 : i16
        %true = index.bool.constant true
        affine.yield %48 : f16
      } else {
        %272 = math.copysign %95, %cst_0 : f16
        %273 = index.sizeof
        %274 = math.log2 %2 : tensor<3x16xf32>
        %275 = arith.maxsi %false_4, %165 : i1
        %cast_53 = tensor.cast %14 : tensor<5x3x3xi64> to tensor<?x?x?xi64>
        %276 = arith.mulf %cst, %cst_7 : f16
        %277 = math.expm1 %2 : tensor<3x16xf32>
        %278 = math.powf %8, %8 : tensor<5x3x3xf32>
        affine.yield %arg1 : f16
      }
      scf.yield %arg1 : f16
    }
    %rank_39 = tensor.rank %39 : tensor<3xi1>
    %229 = arith.shli %c1_i64, %121 : i64
    %230 = math.fma %cst_6, %extracted, %cst_3 : f32
    %alloc_40 = memref.alloc() : memref<16x3xi64>
    %231 = tensor.empty() : tensor<3x3xi64>
    %232 = linalg.matmul ins(%5, %alloc_40 : tensor<3x16xi64>, memref<16x3xi64>) outs(%231 : tensor<3x3xi64>) -> tensor<3x3xi64>
    %233 = bufferization.clone %122 : memref<5x3x3xf16> to memref<5x3x3xf16>
    %234 = vector.extract_strided_slice %104 {offsets = [1], sizes = [2], strides = [1]} : vector<3x16xi32> to vector<2x16xi32>
    %235 = tensor.empty() : tensor<3x5xi16>
    %mapped_41 = linalg.map ins(%25, %25, %25 : tensor<3x5xi16>, tensor<3x5xi16>, tensor<3x5xi16>) outs(%235 : tensor<3x5xi16>)
      (%in: i16, %in_51: i16, %in_52: i16) {
        %261 = arith.addi %c1_i64, %121 : i64
        memref.assume_alignment %alloc_13, 1 : memref<5x3x3xf16>
        %262 = math.fma %expanded, %expanded, %expanded : tensor<3x1xf32>
        %263 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 8 - 64)>(%67, %rank, %221, %c0)
        %264 = vector.transpose %105, [1, 0] : vector<3x16xf32> to vector<16x3xf32>
        %265 = tensor.empty() : tensor<3x16x3xi32>
        %266 = memref.load %153[%c0, %c9] : memref<3x16xf32>
        %cst_53 = arith.constant 0x4DD272DD : f32
        %267 = vector.extract %34[2] : vector<3xi1>
        %268 = vector.broadcast %c0_i32 : i32 to vector<5x3xi32>
        %dest, %accumulated_value = vector.scan <maxsi>, %99, %268 {inclusive = false, reduction_dim = 2 : i64} : vector<5x3x3xi32>, vector<5x3xi32>
        %269 = arith.shli %c1_i64, %121 : i64
        memref.copy %alloc_9, %80 : memref<3xi16> to memref<3xi16>
        %270 = math.absf %9 : tensor<3x16xf32>
        %271 = math.cttz %231 : tensor<3x3xi64>
        memref.store %cst_1, %alloc_12[%c0] : memref<3xf16>
        %splat_54 = tensor.splat %cst_1 : tensor<5x3x3xf16>
        %272 = arith.minf %cst, %cst_1 : f16
        %273 = arith.minui %c0_i32, %c0_i32 : i32
        %274 = math.ctpop %7 : tensor<3x16xi16>
        %275 = arith.shli %c497_i16, %extracted_35 : i16
        %cst_55 = arith.constant 1.70050266E+9 : f32
        %alloc_56 = memref.alloc() : memref<3x16x3xf32>
        %from_elements_57 = tensor.from_elements %cst_6, %cst_5, %cst_3 : tensor<3xf32>
        %276 = arith.subi %121, %c1_i64 : i64
        %277 = vector.matrix_multiply %220, %148 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<1xi16>) -> vector<3xi16>
        %278 = affine.if affine_set<(d0, d1, d2, d3) : (0 >= 0)>(%c5, %c10, %c4, %c2) -> memref<5x3x3xi16> {
          %284 = math.ipowi %false_4, %false_4 : i1
          %285 = math.expm1 %95 : f16
          %286 = math.exp %splat_54 : tensor<5x3x3xf16>
          %287 = affine.min affine_map<(d0) -> ((d0 floordiv 32) mod 32, d0 floordiv 32 + d0 ceildiv 32, (d0 floordiv 32) mod 32, (d0 ceildiv 32 - 8) * 32)>(%226)
          %288 = arith.minui %165, %false_4 : i1
          %289 = vector.bitcast %98 : vector<5x3x3xi1> to vector<5x3x3xi1>
          vector.print %289 : vector<5x3x3xi1>
          %290 = arith.remsi %in, %in_52 : i16
          %alloc_59 = memref.alloc() : memref<5x3x3xi16>
          affine.yield %alloc_59 : memref<5x3x3xi16>
        } else {
          vector.print %277 : vector<3xi16>
          %284 = arith.minsi %c12120_i16, %c12120_i16 : i16
          %285 = arith.floordivsi %c585361325_i64, %c585361325_i64 : i64
          memref.assume_alignment %122, 1 : memref<5x3x3xf16>
          %286 = arith.muli %in_51, %c12120_i16 : i16
          %287 = arith.shrui %in_52, %c497_i16 : i16
          %288 = arith.mulf %48, %cst_7 : f16
          %289 = vector.extract %206[2] : vector<3x3xi1>
          %alloc_59 = memref.alloc() : memref<5x3x3xi16>
          affine.yield %alloc_59 : memref<5x3x3xi16>
        }
        %279 = memref.realloc %alloc_9 : memref<3xi16> to memref<3xi16>
        %280 = math.ipowi %false_2, %false_2 : i1
        %281 = index.sub %c15, %c3
        %282 = vector.extract %58[4] : vector<5xi1>
        %extracted_58 = tensor.extract %25[%c2, %c0] : tensor<3x5xi16>
        %283 = memref.realloc %alloc_12 : memref<3xf16> to memref<5xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %236 = index.divu %c11, %c15
    scf.if %false_2 {
      %261 = tensor.empty(%106) : tensor<?xi16>
      %262 = affine.apply affine_map<(d0) -> (d0 mod 16)>(%c3)
      %263 = affine.if affine_set<(d0, d1, d2, d3) : (0 >= 0)>(%c13, %c9, %c10, %c1) -> i16 {
        bufferization.dealloc_tensor %cast : tensor<?xi16>
        %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %c585361325_i64 : vector<16xi64>, vector<16xi64> into i64
        %268 = vector.broadcast %c0_i32 : i32 to vector<i32>
        %269 = vector.transfer_write %268, %75[%30, %c10] : vector<i32>, tensor<3x16xi32>
        %270 = arith.ceildivsi %c0_i32, %c0_i32 : i32
        %271 = arith.shli %c1_i64, %121 : i64
        %272 = arith.mulf %extracted, %extracted : f32
        %273 = vector.extract %54[0] : vector<3xi1>
        %274 = vector.broadcast %c585361325_i64 : i64 to vector<3xi64>
        %275 = vector.transfer_write %274, %231[%c3, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, tensor<3x3xi64>
        affine.yield %c-20866_i16 : i16
      } else {
        %267 = arith.shrui %c-30322_i16, %c-30322_i16 : i16
        %268 = math.log1p %6 : tensor<3x16xf16>
        %rank_53 = tensor.rank %2 : tensor<3x16xf32>
        %alloca_54 = memref.alloca() : memref<3xf16>
        memref.assume_alignment %118, 4 : memref<3x16xi64>
        %269 = index.ceildivs %199, %199
        %270 = arith.divsi %c-30322_i16, %c25321_i16 : i16
        %271 = arith.maxui %c497_i16, %extracted_35 : i16
        affine.yield %c25321_i16 : i16
      }
      %cst_51 = arith.constant 1.2653481E+9 : f32
      %264 = index.maxu %c15, %127
      %alloc_52 = memref.alloc() : memref<3xi32>
      %265 = vector.gather %alloc_52[%79] [%99], %98, %99 : memref<3xi32>, vector<5x3x3xi32>, vector<5x3x3xi1>, vector<5x3x3xi32> into vector<5x3x3xi32>
      %266 = index.mul %51, %rank
      %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<3x16xf16> into tensor<48xf16>
    } else {
      %261 = vector.extract_strided_slice %99 {offsets = [1, 0], sizes = [2, 3], strides = [1, 1]} : vector<5x3x3xi32> to vector<2x3x3xi32>
      %262 = arith.andi %c25321_i16, %c12120_i16 : i16
      %263 = arith.addi %c585361325_i64, %c1_i64 : i64
      %264 = math.exp2 %6 : tensor<3x16xf16>
      %265 = math.round %3 : tensor<3xf16>
      %alloca_51 = memref.alloca() : memref<3x16x3xi64>
      %expanded_52 = tensor.expand_shape %splat_38 [[0], [1, 2]] : tensor<3x16xi64> into tensor<3x16x1xi64>
      %266 = tensor.empty() : tensor<5x3x3xi1>
      %mapped_53 = linalg.map ins(%alloc : memref<5x3x3xi1>) outs(%266 : tensor<5x3x3xi1>)
        (%in: i1) {
          %267 = math.cttz %7 : tensor<3x16xi16>
          %268 = vector.matrix_multiply %33, %148 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<1xi16>) -> vector<3xi16>
          %269 = affine.max affine_map<(d0) -> (d0 * 9, d0 * 8)>(%c2)
          %270 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 8, d2, (d1 + 64) * 64, -d1 + 8)>(%c0, %c1, %106, %106)
          %271 = math.copysign %cst_3, %cst_3 : f32
          %272 = arith.addi %false_4, %false_2 : i1
          %273 = math.cos %cst_1 : f16
          %274 = index.maxu %202, %106
          %275 = arith.divf %cst_7, %cst_0 : f16
          %276 = arith.cmpf ule, %95, %48 : f16
          %277 = arith.shrsi %c-30322_i16, %c25321_i16 : i16
          %278 = math.log10 %6 : tensor<3x16xf16>
          %279 = arith.muli %false, %165 : i1
          memref.assume_alignment %63, 1 : memref<3xi16>
          %280 = vector.transpose %196, [0, 2, 1] : vector<3x16x3xi32> to vector<3x3x16xi32>
          %281 = affine.max affine_map<(d0, d1) -> (-(d1 floordiv 128), d1 + 8, -(d1 floordiv 128) - d1 mod 2, d1)>(%109, %c12)
          %282 = arith.muli %c1_i64, %c585361325_i64 : i64
          %283 = math.powf %cst_6, %cst_3 : f32
          %284 = arith.mulf %cst, %95 : f16
          %285 = arith.addi %in, %in : i1
          %286 = arith.addf %cst_6, %extracted : f32
          %287 = math.atan %cst_5 : f32
          %288 = math.copysign %9, %2 : tensor<3x16xf32>
          %289 = vector.extract %58[1] : vector<5xi1>
          %290 = arith.divsi %c25321_i16, %extracted_35 : i16
          %291 = affine.min affine_map<(d0, d1) -> (d1 floordiv 32 + 1)>(%127, %109)
          %292 = vector.bitcast %19 : vector<16xi64> to vector<16xi64>
          %293 = bufferization.clone %alloc_11 : memref<3x16x3xf32> to memref<3x16x3xf32>
          %294 = vector.broadcast %cst_7 : f16 to vector<3xf16>
          %295 = vector.maskedload %122[%c0, %c0, %c0], %34, %294 : memref<5x3x3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
          %cast_54 = tensor.cast %splat_38 : tensor<3x16xi64> to tensor<?x?xi64>
          %296 = math.roundeven %cst_6 : f32
          %297 = math.exp2 %splat : tensor<3xf16>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
    }
    %237 = tensor.empty() : tensor<3x16xi64>
    %mapped_42 = linalg.map ins(%splat_38 : tensor<3x16xi64>) outs(%237 : tensor<3x16xi64>)
      (%in: i64) {
        %261 = affine.for %arg1 = 0 to 116 iter_args(%arg2 = %alloc_18) -> (memref<3x16xi16>) {
          affine.yield %182 : memref<3x16xi16>
        }
        %262 = math.log %9 : tensor<3x16xf32>
        %263 = arith.shrui %c-20866_i16, %c497_i16 : i16
        %264 = index.add %c0, %c13
        %265 = math.fma %extracted, %extracted, %extracted : f32
        %dest, %accumulated_value = vector.scan <maxsi>, %196, %104 {inclusive = false, reduction_dim = 2 : i64} : vector<3x16x3xi32>, vector<3x16xi32>
        %266 = math.roundeven %9 : tensor<3x16xf32>
        %267 = vector.extract %219[3] : vector<5xi1>
        %268 = math.ipowi %from_elements, %from_elements : tensor<3xi64>
        vector.print %103 : vector<3x16xi1>
        %269 = memref.realloc %alloc_9 : memref<3xi16> to memref<5xi16>
        %alloca_51 = memref.alloca() : memref<3xi32>
        %generated = tensor.generate %c12, %226, %rank {
        ^bb0(%arg1: index, %arg2: index, %arg3: index):
          %285 = math.rsqrt %3 : tensor<3xf16>
          %286 = tensor.empty(%c1, %c0) : tensor<?x?xi64>
          %287 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - 32) ceildiv 16)>(%27, %c10, %c6, %109)
          %288 = math.cos %9 : tensor<3x16xf32>
          tensor.yield %48 : f16
        } : tensor<?x?x?xf16>
        %270 = arith.cmpi slt, %c-30322_i16, %c-30322_i16 : i16
        vector.print %206 : vector<3x3xi1>
        %271 = arith.cmpi sle, %165, %165 : i1
        %cst_52 = arith.constant 1.49993088E+9 : f32
        %272 = vector.maskedload %alloc_9[%c0], %34, %33 : memref<3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %273 = vector.broadcast %cst_3 : f32 to vector<16x3x16x3xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %194, %194, %273 : vector<3x16x3xf32>, vector<3x16x3xf32> into vector<16x3x16x3xf32>
        %alloca_53 = memref.alloca() : memref<5x3x3xi1>
        %expanded_54 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<3x16xi32> into tensor<3x16x1xi32>
        %275 = bufferization.to_tensor %alloc_14 : memref<3x16xi32>
        %276 = scf.index_switch %89 -> tensor<3xi1> 
        case 1 {
          %285 = math.ipowi %14, %14 : tensor<5x3x3xi64>
          %286 = affine.load %alloc_20[%c9] : memref<3xf16>
          %287 = arith.mulf %48, %cst_0 : f16
          %288 = math.floor %95 : f16
          %289 = bufferization.clone %alloc_9 : memref<3xi16> to memref<3xi16>
          %290 = affine.load %alloc_10[%c15, %c7, %c15] : memref<5x3x3xf16>
          %291 = index.ceildivs %c5, %c5
          %292 = affine.apply affine_map<(d0) -> ((d0 - 16) ceildiv 32)>(%111)
          %293 = vector.broadcast %c0_i32 : i32 to vector<i32>
          %294 = vector.transfer_write %293, %275[%c11, %c14] : vector<i32>, tensor<3x16xi32>
          %295 = math.exp2 %extracted : f32
          %296 = vector.extract %103[0] : vector<3x16xi1>
          %297 = arith.shli %c25321_i16, %c25321_i16 : i16
          %c0_i64_57 = arith.constant 0 : i64
          %298 = vector.transfer_read %184[%109, %27], %c0_i64_57 : memref<3x16xi64>, vector<i64>
          memref.copy %118, %184 : memref<3x16xi64> to memref<3x16xi64>
          %rank_58 = tensor.rank %1 : tensor<3xi16>
          %alloc_59 = memref.alloc() : memref<3x16x3xf16>
          scf.yield %39 : tensor<3xi1>
        }
        default {
          %285 = vector.broadcast %cst_3 : f32 to vector<16xf32>
          %286 = vector.insert %285, %105 [1] : vector<16xf32> into vector<3x16xf32>
          %287 = arith.subi %121, %c585361325_i64 : i64
          %rank_57 = tensor.rank %101 : tensor<3xf32>
          %288 = index.add %127, %236
          %289 = math.atan2 %101, %101 : tensor<3xf32>
          %290 = math.copysign %8, %8 : tensor<5x3x3xf32>
          %291 = vector.matrix_multiply %58, %177 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<5xi1>, vector<15xi1>) -> vector<3xi1>
          %292 = index.mul %108, %rank_57
          %293 = math.atan2 %48, %48 : f16
          %expanded_58 = tensor.expand_shape %3 [[0, 1]] : tensor<3xf16> into tensor<3x1xf16>
          %294 = math.expm1 %cst_1 : f16
          %295 = memref.realloc %alloc_12 : memref<3xf16> to memref<5xf16>
          %296 = arith.cmpf uno, %extracted, %extracted : f32
          %297 = vector.transpose %272, [0] : vector<3xi16> to vector<3xi16>
          %298 = math.fma %cst_5, %cst_6, %cst_3 : f32
          memref.store %c-30322_i16, %alloc_16[%c0, %c8] : memref<3x16xi16>
          scf.yield %39 : tensor<3xi1>
        }
        %generated_55 = tensor.generate %109, %c9 {
        ^bb0(%arg1: index, %arg2: index):
          %285 = vector.broadcast %false_2 : i1 to vector<16xi1>
          %286 = vector.insert %285, %185 [2] : vector<16xi1> into vector<3x16xi1>
          %287 = arith.cmpi ult, %in, %in : i64
          %288 = arith.shli %extracted_35, %c-30322_i16 : i16
          memref.store %extracted_35, %alloc_25[%c2] : memref<3xi16>
          tensor.yield %c0_i32 : i32
        } : tensor<?x?xi32>
        %277 = math.cttz %20 : tensor<i16>
        %278 = arith.addf %cst_7, %cst : f16
        %279 = vector.bitcast %33 : vector<3xi16> to vector<3xi16>
        %280 = arith.ceildivsi %false_4, %false_4 : i1
        %281 = arith.minf %cst_7, %cst_1 : f16
        %282 = math.atan2 %3, %3 : tensor<3xf16>
        %283 = memref.realloc %80 : memref<3xi16> to memref<16xi16>
        %284 = math.exp2 %cst_3 : f32
        %c1_i64_56 = arith.constant 1 : i64
        linalg.yield %c1_i64_56 : i64
      }
    %238 = index.maxu %c15, %30
    %inserted_43 = tensor.insert %c0_i32 into %13[%c0, %c11] : tensor<3x16xi32>
    %239 = arith.divsi %c-30322_i16, %c25321_i16 : i16
    memref.store %c-20866_i16, %alloc_16[%c0, %c13] : memref<3x16xi16>
    %cst_44 = arith.constant 2.656000e+04 : f16
    %240 = math.fma %splat, %3, %splat : tensor<3xf16>
    %241 = arith.muli %135, %extracted_35 : i16
    %242 = math.copysign %3, %splat : tensor<3xf16>
    %243 = math.fma %expanded, %expanded, %expanded : tensor<3x1xf32>
    %244 = tensor.empty() : tensor<3xi32>
    %mapped_45 = linalg.map ins(%0, %11 : tensor<3xi32>, tensor<3xi32>) outs(%244 : tensor<3xi32>)
      (%in: i32, %in_51: i32) {
        %261 = arith.divui %extracted_35, %c-30322_i16 : i16
        %rank_52 = tensor.rank %splat : tensor<3xf16>
        %262 = math.ctlz %121 : i64
        %263 = memref.realloc %63 : memref<3xi16> to memref<3xi16>
        %264 = math.cttz %1 : tensor<3xi16>
        %265 = math.cttz %c25321_i16 : i16
        memref.assume_alignment %233, 4 : memref<5x3x3xf16>
        %266 = arith.shrsi %135, %c497_i16 : i16
        %267 = index.mul %236, %c9
        %268 = index.castu %c1_i64 : i64 to index
        %269 = arith.remf %cst_5, %cst_3 : f32
        %270 = math.roundeven %cst_0 : f16
        %271 = arith.minui %in, %c0_i32 : i32
        %272 = arith.shli %c25321_i16, %c25321_i16 : i16
        memref.assume_alignment %alloc_16, 2 : memref<3x16xi16>
        %273 = affine.for %arg1 = 0 to 16 iter_args(%arg2 = %121) -> (i64) {
          affine.yield %arg2 : i64
        }
        memref.store %c-30322_i16, %alloc_16[%c2, %c3] : memref<3x16xi16>
        %c1438020221_i64 = arith.constant 1438020221 : i64
        vector.print %91 : vector<i32>
        %alloc_53 = memref.alloc() : memref<3x16x3xi32>
        %274 = bufferization.to_memref %11 : memref<3xi32>
        %275 = arith.xori %in_51, %c0_i32 : i32
        %276 = math.ipowi %7, %4 : tensor<3x16xi16>
        %277 = arith.minui %c0_i32, %in_51 : i32
        %alloc_54 = memref.alloc() : memref<16x5xi16>
        %278 = tensor.empty() : tensor<3x5xi16>
        %279 = linalg.matmul ins(%7, %alloc_54 : tensor<3x16xi16>, memref<16x5xi16>) outs(%278 : tensor<3x5xi16>) -> tensor<3x5xi16>
        %280 = vector.broadcast %in_51 : i32 to vector<3xi32>
        %281 = vector.insert %280, %196 [1, 1] : vector<3xi32> into vector<3x16x3xi32>
        %282 = arith.remf %cst, %48 : f16
        %true = arith.constant true
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %283 = vector.transfer_read %4[%109, %199], %c0_i16 : tensor<3x16xi16>, vector<i16>
        memref.store %95, %122[%c0, %c1, %c1] : memref<5x3x3xf16>
        memref.store %cst_5, %153[%c0, %c12] : memref<3x16xf32>
        %284 = math.round %9 : tensor<3x16xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %alloca_46 = memref.alloca() : memref<3xf32>
    memref.store %false, %alloc_21[%c1] : memref<3xi1>
    %245 = math.cttz %231 : tensor<3x3xi64>
    %246 = math.ipowi %11, %0 : tensor<3xi32>
    %splat_47 = tensor.splat %cst_5 : tensor<3x16x3xf32>
    %247 = arith.divsi %c0_i32, %c0_i32 : i32
    %248 = vector.broadcast %135 : i16 to vector<3xi16>
    %249 = vector.transfer_write %248, %235[%c0, %79] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi16>, tensor<3x5xi16>
    %250 = index.sub %226, %202
    %cst_48 = arith.constant 1.000000e+00 : f16
    %cst_49 = arith.constant 0.000000e+00 : f16
    %251 = vector.transfer_read %alloc_17[%30, %47, %c6], %cst_49 : memref<3x16x3xf16>, vector<f16>
    %252 = scf.if %false_2 -> (i1) {
      %261 = arith.divsi %165, %false_4 : i1
      %262 = math.exp %95 : f16
      %263 = math.exp %8 : tensor<5x3x3xf32>
      %cst_51 = arith.constant 4.668800e+04 : f16
      %cast_52 = tensor.cast %splat_38 : tensor<3x16xi64> to tensor<?x?xi64>
      %264 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d1)>(%226, %c9, %221)
      %265 = arith.maxsi %c0_i32, %c0_i32 : i32
      %alloc_53 = memref.alloc() : memref<3x16xi1>
      scf.yield %false_2 : i1
    } else {
      %261 = vector.extract %234[0] : vector<2x16xi32>
      %262 = arith.addf %95, %48 : f16
      %263 = index.mul %111, %106
      %264 = vector.transpose %125, [] : vector<i16> to vector<i16>
      %265 = arith.maxsi %extracted_35, %c-30322_i16 : i16
      %266 = arith.remsi %extracted_35, %c-30322_i16 : i16
      %267 = memref.load %153[%c0, %c8] : memref<3x16xf32>
      %268 = affine.load %233[%c12, %c3, %c13] : memref<5x3x3xf16>
      scf.yield %false_2 : i1
    }
    %253 = vector.transpose %125, [] : vector<i16> to vector<i16>
    %254 = arith.divui %135, %extracted_35 : i16
    %cast_50 = tensor.cast %13 : tensor<3x16xi32> to tensor<?x?xi32>
    %255 = tensor.empty() : tensor<3xf32>
    %256 = linalg.copy ins(%101 : tensor<3xf32>) outs(%255 : tensor<3xf32>) -> tensor<3xf32>
    %257 = tensor.empty() : tensor<16x3xf32>
    %transposed = linalg.transpose ins(%2 : tensor<3x16xf32>) outs(%257 : tensor<16x3xf32>) permutation = [1, 0] 
    %258 = tensor.empty() : tensor<16xf32>
    %reduced = linalg.reduce ins(%9 : tensor<3x16xf32>) outs(%258 : tensor<16xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %261 = index.ceildivs %c7, %c13
        %262 = math.ctlz %c585361325_i64 : i64
        %263 = math.sqrt %cst : f16
        %264 = vector.broadcast %165 : i1 to vector<16xi1>
        %265 = vector.insert %264, %185 [2] : vector<16xi1> into vector<3x16xi1>
        %266 = vector.maskedload %alloc_15[%c0, %c5], %264, %19 : memref<3x16xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %267 = vector.broadcast %init : f32 to vector<3xf32>
        %268 = vector.insert %267, %194 [1, 15] : vector<3xf32> into vector<3x16x3xf32>
        %269 = math.ipowi %13, %13 : tensor<3x16xi32>
        %270 = math.roundeven %cst_1 : f16
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %259 = scf.parallel (%arg1, %arg2) = (%c7, %c10) to (%c6, %c6) step (%c7, %c14) init (%12) -> tensor<5x3x3xi1> {
      %261 = vector.bitcast %104 : vector<3x16xi32> to vector<3x16xi32>
      %cst_51 = arith.constant 4.214400e+04 : f16
      %262 = arith.subi %false_2, %252 : i1
      %263 = arith.maxui %c-20866_i16, %c497_i16 : i16
      %264 = index.sub %127, %238
      %265 = scf.while (%arg3 = %cst) : (f16) -> f16 {
        %275 = math.fma %reduced, %reduced, %258 : tensor<16xf32>
        memref.store %cst, %alloc_17[%c2, %c10, %c1] : memref<3x16x3xf16>
        %276 = math.ctpop %0 : tensor<3xi32>
        %277 = index.maxs %c14, %226
        %c0_i64_53 = arith.constant 0 : i64
        %c0_i64_54 = arith.constant 0 : i64
        %278 = vector.transfer_read %5[%30, %127], %c0_i64_54 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<3x16xi64>, vector<3xi64>
        %279 = math.log10 %splat : tensor<3xf16>
        %280 = math.ceil %2 : tensor<3x16xf32>
        %cast_55 = tensor.cast %4 : tensor<3x16xi16> to tensor<?x?xi16>
        scf.condition(%false_4) %95 : f16
      } do {
      ^bb0(%arg3: f16):
        %275 = arith.divui %165, %false_4 : i1
        affine.store %c-20866_i16, %alloc_25[%c14] : memref<3xi16>
        %276 = vector.broadcast %211 : index to vector<3xindex>
        %277 = vector.broadcast %121 : i64 to vector<3xi64>
        vector.scatter %alloc_15[%c2, %c11] [%276], %54, %277 : memref<3x16xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %278 = vector.flat_transpose %34 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %279 = index.maxs %c7, %c15
        %280 = math.fma %arg3, %arg3, %cst_0 : f16
        %281 = arith.addf %cst, %48 : f16
        %282 = math.round %256 : tensor<3xf32>
        %283 = math.ceil %258 : tensor<16xf32>
        %284 = math.ipowi %14, %14 : tensor<5x3x3xi64>
        %rank_53 = tensor.rank %20 : tensor<i16>
        %285 = bufferization.clone %182 : memref<3x16xi16> to memref<3x16xi16>
        %286 = math.fma %6, %6, %6 : tensor<3x16xf16>
        %287 = arith.cmpf uno, %cst_6, %cst_6 : f32
        %288 = memref.load %alloc_9[%c2] : memref<3xi16>
        %289 = math.sqrt %extracted : f32
        scf.yield %cst_1 : f16
      }
      %266 = math.log10 %8 : tensor<5x3x3xf32>
      %267 = arith.remf %95, %cst_7 : f16
      %268 = index.divs %c13, %arg2
      %269 = arith.negf %cst_1 : f16
      %alloc_52 = memref.alloc() : memref<5x3x3xi64>
      %c2646_i16 = arith.constant 2646 : i16
      %270 = arith.addi %false_2, %false_2 : i1
      %271 = vector.shuffle %197, %197 [0, 2, 5] : vector<3x16x3xf32>, vector<3x16x3xf32>
      %272 = index.add %arg1, %268
      %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 40, d0 * 64 + 128, d0 * 8)>(%106, %67, %108, %127)
      %274 = tensor.empty() : tensor<5x3x3xi1>
      scf.reduce(%274)  : tensor<5x3x3xi1> {
      ^bb0(%arg3: tensor<5x3x3xi1>, %arg4: tensor<5x3x3xi1>):
        %275 = math.copysign %splat, %3 : tensor<3xf16>
        %cst_53 = arith.constant 0x4DF358B2 : f32
        memref.store %c1_i64, %alloc_22[%c0, %c2, %c0] : memref<3x16x3xi64>
        %276 = index.maxu %c0, %c5
        %277 = math.cttz %16 : tensor<3xi16>
        memref.assume_alignment %118, 2 : memref<3x16xi64>
        %278 = vector.extract_strided_slice %58 {offsets = [0], sizes = [3], strides = [1]} : vector<5xi1> to vector<3xi1>
        %279 = vector.insertelement %252, %54[%c0 : index] : vector<3xi1>
        %280 = tensor.empty() : tensor<5x3x3xi1>
        scf.reduce.return %280 : tensor<5x3x3xi1>
      }
      scf.yield
    }
    %260 = affine.vector_load %alloc_9[%c0] : memref<3xi16>, vector<3xi16>
    affine.vector_store %219, %alloc_21[%238] : memref<3xi1>, vector<5xi1>
    vector.print %19 : vector<16xi64>
    vector.print %33 : vector<3xi16>
    vector.print %34 : vector<3xi1>
    vector.print %35 : vector<3xi16>
    vector.print %54 : vector<3xi1>
    vector.print %57 : vector<5xi1>
    vector.print %58 : vector<5xi1>
    vector.print %91 : vector<i32>
    vector.print %98 : vector<5x3x3xi1>
    vector.print %99 : vector<5x3x3xi32>
    vector.print %100 : vector<5x3x3xi1>
    vector.print %102 : vector<3x16xf32>
    vector.print %103 : vector<3x16xi1>
    vector.print %104 : vector<3x16xi32>
    vector.print %105 : vector<3x16xf32>
    vector.print %125 : vector<i16>
    vector.print %133 : vector<i32>
    vector.print %148 : vector<1xi16>
    vector.print %177 : vector<15xi1>
    vector.print %185 : vector<3x16xi1>
    vector.print %194 : vector<3x16x3xf32>
    vector.print %195 : vector<3x16x3xi1>
    vector.print %196 : vector<3x16x3xi32>
    vector.print %197 : vector<3x16x3xf32>
    vector.print %206 : vector<3x3xi1>
    vector.print %219 : vector<5xi1>
    vector.print %220 : vector<3xi16>
    vector.print %234 : vector<2x16xi32>
    vector.print %248 : vector<3xi16>
    vector.print %260 : vector<3xi16>
    vector.print %c-30322_i16 : i16
    vector.print %c585361325_i64 : i64
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %c25321_i16 : i16
    vector.print %false : i1
    vector.print %cst_1 : f16
    vector.print %c497_i16 : i16
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %false_4 : i1
    vector.print %cst_5 : f32
    vector.print %cst_6 : f32
    vector.print %cst_7 : f16
    vector.print %c12120_i16 : i16
    vector.print %c-20866_i16 : i16
    vector.print %extracted : f32
    vector.print %48 : f16
    vector.print %c0_i32 : i32
    vector.print %95 : f16
    vector.print %c1_i64 : i64
    vector.print %121 : i64
    vector.print %135 : i16
    vector.print %165 : i1
    vector.print %extracted_35 : i16
    vector.print %cst_48 : f16
    vector.print %252 : i1
    return
  }
}
