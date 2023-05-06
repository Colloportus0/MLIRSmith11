module {
  func.func private @func1(%arg0: tensor<1x1x1xi32>, %arg1: tensor<2x1x1xi32>) -> index {
    %c1176132251_i64 = arith.constant 1176132251 : i64
    %cst = arith.constant 1.12335642E+9 : f32
    %cst_0 = arith.constant 0x4DBA1C86 : f32
    %true = arith.constant true
    %c30038_i16 = arith.constant 30038 : i16
    %c-24576_i16 = arith.constant -24576 : i16
    %c-22678_i16 = arith.constant -22678 : i16
    %cst_1 = arith.constant 0x4D838371 : f32
    %cst_2 = arith.constant 0x4E22A1C0 : f32
    %c1912879457_i64 = arith.constant 1912879457 : i64
    %cst_3 = arith.constant 3.075200e+04 : f16
    %c327242960_i64 = arith.constant 327242960 : i64
    %c1904534729_i32 = arith.constant 1904534729 : i32
    %false = arith.constant false
    %c108572378_i32 = arith.constant 108572378 : i32
    %c350120444_i32 = arith.constant 350120444 : i32
    %0 = tensor.empty() : tensor<2x2x1xf16>
    %1 = tensor.empty() : tensor<1x1x1xi64>
    %2 = tensor.empty() : tensor<2x2x1xi1>
    %3 = tensor.empty() : tensor<2x1x1xf32>
    %4 = tensor.empty() : tensor<2x2x1xi32>
    %5 = tensor.empty() : tensor<2x2x1xf16>
    %6 = tensor.empty() : tensor<2x2x1xf32>
    %7 = tensor.empty() : tensor<2x12xf32>
    %8 = tensor.empty() : tensor<1x1x1xi64>
    %9 = tensor.empty() : tensor<2x2x1xi64>
    %10 = tensor.empty() : tensor<2x2x1xi1>
    %11 = tensor.empty() : tensor<1x1x1xi1>
    %12 = tensor.empty() : tensor<2x2x1xi32>
    %13 = tensor.empty() : tensor<2x1x1xf16>
    %14 = tensor.empty() : tensor<1x1x1xi32>
    %15 = tensor.empty() : tensor<2x2x1xi64>
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
    %alloc = memref.alloc() : memref<2x12xf16>
    %alloc_4 = memref.alloc() : memref<2x1x1xi16>
    %alloc_5 = memref.alloc() : memref<2x1x1xi32>
    %alloc_6 = memref.alloc() : memref<2x2x1xi32>
    %alloc_7 = memref.alloc() : memref<2x1x1xi16>
    %alloc_8 = memref.alloc() : memref<1x1x1xi32>
    %alloc_9 = memref.alloc() : memref<2x12xi1>
    %alloc_10 = memref.alloc() : memref<2x12xi64>
    %alloc_11 = memref.alloc() : memref<2x12xi64>
    %alloc_12 = memref.alloc() : memref<2x2x1xi32>
    %alloc_13 = memref.alloc() : memref<2x1x1xi32>
    %alloc_14 = memref.alloc() : memref<2x2x1xi32>
    %alloc_15 = memref.alloc() : memref<2x1x1xi64>
    %alloc_16 = memref.alloc() : memref<2x2x1xf16>
    %alloc_17 = memref.alloc() : memref<2x2x1xi64>
    %alloc_18 = memref.alloc() : memref<1x1x1xi32>
    %16 = tensor.empty() : tensor<2x1x1xf32>
    %17 = linalg.copy ins(%3 : tensor<2x1x1xf32>) outs(%16 : tensor<2x1x1xf32>) -> tensor<2x1x1xf32>
    %alloc_19 = memref.alloc() : memref<1x2x2xi64>
    linalg.transpose ins(%9 : tensor<2x2x1xi64>) outs(%alloc_19 : memref<1x2x2xi64>) permutation = [2, 0, 1] 
    %alloc_20 = memref.alloc() : memref<1xf16>
    linalg.reduce ins(%5 : tensor<2x2x1xf16>) outs(%alloc_20 : memref<1xf16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %264 = memref.alloca_scope  -> (memref<2x12xf32>) {
          %272 = vector.broadcast %c327242960_i64 : i64 to vector<1xi64>
          %273 = vector.insertelement %c1176132251_i64, %272[%c4 : index] : vector<1xi64>
          %274 = math.log1p %16 : tensor<2x1x1xf32>
          %275 = vector.insert %c1176132251_i64, %272 [0] : i64 into vector<1xi64>
          %splat_48 = tensor.splat %init : tensor<2x1x1xf16>
          %cst_49 = arith.constant 1.000000e+00 : f16
          %cst_50 = arith.constant 0.000000e+00 : f16
          %276 = vector.transfer_read %0[%c4, %c1, %c8], %cst_50 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<2x2x1xf16>, vector<1xf16>
          %277 = tensor.empty() : tensor<12x12xf32>
          %278 = tensor.empty() : tensor<2x12xf32>
          %279 = linalg.matmul ins(%7, %277 : tensor<2x12xf32>, tensor<12x12xf32>) outs(%278 : tensor<2x12xf32>) -> tensor<2x12xf32>
          %280 = arith.ceildivsi %true, %false : i1
          %281 = arith.minsi %c-22678_i16, %c30038_i16 : i16
          %false_51 = index.bool.constant false
          %282 = math.exp %7 : tensor<2x12xf32>
          %283 = arith.addf %cst_3, %cst_3 : f16
          %284 = arith.xori %c1912879457_i64, %c327242960_i64 : i64
          %285 = arith.maxf %cst_2, %cst_1 : f32
          %286 = vector.create_mask %c13, %c11, %c10 : vector<1x1x1xi1>
          %287 = vector.load %alloc_12[%c0, %c1, %c0] : memref<2x2x1xi32>, vector<2x12xi32>
          %288 = arith.addi %true, %true : i1
          memref.assume_alignment %alloc_19, 16 : memref<1x2x2xi64>
          %289 = arith.mulf %cst_3, %cst_49 : f16
          %290 = math.tan %splat_48 : tensor<2x1x1xf16>
          %291 = vector.load %alloc_5[%c1, %c0, %c0] : memref<2x1x1xi32>, vector<2x12xi32>
          %292 = vector.insertelement %c1176132251_i64, %272[%c6 : index] : vector<1xi64>
          %293 = index.ceildivs %c7, %c3
          %alloca = memref.alloca() : memref<2x1x1xf32>
          %294 = arith.muli %c1176132251_i64, %c1912879457_i64 : i64
          %295 = tensor.empty() : tensor<12x12xf32>
          %296 = tensor.empty() : tensor<2x12xf32>
          %297 = linalg.matmul ins(%278, %295 : tensor<2x12xf32>, tensor<12x12xf32>) outs(%296 : tensor<2x12xf32>) -> tensor<2x12xf32>
          %298 = arith.remf %cst_3, %init : f16
          %299 = index.divu %c2, %c1
          %300 = vector.broadcast %cst_0 : f32 to vector<2x12xf32>
          %301 = vector.fma %300, %300, %300 : vector<2x12xf32>
          %302 = index.casts %c350120444_i32 : i32 to index
          %303 = math.cos %16 : tensor<2x1x1xf32>
          %304 = vector.load %alloc_6[%c1, %c1, %c0] : memref<2x2x1xi32>, vector<1x1x1xi32>
          %305 = math.atan2 %13, %13 : tensor<2x1x1xf16>
          %alloc_52 = memref.alloc() : memref<2x12xf32>
          memref.alloca_scope.return %alloc_52 : memref<2x12xf32>
        }
        %265 = arith.maxf %in, %init : f16
        %266 = bufferization.clone %alloc_14 : memref<2x2x1xi32> to memref<2x2x1xi32>
        memref.assume_alignment %264, 1 : memref<2x12xf32>
        %267 = vector.broadcast %cst_3 : f16 to vector<12xf16>
        %268 = vector.matrix_multiply %267, %267 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf16>, vector<12xf16>) -> vector<1xf16>
        %269 = math.roundeven %in : f16
        %270 = math.atan %16 : tensor<2x1x1xf32>
        %271 = math.absf %6 : tensor<2x2x1xf32>
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    %18 = scf.parallel (%arg2) = (%c8) to (%c13) step (%c2) init (%c327242960_i64) -> i64 {
      %264 = math.roundeven %0 : tensor<2x2x1xf16>
      %265 = vector.broadcast %true : i1 to vector<1xi1>
      %266 = vector.broadcast %false : i1 to vector<1x1xi1>
      %267 = vector.outerproduct %265, %265, %266 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
      %268 = math.round %5 : tensor<2x2x1xf16>
      %269 = vector.broadcast %c1176132251_i64 : i64 to vector<1xi64>
      %270 = vector.extract %269[0] : vector<1xi64>
      %271 = vector.create_mask %c15, %c2, %c8 : vector<2x2x1xi1>
      %272 = vector.shuffle %271, %271 [0] : vector<2x2x1xi1>, vector<2x2x1xi1>
      %273 = bufferization.to_memref %0 : memref<2x2x1xf16>
      %274 = vector.extract %269[0] : vector<1xi64>
      %275 = math.atan2 %5, %5 : tensor<2x2x1xf16>
      %276 = arith.divui %true, %false : i1
      %277 = math.round %3 : tensor<2x1x1xf32>
      %cast_47 = tensor.cast %8 : tensor<1x1x1xi64> to tensor<?x?x?xi64>
      %278 = arith.addi %c-24576_i16, %c-24576_i16 : i16
      %279 = arith.negf %cst_0 : f32
      %280 = arith.minsi %c30038_i16, %c-22678_i16 : i16
      %281 = math.sqrt %3 : tensor<2x1x1xf32>
      %c1_i64 = arith.constant 1 : i64
      scf.reduce(%c1_i64)  : i64 {
      ^bb0(%arg3: i64, %arg4: i64):
        %282 = bufferization.to_memref %14 : memref<1x1x1xi32>
        %283 = math.absf %cst : f32
        %284 = vector.flat_transpose %269 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %285 = arith.muli %false, %true : i1
        %286 = vector.broadcast %c30038_i16 : i16 to vector<2x12xi16>
        %287 = math.log1p %5 : tensor<2x2x1xf16>
        %288 = math.absf %17 : tensor<2x1x1xf32>
        %289 = arith.remsi %false, %false : i1
        %c1_i64_48 = arith.constant 1 : i64
        scf.reduce.return %c1_i64_48 : i64
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_19[%c4, %c13, %c15] : memref<1x2x2xi64>, vector<12xi64>
    affine.vector_store %19, %alloc_17[%c5, %c12, %c9] : memref<2x2x1xi64>, vector<12xi64>
    %20 = tensor.empty() : tensor<1xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%alloc_20, %20 : memref<1xf16>, tensor<1xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %23 = arith.mulf %cst_0, %cst : f32
    %24 = math.cos %16 : tensor<2x1x1xf32>
    %25 = vector.insert %c1176132251_i64, %19 [4] : i64 into vector<12xi64>
    %26 = arith.shli %c327242960_i64, %c1176132251_i64 : i64
    %27 = arith.ceildivsi %c327242960_i64, %c327242960_i64 : i64
    %28 = index.sizeof
    %29 = math.sqrt %3 : tensor<2x1x1xf32>
    %30 = arith.minf %cst_3, %cst_3 : f16
    %from_elements = tensor.from_elements %cst_3 : tensor<1x1x1xf16>
    %31 = vector.reduction <add>, %19 : vector<12xi64> into i64
    %32 = index.castu %c2 : index to i32
    %generated = tensor.generate %c9 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %264 = vector.broadcast %c3 : index to vector<1xindex>
      %265 = vector.broadcast %false : i1 to vector<1xi1>
      %266 = vector.broadcast %c327242960_i64 : i64 to vector<1xi64>
      vector.scatter %alloc_10[%c1, %c1] [%264], %265, %266 : memref<2x12xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %alloc_47 = memref.alloc() : memref<2x1xf32>
      %267 = tensor.empty() : tensor<1x2xf32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %267, %3 : memref<2x1xf32>, tensor<1x2xf32>, tensor<2x1x1xf32>) outs(%3 : tensor<2x1x1xf32>) {
      ^bb0(%in: f32, %in_49: f32, %in_50: f32, %out: f32):
        %270 = arith.shrui %c1912879457_i64, %c1176132251_i64 : i64
        memref.tensor_store %0, %alloc_16 : memref<2x2x1xf16>
        %271 = index.mul %28, %c0
        %272 = arith.muli %c327242960_i64, %c1176132251_i64 : i64
        %273 = vector.load %alloc_11[%c1, %c7] : memref<2x12xi64>, vector<2x2x1xi64>
        %274 = vector.broadcast %c30038_i16 : i16 to vector<1xi16>
        %275 = vector.broadcast %false : i1 to vector<1xi1>
        %276 = vector.maskedload %alloc_7[%c1, %c0, %c0], %275, %274 : memref<2x1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %277 = vector.broadcast %in : f32 to vector<2x2x1xf32>
        %278 = index.floordivs %c7, %c12
        %279 = math.log1p %5 : tensor<2x2x1xf16>
        %false_51 = index.bool.constant false
        %alloc_52 = memref.alloc() : memref<f16>
        memref.tensor_store %22, %alloc_52 : memref<f16>
        %280 = arith.divui %false, %false : i1
        %cast_53 = tensor.cast %5 : tensor<2x2x1xf16> to tensor<?x?x?xf16>
        %281 = affine.min affine_map<(d0, d1) -> (d1 floordiv 2, d0 ceildiv 2)>(%c3, %c12)
        %282 = vector.broadcast %c30038_i16 : i16 to vector<1x1xi16>
        %283 = vector.outerproduct %274, %274, %282 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
        %284 = memref.load %alloc_11[%c0, %c6] : memref<2x12xi64>
        %285 = vector.splat %c30038_i16 : vector<2x1x1xi16>
        %286 = arith.maxsi %c-24576_i16, %c30038_i16 : i16
        %287 = arith.subi %false, %false : i1
        %288 = vector.create_mask %arg4, %c7, %c6 : vector<2x1x1xi1>
        %cast_54 = tensor.cast %10 : tensor<2x2x1xi1> to tensor<?x?x?xi1>
        affine.store %c1912879457_i64, %alloc_15[%c12, %c5, %c15] : memref<2x1x1xi64>
        %289 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 mod 16)>(%c12, %c2, %c0, %c9)
        %290 = vector.broadcast %281 : index to vector<2xindex>
        %291 = vector.broadcast %false : i1 to vector<2xi1>
        %292 = vector.broadcast %c1176132251_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_19[%c0, %c1, %c1] [%290], %291, %292 : memref<1x2x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %293 = math.round %17 : tensor<2x1x1xf32>
        %294 = vector.insertelement %c-22678_i16, %274[%c15 : index] : vector<1xi16>
        %295 = math.exp2 %6 : tensor<2x2x1xf32>
        %296 = vector.transpose %19, [0] : vector<12xi64> to vector<12xi64>
        %297 = math.ipowi %4, %4 : tensor<2x2x1xi32>
        %cast_55 = tensor.cast %4 : tensor<2x2x1xi32> to tensor<?x?x?xi32>
        %splat_56 = tensor.splat %c30038_i16 : tensor<2x12xi16>
        %298 = arith.divsi %c327242960_i64, %c1176132251_i64 : i64
        linalg.yield %in_49 : f32
      } -> tensor<2x1x1xf32>
      %269 = arith.maxsi %c327242960_i64, %c1176132251_i64 : i64
      %generated_48 = tensor.generate %arg4 {
      ^bb0(%arg5: index, %arg6: index, %arg7: index):
        %270 = vector.extract %19[3] : vector<12xi64>
        vector.print %19 : vector<12xi64>
        %271 = arith.muli %c-22678_i16, %c-22678_i16 : i16
        %272 = bufferization.clone %alloc : memref<2x12xf16> to memref<2x12xf16>
        tensor.yield %c327242960_i64 : i64
      } : tensor<?x2x1xi64>
      tensor.yield %c108572378_i32 : i32
    } : tensor<?x2x1xi32>
    %33 = arith.minsi %c-24576_i16, %c-22678_i16 : i16
    %34 = arith.divui %c350120444_i32, %c108572378_i32 : i32
    %35 = index.add %c13, %c11
    %36 = math.sqrt %cst_3 : f16
    %37 = vector.reduction <minsi>, %19 : vector<12xi64> into i64
    %rank = tensor.rank %22 : tensor<f16>
    %38 = math.floor %cst_0 : f32
    %39 = math.floor %16 : tensor<2x1x1xf32>
    %40 = math.copysign %7, %7 : tensor<2x12xf32>
    %41 = affine.for %arg2 = 0 to 113 iter_args(%arg3 = %3) -> (tensor<2x1x1xf32>) {
      affine.yield %3 : tensor<2x1x1xf32>
    }
    %42 = arith.negf %cst_1 : f32
    memref.copy %alloc_11, %alloc_10 : memref<2x12xi64> to memref<2x12xi64>
    %43 = arith.minf %cst_1, %cst_2 : f32
    %44 = index.castu %c30038_i16 : i16 to index
    memref.copy %alloc_14, %alloc_6 : memref<2x2x1xi32> to memref<2x2x1xi32>
    %45 = memref.atomic_rmw minf %cst_3, %alloc_20[%c0] : (f16, memref<1xf16>) -> f16
    %46 = arith.xori %c-24576_i16, %c-22678_i16 : i16
    %47 = index.floordivs %35, %c2
    %48 = vector.create_mask %c3, %28, %c3 : vector<2x1x1xi1>
    %49 = arith.maxsi %c350120444_i32, %c1904534729_i32 : i32
    %alloc_21 = memref.alloc() : memref<2x12xi1>
    %splat = tensor.splat %c327242960_i64 : tensor<2x2x1xi64>
    %50 = index.add %c14, %c10
    %51 = math.atan %22 : tensor<f16>
    %52 = vector.bitcast %19 : vector<12xi64> to vector<12xi64>
    %53 = vector.multi_reduction <minsi>, %52, %c1912879457_i64 [0] : vector<12xi64> to i64
    %54 = bufferization.to_memref %15 : memref<2x2x1xi64>
    %55 = vector.broadcast %53 : i64 to vector<12x12xi64>
    %56 = vector.outerproduct %19, %19, %55 {kind = #vector.kind<xor>} : vector<12xi64>, vector<12xi64>
    %57 = vector.create_mask %c10, %c4 : vector<2x12xi1>
    memref.tensor_store %0, %alloc_16 : memref<2x2x1xf16>
    %58 = vector.splat %c0 : vector<2x2x1xindex>
    %59 = arith.maxf %cst_1, %cst_0 : f32
    %60 = arith.addi %53, %c1912879457_i64 : i64
    %61 = math.ctpop %11 : tensor<1x1x1xi1>
    %62 = arith.maxsi %c327242960_i64, %c1176132251_i64 : i64
    %63 = vector.broadcast %c327242960_i64 : i64 to vector<1x1x1xi64>
    %64 = vector.broadcast %c1912879457_i64 : i64 to vector<12x12xi64>
    %65 = vector.outerproduct %52, %19, %64 {kind = #vector.kind<xor>} : vector<12xi64>, vector<12xi64>
    memref.copy %alloc_7, %alloc_4 : memref<2x1x1xi16> to memref<2x1x1xi16>
    %66 = affine.if affine_set<(d0) : ((d0 floordiv 2) mod 128 == 0, -(d0 floordiv 2) == 0, (d0 floordiv 2) * 2 >= 0)>(%c8) -> i64 {
      memref.alloca_scope  {
        %269 = math.round %3 : tensor<2x1x1xf32>
        %270 = arith.remf %cst, %cst_0 : f32
        %271 = vector.broadcast %c0 : index to vector<1xindex>
        %272 = vector.broadcast %true : i1 to vector<1xi1>
        %273 = vector.broadcast %c-24576_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_4[%c1, %c0, %c0] [%271], %272, %273 : memref<2x1x1xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        affine.store %cst_3, %alloc_16[%c5, %c8, %c10] : memref<2x2x1xf16>
        %274 = arith.negf %cst_0 : f32
        %275 = math.sqrt %13 : tensor<2x1x1xf16>
        %rank_49 = tensor.rank %10 : tensor<2x2x1xi1>
        %276 = arith.ceildivsi %false, %false : i1
        %277 = arith.floordivsi %false, %false : i1
        memref.copy %alloc_11, %alloc_10 : memref<2x12xi64> to memref<2x12xi64>
        %278 = arith.divui %c1904534729_i32, %c350120444_i32 : i32
        %279 = arith.mulf %cst, %cst : f32
        %280 = arith.addi %c30038_i16, %c-24576_i16 : i16
        %extracted = tensor.extract %7[%c1, %c2] : tensor<2x12xf32>
        %281 = math.tanh %13 : tensor<2x1x1xf16>
        %282 = index.divs %c5, %c13
        memref.tensor_store %5, %alloc_16 : memref<2x2x1xf16>
        %283 = vector.broadcast %cst_0 : f32 to vector<1x1x1xf32>
        %284 = math.floor %7 : tensor<2x12xf32>
        %285 = vector.broadcast %c1904534729_i32 : i32 to vector<i32>
        vector.transfer_write %285, %alloc_5[%28, %c11, %c0] : vector<i32>, memref<2x1x1xi32>
        %286 = vector.broadcast %c1912879457_i64 : i64 to vector<12x12xi64>
        %287 = vector.outerproduct %19, %19, %286 {kind = #vector.kind<minsi>} : vector<12xi64>, vector<12xi64>
        %alloc_50 = memref.alloc() : memref<1x1x1xi16>
        %288 = math.ctpop %12 : tensor<2x2x1xi32>
        %289 = math.log2 %7 : tensor<2x12xf32>
        %290 = vector.reduction <add>, %19 : vector<12xi64> into i64
        %291 = arith.xori %c30038_i16, %c30038_i16 : i16
        %extracted_51 = tensor.extract %generated[%c0, %c1, %c0] : tensor<?x2x1xi32>
        %cast_52 = tensor.cast %13 : tensor<2x1x1xf16> to tensor<?x?x?xf16>
        %292 = arith.minf %cst_1, %cst_0 : f32
        %293 = vector.extract_strided_slice %63 {offsets = [0, 0], sizes = [1, 1], strides = [1, 1]} : vector<1x1x1xi64> to vector<1x1x1xi64>
        %294 = arith.mulf %extracted, %extracted : f32
        %295 = arith.maxsi %c1176132251_i64, %c1912879457_i64 : i64
      }
      %264 = tensor.empty() : tensor<2x12xi16>
      %splat_47 = tensor.splat %cst_1 : tensor<1x1x1xf32>
      %265 = arith.maxsi %c1912879457_i64, %53 : i64
      %266 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, -(d3 ceildiv 128 - d3))>(%c0, %c6, %44, %c13)
      %generated_48 = tensor.generate %c6, %c4, %c10 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        affine.store %c327242960_i64, %alloc_17[%c15, %c8, %c9] : memref<2x2x1xi64>
        %269 = vector.broadcast %c108572378_i32 : i32 to vector<12x1xi32>
        vector.transfer_write %269, %alloc_14[%arg3, %47, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x1xi32>, memref<2x2x1xi32>
        memref.copy %alloc_10, %alloc_11 : memref<2x12xi64> to memref<2x12xi64>
        %270 = arith.shrsi %c30038_i16, %c-22678_i16 : i16
        tensor.yield %cst_2 : f32
      } : tensor<?x?x?xf32>
      %267 = arith.maxsi %c-22678_i16, %c-22678_i16 : i16
      %268 = math.tan %cst_2 : f32
      affine.yield %c327242960_i64 : i64
    } else {
      %264 = vector.broadcast %c12 : index to vector<1xindex>
      %265 = vector.broadcast %true : i1 to vector<1xi1>
      %266 = vector.broadcast %c327242960_i64 : i64 to vector<1xi64>
      vector.scatter %alloc_17[%c0, %c0, %c0] [%264], %265, %266 : memref<2x2x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %expanded_47 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<2x2x1xf32> into tensor<2x2x1x1xf32>
      %267 = vector.reduction <and>, %52 : vector<12xi64> into i64
      %268 = math.atan2 %5, %5 : tensor<2x2x1xf16>
      %269 = math.atan %cst_1 : f32
      %270 = arith.shrui %c-22678_i16, %c30038_i16 : i16
      %271 = math.round %22 : tensor<f16>
      %272 = scf.if %false -> (memref<2x2x1xi16>) {
        %273 = math.fma %7, %7, %7 : tensor<2x12xf32>
        %274 = arith.ceildivsi %c-22678_i16, %c30038_i16 : i16
        %275 = bufferization.to_tensor %alloc_9 : memref<2x12xi1>
        %276 = index.maxs %47, %c5
        %277 = arith.divf %cst_2, %cst_2 : f32
        affine.store %53, %alloc_17[%c11, %c3, %c10] : memref<2x2x1xi64>
        %278 = vector.broadcast %false : i1 to vector<1xi1>
        %279 = vector.insert %278, %48 [0, 0] : vector<1xi1> into vector<2x1x1xi1>
        %280 = math.fma %expanded_47, %expanded_47, %expanded_47 : tensor<2x2x1x1xf32>
        %alloc_48 = memref.alloc() : memref<2x2x1xi16>
        scf.yield %alloc_48 : memref<2x2x1xi16>
      } else {
        %273 = bufferization.clone %alloc_10 : memref<2x12xi64> to memref<2x12xi64>
        %274 = math.log2 %cst_2 : f32
        %rank_48 = tensor.rank %2 : tensor<2x2x1xi1>
        memref.assume_alignment %alloc_6, 1 : memref<2x2x1xi32>
        %275 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
        %alloc_49 = memref.alloc() : memref<2x1x1xf16>
        %276 = math.sqrt %20 : tensor<1xf16>
        %277 = math.sqrt %6 : tensor<2x2x1xf32>
        %alloc_50 = memref.alloc() : memref<2x2x1xi16>
        scf.yield %alloc_50 : memref<2x2x1xi16>
      }
      affine.yield %c1176132251_i64 : i64
    }
    %67 = math.roundeven %3 : tensor<2x1x1xf32>
    %68 = math.log2 %3 : tensor<2x1x1xf32>
    %69 = vector.broadcast %true : i1 to vector<2x1x1xi1>
    %70 = math.atan %7 : tensor<2x12xf32>
    %71 = math.cos %from_elements : tensor<1x1x1xf16>
    %72 = arith.minsi %c1176132251_i64, %53 : i64
    %73 = arith.remf %cst, %cst_0 : f32
    %74 = arith.minf %cst_0, %cst_2 : f32
    %75 = arith.maxf %cst_3, %cst_3 : f16
    %76 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    %77 = math.expm1 %16 : tensor<2x1x1xf32>
    %rank_22 = tensor.rank %6 : tensor<2x2x1xf32>
    vector.print %19 : vector<12xi64>
    %78 = index.casts %28 : index to i32
    %79 = index.floordivs %c13, %c1
    %80 = math.round %0 : tensor<2x2x1xf16>
    %81 = math.tan %cst_1 : f32
    %82 = arith.minf %cst_2, %cst_1 : f32
    %83 = math.exp2 %5 : tensor<2x2x1xf16>
    %84 = arith.minsi %c1176132251_i64, %53 : i64
    %false_23 = index.bool.constant false
    %85 = arith.maxui %c-22678_i16, %c-22678_i16 : i16
    %86 = index.divu %rank, %35
    %alloc_24 = memref.alloc() : memref<12x12xf32>
    %87 = tensor.empty() : tensor<2x12xf32>
    %88 = linalg.matmul ins(%7, %alloc_24 : tensor<2x12xf32>, memref<12x12xf32>) outs(%87 : tensor<2x12xf32>) -> tensor<2x12xf32>
    %89 = arith.xori %false, %false_23 : i1
    %90 = affine.if affine_set<(d0, d1, d2) : (0 == 0)>(%c13, %c1, %c7) -> memref<2x12xf16> {
      %264 = index.add %c1, %c14
      %265 = arith.maxf %cst_1, %cst_1 : f32
      %generated_47 = tensor.generate %c1 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %274 = index.castu %c13 : index to i32
        %275 = arith.addf %cst_3, %cst_3 : f16
        %splat_48 = tensor.splat %c-22678_i16 : tensor<2x2x1xi16>
        %276 = arith.shrui %53, %c327242960_i64 : i64
        tensor.yield %c-24576_i16 : i16
      } : tensor<?x1x1xi16>
      %266 = vector.broadcast %cst_1 : f32 to vector<1x1x1xf32>
      %267 = vector.fma %266, %266, %266 : vector<1x1x1xf32>
      %268 = vector.broadcast %c0 : index to vector<1xindex>
      %269 = vector.broadcast %false_23 : i1 to vector<1xi1>
      %270 = vector.broadcast %c350120444_i32 : i32 to vector<1xi32>
      vector.scatter %alloc_8[%c0, %c0, %c0] [%268], %269, %270 : memref<1x1x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %271 = bufferization.clone %alloc_6 : memref<2x2x1xi32> to memref<2x2x1xi32>
      %272 = affine.if affine_set<(d0) : ((d0 floordiv 2) mod 128 == 0, -(d0 floordiv 2) == 0, (d0 floordiv 2) * 2 >= 0)>(%c7) -> memref<2x1x1xi16> {
        %274 = math.log1p %13 : tensor<2x1x1xf16>
        %275 = vector.broadcast %true : i1 to vector<2x1xi1>
        %dest_48, %accumulated_value_49 = vector.scan <maxui>, %48, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<2x1x1xi1>, vector<2x1xi1>
        %alloc_50 = memref.alloc() : memref<2x1x1xf16>
        memref.tensor_store %13, %alloc_50 : memref<2x1x1xf16>
        %276 = math.round %87 : tensor<2x12xf32>
        %277 = math.log2 %17 : tensor<2x1x1xf32>
        memref.tensor_store %5, %alloc_16 : memref<2x2x1xf16>
        %278 = vector.broadcast %c327242960_i64 : i64 to vector<12x12xi64>
        %279 = vector.outerproduct %19, %19, %278 {kind = #vector.kind<add>} : vector<12xi64>, vector<12xi64>
        %280 = arith.andi %c-24576_i16, %c-24576_i16 : i16
        affine.yield %alloc_4 : memref<2x1x1xi16>
      } else {
        %274 = math.cos %0 : tensor<2x2x1xf16>
        %275 = arith.maxf %cst_3, %cst_3 : f16
        %276 = vector.extract_strided_slice %19 {offsets = [3], sizes = [4], strides = [1]} : vector<12xi64> to vector<4xi64>
        %277 = math.floor %7 : tensor<2x12xf32>
        %278 = index.add %44, %c15
        memref.tensor_store %15, %54 : memref<2x2x1xi64>
        %279 = index.maxu %c0, %c2
        %280 = arith.muli %53, %c327242960_i64 : i64
        affine.yield %alloc_4 : memref<2x1x1xi16>
      }
      %273 = math.round %7 : tensor<2x12xf32>
      affine.yield %alloc : memref<2x12xf16>
    } else {
      %264 = arith.addi %c1904534729_i32, %c350120444_i32 : i32
      %265 = math.sqrt %17 : tensor<2x1x1xf32>
      %266 = vector.create_mask %c13, %c3, %44 : vector<1x1x1xi1>
      %267 = vector.multi_reduction <minsi>, %48, %69 [] : vector<2x1x1xi1> to vector<2x1x1xi1>
      memref.copy %alloc_8, %alloc_18 : memref<1x1x1xi32> to memref<1x1x1xi32>
      %cast_47 = tensor.cast %20 : tensor<1xf16> to tensor<?xf16>
      %268 = math.roundeven %0 : tensor<2x2x1xf16>
      %269 = affine.min affine_map<(d0) -> (d0)>(%35)
      affine.yield %alloc : memref<2x12xf16>
    }
    %91 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %52, %52, %c327242960_i64 : vector<12xi64>, vector<12xi64> into i64
    %92 = vector.broadcast %c108572378_i32 : i32 to vector<1xi32>
    %93 = vector.broadcast %false_23 : i1 to vector<1xi1>
    %94 = vector.maskedload %alloc_13[%c0, %c0, %c0], %93, %92 : memref<2x1x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    %95 = arith.subi %c1904534729_i32, %c350120444_i32 : i32
    %96 = scf.while (%arg2 = %alloc_15) : (memref<2x1x1xi64>) -> memref<2x1x1xi64> {
      %true_47 = index.bool.constant true
      %264 = math.floor %6 : tensor<2x2x1xf32>
      %265 = vector.broadcast %c327242960_i64 : i64 to vector<i64>
      vector.transfer_write %265, %alloc_10[%c9, %c9] : vector<i64>, memref<2x12xi64>
      %collapsed_48 = tensor.collapse_shape %7 [[0, 1]] : tensor<2x12xf32> into tensor<24xf32>
      %266 = arith.maxf %cst_3, %cst_3 : f16
      memref.tensor_store %20, %alloc_20 : memref<1xf16>
      %267 = bufferization.clone %alloc : memref<2x12xf16> to memref<2x12xf16>
      %268 = vector.broadcast %cst_3 : f16 to vector<1x1x1xf16>
      %269 = vector.broadcast %false : i1 to vector<1x1x1xi1>
      %270 = vector.broadcast %c350120444_i32 : i32 to vector<1x1x1xi32>
      %271 = vector.gather %from_elements[%c12, %c11, %c12] [%270], %269, %268 : tensor<1x1x1xf16>, vector<1x1x1xi32>, vector<1x1x1xi1>, vector<1x1x1xf16> into vector<1x1x1xf16>
      scf.condition(%true_47) %alloc_15 : memref<2x1x1xi64>
    } do {
    ^bb0(%arg2: memref<2x1x1xi64>):
      %264 = arith.cmpf olt, %cst_2, %cst_0 : f32
      %265 = math.floor %cst_2 : f32
      %rank_47 = tensor.rank %8 : tensor<1x1x1xi64>
      %266 = vector.broadcast %true : i1 to vector<1x1x12xi1>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %48, %57, %266 : vector<2x1x1xi1>, vector<2x12xi1> into vector<1x1x12xi1>
      %268 = index.floordivs %44, %44
      %generated_48 = tensor.generate %c2, %c5 {
      ^bb0(%arg3: index, %arg4: index):
        %276 = index.castu %c3 : index to i32
        %277 = math.sqrt %cst_2 : f32
        %278 = index.divu %268, %c14
        %279 = memref.atomic_rmw minf %cst_3, %alloc_16[%c1, %c0, %c0] : (f16, memref<2x2x1xf16>) -> f16
        tensor.yield %c350120444_i32 : i32
      } : tensor<?x?xi32>
      %269 = index.sub %c9, %35
      %270 = arith.minsi %c1904534729_i32, %c350120444_i32 : i32
      %alloc_49 = memref.alloc() : memref<2x1x1xf32>
      memref.tensor_store %3, %alloc_49 : memref<2x1x1xf32>
      %271 = math.exp %6 : tensor<2x2x1xf32>
      %272 = arith.floordivsi %false_23, %true : i1
      %273 = math.sqrt %7 : tensor<2x12xf32>
      %cast_50 = tensor.cast %4 : tensor<2x2x1xi32> to tensor<?x?x?xi32>
      %274 = math.rsqrt %21 : tensor<f16>
      %expanded_51 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<2x2x1xf16> into tensor<2x2x1x1xf16>
      %275 = bufferization.to_memref %8 : memref<1x1x1xi64>
      scf.yield %arg2 : memref<2x1x1xi64>
    }
    %97 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    affine.for %arg2 = 0 to 13 {
    }
    %98 = memref.realloc %alloc_20 : memref<1xf16> to memref<1xf16>
    %99 = math.log10 %cst_0 : f32
    %100 = arith.ceildivsi %c108572378_i32, %c108572378_i32 : i32
    %101 = math.roundeven %0 : tensor<2x2x1xf16>
    %102 = arith.andi %false_23, %true : i1
    %103 = arith.shli %c30038_i16, %c-22678_i16 : i16
    %104 = arith.floordivsi %c1904534729_i32, %c1904534729_i32 : i32
    %105 = math.powf %13, %13 : tensor<2x1x1xf16>
    %106 = math.sqrt %13 : tensor<2x1x1xf16>
    %107 = arith.maxf %cst, %cst_0 : f32
    %from_elements_25 = tensor.from_elements %c30038_i16, %c-22678_i16 : tensor<2x1x1xi16>
    %108 = math.ctpop %12 : tensor<2x2x1xi32>
    %109 = math.ceil %20 : tensor<1xf16>
    %110 = arith.subi %false, %true : i1
    %111 = arith.shrui %c327242960_i64, %c327242960_i64 : i64
    %112 = vector.broadcast %c1 : index to vector<2xindex>
    %113 = vector.broadcast %false_23 : i1 to vector<2xi1>
    %114 = vector.broadcast %c1176132251_i64 : i64 to vector<2xi64>
    vector.scatter %54[%c1, %c0, %c0] [%112], %113, %114 : memref<2x2x1xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
    %collapsed = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<2x2x1xi64> into tensor<4x1xi64>
    %115 = vector.load %alloc_17[%c0, %c0, %c0] : memref<2x2x1xi64>, vector<2x12xi64>
    %116 = affine.apply affine_map<(d0, d1, d2) -> ((d0 floordiv 8 + d1 + 2) mod 64)>(%c3, %c15, %c2)
    %117 = arith.maxf %cst, %cst : f32
    %118 = arith.maxsi %true, %true : i1
    %119 = scf.while (%arg2 = %alloc_13) : (memref<2x1x1xi32>) -> memref<2x1x1xi32> {
      %264 = math.roundeven %0 : tensor<2x2x1xf16>
      %265 = vector.broadcast %c1176132251_i64 : i64 to vector<12x12xi64>
      %266 = vector.outerproduct %97, %76, %265 {kind = #vector.kind<minsi>} : vector<12xi64>, vector<12xi64>
      %alloc_47 = memref.alloc() : memref<2x12xf32>
      %267 = index.castu %c5 : index to i32
      %splat_48 = tensor.splat %false_23 : tensor<2x2x1xi1>
      %268 = vector.broadcast %c327242960_i64 : i64 to vector<2x2x1xi64>
      %269 = index.add %c6, %c7
      %cast_49 = tensor.cast %7 : tensor<2x12xf32> to tensor<?x?xf32>
      scf.condition(%false_23) %alloc_5 : memref<2x1x1xi32>
    } do {
    ^bb0(%arg2: memref<2x1x1xi32>):
      %false_47 = index.bool.constant false
      %264 = arith.muli %false_23, %false : i1
      %265 = arith.addi %c327242960_i64, %c327242960_i64 : i64
      affine.store %c1904534729_i32, %alloc_18[%c11, %c2, %c8] : memref<1x1x1xi32>
      %266 = affine.min affine_map<(d0) -> (0, 0, d0 - 128)>(%c9)
      %267 = math.log1p %20 : tensor<1xf16>
      %268 = math.tanh %cst_2 : f32
      %269 = arith.mulf %cst_2, %cst : f32
      %270 = index.castu %c1 : index to i32
      %271 = arith.ceildivsi %c1176132251_i64, %c1912879457_i64 : i64
      %272 = arith.remf %cst_2, %cst_0 : f32
      %273 = index.sub %c13, %79
      %274 = vector.broadcast %c1912879457_i64 : i64 to vector<2x12xi64>
      %alloc_48 = memref.alloc() : memref<2x1x1xf32>
      %275 = vector.broadcast %cst : f32 to vector<2x12xf32>
      %276 = vector.broadcast %c350120444_i32 : i32 to vector<2x12xi32>
      %277 = vector.gather %alloc_48[%c9, %rank_22, %50] [%276], %57, %275 : memref<2x1x1xf32>, vector<2x12xi32>, vector<2x12xi1>, vector<2x12xf32> into vector<2x12xf32>
      %278 = bufferization.clone %alloc_17 : memref<2x2x1xi64> to memref<2x2x1xi64>
      %279 = arith.addi %false_23, %false_47 : i1
      scf.yield %alloc_5 : memref<2x1x1xi32>
    }
    %120 = vector.broadcast %false : i1 to vector<1x1xi1>
    %121 = vector.outerproduct %93, %93, %120 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
    %122 = vector.splat %c6 : vector<2x12xindex>
    %123 = index.divu %50, %c12
    %124 = vector.reduction <xor>, %76 : vector<12xi64> into i64
    %125 = arith.maxsi %c30038_i16, %c30038_i16 : i16
    %126 = math.exp %22 : tensor<f16>
    %127 = vector.insertelement %c350120444_i32, %92[%rank_22 : index] : vector<1xi32>
    %128 = vector.broadcast %c108572378_i32 : i32 to vector<2x1xi32>
    %129 = vector.transfer_write %128, %4[%44, %c11, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x1xi32>, tensor<2x2x1xi32>
    %130 = tensor.empty() : tensor<2x12xf32>
    %mapped = linalg.map ins(%7, %7 : tensor<2x12xf32>, tensor<2x12xf32>) outs(%130 : tensor<2x12xf32>)
      (%in: f32, %in_47: f32) {
        %264 = vector.reduction <minui>, %94 : vector<1xi32> into i32
        %265 = vector.extract %76[4] : vector<12xi64>
        %266 = arith.negf %cst_2 : f32
        %267 = affine.apply affine_map<(d0, d1) -> (d0 * 4)>(%123, %c11)
        memref.alloca_scope  {
          %294 = arith.floordivsi %c327242960_i64, %c327242960_i64 : i64
          %295 = arith.addi %c1912879457_i64, %53 : i64
          %296 = arith.divsi %c30038_i16, %c-24576_i16 : i16
          %297 = math.fma %in, %cst_0, %in : f32
          %298 = arith.addf %in, %cst_0 : f32
          %299 = math.atan2 %0, %5 : tensor<2x2x1xf16>
          %300 = math.log1p %3 : tensor<2x1x1xf32>
          %301 = math.atan %in : f32
          %302 = math.rsqrt %22 : tensor<f16>
          %303 = math.round %7 : tensor<2x12xf32>
          %304 = math.exp %7 : tensor<2x12xf32>
          %305 = vector.broadcast %c327242960_i64 : i64 to vector<12x12xi64>
          %306 = vector.outerproduct %97, %19, %305 {kind = #vector.kind<minui>} : vector<12xi64>, vector<12xi64>
          %307 = math.ipowi %8, %8 : tensor<1x1x1xi64>
          %308 = arith.minsi %c-22678_i16, %c-22678_i16 : i16
          %309 = vector.extract_strided_slice %76 {offsets = [2], sizes = [1], strides = [1]} : vector<12xi64> to vector<1xi64>
          vector.print %128 : vector<2x1xi32>
          vector.print %69 : vector<2x1x1xi1>
          %310 = vector.broadcast %c1176132251_i64 : i64 to vector<1x1x1x1xi64>
          %311 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %63, %63, %310 : vector<1x1x1xi64>, vector<1x1x1xi64> into vector<1x1x1x1xi64>
          %312 = vector.extract_strided_slice %115 {offsets = [0], sizes = [1], strides = [1]} : vector<2x12xi64> to vector<1x12xi64>
          %alloc_52 = memref.alloc() : memref<2x2x1xi1>
          memref.tensor_store %10, %alloc_52 : memref<2x2x1xi1>
          %313 = arith.cmpf ole, %cst_3, %cst_3 : f16
          %314 = bufferization.clone %54 : memref<2x2x1xi64> to memref<2x2x1xi64>
          %315 = arith.floordivsi %false_23, %true : i1
          %316 = bufferization.to_memref %8 : memref<1x1x1xi64>
          %317 = math.tan %87 : tensor<2x12xf32>
          affine.store %cst_3, %alloc[%c9, %c4] : memref<2x12xf16>
          %318 = vector.broadcast %true : i1 to vector<1x1xi1>
          %319 = vector.insert %318, %48 [0] : vector<1x1xi1> into vector<2x1x1xi1>
          %rank_53 = tensor.rank %9 : tensor<2x2x1xi64>
          %320 = math.roundeven %7 : tensor<2x12xf32>
          %alloc_54 = memref.alloc() : memref<4x1xi64>
          memref.tensor_store %collapsed, %alloc_54 : memref<4x1xi64>
          %321 = vector.broadcast %c-22678_i16 : i16 to vector<i16>
          %322 = vector.transfer_write %321, %from_elements_25[%rank, %c7, %c1] : vector<i16>, tensor<2x1x1xi16>
          %323 = math.absf %from_elements : tensor<1x1x1xf16>
        }
        %268 = arith.maxf %cst_3, %cst_3 : f16
        %269 = math.tan %17 : tensor<2x1x1xf32>
        %270 = arith.floordivsi %c327242960_i64, %c327242960_i64 : i64
        %271 = math.floor %22 : tensor<f16>
        %272 = math.round %7 : tensor<2x12xf32>
        %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<2x1x1xf16>) outs(%13 : tensor<2x1x1xf16>) {
        ^bb0(%in_52: f16, %out: f16):
          %294 = arith.andi %true, %false_23 : i1
          %295 = index.add %rank_22, %c2
          %296 = vector.reduction <minui>, %52 : vector<12xi64> into i64
          %297 = index.divu %c1, %c15
          %298 = arith.xori %c1912879457_i64, %c1912879457_i64 : i64
          %299 = math.round %3 : tensor<2x1x1xf32>
          %300 = arith.minsi %c30038_i16, %c-24576_i16 : i16
          %301 = arith.minf %out, %in_52 : f16
          %302 = arith.muli %false_23, %false : i1
          %303 = vector.reduction <or>, %52 : vector<12xi64> into i64
          %304 = index.floordivs %47, %28
          %305 = vector.broadcast %c327242960_i64 : i64 to vector<12x12xi64>
          %306 = vector.outerproduct %52, %52, %305 {kind = #vector.kind<maxui>} : vector<12xi64>, vector<12xi64>
          %from_elements_53 = tensor.from_elements %c1176132251_i64, %c1176132251_i64, %53, %c1176132251_i64 : tensor<2x2x1xi64>
          %307 = arith.maxf %cst_1, %cst_2 : f32
          %308 = vector.broadcast %cst_3 : f16 to vector<f16>
          %309 = vector.transfer_write %308, %5[%c15, %50, %304] : vector<f16>, tensor<2x2x1xf16>
          %310 = arith.shli %c1912879457_i64, %c1912879457_i64 : i64
          %311 = arith.negf %cst : f32
          %312 = tensor.empty() : tensor<1x1xi64>
          %313 = tensor.empty() : tensor<4x1xi64>
          %314 = linalg.matmul ins(%collapsed, %312 : tensor<4x1xi64>, tensor<1x1xi64>) outs(%313 : tensor<4x1xi64>) -> tensor<4x1xi64>
          %315 = vector.extract %48[0] : vector<2x1x1xi1>
          %316 = arith.shrsi %53, %53 : i64
          %317 = math.atan %cst_1 : f32
          %318 = math.expm1 %cst_3 : f16
          %319 = math.tan %in_47 : f32
          %320 = arith.remf %in, %cst_1 : f32
          %321 = vector.broadcast %c-22678_i16 : i16 to vector<1xi16>
          %322 = vector.maskedload %alloc_7[%c0, %c0, %c0], %93, %321 : memref<2x1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          %alloc_54 = memref.alloc() : memref<1x1xi64>
          %323 = tensor.empty() : tensor<4x1xi64>
          %324 = linalg.matmul ins(%313, %alloc_54 : tensor<4x1xi64>, memref<1x1xi64>) outs(%323 : tensor<4x1xi64>) -> tensor<4x1xi64>
          affine.store %c327242960_i64, %alloc_19[%c1, %c9, %c15] : memref<1x2x2xi64>
          %325 = math.atan2 %from_elements, %from_elements : tensor<1x1x1xf16>
          %326 = arith.divui %c108572378_i32, %c108572378_i32 : i32
          %alloc_55 = memref.alloc() : memref<12x2xf32>
          %327 = tensor.empty() : tensor<2x2xf32>
          %328 = linalg.matmul ins(%7, %alloc_55 : tensor<2x12xf32>, memref<12x2xf32>) outs(%327 : tensor<2x2xf32>) -> tensor<2x2xf32>
          %329 = vector.broadcast %c30038_i16 : i16 to vector<1x1xi16>
          %330 = vector.outerproduct %322, %322, %329 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
          %from_elements_56 = tensor.from_elements %cst_0 : tensor<1x1x1xf32>
          linalg.yield %in_52 : f16
        } -> tensor<2x1x1xf16>
        memref.alloca_scope  {
          %294 = index.castu %c108572378_i32 : i32 to index
          %295 = arith.subi %c1904534729_i32, %c1904534729_i32 : i32
          %296 = arith.addf %cst_1, %in : f32
          %297 = vector.broadcast %cst_3 : f16 to vector<1xf16>
          %298 = vector.maskedload %alloc_16[%c0, %c0, %c0], %93, %297 : memref<2x2x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
          %299 = vector.insertelement %c1176132251_i64, %97[%c7 : index] : vector<12xi64>
          %300 = arith.divsi %c327242960_i64, %c327242960_i64 : i64
          %301 = math.round %cst_1 : f32
          %302 = memref.atomic_rmw minu %c108572378_i32, %alloc_13[%c0, %c0, %c0] : (i32, memref<2x1x1xi32>) -> i32
          %303 = math.fma %3, %3, %3 : tensor<2x1x1xf32>
          %304 = math.powf %in_47, %cst : f32
          %305 = index.divs %c5, %c0
          %collapsed_52 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<1x1x1xi1> into tensor<1x1xi1>
          %306 = math.copysign %13, %13 : tensor<2x1x1xf16>
          %307 = math.powf %in, %in_47 : f32
          %308 = vector.splat %c9 : vector<2x12xindex>
          %309 = vector.extract %48[0] : vector<2x1x1xi1>
          %310 = arith.remsi %true, %false : i1
          %311 = vector.create_mask %35, %c13, %c12 : vector<1x1x1xi1>
          %312 = index.floordivs %c3, %267
          %313 = vector.broadcast %false : i1 to vector<i1>
          %314 = vector.transfer_write %313, %2[%116, %c12, %28] : vector<i1>, tensor<2x2x1xi1>
          %315 = math.log1p %16 : tensor<2x1x1xf32>
          %cast_53 = tensor.cast %8 : tensor<1x1x1xi64> to tensor<?x?x?xi64>
          %316 = memref.atomic_rmw ori %c108572378_i32, %alloc_18[%c0, %c0, %c0] : (i32, memref<1x1x1xi32>) -> i32
          %317 = index.floordivs %c8, %44
          %318 = arith.cmpf oeq, %cst_0, %cst_0 : f32
          %319 = arith.shrsi %c350120444_i32, %c108572378_i32 : i32
          %320 = arith.subi %c-24576_i16, %c-24576_i16 : i16
          %321 = math.tan %in_47 : f32
          %322 = arith.remsi %c30038_i16, %c30038_i16 : i16
          %323 = arith.ceildivsi %c1904534729_i32, %c108572378_i32 : i32
          %324 = vector.broadcast %c350120444_i32 : i32 to vector<12xi32>
          %325 = vector.broadcast %true : i1 to vector<12xi1>
          %326 = vector.maskedload %alloc_6[%c1, %c0, %c0], %325, %324 : memref<2x2x1xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
          %327 = memref.atomic_rmw maxu %c1904534729_i32, %alloc_6[%c1, %c0, %c0] : (i32, memref<2x2x1xi32>) -> i32
        }
        %274 = bufferization.clone %alloc_13 : memref<2x1x1xi32> to memref<2x1x1xi32>
        %275 = scf.while (%arg2 = %94) : (vector<1xi32>) -> vector<1xi32> {
          %294 = arith.shrsi %c350120444_i32, %c1904534729_i32 : i32
          affine.store %c108572378_i32, %alloc_12[%c3, %c14, %c6] : memref<2x2x1xi32>
          %295 = arith.floordivsi %false, %false_23 : i1
          %296 = vector.splat %c4 : vector<2x12xindex>
          %297 = vector.extract_strided_slice %128 {offsets = [0], sizes = [1], strides = [1]} : vector<2x1xi32> to vector<1x1xi32>
          %298 = vector.shuffle %128, %128 [0, 2, 3] : vector<2x1xi32>, vector<2x1xi32>
          %299 = index.casts %c0 : index to i32
          %300 = arith.muli %53, %c1176132251_i64 : i64
          scf.condition(%false_23) %94 : vector<1xi32>
        } do {
        ^bb0(%arg2: vector<1xi32>):
          %from_elements_52 = tensor.from_elements %c1904534729_i32 : tensor<1x1x1xi32>
          %294 = arith.ceildivsi %c1176132251_i64, %c1176132251_i64 : i64
          %295 = math.exp2 %cst_1 : f32
          %296 = arith.ceildivsi %c-24576_i16, %c-22678_i16 : i16
          %297 = index.ceildivu %c13, %c6
          %298 = math.ceil %20 : tensor<1xf16>
          %299 = vector.broadcast %28 : index to vector<2xindex>
          %300 = vector.broadcast %false_23 : i1 to vector<2xi1>
          %301 = vector.broadcast %c1912879457_i64 : i64 to vector<2xi64>
          vector.scatter %54[%c0, %c1, %c0] [%299], %300, %301 : memref<2x2x1xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
          %302 = arith.xori %c350120444_i32, %c108572378_i32 : i32
          %false_53 = index.bool.constant false
          %303 = vector.broadcast %53 : i64 to vector<1xi64>
          %304 = vector.maskedload %54[%c0, %c0, %c0], %93, %303 : memref<2x2x1xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %alloc_54 = memref.alloc() : memref<2x1x1xf32>
          %305 = math.ceil %21 : tensor<f16>
          %306 = math.floor %in : f32
          %307 = arith.ceildivsi %false, %false : i1
          %308 = math.log10 %6 : tensor<2x2x1xf32>
          %309 = vector.broadcast %c1912879457_i64 : i64 to vector<2x2x1xi64>
          scf.yield %94 : vector<1xi32>
        }
        %276 = math.absi %12 : tensor<2x2x1xi32>
        %277 = arith.andi %c327242960_i64, %53 : i64
        %278 = arith.xori %c1912879457_i64, %53 : i64
        %279 = arith.subi %c350120444_i32, %c108572378_i32 : i32
        %280 = math.powf %0, %5 : tensor<2x2x1xf16>
        %281 = arith.floordivsi %c108572378_i32, %c108572378_i32 : i32
        %282 = arith.minsi %53, %c327242960_i64 : i64
        %283 = vector.broadcast %cst : f32 to vector<2x12xf32>
        %284 = arith.minsi %c1176132251_i64, %53 : i64
        %285 = vector.create_mask %123, %86, %50 : vector<2x1x1xi1>
        %286 = arith.maxsi %c-24576_i16, %c-22678_i16 : i16
        %287 = vector.broadcast %true : i1 to vector<2x1xi1>
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %69, %93, %287 : vector<2x1x1xi1>, vector<1xi1> into vector<2x1xi1>
        %expanded_48 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<1x1x1xi32> into tensor<1x1x1x1xi32>
        %289 = vector.broadcast %false_23 : i1 to vector<1x1xi1>
        %290 = vector.multi_reduction <minsi>, %48, %289 [0] : vector<2x1x1xi1> to vector<1x1xi1>
        vector.print %285 : vector<2x1x1xi1>
        %291 = vector.broadcast %false : i1 to vector<2xi1>
        %dest_49, %accumulated_value_50 = vector.scan <xor>, %57, %291 {inclusive = true, reduction_dim = 1 : i64} : vector<2x12xi1>, vector<2xi1>
        %292 = arith.muli %c108572378_i32, %c108572378_i32 : i32
        %293 = vector.load %alloc_15[%c0, %c0, %c0] : memref<2x1x1xi64>, vector<1x1x1xi64>
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %131 = vector.broadcast %false : i1 to vector<1xi1>
    %132 = vector.transfer_write %131, %10[%c2, %50, %86] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi1>, tensor<2x2x1xi1>
    %alloc_26 = memref.alloc() : memref<2x1x1xi1>
    %133 = index.sub %79, %123
    %134 = memref.realloc %alloc_20 : memref<1xf16> to memref<1xf16>
    %135 = math.absf %87 : tensor<2x12xf32>
    %136 = math.sqrt %3 : tensor<2x1x1xf32>
    scf.if %false_23 {
      %264 = vector.matrix_multiply %94, %94 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %265 = math.expm1 %5 : tensor<2x2x1xf16>
      %266 = arith.muli %c350120444_i32, %c1904534729_i32 : i32
      %267 = arith.minsi %true, %false_23 : i1
      %268 = math.cttz %c-24576_i16 : i16
      %269 = vector.reduction <maxsi>, %97 : vector<12xi64> into i64
      %270 = arith.divui %c108572378_i32, %c350120444_i32 : i32
      %271 = arith.muli %false, %false : i1
    } else {
      %264 = arith.floordivsi %c1912879457_i64, %53 : i64
      %265 = arith.maxsi %53, %c1912879457_i64 : i64
      %266 = vector.create_mask %47, %c6, %c7 : vector<1x1x1xi1>
      %267 = index.casts %c13 : index to i32
      %268 = arith.minui %c-22678_i16, %c-24576_i16 : i16
      memref.assume_alignment %alloc_16, 16 : memref<2x2x1xf16>
      %269 = arith.maxf %cst_1, %cst_1 : f32
      %270 = math.powf %cst_1, %cst : f32
    }
    %rank_27 = tensor.rank %14 : tensor<1x1x1xi32>
    %generated_28 = tensor.generate %c0 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %264 = tensor.empty() : tensor<2x2xi1>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %264 : tensor<2x2x1xi1>, tensor<2x2xi1>) outs(%2 : tensor<2x2x1xi1>) {
      ^bb0(%in: i1, %in_47: i1, %out: i1):
        %269 = vector.broadcast %c12 : index to vector<2xindex>
        %270 = vector.broadcast %false : i1 to vector<2xi1>
        %271 = vector.broadcast %c-22678_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_4[%c1, %c0, %c0] [%269], %270, %271 : memref<2x1x1xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %272 = index.casts %c2 : index to i32
        %273 = arith.divui %c327242960_i64, %53 : i64
        %cast_48 = tensor.cast %4 : tensor<2x2x1xi32> to tensor<?x?x?xi32>
        %collapsed_49 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<1x1x1xf16> into tensor<1x1xf16>
        %274 = math.absf %6 : tensor<2x2x1xf32>
        %275 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
        %276 = math.log1p %6 : tensor<2x2x1xf32>
        %277 = vector.broadcast %false_23 : i1 to vector<12x12xi1>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %57, %57, %277 : vector<2x12xi1>, vector<2x12xi1> into vector<12x12xi1>
        %alloc_50 = memref.alloc() : memref<2x12xi1>
        %cast_51 = tensor.cast %15 : tensor<2x2x1xi64> to tensor<?x?x?xi64>
        %279 = index.floordivs %c6, %c15
        %280 = arith.floordivsi %c1904534729_i32, %c350120444_i32 : i32
        %281 = vector.broadcast %in : i1 to vector<1x1xi1>
        %282 = vector.outerproduct %131, %93, %281 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
        %283 = index.ceildivs %c7, %c8
        %284 = arith.addi %c-22678_i16, %c-24576_i16 : i16
        %285 = vector.broadcast %true : i1 to vector<1x1xi1>
        %286 = vector.outerproduct %93, %93, %285 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
        %287 = index.divs %44, %arg3
        %288 = math.atan %3 : tensor<2x1x1xf32>
        %289 = index.ceildivs %86, %279
        %290 = math.exp %87 : tensor<2x12xf32>
        %291 = vector.reduction <maxui>, %76 : vector<12xi64> into i64
        %292 = math.tan %87 : tensor<2x12xf32>
        %293 = arith.minf %cst_0, %cst_0 : f32
        %294 = arith.remf %cst_3, %cst_3 : f16
        %295 = arith.divui %c327242960_i64, %c327242960_i64 : i64
        %alloc_52 = memref.alloc() : memref<4x1xi64>
        memref.tensor_store %collapsed, %alloc_52 : memref<4x1xi64>
        %296 = arith.xori %in, %in : i1
        %false_53 = index.bool.constant false
        %297 = math.sqrt %cst_1 : f32
        %298 = memref.load %alloc_11[%c0, %c2] : memref<2x12xi64>
        %299 = index.divs %116, %rank_27
        linalg.yield %out : i1
      } -> tensor<2x2x1xi1>
      %266 = index.floordivs %116, %116
      %267 = memref.realloc %alloc_20 : memref<1xf16> to memref<1xf16>
      %268 = arith.maxf %cst_1, %cst_1 : f32
      tensor.yield %c327242960_i64 : i64
    } : tensor<?x2x1xi64>
    %137 = math.cos %17 : tensor<2x1x1xf32>
    %138 = math.round %16 : tensor<2x1x1xf32>
    %139 = math.expm1 %13 : tensor<2x1x1xf16>
    %140 = arith.minf %cst, %cst_1 : f32
    %141 = vector.maskedload %alloc_6[%c0, %c1, %c0], %93, %94 : memref<2x2x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    %cast = tensor.cast %17 : tensor<2x1x1xf32> to tensor<?x?x?xf32>
    affine.store %c350120444_i32, %alloc_5[%c15, %c10, %c11] : memref<2x1x1xi32>
    %142 = vector.broadcast %c9 : index to vector<1xindex>
    %143 = vector.broadcast %cst_3 : f16 to vector<1xf16>
    vector.scatter %alloc[%c0, %c9] [%142], %93, %143 : memref<2x12xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
    %144 = math.sqrt %22 : tensor<f16>
    %145 = vector.broadcast %c350120444_i32 : i32 to vector<12xi32>
    %146 = vector.broadcast %true : i1 to vector<12xi1>
    %147 = vector.maskedload %alloc_8[%c0, %c0, %c0], %146, %145 : memref<1x1x1xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
    %148 = vector.flat_transpose %146 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
    %149 = scf.while (%arg2 = %141) : (vector<1xi32>) -> vector<1xi32> {
      %264 = arith.xori %false, %false : i1
      %265 = arith.minf %cst_3, %cst_3 : f16
      %266 = arith.andi %false_23, %false_23 : i1
      memref.tensor_store %5, %alloc_16 : memref<2x2x1xf16>
      %267 = math.roundeven %21 : tensor<f16>
      %268 = index.maxs %79, %c6
      %269 = arith.cmpf olt, %cst_1, %cst_0 : f32
      %270 = tensor.empty() : tensor<2x2x1xf32>
      scf.condition(%false) %92 : vector<1xi32>
    } do {
    ^bb0(%arg2: vector<1xi32>):
      %264 = index.casts %true : i1 to index
      %265 = tensor.empty() : tensor<1x2xi1>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %2 : tensor<1x2xi1>, tensor<2x2x1xi1>) outs(%10 : tensor<2x2x1xi1>) {
      ^bb0(%in: i1, %in_47: i1, %out: i1):
        %280 = vector.broadcast %c1912879457_i64 : i64 to vector<2xi64>
        %281 = vector.broadcast %false_23 : i1 to vector<2xi1>
        %282 = vector.maskedload %alloc_11[%c1, %c11], %281, %280 : memref<2x12xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %283 = arith.remf %cst, %cst_1 : f32
        %284 = vector.broadcast %c-22678_i16 : i16 to vector<1x1x1xi16>
        %285 = math.log2 %87 : tensor<2x12xf32>
        %286 = affine.load %alloc_7[%c3, %c4, %c13] : memref<2x1x1xi16>
        memref.assume_alignment %alloc_6, 4 : memref<2x2x1xi32>
        %alloc_48 = memref.alloc() : memref<1x1xi64>
        %287 = tensor.empty() : tensor<4x1xi64>
        %288 = linalg.matmul ins(%collapsed, %alloc_48 : tensor<4x1xi64>, memref<1x1xi64>) outs(%287 : tensor<4x1xi64>) -> tensor<4x1xi64>
        %289 = math.atan %5 : tensor<2x2x1xf16>
        %290 = arith.minsi %53, %c327242960_i64 : i64
        %291 = math.tan %0 : tensor<2x2x1xf16>
        %collapsed_49 = tensor.collapse_shape %130 [[0, 1]] : tensor<2x12xf32> into tensor<24xf32>
        %292 = index.divs %44, %123
        %293 = math.tan %cst_1 : f32
        memref.assume_alignment %alloc, 16 : memref<2x12xf16>
        %294 = tensor.empty() : tensor<12x12xf32>
        %295 = tensor.empty() : tensor<2x12xf32>
        %296 = linalg.matmul ins(%7, %294 : tensor<2x12xf32>, tensor<12x12xf32>) outs(%295 : tensor<2x12xf32>) -> tensor<2x12xf32>
        %collapsed_50 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<1x1x1xi1> into tensor<1x1xi1>
        %297 = arith.shli %out, %in : i1
        affine.store %c1904534729_i32, %alloc_5[%c2, %c14, %c10] : memref<2x1x1xi32>
        %298 = math.roundeven %cst_0 : f32
        %299 = memref.atomic_rmw assign %c108572378_i32, %alloc_18[%c0, %c0, %c0] : (i32, memref<1x1x1xi32>) -> i32
        %300 = math.absi %1 : tensor<1x1x1xi64>
        %301 = arith.shrsi %c108572378_i32, %c1904534729_i32 : i32
        %302 = arith.shli %c-22678_i16, %286 : i16
        %303 = arith.shli %c1912879457_i64, %53 : i64
        %304 = math.powf %5, %5 : tensor<2x2x1xf16>
        %305 = arith.maxsi %c1904534729_i32, %c1904534729_i32 : i32
        %306 = arith.muli %286, %c30038_i16 : i16
        affine.store %c1176132251_i64, %alloc_17[%c15, %c10, %c13] : memref<2x2x1xi64>
        %307 = arith.divui %53, %c1912879457_i64 : i64
        %308 = vector.broadcast %true : i1 to vector<2x12xi1>
        %309 = arith.divsi %c30038_i16, %c-22678_i16 : i16
        %310 = math.ctpop %10 : tensor<2x2x1xi1>
        linalg.yield %false_23 : i1
      } -> tensor<2x2x1xi1>
      %267 = math.ctpop %14 : tensor<1x1x1xi32>
      %268 = index.floordivs %79, %133
      %269 = vector.multi_reduction <add>, %97, %c1176132251_i64 [0] : vector<12xi64> to i64
      scf.if %false {
        vector.print %128 : vector<2x1xi32>
        %280 = math.ctpop %false_23 : i1
        %cast_47 = tensor.cast %15 : tensor<2x2x1xi64> to tensor<?x?x?xi64>
        %281 = index.sizeof
        %282 = arith.divui %c-22678_i16, %c-24576_i16 : i16
        %alloc_48 = memref.alloc() : memref<2x2x1xf16>
        %283 = vector.broadcast %cst_1 : f32 to vector<2x1x1xf32>
        %284 = index.add %264, %79
      } else {
        %280 = math.round %3 : tensor<2x1x1xf32>
        %281 = math.ctpop %2 : tensor<2x2x1xi1>
        %282 = vector.load %alloc_9[%c0, %c6] : memref<2x12xi1>, vector<2x12xi1>
        %283 = bufferization.clone %alloc_16 : memref<2x2x1xf16> to memref<2x2x1xf16>
        %284 = vector.broadcast %c1176132251_i64 : i64 to vector<1xi64>
        %285 = vector.transfer_write %284, %15[%116, %c7, %268] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi64>, tensor<2x2x1xi64>
        %286 = index.divs %c4, %c13
        %rank_47 = tensor.rank %10 : tensor<2x2x1xi1>
        %alloc_48 = memref.alloc() : memref<2x1x1xi16>
      }
      %270 = arith.cmpf uge, %cst_1, %cst : f32
      %271 = arith.subi %c327242960_i64, %c1912879457_i64 : i64
      %272 = vector.insert %c1904534729_i32, %94 [0] : i32 into vector<1xi32>
      %273 = affine.min affine_map<(d0) -> (0, 0, d0 ceildiv 4)>(%rank)
      %274 = math.sqrt %13 : tensor<2x1x1xf16>
      %275 = index.floordivs %c9, %c7
      %276 = arith.ceildivsi %false_23, %false_23 : i1
      %277 = math.exp %6 : tensor<2x2x1xf32>
      %278 = arith.minsi %c-24576_i16, %c-24576_i16 : i16
      %279 = index.casts %false_23 : i1 to index
      scf.yield %94 : vector<1xi32>
    }
    %150 = math.cttz %15 : tensor<2x2x1xi64>
    %151 = scf.while (%arg2 = %alloc_20) : (memref<1xf16>) -> memref<1xf16> {
      %264 = index.divu %35, %50
      %265 = math.roundeven %16 : tensor<2x1x1xf32>
      %266 = arith.maxsi %false_23, %false_23 : i1
      %267 = math.sqrt %87 : tensor<2x12xf32>
      %268 = vector.maskedload %alloc_19[%c0, %c0, %c0], %148, %52 : memref<1x2x2xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      %alloc_47 = memref.alloc() : memref<2x1x1xi16>
      %269 = arith.divsi %c30038_i16, %c30038_i16 : i16
      %270 = arith.shli %c1912879457_i64, %53 : i64
      scf.condition(%true) %arg2 : memref<1xf16>
    } do {
    ^bb0(%arg2: memref<1xf16>):
      %264 = vector.load %arg2[%c0] : memref<1xf16>, vector<2x1x1xf16>
      %265 = arith.xori %false_23, %false : i1
      %266 = affine.if affine_set<(d0, d1) : (d1 - 4 == 0, -(d1 - d0 + 32) - 16 == 0, d1 - d0 + 3 == 0, d1 floordiv 4 >= 0)>(%c6, %c8) -> memref<1x1x1xi16> {
        %278 = math.copysign %cst_3, %cst_3 : f16
        %alloc_50 = memref.alloc() : memref<1x1x1xf16>
        memref.tensor_store %from_elements, %alloc_50 : memref<1x1x1xf16>
        %279 = math.cos %0 : tensor<2x2x1xf16>
        %280 = math.copysign %cst_1, %cst : f32
        %281 = arith.shrsi %53, %c327242960_i64 : i64
        %cast_51 = tensor.cast %8 : tensor<1x1x1xi64> to tensor<?x?x?xi64>
        %cast_52 = tensor.cast %12 : tensor<2x2x1xi32> to tensor<?x?x?xi32>
        %282 = vector.broadcast %false : i1 to vector<2xi1>
        %283 = vector.maskedload %alloc_9[%c0, %c3], %282, %282 : memref<2x12xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %alloc_53 = memref.alloc() : memref<1x1x1xi16>
        affine.yield %alloc_53 : memref<1x1x1xi16>
      } else {
        %splat_50 = tensor.splat %true : tensor<2x12xi1>
        vector.print %128 : vector<2x1xi32>
        %inserted = tensor.insert %cst_3 into %21[] : tensor<f16>
        %278 = math.cos %3 : tensor<2x1x1xf32>
        %279 = math.copysign %0, %5 : tensor<2x2x1xf16>
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%47, %44, %123, %c15)
        %281 = arith.muli %true, %true : i1
        %282 = arith.remf %cst_1, %cst : f32
        %alloc_51 = memref.alloc() : memref<1x1x1xi16>
        affine.yield %alloc_51 : memref<1x1x1xi16>
      }
      %267 = vector.extract %69[0, 0] : vector<2x1x1xi1>
      %268 = tensor.empty() : tensor<2x12xf32>
      %mapped_47 = linalg.map ins(%87, %7 : tensor<2x12xf32>, tensor<2x12xf32>) outs(%268 : tensor<2x12xf32>)
        (%in: f32, %in_50: f32) {
          %278 = arith.negf %cst_2 : f32
          %279 = index.divs %c8, %rank_27
          %from_elements_51 = tensor.from_elements %false : tensor<1x1x1xi1>
          %280 = arith.addi %c327242960_i64, %53 : i64
          %alloc_52 = memref.alloc() : memref<1x1x1xi16>
          %281 = arith.ceildivsi %c1904534729_i32, %c1904534729_i32 : i32
          %282 = index.divu %28, %c14
          %splat_53 = tensor.splat %c1176132251_i64 : tensor<2x2x1xi64>
          %283 = index.add %c2, %116
          %284 = index.casts %c1176132251_i64 : i64 to index
          %285 = arith.remf %cst, %cst_0 : f32
          %286 = vector.broadcast %false_23 : i1 to vector<2x1xi1>
          %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %131, %48, %286 : vector<1xi1>, vector<2x1x1xi1> into vector<2x1xi1>
          %288 = math.round %in_50 : f32
          %289 = math.log1p %in : f32
          %alloc_54 = memref.alloc() : memref<2x12xf32>
          memref.tensor_store %268, %alloc_54 : memref<2x12xf32>
          %290 = arith.xori %false, %false_23 : i1
          %291 = vector.broadcast %false_23 : i1 to vector<1x1xi1>
          %292 = vector.outerproduct %93, %93, %291 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
          %alloc_55 = memref.alloc() : memref<1x1x1xi1>
          memref.tensor_store %from_elements_51, %alloc_55 : memref<1x1x1xi1>
          %293 = affine.min affine_map<(d0) -> (d0 + 16, d0, 0, ((d0 + 16) floordiv 32 + d0 + 16) * 2)>(%279)
          %294 = math.log10 %5 : tensor<2x2x1xf16>
          %295 = vector.reduction <maxsi>, %19 : vector<12xi64> into i64
          %296 = math.ceil %22 : tensor<f16>
          %297 = math.cos %21 : tensor<f16>
          %298 = vector.create_mask %283, %c1, %c3 : vector<2x1x1xi1>
          %299 = math.sqrt %21 : tensor<f16>
          %300 = arith.muli %c-22678_i16, %c30038_i16 : i16
          %301 = math.log10 %17 : tensor<2x1x1xf32>
          %302 = arith.divf %cst_2, %in : f32
          %303 = arith.minf %in, %cst_0 : f32
          %304 = math.exp2 %6 : tensor<2x2x1xf32>
          %305 = arith.mulf %cst, %cst_2 : f32
          %306 = math.ctpop %14 : tensor<1x1x1xi32>
          %cst_56 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_56 : f32
        }
      %269 = arith.shli %c350120444_i32, %c108572378_i32 : i32
      %270 = math.atan2 %13, %13 : tensor<2x1x1xf16>
      %271 = tensor.empty() : tensor<2x12xf16>
      %mapped_48 = linalg.map ins(%alloc, %alloc, %alloc : memref<2x12xf16>, memref<2x12xf16>, memref<2x12xf16>) outs(%271 : tensor<2x12xf16>)
        (%in: f16, %in_50: f16, %in_51: f16) {
          %278 = math.absf %in_51 : f16
          %279 = arith.remf %cst_0, %cst : f32
          %280 = vector.bitcast %264 : vector<2x1x1xf16> to vector<2x1x1xf16>
          %281 = bufferization.to_memref %14 : memref<1x1x1xi32>
          %282 = math.cos %7 : tensor<2x12xf32>
          %283 = arith.divsi %c1912879457_i64, %53 : i64
          %284 = arith.muli %c1904534729_i32, %c350120444_i32 : i32
          %285 = math.log10 %17 : tensor<2x1x1xf32>
          %286 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 32) * 4, (d1 floordiv 128) mod 8)>(%c6, %c14)
          %collapsed_52 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<1x1x1xi64> into tensor<1x1xi64>
          %287 = math.atan2 %3, %3 : tensor<2x1x1xf32>
          %288 = arith.divsi %false, %false : i1
          %289 = arith.shrui %false_23, %false : i1
          %290 = math.cttz %c327242960_i64 : i64
          %291 = arith.floordivsi %c327242960_i64, %53 : i64
          %292 = vector.extract_strided_slice %131 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
          %dest_53, %accumulated_value_54 = vector.scan <maxui>, %115, %76 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12xi64>, vector<12xi64>
          %293 = math.powf %130, %7 : tensor<2x12xf32>
          %294 = vector.broadcast %c327242960_i64 : i64 to vector<2x12xi64>
          %295 = vector.extract %57[0] : vector<2x12xi1>
          %296 = arith.remf %in, %cst_3 : f16
          %extracted = tensor.extract %collapsed_52[%c0, %c0] : tensor<1x1xi64>
          %297 = math.ctpop %2 : tensor<2x2x1xi1>
          %298 = math.sqrt %87 : tensor<2x12xf32>
          %299 = math.log10 %20 : tensor<1xf16>
          %300 = vector.broadcast %cst_2 : f32 to vector<2x2x1xf32>
          %301 = vector.fma %300, %300, %300 : vector<2x2x1xf32>
          %302 = arith.shli %c108572378_i32, %c1904534729_i32 : i32
          %303 = index.sizeof
          bufferization.dealloc_tensor %7 : tensor<2x12xf32>
          %cst_55 = arith.constant 4.768000e+04 : f16
          %304 = arith.maxf %cst_3, %in_50 : f16
          %305 = index.floordivs %c11, %c14
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %272 = vector.insert %c350120444_i32, %141 [0] : i32 into vector<1xi32>
      %273 = math.fma %17, %16, %3 : tensor<2x1x1xf32>
      %274 = vector.maskedload %alloc_5[%c0, %c0, %c0], %146, %145 : memref<2x1x1xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %275 = math.cos %20 : tensor<1xf16>
      %276 = math.absf %5 : tensor<2x2x1xf16>
      %277 = arith.ceildivsi %true, %true : i1
      memref.assume_alignment %alloc, 2 : memref<2x12xf16>
      %splat_49 = tensor.splat %true : tensor<1x1x1xi1>
      scf.yield %alloc_20 : memref<1xf16>
    }
    %152 = bufferization.clone %alloc : memref<2x12xf16> to memref<2x12xf16>
    %153 = bufferization.clone %alloc_4 : memref<2x1x1xi16> to memref<2x1x1xi16>
    %alloc_29 = memref.alloc() : memref<2x2x1xi1>
    memref.tensor_store %10, %alloc_29 : memref<2x2x1xi1>
    %154 = vector.insertelement %true, %93[%116 : index] : vector<1xi1>
    %155 = vector.broadcast %35 : index to vector<12xindex>
    vector.scatter %alloc_8[%c0, %c0, %c0] [%155], %148, %145 : memref<1x1x1xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
    %156 = arith.muli %false_23, %false_23 : i1
    %generated_30 = tensor.generate %c2, %c1 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %splat_47 = tensor.splat %c1904534729_i32 : tensor<1x1x1xi32>
      %264 = vector.broadcast %c1904534729_i32 : i32 to vector<2x12xi32>
      %265 = vector.gather %alloc_17[%c10, %79, %arg2] [%264], %57, %115 : memref<2x2x1xi64>, vector<2x12xi32>, vector<2x12xi1>, vector<2x12xi64> into vector<2x12xi64>
      %266 = math.round %cst_3 : f16
      %267 = memref.atomic_rmw ori %c108572378_i32, %alloc_13[%c0, %c0, %c0] : (i32, memref<2x1x1xi32>) -> i32
      tensor.yield %c1176132251_i64 : i64
    } : tensor<?x?x1xi64>
    %157 = vector.broadcast %cst_0 : f32 to vector<1x1x1xf32>
    %alloc_31 = memref.alloc() : memref<1x1x1xi64>
    memref.tensor_store %8, %alloc_31 : memref<1x1x1xi64>
    %158 = math.log1p %13 : tensor<2x1x1xf16>
    %159 = arith.maxui %c1912879457_i64, %c327242960_i64 : i64
    %160 = arith.remf %cst_2, %cst : f32
    %161 = index.divu %28, %50
    %162 = arith.muli %c350120444_i32, %c108572378_i32 : i32
    %163 = vector.broadcast %false : i1 to vector<2x1xi1>
    %164 = vector.multi_reduction <maxui>, %69, %163 [1] : vector<2x1x1xi1> to vector<2x1xi1>
    %165 = vector.load %alloc_5[%c1, %c0, %c0] : memref<2x1x1xi32>, vector<1x1x1xi32>
    %expanded = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<1x1x1xi1> into tensor<1x1x1x1xi1>
    %166 = vector.broadcast %c350120444_i32 : i32 to vector<1x1xi32>
    %dest, %accumulated_value = vector.scan <xor>, %165, %166 {inclusive = false, reduction_dim = 2 : i64} : vector<1x1x1xi32>, vector<1x1xi32>
    %cast_32 = tensor.cast %17 : tensor<2x1x1xf32> to tensor<?x?x?xf32>
    %167 = vector.broadcast %c108572378_i32 : i32 to vector<2x1xi32>
    %168 = vector.transfer_write %167, %12[%c3, %c13, %28] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x1xi32>, tensor<2x2x1xi32>
    %169 = arith.maxsi %53, %c1912879457_i64 : i64
    %170 = index.sizeof
    %171 = arith.addi %53, %c1912879457_i64 : i64
    %172 = math.cos %5 : tensor<2x2x1xf16>
    %173 = vector.broadcast %c1904534729_i32 : i32 to vector<2xi32>
    %dest_33, %accumulated_value_34 = vector.scan <mul>, %128, %173 {inclusive = true, reduction_dim = 1 : i64} : vector<2x1xi32>, vector<2xi32>
    %174 = math.roundeven %21 : tensor<f16>
    %175 = affine.if affine_set<(d0, d1) : (d1 floordiv 128 - 8 >= 0, -d0 >= 0)>(%c2, %c1) -> memref<2x2x1xi64> {
      %264 = arith.ceildivsi %true, %false_23 : i1
      %265 = index.casts %c3 : index to i32
      %266 = vector.flat_transpose %146 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %267 = arith.negf %cst : f32
      %268 = arith.shrui %53, %53 : i64
      %269 = scf.if %false -> (f16) {
        %272 = arith.shrsi %c327242960_i64, %c1176132251_i64 : i64
        %273 = vector.reduction <maxui>, %92 : vector<1xi32> into i32
        %274 = vector.insert %false_23, %131 [0] : i1 into vector<1xi1>
        %275 = arith.addi %c350120444_i32, %c1904534729_i32 : i32
        %276 = arith.andi %c327242960_i64, %c327242960_i64 : i64
        %277 = arith.mulf %cst_2, %cst_0 : f32
        %278 = math.round %22 : tensor<f16>
        memref.tensor_store %15, %54 : memref<2x2x1xi64>
        scf.yield %cst_3 : f16
      } else {
        %rank_47 = tensor.rank %12 : tensor<2x2x1xi32>
        %alloc_48 = memref.alloc() : memref<12x1xf32>
        %272 = tensor.empty() : tensor<2x1xf32>
        %273 = linalg.matmul ins(%7, %alloc_48 : tensor<2x12xf32>, memref<12x1xf32>) outs(%272 : tensor<2x1xf32>) -> tensor<2x1xf32>
        %274 = index.divs %47, %c2
        %275 = arith.remf %cst_0, %cst_1 : f32
        %from_elements_49 = tensor.from_elements %cst_3, %cst_3 : tensor<2x1x1xf16>
        %276 = math.atan %3 : tensor<2x1x1xf32>
        vector.print %52 : vector<12xi64>
        %277 = vector.extract %165[0] : vector<1x1x1xi32>
        scf.yield %cst_3 : f16
      }
      %270 = index.divs %rank_22, %c10
      %271 = math.tan %6 : tensor<2x2x1xf32>
      affine.yield %54 : memref<2x2x1xi64>
    } else {
      %264 = tensor.empty() : tensor<12x12xf32>
      %265 = tensor.empty() : tensor<2x12xf32>
      %266 = linalg.matmul ins(%87, %264 : tensor<2x12xf32>, tensor<12x12xf32>) outs(%265 : tensor<2x12xf32>) -> tensor<2x12xf32>
      %collapsed_47 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<1x1x1xi64> into tensor<1x1xi64>
      %alloc_48 = memref.alloc() : memref<12x1xf32>
      %267 = tensor.empty() : tensor<2x1xf32>
      %268 = linalg.matmul ins(%7, %alloc_48 : tensor<2x12xf32>, memref<12x1xf32>) outs(%267 : tensor<2x1xf32>) -> tensor<2x1xf32>
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (-d1)>(%c2, %c8, %133, %44)
      %270 = affine.if affine_set<(d0, d1) : (d1 floordiv 128 - 8 >= 0, -d0 >= 0)>(%c14, %c10) -> memref<2x1x1xf32> {
        %274 = arith.minf %cst_1, %cst : f32
        %dest_49, %accumulated_value_50 = vector.scan <xor>, %48, %163 {inclusive = true, reduction_dim = 1 : i64} : vector<2x1x1xi1>, vector<2x1xi1>
        %275 = arith.subi %true, %false : i1
        %276 = arith.xori %c-22678_i16, %c-24576_i16 : i16
        %277 = math.fma %13, %13, %13 : tensor<2x1x1xf16>
        %278 = vector.flat_transpose %131 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %279 = index.floordivs %c5, %c0
        %280 = arith.maxsi %c1904534729_i32, %c108572378_i32 : i32
        %alloc_51 = memref.alloc() : memref<2x1x1xf32>
        affine.yield %alloc_51 : memref<2x1x1xf32>
      } else {
        %alloc_49 = memref.alloc() : memref<1x1x1xi64>
        %274 = vector.broadcast %c350120444_i32 : i32 to vector<1x1x1xi32>
        %275 = arith.ceildivsi %c108572378_i32, %c108572378_i32 : i32
        %276 = math.exp %3 : tensor<2x1x1xf32>
        %277 = index.floordivs %rank_22, %c5
        %278 = vector.insert %false, %93 [0] : i1 into vector<1xi1>
        memref.assume_alignment %alloc_13, 1 : memref<2x1x1xi32>
        %279 = arith.shli %c30038_i16, %c-22678_i16 : i16
        %alloc_50 = memref.alloc() : memref<2x1x1xf32>
        affine.yield %alloc_50 : memref<2x1x1xf32>
      }
      %271 = arith.maxf %cst_1, %cst_1 : f32
      %272 = bufferization.to_memref %1 : memref<1x1x1xi64>
      %273 = scf.if %false -> (i16) {
        memref.tensor_store %8, %272 : memref<1x1x1xi64>
        %274 = math.roundeven %7 : tensor<2x12xf32>
        %275 = index.castu %c350120444_i32 : i32 to index
        %276 = memref.realloc %alloc_20 : memref<1xf16> to memref<1xf16>
        %277 = math.floor %cst_0 : f32
        %278 = vector.broadcast %c108572378_i32 : i32 to vector<12x12xi32>
        %279 = vector.outerproduct %147, %145, %278 {kind = #vector.kind<mul>} : vector<12xi32>, vector<12xi32>
        %280 = math.exp %7 : tensor<2x12xf32>
        %281 = math.round %7 : tensor<2x12xf32>
        scf.yield %c-22678_i16 : i16
      } else {
        %274 = math.tanh %cst : f32
        %275 = arith.addf %cst, %cst_1 : f32
        %276 = arith.minf %cst_2, %cst_1 : f32
        %277 = index.ceildivs %rank, %c7
        %278 = math.log2 %13 : tensor<2x1x1xf16>
        %279 = arith.remf %cst_1, %cst : f32
        %280 = arith.addf %cst_2, %cst_1 : f32
        %281 = index.floordivs %86, %c15
        scf.yield %c30038_i16 : i16
      }
      affine.yield %54 : memref<2x2x1xi64>
    }
    %176 = affine.if affine_set<(d0) : ((d0 floordiv 128) * 16 >= 0, (d0 + 15) floordiv 4 + d0 == 0, d0 floordiv 8 == 0)>(%c13) -> f16 {
      %expanded_47 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<2x1x1xf32> into tensor<2x1x1x1xf32>
      %264 = arith.subi %c30038_i16, %c-22678_i16 : i16
      %265 = math.ceil %7 : tensor<2x12xf32>
      %splat_48 = tensor.splat %cst_3 : tensor<2x2x1xf16>
      %266 = math.powf %cst_1, %cst_2 : f32
      %267 = math.tan %7 : tensor<2x12xf32>
      affine.for %arg2 = 0 to 51 {
      }
      %268 = bufferization.to_memref %3 : memref<2x1x1xf32>
      affine.yield %cst_3 : f16
    } else {
      %264 = math.cttz %false : i1
      %265 = vector.broadcast %c-24576_i16 : i16 to vector<i16>
      %266 = vector.transfer_write %265, %from_elements_25[%c15, %rank_27, %c3] : vector<i16>, tensor<2x1x1xi16>
      %267 = scf.while (%arg2 = %97) : (vector<12xi64>) -> vector<12xi64> {
        %274 = arith.divui %c1176132251_i64, %53 : i64
        %275 = math.absi %1 : tensor<1x1x1xi64>
        %276 = math.powf %7, %7 : tensor<2x12xf32>
        %277 = arith.xori %c350120444_i32, %c350120444_i32 : i32
        %278 = vector.broadcast %53 : i64 to vector<1x1xi64>
        %279 = vector.multi_reduction <minui>, %63, %278 [2] : vector<1x1x1xi64> to vector<1x1xi64>
        %280 = bufferization.to_memref %14 : memref<1x1x1xi32>
        %281 = index.ceildivs %c0, %rank_27
        %282 = index.divu %c13, %c3
        scf.condition(%false) %19 : vector<12xi64>
      } do {
      ^bb0(%arg2: vector<12xi64>):
        vector.print %147 : vector<12xi32>
        %274 = arith.xori %c327242960_i64, %c327242960_i64 : i64
        %275 = arith.minf %cst_0, %cst : f32
        %276 = math.round %20 : tensor<1xf16>
        %false_48 = index.bool.constant false
        %277 = math.exp %20 : tensor<1xf16>
        affine.store %cst_3, %alloc[%c13, %c6] : memref<2x12xf16>
        %278 = math.powf %cst_1, %cst : f32
        %279 = arith.minsi %c1904534729_i32, %c108572378_i32 : i32
        vector.print %69 : vector<2x1x1xi1>
        %280 = vector.flat_transpose %92 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %281 = math.roundeven %0 : tensor<2x2x1xf16>
        %282 = vector.broadcast %c327242960_i64 : i64 to vector<1x1xi64>
        %283 = vector.insert %282, %63 [0] : vector<1x1xi64> into vector<1x1x1xi64>
        %284 = vector.splat %35 : vector<1x1x1xindex>
        %285 = arith.shrsi %c1176132251_i64, %c327242960_i64 : i64
        %286 = math.expm1 %6 : tensor<2x2x1xf32>
        scf.yield %19 : vector<12xi64>
      }
      %268 = index.add %c15, %116
      %269 = tensor.empty() : tensor<2x1x1xi16>
      %mapped_47 = linalg.map ins(%153, %from_elements_25 : memref<2x1x1xi16>, tensor<2x1x1xi16>) outs(%269 : tensor<2x1x1xi16>)
        (%in: i16, %in_48: i16) {
          %274 = bufferization.to_tensor %alloc_18 : memref<1x1x1xi32>
          %275 = index.floordivs %c13, %c5
          %276 = arith.mulf %cst_3, %cst_3 : f16
          %277 = arith.xori %c1176132251_i64, %c1912879457_i64 : i64
          %278 = index.sub %161, %44
          %279 = arith.remf %cst_0, %cst_2 : f32
          %280 = arith.maxui %false_23, %false_23 : i1
          %281 = math.roundeven %16 : tensor<2x1x1xf32>
          %282 = arith.divui %c108572378_i32, %c1904534729_i32 : i32
          %283 = arith.shli %in, %in : i16
          %284 = vector.broadcast %53 : i64 to vector<12x12xi64>
          %285 = vector.outerproduct %52, %97, %284 {kind = #vector.kind<maxsi>} : vector<12xi64>, vector<12xi64>
          %286 = math.round %cst_0 : f32
          %287 = index.floordivs %c12, %35
          %288 = affine.min affine_map<(d0, d1) -> ((d1 + 32) ceildiv 2 + d1, ((d0 + 2) ceildiv 2) * 32)>(%rank_22, %c8)
          %289 = affine.min affine_map<(d0, d1, d2) -> (d1, d1, d2 mod 2)>(%rank, %c12, %161)
          %290 = arith.minsi %c108572378_i32, %c1904534729_i32 : i32
          %291 = arith.divui %c-24576_i16, %in_48 : i16
          %292 = vector.broadcast %c3 : index to vector<1xindex>
          vector.scatter %alloc_8[%c0, %c0, %c0] [%292], %93, %92 : memref<1x1x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
          %293 = math.fma %5, %5, %0 : tensor<2x2x1xf16>
          %294 = math.powf %cst, %cst_2 : f32
          %295 = arith.andi %true, %false : i1
          %296 = affine.max affine_map<(d0, d1) -> (d1 floordiv 32, d0)>(%79, %c15)
          %297 = math.roundeven %7 : tensor<2x12xf32>
          %298 = arith.divf %cst_2, %cst : f32
          %299 = affine.min affine_map<(d0, d1) -> (d1 + 2)>(%288, %44)
          %300 = bufferization.clone %alloc_16 : memref<2x2x1xf16> to memref<2x2x1xf16>
          %301 = math.sqrt %cst_1 : f32
          %302 = math.copysign %cst_0, %cst : f32
          %303 = arith.mulf %cst_0, %cst : f32
          %304 = affine.max affine_map<(d0, d1, d2) -> (d2 + 4)>(%278, %133, %47)
          %305 = arith.addf %cst_1, %cst_2 : f32
          %306 = arith.divsi %c1904534729_i32, %c350120444_i32 : i32
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %270 = math.round %6 : tensor<2x2x1xf32>
      %271 = vector.broadcast %c10 : index to vector<2xindex>
      %272 = vector.broadcast %false : i1 to vector<2xi1>
      %273 = vector.broadcast %c327242960_i64 : i64 to vector<2xi64>
      vector.scatter %alloc_17[%c1, %c1, %c0] [%271], %272, %273 : memref<2x2x1xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
      %c-29121_i16 = arith.constant -29121 : i16
      affine.yield %cst_3 : f16
    }
    %177 = vector.maskedload %alloc_6[%c0, %c1, %c0], %131, %92 : memref<2x2x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    %178 = index.ceildivs %c10, %c3
    %179 = vector.splat %cst_0 : vector<2x12xf32>
    %from_elements_35 = tensor.from_elements %c108572378_i32, %c1904534729_i32, %c350120444_i32, %c350120444_i32, %c108572378_i32, %c1904534729_i32, %c1904534729_i32, %c1904534729_i32, %c1904534729_i32, %c108572378_i32, %c1904534729_i32, %c350120444_i32, %c350120444_i32, %c350120444_i32, %c1904534729_i32, %c1904534729_i32, %c108572378_i32, %c108572378_i32, %c108572378_i32, %c108572378_i32, %c350120444_i32, %c350120444_i32, %c108572378_i32, %c350120444_i32 : tensor<2x12xi32>
    %cast_36 = tensor.cast %from_elements_35 : tensor<2x12xi32> to tensor<?x?xi32>
    %180 = arith.maxui %c30038_i16, %c-24576_i16 : i16
    %181 = math.roundeven %5 : tensor<2x2x1xf16>
    %182 = index.add %c7, %161
    affine.store %c327242960_i64, %alloc_15[%c7, %c10, %c6] : memref<2x1x1xi64>
    %183 = vector.broadcast %c350120444_i32 : i32 to vector<1x1xi32>
    %184 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %167, %128, %183 : vector<2x1xi32>, vector<2x1xi32> into vector<1x1xi32>
    %185 = bufferization.to_memref %10 : memref<2x2x1xi1>
    %186 = index.maxu %c9, %c11
    %187 = index.sub %c6, %186
    %188 = math.sqrt %5 : tensor<2x2x1xf16>
    %189 = math.cttz %9 : tensor<2x2x1xi64>
    %190 = math.ipowi %14, %14 : tensor<1x1x1xi32>
    affine.for %arg2 = 0 to 18 {
    }
    %191 = arith.remui %c-24576_i16, %c-22678_i16 : i16
    %192 = vector.flat_transpose %92 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
    %193 = index.floordivs %c13, %178
    %194 = vector.extract_strided_slice %192 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
    %195 = math.ceil %17 : tensor<2x1x1xf32>
    %cast_37 = tensor.cast %2 : tensor<2x2x1xi1> to tensor<?x?x?xi1>
    %196 = arith.mulf %cst, %cst_0 : f32
    %197 = math.round %6 : tensor<2x2x1xf32>
    %true_38 = index.bool.constant true
    %198 = arith.shrsi %c327242960_i64, %c1176132251_i64 : i64
    %199 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %76, %52, %c1176132251_i64 : vector<12xi64>, vector<12xi64> into i64
    %200 = bufferization.clone %alloc_17 : memref<2x2x1xi64> to memref<2x2x1xi64>
    %201 = math.atan %22 : tensor<f16>
    %202 = math.log2 %17 : tensor<2x1x1xf32>
    %203 = tensor.empty() : tensor<2x2x1xi32>
    %mapped_39 = linalg.map ins(%12, %alloc_12 : tensor<2x2x1xi32>, memref<2x2x1xi32>) outs(%203 : tensor<2x2x1xi32>)
      (%in: i32, %in_47: i32) {
        %collapsed_48 = tensor.collapse_shape %87 [[0, 1]] : tensor<2x12xf32> into tensor<24xf32>
        %264 = bufferization.clone %alloc_19 : memref<1x2x2xi64> to memref<1x2x2xi64>
        %265 = math.round %6 : tensor<2x2x1xf32>
        %266 = math.log1p %0 : tensor<2x2x1xf16>
        %267 = math.log2 %cst_3 : f16
        %268 = bufferization.clone %54 : memref<2x2x1xi64> to memref<2x2x1xi64>
        %269 = arith.xori %c108572378_i32, %in_47 : i32
        %270 = index.divs %170, %187
        %271 = math.atan %7 : tensor<2x12xf32>
        %272 = tensor.empty() : tensor<2x1x1xf16>
        %mapped_49 = linalg.map ins(%13, %13, %13 : tensor<2x1x1xf16>, tensor<2x1x1xf16>, tensor<2x1x1xf16>) outs(%272 : tensor<2x1x1xf16>)
          (%in_53: f16, %in_54: f16, %in_55: f16) {
            %rank_56 = tensor.rank %130 : tensor<2x12xf32>
            %alloc_57 = memref.alloc() : memref<12x2xf32>
            %294 = tensor.empty() : tensor<2x2xf32>
            %295 = linalg.matmul ins(%87, %alloc_57 : tensor<2x12xf32>, memref<12x2xf32>) outs(%294 : tensor<2x2xf32>) -> tensor<2x2xf32>
            %296 = math.round %22 : tensor<f16>
            %297 = bufferization.to_memref %14 : memref<1x1x1xi32>
            %298 = math.round %16 : tensor<2x1x1xf32>
            %299 = math.roundeven %7 : tensor<2x12xf32>
            %300 = vector.broadcast %cst : f32 to vector<1x1x1xf32>
            %301 = arith.remf %cst_3, %in_55 : f16
            affine.store %c327242960_i64, %alloc_19[%c11, %c1, %c5] : memref<1x2x2xi64>
            %302 = arith.muli %true, %false_23 : i1
            %303 = affine.max affine_map<(d0) -> (d0 + 64)>(%c12)
            %304 = bufferization.clone %268 : memref<2x2x1xi64> to memref<2x2x1xi64>
            %305 = arith.divui %false, %true_38 : i1
            %306 = math.exp2 %6 : tensor<2x2x1xf32>
            %307 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + 1, (-d3) floordiv 64)>(%123, %rank_27, %c13, %35)
            %308 = arith.minsi %true_38, %true_38 : i1
            %309 = memref.atomic_rmw maxs %c327242960_i64, %200[%c1, %c0, %c0] : (i64, memref<2x2x1xi64>) -> i64
            %310 = math.absf %cst_3 : f16
            %311 = vector.multi_reduction <minsi>, %92, %92 [] : vector<1xi32> to vector<1xi32>
            %312 = vector.broadcast %false_23 : i1 to vector<1x1xi1>
            %313 = vector.outerproduct %131, %93, %312 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
            %314 = math.sqrt %7 : tensor<2x12xf32>
            %315 = arith.shrui %c30038_i16, %c-22678_i16 : i16
            %316 = arith.subi %false_23, %false : i1
            %317 = vector.load %alloc_19[%c0, %c0, %c1] : memref<1x2x2xi64>, vector<2x12xi64>
            %rank_58 = tensor.rank %15 : tensor<2x2x1xi64>
            %318 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %177, %194, %c1904534729_i32 : vector<1xi32>, vector<1xi32> into i32
            %319 = math.exp2 %294 : tensor<2x2xf32>
            %320 = math.atan2 %5, %5 : tensor<2x2x1xf16>
            %321 = vector.create_mask %79, %307, %161 : vector<2x1x1xi1>
            %322 = index.maxs %rank_27, %44
            %323 = vector.reduction <maxui>, %131 : vector<1xi1> into i1
            %324 = vector.create_mask %c2, %c8, %c6 : vector<2x2x1xi1>
            %cst_59 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_59 : f16
          }
        %273 = vector.insertelement %53, %52[%c12 : index] : vector<12xi64>
        %274 = index.casts %c13 : index to i32
        %275 = index.sizeof
        %276 = index.divs %c4, %123
        %277 = math.cos %cst_2 : f32
        %from_elements_50 = tensor.from_elements %true, %false_23, %true, %true_38, %true_38, %true, %true_38, %false, %true_38, %false_23, %false_23, %true, %false, %false, %true_38, %false, %true, %true, %true_38, %false, %true_38, %false, %false_23, %false_23 : tensor<2x12xi1>
        %278 = vector.broadcast %161 : index to vector<2xindex>
        %279 = vector.broadcast %true_38 : i1 to vector<2xi1>
        %280 = vector.broadcast %53 : i64 to vector<2xi64>
        vector.scatter %264[%c0, %c1, %c1] [%278], %279, %280 : memref<1x2x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %281 = math.sqrt %6 : tensor<2x2x1xf32>
        %282 = index.casts %c350120444_i32 : i32 to index
        %283 = vector.broadcast %c1912879457_i64 : i64 to vector<1x1x1xi64>
        %284 = affine.apply affine_map<(d0) -> ((-d0) floordiv 8 + d0 + 64)>(%86)
        %cast_51 = tensor.cast %130 : tensor<2x12xf32> to tensor<?x?xf32>
        %285 = affine.min affine_map<(d0, d1, d2) -> (d1 + 32, d2)>(%133, %rank_27, %270)
        %286 = vector.create_mask %285, %c4 : vector<2x12xi1>
        %287 = arith.maxsi %true, %true_38 : i1
        %288 = affine.for %arg2 = 0 to 7 iter_args(%arg3 = %false) -> (i1) {
          affine.yield %true : i1
        }
        %289 = math.log %6 : tensor<2x2x1xf32>
        %splat_52 = tensor.splat %true_38 : tensor<1x1x1xi1>
        %290 = arith.shrsi %c1904534729_i32, %in : i32
        %291 = arith.andi %c30038_i16, %c30038_i16 : i16
        %292 = arith.maxsi %false_23, %true : i1
        %293 = vector.broadcast %c30038_i16 : i16 to vector<2x12xi16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %204 = math.roundeven %3 : tensor<2x1x1xf32>
    %205 = vector.maskedload %alloc_8[%c0, %c0, %c0], %148, %147 : memref<1x1x1xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
    %206 = arith.shrsi %c350120444_i32, %c1904534729_i32 : i32
    %207 = bufferization.to_memref %7 : memref<2x12xf32>
    %208 = index.sub %c2, %186
    %209 = vector.broadcast %cst_0 : f32 to vector<2x12xf32>
    %210 = arith.ceildivsi %false_23, %true : i1
    %211 = index.divu %47, %86
    %212 = vector.broadcast %cst_2 : f32 to vector<2x12xf32>
    %213 = vector.fma %212, %209, %212 : vector<2x12xf32>
    %214 = vector.splat %c7 : vector<1x1x1xindex>
    %215 = vector.load %200[%c0, %c1, %c0] : memref<2x2x1xi64>, vector<2x2x1xi64>
    %216 = arith.maxsi %c1176132251_i64, %53 : i64
    %217 = index.ceildivs %c15, %187
    %218 = arith.muli %true, %true_38 : i1
    %219 = math.log2 %5 : tensor<2x2x1xf16>
    vector.print %212 : vector<2x12xf32>
    %220 = math.absi %collapsed : tensor<4x1xi64>
    %221 = math.exp2 %17 : tensor<2x1x1xf32>
    %222 = arith.maxf %cst_1, %cst_0 : f32
    %generated_40 = tensor.generate %c9, %178 {
    ^bb0(%arg2: index, %arg3: index):
      %264 = vector.reduction <xor>, %148 : vector<12xi1> into i1
      %265 = vector.broadcast %170 : index to vector<2xindex>
      %266 = vector.broadcast %true : i1 to vector<2xi1>
      %267 = vector.broadcast %c1904534729_i32 : i32 to vector<2xi32>
      vector.scatter %alloc_8[%c0, %c0, %c0] [%265], %266, %267 : memref<1x1x1xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %alloc_47 = memref.alloc() : memref<2x1x1xf16>
      %alloc_48 = memref.alloc() : memref<2x2x1xf16>
      tensor.yield %53 : i64
    } : tensor<?x?xi64>
    %cast_41 = tensor.cast %9 : tensor<2x2x1xi64> to tensor<?x?x?xi64>
    %223 = vector.broadcast %c1912879457_i64 : i64 to vector<12x12xi64>
    %224 = vector.outerproduct %52, %52, %223 {kind = #vector.kind<minsi>} : vector<12xi64>, vector<12xi64>
    %225 = math.ipowi %c350120444_i32, %c108572378_i32 : i32
    %alloc_42 = memref.alloc() : memref<2x12xi32>
    memref.tensor_store %from_elements_35, %alloc_42 : memref<2x12xi32>
    %from_elements_43 = tensor.from_elements %c1904534729_i32, %c350120444_i32, %c108572378_i32, %c1904534729_i32, %c108572378_i32, %c350120444_i32, %c108572378_i32, %c108572378_i32, %c1904534729_i32, %c108572378_i32, %c350120444_i32, %c108572378_i32, %c1904534729_i32, %c108572378_i32, %c1904534729_i32, %c108572378_i32, %c1904534729_i32, %c108572378_i32, %c108572378_i32, %c350120444_i32, %c108572378_i32, %c108572378_i32, %c108572378_i32, %c108572378_i32 : tensor<2x12xi32>
    %226 = vector.insert %true_38, %93 [0] : i1 into vector<1xi1>
    %227 = math.tan %21 : tensor<f16>
    %228 = index.sub %116, %c9
    %229 = math.roundeven %cst_0 : f32
    %230 = vector.load %54[%c0, %c0, %c0] : memref<2x2x1xi64>, vector<2x1x1xi64>
    %231 = arith.minsi %c350120444_i32, %c1904534729_i32 : i32
    %232 = vector.load %alloc_17[%c1, %c1, %c0] : memref<2x2x1xi64>, vector<2x2x1xi64>
    %233 = bufferization.to_memref %cast_37 : memref<?x?x?xi1>
    %234 = math.ipowi %203, %203 : tensor<2x2x1xi32>
    %alloc_44 = memref.alloc() : memref<2x1x1xf32>
    memref.tensor_store %16, %alloc_44 : memref<2x1x1xf32>
    %235 = affine.apply affine_map<(d0, d1, d2) -> (d0 mod 64)>(%50, %c8, %c1)
    %236 = index.divs %c10, %186
    %237 = arith.divui %c108572378_i32, %c350120444_i32 : i32
    %238 = vector.transpose %212, [1, 0] : vector<2x12xf32> to vector<12x2xf32>
    %239 = vector.reduction <or>, %192 : vector<1xi32> into i32
    %240 = index.maxu %193, %86
    %241 = index.ceildivs %c4, %rank_22
    %242 = arith.divui %c350120444_i32, %c350120444_i32 : i32
    %243 = arith.minsi %true_38, %true_38 : i1
    %244 = tensor.empty(%c3, %c9) : tensor<?x?x1xi1>
    %245 = index.ceildivs %208, %235
    %246 = arith.divui %c30038_i16, %c-24576_i16 : i16
    %247 = arith.remf %cst, %cst_2 : f32
    %248 = math.log1p %cst_1 : f32
    %249 = bufferization.clone %alloc_14 : memref<2x2x1xi32> to memref<2x2x1xi32>
    %250 = arith.subi %c-24576_i16, %c-22678_i16 : i16
    %251 = index.divs %c11, %c15
    %252 = arith.shli %true_38, %true : i1
    %253 = math.ctpop %11 : tensor<1x1x1xi1>
    %254 = vector.load %alloc_9[%c0, %c10] : memref<2x12xi1>, vector<2x1x1xi1>
    %dest_45, %accumulated_value_46 = vector.scan <minui>, %48, %163 {inclusive = false, reduction_dim = 2 : i64} : vector<2x1x1xi1>, vector<2x1xi1>
    %255 = math.absf %0 : tensor<2x2x1xf16>
    %256 = arith.ori %c30038_i16, %c-24576_i16 : i16
    %257 = index.sizeof
    %258 = tensor.empty() : tensor<1x1x1x1xi1>
    %259 = linalg.copy ins(%expanded : tensor<1x1x1x1xi1>) outs(%258 : tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %260 = tensor.empty() : tensor<1x2x2xi32>
    %transposed = linalg.transpose ins(%203 : tensor<2x2x1xi32>) outs(%260 : tensor<1x2x2xi32>) permutation = [2, 0, 1] 
    %261 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%16 : tensor<2x1x1xf32>) outs(%261 : tensor<f32>) dimensions = [0, 1, 2] 
      (%in: f32, %init: f32) {
        %264 = math.atan %0 : tensor<2x2x1xf16>
        %265 = arith.mulf %in, %init : f32
        %266 = memref.atomic_rmw minu %c1176132251_i64, %alloc_15[%c0, %c0, %c0] : (i64, memref<2x1x1xi64>) -> i64
        %267 = arith.divui %c-24576_i16, %c-24576_i16 : i16
        %268 = index.sub %193, %182
        %269 = arith.minsi %c327242960_i64, %c1912879457_i64 : i64
        %collapsed_47 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<2x2x1xi1> into tensor<4x1xi1>
        %270 = arith.maxsi %c1176132251_i64, %53 : i64
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %262 = scf.parallel (%arg2, %arg3) = (%186, %257) to (%c14, %257) step (%c15, %c7) init (%7) -> tensor<2x12xf32> {
      %264 = math.atan %21 : tensor<f16>
      %true_47 = index.bool.constant true
      %265 = arith.floordivsi %c350120444_i32, %c108572378_i32 : i32
      %266 = index.casts %true_47 : i1 to index
      %267 = arith.cmpf ult, %cst, %cst : f32
      %268 = arith.floordivsi %c-22678_i16, %c30038_i16 : i16
      %269 = arith.addf %cst_3, %cst_3 : f16
      %270 = arith.divui %c1912879457_i64, %c1176132251_i64 : i64
      %271 = arith.shrsi %c1912879457_i64, %c327242960_i64 : i64
      %272 = scf.while (%arg4 = %249) : (memref<2x2x1xi32>) -> memref<2x2x1xi32> {
        %281 = arith.remf %cst_3, %cst_3 : f16
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %93, %93, %true_47 : vector<1xi1>, vector<1xi1> into i1
        %from_elements_49 = tensor.from_elements %c-24576_i16, %c-22678_i16 : tensor<2x1x1xi16>
        %283 = arith.shrui %c1904534729_i32, %c1904534729_i32 : i32
        %284 = math.fma %22, %22, %21 : tensor<f16>
        %from_elements_50 = tensor.from_elements %true_38, %true_47 : tensor<2x1x1xi1>
        %285 = arith.shrui %c108572378_i32, %c1904534729_i32 : i32
        %286 = arith.shli %true_38, %true : i1
        scf.condition(%false_23) %249 : memref<2x2x1xi32>
      } do {
      ^bb0(%arg4: memref<2x2x1xi32>):
        %281 = arith.shrsi %c-24576_i16, %c30038_i16 : i16
        %282 = math.fma %130, %130, %7 : tensor<2x12xf32>
        %283 = vector.broadcast %cst_3 : f16 to vector<1xf16>
        %284 = vector.maskedload %alloc_16[%c0, %c0, %c0], %93, %283 : memref<2x2x1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %285 = vector.load %alloc_10[%c1, %c9] : memref<2x12xi64>, vector<2x12xi64>
        %286 = index.divu %c6, %123
        %287 = arith.minf %cst, %cst : f32
        %288 = arith.maxsi %true_47, %false_23 : i1
        %rank_49 = tensor.rank %3 : tensor<2x1x1xf32>
        %289 = arith.muli %53, %c327242960_i64 : i64
        %290 = arith.floordivsi %true, %true_47 : i1
        %expanded_50 = tensor.expand_shape %258 [[0], [1], [2], [3, 4]] : tensor<1x1x1x1xi1> into tensor<1x1x1x1x1xi1>
        %291 = arith.andi %53, %53 : i64
        %292 = affine.max affine_map<(d0) -> (((d0 * 2) ceildiv 128) floordiv 64 - d0 * 2 + 2, (d0 * 2) floordiv 16 - d0 ceildiv 4, (d0 * 2) mod 8, d0)>(%c15)
        %293 = vector.multi_reduction <maxsi>, %146, %148 [] : vector<12xi1> to vector<12xi1>
        %294 = vector.maskedload %152[%c1, %c0], %131, %284 : memref<2x12xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %295 = math.tan %7 : tensor<2x12xf32>
        scf.yield %arg4 : memref<2x2x1xi32>
      }
      %273 = arith.xori %c1904534729_i32, %c1904534729_i32 : i32
      %274 = index.add %251, %c0
      %275 = vector.broadcast %c108572378_i32 : i32 to vector<i32>
      vector.transfer_write %275, %alloc_13[%c1, %241, %86] : vector<i32>, memref<2x1x1xi32>
      %276 = math.round %17 : tensor<2x1x1xf32>
      %277 = arith.shli %53, %53 : i64
      %alloc_48 = memref.alloc() : memref<12x12xf32>
      %278 = tensor.empty() : tensor<2x12xf32>
      %279 = linalg.matmul ins(%130, %alloc_48 : tensor<2x12xf32>, memref<12x12xf32>) outs(%278 : tensor<2x12xf32>) -> tensor<2x12xf32>
      %280 = tensor.empty() : tensor<2x12xf32>
      scf.reduce(%280)  : tensor<2x12xf32> {
      ^bb0(%arg4: tensor<2x12xf32>, %arg5: tensor<2x12xf32>):
        %281 = arith.remf %cst_1, %cst_2 : f32
        %282 = arith.maxui %c1176132251_i64, %53 : i64
        %283 = arith.muli %c1912879457_i64, %53 : i64
        %284 = arith.shli %c-22678_i16, %c30038_i16 : i16
        %285 = math.round %3 : tensor<2x1x1xf32>
        %286 = math.ctpop %9 : tensor<2x2x1xi64>
        %287 = arith.maxsi %true, %true : i1
        %288 = index.casts %228 : index to i32
        %289 = tensor.empty() : tensor<2x12xf32>
        scf.reduce.return %289 : tensor<2x12xf32>
      }
      scf.yield
    }
    %263 = affine.vector_load %alloc_7[%c4, %rank, %c2] : memref<2x1x1xi16>, vector<12xi16>
    affine.vector_store %148, %alloc_9[%c13, %187] : memref<2x12xi1>, vector<12xi1>
    vector.print %19 : vector<12xi64>
    vector.print %48 : vector<2x1x1xi1>
    vector.print %52 : vector<12xi64>
    vector.print %57 : vector<2x12xi1>
    vector.print %63 : vector<1x1x1xi64>
    vector.print %69 : vector<2x1x1xi1>
    vector.print %76 : vector<12xi64>
    vector.print %92 : vector<1xi32>
    vector.print %93 : vector<1xi1>
    vector.print %94 : vector<1xi32>
    vector.print %97 : vector<12xi64>
    vector.print %115 : vector<2x12xi64>
    vector.print %128 : vector<2x1xi32>
    vector.print %131 : vector<1xi1>
    vector.print %141 : vector<1xi32>
    vector.print %145 : vector<12xi32>
    vector.print %146 : vector<12xi1>
    vector.print %147 : vector<12xi32>
    vector.print %148 : vector<12xi1>
    vector.print %157 : vector<1x1x1xf32>
    vector.print %163 : vector<2x1xi1>
    vector.print %165 : vector<1x1x1xi32>
    vector.print %167 : vector<2x1xi32>
    vector.print %177 : vector<1xi32>
    vector.print %192 : vector<1xi32>
    vector.print %194 : vector<1xi32>
    vector.print %205 : vector<12xi32>
    vector.print %209 : vector<2x12xf32>
    vector.print %212 : vector<2x12xf32>
    vector.print %213 : vector<2x12xf32>
    vector.print %215 : vector<2x2x1xi64>
    vector.print %230 : vector<2x1x1xi64>
    vector.print %232 : vector<2x2x1xi64>
    vector.print %254 : vector<2x1x1xi1>
    vector.print %263 : vector<12xi16>
    vector.print %c1176132251_i64 : i64
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %true : i1
    vector.print %c30038_i16 : i16
    vector.print %c-24576_i16 : i16
    vector.print %c-22678_i16 : i16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c1912879457_i64 : i64
    vector.print %cst_3 : f16
    vector.print %c327242960_i64 : i64
    vector.print %c1904534729_i32 : i32
    vector.print %false : i1
    vector.print %c108572378_i32 : i32
    vector.print %c350120444_i32 : i32
    vector.print %53 : i64
    vector.print %false_23 : i1
    vector.print %true_38 : i1
    return %208 : index
  }
}
