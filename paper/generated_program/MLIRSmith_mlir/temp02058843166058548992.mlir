module {
  func.func @func1() {
    %cst = arith.constant 1.66349645E+9 : f32
    %c24664_i16 = arith.constant 24664 : i16
    %cst_0 = arith.constant 0x4E0D6435 : f32
    %cst_1 = arith.constant 1.79032858E+9 : f32
    %cst_2 = arith.constant 3.840000e+04 : f16
    %c1274420694_i32 = arith.constant 1274420694 : i32
    %cst_3 = arith.constant 1.98417971E+9 : f32
    %cst_4 = arith.constant 1.91534886E+9 : f32
    %false = arith.constant false
    %c-9657_i16 = arith.constant -9657 : i16
    %c601140914_i32 = arith.constant 601140914 : i32
    %true = arith.constant true
    %cst_5 = arith.constant 2.268800e+04 : f16
    %cst_6 = arith.constant 1.34142771E+9 : f32
    %c104519227_i32 = arith.constant 104519227 : i32
    %cst_7 = arith.constant 3.209600e+04 : f16
    %0 = tensor.empty() : tensor<10x10xi64>
    %1 = tensor.empty() : tensor<10x10xi1>
    %2 = tensor.empty() : tensor<10x10xi16>
    %3 = tensor.empty() : tensor<5xf16>
    %4 = tensor.empty() : tensor<5xi16>
    %5 = tensor.empty() : tensor<10xf16>
    %6 = tensor.empty() : tensor<5xf32>
    %7 = tensor.empty() : tensor<10x10xi32>
    %8 = tensor.empty() : tensor<1x10xi32>
    %9 = tensor.empty() : tensor<10x10xi1>
    %10 = tensor.empty() : tensor<1x10xi1>
    %11 = tensor.empty() : tensor<5xf32>
    %12 = tensor.empty() : tensor<1x10xi1>
    %13 = tensor.empty() : tensor<10xi64>
    %14 = tensor.empty() : tensor<1x10xi64>
    %15 = tensor.empty() : tensor<5xi1>
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
    %alloc_8 = memref.alloc() : memref<1x10xi64>
    %alloc_9 = memref.alloc() : memref<1x10xi1>
    %alloc_10 = memref.alloc() : memref<1x10xi32>
    %alloc_11 = memref.alloc() : memref<10x10xi1>
    %alloc_12 = memref.alloc() : memref<10xi16>
    %alloc_13 = memref.alloc() : memref<10xi1>
    %alloc_14 = memref.alloc() : memref<10xi64>
    %alloc_15 = memref.alloc() : memref<10xf16>
    %alloc_16 = memref.alloc() : memref<10x10xf32>
    %alloc_17 = memref.alloc() : memref<10xi1>
    %alloc_18 = memref.alloc() : memref<1x10xi64>
    %alloc_19 = memref.alloc() : memref<10x10xi16>
    %alloc_20 = memref.alloc() : memref<1x10xf32>
    %alloc_21 = memref.alloc() : memref<5xf32>
    %alloc_22 = memref.alloc() : memref<1x10xi16>
    %16 = tensor.empty() : tensor<10xi64>
    %17 = linalg.copy ins(%13 : tensor<10xi64>) outs(%16 : tensor<10xi64>) -> tensor<10xi64>
    %alloc_23 = memref.alloc() : memref<5xf16>
    linalg.transpose ins(%3 : tensor<5xf16>) outs(%alloc_23 : memref<5xf16>) permutation = [0] 
    %alloc_24 = memref.alloc() : memref<f16>
    linalg.reduce ins(%5 : tensor<10xf16>) outs(%alloc_24 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %246 = index.mul %c10, %c8
        %247 = math.exp %cst_7 : f16
        %248 = index.divu %c12, %c5
        %249 = index.mul %c10, %c10
        %250 = arith.shli %false, %true : i1
        %251 = arith.ceildivsi %c1274420694_i32, %c601140914_i32 : i32
        %252 = math.copysign %init, %cst_7 : f16
        %253 = math.ctpop %7 : tensor<10x10xi32>
        %cst_52 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_52 : f16
      }
    scf.parallel (%arg0) = (%c0) to (%c5) step (%c11) {
      %246 = arith.xori %true, %true : i1
      %c0_i64_52 = arith.constant 0 : i64
      %247 = vector.broadcast %c0_i64_52 : i64 to vector<1xi64>
      %248 = vector.insert %c0_i64_52, %247 [0] : i64 into vector<1xi64>
      %249 = arith.xori %c104519227_i32, %c104519227_i32 : i32
      %250 = index.add %c2, %c13
      %251 = memref.load %alloc_14[%c5] : memref<10xi64>
      %252 = memref.realloc %alloc : memref<5xi1> to memref<5xi1>
      %253 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %253, %alloc_17[%c10] : vector<i1>, memref<10xi1>
      %254 = affine.load %alloc_18[%c0, %c7] : memref<1x10xi64>
      %255 = math.cos %5 : tensor<10xf16>
      %256 = vector.broadcast %cst_6 : f32 to vector<5xf32>
      %257 = vector.fma %256, %256, %256 : vector<5xf32>
      %258 = arith.minui %c104519227_i32, %c104519227_i32 : i32
      memref.tensor_store %11, %alloc_21 : memref<5xf32>
      %259 = arith.mulf %cst, %cst_1 : f32
      %260 = arith.ori %c24664_i16, %c-9657_i16 : i16
      %261 = math.log1p %cst_6 : f32
      vector.print %253 : vector<i1>
      scf.yield
    }
    %18 = affine.vector_load %alloc_21[%c11] : memref<5xf32>, vector<10xf32>
    affine.vector_store %18, %alloc_21[%c0] : memref<5xf32>, vector<10xf32>
    %19 = tensor.empty() : tensor<10xi1>
    %20 = tensor.empty() : tensor<i1>
    %21 = linalg.dot ins(%alloc_17, %19 : memref<10xi1>, tensor<10xi1>) outs(%20 : tensor<i1>) -> tensor<i1>
    %22 = affine.if affine_set<(d0, d1) : (d0 mod 64 == 0, d0 floordiv 16 - 2 >= 0)>(%c15, %c2) -> f32 {
      %246 = tensor.empty() : tensor<5xi32>
      %247 = math.fpowi %11, %246 : tensor<5xf32>, tensor<5xi32>
      %248 = arith.remsi %c-9657_i16, %c24664_i16 : i16
      %true_52 = index.bool.constant true
      scf.execute_region {
        %252 = arith.remsi %c-9657_i16, %c24664_i16 : i16
        %253 = vector.extract %18[7] : vector<10xf32>
        %254 = bufferization.to_memref %19 : memref<10xi1>
        %alloc_54 = memref.alloc() : memref<10x10xf32>
        %255 = bufferization.clone %alloc_22 : memref<1x10xi16> to memref<1x10xi16>
        %256 = arith.remf %cst_1, %cst_3 : f32
        %257 = vector.broadcast %c0 : index to vector<10xindex>
        %258 = vector.broadcast %true : i1 to vector<10xi1>
        %c1_i64 = arith.constant 1 : i64
        %259 = vector.broadcast %c1_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_14[%c4] [%257], %258, %259 : memref<10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %splat_55 = tensor.splat %cst_2 : tensor<5xf16>
        %260 = math.copysign %cst_4, %cst_0 : f32
        %extracted_56 = tensor.extract %4[%c1] : tensor<5xi16>
        %261 = arith.cmpf ueq, %cst, %cst_3 : f32
        %262 = vector.extract %18[8] : vector<10xf32>
        %263 = math.ipowi %c104519227_i32, %c601140914_i32 : i32
        %264 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
        %265 = vector.broadcast %false : i1 to vector<10x10xi1>
        %266 = vector.broadcast %c1274420694_i32 : i32 to vector<10x10xi32>
        %267 = vector.gather %6[%c15] [%266], %265, %264 : tensor<5xf32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf32> into vector<10x10xf32>
        %268 = arith.remf %cst, %cst_1 : f32
        memref.copy %alloc_17, %254 : memref<10xi1> to memref<10xi1>
        scf.yield
      }
      %249 = vector.reduction <minf>, %18 : vector<10xf32> into f32
      %collapsed_53 = tensor.collapse_shape %7 [[0, 1]] : tensor<10x10xi32> into tensor<100xi32>
      %250 = vector.splat %c601140914_i32 : vector<10xi32>
      %251 = arith.remf %cst_4, %cst : f32
      affine.yield %cst_4 : f32
    } else {
      %true_52 = index.bool.constant true
      %246 = arith.cmpf une, %cst_2, %cst_7 : f16
      %247 = math.ctlz %16 : tensor<10xi64>
      %inserted_53 = tensor.insert %cst_4 into %6[%c0] : tensor<5xf32>
      %248 = math.roundeven %cst_2 : f16
      memref.store %cst_6, %alloc_16[%c5, %c5] : memref<10x10xf32>
      %249 = arith.addi %true, %true_52 : i1
      %250 = math.cttz %21 : tensor<i1>
      affine.yield %cst_3 : f32
    }
    affine.for %arg0 = 0 to 103 {
    }
    %23 = arith.divui %c24664_i16, %c24664_i16 : i16
    %24 = math.round %cst_2 : f16
    %25 = math.fpowi %cst_7, %c601140914_i32 : f16, i32
    %26 = scf.if %false -> (memref<10xi16>) {
      %246 = math.tan %3 : tensor<5xf16>
      %collapsed_52 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x10xi64> into tensor<10xi64>
      %247 = arith.shli %c-9657_i16, %c24664_i16 : i16
      %248 = math.round %cst_5 : f16
      %249 = arith.floordivsi %c24664_i16, %c24664_i16 : i16
      %250 = math.exp %3 : tensor<5xf16>
      %251 = math.log %cst_4 : f32
      %252 = vector.bitcast %18 : vector<10xf32> to vector<10xf32>
      scf.yield %alloc_12 : memref<10xi16>
    } else {
      %246 = math.copysign %5, %5 : tensor<10xf16>
      %247 = arith.ceildivsi %c1274420694_i32, %c104519227_i32 : i32
      %c1_i64 = arith.constant 1 : i64
      %248 = vector.broadcast %c1_i64 : i64 to vector<10x10x10xi64>
      %249 = vector.broadcast %c1_i64 : i64 to vector<10x10xi64>
      %dest, %accumulated_value = vector.scan <maxui>, %248, %249 {inclusive = false, reduction_dim = 2 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
      %250 = tensor.empty() : tensor<1x10xi16>
      %251 = vector.broadcast %c24664_i16 : i16 to vector<10xi16>
      %252 = vector.broadcast %true : i1 to vector<10xi1>
      %253 = vector.broadcast %c1274420694_i32 : i32 to vector<10xi32>
      %254 = vector.gather %250[%c7, %c5] [%253], %252, %251 : tensor<1x10xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      %255 = vector.broadcast %c104519227_i32 : i32 to vector<10x10xi32>
      %256 = vector.outerproduct %253, %253, %255 {kind = #vector.kind<and>} : vector<10xi32>, vector<10xi32>
      %257 = vector.splat %cst_5 : vector<10x10xf16>
      %258 = math.cttz %15 : tensor<5xi1>
      %259 = math.fpowi %cst_1, %c601140914_i32 : f32, i32
      scf.yield %alloc_12 : memref<10xi16>
    }
    %inserted = tensor.insert %cst into %11[%c1] : tensor<5xf32>
    %27 = math.log2 %cst_1 : f32
    %expanded = tensor.expand_shape %6 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
    %28 = arith.subi %c104519227_i32, %c104519227_i32 : i32
    %29 = vector.flat_transpose %18 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
    %30 = math.log1p %cst : f32
    %31 = index.ceildivu %c5, %c7
    %32 = arith.xori %c-9657_i16, %c24664_i16 : i16
    vector.print %18 : vector<10xf32>
    %33 = math.log1p %cst_0 : f32
    %34 = index.floordivs %c13, %c9
    %35 = affine.min affine_map<(d0) -> (d0 * 2, (d0 ceildiv 16 - d0) mod 128 - (d0 * 2 - d0 ceildiv 16 + 64))>(%c5)
    %36 = math.round %cst_2 : f16
    %true_25 = index.bool.constant true
    %alloc_26 = memref.alloc() : memref<1x10xf32>
    memref.copy %alloc_20, %alloc_26 : memref<1x10xf32> to memref<1x10xf32>
    %alloc_27 = memref.alloc() : memref<5xi1>
    memref.copy %alloc, %alloc_27 : memref<5xi1> to memref<5xi1>
    %37 = math.copysign %cst_2, %cst_7 : f16
    %38 = math.cttz %7 : tensor<10x10xi32>
    %39 = arith.negf %cst_4 : f32
    %40 = vector.bitcast %18 : vector<10xf32> to vector<10xf32>
    %splat = tensor.splat %cst_6 : tensor<5xf32>
    %41 = vector.broadcast %false : i1 to vector<10x10xi1>
    %42 = vector.broadcast %c1274420694_i32 : i32 to vector<10x10xi32>
    %43 = vector.gather %alloc[%c12] [%42], %41, %41 : memref<5xi1>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi1> into vector<10x10xi1>
    %44 = vector.bitcast %40 : vector<10xf32> to vector<10xi32>
    scf.index_switch %c1 
    case 1 {
      %246 = vector.reduction <mul>, %29 : vector<10xf32> into f32
      %expanded_52 = tensor.expand_shape %5 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
      %247 = math.ipowi %1, %9 : tensor<10x10xi1>
      %248 = arith.divui %c-9657_i16, %c-9657_i16 : i16
      %249 = vector.shuffle %44, %44 [0, 1, 2, 3, 4, 5, 6, 7, 8, 11, 14, 15, 18] : vector<10xi32>, vector<10xi32>
      %250 = math.round %cst_5 : f16
      %251 = arith.minf %cst_2, %cst_2 : f16
      %252 = index.casts %true_25 : i1 to index
      affine.for %arg0 = 0 to 15 {
      }
      %253 = math.log1p %5 : tensor<10xf16>
      %254 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
      %255 = vector.outerproduct %18, %29, %254 {kind = #vector.kind<maxf>} : vector<10xf32>, vector<10xf32>
      %256 = vector.create_mask %c5 : vector<10xi1>
      %257 = index.floordivs %c14, %c13
      %258 = vector.bitcast %40 : vector<10xf32> to vector<10xf32>
      %259 = arith.maxsi %false, %false : i1
      %260 = arith.mulf %cst_2, %cst_2 : f16
      scf.yield
    }
    case 2 {
      %246 = tensor.empty() : tensor<1x10xi64>
      %mapped_52 = linalg.map ins(%alloc_18, %alloc_18, %alloc_18 : memref<1x10xi64>, memref<1x10xi64>, memref<1x10xi64>) outs(%246 : tensor<1x10xi64>)
        (%in: i64, %in_56: i64, %in_57: i64) {
          %260 = vector.broadcast %cst_0 : f32 to vector<10x10xf32>
          %261 = vector.outerproduct %18, %29, %260 {kind = #vector.kind<add>} : vector<10xf32>, vector<10xf32>
          %262 = index.mul %c10, %c8
          %263 = index.floordivs %c7, %c12
          memref.copy %alloc_17, %alloc_13 : memref<10xi1> to memref<10xi1>
          affine.store %true_25, %alloc_9[%c4, %c13] : memref<1x10xi1>
          vector.print %29 : vector<10xf32>
          %264 = arith.minsi %c1274420694_i32, %c104519227_i32 : i32
          %265 = arith.maxsi %c1274420694_i32, %c1274420694_i32 : i32
          %266 = index.castu %c13 : index to i32
          %267 = math.rsqrt %3 : tensor<5xf16>
          %268 = index.divu %c5, %c14
          %alloc_58 = memref.alloc() : memref<10x10xf16>
          %269 = vector.broadcast %cst_5 : f16 to vector<10xf16>
          %270 = vector.broadcast %true : i1 to vector<10xi1>
          %271 = vector.gather %alloc_58[%c7, %c7] [%44], %270, %269 : memref<10x10xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
          %272 = vector.broadcast %true : i1 to vector<i1>
          vector.transfer_write %272, %alloc_17[%c11] : vector<i1>, memref<10xi1>
          %alloc_59 = memref.alloc() : memref<1x10xi64>
          %273 = math.floor %11 : tensor<5xf32>
          %274 = vector.flat_transpose %271 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
          %275 = memref.load %alloc_12[%c7] : memref<10xi16>
          %276 = vector.broadcast %c3 : index to vector<10xindex>
          %277 = vector.broadcast %in_56 : i64 to vector<10xi64>
          vector.scatter %alloc_8[%c0, %c3] [%276], %270, %277 : memref<1x10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
          %278 = math.log2 %cst_4 : f32
          %279 = arith.addi %c1274420694_i32, %c1274420694_i32 : i32
          %280 = index.divu %c12, %c14
          %281 = arith.muli %in_57, %in_57 : i64
          %282 = arith.shrsi %true_25, %true_25 : i1
          %rank = tensor.rank %15 : tensor<5xi1>
          %283 = vector.broadcast %cst_7 : f16 to vector<10x10xf16>
          %284 = vector.outerproduct %271, %274, %283 {kind = #vector.kind<maxf>} : vector<10xf16>, vector<10xf16>
          %285 = math.absi %0 : tensor<10x10xi64>
          %286 = arith.muli %false, %true : i1
          %287 = arith.remf %cst_7, %cst_5 : f16
          %288 = math.log %6 : tensor<5xf32>
          %289 = math.exp %cst_3 : f32
          %290 = arith.mulf %cst_6, %cst_0 : f32
          %291 = math.exp %cst_5 : f16
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %247 = arith.addi %false, %true_25 : i1
      %alloc_53 = memref.alloc() : memref<i1>
      memref.tensor_store %20, %alloc_53 : memref<i1>
      %248 = arith.maxf %cst_2, %cst_7 : f16
      %249 = vector.shuffle %40, %29 [4, 5, 10, 11, 12, 14, 15, 16, 18] : vector<10xf32>, vector<10xf32>
      %250 = math.log %11 : tensor<5xf32>
      %alloc_54 = memref.alloc() : memref<1x10xf32>
      memref.copy %alloc_20, %alloc_54 : memref<1x10xf32> to memref<1x10xf32>
      %251 = math.tan %11 : tensor<5xf32>
      %252 = vector.broadcast %c2 : index to vector<5xindex>
      %253 = vector.broadcast %true : i1 to vector<5xi1>
      vector.scatter %alloc_13[%c2] [%252], %253, %253 : memref<10xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      %254 = math.log %cst_1 : f32
      %255 = memref.atomic_rmw minu %c-9657_i16, %alloc_19[%c3, %c5] : (i16, memref<10x10xi16>) -> i16
      %256 = tensor.empty() : tensor<10xi16>
      %257 = vector.create_mask %c4 : vector<5xi1>
      %258 = arith.cmpf uno, %cst_5, %cst_7 : f16
      %true_55 = index.bool.constant true
      %259 = bufferization.to_memref %12 : memref<1x10xi1>
      scf.yield
    }
    case 3 {
      %246 = vector.bitcast %44 : vector<10xi32> to vector<10xi32>
      %247 = math.log1p %cst_2 : f16
      %248 = vector.shuffle %29, %40 [1, 2, 4, 6, 8, 10, 11, 12, 13, 15, 16, 17, 18, 19] : vector<10xf32>, vector<10xf32>
      affine.for %arg0 = 0 to 111 {
      }
      %249 = arith.shrui %false, %false : i1
      %250 = math.tan %5 : tensor<10xf16>
      %c1_i64 = arith.constant 1 : i64
      memref.store %c1_i64, %alloc_18[%c0, %c1] : memref<1x10xi64>
      %251 = tensor.empty() : tensor<5xi32>
      %252 = math.fpowi %splat, %251 : tensor<5xf32>, tensor<5xi32>
      %cast = tensor.cast %9 : tensor<10x10xi1> to tensor<?x?xi1>
      %expanded_52 = tensor.expand_shape %11 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
      %253 = bufferization.clone %alloc_12 : memref<10xi16> to memref<10xi16>
      %254 = arith.minsi %true_25, %true : i1
      %255 = math.copysign %11, %6 : tensor<5xf32>
      %256 = vector.create_mask %c12, %31 : vector<1x10xi1>
      %257 = math.log2 %cst_4 : f32
      %258 = vector.broadcast %cst_5 : f16 to vector<f16>
      vector.transfer_write %258, %alloc_23[%c7] : vector<f16>, memref<5xf16>
      scf.yield
    }
    case 4 {
      %246 = vector.broadcast %cst_6 : f32 to vector<1x10xf32>
      %247 = vector.fma %246, %246, %246 : vector<1x10xf32>
      %248 = scf.execute_region -> memref<1x10xi1> {
        %263 = arith.mulf %cst_6, %cst_1 : f32
        %264 = math.ipowi %13, %13 : tensor<10xi64>
        %265 = math.log %6 : tensor<5xf32>
        %266 = math.ipowi %c1274420694_i32, %c1274420694_i32 : i32
        %267 = math.sqrt %cst_2 : f16
        %268 = index.add %c7, %31
        %269 = vector.broadcast %false : i1 to vector<10xi1>
        %270 = vector.insert %269, %41 [6] : vector<10xi1> into vector<10x10xi1>
        %271 = math.cttz %1 : tensor<10x10xi1>
        memref.tensor_store %11, %alloc_21 : memref<5xf32>
        %272 = affine.load %alloc[%c10] : memref<5xi1>
        %273 = tensor.empty() : tensor<10xi16>
        %274 = vector.broadcast %c-9657_i16 : i16 to vector<10x10xi16>
        %275 = vector.gather %273[%c6] [%42], %41, %274 : tensor<10xi16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi16> into vector<10x10xi16>
        vector.print %43 : vector<10x10xi1>
        %276 = vector.broadcast %c2 : index to vector<10xindex>
        %277 = vector.broadcast %c-9657_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_19[%c8, %c6] [%276], %269, %277 : memref<10x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %278 = index.divs %c10, %35
        %279 = index.ceildivu %c2, %c11
        %280 = arith.maxsi %false, %true_25 : i1
        scf.yield %alloc_9 : memref<1x10xi1>
      }
      %249 = index.divu %c6, %c7
      %250 = tensor.empty() : tensor<5x5x5xi64>
      %alloc_52 = memref.alloc() : memref<5x5xi64>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_52, %alloc_52 : memref<5x5xi64>, memref<5x5xi64>, memref<5x5xi64>) outs(%250 : tensor<5x5x5xi64>) {
      ^bb0(%in: i64, %in_54: i64, %in_55: i64, %out: i64):
        memref.copy %alloc_9, %248 : memref<1x10xi1> to memref<1x10xi1>
        %263 = vector.create_mask %c10, %c12 : vector<1x10xi1>
        %264 = math.ipowi %17, %16 : tensor<10xi64>
        %265 = arith.addi %c-9657_i16, %c24664_i16 : i16
        %266 = math.rsqrt %11 : tensor<5xf32>
        %267 = math.cos %cst_7 : f16
        %268 = arith.mulf %cst_3, %cst_3 : f32
        %269 = index.ceildivs %c7, %c10
        %270 = vector.load %alloc_11[%c2, %c4] : memref<10x10xi1>, vector<10x10xi1>
        %271 = math.round %11 : tensor<5xf32>
        %272 = vector.broadcast %cst_6 : f32 to vector<10xf32>
        %273 = vector.fma %272, %40, %18 : vector<10xf32>
        %274 = tensor.empty() : tensor<1x10xf32>
        %275 = tensor.empty() : tensor<5xi32>
        %276 = math.fpowi %3, %275 : tensor<5xf16>, tensor<5xi32>
        %277 = vector.flat_transpose %18 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %true_56 = index.bool.constant true
        %278 = math.exp %cst_0 : f32
        %cst_57 = arith.constant 1.00799706E+9 : f32
        %alloc_58 = memref.alloc() : memref<1x10xi1>
        %279 = math.atan %cst_3 : f32
        %280 = arith.addi %false, %false : i1
        %281 = index.divu %c12, %c0
        %282 = arith.shrsi %c24664_i16, %c24664_i16 : i16
        %283 = memref.atomic_rmw maxu %c24664_i16, %alloc_22[%c0, %c0] : (i16, memref<1x10xi16>) -> i16
        %284 = index.sub %281, %c12
        %285 = vector.insert %cst, %277 [6] : f32 into vector<10xf32>
        %286 = index.castu %c15 : index to i32
        %287 = vector.insert %c104519227_i32, %44 [2] : i32 into vector<10xi32>
        %288 = index.ceildivu %c3, %c12
        %alloca_59 = memref.alloca() : memref<1x10xi32>
        %289 = memref.atomic_rmw minf %cst_1, %alloc_20[%c0, %c9] : (f32, memref<1x10xf32>) -> f32
        memref.store %cst_2, %alloc_15[%c8] : memref<10xf16>
        %290 = math.log %cst_5 : f16
        linalg.yield %in_55 : i64
      } -> tensor<5x5x5xi64>
      %252 = arith.addf %cst_5, %cst_5 : f16
      %253 = vector.broadcast %cst_0 : f32 to vector<10x10xf32>
      %254 = vector.outerproduct %29, %29, %253 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
      %255 = arith.maxsi %true, %true : i1
      %true_53 = index.bool.constant true
      %256 = index.divu %249, %249
      %257 = vector.matrix_multiply %29, %29 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
      %258 = math.ctlz %14 : tensor<1x10xi64>
      %259 = arith.minui %c1274420694_i32, %c104519227_i32 : i32
      %260 = math.ctpop %2 : tensor<10x10xi16>
      scf.index_switch %c0 
      case 1 {
        %c0_i64_54 = arith.constant 0 : i64
        %inserted_55 = tensor.insert %c0_i64_54 into %14[%c0, %c7] : tensor<1x10xi64>
        %alloc_56 = memref.alloc() : memref<10xf16>
        %263 = math.cttz %16 : tensor<10xi64>
        memref.assume_alignment %alloc_22, 4 : memref<1x10xi16>
        %264 = vector.broadcast %cst_0 : f32 to vector<10x10xf32>
        %265 = vector.fma %264, %264, %264 : vector<10x10xf32>
        %266 = index.add %c12, %c9
        %267 = vector.broadcast %c0_i64_54 : i64 to vector<i64>
        vector.transfer_write %267, %alloc_14[%c13] : vector<i64>, memref<10xi64>
        %268 = math.ctpop %14 : tensor<1x10xi64>
        memref.copy %alloc_18, %alloc_8 : memref<1x10xi64> to memref<1x10xi64>
        %269 = math.copysign %cst_4, %cst_3 : f32
        %270 = vector.matrix_multiply %40, %257 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<1xf32>) -> vector<10xf32>
        %271 = math.exp2 %11 : tensor<5xf32>
        memref.assume_alignment %alloc_17, 2 : memref<10xi1>
        %272 = math.floor %cst : f32
        %273 = arith.ori %c0_i64_54, %c0_i64_54 : i64
        %274 = math.log %3 : tensor<5xf16>
        scf.yield
      }
      default {
        %expanded_54 = tensor.expand_shape %17 [[0, 1]] : tensor<10xi64> into tensor<10x1xi64>
        %263 = math.cos %6 : tensor<5xf32>
        %264 = index.mul %c4, %c7
        %265 = math.copysign %11, %6 : tensor<5xf32>
        %266 = math.sqrt %5 : tensor<10xf16>
        affine.store %c-9657_i16, %alloc_22[%c7, %c5] : memref<1x10xi16>
        vector.print %257 : vector<1xf32>
        %267 = math.atan %cst_5 : f16
        %268 = math.copysign %cst_3, %cst_0 : f32
        %269 = arith.muli %true, %false : i1
        %270 = tensor.empty() : tensor<5x1xi32>
        %271 = math.fpowi %expanded, %270 : tensor<5x1xf32>, tensor<5x1xi32>
        %expanded_55 = tensor.expand_shape %4 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
        memref.assume_alignment %alloc_23, 8 : memref<5xf16>
        vector.print %44 : vector<10xi32>
        %272 = arith.divsi %c601140914_i32, %c104519227_i32 : i32
        %273 = arith.addi %c-9657_i16, %c24664_i16 : i16
      }
      %261 = index.maxs %c13, %c6
      %262 = math.absi %true_53 : i1
      scf.yield
    }
    default {
      %246 = bufferization.clone %alloc_9 : memref<1x10xi1> to memref<1x10xi1>
      %247 = math.cttz %8 : tensor<1x10xi32>
      %false_52 = index.bool.constant false
      %248 = arith.shrui %false_52, %false : i1
      %249 = vector.broadcast %cst_2 : f16 to vector<f16>
      vector.transfer_write %249, %alloc_15[%31] : vector<f16>, memref<10xf16>
      %250 = index.floordivs %c1, %c8
      %251 = math.tan %3 : tensor<5xf16>
      %252 = math.log %6 : tensor<5xf32>
      %253 = math.exp %splat : tensor<5xf32>
      %254 = math.atan %11 : tensor<5xf32>
      %alloc_53 = memref.alloc() : memref<10x10xi1>
      memref.copy %alloc_11, %alloc_53 : memref<10x10xi1> to memref<10x10xi1>
      %255 = arith.mulf %cst_0, %cst : f32
      %256 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
      %257 = vector.outerproduct %40, %18, %256 {kind = #vector.kind<add>} : vector<10xf32>, vector<10xf32>
      %258 = index.maxu %c5, %c12
      affine.store %true, %alloc_17[%c6] : memref<10xi1>
      %259 = math.absf %cst_2 : f16
    }
    %45 = tensor.empty() : tensor<10x10xi1>
    %46 = linalg.matmul ins(%1, %9 : tensor<10x10xi1>, tensor<10x10xi1>) outs(%45 : tensor<10x10xi1>) -> tensor<10x10xi1>
    %47 = math.floor %cst_5 : f16
    %alloc_28 = memref.alloc() : memref<1x10xi32>
    memref.copy %alloc_10, %alloc_28 : memref<1x10xi32> to memref<1x10xi32>
    %48 = memref.realloc %alloc_13 : memref<10xi1> to memref<10xi1>
    %49 = math.floor %cst_6 : f32
    %50 = arith.minf %cst_6, %cst_6 : f32
    %51 = bufferization.to_memref %3 : memref<5xf16>
    %52 = arith.negf %cst_4 : f32
    %53 = index.floordivs %c3, %c15
    %54 = memref.load %alloc_24[] : memref<f16>
    %55 = vector.matrix_multiply %18, %18 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
    %56 = math.ceil %cst_7 : f16
    %57 = arith.maxsi %c1274420694_i32, %c1274420694_i32 : i32
    %58 = vector.matrix_multiply %55, %40 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xf32>, vector<10xf32>) -> vector<10xf32>
    %59 = math.tan %cst_5 : f16
    %60 = memref.realloc %26 : memref<10xi16> to memref<10xi16>
    %61 = vector.bitcast %18 : vector<10xf32> to vector<10xf32>
    %62 = arith.negf %cst_5 : f16
    %alloc_29 = memref.alloc() : memref<10x10xf32>
    %63 = arith.maxsi %c1274420694_i32, %c1274420694_i32 : i32
    %64 = math.copysign %cst_6, %cst : f32
    %65 = arith.floordivsi %c-9657_i16, %c-9657_i16 : i16
    memref.assume_alignment %alloc_19, 16 : memref<10x10xi16>
    %66 = index.castu %c12 : index to i32
    memref.store %c-9657_i16, %26[%c7] : memref<10xi16>
    %67 = math.log2 %5 : tensor<10xf16>
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<1x10xi1> into tensor<10xi1>
    %68 = vector.broadcast %false : i1 to vector<10xi1>
    %69 = vector.maskedload %alloc_20[%c0, %c9], %68, %29 : memref<1x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
    %70 = math.copysign %cst_0, %cst_4 : f32
    %71 = math.roundeven %3 : tensor<5xf16>
    %72 = math.log10 %6 : tensor<5xf32>
    %73 = vector.broadcast %c2 : index to vector<1xindex>
    %74 = vector.broadcast %false : i1 to vector<1xi1>
    vector.scatter %alloc_9[%c0, %c3] [%73], %74, %74 : memref<1x10xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    affine.store %c24664_i16, %alloc_12[%c14] : memref<10xi16>
    %collapsed_30 = tensor.collapse_shape %expanded [[0, 1]] : tensor<5x1xf32> into tensor<5xf32>
    %inserted_31 = tensor.insert %cst_6 into %11[%c3] : tensor<5xf32>
    %75 = arith.negf %cst : f32
    %76 = index.maxs %c14, %c9
    memref.tensor_store %collapsed_30, %alloc_21 : memref<5xf32>
    %77 = memref.load %alloc_14[%c4] : memref<10xi64>
    %78 = arith.remsi %c-9657_i16, %c24664_i16 : i16
    %79 = math.atan %cst_0 : f32
    %80 = tensor.empty() : tensor<10x10xi1>
    affine.for %arg0 = 0 to 64 {
    }
    %81 = vector.create_mask %c4 : vector<10xi1>
    %82 = arith.shli %c24664_i16, %c24664_i16 : i16
    %83 = index.floordivs %c12, %c11
    %84 = arith.minui %true_25, %true_25 : i1
    %c0_i64 = arith.constant 0 : i64
    affine.store %c0_i64, %alloc_14[%c9] : memref<10xi64>
    %85 = vector.extract_strided_slice %69 {offsets = [2], sizes = [1], strides = [1]} : vector<10xf32> to vector<1xf32>
    %86 = vector.insert %true, %68 [3] : i1 into vector<10xi1>
    %87 = vector.broadcast %31 : index to vector<10xindex>
    vector.scatter %alloc_16[%c4, %c7] [%87], %68, %69 : memref<10x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
    %88 = math.cttz %c1274420694_i32 : i32
    %89 = math.ipowi %15, %15 : tensor<5xi1>
    %90 = math.cttz %c104519227_i32 : i32
    %91 = tensor.empty() : tensor<5xi32>
    %92 = math.fpowi %3, %91 : tensor<5xf16>, tensor<5xi32>
    %93 = math.cttz %0 : tensor<10x10xi64>
    %94 = math.cttz %collapsed : tensor<10xi1>
    memref.copy %alloc_17, %alloc_13 : memref<10xi1> to memref<10xi1>
    %95 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
    %96 = vector.outerproduct %61, %29, %95 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
    %97 = math.floor %11 : tensor<5xf32>
    %98 = arith.addf %cst_7, %cst_7 : f16
    memref.store %c24664_i16, %alloc_12[%c3] : memref<10xi16>
    affine.store %c24664_i16, %26[%c8] : memref<10xi16>
    %99 = arith.divui %c0_i64, %c0_i64 : i64
    %100 = index.ceildivu %31, %c8
    %101 = arith.minsi %c24664_i16, %c-9657_i16 : i16
    memref.tensor_store %10, %alloc_9 : memref<1x10xi1>
    %102 = index.add %c6, %c7
    %103 = arith.remf %cst_5, %cst_2 : f16
    %104 = math.ipowi %1, %1 : tensor<10x10xi1>
    %105 = affine.load %alloc_20[%c2, %c10] : memref<1x10xf32>
    %106 = tensor.empty() : tensor<5x5x5xi64>
    %107 = tensor.empty() : tensor<5xi64>
    %alloc_32 = memref.alloc() : memref<5x5xi64>
    %108 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%107, %107, %alloc_32 : tensor<5xi64>, tensor<5xi64>, memref<5x5xi64>) outs(%106 : tensor<5x5x5xi64>) {
    ^bb0(%in: i64, %in_52: i64, %in_53: i64, %out: i64):
      %246 = arith.negf %cst : f32
      %247 = scf.while (%arg0 = %cst_6) : (f32) -> f32 {
        %277 = vector.broadcast %cst_6 : f32 to vector<5xf32>
        %278 = vector.fma %277, %277, %277 : vector<5xf32>
        %279 = index.ceildivs %c3, %c14
        %280 = vector.broadcast %279 : index to vector<10xindex>
        vector.scatter %alloc_9[%c0, %c8] [%280], %81, %68 : memref<1x10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %281 = vector.load %alloc_17[%c8] : memref<10xi1>, vector<5xi1>
        %282 = index.maxs %c15, %c11
        %true_55 = index.bool.constant true
        %283 = math.cttz %13 : tensor<10xi64>
        %284 = math.ipowi %15, %15 : tensor<5xi1>
        scf.condition(%false) %cst_1 : f32
      } do {
      ^bb0(%arg0: f32):
        %277 = math.powf %cst_5, %cst_7 : f16
        %278 = index.add %c8, %c13
        %279 = vector.create_mask %102 : vector<10xi1>
        %280 = index.floordivs %53, %c7
        %281 = math.ipowi %45, %1 : tensor<10x10xi1>
        %282 = index.add %102, %c8
        %283 = bufferization.clone %alloc_16 : memref<10x10xf32> to memref<10x10xf32>
        %284 = math.ipowi %1, %1 : tensor<10x10xi1>
        %dest, %accumulated_value = vector.scan <maxui>, %41, %68 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10xi1>, vector<10xi1>
        %285 = vector.extract %85[0] : vector<1xf32>
        %286 = index.maxu %c13, %76
        %287 = index.castu %true_25 : i1 to index
        %288 = arith.remsi %in, %in_53 : i64
        %splat_55 = tensor.splat %cst : tensor<10x10xf32>
        %289 = math.cttz %in_52 : i64
        %290 = vector.bitcast %29 : vector<10xf32> to vector<10xf32>
        scf.yield %cst_6 : f32
      }
      %248 = tensor.empty() : tensor<10x10xi32>
      %249 = linalg.matmul ins(%7, %7 : tensor<10x10xi32>, tensor<10x10xi32>) outs(%248 : tensor<10x10xi32>) -> tensor<10x10xi32>
      vector.print %40 : vector<10xf32>
      %250 = math.cttz %20 : tensor<i1>
      %251 = index.castu %in_52 : i64 to index
      %252 = arith.negf %105 : f32
      %253 = affine.apply affine_map<(d0, d1) -> (d0 * 64)>(%c4, %83)
      %extracted_54 = tensor.extract %16[%c6] : tensor<10xi64>
      memref.store %false, %alloc_13[%c2] : memref<10xi1>
      %254 = math.log %cst_1 : f32
      %255 = vector.extract %81[8] : vector<10xi1>
      %256 = index.ceildivu %c11, %c10
      %257 = vector.load %alloc_23[%c1] : memref<5xf16>, vector<10x10xf16>
      %258 = bufferization.to_memref %7 : memref<10x10xi32>
      %259 = arith.negf %cst_1 : f32
      %260 = memref.atomic_rmw mins %c-9657_i16, %alloc_19[%c6, %c7] : (i16, memref<10x10xi16>) -> i16
      %261 = index.mul %c10, %c14
      %262 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
      %263 = vector.outerproduct %29, %18, %262 {kind = #vector.kind<maxf>} : vector<10xf32>, vector<10xf32>
      %264 = math.log %5 : tensor<10xf16>
      %265 = affine.max affine_map<(d0) -> (d0 * 5 + 8, (d0 * -2) ceildiv 128, (d0 * -2) ceildiv 128)>(%256)
      %266 = arith.remsi %in_53, %out : i64
      %267 = affine.if affine_set<(d0, d1) : ((d0 - 64) ceildiv 16 >= 0, d1 >= 0)>(%c5, %c15) -> memref<10x10xf16> {
        %277 = bufferization.to_memref %4 : memref<5xi16>
        %278 = vector.reduction <mul>, %58 : vector<10xf32> into f32
        %279 = math.fpowi %cst_3, %c1274420694_i32 : f32, i32
        %280 = math.powf %cst_0, %cst_3 : f32
        %281 = index.floordivs %c13, %c4
        %282 = vector.create_mask %31, %265 : vector<1x10xi1>
        %283 = index.maxs %c5, %281
        %alloca_55 = memref.alloca() : memref<10xi16>
        %alloc_56 = memref.alloc() : memref<10x10xf16>
        affine.yield %alloc_56 : memref<10x10xf16>
      } else {
        %inserted_55 = tensor.insert %true_25 into %80[%c3, %c9] : tensor<10x10xi1>
        %expanded_56 = tensor.expand_shape %45 [[0], [1, 2]] : tensor<10x10xi1> into tensor<10x10x1xi1>
        %277 = index.divs %34, %35
        %278 = index.floordivs %c1, %c8
        %alloc_57 = memref.alloc() : memref<10x10xi64>
        %279 = vector.broadcast %in : i64 to vector<5xi64>
        %280 = vector.broadcast %false : i1 to vector<5xi1>
        %281 = vector.broadcast %c104519227_i32 : i32 to vector<5xi32>
        %282 = vector.gather %alloc_57[%34, %c8] [%281], %280, %279 : memref<10x10xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %283 = math.log1p %3 : tensor<5xf16>
        %284 = arith.subi %c0_i64, %in_52 : i64
        %285 = index.mul %256, %34
        %alloc_58 = memref.alloc() : memref<10x10xf16>
        affine.yield %alloc_58 : memref<10x10xf16>
      }
      %268 = arith.minsi %extracted_54, %c0_i64 : i64
      %269 = arith.muli %true_25, %true : i1
      %270 = vector.load %258[%c9, %c7] : memref<10x10xi32>, vector<1x10xi32>
      %271 = scf.if %false -> (memref<1x10xi1>) {
        %277 = math.absf %cst_4 : f32
        %splat_55 = tensor.splat %in : tensor<10x10xi64>
        %278 = arith.mulf %cst_1, %cst_0 : f32
        %279 = arith.maxsi %true_25, %true : i1
        %280 = math.ctlz %1 : tensor<10x10xi1>
        %281 = arith.divui %c601140914_i32, %c601140914_i32 : i32
        memref.copy %51, %alloc_23 : memref<5xf16> to memref<5xf16>
        %282 = arith.ori %in, %extracted_54 : i64
        scf.yield %alloc_9 : memref<1x10xi1>
      } else {
        %277 = math.exp2 %cst_2 : f16
        affine.store %true_25, %alloc[%c7] : memref<5xi1>
        %278 = arith.addi %in_53, %in_53 : i64
        %279 = vector.create_mask %102 : vector<10xi1>
        %280 = math.exp %splat : tensor<5xf32>
        %281 = affine.load %alloc_14[%c3] : memref<10xi64>
        %282 = index.ceildivs %c6, %34
        %283 = arith.floordivsi %extracted_54, %281 : i64
        scf.yield %alloc_9 : memref<1x10xi1>
      }
      %272 = math.copysign %expanded, %expanded : tensor<5x1xf32>
      %273 = arith.negf %cst_2 : f16
      %274 = math.log %6 : tensor<5xf32>
      %275 = vector.load %258[%c6, %c7] : memref<10x10xi32>, vector<10x10xi32>
      %276 = math.exp %3 : tensor<5xf16>
      linalg.yield %in_53 : i64
    } -> tensor<5x5x5xi64>
    %109 = index.ceildivs %c6, %c6
    %110 = tensor.empty() : tensor<5x5x5xi64>
    %111 = tensor.empty() : tensor<5x5xi64>
    %112 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%111 : tensor<5x5xi64>) outs(%110 : tensor<5x5x5xi64>) {
    ^bb0(%in: i64, %out: i64):
      %246 = vector.create_mask %c11 : vector<5xi1>
      %247 = math.ctlz %c1274420694_i32 : i32
      %248 = index.mul %c9, %34
      %249 = arith.minf %cst_5, %cst_7 : f16
      %250 = index.divs %c12, %83
      %251 = tensor.empty(%c11, %109) : tensor<?x?xi64>
      %252 = vector.flat_transpose %18 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
      %rank = tensor.rank %21 : tensor<i1>
      %253 = math.exp %11 : tensor<5xf32>
      %254 = vector.broadcast %true : i1 to vector<1xi1>
      vector.transfer_write %254, %alloc_11[%109, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi1>, memref<10x10xi1>
      %255 = index.divu %c11, %100
      %false_52 = index.bool.constant false
      %256 = affine.min affine_map<(d0) -> ((d0 floordiv 4) * 2, (d0 floordiv 4) * 2, d0 * 32 - 64)>(%c14)
      %257 = vector.broadcast %cst_4 : f32 to vector<f32>
      %258 = vector.transfer_write %257, %6[%c7] : vector<f32>, tensor<5xf32>
      %259 = vector.transpose %257, [] : vector<f32> to vector<f32>
      %260 = vector.broadcast %c2 : index to vector<5xindex>
      vector.scatter %alloc_13[%c2] [%260], %246, %246 : memref<10xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      vector.print %246 : vector<5xi1>
      %261 = math.roundeven %6 : tensor<5xf32>
      %262 = vector.create_mask %83 : vector<5xi1>
      %263 = affine.min affine_map<(d0, d1, d2) -> (d0 - 4, d1)>(%c7, %rank, %c8)
      %264 = scf.while (%arg0 = %cst_2) : (f16) -> f16 {
        %276 = arith.maxui %c601140914_i32, %c104519227_i32 : i32
        %277 = arith.divui %false, %true_25 : i1
        %true_54 = arith.constant true
        %278 = index.castu %false_52 : i1 to index
        %279 = memref.realloc %51 : memref<5xf16> to memref<5xf16>
        %280 = vector.broadcast %cst_6 : f32 to vector<10x10xf32>
        %281 = vector.fma %280, %280, %280 : vector<10x10xf32>
        %inserted_55 = tensor.insert %false_52 into %15[%c0] : tensor<5xi1>
        %282 = tensor.empty() : tensor<10x10xi1>
        %283 = linalg.matmul ins(%45, %1 : tensor<10x10xi1>, tensor<10x10xi1>) outs(%282 : tensor<10x10xi1>) -> tensor<10x10xi1>
        scf.condition(%true_25) %cst_2 : f16
      } do {
      ^bb0(%arg0: f16):
        %276 = bufferization.to_memref %91 : memref<5xi32>
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 126)>(%263, %76, %255)
        %278 = index.castu %true_25 : i1 to index
        %279 = math.floor %cst_1 : f32
        %280 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
        %281 = vector.fma %280, %280, %280 : vector<10x10xf32>
        %282 = arith.divui %c601140914_i32, %c601140914_i32 : i32
        %283 = arith.subi %false_52, %false : i1
        %284 = arith.mulf %cst_3, %cst : f32
        %285 = math.fpowi %splat, %91 : tensor<5xf32>, tensor<5xi32>
        %286 = arith.addf %cst_6, %105 : f32
        %287 = arith.xori %false, %false_52 : i1
        %288 = memref.realloc %alloc_13 : memref<10xi1> to memref<10xi1>
        %289 = index.add %34, %c12
        memref.copy %26, %alloc_12 : memref<10xi16> to memref<10xi16>
        %290 = math.ctpop %1 : tensor<10x10xi1>
        %291 = arith.maxsi %c-9657_i16, %c-9657_i16 : i16
        scf.yield %arg0 : f16
      }
      %265 = vector.broadcast %cst_5 : f16 to vector<f16>
      vector.transfer_write %265, %alloc_15[%248] : vector<f16>, memref<10xf16>
      %splat_53 = tensor.splat %cst_3 : tensor<5xf32>
      %266 = math.roundeven %cst_2 : f16
      %267 = math.log2 %cst_6 : f32
      %268 = math.fpowi %cst_5, %c1274420694_i32 : f16, i32
      %269 = arith.minf %cst_5, %cst_5 : f16
      %270 = arith.addi %in, %out : i64
      %271 = math.floor %cst_1 : f32
      %272 = math.fpowi %cst_7, %c1274420694_i32 : f16, i32
      %273 = arith.xori %c104519227_i32, %c1274420694_i32 : i32
      %274 = vector.broadcast %cst_0 : f32 to vector<10x10xf32>
      %275 = vector.outerproduct %18, %29, %274 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
      linalg.yield %in : i64
    } -> tensor<5x5x5xi64>
    %113 = affine.if affine_set<(d0, d1, d2, d3) : (((d2 ceildiv 2) ceildiv 8) floordiv 4 == 0, d2 == 0)>(%c12, %c7, %c7, %c0) -> i32 {
      memref.store %true, %alloc_13[%c6] : memref<10xi1>
      %246 = vector.matrix_multiply %81, %81 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
      %247 = arith.minui %true_25, %true_25 : i1
      %248 = arith.divui %false, %true : i1
      %249 = vector.broadcast %c24664_i16 : i16 to vector<1xi16>
      %250 = vector.maskedload %26[%c0], %246, %249 : memref<10xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %251 = math.log2 %cst_4 : f32
      %alloc_52 = memref.alloc() : memref<10xi64>
      memref.copy %alloc_14, %alloc_52 : memref<10xi64> to memref<10xi64>
      %252 = vector.broadcast %c8 : index to vector<10xindex>
      %253 = vector.broadcast %c-9657_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_22[%c0, %c0] [%252], %68, %253 : memref<1x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      affine.yield %c104519227_i32 : i32
    } else {
      %246 = scf.while (%arg0 = %alloc_19) : (memref<10x10xi16>) -> memref<10x10xi16> {
        %253 = math.exp2 %cst_0 : f32
        %254 = arith.shrsi %c0_i64, %c0_i64 : i64
        affine.store %cst, %alloc_16[%c15, %c10] : memref<10x10xf32>
        %255 = math.log2 %cst_7 : f16
        %alloc_52 = memref.alloc() : memref<1x10xi32>
        memref.copy %alloc_10, %alloc_52 : memref<1x10xi32> to memref<1x10xi32>
        affine.store %true, %alloc[%c2] : memref<5xi1>
        %256 = index.casts %c12 : index to i32
        %257 = index.floordivs %c7, %c15
        scf.condition(%true_25) %alloc_19 : memref<10x10xi16>
      } do {
      ^bb0(%arg0: memref<10x10xi16>):
        %253 = math.log2 %5 : tensor<10xf16>
        %254 = math.round %cst_2 : f16
        memref.store %cst_5, %51[%c1] : memref<5xf16>
        %255 = math.round %cst : f32
        %256 = vector.broadcast %cst_6 : f32 to vector<10xf32>
        %257 = vector.fma %256, %29, %29 : vector<10xf32>
        %alloc_52 = memref.alloc() : memref<10xi32>
        %258 = math.fpowi %collapsed_30, %91 : tensor<5xf32>, tensor<5xi32>
        %259 = index.divu %c3, %c9
        %260 = math.log2 %cst_5 : f16
        %261 = math.copysign %105, %cst_0 : f32
        %262 = bufferization.to_memref %7 : memref<10x10xi32>
        %expanded_53 = tensor.expand_shape %19 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %263 = index.divs %c4, %35
        %264 = affine.apply affine_map<(d0) -> ((d0 + 2) floordiv 64)>(%c6)
        %alloc_54 = memref.alloc() : memref<10xi1>
        %265 = index.divu %34, %c0
        scf.yield %arg0 : memref<10x10xi16>
      }
      %247 = vector.broadcast %c2 : index to vector<10xindex>
      vector.scatter %alloc_20[%c0, %c3] [%247], %68, %18 : memref<1x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %248 = math.absf %5 : tensor<10xf16>
      %c7228_i16 = arith.constant 7228 : i16
      %249 = math.copysign %collapsed_30, %6 : tensor<5xf32>
      %250 = math.sqrt %11 : tensor<5xf32>
      %251 = index.castu %true_25 : i1 to index
      %252 = vector.load %alloc_21[%c1] : memref<5xf32>, vector<10x10xf32>
      affine.yield %c1274420694_i32 : i32
    }
    %114 = affine.for %arg0 = 0 to 95 iter_args(%arg1 = %1) -> (tensor<10x10xi1>) {
      affine.yield %9 : tensor<10x10xi1>
    }
    %115 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
    %116 = vector.outerproduct %85, %55, %115 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
    %117 = arith.mulf %cst_3, %cst_6 : f32
    %118 = index.maxs %100, %76
    %119 = vector.flat_transpose %61 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
    %120 = math.ipowi %19, %collapsed : tensor<10xi1>
    %121 = math.roundeven %6 : tensor<5xf32>
    %122 = memref.realloc %alloc_13 : memref<10xi1> to memref<5xi1>
    %123 = vector.broadcast %c-9657_i16 : i16 to vector<5xi16>
    %124 = vector.broadcast %true : i1 to vector<5xi1>
    %125 = vector.broadcast %c1274420694_i32 : i32 to vector<5xi32>
    %126 = vector.gather %alloc_22[%118, %c12] [%125], %124, %123 : memref<1x10xi16>, vector<5xi32>, vector<5xi1>, vector<5xi16> into vector<5xi16>
    %127 = vector.broadcast %c9 : index to vector<10xindex>
    %128 = vector.broadcast %c24664_i16 : i16 to vector<10xi16>
    vector.scatter %alloc_22[%c0, %c5] [%127], %81, %128 : memref<1x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
    %generated = tensor.generate %c3 {
    ^bb0(%arg0: index, %arg1: index):
      memref.assume_alignment %alloc_11, 2 : memref<10x10xi1>
      %246 = math.log %cst_0 : f32
      memref.assume_alignment %alloc_10, 8 : memref<1x10xi32>
      %247 = index.ceildivs %c14, %c4
      tensor.yield %c0_i64 : i64
    } : tensor<?x10xi64>
    %129 = math.log1p %cst_4 : f32
    %130 = arith.shrsi %c104519227_i32, %c1274420694_i32 : i32
    %131 = math.copysign %collapsed_30, %11 : tensor<5xf32>
    %132 = vector.broadcast %false : i1 to vector<i1>
    %133 = vector.transfer_write %132, %45[%c11, %c14] : vector<i1>, tensor<10x10xi1>
    %134 = vector.load %alloc_20[%c0, %c9] : memref<1x10xf32>, vector<10xf32>
    %135 = vector.broadcast %76 : index to vector<5xindex>
    vector.scatter %alloc_19[%c5, %c5] [%135], %124, %126 : memref<10x10xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
    affine.for %arg0 = 0 to 64 {
    }
    %136 = vector.shuffle %134, %58 [0, 1, 3, 8, 9, 10, 13, 17, 19] : vector<10xf32>, vector<10xf32>
    %137 = memref.realloc %alloc_21 : memref<5xf32> to memref<10xf32>
    affine.for %arg0 = 0 to 82 {
    }
    memref.assume_alignment %alloc_18, 1 : memref<1x10xi64>
    %138 = math.copysign %cst_4, %105 : f32
    %139 = index.castu %53 : index to i32
    %140 = tensor.empty(%31) : tensor<?xf32>
    %141 = index.floordivs %c8, %c15
    %142 = scf.while (%arg0 = %alloc_19) : (memref<10x10xi16>) -> memref<10x10xi16> {
      %246 = arith.mulf %cst, %cst_1 : f32
      %247 = math.copysign %105, %cst_1 : f32
      %true_52 = arith.constant true
      %248 = math.ctlz %15 : tensor<5xi1>
      %249 = arith.shrui %c0_i64, %c0_i64 : i64
      %250 = tensor.empty() : tensor<5x5x5xi64>
      %alloc_53 = memref.alloc() : memref<5x5xi64>
      %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%250, %alloc_53, %alloc_53 : tensor<5x5x5xi64>, memref<5x5xi64>, memref<5x5xi64>) outs(%250 : tensor<5x5x5xi64>) {
      ^bb0(%in: i64, %in_54: i64, %in_55: i64, %out: i64):
        %254 = memref.load %alloc_13[%c6] : memref<10xi1>
        %255 = math.ctlz %0 : tensor<10x10xi64>
        %256 = affine.min affine_map<(d0, d1, d2) -> ((d1 floordiv 2) * 64, d1)>(%c13, %c4, %c9)
        %257 = index.add %c0, %31
        %258 = math.sqrt %3 : tensor<5xf16>
        %259 = vector.multi_reduction <maxf>, %119, %29 [] : vector<10xf32> to vector<10xf32>
        %260 = math.tan %cst_3 : f32
        %261 = arith.maxsi %c104519227_i32, %c104519227_i32 : i32
        %262 = vector.bitcast %18 : vector<10xf32> to vector<10xf32>
        %263 = vector.flat_transpose %124 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        affine.store %c24664_i16, %alloc_12[%c7] : memref<10xi16>
        %264 = tensor.empty() : tensor<5xi1>
        %265 = affine.load %alloc_21[%c3] : memref<5xf32>
        %266 = tensor.empty() : tensor<10x10xi16>
        %267 = vector.broadcast %265 : f32 to vector<10x10xf32>
        %268 = vector.fma %267, %267, %267 : vector<10x10xf32>
        %cst_56 = arith.constant 3.238400e+04 : f16
        %269 = arith.subi %c1274420694_i32, %c1274420694_i32 : i32
        %270 = index.sizeof
        %271 = math.fpowi %cst_7, %c104519227_i32 : f16, i32
        %272 = index.floordivs %c10, %c15
        %273 = index.add %100, %118
        %274 = index.ceildivs %c1, %35
        %275 = math.fpowi %cst_4, %c1274420694_i32 : f32, i32
        %276 = vector.outerproduct %119, %134, %267 {kind = #vector.kind<maxf>} : vector<10xf32>, vector<10xf32>
        %277 = math.copysign %105, %105 : f32
        %expanded_57 = tensor.expand_shape %91 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %278 = bufferization.clone %51 : memref<5xf16> to memref<5xf16>
        %279 = index.mul %109, %83
        %280 = affine.max affine_map<(d0, d1, d2) -> (d0 - 32, d2 - d1, d1 - 64, d2 - d1)>(%141, %c12, %83)
        %281 = index.castu %in_54 : i64 to index
        %282 = arith.cmpf false, %cst_0, %265 : f32
        %283 = affine.load %alloc[%c0] : memref<5xi1>
        linalg.yield %in : i64
      } -> tensor<5x5x5xi64>
      %252 = index.maxs %c5, %c7
      %253 = vector.splat %31 : vector<10xindex>
      scf.condition(%true) %alloc_19 : memref<10x10xi16>
    } do {
    ^bb0(%arg0: memref<10x10xi16>):
      %246 = math.absf %cst_6 : f32
      %247 = math.rsqrt %6 : tensor<5xf32>
      %248 = scf.while (%arg1 = %alloc_19) : (memref<10x10xi16>) -> memref<10x10xi16> {
        %cast = tensor.cast %3 : tensor<5xf16> to tensor<?xf16>
        %260 = math.log %cst_0 : f32
        %261 = arith.minf %cst_3, %cst_6 : f32
        %262 = index.castu %true : i1 to index
        %263 = arith.maxsi %c24664_i16, %c-9657_i16 : i16
        %264 = arith.divui %false, %true_25 : i1
        %265 = index.sizeof
        %266 = arith.shrui %c601140914_i32, %c601140914_i32 : i32
        scf.condition(%true) %arg1 : memref<10x10xi16>
      } do {
      ^bb0(%arg1: memref<10x10xi16>):
        %260 = math.absf %11 : tensor<5xf32>
        %261 = vector.broadcast %c9 : index to vector<5xindex>
        vector.scatter %arg1[%c3, %c0] [%261], %124, %123 : memref<10x10xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %262 = affine.min affine_map<(d0) -> (d0 * 2 + 32, d0 * 8, d0 * 8, d0)>(%c11)
        %263 = arith.minf %cst_0, %cst_4 : f32
        %264 = index.casts %c12 : index to i32
        %265 = arith.mulf %cst_5, %cst_5 : f16
        %266 = arith.floordivsi %true_25, %false : i1
        %267 = vector.gather %80[%c7, %c5] [%44], %81, %81 : tensor<10x10xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %268 = vector.broadcast %true_25 : i1 to vector<i1>
        vector.transfer_write %268, %alloc_17[%118] : vector<i1>, memref<10xi1>
        %269 = math.sqrt %cst_4 : f32
        %270 = vector.splat %cst_4 : vector<1x10xf32>
        %271 = arith.shrsi %c104519227_i32, %c601140914_i32 : i32
        %272 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %273 = vector.outerproduct %69, %69, %272 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
        %274 = vector.insert %true_25, %81 [5] : i1 into vector<10xi1>
        %275 = vector.bitcast %58 : vector<10xf32> to vector<10xf32>
        %276 = arith.subi %true_25, %true_25 : i1
        scf.yield %arg1 : memref<10x10xi16>
      }
      %249 = vector.shuffle %69, %119 [3, 4, 7, 8, 9, 11, 14, 17, 19] : vector<10xf32>, vector<10xf32>
      %250 = scf.while (%arg1 = %alloc_17) : (memref<10xi1>) -> memref<10xi1> {
        memref.assume_alignment %alloc_23, 2 : memref<5xf16>
        %260 = math.round %3 : tensor<5xf16>
        vector.print %41 : vector<10x10xi1>
        %261 = math.log1p %cst_6 : f32
        %262 = math.floor %3 : tensor<5xf16>
        %263 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
        %264 = vector.fma %263, %263, %263 : vector<10x10xf32>
        %265 = math.ceil %6 : tensor<5xf32>
        %266 = bufferization.to_memref %11 : memref<5xf32>
        scf.condition(%false) %arg1 : memref<10xi1>
      } do {
      ^bb0(%arg1: memref<10xi1>):
        %260 = arith.xori %c0_i64, %c0_i64 : i64
        %261 = math.absf %splat : tensor<5xf32>
        %262 = math.tan %11 : tensor<5xf32>
        %263 = math.copysign %splat, %collapsed_30 : tensor<5xf32>
        %264 = math.log %105 : f32
        %265 = math.fpowi %105, %c104519227_i32 : f32, i32
        %266 = math.copysign %cst_5, %cst_2 : f16
        %267 = math.floor %splat : tensor<5xf32>
        %268 = vector.load %alloc_19[%c0, %c3] : memref<10x10xi16>, vector<5xi16>
        %269 = math.ceil %5 : tensor<10xf16>
        %270 = index.mul %c1, %c10
        %271 = affine.load %alloc_10[%c13, %c3] : memref<1x10xi32>
        %272 = index.ceildivs %270, %c0
        %273 = index.castu %271 : i32 to index
        %274 = arith.divf %cst, %105 : f32
        %275 = vector.create_mask %c5, %c13 : vector<1x10xi1>
        scf.yield %arg1 : memref<10xi1>
      }
      %251 = arith.negf %cst_4 : f32
      %252 = arith.ceildivsi %c601140914_i32, %c104519227_i32 : i32
      %253 = arith.shrsi %c0_i64, %c0_i64 : i64
      %254 = arith.shrui %c-9657_i16, %c-9657_i16 : i16
      bufferization.dealloc_tensor %10 : tensor<1x10xi1>
      %255 = vector.broadcast %100 : index to vector<10xindex>
      %256 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      vector.scatter %alloc_15[%c1] [%255], %81, %256 : memref<10xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      %257 = arith.cmpi ugt, %c104519227_i32, %c1274420694_i32 : i32
      %258 = index.mul %35, %c4
      %259 = math.log2 %cst_2 : f16
      %generated_52 = tensor.generate %c0 {
      ^bb0(%arg1: index):
        %260 = math.log %11 : tensor<5xf32>
        %261 = bufferization.clone %alloc_20 : memref<1x10xf32> to memref<1x10xf32>
        %262 = index.ceildivu %53, %c1
        %263 = math.sqrt %6 : tensor<5xf32>
        tensor.yield %true_25 : i1
      } : tensor<?xi1>
      %cst_53 = arith.constant 0x4D2DFBAD : f32
      scf.yield %arg0 : memref<10x10xi16>
    }
    %143 = math.log %cst_7 : f16
    %144 = index.maxs %102, %c5
    %145 = arith.minf %cst_2, %cst_7 : f16
    %146 = bufferization.to_memref %2 : memref<10x10xi16>
    affine.for %arg0 = 0 to 58 {
    }
    %147 = vector.extract %126[3] : vector<5xi16>
    %148 = index.casts %c0_i64 : i64 to index
    %149 = scf.if %true -> (memref<10xf32>) {
      %246 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 8 >= 0, d3 >= 0, d1 * -64 == 0)>(%c1, %c0, %c10, %c4) -> memref<5xf16> {
        %253 = math.atan %cst_6 : f32
        %254 = index.casts %34 : index to i32
        %255 = bufferization.to_memref %2 : memref<10x10xi16>
        %alloc_53 = memref.alloc() : memref<5xf32>
        memref.copy %alloc_21, %alloc_53 : memref<5xf32> to memref<5xf32>
        %256 = index.castu %118 : index to i32
        %257 = index.floordivs %35, %c11
        %258 = bufferization.clone %alloc_24 : memref<f16> to memref<f16>
        %259 = vector.broadcast %c24664_i16 : i16 to vector<i16>
        vector.transfer_write %259, %146[%c3, %c12] : vector<i16>, memref<10x10xi16>
        affine.yield %51 : memref<5xf16>
      } else {
        %253 = vector.shuffle %119, %119 [4, 5, 7, 11, 13, 14] : vector<10xf32>, vector<10xf32>
        %collapsed_53 = tensor.collapse_shape %2 [[0, 1]] : tensor<10x10xi16> into tensor<100xi16>
        %254 = vector.flat_transpose %44 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %255 = affine.min affine_map<(d0, d1) -> (0, (d1 - 8) * 4)>(%35, %c13)
        %256 = arith.subi %c24664_i16, %c-9657_i16 : i16
        %257 = math.exp %3 : tensor<5xf16>
        %258 = arith.cmpi sle, %false, %true_25 : i1
        %259 = arith.subi %false, %true : i1
        affine.yield %alloc_23 : memref<5xf16>
      }
      affine.store %false, %alloc_11[%c3, %c15] : memref<10x10xi1>
      %247 = math.copysign %11, %6 : tensor<5xf32>
      %248 = arith.minf %cst_0, %cst_0 : f32
      %249 = arith.negf %cst_1 : f32
      %250 = vector.shuffle %55, %18 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] : vector<1xf32>, vector<10xf32>
      %251 = arith.negf %105 : f32
      %252 = affine.max affine_map<(d0) -> (d0 - 128, d0 + d0 - (d0 - 8) - 128, -(d0 - 8), d0 - (d0 - 8) - 128)>(%c0)
      %alloc_52 = memref.alloc() : memref<10xf32>
      scf.yield %alloc_52 : memref<10xf32>
    } else {
      %246 = math.sqrt %11 : tensor<5xf32>
      %247 = vector.extract %40[3] : vector<10xf32>
      %248 = arith.minui %c104519227_i32, %c1274420694_i32 : i32
      %249 = arith.remf %cst_4, %105 : f32
      %250 = vector.extract_strided_slice %81 {offsets = [1], sizes = [6], strides = [1]} : vector<10xi1> to vector<6xi1>
      %251 = math.log %6 : tensor<5xf32>
      %252 = vector.maskedload %alloc_22[%c0, %c9], %124, %126 : memref<1x10xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %253 = math.fpowi %cst_5, %c601140914_i32 : f16, i32
      %alloc_52 = memref.alloc() : memref<10xf32>
      scf.yield %alloc_52 : memref<10xf32>
    }
    %150 = index.maxs %102, %83
    %151 = math.log2 %cst_6 : f32
    vector.print %126 : vector<5xi16>
    %152 = arith.shrui %true_25, %true : i1
    memref.assume_alignment %alloc_17, 1 : memref<10xi1>
    %153 = arith.floordivsi %c601140914_i32, %c601140914_i32 : i32
    %154 = arith.shrsi %true, %true : i1
    memref.assume_alignment %alloc_11, 1 : memref<10x10xi1>
    memref.store %false, %alloc_13[%c9] : memref<10xi1>
    %splat_33 = tensor.splat %false : tensor<5xi1>
    %155 = math.log2 %cst_3 : f32
    %156 = math.floor %cst_4 : f32
    vector.print %44 : vector<10xi32>
    %alloc_34 = memref.alloc() : memref<5xf32>
    %alloc_35 = memref.alloc() : memref<1x10xi64>
    %157 = index.maxs %76, %35
    %158 = arith.addi %c-9657_i16, %c24664_i16 : i16
    %159 = arith.floordivsi %c24664_i16, %c-9657_i16 : i16
    %160 = vector.bitcast %43 : vector<10x10xi1> to vector<10x10xi1>
    %161 = vector.extract %81[3] : vector<10xi1>
    %extracted = tensor.extract %collapsed_30[%c2] : tensor<5xf32>
    %162 = index.mul %c11, %c1
    %inserted_36 = tensor.insert %c-9657_i16 into %4[%c0] : tensor<5xi16>
    %alloca = memref.alloca() : memref<5xf32>
    %inserted_37 = tensor.insert %true_25 into %45[%c6, %c8] : tensor<10x10xi1>
    affine.for %arg0 = 0 to 70 {
    }
    %163 = affine.for %arg0 = 0 to 49 iter_args(%arg1 = %alloc_16) -> (memref<10x10xf32>) {
      affine.yield %arg1 : memref<10x10xf32>
    }
    memref.alloca_scope  {
      %246 = vector.bitcast %29 : vector<10xf32> to vector<10xf32>
      %247 = arith.minui %c0_i64, %c0_i64 : i64
      %248 = math.atan %cst : f32
      %249 = affine.for %arg0 = 0 to 113 iter_args(%arg1 = %61) -> (vector<10xf32>) {
        affine.yield %69 : vector<10xf32>
      }
      %250 = math.log1p %5 : tensor<10xf16>
      %251 = affine.if affine_set<(d0, d1, d2, d3) : (((d2 ceildiv 2) ceildiv 8) floordiv 4 == 0, d2 == 0)>(%c2, %c5, %c12, %c3) -> i16 {
        %272 = index.divs %c12, %157
        %273 = vector.outerproduct %44, %44, %42 {kind = #vector.kind<and>} : vector<10xi32>, vector<10xi32>
        %274 = vector.splat %c14 : vector<10xindex>
        memref.assume_alignment %alloc_12, 2 : memref<10xi16>
        %275 = math.cos %cst_5 : f16
        %276 = math.copysign %11, %collapsed_30 : tensor<5xf32>
        %277 = vector.extract %124[2] : vector<5xi1>
        %278 = index.ceildivs %c1, %35
        affine.yield %c24664_i16 : i16
      } else {
        memref.assume_alignment %alloc_17, 1 : memref<10xi1>
        %272 = arith.xori %c1274420694_i32, %c601140914_i32 : i32
        %273 = vector.broadcast %c0_i64 : i64 to vector<1x10xi64>
        %274 = vector.broadcast %true_25 : i1 to vector<1x10xi1>
        %275 = vector.broadcast %c601140914_i32 : i32 to vector<1x10xi32>
        %276 = vector.gather %alloc_14[%83] [%275], %274, %273 : memref<10xi64>, vector<1x10xi32>, vector<1x10xi1>, vector<1x10xi64> into vector<1x10xi64>
        %277 = index.maxu %109, %35
        %278 = math.sqrt %cst_4 : f32
        %279 = bufferization.to_memref %45 : memref<10x10xi1>
        %280 = index.ceildivu %109, %157
        %281 = memref.atomic_rmw mulf %cst_7, %51[%c4] : (f16, memref<5xf16>) -> f16
        affine.yield %c-9657_i16 : i16
      }
      %252 = math.absf %splat : tensor<5xf32>
      %253 = vector.shuffle %126, %123 [1, 3, 6, 8, 9] : vector<5xi16>, vector<5xi16>
      %254 = index.floordivs %c3, %118
      %255 = bufferization.clone %alloc_16 : memref<10x10xf32> to memref<10x10xf32>
      memref.copy %alloc_8, %alloc_18 : memref<1x10xi64> to memref<1x10xi64>
      %256 = bufferization.to_memref %2 : memref<10x10xi16>
      %expanded_52 = tensor.expand_shape %collapsed_30 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
      %257 = arith.shrui %c1274420694_i32, %c104519227_i32 : i32
      %expanded_53 = tensor.expand_shape %collapsed [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
      %258 = arith.shrsi %c24664_i16, %c24664_i16 : i16
      %259 = vector.bitcast %124 : vector<5xi1> to vector<5xi1>
      %260 = arith.divui %c601140914_i32, %c1274420694_i32 : i32
      %261 = vector.reduction <add>, %18 : vector<10xf32> into f32
      %262 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d3) ceildiv 4 - 2)>(%102, %100, %83, %76)
      %263 = math.absi %12 : tensor<1x10xi1>
      %264 = math.log2 %cst_0 : f32
      %265 = math.log1p %cst_4 : f32
      memref.store %c0_i64, %alloc_8[%c0, %c9] : memref<1x10xi64>
      %266 = math.sqrt %cst_7 : f16
      affine.store %false, %alloc_17[%c8] : memref<10xi1>
      %267 = scf.index_switch %c9 -> i16 
      case 1 {
        %272 = vector.reduction <maxsi>, %124 : vector<5xi1> into i1
        %collapsed_55 = tensor.collapse_shape %0 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
        %273 = bufferization.clone %51 : memref<5xf16> to memref<5xf16>
        %274 = arith.shrui %true_25, %true : i1
        %275 = math.round %collapsed_30 : tensor<5xf32>
        %276 = math.atan %splat : tensor<5xf32>
        %277 = affine.load %alloc_9[%c6, %c1] : memref<1x10xi1>
        %278 = arith.xori %true_25, %false : i1
        %279 = index.castu %109 : index to i32
        %280 = arith.remf %cst_6, %cst_1 : f32
        %281 = arith.shrui %true, %true_25 : i1
        %282 = math.ctpop %c104519227_i32 : i32
        %283 = math.round %11 : tensor<5xf32>
        %splat_56 = tensor.splat %cst : tensor<10xf32>
        %284 = index.maxs %c8, %118
        %alloca_57 = memref.alloca() : memref<10xi1>
        scf.yield %c-9657_i16 : i16
      }
      case 2 {
        %272 = index.castu %true : i1 to index
        %alloc_55 = memref.alloc() : memref<1x10xf32>
        memref.copy %alloc_20, %alloc_55 : memref<1x10xf32> to memref<1x10xf32>
        %273 = arith.ori %c24664_i16, %c24664_i16 : i16
        %274 = vector.reduction <xor>, %44 : vector<10xi32> into i32
        %275 = math.log %cst_1 : f32
        %276 = bufferization.to_memref %5 : memref<10xf16>
        %277 = math.expm1 %cst_2 : f16
        %278 = math.absf %11 : tensor<5xf32>
        memref.store %cst_2, %alloc_15[%c2] : memref<10xf16>
        %279 = arith.mulf %cst_1, %cst_3 : f32
        %280 = vector.extract %123[2] : vector<5xi16>
        %281 = arith.minsi %c24664_i16, %c24664_i16 : i16
        %282 = affine.apply affine_map<(d0) -> (d0 * 64)>(%c12)
        %283 = math.absf %3 : tensor<5xf16>
        %284 = vector.matrix_multiply %85, %18 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xf32>, vector<10xf32>) -> vector<10xf32>
        %285 = arith.remf %cst_5, %cst_2 : f16
        scf.yield %c24664_i16 : i16
      }
      default {
        %272 = index.divu %c12, %c3
        %273 = math.copysign %3, %3 : tensor<5xf16>
        %274 = memref.realloc %alloc_12 : memref<10xi16> to memref<10xi16>
        %275 = math.cttz %c0_i64 : i64
        %276 = index.maxs %c11, %c9
        %277 = math.copysign %3, %3 : tensor<5xf16>
        %278 = arith.maxsi %c104519227_i32, %c601140914_i32 : i32
        %inserted_55 = tensor.insert %true into %20[] : tensor<i1>
        %279 = arith.ori %true_25, %false : i1
        %280 = math.copysign %3, %3 : tensor<5xf16>
        %281 = math.cttz %15 : tensor<5xi1>
        %282 = index.floordivs %34, %c2
        %283 = index.mul %c9, %c8
        %284 = memref.atomic_rmw mulf %cst_6, %alloc_21[%c3] : (f32, memref<5xf32>) -> f32
        %285 = vector.shuffle %18, %69 [5, 6, 8, 17, 18, 19] : vector<10xf32>, vector<10xf32>
        affine.store %true_25, %alloc_17[%c12] : memref<10xi1>
        scf.yield %c24664_i16 : i16
      }
      %268 = bufferization.clone %alloc_24 : memref<f16> to memref<f16>
      %269 = index.castu %148 : index to i32
      %270 = math.cos %collapsed_30 : tensor<5xf32>
      %false_54 = arith.constant false
      %271 = vector.shuffle %119, %61 [0, 1, 2, 3, 4, 5, 6, 9, 11, 12, 14, 15, 16, 18, 19] : vector<10xf32>, vector<10xf32>
    }
    %164 = math.rsqrt %6 : tensor<5xf32>
    %165 = math.sqrt %3 : tensor<5xf16>
    %166 = arith.minf %cst_0, %cst_0 : f32
    %167 = arith.remf %cst_0, %extracted : f32
    %alloc_38 = memref.alloc() : memref<10x10xf32>
    memref.copy %alloc_16, %alloc_38 : memref<10x10xf32> to memref<10x10xf32>
    %168 = math.log %expanded : tensor<5x1xf32>
    %169 = affine.min affine_map<(d0, d1) -> (-(d1 mod 64 - 36), d1 mod 64 - 4, d1 mod 2)>(%c12, %53)
    %170 = index.sub %c8, %c12
    %171 = arith.maxsi %true, %true_25 : i1
    %alloc_39 = memref.alloc() : memref<1x10xf16>
    %172 = vector.broadcast %cst_5 : f16 to vector<1x10xf16>
    %173 = vector.broadcast %false : i1 to vector<1x10xi1>
    %174 = vector.broadcast %c104519227_i32 : i32 to vector<1x10xi32>
    %175 = vector.gather %alloc_39[%c5, %c7] [%174], %173, %172 : memref<1x10xf16>, vector<1x10xi32>, vector<1x10xi1>, vector<1x10xf16> into vector<1x10xf16>
    %176 = memref.realloc %alloc_13 : memref<10xi1> to memref<10xi1>
    %expanded_40 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<10x10xi32> into tensor<10x10x1xi32>
    vector.print %175 : vector<1x10xf16>
    %177 = vector.broadcast %105 : f32 to vector<10xf32>
    %178 = vector.fma %177, %61, %40 : vector<10xf32>
    %179 = math.fpowi %cst_1, %c104519227_i32 : f32, i32
    %180 = math.log %cst_2 : f16
    %181 = math.tan %105 : f32
    %182 = index.ceildivs %c2, %c11
    %183 = arith.muli %c24664_i16, %c-9657_i16 : i16
    %184 = arith.shrsi %true_25, %true_25 : i1
    %185 = index.divu %182, %c4
    %186 = vector.transpose %177, [0] : vector<10xf32> to vector<10xf32>
    %187 = vector.broadcast %109 : index to vector<10xindex>
    %188 = vector.broadcast %c0_i64 : i64 to vector<10xi64>
    vector.scatter %alloc_14[%c0] [%187], %81, %188 : memref<10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
    %189 = index.floordivs %34, %c9
    %190 = arith.maxsi %true_25, %true : i1
    %inserted_41 = tensor.insert %true_25 into %21[] : tensor<i1>
    %191 = arith.mulf %cst, %cst_4 : f32
    %192 = arith.ceildivsi %c601140914_i32, %c601140914_i32 : i32
    %193 = math.exp2 %11 : tensor<5xf32>
    %inserted_42 = tensor.insert %false into %45[%c7, %c3] : tensor<10x10xi1>
    %194 = tensor.empty() : tensor<1x10xi1>
    %195 = linalg.matmul ins(%10, %9 : tensor<1x10xi1>, tensor<10x10xi1>) outs(%194 : tensor<1x10xi1>) -> tensor<1x10xi1>
    %196 = tensor.empty() : tensor<5xf32>
    %mapped = linalg.map ins(%6 : tensor<5xf32>) outs(%196 : tensor<5xf32>)
      (%in: f32) {
        %246 = arith.addi %c-9657_i16, %c-9657_i16 : i16
        %247 = math.rsqrt %expanded : tensor<5x1xf32>
        %248 = arith.subi %c601140914_i32, %c601140914_i32 : i32
        %249 = vector.matrix_multiply %123, %123 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<5xi16>) -> vector<1xi16>
        %250 = vector.transpose %134, [0] : vector<10xf32> to vector<10xf32>
        %251 = vector.matrix_multiply %123, %249 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi16>, vector<1xi16>) -> vector<5xi16>
        %252 = math.cttz %13 : tensor<10xi64>
        %253 = memref.realloc %149 : memref<10xf32> to memref<5xf32>
        %254 = math.floor %196 : tensor<5xf32>
        %255 = index.floordivs %144, %c9
        %256 = vector.create_mask %c14 : vector<5xi1>
        %257 = arith.negf %cst_2 : f16
        %258 = math.round %3 : tensor<5xf16>
        %259 = arith.negf %in : f32
        %260 = math.exp %5 : tensor<10xf16>
        %261 = arith.maxsi %c601140914_i32, %c601140914_i32 : i32
        affine.store %c0_i64, %alloc_14[%c9] : memref<10xi64>
        %262 = math.absf %3 : tensor<5xf16>
        %263 = vector.splat %c6 : vector<1x10xindex>
        %264 = index.sizeof
        %265 = math.sqrt %cst_5 : f16
        %266 = index.floordivs %83, %31
        %267 = math.copysign %cst_0, %cst_6 : f32
        %268 = math.roundeven %cst_0 : f32
        %269 = index.mul %c1, %c4
        %270 = arith.addi %false, %true_25 : i1
        vector.print %134 : vector<10xf32>
        memref.assume_alignment %alloc_23, 8 : memref<5xf16>
        %271 = arith.cmpf ult, %extracted, %cst_6 : f32
        %dest, %accumulated_value = vector.scan <xor>, %41, %81 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        %272 = math.cttz %7 : tensor<10x10xi32>
        %expanded_52 = tensor.expand_shape %5 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        %cst_53 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_53 : f32
      }
    %197 = vector.insert %cst_0, %85 [0] : f32 into vector<1xf32>
    %198 = math.log %splat : tensor<5xf32>
    %199 = arith.remf %cst_6, %cst_1 : f32
    %alloc_43 = memref.alloc() : memref<1x10xi16>
    memref.copy %alloc_22, %alloc_43 : memref<1x10xi16> to memref<1x10xi16>
    %splat_44 = tensor.splat %105 : tensor<1x10xf32>
    %200 = math.log %cst_6 : f32
    %201 = math.ctlz %7 : tensor<10x10xi32>
    %202 = math.log1p %cst : f32
    %203 = vector.shuffle %58, %69 [3, 8, 9, 13, 16, 17, 19] : vector<10xf32>, vector<10xf32>
    affine.for %arg0 = 0 to 85 {
    }
    %204 = math.log %11 : tensor<5xf32>
    %205 = vector.transpose %58, [0] : vector<10xf32> to vector<10xf32>
    %206 = arith.shrui %true, %false : i1
    %207 = index.castu %true_25 : i1 to index
    memref.assume_alignment %alloc_16, 4 : memref<10x10xf32>
    %208 = math.sqrt %5 : tensor<10xf16>
    %209 = arith.addi %c-9657_i16, %c24664_i16 : i16
    %210 = vector.broadcast %c-9657_i16 : i16 to vector<i16>
    vector.transfer_write %210, %26[%169] : vector<i16>, memref<10xi16>
    %211 = math.copysign %105, %cst_4 : f32
    %212 = vector.broadcast %c-9657_i16 : i16 to vector<5x5xi16>
    %213 = vector.outerproduct %123, %126, %212 {kind = #vector.kind<add>} : vector<5xi16>, vector<5xi16>
    %214 = vector.gather %7[%c11, %c4] [%125], %124, %125 : tensor<10x10xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %215 = math.copysign %cst_6, %cst : f32
    %216 = memref.realloc %alloc_15 : memref<10xf16> to memref<10xf16>
    %217 = math.absf %196 : tensor<5xf32>
    %218 = arith.negf %105 : f32
    %219 = math.fpowi %3, %91 : tensor<5xf16>, tensor<5xi32>
    %220 = vector.shuffle %41, %173 [1, 2, 3, 6, 7, 8] : vector<10x10xi1>, vector<1x10xi1>
    %collapsed_45 = tensor.collapse_shape %0 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
    %221 = arith.minui %true, %false : i1
    %alloc_46 = memref.alloc() : memref<10x10xi64>
    %222 = math.round %196 : tensor<5xf32>
    %223 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
    %224 = vector.outerproduct %69, %119, %223 {kind = #vector.kind<add>} : vector<10xf32>, vector<10xf32>
    affine.store %c24664_i16, %alloc_12[%c14] : memref<10xi16>
    %225 = vector.outerproduct %81, %68, %41 {kind = #vector.kind<or>} : vector<10xi1>, vector<10xi1>
    %226 = math.cttz %4 : tensor<5xi16>
    %227 = vector.broadcast %189 : index to vector<1xindex>
    %228 = vector.broadcast %true_25 : i1 to vector<1xi1>
    %229 = vector.broadcast %cst_2 : f16 to vector<1xf16>
    vector.scatter %alloc_15[%c2] [%227], %228, %229 : memref<10xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
    %230 = vector.matrix_multiply %177, %85 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<1xf32>) -> vector<10xf32>
    %inserted_47 = tensor.insert %false into %10[%c0, %c7] : tensor<1x10xi1>
    %231 = index.maxs %189, %76
    %232 = index.mul %34, %144
    scf.index_switch %53 
    case 1 {
      %246 = math.ctlz %c24664_i16 : i16
      scf.index_switch %c15 
      case 1 {
        %255 = arith.mulf %105, %cst_3 : f32
        %256 = index.ceildivs %185, %c0
        %257 = vector.extract_strided_slice %119 {offsets = [1], sizes = [2], strides = [1]} : vector<10xf32> to vector<2xf32>
        %splat_55 = tensor.splat %true : tensor<10x10xi1>
        %258 = vector.broadcast %105 : f32 to vector<1x1xf32>
        %259 = vector.outerproduct %85, %55, %258 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        memref.tensor_store %5, %alloc_15 : memref<10xf16>
        memref.tensor_store %splat_33, %alloc : memref<5xi1>
        %260 = math.sqrt %cst_4 : f32
        %261 = arith.minf %cst_2, %cst_5 : f16
        %262 = arith.shrsi %true, %false : i1
        %263 = math.ctlz %12 : tensor<1x10xi1>
        %false_56 = index.bool.constant false
        %264 = arith.negf %cst_3 : f32
        %265 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
        %266 = vector.fma %265, %265, %265 : vector<10x10xf32>
        %267 = bufferization.to_memref %0 : memref<10x10xi64>
        %268 = arith.mulf %cst_2, %cst_7 : f16
        scf.yield
      }
      case 2 {
        %true_55 = index.bool.constant true
        %255 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %256 = vector.fma %255, %255, %255 : vector<5xf32>
        %257 = math.copysign %5, %5 : tensor<10xf16>
        %258 = arith.ceildivsi %c0_i64, %c0_i64 : i64
        %259 = math.log1p %3 : tensor<5xf16>
        %260 = memref.realloc %alloc_12 : memref<10xi16> to memref<10xi16>
        %261 = math.log1p %cst_1 : f32
        %262 = arith.shrsi %true_25, %false : i1
        %263 = math.absf %105 : f32
        %264 = memref.atomic_rmw muli %c24664_i16, %alloc_19[%c7, %c6] : (i16, memref<10x10xi16>) -> i16
        %265 = index.ceildivs %118, %118
        memref.store %cst_1, %alloc_16[%c8, %c6] : memref<10x10xf32>
        affine.store %c601140914_i32, %alloc_10[%c8, %c8] : memref<1x10xi32>
        %266 = math.copysign %extracted, %cst_4 : f32
        %267 = arith.negf %cst_1 : f32
        %268 = index.floordivs %189, %c2
        scf.yield
      }
      case 3 {
        %255 = arith.minsi %c0_i64, %c0_i64 : i64
        %collapsed_55 = tensor.collapse_shape %0 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
        %256 = math.roundeven %cst_4 : f32
        %c271044039_i64 = arith.constant 271044039 : i64
        %257 = math.log1p %3 : tensor<5xf16>
        %258 = math.ctlz %c-9657_i16 : i16
        %259 = math.log %196 : tensor<5xf32>
        %260 = memref.load %146[%c8, %c5] : memref<10x10xi16>
        %261 = math.round %5 : tensor<10xf16>
        %262 = index.castu %c11 : index to i32
        %263 = math.floor %cst_2 : f16
        memref.assume_alignment %alloc_8, 4 : memref<1x10xi64>
        %264 = index.ceildivs %231, %162
        %265 = math.sqrt %cst_4 : f32
        %266 = math.exp2 %collapsed_30 : tensor<5xf32>
        memref.assume_alignment %alloc_23, 2 : memref<5xf16>
        scf.yield
      }
      case 4 {
        %255 = arith.andi %c601140914_i32, %c601140914_i32 : i32
        %256 = vector.broadcast %cst_1 : f32 to vector<10xf32>
        %257 = vector.fma %256, %134, %230 : vector<10xf32>
        %258 = math.ctlz %9 : tensor<10x10xi1>
        %259 = math.log1p %3 : tensor<5xf16>
        %260 = index.divs %c9, %118
        %261 = math.log2 %splat_44 : tensor<1x10xf32>
        %262 = memref.atomic_rmw mins %c-9657_i16, %146[%c3, %c8] : (i16, memref<10x10xi16>) -> i16
        %263 = math.ipowi %16, %17 : tensor<10xi64>
        %264 = index.ceildivs %185, %169
        %265 = arith.cmpi slt, %true, %true : i1
        %266 = index.castu %c-9657_i16 : i16 to index
        %267 = arith.minui %c601140914_i32, %c1274420694_i32 : i32
        %inserted_55 = tensor.insert %c0_i64 into %16[%c4] : tensor<10xi64>
        %collapsed_56 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x10xi64> into tensor<10xi64>
        %268 = math.cttz %45 : tensor<10x10xi1>
        %269 = index.ceildivu %c4, %144
        scf.yield
      }
      default {
        %255 = arith.xori %c104519227_i32, %c601140914_i32 : i32
        %256 = arith.floordivsi %true, %false : i1
        %257 = vector.maskedload %alloc_10[%c0, %c0], %68, %44 : memref<1x10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %258 = bufferization.to_memref %9 : memref<10x10xi1>
        %259 = math.log1p %cst_7 : f16
        %expanded_55 = tensor.expand_shape %91 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        vector.print %43 : vector<10x10xi1>
        %260 = math.log1p %cst_3 : f32
        %261 = vector.insertelement %cst_0, %69[%189 : index] : vector<10xf32>
        %262 = arith.maxsi %false, %true : i1
        %263 = math.exp %6 : tensor<5xf32>
        memref.tensor_store %2, %146 : memref<10x10xi16>
        %264 = index.floordivs %c9, %c14
        %265 = bufferization.to_memref %0 : memref<10x10xi64>
        %266 = math.log2 %11 : tensor<5xf32>
        %267 = math.round %splat_44 : tensor<1x10xf32>
      }
      %247 = index.divu %c4, %162
      %inserted_52 = tensor.insert %cst into %expanded[%c3, %c0] : tensor<5x1xf32>
      affine.for %arg0 = 0 to 91 {
      }
      %248 = math.log2 %196 : tensor<5xf32>
      affine.store %c0_i64, %alloc_14[%c15] : memref<10xi64>
      %249 = affine.min affine_map<(d0, d1) -> (-d1, -d1, 0, ((d1 * 2) mod 4) * 2)>(%100, %c15)
      %250 = bufferization.clone %51 : memref<5xf16> to memref<5xf16>
      %251 = arith.remsi %c601140914_i32, %c601140914_i32 : i32
      %252 = index.mul %c5, %34
      %inserted_53 = tensor.insert %cst_0 into %11[%c3] : tensor<5xf32>
      %alloca_54 = memref.alloca() : memref<10x10xf16>
      %253 = math.tan %extracted : f32
      affine.for %arg0 = 0 to 25 {
      }
      %254 = arith.xori %c1274420694_i32, %c601140914_i32 : i32
      scf.yield
    }
    case 2 {
      %246 = index.ceildivs %c2, %c4
      affine.for %arg0 = 0 to 30 {
      }
      memref.assume_alignment %alloc_13, 2 : memref<10xi1>
      %247 = index.sizeof
      memref.tensor_store %2, %146 : memref<10x10xi16>
      %248 = arith.addi %false, %true_25 : i1
      %249 = vector.flat_transpose %119 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
      affine.for %arg0 = 0 to 37 {
      }
      %250 = math.log %splat_44 : tensor<1x10xf32>
      %251 = math.tan %6 : tensor<5xf32>
      %252 = math.roundeven %3 : tensor<5xf16>
      %253 = arith.minui %c-9657_i16, %c-9657_i16 : i16
      %collapsed_52 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x10xi1> into tensor<10xi1>
      %254 = affine.load %alloc_13[%c15] : memref<10xi1>
      %alloc_53 = memref.alloc() : memref<10xi32>
      %255 = tensor.empty() : tensor<10x10xf16>
      %256 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      %257 = vector.gather %255[%c4, %31] [%44], %81, %256 : tensor<10x10xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      scf.yield
    }
    case 3 {
      %246 = arith.addi %c-9657_i16, %c-9657_i16 : i16
      memref.assume_alignment %alloc_14, 4 : memref<10xi64>
      %247 = memref.load %alloc_16[%c9, %c7] : memref<10x10xf32>
      %alloca_52 = memref.alloca() : memref<10xf16>
      %248 = vector.broadcast %189 : index to vector<1xindex>
      %249 = vector.broadcast %true_25 : i1 to vector<1xi1>
      %250 = vector.broadcast %cst_2 : f16 to vector<1xf16>
      vector.scatter %alloc_24[] [%248], %249, %250 : memref<f16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
      %251 = arith.addi %c104519227_i32, %c601140914_i32 : i32
      %alloc_53 = memref.alloc() : memref<1x10xi64>
      %252 = vector.broadcast %cst_5 : f16 to vector<10xf16>
      %dest, %accumulated_value = vector.scan <mul>, %175, %252 {inclusive = true, reduction_dim = 0 : i64} : vector<1x10xf16>, vector<10xf16>
      %253 = index.divu %182, %170
      %254 = affine.load %alloc_18[%c8, %c1] : memref<1x10xi64>
      %255 = arith.minf %cst_1, %cst_6 : f32
      %256 = scf.index_switch %c9 -> i1 
      case 1 {
        %263 = math.fpowi %extracted, %c601140914_i32 : f32, i32
        %264 = math.rsqrt %11 : tensor<5xf32>
        %265 = index.floordivs %c11, %c11
        %266 = math.powf %cst_6, %105 : f32
        %267 = index.ceildivs %169, %34
        %268 = arith.shrsi %c24664_i16, %c-9657_i16 : i16
        %splat_54 = tensor.splat %c24664_i16 : tensor<10x10xi16>
        %269 = affine.min affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%c6, %35, %182)
        %270 = math.rsqrt %5 : tensor<10xf16>
        %271 = vector.shuffle %214, %214 [0, 2, 8, 9] : vector<5xi32>, vector<5xi32>
        %272 = index.maxu %150, %231
        %273 = bufferization.to_tensor %alloc_19 : memref<10x10xi16>
        %274 = memref.realloc %alloc_23 : memref<5xf16> to memref<10xf16>
        %275 = vector.broadcast %c24664_i16 : i16 to vector<i16>
        %276 = vector.transfer_write %275, %4[%272] : vector<i16>, tensor<5xi16>
        %277 = arith.divui %c1274420694_i32, %c1274420694_i32 : i32
        memref.assume_alignment %alloc_14, 1 : memref<10xi64>
        scf.yield %true_25 : i1
      }
      case 2 {
        %263 = index.castu %c10 : index to i32
        %264 = index.divs %53, %100
        %265 = math.tan %cst_0 : f32
        %266 = vector.broadcast %extracted : f32 to vector<f32>
        vector.transfer_write %266, %alloc_21[%232] : vector<f32>, memref<5xf32>
        %alloc_54 = memref.alloc() : memref<10x10xf32>
        %267 = arith.subi %c601140914_i32, %c1274420694_i32 : i32
        %268 = index.maxs %170, %c13
        %269 = vector.broadcast %cst_7 : f16 to vector<5xf16>
        %270 = vector.maskedload %alloc_23[%c4], %124, %269 : memref<5xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %271 = arith.minsi %false, %true_25 : i1
        %272 = arith.negf %cst_3 : f32
        %273 = arith.muli %c0_i64, %c0_i64 : i64
        %274 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 126)>(%157, %232, %c3)
        %275 = math.log10 %cst_1 : f32
        %276 = arith.addi %true_25, %true : i1
        %277 = bufferization.clone %alloc_8 : memref<1x10xi64> to memref<1x10xi64>
        %278 = math.sqrt %5 : tensor<10xf16>
        scf.yield %true_25 : i1
      }
      case 3 {
        %263 = vector.load %alloc_13[%c4] : memref<10xi1>, vector<5xi1>
        %264 = vector.transpose %29, [0] : vector<10xf32> to vector<10xf32>
        %265 = arith.maxsi %c1274420694_i32, %c601140914_i32 : i32
        %266 = index.divs %76, %c6
        %splat_54 = tensor.splat %true_25 : tensor<10x10xi1>
        %267 = math.sqrt %196 : tensor<5xf32>
        %268 = index.ceildivs %141, %118
        %269 = arith.maxsi %true_25, %true_25 : i1
        %collapsed_55 = tensor.collapse_shape %80 [[0, 1]] : tensor<10x10xi1> into tensor<100xi1>
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %55, %85, %cst : vector<1xf32>, vector<1xf32> into f32
        %271 = index.add %53, %169
        %272 = index.divu %268, %182
        %273 = arith.remsi %true, %true : i1
        %274 = vector.create_mask %189 : vector<5xi1>
        %275 = arith.muli %c1274420694_i32, %c104519227_i32 : i32
        %276 = vector.bitcast %173 : vector<1x10xi1> to vector<1x10xi1>
        scf.yield %false : i1
      }
      case 4 {
        %263 = vector.bitcast %173 : vector<1x10xi1> to vector<1x10xi1>
        %splat_54 = tensor.splat %c0_i64 : tensor<10xi64>
        %alloc_55 = memref.alloc() : memref<10xf32>
        memref.copy %149, %alloc_55 : memref<10xf32> to memref<10xf32>
        memref.assume_alignment %146, 4 : memref<10x10xi16>
        affine.store %true, %alloc_9[%c2, %c3] : memref<1x10xi1>
        %264 = vector.broadcast %105 : f32 to vector<10x10xf32>
        %265 = vector.fma %264, %264, %264 : vector<10x10xf32>
        %266 = arith.negf %cst_5 : f16
        %267 = arith.divui %c-9657_i16, %c-9657_i16 : i16
        %268 = arith.maxsi %c-9657_i16, %c24664_i16 : i16
        %269 = arith.cmpi sle, %254, %c0_i64 : i64
        %270 = tensor.empty() : tensor<10xf32>
        %271 = vector.gather %270[%c6] [%42], %160, %264 : tensor<10xf32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf32> into vector<10x10xf32>
        %272 = arith.divui %c104519227_i32, %c104519227_i32 : i32
        %273 = arith.maxsi %254, %254 : i64
        %274 = vector.splat %232 : vector<10x10xindex>
        memref.tensor_store %collapsed, %alloc_13 : memref<10xi1>
        %275 = vector.outerproduct %44, %44, %42 {kind = #vector.kind<or>} : vector<10xi32>, vector<10xi32>
        scf.yield %true_25 : i1
      }
      default {
        %263 = vector.broadcast %cst_2 : f16 to vector<10xf16>
        %264 = vector.maskedload %alloc_23[%c0], %81, %263 : memref<5xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %265 = math.exp %11 : tensor<5xf32>
        %266 = tensor.empty() : tensor<10x10xi16>
        %267 = vector.extract %119[4] : vector<10xf32>
        %268 = math.exp %6 : tensor<5xf32>
        %269 = index.maxs %35, %34
        %270 = arith.negf %cst_6 : f32
        %271 = vector.matrix_multiply %230, %61 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
        %272 = vector.bitcast %174 : vector<1x10xi32> to vector<1x10xi32>
        %273 = vector.bitcast %177 : vector<10xf32> to vector<10xf32>
        %274 = arith.remsi %c601140914_i32, %c601140914_i32 : i32
        %275 = arith.remsi %c24664_i16, %c24664_i16 : i16
        %276 = vector.broadcast %c104519227_i32 : i32 to vector<10xi32>
        vector.transfer_write %276, %alloc_10[%35, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi32>, memref<1x10xi32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %68, %68, %true_25 : vector<10xi1>, vector<10xi1> into i1
        %inserted_54 = tensor.insert %c1274420694_i32 into %8[%c0, %c8] : tensor<1x10xi32>
        %278 = math.atan %cst_4 : f32
        scf.yield %true_25 : i1
      }
      %257 = vector.broadcast %cst_5 : f16 to vector<10xf16>
      %258 = vector.gather %alloc_23[%c12] [%44], %68, %257 : memref<5xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      %259 = affine.load %alloc_21[%c3] : memref<5xf32>
      %260 = index.ceildivs %c1, %185
      %261 = vector.broadcast %254 : i64 to vector<i64>
      %262 = vector.transfer_write %261, %17[%141] : vector<i64>, tensor<10xi64>
      scf.yield
    }
    case 4 {
      %246 = math.absi %194 : tensor<1x10xi1>
      %247 = arith.shli %c601140914_i32, %c104519227_i32 : i32
      %248 = scf.index_switch %c5 -> memref<10xf16> 
      case 1 {
        %260 = math.fpowi %105, %c104519227_i32 : f32, i32
        %261 = math.copysign %6, %6 : tensor<5xf32>
        %262 = index.castu %c601140914_i32 : i32 to index
        %alloc_53 = memref.alloc() : memref<10x10xi1>
        vector.print %134 : vector<10xf32>
        %263 = index.add %262, %231
        %264 = index.ceildivu %118, %148
        %265 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %265, %alloc_9[%189, %231] : vector<i1>, memref<1x10xi1>
        %cast = tensor.cast %splat_33 : tensor<5xi1> to tensor<?xi1>
        %266 = arith.subi %true_25, %true : i1
        %267 = math.copysign %cst_0, %cst : f32
        %268 = bufferization.to_memref %15 : memref<5xi1>
        %269 = vector.load %alloc_39[%c0, %c5] : memref<1x10xf16>, vector<1x10xf16>
        %270 = vector.splat %c9 : vector<10xindex>
        %alloc_54 = memref.alloc() : memref<10x10xi32>
        %271 = vector.gather %alloc_54[%162, %150] [%44], %68, %44 : memref<10x10xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %272 = bufferization.to_memref %1 : memref<10x10xi1>
        scf.yield %alloc_15 : memref<10xf16>
      }
      case 2 {
        %260 = vector.shuffle %81, %81 [1, 3, 4, 7, 10, 11, 12, 13, 14, 17, 19] : vector<10xi1>, vector<10xi1>
        %261 = vector.broadcast %207 : index to vector<10xindex>
        vector.scatter %alloc_9[%c0, %c8] [%261], %81, %81 : memref<1x10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %262 = arith.shrui %c601140914_i32, %c601140914_i32 : i32
        memref.store %c-9657_i16, %alloc_12[%c0] : memref<10xi16>
        %263 = vector.bitcast %41 : vector<10x10xi1> to vector<10x10xi1>
        %264 = index.ceildivs %c1, %c5
        %265 = math.copysign %cst_0, %cst_3 : f32
        %266 = arith.subi %c24664_i16, %c24664_i16 : i16
        %collapsed_53 = tensor.collapse_shape %194 [[0, 1]] : tensor<1x10xi1> into tensor<10xi1>
        %267 = affine.load %alloc_13[%c12] : memref<10xi1>
        %268 = memref.load %alloc_10[%c0, %c8] : memref<1x10xi32>
        %269 = math.sqrt %6 : tensor<5xf32>
        %270 = math.round %splat : tensor<5xf32>
        %true_54 = index.bool.constant true
        %271 = index.mul %c9, %83
        %272 = arith.mulf %cst_0, %cst_0 : f32
        scf.yield %alloc_15 : memref<10xf16>
      }
      case 3 {
        %inserted_53 = tensor.insert %c-9657_i16 into %4[%c3] : tensor<5xi16>
        %260 = math.log1p %cst_4 : f32
        memref.assume_alignment %alloc_9, 1 : memref<1x10xi1>
        %261 = vector.broadcast %185 : index to vector<1xindex>
        %262 = vector.broadcast %true : i1 to vector<1xi1>
        %263 = vector.broadcast %c0_i64 : i64 to vector<1xi64>
        vector.scatter %alloc_14[%c1] [%261], %262, %263 : memref<10xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %264 = math.atan %expanded : tensor<5x1xf32>
        %265 = arith.minui %c-9657_i16, %c-9657_i16 : i16
        %266 = index.divs %157, %232
        %inserted_54 = tensor.insert %cst_1 into %collapsed_30[%c2] : tensor<5xf32>
        %267 = math.sqrt %collapsed_30 : tensor<5xf32>
        %268 = vector.bitcast %177 : vector<10xf32> to vector<10xf32>
        %splat_55 = tensor.splat %cst_5 : tensor<10x10xf16>
        %269 = index.maxs %100, %185
        %270 = vector.broadcast %c13 : index to vector<10xindex>
        %271 = vector.broadcast %c0_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_8[%c0, %c9] [%270], %68, %271 : memref<1x10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %272 = index.add %c4, %c10
        %273 = bufferization.to_memref %2 : memref<10x10xi16>
        %274 = index.add %169, %182
        scf.yield %alloc_15 : memref<10xf16>
      }
      case 4 {
        %inserted_53 = tensor.insert %c104519227_i32 into %7[%c0, %c6] : tensor<10x10xi32>
        %260 = vector.reduction <mul>, %230 : vector<10xf32> into f32
        %261 = arith.remsi %c104519227_i32, %c601140914_i32 : i32
        %262 = index.ceildivs %c11, %231
        %263 = arith.muli %c-9657_i16, %c-9657_i16 : i16
        %264 = index.mul %c9, %c14
        %265 = arith.ori %c-9657_i16, %c-9657_i16 : i16
        %266 = arith.maxsi %c0_i64, %c0_i64 : i64
        %267 = arith.floordivsi %c601140914_i32, %c601140914_i32 : i32
        %true_54 = index.bool.constant true
        %268 = arith.shrui %true_54, %false : i1
        %269 = index.maxs %102, %c11
        %expanded_55 = tensor.expand_shape %5 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        affine.store %105, %149[%c7] : memref<10xf32>
        %270 = vector.insert %extracted, %61 [2] : f32 into vector<10xf32>
        %271 = arith.addi %true, %true_25 : i1
        scf.yield %alloc_15 : memref<10xf16>
      }
      default {
        %260 = vector.maskedload %alloc_16[%c9, %c3], %81, %177 : memref<10x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %261 = math.floor %splat_44 : tensor<1x10xf32>
        %262 = math.tan %6 : tensor<5xf32>
        %263 = vector.extract %260[4] : vector<10xf32>
        %264 = memref.load %alloc_19[%c2, %c2] : memref<10x10xi16>
        vector.print %40 : vector<10xf32>
        %265 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
        %266 = vector.outerproduct %40, %134, %265 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
        %267 = vector.broadcast %c-9657_i16 : i16 to vector<i16>
        %268 = vector.transfer_write %267, %2[%c4, %c11] : vector<i16>, tensor<10x10xi16>
        %269 = arith.subi %true_25, %true : i1
        %270 = index.sub %100, %182
        %inserted_53 = tensor.insert %c601140914_i32 into %7[%c8, %c9] : tensor<10x10xi32>
        %271 = arith.addi %c601140914_i32, %c601140914_i32 : i32
        %272 = index.ceildivs %c10, %102
        %273 = math.cttz %15 : tensor<5xi1>
        %274 = index.maxs %232, %270
        %275 = index.sizeof
        scf.yield %alloc_15 : memref<10xf16>
      }
      memref.tensor_store %13, %alloc_14 : memref<10xi64>
      %249 = arith.xori %true_25, %true : i1
      %250 = arith.subi %true_25, %true : i1
      %collapsed_52 = tensor.collapse_shape %expanded [[0, 1]] : tensor<5x1xf32> into tensor<5xf32>
      %251 = affine.min affine_map<(d0, d1) -> (-(d1 ceildiv 8), (d1 mod 16) floordiv 8 + d1 ceildiv 8)>(%150, %c9)
      %252 = arith.addi %c-9657_i16, %c24664_i16 : i16
      %253 = vector.create_mask %c3 : vector<5xi1>
      %254 = math.fpowi %splat_44, %8 : tensor<1x10xf32>, tensor<1x10xi32>
      %255 = math.log2 %cst_1 : f32
      %256 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 8 >= 0, d3 >= 0, d1 * -64 == 0)>(%c14, %c6, %c9, %c13) -> memref<1x10xi1> {
        %260 = vector.broadcast %cst_7 : f16 to vector<10xf16>
        vector.transfer_write %260, %alloc_39[%251, %100] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf16>, memref<1x10xf16>
        %261 = arith.divui %c601140914_i32, %c1274420694_i32 : i32
        %262 = math.exp2 %cst_2 : f16
        %true_53 = index.bool.constant true
        %263 = arith.xori %c104519227_i32, %c601140914_i32 : i32
        %expanded_54 = tensor.expand_shape %4 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
        %264 = arith.mulf %cst_7, %cst_5 : f16
        %265 = vector.broadcast %cst_6 : f32 to vector<10x10xf32>
        %266 = vector.fma %265, %265, %265 : vector<10x10xf32>
        affine.yield %alloc_9 : memref<1x10xi1>
      } else {
        %260 = bufferization.to_tensor %alloc_23 : memref<5xf16>
        %261 = vector.broadcast %c24664_i16 : i16 to vector<5x5xi16>
        %262 = vector.outerproduct %126, %123, %261 {kind = #vector.kind<maxui>} : vector<5xi16>, vector<5xi16>
        %263 = arith.addi %c601140914_i32, %c1274420694_i32 : i32
        %264 = vector.broadcast %cst_5 : f16 to vector<10xf16>
        %dest, %accumulated_value = vector.scan <mul>, %172, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<1x10xf16>, vector<10xf16>
        %265 = index.castu %251 : index to i32
        %266 = memref.realloc %51 : memref<5xf16> to memref<5xf16>
        %267 = math.roundeven %cst_5 : f16
        %268 = math.round %3 : tensor<5xf16>
        affine.yield %alloc_9 : memref<1x10xi1>
      }
      %257 = math.log1p %collapsed_52 : tensor<5xf32>
      %258 = affine.load %alloc_10[%c3, %c9] : memref<1x10xi32>
      %259 = math.exp2 %cst_3 : f32
      scf.yield
    }
    default {
      %collapsed_52 = tensor.collapse_shape %2 [[0, 1]] : tensor<10x10xi16> into tensor<100xi16>
      %246 = vector.shuffle %173, %173 [0, 1] : vector<1x10xi1>, vector<1x10xi1>
      %247 = vector.broadcast %c601140914_i32 : i32 to vector<i32>
      vector.transfer_write %247, %alloc_10[%118, %102] : vector<i32>, memref<1x10xi32>
      %248 = math.atan %11 : tensor<5xf32>
      %expanded_53 = tensor.expand_shape %11 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
      %249 = index.floordivs %100, %102
      %250 = scf.while (%arg0 = %172) : (vector<1x10xf16>) -> vector<1x10xf16> {
        %260 = math.ctlz %20 : tensor<i1>
        %c1555303416_i32 = arith.constant 1555303416 : i32
        %261 = arith.remsi %true, %true : i1
        %collapsed_54 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x10xi1> into tensor<10xi1>
        %262 = tensor.empty() : tensor<10x10xi1>
        %263 = linalg.matmul ins(%1, %1 : tensor<10x10xi1>, tensor<10x10xi1>) outs(%262 : tensor<10x10xi1>) -> tensor<10x10xi1>
        %264 = math.floor %cst_6 : f32
        %265 = vector.create_mask %c15 : vector<5xi1>
        %266 = vector.transpose %134, [0] : vector<10xf32> to vector<10xf32>
        scf.condition(%true_25) %175 : vector<1x10xf16>
      } do {
      ^bb0(%arg0: vector<1x10xf16>):
        %260 = index.divu %53, %c11
        %261 = math.fpowi %196, %91 : tensor<5xf32>, tensor<5xi32>
        %false_54 = index.bool.constant false
        %262 = math.cos %cst_5 : f16
        %263 = index.castu %260 : index to i32
        %264 = vector.broadcast %162 : index to vector<10xindex>
        %265 = vector.broadcast %c24664_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_12[%c6] [%264], %68, %265 : memref<10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        memref.store %c0_i64, %alloc_18[%c0, %c7] : memref<1x10xi64>
        %266 = math.ctlz %20 : tensor<i1>
        %267 = arith.addi %c0_i64, %c0_i64 : i64
        %268 = vector.bitcast %18 : vector<10xf32> to vector<10xf32>
        %269 = math.copysign %cst_0, %cst_3 : f32
        %270 = vector.bitcast %125 : vector<5xi32> to vector<5xf32>
        %271 = vector.reduction <mul>, %177 : vector<10xf32> into f32
        %272 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 4)>(%31, %c6, %231)
        %273 = arith.remf %extracted, %extracted : f32
        %274 = vector.shuffle %126, %123 [0, 2, 3, 4, 7, 8, 9] : vector<5xi16>, vector<5xi16>
        scf.yield %175 : vector<1x10xf16>
      }
      %251 = vector.load %alloc_19[%c1, %c9] : memref<10x10xi16>, vector<10x10xi16>
      %252 = bufferization.to_memref %splat_44 : memref<1x10xf32>
      %253 = arith.cmpi uge, %true_25, %true_25 : i1
      %254 = scf.index_switch %c9 -> tensor<1x10xi1> 
      case 1 {
        %260 = vector.load %alloc_12[%c5] : memref<10xi16>, vector<10x10xi16>
        %collapsed_54 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x10xi1> into tensor<10xi1>
        %extracted_55 = tensor.extract %expanded_40[%c1, %c5, %c0] : tensor<10x10x1xi32>
        %261 = arith.shrsi %c0_i64, %c0_i64 : i64
        %262 = arith.minf %cst_5, %cst_2 : f16
        %263 = math.log %expanded : tensor<5x1xf32>
        %264 = math.copysign %6, %11 : tensor<5xf32>
        %alloc_56 = memref.alloc() : memref<10x10x1xi32>
        memref.tensor_store %expanded_40, %alloc_56 : memref<10x10x1xi32>
        %265 = vector.broadcast %34 : index to vector<10xindex>
        vector.scatter %alloc_13[%c5] [%265], %68, %68 : memref<10xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %expanded_57 = tensor.expand_shape %4 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
        %266 = math.round %cst_7 : f16
        %267 = math.powf %splat, %6 : tensor<5xf32>
        %268 = index.divu %c15, %150
        %269 = bufferization.clone %alloc_13 : memref<10xi1> to memref<10xi1>
        %270 = vector.create_mask %c10 : vector<5xi1>
        %271 = arith.remf %cst_0, %cst_4 : f32
        scf.yield %12 : tensor<1x10xi1>
      }
      case 2 {
        vector.print %18 : vector<10xf32>
        %260 = arith.ori %false, %true : i1
        %261 = vector.broadcast %c6 : index to vector<10xindex>
        %262 = vector.broadcast %c0_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_14[%c8] [%261], %68, %262 : memref<10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %263 = index.castu %true_25 : i1 to index
        %264 = affine.load %alloc_14[%c1] : memref<10xi64>
        %265 = arith.addf %cst_0, %cst_0 : f32
        %266 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 64, d0)>(%53, %144)
        %267 = vector.transpose %55, [0] : vector<1xf32> to vector<1xf32>
        %268 = arith.maxsi %c104519227_i32, %c1274420694_i32 : i32
        memref.assume_alignment %alloc_8, 4 : memref<1x10xi64>
        %alloc_54 = memref.alloc() : memref<10x10xf16>
        %269 = vector.broadcast %cst_2 : f16 to vector<10x10xf16>
        %270 = vector.gather %alloc_54[%76, %162] [%42], %43, %269 : memref<10x10xf16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf16> into vector<10x10xf16>
        %true_55 = index.bool.constant true
        %271 = math.log1p %cst_2 : f16
        %272 = vector.broadcast %true_25 : i1 to vector<5x5xi1>
        %273 = vector.outerproduct %124, %124, %272 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
        %alloc_56 = memref.alloc() : memref<5xi32>
        %274 = vector.gather %alloc_56[%c7] [%42], %41, %42 : memref<5xi32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi32> into vector<10x10xi32>
        memref.copy %alloc_23, %51 : memref<5xf16> to memref<5xf16>
        scf.yield %194 : tensor<1x10xi1>
      }
      case 3 {
        %260 = math.log10 %5 : tensor<10xf16>
        memref.copy %alloc_19, %146 : memref<10x10xi16> to memref<10x10xi16>
        %261 = arith.remf %cst_5, %cst_7 : f16
        %262 = vector.shuffle %81, %124 [0, 3, 4, 5, 6, 9, 10, 13] : vector<10xi1>, vector<5xi1>
        %263 = index.ceildivs %c7, %c3
        %264 = math.round %cst_0 : f32
        %265 = arith.xori %c-9657_i16, %c24664_i16 : i16
        %266 = math.log1p %cst_2 : f16
        %267 = arith.shrui %c-9657_i16, %c-9657_i16 : i16
        %268 = vector.broadcast %c24664_i16 : i16 to vector<i16>
        vector.transfer_write %268, %alloc_19[%c11, %c11] : vector<i16>, memref<10x10xi16>
        vector.print %42 : vector<10x10xi32>
        %269 = vector.broadcast %cst_6 : f32 to vector<1x10xf32>
        %270 = vector.fma %269, %269, %269 : vector<1x10xf32>
        %271 = math.tan %cst_1 : f32
        %272 = index.maxs %232, %76
        %273 = math.exp %collapsed_30 : tensor<5xf32>
        %274 = arith.addi %c-9657_i16, %c-9657_i16 : i16
        scf.yield %194 : tensor<1x10xi1>
      }
      default {
        %260 = vector.insert %cst_3, %177 [8] : f32 into vector<10xf32>
        %261 = vector.broadcast %c4 : index to vector<10xindex>
        %262 = vector.broadcast %cst_2 : f16 to vector<10xf16>
        vector.scatter %alloc_24[] [%261], %68, %262 : memref<f16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %263 = math.roundeven %splat_44 : tensor<1x10xf32>
        %264 = math.exp %cst_0 : f32
        %265 = arith.addi %true_25, %true : i1
        %266 = arith.maxsi %true, %true : i1
        %267 = index.castu %207 : index to i32
        memref.assume_alignment %alloc_19, 4 : memref<10x10xi16>
        %268 = math.log %6 : tensor<5xf32>
        %269 = math.exp2 %11 : tensor<5xf32>
        %270 = math.round %cst_5 : f16
        memref.tensor_store %2, %146 : memref<10x10xi16>
        %271 = bufferization.clone %alloc_18 : memref<1x10xi64> to memref<1x10xi64>
        %272 = arith.remf %cst, %cst : f32
        %273 = math.fpowi %cst_4, %c104519227_i32 : f32, i32
        memref.assume_alignment %alloc_13, 1 : memref<10xi1>
        scf.yield %10 : tensor<1x10xi1>
      }
      %255 = math.log %cst : f32
      %256 = arith.xori %c24664_i16, %c-9657_i16 : i16
      %257 = math.cos %5 : tensor<10xf16>
      %258 = vector.matrix_multiply %124, %81 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<10xi1>) -> vector<2xi1>
      %259 = affine.for %arg0 = 0 to 86 iter_args(%arg1 = %alloc_19) -> (memref<10x10xi16>) {
        affine.yield %arg1 : memref<10x10xi16>
      }
    }
    %233 = arith.remf %cst, %cst_3 : f32
    %234 = math.rsqrt %5 : tensor<10xf16>
    %splat_48 = tensor.splat %cst_5 : tensor<5xf16>
    %235 = tensor.empty() : tensor<10xf16>
    %236 = math.log10 %cst_7 : f16
    %expanded_49 = tensor.expand_shape %19 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
    memref.copy %146, %alloc_19 : memref<10x10xi16> to memref<10x10xi16>
    %237 = arith.mulf %105, %105 : f32
    memref.assume_alignment %26, 2 : memref<10xi16>
    %238 = scf.index_switch %232 -> index 
    case 1 {
      %246 = math.round %6 : tensor<5xf32>
      %247 = math.cttz %2 : tensor<10x10xi16>
      %248 = math.log2 %cst_6 : f32
      %249 = arith.divui %c0_i64, %c0_i64 : i64
      %250 = math.powf %6, %6 : tensor<5xf32>
      %251 = arith.shrui %c0_i64, %c0_i64 : i64
      %extracted_52 = tensor.extract %21[] : tensor<i1>
      %252 = arith.remf %cst_0, %cst_3 : f32
      %253 = arith.negf %cst_3 : f32
      %254 = vector.extract %68[7] : vector<10xi1>
      %255 = math.round %cst_2 : f16
      %true_53 = index.bool.constant true
      memref.tensor_store %8, %alloc_10 : memref<1x10xi32>
      %256 = arith.addf %cst_1, %extracted : f32
      affine.store %cst_7, %alloc_24[] : memref<f16>
      %257 = scf.while (%arg0 = %alloc_11) : (memref<10x10xi1>) -> memref<10x10xi1> {
        %258 = vector.bitcast %55 : vector<1xf32> to vector<1xf32>
        %false_54 = arith.constant false
        %259 = arith.addi %c24664_i16, %c24664_i16 : i16
        %260 = vector.load %alloc_9[%c0, %c1] : memref<1x10xi1>, vector<10xi1>
        %261 = math.copysign %expanded, %expanded : tensor<5x1xf32>
        memref.assume_alignment %arg0, 2 : memref<10x10xi1>
        %262 = memref.atomic_rmw andi %c24664_i16, %26[%c0] : (i16, memref<10xi16>) -> i16
        %263 = math.roundeven %cst_5 : f16
        scf.condition(%extracted_52) %arg0 : memref<10x10xi1>
      } do {
      ^bb0(%arg0: memref<10x10xi1>):
        %258 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %259 = vector.fma %258, %69, %134 : vector<10xf32>
        %260 = math.tan %6 : tensor<5xf32>
        %261 = index.sub %162, %100
        %262 = arith.mulf %cst_5, %cst_5 : f16
        %263 = arith.addi %true, %true_53 : i1
        %264 = math.exp %splat_48 : tensor<5xf16>
        %265 = arith.remf %cst_0, %cst_1 : f32
        %splat_54 = tensor.splat %false : tensor<5xi1>
        %266 = arith.maxsi %c104519227_i32, %c1274420694_i32 : i32
        %267 = vector.bitcast %125 : vector<5xi32> to vector<5xi32>
        %268 = bufferization.to_tensor %alloc_18 : memref<1x10xi64>
        %269 = math.tan %expanded : tensor<5x1xf32>
        %270 = math.exp %3 : tensor<5xf16>
        %271 = vector.flat_transpose %81 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %272 = math.round %196 : tensor<5xf32>
        %273 = math.ceil %cst : f32
        scf.yield %alloc_11 : memref<10x10xi1>
      }
      scf.yield %c2 : index
    }
    default {
      %246 = math.log2 %cst_0 : f32
      memref.store %c-9657_i16, %alloc_22[%c0, %c4] : memref<1x10xi16>
      %247 = index.ceildivs %c15, %169
      %248 = arith.mulf %cst_0, %105 : f32
      %249 = arith.minui %c0_i64, %c0_i64 : i64
      %250 = index.castu %true : i1 to index
      %251 = tensor.empty() : tensor<10xi32>
      %252 = math.fpowi %5, %251 : tensor<10xf16>, tensor<10xi32>
      %collapsed_52 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x10xi64> into tensor<?xi64>
      %253 = vector.broadcast %cst_0 : f32 to vector<f32>
      %254 = vector.transfer_write %253, %6[%34] : vector<f32>, tensor<5xf32>
      %255 = scf.index_switch %141 -> index 
      case 1 {
        %261 = vector.broadcast %cst_7 : f16 to vector<1xf16>
        %dest, %accumulated_value = vector.scan <mul>, %172, %261 {inclusive = true, reduction_dim = 1 : i64} : vector<1x10xf16>, vector<1xf16>
        %262 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %263 = vector.gather %alloc_20[%182, %c15] [%42], %41, %262 : memref<1x10xf32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf32> into vector<10x10xf32>
        %264 = math.floor %cst_5 : f16
        %inserted_54 = tensor.insert %true_25 into %expanded_49[%c2, %c0] : tensor<10x1xi1>
        %265 = math.ctlz %c104519227_i32 : i32
        %266 = arith.muli %c1274420694_i32, %c1274420694_i32 : i32
        %267 = arith.remf %105, %extracted : f32
        %268 = math.atan %6 : tensor<5xf32>
        %269 = vector.bitcast %175 : vector<1x10xf16> to vector<1x10xf16>
        %270 = math.log1p %6 : tensor<5xf32>
        %271 = arith.muli %true_25, %true_25 : i1
        %272 = index.mul %150, %144
        %273 = vector.flat_transpose %124 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %false_55 = index.bool.constant false
        %274 = arith.shrui %c601140914_i32, %c601140914_i32 : i32
        %275 = memref.realloc %alloc_23 : memref<5xf16> to memref<10xf16>
        scf.yield %31 : index
      }
      case 2 {
        %261 = arith.maxsi %c-9657_i16, %c-9657_i16 : i16
        %262 = tensor.empty(%150) : tensor<1x?xf16>
        %263 = arith.divui %c601140914_i32, %c1274420694_i32 : i32
        %264 = affine.load %alloc_19[%c3, %c9] : memref<10x10xi16>
        %265 = math.log %collapsed_30 : tensor<5xf32>
        %266 = arith.divui %false, %true : i1
        %267 = arith.muli %c1274420694_i32, %c104519227_i32 : i32
        %268 = arith.muli %c1274420694_i32, %c104519227_i32 : i32
        memref.assume_alignment %alloc_17, 1 : memref<10xi1>
        %269 = math.round %expanded : tensor<5x1xf32>
        %collapsed_54 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x10xi64> into tensor<?xi64>
        %270 = arith.addf %extracted, %cst_3 : f32
        %271 = math.fpowi %cst_2, %c1274420694_i32 : f16, i32
        vector.print %172 : vector<1x10xf16>
        %272 = arith.divf %cst_3, %cst_4 : f32
        %273 = vector.broadcast %cst_6 : f32 to vector<10x10xf32>
        %274 = vector.outerproduct %177, %177, %273 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
        scf.yield %c11 : index
      }
      default {
        vector.print %58 : vector<10xf32>
        %261 = arith.mulf %105, %cst_4 : f32
        %262 = vector.shuffle %18, %119 [1, 4, 5, 7, 8, 13, 16, 18] : vector<10xf32>, vector<10xf32>
        %cast = tensor.cast %196 : tensor<5xf32> to tensor<?xf32>
        %splat_54 = tensor.splat %c-9657_i16 : tensor<10xi16>
        %cast_55 = tensor.cast %19 : tensor<10xi1> to tensor<?xi1>
        %263 = arith.minui %true_25, %true_25 : i1
        %alloc_56 = memref.alloc() : memref<10xi32>
        %264 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %265 = vector.outerproduct %40, %230, %264 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
        %266 = math.round %5 : tensor<10xf16>
        %alloca_57 = memref.alloca() : memref<5xf32>
        %alloc_58 = memref.alloc() : memref<5xi64>
        %267 = index.mul %109, %c7
        %268 = memref.load %51[%c3] : memref<5xf16>
        %269 = vector.load %alloc[%c4] : memref<5xi1>, vector<10xi1>
        %270 = arith.cmpi ne, %true, %false : i1
        scf.yield %c3 : index
      }
      %false_53 = index.bool.constant false
      %256 = arith.floordivsi %false, %false_53 : i1
      %257 = arith.muli %false, %true_25 : i1
      %258 = math.floor %cst_1 : f32
      %259 = arith.mulf %cst_6, %cst_4 : f32
      %260 = vector.flat_transpose %29 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
      scf.yield %232 : index
    }
    memref.assume_alignment %alloc_11, 2 : memref<10x10xi1>
    memref.store %c24664_i16, %alloc_12[%c5] : memref<10xi16>
    %true_50 = index.bool.constant true
    %extracted_51 = tensor.extract %17[%c1] : tensor<10xi64>
    %239 = arith.negf %cst_5 : f16
    %240 = tensor.empty() : tensor<10x10xi1>
    %241 = linalg.copy ins(%1 : tensor<10x10xi1>) outs(%240 : tensor<10x10xi1>) -> tensor<10x10xi1>
    %242 = tensor.empty() : tensor<10xi64>
    %transposed = linalg.transpose ins(%16 : tensor<10xi64>) outs(%242 : tensor<10xi64>) permutation = [0] 
    %243 = tensor.empty() : tensor<10xi1>
    %reduced = linalg.reduce ins(%45 : tensor<10x10xi1>) outs(%243 : tensor<10xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %246 = index.castu %in : i1 to index
        %247 = vector.matrix_multiply %177, %177 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
        %248 = index.divu %c13, %207
        %249 = vector.load %146[%c5, %c2] : memref<10x10xi16>, vector<1x10xi16>
        %alloc_52 = memref.alloc() : memref<10xi32>
        %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_52 : memref<10xi32>, memref<10xi32>) outs(%expanded_40 : tensor<10x10x1xi32>) {
        ^bb0(%in_55: i32, %in_56: i32, %out: i32):
          %253 = arith.cmpi ugt, %c104519227_i32, %c1274420694_i32 : i32
          %254 = math.log2 %cst_2 : f16
          %255 = memref.atomic_rmw minf %extracted, %alloc_21[%c0] : (f32, memref<5xf32>) -> f32
          %256 = memref.realloc %26 : memref<10xi16> to memref<5xi16>
          %257 = index.divu %148, %c9
          %258 = vector.insertelement %cst_0, %40[%c10 : index] : vector<10xf32>
          %259 = math.sqrt %collapsed_30 : tensor<5xf32>
          %260 = arith.divui %false, %init : i1
          %alloc_57 = memref.alloc() : memref<10x10xi16>
          %261 = vector.transpose %177, [0] : vector<10xf32> to vector<10xf32>
          %262 = arith.mulf %cst_2, %cst_2 : f16
          %263 = math.ctlz %45 : tensor<10x10xi1>
          %264 = affine.load %149[%c11] : memref<10xf32>
          affine.store %cst_4, %149[%c8] : memref<10xf32>
          %expanded_58 = tensor.expand_shape %45 [[0], [1, 2]] : tensor<10x10xi1> into tensor<10x10x1xi1>
          %265 = math.ctlz %14 : tensor<1x10xi64>
          %266 = arith.ceildivsi %out, %in_56 : i32
          %267 = vector.transpose %43, [1, 0] : vector<10x10xi1> to vector<10x10xi1>
          %268 = math.copysign %collapsed_30, %196 : tensor<5xf32>
          %269 = affine.load %alloc_13[%c15] : memref<10xi1>
          %270 = arith.shrsi %c1274420694_i32, %in_55 : i32
          %271 = affine.apply affine_map<(d0) -> (d0)>(%53)
          memref.assume_alignment %alloc_13, 1 : memref<10xi1>
          %272 = math.roundeven %6 : tensor<5xf32>
          %273 = math.cos %6 : tensor<5xf32>
          %cast = tensor.cast %10 : tensor<1x10xi1> to tensor<?x?xi1>
          %274 = arith.negf %extracted : f32
          %275 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
          %276 = vector.outerproduct %134, %178, %275 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
          %277 = affine.load %alloc_12[%c8] : memref<10xi16>
          %278 = math.exp %5 : tensor<10xf16>
          %279 = math.round %11 : tensor<5xf32>
          %280 = vector.broadcast %cst_3 : f32 to vector<f32>
          vector.transfer_write %280, %alloc_21[%100] : vector<f32>, memref<5xf32>
          linalg.yield %in_55 : i32
        } -> tensor<10x10x1xi32>
        %251 = vector.maskedload %alloc_9[%c0, %c8], %124, %124 : memref<1x10xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %true_53 = arith.constant true
        %252 = math.floor %cst_3 : f32
        %false_54 = arith.constant false
        linalg.yield %false_54 : i1
      }
    %244 = scf.parallel (%arg0, %arg1) = (%170, %34) to (%162, %c5) step (%c13, %c13) init (%20) -> tensor<i1> {
      %246 = arith.maxui %c24664_i16, %c24664_i16 : i16
      %247 = arith.shli %true_50, %true_50 : i1
      %248 = arith.remf %cst_1, %cst_3 : f32
      %expanded_52 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<10x10xi64> into tensor<10x10x1xi64>
      %249 = vector.broadcast %cst_0 : f32 to vector<5xf32>
      %250 = vector.fma %249, %249, %249 : vector<5xf32>
      %251 = arith.maxsi %true_25, %true_25 : i1
      scf.index_switch %148 
      case 1 {
        %262 = math.rsqrt %cst_0 : f32
        memref.store %cst_1, %alloc_16[%c3, %c1] : memref<10x10xf32>
        %263 = arith.cmpf ord, %extracted, %cst_0 : f32
        %264 = math.log1p %collapsed_30 : tensor<5xf32>
        %265 = index.maxs %c1, %109
        %alloca_53 = memref.alloca() : memref<1x10xf32>
        %collapsed_54 = tensor.collapse_shape %12 [[0, 1]] : tensor<1x10xi1> into tensor<10xi1>
        %dest, %accumulated_value = vector.scan <or>, %43, %81 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        %266 = vector.reduction <add>, %250 : vector<5xf32> into f32
        %267 = index.maxs %169, %c11
        %268 = math.powf %extracted, %extracted : f32
        %269 = vector.broadcast %cst : f32 to vector<10x10xf32>
        %270 = vector.outerproduct %230, %119, %269 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
        %271 = arith.maxsi %c24664_i16, %c-9657_i16 : i16
        %272 = arith.remf %cst_5, %cst_7 : f16
        %273 = vector.broadcast %true_25 : i1 to vector<10xi1>
        %274 = vector.transfer_write %273, %80[%31, %185] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi1>, tensor<10x10xi1>
        %275 = index.ceildivs %150, %c6
        scf.yield
      }
      case 2 {
        %262 = bufferization.clone %alloc_23 : memref<5xf16> to memref<5xf16>
        %alloc_53 = memref.alloc() : memref<10xi64>
        %263 = affine.min affine_map<(d0, d1, d2) -> (d2 - (d0 + d1 - 2))>(%109, %148, %162)
        %264 = math.ctlz %2 : tensor<10x10xi16>
        %265 = arith.shli %c601140914_i32, %c1274420694_i32 : i32
        %inserted_54 = tensor.insert %cst_1 into %6[%c1] : tensor<5xf32>
        %266 = arith.addf %cst_3, %cst_1 : f32
        %267 = index.floordivs %232, %150
        %268 = vector.flat_transpose %126 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %inserted_55 = tensor.insert %cst_2 into %splat_48[%c4] : tensor<5xf16>
        %269 = arith.maxsi %false, %true_50 : i1
        %270 = index.mul %c12, %34
        %271 = vector.load %alloc_11[%c9, %c0] : memref<10x10xi1>, vector<1x10xi1>
        %272 = math.log1p %cst_3 : f32
        %273 = math.round %3 : tensor<5xf16>
        %alloca_56 = memref.alloca() : memref<5xi1>
        scf.yield
      }
      case 3 {
        %262 = affine.load %alloc_39[%c6, %c6] : memref<1x10xf16>
        %263 = arith.mulf %cst_1, %cst_1 : f32
        %264 = vector.bitcast %172 : vector<1x10xf16> to vector<1x10xi16>
        %265 = vector.extract %81[3] : vector<10xi1>
        %266 = vector.create_mask %83, %c12 : vector<10x10xi1>
        %267 = math.exp2 %cst_3 : f32
        %268 = vector.broadcast %c0_i64 : i64 to vector<10x10xi64>
        %269 = vector.gather %13[%c14] [%42], %160, %268 : tensor<10xi64>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi64> into vector<10x10xi64>
        %270 = bufferization.to_memref %194 : memref<1x10xi1>
        memref.assume_alignment %149, 8 : memref<10xf32>
        %271 = math.log1p %cst_2 : f16
        %272 = arith.minsi %c1274420694_i32, %c104519227_i32 : i32
        %273 = vector.gather %alloc_12[%c12] [%174], %173, %264 : memref<10xi16>, vector<1x10xi32>, vector<1x10xi1>, vector<1x10xi16> into vector<1x10xi16>
        %collapsed_53 = tensor.collapse_shape %splat_44 [[0, 1]] : tensor<1x10xf32> into tensor<10xf32>
        memref.assume_alignment %alloc_8, 8 : memref<1x10xi64>
        %274 = index.ceildivs %c3, %c13
        %275 = math.fpowi %3, %91 : tensor<5xf16>, tensor<5xi32>
        scf.yield
      }
      default {
        %262 = arith.ceildivsi %true_25, %true_25 : i1
        %263 = vector.shuffle %85, %134 [1, 2, 6] : vector<1xf32>, vector<10xf32>
        %264 = arith.remf %cst_6, %cst_1 : f32
        %265 = math.log2 %extracted : f32
        %alloca_53 = memref.alloca() : memref<1x10xf16>
        %266 = math.ctlz %15 : tensor<5xi1>
        vector.print %134 : vector<10xf32>
        %267 = math.absi %194 : tensor<1x10xi1>
        %268 = index.divs %c3, %c13
        %269 = arith.shrui %c1274420694_i32, %c601140914_i32 : i32
        %270 = arith.maxsi %c601140914_i32, %c1274420694_i32 : i32
        %271 = arith.xori %true_50, %true_50 : i1
        %272 = math.sqrt %105 : f32
        %273 = vector.splat %cst : vector<10x10xf32>
        %274 = index.floordivs %35, %148
        %275 = math.ipowi %c1274420694_i32, %c104519227_i32 : i32
      }
      %252 = arith.cmpf uge, %cst_7, %cst_2 : f16
      %253 = arith.mulf %cst_5, %cst_2 : f16
      %254 = vector.splat %false : vector<5xi1>
      %255 = index.mul %c15, %c6
      %256 = math.round %collapsed_30 : tensor<5xf32>
      %257 = arith.remsi %c104519227_i32, %c601140914_i32 : i32
      %258 = math.fpowi %splat_48, %91 : tensor<5xf16>, tensor<5xi32>
      %259 = math.log10 %cst_5 : f16
      %260 = vector.load %51[%c2] : memref<5xf16>, vector<10x10xf16>
      %261 = tensor.empty() : tensor<i1>
      scf.reduce(%261)  : tensor<i1> {
      ^bb0(%arg2: tensor<i1>, %arg3: tensor<i1>):
        %262 = math.log2 %6 : tensor<5xf32>
        %263 = arith.addi %c601140914_i32, %c104519227_i32 : i32
        %264 = vector.shuffle %174, %174 [0, 1] : vector<1x10xi32>, vector<1x10xi32>
        memref.tensor_store %196, %alloc_21 : memref<5xf32>
        vector.print %160 : vector<10x10xi1>
        %265 = vector.extract %85[0] : vector<1xf32>
        %266 = math.atan %6 : tensor<5xf32>
        %267 = affine.load %26[%c13] : memref<10xi16>
        %268 = tensor.empty() : tensor<i1>
        scf.reduce.return %268 : tensor<i1>
      }
      scf.yield
    }
    %245 = affine.vector_load %alloc_9[%207, %157] : memref<1x10xi1>, vector<1xi1>
    affine.vector_store %214, %alloc_10[%207, %83] : memref<1x10xi32>, vector<5xi32>
    vector.print %18 : vector<10xf32>
    vector.print %29 : vector<10xf32>
    vector.print %40 : vector<10xf32>
    vector.print %41 : vector<10x10xi1>
    vector.print %42 : vector<10x10xi32>
    vector.print %43 : vector<10x10xi1>
    vector.print %44 : vector<10xi32>
    vector.print %55 : vector<1xf32>
    vector.print %58 : vector<10xf32>
    vector.print %61 : vector<10xf32>
    vector.print %68 : vector<10xi1>
    vector.print %69 : vector<10xf32>
    vector.print %81 : vector<10xi1>
    vector.print %85 : vector<1xf32>
    vector.print %119 : vector<10xf32>
    vector.print %123 : vector<5xi16>
    vector.print %124 : vector<5xi1>
    vector.print %125 : vector<5xi32>
    vector.print %126 : vector<5xi16>
    vector.print %132 : vector<i1>
    vector.print %134 : vector<10xf32>
    vector.print %160 : vector<10x10xi1>
    vector.print %172 : vector<1x10xf16>
    vector.print %173 : vector<1x10xi1>
    vector.print %174 : vector<1x10xi32>
    vector.print %175 : vector<1x10xf16>
    vector.print %177 : vector<10xf32>
    vector.print %178 : vector<10xf32>
    vector.print %210 : vector<i16>
    vector.print %214 : vector<5xi32>
    vector.print %230 : vector<10xf32>
    vector.print %245 : vector<1xi1>
    vector.print %cst : f32
    vector.print %c24664_i16 : i16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c1274420694_i32 : i32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %false : i1
    vector.print %c-9657_i16 : i16
    vector.print %c601140914_i32 : i32
    vector.print %true : i1
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %c104519227_i32 : i32
    vector.print %cst_7 : f16
    vector.print %true_25 : i1
    vector.print %c0_i64 : i64
    vector.print %105 : f32
    vector.print %extracted : f32
    vector.print %true_50 : i1
    vector.print %extracted_51 : i64
    return
  }
}
