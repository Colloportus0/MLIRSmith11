module {
  func.func nested @func1(%arg0: vector<8x10x3xf16>) -> index {
    %c31796_i16 = arith.constant 31796 : i16
    %c-25308_i16 = arith.constant -25308 : i16
    %cst = arith.constant 9.200000e+03 : f16
    %c12841_i16 = arith.constant 12841 : i16
    %c441501158_i64 = arith.constant 441501158 : i64
    %cst_0 = arith.constant 5.936000e+04 : f16
    %c1050544680_i32 = arith.constant 1050544680 : i32
    %cst_1 = arith.constant 1.12449357E+9 : f32
    %cst_2 = arith.constant 1.61635981E+9 : f32
    %c16990_i16 = arith.constant 16990 : i16
    %c743529678_i32 = arith.constant 743529678 : i32
    %c1826384566_i64 = arith.constant 1826384566 : i64
    %c1833966582_i32 = arith.constant 1833966582 : i32
    %cst_3 = arith.constant 1.30517184E+9 : f32
    %c-31215_i16 = arith.constant -31215 : i16
    %cst_4 = arith.constant 0x4E4C6018 : f32
    %0 = tensor.empty() : tensor<8xi32>
    %1 = tensor.empty() : tensor<8x7x3xi32>
    %2 = tensor.empty() : tensor<8xi1>
    %3 = tensor.empty() : tensor<7x10xf16>
    %4 = tensor.empty() : tensor<8xi32>
    %5 = tensor.empty() : tensor<8x10x3xf32>
    %6 = tensor.empty() : tensor<7x10xi64>
    %7 = tensor.empty() : tensor<8x10x3xi16>
    %8 = tensor.empty() : tensor<8x7x3xi1>
    %9 = tensor.empty() : tensor<8x7x3xf16>
    %10 = tensor.empty() : tensor<7x10xi16>
    %11 = tensor.empty() : tensor<8x10x3xf32>
    %12 = tensor.empty() : tensor<8xf32>
    %13 = tensor.empty() : tensor<8x7x3xf16>
    %14 = tensor.empty() : tensor<7x10xi16>
    %15 = tensor.empty() : tensor<8x10x3xi16>
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
    %alloc = memref.alloc() : memref<8x10x3xf32>
    %alloc_5 = memref.alloc() : memref<7x10xi1>
    %alloc_6 = memref.alloc() : memref<7x10xi1>
    %alloc_7 = memref.alloc() : memref<8x10x3xf16>
    %alloc_8 = memref.alloc() : memref<7x10xi32>
    %alloc_9 = memref.alloc() : memref<8xi16>
    %alloc_10 = memref.alloc() : memref<8xi16>
    %alloc_11 = memref.alloc() : memref<8x7x3xf32>
    %alloc_12 = memref.alloc() : memref<8x10x3xi16>
    %alloc_13 = memref.alloc() : memref<8x7x3xi32>
    %alloc_14 = memref.alloc() : memref<7x10xi32>
    %alloc_15 = memref.alloc() : memref<8x7x3xi32>
    %alloc_16 = memref.alloc() : memref<8x7x3xi64>
    %alloc_17 = memref.alloc() : memref<7x10xf16>
    %alloc_18 = memref.alloc() : memref<8x10x3xi64>
    %alloc_19 = memref.alloc() : memref<8x10x3xf16>
    %16 = tensor.empty() : tensor<8x7x3xf16>
    %17 = linalg.copy ins(%13 : tensor<8x7x3xf16>) outs(%16 : tensor<8x7x3xf16>) -> tensor<8x7x3xf16>
    %18 = tensor.empty() : tensor<3x8x10xi16>
    %transposed = linalg.transpose ins(%15 : tensor<8x10x3xi16>) outs(%18 : tensor<3x8x10xi16>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<7xi16>
    %reduced = linalg.reduce ins(%14 : tensor<7x10xi16>) outs(%19 : tensor<7xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %241 = tensor.empty() : tensor<8x7x3xi32>
        %mapped = linalg.map ins(%alloc_15, %alloc_15 : memref<8x7x3xi32>, memref<8x7x3xi32>) outs(%241 : tensor<8x7x3xi32>)
          (%in_48: i32, %in_49: i32) {
            %248 = math.ceil %3 : tensor<7x10xf16>
            %249 = arith.shli %in, %c-25308_i16 : i16
            %250 = arith.minsi %c1050544680_i32, %c1050544680_i32 : i32
            memref.assume_alignment %alloc_14, 2 : memref<7x10xi32>
            %251 = arith.remui %init, %init : i16
            %252 = vector.broadcast %in_48 : i32 to vector<8xi32>
            %253 = vector.insertelement %in_49, %252[%c2 : index] : vector<8xi32>
            %254 = math.ipowi %in_49, %in_48 : i32
            %255 = arith.maxf %cst, %cst : f16
            %256 = index.sub %c13, %c11
            %257 = arith.addi %in_49, %c743529678_i32 : i32
            %258 = vector.insertelement %in_48, %252[%c6 : index] : vector<8xi32>
            %259 = vector.bitcast %252 : vector<8xi32> to vector<8xi32>
            %260 = vector.transpose %252, [0] : vector<8xi32> to vector<8xi32>
            memref.store %in_49, %alloc_15[%c4, %c5, %c0] : memref<8x7x3xi32>
            %261 = index.add %c9, %256
            %262 = vector.insertelement %c1833966582_i32, %259[%c13 : index] : vector<8xi32>
            %263 = tensor.empty() : tensor<10x7xf16>
            %264 = tensor.empty() : tensor<7x7xf16>
            %265 = linalg.matmul ins(%3, %263 : tensor<7x10xf16>, tensor<10x7xf16>) outs(%264 : tensor<7x7xf16>) -> tensor<7x7xf16>
            %266 = math.rsqrt %11 : tensor<8x10x3xf32>
            %267 = math.roundeven %cst_2 : f32
            %cast_50 = tensor.cast %7 : tensor<8x10x3xi16> to tensor<?x?x?xi16>
            %268 = index.add %256, %c8
            %alloc_51 = memref.alloc() : memref<10x3xi16>
            %269 = tensor.empty() : tensor<7x3xi16>
            %270 = linalg.matmul ins(%14, %alloc_51 : tensor<7x10xi16>, memref<10x3xi16>) outs(%269 : tensor<7x3xi16>) -> tensor<7x3xi16>
            %271 = math.ctpop %0 : tensor<8xi32>
            %272 = math.log %5 : tensor<8x10x3xf32>
            %273 = arith.mulf %cst_4, %cst_4 : f32
            %274 = vector.broadcast %c11 : index to vector<10xindex>
            %true_52 = arith.constant true
            %275 = vector.broadcast %true_52 : i1 to vector<10xi1>
            %276 = vector.broadcast %c743529678_i32 : i32 to vector<10xi32>
            vector.scatter %alloc_15[%c0, %c4, %c1] [%274], %275, %276 : memref<8x7x3xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
            %277 = vector.insert %c743529678_i32, %252 [7] : i32 into vector<8xi32>
            %alloc_53 = memref.alloc() : memref<8x10x3xi16>
            memref.copy %alloc_12, %alloc_53 : memref<8x10x3xi16> to memref<8x10x3xi16>
            %278 = arith.floordivsi %in_48, %c743529678_i32 : i32
            %279 = affine.load %alloc_7[%c15, %c11, %c5] : memref<8x10x3xf16>
            %280 = arith.addf %cst_1, %cst_2 : f32
            %281 = math.roundeven %cst_4 : f32
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %242 = arith.muli %c1050544680_i32, %c1050544680_i32 : i32
        %243 = arith.shli %c-31215_i16, %c-25308_i16 : i16
        %244 = index.castu %c0 : index to i32
        %false = arith.constant false
        scf.if %false {
          %alloc_48 = memref.alloc() : memref<8x7x3xf16>
          %248 = vector.broadcast %cst_0 : f16 to vector<8x10x3xf16>
          %249 = vector.broadcast %false : i1 to vector<8x10x3xi1>
          %250 = vector.broadcast %c1833966582_i32 : i32 to vector<8x10x3xi32>
          %251 = vector.gather %alloc_48[%c7, %c6, %c6] [%250], %249, %248 : memref<8x7x3xf16>, vector<8x10x3xi32>, vector<8x10x3xi1>, vector<8x10x3xf16> into vector<8x10x3xf16>
          %252 = vector.load %alloc_17[%c2, %c8] : memref<7x10xf16>, vector<8x10x3xf16>
          %253 = math.rsqrt %cst_0 : f16
          memref.store %c-31215_i16, %alloc_10[%c5] : memref<8xi16>
          %from_elements_49 = tensor.from_elements %c743529678_i32, %c1833966582_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1833966582_i32, %c1050544680_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c1833966582_i32, %c1833966582_i32, %c1050544680_i32, %c1050544680_i32, %c1050544680_i32, %c1050544680_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1050544680_i32, %c1050544680_i32, %c743529678_i32, %c743529678_i32, %c743529678_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1833966582_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1050544680_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c1833966582_i32, %c1833966582_i32, %c743529678_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c1050544680_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c743529678_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c1833966582_i32, %c743529678_i32, %c743529678_i32, %c743529678_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c1833966582_i32, %c1050544680_i32, %c743529678_i32, %c743529678_i32, %c1050544680_i32, %c743529678_i32, %c1833966582_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c743529678_i32, %c1833966582_i32, %c1833966582_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1833966582_i32, %c1833966582_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1833966582_i32 : tensor<8x7x3xi32>
          %254 = affine.load %alloc[%c10, %c14, %c7] : memref<8x10x3xf32>
          %255 = index.add %c14, %c10
          %256 = index.casts %c4 : index to i32
        } else {
          %248 = arith.andi %c12841_i16, %c16990_i16 : i16
          %249 = bufferization.clone %alloc_8 : memref<7x10xi32> to memref<7x10xi32>
          %250 = math.log2 %12 : tensor<8xf32>
          %251 = vector.broadcast %in : i16 to vector<8xi16>
          %252 = vector.insertelement %in, %251[%c7 : index] : vector<8xi16>
          %253 = bufferization.to_tensor %alloc_11 : memref<8x7x3xf32>
          %254 = arith.cmpi sge, %c31796_i16, %c-31215_i16 : i16
          %255 = arith.cmpf ule, %cst_3, %cst_4 : f32
          %256 = arith.remf %cst_1, %cst_1 : f32
        }
        %245 = arith.minsi %c743529678_i32, %c1050544680_i32 : i32
        %246 = math.ipowi %15, %7 : tensor<8x10x3xi16>
        %247 = math.ctlz %transposed : tensor<3x8x10xi16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg1, %arg2) = (%c3, %c14) to (%c5, %c1) step (%c15, %c3) {
      %241 = math.ctlz %c12841_i16 : i16
      %242 = index.divu %c11, %c8
      %alloc_48 = memref.alloc() : memref<8x7x3xi64>
      memref.copy %alloc_16, %alloc_48 : memref<8x7x3xi64> to memref<8x7x3xi64>
      %243 = math.floor %5 : tensor<8x10x3xf32>
      %true_49 = arith.constant true
      %244 = vector.broadcast %true_49 : i1 to vector<1xi1>
      %245 = vector.bitcast %244 : vector<1xi1> to vector<1xi1>
      scf.execute_region {
        %256 = math.tan %cst : f16
        %257 = index.sub %c1, %c12
        %258 = arith.minsi %c1050544680_i32, %c1050544680_i32 : i32
        %259 = math.roundeven %9 : tensor<8x7x3xf16>
        %260 = arith.minf %cst_3, %cst_2 : f32
        %from_elements_53 = tensor.from_elements %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49, %true_49 : tensor<8x7x3xi1>
        %261 = vector.splat %c31796_i16 : vector<8xi16>
        %262 = index.sub %c0, %257
        %263 = math.ctpop %transposed : tensor<3x8x10xi16>
        %264 = index.casts %c12841_i16 : i16 to index
        %265 = arith.shli %c1826384566_i64, %c1826384566_i64 : i64
        %266 = index.add %c8, %262
        %267 = vector.shuffle %244, %244 [0] : vector<1xi1>, vector<1xi1>
        %268 = bufferization.to_tensor %alloc_15 : memref<8x7x3xi32>
        %269 = math.exp %12 : tensor<8xf32>
        %270 = math.exp %9 : tensor<8x7x3xf16>
        scf.yield
      }
      %alloc_50 = memref.alloc() : memref<7x10xi1>
      %246 = index.maxs %arg2, %c14
      %247 = math.ctpop %1 : tensor<8x7x3xi32>
      %248 = math.ipowi %4, %4 : tensor<8xi32>
      %splat_51 = tensor.splat %c31796_i16 : tensor<8x7x3xi16>
      %249 = math.exp2 %cst : f16
      %250 = arith.shli %true_49, %true_49 : i1
      %extracted_52 = tensor.extract %12[%c1] : tensor<8xf32>
      memref.store %c-25308_i16, %alloc_12[%c6, %c9, %c2] : memref<8x10x3xi16>
      %251 = tensor.empty() : tensor<7x10xf32>
      %252 = vector.broadcast %cst_1 : f32 to vector<8x7x3xf32>
      %253 = vector.broadcast %true_49 : i1 to vector<8x7x3xi1>
      %254 = vector.broadcast %c743529678_i32 : i32 to vector<8x7x3xi32>
      %255 = vector.gather %251[%c5, %242] [%254], %253, %252 : tensor<7x10xf32>, vector<8x7x3xi32>, vector<8x7x3xi1>, vector<8x7x3xf32> into vector<8x7x3xf32>
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c1, %c10, %c2] : memref<8x7x3xi32>, vector<7xi32>
    affine.vector_store %20, %alloc_13[%c5, %c11, %c12] : memref<8x7x3xi32>, vector<7xi32>
    %21 = tensor.empty() : tensor<8xi16>
    %22 = tensor.empty() : tensor<i16>
    %23 = linalg.dot ins(%alloc_9, %21 : memref<8xi16>, tensor<8xi16>) outs(%22 : tensor<i16>) -> tensor<i16>
    %24 = arith.maxui %c1833966582_i32, %c1833966582_i32 : i32
    %25 = arith.cmpf ogt, %cst, %cst_0 : f16
    %26 = bufferization.clone %alloc_12 : memref<8x10x3xi16> to memref<8x10x3xi16>
    %27 = arith.divsi %c16990_i16, %c16990_i16 : i16
    %generated = tensor.generate %c5 {
    ^bb0(%arg1: index):
      %241 = math.copysign %cst_4, %cst_3 : f32
      %242 = memref.alloca_scope  -> (memref<7x10xi1>) {
        %extracted_49 = tensor.extract %1[%c6, %c6, %c2] : tensor<8x7x3xi32>
        %244 = bufferization.to_tensor %alloc_18 : memref<8x10x3xi64>
        %245 = math.fpowi %cst, %extracted_49 : f16, i32
        %inserted = tensor.insert %c31796_i16 into %21[%c7] : tensor<8xi16>
        %246 = math.exp2 %cst_4 : f32
        %247 = arith.ceildivsi %c-25308_i16, %c16990_i16 : i16
        %extracted_50 = tensor.extract %4[%c5] : tensor<8xi32>
        %248 = math.cttz %23 : tensor<i16>
        %249 = arith.divui %extracted_49, %c1050544680_i32 : i32
        %250 = arith.negf %cst_2 : f32
        %rank_51 = tensor.rank %6 : tensor<7x10xi64>
        %251 = vector.broadcast %c10 : index to vector<8xindex>
        %true_52 = arith.constant true
        %252 = vector.broadcast %true_52 : i1 to vector<8xi1>
        vector.scatter %alloc_5[%c0, %c8] [%251], %252, %252 : memref<7x10xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        affine.store %cst_1, %alloc_11[%c7, %c2, %c8] : memref<8x7x3xf32>
        %253 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
        %splat_53 = tensor.splat %c743529678_i32 : tensor<8x7x3xi32>
        %254 = vector.multi_reduction <or>, %253, %20 [] : vector<7xi32> to vector<7xi32>
        %255 = arith.divsi %c743529678_i32, %c1050544680_i32 : i32
        %256 = index.mul %c6, %c4
        %true_54 = arith.constant true
        memref.store %true_54, %alloc_6[%c2, %c1] : memref<7x10xi1>
        %257 = math.exp %cst_3 : f32
        %258 = arith.remui %c12841_i16, %c-31215_i16 : i16
        %259 = arith.remf %cst_1, %cst_1 : f32
        %260 = arith.divui %c441501158_i64, %c1826384566_i64 : i64
        %261 = memref.atomic_rmw maxs %c31796_i16, %26[%c0, %c7, %c1] : (i16, memref<8x10x3xi16>) -> i16
        %262 = math.round %12 : tensor<8xf32>
        %263 = arith.shli %c1826384566_i64, %c441501158_i64 : i64
        %264 = vector.splat %256 : vector<8x10x3xindex>
        %265 = arith.ori %c1833966582_i32, %extracted_49 : i32
        %266 = vector.extract_strided_slice %20 {offsets = [1], sizes = [3], strides = [1]} : vector<7xi32> to vector<3xi32>
        %267 = math.cttz %23 : tensor<i16>
        %268 = index.sub %c12, %c7
        memref.assume_alignment %alloc_11, 4 : memref<8x7x3xf32>
        memref.alloca_scope.return %alloc_5 : memref<7x10xi1>
      }
      memref.alloca_scope  {
        %244 = vector.extract %20[3] : vector<7xi32>
        %245 = affine.max affine_map<(d0) -> (d0 * 2 - 128)>(%arg1)
        %246 = affine.max affine_map<(d0, d1, d2) -> (d1 + d2 + d0, d1 ceildiv 32)>(%c13, %c2, %c5)
        %247 = math.cos %9 : tensor<8x7x3xf16>
        %248 = arith.addi %c1050544680_i32, %c1050544680_i32 : i32
        %249 = math.absf %cst_4 : f32
        %250 = arith.remui %c1050544680_i32, %c1050544680_i32 : i32
        %251 = vector.insertelement %c1833966582_i32, %20[%246 : index] : vector<7xi32>
        %252 = math.powf %cst_1, %cst_4 : f32
        %253 = math.fpowi %12, %4 : tensor<8xf32>, tensor<8xi32>
        %true_49 = index.bool.constant true
        %254 = math.rsqrt %cst : f16
        %255 = math.absi %14 : tensor<7x10xi16>
        %256 = arith.minsi %c16990_i16, %c16990_i16 : i16
        %257 = math.powf %11, %11 : tensor<8x10x3xf32>
        %258 = vector.transpose %20, [0] : vector<7xi32> to vector<7xi32>
        %259 = arith.addi %c-31215_i16, %c-31215_i16 : i16
        %260 = arith.divui %c-25308_i16, %c16990_i16 : i16
        affine.store %cst_0, %alloc_17[%c14, %c9] : memref<7x10xf16>
        %261 = vector.reduction <maxsi>, %20 : vector<7xi32> into i32
        %262 = arith.cmpi sgt, %c1050544680_i32, %c1050544680_i32 : i32
        %from_elements_50 = tensor.from_elements %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0 : tensor<8xf16>
        %263 = math.sqrt %9 : tensor<8x7x3xf16>
        %264 = arith.maxf %cst_2, %cst_1 : f32
        %265 = arith.remf %cst_2, %cst_3 : f32
        %266 = arith.shli %c31796_i16, %c-25308_i16 : i16
        %267 = index.sizeof
        %collapsed_51 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<8x10x3xf32> into tensor<80x3xf32>
        %268 = vector.reduction <minui>, %20 : vector<7xi32> into i32
        %269 = math.ctpop %15 : tensor<8x10x3xi16>
        %270 = math.ceil %from_elements_50 : tensor<8xf16>
        %271 = arith.shli %c441501158_i64, %c441501158_i64 : i64
      }
      %243 = math.atan2 %13, %13 : tensor<8x7x3xf16>
      %true_48 = arith.constant true
      tensor.yield %true_48 : i1
    } : tensor<?xi1>
    %28 = arith.addi %c-25308_i16, %c-25308_i16 : i16
    %29 = index.divu %c15, %c9
    %30 = arith.addi %c-25308_i16, %c16990_i16 : i16
    %31 = vector.reduction <minsi>, %20 : vector<7xi32> into i32
    %32 = vector.splat %c0 : vector<7x10xindex>
    %33 = affine.load %alloc_18[%c3, %c11, %c3] : memref<8x10x3xi64>
    %34 = affine.max affine_map<(d0) -> (((d0 * 8) mod 64) floordiv 4, d0 * 8 + 32, (d0 * 8) mod 64)>(%c11)
    %35 = arith.divsi %c-25308_i16, %c-25308_i16 : i16
    %cast = tensor.cast %6 : tensor<7x10xi64> to tensor<?x?xi64>
    %36 = bufferization.clone %alloc_17 : memref<7x10xf16> to memref<7x10xf16>
    %37 = arith.floordivsi %c441501158_i64, %c441501158_i64 : i64
    %38 = vector.insertelement %c743529678_i32, %20[%c0 : index] : vector<7xi32>
    %39 = math.fpowi %9, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
    %40 = math.log1p %13 : tensor<8x7x3xf16>
    %41 = arith.cmpf ogt, %cst_3, %cst_3 : f32
    %42 = bufferization.clone %alloc_13 : memref<8x7x3xi32> to memref<8x7x3xi32>
    %43 = arith.minsi %33, %33 : i64
    %alloc_20 = memref.alloc() : memref<8xi1>
    memref.tensor_store %2, %alloc_20 : memref<8xi1>
    %44 = arith.muli %c1826384566_i64, %c1826384566_i64 : i64
    %45 = index.mul %c6, %34
    %46 = vector.broadcast %c5 : index to vector<3xindex>
    %true = arith.constant true
    %47 = vector.broadcast %true : i1 to vector<3xi1>
    %48 = vector.broadcast %c1833966582_i32 : i32 to vector<3xi32>
    vector.scatter %alloc_13[%c6, %c0, %c2] [%46], %47, %48 : memref<8x7x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
    %49 = math.fma %5, %5, %11 : tensor<8x10x3xf32>
    %50 = math.cos %12 : tensor<8xf32>
    %51 = bufferization.to_memref %22 : memref<i16>
    %52 = memref.load %alloc_6[%c5, %c6] : memref<7x10xi1>
    %53 = tensor.empty() : tensor<8x10x3xi32>
    %54 = math.fpowi %11, %53 : tensor<8x10x3xf32>, tensor<8x10x3xi32>
    %55 = vector.transpose %20, [0] : vector<7xi32> to vector<7xi32>
    %56 = scf.execute_region -> f32 {
      %241 = math.log1p %cst_4 : f32
      memref.copy %alloc_14, %alloc_8 : memref<7x10xi32> to memref<7x10xi32>
      %242 = math.ceil %cst_4 : f32
      %243 = math.tanh %13 : tensor<8x7x3xf16>
      %244 = math.absf %3 : tensor<7x10xf16>
      %245 = arith.remf %cst_4, %cst_3 : f32
      %246 = vector.reduction <maxsi>, %20 : vector<7xi32> into i32
      %247 = bufferization.clone %alloc_18 : memref<8x10x3xi64> to memref<8x10x3xi64>
      %248 = arith.mulf %cst_0, %cst_0 : f16
      %249 = arith.negf %cst : f16
      %collapsed_48 = tensor.collapse_shape %53 [[0, 1], [2]] : tensor<8x10x3xi32> into tensor<80x3xi32>
      %250 = math.ctpop %7 : tensor<8x10x3xi16>
      %251 = vector.transpose %20, [0] : vector<7xi32> to vector<7xi32>
      %252 = math.log2 %cst : f16
      %253 = arith.shrui %c-31215_i16, %c16990_i16 : i16
      %254 = vector.broadcast %c12841_i16 : i16 to vector<7xi16>
      %255 = vector.transfer_write %254, %15[%c11, %c3, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi16>, tensor<8x10x3xi16>
      scf.yield %cst_1 : f32
    }
    %57 = vector.broadcast %cst_4 : f32 to vector<7x3xf32>
    %58 = vector.broadcast %cst_3 : f32 to vector<7xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %57, %58 {inclusive = true, reduction_dim = 1 : i64} : vector<7x3xf32>, vector<7xf32>
    %59 = bufferization.to_tensor %alloc : memref<8x10x3xf32>
    %60 = bufferization.clone %alloc_16 : memref<8x7x3xi64> to memref<8x7x3xi64>
    %61 = math.expm1 %13 : tensor<8x7x3xf16>
    memref.assume_alignment %36, 8 : memref<7x10xf16>
    %generated_21 = tensor.generate %c11, %c2 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %collapsed_48 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<8x10x3xi16> into tensor<80x3xi16>
      %alloc_49 = memref.alloc() : memref<8xf16>
      %241 = math.exp2 %3 : tensor<7x10xf16>
      %242 = memref.atomic_rmw minu %c-31215_i16, %alloc_12[%c1, %c8, %c2] : (i16, memref<8x10x3xi16>) -> i16
      tensor.yield %cst_4 : f32
    } : tensor<?x?x3xf32>
    %62 = bufferization.to_memref %4 : memref<8xi32>
    memref.copy %alloc_19, %alloc_7 : memref<8x10x3xf16> to memref<8x10x3xf16>
    %63 = scf.while (%arg1 = %alloc_19) : (memref<8x10x3xf16>) -> memref<8x10x3xf16> {
      %241 = affine.apply affine_map<(d0, d1, d2) -> (-d0 - 32)>(%c0, %c5, %c3)
      %242 = vector.extract %20[1] : vector<7xi32>
      %243 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%c3, %c1, %c13)
      %244 = bufferization.clone %alloc_10 : memref<8xi16> to memref<8xi16>
      %245 = math.log2 %cst_1 : f32
      scf.index_switch %c13 
      case 1 {
        %246 = arith.shli %33, %c1826384566_i64 : i64
        %247 = arith.mulf %cst_1, %cst_3 : f32
        %248 = index.castu %c1050544680_i32 : i32 to index
        %alloc_49 = memref.alloc() : memref<8x10x3xi64>
        memref.copy %alloc_18, %alloc_49 : memref<8x10x3xi64> to memref<8x10x3xi64>
        %249 = vector.broadcast %33 : i64 to vector<8x10x3xi64>
        %false_50 = arith.constant false
        %250 = vector.broadcast %false_50 : i1 to vector<8x10x3xi1>
        %251 = vector.broadcast %c743529678_i32 : i32 to vector<8x10x3xi32>
        %252 = vector.gather %alloc_16[%243, %243, %241] [%251], %250, %249 : memref<8x7x3xi64>, vector<8x10x3xi32>, vector<8x10x3xi1>, vector<8x10x3xi64> into vector<8x10x3xi64>
        %253 = arith.mulf %cst_3, %cst_2 : f32
        %254 = math.ipowi %8, %8 : tensor<8x7x3xi1>
        %255 = bufferization.clone %alloc_10 : memref<8xi16> to memref<8xi16>
        %256 = math.absf %3 : tensor<7x10xf16>
        %257 = arith.divsi %false_50, %false_50 : i1
        %258 = arith.mulf %cst, %cst_0 : f16
        %259 = vector.broadcast %c1833966582_i32 : i32 to vector<10x3xi32>
        %260 = vector.insert %259, %251 [1] : vector<10x3xi32> into vector<8x10x3xi32>
        affine.store %c1833966582_i32, %alloc_8[%c12, %c5] : memref<7x10xi32>
        %261 = math.powf %5, %5 : tensor<8x10x3xf32>
        %262 = math.ceil %cst_4 : f32
        %263 = math.floor %5 : tensor<8x10x3xf32>
        scf.yield
      }
      default {
        %246 = math.rsqrt %5 : tensor<8x10x3xf32>
        %247 = vector.extract_strided_slice %20 {offsets = [5], sizes = [2], strides = [1]} : vector<7xi32> to vector<2xi32>
        %inserted = tensor.insert %c31796_i16 into %reduced[%c0] : tensor<7xi16>
        %248 = arith.addf %cst_2, %cst_2 : f32
        %249 = index.floordivs %c15, %c0
        %250 = vector.broadcast %c8 : index to vector<3xindex>
        %true_49 = arith.constant true
        %251 = vector.broadcast %true_49 : i1 to vector<3xi1>
        %252 = vector.broadcast %c1050544680_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_13[%c4, %c4, %c0] [%250], %251, %252 : memref<8x7x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %253 = math.fma %3, %3, %3 : tensor<7x10xf16>
        %254 = index.ceildivs %c7, %c4
        %255 = arith.xori %33, %c1826384566_i64 : i64
        %256 = vector.insertelement %c1050544680_i32, %247[%254 : index] : vector<2xi32>
        %257 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
        %258 = math.powf %9, %9 : tensor<8x7x3xf16>
        %259 = arith.addf %56, %cst_2 : f32
        %260 = math.ipowi %transposed, %18 : tensor<3x8x10xi16>
        %261 = arith.maxf %cst_0, %cst : f16
        %262 = vector.shuffle %20, %247 [1, 2] : vector<7xi32>, vector<2xi32>
      }
      affine.for %arg2 = 0 to 107 {
      }
      %from_elements_48 = tensor.from_elements %c12841_i16, %c16990_i16, %c31796_i16, %c12841_i16, %c-31215_i16, %c16990_i16, %c31796_i16, %c31796_i16, %c12841_i16, %c-31215_i16, %c-25308_i16, %c16990_i16, %c31796_i16, %c-25308_i16, %c12841_i16, %c-31215_i16, %c-31215_i16, %c-25308_i16, %c31796_i16, %c31796_i16, %c-25308_i16, %c31796_i16, %c-31215_i16, %c31796_i16, %c-31215_i16, %c-25308_i16, %c16990_i16, %c-31215_i16, %c31796_i16, %c31796_i16, %c16990_i16, %c31796_i16, %c-25308_i16, %c31796_i16, %c-25308_i16, %c-31215_i16, %c16990_i16, %c-25308_i16, %c12841_i16, %c-31215_i16, %c12841_i16, %c-31215_i16, %c-25308_i16, %c16990_i16, %c-31215_i16, %c-25308_i16, %c31796_i16, %c-25308_i16, %c12841_i16, %c31796_i16, %c-31215_i16, %c12841_i16, %c16990_i16, %c16990_i16, %c31796_i16, %c31796_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c16990_i16, %c16990_i16, %c-31215_i16, %c16990_i16, %c31796_i16, %c12841_i16, %c31796_i16, %c31796_i16, %c12841_i16, %c31796_i16, %c-31215_i16, %c-31215_i16, %c-25308_i16, %c-25308_i16, %c-31215_i16, %c16990_i16, %c-31215_i16, %c31796_i16, %c31796_i16, %c12841_i16, %c16990_i16, %c-31215_i16, %c16990_i16, %c-31215_i16, %c-25308_i16, %c31796_i16, %c-25308_i16, %c-25308_i16, %c-25308_i16, %c-25308_i16, %c12841_i16, %c-25308_i16, %c-25308_i16, %c-31215_i16, %c12841_i16, %c-31215_i16, %c-25308_i16, %c12841_i16, %c31796_i16, %c12841_i16, %c31796_i16, %c12841_i16, %c-25308_i16, %c16990_i16, %c16990_i16, %c-25308_i16, %c-31215_i16, %c-25308_i16, %c-25308_i16, %c16990_i16, %c16990_i16, %c31796_i16, %c-31215_i16, %c12841_i16, %c-25308_i16, %c31796_i16, %c12841_i16, %c31796_i16, %c-31215_i16, %c-25308_i16, %c-25308_i16, %c-31215_i16, %c-25308_i16, %c16990_i16, %c16990_i16, %c31796_i16, %c12841_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c16990_i16, %c16990_i16, %c31796_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c-25308_i16, %c-25308_i16, %c-25308_i16, %c31796_i16, %c-25308_i16, %c16990_i16, %c-31215_i16, %c-31215_i16, %c12841_i16, %c31796_i16, %c12841_i16, %c-25308_i16, %c12841_i16, %c31796_i16, %c16990_i16, %c-31215_i16, %c31796_i16, %c31796_i16, %c16990_i16, %c16990_i16, %c16990_i16, %c31796_i16, %c-25308_i16, %c31796_i16, %c-31215_i16, %c-25308_i16, %c-31215_i16, %c16990_i16, %c-31215_i16, %c-31215_i16, %c-31215_i16, %c-31215_i16, %c31796_i16, %c-31215_i16, %c31796_i16, %c-31215_i16, %c16990_i16, %c31796_i16, %c-31215_i16, %c-25308_i16, %c12841_i16, %c12841_i16, %c16990_i16, %c-31215_i16, %c31796_i16, %c31796_i16, %c31796_i16, %c-25308_i16, %c-25308_i16, %c12841_i16, %c-31215_i16, %c31796_i16, %c-25308_i16, %c-31215_i16, %c12841_i16, %c-31215_i16, %c-25308_i16, %c12841_i16, %c12841_i16, %c-31215_i16, %c-31215_i16, %c12841_i16, %c-25308_i16, %c16990_i16, %c16990_i16, %c-31215_i16, %c16990_i16, %c-25308_i16, %c12841_i16, %c12841_i16, %c-31215_i16, %c31796_i16, %c16990_i16, %c12841_i16, %c-31215_i16, %c-25308_i16, %c12841_i16, %c31796_i16, %c31796_i16, %c31796_i16, %c-25308_i16, %c-25308_i16, %c31796_i16, %c16990_i16, %c-25308_i16, %c16990_i16, %c12841_i16, %c12841_i16, %c-25308_i16, %c-31215_i16, %c-31215_i16, %c31796_i16, %c12841_i16, %c31796_i16, %c12841_i16, %c16990_i16, %c-31215_i16 : tensor<8x10x3xi16>
      %false = arith.constant false
      scf.condition(%false) %arg1 : memref<8x10x3xf16>
    } do {
    ^bb0(%arg1: memref<8x10x3xf16>):
      memref.alloca_scope  {
        %alloc_50 = memref.alloc() : memref<8x10x3xi32>
        %alloc_51 = memref.alloc() : memref<8x10x3xi32>
        memref.tensor_store %53, %alloc_51 : memref<8x10x3xi32>
        %254 = math.expm1 %12 : tensor<8xf32>
        %alloc_52 = memref.alloc() : memref<8x10x3xi1>
        %255 = math.cos %16 : tensor<8x7x3xf16>
        %256 = arith.floordivsi %c31796_i16, %c16990_i16 : i16
        %257 = index.casts %c-25308_i16 : i16 to index
        %from_elements_53 = tensor.from_elements %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst : tensor<7x10xf16>
        %258 = math.ctpop %c1050544680_i32 : i32
        %collapsed_54 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<8x7x3xf16> into tensor<56x3xf16>
        %259 = vector.insertelement %c743529678_i32, %20[%45 : index] : vector<7xi32>
        %260 = vector.reduction <maxsi>, %20 : vector<7xi32> into i32
        %261 = math.ceil %13 : tensor<8x7x3xf16>
        %262 = vector.bitcast %20 : vector<7xi32> to vector<7xf32>
        %263 = tensor.empty() : tensor<8xi64>
        %264 = vector.broadcast %c441501158_i64 : i64 to vector<8xi64>
        %false = arith.constant false
        %265 = vector.broadcast %false : i1 to vector<8xi1>
        %266 = vector.broadcast %c1050544680_i32 : i32 to vector<8xi32>
        %267 = vector.gather %263[%c10] [%266], %265, %264 : tensor<8xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        %268 = vector.insert %c1826384566_i64, %264 [5] : i64 into vector<8xi64>
        %269 = affine.load %alloc_15[%c0, %c3, %c3] : memref<8x7x3xi32>
        %270 = arith.muli %c1050544680_i32, %c1833966582_i32 : i32
        %271 = math.absf %cst_0 : f16
        %splat_55 = tensor.splat %269 : tensor<8xi32>
        %272 = math.round %59 : tensor<8x10x3xf32>
        %273 = math.absf %56 : f32
        %274 = bufferization.clone %alloc_18 : memref<8x10x3xi64> to memref<8x10x3xi64>
        %275 = memref.atomic_rmw assign %cst, %arg1[%c5, %c2, %c1] : (f16, memref<8x10x3xf16>) -> f16
        %276 = math.fpowi %9, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
        %277 = vector.load %alloc_7[%c1, %c6, %c0] : memref<8x10x3xf16>, vector<8x10x3xf16>
        memref.assume_alignment %51, 4 : memref<i16>
        %278 = math.exp %13 : tensor<8x7x3xf16>
        %279 = arith.maxui %false, %false : i1
        %280 = arith.shli %c31796_i16, %c-31215_i16 : i16
        %281 = vector.broadcast %c-31215_i16 : i16 to vector<i16>
        vector.transfer_write %281, %alloc_9[%c7] : vector<i16>, memref<8xi16>
        %282 = arith.cmpf uno, %cst_0, %cst : f16
      }
      %241 = math.tan %cst_4 : f32
      %242 = arith.remui %33, %33 : i64
      %expanded_48 = tensor.expand_shape %12 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
      %243 = math.absi %transposed : tensor<3x8x10xi16>
      %244 = math.sqrt %56 : f32
      %generated_49 = tensor.generate %c4 {
      ^bb0(%arg2: index, %arg3: index):
        %254 = arith.maxf %cst_4, %cst_4 : f32
        %255 = index.ceildivs %c7, %c2
        %from_elements_50 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst : tensor<7x10xf16>
        %256 = math.copysign %12, %12 : tensor<8xf32>
        tensor.yield %56 : f32
      } : tensor<?x10xf32>
      %245 = arith.addf %56, %cst_1 : f32
      %246 = arith.addi %33, %c441501158_i64 : i64
      %247 = index.castu %c12 : index to i32
      %248 = arith.addf %cst_1, %cst_4 : f32
      %249 = arith.remui %c1050544680_i32, %c743529678_i32 : i32
      %250 = math.floor %cst_2 : f32
      %251 = math.absi %0 : tensor<8xi32>
      %252 = index.divu %c15, %c6
      %253 = arith.mulf %cst_4, %56 : f32
      scf.yield %alloc_7 : memref<8x10x3xf16>
    }
    %64 = math.expm1 %3 : tensor<7x10xf16>
    %65 = arith.mulf %cst_4, %cst_4 : f32
    %alloc_22 = memref.alloc() : memref<8xi64>
    %66 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d2 floordiv 16), d2 - (d2 floordiv 16) * 128, d0 + 8, d1)>(%34, %c8, %c8, %c1)
    %67 = vector.broadcast %c31796_i16 : i16 to vector<7x7x10xi16>
    %68 = vector.broadcast %c12841_i16 : i16 to vector<7x10xi16>
    %dest_23, %accumulated_value_24 = vector.scan <or>, %67, %68 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7x10xi16>, vector<7x10xi16>
    %69 = math.ipowi %c1833966582_i32, %c743529678_i32 : i32
    %70 = bufferization.to_memref %13 : memref<8x7x3xf16>
    %71 = scf.execute_region -> memref<8x7x3xi32> {
      %241 = arith.negf %cst : f16
      %generated_48 = tensor.generate %c1, %c3 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %253 = math.cos %3 : tensor<7x10xf16>
        %254 = arith.maxsi %c31796_i16, %c-25308_i16 : i16
        %255 = memref.realloc %alloc_10 : memref<8xi16> to memref<7xi16>
        %256 = memref.load %alloc_8[%c3, %c3] : memref<7x10xi32>
        tensor.yield %c31796_i16 : i16
      } : tensor<?x?x3xi16>
      %242 = arith.ori %c-31215_i16, %c31796_i16 : i16
      %243 = bufferization.clone %36 : memref<7x10xf16> to memref<7x10xf16>
      %extracted_49 = tensor.extract %15[%c5, %c2, %c1] : tensor<8x10x3xi16>
      %244 = math.ipowi %7, %15 : tensor<8x10x3xi16>
      %245 = arith.cmpf false, %cst, %cst : f16
      %alloc_50 = memref.alloc() : memref<8x10x3xi32>
      memref.tensor_store %53, %alloc_50 : memref<8x10x3xi32>
      %246 = arith.floordivsi %c31796_i16, %c-25308_i16 : i16
      %247 = vector.insertelement %c1050544680_i32, %20[%c3 : index] : vector<7xi32>
      %248 = bufferization.to_memref %10 : memref<7x10xi16>
      %249 = math.absf %13 : tensor<8x7x3xf16>
      %250 = math.ceil %59 : tensor<8x10x3xf32>
      %251 = arith.divsi %c1826384566_i64, %33 : i64
      %252 = vector.insert %c743529678_i32, %20 [3] : i32 into vector<7xi32>
      %extracted_51 = tensor.extract %15[%c3, %c9, %c0] : tensor<8x10x3xi16>
      scf.yield %42 : memref<8x7x3xi32>
    }
    %72 = index.add %c7, %29
    %73 = math.fpowi %9, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
    %74 = affine.load %alloc_16[%c0, %c6, %c12] : memref<8x7x3xi64>
    %75 = math.atan %cst : f16
    %76 = arith.shrui %c31796_i16, %c16990_i16 : i16
    memref.store %cst_0, %alloc_19[%c4, %c2, %c1] : memref<8x10x3xf16>
    %77 = arith.maxf %cst_4, %cst_4 : f32
    %78 = bufferization.clone %alloc_19 : memref<8x10x3xf16> to memref<8x10x3xf16>
    %79 = math.exp %16 : tensor<8x7x3xf16>
    %80 = arith.remui %74, %74 : i64
    %81 = vector.insert %c1833966582_i32, %20 [3] : i32 into vector<7xi32>
    %82 = math.floor %59 : tensor<8x10x3xf32>
    %83 = memref.alloca_scope  -> (i16) {
      %241 = arith.remf %cst_4, %cst_1 : f32
      %242 = vector.insertelement %c743529678_i32, %20[%72 : index] : vector<7xi32>
      %243 = math.tanh %16 : tensor<8x7x3xf16>
      %244 = vector.broadcast %56 : f32 to vector<8x10x3xf32>
      %245 = vector.fma %244, %244, %244 : vector<8x10x3xf32>
      %246 = affine.load %36[%c12, %c13] : memref<7x10xf16>
      memref.tensor_store %1, %42 : memref<8x7x3xi32>
      %247 = arith.minsi %c743529678_i32, %c1833966582_i32 : i32
      %248 = math.atan2 %12, %12 : tensor<8xf32>
      scf.index_switch %34 
      case 1 {
        %270 = math.log1p %12 : tensor<8xf32>
        %splat_51 = tensor.splat %c1833966582_i32 : tensor<8xi32>
        %from_elements_52 = tensor.from_elements %cst_1, %cst_3, %56, %cst_3, %cst_1, %cst_4, %cst_4, %cst_3, %56, %56, %56, %56, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_3, %cst_2, %cst_2, %56, %56, %cst_4, %cst_3, %56, %cst_3, %cst_2, %56, %cst_4, %cst_4, %56, %cst_4, %56, %cst_3, %cst_4, %cst_2, %56, %cst_3, %cst_3, %cst_3, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_2, %56, %56, %cst_2, %cst_4, %56, %56, %cst_4, %cst_4, %cst_4, %56, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_4, %cst_3, %cst_3, %56, %cst_4, %cst_2, %cst_4 : tensor<7x10xf32>
        %271 = arith.addf %cst_0, %cst_0 : f16
        %272 = index.ceildivs %c9, %29
        %273 = arith.maxsi %c31796_i16, %c12841_i16 : i16
        %274 = index.divu %c14, %c1
        %alloc_53 = memref.alloc() : memref<7x10xi1>
        %true_54 = index.bool.constant true
        %275 = vector.broadcast %272 : index to vector<7xindex>
        %276 = vector.broadcast %true_54 : i1 to vector<7xi1>
        vector.scatter %alloc_8[%c1, %c7] [%275], %276, %20 : memref<7x10xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %277 = affine.load %alloc_15[%c11, %c12, %c4] : memref<8x7x3xi32>
        %278 = bufferization.clone %alloc_7 : memref<8x10x3xf16> to memref<8x10x3xf16>
        %279 = arith.minui %c441501158_i64, %74 : i64
        %280 = math.fpowi %11, %53 : tensor<8x10x3xf32>, tensor<8x10x3xi32>
        vector.print %245 : vector<8x10x3xf32>
        %281 = math.floor %3 : tensor<7x10xf16>
        scf.yield
      }
      case 2 {
        %270 = arith.minsi %74, %c1826384566_i64 : i64
        bufferization.dealloc_tensor %0 : tensor<8xi32>
        %271 = bufferization.clone %alloc_11 : memref<8x7x3xf32> to memref<8x7x3xf32>
        %272 = bufferization.clone %alloc_16 : memref<8x7x3xi64> to memref<8x7x3xi64>
        %273 = arith.cmpi ne, %c31796_i16, %c12841_i16 : i16
        %274 = bufferization.clone %alloc_12 : memref<8x10x3xi16> to memref<8x10x3xi16>
        %275 = math.absf %59 : tensor<8x10x3xf32>
        %276 = tensor.empty() : tensor<10x8xi16>
        %277 = tensor.empty() : tensor<7x8xi16>
        %278 = linalg.matmul ins(%10, %276 : tensor<7x10xi16>, tensor<10x8xi16>) outs(%277 : tensor<7x8xi16>) -> tensor<7x8xi16>
        %279 = math.expm1 %9 : tensor<8x7x3xf16>
        %280 = vector.reduction <minui>, %20 : vector<7xi32> into i32
        %281 = math.tanh %3 : tensor<7x10xf16>
        bufferization.dealloc_tensor %13 : tensor<8x7x3xf16>
        memref.tensor_store %15, %26 : memref<8x10x3xi16>
        %282 = math.sqrt %cst_4 : f32
        %283 = vector.reduction <minui>, %20 : vector<7xi32> into i32
        %284 = vector.transpose %245, [1, 0, 2] : vector<8x10x3xf32> to vector<10x8x3xf32>
        scf.yield
      }
      default {
        %270 = bufferization.clone %42 : memref<8x7x3xi32> to memref<8x7x3xi32>
        %271 = index.divu %45, %45
        %272 = arith.divf %56, %cst_3 : f32
        %273 = math.powf %59, %59 : tensor<8x10x3xf32>
        %274 = arith.divsi %c12841_i16, %c-31215_i16 : i16
        %275 = arith.maxf %56, %cst_3 : f32
        %collapsed_51 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<8x7x3xf16> into tensor<56x3xf16>
        %276 = math.ctlz %10 : tensor<7x10xi16>
        %277 = vector.splat %c1 : vector<8x10x3xindex>
        %278 = index.castu %c2 : index to i32
        %alloca_52 = memref.alloca() : memref<7x10xi1>
        %279 = vector.insertelement %c743529678_i32, %20[%c4 : index] : vector<7xi32>
        %280 = arith.cmpf olt, %cst_3, %cst_2 : f32
        %cast_53 = tensor.cast %6 : tensor<7x10xi64> to tensor<?x?xi64>
        %281 = arith.addf %56, %cst_2 : f32
        %282 = math.roundeven %cst_4 : f32
      }
      %249 = arith.muli %c1833966582_i32, %c1050544680_i32 : i32
      %250 = math.ctlz %74 : i64
      %splat_48 = tensor.splat %cst : tensor<8x7x3xf16>
      %251 = arith.minsi %c1826384566_i64, %33 : i64
      %252 = bufferization.clone %51 : memref<i16> to memref<i16>
      %253 = vector.broadcast %cst_2 : f32 to vector<10x3xf32>
      %254 = vector.insert %253, %245 [2] : vector<10x3xf32> into vector<8x10x3xf32>
      memref.store %c12841_i16, %alloc_9[%c2] : memref<8xi16>
      %255 = arith.mulf %cst_0, %246 : f16
      %256 = arith.mulf %cst_0, %246 : f16
      %257 = arith.addi %c12841_i16, %c-31215_i16 : i16
      %splat_49 = tensor.splat %c1826384566_i64 : tensor<8xi64>
      %258 = vector.broadcast %cst_4 : f32 to vector<8x7x3xf32>
      %259 = vector.fma %258, %258, %258 : vector<8x7x3xf32>
      %260 = index.sub %c8, %c15
      %261 = arith.minsi %74, %c441501158_i64 : i64
      memref.copy %alloc_12, %26 : memref<8x10x3xi16> to memref<8x10x3xi16>
      %262 = math.log2 %16 : tensor<8x7x3xf16>
      %alloc_50 = memref.alloc() : memref<10x10xi16>
      %263 = tensor.empty() : tensor<7x10xi16>
      %264 = linalg.matmul ins(%14, %alloc_50 : tensor<7x10xi16>, memref<10x10xi16>) outs(%263 : tensor<7x10xi16>) -> tensor<7x10xi16>
      %265 = arith.ori %c31796_i16, %c16990_i16 : i16
      vector.print %259 : vector<8x7x3xf32>
      %266 = arith.muli %c31796_i16, %c12841_i16 : i16
      %267 = arith.addf %cst_3, %cst_4 : f32
      %268 = math.exp %11 : tensor<8x10x3xf32>
      %269 = arith.addi %c12841_i16, %c31796_i16 : i16
      memref.alloca_scope.return %c-31215_i16 : i16
    }
    %84 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
    %85 = math.rsqrt %13 : tensor<8x7x3xf16>
    %86 = arith.remui %c-25308_i16, %83 : i16
    memref.alloca_scope  {
      %241 = vector.transpose %84, [0] : vector<7xi32> to vector<7xi32>
      memref.tensor_store %3, %alloc_17 : memref<7x10xf16>
      %242 = arith.shrui %83, %c31796_i16 : i16
      %extracted_48 = tensor.extract %16[%c0, %c3, %c2] : tensor<8x7x3xf16>
      %collapsed_49 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<8x10x3xf32> into tensor<80x3xf32>
      %splat_50 = tensor.splat %c31796_i16 : tensor<8x7x3xi16>
      %243 = math.ipowi %2, %2 : tensor<8xi1>
      %244 = affine.max affine_map<(d0, d1) -> ((d0 + d1) * 8, (d0 + d1) * 8 + 16, d1 + 16, -(d0 - 2))>(%c6, %c11)
      %245 = index.sub %c8, %c8
      %246 = arith.mulf %cst_2, %cst_4 : f32
      memref.copy %71, %alloc_15 : memref<8x7x3xi32> to memref<8x7x3xi32>
      %247 = index.maxs %c5, %c12
      %248 = math.ctpop %18 : tensor<3x8x10xi16>
      %rank_51 = tensor.rank %15 : tensor<8x10x3xi16>
      %249 = index.divu %c14, %c13
      %alloc_52 = memref.alloc() : memref<8xi32>
      memref.copy %62, %alloc_52 : memref<8xi32> to memref<8xi32>
      memref.copy %alloc_14, %alloc_8 : memref<7x10xi32> to memref<7x10xi32>
      %250 = arith.maxf %extracted_48, %extracted_48 : f16
      %251 = vector.shuffle %20, %84 [0, 1, 2, 4, 6, 10, 12, 13] : vector<7xi32>, vector<7xi32>
      %252 = index.maxs %c13, %c9
      %253 = math.floor %13 : tensor<8x7x3xf16>
      %254 = math.sqrt %extracted_48 : f16
      %255 = arith.subi %c743529678_i32, %c1833966582_i32 : i32
      %from_elements_53 = tensor.from_elements %74, %74, %c441501158_i64, %c1826384566_i64, %c441501158_i64, %33, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %74, %74, %c441501158_i64, %74, %c1826384566_i64, %74, %c441501158_i64, %33, %74, %33, %c1826384566_i64, %33, %c441501158_i64, %c441501158_i64, %33, %33, %74, %c441501158_i64, %c441501158_i64, %74, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %33, %33, %74, %c441501158_i64, %33, %c441501158_i64, %33, %33, %c441501158_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %33, %33, %74, %33, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %33, %74, %c1826384566_i64, %c1826384566_i64, %33, %c1826384566_i64, %33, %c1826384566_i64, %33, %c441501158_i64, %74, %33, %c1826384566_i64, %33, %c441501158_i64, %c1826384566_i64, %c441501158_i64, %33, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %74, %c441501158_i64, %c1826384566_i64, %74, %33, %33, %c441501158_i64, %74, %33, %c441501158_i64, %74, %74, %33, %c441501158_i64, %c441501158_i64, %c1826384566_i64, %c441501158_i64, %74, %74, %c441501158_i64, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %74, %c441501158_i64, %74, %c441501158_i64, %c441501158_i64, %c441501158_i64, %c1826384566_i64, %33, %c441501158_i64, %74, %c1826384566_i64, %33, %74, %74, %c1826384566_i64, %c441501158_i64, %c441501158_i64, %c441501158_i64, %c441501158_i64, %74, %33, %33, %74, %c1826384566_i64, %74, %74, %33, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %74, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %74, %74, %74, %33, %c1826384566_i64, %74, %74, %c1826384566_i64, %c1826384566_i64, %74, %c441501158_i64, %74, %c441501158_i64, %74, %c1826384566_i64, %c441501158_i64, %33, %c441501158_i64, %c441501158_i64, %74, %c441501158_i64, %c441501158_i64, %74, %74, %c441501158_i64, %33, %33, %c441501158_i64, %33, %74, %33, %c1826384566_i64, %74, %c1826384566_i64, %74, %c441501158_i64 : tensor<8x7x3xi64>
      %256 = arith.subi %c31796_i16, %c31796_i16 : i16
      %257 = math.sqrt %56 : f32
      %258 = arith.maxf %cst_0, %cst_0 : f16
      %259 = vector.broadcast %cst_0 : f16 to vector<8xf16>
      %true_54 = arith.constant true
      %260 = vector.broadcast %true_54 : i1 to vector<8xi1>
      %261 = vector.maskedload %78[%c0, %c3, %c0], %260, %259 : memref<8x10x3xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %262 = math.absf %collapsed_49 : tensor<80x3xf32>
      %263 = scf.while (%arg1 = %c31796_i16) : (i16) -> i16 {
        %267 = math.log2 %3 : tensor<7x10xf16>
        %splat_56 = tensor.splat %cst_1 : tensor<7x10xf32>
        %268 = index.maxs %c15, %c10
        memref.copy %36, %alloc_17 : memref<7x10xf16> to memref<7x10xf16>
        %269 = math.ctlz %splat_50 : tensor<8x7x3xi16>
        %270 = math.rsqrt %59 : tensor<8x10x3xf32>
        %271 = math.ctpop %53 : tensor<8x10x3xi32>
        %272 = arith.cmpi ne, %c1050544680_i32, %c743529678_i32 : i32
        scf.condition(%true_54) %arg1 : i16
      } do {
      ^bb0(%arg1: i16):
        %267 = arith.addf %cst, %extracted_48 : f16
        %268 = arith.muli %c16990_i16, %c-31215_i16 : i16
        %269 = vector.broadcast %c5 : index to vector<8xindex>
        vector.scatter %alloc_7[%c7, %c9, %c1] [%269], %260, %259 : memref<8x10x3xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %alloc_56 = memref.alloc() : memref<7x10xf16>
        %270 = vector.broadcast %extracted_48 : f16 to vector<7x8x10xf16>
        %271 = vector.broadcast %cst_0 : f16 to vector<7x10xf16>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %270, %271 {inclusive = false, reduction_dim = 1 : i64} : vector<7x8x10xf16>, vector<7x10xf16>
        %272 = arith.shrui %c-31215_i16, %c31796_i16 : i16
        %273 = vector.reduction <mul>, %261 : vector<8xf16> into f16
        %274 = arith.addf %cst_0, %cst : f16
        %275 = memref.atomic_rmw mulf %cst_2, %alloc[%c5, %c8, %c1] : (f32, memref<8x10x3xf32>) -> f32
        %276 = arith.muli %c-31215_i16, %83 : i16
        %277 = arith.minsi %arg1, %c-25308_i16 : i16
        %alloc_59 = memref.alloc() : memref<8x7x3xi1>
        %278 = vector.load %alloc_16[%c1, %c2, %c2] : memref<8x7x3xi64>, vector<8x7x3xi64>
        %279 = math.atan2 %9, %9 : tensor<8x7x3xf16>
        %280 = bufferization.to_memref %3 : memref<7x10xf16>
        %281 = math.log2 %cst : f16
        scf.yield %83 : i16
      }
      %alloc_55 = memref.alloc() : memref<3x7xf32>
      %264 = tensor.empty() : tensor<80x7xf32>
      %265 = linalg.matmul ins(%collapsed_49, %alloc_55 : tensor<80x3xf32>, memref<3x7xf32>) outs(%264 : tensor<80x7xf32>) -> tensor<80x7xf32>
      %266 = arith.ori %c743529678_i32, %c1833966582_i32 : i32
    }
    %87 = math.absi %transposed : tensor<3x8x10xi16>
    %88 = memref.atomic_rmw maxf %cst_1, %alloc_11[%c6, %c3, %c1] : (f32, memref<8x7x3xf32>) -> f32
    %89 = index.maxs %c6, %c1
    %90 = bufferization.clone %alloc_5 : memref<7x10xi1> to memref<7x10xi1>
    %91 = math.sqrt %12 : tensor<8xf32>
    %92 = math.log1p %9 : tensor<8x7x3xf16>
    %93 = index.castu %c2 : index to i32
    %94 = math.ctlz %4 : tensor<8xi32>
    %95 = vector.insertelement %c1833966582_i32, %84[%c8 : index] : vector<7xi32>
    %96 = scf.index_switch %45 -> tensor<8x10x3xi64> 
    case 1 {
      %241 = vector.splat %c3 : vector<7x10xindex>
      %alloc_48 = memref.alloc() : memref<10x7xi16>
      %242 = tensor.empty() : tensor<7x7xi16>
      %243 = linalg.matmul ins(%14, %alloc_48 : tensor<7x10xi16>, memref<10x7xi16>) outs(%242 : tensor<7x7xi16>) -> tensor<7x7xi16>
      %244 = index.add %66, %c11
      %from_elements_49 = tensor.from_elements %c16990_i16, %c-31215_i16, %83, %c12841_i16, %83, %c16990_i16, %c-25308_i16, %c12841_i16 : tensor<8xi16>
      %c288787158_i64 = arith.constant 288787158 : i64
      %245 = math.exp %16 : tensor<8x7x3xf16>
      %246 = math.ipowi %6, %6 : tensor<7x10xi64>
      %247 = vector.transpose %84, [0] : vector<7xi32> to vector<7xi32>
      %248 = math.ceil %12 : tensor<8xf32>
      %249 = memref.load %90[%c2, %c3] : memref<7x10xi1>
      affine.for %arg1 = 0 to 79 {
      }
      %alloc_50 = memref.alloc() : memref<8xf32>
      %250 = math.ctlz %c1050544680_i32 : i32
      %251 = arith.remui %83, %c31796_i16 : i16
      %252 = arith.shrui %c743529678_i32, %c743529678_i32 : i32
      %253 = arith.remui %c12841_i16, %83 : i16
      %254 = tensor.empty() : tensor<8x10x3xi64>
      scf.yield %254 : tensor<8x10x3xi64>
    }
    case 2 {
      %241 = arith.shrui %c1826384566_i64, %74 : i64
      %242 = memref.realloc %62 : memref<8xi32> to memref<7xi32>
      %243 = math.round %cst_0 : f16
      %244 = vector.matrix_multiply %20, %84 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
      %245 = arith.shrui %c12841_i16, %c31796_i16 : i16
      %246 = index.sub %c4, %c10
      %expanded_48 = tensor.expand_shape %0 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
      %247 = vector.insertelement %c1833966582_i32, %84[%c2 : index] : vector<7xi32>
      %248 = math.absf %5 : tensor<8x10x3xf32>
      %249 = arith.divsi %74, %74 : i64
      %250 = math.tan %12 : tensor<8xf32>
      %251 = math.fpowi %9, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
      %252 = arith.remsi %c-25308_i16, %c-25308_i16 : i16
      %253 = math.rsqrt %9 : tensor<8x7x3xf16>
      %254 = arith.remui %c1826384566_i64, %c1826384566_i64 : i64
      %255 = arith.remui %83, %83 : i16
      %256 = tensor.empty() : tensor<8x10x3xi64>
      scf.yield %256 : tensor<8x10x3xi64>
    }
    case 3 {
      %241 = arith.maxf %cst, %cst_0 : f16
      %242 = index.ceildivs %c15, %c10
      %243 = vector.insertelement %c1833966582_i32, %84[%c13 : index] : vector<7xi32>
      %244 = math.tan %56 : f32
      %245 = arith.minsi %c-31215_i16, %83 : i16
      %inserted = tensor.insert %c1050544680_i32 into %1[%c1, %c5, %c0] : tensor<8x7x3xi32>
      %246 = math.roundeven %cst_2 : f32
      %247 = scf.execute_region -> vector<8x7x3xf16> {
        %258 = math.powf %12, %12 : tensor<8xf32>
        %259 = index.ceildivs %72, %c9
        %260 = arith.negf %cst_2 : f32
        %261 = vector.broadcast %83 : i16 to vector<3x3xi16>
        %262 = vector.transfer_write %261, %15[%c12, %242, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x3xi16>, tensor<8x10x3xi16>
        %cast_48 = tensor.cast %12 : tensor<8xf32> to tensor<?xf32>
        %263 = math.fpowi %13, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %84, %84, %c1833966582_i32 : vector<7xi32>, vector<7xi32> into i32
        %265 = affine.apply affine_map<(d0) -> ((d0 * 4 + 4) ceildiv 2)>(%c12)
        %266 = arith.addi %c1833966582_i32, %c1050544680_i32 : i32
        %267 = vector.broadcast %cst_4 : f32 to vector<f32>
        %268 = vector.transfer_write %267, %5[%265, %c3, %265] : vector<f32>, tensor<8x10x3xf32>
        %269 = index.divu %c12, %c0
        %270 = vector.bitcast %84 : vector<7xi32> to vector<7xi32>
        %271 = vector.reduction <minsi>, %20 : vector<7xi32> into i32
        %272 = math.cos %3 : tensor<7x10xf16>
        %273 = arith.xori %c1050544680_i32, %c743529678_i32 : i32
        %274 = index.casts %89 : index to i32
        %275 = vector.broadcast %cst_0 : f16 to vector<8x7x3xf16>
        scf.yield %275 : vector<8x7x3xf16>
      }
      %248 = tensor.empty() : tensor<10x8xi32>
      %249 = tensor.empty() : tensor<8x3x10xi32>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%248, %249, %4 : tensor<10x8xi32>, tensor<8x3x10xi32>, tensor<8xi32>) outs(%53 : tensor<8x10x3xi32>) {
      ^bb0(%in: i32, %in_48: i32, %in_49: i32, %out: i32):
        %258 = math.round %cst_2 : f32
        %259 = index.maxs %c2, %c14
        %260 = affine.apply affine_map<(d0, d1) -> (((d0 mod 128) floordiv 64) ceildiv 2 - 2)>(%c7, %c9)
        %261 = math.ctlz %c-25308_i16 : i16
        %collapsed_50 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<8x7x3xi1> into tensor<56x3xi1>
        %262 = math.cos %cst_2 : f32
        %263 = arith.minui %c441501158_i64, %c441501158_i64 : i64
        %264 = arith.divui %c743529678_i32, %in : i32
        %cst_51 = arith.constant 2.10481203E+9 : f32
        %265 = arith.divsi %83, %c16990_i16 : i16
        %266 = arith.divui %c12841_i16, %c31796_i16 : i16
        %267 = index.ceildivs %66, %66
        %268 = vector.shuffle %84, %20 [0, 1, 6, 7, 8, 10, 11, 12] : vector<7xi32>, vector<7xi32>
        %269 = index.add %45, %29
        %rank_52 = tensor.rank %generated : tensor<?xi1>
        %270 = bufferization.to_tensor %71 : memref<8x7x3xi32>
        %true_53 = arith.constant true
        %from_elements_54 = tensor.from_elements %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53, %true_53 : tensor<7x10xi1>
        %271 = vector.broadcast %c-31215_i16 : i16 to vector<8x7x3xi16>
        %272 = vector.broadcast %true_53 : i1 to vector<8x7x3xi1>
        %273 = vector.broadcast %c743529678_i32 : i32 to vector<8x7x3xi32>
        %274 = vector.gather %10[%c11, %c1] [%273], %272, %271 : tensor<7x10xi16>, vector<8x7x3xi32>, vector<8x7x3xi1>, vector<8x7x3xi16> into vector<8x7x3xi16>
        %275 = math.exp2 %13 : tensor<8x7x3xf16>
        %cast_55 = tensor.cast %5 : tensor<8x10x3xf32> to tensor<?x?x?xf32>
        %276 = arith.shli %c1826384566_i64, %33 : i64
        %277 = index.maxu %269, %29
        %278 = math.ctpop %out : i32
        %279 = math.floor %cst : f16
        %280 = math.tan %13 : tensor<8x7x3xf16>
        %281 = math.log1p %56 : f32
        %282 = math.absf %13 : tensor<8x7x3xf16>
        memref.assume_alignment %alloc_9, 8 : memref<8xi16>
        %283 = arith.remui %c1050544680_i32, %out : i32
        %284 = arith.mulf %56, %cst_1 : f32
        %285 = arith.mulf %cst_3, %cst_1 : f32
        %286 = index.ceildivs %c14, %72
        linalg.yield %out : i32
      } -> tensor<8x10x3xi32>
      memref.copy %42, %alloc_13 : memref<8x7x3xi32> to memref<8x7x3xi32>
      %251 = bufferization.clone %26 : memref<8x10x3xi16> to memref<8x10x3xi16>
      %252 = math.tan %12 : tensor<8xf32>
      %253 = index.sub %c1, %c15
      %254 = math.ipowi %2, %2 : tensor<8xi1>
      %255 = math.ceil %59 : tensor<8x10x3xf32>
      %256 = math.sqrt %5 : tensor<8x10x3xf32>
      %257 = tensor.empty() : tensor<8x10x3xi64>
      scf.yield %257 : tensor<8x10x3xi64>
    }
    case 4 {
      %241 = affine.max affine_map<(d0, d1) -> (d0 - 1, d0 - 1)>(%c5, %c15)
      %242 = arith.minf %56, %cst_2 : f32
      %243 = math.ctpop %2 : tensor<8xi1>
      %244 = vector.load %alloc_6[%c4, %c6] : memref<7x10xi1>, vector<8xi1>
      %from_elements_48 = tensor.from_elements %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst : tensor<8xf16>
      %245 = arith.remsi %c743529678_i32, %c1050544680_i32 : i32
      %246 = bufferization.clone %alloc_15 : memref<8x7x3xi32> to memref<8x7x3xi32>
      memref.store %cst_3, %alloc[%c5, %c5, %c1] : memref<8x10x3xf32>
      %247 = index.ceildivu %c2, %c11
      %248 = bufferization.clone %246 : memref<8x7x3xi32> to memref<8x7x3xi32>
      memref.assume_alignment %alloc_14, 2 : memref<7x10xi32>
      %249 = affine.if affine_set<(d0, d1) : ((d1 + 64) * -32 == 0, ((d0 - (d0 + d1)) floordiv 16) ceildiv 8 >= 0, (d1 + 64) ceildiv 64 - (d0 + 1) == 0)>(%c12, %c9) -> memref<8x7x3xi1> {
        %254 = math.ctlz %c1833966582_i32 : i32
        %255 = arith.maxf %cst_1, %cst_4 : f32
        %256 = arith.remf %cst_3, %cst_4 : f32
        %257 = index.divs %c14, %c3
        %258 = arith.cmpf oge, %cst, %cst_0 : f16
        %259 = arith.divui %c-31215_i16, %83 : i16
        %260 = arith.xori %74, %c441501158_i64 : i64
        %261 = index.ceildivs %c2, %72
        %alloc_51 = memref.alloc() : memref<8x7x3xi1>
        affine.yield %alloc_51 : memref<8x7x3xi1>
      } else {
        %254 = arith.minsi %c1833966582_i32, %c743529678_i32 : i32
        %255 = index.casts %241 : index to i32
        %expanded_51 = tensor.expand_shape %4 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        memref.assume_alignment %90, 2 : memref<7x10xi1>
        %256 = index.add %c12, %29
        %257 = math.expm1 %17 : tensor<8x7x3xf16>
        %258 = arith.floordivsi %c-25308_i16, %c16990_i16 : i16
        %259 = math.ceil %from_elements_48 : tensor<8xf16>
        %alloc_52 = memref.alloc() : memref<8x7x3xi1>
        affine.yield %alloc_52 : memref<8x7x3xi1>
      }
      %true_49 = arith.constant true
      %250 = scf.if %true_49 -> (f32) {
        %254 = index.ceildivu %247, %29
        %255 = arith.addf %cst_4, %cst_4 : f32
        %256 = math.ceil %cst : f16
        %257 = arith.ori %c16990_i16, %c12841_i16 : i16
        %258 = math.expm1 %3 : tensor<7x10xf16>
        %259 = math.tanh %11 : tensor<8x10x3xf32>
        %expanded_51 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<7x10xf16> into tensor<7x10x1xf16>
        %260 = math.round %59 : tensor<8x10x3xf32>
        scf.yield %cst_3 : f32
      } else {
        %254 = math.log2 %12 : tensor<8xf32>
        %collapsed_51 = tensor.collapse_shape %3 [[0, 1]] : tensor<7x10xf16> into tensor<70xf16>
        %255 = index.ceildivs %72, %c14
        %256 = math.exp %9 : tensor<8x7x3xf16>
        %257 = math.floor %9 : tensor<8x7x3xf16>
        %258 = arith.divsi %c743529678_i32, %c1050544680_i32 : i32
        memref.assume_alignment %alloc_14, 1 : memref<7x10xi32>
        %259 = math.ctpop %2 : tensor<8xi1>
        scf.yield %56 : f32
      }
      %extracted_50 = tensor.extract %23[] : tensor<i16>
      %251 = memref.alloca_scope  -> (i64) {
        %254 = arith.addf %250, %cst_4 : f32
        %255 = index.sub %c15, %c11
        %256 = arith.maxf %cst_0, %cst : f16
        %257 = arith.addi %true_49, %true_49 : i1
        %258 = vector.extract %244[5] : vector<8xi1>
        %259 = arith.ori %c743529678_i32, %c1833966582_i32 : i32
        %260 = bufferization.clone %51 : memref<i16> to memref<i16>
        %261 = vector.load %alloc_18[%c6, %c2, %c2] : memref<8x10x3xi64>, vector<7x10xi64>
        %262 = arith.shli %extracted_50, %c-31215_i16 : i16
        %263 = arith.remf %cst, %cst : f16
        memref.assume_alignment %alloc_7, 1 : memref<8x10x3xf16>
        %264 = index.sub %247, %c3
        %265 = vector.broadcast %cst_0 : f16 to vector<3xf16>
        vector.transfer_write %265, %alloc_7[%c13, %c14, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf16>, memref<8x10x3xf16>
        %266 = arith.shrui %c441501158_i64, %c1826384566_i64 : i64
        %267 = arith.muli %extracted_50, %extracted_50 : i16
        %268 = math.cos %5 : tensor<8x10x3xf32>
        memref.assume_alignment %alloc_10, 2 : memref<8xi16>
        %collapsed_51 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<8x10x3xf32> into tensor<80x3xf32>
        %cast_52 = tensor.cast %8 : tensor<8x7x3xi1> to tensor<?x?x?xi1>
        %269 = vector.transpose %244, [0] : vector<8xi1> to vector<8xi1>
        %270 = math.ctpop %1 : tensor<8x7x3xi32>
        %271 = arith.negf %cst_4 : f32
        %272 = arith.minsi %c1833966582_i32, %c743529678_i32 : i32
        %273 = vector.splat %c1826384566_i64 : vector<8xi64>
        %274 = math.cos %13 : tensor<8x7x3xf16>
        %275 = arith.divui %c743529678_i32, %c1833966582_i32 : i32
        %276 = vector.extract %261[2] : vector<7x10xi64>
        %277 = memref.load %71[%c4, %c3, %c1] : memref<8x7x3xi32>
        %278 = math.ctlz %c1826384566_i64 : i64
        %279 = math.rsqrt %11 : tensor<8x10x3xf32>
        affine.store %cst_0, %36[%c10, %c0] : memref<7x10xf16>
        %alloc_53 = memref.alloc() : memref<8xf32>
        %280 = vector.broadcast %cst_1 : f32 to vector<8x10x3xf32>
        %281 = vector.broadcast %true_49 : i1 to vector<8x10x3xi1>
        %282 = vector.broadcast %c743529678_i32 : i32 to vector<8x10x3xi32>
        %283 = vector.gather %alloc_53[%264] [%282], %281, %280 : memref<8xf32>, vector<8x10x3xi32>, vector<8x10x3xi1>, vector<8x10x3xf32> into vector<8x10x3xf32>
        memref.alloca_scope.return %c441501158_i64 : i64
      }
      %252 = bufferization.to_tensor %alloc : memref<8x10x3xf32>
      %253 = tensor.empty() : tensor<8x10x3xi64>
      scf.yield %253 : tensor<8x10x3xi64>
    }
    default {
      %241 = math.exp %16 : tensor<8x7x3xf16>
      %242 = arith.mulf %cst_3, %cst_1 : f32
      %243 = arith.shli %c1833966582_i32, %c1050544680_i32 : i32
      %244 = index.maxs %c14, %c12
      %245 = memref.atomic_rmw assign %c31796_i16, %alloc_10[%c2] : (i16, memref<8xi16>) -> i16
      %246 = vector.broadcast %66 : index to vector<8xindex>
      %false = arith.constant false
      %247 = vector.broadcast %false : i1 to vector<8xi1>
      %248 = vector.broadcast %cst_0 : f16 to vector<8xf16>
      vector.scatter %alloc_17[%c2, %c0] [%246], %247, %248 : memref<7x10xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
      %249 = arith.cmpf ogt, %cst_4, %56 : f32
      %250 = index.divu %c9, %72
      %251 = arith.minsi %c1050544680_i32, %c1050544680_i32 : i32
      %252 = math.cos %cst_0 : f16
      %253 = math.log2 %cst_2 : f32
      %rank_48 = tensor.rank %1 : tensor<8x7x3xi32>
      %254 = arith.maxui %c1826384566_i64, %33 : i64
      %255 = bufferization.clone %51 : memref<i16> to memref<i16>
      %256 = math.fpowi %13, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
      %257 = index.maxs %c2, %c14
      %258 = tensor.empty() : tensor<8x10x3xi64>
      scf.yield %258 : tensor<8x10x3xi64>
    }
    %97 = arith.addi %c1826384566_i64, %c441501158_i64 : i64
    %98 = math.fpowi %12, %4 : tensor<8xf32>, tensor<8xi32>
    %generated_25 = tensor.generate %c11, %89, %c9 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      memref.store %c1050544680_i32, %42[%c1, %c5, %c0] : memref<8x7x3xi32>
      %241 = index.ceildivs %c12, %c10
      %242 = math.roundeven %59 : tensor<8x10x3xf32>
      %243 = arith.minsi %c1826384566_i64, %c1826384566_i64 : i64
      tensor.yield %33 : i64
    } : tensor<?x?x?xi64>
    %99 = arith.addi %33, %c1826384566_i64 : i64
    %extracted = tensor.extract %2[%c0] : tensor<8xi1>
    %alloc_26 = memref.alloc() : memref<8x10x3xf32>
    %100 = math.cttz %15 : tensor<8x10x3xi16>
    %101 = bufferization.clone %alloc_7 : memref<8x10x3xf16> to memref<8x10x3xf16>
    memref.alloca_scope  {
      %241 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, -(d3 - 8), d2 floordiv 128, -d3)>(%c11, %34, %c1, %c14)
      %242 = index.castu %c31796_i16 : i16 to index
      %243 = vector.broadcast %cst : f16 to vector<8xf16>
      %244 = vector.broadcast %extracted : i1 to vector<8xi1>
      %245 = vector.broadcast %c1050544680_i32 : i32 to vector<8xi32>
      %246 = vector.gather %70[%c10, %c9, %c11] [%245], %244, %243 : memref<8x7x3xf16>, vector<8xi32>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %247 = bufferization.clone %alloc_13 : memref<8x7x3xi32> to memref<8x7x3xi32>
      %248 = math.absf %cst_1 : f32
      %249 = index.ceildivu %89, %c2
      %generated_48 = tensor.generate %c5 {
      ^bb0(%arg1: index):
        %273 = index.floordivs %29, %34
        %274 = vector.transpose %243, [0] : vector<8xf16> to vector<8xf16>
        %275 = math.floor %16 : tensor<8x7x3xf16>
        %276 = math.log2 %11 : tensor<8x10x3xf32>
        tensor.yield %c31796_i16 : i16
      } : tensor<?xi16>
      %250 = arith.maxf %cst_4, %cst_2 : f32
      memref.store %c-25308_i16, %26[%c7, %c4, %c1] : memref<8x10x3xi16>
      %251 = arith.negf %cst_3 : f32
      %252 = arith.remui %c1833966582_i32, %c1833966582_i32 : i32
      %253 = arith.minsi %c-31215_i16, %83 : i16
      %254 = vector.extract %20[1] : vector<7xi32>
      %255 = math.ctpop %23 : tensor<i16>
      %256 = vector.transpose %244, [0] : vector<8xi1> to vector<8xi1>
      %257 = vector.load %alloc_15[%c6, %c1, %c0] : memref<8x7x3xi32>, vector<8x7x3xi32>
      %258 = index.ceildivu %c2, %c14
      %259 = arith.ori %c16990_i16, %c31796_i16 : i16
      %260 = index.maxu %c6, %c15
      %261 = vector.bitcast %257 : vector<8x7x3xi32> to vector<8x7x3xi32>
      %262 = math.round %11 : tensor<8x10x3xf32>
      %263 = arith.cmpi ule, %c12841_i16, %c12841_i16 : i16
      %264 = vector.shuffle %246, %243 [4, 5, 9, 10, 11, 14, 15] : vector<8xf16>, vector<8xf16>
      %265 = math.ceil %cst_4 : f32
      %266 = arith.maxf %cst_0, %cst : f16
      memref.store %c1050544680_i32, %71[%c7, %c6, %c0] : memref<8x7x3xi32>
      %267 = arith.divui %extracted, %extracted : i1
      %268 = index.castu %c743529678_i32 : i32 to index
      %269 = math.fpowi %cst, %c1833966582_i32 : f16, i32
      %270 = arith.minui %c441501158_i64, %74 : i64
      %271 = arith.remui %extracted, %extracted : i1
      %272 = math.expm1 %9 : tensor<8x7x3xf16>
    }
    %102 = affine.max affine_map<(d0) -> ((-d0) ceildiv 8)>(%c15)
    %103 = index.maxs %c2, %c5
    %104 = arith.remf %cst_2, %cst_2 : f32
    memref.store %cst, %36[%c2, %c0] : memref<7x10xf16>
    %generated_27 = tensor.generate %c4, %c1, %66 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %241 = math.cos %9 : tensor<8x7x3xf16>
      %242 = affine.for %arg4 = 0 to 126 iter_args(%arg5 = %6) -> (tensor<7x10xi64>) {
        affine.yield %6 : tensor<7x10xi64>
      }
      affine.store %extracted, %alloc_5[%c9, %c12] : memref<7x10xi1>
      %243 = vector.matrix_multiply %20, %84 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
      tensor.yield %c-31215_i16 : i16
    } : tensor<?x?x?xi16>
    %105 = scf.if %extracted -> (f16) {
      memref.assume_alignment %101, 1 : memref<8x10x3xf16>
      %241 = memref.atomic_rmw muli %c12841_i16, %51[] : (i16, memref<i16>) -> i16
      %242 = index.sub %c1, %c4
      %243 = scf.while (%arg1 = %cst_3) : (f32) -> f32 {
        %249 = index.divu %c13, %102
        %250 = vector.broadcast %c9 : index to vector<10xindex>
        %251 = vector.broadcast %extracted : i1 to vector<10xi1>
        %252 = vector.broadcast %cst_0 : f16 to vector<10xf16>
        vector.scatter %101[%c2, %c2, %c2] [%250], %251, %252 : memref<8x10x3xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %253 = arith.addf %cst_1, %56 : f32
        %254 = math.fpowi %cst_1, %c1833966582_i32 : f32, i32
        %255 = vector.matrix_multiply %84, %84 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %256 = arith.floordivsi %74, %33 : i64
        %257 = vector.insertelement %c1833966582_i32, %20[%c5 : index] : vector<7xi32>
        %258 = index.floordivs %34, %29
        scf.condition(%extracted) %cst_2 : f32
      } do {
      ^bb0(%arg1: f32):
        memref.tensor_store %3, %36 : memref<7x10xf16>
        %249 = arith.shli %c1833966582_i32, %c1050544680_i32 : i32
        %250 = memref.load %alloc[%c6, %c6, %c2] : memref<8x10x3xf32>
        %alloc_48 = memref.alloc() : memref<7x10xi16>
        memref.tensor_store %10, %alloc_48 : memref<7x10xi16>
        %cast_49 = tensor.cast %8 : tensor<8x7x3xi1> to tensor<?x?x?xi1>
        %251 = index.castu %c13 : index to i32
        %252 = arith.cmpi uge, %74, %74 : i64
        %253 = memref.atomic_rmw minf %cst, %alloc_17[%c6, %c8] : (f16, memref<7x10xf16>) -> f16
        %254 = index.divs %34, %c7
        %255 = arith.andi %83, %c-25308_i16 : i16
        %256 = arith.divf %cst_4, %cst_2 : f32
        %257 = vector.broadcast %c5 : index to vector<3xindex>
        %258 = vector.broadcast %extracted : i1 to vector<3xi1>
        %259 = vector.broadcast %cst_0 : f16 to vector<3xf16>
        vector.scatter %36[%c5, %c6] [%257], %258, %259 : memref<7x10xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %260 = math.ctpop %83 : i16
        %261 = vector.insertelement %c1833966582_i32, %84[%72 : index] : vector<7xi32>
        %262 = arith.remui %extracted, %extracted : i1
        %263 = math.tanh %56 : f32
        scf.yield %cst_3 : f32
      }
      %244 = arith.mulf %cst_4, %cst_2 : f32
      %245 = arith.cmpi sgt, %extracted, %extracted : i1
      %246 = bufferization.to_memref %14 : memref<7x10xi16>
      %247 = tensor.empty() : tensor<7x10xi32>
      %248 = math.fpowi %3, %247 : tensor<7x10xf16>, tensor<7x10xi32>
      scf.yield %cst : f16
    } else {
      %241 = arith.maxf %cst, %cst_0 : f16
      memref.store %c-25308_i16, %alloc_9[%c2] : memref<8xi16>
      %242 = math.ctlz %4 : tensor<8xi32>
      %243 = index.ceildivs %c0, %c14
      %244 = math.fpowi %16, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
      scf.execute_region {
        %247 = arith.mulf %cst, %cst : f16
        %248 = affine.load %62[%c14] : memref<8xi32>
        %249 = math.ctlz %83 : i16
        %250 = math.ceil %cst_2 : f32
        %251 = arith.andi %c743529678_i32, %248 : i32
        %252 = vector.broadcast %c743529678_i32 : i32 to vector<8x7x3xi32>
        %253 = affine.load %alloc_15[%c7, %c0, %c12] : memref<8x7x3xi32>
        memref.tensor_store %0, %62 : memref<8xi32>
        %254 = math.ipowi %4, %0 : tensor<8xi32>
        %255 = index.casts %c1826384566_i64 : i64 to index
        %256 = math.ceil %5 : tensor<8x10x3xf32>
        %257 = affine.load %90[%c11, %c4] : memref<7x10xi1>
        %258 = math.tan %12 : tensor<8xf32>
        %259 = arith.remui %c1050544680_i32, %c1833966582_i32 : i32
        %260 = index.divu %29, %66
        %261 = math.powf %59, %11 : tensor<8x10x3xf32>
        scf.yield
      }
      %245 = index.mul %66, %c2
      %246 = arith.cmpf olt, %56, %cst_1 : f32
      scf.yield %cst_0 : f16
    }
    %106 = scf.execute_region -> vector<7x10xi32> {
      %from_elements_48 = tensor.from_elements %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted : tensor<8x7x3xi1>
      %241 = vector.insert %c743529678_i32, %84 [5] : i32 into vector<7xi32>
      %242 = arith.muli %c31796_i16, %83 : i16
      %243 = vector.transpose %84, [0] : vector<7xi32> to vector<7xi32>
      %244 = index.divu %c12, %89
      %245 = math.log2 %5 : tensor<8x10x3xf32>
      %246 = vector.broadcast %c31796_i16 : i16 to vector<8x7x3xi16>
      %247 = vector.broadcast %extracted : i1 to vector<8x7x3xi1>
      %248 = vector.broadcast %c1833966582_i32 : i32 to vector<8x7x3xi32>
      %249 = vector.gather %21[%c4] [%248], %247, %246 : tensor<8xi16>, vector<8x7x3xi32>, vector<8x7x3xi1>, vector<8x7x3xi16> into vector<8x7x3xi16>
      %250 = vector.broadcast %c1 : index to vector<10xindex>
      %251 = vector.broadcast %extracted : i1 to vector<10xi1>
      %252 = vector.broadcast %c1833966582_i32 : i32 to vector<10xi32>
      vector.scatter %alloc_14[%c0, %c9] [%250], %251, %252 : memref<7x10xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
      %253 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 64)>(%c4, %102, %244)
      %254 = index.add %c6, %102
      %255 = arith.xori %74, %c441501158_i64 : i64
      %256 = math.tan %cst_3 : f32
      %257 = math.exp %3 : tensor<7x10xf16>
      affine.for %arg1 = 0 to 71 {
      }
      %258 = arith.cmpf ult, %56, %cst_1 : f32
      %259 = memref.atomic_rmw minf %cst_0, %alloc_17[%c1, %c3] : (f16, memref<7x10xf16>) -> f16
      %260 = vector.broadcast %c1833966582_i32 : i32 to vector<7x10xi32>
      scf.yield %260 : vector<7x10xi32>
    }
    %generated_28 = tensor.generate %c4, %103 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %241 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
      %242 = arith.andi %c16990_i16, %c31796_i16 : i16
      %243 = math.ceil %11 : tensor<8x10x3xf32>
      %244 = vector.shuffle %20, %20 [1, 2, 3, 4, 7, 8, 10, 11, 13] : vector<7xi32>, vector<7xi32>
      tensor.yield %c1826384566_i64 : i64
    } : tensor<?x?x3xi64>
    %107 = math.fpowi %105, %c1050544680_i32 : f16, i32
    %108 = math.ceil %9 : tensor<8x7x3xf16>
    %109 = math.tan %cst_3 : f32
    %110 = index.ceildivu %c5, %34
    %111 = vector.multi_reduction <mul>, %84, %c1050544680_i32 [0] : vector<7xi32> to i32
    %112 = math.ipowi %c16990_i16, %c-31215_i16 : i16
    %113 = index.divs %c11, %c5
    %114 = bufferization.to_memref %transposed : memref<3x8x10xi16>
    %115 = memref.load %alloc_11[%c1, %c5, %c2] : memref<8x7x3xf32>
    %116 = arith.divui %c31796_i16, %c12841_i16 : i16
    %117 = math.absf %5 : tensor<8x10x3xf32>
    %118 = arith.mulf %cst, %cst_0 : f16
    %119 = index.sub %c13, %c11
    affine.store %c1050544680_i32, %alloc_14[%c3, %c14] : memref<7x10xi32>
    %120 = vector.shuffle %20, %20 [2, 3, 4, 5, 7, 8, 10, 11, 12, 13] : vector<7xi32>, vector<7xi32>
    %121 = scf.while (%arg1 = %c743529678_i32) : (i32) -> i32 {
      %241 = arith.cmpf ogt, %cst_4, %cst_3 : f32
      %242 = arith.shrui %c12841_i16, %c31796_i16 : i16
      %from_elements_48 = tensor.from_elements %c-31215_i16, %c12841_i16, %c31796_i16, %83, %c31796_i16, %c16990_i16, %c31796_i16, %c-31215_i16 : tensor<8xi16>
      %243 = arith.addf %cst_2, %cst_3 : f32
      %244 = arith.addf %cst_0, %cst : f16
      %245 = arith.ori %arg1, %c1833966582_i32 : i32
      %cast_49 = tensor.cast %7 : tensor<8x10x3xi16> to tensor<?x?x?xi16>
      %246 = vector.broadcast %cst_3 : f32 to vector<8x10x3xf32>
      %247 = vector.fma %246, %246, %246 : vector<8x10x3xf32>
      scf.condition(%extracted) %c743529678_i32 : i32
    } do {
    ^bb0(%arg1: i32):
      %241 = vector.extract %20[5] : vector<7xi32>
      %242 = arith.addf %cst_1, %cst_4 : f32
      %243 = math.ceil %12 : tensor<8xf32>
      %244 = arith.addi %33, %c441501158_i64 : i64
      %245 = scf.if %extracted -> (i16) {
        %true_50 = arith.constant true
        %false = arith.constant false
        %253 = vector.transfer_read %alloc_5[%72, %c5], %false : memref<7x10xi1>, vector<i1>
        %alloc_51 = memref.alloc() : memref<8x10x3xi64>
        memref.copy %alloc_18, %alloc_51 : memref<8x10x3xi64> to memref<8x10x3xi64>
        %254 = arith.remf %105, %cst : f16
        %255 = vector.multi_reduction <maxui>, %84, %20 [] : vector<7xi32> to vector<7xi32>
        %256 = index.maxu %113, %89
        %257 = affine.load %101[%c11, %c9, %c10] : memref<8x10x3xf16>
        %258 = index.castu %c13 : index to i32
        %259 = arith.minui %extracted, %extracted : i1
        scf.yield %c16990_i16 : i16
      } else {
        %253 = vector.broadcast %cst_3 : f32 to vector<8x10x3xf32>
        %254 = vector.fma %253, %253, %253 : vector<8x10x3xf32>
        memref.store %33, %alloc_18[%c1, %c3, %c0] : memref<8x10x3xi64>
        %255 = vector.insertelement %c1050544680_i32, %20[%102 : index] : vector<7xi32>
        memref.store %c1826384566_i64, %60[%c4, %c0, %c0] : memref<8x7x3xi64>
        %256 = bufferization.to_memref %11 : memref<8x10x3xf32>
        %expanded_50 = tensor.expand_shape %generated_28 [[0], [1], [2, 3]] : tensor<?x?x3xi64> into tensor<?x?x3x1xi64>
        %257 = math.absf %3 : tensor<7x10xf16>
        %258 = arith.addi %c441501158_i64, %c1826384566_i64 : i64
        scf.yield %c16990_i16 : i16
      }
      %246 = math.rsqrt %3 : tensor<7x10xf16>
      %247 = arith.negf %cst_4 : f32
      affine.store %c-25308_i16, %51[] : memref<i16>
      %248 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 64)>(%c10, %c12, %c8)
      %generated_48 = tensor.generate %c0, %119 {
      ^bb0(%arg2: index, %arg3: index):
        %253 = arith.negf %cst_3 : f32
        %254 = arith.muli %c-25308_i16, %c-31215_i16 : i16
        %255 = arith.floordivsi %c-25308_i16, %83 : i16
        %256 = vector.insert %c743529678_i32, %84 [3] : i32 into vector<7xi32>
        tensor.yield %extracted : i1
      } : tensor<?x?xi1>
      %249 = scf.while (%arg2 = %20) : (vector<7xi32>) -> vector<7xi32> {
        %253 = math.absf %9 : tensor<8x7x3xf16>
        %254 = bufferization.clone %alloc_12 : memref<8x10x3xi16> to memref<8x10x3xi16>
        %255 = arith.shrui %c1826384566_i64, %33 : i64
        %256 = memref.load %alloc_11[%c5, %c0, %c1] : memref<8x7x3xf32>
        %257 = affine.load %alloc_18[%c8, %c7, %c13] : memref<8x10x3xi64>
        %258 = index.sub %c5, %110
        %259 = vector.flat_transpose %84 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %260 = arith.muli %245, %c-25308_i16 : i16
        scf.condition(%extracted) %84 : vector<7xi32>
      } do {
      ^bb0(%arg2: vector<7xi32>):
        %253 = index.sub %c8, %c11
        %254 = arith.minsi %c1826384566_i64, %c1826384566_i64 : i64
        %255 = arith.ori %c1050544680_i32, %c1833966582_i32 : i32
        %256 = arith.shli %c16990_i16, %c16990_i16 : i16
        %257 = vector.reduction <minui>, %20 : vector<7xi32> into i32
        %258 = math.ctlz %18 : tensor<3x8x10xi16>
        %259 = index.ceildivu %29, %c3
        %260 = math.exp2 %cst_3 : f32
        %261 = arith.subi %83, %c-31215_i16 : i16
        %262 = arith.cmpi sge, %c441501158_i64, %c1826384566_i64 : i64
        %263 = index.maxs %c9, %c10
        %264 = affine.load %alloc_10[%c9] : memref<8xi16>
        %265 = vector.load %70[%c6, %c2, %c0] : memref<8x7x3xf16>, vector<7x10xf16>
        memref.assume_alignment %alloc_15, 16 : memref<8x7x3xi32>
        %266 = arith.muli %c1826384566_i64, %c441501158_i64 : i64
        bufferization.dealloc_tensor %generated_21 : tensor<?x?x3xf32>
        scf.yield %84 : vector<7xi32>
      }
      %collapsed_49 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x10xi64> into tensor<70xi64>
      %250 = math.cttz %c16990_i16 : i16
      %251 = math.tan %cst_3 : f32
      %252 = bufferization.to_memref %8 : memref<8x7x3xi1>
      memref.alloca_scope  {
        %253 = vector.broadcast %74 : i64 to vector<10x8xi64>
        vector.transfer_write %253, %60[%c9, %119, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x8xi64>, memref<8x7x3xi64>
        %254 = bufferization.clone %alloc_9 : memref<8xi16> to memref<8xi16>
        %255 = vector.broadcast %56 : f32 to vector<8xf32>
        %256 = vector.fma %255, %255, %255 : vector<8xf32>
        %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %256, %255, %cst_4 : vector<8xf32>, vector<8xf32> into f32
        %258 = vector.insertelement %c1833966582_i32, %20[%110 : index] : vector<7xi32>
        %expanded_50 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<8x7x3xf16> into tensor<8x7x3x1xf16>
        affine.store %c1050544680_i32, %42[%c9, %c10, %c3] : memref<8x7x3xi32>
        %259 = arith.subi %111, %c743529678_i32 : i32
        %260 = arith.divui %c743529678_i32, %c1833966582_i32 : i32
        %261 = arith.negf %cst : f16
        %alloc_51 = memref.alloc() : memref<8xi16>
        %262 = vector.broadcast %29 : index to vector<7xindex>
        %263 = vector.broadcast %extracted : i1 to vector<7xi1>
        %264 = vector.broadcast %c1826384566_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_18[%c1, %c1, %c0] [%262], %263, %264 : memref<8x10x3xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %265 = math.tan %11 : tensor<8x10x3xf32>
        %266 = math.log1p %cst_2 : f32
        %267 = arith.remui %c31796_i16, %c-31215_i16 : i16
        %from_elements_52 = tensor.from_elements %56, %cst_2, %56, %cst_3, %cst_2, %cst_1, %cst_4, %cst_1, %cst_4, %cst_3, %cst_4, %cst_4, %cst_1, %cst_4, %cst_3, %cst_1, %cst_1, %56, %cst_2, %cst_3, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %56, %cst_2, %cst_3, %cst_2, %56, %56, %cst_1, %cst_3, %56, %cst_1, %cst_2, %cst_4, %56, %cst_3, %cst_1, %cst_3, %cst_2, %cst_1, %56, %cst_3, %cst_3, %cst_4, %cst_4, %56, %cst_3, %cst_3, %cst_4, %cst_1, %cst_3, %cst_3, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %56, %cst_1, %cst_1, %cst_3, %56, %cst_1, %56, %cst_3, %56, %cst_2 : tensor<7x10xf32>
        %268 = vector.broadcast %c1826384566_i64 : i64 to vector<7x10xi64>
        %269 = vector.broadcast %extracted : i1 to vector<7x10xi1>
        %270 = vector.broadcast %c743529678_i32 : i32 to vector<7x10xi32>
        %271 = vector.gather %alloc_18[%c7, %c1, %45] [%270], %269, %268 : memref<8x10x3xi64>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xi64> into vector<7x10xi64>
        %272 = math.round %11 : tensor<8x10x3xf32>
        %273 = math.ctpop %c16990_i16 : i16
        affine.store %extracted, %252[%c8, %c2, %c6] : memref<8x7x3xi1>
        affine.store %c743529678_i32, %42[%c9, %c13, %c4] : memref<8x7x3xi32>
        %274 = math.expm1 %105 : f16
        %275 = arith.addi %83, %c-25308_i16 : i16
        %276 = math.rsqrt %59 : tensor<8x10x3xf32>
        %277 = math.cttz %23 : tensor<i16>
        %278 = arith.minsi %c-31215_i16, %c-25308_i16 : i16
        %collapsed_53 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<8x10x3xi16> into tensor<80x3xi16>
        %279 = vector.broadcast %c743529678_i32 : i32 to vector<10xi32>
        %280 = vector.insert %279, %270 [4] : vector<10xi32> into vector<7x10xi32>
        %281 = arith.minsi %c-31215_i16, %c16990_i16 : i16
        %282 = arith.shli %extracted, %extracted : i1
        %alloc_54 = memref.alloc() : memref<i16>
        memref.copy %51, %alloc_54 : memref<i16> to memref<i16>
        %283 = math.log1p %5 : tensor<8x10x3xf32>
      }
      scf.yield %c1050544680_i32 : i32
    }
    %122 = arith.floordivsi %extracted, %extracted : i1
    %123 = arith.cmpi ne, %c-25308_i16, %c31796_i16 : i16
    %124 = bufferization.to_tensor %alloc_14 : memref<7x10xi32>
    %125 = vector.transpose %84, [0] : vector<7xi32> to vector<7xi32>
    %126 = vector.splat %cst_2 : vector<8x7x3xf32>
    %127 = arith.cmpi sle, %c12841_i16, %c31796_i16 : i16
    %128 = affine.max affine_map<(d0, d1) -> (d1 - (d1 - 8) * 64)>(%110, %c9)
    %129 = index.divu %c10, %34
    %130 = math.exp %9 : tensor<8x7x3xf16>
    %131 = vector.broadcast %extracted : i1 to vector<i1>
    %132 = vector.transfer_write %131, %2[%c11] : vector<i1>, tensor<8xi1>
    %from_elements = tensor.from_elements %105, %cst, %cst, %cst_0, %105, %cst_0, %105, %cst, %105, %105, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %105, %cst, %cst, %cst, %105, %cst_0, %cst, %105, %cst, %105, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %105, %cst_0, %105, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %105, %105, %cst, %105, %cst_0, %cst, %105, %cst, %105, %cst_0, %cst_0 : tensor<7x10xf16>
    %rank = tensor.rank %21 : tensor<8xi16>
    memref.assume_alignment %alloc_18, 16 : memref<8x10x3xi64>
    %expanded = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<3x8x10xi16> into tensor<3x8x10x1xi16>
    %133 = index.casts %c3 : index to i32
    %134 = arith.muli %c16990_i16, %c-31215_i16 : i16
    %135 = arith.divf %cst, %105 : f16
    %136 = vector.shuffle %131, %131 [0, 1] : vector<i1>, vector<i1>
    %137 = arith.ori %c1833966582_i32, %c743529678_i32 : i32
    scf.if %extracted {
      %241 = math.tan %cst_3 : f32
      %242 = math.tan %16 : tensor<8x7x3xf16>
      %243 = vector.broadcast %cst_2 : f32 to vector<10x7x7xf32>
      %244 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %243, %244 {inclusive = true, reduction_dim = 0 : i64} : vector<10x7x7xf32>, vector<7x7xf32>
      %245 = arith.remf %105, %cst : f16
      %246 = index.floordivs %c1, %c11
      %247 = index.add %102, %128
      %from_elements_50 = tensor.from_elements %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %c1826384566_i64, %74, %c1826384566_i64, %74, %33, %33, %74, %c441501158_i64, %c441501158_i64, %c441501158_i64, %33, %33, %33, %74, %74, %33, %c1826384566_i64, %33, %c441501158_i64, %33, %33, %c1826384566_i64, %33, %c441501158_i64, %c1826384566_i64, %c441501158_i64, %33, %33, %c1826384566_i64, %c441501158_i64, %c441501158_i64, %c1826384566_i64, %74, %74, %c1826384566_i64, %74, %74, %c441501158_i64, %c1826384566_i64, %74, %33, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %74, %74, %c1826384566_i64, %c1826384566_i64, %33, %74, %33, %c1826384566_i64, %74, %74, %c1826384566_i64, %c1826384566_i64, %33, %33, %c441501158_i64, %c441501158_i64, %74, %c1826384566_i64, %c1826384566_i64, %33, %c441501158_i64, %c1826384566_i64, %74, %c1826384566_i64, %33, %c441501158_i64, %33, %33, %74, %74, %c441501158_i64, %74, %33, %c441501158_i64, %33, %74, %74, %c1826384566_i64, %c441501158_i64, %c441501158_i64, %74, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %74, %c441501158_i64, %c441501158_i64, %c441501158_i64, %74, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %c1826384566_i64, %74, %33, %c1826384566_i64, %c441501158_i64, %c441501158_i64, %33, %33, %c441501158_i64, %33, %c441501158_i64, %33, %74, %33, %74, %c1826384566_i64, %33, %c1826384566_i64, %c441501158_i64, %c441501158_i64, %c1826384566_i64, %33, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %c1826384566_i64, %33, %74, %c441501158_i64, %c1826384566_i64, %33, %74, %33, %c441501158_i64, %74, %c441501158_i64, %33, %74, %74, %c1826384566_i64, %c441501158_i64, %74, %33, %c441501158_i64, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %74, %c1826384566_i64, %c1826384566_i64, %c441501158_i64, %c441501158_i64, %c441501158_i64, %33, %c441501158_i64, %74, %c1826384566_i64, %74, %c1826384566_i64, %33, %c441501158_i64, %c1826384566_i64, %c1826384566_i64, %74 : tensor<8x7x3xi64>
      %248 = vector.reduction <and>, %20 : vector<7xi32> into i32
    }
    %138 = math.round %13 : tensor<8x7x3xf16>
    affine.store %c12841_i16, %26[%c3, %c5, %c10] : memref<8x10x3xi16>
    %139 = arith.minui %74, %c441501158_i64 : i64
    %140 = bufferization.clone %alloc_7 : memref<8x10x3xf16> to memref<8x10x3xf16>
    %141 = math.round %17 : tensor<8x7x3xf16>
    %142 = arith.maxf %56, %cst_4 : f32
    %143 = arith.cmpi ne, %c743529678_i32, %c743529678_i32 : i32
    affine.store %c1050544680_i32, %alloc_13[%c11, %c12, %c9] : memref<8x7x3xi32>
    affine.store %105, %101[%c4, %c3, %c0] : memref<8x10x3xf16>
    affine.store %c1833966582_i32, %62[%c4] : memref<8xi32>
    %generated_29 = tensor.generate %45, %c0 {
    ^bb0(%arg1: index, %arg2: index):
      %241 = vector.load %90[%c2, %c9] : memref<7x10xi1>, vector<8x7x3xi1>
      %242 = math.sqrt %56 : f32
      %243 = math.ipowi %23, %22 : tensor<i16>
      %244 = arith.divsi %c-25308_i16, %c-31215_i16 : i16
      tensor.yield %c12841_i16 : i16
    } : tensor<?x?xi16>
    %extracted_30 = tensor.extract %10[%c6, %c0] : tensor<7x10xi16>
    %144 = vector.transpose %131, [] : vector<i1> to vector<i1>
    %145 = memref.load %70[%c6, %c4, %c1] : memref<8x7x3xf16>
    memref.copy %60, %alloc_16 : memref<8x7x3xi64> to memref<8x7x3xi64>
    %cast_31 = tensor.cast %12 : tensor<8xf32> to tensor<?xf32>
    %146 = math.tan %cst_1 : f32
    %147 = vector.reduction <xor>, %20 : vector<7xi32> into i32
    %generated_32 = tensor.generate %29 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %cast_48 = tensor.cast %10 : tensor<7x10xi16> to tensor<?x?xi16>
      %241 = index.maxs %72, %c7
      %242 = vector.insert %c743529678_i32, %84 [6] : i32 into vector<7xi32>
      %243 = math.expm1 %cst : f16
      tensor.yield %33 : i64
    } : tensor<?x7x3xi64>
    affine.for %arg1 = 0 to 22 {
    }
    %148 = math.sqrt %17 : tensor<8x7x3xf16>
    %149 = math.tan %17 : tensor<8x7x3xf16>
    %150 = bufferization.to_memref %11 : memref<8x10x3xf32>
    %151 = math.absf %13 : tensor<8x7x3xf16>
    memref.store %c1833966582_i32, %alloc_13[%c3, %c6, %c0] : memref<8x7x3xi32>
    %152 = arith.remui %c-31215_i16, %c31796_i16 : i16
    %153 = scf.if %extracted -> (memref<8x10x3xi32>) {
      %241 = vector.bitcast %84 : vector<7xi32> to vector<7xi32>
      %242 = arith.divsi %extracted_30, %c31796_i16 : i16
      affine.store %extracted, %alloc_5[%c8, %c13] : memref<7x10xi1>
      %243 = arith.remf %cst_1, %cst_4 : f32
      %244 = scf.if %extracted -> (memref<8xf16>) {
        %247 = index.add %c10, %128
        %cast_49 = tensor.cast %9 : tensor<8x7x3xf16> to tensor<?x?x?xf16>
        %248 = bufferization.clone %42 : memref<8x7x3xi32> to memref<8x7x3xi32>
        %249 = arith.shli %111, %c1833966582_i32 : i32
        %250 = arith.remsi %c441501158_i64, %c441501158_i64 : i64
        %251 = math.cos %5 : tensor<8x10x3xf32>
        %splat_50 = tensor.splat %c31796_i16 : tensor<7x10xi16>
        %252 = vector.multi_reduction <minui>, %84, %84 [] : vector<7xi32> to vector<7xi32>
        %alloc_51 = memref.alloc() : memref<8xf16>
        scf.yield %alloc_51 : memref<8xf16>
      } else {
        %247 = arith.shrsi %c-25308_i16, %c-25308_i16 : i16
        memref.assume_alignment %26, 4 : memref<8x10x3xi16>
        %248 = arith.cmpf ult, %cst_2, %cst_2 : f32
        %249 = arith.cmpf one, %105, %cst_0 : f16
        %250 = math.ctlz %1 : tensor<8x7x3xi32>
        %251 = math.exp %5 : tensor<8x10x3xf32>
        %252 = arith.divf %cst_3, %cst_1 : f32
        %expanded_49 = tensor.expand_shape %4 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %alloc_50 = memref.alloc() : memref<8xf16>
        scf.yield %alloc_50 : memref<8xf16>
      }
      %245 = math.cos %59 : tensor<8x10x3xf32>
      %246 = vector.shuffle %84, %20 [1, 4, 7, 9, 10, 11, 12] : vector<7xi32>, vector<7xi32>
      affine.store %extracted, %alloc_6[%c15, %c13] : memref<7x10xi1>
      %alloc_48 = memref.alloc() : memref<8x10x3xi32>
      scf.yield %alloc_48 : memref<8x10x3xi32>
    } else {
      %241 = vector.splat %110 : vector<7x10xindex>
      %242 = math.atan2 %cst_0, %cst : f16
      %243 = math.tan %13 : tensor<8x7x3xf16>
      %244 = math.absi %83 : i16
      %245 = vector.load %114[%c0, %c7, %c9] : memref<3x8x10xi16>, vector<8xi16>
      %246 = affine.load %60[%c14, %c8, %c15] : memref<8x7x3xi64>
      %247 = tensor.empty() : tensor<8x3x10xf32>
      %248 = tensor.empty() : tensor<10xf32>
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%247, %248 : tensor<8x3x10xf32>, tensor<10xf32>) outs(%59 : tensor<8x10x3xf32>) {
      ^bb0(%in: f32, %in_49: f32, %out: f32):
        %251 = index.mul %45, %103
        %252 = vector.extract %84[4] : vector<7xi32>
        %253 = index.maxu %102, %c3
        %false = arith.constant false
        %254 = index.add %rank, %c6
        %255 = vector.transpose %131, [] : vector<i1> to vector<i1>
        %256 = vector.transpose %131, [] : vector<i1> to vector<i1>
        %257 = arith.shli %246, %246 : i64
        %splat_50 = tensor.splat %c1050544680_i32 : tensor<7x10xi32>
        memref.assume_alignment %71, 8 : memref<8x7x3xi32>
        %alloc_51 = memref.alloc() : memref<8xf16>
        %258 = index.add %254, %c1
        %259 = index.sub %c0, %129
        %260 = arith.addf %in_49, %cst_2 : f32
        %261 = arith.muli %c12841_i16, %extracted_30 : i16
        %262 = vector.extract_strided_slice %20 {offsets = [3], sizes = [4], strides = [1]} : vector<7xi32> to vector<4xi32>
        %263 = index.add %c14, %253
        %264 = vector.broadcast %c8 : index to vector<10xindex>
        %265 = vector.broadcast %extracted : i1 to vector<10xi1>
        %266 = vector.broadcast %105 : f16 to vector<10xf16>
        vector.scatter %alloc_7[%c7, %c8, %c1] [%264], %265, %266 : memref<8x10x3xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %267 = vector.broadcast %c1833966582_i32 : i32 to vector<8x10x3xi32>
        %268 = math.round %cst : f16
        %269 = index.add %119, %c7
        %270 = bufferization.to_memref %15 : memref<8x10x3xi16>
        %271 = arith.ori %c1826384566_i64, %74 : i64
        %272 = bufferization.clone %alloc_10 : memref<8xi16> to memref<8xi16>
        %273 = arith.minf %cst_1, %cst_3 : f32
        %274 = vector.multi_reduction <or>, %84, %c743529678_i32 [0] : vector<7xi32> to i32
        %275 = arith.cmpi ugt, %c1833966582_i32, %c1050544680_i32 : i32
        %276 = arith.maxf %cst_1, %out : f32
        %277 = vector.broadcast %c743529678_i32 : i32 to vector<8xi32>
        %278 = vector.broadcast %extracted : i1 to vector<8xi1>
        %279 = vector.gather %0[%c14] [%277], %278, %277 : tensor<8xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        memref.copy %150, %alloc : memref<8x10x3xf32> to memref<8x10x3xf32>
        %280 = arith.mulf %cst_4, %cst_4 : f32
        %281 = arith.xori %extracted_30, %c16990_i16 : i16
        linalg.yield %cst_2 : f32
      } -> tensor<8x10x3xf32>
      %250 = arith.remui %c12841_i16, %c12841_i16 : i16
      %alloc_48 = memref.alloc() : memref<8x10x3xi32>
      scf.yield %alloc_48 : memref<8x10x3xi32>
    }
    %154 = bufferization.to_tensor %alloc_13 : memref<8x7x3xi32>
    %155 = tensor.empty() : tensor<8x7x3xi16>
    %156 = vector.broadcast %c31796_i16 : i16 to vector<8x7x3xi16>
    %157 = vector.broadcast %extracted : i1 to vector<8x7x3xi1>
    %158 = vector.broadcast %111 : i32 to vector<8x7x3xi32>
    %159 = vector.gather %155[%129, %66, %c1] [%158], %157, %156 : tensor<8x7x3xi16>, vector<8x7x3xi32>, vector<8x7x3xi1>, vector<8x7x3xi16> into vector<8x7x3xi16>
    %160 = arith.shli %extracted, %extracted : i1
    %161 = vector.shuffle %20, %84 [0, 1, 2, 4, 5, 6, 8, 10, 12] : vector<7xi32>, vector<7xi32>
    %162 = index.ceildivs %c1, %110
    %alloc_33 = memref.alloc() : memref<8x7x3xf16>
    memref.copy %70, %alloc_33 : memref<8x7x3xf16> to memref<8x7x3xf16>
    %163 = arith.divui %extracted_30, %c31796_i16 : i16
    %164 = index.sub %119, %34
    %165 = math.absf %9 : tensor<8x7x3xf16>
    %166 = affine.max affine_map<(d0, d1) -> (d1, (-d1) ceildiv 16, d1 ceildiv 4 - d0, d0 ceildiv 16)>(%c3, %113)
    %alloc_34 = memref.alloc() : memref<8x10x3xi64>
    %167 = arith.addf %56, %cst_2 : f32
    %collapsed = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<8x10x3xf32> into tensor<80x3xf32>
    %168 = math.absi %c-25308_i16 : i16
    %169 = arith.cmpf ult, %cst_0, %105 : f16
    %cast_35 = tensor.cast %8 : tensor<8x7x3xi1> to tensor<?x?x?xi1>
    %170 = arith.addi %c16990_i16, %extracted_30 : i16
    %171 = affine.max affine_map<(d0, d1) -> ((d1 floordiv 128) * 2 - 128, (d0 floordiv 128) floordiv 128, (d1 floordiv 128) * 2 - 128, (d0 floordiv 128) floordiv 128)>(%c10, %45)
    %expanded_36 = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<3x8x10xi16> into tensor<3x8x10x1xi16>
    scf.if %extracted {
      memref.assume_alignment %alloc_7, 2 : memref<8x10x3xf16>
      %241 = index.maxs %rank, %45
      %242 = math.ctlz %83 : i16
      %243 = arith.divui %74, %c1826384566_i64 : i64
      %244 = vector.reduction <minui>, %20 : vector<7xi32> into i32
      %245 = math.absf %11 : tensor<8x10x3xf32>
      %246 = index.floordivs %c13, %129
      %247 = arith.shrui %c-25308_i16, %c31796_i16 : i16
    }
    %cast_37 = tensor.cast %12 : tensor<8xf32> to tensor<?xf32>
    %c14225_i16 = arith.constant 14225 : i16
    %172 = bufferization.to_memref %19 : memref<7xi16>
    %173 = math.ceil %cst_1 : f32
    %174 = math.exp2 %3 : tensor<7x10xf16>
    %175 = index.ceildivs %c4, %c10
    %176 = math.absi %transposed : tensor<3x8x10xi16>
    %177 = arith.minsi %83, %c16990_i16 : i16
    %178 = bufferization.clone %62 : memref<8xi32> to memref<8xi32>
    memref.store %c1050544680_i32, %alloc_14[%c6, %c7] : memref<7x10xi32>
    %179 = index.sub %113, %129
    %180 = affine.load %alloc_5[%c1, %c12] : memref<7x10xi1>
    memref.alloca_scope  {
      %241 = arith.divsi %111, %c743529678_i32 : i32
      scf.execute_region {
        %269 = math.sqrt %12 : tensor<8xf32>
        %270 = arith.shli %74, %74 : i64
        %271 = vector.broadcast %extracted : i1 to vector<8x7xi1>
        %dest_51, %accumulated_value_52 = vector.scan <or>, %157, %271 {inclusive = true, reduction_dim = 2 : i64} : vector<8x7x3xi1>, vector<8x7xi1>
        %272 = index.castu %c11 : index to i32
        %273 = bufferization.to_tensor %36 : memref<7x10xf16>
        %274 = arith.ori %c-25308_i16, %83 : i16
        %275 = index.add %89, %72
        %276 = arith.remui %c1833966582_i32, %c1833966582_i32 : i32
        %277 = arith.shli %c12841_i16, %c31796_i16 : i16
        %splat_53 = tensor.splat %c-25308_i16 : tensor<8xi16>
        %cast_54 = tensor.cast %17 : tensor<8x7x3xf16> to tensor<?x?x?xf16>
        %278 = vector.transpose %156, [1, 2, 0] : vector<8x7x3xi16> to vector<7x3x8xi16>
        %279 = vector.broadcast %c12841_i16 : i16 to vector<7x3xi16>
        %280 = vector.insert %279, %156 [3] : vector<7x3xi16> into vector<8x7x3xi16>
        %281 = arith.subi %111, %c743529678_i32 : i32
        %282 = tensor.empty() : tensor<10x3xf16>
        %283 = tensor.empty() : tensor<7x3xf16>
        %284 = linalg.matmul ins(%273, %282 : tensor<7x10xf16>, tensor<10x3xf16>) outs(%283 : tensor<7x3xf16>) -> tensor<7x3xf16>
        %285 = arith.maxf %cst_3, %cst_4 : f32
        scf.yield
      }
      %242 = index.add %103, %89
      %243 = math.cos %16 : tensor<8x7x3xf16>
      %244 = index.add %128, %34
      %245 = math.absi %expanded : tensor<3x8x10x1xi16>
      %246 = arith.negf %cst_1 : f32
      %247 = arith.addi %c-31215_i16, %c16990_i16 : i16
      %248 = index.divu %171, %c9
      %249 = arith.ori %c441501158_i64, %74 : i64
      %250 = arith.cmpf ueq, %cst_2, %cst_2 : f32
      %251 = arith.divsi %74, %c1826384566_i64 : i64
      %252 = math.tanh %56 : f32
      %253 = scf.execute_region -> tensor<8x7x3xi32> {
        %269 = math.ipowi %7, %7 : tensor<8x10x3xi16>
        %270 = math.cos %12 : tensor<8xf32>
        %splat_51 = tensor.splat %cst_3 : tensor<8xf32>
        %271 = vector.broadcast %119 : index to vector<7xindex>
        %272 = vector.broadcast %extracted : i1 to vector<7xi1>
        vector.scatter %alloc_5[%c2, %c0] [%271], %272, %272 : memref<7x10xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %273 = arith.divsi %c441501158_i64, %c1826384566_i64 : i64
        %274 = index.maxs %rank, %29
        %275 = vector.bitcast %156 : vector<8x7x3xi16> to vector<8x7x3xi16>
        %276 = arith.mulf %cst_2, %cst_3 : f32
        %277 = bufferization.clone %101 : memref<8x10x3xf16> to memref<8x10x3xf16>
        %278 = arith.muli %180, %extracted : i1
        %279 = bufferization.to_memref %generated_27 : memref<?x?x?xi16>
        %280 = arith.ceildivsi %111, %c743529678_i32 : i32
        %281 = math.floor %splat_51 : tensor<8xf32>
        %282 = arith.maxui %extracted_30, %83 : i16
        %283 = arith.remui %c-31215_i16, %extracted_30 : i16
        %284 = arith.remsi %c441501158_i64, %33 : i64
        scf.yield %1 : tensor<8x7x3xi32>
      }
      %collapsed_48 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<8x10x3xf32> into tensor<80x3xf32>
      %254 = vector.broadcast %180 : i1 to vector<3xi1>
      %255 = vector.insert %254, %157 [1, 3] : vector<3xi1> into vector<8x7x3xi1>
      %generated_49 = tensor.generate %c9 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %269 = math.cos %13 : tensor<8x7x3xf16>
        %270 = arith.shli %c743529678_i32, %c743529678_i32 : i32
        %271 = math.absf %16 : tensor<8x7x3xf16>
        %272 = arith.andi %c1833966582_i32, %c1050544680_i32 : i32
        tensor.yield %c1833966582_i32 : i32
      } : tensor<?x7x3xi32>
      %256 = index.casts %c743529678_i32 : i32 to index
      scf.if %extracted {
        memref.store %c743529678_i32, %71[%c1, %c5, %c2] : memref<8x7x3xi32>
        %269 = affine.load %153[%c13, %c8, %c9] : memref<8x10x3xi32>
        memref.store %c-25308_i16, %alloc_9[%c1] : memref<8xi16>
        %alloc_51 = memref.alloc() : memref<3x3xf32>
        %270 = tensor.empty() : tensor<80x3xf32>
        %271 = linalg.matmul ins(%collapsed, %alloc_51 : tensor<80x3xf32>, memref<3x3xf32>) outs(%270 : tensor<80x3xf32>) -> tensor<80x3xf32>
        memref.assume_alignment %alloc_9, 2 : memref<8xi16>
        %272 = arith.ori %c-31215_i16, %c-31215_i16 : i16
        %273 = bufferization.clone %alloc_12 : memref<8x10x3xi16> to memref<8x10x3xi16>
        %274 = math.ipowi %6, %6 : tensor<7x10xi64>
      } else {
        %269 = math.ctpop %c1050544680_i32 : i32
        %270 = vector.broadcast %180 : i1 to vector<3x3xi1>
        %271 = vector.outerproduct %254, %254, %270 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
        %272 = math.absf %5 : tensor<8x10x3xf32>
        %273 = arith.negf %56 : f32
        %274 = math.rsqrt %12 : tensor<8xf32>
        %275 = math.fpowi %13, %1 : tensor<8x7x3xf16>, tensor<8x7x3xi32>
        %276 = math.expm1 %3 : tensor<7x10xf16>
        %277 = bufferization.clone %alloc_13 : memref<8x7x3xi32> to memref<8x7x3xi32>
      }
      %257 = vector.extract %157[7] : vector<8x7x3xi1>
      %from_elements_50 = tensor.from_elements %c1826384566_i64, %c441501158_i64, %c441501158_i64, %33, %c441501158_i64, %33, %c1826384566_i64, %c441501158_i64 : tensor<8xi64>
      %258 = arith.addi %c441501158_i64, %c1826384566_i64 : i64
      %259 = vector.bitcast %159 : vector<8x7x3xi16> to vector<8x7x3xi16>
      scf.if %180 {
        %alloc_51 = memref.alloc() : memref<3x8x10xi16>
        memref.copy %114, %alloc_51 : memref<3x8x10xi16> to memref<3x8x10xi16>
        %269 = vector.extract %259[0, 1] : vector<8x7x3xi16>
        %270 = arith.negf %cst_2 : f32
        memref.store %105, %alloc_17[%c5, %c7] : memref<7x10xf16>
        %271 = arith.shrui %c743529678_i32, %c1050544680_i32 : i32
        %272 = index.maxu %89, %c5
        %273 = arith.cmpi uge, %c16990_i16, %extracted_30 : i16
        %splat_52 = tensor.splat %extracted : tensor<8x7x3xi1>
      } else {
        %269 = arith.xori %33, %74 : i64
        %270 = affine.load %alloc_15[%c7, %c9, %c3] : memref<8x7x3xi32>
        %271 = math.roundeven %9 : tensor<8x7x3xf16>
        %272 = index.floordivs %248, %102
        %extracted_51 = tensor.extract %generated_21[%c0, %c0, %c1] : tensor<?x?x3xf32>
        %273 = math.rsqrt %collapsed : tensor<80x3xf32>
        %274 = math.ceil %cst_2 : f32
        %extracted_52 = tensor.extract %155[%c0, %c1, %c2] : tensor<8x7x3xi16>
      }
      %260 = math.ctpop %10 : tensor<7x10xi16>
      %261 = arith.remui %c-25308_i16, %83 : i16
      %262 = math.cttz %15 : tensor<8x10x3xi16>
      %263 = index.maxs %c7, %c6
      %264 = vector.broadcast %83 : i16 to vector<7x3xi16>
      %265 = vector.insert %264, %156 [6] : vector<7x3xi16> into vector<8x7x3xi16>
      %266 = memref.load %26[%c4, %c9, %c0] : memref<8x10x3xi16>
      %267 = arith.maxf %cst_4, %cst_4 : f32
      %268 = index.divu %c12, %103
    }
    %181 = math.ctlz %c1833966582_i32 : i32
    %182 = bufferization.clone %alloc_5 : memref<7x10xi1> to memref<7x10xi1>
    %183 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 2, d3 + d1, d2 * 128 + d1 - 128, d3 + d1)>(%110, %c9, %162, %c0)
    %184 = arith.cmpf ugt, %cst_4, %cst_2 : f32
    %185 = math.ctlz %10 : tensor<7x10xi16>
    memref.alloca_scope  {
      %241 = vector.broadcast %180 : i1 to vector<7xi1>
      %242 = vector.multi_reduction <minsi>, %157, %241 [0, 2] : vector<8x7x3xi1> to vector<7xi1>
      %243 = math.round %16 : tensor<8x7x3xf16>
      %244 = arith.muli %c1050544680_i32, %c1833966582_i32 : i32
      %245 = memref.alloca_scope  -> (i64) {
        %269 = vector.splat %c14 : vector<8xindex>
        %270 = arith.negf %105 : f16
        affine.store %c12841_i16, %51[] : memref<i16>
        %expanded_52 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<3x8x10xi16> into tensor<3x8x10x1xi16>
        %271 = index.ceildivu %c5, %c10
        %272 = math.ipowi %22, %22 : tensor<i16>
        %273 = arith.addf %cst_0, %cst : f16
        %274 = arith.shrui %c16990_i16, %c-25308_i16 : i16
        %275 = math.tanh %cst : f16
        %276 = math.tan %11 : tensor<8x10x3xf32>
        %277 = math.copysign %5, %5 : tensor<8x10x3xf32>
        %collapsed_53 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<8x7x3xf16> into tensor<56x3xf16>
        %278 = bufferization.clone %60 : memref<8x7x3xi64> to memref<8x7x3xi64>
        %279 = index.maxu %179, %110
        %280 = index.ceildivu %128, %c3
        %281 = arith.divui %c1826384566_i64, %74 : i64
        %282 = math.exp %collapsed_53 : tensor<56x3xf16>
        %283 = arith.addf %cst_4, %cst_3 : f32
        %284 = arith.minui %74, %c1826384566_i64 : i64
        %285 = vector.broadcast %cst : f16 to vector<7x10xf16>
        %286 = vector.broadcast %180 : i1 to vector<7x10xi1>
        %287 = vector.broadcast %111 : i32 to vector<7x10xi32>
        %288 = vector.gather %78[%c9, %c10, %c11] [%287], %286, %285 : memref<8x10x3xf16>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xf16> into vector<7x10xf16>
        %false = arith.constant false
        %289 = vector.broadcast %105 : f16 to vector<10xf16>
        %290 = vector.insert %289, %285 [0] : vector<10xf16> into vector<7x10xf16>
        %291 = index.floordivs %c4, %c3
        %extracted_54 = tensor.extract %14[%c4, %c9] : tensor<7x10xi16>
        %292 = arith.shrui %111, %c1050544680_i32 : i32
        %293 = vector.transpose %157, [1, 0, 2] : vector<8x7x3xi1> to vector<7x8x3xi1>
        %294 = math.rsqrt %16 : tensor<8x7x3xf16>
        %295 = math.expm1 %11 : tensor<8x10x3xf32>
        %296 = bufferization.clone %71 : memref<8x7x3xi32> to memref<8x7x3xi32>
        %297 = arith.negf %cst_0 : f16
        %298 = vector.broadcast %cst : f16 to vector<7xf16>
        %299 = vector.multi_reduction <add>, %285, %298 [1] : vector<7x10xf16> to vector<7xf16>
        %300 = arith.shli %83, %extracted_30 : i16
        memref.alloca_scope.return %74 : i64
      }
      %246 = math.log2 %from_elements : tensor<7x10xf16>
      %247 = arith.addi %extracted, %180 : i1
      %248 = vector.transpose %131, [] : vector<i1> to vector<i1>
      %249 = math.absf %13 : tensor<8x7x3xf16>
      %250 = affine.load %150[%c12, %c1, %c4] : memref<8x10x3xf32>
      %251 = arith.ori %c1833966582_i32, %c1833966582_i32 : i32
      %252 = bufferization.clone %60 : memref<8x7x3xi64> to memref<8x7x3xi64>
      %splat_48 = tensor.splat %c1833966582_i32 : tensor<8xi32>
      %253 = bufferization.to_tensor %alloc_7 : memref<8x10x3xf16>
      %254 = arith.maxf %cst_0, %cst_0 : f16
      %255 = math.atan %12 : tensor<8xf32>
      %256 = arith.addi %245, %33 : i64
      %257 = math.ctpop %19 : tensor<7xi16>
      %cast_49 = tensor.cast %3 : tensor<7x10xf16> to tensor<?x?xf16>
      %258 = math.ceil %17 : tensor<8x7x3xf16>
      %259 = math.round %253 : tensor<8x10x3xf16>
      %260 = math.cos %cst_3 : f32
      %261 = math.ceil %12 : tensor<8xf32>
      %alloc_50 = memref.alloc() : memref<7x10xi1>
      memref.tensor_store %11, %alloc : memref<8x10x3xf32>
      %262 = arith.remui %83, %c31796_i16 : i16
      %263 = index.ceildivs %c12, %c1
      %264 = index.ceildivu %128, %c11
      %extracted_51 = tensor.extract %3[%c4, %c2] : tensor<7x10xf16>
      %265 = arith.shrui %245, %c1826384566_i64 : i64
      %266 = memref.load %alloc_15[%c3, %c5, %c2] : memref<8x7x3xi32>
      %267 = math.cos %56 : f32
      %268 = index.sub %166, %179
    }
    %splat = tensor.splat %cst_0 : tensor<8x10x3xf16>
    %186 = vector.reduction <and>, %84 : vector<7xi32> into i32
    %187 = math.rsqrt %11 : tensor<8x10x3xf32>
    memref.store %c-31215_i16, %114[%c2, %c5, %c8] : memref<3x8x10xi16>
    %188 = math.atan2 %5, %59 : tensor<8x10x3xf32>
    %189 = arith.negf %cst_3 : f32
    %190 = bufferization.to_tensor %36 : memref<7x10xf16>
    %191 = math.exp2 %105 : f16
    %alloc_38 = memref.alloc() : memref<8x7x3xi32>
    %from_elements_39 = tensor.from_elements %cst_2, %cst_1, %cst_4, %cst_2, %cst_1, %cst_3, %cst_3, %56, %cst_4, %56, %cst_2, %56, %56, %cst_1, %cst_4, %cst_2, %cst_4, %cst_2, %cst_1, %cst_3, %cst_3, %cst_4, %cst_2, %56, %cst_3, %56, %56, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %56, %cst_4, %56, %cst_2, %cst_1, %56, %cst_2, %cst_4, %cst_3, %cst_2, %56, %56, %cst_4, %cst_2, %cst_1, %56, %cst_2, %cst_2, %cst_4, %cst_1, %cst_3, %cst_2, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %56, %cst_2, %cst_4, %cst_2, %cst_4, %56, %cst_1, %cst_3, %cst_2, %cst_3, %56, %cst_1, %cst_3, %cst_4, %cst_2, %cst_3, %cst_2, %cst_4, %cst_3, %56, %cst_2, %cst_3, %56, %cst_1, %56, %cst_3, %cst_4, %cst_3, %56, %cst_1, %cst_3, %56, %56, %cst_4, %cst_4, %cst_1, %cst_2, %cst_2, %56, %cst_4, %cst_2, %cst_3, %cst_4, %cst_3, %cst_2, %cst_4, %cst_4, %56, %56, %cst_2, %cst_3, %cst_1, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %56, %cst_3, %cst_2, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %56, %cst_3, %cst_1, %cst_2, %cst_1, %56, %cst_3, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_3, %cst_2, %cst_4, %cst_4, %cst_1, %cst_3, %cst_1, %cst_4, %56, %56, %cst_2, %cst_2, %56, %cst_4, %cst_4, %cst_1, %56, %cst_3, %cst_2, %cst_2, %56, %cst_4, %56, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %56, %cst_3, %cst_2, %cst_1, %cst_2, %cst_4, %cst_1, %cst_1, %cst_3, %cst_1, %56, %cst_1, %cst_2, %cst_3, %cst_3, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_3, %56, %cst_1, %cst_2, %cst_3, %cst_1, %cst_4, %56, %cst_3, %cst_2, %cst_3, %cst_2, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_2, %cst_1, %cst_4, %cst_3, %cst_4, %56, %cst_4, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_3, %cst_3, %cst_1, %cst_4, %56, %cst_4, %cst_2, %56, %cst_4, %cst_1, %cst_3, %cst_2, %cst_1, %cst_2, %56, %cst_2, %cst_2, %cst_2, %cst_4, %cst_3, %cst_4, %cst_3, %cst_2 : tensor<8x10x3xf32>
    %192 = bufferization.clone %36 : memref<7x10xf16> to memref<7x10xf16>
    %193 = math.log %56 : f32
    %194 = affine.max affine_map<(d0, d1, d2, d3) -> (2)>(%103, %c3, %129, %c14)
    %195 = math.cos %3 : tensor<7x10xf16>
    %196 = arith.cmpf true, %56, %cst_4 : f32
    %197 = math.exp2 %cst_2 : f32
    %198 = bufferization.clone %70 : memref<8x7x3xf16> to memref<8x7x3xf16>
    %199 = index.sub %c7, %c4
    %200 = memref.atomic_rmw addi %c1826384566_i64, %60[%c1, %c6, %c0] : (i64, memref<8x7x3xi64>) -> i64
    %201 = math.sqrt %3 : tensor<7x10xf16>
    %202 = arith.maxf %cst_2, %cst_4 : f32
    memref.assume_alignment %70, 2 : memref<8x7x3xf16>
    %203 = arith.negf %cst : f16
    %alloc_40 = memref.alloc() : memref<8xi64>
    %204 = affine.for %arg1 = 0 to 53 iter_args(%arg2 = %c12) -> (index) {
      affine.yield %c15 : index
    }
    %205 = vector.bitcast %158 : vector<8x7x3xi32> to vector<8x7x3xi32>
    %206 = vector.transpose %158, [0, 2, 1] : vector<8x7x3xi32> to vector<8x3x7xi32>
    %207 = arith.maxf %cst_4, %cst_1 : f32
    affine.store %105, %alloc_19[%c7, %c14, %c14] : memref<8x10x3xf16>
    %208 = math.log1p %13 : tensor<8x7x3xf16>
    %209 = index.sub %c10, %171
    %210 = index.divu %c8, %119
    %211 = affine.for %arg1 = 0 to 114 iter_args(%arg2 = %22) -> (tensor<i16>) {
      affine.yield %23 : tensor<i16>
    }
    %alloc_41 = memref.alloc() : memref<10x8xi16>
    %alloc_42 = memref.alloc() : memref<3x8xi16>
    %212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41, %alloc_42 : memref<10x8xi16>, memref<3x8xi16>) outs(%15 : tensor<8x10x3xi16>) {
    ^bb0(%in: i16, %in_48: i16, %out: i16):
      %241 = index.ceildivs %c3, %c10
      %c1192561770_i64 = arith.constant 1192561770 : i64
      %242 = vector.broadcast %c-25308_i16 : i16 to vector<10x8xi16>
      vector.transfer_write %242, %alloc_12[%34, %c12, %210] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x8xi16>, memref<8x10x3xi16>
      %243 = affine.if affine_set<(d0) : ((d0 floordiv 4) * 2 >= 0, ((d0 floordiv 4) * 2) ceildiv 32 == 0, (d0 floordiv 4) * 2 == 0)>(%c5) -> i16 {
        %269 = arith.mulf %cst_2, %cst_1 : f32
        %270 = vector.transpose %131, [] : vector<i1> to vector<i1>
        %271 = memref.load %178[%c3] : memref<8xi32>
        %272 = bufferization.clone %150 : memref<8x10x3xf32> to memref<8x10x3xf32>
        %273 = arith.remui %in_48, %c31796_i16 : i16
        memref.tensor_store %19, %172 : memref<7xi16>
        memref.assume_alignment %192, 16 : memref<7x10xf16>
        %274 = math.tan %3 : tensor<7x10xf16>
        affine.yield %c31796_i16 : i16
      } else {
        %cst_57 = arith.constant 1.60692877E+9 : f32
        %269 = arith.addi %180, %extracted : i1
        %270 = math.tanh %5 : tensor<8x10x3xf32>
        memref.assume_alignment %198, 16 : memref<8x7x3xf16>
        %271 = vector.broadcast %180 : i1 to vector<3xi1>
        %272 = vector.insert %271, %157 [5, 0] : vector<3xi1> into vector<8x7x3xi1>
        memref.store %extracted, %90[%c6, %c7] : memref<7x10xi1>
        %extracted_58 = tensor.extract %17[%c3, %c3, %c0] : tensor<8x7x3xf16>
        %273 = arith.maxf %56, %56 : f32
        affine.yield %extracted_30 : i16
      }
      %244 = math.tanh %5 : tensor<8x10x3xf32>
      %245 = arith.shrui %out, %c-25308_i16 : i16
      %246 = memref.load %alloc_13[%c7, %c2, %c0] : memref<8x7x3xi32>
      memref.alloca_scope  {
        %269 = arith.maxf %cst_3, %cst_3 : f32
        %alloc_57 = memref.alloc() : memref<10x10xf16>
        %270 = tensor.empty() : tensor<7x10xf16>
        %271 = linalg.matmul ins(%3, %alloc_57 : tensor<7x10xf16>, memref<10x10xf16>) outs(%270 : tensor<7x10xf16>) -> tensor<7x10xf16>
        %272 = arith.addf %cst_4, %cst_4 : f32
        affine.store %c-31215_i16, %114[%c7, %c10, %c0] : memref<3x8x10xi16>
        memref.copy %198, %70 : memref<8x7x3xf16> to memref<8x7x3xf16>
        %273 = arith.maxsi %c31796_i16, %c16990_i16 : i16
        affine.store %105, %198[%c11, %c2, %c5] : memref<8x7x3xf16>
        %274 = index.ceildivu %66, %119
        %275 = math.cos %collapsed : tensor<80x3xf32>
        %276 = arith.maxf %cst_3, %cst_1 : f32
        memref.assume_alignment %60, 8 : memref<8x7x3xi64>
        %277 = vector.multi_reduction <xor>, %84, %c1050544680_i32 [0] : vector<7xi32> to i32
        affine.store %277, %alloc_14[%c6, %c4] : memref<7x10xi32>
        %278 = arith.maxf %cst_4, %cst_2 : f32
        memref.store %33, %alloc_18[%c0, %c3, %c2] : memref<8x10x3xi64>
        memref.assume_alignment %192, 16 : memref<7x10xf16>
        %279 = arith.shrui %in, %c-25308_i16 : i16
        %280 = tensor.empty() : tensor<8xi64>
        %281 = vector.broadcast %c1826384566_i64 : i64 to vector<7x10xi64>
        %282 = vector.broadcast %180 : i1 to vector<7x10xi1>
        %283 = vector.broadcast %c1833966582_i32 : i32 to vector<7x10xi32>
        %284 = vector.gather %280[%119] [%283], %282, %281 : tensor<8xi64>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xi64> into vector<7x10xi64>
        %expanded_58 = tensor.expand_shape %0 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %285 = math.tan %from_elements_39 : tensor<8x10x3xf32>
        %286 = arith.negf %cst_4 : f32
        %287 = index.ceildivs %29, %89
        %288 = vector.shuffle %156, %156 [0, 2, 3, 6, 7, 9, 12, 13, 14] : vector<8x7x3xi16>, vector<8x7x3xi16>
        %289 = math.cttz %in : i16
        %290 = vector.reduction <minui>, %84 : vector<7xi32> into i32
        %291 = vector.reduction <maxsi>, %20 : vector<7xi32> into i32
        %292 = vector.broadcast %119 : index to vector<10xindex>
        %293 = vector.broadcast %extracted : i1 to vector<10xi1>
        %294 = vector.broadcast %cst_0 : f16 to vector<10xf16>
        vector.scatter %101[%c2, %c8, %c2] [%292], %293, %294 : memref<8x10x3xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %295 = arith.remf %cst, %cst_0 : f16
        affine.store %c31796_i16, %alloc_12[%c15, %c4, %c11] : memref<8x10x3xi16>
        %296 = arith.negf %cst_3 : f32
        %297 = vector.reduction <minui>, %84 : vector<7xi32> into i32
        %298 = arith.muli %c-25308_i16, %c12841_i16 : i16
      }
      %247 = arith.minsi %33, %c441501158_i64 : i64
      %248 = math.exp2 %collapsed : tensor<80x3xf32>
      %249 = arith.shli %c1826384566_i64, %c441501158_i64 : i64
      %250 = math.exp %11 : tensor<8x10x3xf32>
      %251 = tensor.empty() : tensor<8x3xi16>
      %alloc_49 = memref.alloc() : memref<10xi16>
      %252 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%251, %21, %alloc_49 : tensor<8x3xi16>, tensor<8xi16>, memref<10xi16>) outs(%18 : tensor<3x8x10xi16>) {
      ^bb0(%in_57: i16, %in_58: i16, %in_59: i16, %out_60: i16):
        %269 = arith.minf %56, %cst_3 : f32
        %270 = arith.muli %c743529678_i32, %111 : i32
        memref.copy %36, %alloc_17 : memref<7x10xf16> to memref<7x10xf16>
        %splat_61 = tensor.splat %c31796_i16 : tensor<8x10x3xi16>
        %splat_62 = tensor.splat %out : tensor<8x7x3xi16>
        %271 = arith.negf %56 : f32
        %272 = arith.addi %c31796_i16, %c31796_i16 : i16
        %273 = math.roundeven %11 : tensor<8x10x3xf32>
        %274 = arith.divsi %c1833966582_i32, %111 : i32
        %275 = index.add %34, %119
        %276 = index.divu %c15, %c5
        %277 = vector.splat %56 : vector<7x10xf32>
        %278 = arith.cmpf olt, %cst_4, %cst_2 : f32
        %279 = arith.cmpi sge, %83, %c12841_i16 : i16
        %280 = affine.load %62[%c9] : memref<8xi32>
        %281 = arith.minsi %extracted_30, %out : i16
        %rank_63 = tensor.rank %cast : tensor<?x?xi64>
        %282 = arith.floordivsi %c-31215_i16, %in : i16
        %283 = vector.broadcast %out : i16 to vector<10xi16>
        %dest_64, %accumulated_value_65 = vector.scan <maxsi>, %242, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<10x8xi16>, vector<10xi16>
        %284 = arith.shli %extracted, %180 : i1
        %from_elements_66 = tensor.from_elements %280, %280, %111, %280, %111, %c743529678_i32, %111, %c1833966582_i32, %111, %280, %c1050544680_i32, %c743529678_i32, %c1833966582_i32, %c1050544680_i32, %c1050544680_i32, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %c1050544680_i32, %280, %111, %c743529678_i32, %111, %c1050544680_i32, %c743529678_i32, %c1050544680_i32, %111, %280, %111, %c1833966582_i32, %c743529678_i32, %c1833966582_i32, %c1833966582_i32, %111, %c743529678_i32, %c1050544680_i32, %c743529678_i32, %280, %c743529678_i32, %c1833966582_i32, %280, %c1050544680_i32, %c743529678_i32, %280, %c743529678_i32, %280, %c1050544680_i32, %c743529678_i32, %111, %111, %c743529678_i32, %c1050544680_i32, %111, %111, %280, %c743529678_i32, %c743529678_i32, %111, %c1050544680_i32, %c1050544680_i32, %280, %c1833966582_i32, %111, %111, %c743529678_i32, %111, %c1050544680_i32, %280, %280, %c743529678_i32 : tensor<7x10xi32>
        %285 = affine.max affine_map<(d0) -> (d0 * 4, d0 * 64)>(%128)
        %286 = math.rsqrt %16 : tensor<8x7x3xf16>
        %287 = vector.splat %111 : vector<8xi32>
        %288 = vector.bitcast %159 : vector<8x7x3xi16> to vector<8x7x3xf16>
        %289 = arith.negf %cst : f16
        %290 = vector.broadcast %c12841_i16 : i16 to vector<7x3xi16>
        %291 = vector.insert %290, %159 [7] : vector<7x3xi16> into vector<8x7x3xi16>
        %292 = arith.remf %56, %cst_1 : f32
        %293 = index.divu %166, %c8
        %294 = vector.broadcast %extracted : i1 to vector<i1>
        %295 = vector.transfer_write %294, %2[%c12] : vector<i1>, tensor<8xi1>
        %296 = index.ceildivu %c10, %rank_63
        %297 = index.floordivs %66, %66
        linalg.yield %out : i16
      } -> tensor<3x8x10xi16>
      %253 = index.sub %c11, %c15
      %254 = vector.splat %110 : vector<7x10xindex>
      %255 = index.floordivs %c15, %166
      %alloc_50 = memref.alloc() : memref<8x7x3xi64>
      %256 = arith.muli %c-31215_i16, %c-25308_i16 : i16
      %257 = math.copysign %from_elements, %from_elements : tensor<7x10xf16>
      %258 = index.sub %c15, %194
      %259 = vector.broadcast %c-25308_i16 : i16 to vector<8x7xi16>
      %dest_51, %accumulated_value_52 = vector.scan <xor>, %159, %259 {inclusive = true, reduction_dim = 2 : i64} : vector<8x7x3xi16>, vector<8x7xi16>
      %260 = arith.shrui %c743529678_i32, %c1050544680_i32 : i32
      %alloc_53 = memref.alloc() : memref<10x10xi64>
      %261 = tensor.empty() : tensor<7x10xi64>
      %262 = linalg.matmul ins(%6, %alloc_53 : tensor<7x10xi64>, memref<10x10xi64>) outs(%261 : tensor<7x10xi64>) -> tensor<7x10xi64>
      %263 = math.absi %transposed : tensor<3x8x10xi16>
      %264 = arith.ori %c1826384566_i64, %c1826384566_i64 : i64
      %from_elements_54 = tensor.from_elements %cst_3, %cst_4, %cst_4, %cst_1, %56, %cst_1, %cst_3, %cst_2, %cst_4, %cst_4, %56, %cst_1, %cst_2, %cst_3, %cst_2, %56, %56, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %56, %cst_3, %cst_2, %cst_4, %cst_4, %56, %cst_1, %cst_4, %cst_4, %56, %cst_4, %cst_4, %cst_4, %cst_3, %cst_1, %cst_1, %cst_1, %56, %cst_2, %cst_1, %cst_2, %cst_2, %56, %cst_4, %cst_3, %cst_2, %cst_2, %cst_4, %cst_4, %56, %cst_2, %cst_3, %cst_3, %cst_2, %cst_4, %56, %cst_1, %cst_2, %cst_4, %cst_3, %cst_2, %cst_2, %cst_4, %cst_4, %cst_3, %56, %cst_4 : tensor<7x10xf32>
      %265 = arith.maxf %105, %cst_0 : f16
      %generated_55 = tensor.generate %166, %166 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %269 = math.exp2 %cst_0 : f16
        %270 = memref.load %alloc_8[%c4, %c3] : memref<7x10xi32>
        %271 = arith.minf %cst_2, %cst_3 : f32
        %272 = vector.broadcast %209 : index to vector<3xindex>
        %273 = vector.broadcast %extracted : i1 to vector<3xi1>
        %274 = vector.broadcast %cst_4 : f32 to vector<3xf32>
        vector.scatter %alloc[%c1, %c7, %c2] [%272], %273, %274 : memref<8x10x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        tensor.yield %c-25308_i16 : i16
      } : tensor<?x?x3xi16>
      %266 = vector.matrix_multiply %84, %20 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
      %expanded_56 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<8x7x3xf16> into tensor<8x7x3x1xf16>
      %267 = arith.minsi %74, %33 : i64
      %268 = vector.shuffle %156, %156 [0, 1, 2, 5, 6, 7, 8, 9, 12, 13, 14] : vector<8x7x3xi16>, vector<8x7x3xi16>
      linalg.yield %c16990_i16 : i16
    } -> tensor<8x10x3xi16>
    %splat_43 = tensor.splat %cst : tensor<8x10x3xf16>
    %213 = arith.shli %c441501158_i64, %c441501158_i64 : i64
    %214 = scf.while (%arg1 = %172) : (memref<7xi16>) -> memref<7xi16> {
      %241 = math.cos %5 : tensor<8x10x3xf32>
      %242 = scf.while (%arg2 = %c12841_i16) : (i16) -> i16 {
        %249 = arith.minsi %c31796_i16, %c-25308_i16 : i16
        %250 = index.divs %119, %c13
        %251 = math.floor %11 : tensor<8x10x3xf32>
        memref.store %c743529678_i32, %153[%c4, %c2, %c0] : memref<8x10x3xi32>
        %252 = arith.maxf %56, %cst_4 : f32
        %alloc_48 = memref.alloc() : memref<8xf32>
        memref.tensor_store %12, %alloc_48 : memref<8xf32>
        %inserted = tensor.insert %111 into %4[%c1] : tensor<8xi32>
        %253 = math.powf %collapsed, %collapsed : tensor<80x3xf32>
        scf.condition(%180) %c12841_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %249 = vector.reduction <maxui>, %84 : vector<7xi32> into i32
        %250 = math.exp %13 : tensor<8x7x3xf16>
        %cast_48 = tensor.cast %2 : tensor<8xi1> to tensor<?xi1>
        %251 = vector.create_mask %210, %179, %89 : vector<8x7x3xi1>
        %252 = arith.mulf %cst_2, %cst_2 : f32
        %alloca_49 = memref.alloca() : memref<8x7x3xf32>
        %253 = affine.load %114[%c3, %c14, %c10] : memref<3x8x10xi16>
        %254 = vector.broadcast %c12841_i16 : i16 to vector<3xi16>
        %255 = vector.multi_reduction <mul>, %159, %254 [0, 1] : vector<8x7x3xi16> to vector<3xi16>
        memref.store %extracted_30, %26[%c2, %c9, %c1] : memref<8x10x3xi16>
        %256 = arith.shli %c743529678_i32, %111 : i32
        %257 = math.exp %5 : tensor<8x10x3xf32>
        %splat_50 = tensor.splat %74 : tensor<8xi64>
        %258 = arith.minsi %c31796_i16, %extracted_30 : i16
        %259 = math.roundeven %105 : f16
        %260 = affine.max affine_map<(d0, d1) -> (-d1)>(%175, %209)
        %261 = affine.max affine_map<(d0) -> (d0 + d0 mod 8 + d0 + 2 + 2, d0 mod 8 + 8)>(%199)
        scf.yield %c16990_i16 : i16
      }
      %243 = memref.atomic_rmw assign %c1050544680_i32, %62[%c7] : (i32, memref<8xi32>) -> i32
      %244 = arith.maxf %cst_4, %cst_1 : f32
      %245 = index.floordivs %129, %179
      %246 = math.tan %3 : tensor<7x10xf16>
      %247 = math.sqrt %16 : tensor<8x7x3xf16>
      %248 = index.mul %c14, %72
      scf.condition(%180) %arg1 : memref<7xi16>
    } do {
    ^bb0(%arg1: memref<7xi16>):
      %expanded_48 = tensor.expand_shape %generated_28 [[0], [1], [2, 3]] : tensor<?x?x3xi64> into tensor<?x?x3x1xi64>
      %241 = vector.transpose %156, [2, 1, 0] : vector<8x7x3xi16> to vector<3x7x8xi16>
      %242 = vector.transpose %159, [0, 1, 2] : vector<8x7x3xi16> to vector<8x7x3xi16>
      %243 = vector.broadcast %164 : index to vector<3xindex>
      %244 = vector.broadcast %180 : i1 to vector<3xi1>
      %245 = vector.broadcast %c1050544680_i32 : i32 to vector<3xi32>
      vector.scatter %alloc_8[%c5, %c3] [%243], %244, %245 : memref<7x10xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
      scf.execute_region {
        %extracted_49 = tensor.extract %59[%c7, %c1, %c1] : tensor<8x10x3xf32>
        %258 = affine.load %172[%c7] : memref<7xi16>
        %259 = index.divu %c1, %129
        %260 = vector.load %alloc_8[%c4, %c7] : memref<7x10xi32>, vector<7x10xi32>
        %261 = math.roundeven %59 : tensor<8x10x3xf32>
        %262 = math.roundeven %190 : tensor<7x10xf16>
        %263 = arith.shrui %258, %83 : i16
        %264 = arith.minsi %74, %74 : i64
        affine.store %180, %182[%c4, %c6] : memref<7x10xi1>
        %265 = vector.load %alloc_13[%c1, %c1, %c0] : memref<8x7x3xi32>, vector<8x10x3xi32>
        %266 = index.maxs %34, %128
        %267 = vector.broadcast %c1833966582_i32 : i32 to vector<7x10xi32>
        %268 = math.tan %11 : tensor<8x10x3xf32>
        %269 = math.expm1 %59 : tensor<8x10x3xf32>
        %270 = bufferization.clone %198 : memref<8x7x3xf16> to memref<8x7x3xf16>
        %271 = index.divu %c11, %34
        scf.yield
      }
      %246 = arith.addf %cst_1, %cst_2 : f32
      %247 = vector.broadcast %56 : f32 to vector<7x10xf32>
      %248 = vector.fma %247, %247, %247 : vector<7x10xf32>
      %249 = vector.transpose %159, [1, 0, 2] : vector<8x7x3xi16> to vector<7x8x3xi16>
      %250 = arith.minui %c743529678_i32, %c1833966582_i32 : i32
      %251 = arith.divf %cst_3, %cst_4 : f32
      %252 = index.sub %rank, %c15
      %253 = vector.reduction <maxui>, %20 : vector<7xi32> into i32
      %254 = arith.xori %c31796_i16, %83 : i16
      %255 = vector.insertelement %extracted, %131[] : vector<i1>
      %256 = arith.minsi %111, %c743529678_i32 : i32
      %257 = math.absf %from_elements : tensor<7x10xf16>
      scf.yield %172 : memref<7xi16>
    }
    %rank_44 = tensor.rank %expanded_36 : tensor<3x8x10x1xi16>
    %215 = math.log1p %3 : tensor<7x10xf16>
    %216 = arith.shrui %c-31215_i16, %extracted_30 : i16
    %217 = arith.divui %c-25308_i16, %83 : i16
    memref.store %33, %60[%c6, %c3, %c1] : memref<8x7x3xi64>
    %218 = index.divu %171, %rank_44
    %219 = arith.remf %cst_2, %cst_3 : f32
    %220 = scf.if %180 -> (memref<7x10xi64>) {
      %241 = arith.divsi %c-31215_i16, %c31796_i16 : i16
      %242 = scf.while (%arg1 = %alloc_14) : (memref<7x10xi32>) -> memref<7x10xi32> {
        %249 = math.cttz %22 : tensor<i16>
        %250 = vector.load %alloc_7[%c7, %c1, %c1] : memref<8x10x3xf16>, vector<8x7x3xf16>
        %251 = bufferization.clone %90 : memref<7x10xi1> to memref<7x10xi1>
        %252 = vector.multi_reduction <maxui>, %159, %c31796_i16 [0, 1, 2] : vector<8x7x3xi16> to i16
        %rank_49 = tensor.rank %9 : tensor<8x7x3xf16>
        %253 = index.divu %c2, %66
        affine.store %c1050544680_i32, %alloc_8[%c10, %c14] : memref<7x10xi32>
        %254 = arith.minf %cst_0, %105 : f16
        scf.condition(%extracted) %alloc_14 : memref<7x10xi32>
      } do {
      ^bb0(%arg1: memref<7x10xi32>):
        %249 = bufferization.clone %alloc_16 : memref<8x7x3xi64> to memref<8x7x3xi64>
        %250 = arith.divui %c1833966582_i32, %c1050544680_i32 : i32
        %251 = math.absi %15 : tensor<8x10x3xi16>
        %252 = index.ceildivs %162, %c13
        %collapsed_49 = tensor.collapse_shape %expanded_36 [[0, 1], [2], [3]] : tensor<3x8x10x1xi16> into tensor<24x10x1xi16>
        %extracted_50 = tensor.extract %9[%c1, %c4, %c0] : tensor<8x7x3xf16>
        %253 = vector.broadcast %c31796_i16 : i16 to vector<8xi16>
        %254 = vector.broadcast %extracted : i1 to vector<8xi1>
        %255 = vector.broadcast %111 : i32 to vector<8xi32>
        %256 = vector.gather %alloc_9[%45] [%255], %254, %253 : memref<8xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %257 = vector.broadcast %111 : i32 to vector<8x3xi32>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %205, %257 {inclusive = true, reduction_dim = 1 : i64} : vector<8x7x3xi32>, vector<8x3xi32>
        %258 = arith.divui %c1833966582_i32, %c1833966582_i32 : i32
        %259 = arith.subi %c31796_i16, %extracted_30 : i16
        %260 = arith.addf %cst_3, %cst_2 : f32
        %261 = arith.shli %c743529678_i32, %c743529678_i32 : i32
        %262 = arith.minsi %c743529678_i32, %111 : i32
        %263 = memref.atomic_rmw addi %c31796_i16, %26[%c4, %c6, %c1] : (i16, memref<8x10x3xi16>) -> i16
        %264 = vector.transpose %156, [1, 0, 2] : vector<8x7x3xi16> to vector<7x8x3xi16>
        %extracted_53 = tensor.extract %16[%c1, %c4, %c2] : tensor<8x7x3xf16>
        scf.yield %alloc_14 : memref<7x10xi32>
      }
      %243 = arith.muli %c1050544680_i32, %c1050544680_i32 : i32
      memref.assume_alignment %42, 8 : memref<8x7x3xi32>
      %244 = scf.if %extracted -> (i64) {
        %alloc_49 = memref.alloc() : memref<8xi1>
        memref.tensor_store %2, %alloc_49 : memref<8xi1>
        %249 = index.ceildivs %c5, %171
        %inserted = tensor.insert %111 into %4[%c3] : tensor<8xi32>
        memref.assume_alignment %36, 2 : memref<7x10xf16>
        %250 = math.powf %cst, %105 : f16
        %251 = math.rsqrt %cst_3 : f32
        %252 = arith.subi %c-31215_i16, %c31796_i16 : i16
        %253 = math.ctpop %14 : tensor<7x10xi16>
        scf.yield %33 : i64
      } else {
        %249 = arith.muli %c-31215_i16, %83 : i16
        %250 = math.ctpop %74 : i64
        %251 = bufferization.to_tensor %51 : memref<i16>
        %252 = math.fpowi %splat_43, %53 : tensor<8x10x3xf16>, tensor<8x10x3xi32>
        %253 = math.ctlz %c1833966582_i32 : i32
        %254 = arith.muli %c1833966582_i32, %c743529678_i32 : i32
        %255 = math.ctpop %155 : tensor<8x7x3xi16>
        %expanded_49 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<8x7x3xf16> into tensor<8x7x3x1xf16>
        scf.yield %74 : i64
      }
      %245 = math.roundeven %3 : tensor<7x10xf16>
      %246 = vector.broadcast %cst_3 : f32 to vector<8xf32>
      %247 = vector.fma %246, %246, %246 : vector<8xf32>
      %248 = arith.addi %c743529678_i32, %111 : i32
      %alloc_48 = memref.alloc() : memref<7x10xi64>
      scf.yield %alloc_48 : memref<7x10xi64>
    } else {
      %241 = bufferization.to_tensor %62 : memref<8xi32>
      %242 = arith.divui %c31796_i16, %c12841_i16 : i16
      %243 = index.ceildivs %210, %c0
      %244 = arith.maxf %cst_1, %cst_1 : f32
      %245 = math.fpowi %190, %124 : tensor<7x10xf16>, tensor<7x10xi32>
      %246 = arith.remf %cst_3, %cst_2 : f32
      %247 = arith.floordivsi %c1833966582_i32, %c1833966582_i32 : i32
      %248 = index.divu %103, %89
      %alloc_48 = memref.alloc() : memref<7x10xi64>
      scf.yield %alloc_48 : memref<7x10xi64>
    }
    %221 = index.castu %c9 : index to i32
    %222 = math.absi %14 : tensor<7x10xi16>
    %223 = math.ctlz %c1050544680_i32 : i32
    %224 = math.expm1 %56 : f32
    %225 = vector.splat %129 : vector<8xindex>
    %226 = index.divu %c1, %66
    %227 = bufferization.clone %36 : memref<7x10xf16> to memref<7x10xf16>
    %228 = math.rsqrt %190 : tensor<7x10xf16>
    %alloc_45 = memref.alloc() : memref<7x10xi16>
    memref.tensor_store %14, %alloc_45 : memref<7x10xi16>
    %alloca = memref.alloca() : memref<8xf32>
    %229 = math.ctlz %10 : tensor<7x10xi16>
    %230 = math.powf %cst_3, %cst_1 : f32
    %231 = index.add %rank, %c1
    %232 = math.tan %12 : tensor<8xf32>
    %233 = vector.broadcast %c1833966582_i32 : i32 to vector<8x10x3xi32>
    %234 = vector.broadcast %extracted : i1 to vector<8x10x3xi1>
    %235 = vector.gather %1[%162, %34, %c3] [%233], %234, %233 : tensor<8x7x3xi32>, vector<8x10x3xi32>, vector<8x10x3xi1>, vector<8x10x3xi32> into vector<8x10x3xi32>
    %236 = tensor.empty() : tensor<8x10x3xf16>
    %237 = linalg.copy ins(%splat_43 : tensor<8x10x3xf16>) outs(%236 : tensor<8x10x3xf16>) -> tensor<8x10x3xf16>
    %alloc_46 = memref.alloc() : memref<3x8x7xi16>
    linalg.transpose ins(%155 : tensor<8x7x3xi16>) outs(%alloc_46 : memref<3x8x7xi16>) permutation = [2, 0, 1] 
    %238 = tensor.empty() : tensor<3x8xi16>
    %reduced_47 = linalg.reduce ins(%transposed : tensor<3x8x10xi16>) outs(%238 : tensor<3x8xi16>) dimensions = [2] 
      (%in: i16, %init: i16) {
        affine.store %cst_2, %150[%c2, %c10, %c0] : memref<8x10x3xf32>
        memref.alloca_scope  {
          memref.assume_alignment %alloc_11, 2 : memref<8x7x3xf32>
          %244 = math.log2 %9 : tensor<8x7x3xf16>
          %245 = math.round %5 : tensor<8x10x3xf32>
          %246 = vector.broadcast %extracted : i1 to vector<7xi1>
          %247 = vector.maskedload %alloc_5[%c5, %c9], %246, %246 : memref<7x10xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %248 = math.tanh %from_elements : tensor<7x10xf16>
          %249 = index.ceildivs %29, %194
          %250 = arith.divsi %c1833966582_i32, %c1050544680_i32 : i32
          %251 = index.divs %c6, %249
          %alloc_51 = memref.alloc() : memref<8xf32>
          %252 = vector.transpose %234, [1, 2, 0] : vector<8x10x3xi1> to vector<10x3x8xi1>
          %253 = math.powf %9, %16 : tensor<8x7x3xf16>
          %254 = index.ceildivs %c9, %103
          %255 = arith.addf %cst_0, %105 : f16
          %256 = arith.andi %c743529678_i32, %c743529678_i32 : i32
          %257 = math.log2 %17 : tensor<8x7x3xf16>
          %258 = math.cos %11 : tensor<8x10x3xf32>
          %259 = math.roundeven %cst_4 : f32
          %260 = arith.shli %c31796_i16, %c16990_i16 : i16
          %261 = index.divs %110, %c11
          %262 = arith.xori %c1833966582_i32, %c743529678_i32 : i32
          %263 = vector.load %227[%c1, %c2] : memref<7x10xf16>, vector<7x10xf16>
          %264 = arith.divui %extracted, %extracted : i1
          %265 = memref.atomic_rmw muli %c1826384566_i64, %220[%c1, %c4] : (i64, memref<7x10xi64>) -> i64
          %266 = math.tanh %11 : tensor<8x10x3xf32>
          %alloc_52 = memref.alloc() : memref<8x7x3xf32>
          %alloc_53 = memref.alloc() : memref<7x10xi64>
          %267 = math.absf %cst_1 : f32
          %268 = arith.mulf %56, %cst_1 : f32
          %269 = math.tanh %cst_0 : f16
          %270 = index.divu %249, %c3
          %271 = math.exp %cst_4 : f32
          %272 = arith.ori %c-25308_i16, %c16990_i16 : i16
        }
        %241 = scf.while (%arg1 = %c31796_i16) : (i16) -> i16 {
          %244 = vector.reduction <or>, %20 : vector<7xi32> into i32
          %245 = arith.remsi %c441501158_i64, %c1826384566_i64 : i64
          %246 = vector.broadcast %111 : i32 to vector<10x3xi32>
          %247 = vector.insert %246, %235 [5] : vector<10x3xi32> into vector<8x10x3xi32>
          %cst_51 = arith.constant 4.556800e+04 : f16
          %248 = arith.cmpi sgt, %83, %83 : i16
          %249 = arith.cmpi ne, %180, %180 : i1
          %250 = affine.load %42[%c7, %c4, %c12] : memref<8x7x3xi32>
          %251 = math.fpowi %splat_43, %53 : tensor<8x10x3xf16>, tensor<8x10x3xi32>
          scf.condition(%180) %83 : i16
        } do {
        ^bb0(%arg1: i16):
          %244 = arith.minui %extracted_30, %c-25308_i16 : i16
          %245 = arith.muli %c-25308_i16, %c31796_i16 : i16
          %246 = vector.broadcast %180 : i1 to vector<i1>
          %247 = vector.transfer_write %246, %2[%210] : vector<i1>, tensor<8xi1>
          %expanded_51 = tensor.expand_shape %21 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
          memref.assume_alignment %227, 1 : memref<7x10xf16>
          %248 = arith.negf %105 : f16
          %249 = math.fpowi %5, %53 : tensor<8x10x3xf32>, tensor<8x10x3xi32>
          %250 = index.divu %129, %c11
          %splat_52 = tensor.splat %cst_4 : tensor<8xf32>
          %251 = index.sub %29, %c8
          %252 = math.exp %13 : tensor<8x7x3xf16>
          %253 = index.ceildivs %29, %34
          %254 = arith.maxf %105, %105 : f16
          memref.store %c1050544680_i32, %alloc_15[%c1, %c0, %c0] : memref<8x7x3xi32>
          %255 = arith.shrui %c1826384566_i64, %c441501158_i64 : i64
          %256 = vector.broadcast %c743529678_i32 : i32 to vector<10x3xi32>
          %257 = vector.insert %256, %235 [3] : vector<10x3xi32> into vector<8x10x3xi32>
          scf.yield %c-25308_i16 : i16
        }
        memref.assume_alignment %alloc_18, 16 : memref<8x10x3xi64>
        %242 = vector.broadcast %c743529678_i32 : i32 to vector<8x7xi32>
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %158, %242 {inclusive = true, reduction_dim = 2 : i64} : vector<8x7x3xi32>, vector<8x7xi32>
        %alloc_50 = memref.alloc() : memref<7x10xi16>
        memref.tensor_store %14, %alloc_50 : memref<7x10xi16>
        memref.tensor_store %5, %150 : memref<8x10x3xf32>
        %243 = index.casts %128 : index to i32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %239 = scf.parallel (%arg1) = (%c13) to (%102) step (%c1) init (%12) -> tensor<8xf32> {
      %241 = vector.reduction <minsi>, %20 : vector<7xi32> into i32
      %242 = arith.addi %extracted_30, %extracted_30 : i16
      %243 = math.round %11 : tensor<8x10x3xf32>
      scf.execute_region {
        %256 = index.ceildivu %199, %102
        memref.copy %alloc_9, %alloc_10 : memref<8xi16> to memref<8xi16>
        %257 = index.maxs %c12, %45
        %splat_51 = tensor.splat %c441501158_i64 : tensor<8xi64>
        %258 = index.maxs %226, %110
        %259 = index.floordivs %128, %89
        %260 = index.divs %119, %45
        %261 = math.absf %3 : tensor<7x10xf16>
        %rank_52 = tensor.rank %11 : tensor<8x10x3xf32>
        %262 = arith.ori %33, %c441501158_i64 : i64
        %263 = vector.extract %158[7] : vector<8x7x3xi32>
        %264 = vector.insertelement %c1833966582_i32, %20[%c2 : index] : vector<7xi32>
        %265 = memref.atomic_rmw mins %c-25308_i16, %114[%c2, %c2, %c3] : (i16, memref<3x8x10xi16>) -> i16
        %266 = vector.splat %c4 : vector<7x10xindex>
        %267 = math.ctpop %extracted : i1
        %268 = vector.reduction <add>, %84 : vector<7xi32> into i32
        scf.yield
      }
      %244 = arith.remui %c16990_i16, %c12841_i16 : i16
      scf.if %180 {
        %extracted_51 = tensor.extract %reduced[%c1] : tensor<7xi16>
        %256 = arith.addf %105, %105 : f16
        memref.tensor_store %from_elements_39, %alloc : memref<8x10x3xf32>
        %extracted_52 = tensor.extract %8[%c0, %c0, %c0] : tensor<8x7x3xi1>
        %257 = index.castu %rank_44 : index to i32
        %258 = index.casts %210 : index to i32
        %259 = arith.remsi %c-31215_i16, %c12841_i16 : i16
        %260 = arith.cmpi sgt, %extracted, %extracted_52 : i1
      } else {
        %256 = math.fpowi %59, %53 : tensor<8x10x3xf32>, tensor<8x10x3xi32>
        %257 = vector.broadcast %cst_3 : f32 to vector<8x10x3xf32>
        %258 = vector.fma %257, %257, %257 : vector<8x10x3xf32>
        %259 = math.sqrt %9 : tensor<8x7x3xf16>
        %260 = arith.cmpf uge, %105, %cst_0 : f16
        %from_elements_51 = tensor.from_elements %extracted, %180, %180, %extracted, %180, %extracted, %180, %extracted : tensor<8xi1>
        %261 = arith.remf %cst_2, %cst_2 : f32
        %262 = math.sqrt %105 : f16
        %263 = math.ctlz %10 : tensor<7x10xi16>
      }
      scf.if %extracted {
        %256 = math.absf %cst_1 : f32
        %257 = vector.broadcast %111 : i32 to vector<7x10xi32>
        %258 = vector.broadcast %180 : i1 to vector<7x10xi1>
        %259 = vector.gather %0[%226] [%257], %258, %257 : tensor<8xi32>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xi32> into vector<7x10xi32>
        %260 = arith.muli %c1050544680_i32, %c1833966582_i32 : i32
        %261 = arith.subi %c31796_i16, %83 : i16
        %262 = vector.bitcast %258 : vector<7x10xi1> to vector<7x10xi1>
        %263 = arith.ori %111, %c1833966582_i32 : i32
        memref.copy %42, %alloc_15 : memref<8x7x3xi32> to memref<8x7x3xi32>
        %264 = arith.maxui %111, %c1833966582_i32 : i32
      } else {
        %256 = vector.multi_reduction <minsi>, %234, %234 [] : vector<8x10x3xi1> to vector<8x10x3xi1>
        %257 = vector.splat %cst_3 : vector<7x10xf32>
        %258 = vector.reduction <maxsi>, %20 : vector<7xi32> into i32
        %259 = index.maxu %103, %218
        %260 = arith.xori %c-31215_i16, %c-25308_i16 : i16
        %261 = vector.load %71[%c2, %c5, %c2] : memref<8x7x3xi32>, vector<8x10x3xi32>
        %262 = affine.load %172[%c2] : memref<7xi16>
        %263 = index.divs %arg1, %162
      }
      %245 = vector.broadcast %c13 : index to vector<7xindex>
      %246 = vector.broadcast %180 : i1 to vector<7xi1>
      %247 = vector.broadcast %83 : i16 to vector<7xi16>
      vector.scatter %alloc_12[%c0, %c2, %c2] [%245], %246, %247 : memref<8x10x3xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      %248 = arith.addf %cst_3, %cst_2 : f32
      %alloc_48 = memref.alloc() : memref<10x8xf32>
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48 : memref<10x8xf32>) outs(%59 : tensor<8x10x3xf32>) {
      ^bb0(%in: f32, %out: f32):
        %256 = math.ctlz %1 : tensor<8x7x3xi32>
        %257 = math.cos %59 : tensor<8x10x3xf32>
        %258 = arith.remf %56, %cst_1 : f32
        %rank_51 = tensor.rank %3 : tensor<7x10xf16>
        %259 = bufferization.clone %172 : memref<7xi16> to memref<7xi16>
        %260 = arith.addi %74, %74 : i64
        %261 = math.cttz %180 : i1
        %262 = index.ceildivs %rank, %119
        %263 = arith.minsi %c1050544680_i32, %c1050544680_i32 : i32
        %264 = arith.cmpi uge, %c-25308_i16, %extracted_30 : i16
        memref.tensor_store %0, %178 : memref<8xi32>
        %265 = vector.bitcast %158 : vector<8x7x3xi32> to vector<8x7x3xf32>
        %266 = math.round %12 : tensor<8xf32>
        %267 = bufferization.clone %198 : memref<8x7x3xf16> to memref<8x7x3xf16>
        %268 = vector.insertelement %extracted, %131[] : vector<i1>
        %269 = math.cos %9 : tensor<8x7x3xf16>
        %270 = vector.bitcast %84 : vector<7xi32> to vector<7xi32>
        %271 = math.ctpop %c-31215_i16 : i16
        %272 = math.cos %56 : f32
        %273 = vector.insert %c743529678_i32, %84 [2] : i32 into vector<7xi32>
        %274 = arith.ori %c1833966582_i32, %c1050544680_i32 : i32
        %275 = math.ctpop %14 : tensor<7x10xi16>
        %276 = arith.shrui %111, %111 : i32
        %277 = index.maxs %rank_51, %c7
        %278 = tensor.empty() : tensor<8x3xi16>
        %279 = tensor.empty() : tensor<3x3xi16>
        %280 = linalg.matmul ins(%reduced_47, %278 : tensor<3x8xi16>, tensor<8x3xi16>) outs(%279 : tensor<3x3xi16>) -> tensor<3x3xi16>
        %splat_52 = tensor.splat %c1833966582_i32 : tensor<7x10xi32>
        %281 = math.ipowi %279, %279 : tensor<3x3xi16>
        %splat_53 = tensor.splat %c1826384566_i64 : tensor<8x10x3xi64>
        %282 = bufferization.to_tensor %90 : memref<7x10xi1>
        %283 = vector.insertelement %extracted, %131[] : vector<i1>
        %284 = vector.insertelement %c1833966582_i32, %270[%45 : index] : vector<7xi32>
        %285 = bufferization.clone %60 : memref<8x7x3xi64> to memref<8x7x3xi64>
        linalg.yield %cst_4 : f32
      } -> tensor<8x10x3xf32>
      %250 = arith.addi %83, %83 : i16
      %251 = arith.subi %extracted_30, %extracted_30 : i16
      %splat_49 = tensor.splat %cst_0 : tensor<8x7x3xf16>
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_50 = arith.constant 0 : i32
      %252 = vector.transfer_read %62[%89], %c0_i32_50 : memref<8xi32>, vector<i32>
      %253 = arith.shrui %c1050544680_i32, %c0_i32 : i32
      %254 = math.expm1 %236 : tensor<8x10x3xf16>
      %255 = tensor.empty() : tensor<8xf32>
      scf.reduce(%255)  : tensor<8xf32> {
      ^bb0(%arg2: tensor<8xf32>, %arg3: tensor<8xf32>):
        %alloc_51 = memref.alloc() : memref<8x10x3xi16>
        %256 = math.copysign %arg2, %12 : tensor<8xf32>
        %257 = arith.ori %c16990_i16, %c12841_i16 : i16
        %258 = arith.remf %cst_1, %cst_2 : f32
        %expanded_52 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<7x10xi64> into tensor<7x10x1xi64>
        %259 = math.absf %5 : tensor<8x10x3xf32>
        %c122614380_i32 = arith.constant 122614380 : i32
        %260 = arith.remui %c12841_i16, %extracted_30 : i16
        %261 = tensor.empty() : tensor<8xf32>
        scf.reduce.return %261 : tensor<8xf32>
      }
      scf.yield
    }
    %240 = affine.vector_load %alloc_5[%128, %c4] : memref<7x10xi1>, vector<10xi1>
    affine.vector_store %240, %alloc_5[%c12, %c12] : memref<7x10xi1>, vector<10xi1>
    vector.print %20 : vector<7xi32>
    vector.print %84 : vector<7xi32>
    vector.print %131 : vector<i1>
    vector.print %156 : vector<8x7x3xi16>
    vector.print %157 : vector<8x7x3xi1>
    vector.print %158 : vector<8x7x3xi32>
    vector.print %159 : vector<8x7x3xi16>
    vector.print %205 : vector<8x7x3xi32>
    vector.print %233 : vector<8x10x3xi32>
    vector.print %234 : vector<8x10x3xi1>
    vector.print %235 : vector<8x10x3xi32>
    vector.print %240 : vector<10xi1>
    vector.print %c31796_i16 : i16
    vector.print %c-25308_i16 : i16
    vector.print %cst : f16
    vector.print %c12841_i16 : i16
    vector.print %c441501158_i64 : i64
    vector.print %cst_0 : f16
    vector.print %c1050544680_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c16990_i16 : i16
    vector.print %c743529678_i32 : i32
    vector.print %c1826384566_i64 : i64
    vector.print %c1833966582_i32 : i32
    vector.print %cst_3 : f32
    vector.print %c-31215_i16 : i16
    vector.print %cst_4 : f32
    vector.print %33 : i64
    vector.print %56 : f32
    vector.print %74 : i64
    vector.print %83 : i16
    vector.print %extracted : i1
    vector.print %105 : f16
    vector.print %111 : i32
    vector.print %extracted_30 : i16
    vector.print %180 : i1
    return %164 : index
  }
}
