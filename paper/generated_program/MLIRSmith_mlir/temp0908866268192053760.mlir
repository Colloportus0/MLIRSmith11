module {
  func.func @func1() {
    %cst = arith.constant 2.1400183E+9 : f32
    %c213424238_i32 = arith.constant 213424238 : i32
    %true = arith.constant true
    %cst_0 = arith.constant 5.412000e+03 : f16
    %cst_1 = arith.constant 1.52239757E+9 : f32
    %cst_2 = arith.constant 0x4D0481FA : f32
    %c483662461_i32 = arith.constant 483662461 : i32
    %cst_3 = arith.constant 1.20978496E+9 : f32
    %cst_4 = arith.constant 0x4D8F79D6 : f32
    %c1806701373_i64 = arith.constant 1806701373 : i64
    %c-32746_i16 = arith.constant -32746 : i16
    %c363_i16 = arith.constant 363 : i16
    %c1450336928_i32 = arith.constant 1450336928 : i32
    %c1483383456_i64 = arith.constant 1483383456 : i64
    %c459066806_i64 = arith.constant 459066806 : i64
    %cst_5 = arith.constant 1.65619021E+9 : f32
    %0 = tensor.empty() : tensor<8x3xi1>
    %1 = tensor.empty() : tensor<6x8x6xf16>
    %2 = tensor.empty() : tensor<6x8x6xi16>
    %3 = tensor.empty() : tensor<8xf16>
    %4 = tensor.empty() : tensor<8xi32>
    %5 = tensor.empty() : tensor<6x8x6xi64>
    %6 = tensor.empty() : tensor<8x3xf32>
    %7 = tensor.empty() : tensor<8x3xi32>
    %8 = tensor.empty() : tensor<8xf32>
    %9 = tensor.empty() : tensor<6x8x6xi16>
    %10 = tensor.empty() : tensor<6x8x6xf32>
    %11 = tensor.empty() : tensor<6x8x6xf32>
    %12 = tensor.empty() : tensor<6x8x6xi16>
    %13 = tensor.empty() : tensor<14x6x3xi32>
    %14 = tensor.empty() : tensor<6x8x6xi1>
    %15 = tensor.empty() : tensor<6x8x6xf16>
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
    %alloc = memref.alloc() : memref<8xi16>
    %alloc_6 = memref.alloc() : memref<8xi64>
    %alloc_7 = memref.alloc() : memref<8xf16>
    %alloc_8 = memref.alloc() : memref<14x6x3xf32>
    %alloc_9 = memref.alloc() : memref<8x3xf32>
    %alloc_10 = memref.alloc() : memref<8x3xf16>
    %alloc_11 = memref.alloc() : memref<6x8x6xi16>
    %alloc_12 = memref.alloc() : memref<6x8x6xi32>
    %alloc_13 = memref.alloc() : memref<8xi16>
    %alloc_14 = memref.alloc() : memref<14x6x3xi1>
    %alloc_15 = memref.alloc() : memref<14x6x3xi16>
    %alloc_16 = memref.alloc() : memref<14x6x3xi1>
    %alloc_17 = memref.alloc() : memref<6x8x6xf16>
    %alloc_18 = memref.alloc() : memref<14x6x3xi16>
    %alloc_19 = memref.alloc() : memref<14x6x3xi64>
    %alloc_20 = memref.alloc() : memref<14x6x3xf16>
    %16 = tensor.empty() : tensor<6x8x6xi64>
    %17 = linalg.copy ins(%5 : tensor<6x8x6xi64>) outs(%16 : tensor<6x8x6xi64>) -> tensor<6x8x6xi64>
    %alloc_21 = memref.alloc() : memref<3x14x6xi1>
    linalg.transpose ins(%alloc_16 : memref<14x6x3xi1>) outs(%alloc_21 : memref<3x14x6xi1>) permutation = [2, 0, 1] 
    %alloc_22 = memref.alloc() : memref<3xi32>
    linalg.reduce ins(%7 : tensor<8x3xi32>) outs(%alloc_22 : memref<3xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %242 = scf.index_switch %c4 -> tensor<8x3xi1> 
        case 1 {
          %250 = index.casts %c7 : index to i32
          %251 = index.casts %c5 : index to i32
          %252 = vector.load %alloc_20[%c8, %c5, %c1] : memref<14x6x3xf16>, vector<14x6x3xf16>
          %253 = vector.transpose %252, [1, 2, 0] : vector<14x6x3xf16> to vector<6x3x14xf16>
          %254 = index.maxs %c0, %c3
          %255 = vector.broadcast %cst_0 : f16 to vector<14x6xf16>
          %256 = vector.multi_reduction <add>, %252, %255 [2] : vector<14x6x3xf16> to vector<14x6xf16>
          %257 = arith.shrui %c483662461_i32, %in : i32
          %258 = bufferization.clone %alloc_11 : memref<6x8x6xi16> to memref<6x8x6xi16>
          %cast_57 = tensor.cast %1 : tensor<6x8x6xf16> to tensor<?x?x?xf16>
          %c0_i32_58 = arith.constant 0 : i32
          %259 = vector.transfer_read %13[%c3, %c7, %c6], %c0_i32_58 : tensor<14x6x3xi32>, vector<8xi32>
          %260 = arith.remui %c483662461_i32, %c483662461_i32 : i32
          %261 = bufferization.clone %alloc_11 : memref<6x8x6xi16> to memref<6x8x6xi16>
          %262 = affine.max affine_map<(d0, d1, d2) -> (d2 + 32, -d2 + 32, d2, d2 + 32)>(%c5, %c13, %c10)
          %263 = arith.remf %cst_5, %cst_3 : f32
          %264 = vector.extract_strided_slice %252 {offsets = [11], sizes = [2], strides = [1]} : vector<14x6x3xf16> to vector<2x6x3xf16>
          %265 = math.round %cst_0 : f16
          scf.yield %0 : tensor<8x3xi1>
        }
        case 2 {
          %250 = vector.create_mask %c3 : vector<8xi1>
          %251 = index.maxu %c12, %c15
          %c1_i16_57 = arith.constant 1 : i16
          %c0_i16_58 = arith.constant 0 : i16
          %252 = vector.transfer_read %2[%c4, %c10, %c8], %c0_i16_58 : tensor<6x8x6xi16>, vector<i16>
          affine.store %cst_1, %alloc_9[%c11, %c2] : memref<8x3xf32>
          %253 = vector.load %alloc[%c4] : memref<8xi16>, vector<8xi16>
          %254 = math.log %11 : tensor<6x8x6xf32>
          %255 = math.roundeven %cst_1 : f32
          %256 = math.log10 %1 : tensor<6x8x6xf16>
          %257 = affine.load %alloc_13[%c0] : memref<8xi16>
          %258 = arith.floordivsi %c1806701373_i64, %c459066806_i64 : i64
          memref.assume_alignment %alloc_10, 4 : memref<8x3xf16>
          %259 = arith.divui %c483662461_i32, %c213424238_i32 : i32
          %260 = arith.shrsi %c483662461_i32, %init : i32
          %261 = math.fpowi %cst_2, %c213424238_i32 : f32, i32
          %262 = vector.broadcast %c5 : index to vector<14xindex>
          %263 = vector.broadcast %true : i1 to vector<14xi1>
          %264 = vector.broadcast %cst_0 : f16 to vector<14xf16>
          vector.scatter %alloc_20[%c1, %c1, %c0] [%262], %263, %264 : memref<14x6x3xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
          %265 = tensor.empty() : tensor<3x3xi32>
          %266 = tensor.empty() : tensor<8x3xi32>
          %267 = linalg.matmul ins(%7, %265 : tensor<8x3xi32>, tensor<3x3xi32>) outs(%266 : tensor<8x3xi32>) -> tensor<8x3xi32>
          scf.yield %0 : tensor<8x3xi1>
        }
        default {
          %250 = math.log1p %cst : f32
          %251 = arith.remf %cst_3, %cst_2 : f32
          %252 = affine.load %alloc_13[%c5] : memref<8xi16>
          %253 = math.ctlz %13 : tensor<14x6x3xi32>
          %splat_57 = tensor.splat %cst_5 : tensor<8xf32>
          %254 = arith.shli %c1450336928_i32, %c1450336928_i32 : i32
          %255 = math.ctpop %12 : tensor<6x8x6xi16>
          %256 = index.divs %c0, %c5
          %257 = vector.broadcast %c-32746_i16 : i16 to vector<6xi16>
          %258 = vector.insertelement %c363_i16, %257[%c11 : index] : vector<6xi16>
          %259 = affine.apply affine_map<(d0, d1, d2) -> (-(d2 floordiv 128))>(%c4, %c8, %c7)
          %260 = index.maxu %c3, %c3
          %261 = index.ceildivs %260, %c9
          %262 = index.castu %c483662461_i32 : i32 to index
          %263 = vector.reduction <maxsi>, %257 : vector<6xi16> into i16
          %264 = math.roundeven %cst_0 : f16
          %265 = vector.broadcast %cst_5 : f32 to vector<8x6x8xf32>
          %266 = vector.broadcast %cst_5 : f32 to vector<6x8xf32>
          %dest_58, %accumulated_value_59 = vector.scan <maxf>, %265, %266 {inclusive = true, reduction_dim = 0 : i64} : vector<8x6x8xf32>, vector<6x8xf32>
          scf.yield %0 : tensor<8x3xi1>
        }
        %243 = math.tan %10 : tensor<6x8x6xf32>
        %244 = arith.ori %c459066806_i64, %c1483383456_i64 : i64
        %245 = vector.broadcast %cst_4 : f32 to vector<8xf32>
        %246 = index.castu %c1 : index to i32
        %247 = tensor.empty() : tensor<6x8x6xf16>
        %mapped = linalg.map ins(%1 : tensor<6x8x6xf16>) outs(%247 : tensor<6x8x6xf16>)
          (%in_57: f16) {
            %250 = arith.andi %c459066806_i64, %c459066806_i64 : i64
            memref.assume_alignment %alloc_11, 8 : memref<6x8x6xi16>
            %cst_58 = arith.constant 1.204800e+04 : f16
            %rank_59 = tensor.rank %9 : tensor<6x8x6xi16>
            %251 = arith.remf %in_57, %in_57 : f16
            %252 = arith.xori %c483662461_i32, %init : i32
            %253 = index.floordivs %c9, %c14
            %254 = index.add %c8, %c14
            %255 = bufferization.clone %alloc_22 : memref<3xi32> to memref<3xi32>
            %256 = tensor.empty() : tensor<8xi64>
            %257 = vector.broadcast %cst_5 : f32 to vector<3x6x6xf32>
            %258 = vector.broadcast %cst_4 : f32 to vector<3x6xf32>
            %dest_60, %accumulated_value_61 = vector.scan <mul>, %257, %258 {inclusive = true, reduction_dim = 1 : i64} : vector<3x6x6xf32>, vector<3x6xf32>
            %259 = vector.broadcast %cst : f32 to vector<6x8x6xf32>
            %260 = index.casts %c363_i16 : i16 to index
            %261 = arith.cmpi ule, %c1806701373_i64, %c459066806_i64 : i64
            %262 = arith.remui %c1483383456_i64, %c459066806_i64 : i64
            %263 = math.exp %247 : tensor<6x8x6xf16>
            %264 = arith.maxf %cst_5, %cst_1 : f32
            %265 = math.atan %15 : tensor<6x8x6xf16>
            %266 = index.add %c1, %c11
            %from_elements_62 = tensor.from_elements %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true : tensor<14x6x3xi1>
            %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %245, %245, %cst : vector<8xf32>, vector<8xf32> into f32
            %268 = index.floordivs %266, %c8
            %269 = arith.remui %c-32746_i16, %c363_i16 : i16
            %splat_63 = tensor.splat %in_57 : tensor<14x6x3xf16>
            %270 = vector.broadcast %in_57 : f16 to vector<6xf16>
            vector.transfer_write %270, %alloc_17[%c12, %c9, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xf16>, memref<6x8x6xf16>
            %271 = math.ipowi %7, %7 : tensor<8x3xi32>
            %cast_64 = tensor.cast %256 : tensor<8xi64> to tensor<?xi64>
            %272 = arith.minsi %c483662461_i32, %in : i32
            memref.assume_alignment %alloc_22, 2 : memref<3xi32>
            %273 = bufferization.clone %alloc_10 : memref<8x3xf16> to memref<8x3xf16>
            %274 = math.roundeven %cst_3 : f32
            %from_elements_65 = tensor.from_elements %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %init, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %init, %init, %init, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %in, %init, %c213424238_i32, %in, %c213424238_i32, %in, %c213424238_i32, %c213424238_i32, %in, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %init, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c483662461_i32, %in, %in, %c483662461_i32, %c1450336928_i32, %in, %c213424238_i32, %in, %c213424238_i32, %c483662461_i32, %in, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %init, %in, %init, %in, %in, %init, %in, %c213424238_i32, %c483662461_i32, %c213424238_i32, %init, %init, %init, %init, %c483662461_i32, %c213424238_i32, %init, %c483662461_i32, %c1450336928_i32, %init, %c213424238_i32, %c1450336928_i32, %init, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %in, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %init, %in, %init, %c483662461_i32, %c483662461_i32, %c483662461_i32, %init, %c483662461_i32, %c483662461_i32, %c213424238_i32, %in, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %in, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %init, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %init, %c213424238_i32, %init, %init, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %init, %init, %c213424238_i32, %init, %init, %c1450336928_i32, %c483662461_i32, %in, %c483662461_i32, %in, %c213424238_i32, %in, %c213424238_i32, %c483662461_i32, %init, %c1450336928_i32, %init, %in, %c213424238_i32, %in, %in, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %in, %in, %init, %c1450336928_i32, %c213424238_i32, %in, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %init, %c1450336928_i32, %c483662461_i32, %in, %init, %c213424238_i32, %init, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %init, %c1450336928_i32, %init, %in, %c213424238_i32, %in, %in, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %init, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %in, %c1450336928_i32, %c213424238_i32, %init, %c483662461_i32, %init, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %init, %init, %c213424238_i32, %c483662461_i32, %in, %in, %c213424238_i32, %c483662461_i32, %init, %in, %c213424238_i32, %init, %c213424238_i32, %in, %c483662461_i32, %init, %init, %c1450336928_i32, %c1450336928_i32, %in, %init, %c213424238_i32, %init, %in, %in, %c1450336928_i32, %init, %in, %in, %in, %c213424238_i32, %c483662461_i32, %c213424238_i32, %in, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %init, %c1450336928_i32, %in, %in, %in, %c1450336928_i32, %c213424238_i32, %init, %c1450336928_i32, %in, %c213424238_i32, %init, %init, %c483662461_i32, %init, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %init, %in, %c213424238_i32, %c213424238_i32, %c213424238_i32 : tensor<14x6x3xi32>
            %cst_66 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_66 : f16
          }
        %248 = math.ctpop %4 : tensor<8xi32>
        %249 = math.absf %8 : tensor<8xf32>
        %c0_i32_56 = arith.constant 0 : i32
        linalg.yield %c0_i32_56 : i32
      }
    %18 = scf.parallel (%arg0) = (%c5) to (%c3) step (%c8) init (%alloc_17) -> memref<6x8x6xf16> {
      %242 = math.cos %11 : tensor<6x8x6xf32>
      %243 = arith.ceildivsi %c459066806_i64, %c1483383456_i64 : i64
      %244 = index.add %c14, %c14
      %245 = arith.remf %cst_4, %cst_1 : f32
      %from_elements_56 = tensor.from_elements %true, %true, %true, %true, %true, %true, %true, %true : tensor<8xi1>
      %246 = math.log2 %cst_5 : f32
      %rank_57 = tensor.rank %6 : tensor<8x3xf32>
      %247 = vector.load %alloc_12[%c2, %c3, %c5] : memref<6x8x6xi32>, vector<8x3xi32>
      %248 = arith.addi %c1806701373_i64, %c1806701373_i64 : i64
      %249 = math.sqrt %1 : tensor<6x8x6xf16>
      memref.store %true, %alloc_16[%c11, %c1, %c0] : memref<14x6x3xi1>
      %cst_58 = arith.constant 1.000000e+00 : f16
      %250 = vector.transfer_read %alloc_17[%c7, %c15, %c7], %cst_58 : memref<6x8x6xf16>, vector<14x6xf16>
      %rank_59 = tensor.rank %11 : tensor<6x8x6xf32>
      %251 = vector.broadcast %c363_i16 : i16 to vector<14xi16>
      %252 = vector.broadcast %true : i1 to vector<14xi1>
      %253 = vector.maskedload %alloc_11[%c3, %c5, %c2], %252, %251 : memref<6x8x6xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %254 = math.expm1 %11 : tensor<6x8x6xf32>
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %251, %253, %c363_i16 : vector<14xi16>, vector<14xi16> into i16
      %alloc_60 = memref.alloc() : memref<6x8x6xf16>
      scf.reduce(%alloc_60)  : memref<6x8x6xf16> {
      ^bb0(%arg1: memref<6x8x6xf16>, %arg2: memref<6x8x6xf16>):
        %256 = math.copysign %cst_5, %cst_3 : f32
        %257 = arith.shrsi %c-32746_i16, %c-32746_i16 : i16
        %258 = math.exp2 %6 : tensor<8x3xf32>
        %259 = bufferization.clone %alloc_20 : memref<14x6x3xf16> to memref<14x6x3xf16>
        %260 = arith.cmpf oge, %cst_3, %cst_5 : f32
        %261 = math.round %15 : tensor<6x8x6xf16>
        bufferization.dealloc_tensor %15 : tensor<6x8x6xf16>
        %262 = vector.multi_reduction <or>, %253, %253 [] : vector<14xi16> to vector<14xi16>
        %alloc_61 = memref.alloc() : memref<6x8x6xf16>
        scf.reduce.return %alloc_61 : memref<6x8x6xf16>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_19[%c3, %c8, %c5] : memref<14x6x3xi64>, vector<14xi64>
    affine.vector_store %19, %alloc_19[%c12, %c0, %c13] : memref<14x6x3xi64>, vector<14xi64>
    %alloc_23 = memref.alloc() : memref<8xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%3, %alloc_23 : tensor<8xf16>, memref<8xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    vector.print %19 : vector<14xi64>
    %22 = scf.index_switch %c1 -> tensor<8xi16> 
    case 1 {
      %242 = index.casts %c15 : index to i32
      %243 = math.ipowi %12, %2 : tensor<6x8x6xi16>
      bufferization.dealloc_tensor %13 : tensor<14x6x3xi32>
      %244 = arith.cmpf ugt, %cst, %cst_4 : f32
      %245 = vector.multi_reduction <maxui>, %19, %19 [] : vector<14xi64> to vector<14xi64>
      %246 = arith.minsi %c459066806_i64, %c1806701373_i64 : i64
      vector.print %19 : vector<14xi64>
      %247 = scf.while (%arg0 = %cst_3) : (f32) -> f32 {
        %256 = arith.minsi %c483662461_i32, %c213424238_i32 : i32
        %257 = math.expm1 %15 : tensor<6x8x6xf16>
        %258 = index.floordivs %c4, %c11
        %259 = index.add %c10, %c6
        %260 = math.log1p %6 : tensor<8x3xf32>
        %261 = math.floor %20 : tensor<f16>
        %262 = arith.floordivsi %c1450336928_i32, %c483662461_i32 : i32
        %263 = vector.reduction <or>, %19 : vector<14xi64> into i64
        scf.condition(%true) %cst_1 : f32
      } do {
      ^bb0(%arg0: f32):
        %256 = math.atan %6 : tensor<8x3xf32>
        %257 = math.absi %17 : tensor<6x8x6xi64>
        %258 = affine.load %alloc_6[%c15] : memref<8xi64>
        %259 = affine.min affine_map<(d0, d1) -> (-d1 + (d0 + 1) ceildiv 2, d0, 0)>(%c12, %c15)
        %260 = vector.broadcast %c363_i16 : i16 to vector<6xi16>
        %261 = vector.transfer_write %260, %9[%259, %c5, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi16>, tensor<6x8x6xi16>
        %262 = vector.create_mask %c11, %c0, %c6 : vector<6x8x6xi1>
        %263 = arith.shrsi %c459066806_i64, %c1806701373_i64 : i64
        %264 = bufferization.clone %alloc_7 : memref<8xf16> to memref<8xf16>
        %265 = arith.remui %c213424238_i32, %c483662461_i32 : i32
        %266 = arith.floordivsi %c1806701373_i64, %c1806701373_i64 : i64
        %267 = arith.maxsi %c483662461_i32, %c483662461_i32 : i32
        %alloca_57 = memref.alloca() : memref<6x8x6xi32>
        %268 = index.floordivs %c4, %c4
        %269 = math.fma %10, %10, %11 : tensor<6x8x6xf32>
        %270 = math.ipowi %0, %0 : tensor<8x3xi1>
        %271 = vector.matrix_multiply %260, %260 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
        scf.yield %cst_2 : f32
      }
      %248 = arith.xori %c213424238_i32, %c213424238_i32 : i32
      %249 = index.ceildivs %c5, %c6
      %alloc_56 = memref.alloc() : memref<6x8x6xf32>
      memref.tensor_store %10, %alloc_56 : memref<6x8x6xf32>
      %250 = affine.for %arg0 = 0 to 110 iter_args(%arg1 = %cst_3) -> (f32) {
        affine.yield %cst_1 : f32
      }
      %251 = math.fma %8, %8, %8 : tensor<8xf32>
      %252 = index.casts %true : i1 to index
      %253 = arith.ceildivsi %c459066806_i64, %c1806701373_i64 : i64
      %254 = vector.broadcast %c213424238_i32 : i32 to vector<6x8x6xi32>
      %255 = tensor.empty() : tensor<8xi16>
      scf.yield %255 : tensor<8xi16>
    }
    case 2 {
      %242 = vector.create_mask %c6, %c11 : vector<8x3xi1>
      %243 = arith.remui %c1450336928_i32, %c483662461_i32 : i32
      %244 = vector.reduction <maxui>, %19 : vector<14xi64> into i64
      %245 = index.casts %c8 : index to i32
      %246 = math.sqrt %11 : tensor<6x8x6xf32>
      memref.alloca_scope  {
        %256 = arith.cmpf une, %cst_0, %cst_0 : f16
        %257 = index.ceildivs %c15, %c9
        memref.assume_alignment %alloc_20, 16 : memref<14x6x3xf16>
        %258 = math.ipowi %0, %0 : tensor<8x3xi1>
        %259 = arith.divui %c213424238_i32, %c1450336928_i32 : i32
        %extracted_58 = tensor.extract %8[%c5] : tensor<8xf32>
        %260 = arith.shrsi %c1450336928_i32, %c1450336928_i32 : i32
        %cast_59 = tensor.cast %10 : tensor<6x8x6xf32> to tensor<?x?x?xf32>
        %261 = arith.shrsi %c363_i16, %c363_i16 : i16
        %262 = index.castu %c1 : index to i32
        %263 = math.absf %21 : tensor<f16>
        %264 = math.absi %7 : tensor<8x3xi32>
        %265 = math.roundeven %cst_2 : f32
        affine.store %true, %alloc_14[%c0, %c5, %c10] : memref<14x6x3xi1>
        %266 = arith.ori %c213424238_i32, %c1450336928_i32 : i32
        %267 = math.sqrt %8 : tensor<8xf32>
        %268 = index.maxu %c4, %c9
        %expanded_60 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<6x8x6xi1> into tensor<6x8x6x1xi1>
        %269 = arith.xori %c1450336928_i32, %c213424238_i32 : i32
        %270 = arith.divsi %c483662461_i32, %c1450336928_i32 : i32
        %271 = vector.load %alloc_14[%c4, %c2, %c1] : memref<14x6x3xi1>, vector<8xi1>
        %272 = arith.andi %c213424238_i32, %c213424238_i32 : i32
        memref.assume_alignment %alloc_8, 4 : memref<14x6x3xf32>
        %splat_61 = tensor.splat %cst_5 : tensor<14x6x3xf32>
        %273 = vector.transpose %242, [0, 1] : vector<8x3xi1> to vector<8x3xi1>
        %from_elements_62 = tensor.from_elements %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64 : tensor<8xi64>
        affine.store %c459066806_i64, %alloc_6[%c11] : memref<8xi64>
        bufferization.dealloc_tensor %3 : tensor<8xf16>
        memref.assume_alignment %alloc_18, 2 : memref<14x6x3xi16>
        bufferization.dealloc_tensor %12 : tensor<6x8x6xi16>
        %274 = math.absf %3 : tensor<8xf16>
        %275 = arith.minsi %true, %true : i1
      }
      %247 = math.copysign %15, %1 : tensor<6x8x6xf16>
      %extracted_56 = tensor.extract %7[%c2, %c2] : tensor<8x3xi32>
      %248 = vector.transpose %242, [1, 0] : vector<8x3xi1> to vector<3x8xi1>
      %249 = math.atan %1 : tensor<6x8x6xf16>
      %250 = arith.shrui %c459066806_i64, %c1806701373_i64 : i64
      %251 = math.copysign %10, %11 : tensor<6x8x6xf32>
      %252 = math.round %cst_4 : f32
      %alloc_57 = memref.alloc() : memref<14x6x3xf32>
      memref.copy %alloc_8, %alloc_57 : memref<14x6x3xf32> to memref<14x6x3xf32>
      %253 = math.round %cst_1 : f32
      %254 = index.sub %c11, %c7
      %255 = tensor.empty() : tensor<8xi16>
      scf.yield %255 : tensor<8xi16>
    }
    case 3 {
      %242 = math.ceil %cst_1 : f32
      %243 = math.ctlz %12 : tensor<6x8x6xi16>
      %244 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 ceildiv 64)) floordiv 8)>(%c1, %c14, %c1)
      %245 = index.casts %c1450336928_i32 : i32 to index
      %246 = math.log1p %8 : tensor<8xf32>
      %247 = index.maxu %c14, %c2
      %248 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
      %249 = math.round %3 : tensor<8xf16>
      %250 = index.maxu %c14, %245
      %251 = math.exp2 %cst_2 : f32
      %252 = arith.muli %c363_i16, %c-32746_i16 : i16
      %253 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
      %254 = index.maxu %c8, %c5
      %255 = math.fma %11, %11, %11 : tensor<6x8x6xf32>
      affine.store %cst_0, %alloc_10[%c5, %c3] : memref<8x3xf16>
      %256 = arith.andi %c1806701373_i64, %c1483383456_i64 : i64
      %257 = tensor.empty() : tensor<8xi16>
      scf.yield %257 : tensor<8xi16>
    }
    default {
      %242 = affine.apply affine_map<(d0, d1, d2) -> (-(d2 floordiv 128))>(%c4, %c3, %c9)
      %243 = index.maxs %242, %c8
      %244 = math.ceil %15 : tensor<6x8x6xf16>
      %245 = arith.remui %c213424238_i32, %c1450336928_i32 : i32
      %246 = math.log10 %21 : tensor<f16>
      %247 = arith.ceildivsi %true, %true : i1
      %248 = math.exp2 %1 : tensor<6x8x6xf16>
      %249 = arith.remf %cst_3, %cst : f32
      %250 = math.atan %15 : tensor<6x8x6xf16>
      %expanded_56 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<8x3xf32> into tensor<8x3x1xf32>
      %251 = tensor.empty() : tensor<8xf32>
      %mapped = linalg.map ins(%8 : tensor<8xf32>) outs(%251 : tensor<8xf32>)
        (%in: f32) {
          %alloca_57 = memref.alloca() : memref<8x3xi1>
          %260 = arith.xori %c483662461_i32, %c213424238_i32 : i32
          %261 = arith.maxf %in, %cst_1 : f32
          %262 = arith.minsi %c459066806_i64, %c1806701373_i64 : i64
          %263 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
          %264 = arith.cmpf ult, %cst_3, %cst_3 : f32
          %265 = math.fma %251, %8, %8 : tensor<8xf32>
          %266 = arith.muli %c213424238_i32, %c213424238_i32 : i32
          %267 = index.maxs %c1, %c11
          %268 = index.add %c3, %242
          %269 = math.ctpop %4 : tensor<8xi32>
          %cast_58 = tensor.cast %10 : tensor<6x8x6xf32> to tensor<?x?x?xf32>
          %270 = arith.minsi %c-32746_i16, %c363_i16 : i16
          %271 = math.absi %12 : tensor<6x8x6xi16>
          %272 = arith.addf %cst_0, %cst_0 : f16
          %273 = math.expm1 %cst_1 : f32
          %274 = math.ceil %6 : tensor<8x3xf32>
          %275 = arith.muli %c-32746_i16, %c363_i16 : i16
          %276 = index.casts %c0 : index to i32
          %277 = arith.remui %c483662461_i32, %c213424238_i32 : i32
          %true_59 = index.bool.constant true
          %278 = index.maxu %c10, %c11
          %279 = math.cos %1 : tensor<6x8x6xf16>
          %280 = math.ctpop %2 : tensor<6x8x6xi16>
          %281 = vector.reduction <mul>, %19 : vector<14xi64> into i64
          %282 = math.roundeven %6 : tensor<8x3xf32>
          %283 = math.ctpop %5 : tensor<6x8x6xi64>
          %284 = math.log1p %cst_1 : f32
          %285 = tensor.empty() : tensor<i32>
          %286 = math.fpowi %21, %285 : tensor<f16>, tensor<i32>
          %alloca_60 = memref.alloca() : memref<8x3xi64>
          %287 = arith.divui %c-32746_i16, %c-32746_i16 : i16
          %from_elements_61 = tensor.from_elements %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32 : tensor<14x6x3xi32>
          %cst_62 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_62 : f32
        }
      %252 = arith.remf %cst_3, %cst_3 : f32
      %253 = vector.broadcast %true : i1 to vector<3xi1>
      %254 = vector.maskedload %alloc_14[%c6, %c2, %c1], %253, %253 : memref<14x6x3xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
      %255 = vector.broadcast %cst_0 : f16 to vector<3x8xf16>
      vector.transfer_write %255, %alloc_17[%c5, %c4, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x8xf16>, memref<6x8x6xf16>
      %256 = arith.ceildivsi %c213424238_i32, %c213424238_i32 : i32
      %257 = vector.broadcast %true : i1 to vector<3x3xi1>
      %258 = vector.outerproduct %253, %253, %257 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
      %259 = tensor.empty() : tensor<8xi16>
      scf.yield %259 : tensor<8xi16>
    }
    %false = index.bool.constant false
    %23 = index.floordivs %c5, %c11
    %24 = memref.atomic_rmw addi %c1483383456_i64, %alloc_6[%c3] : (i64, memref<8xi64>) -> i64
    %25 = scf.if %true -> (i32) {
      %alloc_56 = memref.alloc() : memref<8x6x6xf32>
      %242 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_56 : memref<8x6x6xf32>) outs(%10 : tensor<6x8x6xf32>) {
      ^bb0(%in: f32, %out: f32):
        %250 = arith.remui %false, %false : i1
        %251 = arith.muli %true, %true : i1
        %252 = math.roundeven %out : f32
        %253 = math.roundeven %10 : tensor<6x8x6xf32>
        %254 = math.round %cst : f32
        %255 = math.expm1 %10 : tensor<6x8x6xf32>
        %256 = affine.max affine_map<(d0) -> (-d0, -d0 - 72, -64)>(%c13)
        %257 = math.ceil %cst_0 : f16
        %extracted_57 = tensor.extract %5[%c1, %c7, %c3] : tensor<6x8x6xi64>
        %258 = arith.maxf %cst, %cst_3 : f32
        %259 = math.roundeven %cst_4 : f32
        %260 = index.floordivs %c10, %c1
        %extracted_58 = tensor.extract %1[%c3, %c0, %c0] : tensor<6x8x6xf16>
        bufferization.dealloc_tensor %20 : tensor<f16>
        %261 = arith.cmpf oeq, %cst_1, %out : f32
        %262 = vector.reduction <and>, %19 : vector<14xi64> into i64
        %263 = math.floor %21 : tensor<f16>
        %264 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
        %265 = math.ceil %1 : tensor<6x8x6xf16>
        memref.tensor_store %12, %alloc_11 : memref<6x8x6xi16>
        %266 = vector.bitcast %19 : vector<14xi64> to vector<14xi64>
        %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %266, %extracted_57 : vector<14xi64>, vector<14xi64> into i64
        %268 = index.ceildivu %c1, %c15
        memref.copy %alloc_13, %alloc : memref<8xi16> to memref<8xi16>
        %269 = index.sub %c15, %c10
        %alloca_59 = memref.alloca() : memref<8x3xi1>
        memref.assume_alignment %alloc_16, 16 : memref<14x6x3xi1>
        %270 = bufferization.clone %alloc_8 : memref<14x6x3xf32> to memref<14x6x3xf32>
        %splat_60 = tensor.splat %cst_2 : tensor<14x6x3xf32>
        %271 = arith.andi %c1450336928_i32, %c483662461_i32 : i32
        %272 = arith.floordivsi %c213424238_i32, %c483662461_i32 : i32
        bufferization.dealloc_tensor %7 : tensor<8x3xi32>
        linalg.yield %cst : f32
      } -> tensor<6x8x6xf32>
      %243 = math.ipowi %false, %true : i1
      %244 = arith.muli %true, %false : i1
      %245 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
      %246 = arith.remf %cst_4, %cst_2 : f32
      %247 = arith.addi %c483662461_i32, %c1450336928_i32 : i32
      %248 = arith.maxui %false, %false : i1
      %249 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
      scf.yield %c1450336928_i32 : i32
    } else {
      %242 = arith.divf %cst_0, %cst_0 : f16
      %243 = scf.if %true -> (i16) {
        %251 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %252 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
        %253 = math.expm1 %8 : tensor<8xf32>
        %254 = arith.addi %true, %true : i1
        %255 = math.ipowi %true, %false : i1
        %256 = arith.shrsi %c-32746_i16, %c363_i16 : i16
        %expanded_58 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<8x3xi1> into tensor<8x3x1xi1>
        %257 = math.ceil %cst_5 : f32
        scf.yield %c363_i16 : i16
      } else {
        %251 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + d3 + 16, (d0 ceildiv 8) mod 32, d1 + d3, (d0 ceildiv 8) mod 32 + d1 + d3 + 16)>(%c10, %c2, %c3, %c15)
        %252 = math.absi %13 : tensor<14x6x3xi32>
        %253 = arith.minsi %c1450336928_i32, %c213424238_i32 : i32
        %254 = index.add %c0, %c5
        %255 = bufferization.to_memref %15 : memref<6x8x6xf16>
        %256 = index.casts %c11 : index to i32
        memref.assume_alignment %alloc_13, 2 : memref<8xi16>
        %rank_58 = tensor.rank %15 : tensor<6x8x6xf16>
        scf.yield %c363_i16 : i16
      }
      %c0_i16_56 = arith.constant 0 : i16
      %c0_i16_57 = arith.constant 0 : i16
      %244 = vector.transfer_read %2[%c11, %c5, %c10], %c0_i16_57 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x8x6xi16>, vector<6xi16>
      %245 = bufferization.to_memref %9 : memref<6x8x6xi16>
      %246 = affine.if affine_set<(d0, d1) : ((d1 mod 64) floordiv 2 == 0, d1 ceildiv 2 >= 0, d0 floordiv 4 + 8 >= 0, d1 == 0)>(%c8, %c13) -> memref<8x3xf16> {
        %251 = arith.muli %true, %true : i1
        affine.store %c0_i16_56, %alloc_11[%c6, %c13, %c5] : memref<6x8x6xi16>
        %252 = bufferization.clone %alloc_9 : memref<8x3xf32> to memref<8x3xf32>
        bufferization.dealloc_tensor %2 : tensor<6x8x6xi16>
        %253 = bufferization.to_memref %11 : memref<6x8x6xf32>
        %254 = index.add %c15, %c2
        %255 = arith.andi %false, %true : i1
        %extracted_58 = tensor.extract %6[%c4, %c1] : tensor<8x3xf32>
        affine.yield %alloc_10 : memref<8x3xf16>
      } else {
        %251 = math.fma %11, %11, %11 : tensor<6x8x6xf32>
        %252 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
        %253 = vector.broadcast %false : i1 to vector<6xi1>
        %254 = vector.maskedload %alloc_16[%c12, %c4, %c0], %253, %253 : memref<14x6x3xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %255 = bufferization.clone %alloc_12 : memref<6x8x6xi32> to memref<6x8x6xi32>
        %256 = math.ceil %3 : tensor<8xf16>
        %expanded_58 = tensor.expand_shape %3 [[0, 1]] : tensor<8xf16> into tensor<8x1xf16>
        %257 = vector.broadcast %cst_0 : f16 to vector<f16>
        %258 = vector.transfer_write %257, %1[%c3, %c2, %c7] : vector<f16>, tensor<6x8x6xf16>
        %cast_59 = tensor.cast %4 : tensor<8xi32> to tensor<?xi32>
        affine.yield %alloc_10 : memref<8x3xf16>
      }
      %247 = index.maxu %c12, %c8
      %248 = bufferization.clone %alloc_8 : memref<14x6x3xf32> to memref<14x6x3xf32>
      %249 = tensor.empty() : tensor<6xi64>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_6, %249 : memref<8xi64>, tensor<6xi64>) outs(%5 : tensor<6x8x6xi64>) {
      ^bb0(%in: i64, %in_58: i64, %out: i64):
        %251 = vector.shuffle %19, %19 [5, 8, 9, 10, 11, 12, 16, 17, 20, 22, 24, 26] : vector<14xi64>, vector<14xi64>
        %cst_59 = arith.constant 1.000000e+00 : f32
        %cst_60 = arith.constant 0.000000e+00 : f32
        %252 = vector.transfer_read %10[%c11, %c1, %c6], %cst_60 : tensor<6x8x6xf32>, vector<f32>
        %253 = arith.maxui %c1450336928_i32, %c483662461_i32 : i32
        %254 = vector.broadcast %out : i64 to vector<14x14xi64>
        %255 = vector.outerproduct %19, %19, %254 {kind = #vector.kind<maxsi>} : vector<14xi64>, vector<14xi64>
        %c0_i16_61 = arith.constant 0 : i16
        %c0_i16_62 = arith.constant 0 : i16
        %256 = vector.transfer_read %alloc_11[%c11, %c12, %c4], %c0_i16_62 : memref<6x8x6xi16>, vector<i16>
        %rank_63 = tensor.rank %9 : tensor<6x8x6xi16>
        %257 = math.sqrt %cst : f32
        %258 = arith.xori %c459066806_i64, %in_58 : i64
        %259 = arith.ori %in, %c1483383456_i64 : i64
        %260 = math.floor %cst_4 : f32
        %extracted_64 = tensor.extract %7[%c7, %c2] : tensor<8x3xi32>
        %261 = math.sqrt %21 : tensor<f16>
        %262 = index.maxu %c10, %c14
        %from_elements_65 = tensor.from_elements %true, %true, %true, %false, %true, %true, %true, %false, %true, %false, %true, %true, %false, %false, %true, %true, %false, %false, %false, %false, %true, %false, %true, %false : tensor<8x3xi1>
        %extracted_66 = tensor.extract %14[%c4, %c1, %c2] : tensor<6x8x6xi1>
        %inserted_67 = tensor.insert %cst_5 into %8[%c3] : tensor<8xf32>
        %263 = math.ceil %cst_59 : f32
        %extracted_68 = tensor.extract %14[%c3, %c2, %c1] : tensor<6x8x6xi1>
        %true_69 = index.bool.constant true
        %264 = math.exp2 %10 : tensor<6x8x6xf32>
        %265 = arith.divui %extracted_64, %c483662461_i32 : i32
        %266 = math.ipowi %7, %7 : tensor<8x3xi32>
        bufferization.dealloc_tensor %21 : tensor<f16>
        %267 = math.expm1 %1 : tensor<6x8x6xf16>
        %268 = affine.load %alloc_9[%c7, %c1] : memref<8x3xf32>
        %269 = vector.broadcast %in_58 : i64 to vector<14x14xi64>
        %270 = vector.outerproduct %19, %19, %269 {kind = #vector.kind<minui>} : vector<14xi64>, vector<14xi64>
        %271 = vector.reduction <minui>, %19 : vector<14xi64> into i64
        %272 = arith.xori %c1483383456_i64, %in : i64
        %273 = math.ceil %21 : tensor<f16>
        %274 = arith.minui %in_58, %c1483383456_i64 : i64
        %275 = math.log1p %11 : tensor<6x8x6xf32>
        %276 = math.fma %1, %1, %1 : tensor<6x8x6xf16>
        linalg.yield %c1806701373_i64 : i64
      } -> tensor<6x8x6xi64>
      scf.yield %c483662461_i32 : i32
    }
    %cast = tensor.cast %13 : tensor<14x6x3xi32> to tensor<?x?x?xi32>
    %26 = math.exp %15 : tensor<6x8x6xf16>
    %27 = index.add %c10, %c13
    %28 = arith.negf %cst : f32
    %collapsed = tensor.collapse_shape %cast [[0, 1], [2]] : tensor<?x?x?xi32> into tensor<?x?xi32>
    %29 = index.ceildivu %c5, %c15
    %30 = math.ctlz %12 : tensor<6x8x6xi16>
    %splat = tensor.splat %c1450336928_i32 : tensor<14x6x3xi32>
    bufferization.dealloc_tensor %15 : tensor<6x8x6xf16>
    memref.assume_alignment %alloc_15, 1 : memref<14x6x3xi16>
    %31 = scf.while (%arg0 = %alloc_10) : (memref<8x3xf16>) -> memref<8x3xf16> {
      %242 = arith.andi %c363_i16, %c363_i16 : i16
      %243 = math.fma %6, %6, %6 : tensor<8x3xf32>
      %244 = vector.broadcast %c10 : index to vector<14xindex>
      %245 = vector.broadcast %false : i1 to vector<14xi1>
      %246 = vector.broadcast %cst_4 : f32 to vector<14xf32>
      vector.scatter %alloc_8[%c11, %c3, %c0] [%244], %245, %246 : memref<14x6x3xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %247 = vector.broadcast %cst_0 : f16 to vector<6xf16>
      %248 = vector.broadcast %false : i1 to vector<6xi1>
      %249 = vector.maskedload %arg0[%c0, %c2], %248, %247 : memref<8x3xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
      affine.for %arg1 = 0 to 47 {
      }
      %250 = index.maxu %c1, %c0
      %splat_56 = tensor.splat %c1483383456_i64 : tensor<8xi64>
      %251 = vector.shuffle %249, %247 [0, 1, 2, 5] : vector<6xf16>, vector<6xf16>
      scf.condition(%false) %alloc_10 : memref<8x3xf16>
    } do {
    ^bb0(%arg0: memref<8x3xf16>):
      %242 = arith.andi %true, %false : i1
      %alloca_56 = memref.alloca() : memref<6x8x6xi32>
      %243 = arith.remui %c213424238_i32, %c1450336928_i32 : i32
      %244 = math.ipowi %c-32746_i16, %c-32746_i16 : i16
      %245 = index.castu %false : i1 to index
      %246 = math.absi %c483662461_i32 : i32
      %false_57 = index.bool.constant false
      memref.copy %alloc_15, %alloc_18 : memref<14x6x3xi16> to memref<14x6x3xi16>
      %247 = memref.alloca_scope  -> (f16) {
        %253 = math.atan2 %cst_4, %cst_2 : f32
        %254 = math.absi %7 : tensor<8x3xi32>
        %255 = math.ctpop %25 : i32
        %256 = arith.remf %cst_1, %cst : f32
        %257 = arith.andi %c-32746_i16, %c-32746_i16 : i16
        %258 = affine.apply affine_map<(d0, d1, d2) -> ((-(d1 ceildiv 64)) floordiv 8)>(%c11, %c1, %c9)
        %from_elements_59 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<14x6x3xf16>
        %alloc_60 = memref.alloc() : memref<8xf32>
        memref.tensor_store %8, %alloc_60 : memref<8xf32>
        %259 = vector.create_mask %245, %245, %c3 : vector<6x8x6xi1>
        vector.print %19 : vector<14xi64>
        %260 = arith.shrsi %c363_i16, %c363_i16 : i16
        %false_61 = index.bool.constant false
        %261 = tensor.empty() : tensor<8x3xi64>
        %262 = vector.transpose %259, [2, 0, 1] : vector<6x8x6xi1> to vector<6x6x8xi1>
        %263 = math.sqrt %10 : tensor<6x8x6xf32>
        %264 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %265 = index.add %c9, %c6
        %266 = tensor.empty(%c5) : tensor<6x?x6xi16>
        %267 = arith.remui %c363_i16, %c363_i16 : i16
        %268 = arith.minf %cst, %cst_2 : f32
        %269 = tensor.empty() : tensor<8xf16>
        %alloca_62 = memref.alloca() : memref<14x6x3xf32>
        %270 = math.ipowi %7, %7 : tensor<8x3xi32>
        %271 = affine.load %alloc_7[%c0] : memref<8xf16>
        %272 = math.rsqrt %3 : tensor<8xf16>
        memref.store %271, %alloc_17[%c1, %c3, %c2] : memref<6x8x6xf16>
        %273 = vector.load %alloc_12[%c2, %c0, %c3] : memref<6x8x6xi32>, vector<14x6x3xi32>
        bufferization.dealloc_tensor %14 : tensor<6x8x6xi1>
        %274 = arith.divui %25, %c483662461_i32 : i32
        %275 = index.ceildivs %c12, %c14
        %276 = bufferization.clone %alloc_17 : memref<6x8x6xf16> to memref<6x8x6xf16>
        %277 = arith.maxsi %c213424238_i32, %c1450336928_i32 : i32
        memref.alloca_scope.return %cst_0 : f16
      }
      %248 = index.maxu %c14, %c15
      %249 = arith.remf %247, %cst_0 : f16
      %inserted_58 = tensor.insert %cst_5 into %10[%c3, %c2, %c1] : tensor<6x8x6xf32>
      %250 = index.add %c9, %23
      memref.alloca_scope  {
        %253 = vector.broadcast %false_57 : i1 to vector<i1>
        %254 = vector.transfer_write %253, %0[%29, %c9] : vector<i1>, tensor<8x3xi1>
        %255 = math.ceil %15 : tensor<6x8x6xf16>
        %256 = math.floor %cst_3 : f32
        %257 = arith.maxf %cst, %cst : f32
        %258 = math.sqrt %cst_0 : f16
        %259 = math.round %cst_2 : f32
        %false_59 = index.bool.constant false
        %260 = math.copysign %cst_5, %cst_4 : f32
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %19, %19, %c1483383456_i64 : vector<14xi64>, vector<14xi64> into i64
        memref.store %c363_i16, %alloc_13[%c7] : memref<8xi16>
        %262 = math.ipowi %0, %0 : tensor<8x3xi1>
        %263 = arith.maxui %c-32746_i16, %c363_i16 : i16
        %alloc_60 = memref.alloc() : memref<8xi32>
        memref.tensor_store %4, %alloc_60 : memref<8xi32>
        %264 = arith.shrsi %c483662461_i32, %c1450336928_i32 : i32
        %265 = vector.broadcast %c213424238_i32 : i32 to vector<i32>
        vector.transfer_write %265, %alloc_22[%245] : vector<i32>, memref<3xi32>
        %266 = arith.remui %c-32746_i16, %c-32746_i16 : i16
        %267 = arith.addf %cst_0, %cst_0 : f16
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %19, %19, %c1806701373_i64 : vector<14xi64>, vector<14xi64> into i64
        %269 = math.floor %cst_0 : f16
        %270 = index.ceildivu %c9, %c8
        %271 = vector.broadcast %cst_4 : f32 to vector<14xf32>
        %272 = vector.broadcast %true : i1 to vector<14xi1>
        %273 = vector.maskedload %alloc_9[%c2, %c2], %272, %271 : memref<8x3xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %274 = vector.transpose %271, [0] : vector<14xf32> to vector<14xf32>
        %275 = tensor.empty() : tensor<8x3xf16>
        %276 = affine.load %alloc_13[%c6] : memref<8xi16>
        %277 = arith.xori %true, %false_57 : i1
        %278 = arith.remui %true, %true : i1
        %279 = index.mul %c4, %c5
        %alloca_61 = memref.alloca() : memref<14x6x3xi64>
        %280 = vector.reduction <maxsi>, %19 : vector<14xi64> into i64
        %281 = index.ceildivs %c7, %c2
        %282 = vector.reduction <minsi>, %272 : vector<14xi1> into i1
        %283 = math.absi %true : i1
      }
      %251 = affine.min affine_map<(d0, d1) -> (d0 mod 128 - d1 * 128, d1 * 128)>(%c9, %c6)
      %252 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
      scf.yield %arg0 : memref<8x3xf16>
    }
    %32 = math.ctlz %12 : tensor<6x8x6xi16>
    scf.if %false {
      %242 = arith.xori %c-32746_i16, %c363_i16 : i16
      %243 = math.cos %11 : tensor<6x8x6xf32>
      %244 = math.ipowi %c213424238_i32, %c213424238_i32 : i32
      %alloc_56 = memref.alloc() : memref<6x8x6xi64>
      %245 = vector.broadcast %c1483383456_i64 : i64 to vector<8xi64>
      %246 = vector.broadcast %true : i1 to vector<8xi1>
      %247 = vector.broadcast %c1450336928_i32 : i32 to vector<8xi32>
      %248 = vector.gather %alloc_56[%c10, %c5, %c6] [%247], %246, %245 : memref<6x8x6xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
      %false_57 = index.bool.constant false
      bufferization.dealloc_tensor %11 : tensor<6x8x6xf32>
      %249 = math.ctpop %c363_i16 : i16
      %250 = vector.reduction <and>, %246 : vector<8xi1> into i1
    } else {
      %242 = arith.floordivsi %c483662461_i32, %25 : i32
      %243 = affine.max affine_map<(d0, d1) -> (d1 mod 4, (-d1) mod 2, (d1 mod 4) ceildiv 4, (-d1) floordiv 2 - d1)>(%c5, %c1)
      %244 = arith.minsi %true, %true : i1
      %245 = arith.remf %cst_3, %cst_3 : f32
      %246 = vector.reduction <or>, %19 : vector<14xi64> into i64
      %247 = math.ctlz %5 : tensor<6x8x6xi64>
      %248 = index.divs %c15, %c10
      %c0_i16_56 = arith.constant 0 : i16
      %c0_i16_57 = arith.constant 0 : i16
      %249 = vector.transfer_read %alloc_15[%c5, %c4, %c6], %c0_i16_57 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<14x6x3xi16>, vector<8x8xi16>
    }
    %33 = vector.multi_reduction <xor>, %19, %19 [] : vector<14xi64> to vector<14xi64>
    %inserted = tensor.insert %false into %14[%c5, %c1, %c2] : tensor<6x8x6xi1>
    %34 = arith.ceildivsi %c363_i16, %c363_i16 : i16
    %from_elements = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<14x6x3xf16>
    %35 = arith.divf %cst_4, %cst_1 : f32
    %36 = arith.minsi %c213424238_i32, %c1450336928_i32 : i32
    %37 = vector.broadcast %false : i1 to vector<14x8xi1>
    %38 = vector.broadcast %false : i1 to vector<14xi1>
    %dest, %accumulated_value = vector.scan <add>, %37, %38 {inclusive = false, reduction_dim = 1 : i64} : vector<14x8xi1>, vector<14xi1>
    %39 = arith.remui %c1450336928_i32, %c213424238_i32 : i32
    %40 = arith.mulf %cst_3, %cst_2 : f32
    %41 = math.log2 %11 : tensor<6x8x6xf32>
    %42 = math.ctpop %true : i1
    %alloca = memref.alloca() : memref<6x8x6xi64>
    %43 = index.add %c13, %c11
    %44 = math.floor %cst_3 : f32
    %45 = math.exp2 %11 : tensor<6x8x6xf32>
    %46 = math.sqrt %6 : tensor<8x3xf32>
    %47 = math.copysign %cst_1, %cst_1 : f32
    %48 = math.roundeven %8 : tensor<8xf32>
    %49 = arith.remui %c483662461_i32, %c1450336928_i32 : i32
    %50 = math.cos %3 : tensor<8xf16>
    %51 = memref.atomic_rmw muli %c-32746_i16, %alloc_11[%c2, %c3, %c3] : (i16, memref<6x8x6xi16>) -> i16
    %52 = math.log1p %10 : tensor<6x8x6xf32>
    %53 = arith.andi %25, %c483662461_i32 : i32
    %54 = tensor.empty(%c8) : tensor<?xi64>
    %55 = index.ceildivu %23, %c14
    %56 = bufferization.clone %alloc_10 : memref<8x3xf16> to memref<8x3xf16>
    %57 = math.tan %6 : tensor<8x3xf32>
    %cast_24 = tensor.cast %17 : tensor<6x8x6xi64> to tensor<?x?x?xi64>
    %58 = math.round %3 : tensor<8xf16>
    %59 = vector.broadcast %c1806701373_i64 : i64 to vector<14x14xi64>
    %60 = vector.outerproduct %19, %19, %59 {kind = #vector.kind<maxsi>} : vector<14xi64>, vector<14xi64>
    %61 = index.divu %c15, %c9
    %62 = arith.divui %c459066806_i64, %c1483383456_i64 : i64
    %collapsed_25 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x8x6xf32> into tensor<48x6xf32>
    %63 = arith.andi %c213424238_i32, %c213424238_i32 : i32
    %64 = arith.divsi %c1806701373_i64, %c1806701373_i64 : i64
    %from_elements_26 = tensor.from_elements %false, %true, %false, %false, %true, %false, %false, %false, %false, %true, %true, %false, %true, %false, %false, %false, %false, %true, %false, %false, %false, %true, %true, %false : tensor<8x3xi1>
    %65 = arith.andi %c1483383456_i64, %c1483383456_i64 : i64
    %66 = vector.reduction <minui>, %19 : vector<14xi64> into i64
    %67 = arith.remui %c213424238_i32, %25 : i32
    %c-27571_i16 = arith.constant -27571 : i16
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %68 = vector.transfer_read %7[%c15, %43], %c0_i32 : tensor<8x3xi32>, vector<i32>
    %69 = arith.addi %c1450336928_i32, %c483662461_i32 : i32
    %70 = arith.remf %cst_0, %cst_0 : f16
    %71 = math.atan %10 : tensor<6x8x6xf32>
    %alloca_27 = memref.alloca() : memref<8x3xf32>
    %72 = arith.shli %c213424238_i32, %c483662461_i32 : i32
    %73 = math.round %11 : tensor<6x8x6xf32>
    %74 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<14x6x3xi32>) {
    ^bb0(%out: i32):
      %242 = arith.muli %c1_i32, %25 : i32
      %243 = index.maxu %c13, %c3
      %244 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
      %245 = vector.reduction <mul>, %244 : vector<14xi64> into i64
      %246 = arith.ceildivsi %c1_i32, %out : i32
      memref.tensor_store %15, %alloc_17 : memref<6x8x6xf16>
      %247 = tensor.empty() : tensor<8x3xf32>
      %mapped = linalg.map ins(%6 : tensor<8x3xf32>) outs(%247 : tensor<8x3xf32>)
        (%in: f32) {
          %extracted_60 = tensor.extract %7[%c2, %c2] : tensor<8x3xi32>
          %274 = affine.min affine_map<(d0) -> (d0, d0 + 64, d0, d0 floordiv 128)>(%23)
          %275 = math.absi %c1_i32 : i32
          bufferization.dealloc_tensor %5 : tensor<6x8x6xi64>
          bufferization.dealloc_tensor %14 : tensor<6x8x6xi1>
          %276 = bufferization.to_memref %9 : memref<6x8x6xi16>
          %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %19, %244, %c1483383456_i64 : vector<14xi64>, vector<14xi64> into i64
          vector.print %19 : vector<14xi64>
          %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %244, %c459066806_i64 : vector<14xi64>, vector<14xi64> into i64
          %279 = math.absi %out : i32
          %280 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
          %281 = vector.reduction <and>, %244 : vector<14xi64> into i64
          %282 = bufferization.to_memref %10 : memref<6x8x6xf32>
          %283 = math.tan %cst_2 : f32
          %284 = math.floor %1 : tensor<6x8x6xf16>
          %285 = vector.load %alloc_8[%c6, %c5, %c0] : memref<14x6x3xf32>, vector<8x3xf32>
          %286 = arith.andi %c213424238_i32, %c213424238_i32 : i32
          %287 = index.sub %55, %c0
          %288 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 8)>(%287, %287, %c5, %243)
          %289 = arith.ceildivsi %c1_i32, %c1_i32 : i32
          %290 = affine.load %alloc_11[%c1, %c14, %c11] : memref<6x8x6xi16>
          %291 = bufferization.clone %alloc_10 : memref<8x3xf16> to memref<8x3xf16>
          %alloc_61 = memref.alloc() : memref<14x6x3xi1>
          %cst_62 = arith.constant 1.000000e+00 : f16
          %cst_63 = arith.constant 0.000000e+00 : f16
          %292 = vector.transfer_read %alloc_7[%c14], %cst_63 : memref<8xf16>, vector<f16>
          %alloca_64 = memref.alloca() : memref<8x3xi64>
          %293 = arith.ceildivsi %false, %false : i1
          %294 = affine.load %alloc[%c15] : memref<8xi16>
          %expanded_65 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<8x3xf32> into tensor<8x3x1xf32>
          %295 = arith.shrui %294, %290 : i16
          %296 = math.log %cst_4 : f32
          %297 = arith.addi %c483662461_i32, %out : i32
          %298 = bufferization.clone %alloc_16 : memref<14x6x3xi1> to memref<14x6x3xi1>
          %cst_66 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_66 : f32
        }
      %248 = arith.muli %out, %c483662461_i32 : i32
      %249 = vector.create_mask %c9, %243 : vector<8x3xi1>
      %250 = index.maxu %c1, %c3
      %251 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c3, %55, %c7, %c5)
      %c36 = arith.constant 36 : index
      %extracted_56 = tensor.extract %collapsed_25[%c36, %c5] : tensor<48x6xf32>
      %252 = math.fma %10, %11, %10 : tensor<6x8x6xf32>
      %253 = arith.andi %true, %true : i1
      %254 = arith.xori %c459066806_i64, %c1806701373_i64 : i64
      %255 = index.sub %43, %c6
      %splat_57 = tensor.splat %extracted_56 : tensor<8xf32>
      %256 = math.log2 %6 : tensor<8x3xf32>
      %257 = tensor.empty(%c8) : tensor<8x?xi16>
      %258 = tensor.empty() : tensor<6x6xi16>
      %alloc_58 = memref.alloc() : memref<8x6xi16>
      %259 = tensor.empty() : tensor<8x6x6xi16>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %alloc_58, %259 : tensor<6x6xi16>, memref<8x6xi16>, tensor<8x6x6xi16>) outs(%9 : tensor<6x8x6xi16>) {
      ^bb0(%in: i16, %in_60: i16, %in_61: i16, %out_62: i16):
        %274 = affine.max affine_map<(d0) -> (0)>(%27)
        %splat_63 = tensor.splat %c1483383456_i64 : tensor<6x8x6xi64>
        %275 = math.ipowi %12, %12 : tensor<6x8x6xi16>
        memref.assume_alignment %alloc_7, 4 : memref<8xf16>
        %276 = arith.cmpf false, %cst_3, %cst_1 : f32
        %277 = math.tanh %10 : tensor<6x8x6xf32>
        %278 = math.exp2 %cst_1 : f32
        %279 = vector.transpose %249, [0, 1] : vector<8x3xi1> to vector<8x3xi1>
        %c0_i16_64 = arith.constant 0 : i16
        %280 = vector.transfer_read %alloc_11[%250, %250, %29], %c0_i16_64 : memref<6x8x6xi16>, vector<i16>
        %281 = index.maxs %c11, %250
        %282 = index.divs %23, %c7
        %283 = arith.shrsi %c1_i32, %25 : i32
        %284 = vector.broadcast %c-32746_i16 : i16 to vector<i16>
        vector.transfer_write %284, %alloc[%c10] : vector<i16>, memref<8xi16>
        %c0_i16_65 = arith.constant 0 : i16
        %c0_i16_66 = arith.constant 0 : i16
        %285 = vector.transfer_read %alloc_11[%c11, %c15, %243], %c0_i16_66 : memref<6x8x6xi16>, vector<i16>
        %286 = vector.load %alloc_15[%c0, %c2, %c2] : memref<14x6x3xi16>, vector<6x8x6xi16>
        %287 = arith.shrsi %c0_i16_65, %in_61 : i16
        %288 = index.sub %29, %251
        %from_elements_67 = tensor.from_elements %in_61, %c-32746_i16, %c363_i16, %c0_i16_65, %in_61, %in, %c363_i16, %c-32746_i16, %out_62, %in_61, %out_62, %c363_i16, %c363_i16, %c-32746_i16, %in, %in, %in_60, %out_62, %c0_i16_64, %out_62, %c-32746_i16, %in_60, %c0_i16_64, %c-32746_i16, %in_61, %c0_i16_64, %in_61, %c363_i16, %in_61, %in_60, %in_61, %c363_i16, %c0_i16_64, %in_61, %out_62, %c363_i16, %in_60, %in, %c363_i16, %in, %in_61, %c363_i16, %out_62, %c-32746_i16, %c-32746_i16, %c0_i16_65, %c0_i16_65, %in_60, %c363_i16, %in_60, %in_60, %c0_i16_65, %c0_i16_64, %in_60, %out_62, %in_61, %in, %in_61, %in_61, %in, %c-32746_i16, %c-32746_i16, %c363_i16, %in, %in_60, %out_62, %in, %c-32746_i16, %in_61, %in_60, %c0_i16_64, %out_62, %out_62, %in_61, %out_62, %out_62, %out_62, %in_61, %c363_i16, %in_61, %c-32746_i16, %in, %in, %out_62, %in_60, %c0_i16_65, %in, %c0_i16_64, %c0_i16_65, %in_60, %c-32746_i16, %in_61, %c-32746_i16, %c0_i16_65, %c0_i16_65, %c0_i16_65, %c0_i16_65, %in, %out_62, %in_60, %c0_i16_65, %c-32746_i16, %out_62, %c-32746_i16, %out_62, %c363_i16, %in_61, %c0_i16_64, %c363_i16, %in, %c0_i16_65, %in, %c0_i16_65, %c363_i16, %out_62, %c0_i16_65, %c0_i16_64, %in_61, %c0_i16_64, %c-32746_i16, %c-32746_i16, %in_60, %in_60, %c363_i16, %c363_i16, %out_62, %c0_i16_64, %in_61, %out_62, %in, %c363_i16, %in, %out_62, %c363_i16, %in_60, %out_62, %in_61, %c-32746_i16, %out_62, %in_61, %c0_i16_65, %c-32746_i16, %in, %out_62, %c363_i16, %in_60, %out_62, %c0_i16_64, %c363_i16, %in, %c-32746_i16, %c-32746_i16, %c0_i16_65, %in_61, %in_60, %out_62, %in_61, %c0_i16_64, %c0_i16_64, %c0_i16_64, %c363_i16, %c0_i16_64, %in_61, %c0_i16_65, %c0_i16_65, %c363_i16, %out_62, %in_61, %in_60, %c0_i16_64, %in_60, %c-32746_i16, %in_60, %c0_i16_65, %c-32746_i16, %c-32746_i16, %c363_i16, %in_60, %c0_i16_65, %c0_i16_64, %in_60, %in_61, %c363_i16, %c0_i16_65, %in, %in_61, %c0_i16_65, %c0_i16_64, %in, %in, %in_61, %c363_i16, %c0_i16_65, %c0_i16_65, %in, %c-32746_i16, %in_61, %c363_i16, %in_61, %c0_i16_64, %in_61, %c363_i16, %c0_i16_64, %in_61, %in, %out_62, %c0_i16_65, %in_61, %in, %c-32746_i16, %in, %in_60, %c0_i16_65, %in_60, %out_62, %c-32746_i16, %in, %c0_i16_65, %c-32746_i16, %c0_i16_64, %c-32746_i16, %c0_i16_65, %in_61, %in_60, %out_62, %in_61, %c363_i16, %c363_i16, %in_61, %c0_i16_64, %c0_i16_65, %out_62, %c-32746_i16, %c0_i16_64, %c-32746_i16, %c363_i16, %c0_i16_64, %out_62, %c363_i16, %out_62, %in_60, %c-32746_i16, %in_60, %out_62, %in_60, %in, %c-32746_i16, %c0_i16_65, %c0_i16_65, %in, %in_61, %c-32746_i16, %in_60, %in_60, %c-32746_i16, %in, %in_60, %c-32746_i16, %c0_i16_64, %c363_i16, %in_60, %c0_i16_65, %in_61, %c363_i16, %c363_i16, %c-32746_i16, %out_62, %in, %in, %c-32746_i16, %c363_i16, %in_60, %in, %in_60, %c0_i16_64, %c0_i16_64, %c-32746_i16, %c363_i16, %c363_i16, %c0_i16_65, %in, %in_60, %c-32746_i16, %in_60, %in_61, %in, %in_60, %c0_i16_64 : tensor<6x8x6xi16>
        %289 = math.absi %5 : tensor<6x8x6xi64>
        %290 = affine.apply affine_map<(d0, d1) -> (d0 - d1 - 64)>(%c3, %43)
        %291 = math.roundeven %cst_0 : f16
        %292 = vector.load %alloc_10[%c7, %c0] : memref<8x3xf16>, vector<14x6x3xf16>
        %293 = affine.min affine_map<(d0, d1) -> (d1 * 33 + d1 * 32 - 4, d1 * 33, d1 * 2 + 16)>(%c14, %c11)
        %294 = bufferization.clone %alloc_8 : memref<14x6x3xf32> to memref<14x6x3xf32>
        %295 = index.sub %288, %27
        %296 = arith.maxsi %c-32746_i16, %out_62 : i16
        %297 = arith.maxui %false, %true : i1
        %298 = vector.broadcast %cst_1 : f32 to vector<8x3xf32>
        %299 = vector.matrix_multiply %244, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %300 = vector.broadcast %c8 : index to vector<6xindex>
        %301 = vector.broadcast %false : i1 to vector<6xi1>
        %302 = vector.broadcast %c1483383456_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_19[%c1, %c4, %c1] [%300], %301, %302 : memref<14x6x3xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        %303 = math.copysign %1, %15 : tensor<6x8x6xf16>
        %304 = affine.load %alloc_22[%c4] : memref<3xi32>
        linalg.yield %c0_i16_64 : i16
      } -> tensor<6x8x6xi16>
      %261 = arith.divui %true, %true : i1
      %262 = arith.divui %c483662461_i32, %c483662461_i32 : i32
      %263 = math.tan %1 : tensor<6x8x6xf16>
      %264 = math.expm1 %11 : tensor<6x8x6xf32>
      %265 = vector.load %alloc_19[%c9, %c5, %c2] : memref<14x6x3xi64>, vector<8x3xi64>
      %266 = math.fma %11, %11, %10 : tensor<6x8x6xf32>
      %267 = math.roundeven %collapsed_25 : tensor<48x6xf32>
      %268 = arith.divui %c459066806_i64, %c1483383456_i64 : i64
      %269 = vector.broadcast %cst_0 : f16 to vector<14xf16>
      vector.transfer_write %269, %56[%c0, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xf16>, memref<8x3xf16>
      %270 = vector.reduction <and>, %244 : vector<14xi64> into i64
      %271 = tensor.empty() : tensor<6x6xf32>
      %alloc_59 = memref.alloc() : memref<6x6x8xf32>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %alloc_59, %8 : tensor<6x6xf32>, memref<6x6x8xf32>, tensor<8xf32>) outs(%10 : tensor<6x8x6xf32>) {
      ^bb0(%in: f32, %in_60: f32, %in_61: f32, %out_62: f32):
        %274 = arith.divui %c363_i16, %c-32746_i16 : i16
        %true_63 = arith.constant true
        %275 = index.divu %c11, %250
        %276 = math.log1p %11 : tensor<6x8x6xf32>
        %277 = arith.mulf %cst, %cst_2 : f32
        %true_64 = index.bool.constant true
        %c0_i16_65 = arith.constant 0 : i16
        %c0_i16_66 = arith.constant 0 : i16
        %278 = vector.transfer_read %2[%c10, %c15, %29], %c0_i16_66 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<6x8x6xi16>, vector<3xi16>
        %rank_67 = tensor.rank %15 : tensor<6x8x6xf16>
        %279 = vector.broadcast %cst_2 : f32 to vector<14x6x3xf32>
        %280 = index.maxu %c6, %23
        %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 4)>(%255, %c9, %c8, %c15)
        %282 = vector.transpose %279, [2, 0, 1] : vector<14x6x3xf32> to vector<3x14x6xf32>
        %283 = arith.negf %cst_4 : f32
        %splat_68 = tensor.splat %c1483383456_i64 : tensor<6x8x6xi64>
        %284 = math.expm1 %in_61 : f32
        %285 = math.ceil %cst_5 : f32
        memref.store %cst_0, %alloc_17[%c1, %c4, %c1] : memref<6x8x6xf16>
        %alloca_69 = memref.alloca() : memref<6x8x6xf32>
        %286 = arith.remui %c1806701373_i64, %c459066806_i64 : i64
        %287 = vector.flat_transpose %269 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
        %288 = math.log1p %247 : tensor<8x3xf32>
        %289 = math.ctpop %2 : tensor<6x8x6xi16>
        %290 = math.tan %10 : tensor<6x8x6xf32>
        %291 = vector.flat_transpose %244 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
        %292 = memref.realloc %alloc_7 : memref<8xf16> to memref<14xf16>
        %293 = arith.cmpf ule, %cst_3, %cst : f32
        %294 = arith.minsi %c213424238_i32, %c483662461_i32 : i32
        %295 = arith.remui %true_64, %false : i1
        %cst_70 = arith.constant 1.000000e+00 : f32
        %cst_71 = arith.constant 0.000000e+00 : f32
        %296 = vector.transfer_read %8[%c3], %cst_71 : tensor<8xf32>, vector<f32>
        %from_elements_72 = tensor.from_elements %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64 : tensor<6x8x6xi64>
        %297 = index.add %c10, %c9
        %298 = math.absf %1 : tensor<6x8x6xf16>
        linalg.yield %cst_1 : f32
      } -> tensor<6x8x6xf32>
      %273 = math.tanh %15 : tensor<6x8x6xf16>
      linalg.yield %c1450336928_i32 : i32
    } -> tensor<14x6x3xi32>
    %75 = math.log %cst_2 : f32
    %76 = vector.load %alloc[%c7] : memref<8xi16>, vector<8x3xi16>
    %77 = affine.load %alloc_17[%c4, %c4, %c14] : memref<6x8x6xf16>
    %78 = scf.if %true -> (i32) {
      memref.assume_alignment %alloc_19, 8 : memref<14x6x3xi64>
      %242 = bufferization.clone %alloc_16 : memref<14x6x3xi1> to memref<14x6x3xi1>
      %243 = math.round %15 : tensor<6x8x6xf16>
      %extracted_56 = tensor.extract %5[%c3, %c6, %c1] : tensor<6x8x6xi64>
      %244 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
      %245 = math.ctlz %c363_i16 : i16
      %246 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
      %247 = arith.maxf %cst_4, %cst_4 : f32
      scf.yield %c483662461_i32 : i32
    } else {
      %242 = arith.remf %cst_2, %cst_2 : f32
      %243 = arith.remui %c213424238_i32, %c1450336928_i32 : i32
      %splat_56 = tensor.splat %c483662461_i32 : tensor<8x3xi32>
      %244 = arith.andi %c213424238_i32, %c1_i32 : i32
      %alloc_57 = memref.alloc() : memref<14x6x3xi64>
      memref.copy %alloc_19, %alloc_57 : memref<14x6x3xi64> to memref<14x6x3xi64>
      %c0_i16_58 = arith.constant 0 : i16
      %245 = vector.transfer_read %9[%61, %c11, %61], %c0_i16_58 : tensor<6x8x6xi16>, vector<i16>
      %true_59 = index.bool.constant true
      %246 = arith.xori %c459066806_i64, %c1483383456_i64 : i64
      scf.yield %25 : i32
    }
    %79 = memref.alloca_scope  -> (memref<14x6x3xf32>) {
      %242 = math.log %21 : tensor<f16>
      %243 = math.exp2 %collapsed_25 : tensor<48x6xf32>
      %244 = arith.divui %c459066806_i64, %c459066806_i64 : i64
      %245 = bufferization.clone %alloc_21 : memref<3x14x6xi1> to memref<3x14x6xi1>
      %246 = affine.load %alloc_10[%c7, %c9] : memref<8x3xf16>
      %247 = arith.andi %false, %false : i1
      memref.store %cst_0, %alloc_23[%c7] : memref<8xf16>
      memref.alloca_scope  {
        %268 = arith.muli %c-32746_i16, %c363_i16 : i16
        %269 = index.ceildivu %c13, %43
        %270 = vector.broadcast %c1483383456_i64 : i64 to vector<14x14xi64>
        %271 = vector.outerproduct %19, %19, %270 {kind = #vector.kind<and>} : vector<14xi64>, vector<14xi64>
        %272 = arith.divsi %78, %78 : i32
        %273 = index.add %c6, %c14
        %274 = vector.broadcast %c459066806_i64 : i64 to vector<14x14xi64>
        %275 = vector.outerproduct %19, %19, %274 {kind = #vector.kind<minui>} : vector<14xi64>, vector<14xi64>
        %alloc_57 = memref.alloc() : memref<6x8x6xf32>
        memref.tensor_store %10, %alloc_57 : memref<6x8x6xf32>
        %276 = vector.reduction <mul>, %19 : vector<14xi64> into i64
        %277 = arith.negf %cst_1 : f32
        %278 = arith.divui %c363_i16, %c-32746_i16 : i16
        %collapsed_58 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<6x8x6xi64> into tensor<48x6xi64>
        memref.assume_alignment %alloc_7, 1 : memref<8xf16>
        %279 = index.add %55, %c10
        %280 = index.mul %c9, %61
        %281 = vector.bitcast %76 : vector<8x3xi16> to vector<8x3xf16>
        %282 = math.absf %11 : tensor<6x8x6xf32>
        %283 = arith.minsi %true, %true : i1
        %284 = memref.load %alloc_20[%c9, %c3, %c0] : memref<14x6x3xf16>
        %285 = affine.max affine_map<(d0, d1, d2) -> ((d0 - (d0 + 8)) * 16384, d0 - (d0 + 8), d0 - (d0 + 8) - 64)>(%c14, %43, %c11)
        %286 = arith.floordivsi %false, %false : i1
        %287 = math.sqrt %15 : tensor<6x8x6xf16>
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c459066806_i64 : vector<14xi64>, vector<14xi64> into i64
        %289 = math.absi %13 : tensor<14x6x3xi32>
        %290 = math.fma %77, %77, %77 : f16
        %291 = arith.negf %cst : f32
        %292 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi64> -> vector<14xi64>
        %293 = index.divs %c13, %27
        %294 = arith.remf %cst_1, %cst_2 : f32
        %295 = vector.create_mask %269, %c15, %29 : vector<6x8x6xi1>
        %296 = arith.minsi %c459066806_i64, %c1483383456_i64 : i64
        %collapsed_59 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<6x8x6xi16> into tensor<48x6xi16>
        %297 = arith.remf %77, %246 : f16
      }
      %248 = arith.xori %c1483383456_i64, %c1806701373_i64 : i64
      %249 = arith.remui %c459066806_i64, %c459066806_i64 : i64
      %250 = arith.addi %false, %false : i1
      %251 = arith.maxui %c483662461_i32, %c483662461_i32 : i32
      %252 = scf.index_switch %c0 -> i32 
      case 1 {
        %268 = math.sqrt %8 : tensor<8xf32>
        %269 = math.ipowi %true, %true : i1
        %270 = index.mul %c5, %c5
        %false_57 = arith.constant false
        %false_58 = arith.constant false
        %271 = vector.transfer_read %245[%c2, %c3, %29], %false_58 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<3x14x6xi1>, vector<3xi1>
        %272 = math.log1p %3 : tensor<8xf16>
        %273 = arith.maxsi %c459066806_i64, %c1806701373_i64 : i64
        %274 = math.ctpop %7 : tensor<8x3xi32>
        %275 = math.ceil %10 : tensor<6x8x6xf32>
        %276 = arith.cmpf olt, %cst_4, %cst_2 : f32
        %277 = vector.create_mask %c15, %c8 : vector<8x3xi1>
        %278 = arith.maxsi %c-32746_i16, %c363_i16 : i16
        %279 = tensor.empty() : tensor<3x8xi1>
        %280 = tensor.empty() : tensor<8x8xi1>
        %281 = linalg.matmul ins(%0, %279 : tensor<8x3xi1>, tensor<3x8xi1>) outs(%280 : tensor<8x8xi1>) -> tensor<8x8xi1>
        %cst_59 = arith.constant 1.000000e+00 : f32
        %cst_60 = arith.constant 0.000000e+00 : f32
        %282 = vector.transfer_read %11[%c8, %c2, %c9], %cst_60 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<6x8x6xf32>, vector<6xf32>
        %extracted_61 = tensor.extract %cast_24[%c0, %c0, %c0] : tensor<?x?x?xi64>
        %283 = index.floordivs %c7, %c13
        %284 = math.ctlz %c363_i16 : i16
        scf.yield %25 : i32
      }
      case 2 {
        %268 = affine.load %56[%c8, %c10] : memref<8x3xf16>
        %269 = math.log1p %collapsed_25 : tensor<48x6xf32>
        %270 = math.floor %8 : tensor<8xf32>
        %false_57 = index.bool.constant false
        %271 = math.absf %15 : tensor<6x8x6xf16>
        %272 = tensor.empty() : tensor<14x6x3xi64>
        %273 = arith.remui %c483662461_i32, %c483662461_i32 : i32
        %274 = vector.broadcast %c213424238_i32 : i32 to vector<i32>
        %275 = vector.transfer_write %274, %4[%c14] : vector<i32>, tensor<8xi32>
        %276 = index.maxu %c10, %c2
        %alloc_58 = memref.alloc() : memref<8x3xi1>
        memref.tensor_store %from_elements_26, %alloc_58 : memref<8x3xi1>
        %277 = math.cos %3 : tensor<8xf16>
        %278 = index.divs %c4, %c0
        memref.assume_alignment %alloc_12, 1 : memref<6x8x6xi32>
        %from_elements_59 = tensor.from_elements %c1_i32, %c483662461_i32, %c213424238_i32, %25, %78, %78, %c1_i32, %c483662461_i32, %c483662461_i32, %78, %c1450336928_i32, %c1_i32, %78, %c1_i32, %c1_i32, %c1_i32, %25, %78, %25, %25, %c1_i32, %25, %78, %c483662461_i32, %25, %c1_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c1_i32, %c1450336928_i32, %78, %78, %c483662461_i32, %c213424238_i32, %c1_i32, %c213424238_i32, %c1450336928_i32, %78, %c1_i32, %c1450336928_i32, %c213424238_i32, %c1_i32, %78, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c1_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c1_i32, %25, %c483662461_i32, %c213424238_i32, %25, %78, %c1450336928_i32, %c1_i32, %c1450336928_i32, %78, %c1_i32, %25, %c213424238_i32, %c1_i32, %c213424238_i32, %25, %c1_i32, %78, %c213424238_i32, %c1450336928_i32, %c1_i32, %c1_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c1_i32, %c1_i32, %c1450336928_i32, %c1_i32, %c213424238_i32, %78, %c1450336928_i32, %c483662461_i32, %c1_i32, %c213424238_i32, %78, %c483662461_i32, %c213424238_i32, %78, %c213424238_i32, %25, %25, %c213424238_i32, %25, %c483662461_i32, %c1450336928_i32, %c1_i32, %25, %c1450336928_i32, %c483662461_i32, %78, %25, %c1450336928_i32, %25, %c1450336928_i32, %c1_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %25, %78, %c483662461_i32, %25, %78, %25, %c483662461_i32, %c1_i32, %c1_i32, %c1_i32, %c213424238_i32, %78, %25, %c483662461_i32, %78, %c1_i32, %c213424238_i32, %c1_i32, %78, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1_i32, %c483662461_i32, %25, %78, %c1_i32, %c1450336928_i32, %25, %25, %c213424238_i32, %c213424238_i32, %c1_i32, %c213424238_i32, %78, %78, %78, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %25, %c213424238_i32, %c483662461_i32, %c1_i32, %c1_i32, %78, %78, %78, %c1450336928_i32, %c1450336928_i32, %c1_i32, %78, %c483662461_i32, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c1_i32, %25, %25, %78, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c1_i32, %78, %c213424238_i32, %c1450336928_i32, %25, %c213424238_i32, %c213424238_i32, %c213424238_i32, %25, %c213424238_i32, %78, %25, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %25, %c1_i32, %c1_i32, %c1_i32, %c1450336928_i32, %c1_i32, %25, %25, %c1_i32, %c1450336928_i32, %c1450336928_i32, %25, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %25, %c1_i32, %c483662461_i32, %c213424238_i32, %c1_i32, %c213424238_i32, %c1_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c1_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %78, %25, %c1450336928_i32, %c483662461_i32, %78, %25, %c483662461_i32, %c213424238_i32, %25, %c213424238_i32, %78, %25, %c213424238_i32, %c1450336928_i32, %25, %78, %c1_i32, %c213424238_i32, %25, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %25, %78, %c213424238_i32, %78, %78, %25, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c1_i32, %25, %25, %c1450336928_i32, %25, %c213424238_i32, %78, %c1_i32, %25, %c1450336928_i32, %78, %c1450336928_i32, %c1450336928_i32 : tensor<6x8x6xi32>
        %splat_60 = tensor.splat %25 : tensor<8x3xi32>
        memref.assume_alignment %alloc_19, 16 : memref<14x6x3xi64>
        scf.yield %c1_i32 : i32
      }
      case 3 {
        %cst_57 = arith.constant 1.000000e+00 : f32
        %cst_58 = arith.constant 0.000000e+00 : f32
        %268 = vector.transfer_read %6[%c0, %c5], %cst_58 : tensor<8x3xf32>, vector<f32>
        %inserted_59 = tensor.insert %c363_i16 into %12[%c4, %c5, %c3] : tensor<6x8x6xi16>
        %269 = vector.broadcast %c-32746_i16 : i16 to vector<i16>
        vector.transfer_write %269, %alloc_18[%61, %c3, %c3] : vector<i16>, memref<14x6x3xi16>
        %270 = math.log2 %cst_2 : f32
        %271 = index.maxs %55, %c2
        %expanded_60 = tensor.expand_shape %from_elements_26 [[0], [1, 2]] : tensor<8x3xi1> into tensor<8x3x1xi1>
        %272 = arith.remui %c213424238_i32, %78 : i32
        %273 = vector.broadcast %c1806701373_i64 : i64 to vector<i64>
        vector.transfer_write %273, %alloc_19[%55, %c1, %61] : vector<i64>, memref<14x6x3xi64>
        %274 = tensor.empty(%c10, %c13, %c10) : tensor<?x?x?xf16>
        %275 = vector.shuffle %19, %19 [3, 4, 5, 7, 8, 9, 10, 12, 14, 16, 17, 18, 19, 20, 22, 24, 25] : vector<14xi64>, vector<14xi64>
        %276 = arith.remui %c1450336928_i32, %c213424238_i32 : i32
        %277 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %alloca_61 = memref.alloca() : memref<8x3xi16>
        %278 = index.castu %c363_i16 : i16 to index
        memref.assume_alignment %alloc_21, 2 : memref<3x14x6xi1>
        %splat_62 = tensor.splat %cst_1 : tensor<8xf32>
        scf.yield %78 : i32
      }
      default {
        %268 = math.sqrt %10 : tensor<6x8x6xf32>
        %269 = index.floordivs %29, %c4
        %270 = math.expm1 %collapsed_25 : tensor<48x6xf32>
        %271 = math.ceil %246 : f16
        %272 = index.divs %c10, %c13
        %273 = vector.broadcast %c363_i16 : i16 to vector<3x3xi16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %76, %76, %273 : vector<8x3xi16>, vector<8x3xi16> into vector<3x3xi16>
        %275 = index.maxs %c9, %c1
        %276 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
        %277 = index.casts %c8 : index to i32
        %278 = arith.remf %cst_1, %cst_1 : f32
        %279 = arith.addi %c1450336928_i32, %c1450336928_i32 : i32
        %280 = arith.divui %25, %c1450336928_i32 : i32
        %281 = math.round %21 : tensor<f16>
        %282 = affine.load %alloc_17[%c4, %c14, %c10] : memref<6x8x6xf16>
        %cast_57 = tensor.cast %11 : tensor<6x8x6xf32> to tensor<?x?x?xf32>
        %c1_i64_58 = arith.constant 1 : i64
        %c0_i64_59 = arith.constant 0 : i64
        %283 = vector.transfer_read %16[%c11, %275, %c4], %c0_i64_59 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<6x8x6xi64>, vector<3xi64>
        scf.yield %c1_i32 : i32
      }
      %253 = index.ceildivs %c1, %c1
      memref.store %c-32746_i16, %alloc_11[%c2, %c6, %c2] : memref<6x8x6xi16>
      %254 = arith.remui %c213424238_i32, %c213424238_i32 : i32
      %255 = arith.muli %78, %c483662461_i32 : i32
      scf.if %true {
        %268 = bufferization.clone %alloc_16 : memref<14x6x3xi1> to memref<14x6x3xi1>
        %269 = math.cos %15 : tensor<6x8x6xf16>
        %270 = vector.reduction <maxsi>, %19 : vector<14xi64> into i64
        %271 = math.floor %cst_5 : f32
        %272 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%61, %27, %c7, %c12)
        %273 = vector.broadcast %cst_0 : f16 to vector<f16>
        %274 = vector.transfer_write %273, %3[%43] : vector<f16>, tensor<8xf16>
        %275 = arith.subi %true, %true : i1
        %276 = affine.apply affine_map<(d0) -> (d0 * 18)>(%c6)
      } else {
        %alloc_57 = memref.alloc() : memref<14x6x3xi64>
        %268 = math.absf %cst_5 : f32
        %269 = arith.andi %c483662461_i32, %78 : i32
        bufferization.dealloc_tensor %2 : tensor<6x8x6xi16>
        %alloca_58 = memref.alloca() : memref<14x6x3xi64>
        %270 = vector.broadcast %c363_i16 : i16 to vector<3x3xi16>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %76, %76, %270 : vector<8x3xi16>, vector<8x3xi16> into vector<3x3xi16>
        %272 = index.castu %c483662461_i32 : i32 to index
        %c0_i32_59 = arith.constant 0 : i32
        %c0_i32_60 = arith.constant 0 : i32
        %273 = vector.transfer_read %13[%c12, %c12, %55], %c0_i32_60 : tensor<14x6x3xi32>, vector<i32>
      }
      %256 = index.casts %c1_i32 : i32 to index
      %257 = arith.cmpf olt, %cst_4, %cst : f32
      %258 = index.add %c11, %c1
      %259 = memref.alloca_scope  -> (memref<8xf16>) {
        memref.store %c363_i16, %alloc_18[%c8, %c4, %c0] : memref<14x6x3xi16>
        %268 = arith.shrui %true, %false : i1
        %269 = arith.addi %c213424238_i32, %78 : i32
        %270 = index.ceildivu %253, %27
        %271 = math.sqrt %cst_5 : f32
        %272 = arith.addf %cst_2, %cst : f32
        %273 = math.fma %from_elements, %from_elements, %from_elements : tensor<14x6x3xf16>
        %274 = arith.remui %false, %true : i1
        %275 = math.ipowi %9, %9 : tensor<6x8x6xi16>
        %276 = vector.reduction <minsi>, %19 : vector<14xi64> into i64
        %277 = index.ceildivu %c7, %c2
        %278 = math.fma %6, %6, %6 : tensor<8x3xf32>
        %279 = math.exp2 %246 : f16
        %280 = arith.minsi %c459066806_i64, %c1483383456_i64 : i64
        memref.assume_alignment %alloc_6, 16 : memref<8xi64>
        memref.assume_alignment %alloc_20, 8 : memref<14x6x3xf16>
        %281 = index.maxu %c1, %c14
        %282 = bufferization.clone %alloc_22 : memref<3xi32> to memref<3xi32>
        %c-10464_i16 = arith.constant -10464 : i16
        %283 = arith.cmpf one, %77, %77 : f16
        %284 = arith.subi %c1450336928_i32, %c483662461_i32 : i32
        %expanded_57 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<8x3xi1> into tensor<8x3x1xi1>
        %285 = arith.remf %cst_2, %cst_3 : f32
        %286 = arith.cmpi sle, %c1_i32, %c213424238_i32 : i32
        %287 = math.tan %cst_1 : f32
        %288 = index.maxu %258, %c12
        %289 = arith.maxui %c1450336928_i32, %78 : i32
        %from_elements_58 = tensor.from_elements %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64 : tensor<8x3xi64>
        %true_59 = index.bool.constant true
        %290 = vector.broadcast %c363_i16 : i16 to vector<3x3xi16>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %76, %76, %290 : vector<8x3xi16>, vector<8x3xi16> into vector<3x3xi16>
        memref.assume_alignment %alloc_9, 2 : memref<8x3xf32>
        %c1_i16_60 = arith.constant 1 : i16
        %c0_i16_61 = arith.constant 0 : i16
        %292 = vector.transfer_read %12[%c10, %c2, %c14], %c0_i16_61 : tensor<6x8x6xi16>, vector<i16>
        memref.alloca_scope.return %alloc_7 : memref<8xf16>
      }
      %260 = arith.remf %cst, %cst_4 : f32
      %261 = bufferization.to_tensor %alloc_6 : memref<8xi64>
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %c459066806_i64 : vector<14xi64>, vector<14xi64> into i64
      %cast_56 = tensor.cast %10 : tensor<6x8x6xf32> to tensor<?x?x?xf32>
      %263 = index.maxs %c7, %c10
      %264 = math.log2 %cst_5 : f32
      %265 = bufferization.to_memref %6 : memref<8x3xf32>
      %266 = math.log %1 : tensor<6x8x6xf16>
      %267 = index.sub %c0, %c4
      affine.for %arg0 = 0 to 45 {
      }
      memref.alloca_scope.return %alloc_8 : memref<14x6x3xf32>
    }
    %80 = bufferization.clone %alloc_18 : memref<14x6x3xi16> to memref<14x6x3xi16>
    %81 = index.mul %61, %c5
    %82 = math.atan2 %cst_4, %cst_5 : f32
    %alloc_28 = memref.alloc() : memref<8xf32>
    %splat_29 = tensor.splat %c459066806_i64 : tensor<6x8x6xi64>
    %83 = arith.addf %cst_3, %cst_3 : f32
    %84 = vector.broadcast %c1806701373_i64 : i64 to vector<14x6x3xi64>
    %85 = vector.broadcast %false : i1 to vector<14x6x3xi1>
    %86 = vector.broadcast %c483662461_i32 : i32 to vector<14x6x3xi32>
    %87 = vector.gather %alloc_19[%c13, %c12, %c2] [%86], %85, %84 : memref<14x6x3xi64>, vector<14x6x3xi32>, vector<14x6x3xi1>, vector<14x6x3xi64> into vector<14x6x3xi64>
    bufferization.dealloc_tensor %15 : tensor<6x8x6xf16>
    %88 = arith.mulf %cst, %cst_5 : f32
    %89 = vector.broadcast %c483662461_i32 : i32 to vector<14x6xi32>
    %dest_30, %accumulated_value_31 = vector.scan <or>, %86, %89 {inclusive = false, reduction_dim = 2 : i64} : vector<14x6x3xi32>, vector<14x6xi32>
    %cst_32 = arith.constant 1.000000e+00 : f16
    %90 = vector.transfer_read %1[%c0, %c1, %55], %cst_32 : tensor<6x8x6xf16>, vector<6x8xf16>
    %91 = index.divs %c0, %c4
    %92 = vector.broadcast %c-32746_i16 : i16 to vector<3xi16>
    %93 = vector.broadcast %false : i1 to vector<3xi1>
    %94 = vector.maskedload %80[%c12, %c2, %c1], %93, %92 : memref<14x6x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
    memref.assume_alignment %alloc_9, 8 : memref<8x3xf32>
    %95 = math.expm1 %cst_3 : f32
    affine.store %77, %alloc_20[%c7, %c6, %c15] : memref<14x6x3xf16>
    %96 = arith.minsi %78, %c483662461_i32 : i32
    vector.print %93 : vector<3xi1>
    %97 = arith.addi %true, %true : i1
    %98 = math.ctpop %true : i1
    %99 = index.maxu %c2, %c11
    %100 = arith.remui %c483662461_i32, %c1450336928_i32 : i32
    %101 = math.atan %6 : tensor<8x3xf32>
    %102 = bufferization.to_memref %collapsed_25 : memref<48x6xf32>
    %103 = arith.maxf %cst_4, %cst : f32
    %104 = math.expm1 %6 : tensor<8x3xf32>
    %105 = math.copysign %15, %1 : tensor<6x8x6xf16>
    %106 = affine.load %alloc_10[%c8, %c2] : memref<8x3xf16>
    %107 = arith.remui %c1483383456_i64, %c459066806_i64 : i64
    vector.print %86 : vector<14x6x3xi32>
    %108 = math.log1p %cst_4 : f32
    vector.print %84 : vector<14x6x3xi64>
    %109 = affine.load %alloc_23[%c2] : memref<8xf16>
    %110 = scf.while (%arg0 = %cst_4) : (f32) -> f32 {
      %cast_56 = tensor.cast %9 : tensor<6x8x6xi16> to tensor<?x?x?xi16>
      %true_57 = index.bool.constant true
      %242 = arith.shrui %c-32746_i16, %c363_i16 : i16
      %243 = vector.broadcast %c1483383456_i64 : i64 to vector<14x14xi64>
      %244 = vector.outerproduct %19, %19, %243 {kind = #vector.kind<mul>} : vector<14xi64>, vector<14xi64>
      %245 = math.cos %collapsed_25 : tensor<48x6xf32>
      %246 = math.fma %collapsed_25, %collapsed_25, %collapsed_25 : tensor<48x6xf32>
      %247 = vector.transpose %85, [2, 0, 1] : vector<14x6x3xi1> to vector<3x14x6xi1>
      %248 = vector.broadcast %c9 : index to vector<3xindex>
      %249 = vector.broadcast %c459066806_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_6[%c4] [%248], %93, %249 : memref<8xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      scf.condition(%false) %cst_5 : f32
    } do {
    ^bb0(%arg0: f32):
      %242 = bufferization.to_memref %3 : memref<8xf16>
      affine.store %77, %alloc_17[%c13, %c5, %c13] : memref<6x8x6xf16>
      %243 = vector.broadcast %c13 : index to vector<3xindex>
      %244 = vector.broadcast %cst_2 : f32 to vector<3xf32>
      vector.scatter %79[%c8, %c2, %c2] [%243], %93, %244 : memref<14x6x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
      %rank_56 = tensor.rank %17 : tensor<6x8x6xi64>
      %245 = index.add %c15, %c2
      %246 = index.ceildivs %c10, %c10
      %247 = vector.transpose %94, [0] : vector<3xi16> to vector<3xi16>
      %expanded_57 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<6x8x6xi64> into tensor<6x8x6x1xi64>
      %248 = math.absf %10 : tensor<6x8x6xf32>
      %249 = vector.reduction <xor>, %94 : vector<3xi16> into i16
      %250 = arith.remf %cst_1, %cst_2 : f32
      %251 = arith.mulf %106, %109 : f16
      %252 = tensor.empty() : tensor<14x6x3xi64>
      %253 = arith.remf %109, %cst_32 : f16
      %254 = vector.broadcast %77 : f16 to vector<3xf16>
      %255 = vector.maskedload %242[%c5], %93, %254 : memref<8xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %256 = math.round %cst : f32
      scf.yield %cst_1 : f32
    }
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_33 = arith.constant 0 : i64
    %111 = vector.transfer_read %alloc_6[%c7], %c0_i64_33 : memref<8xi64>, vector<i64>
    %112 = affine.load %alloc_22[%c0] : memref<3xi32>
    %113 = math.copysign %collapsed_25, %collapsed_25 : tensor<48x6xf32>
    %true_34 = index.bool.constant true
    %114 = math.log1p %cst_3 : f32
    %115 = bufferization.clone %alloc_17 : memref<6x8x6xf16> to memref<6x8x6xf16>
    %116 = arith.minsi %true, %true_34 : i1
    %117 = memref.alloca_scope  -> (f32) {
      %242 = arith.xori %c0_i64, %c459066806_i64 : i64
      %243 = math.ceil %15 : tensor<6x8x6xf16>
      %244 = math.exp2 %21 : tensor<f16>
      %245 = vector.transpose %93, [0] : vector<3xi1> to vector<3xi1>
      %246 = math.powf %cst_1, %cst : f32
      %247 = index.add %c8, %c5
      %248 = index.mul %c3, %c0
      %249 = math.log1p %109 : f16
      %250 = vector.broadcast %c363_i16 : i16 to vector<3x3xi16>
      %251 = vector.outerproduct %94, %94, %250 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
      %252 = vector.broadcast %c363_i16 : i16 to vector<3x3xi16>
      %253 = vector.outerproduct %94, %94, %252 {kind = #vector.kind<minsi>} : vector<3xi16>, vector<3xi16>
      %254 = affine.max affine_map<(d0, d1, d2) -> (32, d2 floordiv 4, (-(d2 floordiv 4)) ceildiv 4, -(d2 floordiv 4) + 64)>(%99, %c15, %23)
      %255 = vector.broadcast %c-32746_i16 : i16 to vector<6xi16>
      %256 = vector.broadcast %true_34 : i1 to vector<6xi1>
      %257 = vector.maskedload %alloc_11[%c2, %c5, %c5], %256, %255 : memref<6x8x6xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %true_56 = index.bool.constant true
      %258 = arith.remsi %true, %true : i1
      %259 = tensor.empty() : tensor<6x6xi64>
      %260 = tensor.empty() : tensor<6x6x8xi64>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %260 : tensor<6x6xi64>, tensor<6x6x8xi64>) outs(%5 : tensor<6x8x6xi64>) {
      ^bb0(%in: i64, %in_58: i64, %out: i64):
        %279 = math.ipowi %12, %2 : tensor<6x8x6xi16>
        %from_elements_59 = tensor.from_elements %106, %77, %cst_32, %109, %cst_32, %cst_32, %77, %77, %cst_0, %106, %106, %77, %77, %cst_0, %cst_0, %cst_0, %106, %cst_32, %109, %77, %77, %106, %77, %109, %109, %cst_0, %109, %106, %106, %106, %109, %77, %cst_0, %109, %77, %cst_0, %cst_32, %cst_0, %109, %cst_0, %cst_32, %77, %106, %cst_0, %77, %77, %cst_32, %cst_32, %77, %106, %106, %77, %109, %109, %106, %106, %cst_32, %cst_0, %cst_0, %109, %77, %cst_32, %cst_32, %cst_0, %cst_0, %cst_32, %106, %109, %106, %cst_0, %106, %cst_32, %109, %77, %cst_0, %cst_32, %77, %cst_32, %106, %106, %106, %106, %106, %77, %106, %109, %cst_0, %cst_0, %cst_32, %106, %77, %cst_32, %cst_32, %106, %cst_0, %cst_0, %109, %109, %cst_0, %cst_0, %77, %cst_0, %77, %77, %106, %109, %77, %cst_32, %106, %cst_0, %109, %106, %106, %cst_0, %cst_0, %cst_0, %106, %106, %cst_32, %106, %cst_0, %109, %cst_0, %77, %cst_32, %77, %77, %77, %cst_0, %106, %cst_0, %cst_0, %77, %cst_32, %109, %109, %109, %109, %cst_0, %106, %109, %77, %109, %cst_0, %cst_0, %109, %106, %106, %cst_32, %77, %77, %109, %109, %cst_32, %cst_0, %cst_32, %106, %109, %106, %cst_32, %cst_32, %cst_0, %77, %cst_0, %109, %106, %109, %cst_0, %cst_0, %106, %77, %77, %109, %109, %109, %109, %cst_32, %cst_0, %106, %77, %cst_0, %cst_0, %106, %cst_32, %109, %cst_32, %cst_32, %cst_0, %cst_0, %109, %106, %106, %cst_0, %cst_32, %cst_32, %cst_0, %109, %77, %cst_0, %109, %77, %106, %77, %cst_0, %cst_32, %77, %106, %77, %cst_32, %109, %106, %cst_0, %109, %cst_0, %cst_32, %cst_0, %cst_0, %109, %109, %109, %77, %109, %77, %77, %109, %cst_0, %109, %77, %77, %cst_32, %77, %77, %77, %106, %106, %109, %cst_32, %cst_32, %77, %cst_0, %109, %106, %109, %109, %cst_0, %cst_32, %77, %cst_32, %109, %109, %77, %cst_32 : tensor<14x6x3xf16>
        %280 = index.sub %c3, %c8
        %c1_i32_60 = arith.constant 1 : i32
        %281 = vector.transfer_read %4[%c6], %c1_i32_60 : tensor<8xi32>, vector<i32>
        %282 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        %from_elements_61 = tensor.from_elements %c1806701373_i64, %c1806701373_i64, %in_58, %in_58, %in_58, %c0_i64, %in_58, %c1806701373_i64, %c0_i64, %out, %c1483383456_i64, %in, %in_58, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %in_58, %c1483383456_i64, %in_58, %out, %c459066806_i64, %in_58, %in, %out, %out, %c459066806_i64, %in, %c459066806_i64, %in, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %in_58, %in_58, %c0_i64, %in_58, %in_58, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %in_58, %c459066806_i64, %out, %out, %out, %c0_i64, %in_58, %out, %in, %c1806701373_i64, %in_58, %c1806701373_i64, %in, %out, %out, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %in, %in_58, %c0_i64, %in, %in, %c459066806_i64, %c1806701373_i64, %c0_i64, %out, %c1483383456_i64, %c0_i64, %out, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %in_58, %in, %in, %in, %in, %c0_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %in, %in_58, %out, %c1483383456_i64, %c0_i64, %out, %out, %out, %out, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c0_i64, %in_58, %c1806701373_i64, %c1806701373_i64, %in, %c1483383456_i64, %c0_i64, %in, %out, %in, %in_58, %in_58, %out, %c459066806_i64, %c0_i64, %c1806701373_i64, %c0_i64, %out, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %in_58, %out, %c1483383456_i64, %out, %out, %c0_i64, %c0_i64, %c0_i64, %out, %c1806701373_i64, %c0_i64, %in_58, %c1806701373_i64, %c459066806_i64, %c0_i64, %in_58, %c1806701373_i64, %c0_i64, %out, %c1483383456_i64, %in, %c1483383456_i64, %c459066806_i64, %out, %c0_i64, %c1806701373_i64, %out, %out, %c1806701373_i64, %in_58, %c459066806_i64, %in_58, %c459066806_i64, %out, %in, %in_58, %c0_i64, %c1806701373_i64, %in_58, %c1483383456_i64, %c1806701373_i64, %in, %out, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %out, %in, %in, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %out, %c0_i64, %in_58, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %in_58, %c1483383456_i64, %in_58, %in_58, %out, %out, %c459066806_i64, %c0_i64, %c1483383456_i64, %in, %c1483383456_i64, %in, %in, %out, %c1483383456_i64, %in, %c0_i64, %c0_i64, %in, %in_58, %c459066806_i64, %c1806701373_i64, %in, %out, %out, %c0_i64, %c1483383456_i64, %out, %in_58, %c0_i64, %in_58, %c1483383456_i64, %out, %in_58, %c1483383456_i64, %out, %c459066806_i64, %c1806701373_i64, %in_58, %in_58, %c0_i64, %c459066806_i64, %in_58, %in, %c0_i64, %out, %c1806701373_i64, %c0_i64, %out, %c459066806_i64, %in, %c1483383456_i64, %in_58, %out, %in_58, %in, %in_58, %c1483383456_i64, %in, %in, %in, %c459066806_i64, %in, %in_58, %c1806701373_i64, %in_58, %c0_i64, %c1483383456_i64, %out, %c1806701373_i64, %in, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %out, %c1483383456_i64, %c459066806_i64, %in_58, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %in_58, %c459066806_i64, %c1806701373_i64, %in, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c0_i64 : tensor<6x8x6xi64>
        %283 = math.ipowi %0, %from_elements_26 : tensor<8x3xi1>
        %284 = index.ceildivu %27, %43
        %285 = math.expm1 %cst_0 : f16
        %286 = arith.cmpf ult, %cst_5, %cst_5 : f32
        %287 = math.ceil %from_elements : tensor<14x6x3xf16>
        %288 = math.exp %20 : tensor<f16>
        bufferization.dealloc_tensor %12 : tensor<6x8x6xi16>
        %289 = arith.shrsi %c1_i32, %c1450336928_i32 : i32
        %290 = math.log10 %6 : tensor<8x3xf32>
        %291 = affine.min affine_map<(d0) -> (-2, ((-(d0 floordiv 4)) ceildiv 2) floordiv 16, d0 floordiv 4, 0)>(%c4)
        %292 = vector.flat_transpose %282 {columns = 4 : i32, rows = 2 : i32} : vector<8xf16> -> vector<8xf16>
        %293 = arith.remui %112, %c483662461_i32 : i32
        %294 = math.ctpop %out : i64
        %from_elements_62 = tensor.from_elements %cst, %cst_4, %cst_4, %cst_5, %cst, %cst_2, %cst_3, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_3, %cst_5, %cst_3, %cst_4, %cst_2, %cst_2, %cst_5, %cst_4, %cst, %cst_3, %cst_3, %cst_4, %cst, %cst_5, %cst, %cst, %cst_4, %cst_2, %cst_3, %cst_3, %cst_4, %cst, %cst_3, %cst_1, %cst_4, %cst_2, %cst_4, %cst_5, %cst_1, %cst_4, %cst_5, %cst_5, %cst_4, %cst_3, %cst_5, %cst_2, %cst_4, %cst, %cst_4, %cst_2, %cst_4, %cst_5, %cst_4, %cst_2, %cst_3, %cst_2, %cst_4, %cst_2, %cst_3, %cst_3, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_5, %cst_3, %cst_4, %cst_1, %cst_5, %cst, %cst_4, %cst_4, %cst_1, %cst_2, %cst_5, %cst_4, %cst_1, %cst_3, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_5, %cst_2, %cst, %cst, %cst, %cst_1, %cst_4, %cst_3, %cst_2, %cst_5, %cst, %cst_4, %cst_4, %cst, %cst_1, %cst_2, %cst_4, %cst_5, %cst_5, %cst_2, %cst_3, %cst, %cst_1, %cst_5, %cst, %cst_5, %cst_3, %cst_4, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_3, %cst, %cst_4, %cst_4, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_3, %cst, %cst_3, %cst, %cst_5, %cst_2, %cst_5, %cst_1, %cst_1, %cst_3, %cst_1, %cst, %cst_5, %cst_5, %cst_5, %cst_3, %cst, %cst_4, %cst_4, %cst_3, %cst_4, %cst_1, %cst_4, %cst_2, %cst_4, %cst, %cst_5, %cst_5, %cst_3, %cst, %cst_2, %cst_4, %cst_2, %cst_4, %cst_3, %cst_2, %cst, %cst_5, %cst_2, %cst, %cst_5, %cst_3, %cst_2, %cst, %cst_4, %cst_3, %cst, %cst_5, %cst, %cst_1, %cst_3, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_1, %cst_3, %cst_2, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst_2, %cst_3, %cst_5, %cst_3, %cst_3, %cst, %cst_1, %cst_2, %cst_4, %cst_2, %cst_3, %cst_4, %cst_1, %cst, %cst_2, %cst_3, %cst_1, %cst_5, %cst_2, %cst_3, %cst_3, %cst_1, %cst_2, %cst_3, %cst_3, %cst_1, %cst, %cst_2, %cst_1, %cst_5, %cst_1, %cst_5, %cst_3, %cst_4, %cst_3, %cst_2, %cst_3, %cst_3, %cst_1, %cst, %cst, %cst_3, %cst_5, %cst_3, %cst, %cst_5, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_1, %cst, %cst_5, %cst_2, %cst_1, %cst_4, %cst_3, %cst_4, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_5, %cst_2, %cst_5, %cst_3, %cst_3, %cst_2, %cst_1, %cst_2, %cst_3, %cst_2, %cst, %cst_5, %cst_1, %cst_4, %cst_3, %cst_2, %cst_5, %cst_2, %cst_3, %cst_2, %cst_1, %cst_5 : tensor<6x8x6xf32>
        %295 = affine.load %115[%c7, %c14, %c13] : memref<6x8x6xf16>
        %296 = index.mul %c13, %248
        %297 = vector.matrix_multiply %257, %94 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<3xi16>) -> vector<2xi16>
        %298 = math.sqrt %cst_32 : f16
        %299 = index.divs %55, %81
        %300 = math.round %6 : tensor<8x3xf32>
        %301 = math.log1p %15 : tensor<6x8x6xf16>
        bufferization.dealloc_tensor %20 : tensor<f16>
        bufferization.dealloc_tensor %from_elements_62 : tensor<6x8x6xf32>
        %302 = math.powf %1, %15 : tensor<6x8x6xf16>
        %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %257, %257, %c363_i16 : vector<6xi16>, vector<6xi16> into i16
        %alloc_63 = memref.alloc() : memref<48x6xf32>
        memref.copy %102, %alloc_63 : memref<48x6xf32> to memref<48x6xf32>
        linalg.yield %in_58 : i64
      } -> tensor<6x8x6xi64>
      %262 = affine.for %arg0 = 0 to 122 iter_args(%arg1 = %3) -> (tensor<8xf16>) {
        affine.yield %3 : tensor<8xf16>
      }
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %255, %257, %c363_i16 : vector<6xi16>, vector<6xi16> into i16
      %264 = vector.broadcast %c-32746_i16 : i16 to vector<3x3xi16>
      %265 = vector.outerproduct %94, %94, %264 {kind = #vector.kind<minsi>} : vector<3xi16>, vector<3xi16>
      %alloc_57 = memref.alloc() : memref<6x8x6xf32>
      %266 = math.ctlz %16 : tensor<6x8x6xi64>
      %267 = bufferization.to_memref %5 : memref<6x8x6xi64>
      scf.if %true_34 {
        %279 = index.casts %c-32746_i16 : i16 to index
        %collapsed_58 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x8x6xf32> into tensor<48x6xf32>
        bufferization.dealloc_tensor %from_elements_26 : tensor<8x3xi1>
        %280 = math.fma %cst_2, %cst_4, %cst_5 : f32
        %281 = arith.divui %112, %c213424238_i32 : i32
        %282 = math.floor %cst_32 : f16
        %283 = arith.mulf %109, %77 : f16
        %284 = arith.andi %c-32746_i16, %c363_i16 : i16
      } else {
        %279 = math.ceil %cst_4 : f32
        %280 = index.maxu %c4, %23
        %281 = arith.remf %cst_0, %77 : f16
        %282 = vector.multi_reduction <and>, %94, %92 [] : vector<3xi16> to vector<3xi16>
        %283 = math.expm1 %15 : tensor<6x8x6xf16>
        %284 = math.sqrt %109 : f16
        %285 = arith.cmpf ugt, %cst_0, %77 : f16
        %extracted_58 = tensor.extract %2[%c4, %c7, %c4] : tensor<6x8x6xi16>
      }
      %268 = vector.broadcast %c1806701373_i64 : i64 to vector<14x14xi64>
      %269 = vector.outerproduct %19, %19, %268 {kind = #vector.kind<xor>} : vector<14xi64>, vector<14xi64>
      %270 = index.add %c12, %c6
      %271 = math.atan %109 : f16
      %272 = math.exp %cst : f32
      %273 = math.atan %1 : tensor<6x8x6xf16>
      %274 = index.ceildivu %c9, %99
      %275 = vector.load %alloc_14[%c7, %c5, %c1] : memref<14x6x3xi1>, vector<6x8x6xi1>
      %276 = arith.maxf %cst, %cst_4 : f32
      %277 = arith.minsi %c459066806_i64, %c1806701373_i64 : i64
      %278 = scf.index_switch %c5 -> vector<8xf16> 
      case 1 {
        %279 = arith.addf %cst_3, %cst_4 : f32
        %280 = arith.addf %cst, %cst_3 : f32
        %281 = affine.min affine_map<(d0) -> (d0 + 32, (d0 + 32) ceildiv 16, ((d0 - (d0 - (d0 + 32)) - d0) mod 64) floordiv 8)>(%29)
        %282 = affine.apply affine_map<(d0) -> (d0 * 8)>(%c9)
        affine.store %c-32746_i16, %alloc_13[%c13] : memref<8xi16>
        %283 = bufferization.to_memref %cast_24 : memref<?x?x?xi64>
        %alloc_58 = memref.alloc() : memref<14x6x3xi32>
        memref.tensor_store %13, %alloc_58 : memref<14x6x3xi32>
        %284 = affine.apply affine_map<(d0, d1) -> (d0)>(%c3, %c13)
        bufferization.dealloc_tensor %17 : tensor<6x8x6xi64>
        vector.print %256 : vector<6xi1>
        %285 = arith.andi %true, %false : i1
        %286 = arith.cmpf oeq, %cst_32, %77 : f16
        %287 = index.maxu %c13, %247
        %288 = index.maxu %284, %55
        %from_elements_59 = tensor.from_elements %c1_i32, %c1450336928_i32, %c483662461_i32, %112, %78, %112, %c483662461_i32, %25, %c1450336928_i32, %c1450336928_i32, %78, %25, %25, %c483662461_i32, %112, %112, %c1450336928_i32, %c483662461_i32, %78, %112, %c213424238_i32, %c213424238_i32, %112, %78, %112, %25, %c483662461_i32, %25, %c1450336928_i32, %c213424238_i32, %c1_i32, %112, %112, %c483662461_i32, %c1_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c1_i32, %c213424238_i32, %112, %c1450336928_i32, %112, %c213424238_i32, %c483662461_i32, %c213424238_i32, %c1_i32, %c213424238_i32, %112, %25, %25, %78, %c1_i32, %c1450336928_i32, %25, %78, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %78, %c483662461_i32, %c213424238_i32, %c1_i32, %c1_i32, %c483662461_i32, %112, %25, %c1_i32, %c1_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %112, %112, %25, %112, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %78, %25, %25, %25, %c483662461_i32, %78, %c213424238_i32, %78, %c483662461_i32, %25, %c213424238_i32, %c483662461_i32, %25, %c483662461_i32, %25, %25, %c483662461_i32, %c213424238_i32, %25, %c1_i32, %112, %c483662461_i32, %c483662461_i32, %112, %25, %c483662461_i32, %25, %c1_i32, %25, %112, %c1450336928_i32, %78, %25, %c1450336928_i32, %25, %c483662461_i32, %78, %78, %c483662461_i32, %c1_i32, %c483662461_i32, %c213424238_i32, %25, %25, %25, %78, %25, %c483662461_i32, %c483662461_i32, %25, %78, %112, %25, %25, %78, %c1450336928_i32, %c1_i32, %c1_i32, %112, %c1450336928_i32, %112, %c483662461_i32, %c1_i32, %c1_i32, %112, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %78, %78, %c1_i32, %c483662461_i32, %c483662461_i32, %112, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c1_i32, %c1450336928_i32, %c1_i32, %c213424238_i32, %25, %112, %25, %c483662461_i32, %112, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1_i32, %c213424238_i32, %c483662461_i32, %c1_i32, %c1450336928_i32, %c483662461_i32, %112, %c1450336928_i32, %c483662461_i32, %112, %c213424238_i32, %c1_i32, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %112, %78, %c1_i32, %c483662461_i32, %78, %78, %c1_i32, %25, %112, %78, %78, %78, %c1_i32, %c483662461_i32, %78, %c1_i32, %c483662461_i32, %c1450336928_i32, %25, %25, %c213424238_i32, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1_i32, %c213424238_i32, %112, %c483662461_i32, %112, %112, %112, %112, %78, %25, %c1450336928_i32, %c483662461_i32, %25, %c483662461_i32, %25, %25, %c1_i32, %c483662461_i32, %c483662461_i32, %c213424238_i32, %25, %c1450336928_i32, %c1_i32, %c483662461_i32, %78, %c213424238_i32, %c1_i32, %c1450336928_i32, %c1450336928_i32, %78, %c213424238_i32, %c483662461_i32, %25, %78, %c1450336928_i32, %78, %c1_i32, %78, %78, %c213424238_i32, %c1_i32, %25, %c1_i32, %25, %112, %c1_i32, %25, %c483662461_i32, %c483662461_i32, %78, %25, %c1450336928_i32, %c1_i32, %25, %25, %c1_i32, %c483662461_i32, %112, %c483662461_i32, %25, %78, %78, %c483662461_i32, %c483662461_i32, %c1_i32, %c1450336928_i32, %78, %112, %c1_i32, %25, %c213424238_i32 : tensor<6x8x6xi32>
        %289 = math.exp2 %collapsed_25 : tensor<48x6xf32>
        %290 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        scf.yield %290 : vector<8xf16>
      }
      case 2 {
        %279 = vector.insertelement %true_56, %256[%55 : index] : vector<6xi1>
        %280 = arith.remsi %true, %true_34 : i1
        %281 = arith.remui %78, %c1450336928_i32 : i32
        %282 = vector.load %alloc_7[%c7] : memref<8xf16>, vector<8xf16>
        %283 = arith.maxui %true_56, %true_56 : i1
        %284 = arith.remf %cst_3, %cst_5 : f32
        %285 = vector.load %alloc[%c4] : memref<8xi16>, vector<8x3xi16>
        %286 = arith.andi %c483662461_i32, %c483662461_i32 : i32
        %287 = vector.reduction <maxf>, %282 : vector<8xf16> into f16
        %288 = math.absf %cst_32 : f16
        %289 = index.ceildivu %91, %c9
        %290 = math.absi %from_elements_26 : tensor<8x3xi1>
        %291 = math.expm1 %20 : tensor<f16>
        %292 = arith.maxf %106, %77 : f16
        %293 = math.round %21 : tensor<f16>
        %294 = math.ctpop %true_34 : i1
        scf.yield %282 : vector<8xf16>
      }
      default {
        %279 = index.ceildivu %c10, %c4
        %280 = math.ceil %109 : f16
        %281 = index.floordivs %81, %279
        %282 = arith.minsi %true, %true : i1
        %283 = math.rsqrt %6 : tensor<8x3xf32>
        %284 = arith.cmpf ugt, %cst_4, %cst_2 : f32
        %285 = tensor.empty() : tensor<6x8xf32>
        %286 = tensor.empty() : tensor<48x8xf32>
        %287 = linalg.matmul ins(%collapsed_25, %285 : tensor<48x6xf32>, tensor<6x8xf32>) outs(%286 : tensor<48x8xf32>) -> tensor<48x8xf32>
        %288 = arith.cmpi ne, %c1450336928_i32, %c1_i32 : i32
        %false_58 = arith.constant false
        %289 = vector.transfer_read %14[%c12, %c9, %c12], %false_58 : tensor<6x8x6xi1>, vector<6x3xi1>
        %290 = arith.xori %false_58, %true_34 : i1
        %291 = vector.matrix_multiply %255, %255 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
        %292 = math.roundeven %3 : tensor<8xf16>
        %293 = index.casts %c2 : index to i32
        %294 = math.absi %9 : tensor<6x8x6xi16>
        %295 = math.absi %c1450336928_i32 : i32
        %296 = math.sqrt %cst_4 : f32
        %297 = vector.broadcast %cst_32 : f16 to vector<8xf16>
        scf.yield %297 : vector<8xf16>
      }
      memref.alloca_scope.return %cst_1 : f32
    }
    %from_elements_35 = tensor.from_elements %true, %false, %false, %true_34, %true_34, %true, %true, %true, %true, %true, %true_34, %true_34, %true, %true, %true_34, %true_34, %false, %true, %true_34, %true_34, %false, %true, %false, %true : tensor<8x3xi1>
    %118 = arith.cmpf olt, %cst_4, %cst : f32
    %119 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 16, d3 + d1 + 32, d2)>(%c4, %27, %c2, %c9)
    %120 = vector.broadcast %78 : i32 to vector<14x6xi32>
    %dest_36, %accumulated_value_37 = vector.scan <maxui>, %86, %120 {inclusive = true, reduction_dim = 2 : i64} : vector<14x6x3xi32>, vector<14x6xi32>
    %121 = vector.broadcast %cst_4 : f32 to vector<f32>
    vector.transfer_write %121, %79[%c10, %c5, %61] : vector<f32>, memref<14x6x3xf32>
    %122 = arith.negf %109 : f16
    %123 = index.divs %c6, %99
    %124 = math.round %from_elements : tensor<14x6x3xf16>
    %125 = math.ceil %cst_2 : f32
    %126 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %c1806701373_i64 : vector<14xi64>, vector<14xi64> into i64
    %alloc_38 = memref.alloc() : memref<14x6x3xi32>
    memref.tensor_store %splat, %alloc_38 : memref<14x6x3xi32>
    %127 = vector.load %alloc_15[%c12, %c4, %c1] : memref<14x6x3xi16>, vector<14x6x3xi16>
    %128 = math.exp %cst : f32
    bufferization.dealloc_tensor %14 : tensor<6x8x6xi1>
    %129 = math.ceil %21 : tensor<f16>
    %130 = vector.broadcast %29 : index to vector<3xindex>
    %131 = vector.broadcast %109 : f16 to vector<3xf16>
    vector.scatter %alloc_17[%c2, %c7, %c3] [%130], %93, %131 : memref<6x8x6xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
    %132 = vector.shuffle %87, %84 [0, 2, 8, 9, 11, 12, 14, 15, 17, 19, 21, 22, 23, 24, 26] : vector<14x6x3xi64>, vector<14x6x3xi64>
    %133 = index.maxu %c3, %c12
    %134 = arith.xori %c1_i32, %c1450336928_i32 : i32
    %135 = math.log1p %20 : tensor<f16>
    %136 = index.casts %c6 : index to i32
    memref.tensor_store %2, %alloc_11 : memref<6x8x6xi16>
    %137 = arith.floordivsi %false, %true : i1
    %138 = vector.load %80[%c6, %c0, %c2] : memref<14x6x3xi16>, vector<14x6x3xi16>
    %139 = arith.ceildivsi %true, %true_34 : i1
    affine.for %arg0 = 0 to 7 {
    }
    %140 = arith.muli %78, %c213424238_i32 : i32
    scf.if %true {
      %242 = arith.minsi %112, %c1_i32 : i32
      %243 = vector.flat_transpose %93 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %244 = math.floor %1 : tensor<6x8x6xf16>
      %cast_56 = tensor.cast %10 : tensor<6x8x6xf32> to tensor<?x?x?xf32>
      %245 = scf.index_switch %43 -> tensor<8x3xf32> 
      case 1 {
        %249 = index.add %133, %c13
        %250 = arith.divui %112, %c1_i32 : i32
        vector.print %19 : vector<14xi64>
        %from_elements_57 = tensor.from_elements %78, %c1450336928_i32, %c483662461_i32, %112, %c483662461_i32, %78, %25, %112, %78, %112, %78, %c1_i32, %25, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %78, %25, %c1450336928_i32, %c1_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %78, %25, %25, %25, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %25, %25, %c1450336928_i32, %c483662461_i32, %c213424238_i32, %c1450336928_i32, %25, %c483662461_i32, %25, %c1450336928_i32, %c483662461_i32, %25, %c213424238_i32, %c483662461_i32, %c1450336928_i32, %c1_i32, %c1_i32, %c1_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %25, %c483662461_i32, %112, %78, %c1450336928_i32, %c1_i32, %25, %112, %c483662461_i32, %c1_i32, %78, %c213424238_i32, %112, %c213424238_i32, %c1_i32, %c483662461_i32, %c483662461_i32, %78, %112, %78, %78, %c1450336928_i32, %c213424238_i32, %c213424238_i32, %112, %c213424238_i32, %25, %112, %c1_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %112, %c1450336928_i32, %c213424238_i32, %c1450336928_i32, %c1_i32, %112, %c1_i32, %112, %c1450336928_i32, %c1_i32, %c1_i32, %c1450336928_i32, %c1_i32, %78, %25, %c213424238_i32, %c483662461_i32, %25, %78, %25, %c213424238_i32, %78, %112, %c1_i32, %c213424238_i32, %112, %25, %c213424238_i32, %78, %c483662461_i32, %c1_i32, %c213424238_i32, %c1_i32, %c1450336928_i32, %c483662461_i32, %25, %112, %c483662461_i32, %c1_i32, %25, %25, %25, %c1_i32, %c213424238_i32, %c213424238_i32, %25, %c1_i32, %c1450336928_i32, %c1_i32, %c213424238_i32, %25, %c213424238_i32, %c1450336928_i32, %78, %25, %c213424238_i32, %112, %112, %112, %78, %c1_i32, %25, %c213424238_i32, %78, %c483662461_i32, %c483662461_i32, %c1450336928_i32, %c483662461_i32, %112, %25, %c1_i32, %c213424238_i32, %78, %c483662461_i32, %78, %c1_i32, %c1_i32, %112, %25, %112, %112, %25, %78, %c483662461_i32, %c483662461_i32, %c1_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c483662461_i32, %c1_i32, %c483662461_i32, %112, %c1_i32, %c1450336928_i32, %c483662461_i32, %c1_i32, %c1_i32, %c213424238_i32, %c483662461_i32, %78, %c483662461_i32, %c1_i32, %c483662461_i32, %112, %78, %c1_i32, %112, %78, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %25, %c1450336928_i32, %c213424238_i32, %c1_i32, %78, %c483662461_i32, %c483662461_i32, %c213424238_i32, %c213424238_i32, %78, %c213424238_i32, %78, %112, %c483662461_i32, %c1450336928_i32, %c1_i32, %c1_i32, %78, %78, %78, %c213424238_i32, %c483662461_i32, %78, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %c1450336928_i32, %c1_i32, %c483662461_i32, %c1450336928_i32, %c1_i32, %c1_i32, %c483662461_i32, %c1450336928_i32, %112, %c483662461_i32, %112, %c1450336928_i32, %112, %c483662461_i32, %25, %c213424238_i32, %78, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1450336928_i32 : tensor<14x6x3xi32>
        %collapsed_58 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
        %251 = index.floordivs %123, %c10
        %252 = math.floor %cst_0 : f16
        %253 = arith.andi %c459066806_i64, %c0_i64 : i64
        %254 = arith.divui %c1483383456_i64, %c459066806_i64 : i64
        %255 = math.floor %6 : tensor<8x3xf32>
        %256 = math.round %6 : tensor<8x3xf32>
        %257 = index.mul %c10, %133
        %258 = math.sqrt %collapsed_25 : tensor<48x6xf32>
        %259 = arith.ceildivsi %c459066806_i64, %c1806701373_i64 : i64
        %260 = index.maxu %c13, %23
        bufferization.dealloc_tensor %from_elements_57 : tensor<14x6x3xi32>
        scf.yield %6 : tensor<8x3xf32>
      }
      case 2 {
        %249 = arith.remui %c363_i16, %c-32746_i16 : i16
        %250 = math.ipowi %112, %c1_i32 : i32
        %251 = bufferization.to_memref %from_elements_35 : memref<8x3xi1>
        %252 = arith.andi %78, %c213424238_i32 : i32
        %253 = math.roundeven %1 : tensor<6x8x6xf16>
        %collapsed_57 = tensor.collapse_shape %from_elements_35 [[0, 1]] : tensor<8x3xi1> into tensor<24xi1>
        %254 = math.ceil %3 : tensor<8xf16>
        %255 = math.ipowi %4, %4 : tensor<8xi32>
        %256 = arith.cmpi ult, %78, %c1450336928_i32 : i32
        %257 = arith.muli %c-32746_i16, %c363_i16 : i16
        %258 = index.add %27, %23
        %259 = math.ctpop %c1_i32 : i32
        %260 = vector.load %alloc[%c1] : memref<8xi16>, vector<6x8x6xi16>
        %261 = math.floor %11 : tensor<6x8x6xf32>
        %262 = index.casts %c12 : index to i32
        %263 = vector.create_mask %23 : vector<8xi1>
        scf.yield %6 : tensor<8x3xf32>
      }
      case 3 {
        %249 = math.ceil %cst_1 : f32
        %250 = arith.mulf %cst_2, %cst : f32
        %collapsed_57 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<6x8x6xi16> into tensor<48x6xi16>
        %inserted_58 = tensor.insert %78 into %4[%c0] : tensor<8xi32>
        %251 = math.floor %11 : tensor<6x8x6xf32>
        %252 = index.floordivs %23, %c6
        %253 = index.casts %c1_i32 : i32 to index
        %254 = math.roundeven %109 : f16
        %255 = affine.load %79[%c0, %c10, %c8] : memref<14x6x3xf32>
        %256 = index.castu %119 : index to i32
        %257 = vector.reduction <and>, %94 : vector<3xi16> into i16
        %258 = index.divs %91, %c5
        %259 = arith.divui %c1_i32, %25 : i32
        %260 = index.floordivs %c4, %c12
        %261 = arith.ceildivsi %c1450336928_i32, %78 : i32
        affine.store %c1_i32, %alloc_22[%c0] : memref<3xi32>
        scf.yield %6 : tensor<8x3xf32>
      }
      case 4 {
        %249 = index.casts %c9 : index to i32
        %250 = index.add %61, %c2
        %251 = math.ceil %20 : tensor<f16>
        %252 = arith.ceildivsi %c363_i16, %c363_i16 : i16
        %253 = arith.maxf %117, %cst_3 : f32
        %254 = vector.transpose %85, [0, 1, 2] : vector<14x6x3xi1> to vector<14x6x3xi1>
        %255 = vector.broadcast %77 : f16 to vector<8xf16>
        %256 = vector.broadcast %true_34 : i1 to vector<8xi1>
        %257 = vector.maskedload %alloc_17[%c5, %c6, %c3], %256, %255 : memref<6x8x6xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %258 = math.sqrt %collapsed_25 : tensor<48x6xf32>
        %alloc_57 = memref.alloc() : memref<6x8x6xf32>
        memref.tensor_store %11, %alloc_57 : memref<6x8x6xf32>
        %259 = vector.transpose %93, [0] : vector<3xi1> to vector<3xi1>
        %260 = math.exp %cst_5 : f32
        %261 = arith.divui %c1_i32, %78 : i32
        %262 = math.exp2 %11 : tensor<6x8x6xf32>
        %263 = arith.floordivsi %c213424238_i32, %c483662461_i32 : i32
        %264 = arith.minf %cst_3, %cst_2 : f32
        %alloca_58 = memref.alloca() : memref<6x8x6xi64>
        scf.yield %6 : tensor<8x3xf32>
      }
      default {
        %249 = bufferization.to_tensor %alloc_15 : memref<14x6x3xi16>
        %alloc_57 = memref.alloc() : memref<6x8x6xf32>
        memref.tensor_store %11, %alloc_57 : memref<6x8x6xf32>
        %250 = index.add %c10, %c14
        %alloc_58 = memref.alloc() : memref<8x3xi64>
        %251 = vector.broadcast %c1483383456_i64 : i64 to vector<6x8x6xi64>
        %252 = vector.broadcast %true : i1 to vector<6x8x6xi1>
        %253 = vector.broadcast %25 : i32 to vector<6x8x6xi32>
        %254 = vector.gather %alloc_58[%c7, %81] [%253], %252, %251 : memref<8x3xi64>, vector<6x8x6xi32>, vector<6x8x6xi1>, vector<6x8x6xi64> into vector<6x8x6xi64>
        %255 = arith.remf %cst_5, %cst : f32
        %256 = math.fma %106, %cst_32, %106 : f16
        %257 = arith.addi %c-32746_i16, %c363_i16 : i16
        %258 = vector.broadcast %c363_i16 : i16 to vector<6x8x6xi16>
        %259 = affine.apply affine_map<(d0) -> (d0 * 2)>(%29)
        %260 = math.atan %8 : tensor<8xf32>
        %261 = tensor.empty(%c6) : tensor<?x3xi16>
        %262 = arith.minsi %c213424238_i32, %25 : i32
        %263 = arith.ori %c1483383456_i64, %c1806701373_i64 : i64
        %264 = arith.remui %false, %false : i1
        %265 = vector.load %alloc_23[%c3] : memref<8xf16>, vector<8x3xf16>
        %266 = math.exp %10 : tensor<6x8x6xf32>
        scf.yield %6 : tensor<8x3xf32>
      }
      %246 = arith.remsi %c1_i32, %c213424238_i32 : i32
      %247 = tensor.empty() : tensor<6x8x6xi32>
      %mapped = linalg.map ins(%alloc_12, %alloc_12, %alloc_12 : memref<6x8x6xi32>, memref<6x8x6xi32>, memref<6x8x6xi32>) outs(%247 : tensor<6x8x6xi32>)
        (%in: i32, %in_57: i32, %in_58: i32) {
          %249 = math.roundeven %3 : tensor<8xf16>
          %250 = index.ceildivu %133, %c1
          %251 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c4, %29, %c1, %c2)
          %splat_59 = tensor.splat %25 : tensor<14x6x3xi32>
          %252 = math.roundeven %15 : tensor<6x8x6xf16>
          %253 = tensor.empty(%c4, %91) : tensor<?x?x6xi32>
          %from_elements_60 = tensor.from_elements %c-32746_i16, %c-32746_i16, %c-32746_i16, %c363_i16, %c-32746_i16, %c-32746_i16, %c363_i16, %c-32746_i16 : tensor<8xi16>
          %254 = vector.reduction <xor>, %92 : vector<3xi16> into i16
          %255 = bufferization.to_memref %13 : memref<14x6x3xi32>
          %256 = arith.divui %c363_i16, %c-32746_i16 : i16
          %257 = vector.transpose %243, [0] : vector<3xi1> to vector<3xi1>
          %c0_i32_61 = arith.constant 0 : i32
          %258 = vector.transfer_read %13[%251, %61, %c1], %c0_i32_61 : tensor<14x6x3xi32>, vector<6x3xi32>
          %259 = index.ceildivs %250, %27
          %260 = math.atan %8 : tensor<8xf32>
          %261 = math.fma %cst_2, %cst_3, %117 : f32
          %262 = arith.negf %109 : f16
          %263 = arith.remf %117, %cst_5 : f32
          %264 = arith.ceildivsi %78, %in : i32
          %265 = vector.load %alloc_14[%c3, %c1, %c0] : memref<14x6x3xi1>, vector<14x6x3xi1>
          %266 = math.ipowi %splat_59, %13 : tensor<14x6x3xi32>
          %false_62 = arith.constant false
          %267 = vector.broadcast %in_57 : i32 to vector<6x3x6x3xi32>
          %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %86, %86, %267 : vector<14x6x3xi32>, vector<14x6x3xi32> into vector<6x3x6x3xi32>
          %269 = affine.max affine_map<(d0) -> (-(d0 - (d0 + 4)))>(%27)
          %270 = math.round %109 : f16
          %271 = math.log1p %1 : tensor<6x8x6xf16>
          %272 = math.atan %3 : tensor<8xf16>
          %273 = vector.reduction <and>, %92 : vector<3xi16> into i16
          %274 = index.sub %c0, %23
          %275 = bufferization.clone %alloc_16 : memref<14x6x3xi1> to memref<14x6x3xi1>
          %276 = vector.insertelement %cst, %121[] : vector<f32>
          %277 = index.ceildivs %29, %43
          %278 = arith.andi %c1483383456_i64, %c1483383456_i64 : i64
          %c1_i32_63 = arith.constant 1 : i32
          linalg.yield %c1_i32_63 : i32
        }
      %248 = index.add %123, %c10
    } else {
      %242 = arith.andi %c1483383456_i64, %c0_i64 : i64
      %243 = affine.load %alloc_10[%c0, %c6] : memref<8x3xf16>
      %244 = bufferization.clone %alloc_8 : memref<14x6x3xf32> to memref<14x6x3xf32>
      %245 = math.fma %6, %6, %6 : tensor<8x3xf32>
      %246 = vector.broadcast %c213424238_i32 : i32 to vector<8xi32>
      %247 = vector.broadcast %false : i1 to vector<8xi1>
      %248 = vector.maskedload %alloc_22[%c1], %247, %246 : memref<3xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %249 = math.roundeven %106 : f16
      %250 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 32 + 1, (d3 * 2) ceildiv 4, (d3 * 2) ceildiv 4)>(%91, %c5, %c14, %123)
      %251 = memref.atomic_rmw maxf %243, %56[%c3, %c0] : (f16, memref<8x3xf16>) -> f16
    }
    %c0_i16 = arith.constant 0 : i16
    %141 = vector.transfer_read %2[%43, %c0, %c9], %c0_i16 : tensor<6x8x6xi16>, vector<i16>
    %142 = math.round %10 : tensor<6x8x6xf32>
    %143 = math.sqrt %cst_4 : f32
    %144 = math.fma %77, %77, %cst_32 : f16
    %145 = math.cos %collapsed_25 : tensor<48x6xf32>
    %146 = vector.broadcast %77 : f16 to vector<6x8x6xf16>
    %147 = math.fma %cst_0, %77, %106 : f16
    %148 = vector.broadcast %c15 : index to vector<14xindex>
    %149 = vector.broadcast %false : i1 to vector<14xi1>
    %150 = vector.broadcast %c0_i16 : i16 to vector<14xi16>
    vector.scatter %80[%c9, %c0, %c1] [%148], %149, %150 : memref<14x6x3xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
    %151 = math.atan %cst_0 : f16
    %152 = math.sqrt %6 : tensor<8x3xf32>
    %extracted = tensor.extract %15[%c3, %c5, %c2] : tensor<6x8x6xf16>
    %153 = arith.shrsi %c459066806_i64, %c1806701373_i64 : i64
    %splat_39 = tensor.splat %112 : tensor<8x3xi32>
    %154 = math.ceil %3 : tensor<8xf16>
    memref.assume_alignment %alloc_13, 8 : memref<8xi16>
    %155 = math.exp2 %from_elements : tensor<14x6x3xf16>
    %156 = arith.remf %cst_4, %cst_3 : f32
    %157 = math.atan %20 : tensor<f16>
    %158 = affine.if affine_set<(d0, d1, d2) : (-d0 >= 0, (-d0) floordiv 8 == 0, d2 + d0 == 0, d0 >= 0)>(%c8, %c6, %c12) -> memref<14x6x3xf32> {
      %242 = affine.max affine_map<(d0) -> (8, (d0 ceildiv 16) * 128)>(%c12)
      %c740383880_i32 = arith.constant 740383880 : i32
      %243 = arith.shrui %true, %false : i1
      %rank_56 = tensor.rank %17 : tensor<6x8x6xi64>
      %244 = memref.alloca_scope  -> (i16) {
        %248 = vector.transpose %92, [0] : vector<3xi16> to vector<3xi16>
        %249 = index.ceildivu %55, %c6
        %expanded_57 = tensor.expand_shape %splat_39 [[0], [1, 2]] : tensor<8x3xi32> into tensor<8x3x1xi32>
        %collapsed_58 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<6x8x6xi16> into tensor<48x6xi16>
        %250 = arith.andi %25, %112 : i32
        %251 = vector.matrix_multiply %93, %93 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
        %252 = vector.create_mask %c1 : vector<8xi1>
        %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %251, %251, %true_34 : vector<1xi1>, vector<1xi1> into i1
        %254 = vector.broadcast %cst_0 : f16 to vector<6x8xf16>
        vector.transfer_write %254, %115[%c1, %c5, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x8xf16>, memref<6x8x6xf16>
        %255 = arith.remf %cst_3, %cst_2 : f32
        %256 = vector.splat %c2 : vector<8x3xindex>
        %257 = math.absf %15 : tensor<6x8x6xf16>
        %258 = math.ctpop %true : i1
        %259 = math.ipowi %25, %c483662461_i32 : i32
        %260 = arith.cmpf ult, %cst_4, %cst_5 : f32
        %261 = vector.broadcast %c0_i16 : i16 to vector<14xi16>
        %262 = vector.broadcast %true_34 : i1 to vector<14xi1>
        %263 = vector.maskedload %alloc_11[%c2, %c6, %c1], %262, %261 : memref<6x8x6xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %264 = affine.load %alloc_14[%c8, %c7, %c6] : memref<14x6x3xi1>
        %265 = bufferization.to_memref %collapsed_58 : memref<48x6xi16>
        %266 = arith.remf %cst_32, %77 : f16
        %267 = arith.divui %c213424238_i32, %c483662461_i32 : i32
        %268 = index.divs %c14, %c14
        %269 = vector.reduction <and>, %92 : vector<3xi16> into i16
        %270 = affine.load %alloc_22[%c8] : memref<3xi32>
        %271 = math.exp %6 : tensor<8x3xf32>
        %272 = math.exp2 %117 : f32
        %extracted_59 = tensor.extract %7[%c1, %c1] : tensor<8x3xi32>
        %273 = vector.broadcast %c459066806_i64 : i64 to vector<6xi64>
        %274 = vector.multi_reduction <or>, %84, %273 [0, 2] : vector<14x6x3xi64> to vector<6xi64>
        %extracted_60 = tensor.extract %14[%c2, %c5, %c3] : tensor<6x8x6xi1>
        memref.tensor_store %collapsed_58, %265 : memref<48x6xi16>
        %275 = math.absf %cst_0 : f16
        %276 = arith.andi %true, %false : i1
        %277 = math.absi %2 : tensor<6x8x6xi16>
        memref.alloca_scope.return %c-32746_i16 : i16
      }
      %245 = arith.remf %cst_0, %cst_32 : f16
      %246 = math.sqrt %cst_0 : f16
      %247 = arith.floordivsi %112, %c1_i32 : i32
      affine.yield %79 : memref<14x6x3xf32>
    } else {
      %expanded_56 = tensor.expand_shape %3 [[0, 1]] : tensor<8xf16> into tensor<8x1xf16>
      %inserted_57 = tensor.insert %true into %14[%c1, %c2, %c1] : tensor<6x8x6xi1>
      %242 = index.maxs %c9, %c0
      %243 = arith.maxsi %c0_i64, %c1806701373_i64 : i64
      memref.assume_alignment %alloc_9, 1 : memref<8x3xf32>
      %244 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_17, %3, %alloc_23 : memref<6x8x6xf16>, tensor<8xf16>, memref<8xf16>) outs(%1 : tensor<6x8x6xf16>) {
      ^bb0(%in: f16, %in_59: f16, %in_60: f16, %out: f16):
        %cst_61 = arith.constant 1.000000e+00 : f16
        %cst_62 = arith.constant 0.000000e+00 : f16
        %247 = vector.transfer_read %1[%242, %c2, %27], %cst_62 : tensor<6x8x6xf16>, vector<f16>
        %248 = arith.maxf %cst_61, %cst_32 : f16
        %249 = vector.create_mask %119 : vector<8xi1>
        %250 = bufferization.clone %alloc_8 : memref<14x6x3xf32> to memref<14x6x3xf32>
        %251 = vector.extract_strided_slice %92 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi16> to vector<2xi16>
        bufferization.dealloc_tensor %splat : tensor<14x6x3xi32>
        %252 = arith.ori %c213424238_i32, %25 : i32
        %true_63 = index.bool.constant true
        %253 = arith.remf %cst_61, %109 : f16
        %254 = math.absf %8 : tensor<8xf32>
        %255 = index.add %c8, %c7
        %256 = arith.xori %false, %true_63 : i1
        %257 = math.tan %3 : tensor<8xf16>
        %cst_64 = arith.constant 3.328000e+03 : f16
        memref.assume_alignment %alloc, 8 : memref<8xi16>
        %258 = arith.xori %c213424238_i32, %c483662461_i32 : i32
        %259 = vector.transpose %138, [2, 1, 0] : vector<14x6x3xi16> to vector<3x6x14xi16>
        %260 = math.fma %3, %3, %3 : tensor<8xf16>
        %261 = arith.shrsi %true_63, %true : i1
        %c0_i32_65 = arith.constant 0 : i32
        %262 = vector.transfer_read %4[%43], %c0_i32_65 : tensor<8xi32>, vector<i32>
        %alloc_66 = memref.alloc() : memref<6x8x6xi64>
        %263 = math.atan2 %1, %1 : tensor<6x8x6xf16>
        %264 = bufferization.to_tensor %alloc_18 : memref<14x6x3xi16>
        %265 = math.roundeven %1 : tensor<6x8x6xf16>
        %266 = index.maxu %c9, %c12
        %267 = affine.load %alloc_16[%c4, %c5, %c1] : memref<14x6x3xi1>
        %extracted_67 = tensor.extract %11[%c3, %c0, %c5] : tensor<6x8x6xf32>
        %268 = math.ceil %in_60 : f16
        %269 = math.log1p %106 : f16
        %270 = math.round %cst_0 : f16
        %271 = bufferization.to_tensor %115 : memref<6x8x6xf16>
        %272 = vector.load %alloc_16[%c6, %c0, %c2] : memref<14x6x3xi1>, vector<6x8x6xi1>
        linalg.yield %cst_32 : f16
      } -> tensor<6x8x6xf16>
      %245 = index.casts %c459066806_i64 : i64 to index
      %c0_i64_58 = arith.constant 0 : i64
      %246 = vector.transfer_read %alloc_19[%c11, %c0, %55], %c0_i64_58 : memref<14x6x3xi64>, vector<3xi64>
      affine.yield %79 : memref<14x6x3xf32>
    }
    %159 = affine.min affine_map<(d0) -> (0)>(%123)
    %160 = vector.reduction <xor>, %94 : vector<3xi16> into i16
    %161 = math.ctlz %5 : tensor<6x8x6xi64>
    %c1_i32_40 = arith.constant 1 : i32
    %162 = vector.transfer_read %alloc_22[%119], %c1_i32_40 : memref<3xi32>, vector<i32>
    %163 = index.ceildivu %c10, %c13
    %164 = math.ipowi %c1450336928_i32, %112 : i32
    %165 = math.ipowi %5, %17 : tensor<6x8x6xi64>
    %166 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %c1806701373_i64 : vector<14xi64>, vector<14xi64> into i64
    %rank = tensor.rank %4 : tensor<8xi32>
    %167 = affine.if affine_set<(d0) : (d0 == 0)>(%c0) -> memref<14x6x3xi1> {
      %242 = arith.maxf %cst, %cst_5 : f32
      %243 = bufferization.clone %alloc_17 : memref<6x8x6xf16> to memref<6x8x6xf16>
      %244 = index.ceildivu %c9, %c5
      %245 = math.ctlz %c1_i32 : i32
      %246 = math.expm1 %117 : f32
      %247 = math.roundeven %1 : tensor<6x8x6xf16>
      %c0_i32_56 = arith.constant 0 : i32
      %248 = vector.transfer_read %7[%99, %123], %c0_i32_56 : tensor<8x3xi32>, vector<i32>
      %249 = vector.transpose %127, [0, 1, 2] : vector<14x6x3xi16> to vector<14x6x3xi16>
      affine.yield %alloc_16 : memref<14x6x3xi1>
    } else {
      bufferization.dealloc_tensor %21 : tensor<f16>
      %242 = arith.remf %106, %77 : f16
      %243 = arith.divsi %c-32746_i16, %c-32746_i16 : i16
      %244 = arith.muli %false, %false : i1
      %245 = index.maxu %c12, %133
      memref.assume_alignment %alloc_7, 4 : memref<8xf16>
      %246 = vector.create_mask %123, %27 : vector<8x3xi1>
      %247 = arith.negf %106 : f16
      affine.yield %alloc_14 : memref<14x6x3xi1>
    }
    %168 = arith.minsi %true, %true : i1
    scf.index_switch %c15 
    case 1 {
      %rank_56 = tensor.rank %0 : tensor<8x3xi1>
      %242 = index.ceildivs %c3, %27
      %243 = affine.apply affine_map<(d0) -> (d0 * 18)>(%c4)
      %244 = index.mul %c14, %27
      affine.store %c-32746_i16, %alloc[%c12] : memref<8xi16>
      %245 = bufferization.clone %alloc_10 : memref<8x3xf16> to memref<8x3xf16>
      %246 = arith.remui %c1450336928_i32, %c483662461_i32 : i32
      %247 = vector.extract %84[5] : vector<14x6x3xi64>
      %248 = bufferization.to_memref %collapsed_25 : memref<48x6xf32>
      %249 = index.maxu %c9, %c13
      %250 = math.sqrt %cst_0 : f16
      %251 = math.round %10 : tensor<6x8x6xf32>
      %252 = arith.divui %c1_i32, %c213424238_i32 : i32
      memref.assume_alignment %alloc_13, 1 : memref<8xi16>
      %253 = math.ceil %109 : f16
      %254 = index.ceildivs %c9, %61
      scf.yield
    }
    case 2 {
      %242 = arith.shrsi %c0_i64, %c1806701373_i64 : i64
      memref.alloca_scope  {
        %258 = arith.muli %c1806701373_i64, %c459066806_i64 : i64
        %259 = math.exp %cst_5 : f32
        %260 = vector.broadcast %c363_i16 : i16 to vector<14x6x8xi16>
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %127, %76, %260 : vector<14x6x3xi16>, vector<8x3xi16> into vector<14x6x8xi16>
        %262 = vector.broadcast %c-32746_i16 : i16 to vector<6x3x6x3xi16>
        %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %138, %127, %262 : vector<14x6x3xi16>, vector<14x6x3xi16> into vector<6x3x6x3xi16>
        %collapsed_56 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<6x8x6xi64> into tensor<48x6xi64>
        memref.tensor_store %9, %alloc_11 : memref<6x8x6xi16>
        %264 = math.atan %3 : tensor<8xf16>
        %265 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 floordiv 4) mod 64 + d3)>(%27, %c11, %c11, %43)
        %266 = index.castu %c11 : index to i32
        %267 = math.atan %cst_2 : f32
        %alloca_57 = memref.alloca() : memref<8xf32>
        %268 = vector.insertelement %c363_i16, %94[%c5 : index] : vector<3xi16>
        %269 = bufferization.to_memref %21 : memref<f16>
        %270 = math.rsqrt %cst_1 : f32
        %271 = arith.remf %cst, %cst_2 : f32
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %93, %93, %false : vector<3xi1>, vector<3xi1> into i1
        %273 = vector.broadcast %cst_32 : f16 to vector<8x6x8x6xf16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %146, %146, %273 : vector<6x8x6xf16>, vector<6x8x6xf16> into vector<8x6x8x6xf16>
        %275 = bufferization.clone %alloc_19 : memref<14x6x3xi64> to memref<14x6x3xi64>
        %276 = arith.addi %c1_i32_40, %78 : i32
        %277 = vector.create_mask %c8, %133, %c13 : vector<14x6x3xi1>
        %cast_58 = tensor.cast %13 : tensor<14x6x3xi32> to tensor<?x?x?xi32>
        %278 = vector.reduction <add>, %19 : vector<14xi64> into i64
        %279 = index.casts %159 : index to i32
        %280 = math.ipowi %c1_i32, %c1450336928_i32 : i32
        %281 = arith.remf %cst_4, %cst_5 : f32
        %282 = vector.broadcast %c0_i16 : i16 to vector<3x3xi16>
        %283 = vector.outerproduct %92, %94, %282 {kind = #vector.kind<maxui>} : vector<3xi16>, vector<3xi16>
        %false_59 = index.bool.constant false
        %284 = math.cos %6 : tensor<8x3xf32>
        %285 = vector.broadcast %c0_i16 : i16 to vector<i16>
        %286 = vector.transfer_write %285, %2[%123, %c15, %91] : vector<i16>, tensor<6x8x6xi16>
        %287 = vector.broadcast %99 : index to vector<8xindex>
        %288 = vector.broadcast %true_34 : i1 to vector<8xi1>
        vector.scatter %alloc_21[%c0, %c7, %c1] [%287], %288, %288 : memref<3x14x6xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %289 = math.ctpop %c1450336928_i32 : i32
        bufferization.dealloc_tensor %9 : tensor<6x8x6xi16>
      }
      %243 = vector.flat_transpose %94 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %244 = arith.andi %true, %true_34 : i1
      %245 = vector.create_mask %163, %133, %c5 : vector<14x6x3xi1>
      %246 = index.castu %55 : index to i32
      %247 = arith.maxsi %25, %c1_i32_40 : i32
      %248 = vector.broadcast %c1_i32_40 : i32 to vector<6x3x6x3xi32>
      %249 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %86, %86, %248 : vector<14x6x3xi32>, vector<14x6x3xi32> into vector<6x3x6x3xi32>
      %250 = index.ceildivs %61, %c13
      %251 = arith.remui %c1_i32, %c1450336928_i32 : i32
      affine.store %c-32746_i16, %80[%c8, %c13, %c6] : memref<14x6x3xi16>
      memref.assume_alignment %alloc_15, 8 : memref<14x6x3xi16>
      %252 = index.casts %55 : index to i32
      %253 = memref.load %56[%c6, %c2] : memref<8x3xf16>
      %254 = vector.broadcast %cst_5 : f32 to vector<14xf32>
      %255 = vector.broadcast %false : i1 to vector<14xi1>
      %256 = vector.maskedload %102[%c14, %c0], %255, %254 : memref<48x6xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %257 = affine.if affine_set<(d0, d1) : (((d1 ceildiv 32) mod 4) mod 64 == 0, 0 >= 0, d0 >= 0, d0 + d1 >= 0)>(%c0, %c3) -> i1 {
        %258 = index.ceildivu %c12, %c13
        %collapsed_56 = tensor.collapse_shape %collapsed_25 [[0, 1]] : tensor<48x6xf32> into tensor<288xf32>
        %from_elements_57 = tensor.from_elements %77, %106, %106, %cst_0, %109, %109, %77, %109, %cst_0, %cst_32, %extracted, %cst_32, %77, %cst_32, %77, %cst_0, %extracted, %extracted, %cst_0, %109, %77, %77, %77, %109 : tensor<8x3xf16>
        %true_58 = index.bool.constant true
        %259 = arith.minsi %c483662461_i32, %25 : i32
        %260 = math.roundeven %20 : tensor<f16>
        %261 = math.log10 %from_elements_57 : tensor<8x3xf16>
        %262 = math.floor %106 : f16
        affine.yield %true_58 : i1
      } else {
        %258 = affine.max affine_map<(d0, d1, d2) -> (d1 * 16 + 4, d1 * 512)>(%c12, %c3, %c9)
        %259 = vector.broadcast %c-32746_i16 : i16 to vector<14x6xi16>
        %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %243, %138, %259 : vector<3xi16>, vector<14x6x3xi16> into vector<14x6xi16>
        %261 = arith.remf %cst_3, %cst_2 : f32
        %262 = arith.andi %78, %c1_i32 : i32
        %263 = arith.maxui %78, %c1_i32_40 : i32
        %264 = arith.negf %extracted : f16
        %265 = math.round %1 : tensor<6x8x6xf16>
        %266 = arith.addi %c-32746_i16, %c0_i16 : i16
        affine.yield %false : i1
      }
      scf.yield
    }
    case 3 {
      %242 = scf.index_switch %61 -> tensor<6x8x6xi1> 
      case 1 {
        %258 = arith.shrsi %false, %false : i1
        bufferization.dealloc_tensor %cast : tensor<?x?x?xi32>
        %259 = arith.xori %c363_i16, %c363_i16 : i16
        %260 = math.fma %cst, %cst, %cst_2 : f32
        %261 = math.copysign %cst_2, %117 : f32
        %262 = arith.remf %cst_5, %cst_3 : f32
        %263 = arith.cmpf one, %cst_0, %cst_32 : f16
        %264 = affine.load %alloc_11[%c1, %c11, %c3] : memref<6x8x6xi16>
        %265 = arith.maxsi %true, %false : i1
        %266 = vector.broadcast %264 : i16 to vector<3x3xi16>
        %267 = vector.outerproduct %92, %92, %266 {kind = #vector.kind<and>} : vector<3xi16>, vector<3xi16>
        %268 = math.atan %cst_5 : f32
        memref.copy %alloc_7, %alloc_23 : memref<8xf16> to memref<8xf16>
        %c1_i32_56 = arith.constant 1 : i32
        %269 = vector.transfer_read %7[%119, %99], %c1_i32_56 : tensor<8x3xi32>, vector<i32>
        %from_elements_57 = tensor.from_elements %c1_i32_56, %78, %c483662461_i32, %c1_i32_56, %c483662461_i32, %112, %c483662461_i32, %c1_i32, %c1_i32_40, %c1450336928_i32, %c1_i32_40, %c1_i32_56, %112, %c1_i32_40, %c1_i32_56, %c1_i32_40, %25, %c213424238_i32, %c1_i32, %112, %c1450336928_i32, %c1_i32_56, %c483662461_i32, %25, %c1_i32_40, %c483662461_i32, %78, %c1_i32_40, %78, %c1_i32_56, %c213424238_i32, %c1_i32_56, %112, %c1_i32_56, %c1_i32, %78, %c1450336928_i32, %25, %112, %c483662461_i32, %c1_i32, %c1_i32_40, %25, %c483662461_i32, %c1_i32, %78, %c1450336928_i32, %112, %c1_i32_56, %c483662461_i32, %25, %25, %c213424238_i32, %c1_i32_56, %c1_i32, %c1_i32_56, %25, %c1_i32_40, %c213424238_i32, %c1_i32, %c1450336928_i32, %78, %112, %78, %c213424238_i32, %78, %c1450336928_i32, %c1_i32_56, %78, %c1450336928_i32, %c1_i32_56, %25, %112, %c1_i32_40, %78, %c213424238_i32, %25, %c1_i32_40, %c1450336928_i32, %c213424238_i32, %25, %112, %c1_i32_56, %c1_i32_56, %25, %c483662461_i32, %112, %25, %78, %c1_i32, %25, %c1_i32, %78, %c213424238_i32, %c1_i32, %c1450336928_i32, %25, %78, %c1_i32_40, %112, %25, %78, %c483662461_i32, %c1_i32_40, %c1_i32, %c1_i32, %c1450336928_i32, %c1_i32, %c483662461_i32, %c1_i32_56, %c213424238_i32, %c213424238_i32, %c1_i32_40, %c483662461_i32, %c1450336928_i32, %c213424238_i32, %78, %c1_i32_56, %25, %c1450336928_i32, %c1450336928_i32, %c1_i32_56, %c1_i32_56, %78, %25, %25, %c1_i32_56, %78, %c1450336928_i32, %78, %c213424238_i32, %c1450336928_i32, %c1_i32, %c1_i32_40, %c213424238_i32, %112, %112, %c1450336928_i32, %c1_i32, %c483662461_i32, %78, %c1450336928_i32, %112, %78, %c1450336928_i32, %c1450336928_i32, %25, %78, %c1_i32_56, %112, %c1_i32, %78, %112, %25, %c213424238_i32, %c213424238_i32, %78, %25, %c1450336928_i32, %78, %78, %c1_i32, %c1_i32_40, %c213424238_i32, %25, %c213424238_i32, %c1_i32_40, %c213424238_i32, %c1_i32_40, %c1_i32, %78, %78, %78, %78, %c1450336928_i32, %112, %25, %c1450336928_i32, %c483662461_i32, %c1450336928_i32, %112, %78, %25, %c213424238_i32, %25, %c1450336928_i32, %c213424238_i32, %78, %c1_i32_56, %c213424238_i32, %c1_i32, %25, %c1_i32_56, %78, %112, %25, %c483662461_i32, %c1_i32_56, %c1450336928_i32, %c213424238_i32, %c1_i32_56, %c1_i32_56, %c1_i32, %c1_i32_56, %c1_i32_40, %c1_i32, %c1450336928_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1_i32_56, %112, %c483662461_i32, %c213424238_i32, %c1_i32, %25, %c1_i32, %25, %c213424238_i32, %c1450336928_i32, %c1450336928_i32, %c213424238_i32, %c1_i32, %c1_i32_40, %c213424238_i32, %c1450336928_i32, %c1_i32, %112, %78, %c1_i32_56, %112, %c213424238_i32, %112, %25, %c1_i32, %25, %c1450336928_i32, %c1_i32_40, %c483662461_i32, %c1_i32_40, %112, %112, %c1_i32_40, %c1_i32_40, %c1_i32_40, %c213424238_i32, %112, %c213424238_i32, %c213424238_i32, %c1_i32_56, %25, %c1_i32_56 : tensor<14x6x3xi32>
        %270 = vector.reduction <and>, %92 : vector<3xi16> into i16
        %271 = bufferization.to_memref %5 : memref<6x8x6xi64>
        scf.yield %14 : tensor<6x8x6xi1>
      }
      case 2 {
        %258 = arith.minsi %c1_i32_40, %c1_i32 : i32
        %259 = math.roundeven %from_elements : tensor<14x6x3xf16>
        %260 = math.ipowi %0, %0 : tensor<8x3xi1>
        %from_elements_56 = tensor.from_elements %c1450336928_i32, %c483662461_i32, %c1_i32_40, %c1_i32, %c483662461_i32, %c1450336928_i32, %c1_i32_40, %c1_i32, %112, %c1_i32_40, %c1_i32_40, %112, %c483662461_i32, %c1_i32_40, %c1450336928_i32, %c1_i32, %c1450336928_i32, %25, %c213424238_i32, %c213424238_i32, %c1450336928_i32, %c483662461_i32, %112, %78 : tensor<8x3xi32>
        %261 = index.add %29, %c1
        %262 = vector.extract %94[1] : vector<3xi16>
        %splat_57 = tensor.splat %c1_i32 : tensor<8x3xi32>
        vector.print %85 : vector<14x6x3xi1>
        %263 = math.log1p %117 : f32
        affine.store %true_34, %alloc_21[%c13, %c3, %c2] : memref<3x14x6xi1>
        %264 = arith.cmpf uno, %cst_3, %cst : f32
        affine.store %cst_1, %alloc_9[%c6, %c7] : memref<8x3xf32>
        %265 = arith.minf %cst_3, %cst_5 : f32
        %266 = vector.broadcast %cst_1 : f32 to vector<14x6x3xf32>
        %267 = affine.load %alloc[%c15] : memref<8xi16>
        %268 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        scf.yield %14 : tensor<6x8x6xi1>
      }
      case 3 {
        %c1_i32_56 = arith.constant 1 : i32
        %c0_i32_57 = arith.constant 0 : i32
        %258 = vector.transfer_read %4[%c14], %c0_i32_57 : tensor<8xi32>, vector<i32>
        bufferization.dealloc_tensor %0 : tensor<8x3xi1>
        %259 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d3 + 16))>(%c4, %43, %c10, %rank)
        %260 = math.expm1 %15 : tensor<6x8x6xf16>
        %261 = vector.broadcast %cst : f32 to vector<8xf32>
        %262 = vector.transfer_write %261, %10[%c9, %55, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xf32>, tensor<6x8x6xf32>
        %263 = math.sqrt %15 : tensor<6x8x6xf16>
        %264 = math.fma %117, %cst_2, %cst : f32
        %265 = math.ctpop %112 : i32
        %266 = math.round %cst_4 : f32
        %267 = index.floordivs %c14, %27
        %268 = math.log1p %collapsed_25 : tensor<48x6xf32>
        %269 = vector.broadcast %106 : f16 to vector<14xf16>
        %270 = vector.transfer_write %269, %15[%23, %c6, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xf16>, tensor<6x8x6xf16>
        %271 = arith.andi %c0_i64, %c0_i64 : i64
        %272 = index.add %163, %159
        %inserted_58 = tensor.insert %c1450336928_i32 into %4[%c4] : tensor<8xi32>
        %273 = math.log1p %cst : f32
        scf.yield %14 : tensor<6x8x6xi1>
      }
      default {
        %collapsed_56 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<6x8x6xf32> into tensor<48x6xf32>
        %258 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c14, %c1, %c6, %61)
        %259 = math.expm1 %1 : tensor<6x8x6xf16>
        %260 = math.log1p %8 : tensor<8xf32>
        %261 = math.absi %14 : tensor<6x8x6xi1>
        %262 = index.mul %133, %23
        %263 = arith.ceildivsi %c1450336928_i32, %c1_i32 : i32
        %264 = vector.load %79[%c4, %c0, %c1] : memref<14x6x3xf32>, vector<8xf32>
        %265 = math.roundeven %10 : tensor<6x8x6xf32>
        %from_elements_57 = tensor.from_elements %true_34, %false, %true_34, %true_34, %true, %false, %true_34, %true, %false, %true_34, %false, %false, %false, %true, %true, %true_34, %true, %true_34, %true, %true, %true, %true_34, %true_34, %false : tensor<8x3xi1>
        %266 = arith.remui %c213424238_i32, %c1_i32_40 : i32
        %267 = math.floor %cst_2 : f32
        %268 = vector.load %alloc_21[%c2, %c5, %c2] : memref<3x14x6xi1>, vector<14x6x3xi1>
        %269 = math.exp %cst_0 : f16
        %270 = index.ceildivs %123, %c4
        %271 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
        %272 = vector.outerproduct %264, %264, %271 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
        scf.yield %14 : tensor<6x8x6xi1>
      }
      %243 = index.maxs %43, %c6
      %244 = math.atan2 %117, %cst_1 : f32
      %245 = affine.load %alloc_22[%c5] : memref<3xi32>
      %246 = math.round %3 : tensor<8xf16>
      affine.store %cst_5, %102[%c13, %c10] : memref<48x6xf32>
      %247 = arith.negf %cst_5 : f32
      %248 = arith.divui %c1_i32, %c1_i32 : i32
      %249 = affine.load %115[%c2, %c12, %c9] : memref<6x8x6xf16>
      %250 = vector.broadcast %cst : f32 to vector<3xf32>
      %251 = vector.transfer_write %250, %10[%c10, %81, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf32>, tensor<6x8x6xf32>
      %252 = bufferization.clone %alloc_17 : memref<6x8x6xf16> to memref<6x8x6xf16>
      %253 = arith.remf %249, %77 : f16
      %254 = memref.alloca_scope  -> (memref<6x8x6xi1>) {
        %from_elements_56 = tensor.from_elements %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c0_i64 : tensor<14x6x3xi64>
        %258 = vector.broadcast %c1_i32 : i32 to vector<8x3xi32>
        %259 = math.fma %cst_3, %cst_5, %117 : f32
        %260 = math.ctlz %17 : tensor<6x8x6xi64>
        %splat_57 = tensor.splat %109 : tensor<14x6x3xf16>
        %261 = arith.floordivsi %true, %true_34 : i1
        %262 = math.sqrt %8 : tensor<8xf32>
        %263 = arith.remsi %c-32746_i16, %c363_i16 : i16
        affine.store %c363_i16, %alloc_11[%c10, %c15, %c1] : memref<6x8x6xi16>
        %264 = vector.broadcast %c1483383456_i64 : i64 to vector<6x3x6x3xi64>
        %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %84, %84, %264 : vector<14x6x3xi64>, vector<14x6x3xi64> into vector<6x3x6x3xi64>
        %266 = vector.load %80[%c7, %c5, %c1] : memref<14x6x3xi16>, vector<8xi16>
        %267 = arith.ceildivsi %c483662461_i32, %78 : i32
        %268 = vector.broadcast %false : i1 to vector<3x3xi1>
        %269 = vector.outerproduct %93, %93, %268 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
        %270 = math.powf %splat_57, %splat_57 : tensor<14x6x3xf16>
        %271 = index.floordivs %43, %99
        %alloc_58 = memref.alloc() : memref<8xi32>
        memref.tensor_store %4, %alloc_58 : memref<8xi32>
        %272 = arith.maxsi %25, %78 : i32
        %273 = index.ceildivs %29, %243
        %274 = vector.broadcast %c0_i16 : i16 to vector<8x8xi16>
        %275 = vector.outerproduct %266, %266, %274 {kind = #vector.kind<mul>} : vector<8xi16>, vector<8xi16>
        %276 = arith.remui %true, %false : i1
        %277 = affine.load %alloc_14[%c13, %c15, %c14] : memref<14x6x3xi1>
        %278 = arith.shrsi %c483662461_i32, %78 : i32
        %from_elements_59 = tensor.from_elements %c459066806_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c0_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c0_i64, %c0_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64 : tensor<14x6x3xi64>
        %rank_60 = tensor.rank %4 : tensor<8xi32>
        %from_elements_61 = tensor.from_elements %106, %cst_0, %106, %109, %extracted, %109, %106, %249 : tensor<8xf16>
        %279 = math.exp %6 : tensor<8x3xf32>
        %280 = math.ceil %6 : tensor<8x3xf32>
        affine.store %c-32746_i16, %alloc_11[%c9, %c13, %c6] : memref<6x8x6xi16>
        %281 = math.ipowi %14, %14 : tensor<6x8x6xi1>
        %alloc_62 = memref.alloc() : memref<6x8x6xi16>
        memref.copy %alloc_11, %alloc_62 : memref<6x8x6xi16> to memref<6x8x6xi16>
        %282 = math.expm1 %cst_4 : f32
        memref.assume_alignment %alloc_8, 16 : memref<14x6x3xf32>
        %alloc_63 = memref.alloc() : memref<6x8x6xi1>
        memref.alloca_scope.return %alloc_63 : memref<6x8x6xi1>
      }
      %255 = affine.load %alloc_22[%c11] : memref<3xi32>
      %256 = arith.divf %77, %cst_0 : f16
      %257 = arith.remf %106, %249 : f16
      scf.yield
    }
    default {
      %242 = vector.multi_reduction <mul>, %85, %93 [0, 1] : vector<14x6x3xi1> to vector<3xi1>
      %243 = scf.if %true_34 -> (memref<6x8x6xf16>) {
        memref.assume_alignment %alloc_7, 1 : memref<8xf16>
        %256 = arith.divui %c1483383456_i64, %c1483383456_i64 : i64
        %257 = vector.broadcast %cst_5 : f32 to vector<8xf32>
        %258 = vector.transfer_write %257, %6[%rank, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf32>, tensor<8x3xf32>
        %259 = math.atan %cst_3 : f32
        %260 = index.ceildivu %99, %c8
        %collapsed_59 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<6x8x6xf32> into tensor<48x6xf32>
        %261 = arith.remui %c1_i32_40, %112 : i32
        %262 = math.ctpop %4 : tensor<8xi32>
        scf.yield %115 : memref<6x8x6xf16>
      } else {
        bufferization.dealloc_tensor %21 : tensor<f16>
        %extracted_59 = tensor.extract %10[%c4, %c1, %c0] : tensor<6x8x6xf32>
        %256 = arith.minsi %c483662461_i32, %25 : i32
        %257 = affine.load %alloc_15[%c3, %c1, %c10] : memref<14x6x3xi16>
        %258 = math.ipowi %2, %2 : tensor<6x8x6xi16>
        %259 = arith.minsi %78, %c1450336928_i32 : i32
        %260 = affine.load %alloc_20[%c8, %c13, %c6] : memref<14x6x3xf16>
        %261 = index.ceildivs %43, %27
        scf.yield %alloc_17 : memref<6x8x6xf16>
      }
      %244 = arith.minui %c1450336928_i32, %c213424238_i32 : i32
      %245 = vector.broadcast %c1483383456_i64 : i64 to vector<6x8x6xi64>
      %splat_56 = tensor.splat %78 : tensor<8x3xi32>
      %246 = math.ctpop %0 : tensor<8x3xi1>
      %247 = math.log10 %cst_5 : f32
      %248 = math.ctlz %true_34 : i1
      %249 = arith.shrsi %c1806701373_i64, %c459066806_i64 : i64
      %250 = vector.reduction <mul>, %92 : vector<3xi16> into i16
      %251 = arith.shrui %c1_i32, %112 : i32
      %expanded_57 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<6x8x6xf32> into tensor<6x8x6x1xf32>
      %alloca_58 = memref.alloca() : memref<8xi64>
      %252 = index.maxu %c1, %c15
      %253 = arith.shrsi %false, %true : i1
      %254 = vector.broadcast %false : i1 to vector<14xi1>
      %255 = vector.transfer_write %254, %0[%c10, %23] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi1>, tensor<8x3xi1>
    }
    %169 = math.ceil %10 : tensor<6x8x6xf32>
    %true_41 = index.bool.constant true
    %170 = vector.reduction <maxui>, %92 : vector<3xi16> into i16
    %171 = vector.load %alloc_6[%c0] : memref<8xi64>, vector<6x8x6xi64>
    %172 = index.mul %27, %c15
    %173 = index.casts %27 : index to i32
    bufferization.dealloc_tensor %collapsed_25 : tensor<48x6xf32>
    %174 = math.atan %1 : tensor<6x8x6xf16>
    bufferization.dealloc_tensor %12 : tensor<6x8x6xi16>
    %175 = arith.remf %cst_4, %cst_3 : f32
    %176 = math.sqrt %10 : tensor<6x8x6xf32>
    %177 = vector.broadcast %c483662461_i32 : i32 to vector<8xi32>
    %178 = vector.transfer_write %177, %7[%c4, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi32>, tensor<8x3xi32>
    %179 = bufferization.clone %alloc_20 : memref<14x6x3xf16> to memref<14x6x3xf16>
    %180 = bufferization.clone %179 : memref<14x6x3xf16> to memref<14x6x3xf16>
    %181 = math.copysign %cst_1, %117 : f32
    %182 = vector.broadcast %true : i1 to vector<14x6xi1>
    %183 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %93, %85, %182 : vector<3xi1>, vector<14x6x3xi1> into vector<14x6xi1>
    %184 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 64, d2 ceildiv 64)>(%c0, %43, %c11, %91)
    %185 = math.atan %8 : tensor<8xf32>
    %186 = vector.broadcast %extracted : f16 to vector<3xf16>
    vector.transfer_write %186, %alloc_10[%43, %119] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf16>, memref<8x3xf16>
    %from_elements_42 = tensor.from_elements %false, %true_41, %false, %true_41, %true_41, %true, %true, %false, %true_34, %true_34, %true, %true_41, %true_41, %false, %true, %false, %true, %false, %true_34, %true_34, %true_41, %true, %false, %true, %true, %true, %true, %false, %true_34, %true, %true_41, %true, %true_34, %true, %false, %true_34, %false, %false, %true, %false, %true_41, %false, %false, %true_41, %false, %true_34, %false, %true_41, %true_41, %true, %true_34, %false, %true, %true_34, %true_41, %false, %true_34, %true_41, %true, %true_41, %true_34, %false, %true_41, %true_41, %true, %true_34, %false, %true_34, %true_34, %true_34, %false, %false, %false, %true_34, %true_34, %true_41, %true_34, %false, %false, %true_41, %true, %true, %true_34, %true_41, %true_41, %true_34, %false, %true_41, %true_41, %false, %true_41, %true_41, %false, %true_41, %true, %true, %false, %true_34, %true_41, %true_41, %true_41, %true_41, %false, %true, %true, %true_41, %false, %true_34, %true_34, %true_34, %true, %true_41, %true_41, %true, %true_34, %true, %true_34, %true_41, %true_34, %true, %true, %true_34, %false, %true, %true_34, %true_34, %false, %true, %true_34, %true_34, %true, %true_34, %true_34, %true_34, %true, %true_34, %true_34, %true_34, %false, %true_41, %false, %true_34, %true_34, %true_34, %true_34, %true, %true_34, %false, %true, %true, %true_34, %false, %true, %true_41, %true_34, %false, %true_41, %false, %false, %false, %true_41, %true_34, %false, %true_34, %true_41, %true_34, %false, %false, %true_41, %true_41, %true_41, %true, %true_41, %true, %true, %true_41, %true, %false, %true_34, %true_34, %false, %true_41, %false, %true, %false, %true_34, %true_41, %true, %true, %true_34, %true_34, %true, %true, %true_41, %true, %true_41, %true_41, %true, %true_41, %true, %true, %false, %false, %true_34, %true_34, %false, %true_41, %true_41, %true_34, %false, %true, %true, %true_41, %true_41, %false, %true_34, %true_34, %true_34, %false, %true, %false, %true, %true_41, %true_41, %false, %true, %false, %false, %false, %true_34, %false, %true, %true, %true_41, %true_41, %false, %false, %false, %true, %true_41, %false, %true, %true, %true_34, %true_34, %true_41, %true, %true_41, %true_34, %true_41, %false, %true_34 : tensor<14x6x3xi1>
    %187 = math.exp %11 : tensor<6x8x6xf32>
    %188 = math.absi %c1_i32_40 : i32
    memref.alloca_scope  {
      %242 = arith.maxf %109, %109 : f16
      %243 = vector.reduction <xor>, %92 : vector<3xi16> into i16
      %244 = vector.broadcast %117 : f32 to vector<f32>
      %245 = vector.transfer_write %244, %8[%c1] : vector<f32>, tensor<8xf32>
      %246 = arith.ori %true_41, %false : i1
      %247 = vector.transpose %84, [0, 2, 1] : vector<14x6x3xi64> to vector<14x3x6xi64>
      %248 = math.exp2 %extracted : f16
      %249 = math.ctlz %14 : tensor<6x8x6xi1>
      %250 = math.cos %cst_2 : f32
      %251 = math.ctpop %0 : tensor<8x3xi1>
      %252 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
      %c0_i32_56 = arith.constant 0 : i32
      %c0_i32_57 = arith.constant 0 : i32
      %253 = vector.transfer_read %alloc_22[%43], %c0_i32_57 : memref<3xi32>, vector<i32>
      %254 = math.log10 %1 : tensor<6x8x6xf16>
      %255 = math.expm1 %6 : tensor<8x3xf32>
      %256 = bufferization.to_memref %3 : memref<8xf16>
      %257 = arith.subi %true_41, %true : i1
      %258 = arith.cmpf true, %cst_4, %cst : f32
      %259 = math.ceil %extracted : f16
      %260 = scf.while (%arg0 = %cst_3) : (f32) -> f32 {
        %269 = bufferization.to_memref %splat : memref<14x6x3xi32>
        %270 = arith.xori %c213424238_i32, %c1450336928_i32 : i32
        %271 = vector.broadcast %c0_i64 : i64 to vector<8x6x14x3xi64>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d4, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %171, %84, %271 : vector<6x8x6xi64>, vector<14x6x3xi64> into vector<8x6x14x3xi64>
        affine.store %109, %56[%c14, %c9] : memref<8x3xf16>
        %273 = vector.transpose %92, [0] : vector<3xi16> to vector<3xi16>
        %274 = arith.maxui %c1806701373_i64, %c1483383456_i64 : i64
        %275 = index.divs %123, %43
        %276 = math.expm1 %arg0 : f32
        scf.condition(%true_34) %cst_2 : f32
      } do {
      ^bb0(%arg0: f32):
        %269 = index.casts %81 : index to i32
        %270 = math.ipowi %c0_i64, %c459066806_i64 : i64
        %271 = arith.xori %c-32746_i16, %c0_i16 : i16
        %272 = math.absf %11 : tensor<6x8x6xf32>
        %inserted_62 = tensor.insert %true into %0[%c7, %c2] : tensor<8x3xi1>
        %273 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %274 = vector.fma %273, %273, %273 : vector<8xf32>
        %275 = affine.load %alloc_17[%c1, %c10, %c4] : memref<6x8x6xf16>
        %cst_63 = arith.constant 1.000000e+00 : f32
        %276 = vector.transfer_read %102[%c11, %rank], %cst_63 : memref<48x6xf32>, vector<6xf32>
        %277 = index.ceildivu %c0, %27
        %inserted_64 = tensor.insert %false into %14[%c2, %c3, %c2] : tensor<6x8x6xi1>
        %from_elements_65 = tensor.from_elements %c1_i32_40, %78, %25, %c1_i32_40, %25, %112, %c213424238_i32, %25 : tensor<8xi32>
        %278 = math.atan2 %20, %21 : tensor<f16>
        %279 = math.log2 %cst_4 : f32
        %280 = arith.ceildivsi %true_41, %true_34 : i1
        %281 = math.floor %cst_2 : f32
        %282 = index.casts %false : i1 to index
        scf.yield %117 : f32
      }
      %261 = arith.andi %c1450336928_i32, %c1_i32 : i32
      %262 = vector.transpose %19, [0] : vector<14xi64> to vector<14xi64>
      %cast_58 = tensor.cast %6 : tensor<8x3xf32> to tensor<?x?xf32>
      scf.if %true {
        %from_elements_62 = tensor.from_elements %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c1483383456_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c1806701373_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c459066806_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c459066806_i64, %c1806701373_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c459066806_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c459066806_i64, %c0_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c459066806_i64, %c0_i64, %c1806701373_i64, %c1483383456_i64, %c1806701373_i64, %c1483383456_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c0_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c459066806_i64, %c1483383456_i64, %c459066806_i64, %c1483383456_i64, %c1806701373_i64, %c1806701373_i64, %c0_i64, %c0_i64, %c0_i64, %c459066806_i64, %c1806701373_i64, %c1483383456_i64, %c1483383456_i64, %c459066806_i64, %c0_i64, %c0_i64 : tensor<14x6x3xi64>
        %collapsed_63 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<6x8x6xi64> into tensor<48x6xi64>
        %269 = vector.load %179[%c3, %c1, %c2] : memref<14x6x3xf16>, vector<6x8x6xf16>
        %270 = arith.remui %c483662461_i32, %c1_i32 : i32
        bufferization.dealloc_tensor %21 : tensor<f16>
        %271 = arith.maxsi %c363_i16, %c-32746_i16 : i16
        %272 = vector.broadcast %c0_i16 : i16 to vector<6xi16>
        vector.transfer_write %272, %alloc_18[%c12, %55, %29] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi16>, memref<14x6x3xi16>
        %273 = vector.broadcast %c1_i32_40 : i32 to vector<8xi32>
      } else {
        %269 = vector.reduction <minui>, %94 : vector<3xi16> into i16
        %inserted_62 = tensor.insert %117 into %6[%c3, %c1] : tensor<8x3xf32>
        %270 = vector.reduction <add>, %94 : vector<3xi16> into i16
        %271 = arith.shrsi %false, %true_41 : i1
        %272 = arith.floordivsi %c459066806_i64, %c0_i64 : i64
        %273 = memref.atomic_rmw assign %106, %alloc_20[%c0, %c0, %c2] : (f16, memref<14x6x3xf16>) -> f16
        %true_63 = arith.constant true
        %false_64 = arith.constant false
        %274 = vector.transfer_read %0[%c3, %159], %false_64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x3xi1>, vector<3xi1>
        %275 = index.ceildivs %81, %c12
      }
      %263 = bufferization.clone %alloc_13 : memref<8xi16> to memref<8xi16>
      %alloca_59 = memref.alloca() : memref<14x6x3xi16>
      %264 = index.ceildivu %c15, %c6
      %265 = index.sub %159, %55
      %266 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 floordiv 4) mod 64 + d3)>(%rank, %c8, %119, %133)
      %267 = math.ceil %cst_1 : f32
      %alloc_60 = memref.alloc() : memref<14x6x3xi32>
      memref.tensor_store %splat, %alloc_60 : memref<14x6x3xi32>
      %268 = math.round %1 : tensor<6x8x6xf16>
      bufferization.dealloc_tensor %from_elements_35 : tensor<8x3xi1>
      %extracted_61 = tensor.extract %8[%c2] : tensor<8xf32>
    }
    %189 = index.ceildivs %c6, %c11
    %190 = bufferization.clone %alloc_11 : memref<6x8x6xi16> to memref<6x8x6xi16>
    %alloca_43 = memref.alloca() : memref<8xi64>
    %191 = arith.maxui %c363_i16, %c0_i16 : i16
    %192 = math.log1p %cst_32 : f16
    %193 = arith.shrui %c-32746_i16, %c0_i16 : i16
    %194 = arith.floordivsi %true_34, %true_34 : i1
    %195 = math.absf %6 : tensor<8x3xf32>
    %196 = scf.while (%arg0 = %79) : (memref<14x6x3xf32>) -> memref<14x6x3xf32> {
      affine.store %c-32746_i16, %alloc_11[%c3, %c6, %c13] : memref<6x8x6xi16>
      %242 = vector.reduction <minui>, %92 : vector<3xi16> into i16
      bufferization.dealloc_tensor %11 : tensor<6x8x6xf32>
      %243 = math.absf %10 : tensor<6x8x6xf32>
      %244 = index.maxu %c14, %c2
      %245 = arith.remf %106, %109 : f16
      %246 = math.round %15 : tensor<6x8x6xf16>
      %splat_56 = tensor.splat %25 : tensor<8xi32>
      scf.condition(%true_34) %79 : memref<14x6x3xf32>
    } do {
    ^bb0(%arg0: memref<14x6x3xf32>):
      %242 = index.add %c3, %43
      %243 = arith.floordivsi %c1450336928_i32, %c1_i32_40 : i32
      %244 = scf.while (%arg1 = %arg0) : (memref<14x6x3xf32>) -> memref<14x6x3xf32> {
        %256 = index.ceildivs %27, %c11
        %257 = index.floordivs %81, %256
        %258 = math.sqrt %11 : tensor<6x8x6xf32>
        %259 = arith.divui %25, %c483662461_i32 : i32
        %260 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%27, %43, %99, %c10)
        %261 = math.log1p %8 : tensor<8xf32>
        %262 = vector.create_mask %c3, %61, %c2 : vector<14x6x3xi1>
        %263 = vector.extract_strided_slice %186 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf16> to vector<2xf16>
        scf.condition(%true) %arg0 : memref<14x6x3xf32>
      } do {
      ^bb0(%arg1: memref<14x6x3xf32>):
        %256 = arith.shrsi %c1450336928_i32, %c1_i32 : i32
        %257 = index.casts %c10 : index to i32
        %258 = arith.minf %cst_3, %cst_2 : f32
        %259 = math.round %3 : tensor<8xf16>
        %260 = vector.transpose %127, [2, 0, 1] : vector<14x6x3xi16> to vector<3x14x6xi16>
        %261 = vector.shuffle %93, %93 [0, 1, 4, 5] : vector<3xi1>, vector<3xi1>
        affine.store %77, %alloc_10[%c2, %c2] : memref<8x3xf16>
        %262 = index.maxs %c11, %c1
        %263 = arith.remui %78, %c1_i32_40 : i32
        vector.print %138 : vector<14x6x3xi16>
        %264 = arith.addf %cst_1, %117 : f32
        %265 = arith.shrsi %c-32746_i16, %c-32746_i16 : i16
        %266 = arith.andi %c0_i16, %c-32746_i16 : i16
        %267 = affine.load %79[%c13, %c4, %c2] : memref<14x6x3xf32>
        %cast_60 = tensor.cast %splat_29 : tensor<6x8x6xi64> to tensor<?x?x?xi64>
        %268 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 mod 16, d2 ceildiv 4, d0)>(%c15, %242, %c6, %61)
        scf.yield %alloc_8 : memref<14x6x3xf32>
      }
      %245 = vector.broadcast %c-32746_i16 : i16 to vector<6x3xi16>
      %dest_56, %accumulated_value_57 = vector.scan <and>, %138, %245 {inclusive = true, reduction_dim = 0 : i64} : vector<14x6x3xi16>, vector<6x3xi16>
      %246 = arith.divui %true_34, %false : i1
      %247 = arith.addf %77, %109 : f16
      memref.store %c0_i16, %alloc_18[%c6, %c1, %c0] : memref<14x6x3xi16>
      %splat_58 = tensor.splat %77 : tensor<8xf16>
      %248 = arith.shrui %false, %false : i1
      %splat_59 = tensor.splat %true_34 : tensor<8x3xi1>
      %249 = math.exp %cst_5 : f32
      %250 = math.sqrt %cst_32 : f16
      %251 = vector.broadcast %cst_4 : f32 to vector<f32>
      %252 = vector.transfer_write %251, %10[%c6, %81, %c12] : vector<f32>, tensor<6x8x6xf32>
      %253 = math.copysign %splat_58, %splat_58 : tensor<8xf16>
      %254 = bufferization.to_memref %3 : memref<8xf16>
      %255 = vector.create_mask %172, %27, %c7 : vector<14x6x3xi1>
      scf.yield %arg0 : memref<14x6x3xf32>
    }
    memref.copy %alloc_14, %alloc_16 : memref<14x6x3xi1> to memref<14x6x3xi1>
    %197 = arith.maxsi %25, %c213424238_i32 : i32
    affine.store %106, %alloc_10[%c15, %c8] : memref<8x3xf16>
    %198 = arith.muli %c1450336928_i32, %25 : i32
    %199 = arith.shrsi %c-32746_i16, %c-32746_i16 : i16
    %200 = math.absi %splat_29 : tensor<6x8x6xi64>
    %false_44 = index.bool.constant false
    %201 = math.log %cst_4 : f32
    %202 = affine.load %alloc_6[%c13] : memref<8xi64>
    %203 = math.ipowi %c363_i16, %c363_i16 : i16
    %204 = arith.maxsi %false_44, %true : i1
    %205 = arith.remf %cst, %cst_1 : f32
    %true_45 = index.bool.constant true
    %206 = arith.minsi %true, %true_45 : i1
    %collapsed_46 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<14x6x3xi32> into tensor<84x3xi32>
    %207 = math.sqrt %6 : tensor<8x3xf32>
    %208 = vector.broadcast %77 : f16 to vector<8x6x8x6xf16>
    %209 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %146, %146, %208 : vector<6x8x6xf16>, vector<6x8x6xf16> into vector<8x6x8x6xf16>
    %210 = arith.shrsi %true, %true : i1
    %211 = math.expm1 %cst_0 : f16
    %212 = vector.create_mask %159, %27, %23 : vector<6x8x6xi1>
    %213 = math.round %8 : tensor<8xf32>
    %cast_47 = tensor.cast %from_elements_35 : tensor<8x3xi1> to tensor<?x?xi1>
    %expanded = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<6x8x6xi64> into tensor<6x8x6x1xi64>
    %214 = math.ctpop %splat_29 : tensor<6x8x6xi64>
    %generated = tensor.generate %81 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %242 = arith.addi %c363_i16, %c0_i16 : i16
      %243 = memref.load %alloc_22[%c1] : memref<3xi32>
      %244 = index.maxu %29, %c10
      %245 = math.roundeven %cst_4 : f32
      tensor.yield %c1_i32_40 : i32
    } : tensor<?x8x6xi32>
    %215 = arith.ceildivsi %true, %false : i1
    %216 = math.ctlz %25 : i32
    %217 = math.round %3 : tensor<8xf16>
    %cast_48 = tensor.cast %0 : tensor<8x3xi1> to tensor<?x?xi1>
    %218 = index.add %55, %23
    %219 = math.atan %cst_2 : f32
    %220 = vector.broadcast %109 : f16 to vector<3x3xf16>
    %221 = vector.outerproduct %186, %186, %220 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
    %extracted_49 = tensor.extract %splat[%c10, %c4, %c0] : tensor<14x6x3xi32>
    %from_elements_50 = tensor.from_elements %cst_3, %cst_5, %cst_2, %cst_4, %cst_4, %cst_1, %cst_2, %cst_1, %117, %cst_3, %cst_5, %cst_3, %cst, %cst_3, %cst_1, %cst_5, %cst_4, %cst_3, %cst_5, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst_4, %cst_5, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_5, %cst_2, %cst_5, %117, %117, %cst_3, %cst, %cst_4, %cst, %cst_4, %cst_3, %cst_5, %cst_2, %cst, %cst, %cst_5, %cst_5, %cst_5, %cst_4, %cst_2, %cst_5, %cst_1, %cst, %117, %117, %cst_2, %cst, %cst, %cst_4, %cst, %117, %cst, %cst_1, %cst_1, %cst_5, %cst, %117, %cst_3, %117, %cst_5, %cst_1, %cst_5, %cst_4, %cst_2, %cst_5, %cst_1, %cst_5, %cst_3, %cst_1, %cst_1, %cst_5, %cst_5, %cst, %cst_2, %cst_1, %cst_4, %cst_1, %cst_4, %cst_5, %cst_5, %cst_1, %cst, %cst_3, %117, %cst_5, %cst_1, %cst_3, %cst_3, %cst_1, %cst_4, %cst_5, %117, %cst, %cst_1, %cst_4, %cst_2, %117, %cst_1, %117, %cst_4, %cst_4, %cst, %cst_5, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_4, %cst_1, %cst_1, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst_5, %cst_3, %cst_5, %cst_5, %cst_4, %cst_5, %cst_2, %117, %cst_5, %cst_1, %cst, %cst_1, %cst, %117, %cst, %cst_3, %cst, %cst_3, %117, %117, %cst_4, %cst_5, %cst, %117, %cst, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %117, %cst, %cst_4, %cst_5, %cst, %cst_3, %cst_3, %cst_4, %cst_4, %cst_1, %cst_4, %cst_3, %cst_2, %cst, %cst_3, %cst_5, %cst_3, %117, %cst_2, %cst_3, %cst_3, %117, %cst_3, %cst_1, %cst_5, %cst_3, %cst_4, %cst, %cst, %117, %cst_4, %cst, %cst_4, %117, %cst_3, %cst_1, %cst_1, %cst_4, %cst_1, %cst, %117, %117, %cst_3, %117, %117, %cst_5, %117, %cst_3, %cst_4, %cst, %117, %117, %cst_5, %cst_2, %cst_1, %cst_5, %cst_3, %cst, %cst_5, %cst_5, %cst_3, %cst_2, %cst, %cst_5, %117, %cst_4, %117, %cst, %cst, %cst, %117, %cst_2, %cst_4, %cst_2, %cst_3, %cst_1, %cst_1, %117, %cst_5, %cst_4, %cst_5, %cst, %cst_3, %cst_5, %117, %cst_5, %cst_2, %cst_4, %cst_2, %cst_2, %cst_5, %cst_1, %117 : tensor<14x6x3xf32>
    %222 = index.floordivs %81, %218
    %223 = arith.floordivsi %c1806701373_i64, %c1806701373_i64 : i64
    %224 = vector.broadcast %c5 : index to vector<6xindex>
    %225 = vector.broadcast %false_44 : i1 to vector<6xi1>
    %226 = vector.broadcast %c363_i16 : i16 to vector<6xi16>
    vector.scatter %alloc_13[%c4] [%224], %225, %226 : memref<8xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64_51 = arith.constant 0 : i64
    %227 = vector.transfer_read %16[%123, %c10, %27], %c0_i64_51 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<6x8x6xi64>, vector<14xi64>
    %228 = math.atan %3 : tensor<8xf16>
    affine.store %c483662461_i32, %alloc_12[%c5, %c4, %c3] : memref<6x8x6xi32>
    %229 = vector.broadcast %c9 : index to vector<14xindex>
    %230 = vector.broadcast %true : i1 to vector<14xi1>
    vector.scatter %alloc_14[%c7, %c3, %c2] [%229], %230, %230 : memref<14x6x3xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
    %231 = arith.minf %cst_32, %extracted : f16
    vector.print %94 : vector<3xi16>
    %232 = vector.broadcast %c-32746_i16 : i16 to vector<3x3xi16>
    %233 = vector.outerproduct %94, %92, %232 {kind = #vector.kind<maxui>} : vector<3xi16>, vector<3xi16>
    %234 = math.atan2 %cst_3, %cst_4 : f32
    %c1_i16 = arith.constant 1 : i16
    %c0_i16_52 = arith.constant 0 : i16
    %235 = vector.transfer_read %12[%55, %c15, %99], %c0_i16_52 : tensor<6x8x6xi16>, vector<i16>
    scf.if %true_34 {
      %242 = index.ceildivu %133, %91
      memref.tensor_store %3, %alloc_7 : memref<8xf16>
      %243 = math.ipowi %0, %0 : tensor<8x3xi1>
      %244 = arith.maxui %112, %c1450336928_i32 : i32
      %245 = math.round %6 : tensor<8x3xf32>
      affine.store %c363_i16, %alloc_11[%c14, %c14, %c15] : memref<6x8x6xi16>
      %246 = index.add %c13, %c13
      %247 = arith.negf %cst_1 : f32
    } else {
      %242 = bufferization.to_tensor %alloc_20 : memref<14x6x3xf16>
      %243 = arith.remui %false, %false : i1
      %244 = memref.load %alloc_22[%c1] : memref<3xi32>
      %245 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %94, %92, %c0_i16 : vector<3xi16>, vector<3xi16> into i16
      %246 = bufferization.clone %180 : memref<14x6x3xf16> to memref<14x6x3xf16>
      %247 = math.ctlz %c1450336928_i32 : i32
      %248 = index.casts %163 : index to i32
      affine.store %c0_i16, %alloc_18[%c14, %c7, %c1] : memref<14x6x3xi16>
    }
    %236 = arith.shrsi %true, %false : i1
    %237 = arith.xori %c213424238_i32, %112 : i32
    %alloca_53 = memref.alloca() : memref<8xi1>
    affine.store %c1450336928_i32, %alloc_12[%c13, %c14, %c9] : memref<6x8x6xi32>
    %238 = tensor.empty() : tensor<8x3xi32>
    %239 = linalg.copy ins(%7 : tensor<8x3xi32>) outs(%238 : tensor<8x3xi32>) -> tensor<8x3xi32>
    %alloc_54 = memref.alloc() : memref<6x48xf32>
    linalg.transpose ins(%collapsed_25 : tensor<48x6xf32>) outs(%alloc_54 : memref<6x48xf32>) permutation = [1, 0] 
    %alloc_55 = memref.alloc() : memref<i32>
    linalg.reduce ins(%collapsed_46 : tensor<84x3xi32>) outs(%alloc_55 : memref<i32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        memref.tensor_store %15, %115 : memref<6x8x6xf16>
        %242 = vector.reduction <xor>, %92 : vector<3xi16> into i16
        %243 = vector.create_mask %91, %29 : vector<8x3xi1>
        %collapsed_56 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x8x6xi32> into tensor<?x6xi32>
        %244 = scf.while (%arg0 = %c0_i64) : (i64) -> i64 {
          %248 = math.sqrt %8 : tensor<8xf32>
          %249 = arith.minui %true_41, %true : i1
          %250 = arith.remf %109, %cst_0 : f16
          %251 = affine.apply affine_map<(d0) -> (d0 * 8)>(%c1)
          %extracted_58 = tensor.extract %1[%c2, %c7, %c3] : tensor<6x8x6xf16>
          %252 = index.divu %c0, %133
          %253 = vector.create_mask %251, %c14 : vector<8x3xi1>
          %254 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 8 + d1 + 4, d1)>(%27, %123, %159)
          scf.condition(%true_34) %c1806701373_i64 : i64
        } do {
        ^bb0(%arg0: i64):
          %248 = arith.remui %c1_i32, %c1_i32_40 : i32
          %249 = arith.remf %cst_32, %extracted : f16
          %alloc_58 = memref.alloc() : memref<14x6x3xf16>
          %collapsed_59 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<6x8x6xf16> into tensor<48x6xf16>
          memref.assume_alignment %alloc_6, 2 : memref<8xi64>
          %true_60 = arith.constant true
          %250 = vector.transfer_read %from_elements_42[%c6, %c8, %43], %true_60 : tensor<14x6x3xi1>, vector<6xi1>
          %from_elements_61 = tensor.from_elements %cst_3, %117, %cst_4, %cst_3, %cst_2, %117, %cst_3, %cst_1, %117, %cst_1, %cst, %cst, %cst, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_5, %117, %cst, %cst_1, %cst_3, %cst_2 : tensor<8x3xf32>
          %251 = math.round %15 : tensor<6x8x6xf16>
          %252 = arith.ori %c1_i32_40, %c483662461_i32 : i32
          %253 = math.exp %1 : tensor<6x8x6xf16>
          %254 = vector.load %alloc_13[%c1] : memref<8xi16>, vector<8xi16>
          vector.print %171 : vector<6x8x6xi64>
          %255 = index.sub %222, %c14
          bufferization.dealloc_tensor %20 : tensor<f16>
          %256 = affine.min affine_map<(d0) -> (-d0, d0, -d0)>(%61)
          %257 = math.roundeven %cst_3 : f32
          scf.yield %c0_i64 : i64
        }
        %245 = scf.index_switch %189 -> memref<8xf32> 
        case 1 {
          %248 = index.casts %c2 : index to i32
          %249 = tensor.empty() : tensor<14x6x3xf32>
          %250 = arith.remui %init, %78 : i32
          affine.store %c0_i64, %alloc_19[%c5, %c11, %c1] : memref<14x6x3xi64>
          %251 = math.round %cst_32 : f16
          %252 = index.floordivs %c0, %91
          %253 = math.sqrt %249 : tensor<14x6x3xf32>
          %254 = arith.ori %202, %c1483383456_i64 : i64
          %255 = vector.create_mask %119 : vector<8xi1>
          %256 = vector.broadcast %cst_5 : f32 to vector<3x14xf32>
          %257 = vector.transfer_write %256, %249[%184, %184, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x14xf32>, tensor<14x6x3xf32>
          %alloc_58 = memref.alloc() : memref<14x6x3xi16>
          %258 = arith.andi %c0_i64, %c0_i64 : i64
          %259 = vector.create_mask %222, %c12 : vector<8x3xi1>
          %260 = math.ipowi %9, %2 : tensor<6x8x6xi16>
          %261 = math.round %8 : tensor<8xf32>
          %262 = arith.ceildivsi %c1_i16, %c-32746_i16 : i16
          %alloc_59 = memref.alloc() : memref<8xf32>
          scf.yield %alloc_59 : memref<8xf32>
        }
        case 2 {
          %248 = index.casts %c0_i16 : i16 to index
          %249 = math.roundeven %8 : tensor<8xf32>
          %250 = arith.andi %c213424238_i32, %in : i32
          %251 = tensor.empty(%c7, %c2) : tensor<?x?x3xi32>
          %252 = affine.max affine_map<(d0) -> ((d0 floordiv 16) mod 2, 0, d0 floordiv 16, d0 floordiv 16)>(%c6)
          %253 = arith.shrsi %true, %true_45 : i1
          %254 = bufferization.to_memref %expanded : memref<6x8x6x1xi64>
          %255 = affine.apply affine_map<(d0) -> (d0 * 8)>(%172)
          %256 = arith.divf %cst, %cst_5 : f32
          %257 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 64 - 4)>(%222, %c11, %c6, %c6)
          %258 = vector.broadcast %true_41 : i1 to vector<3x14xi1>
          vector.transfer_write %258, %alloc_16[%c2, %133, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x14xi1>, memref<14x6x3xi1>
          %259 = index.ceildivs %255, %c11
          %260 = index.ceildivu %218, %99
          %261 = index.ceildivu %123, %c15
          %collapsed_58 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<14x6x3xi32> into tensor<84x3xi32>
          %262 = arith.divsi %true, %true_34 : i1
          %alloc_59 = memref.alloc() : memref<8xf32>
          scf.yield %alloc_59 : memref<8xf32>
        }
        case 3 {
          %alloc_58 = memref.alloc() : memref<14x6x3xf32>
          %248 = index.ceildivu %c3, %c1
          %249 = math.ipowi %true, %true_45 : i1
          bufferization.dealloc_tensor %2 : tensor<6x8x6xi16>
          %250 = arith.muli %c1483383456_i64, %c1_i64 : i64
          %251 = affine.apply affine_map<(d0, d1) -> (d0 - d1 - 64)>(%c14, %rank)
          %252 = arith.ceildivsi %true_34, %false_44 : i1
          %253 = index.mul %251, %c15
          %true_59 = index.bool.constant true
          %254 = math.log1p %106 : f16
          %255 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 - 2) floordiv 4, d3 * 32)>(%172, %c15, %99, %c14)
          %256 = math.ceil %cst_2 : f32
          %257 = vector.insert %c1_i16, %94 [1] : i16 into vector<3xi16>
          %splat_60 = tensor.splat %c483662461_i32 : tensor<6x8x6xi32>
          %258 = arith.minsi %112, %in : i32
          %259 = arith.ceildivsi %c1_i16, %c363_i16 : i16
          %alloc_61 = memref.alloc() : memref<8xf32>
          scf.yield %alloc_61 : memref<8xf32>
        }
        default {
          %248 = math.expm1 %1 : tensor<6x8x6xf16>
          %249 = arith.divui %c1450336928_i32, %c213424238_i32 : i32
          %250 = bufferization.clone %alloc_22 : memref<3xi32> to memref<3xi32>
          %251 = vector.reduction <and>, %177 : vector<8xi32> into i32
          %252 = bufferization.to_memref %generated : memref<?x8x6xi32>
          %253 = math.ctlz %4 : tensor<8xi32>
          %false_58 = index.bool.constant false
          %254 = arith.remf %117, %cst_5 : f32
          %255 = vector.extract_strided_slice %76 {offsets = [2], sizes = [1], strides = [1]} : vector<8x3xi16> to vector<1x3xi16>
          %256 = math.ipowi %12, %9 : tensor<6x8x6xi16>
          %257 = index.ceildivu %43, %23
          %258 = math.ceil %1 : tensor<6x8x6xf16>
          %259 = vector.reduction <maxsi>, %92 : vector<3xi16> into i16
          %260 = math.sqrt %6 : tensor<8x3xf32>
          %alloc_59 = memref.alloc() : memref<8xf32>
          memref.tensor_store %8, %alloc_59 : memref<8xf32>
          %261 = index.add %61, %c8
          %alloc_60 = memref.alloc() : memref<8xf32>
          scf.yield %alloc_60 : memref<8xf32>
        }
        %246 = vector.shuffle %86, %86 [0, 1, 2, 4, 5, 7, 8, 11, 12, 19, 23, 24, 25, 27] : vector<14x6x3xi32>, vector<14x6x3xi32>
        %247 = math.ceil %21 : tensor<f16>
        %c1_i32_57 = arith.constant 1 : i32
        linalg.yield %c1_i32_57 : i32
      }
    %240 = scf.parallel (%arg0) = (%119) to (%23) step (%c7) init (%true_34) -> i1 {
      %242 = vector.extract_strided_slice %94 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
      %243 = math.log1p %8 : tensor<8xf32>
      %244 = arith.divsi %true_45, %false_44 : i1
      %245 = vector.broadcast %cst_4 : f32 to vector<8xf32>
      %246 = math.atan2 %106, %77 : f16
      %247 = vector.broadcast %c-32746_i16 : i16 to vector<14x8xi16>
      %248 = vector.transfer_write %247, %2[%c5, %c12, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x8xi16>, tensor<6x8x6xi16>
      %249 = math.ctpop %c213424238_i32 : i32
      %250 = index.add %222, %189
      %251 = math.tan %cst_4 : f32
      %252 = vector.flat_transpose %242 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
      %253 = affine.min affine_map<(d0) -> ((d0 * 4) floordiv 8)>(%43)
      %254 = math.floor %cst_32 : f16
      %alloc_56 = memref.alloc() : memref<14x6x3xi32>
      memref.tensor_store %13, %alloc_56 : memref<14x6x3xi32>
      %255 = math.sqrt %21 : tensor<f16>
      %256 = arith.remui %112, %extracted_49 : i32
      %257 = math.round %1 : tensor<6x8x6xf16>
      %false_57 = arith.constant false
      scf.reduce(%false_57)  : i1 {
      ^bb0(%arg1: i1, %arg2: i1):
        bufferization.dealloc_tensor %11 : tensor<6x8x6xf32>
        %258 = math.log1p %cst_1 : f32
        %259 = bufferization.to_tensor %alloc : memref<8xi16>
        %260 = math.ctlz %9 : tensor<6x8x6xi16>
        %261 = affine.min affine_map<(d0, d1, d2) -> (d0)>(%c8, %222, %c11)
        %262 = arith.shrsi %extracted_49, %78 : i32
        %263 = math.sqrt %cst_0 : f16
        %264 = arith.muli %true_45, %true_34 : i1
        %false_58 = arith.constant false
        scf.reduce.return %false_58 : i1
      }
      scf.yield
    }
    %241 = affine.vector_load %180[%c13, %123, %c12] : memref<14x6x3xf16>, vector<8xf16>
    affine.vector_store %186, %alloc_7[%55] : memref<8xf16>, vector<3xf16>
    vector.print %19 : vector<14xi64>
    vector.print %76 : vector<8x3xi16>
    vector.print %84 : vector<14x6x3xi64>
    vector.print %85 : vector<14x6x3xi1>
    vector.print %86 : vector<14x6x3xi32>
    vector.print %87 : vector<14x6x3xi64>
    vector.print %92 : vector<3xi16>
    vector.print %93 : vector<3xi1>
    vector.print %94 : vector<3xi16>
    vector.print %121 : vector<f32>
    vector.print %127 : vector<14x6x3xi16>
    vector.print %138 : vector<14x6x3xi16>
    vector.print %146 : vector<6x8x6xf16>
    vector.print %171 : vector<6x8x6xi64>
    vector.print %177 : vector<8xi32>
    vector.print %186 : vector<3xf16>
    vector.print %212 : vector<6x8x6xi1>
    vector.print %241 : vector<8xf16>
    vector.print %cst : f32
    vector.print %c213424238_i32 : i32
    vector.print %true : i1
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c483662461_i32 : i32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %c1806701373_i64 : i64
    vector.print %c-32746_i16 : i16
    vector.print %c363_i16 : i16
    vector.print %c1450336928_i32 : i32
    vector.print %c1483383456_i64 : i64
    vector.print %c459066806_i64 : i64
    vector.print %cst_5 : f32
    vector.print %false : i1
    vector.print %25 : i32
    vector.print %c1_i32 : i32
    vector.print %77 : f16
    vector.print %78 : i32
    vector.print %cst_32 : f16
    vector.print %106 : f16
    vector.print %109 : f16
    vector.print %c0_i64 : i64
    vector.print %112 : i32
    vector.print %true_34 : i1
    vector.print %117 : f32
    vector.print %c0_i16 : i16
    vector.print %extracted : f16
    vector.print %c1_i32_40 : i32
    vector.print %true_41 : i1
    vector.print %false_44 : i1
    vector.print %202 : i64
    vector.print %true_45 : i1
    vector.print %extracted_49 : i32
    vector.print %c1_i64 : i64
    vector.print %c1_i16 : i16
    return
  }
}
